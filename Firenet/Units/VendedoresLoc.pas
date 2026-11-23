unit VendedoresLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVendedoresLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSVendedores: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYVendedores: TFDQuery;
    TRVendedores: TFDTransaction;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TStringField;
    QYVendedoresVEN_COMISSAO: TFMTBCDField;
    QYVendedoresVEN_COMISSAOTIPO: TStringField;
    QYVendedoresVEN_CPF: TStringField;
    QYVendedoresVEN_SALARIOBASE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendedoresLoc: TFormVendedoresLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormVendedoresLoc.txt';
  Campos='VEN_CODIGO, VEN_NOME, VEN_COMISSAO, VEN_COMISSAOTIPO, VEN_CPF, VEN_SALARIOBASE';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormVendedoresLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormVendedoresLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYVendedores.Close;
    QYVendedores.SQL.Clear;
    QYVendedores.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYVendedores.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormVendedoresLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendedoresLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYVendedores.Active:=False;
    QYVendedores.SQL.Clear;
    QYVendedores.SQL.Add('select '+Campos+' from VENDEDORES where VEN_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by VEN_CODIGO');
    QYVendedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendedores.SQL.Text);
  end;
end;

procedure TFormVendedoresLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYVendedores.Active:=False;
    QYVendedores.SQL.Clear;
    QYVendedores.SQL.Add('select '+Campos+' from VENDEDORES where VEN_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by VEN_NOME');
    QYVendedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYVendedores.SQL.Text);
  end;
end;

procedure TFormVendedoresLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYVendedores.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendedoresLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYVendedores.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormVendedoresLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Vendedores',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;
end;

procedure TFormVendedoresLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
