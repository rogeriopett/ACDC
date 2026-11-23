unit AvaliacoesTipoLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAvaliacoesTipoLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSAvaliacoesTipo: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRAvaliacoesTipo: TFDTransaction;
    QYAvaliacoesTipo: TFDQuery;
    QYAvaliacoesTipoAVT_CODIGO: TIntegerField;
    QYAvaliacoesTipoAVT_DESCRICAO: TStringField;
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
  FormAvaliacoesTipoLoc: TFormAvaliacoesTipoLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormAvaliacoesTipoLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormAvaliacoesTipoLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormAvaliacoesTipoLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormAvaliacoesTipoLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAvaliacoesTipoLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYAvaliacoesTipo.Active:=False;
    QYAvaliacoesTipo.SQL.Clear;
    QYAvaliacoesTipo.SQL.Add('select AVT_CODIGO, AVT_DESCRICAO from AVALIACOESTIPO where AVT_CODIGO='+QuotedStr(Edit1.Text)+' order by AVT_CODIGO');
    QYAvaliacoesTipo.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAvaliacoesTipoLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYAvaliacoesTipo.Active:=False;
    QYAvaliacoesTipo.SQL.Clear;
    QYAvaliacoesTipo.SQL.Add('select AVT_CODIGO, AVT_DESCRICAO from AVALIACOESTIPO where AVT_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by AVT_DESCRICAO');
    QYAvaliacoesTipo.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormAvaliacoesTipoLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYAvaliacoesTipo.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAvaliacoesTipoLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYAvaliacoesTipo.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormAvaliacoesTipoLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Avaliacoes - Tipos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormAvaliacoesTipoLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
