unit IasminMotor;

{ Orquestra a geração de SQL:
  - TIAContexto lê os arquivos 01..06 e separa o dicionário por tabela.
  - TIAMotor monta os prompts, chama o provedor (IasminProvedores) e interpreta a resposta.

  Modo duas etapas (padrão):
    1ª chamada: lista de tabelas + regras de negócio -> IA devolve as tabelas necessárias.
    2ª chamada: instruções + domínios + regras + exemplos (fixo, com cache) e,
                na mensagem, só o dicionário das tabelas escolhidas.
  Modo completo: dicionário e relacionamentos inteiros no system (com cache).

  Não acessa banco nem tela: pode ser usado de uma thread de fundo. }

interface

uses
  System.SysUtils, System.Generics.Collections, IasminConfigDados, IasminProvedores;

type
  TIAContexto = class
  private
    FPasta: string;
    FInstrucoes, FDominios, FRegras, FExemplos: string;
    FDicionarioCompleto, FRelacionamentosCompleto: string;
    FCabecalhoDicionario: string;
    FTabelas: TDictionary<string, string>;        // TABELA -> seção do dicionário
    FRelacoes: TDictionary<string, string>;       // TABELA -> linhas de FK
    FDestinos: TDictionary<string, TArray<string>>; // TABELA -> tabelas referenciadas
    FNomes: TArray<string>;
    procedure LerDicionario;
    procedure LerRelacionamentos;
  public
    constructor Create(const Pasta: string);
    destructor Destroy; override;
    function SistemaSelecao: string;
    function SistemaGeracao(Modo: TIAModoContexto): string;
    function ContextoTabelas(const Tabelas: TArray<string>; out Usadas: TArray<string>): string;
    function ExisteTabela(const Nome: string): Boolean;
  end;

  TIAResultado = record
    Ok: Boolean;
    SQL: string;
    Explicacao: string;
    Tabelas: string;
    ColunasMoeda: TArray<string>; // colunas do resultado com valores em R$ (campo "moeda" do JSON)
    Erro: string;
    TokensEntrada, TokensSaida, TokensCache: Integer;
    Chamadas: Integer;
    Log: TIALog;  // registro para IASMINLOGS (gravado pela tela, na thread principal)
  end;

  TIAMotor = class
  private
    FCfg: TIAConfig;
    FCtx: TIAContexto;
    FSistema: string;
    FMensagens: TArray<TIAMensagem>;
    FPergunta: string;
    procedure Somar(var R: TIAResultado; const Resp: TIAResposta);
    function SelecionarTabelas(const Pergunta: string; var R: TIAResultado): TArray<string>;
    function Interpretar(const Texto: string; var R: TIAResultado): Boolean;
    procedure Registrar(var R: TIAResultado; const Etapa: string);
  public
    constructor Create(const Cfg: TIAConfig; Contexto: TIAContexto);
    { Gera o SQL para uma pergunta nova (zera a conversa). }
    function Perguntar(const Pergunta: string): TIAResultado;
    { Pede à IA para corrigir o último SQL, informando o erro do Firebird. }
    function Corrigir(const SQLComErro, MensagemErro: string): TIAResultado;
    { Testa a conexão com o provedor (configuração). }
    class function TestarConexao(const Cfg: TIAConfig; out Mensagem: string): Boolean;
  end;

implementation

uses
  System.Classes, System.IOUtils, System.JSON, System.StrUtils;

const
  SEP = sLineBreak + sLineBreak + '---' + sLineBreak + sLineBreak;
  MAX_TABELAS_CONTEXTO = 30;

function LerArquivo(const Pasta, Nome: string; Obrigatorio: Boolean = True): string;
var
  Arq: string;
begin
  Arq := TPath.Combine(Pasta, Nome);
  if FileExists(Arq) then
    Result := TFile.ReadAllText(Arq, TEncoding.UTF8)
  else if Obrigatorio then
    raise Exception.CreateFmt('Arquivo de contexto da IA não encontrado: %s', [Arq])
  else
    Result := '';
