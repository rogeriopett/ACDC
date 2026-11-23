unit FormasPagamentoLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormFormasPagamentoLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSFormasPagamento: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYFormasPagamento: TFDQuery;
    TRFormasPagamento: TFDTransaction;
    QYFormasPagamentoFPG_CODIGO: TIntegerField;
    QYFormasPagamentoFPG_CODIGOPAGAMENTO: TStringField;
    QYFormasPagamentoFPG_DESCRICAO: TStringField;
    QYFormasPagamentoFPG_IMPRIMEVINCULADO: TStringField;
    QYFormasPagamentoFPG_TEF: TStringField;
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
  FormFormasPagamentoLoc: TFormFormasPagamentoLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormFormasPagamentoLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormFormasPagamentoLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYFormasPagamento.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFormasPagamentoLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYFormasPagamento.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFormasPagamentoLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYFormasPagamento.Active:=False;
    QYFormasPagamento.SQL.Clear;
    QYFormasPagamento.SQL.Add('select FPG_CODIGO, FPG_CODIGOPAGAMENTO, FPG_DESCRICAO, FPG_TEF, FPG_IMPRIMEVINCULADO from FORMASPAGAMENTO where FPG_CODIGO='+QuotedStr(Edit1.Text)+' order by FPG_CODIGO');
    QYFormasPagamento.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormFormasPagamentoLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYFormasPagamento.Active:=False;
    QYFormasPagamento.SQL.Clear;
    QYFormasPagamento.SQL.Add('select FPG_CODIGO, FPG_CODIGOPAGAMENTO, FPG_DESCRICAO, FPG_TEF, FPG_IMPRIMEVINCULADO from FORMASPAGAMENTO where FPG_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by FPG_DESCRICAO');
    QYFormasPagamento.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormFormasPagamentoLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormFormasPagamentoLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  RestaurarTamanhoForm(Self,UsuarioLogado);
end;

procedure TFormFormasPagamentoLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFormasPagamentoLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Formas de Pagamento',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormFormasPagamentoLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
