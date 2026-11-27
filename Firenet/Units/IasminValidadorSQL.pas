unit IasminValidadorSQL;

{ Validação do SQL gerado pela IA antes de executar.

  É uma camada extra: a proteção principal é executar com um usuário Firebird
  que só tem GRANT SELECT e em transação somente leitura (ver
  sql\criar_usuario_leitura.sql e IasminConsulta.ExecutarSQL). }

interface

uses
  System.SysUtils;

{ Retorna True se o SQL pode ser executado. Em caso de recusa, Motivo explica. }
function ValidarSQL(const SQL: string; out Motivo: string): Boolean;

{ Remove ";" final, espaços e cercas de markdown que a IA às vezes devolve. }
function LimparSQL(const SQL: string): string;

const
  // Manter igual à lista $bloqueadas de ferramentas\gerar_contexto.ps1.
  COLUNAS_BLOQUEADAS: array[0..20] of string = (
    'CLI_PASSWORD', 'USU_PASSWORD', 'SER_SENHAONLINE', 'EMC_SENHA', 'EMP_NOSSOSITESENHA', 'EMP_SUPERSENHA',
    'CON_CLIENTID', 'CON_CLIENTSECRET', 'CON_KEYUSER',
    'PAR_APIBRASILDEVICETOKEN', 'PAR_APIBRASILSENHA', 'PAR_LICENCADLL', 'PAR_LICENCADLLCTE', 'PAR_LICENCADLLMDFE',
    'PAR_PROXYPASSWORD', 'PAR_SENHACERTIFICADO', 'PAR_SERIALCERTIFICADO', 'PAR_ZAPSENHA',
    'ZIN_CLIENTTOKEN', 'ZIN_INSTANCIATOKEN', 'ZIN_WEBHOOKTOKEN');

  // Manter igual a $tabelasExcluidas de ferramentas\gerar_contexto.ps1 e à
  // lista do sql\criar_usuario_leitura.sql.
  TABELAS_BLOQUEADAS: array[0..10] of string = (
    'PARAMETROS', 'EMPRESA', 'EMAILSCONTAS', 'ZAPINSTANCIAS', 'USUARIOS', 'ACESSOS', 'SQLS',
    'IASMIN', 'IASMINLOGS', 'TELAS', 'COMPONENTES');

implementation

uses
  System.RegularExpressions;

const
  PALAVRAS_PROIBIDAS: array[0..21] of string = (
    'INSERT', 'UPDATE', 'DELETE', 'MERGE', 'UPSERT', 'EXECUTE', 'EXEC',
    'CREATE', 'ALTER', 'DROP', 'RECREATE', 'GRANT', 'REVOKE', 'COMMIT',
    'ROLLBACK', 'SAVEPOINT', 'SET', 'DECLARE', 'GEN_ID',
    'RDB$SET_CONTEXT', 'INTO', 'BLOCK');
  // Padrões proibidos que não são palavra única. "FETCH NEXT n ROWS" continua permitido.
  PADROES_PROIBIDOS: array[0..2] of string = (
    'NEXT\s+VALUE\s+FOR',  // avança generator/sequence
    'WITH\s+LOCK',         // bloqueio pessimista de registros
    'FOR\s+UPDATE');

function LimparSQL(const SQL: string): string;
begin
  Result := Trim(SQL);
  // cercas ```sql ... ```
  if Result.StartsWith('```') then
  begin
    Result := TRegEx.Replace(Result, '^```[a-zA-Z]*\s*', '');
    Result := TRegEx.Replace(Result, '\s*```$', '');
    Result := Trim(Result);
  end;
  while Result.EndsWith(';') do
    Result := Trim(Copy(Result, 1, Length(Result) - 1));
end;

{ Troca o conteúdo de strings literais e comentários por espaços, para que
  palavras dentro de textos (ex.: CONTAINING 'DELETE') não gerem falso alarme. }
function Neutralizar(const S: string): string;
var
  I, N: Integer;
  C: Char;
  EmTexto, EmLinha, EmBloco, EmAspasDuplas: Boolean;
