unit SQLEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.UITypes, System.StrUtils, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, DBSBtn, System.ImageList, Vcl.ImgList, PngImageList,
  Vcl.Menus, Vcl.Buttons, PngSpeedButton, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, Vcl.ComCtrls;

type
  TFormSQLEditor = class(TForm)
    DSSql: TDataSource;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Executar1: TMenuItem;
    Imprimir1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    PngImageList1: TPngImageList;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    Exportar1: TMenuItem;
    SaveDialog1: TSaveDialog;
    PngSpeedButton1: TPngSpeedButton;
    QYSql: TFDQuery;
    TRSql: TFDTransaction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Splitter1: TSplitter;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    QYSqls: TFDQuery;
    TRSqls: TFDTransaction;
    DSSqls: TDataSource;
    QYSqlsSQL_CODIGO: TIntegerField;
    QYSqlsSQL_FORM: TStringField;
    QYSqlsSQL_QUERY: TMemoField;
    QYSqlsSQL_USUARIO: TIntegerField;
    N1: TMenuItem;
    N3: TMenuItem;
    AbaHistrico1: TMenuItem;
    QYSqlsSQL_PREVIEW: TStringField;
    QYSqlsUSU_LOGIN: TStringField;
    N4: TMenuItem;
    CriarUsuarioDaIAsmin1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Executar1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Exportar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure AbaHistrico1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure CriarUsuarioDaIAsmin1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportQueryToCSV(Query: TFDQuery; FileName: String);
  public
    { Public declarations }
  end;

var
  FormSQLEditor: TFormSQLEditor;

implementation
uses DataMod, DataMod2;
{$R *.dfm}

procedure TFormSQLEditor.ExportQueryToCSV(Query: TFDQuery; FileName: String);
var
  CSVFile: TextFile;
  I: Integer;
  Line: String;
begin
  // Verifica se a query está ativa e tem dados
  if not Query.Active then
  raise Exception.Create('A consulta não está ativa.');

  if Query.IsEmpty then
  raise Exception.Create('A consulta não contém dados para exportar.');

  // Abre o arquivo CSV para escrita
  AssignFile(CSVFile, FileName);
  try
    Rewrite(CSVFile);

    Query.DisableControls;
    // Escreve o cabeçalho (nomes dos campos)
    Line:='';
    for I:=0 to Query.FieldCount-1 do
    begin
      if I > 0 then
      Line:=Line+';'; // Separador de campos (pode ser alterado para ",")
      Line:=Line+Query.Fields[I].FieldName;
    end;
    WriteLn(CSVFile,Line);

    // Escreve os dados
    Query.First;
    while not Query.Eof do
    begin
      Line:='';
      for I:=0 to Query.FieldCount-1 do
      begin
        if I > 0 then
        Line:=Line+';'; // Separador de campos
        Line:=Line+Query.Fields[I].AsString;
      end;
      WriteLn(CSVFile, Line);
      Query.Next;
    end;
  finally
    CloseFile(CSVFile);
    Query.EnableControls;
  end;
end;

procedure TFormSQLEditor.AbaHistrico1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
end;

procedure TFormSQLEditor.CriarUsuarioDaIAsmin1Click(Sender: TObject);
const
  USUARIO = 'IASMIN';
  SENHA   = 'RUNTIMEIASMIN';
  // manter igual ao IasminValidadorSQL.pas e ao gerar_contexto.ps1
  BLOQUEADAS: array[0..10] of string = ('PARAMETROS', 'EMPRESA', 'EMAILSCONTAS', 'ZAPINSTANCIAS', 'USUARIOS', 'ACESSOS', 'SQLS', 'IASMIN', 'IASMINLOGS', 'TELAS', 'COMPONENTES');
var
  Tabelas: TStringList;
  Tabela, Lista, Msg: string;
