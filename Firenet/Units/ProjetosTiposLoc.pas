unit ProjetosTiposLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProjetosTiposLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSProjetosTipos: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYProjetosTipos: TFDQuery;
    TRProjetosTipos: TFDTransaction;
    QYProjetosTiposPJT_CODIGO: TIntegerField;
    QYProjetosTiposPJT_DESCRICAO: TStringField;
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
  FormProjetosTiposLoc: TFormProjetosTiposLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormProjetosTiposLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormProjetosTiposLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormProjetosTiposLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormProjetosTiposLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProjetosTiposLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYProjetosTipos.Active:=False;
    QYProjetosTipos.SQL.Clear;
    QYProjetosTipos.SQL.Add('select PJT_CODIGO, PJT_DESCRICAO from PROJETOSTIPOS where PJT_CODIGO='+QuotedStr(Edit1.Text)+' order by PJT_CODIGO');
    QYProjetosTipos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProjetosTiposLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYProjetosTipos.Active:=False;
    QYProjetosTipos.SQL.Clear;
    QYProjetosTipos.SQL.Add('select PJT_CODIGO, PJT_DESCRICAO from PROJETOSTIPOS where PJT_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by PJT_DESCRICAO');
    QYProjetosTipos.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormProjetosTiposLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYProjetosTipos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProjetosTiposLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYProjetosTipos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormProjetosTiposLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Projetos - Tipos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormProjetosTiposLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
