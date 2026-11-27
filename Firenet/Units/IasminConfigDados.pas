unit IasminConfigDados;

{ Configuração e log da integração com IA, gravados no banco do ERP.

  Tabelas:
    IASMIN      configuração (uma linha, IAS_CODIGO = 1), vale para todas as estações
    IASMINLOGS  uma linha por chamada à IA (pergunta, SQL, tokens, erro)
                código gerado por GEN_IASMINLOGS
  A coluna IAS_PASTACONTEXTO não é usada: os .md ficam sempre em <exe>\IAsmin.

  Os comboboxes (provedor, esforço, envio do contexto) são gravados pelo texto
  que aparece na tela (NOMES_PROVEDOR, NOMES_ESFORCO, NOMES_MODO).

  A chave da API e a senha do usuário de leitura são gravadas criptografadas
  com AES-256 (Windows CNG). A chave AES fica no executável: isso impede a
  leitura direta na tabela (IBExpert, backup), mas quem tiver o executável e
  acesso ao banco consegue decifrar. A proteção principal é o IA_LEITURA não
  ter acesso às tabelas IASMIN e IASMINLOGS. }

interface

uses
  System.SysUtils, FireDAC.Comp.Client;

type
  TIAProvedor = (ipAnthropic, ipOpenAI, ipGemini, ipCompativel);

  TIAModoContexto = (
    imcDuasEtapas,  // 1ª chamada escolhe as tabelas; 2ª recebe só o dicionário delas (mais barato)
    imcCompleto     // envia o dicionário inteiro em toda pergunta, com cache de prompt (mais preciso)
  );

  TIAConfig = record
    Provedor: TIAProvedor;
    Modelo: string;
    ApiKey: string;
    UrlBase: string;          // só para ipCompativel (ex.: http://localhost:11434/v1 para Ollama)
    Esforco: string;          // valor da API: low/medium/high/xhigh/max; vazio = padrão do modelo
    ModoContexto: TIAModoContexto;
    MaxLinhas: Integer;
    TimeoutSeg: Integer;      // tempo máximo da chamada HTTP à IA
    TimeoutSQLSeg: Integer;   // tempo máximo de execução da consulta no Firebird
    DbUsuario: string;       // usuário Firebird somente leitura (ver sql\criar_usuario_leitura.sql)
    DbSenha: string;
    function Configurado(out Motivo: string): Boolean;
    function ModeloEfetivo: string;
  end;

  TIALog = record
    Etapa: string;            // selecao / geracao / correcao
    Modelo: string;
    Pergunta: string;
    SQL: string;
    Explicacao: string;       // explicação devolvida pela IA
    Erro: string;
    Usuario: string;          // login do ERP (DM.UsuarioLogin); preenchido pela tela
    TokensEntrada, TokensCache, TokensSaida: Integer;
  end;

const
  NOMES_PROVEDOR: array[TIAProvedor] of string = (
    'Anthropic (Claude)', 'OpenAI', 'Google Gemini', 'Compatível com OpenAI (Ollama, LM Studio, outros)');

  // Texto do combo de esforço e o valor correspondente enviado à API (mesma ordem).
  NOMES_ESFORCO: array[0..5] of string = (
    'padrão do modelo', 'low (mais rápido)', 'medium', 'high', 'xhigh', 'max (mais preciso)');
  VALORES_ESFORCO: array[0..5] of string = ('', 'low', 'medium', 'high', 'xhigh', 'max');

  NOMES_MODO: array[TIAModoContexto] of string = (
    'Duas etapas (mais barato)', 'Dicionário completo com cache (mais preciso)');

  // Modelo sugerido quando o campo fica vazio. Para OpenAI/Gemini/compatível o
  // cliente precisa informar o modelo contratado.
  MODELO_PADRAO_ANTHROPIC = 'claude-opus-5-5';

{ Pasta dos arquivos de contexto (01_instrucoes.md ... 06_exemplos.md):
  sempre <pasta do executável>\IAsmin. }
function PastaContexto: string;
function ConfigPadrao: TIAConfig;

{ Lê a configuração da tabela IASMIN. Sem registro, devolve ConfigPadrao. }
function CarregarConfig(Conexao: TFDConnection): TIAConfig;
{ Grava a configuração (UPDATE OR INSERT em IASMIN, código 1). }
procedure SalvarConfig(Conexao: TFDConnection; const Cfg: TIAConfig; const UsuarioERP: string);
{ Grava uma linha em IASMINLOGS. Devolve '' ou a mensagem de erro (nunca levanta exceção). }
function GravarLog(Conexao: TFDConnection; const Log: TIALog): string;