begin
  if MessageDlg('Criar o usuário ' + USUARIO + ' (se não existir) e atualizar as permissões de leitura?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
  Exit;

  Lista := '';
  for Tabela in BLOQUEADAS do
  Lista := Lista + IfThen(Lista <> '', ', ') + QuotedStr(Tabela);

  Screen.Cursor := crHourGlass;
  Tabelas := TStringList.Create;
  try
    try
      QYSql.Close;

      // 1) cria o usuário, se não existir
      QYSql.Open('SELECT COUNT(*) FROM SEC$USERS WHERE SEC$USER_NAME = ' + QuotedStr(USUARIO));
      if QYSql.Fields[0].AsInteger = 0 then
      begin
        QYSql.Close;
        QYSql.ExecSQL('CREATE USER ' + USUARIO + ' PASSWORD ' + QuotedStr(SENHA));
        Msg := 'Usuário ' + USUARIO + ' criado.';
      end else
      Msg := 'Usuário ' + USUARIO + ' já existia.';
      QYSql.Close;

      // 2) tira o acesso às tabelas bloqueadas (se já tinha)
      for Tabela in BLOQUEADAS do
      try
        QYSql.ExecSQL('REVOKE ALL ON "' + Tabela + '" FROM USER ' + USUARIO);
      except
        // tabela inexistente ou permissão que não havia
      end;

      // 3) SELECT nas demais tabelas e views
      QYSql.Open(
        'SELECT TRIM(RDB$RELATION_NAME) FROM RDB$RELATIONS ' +
        'WHERE COALESCE(RDB$SYSTEM_FLAG, 0) = 0 ' +
        '  AND RDB$RELATION_NAME NOT IN (' + Lista + ')'
      );
      while not QYSql.Eof do
      begin
        Tabelas.Add(QYSql.Fields[0].AsString);
        QYSql.Next;
      end;
      QYSql.Close;

      for Tabela in Tabelas do
      QYSql.ExecSQL('GRANT SELECT ON "' + Tabela + '" TO USER ' + USUARIO);

      if Assigned(QYSql.Transaction) and QYSql.Transaction.Active then
      QYSql.Transaction.Commit;
    except
      on E: Exception do
      begin
        QYSql.Close;
        if Assigned(QYSql.Transaction) and QYSql.Transaction.Active then
        QYSql.Transaction.Rollback;
        Screen.Cursor := crDefault;
        MessageDlg('Erro ao configurar o usuário ' + USUARIO + ':' + sLineBreak + E.Message, mtError, [mbOK], 0);
        Exit;
      end;
    end;
    Msg := Msg + sLineBreak + Format('Leitura liberada em %d tabelas.', [Tabelas.Count]);
  finally
    Tabelas.Free;
    Screen.Cursor := crDefault;
  end;

  MessageDlg(Msg, mtInformation, [mbOK], 0);
end;

procedure TFormSQLEditor.DBGrid2DblClick(Sender: TObject);
begin
  if not QYSqls.IsEmpty then
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.Add(QYSqlsSQL_QUERY.Value);
    PageControl1.ActivePageIndex:=0;
  end;
end;

procedure TFormSQLEditor.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if not QYSqls.IsEmpty then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add(QYSqlsSQL_QUERY.Value);
    end;
  end;
end;

procedure TFormSQLEditor.Executar1Click(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  QYSql.Close;
  QYSql.SQL.Clear;
  QYSql.SQL.AddStrings(Memo1.Lines);
  QYSql.Open;

  //Salva o SQL executado.
  DM2.TBSqls.Insert;
  DM2.TBSqlsSQL_FORM.Value:='FormSQLEditor';
  DM2.TBSqlsSQL_USUARIO.Value:=DM.UsuarioLogado;
  DM2.TBSqlsSQL_QUERY.Value:=Memo1.Lines.Text;
  DM2.TBSqls.Post;
  QYSqls.Close;
  QYSqls.Open;

  Screen.Cursor:=crDefault;
end;

procedure TFormSQLEditor.Exportar1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  begin
    ExportQueryToCSV(QYSql,SaveDialog1.FileName);
    MessageDlg('Arquivo exportado.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormSQLEditor.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSQLEditor.FormCreate(Sender: TObject);
begin
  SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  QYSqls.Open;
end;

procedure TFormSQLEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSQLEditor.Imprimir1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormSQLEditor.N3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

end.
