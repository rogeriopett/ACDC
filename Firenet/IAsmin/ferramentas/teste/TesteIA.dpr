program TesteIA;

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Vcl.Forms,
  FireDAC.Phys.FB,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Option,
  IasminConfigDados,
  IasminProvedores,
  IasminValidadorSQL,
  IasminMotor,
  IasminConfig,
  IasminConsulta;

var
  Falhas: Integer = 0;

procedure Checar(const SQL: string; Esperado: Boolean);
var
  Motivo: string;
  Ok: Boolean;
begin
  Ok := ValidarSQL(SQL, Motivo);
  if Ok <> Esperado then
  begin
    Inc(Falhas);
    Writeln('FALHOU  esperado=', Esperado, '  ', SQL, '  -> ', Motivo);
  end
  else
    Writeln('ok      ', BoolToStr(Ok, True):5, '  ', Copy(SQL, 1, 70), '  ', Motivo);
end;

procedure TestarValidador;
begin
  Writeln('--- validador');
  Checar('SELECT FIRST 10 * FROM VENDAS', True);
  Checar('select * from vendas;', True);
  Checar('WITH X AS (SELECT 1 A FROM RDB$DATABASE) SELECT * FROM X', False); // RDB$ bloqueado
  Checar('WITH X AS (SELECT VED_CODIGO FROM VENDAS) SELECT * FROM X', True);
  Checar('SELECT * FROM CLIENTES WHERE CLI_NOME CONTAINING ''DELETE''', True);
  Checar('SELECT * FROM CLIENTES WHERE CLI_NOME = ''O''''BRIEN''', True);
  Checar('SELECT * FROM VENDAS ORDER BY 1 OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY', True);
  Checar('```sql' + sLineBreak + 'SELECT 1 FROM VENDAS' + sLineBreak + '```', True);
  Checar('DELETE FROM VENDAS', False);
  Checar('SELECT * FROM VENDAS; DELETE FROM VENDAS', False);
  Checar('UPDATE VENDAS SET VED_STATUS = ''C''', False);
  Checar('EXECUTE BLOCK AS BEGIN END', False);
  Checar('SELECT GEN_ID(GEN_VENDAS, 1) FROM VENDAS', False);
  Checar('SELECT NEXT VALUE FOR GEN_VENDAS FROM VENDAS', False);
  Checar('SELECT * FROM VENDAS WITH LOCK', False);
  Checar('SELECT * FROM VENDAS FOR UPDATE', False);
  Checar('SELECT CLI_PASSWORD FROM CLIENTES', False);
  Checar('SELECT C.CLI_NOME FROM CLIENTES C -- CLI_PASSWORD', True); // dentro de comentário
  Checar('SELECT * FROM PARAMETROS', False);
  Checar('SELECT IAS_CHAVEAPI FROM IASMIN', False);
  Checar('SELECT * FROM IASMINLOGS', False);
  Checar('SELECT * FROM MON$ATTACHMENTS', False);
  Checar('SELECT * FROM VENDAS /* comentario aberto', False);
  Checar('SELECT RDB$SET_CONTEXT(''USER_SESSION'',''A'',''B'') FROM VENDAS', False);
  Checar('', False);
end;

procedure TestarContexto(const Pasta: string);
var
  Ctx: TIAContexto;
  Usadas: TArray<string>;
  Txt: string;
begin
  Writeln('--- contexto: ', Pasta);
  Ctx := TIAContexto.Create(Pasta);
  try
    Writeln('existe VENDAS: ', Ctx.ExisteTabela('vendas'), '  existe PARAMETROS: ', Ctx.ExisteTabela('PARAMETROS'));
    Writeln('sistema selecao (chars): ', Length(Ctx.SistemaSelecao));
    Writeln('sistema 2 etapas (chars): ', Length(Ctx.SistemaGeracao(imcDuasEtapas)));
    Writeln('sistema completo (chars): ', Length(Ctx.SistemaGeracao(imcCompleto)));
    Txt := Ctx.ContextoTabelas(['VENDAS', 'vendasitens', 'NAOEXISTE'], Usadas);
    Writeln('tabelas no contexto: ', String.Join(', ', Usadas));
    Writeln('contexto (chars): ', Length(Txt));
    if Pos('VED_STATUS VARCHAR(1)', Txt) = 0 then begin Inc(Falhas); Writeln('FALHOU: VED_STATUS ausente'); end;
    if Pos('VEI_VENDA → VENDAS.VED_CODIGO', Txt) = 0 then begin Inc(Falhas); Writeln('FALHOU: FK VEI_VENDA ausente'); end;
    if Pos('Ã', Txt) > 0 then begin Inc(Falhas); Writeln('FALHOU: acentuação corrompida'); end;
  finally
    Ctx.Free;
  end;
end;

procedure TestarCifra;
var
  C, C2, Longa: string;
