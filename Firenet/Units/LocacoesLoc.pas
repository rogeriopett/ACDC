unit LocacoesLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormLocacoesLoc = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    ComboBox1: TComboBox;
    DSLocacoes: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYLocacoes: TFDQuery;
    TRLocacoes: TFDTransaction;
    QYLocacoesLOC_ABERTOPOR: TStringField;
    QYLocacoesLOC_CLIENTE: TIntegerField;
    QYLocacoesLOC_CODIGO: TIntegerField;
    QYLocacoesLOC_DATA: TDateField;
    QYLocacoesLOC_OBJETO: TIntegerField;
    QYLocacoesLOC_STATUS: TStringField;
    QYLocacoesCLI_NOME: TStringField;
    QYLocacoesOBJ_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocacoesLoc: TFormLocacoesLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormLocacoesLoc.txt';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormLocacoesLoc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormLocacoesLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  ComboBox1.ItemIndex:=0;
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYLocacoes.Close;
    QYLocacoes.SQL.Clear;
    QYLocacoes.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYLocacoes.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormLocacoesLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLocacoesLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYLocacoes.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormLocacoesLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYLocacoes.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormLocacoesLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYLocacoes.Active:=False;
    QYLocacoes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and LOC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and LOC_STATUS='+QuotedStr('B');
    QYLocacoes.SQL.Add('select LOC_CODIGO, LOC_CLIENTE, CLI_NOME, LOC_OBJETO, OBJ_DESCRICAO, LOC_STATUS, LOC_DATA, LOC_ABERTOPOR from LOCACOES '+
                       'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                       'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                       'where LOC_CODIGO='+QuotedStr(Edit1.Text)+Where+' order by LOC_CODIGO');
    QYLocacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYLocacoes.SQL.Text);
  end;
end;

procedure TFormLocacoesLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYLocacoes.Active:=False;
    QYLocacoes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and LOC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and LOC_STATUS='+QuotedStr('B');
    QYLocacoes.SQL.Add('select LOC_CODIGO, LOC_CLIENTE, CLI_NOME, LOC_OBJETO, OBJ_DESCRICAO, LOC_STATUS, LOC_DATA, LOC_ABERTOPOR from LOCACOES '+
                       'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                       'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                       'where LOC_CLIENTE='+QuotedStr(Edit2.Text)+Where+' order by LOC_CODIGO desc');
    QYLocacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYLocacoes.SQL.Text);
  end;
end;

procedure TFormLocacoesLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYLocacoes.Active:=False;
    QYLocacoes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and LOC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and LOC_STATUS='+QuotedStr('B');
    QYLocacoes.SQL.Add('select LOC_CODIGO, LOC_CLIENTE, CLI_NOME, LOC_OBJETO, OBJ_DESCRICAO, LOC_STATUS, LOC_DATA, LOC_ABERTOPOR from LOCACOES '+
                       'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                       'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                       'where CLI_NOME like '+QuotedStr(Edit3.Text+'%')+Where+' order by CLI_NOME');
    QYLocacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYLocacoes.SQL.Text);
  end;
end;

procedure TFormLocacoesLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYLocacoes.Active:=False;
    QYLocacoes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and LOC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and LOC_STATUS='+QuotedStr('B');
    QYLocacoes.SQL.Add('select LOC_CODIGO, LOC_CLIENTE, CLI_NOME, LOC_OBJETO, OBJ_DESCRICAO, LOC_STATUS, LOC_DATA, LOC_ABERTOPOR from LOCACOES '+
                       'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                       'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                       'where LOC_OBJETO='+QuotedStr(Edit6.Text)+Where+' order by LOC_CODIGO desc');
    QYLocacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYLocacoes.SQL.Text);
  end;
end;

procedure TFormLocacoesLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYLocacoes.Active:=False;
    QYLocacoes.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and LOC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and LOC_STATUS='+QuotedStr('B');
    QYLocacoes.SQL.Add('select LOC_CODIGO, LOC_CLIENTE, CLI_NOME, LOC_OBJETO, OBJ_DESCRICAO, LOC_STATUS, LOC_DATA, LOC_ABERTOPOR from LOCACOES '+
                       'left join CLIENTES on LOC_CLIENTE=CLI_CODIGO '+
                       'left join OBJETOS on LOC_OBJETO=OBJ_CODIGO '+
                       'where OBJ_DESCRICAO like '+QuotedStr(Edit4.Text+'%')+Where+' order by OBJ_DESCRICAO');
    QYLocacoes.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYLocacoes.SQL.Text);
  end;
end;

procedure TFormLocacoesLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Locacoes de Objetos',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO OBJETO' then Edit6.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='OBJETO' then Edit4.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Locacoes de Objetos com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2;
end;

procedure TFormLocacoesLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
