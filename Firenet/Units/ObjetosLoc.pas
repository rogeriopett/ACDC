unit ObjetosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormObjetosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    DSObjetos: TDataSource;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label7: TLabel;
    ComboBox1: TComboBox;
    Label8: TLabel;
    ComboBox2: TComboBox;
    QYObjetos: TFDQuery;
    TRObjetos: TFDTransaction;
    QYObjetosOBJ_CODIGO: TIntegerField;
    QYObjetosOBJ_DESCRICAO: TStringField;
    QYObjetosOBJ_LOCACAO: TIntegerField;
    QYObjetosOBJ_LOCADO: TStringField;
    QYObjetosOBJ_MODELO: TStringField;
    QYObjetosOBJ_SERIAL: TStringField;
    QYObjetosOBJ_STATUS: TStringField;
    QYObjetosOBJ_VALOR: TFMTBCDField;
    QYObjetosOBJ_VALORLOCACAO: TFMTBCDField;
    QYObjetosCLI_NOME: TStringField;
    QYObjetosCLS_DESCRICAO: TStringField;
    QYObjetosLOC_CLIENTE: TIntegerField;
    QYObjetosMAR_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObjetosLoc: TFormObjetosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormObjetosLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormObjetosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormObjetosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYObjetos.Close;
    QYObjetos.SQL.Clear;
    QYObjetos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYObjetos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
  ComboBox1.ItemIndex:=1;
  ComboBox2.ItemIndex:=0;
end;

procedure TFormObjetosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormObjetosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where OBJ_CODIGO='+QuotedStr(Edit1.Text)+' '+Where+' order by OBJ_CODIGO');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where OBJ_DESCRICAO like '+QuotedStr(Edit2.Text+'%')+' '+Where+' order by OBJ_DESCRICAO');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where CLS_DESCRICAO like '+QuotedStr(Edit3.Text+'%')+' '+Where+' order by CLS_DESCRICAO');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where MAR_DESCRICAO like '+QuotedStr(Edit4.Text+'%')+' '+Where+' order by MAR_DESCRICAO');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where OBJ_MODELO like '+QuotedStr(Edit5.Text+'%')+' '+Where+' order by OBJ_MODELO');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYObjetos.Active:=False;
    QYObjetos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='INATIVOS' then Where:=Where+' and OBJ_STATUS='+QuotedStr('I');
    if ComboBox2.Text='SIM' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('S') else
    if ComboBox2.Text='NAO' then Where:=Where+' and OBJ_LOCADO='+QuotedStr('N');
    QYObjetos.SQL.Add('select OBJ_CODIGO, OBJ_DESCRICAO, OBJ_LOCACAO, OBJ_LOCADO, OBJ_MODELO, OBJ_SERIAL, OBJ_STATUS, OBJ_VALOR,'+
                      'OBJ_VALORLOCACAO, CLI_NOME, CLS_DESCRICAO, LOC_CLIENTE, MAR_DESCRICAO from OBJETOS '+
                      'left join CLASSES on OBJ_CLASSE=CLS_CODIGO '+
                      'left join MARCAS on OBJ_MARCA=MAR_CODIGO '+
                      'left join LOCACOES on OBJ_LOCACAO=LOC_CODIGO '+
                      'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                      'where OBJ_SERIAL like '+QuotedStr(Edit6.Text+'%')+' '+Where+' order by OBJ_SERIAL');
    QYObjetos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYObjetos.SQL.Text);
  end;
end;

procedure TFormObjetosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYObjetos.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormObjetosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYObjetos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormObjetosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Objetos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DESCRICAO' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLASSE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MARCA' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MODELO' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SERIAL' then Edit6.SetFocus;
end;

procedure TFormObjetosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