end;

{ ================= TIAContexto ================= }

constructor TIAContexto.Create(const Pasta: string);
begin
  inherited Create;
  FPasta := Pasta;
  FTabelas := TDictionary<string, string>.Create;
  FRelacoes := TDictionary<string, string>.Create;
  FDestinos := TDictionary<string, TArray<string>>.Create;
  FInstrucoes := LerArquivo(Pasta, '01_instrucoes.md');
  FDicionarioCompleto := LerArquivo(Pasta, '02_dicionario.md');
  FRelacionamentosCompleto := LerArquivo(Pasta, '03_relacionamentos.md');
  FDominios := LerArquivo(Pasta, '04_dominios.md', False);
  FRegras := LerArquivo(Pasta, '05_regras_negocio.md', False);
  FExemplos := LerArquivo(Pasta, '06_exemplos.md', False);
  LerDicionario;
  LerRelacionamentos;
end;

destructor TIAContexto.Destroy;
begin
  FTabelas.Free;
  FRelacoes.Free;
  FDestinos.Free;
  inherited;
end;

procedure TIAContexto.LerDicionario;
var
  Linhas: TArray<string>;
  L, Atual: string;
  Sec: TStringBuilder;
  Cab: TStringBuilder;
  NoCabecalho: Boolean;
  Nomes: TList<string>;

  procedure Fechar;
  begin
    if Atual <> '' then
      FTabelas.AddOrSetValue(Atual, TrimRight(Sec.ToString));
    Sec.Clear;
    Atual := '';
  end;

