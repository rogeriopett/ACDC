unit ServicosLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Grids, DBGrids, Menus, System.UITypes, Vcl.Mask, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormServicosLoc = class(TForm)
    DSServicos: TDataSource;
    Label1: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    ComboBox1: TComboBox;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    QYServicos: TFDQuery;
    TRServicos: TFDTransaction;
    QYServicosSER_CODIGO: TIntegerField;
    QYServicosSER_CLIENTE: TIntegerField;
    QYServicosSER_DTENTRADA: TDateField;
    QYServicosSER_DTSAIDA: TDateField;
    QYServicosSER_EQUIPAMENTO: TIntegerField;
    QYServicosSER_STATUS: TStringField;
    QYServicosEQP_DESCRICAO: TStringField;
    QYServicosEQP_MARCA: TStringField;
    QYServicosEQP_MODELO: TStringField;
    QYServicosSER_LOCALIZACAO: TStringField;
    QYServicosEQP_SERIE: TStringField;
    QYServicosCLI_CODIGO: TIntegerField;
    QYServicosCLI_NOME: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    const Campos = 'SER_CODIGO, SER_CLIENTE, SER_DTENTRADA, SER_DTSAIDA, SER_EQUIPAMENTO, SER_LOCALIZACAO, SER_STATUS, '+
      'EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, EQP_SERIE, CLI_CODIGO, CLI_NOME';
  public
    { Public declarations }
  end;

var
  FormServicosLoc: TFormServicosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormServicosLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYServicos.IsEmpty) then
  begin
    Key:=#0;
    Procurar:=True;
    Close;
  end;
end;

procedure TFormServicosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYServicos.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormServicosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where SER_CODIGO like '+QuotedStr('%'+Edit1.Text)+Where+' order by SER_CODIGO');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormServicosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYServicos.Close;
    QYServicos.SQL.Clear;
    QYServicos.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYServicos.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormServicosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormServicosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, CLI_CODIGO desc');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where SER_LOCALIZACAO like '+QuotedStr(Edit3.Text+'%')+Where+' order by SER_LOCALIZACAO');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where EQP_MODELO like '+QuotedStr(Edit4.Text+'%')+' order by EQP_MODELO');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where EQP_SERIE like '+QuotedStr(Edit5.Text+'%')+Where+' order by EQP_SERIE');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Ordens de Servico',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CLIENTE' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='LOCALIZACAO' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='MODELO' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='SERIE' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Ordens de Servico com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='BAIXADAS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormServicosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormServicosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#8 then MaskEdit2.Clear;
  if Key=#13 then
  begin
    Key:=#0;
    if (MaskEdit1.Text='  /  /    ') or (MaskEdit2.Text='  /  /    ') then Exit;
    try
      StrToDate(MaskEdit1.Text,FS);
      StrToDate(MaskEdit2.Text,FS);
      except on exception do
      begin
        MessageDlg('Data inválida.',mtError,[mbOk],0);
        MaskEdit1.Clear;
        MaskEdit2.Clear;
        MaskEdit1.SetFocus;
        Exit;
      end;
    end;
    Key:=#0;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where SER_DTENTRADA between '+QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text)))+Where+' '+
      'order by CLI_NOME, CLI_CODIGO desc');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

procedure TFormServicosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormServicosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYServicos.Active:=False;
    QYServicos.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=' and SER_STATUS='+QuotedStr('A');
    if ComboBox1.Text='BAIXADAS' then Where:=' and SER_STATUS='+QuotedStr('B');
    if ComboBox1.Text='FINALIZADAS' then Where:=' and SER_STATUS='+QuotedStr('F');
    QYServicos.SQL.Add(
      'select '+Campos+' from SERVICOS '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'where EQP_MARCA like '+QuotedStr(Edit6.Text+'%')+Where+' order by EQP_MARCA');
    QYServicos.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYServicos.SQL.Text);
  end;
end;

end.
