unit CreditoPresumidoLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormCreditoPresumidoLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSCreditoPres: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYCreditoPres: TFDQuery;
    TRCreditoPres: TFDTransaction;
    QYCreditoPresCPR_APROPRIADFE: TStringField;
    QYCreditoPresCPR_APROPRIAEVENTO: TStringField;
    QYCreditoPresCPR_CBS: TStringField;
    QYCreditoPresCPR_CODIGO: TIntegerField;
    QYCreditoPresCPR_DEDUZTOTAL: TStringField;
    QYCreditoPresCPR_DESCRICAO: TStringField;
    QYCreditoPresCPR_IBS: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCreditoPresumidoLoc: TFormCreditoPresumidoLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormCreditoPresumidoLoc.txt';
  Campos='CPR_APROPRIADFE, CPR_APROPRIAEVENTO, CPR_CBS, CPR_CODIGO, CPR_DEDUZTOTAL, CPR_DESCRICAO, CPR_IBS';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormCreditoPresumidoLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCreditoPres.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCreditoPresumidoLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCreditoPres.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCreditoPresumidoLoc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#37]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCreditoPres.Active:=False;
    QYCreditoPres.SQL.Clear;
    QYCreditoPres.SQL.Add('select '+Campos+' from CREDITOPRES where CPR_CODIGO like '+QuotedStr(Edit1.Text+'%')+' order by CPR_CODIGO');
    QYCreditoPres.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCreditoPres.SQL.Text);
  end;
end;

procedure TFormCreditoPresumidoLoc.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCreditoPres.Active:=False;
    QYCreditoPres.SQL.Clear;
    QYCreditoPres.SQL.Add('select '+Campos+' from CREDITOPRES where CPR_DESCRICAO like '+QuotedStr('%'+Edit2.Text+'%')+' order by CPR_DESCRICAO');
    QYCreditoPres.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCreditoPres.SQL.Text);
  end;
end;

procedure TFormCreditoPresumidoLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormCreditoPresumidoLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCreditoPres.Close;
    QYCreditoPres.SQL.Clear;
    QYCreditoPres.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCreditoPres.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormCreditoPresumidoLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCreditoPresumidoLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Credito Presumido',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus;
end;

procedure TFormCreditoPresumidoLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
