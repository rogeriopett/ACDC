unit FeriadosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormFeriadosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    DSFeriados: TDataSource;
    MaskEdit1: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYFeriados: TFDQuery;
    TRFeriados: TFDTransaction;
    QYFeriadosFRD_DATA: TDateField;
    QYFeriadosFRD_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
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
  FormFeriadosLoc: TFormFeriadosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormFeriadosLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormFeriadosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormFeriadosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormFeriadosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFeriadosLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit1.Text='  /  /    ' then Exit;
    QYFeriados.Active:=False;
    QYFeriados.SQL.Clear;
    QYFeriados.SQL.Add('select FRD_DATA, FRD_DESCRICAO from FERIADOS where FRD_DATA=:data order by FRD_DATA');
    QYFeriados.ParamByName('data').asDate:=StrToDate(MaskEdit1.Text,FS);
    QYFeriados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormFeriadosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormFeriadosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYFeriados.Active:=False;
    QYFeriados.SQL.Clear;
    QYFeriados.SQL.Add('select FRD_DATA, FRD_DESCRICAO from FERIADOS where FRD_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by FRD_DESCRICAO');
    QYFeriados.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormFeriadosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYFeriados.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFeriadosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYFeriados.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFeriadosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Feriados',[]);
  if DM.TBLocsLOS_CAMPO.Value='DATA' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

end.
