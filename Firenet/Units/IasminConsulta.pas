unit IasminConsulta;

{ Tela "Consultas com IA".

  Uso no ERP (ex.: item de menu):
    TFormIasminConsulta.Abrir(DM.FDConnection1, DM.UsuarioLogin);
  A conexão do ERP é usada para ler/gravar a configuração (IASMIN) e o log
  (IASMINLOGS). As consultas da IA rodam numa conexão própria (FDConexao).
  Não deixe este form em "Auto-create forms": ele é criado sob demanda.

  Fluxo: pergunta -> IA gera SQL (thread de fundo) -> validação -> execução
  numa conexão própria, com usuário somente leitura e transação read-only ->
  resultado na grade. Se o Firebird recusar o SQL, a IA recebe o erro e
  corrige automaticamente uma vez.

  As opções de segurança de FDConexao/FDTransacao/FDQuery são reaplicadas
  em FormCreate, então alterá-las no Object Inspector não tem efeito. }

interface

uses
  System.SysUtils, System.Classes, System.UITypes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Dialogs,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  IasminConfigDados, IasminMotor, FireDAC.VCLUI.Wait, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls;

type
  TFormIasminConsulta = class(TForm)
    Status: TStatusBar;
    FDConexao: TFDConnection;
    FDTransacao: TFDTransaction;
    FDQuery: TFDQuery;
    DSQuery: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    LblPergunta: TLabel;
    MemoPergunta: TMemo;
    LblExplicacao: TLabel;
    MemoSQL: TMemo;
    Label1: TLabel;
    BtnPerguntar: TPngBitBtn;
    BtnConfig: TPngBitBtn;
    BtnExecutar: TPngBitBtn;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Splitter1: TSplitter;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Grid: TDBGrid;
    BtnExportar: TPngBitBtn;
    Splitter4: TSplitter;
    DBMemo4: TDBMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure MemoPerguntaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnPerguntarClick(Sender: TObject);
    procedure BtnConfigClick(Sender: TObject);
    procedure BtnExecutarClick(Sender: TObject);
    procedure BtnExportarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FConexaoERP: TFDConnection;
    FUsuarioERP: string;
    FCfg: TIAConfig;
    FContexto: TIAContexto;
    FMotor: TIAMotor;
    FOcupado: Boolean;
    FAvisoConexao: string;
    FUsoIA: string;
    FColunasMoeda: TArray<string>; // informadas pela IA; mantidas para o "Executar SQL editado"

    procedure AplicarSeguranca;
    procedure AplicarFormatoMoeda;
    function PrepararMotor: Boolean;
    procedure DescartarMotor;
    procedure SetOcupado(Valor: Boolean; const Msg: string = '');
    procedure Trabalhar(Motor: TIAMotor; const Pergunta, SQL, Erro: string; Correcao: Boolean);
    procedure GerarAsync(const Pergunta: string);
    procedure CorrigirAsync(const SQL, Erro: string);
    procedure AoReceber(const R: TIAResultado; Correcao: Boolean);
    procedure ExecutarSQL(const SQL: string; PermitirCorrecao: Boolean);
    function TamanhoLote(JaLidas: Integer): Integer;
    procedure LerLinhas;
    procedure GarantirConexao;
    procedure MostrarStatus(const Texto: string);
    procedure AtualizarHistorico;
    function UsuarioLogado: string;
  public
    class procedure Abrir(ConexaoERP: TFDConnection; const UsuarioERP: string = '');
  end;

implementation

uses
  System.Threading, System.Diagnostics, System.IOUtils, System.StrUtils, Data.FMTBcd,
  IasminValidadorSQL, IasminConfig, DataMod, DataMod2;

{$R *.dfm}

{ ---------- criação ---------- }

class procedure TFormIasminConsulta.Abrir(ConexaoERP: TFDConnection; const UsuarioERP: string);
var
  F: TFormIasminConsulta;
  Cfg: TIAConfig;