begin
  Result := S;
  N := Length(S);
  EmTexto := False; EmLinha := False; EmBloco := False; EmAspasDuplas := False;
  I := 1;
  while I <= N do
  begin
    C := S[I];
    if EmLinha then
    begin
      if (C = #10) or (C = #13) then EmLinha := False else Result[I] := ' ';
    end
    else if EmBloco then
    begin
      if (C = '*') and (I < N) and (S[I + 1] = '/') then
      begin
        Result[I] := ' '; Result[I + 1] := ' '; Inc(I); EmBloco := False;
      end
      else
        Result[I] := ' ';
    end
    else if EmTexto then
    begin
      if C = '''' then
      begin
        if (I < N) and (S[I + 1] = '''') then
        begin
          Result[I] := ' '; Result[I + 1] := ' '; Inc(I); // '' escapado
        end
        else
          EmTexto := False;
      end
      else
        Result[I] := ' ';
    end
    else if EmAspasDuplas then
    begin
      if C = '"' then EmAspasDuplas := False;
    end
    else
    begin
      if C = '''' then EmTexto := True
      else if C = '"' then EmAspasDuplas := True
      else if (C = '-') and (I < N) and (S[I + 1] = '-') then
      begin
        Result[I] := ' '; Result[I + 1] := ' '; Inc(I); EmLinha := True;
      end
      else if (C = '/') and (I < N) and (S[I + 1] = '*') then
      begin
        Result[I] := ' '; Result[I + 1] := ' '; Inc(I); EmBloco := True;
      end;
    end;
    Inc(I);
  end;
  if EmTexto or EmBloco then
    Result := #0; // literal ou comentário não fechado: força recusa
end;

function ContemPalavra(const Texto, Palavra: string): Boolean;
begin
  // \b não trata "$" como parte da palavra; usa delimitação explícita.
  Result := TRegEx.IsMatch(Texto, '(^|[^A-Z0-9_$])' + TRegEx.Escape(Palavra) + '($|[^A-Z0-9_$])');
end;

function ValidarSQL(const SQL: string; out Motivo: string): Boolean;
var
  S, P: string;
begin
  Result := False;
  Motivo := '';
  S := LimparSQL(SQL);
  if S = '' then
  begin
    Motivo := 'Nenhum SQL para executar.';
    Exit;
  end;

  S := Neutralizar(S);
  if S = #0 then
  begin
    Motivo := 'SQL com texto ou comentário não fechado.';
    Exit;
  end;
  S := UpperCase(Trim(S));

  if Pos(';', S) > 0 then
  begin
    Motivo := 'Apenas uma instrução SQL é permitida.';
    Exit;
  end;

  if not (TRegEx.IsMatch(S, '^SELECT\b') or TRegEx.IsMatch(S, '^WITH\b')) then
  begin
    Motivo := 'Apenas consultas (SELECT) são permitidas.';
    Exit;
  end;

  for P in PALAVRAS_PROIBIDAS do
    if ContemPalavra(S, P) then
    begin
      Motivo := Format('Comando não permitido em consultas: %s.', [P]);
      Exit;
    end;

  for P in PADROES_PROIBIDOS do
    if TRegEx.IsMatch(S, P) then
    begin
      Motivo := 'Comando não permitido em consultas: ' + TRegEx.Replace(P, '\\s\+', ' ') + '.';
      Exit;
    end;

  if TRegEx.IsMatch(S, '(RDB|MON|SEC)\$') then
  begin
    Motivo := 'Tabelas de sistema do Firebird não podem ser consultadas.';
    Exit;
  end;

  for P in COLUNAS_BLOQUEADAS do
    if ContemPalavra(S, P) then
    begin
      Motivo := 'A consulta tenta acessar um dado protegido (senha, token ou chave).';
      Exit;
    end;

  for P in TABELAS_BLOQUEADAS do
    if ContemPalavra(S, P) then
    begin
      Motivo := Format('A tabela %s não está disponível para consultas com IA.', [P]);
      Exit;
    end;

  Result := True;
end;

end.