function IndiceEsforco(const Valor: string): Integer;
function ProvedorDeTexto(const Texto: string): TIAProvedor;
function EsforcoDeTexto(const Texto: string): string;
function ModoDeTexto(const Texto: string): TIAModoContexto;

function CifrarTexto(const Texto: string): string;
function DecifrarTexto(const Cifrado: string): string;

implementation

uses
  Winapi.Windows, System.Classes, System.IOUtils, System.NetEncoding, System.Hash,
  Data.DB, FireDAC.Stan.Param, FireDAC.Stan.Option;

{ ---------- AES-256-CBC via Windows CNG (bcrypt.dll) ---------- }

type
  BCRYPT_HANDLE = THandle;
  NTSTATUS = LongInt;

function BCryptOpenAlgorithmProvider(var phAlgorithm: BCRYPT_HANDLE; pszAlgId, pszImplementation: PWideChar;
  dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptCloseAlgorithmProvider(hAlgorithm: BCRYPT_HANDLE; dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptGenerateSymmetricKey(hAlgorithm: BCRYPT_HANDLE; var phKey: BCRYPT_HANDLE; pbKeyObject: PByte;
  cbKeyObject: ULONG; pbSecret: PByte; cbSecret: ULONG; dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptDestroyKey(hKey: BCRYPT_HANDLE): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptEncrypt(hKey: BCRYPT_HANDLE; pbInput: PByte; cbInput: ULONG; pPaddingInfo: Pointer;
  pbIV: PByte; cbIV: ULONG; pbOutput: PByte; cbOutput: ULONG; var pcbResult: ULONG;
  dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptDecrypt(hKey: BCRYPT_HANDLE; pbInput: PByte; cbInput: ULONG; pPaddingInfo: Pointer;
  pbIV: PByte; cbIV: ULONG; pbOutput: PByte; cbOutput: ULONG; var pcbResult: ULONG;
  dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';
function BCryptGenRandom(hAlgorithm: BCRYPT_HANDLE; pbBuffer: PByte; cbBuffer: ULONG;
  dwFlags: ULONG): NTSTATUS; stdcall; external 'bcrypt.dll';

const
  BCRYPT_BLOCK_PADDING = $00000001;
  BCRYPT_USE_SYSTEM_PREFERRED_RNG = $00000002;
  TAM_IV = 16;
  PREFIXO_CIFRA = 'A1:'; // versão do formato: 'A1:' + base64(IV + texto cifrado)
  // Segredo da aplicação. Trocar invalida as chaves já gravadas (basta salvar de novo).
  SEGREDO_APP = 'Firenet-Iasmin-2026|7f3c9a1e-4b2d-4e8a-9c61-d05b2f8e3a47';

procedure Checar(Status: NTSTATUS; const Onde: string);
begin
  if Status <> 0 then
    raise Exception.CreateFmt('Criptografia: falha em %s (0x%.8x)', [Onde, Cardinal(Status)]);
end;

function ChaveAES: TBytes;
begin
  Result := THashSHA2.GetHashBytes(SEGREDO_APP, SHA256); // 32 bytes = AES-256
end;

function Base64SemQuebra: TBase64Encoding;
begin
  Result := TBase64Encoding.Create(0);
end;

{ Executa cifra (Cifrar=True) ou decifra com a chave da aplicação. }
function ProcessarAES(const Entrada, IV: TBytes; Cifrar: Boolean): TBytes;
var
  hAlg, hKey: BCRYPT_HANDLE;
  Chave, IVCopia: TBytes;
  Tam: ULONG;
  PEntrada: PByte;
begin
  Chave := ChaveAES;
  Checar(BCryptOpenAlgorithmProvider(hAlg, 'AES', nil, 0), 'abrir AES');
  try
    Checar(BCryptGenerateSymmetricKey(hAlg, hKey, nil, 0, @Chave[0], Length(Chave), 0), 'gerar chave');
    try
      if Length(Entrada) > 0 then PEntrada := @Entrada[0] else PEntrada := nil;
      // o CNG altera o IV durante a operação: usa uma cópia
      IVCopia := Copy(IV);
      if Cifrar then
      begin
        Checar(BCryptEncrypt(hKey, PEntrada, Length(Entrada), nil, @IVCopia[0], TAM_IV, nil, 0, Tam,
          BCRYPT_BLOCK_PADDING), 'medir cifra');
        SetLength(Result, Tam);
        IVCopia := Copy(IV);
        Checar(BCryptEncrypt(hKey, PEntrada, Length(Entrada), nil, @IVCopia[0], TAM_IV, @Result[0], Tam, Tam,
          BCRYPT_BLOCK_PADDING), 'cifrar');
      end
      else
      begin
        SetLength(Result, Length(Entrada));
        Checar(BCryptDecrypt(hKey, PEntrada, Length(Entrada), nil, @IVCopia[0], TAM_IV, @Result[0],
          Length(Result), Tam, BCRYPT_BLOCK_PADDING), 'decifrar');
      end;
      SetLength(Result, Tam);
    finally
      BCryptDestroyKey(hKey);
    end;
  finally
    BCryptCloseAlgorithmProvider(hAlg, 0);
  end;
end;

function CifrarTexto(const Texto: string): string;
var
  IV, Cifra, Tudo: TBytes;
  Enc: TBase64Encoding;
begin
  Result := '';
  if Texto = '' then Exit;
  SetLength(IV, TAM_IV);
  Checar(BCryptGenRandom(0, @IV[0], TAM_IV, BCRYPT_USE_SYSTEM_PREFERRED_RNG), 'gerar IV');
  Cifra := ProcessarAES(TEncoding.UTF8.GetBytes(Texto), IV, True);
  Tudo := IV + Cifra;
  Enc := Base64SemQuebra;
  try
    Result := PREFIXO_CIFRA + Enc.EncodeBytesToString(Tudo);
  finally
    Enc.Free;
  end;
end;

function DecifrarTexto(const Cifrado: string): string;
var
  Tudo, IV, Cifra: TBytes;
  Enc: TBase64Encoding;
begin
  Result := '';
  if not Cifrado.StartsWith(PREFIXO_CIFRA) then Exit;
  Enc := Base64SemQuebra;
  try
    try
      Tudo := Enc.DecodeStringToBytes(Cifrado.Substring(Length(PREFIXO_CIFRA)));
    except
      Exit;
    end;
  finally
    Enc.Free;
  end;
  if (Length(Tudo) <= TAM_IV) or ((Length(Tudo) - TAM_IV) mod 16 <> 0) then Exit;
  IV := Copy(Tudo, 0, TAM_IV);
  Cifra := Copy(Tudo, TAM_IV, Length(Tudo) - TAM_IV);
  try
    Result := TEncoding.UTF8.GetString(ProcessarAES(Cifra, IV, False));
  except
    Result := ''; // segredo trocado ou valor corrompido: trata como não configurado
  end;
end;

{ ---------- literais dos comboboxes ---------- }

function IndiceEsforco(const Valor: string): Integer;
var
  I: Integer;
begin
  for I := Low(VALORES_ESFORCO) to High(VALORES_ESFORCO) do
    if SameText(VALORES_ESFORCO[I], Valor) then
      Exit(I);
  Result := 0;
end;

function ProvedorDeTexto(const Texto: string): TIAProvedor;
var
  P: TIAProvedor;
begin
  for P := Low(TIAProvedor) to High(TIAProvedor) do
    if SameText(NOMES_PROVEDOR[P], Trim(Texto)) then
      Exit(P);
  Result := ipAnthropic;
end;

function EsforcoDeTexto(const Texto: string): string;
var
  I: Integer;
begin
  for I := Low(NOMES_ESFORCO) to High(NOMES_ESFORCO) do
    if SameText(NOMES_ESFORCO[I], Trim(Texto)) or SameText(VALORES_ESFORCO[I], Trim(Texto)) then
      Exit(VALORES_ESFORCO[I]);
  Result := 'medium';
end;

function ModoDeTexto(const Texto: string): TIAModoContexto;
var
  M: TIAModoContexto;
begin
  for M := Low(TIAModoContexto) to High(TIAModoContexto) do
    if SameText(NOMES_MODO[M], Trim(Texto)) then
      Exit(M);
  Result := imcDuasEtapas;
end;

{ ---------- banco ---------- }

function PastaContexto: string;
begin
  Result := TPath.Combine(ExtractFilePath(ParamStr(0)), 'IAsmin');
end;

function ConfigPadrao: TIAConfig;
begin
  Result := Default(TIAConfig);
  Result.Provedor := ipAnthropic;
  Result.Esforco := 'medium';
  Result.ModoContexto := imcDuasEtapas;
  Result.MaxLinhas := 500;
  Result.TimeoutSeg := 180;
  Result.TimeoutSQLSeg := 60;
  Result.DbUsuario := 'IA_LEITURA';
end;

function Limitar(const S: string; Tamanho: Integer): string;
begin
  Result := Copy(Trim(S), 1, Tamanho);
end;

{ Executa um comando de gravação numa transação própria (não interfere na do ERP). }
procedure ExecutarGravacao(Conexao: TFDConnection; Q: TFDQuery);
var
  Tr: TFDTransaction;
begin
  Tr := TFDTransaction.Create(nil);
  try
    Tr.Connection := Conexao;
    Q.Connection := Conexao;
    Q.Transaction := Tr;
    Tr.StartTransaction;
    try
      Q.ExecSQL;
      Tr.Commit;
    except
      Tr.Rollback;
      raise;
    end;
  finally
    Tr.Free;
  end;
end;

function CarregarConfig(Conexao: TFDConnection): TIAConfig;
var
  Q: TFDQuery;
  N: Integer;
begin
  Result := ConfigPadrao;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := Conexao;
    Q.SQL.Text := 'SELECT * FROM IASMIN WHERE IAS_CODIGO = 1';
    Q.Open;
    if Q.IsEmpty then Exit;
    Result.Provedor      := ProvedorDeTexto(Q.FieldByName('IAS_PROVEDOR').AsString);
    Result.Modelo        := Q.FieldByName('IAS_MODELO').AsString;
    Result.ApiKey        := DecifrarTexto(Q.FieldByName('IAS_CHAVEAPI').AsString);
    Result.UrlBase       := Q.FieldByName('IAS_URLBASE').AsString;
    Result.Esforco       := EsforcoDeTexto(Q.FieldByName('IAS_ESFORCO').AsString);
    Result.ModoContexto  := ModoDeTexto(Q.FieldByName('IAS_CONTEXTO').AsString);
    Result.DbUsuario     := Q.FieldByName('IAS_USER').AsString;
    Result.DbSenha       := DecifrarTexto(Q.FieldByName('IAS_PASSWORD').AsString);
    N := Q.FieldByName('IAS_MAXLINHAS').AsInteger;
    if N > 0 then Result.MaxLinhas := N;
    N := Q.FieldByName('IAS_TEMPOLIMITEIA').AsInteger;
    if N > 0 then Result.TimeoutSeg := N;
    N := Q.FieldByName('IAS_TEMPOLIMITECONSULTA').AsInteger;
    if N > 0 then Result.TimeoutSQLSeg := N;
  finally
    Q.Free;
  end;
end;

procedure SalvarConfig(Conexao: TFDConnection; const Cfg: TIAConfig; const UsuarioERP: string);
var
  Q: TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  try
    Q.SQL.Text :=
      'UPDATE OR INSERT INTO IASMIN (IAS_CODIGO, IAS_PROVEDOR, IAS_MODELO, IAS_CHAVEAPI, IAS_URLBASE, ' +
      '  IAS_ESFORCO, IAS_CONTEXTO, IAS_MAXLINHAS, IAS_TEMPOLIMITEIA, IAS_TEMPOLIMITECONSULTA, ' +
      '  IAS_USER, IAS_PASSWORD, IAS_USUARIO, IAS_DTATUALIZACAO, IAS_HRATUALIZACAO) ' +
      'VALUES (1, :PROVEDOR, :MODELO, :CHAVEAPI, :URLBASE, :ESFORCO, :CONTEXTO, :MAXLINHAS, :TEMPOIA, ' +
      '  :TEMPOCONSULTA, :DBUSER, :DBSENHA, :USUARIO, :DATA, :HORA) ' +
      'MATCHING (IAS_CODIGO)';
    Q.ParamByName('PROVEDOR').AsString      := Limitar(NOMES_PROVEDOR[Cfg.Provedor], 50);
    Q.ParamByName('MODELO').AsString        := Limitar(Cfg.Modelo, 40);
    Q.ParamByName('CHAVEAPI').AsString      := CifrarTexto(Cfg.ApiKey);
    Q.ParamByName('URLBASE').AsString       := Limitar(Cfg.UrlBase, 200);
    Q.ParamByName('ESFORCO').AsString       := Limitar(NOMES_ESFORCO[IndiceEsforco(Cfg.Esforco)], 40);
    Q.ParamByName('CONTEXTO').AsString      := Limitar(NOMES_MODO[Cfg.ModoContexto], 50);
    Q.ParamByName('MAXLINHAS').AsInteger    := Cfg.MaxLinhas;
    Q.ParamByName('TEMPOIA').AsInteger      := Cfg.TimeoutSeg;
    Q.ParamByName('TEMPOCONSULTA').AsInteger := Cfg.TimeoutSQLSeg;
    Q.ParamByName('DBUSER').AsString        := Limitar(Cfg.DbUsuario, 20);
    Q.ParamByName('DBSENHA').AsString       := CifrarTexto(Cfg.DbSenha);
    Q.ParamByName('USUARIO').AsString       := Limitar(UsuarioERP, 20);
    Q.ParamByName('DATA').AsDate            := Date;
    Q.ParamByName('HORA').AsTime            := Time;
    ExecutarGravacao(Conexao, Q);
  finally
    Q.Free;
  end;
end;

function GravarLog(Conexao: TFDConnection; const Log: TIALog): string;
var
  Q: TFDQuery;
begin
  Result := '';
  if Conexao = nil then Exit;
  Q := TFDQuery.Create(nil);
  try
    try
      Q.SQL.Text :=
        'INSERT INTO IASMINLOGS (IAL_CODIGO, IAL_DTCADASTRO, IAL_HRCADASTRO, IAL_ETAPA, IAL_MODELO, ' +
        '  IAL_ENTRADA, IAL_CACHE, IAL_SAIDA, IAL_PERGUNTA, IAL_SQL, IAL_EXPLICACAO, IAL_ERRO, IAL_USUARIO) ' +
        'VALUES (GEN_ID(GEN_IASMINLOGS, 1), :DATA, :HORA, :ETAPA, :MODELO, :ENTRADA, :CACHE, :SAIDA, ' +
        '  :PERGUNTA, :SQLGERADO, :EXPLICACAO, :ERRO, :USUARIO)';
      Q.ParamByName('DATA').AsDate       := Date;
      Q.ParamByName('HORA').AsTime       := Time;
      Q.ParamByName('ETAPA').AsString    := Limitar(Log.Etapa, 10);
      Q.ParamByName('MODELO').AsString   := Limitar(Log.Modelo, 40);
      Q.ParamByName('ENTRADA').AsInteger := Log.TokensEntrada;
      Q.ParamByName('CACHE').AsInteger   := Log.TokensCache;
      Q.ParamByName('SAIDA').AsInteger   := Log.TokensSaida;
      Q.ParamByName('PERGUNTA').AsWideMemo := Log.Pergunta;
      Q.ParamByName('SQLGERADO').AsWideMemo := Log.SQL;
      Q.ParamByName('EXPLICACAO').AsWideMemo := Log.Explicacao;
      Q.ParamByName('ERRO').AsWideMemo   := Log.Erro;
      Q.ParamByName('USUARIO').AsString  := Limitar(Log.Usuario, 20);
      ExecutarGravacao(Conexao, Q);
    except
      on E: Exception do
        Result := E.Message; // o log nunca pode derrubar a consulta
    end;
  finally
    Q.Free;
  end;
end;

{ ---------- TIAConfig ---------- }

function TIAConfig.ModeloEfetivo: string;
begin
  Result := Trim(Modelo);
  if (Result = '') and (Provedor = ipAnthropic) then
  Result := MODELO_PADRAO_ANTHROPIC;
end;

function TIAConfig.Configurado(out Motivo: string): Boolean;
begin
  Motivo := '';
  if (Provedor <> ipCompativel) and (Trim(ApiKey) = '')               then Motivo := 'Informe a chave da API do provedor de IA.' else
  if ModeloEfetivo = ''                                               then Motivo := 'Informe o modelo de IA a ser usado.' else
  if (Provedor = ipCompativel) and (Trim(UrlBase) = '')               then Motivo := 'Informe a URL do servidor compatível com OpenAI.' else
  if not FileExists(TPath.Combine(PastaContexto, '02_dicionario.md')) then Motivo := 'Arquivos de contexto não encontrados em: ' + PastaContexto;
  Result := Motivo = '';
end;

end.