begin
  try
    Cfg := CarregarConfig(ConexaoERP);
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possível ler a configuração da IA (tabela IASMIN):' + sLineBreak + E.Message,
        mtError, [mbOK], 0);
      Exit;
    end;
  end;
  F := TFormIasminConsulta.Create(Application);
  try
    F.FConexaoERP := ConexaoERP;
    F.FUsuarioERP := UsuarioERP;
    F.FCfg := Cfg;
    F.AtualizarHistorico;
    F.ShowModal;
  finally
    F.Free;
  end;
end;

procedure TFormIasminConsulta.FormCreate(Sender: TObject);
begin
  FCfg := ConfigPadrao; // a configuração real é carregada do banco em Abrir
  AplicarSeguranca;
  MostrarStatus('Pronto.');
  PageControl1.ActivePageIndex:=0;
end;

{ Garante as opções de segurança mesmo que alguém mude no Object Inspector. }
procedure TFormIasminConsulta.AplicarSeguranca;
begin
  FDConexao.Connected := False;
  FDConexao.LoginPrompt := False;
  FDConexao.Transaction := FDTransacao;
  FDTransacao.Connection := FDConexao;
  FDTransacao.Options.ReadOnly := True;
  FDTransacao.Options.Isolation := xiReadCommitted;

  FDQuery.Connection := FDConexao;
  FDQuery.Transaction := FDTransacao;
  FDQuery.UpdateOptions.ReadOnly := True;
  FDQuery.FetchOptions.Mode := fmManual; // linhas lidas só por LerLinhas
  FDQuery.FetchOptions.RecsMax := -1;    // RecsMax faz o FireDAC alterar o SQL
  FDQuery.ResourceOptions.ParamCreate := False; // ":" dentro do SQL não vira parâmetro
  FDQuery.ResourceOptions.MacroCreate := False;
  FDQuery.ResourceOptions.MacroExpand := False;
  DsQuery.DataSet := FDQuery;
  Grid.DataSource := DsQuery;
  Grid.ReadOnly := True;
  DBGrid1.ReadOnly := True; // histórico (IASMINLOGS): só consulta
end;

{ Reabre DM2.TBIasminLogs para o grid da aba de histórico mostrar o que acabou
  de ser gravado. O log é gravado por GravarLog numa transação própria, já
  confirmada, então basta fechar e abrir a query. Erro aqui nunca interrompe a tela. }
procedure TFormIasminConsulta.AtualizarHistorico;
begin
  if (DM2 = nil) or (DM2.TBIasminLogs = nil) then Exit;
  try
    DM2.TBIasminLogs.Close;
    DM2.TBIasminLogs.Open;
  except
    on E: Exception do
      MostrarStatus('Histórico não carregado: ' + E.Message);
  end;
end;


procedure TFormIasminConsulta.FormDestroy(Sender: TObject);
begin
  DescartarMotor;
end;

procedure TFormIasminConsulta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

{ ---------- estado ---------- }

procedure TFormIasminConsulta.MostrarStatus(const Texto: string);
begin
  Status.SimpleText := '  ' + Texto;
end;

procedure TFormIasminConsulta.SetOcupado(Valor: Boolean; const Msg: string);
begin
  FOcupado := Valor;
  BtnPerguntar.Enabled := not Valor;
  BtnExecutar.Enabled := not Valor;
  BtnConfig.Enabled := not Valor;
  MemoPergunta.ReadOnly := Valor;
  if Valor then Screen.Cursor := crAppStart else Screen.Cursor := crDefault;
  if Msg <> '' then MostrarStatus(Msg);
end;

procedure TFormIasminConsulta.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  // a thread de fundo usa FMotor: não deixa fechar no meio de uma chamada
  CanClose := not FOcupado;
  if not CanClose then
  MostrarStatus('Aguarde a resposta da IA para fechar a tela.');
end;

procedure TFormIasminConsulta.DBGrid1DblClick(Sender: TObject);
begin
  if not DM2.TBIasminLogs.IsEmpty then
  begin
    MemoPergunta.Lines.Clear;
    MemoPergunta.Lines.Add(DM2.TBIasminLogsIAL_PERGUNTA.AsString);
    PageControl1.ActivePageIndex:=0;
  end;
end;

