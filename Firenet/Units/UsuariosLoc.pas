unit UsuariosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormUsuariosLoc = class(TForm)
    DSUsuarios: TDataSource;
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYUsuarios: TFDQuery;
    TRUsuarios: TFDTransaction;
    QYUsuariosUSU_LOGADO: TStringField;
    QYUsuariosUSU_LOGIN: TStringField;
    QYUsuariosUSU_NOME: TStringField;
    QYUsuariosUSU_PASSWORD: TStringField;
    QYUsuariosUSU_SENHAEXPIRADA: TStringField;
    QYUsuariosUSU_STATUS: TStringField;
    QYUsuariosVEN_NOME: TStringField;
    QYUsuariosUSU_CODIGO: TIntegerField;
    QYUsuariosUSU_TEMA: TStringField;
    QYUsuariosUSU_VENDEDOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosLoc: TFormUsuariosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormUsuariosLoc.txt';
  Campos='USU_CODIGO, USU_LOGADO, USU_LOGIN, USU_NOME, USU_PASSWORD, USU_SENHAEXPIRADA, USU_STATUS, USU_TEMA, USU_VENDEDOR, VEN_NOME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.DFM}

procedure TFormUsuariosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormUsuariosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYUsuarios.Close;
    QYUsuarios.SQL.Clear;
    QYUsuarios.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYUsuarios.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormUsuariosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormUsuariosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Usuarios',[]);
  if DM.TBLocsLOS_CAMPO.Value='LOGIN' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;
end;

procedure TFormUsuariosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormUsuariosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYUsuarios.Active:=False;
    QYUsuarios.SQL.Clear;
    QYUsuarios.SQL.Add('select '+Campos+' from USUARIOS left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO where USU_LOGIN like '+QuotedStr('%'+Edit1.Text+'%')+' order by USU_LOGIN');
    QYUsuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYUsuarios.SQL.Text);
  end;
end;

procedure TFormUsuariosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYUsuarios.Active:=False;
    QYUsuarios.SQL.Clear;
    QYUsuarios.SQL.Add('select '+Campos+' from USUARIOS left join VENDEDORES on USU_VENDEDOR=VEN_CODIGO where USU_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by USU_NOME');
    QYUsuarios.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYUsuarios.SQL.Text);
  end;
end;

procedure TFormUsuariosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYUsuarios.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormUsuariosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYUsuarios.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

end.
