unit AlmoxarifadosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAlmoxarifadosLoc = class(TForm)
    DBGrid1: TDBGrid;
    DSAlmoxarifados: TDataSource;
    Edit2: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRAlmoxarifados: TFDTransaction;
    QYAlmoxarifados: TFDQuery;
    QYAlmoxarifadosALM_CODIGO: TIntegerField;
    QYAlmoxarifadosALM_DESCRICAO: TStringField;
    QYAlmoxarifadosALM_STATUS: TStringField;
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
  FormAlmoxarifadosLoc: TFormAlmoxarifadosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormAlmoxarifadosLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormAlmoxarifadosLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormAlmoxarifadosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYAlmoxarifados.Close;
    QYAlmoxarifados.SQL.Clear;
    QYAlmoxarifados.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYAlmoxarifados.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormAlmoxarifadosLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAlmoxarifadosLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYAlmoxarifados.Active:=False;
    QYAlmoxarifados.SQL.Clear;
    QYAlmoxarifados.SQL.Add('select ALM_CODIGO, ALM_DESCRICAO, ALM_STATUS from ALMOXARIFADOS where ALM_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by ALM_CODIGO');
    QYAlmoxarifados.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYAlmoxarifados.SQL.Text);
  end;
end;

procedure TFormAlmoxarifadosLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYAlmoxarifados.Active:=False;
    QYAlmoxarifados.SQL.Clear;
    QYAlmoxarifados.SQL.Add('select ALM_CODIGO, ALM_DESCRICAO, ALM_STATUS from ALMOXARIFADOS where ALM_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by ALM_DESCRICAO');
    QYAlmoxarifados.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYAlmoxarifados.SQL.Text);
  end;
end;

procedure TFormAlmoxarifadosLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYAlmoxarifados.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAlmoxarifadosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYAlmoxarifados.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAlmoxarifadosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Almoxarifados',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormAlmoxarifadosLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