procedure TFormIasminConsulta.DescartarMotor;
begin
  FreeAndNil(FMotor);
  FreeAndNil(FContexto);
end;

procedure TFormIasminConsulta.BtnPerguntarClick(Sender: TObject);
var P: String;
begin
  P:=Trim(MemoPergunta.Text);
  if P='' then Exit;
  if not PrepararMotor then Exit;
  FDQuery.Close;
  MemoSQL.Clear;
  LblExplicacao.Caption := '';
  GerarAsync(P);
end;

procedure TFormIasminConsulta.BtnConfigClick(Sender: TObject);
begin
  if TFormIasminConfig.Executar(FConexaoERP, UsuarioLogado, FCfg) then
  begin
    DescartarMotor;   // recria com a nova configuração na próxima pergunta
    FDQuery.Close;
    FDConexao.Connected := False;
  end;
end;

function TFormIasminConsulta.PrepararMotor: Boolean;
var
  Motivo: string;
begin
  Result := False;
  if not FCfg.Configurado(Motivo) then
  begin
    MessageDlg('A IA ainda não está configurada.' + sLineBreak + Motivo, mtWarning, [mbOK], 0);
    BtnConfigClick(nil);
    if not FCfg.Configurado(Motivo) then Exit;
  end;
  if FMotor = nil then
  begin
    try
      FContexto := TIAContexto.Create(PastaContexto);
      FMotor := TIAMotor.Create(FCfg, FContexto);
    except
      on E: Exception do
      begin
        DescartarMotor;
        MessageDlg(E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;
  end;
  Result := True;
end;

{ ---------- eventos ---------- }

procedure TFormIasminConsulta.MemoPerguntaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vkReturn) and (ssCtrl in Shift) then
  begin
    Key := 0;
    BtnPerguntarClick(nil);
  end;
end;

procedure TFormIasminConsulta.BtnExecutarClick(Sender: TObject);
begin
  ExecutarSQL(MemoSQL.Text, False);
  PageControl1.ActivePageIndex:=0;
end;

{ ---------- IA (thread de fundo) ---------- }

{ Roda na thread de fundo: chama a IA e devolve o resultado para a thread principal. }
procedure TFormIasminConsulta.Trabalhar(Motor: TIAMotor; const Pergunta, SQL, Erro: string; Correcao: Boolean);
var R: TIAResultado;
begin
  try
    if Correcao then
    R := Motor.Corrigir(SQL, Erro) else
    R := Motor.Perguntar(Pergunta);
  except
    on E: Exception do
    begin
      R := Default(TIAResultado);
      R.Erro := E.Message;
    end;
  end;
  TThread.Queue(nil,
    procedure
    begin
      AoReceber(R, Correcao);
    end);
end;

procedure TFormIasminConsulta.GerarAsync(const Pergunta: string);
var
  Motor: TIAMotor;
  P: string;
begin
  SetOcupado(True, 'Consultando a IA...');
  Motor := FMotor;
  P := Pergunta;
  TTask.Run(
    procedure
    begin
      Trabalhar(Motor, P, '', '', False);
    end);
end;

procedure TFormIasminConsulta.CorrigirAsync(const SQL, Erro: string);
var
  Motor: TIAMotor;
  S, E: string;
begin
  SetOcupado(True, 'O banco recusou o SQL. Pedindo correção à IA...');
  Motor := FMotor;
  S := SQL;
  E := Erro;
  TTask.Run(
    procedure
    begin
      Trabalhar(Motor, '', S, E, True);
    end);
end;

{ Login do usuário logado no ERP (DM.UsuarioLogin), gravado em IAL_USUARIO e
  IAS_USUARIO. O parâmetro de Abrir só é usado se o DM não existir. }
function TFormIasminConsulta.UsuarioLogado: string;
begin
  if (DM <> nil) and (DM.UsuarioLogin <> '') then
    Result := DM.UsuarioLogin else
    Result := FUsuarioERP;
end;

procedure TFormIasminConsulta.AoReceber(const R: TIAResultado; Correcao: Boolean);
var
  Uso, ErroLog: String;
  Log: TIALog;
