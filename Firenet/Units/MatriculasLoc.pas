unit MatriculasLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Mask, Menus, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculasLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DSMatriculas: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYMatriculas: TFDQuery;
    TRMatriculas: TFDTransaction;
    QYMatriculasMAT_APROVADO: TStringField;
    QYMatriculasMAT_CODIGO: TIntegerField;
    QYMatriculasMAT_CLIENTE: TIntegerField;
    QYMatriculasMAT_TURMA: TIntegerField;
    QYMatriculasMAT_VENDEDOR: TIntegerField;
    QYMatriculasMAT_DTCADASTRO: TDateField;
    QYMatriculasMAT_STATUS: TStringField;
    QYMatriculasMAT_VENDA: TIntegerField;
    QYMatriculasMAT_VENDAMATERIAL: TIntegerField;
    QYMatriculasCLI_NOME: TStringField;
    QYMatriculasTUR_DESCRICAO: TStringField;
    QYMatriculasVEN_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasLoc: TFormMatriculasLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormMatriculasLoc.txt';

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormMatriculasLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormMatriculasLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMatriculasLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where MAT_CODIGO='+QuotedStr(Edit1.Text)+' order by MAT_CODIGO');
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:=Where+'' else
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
    if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
    if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
    if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, TUR_DTCADASTRO desc');
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key=#13) and (not QYMatriculas.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMatriculasLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYMatriculas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormMatriculasLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Matriculas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA FINAL' then MaskEdit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COD CLIENTE' then Edit5.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='VENDEDOR' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO TURMA' then Edit4.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Matriculas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='DESISTENTES' then ComboBox1.ItemIndex:=4 else
  if DM.TBLocsLOS_CAMPO.Value='PRE MATRICULAS' then ComboBox1.ItemIndex:=5 else
  if DM.TBLocsLOS_CAMPO.Value='TRANSFERIDOS' then ComboBox1.ItemIndex:=6;
end;

procedure TFormMatriculasLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    Where:='';
    if ComboBox1.Text='TODAS' then Where:=Where+'' else
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
    if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
    if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
    if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where TUR_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
                         'order by CLI_NOME, TUR_DTCADASTRO desc');
    QYMatriculas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYMatriculas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.RestaurarVisualizacaoOriginal1Click(
  Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormMatriculasLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:=Where+'' else
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
    if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
    if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
    if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where MAT_DTCADASTRO between :datainicial and :datafinal '+Where+' and VEN_NOME like '+QuotedStr(Edit3.Text+'%')+' order by VEN_NOME, TUR_DTCADASTRO desc');
    QYMatriculas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYMatriculas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where MAT_TURMA='+QuotedStr(Edit4.Text)+' order by CLI_NOME, TUR_DTCADASTRO desc');
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormMatriculasLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    if ComboBox1.Text='TODAS' then Where:=Where+'' else
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and MAT_STATUS=''A''' else
    if ComboBox1.Text='BAIXADAS' then Where:=Where+' and MAT_STATUS=''B''' else
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and MAT_STATUS=''C''' else
    if ComboBox1.Text='DESISTENTES' then Where:=Where+' and MAT_STATUS=''D''' else
    if ComboBox1.Text='PRE MATRICULAS' then Where:=Where+' and MAT_STATUS=''P''' else
    if ComboBox1.Text='TRANSFERIDOS' then Where:=Where+' and MAT_STATUS=''T''';
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where MAT_CLIENTE='+QuotedStr(Edit5.Text)+Where+' order by TUR_DTCADASTRO desc');
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormMatriculasLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYMatriculas.Active:=False;
    QYMatriculas.SQL.Clear;
    QYMatriculas.SQL.Add('select MAT_CODIGO, MAT_CLIENTE, MAT_TURMA, MAT_VENDEDOR, MAT_DTCADASTRO, MAT_STATUS, '+
                         'MAT_APROVADO, MAT_VENDA, MAT_VENDAMATERIAL, CLI_NOME, TUR_DESCRICAO, VEN_NOME from MATRICULAS '+
                         'left join CLIENTES on MAT_CLIENTE=CLI_CODIGO '+
                         'left join TURMAS on MAT_TURMA=TUR_CODIGO '+
                         'left join VENDEDORES on MAT_VENDEDOR=VEN_CODIGO '+
                         'where MAT_VENDA='+QuotedStr(Edit6.Text)+' order by CLI_NOME, TUR_DTCADASTRO desc');
    QYMatriculas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

end.