begin
  Writeln('--- aes');
  C := CifrarTexto('sk-teste-çã-123');
  C2 := CifrarTexto('sk-teste-çã-123');
  if DecifrarTexto(C) <> 'sk-teste-çã-123' then begin Inc(Falhas); Writeln('FALHOU: aes ida e volta'); end
  else Writeln('ok      ida e volta (', Length(C), ' chars) ', C);
  if C = C2 then begin Inc(Falhas); Writeln('FALHOU: IV deveria variar'); end;
  if DecifrarTexto('lixo') <> '' then begin Inc(Falhas); Writeln('FALHOU: aes lixo'); end;
  if DecifrarTexto('A1:QUJDRA==') <> '' then begin Inc(Falhas); Writeln('FALHOU: aes curto'); end;
  if CifrarTexto('') <> '' then begin Inc(Falhas); Writeln('FALHOU: aes vazio'); end;
  Longa := StringOfChar('x', 200);
  C := CifrarTexto(Longa);
  if (DecifrarTexto(C) <> Longa) or (Length(C) > 1000) then begin Inc(Falhas); Writeln('FALHOU: aes 200 chars / tamanho ', Length(C)); end;
end;

procedure TestarLiterais;
var
  P: TIAProvedor;
  M: TIAModoContexto;
  I: Integer;
begin
  Writeln('--- literais dos combos');
  for P := Low(TIAProvedor) to High(TIAProvedor) do
    if (ProvedorDeTexto(NOMES_PROVEDOR[P]) <> P) or (Length(NOMES_PROVEDOR[P]) > 50) then
    begin Inc(Falhas); Writeln('FALHOU: provedor ', NOMES_PROVEDOR[P]); end;
  for I := Low(NOMES_ESFORCO) to High(NOMES_ESFORCO) do
    if (EsforcoDeTexto(NOMES_ESFORCO[I]) <> VALORES_ESFORCO[I]) or (IndiceEsforco(VALORES_ESFORCO[I]) <> I)
      or (Length(NOMES_ESFORCO[I]) > 40) then
    begin Inc(Falhas); Writeln('FALHOU: esforco ', NOMES_ESFORCO[I]); end;
  for M := Low(TIAModoContexto) to High(TIAModoContexto) do
    if (ModoDeTexto(NOMES_MODO[M]) <> M) or (Length(NOMES_MODO[M]) > 50) then
    begin Inc(Falhas); Writeln('FALHOU: modo ', NOMES_MODO[M]); end;
  if ProvedorDeTexto('desconhecido') <> ipAnthropic then begin Inc(Falhas); Writeln('FALHOU: provedor padrao'); end;
  Writeln('ok      conversoes conferidas');
end;

procedure TestarForms;
var
  FC: TFormIasminConfig;
  FQ: TFormIasminConsulta;
begin
  Writeln('--- forms (.dfm)');
  FC := TFormIasminConfig.Create(nil);
  try
    Writeln('config: ', FC.Caption, ' | provedores=', FC.CbProvedor.Items.Count,
      ' esforcos=', FC.CbEsforco.Items.Count, ' | ', Copy(FC.LblDica.Caption, 1, 30));
    if FC.CbProvedor.Items.Count <> 4 then begin Inc(Falhas); Writeln('FALHOU: provedores'); end;
    if FC.Caption <> 'Configuração da IA' then begin Inc(Falhas); Writeln('FALHOU: acento no caption'); end;
  finally
    FC.Free;
  end;
  FQ := TFormIasminConsulta.Create(nil);
  try
    Writeln('consulta: ', FQ.Caption, ' | ', FQ.LblPergunta.Caption);
    if not FQ.FDTransacao.Options.ReadOnly then begin Inc(Falhas); Writeln('FALHOU: transacao RO'); end;
    if FQ.FDQuery.ResourceOptions.ParamCreate then begin Inc(Falhas); Writeln('FALHOU: ParamCreate'); end;
    if FQ.FDQuery.FetchOptions.Mode <> fmManual then begin Inc(Falhas); Writeln('FALHOU: fmManual'); end;
    if FQ.FDQuery.FetchOptions.RecsMax <> -1 then begin Inc(Falhas); Writeln('FALHOU: RecsMax deve ser -1'); end;
    if FQ.Grid.DataSource <> FQ.DsQuery then begin Inc(Falhas); Writeln('FALHOU: grid'); end;
  finally
    FQ.Free;
  end;
end;

begin
  try
    TestarForms;
    TestarValidador;
    TestarContexto(ParamStr(1));
    TestarCifra;
    TestarLiterais;
  except
    on E: Exception do
    begin
      Inc(Falhas);
      Writeln('EXCECAO: ', E.ClassName, ': ', E.Message);
    end;
  end;
  Writeln;
  Writeln('Falhas: ', Falhas);
  ExitCode := Falhas;
end.
