unit NfeLoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, Grids, DBGrids, Menus, System.UITypes,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfeLoc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    DSNfe: TDataSource;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYNfe: TFDQuery;
    TRNfe: TFDTransaction;
    QYNfeNFE_CHAVEACESSO: TStringField;
    QYNfeNFE_CIDADE: TStringField;
    QYNfeNFE_CIDADECODIGO: TIntegerField;
    QYNfeNFE_CLIENTE: TIntegerField;
    QYNfeNFE_CODIGO: TIntegerField;
    QYNfeNFE_CNPJ: TStringField;
    QYNfeNFE_CPF: TStringField;
    QYNfeNFE_DTEMISSAO: TDateField;
    QYNfeNFE_ESTADO: TStringField;
    QYNfeNFE_STATUS: TStringField;
    QYNfeNFE_USUARIO: TStringField;
    QYNfeNFE_VALORTOTAL: TFMTBCDField;
    QYNfeNFE_VENDEDOR: TIntegerField;
    QYNfeCLI_NOME: TStringField;
    QYNfeCLI_TIPOPESSOA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeLoc: TFormNfeLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNfeLoc.txt';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormNfeLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYNfe.Close;
    QYNfe.SQL.Clear;
    QYNfe.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYNfe.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormNfeLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYNfe.Active:=False;
    QYNfe.SQL.Clear;
    QYNfe.SQL.Add('select NFE_CIDADE, NFE_CIDADECODIGO, NFE_CODIGO, NFE_CLIENTE, NFE_CNPJ, NFE_CPF, NFE_DTEMISSAO, NFE_ESTADO, NFE_VENDEDOR, NFE_VALORTOTAL, NFE_STATUS, NFE_USUARIO, NFE_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA from NFE '+
                  'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO where NFE_CODIGO='+QuotedStr(Edit1.Text)+' order by NFE_CODIGO');
    QYNfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfe.SQL.Text);
  end;
end;

procedure TFormNfeLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYNfe.Active:=False;
    QYNfe.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('I');
    QYNfe.SQL.Add('select NFE_CIDADE, NFE_CIDADECODIGO, NFE_CODIGO, NFE_CLIENTE, NFE_CNPJ, NFE_CPF, NFE_DTEMISSAO, NFE_ESTADO, NFE_VENDEDOR, NFE_VALORTOTAL, NFE_STATUS, NFE_USUARIO, NFE_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA from NFE '+
                  'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
                  'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, NFE_CODIGO');
    QYNfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfe.SQL.Text);
  end;
end;

procedure TFormNfeLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYNfe.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfeLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYNfe.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfeLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais Eletronicas',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CHAVE DE ACESSO' then MaskEdit3.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais Eletronicas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3 else
  if DM.TBLocsLOS_CAMPO.Value='INUTILIZADAS' then ComboBox1.ItemIndex:=4;
end;

procedure TFormNfeLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormNfeLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYNfe.Active:=False;
    QYNfe.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('I');
    QYNfe.SQL.Add('select NFE_CIDADE, NFE_CIDADECODIGO, NFE_CODIGO, NFE_CLIENTE, NFE_CNPJ, NFE_CPF, NFE_DTEMISSAO, NFE_ESTADO, NFE_VENDEDOR, NFE_VALORTOTAL, NFE_STATUS, NFE_USUARIO, NFE_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA from NFE '+
                  'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
                  'where NFE_DTEMISSAO between '+Where+' order by NFE_DTEMISSAO desc, NFE_CODIGO desc');
    QYNfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfe.SQL.Text);
  end;
end;

procedure TFormNfeLoc.MaskEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(MaskEdit3.Text)='' then Exit; //44 caracteres.
    QYNfe.Active:=False;
    QYNfe.SQL.Clear;
    QYNfe.SQL.Add('select NFE_CIDADE, NFE_CIDADECODIGO, NFE_CODIGO, NFE_CLIENTE, NFE_CNPJ, NFE_CPF, NFE_DTEMISSAO, NFE_ESTADO, NFE_VENDEDOR, NFE_VALORTOTAL, NFE_STATUS, NFE_USUARIO, NFE_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA from NFE '+
                  'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
                  'where NFE_CHAVEACESSO like '+QuotedStr('%'+Trim(MaskEdit3.Text+'%'))+' order by NFE_CHAVEACESSO');
    QYNfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfe.SQL.Text);
  end;
end;

procedure TFormNfeLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormNfeLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYNfe.Active:=False;
    QYNfe.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('I');
    QYNfe.SQL.Add('select NFE_CIDADE, NFE_CIDADECODIGO, NFE_CODIGO, NFE_CLIENTE, NFE_CNPJ, NFE_CPF, NFE_DTEMISSAO, NFE_ESTADO, NFE_VENDEDOR, NFE_VALORTOTAL, NFE_STATUS, NFE_USUARIO, NFE_CHAVEACESSO, CLI_NOME, CLI_TIPOPESSOA from NFE '+
                  'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
                  'where NFE_CLIENTE like '+QuotedStr(Edit3.Text)+Where+' order by NFE_CLIENTE, NFE_CODIGO');
    QYNfe.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfe.SQL.Text);
  end;
end;

end.
