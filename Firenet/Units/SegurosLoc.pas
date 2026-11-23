unit SegurosLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormSegurosLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    DSSeguros: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label9: TLabel;
    Label10: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    QYSeguros: TFDQuery;
    TRSeguros: TFDTransaction;
    QYSegurosSEG_APOLICE: TStringField;
    QYSegurosSEG_CLIENTE: TIntegerField;
    QYSegurosSEG_CODIGO: TIntegerField;
    QYSegurosSEG_DTEMISSAO: TDateField;
    QYSegurosSEG_PROPOSTA: TStringField;
    QYSegurosSEG_VALORPREMIO: TFMTBCDField;
    QYSegurosSEG_SEGUROTIPO: TIntegerField;
    QYSegurosSEG_SEGURADORA: TIntegerField;
    QYSegurosSEG_STATUS: TStringField;
    QYSegurosCLI_NOME: TStringField;
    QYSegurosFOR_NOME: TStringField;
    QYSegurosSGT_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosLoc: TFormSegurosLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormSegurosLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYSeguros.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormSegurosLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYSeguros.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormSegurosLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_CODIGO='+QuotedStr(Edit1.Text)+' order by SEG_CODIGO');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_CLIENTE='+Edit3.Text+Where+' order by SEG_CLIENTE, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_PROPOSTA like '+QuotedStr(Edit4.Text+'%')+Where+' order by SEG_PROPOSTA, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_APOLICE like '+QuotedStr(Edit5.Text+'%')+Where+' order by SEG_APOLICE, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit6KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit6.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where FOR_NOME like '+QuotedStr(Edit6.Text+'%')+Where+' order by FOR_NOME, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.Edit7KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit7.Text)='' then Exit;
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_SEGURADORA='+Edit7.Text+Where+' order by SEG_SEGURADORA, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormSegurosLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYSeguros.Close;
    QYSeguros.SQL.Clear;
    QYSeguros.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYSeguros.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormSegurosLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSegurosLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Seguros',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='PEDIDO CLIENTE' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Seguros com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='PROPOSTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='INUTILIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='APOLICES' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormSegurosLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormSegurosLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    end; //try.
    QYSeguros.Active:=False;
    QYSeguros.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and SEG_STATUS='+QuotedStr('I');
    QYSeguros.SQL.Add('select SEG_APOLICE, SEG_CLIENTE, SEG_CODIGO, SEG_DTEMISSAO, SEG_PROPOSTA, SEG_VALORPREMIO, SEG_SEGUROTIPO, '+
                      'SEG_SEGURADORA, SEG_STATUS, CLI_NOME, FOR_NOME, SGT_DESCRICAO from SEGUROS '+
                      'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
                      'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
                      'left join SEGUROSTIPOS on SEG_SEGUROTIPO=SGT_CODIGO '+
                      'where SEG_DTEMISSAO between '+Where+' order by SEG_DTEMISSAO desc, SEG_CODIGO desc');
    QYSeguros.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYSeguros.SQL.Text);
  end;
end;

procedure TFormSegurosLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
