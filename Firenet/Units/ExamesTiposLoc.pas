unit ExamesTiposLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormExamesTiposLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSExamesTipos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    QYExamesTipos: TFDQuery;
    TRExamesTipos: TFDTransaction;
    QYExamesTiposEXT_CODIGO: TIntegerField;
    QYExamesTiposEXT_CODIGO2: TStringField;
    QYExamesTiposEXT_DESCRICAO: TStringField;
    QYExamesTiposEXT_SIGLA: TStringField;
    QYExamesTiposEXT_STATUS: TStringField;
    QYExamesTiposEXT_VALOR: TFMTBCDField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExamesTiposLoc: TFormExamesTiposLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormExamesTiposLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormExamesTiposLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYExamesTipos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormExamesTiposLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYExamesTipos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormExamesTiposLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYExamesTipos.Active:=False;
    QYExamesTipos.SQL.Clear;
    QYExamesTipos.SQL.Add('select EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_SIGLA, EXT_STATUS, EXT_VALOR from EXAMESTIPOS where EXT_CODIGO='+QuotedStr(Edit1.Text)+' order by EXT_CODIGO');
    QYExamesTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYExamesTipos.SQL.Text);
  end;
end;

procedure TFormExamesTiposLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYExamesTipos.Active:=False;
    QYExamesTipos.SQL.Clear;
    QYExamesTipos.SQL.Add('select EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_SIGLA, EXT_STATUS, EXT_VALOR from EXAMESTIPOS where EXT_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by EXT_DESCRICAO');
    QYExamesTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYExamesTipos.SQL.Text);
  end;
end;

procedure TFormExamesTiposLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYExamesTipos.Active:=False;
    QYExamesTipos.SQL.Clear;
    QYExamesTipos.SQL.Add('select EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_SIGLA, EXT_STATUS, EXT_VALOR from EXAMESTIPOS where EXT_CODIGO2 like '+QuotedStr(Edit3.Text+'%')+' order by EXT_CODIGO2');
    QYExamesTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYExamesTipos.SQL.Text);
  end;
end;

procedure TFormExamesTiposLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYExamesTipos.Active:=False;
    QYExamesTipos.SQL.Clear;
    QYExamesTipos.SQL.Add('select EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_SIGLA, EXT_STATUS, EXT_VALOR from EXAMESTIPOS where EXT_SIGLA like '+QuotedStr(Edit4.Text+'%')+' order by EXT_SIGLA');
    QYExamesTipos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYExamesTipos.SQL.Text);
  end;
end;

procedure TFormExamesTiposLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormExamesTiposLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYExamesTipos.Close;
    QYExamesTipos.SQL.Clear;
    QYExamesTipos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYExamesTipos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormExamesTiposLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormExamesTiposLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Exames Tipos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormExamesTiposLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
