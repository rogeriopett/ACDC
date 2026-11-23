unit IpiLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormIpiLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSIpi: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYIpi: TFDQuery;
    TRIpi: TFDTransaction;
    QYIpiIPI_CODIGO: TIntegerField;
    QYIpiIPI_DESCRICAO: TStringField;
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
  FormIpiLoc: TFormIpiLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormIpiLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormIpiLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormIpiLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  //lista tudo.
  QYIpi.Active:=False;
  QYIpi.SQL.Clear;
  QYIpi.SQL.Add('select IPI_CODIGO, IPI_DESCRICAO from IPI order by IPI_DESCRICAO');
  QYIpi.Active:=True;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormIpiLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormIpiLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYIpi.Active:=False;
    QYIpi.SQL.Clear;
    QYIpi.SQL.Add('select IPI_CODIGO, IPI_DESCRICAO from IPI where IPI_CODIGO='+QuotedStr(Edit1.Text)+' order by IPI_CODIGO');
    QYIpi.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormIpiLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYIpi.Active:=False;
    QYIpi.SQL.Clear;
    QYIpi.SQL.Add('select IPI_CODIGO, IPI_DESCRICAO from IPI where IPI_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by IPI_DESCRICAO');
    QYIpi.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormIpiLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYIpi.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormIpiLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYIpi.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormIpiLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','IPI',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormIpiLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
