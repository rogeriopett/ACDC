unit ClassTribLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormClassTribLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSClassTrib: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYClassTrib: TFDQuery;
    TRClassTrib: TFDTransaction;
    QYClassTribCLT_ALIQCBSRED: TFMTBCDField;
    QYClassTribCLT_ALIQIBSRED: TFMTBCDField;
    QYClassTribCLT_CODIGO: TStringField;
    QYClassTribCLT_CREDITOPRESUMIDO: TStringField;
    QYClassTribCLT_DESCRICAO: TStringField;
    QYClassTribCLT_REDBASE: TStringField;
    QYClassTribCLT_TRIBUTACAOREGULAR: TStringField;
    QYClassTribCLT_MONODIFERIMENTO: TStringField;
    QYClassTribCLT_MONOFASICO: TStringField;
    QYClassTribCLT_MONORETENCAO: TStringField;
    QYClassTribCLT_MONORETIDO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassTribLoc: TFormClassTribLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormClassTribLoc.txt';
  Campos='CLT_ALIQCBSRED, CLT_ALIQIBSRED, CLT_CODIGO, CLT_CREDITOPRESUMIDO, CLT_DESCRICAO, CLT_MONODIFERIMENTO, CLT_MONOFASICO, CLT_MONORETENCAO, CLT_MONORETIDO, CLT_REDBASE, CLT_TRIBUTACAOREGULAR';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormClassTribLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClassTrib.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassTribLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYClassTrib.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassTribLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#37]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClassTrib.Active:=False;
    QYClassTrib.SQL.Clear;
    QYClassTrib.SQL.Add('select '+Campos+' from CLASSTRIB where CLT_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by CLT_CODIGO');
    QYClassTrib.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClassTrib.SQL.Text);
  end;
end;

procedure TFormClassTribLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYClassTrib.Active:=False;
    QYClassTrib.SQL.Clear;
    QYClassTrib.SQL.Add('select '+Campos+' from CLASSTRIB where CLT_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by CLT_DESCRICAO');
    QYClassTrib.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClassTrib.SQL.Text);
  end;
end;

procedure TFormClassTribLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormClassTribLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYClassTrib.Close;
    QYClassTrib.SQL.Clear;
    QYClassTrib.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYClassTrib.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormClassTribLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassTribLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Classificacoes Tributarias',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormClassTribLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
