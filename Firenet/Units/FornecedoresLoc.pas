unit FornecedoresLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormFornecedoresLoc = class(TForm)
    DSFornecedores: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYFornecedores: TFDQuery;
    TRFornecedores: TFDTransaction;
    QYFornecedoresFOR_BAIRRO: TStringField;
    QYFornecedoresFOR_CEP: TStringField;
    QYFornecedoresFOR_CIDADE: TStringField;
    QYFornecedoresFOR_CIDADECODIGO: TIntegerField;
    QYFornecedoresFOR_CNPJ: TStringField;
    QYFornecedoresFOR_CPF: TStringField;
    QYFornecedoresFOR_CODIGO: TIntegerField;
    QYFornecedoresFOR_COMPLEMENTO: TStringField;
    QYFornecedoresFOR_CONTATO: TStringField;
    QYFornecedoresFOR_EMAIL: TStringField;
    QYFornecedoresFOR_ENDERECO: TStringField;
    QYFornecedoresFOR_ESTADO: TStringField;
    QYFornecedoresFOR_ESTADOCODIGO: TIntegerField;
    QYFornecedoresFOR_FANTASIA: TStringField;
    QYFornecedoresFOR_FONE1: TStringField;
    QYFornecedoresFOR_FONE2: TStringField;
    QYFornecedoresFOR_FONE3: TStringField;
    QYFornecedoresFOR_IE: TStringField;
    QYFornecedoresFOR_NOME: TStringField;
    QYFornecedoresFOR_NUMERO: TStringField;
    QYFornecedoresFOR_PAIS: TStringField;
    QYFornecedoresFOR_PAISCODIGO: TIntegerField;
    QYFornecedoresFOR_RG: TStringField;
    QYFornecedoresFOR_TIPOPESSOA: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFornecedoresLoc: TFormFornecedoresLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormFornecedoresLoc.txt';
  Campos='FOR_BAIRRO, FOR_CEP, FOR_CIDADE, FOR_CIDADECODIGO, FOR_CNPJ, FOR_CPF, FOR_CODIGO, FOR_COMPLEMENTO, '+
         'FOR_CONTATO, FOR_EMAIL, FOR_ENDERECO, FOR_ESTADO, FOR_ESTADOCODIGO, FOR_FANTASIA, FOR_FONE1, FOR_FONE2, '+
         'FOR_FONE3, FOR_IE, FOR_NOME, FOR_NUMERO, FOR_PAIS, FOR_PAISCODIGO, FOR_RG, FOR_TIPOPESSOA';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormFornecedoresLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYFornecedores.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFornecedoresLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYFornecedores.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormFornecedoresLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' '+
                           'from FORNECEDORES where FOR_CODIGO='+QuotedStr(Edit1.Text)+' '+Where+' order by FOR_CODIGO');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' '+
                           'from FORNECEDORES where FOR_NOME like '+QuotedStr(Edit2.Text+'%')+' '+Where+' order by FOR_NOME');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormFornecedoresLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYFornecedores.Close;
    QYFornecedores.SQL.Clear;
    QYFornecedores.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYFornecedores.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormFornecedoresLoc.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFornecedoresLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' '+
                           'from FORNECEDORES where FOR_FANTASIA like '+QuotedStr(Edit3.Text+'%')+' '+Where+' order by FOR_FANTASIA');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Fornecedores',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME FANTASIA' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='FONE' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CPF' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CNPJ' then MaskEdit3.SetFocus;
end;

procedure TFormFornecedoresLoc.MaskEdit1Enter(Sender: TObject);
begin
  MaskEdit1.Text:=DM.TBParametrosPAR_DDDPADRAO.Value;
  MaskEdit1.SelStart:=6;
end;

procedure TFormFornecedoresLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit1.Text='' then Exit; //nao faz pesquisa nula.
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' from FORNECEDORES where FOR_FONE1 like '+QuotedStr(MaskEdit1.Text+'%')+' or FOR_FONE2 like '+QuotedStr(MaskEdit1.Text+'%')+' or FOR_FONE3 like '+QuotedStr(MaskEdit1.Text+'%')+' '+Where+' order by FOR_FONE1');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit2.Text='   .   .   -  ' then Exit; //nao faz pesquisa nula.
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' from FORNECEDORES where FOR_CPF like '+QuotedStr(MaskEdit2.Text+'%')+' '+Where+' order by FOR_CPF');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if MaskEdit3.Text='  .   .   /    -  ' then Exit; //nao faz pesquisa nula.
    QYFornecedores.Active:=False;
    QYFornecedores.SQL.Clear;
    Where:='';
    if CheckBox1.Checked then Where:=' and FOR_STATUS='+QuotedStr('A');
    QYFornecedores.SQL.Add('select '+Campos+' from FORNECEDORES where FOR_CNPJ like '+QuotedStr(MaskEdit3.Text+'%')+' '+Where+' order by FOR_CPF');
    QYFornecedores.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYFornecedores.SQL.Text);
  end;
end;

procedure TFormFornecedoresLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
