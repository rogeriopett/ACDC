unit EmailsContasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, StdCtrls, Grids, DBGrids, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormEmailsContasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSEmailsContas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYEmailsContas: TFDQuery;
    TREmailsContas: TFDTransaction;
    QYEmailsContasEMC_ASSINATURA: TMemoField;
    QYEmailsContasEMC_CODIGO: TIntegerField;
    QYEmailsContasEMC_CONFIRMACAO: TStringField;
    QYEmailsContasEMC_EMAIL: TStringField;
    QYEmailsContasEMC_NOME: TStringField;
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
  FormEmailsContasLoc: TFormEmailsContasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormEmailsContasLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormEmailsContasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYEmailsContas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEmailsContasLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYEmailsContas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormEmailsContasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYEmailsContas.Active:=False;
    QYEmailsContas.SQL.Clear;
    QYEmailsContas.SQL.Add('select EMC_CODIGO, EMC_NOME, EMC_EMAIL, EMC_CONFIRMACAO, EMC_ASSINATURA from EMAILSCONTAS '+
                           'where EMC_CODIGO='+QuotedStr(Edit1.Text)+' order by EMC_CODIGO');
    QYEmailsContas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEmailsContas.SQL.Text);
  end;
end;

procedure TFormEmailsContasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYEmailsContas.Active:=False;
    QYEmailsContas.SQL.Clear;
    QYEmailsContas.SQL.Add('select EMC_CODIGO, EMC_NOME, EMC_EMAIL, EMC_CONFIRMACAO, EMC_ASSINATURA from EMAILSCONTAS '+
                           'where EMC_NOME like '+QuotedStr(Edit2.Text+'%')+' order by EMC_NOME');
    QYEmailsContas.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYEmailsContas.SQL.Text);
  end;
end;

procedure TFormEmailsContasLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormEmailsContasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYEmailsContas.Close;
    QYEmailsContas.SQL.Clear;
    QYEmailsContas.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYEmailsContas.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormEmailsContasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;

end;

procedure TFormEmailsContasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Contas de Emails',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;
end;

procedure TFormEmailsContasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
