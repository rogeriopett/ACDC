unit GruposLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormGruposLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSGrupos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYGrupos: TFDQuery;
    TRGrupos: TFDTransaction;
    QYGruposGRU_CODIGO: TIntegerField;
    QYGruposGRU_DESCRICAO: TStringField;
    QYGruposGRU_INTERNET: TStringField;
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
  FormGruposLoc: TFormGruposLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormGruposLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormGruposLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormGruposLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYGrupos.Close;
    QYGrupos.SQL.Clear;
    QYGrupos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYGrupos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormGruposLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormGruposLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYGrupos.Active:=False;
    QYGrupos.SQL.Clear;
    QYGrupos.SQL.Add('select GRU_CODIGO, GRU_DESCRICAO, GRU_INTERNET from GRUPOS where GRU_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by GRU_CODIGO');
    QYGrupos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGrupos.SQL.Text);
  end;
end;

procedure TFormGruposLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYGrupos.Active:=False;
    QYGrupos.SQL.Clear;
    QYGrupos.SQL.Add('select GRU_CODIGO, GRU_DESCRICAO, GRU_INTERNET from GRUPOS where GRU_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by GRU_DESCRICAO');
    QYGrupos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYGrupos.SQL.Text);
  end;
end;

procedure TFormGruposLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYGrupos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormGruposLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYGrupos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormGruposLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Grupos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormGruposLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
