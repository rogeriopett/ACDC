unit ImoveisTiposLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormImoveisTiposLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSImoveisTipos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYImoveisTipos: TFDQuery;
    TRImoveisTipos: TFDTransaction;
    QYImoveisTiposIMT_CODIGO: TIntegerField;
    QYImoveisTiposIMT_DESCRICAO: TStringField;
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
  FormImoveisTiposLoc: TFormImoveisTiposLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormImoveisTiposLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormImoveisTiposLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYImoveisTipos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormImoveisTiposLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYImoveisTipos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormImoveisTiposLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYImoveisTipos.Active:=False;
    QYImoveisTipos.SQL.Clear;
    QYImoveisTipos.SQL.Add('select IMT_CODIGO, IMT_DESCRICAO from IMOVEISTIPOS where IMT_CODIGO='+QuotedStr(Edit1.Text)+' order by IMT_CODIGO');
    QYImoveisTipos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisTiposLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYImoveisTipos.Active:=False;
    QYImoveisTipos.SQL.Clear;
    QYImoveisTipos.SQL.Add('select IMT_CODIGO, IMT_DESCRICAO from IMOVEISTIPOS where IMT_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by IMT_DESCRICAO');
    QYImoveisTipos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormImoveisTiposLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormImoveisTiposLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormImoveisTiposLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormImoveisTiposLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Imoveis - Tipos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormImoveisTiposLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
