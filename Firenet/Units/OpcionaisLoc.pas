unit OpcionaisLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormOpcionaisLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSOpcionais: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYOpcionais: TFDQuery;
    TROpcionais: TFDTransaction;
    QYOpcionaisOPC_CODIGO: TIntegerField;
    QYOpcionaisOPC_DESCRICAO: TStringField;
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
  FormOpcionaisLoc: TFormOpcionaisLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormOpcionaisLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormOpcionaisLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormOpcionaisLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormOpcionaisLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormOpcionaisLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYOpcionais.Active:=False;
    QYOpcionais.SQL.Clear;
    QYOpcionais.SQL.Add('select OPC_CODIGO, OPC_DESCRICAO from OPCIONAIS where OPC_CODIGO='+QuotedStr(Edit1.Text)+' order by OPC_CODIGO');
    QYOpcionais.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormOpcionaisLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYOpcionais.Active:=False;
    QYOpcionais.SQL.Clear;
    QYOpcionais.SQL.Add('select OPC_CODIGO, OPC_DESCRICAO from OPCIONAIS where OPC_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by OPC_DESCRICAO');
    QYOpcionais.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormOpcionaisLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYOpcionais.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormOpcionaisLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYOpcionais.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormOpcionaisLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Opcionais',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormOpcionaisLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