begin
  SetOcupado(False);
  Uso := Format('IA: %d chamada(s), tokens entrada %d (cache %d), saída %d',
    [R.Chamadas, R.TokensEntrada, R.TokensCache, R.TokensSaida]);
  // Log em IASMINLOGS: gravado aqui, na thread principal, com a conexão do ERP.
  if R.Log.Etapa <> '' then
  begin
    Log := R.Log;
    Log.Usuario := UsuarioLogado;
    ErroLog := GravarLog(FConexaoERP, Log);
    if ErroLog <> '' then
      Uso := Uso + ' | log não gravado: ' + ErroLog else
      AtualizarHistorico;
  end;
  FUsoIA := Uso;

  if not R.Ok then
  begin
    MostrarStatus('Erro. ' + Uso);
    MessageDlg(R.Erro, mtError, [mbOK], 0);
    Exit;
  end;

  LblExplicacao.Caption := R.Explicacao;
  MemoSQL.Text := R.SQL;
  FColunasMoeda := R.ColunasMoeda;
  if R.SQL = '' then
  begin
    MostrarStatus('A IA não gerou consulta. ' + Uso);
    Exit;
  end;
  MostrarStatus(Uso);
  // Na correção não permite nova correção automática (evita laço).
  ExecutarSQL(R.SQL, not Correcao);
end;

{ ---------- banco ---------- }

procedure TFormIasminConsulta.GarantirConexao;
begin
  if FDConexao.Connected then Exit;
  if FConexaoERP = nil then
    raise Exception.Create('Abra esta tela com TFormIasminConsulta.Abrir(Conexao).');
  FDConexao.Params.Assign(FConexaoERP.Params);
  if (FCfg.DbUsuario <> '') and (FCfg.DbSenha <> '') then
  begin
    FDConexao.Params.UserName := FCfg.DbUsuario;
    FDConexao.Params.Password := FCfg.DbSenha;
    FAvisoConexao := '';
  end else
    // Sem usuário de leitura: usa o usuário do ERP, protegido apenas pela
    // transação somente leitura e pelo validador. Configure o IA_LEITURA.
    FAvisoConexao := ' | ATENÇÃO: usuário somente leitura não configurado';
  FDConexao.Connected := True;
  try
    // Firebird 4: aborta consultas que passarem do tempo limite.
    FDConexao.ExecSQL(Format('SET STATEMENT TIMEOUT %d SECOND', [FCfg.TimeoutSQLSeg]));
  except
    // servidor anterior ao FB4: segue sem o limite
  end;
end;

{ Quantas linhas buscar no próximo lote, sem passar de MaxLinhas. }
function TFormIasminConsulta.TamanhoLote(JaLidas: Integer): Integer;
const LOTE = 200;
begin
  Result := FCfg.MaxLinhas - JaLidas;
  if Result > LOTE then Result := LOTE;
  if Result < 1 then Result := 1;
end;

{ Formata como moeda (R$, FormatSettings do Windows) as colunas que a IA
  marcou em "moeda". Só muda a exibição: o valor e o CSV continuam numéricos. }
procedure TFormIasminConsulta.AplicarFormatoMoeda;
var
  I: Integer;
  F: TField;
begin
  for I := 0 to FDQuery.FieldCount - 1 do
  begin
    F := FDQuery.Fields[I];
    if not MatchText(F.FieldName, FColunasMoeda) then
      Continue;
    if F is TFloatField then
      TFloatField(F).Currency := True // inclui TCurrencyField
    else if F is TBCDField then
      TBCDField(F).Currency := True
    else if F is TFMTBCDField then
      TFMTBCDField(F).Currency := True
    else if F is TExtendedField then
      TExtendedField(F).Currency := True
    else if F is TNumericField then // inteiros: sem Currency, usa máscara
      TNumericField(F).DisplayFormat := FormatSettings.CurrencyString + ' #,##0.00';
  end;
end;

{ Busca lotes até chegar a MaxLinhas ou ao fim do resultado. }
procedure TFormIasminConsulta.LerLinhas;
begin
  while not FDQuery.SourceEOF and (FDQuery.RecordCount < FCfg.MaxLinhas) do
  begin
    FDQuery.FetchOptions.RowsetSize := TamanhoLote(FDQuery.RecordCount);
    if FDQuery.GetNextPacket = 0 then
    Break;
  end;
  FDQuery.First;
