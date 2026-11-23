unit EnderecosPaisesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEnderecosPaisesLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSPaises: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label3: TLabel;
    Edit3: TEdit;
    QYPaises: TFDQuery;
    TRPaises: TFDTransaction;
    QYPaisesPAI_CODIGO: TIntegerField;
    QYPaisesPAI_NOME: TStringField;
    QYPaisesPAI_SIGLA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosPaisesLoc: TFormEnderecosPaisesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEnderecosPaisesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosPaisesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYPaises.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosPaisesLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYPaises.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEnderecosPaisesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYPaises.Active:=False;
    QYPaises.SQL.Clear;
    QYPaises.SQL.Add('select * from PAISES where PAI_CODIGO like '+QuotedStr('%'+Edit1.Text)+' order by PAI_CODIGO');
    QYPaises.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosPaisesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYPaises.Active:=False;
    QYPaises.SQL.Clear;
    QYPaises.SQL.Add('select * from PAISES where PAI_NOME like '+QuotedStr('%'+Edit2.Text+'%')+' order by PAI_NOME');
    QYPaises.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosPaisesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYPaises.Active:=False;
    QYPaises.SQL.Clear;
    QYPaises.SQL.Add('select * from PAISES where PAI_SIGLA like '+QuotedStr('%'+Edit3.Text+'%')+' order by PAI_SIGLA');
    QYPaises.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormEnderecosPaisesLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEnderecosPaisesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEnderecosPaisesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEnderecosPaisesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Paises',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SIGLA' then Edit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Pais Padrao',[]);
  Edit2.Text:=DM.TBLocsLOS_CAMPO.Value;
end;

procedure TFormEnderecosPaisesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
