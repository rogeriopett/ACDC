unit AgrupadoresLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAgrupadoresLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSAgrupadores: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRAgrupadores: TFDTransaction;
    QYAgrupadores: TFDQuery;
    QYAgrupadoresAGR_CODIGO: TIntegerField;
    QYAgrupadoresAGR_DESCRICAO: TStringField;
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
    SalvarColunas: Boolean;
  public
    { Public declarations }
    Procurar: Boolean;
  end;

var
  FormAgrupadoresLoc: TFormAgrupadoresLoc;

const
  NomeArquivoFormTxt='FormAgrupadoresLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormAgrupadoresLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormAgrupadoresLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormAgrupadoresLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAgrupadoresLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYAgrupadores.Active:=False;
    QYAgrupadores.SQL.Clear;
    QYAgrupadores.SQL.Add('select AGR_CODIGO, AGR_DESCRICAO from AGRUPADORES where AGR_CODIGO='+QuotedStr(Edit1.Text)+' order by AGR_CODIGO');
    QYAgrupadores.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAgrupadoresLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYAgrupadores.Active:=False;
    QYAgrupadores.SQL.Clear;
    QYAgrupadores.SQL.Add('select AGR_CODIGO, AGR_DESCRICAO from AGRUPADORES where AGR_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by AGR_DESCRICAO');
    QYAgrupadores.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAgrupadoresLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYAgrupadores.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAgrupadoresLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYAgrupadores.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAgrupadoresLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Agrupadores',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormAgrupadoresLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
