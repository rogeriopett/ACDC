unit ClassFiscalLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormClassFiscalLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSClassFiscal: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    TRClassFiscal: TFDTransaction;
    QYClassFiscal: TFDQuery;
    QYClassFiscalCLF_CODIGO: TStringField;
    QYClassFiscalCLF_DESCRICAO: TStringField;
    QYClassFiscalCLF_EXCECAO: TIntegerField;
    QYClassFiscalCLF_VERSAO: TStringField;
    QYClassFiscalCLF_VIGENCIAFIM: TDateField;
    QYClassFiscalCLF_VIGENCIAINI: TDateField;
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
  FormClassFiscalLoc: TFormClassFiscalLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormClassFiscalLoc.txt';

implementation
uses DataMod, DataMod2, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormClassFiscalLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormClassFiscalLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYClassFiscal.Close;
    QYClassFiscal.SQL.Clear;
    QYClassFiscal.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYClassFiscal.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormClassFiscalLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormClassFiscalLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,'%']) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYClassFiscal.Active:=False;
    QYClassFiscal.SQL.Clear;
    QYClassFiscal.SQL.Add('select CLF_CODIGO, CLF_DESCRICAO, CLF_EXCECAO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI from CLASSFISCAL where CLF_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by CLF_CODIGO');
    QYClassFiscal.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClassFiscal.SQL.Text);
  end;
end;

procedure TFormClassFiscalLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYClassFiscal.Active:=False;
    QYClassFiscal.SQL.Clear;
    QYClassFiscal.SQL.Add('select CLF_CODIGO, CLF_DESCRICAO, CLF_EXCECAO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI from CLASSFISCAL where CLF_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' order by CLF_DESCRICAO');
    QYClassFiscal.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYClassFiscal.SQL.Text);
  end;
end;

procedure TFormClassFiscalLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYClassFiscal.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassFiscalLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYClassFiscal.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormClassFiscalLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Classificacao Fiscal',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormClassFiscalLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
