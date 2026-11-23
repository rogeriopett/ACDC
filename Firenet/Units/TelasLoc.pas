unit TelasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus,System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTelasLoc = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit1: TEdit;
    DSTelas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYTelas: TFDQuery;
    TRTelas: TFDTransaction;
    QYTelasTEL_DESCRICAO: TStringField;
    QYTelasTEL_MODULO: TIntegerField;
    QYTelasTEL_NOMEFORM: TStringField;
    QYTelasTEL_STATUS: TStringField;
    QYTelasMOD_ACESSO: TStringField;
    QYTelasMOD_BOTAO: TStringField;
    QYTelasMOD_CODIGO: TIntegerField;
    QYTelasMOD_MENUITEM: TStringField;
    QYTelasMOD_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelasLoc: TFormTelasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormTelasLoc.txt';

implementation
uses Funcoes1, FuncoesFirenet, DataMod;
{$R *.dfm}

procedure TFormTelasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYTelas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTelasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYTelas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormTelasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYTelas.Close;
    QYTelas.SQL.Clear;
    QYTelas.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO where TEL_DESCRICAO like '+QuotedStr(Edit1.Text+'%')+' order by TEL_DESCRICAO');
    QYTelas.Open;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTelasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYTelas.Close;
    QYTelas.SQL.Clear;
    QYTelas.SQL.Add('select * from TELAS left join MODULOS on TEL_MODULO=MOD_CODIGO where MOD_NOME like '+QuotedStr(Edit2.Text+'%')+' order by MOD_NOME');
    QYTelas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormTelasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormTelasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormTelasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTelasLoc.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
end;

procedure TFormTelasLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