end;

procedure TFormIasminConsulta.ExecutarSQL(const SQL: string; PermitirCorrecao: Boolean);
var
  Motivo, S: string;
  Cron: TStopwatch;
  Limitado: string;
begin
  S := LimparSQL(SQL);
  if not ValidarSQL(S, Motivo) then
  begin
    MessageDlg('Consulta não executada: ' + Motivo, mtWarning, [mbOK], 0);
    Exit;
  end;

  FDQuery.Close;
  // Não usar FetchOptions.RecsMax: com ele o FireDAC acrescenta "ROWS n" ao
  // final do SQL, o que quebra consultas que já têm FIRST/ROWS ("Token unknown
  // ROWS"). O limite é aplicado na busca dos registros, em LerLinhas.
  FDQuery.FetchOptions.RecsMax := -1;
  FDQuery.FetchOptions.Mode := fmManual;
  FDQuery.SQL.Text := S;
  Screen.Cursor := crSQLWait;
  Cron := TStopwatch.StartNew;
  try
    try
      GarantirConexao;
      FDQuery.FetchOptions.RowsetSize := TamanhoLote(0);
      FDQuery.Open;
      AplicarFormatoMoeda;
      LerLinhas;
    except
      on E: Exception do
      begin
        Screen.Cursor := crDefault;
        if FDTransacao.Active then FDTransacao.Rollback;
        if PermitirCorrecao and (FMotor <> nil) then
        CorrigirAsync(S, E.Message) else
        MessageDlg('Erro ao executar a consulta:' + sLineBreak + E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;

  if not FDQuery.SourceEOF then // há mais linhas no banco além do limite
  Limitado := Format(' (limitado a %d)', [FCfg.MaxLinhas]) else
  Limitado := '';
  MostrarStatus(Format('%d linha(s)%s em %.1f s', [FDQuery.RecordCount, Limitado, Cron.ElapsedMilliseconds / 1000]) + ' | ' + FUsoIA + FAvisoConexao);
end;

{ ---------- exportação ---------- }

procedure TFormIasminConsulta.BtnExportarClick(Sender: TObject);
var
  Dlg: TSaveDialog;
  Sb: TStringBuilder;
  I: Integer;
  Marca: TBookmark;

  function Campo(const V: string): string;
  begin
    Result := '"' + StringReplace(V, '"', '""', [rfReplaceAll]) + '"';
  end;
begin
  if not FDQuery.Active or FDQuery.IsEmpty then Exit;
  Dlg := TSaveDialog.Create(Self);
  Sb := TStringBuilder.Create;
  try
    Dlg.Filter := 'CSV (separado por ;)|*.csv';
    Dlg.DefaultExt := 'csv';
    Dlg.FileName := 'consulta_ia.csv';
    if not Dlg.Execute then Exit;

    for I := 0 to FDQuery.FieldCount - 1 do
    begin
      if I > 0 then Sb.Append(';');
      Sb.Append(Campo(FDQuery.Fields[I].DisplayName));
    end;
    Sb.AppendLine;

    Marca := FDQuery.Bookmark;
    FDQuery.DisableControls;
    try
      FDQuery.First;
      while not FDQuery.Eof do
      begin
        for I := 0 to FDQuery.FieldCount - 1 do
        begin
          if I > 0 then Sb.Append(';');
          Sb.Append(Campo(FDQuery.Fields[I].AsString));
        end;
        Sb.AppendLine;
        FDQuery.Next;
      end;
      FDQuery.Bookmark := Marca;
    finally
      FDQuery.EnableControls;
    end;
    // UTF-8 com BOM: o Excel abre acentos corretamente
    TFile.WriteAllText(Dlg.FileName, Sb.ToString, TEncoding.UTF8);
    MostrarStatus('Exportado para ' + Dlg.FileName);
  finally
    Sb.Free;
    Dlg.Free;
  end;
end;

end.
