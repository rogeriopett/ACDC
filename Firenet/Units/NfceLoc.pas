unit NfceLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormNfceLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    MaskEdit3: TMaskEdit;
    DSNfce: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYNfce: TFDQuery;
    TRNfce: TFDTransaction;
    QYNfceNFC_CHAVEACESSO: TStringField;
    QYNfceNFC_CIDADE: TStringField;
    QYNfceNFC_CIDADECODIGO: TIntegerField;
    QYNfceNFC_CLIENTE: TIntegerField;
    QYNfceNFC_CODIGO: TIntegerField;
    QYNfceNFC_CNPJ: TStringField;
    QYNfceNFC_CPF: TStringField;
    QYNfceNFC_DTEMISSAO: TDateField;
    QYNfceNFC_ESTADO: TStringField;
    QYNfceNFC_STATUS: TStringField;
    QYNfceNFC_USUARIO: TStringField;
    QYNfceNFC_VALORTOTAL: TFMTBCDField;
    QYNfceNFC_VENDA: TIntegerField;
    QYNfceNFC_VENDEDOR: TIntegerField;
    QYNfceCLI_NOME: TStringField;
    QYNfceCLI_TIPOPESSOA: TStringField;
    QYNfceNFC_CONTINGENCIA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceLoc: TFormNfceLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNfceLoc.txt';
  Campos='NFC_CIDADE, NFC_CIDADECODIGO, NFC_CODIGO, NFC_CONTINGENCIA, NFC_CLIENTE, NFC_CNPJ, NFC_CPF, NFC_DTEMISSAO, '+
    'NFC_ESTADO, NFC_STATUS, NFC_VALORTOTAL, NFC_VENDA, NFC_VENDEDOR, NFC_USUARIO, NFC_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfceLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYNfce.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfceLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYNfce.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfceLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYNfce.Active:=False;
    QYNfce.SQL.Clear;
    QYNfce.SQL.Add(
      'select '+Campos+' from NFCE '+
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO where NFC_CODIGO='+QuotedStr(Edit1.Text)+' order by NFC_CODIGO'
    );
    QYNfce.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfce.SQL.Text);
  end;
end;

procedure TFormNfceLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYNfce.Active:=False;
    QYNfce.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('I');
    QYNfce.SQL.Add(
      'select '+Campos+' from NFCE '+
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, NFC_CODIGO'
    );
    QYNfce.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfce.SQL.Text);
  end;
end;

procedure TFormNfceLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYNfce.Active:=False;
    QYNfce.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('I');
    QYNfce.SQL.Add(
      'select '+Campos+' from NFCE '+
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
      'where NFC_CLIENTE like '+QuotedStr(Edit3.Text)+Where+' order by NFC_CLIENTE, NFC_CODIGO'
    );
    QYNfce.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfce.SQL.Text);
  end;
end;

procedure TFormNfceLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormNfceLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYNfce.Close;
    QYNfce.SQL.Clear;
    QYNfce.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYNfce.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormNfceLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfceLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais de Consumidor Eletronicas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CHAVE DE ACESSO' then MaskEdit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais de Consumidor Eletronicas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='INUTILIZADAS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormNfceLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormNfceLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYNfce.Active:=False;
    QYNfce.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFC_STATUS='+QuotedStr('I');
    QYNfce.SQL.Add(
      'select '+Campos+' from NFCE '+
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
      'where NFC_DTEMISSAO between '+Where+' '+
      'order by NFC_DTEMISSAO desc, NFC_CODIGO desc'
    );
    QYNfce.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfce.SQL.Text);
  end;
end;

procedure TFormNfceLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit3.Text)='' then Exit; //44 caracteres.
    QYNfce.Active:=False;
    QYNfce.SQL.Clear;
    QYNfce.SQL.Add(
      'select '+Campos+' from NFCE '+
      'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
      'where NFC_CHAVEACESSO like '+QuotedStr('%'+Trim(MaskEdit3.Text+'%'))+' '+
      'order by NFC_CHAVEACESSO');
    QYNfce.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfce.SQL.Text);
  end;
end;

procedure TFormNfceLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

initialization
  RegisterClass(TFormNfceLoc);

finalization
  UnRegisterClass(TFormNfceLoc);

end.