begin
  Linhas := FDicionarioCompleto.Split([#10]);
  Sec := TStringBuilder.Create;
  Cab := TStringBuilder.Create;
  Nomes := TList<string>.Create;
  try
    NoCabecalho := True;
    Atual := '';
    for L in Linhas do
    begin
      if L.StartsWith('## Tabelas') then
        NoCabecalho := False;
      if NoCabecalho then
      begin
        Cab.Append(TrimRight(L)).Append(sLineBreak);
        Continue;
      end;
      if L.StartsWith('### ') then
      begin
        Fechar;
        Atual := UpperCase(Trim(L.Substring(4)).Split([' '])[0]);
        Nomes.Add(Atual);
      end;
      if Atual <> '' then
        Sec.Append(TrimRight(L)).Append(sLineBreak);
    end;
    Fechar;
    FCabecalhoDicionario := TrimRight(Cab.ToString);
    FNomes := Nomes.ToArray;
  finally
    Sec.Free;
    Cab.Free;
    Nomes.Free;
  end;
end;

procedure TIAContexto.LerRelacionamentos;
var
  Linhas: TArray<string>;
  L, Atual, Destino: string;
  Ativo: Boolean;
  P: Integer;
  Lista: TList<string>;
  Txt: TStringBuilder;

  procedure Fechar;
  begin
    if Atual <> '' then
    begin
      FRelacoes.AddOrSetValue(Atual, TrimRight(Txt.ToString));
      FDestinos.AddOrSetValue(Atual, Lista.ToArray);
    end;
    Txt.Clear;
    Lista.Clear;
    Atual := '';
  end;

begin
  Linhas := FRelacionamentosCompleto.Split([#10]);
  Lista := TList<string>.Create;
  Txt := TStringBuilder.Create;
  try
    Ativo := False;
    Atual := '';
    for L in Linhas do
    begin
      if L.StartsWith('## ') then
      begin
        Fechar;
        Ativo := L.StartsWith('## Por tabela de origem');
        Continue;
      end;
      if not Ativo then Continue;
      if L.StartsWith('### ') then
      begin
        Fechar;
        Atual := UpperCase(Trim(L.Substring(4)));
      end
      else if (Atual <> '') and L.StartsWith('- ') then
      begin
        Txt.Append(TrimRight(L)).Append(sLineBreak);
        P := Pos('→ ', L);
        if P > 0 then
        begin
          Destino := Copy(L, P + 2, MaxInt);
          Destino := Trim(Destino.Split(['.'])[0]);
          if not Lista.Contains(Destino) then
            Lista.Add(Destino);
        end;
      end;
    end;
    Fechar;
  finally
    Lista.Free;
    Txt.Free;
  end;
end;

function TIAContexto.ExisteTabela(const Nome: string): Boolean;
begin
  Result := FTabelas.ContainsKey(UpperCase(Trim(Nome)));
end;

function TIAContexto.SistemaSelecao: string;
begin
  Result :=
    'Você ajuda a montar consultas SQL para o banco Firebird do ERP Firenet. ' +
    'Nesta etapa, escolha apenas quais tabelas serão necessárias para responder à pergunta do usuário.' + sLineBreak +
    sLineBreak +
    'Regras:' + sLineBreak +
    '- Escolha de 1 a 12 tabelas da lista abaixo, incluindo as tabelas de cadastro necessárias para mostrar nomes (CLIENTES, PRODUTOS, VENDEDORES etc.).' + sLineBreak +
    '- Use o mapa de assuntos e as regras de negócio para decidir.' + sLineBreak +
    '- Responda somente com JSON, sem texto adicional: {"tabelas": ["TABELA1", "TABELA2"]}' + sLineBreak +
    '- Se a pergunta não tiver relação com os dados do ERP, responda {"tabelas": []}.' + sLineBreak +
    sLineBreak +
    'Tabelas existentes: ' + String.Join(', ', FNomes) +
    SEP + FRegras;
end;

function TIAContexto.SistemaGeracao(Modo: TIAModoContexto): string;
begin
  Result := FInstrucoes + SEP + FDominios + SEP + FRegras + SEP + FExemplos;
  if Modo = imcCompleto then
    Result := Result + SEP + FDicionarioCompleto + SEP + FRelacionamentosCompleto
  else
    Result := Result + SEP + FCabecalhoDicionario + sLineBreak + sLineBreak +
      '(Nesta conversa, o dicionário é enviado parcialmente: só as tabelas relevantes para a pergunta, na mensagem do usuário.)';
end;

function TIAContexto.ContextoTabelas(const Tabelas: TArray<string>; out Usadas: TArray<string>): string;
var
  Lista: TList<string>;
  T, D: string;
  Sb: TStringBuilder;
  I, Escolhidas: Integer;
  Dest: TArray<string>;
begin
  Lista := TList<string>.Create;
  Sb := TStringBuilder.Create;
  try
    for T in Tabelas do
      if ExisteTabela(T) and not Lista.Contains(UpperCase(Trim(T))) then
        Lista.Add(UpperCase(Trim(T)));

    // Inclui as tabelas referenciadas pelas escolhidas (cadastros para mostrar nomes).
    // Só um nível, a partir das tabelas escolhidas pela IA.
    Escolhidas := Lista.Count;
    for I := 0 to Escolhidas - 1 do
      if FDestinos.TryGetValue(Lista[I], Dest) then
        for D in Dest do
          if (Lista.Count < MAX_TABELAS_CONTEXTO) and ExisteTabela(D) and not Lista.Contains(D) then
            Lista.Add(D);

    Sb.Append('# Dicionário das tabelas relevantes').Append(sLineBreak).Append(sLineBreak);
    for T in Lista do
      Sb.Append(FTabelas[T]).Append(sLineBreak).Append(sLineBreak);

    Sb.Append('# Relacionamentos destas tabelas').Append(sLineBreak).Append(sLineBreak);
    for T in Lista do
      if FRelacoes.ContainsKey(T) then
        Sb.Append('### ').Append(T).Append(sLineBreak).Append(FRelacoes[T]).Append(sLineBreak).Append(sLineBreak);

    Usadas := Lista.ToArray;
    Result := Sb.ToString;
  finally
    Sb.Free;
    Lista.Free;
  end;
end;

{ ================= TIAMotor ================= }

constructor TIAMotor.Create(const Cfg: TIAConfig; Contexto: TIAContexto);
begin
  inherited Create;
  FCfg := Cfg;
  FCtx := Contexto;
end;

procedure TIAMotor.Somar(var R: TIAResultado; const Resp: TIAResposta);
begin
  Inc(R.TokensEntrada, Resp.TokensEntrada);
  Inc(R.TokensSaida, Resp.TokensSaida);
  Inc(R.TokensCache, Resp.TokensCacheLidos);
  Inc(R.Chamadas);
end;

function ExtrairJSON(const Texto: string): TJSONObject;
var
  I, F: Integer;
  V: TJSONValue;
begin
  Result := nil;
  I := Pos('{', Texto);
  F := LastDelimiter('}', Texto);
  if (I = 0) or (F < I) then Exit;
  V := TJSONObject.ParseJSONValue(Copy(Texto, I, F - I + 1));
  if V is TJSONObject then
    Result := TJSONObject(V)
  else
    V.Free;
end;

function TIAMotor.SelecionarTabelas(const Pergunta: string; var R: TIAResultado): TArray<string>;
var
  Resp: TIAResposta;
  Obj: TJSONObject;
  Arr: TJSONArray;
  V: TJSONValue;
  Lista: TList<string>;
begin
  Result := nil;
  Resp := IAGerar(FCfg, FCtx.SistemaSelecao, [TIAMensagem.Usuario(Pergunta)]);
  Somar(R, Resp);
  if not Resp.Ok then
  begin
    R.Erro := Resp.Erro;
    Exit;
  end;
  Obj := ExtrairJSON(Resp.Texto);
  if Obj = nil then Exit;
  Lista := TList<string>.Create;
  try
    if Obj.TryGetValue<TJSONArray>('tabelas', Arr) then
      for V in Arr do
        Lista.Add(V.Value);
    Result := Lista.ToArray;
  finally
    Lista.Free;
    Obj.Free;
  end;
end;

function TIAMotor.Interpretar(const Texto: string; var R: TIAResultado): Boolean;
var
  Obj: TJSONObject;
  Arr: TJSONArray;
  V: TJSONValue;
  Nomes: TList<string>;
begin
  Obj := ExtrairJSON(Texto);
  if Obj = nil then
  begin
    // Sem JSON: aceita se a resposta for só um SELECT.
    if StartsText('SELECT', Trim(Texto)) or StartsText('WITH', Trim(Texto)) then
    begin
      R.SQL := Trim(Texto);
      R.Explicacao := '';
      Exit(True);
    end;
    R.Erro := 'A IA respondeu fora do formato esperado:' + sLineBreak + Copy(Texto, 1, 1000);
    Exit(False);
  end;
  Nomes := TList<string>.Create;
  try
    Obj.TryGetValue<string>('sql', R.SQL);
    Obj.TryGetValue<string>('explicacao', R.Explicacao);
    if Obj.TryGetValue<TJSONArray>('tabelas', Arr) then
      for V in Arr do
        Nomes.Add(V.Value);
    R.Tabelas := String.Join(', ', Nomes.ToArray);
    Nomes.Clear;
    if Obj.TryGetValue<TJSONArray>('moeda', Arr) then
      for V in Arr do
        if Trim(V.Value) <> '' then
          Nomes.Add(UpperCase(Trim(V.Value)));
    R.ColunasMoeda := Nomes.ToArray;
    R.SQL := Trim(R.SQL);
    Result := True;
  finally
    Nomes.Free;
    Obj.Free;
  end;
end;

function TIAMotor.Perguntar(const Pergunta: string): TIAResultado;
var
  Tabelas, Usadas: TArray<string>;
  Msg: string;
  Modo: TIAModoContexto;
  Resp: TIAResposta;
begin
  Result := Default(TIAResultado);
  FPergunta := Pergunta;
  Modo := FCfg.ModoContexto;

  if Modo = imcDuasEtapas then
  begin
    Tabelas := SelecionarTabelas(Pergunta, Result);
    if Result.Erro <> '' then
    begin
      Registrar(Result, 'selecao');
      Exit;
    end;
    if Length(Tabelas) = 0 then
      Modo := imcCompleto; // não conseguiu escolher: usa o dicionário inteiro nesta pergunta
  end;

  FSistema := FCtx.SistemaGeracao(Modo);
  if Modo = imcDuasEtapas then
    Msg := FCtx.ContextoTabelas(Tabelas, Usadas) + sLineBreak + '# Pergunta do usuário' + sLineBreak + sLineBreak + Pergunta
  else
    Msg := '# Pergunta do usuário' + sLineBreak + sLineBreak + Pergunta;

  Msg := Msg + sLineBreak + sLineBreak + 'Data de hoje: ' + FormatDateTime('yyyy-mm-dd', Date) + '.';
  FMensagens := [TIAMensagem.Usuario(Msg)];

  Resp := IAGerar(FCfg, FSistema, FMensagens);
  Somar(Result, Resp);
  if not Resp.Ok then
  begin
    Result.Erro := Resp.Erro;
    Registrar(Result, 'geracao');
    Exit;
  end;
  FMensagens := FMensagens + [TIAMensagem.Assistente(Resp.Texto)];
  Result.Ok := Interpretar(Resp.Texto, Result);
  Registrar(Result, 'geracao');
end;

function TIAMotor.Corrigir(const SQLComErro, MensagemErro: string): TIAResultado;
var
  Resp: TIAResposta;
begin
  Result := Default(TIAResultado);
  if Length(FMensagens) = 0 then
  begin
    Result.Erro := 'Não há pergunta anterior para corrigir.';
    Exit;
  end;
  FMensagens := FMensagens + [TIAMensagem.Usuario(
    'O SQL abaixo falhou ao executar no Firebird. Corrija e responda no mesmo formato JSON.' + sLineBreak +
    sLineBreak + 'SQL:' + sLineBreak + SQLComErro + sLineBreak +
    sLineBreak + 'Erro:' + sLineBreak + MensagemErro)];

  Resp := IAGerar(FCfg, FSistema, FMensagens);
  Somar(Result, Resp);
  if not Resp.Ok then
  begin
    Result.Erro := Resp.Erro;
    Registrar(Result, 'correcao');
    Exit;
  end;
  FMensagens := FMensagens + [TIAMensagem.Assistente(Resp.Texto)];
  Result.Ok := Interpretar(Resp.Texto, Result);
  Registrar(Result, 'correcao');
end;

{ Prepara o registro de log. Só a pergunta, o SQL e o consumo: os dados do
  resultado nunca são gravados. A gravação em IASMINLOGS é feita pela tela. }
procedure TIAMotor.Registrar(var R: TIAResultado; const Etapa: string);
begin
  R.Log.Etapa := Etapa;
  R.Log.Modelo := FCfg.ModeloEfetivo;
  R.Log.Pergunta := FPergunta;
  R.Log.SQL := R.SQL;
  R.Log.Explicacao := R.Explicacao;
  R.Log.Erro := R.Erro;
  R.Log.TokensEntrada := R.TokensEntrada;
  R.Log.TokensCache := R.TokensCache;
  R.Log.TokensSaida := R.TokensSaida;
end;

class function TIAMotor.TestarConexao(const Cfg: TIAConfig; out Mensagem: string): Boolean;
var
  Resp: TIAResposta;
begin
  Resp := IAGerar(Cfg, 'Responda apenas com a palavra OK.', [TIAMensagem.Usuario('Teste de conexão.')], 2000);
  Result := Resp.Ok;
  if Result then
    Mensagem := Format('Conexão OK. Modelo: %s', [IfThen(Resp.ModeloUsado <> '', Resp.ModeloUsado, Cfg.ModeloEfetivo)])
  else
    Mensagem := Resp.Erro;
end;

end.
