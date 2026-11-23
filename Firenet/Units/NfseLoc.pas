unit NfseLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, System.UITypes, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormNfseLoc = class(TForm)
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
    DSNfse: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    QYNfse: TFDQuery;
    TRNfse: TFDTransaction;
    QYNfseNFS_CLIENTE: TIntegerField;
    QYNfseNFS_CODIGO: TIntegerField;
    QYNfseNFS_DTEMISSAO: TDateField;
    QYNfseNFS_STATUS: TStringField;
    QYNfseNFS_TOMCIDADE: TStringField;
    QYNfseNFS_TOMCIDADECODIGO: TIntegerField;
    QYNfseNFS_TOMCNPJ: TStringField;
    QYNfseNFS_TOMCPF: TStringField;
    QYNfseNFS_TOMESTADO: TStringField;
    QYNfseNFS_USUARIO: TStringField;
    QYNfseNFS_VALORLIQUIDO: TFMTBCDField;
    QYNfseNFS_VENDEDOR: TIntegerField;
    QYNfseCLI_NOME: TStringField;
    QYNfseCLI_TIPOPESSOA: TStringField;
    QYNfseNFS_NUMERONOTA: TIntegerField;
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
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseLoc: TFormNfseLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormNfseLoc.txt';
  Campos='NFS_CLIENTE, NFS_CODIGO, NFS_DTEMISSAO, NFS_NUMERONOTA, NFS_STATUS, NFS_TOMCIDADE, NFS_TOMCIDADECODIGO, NFS_TOMCNPJ, NFS_TOMCPF, NFS_TOMESTADO, '+
    'NFS_USUARIO, NFS_VALORLIQUIDO, NFS_VENDEDOR, CLI_NOME, CLI_TIPOPESSOA';

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfseLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYNfse.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfseLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYNfse.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormNfseLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYNfse.Active:=False;
    QYNfse.SQL.Clear;
    QYNfse.SQL.Add(
      'select '+Campos+' from NFSE '+
      'left join CLIENTES on NFS_CLIENTE=CLI_CODIGO '+
      'where NFS_CODIGO='+QuotedStr(Edit1.Text)+' order by NFS_CODIGO'
    );
    QYNfse.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfse.SQL.Text);
  end;
end;

procedure TFormNfseLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYNfse.Active:=False;
    QYNfse.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('I');
    QYNfse.SQL.Add(
      'select '+Campos+' from NFSE '+
      'left join CLIENTES on NFS_CLIENTE=CLI_CODIGO '+
      'where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+Where+' order by CLI_NOME, NFS_CODIGO'
    );
    QYNfse.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfse.SQL.Text);
  end;
end;

procedure TFormNfseLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYNfse.Active:=False;
    QYNfse.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    if ComboBox1.Text='INUTILIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('I');
    QYNfse.SQL.Add(
      'select '+Campos+' from NFSE '+
      'left join CLIENTES on NFS_CLIENTE=CLI_CODIGO '+
      'where NFS_CLIENTE like '+QuotedStr(Edit3.Text)+Where+' order by NFS_CLIENTE, NFS_CODIGO'
    );
    QYNfse.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfse.SQL.Text);
  end;
end;

procedure TFormNfseLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormNfseLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYNfse.Close;
    QYNfse.SQL.Clear;
    QYNfse.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYNfse.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormNfseLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfseLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais de Servico',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Notas Fiscais de Servico com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODAS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTAS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADAS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADAS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormNfseLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormNfseLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYNfse.Active:=False;
    QYNfse.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADAS' then Where:=Where+' and NFE_STATUS='+QuotedStr('C');
    QYNfse.SQL.Add(
      'select '+Campos+' from NFSE '+
      'left join CLIENTES on NFS_CLIENTE=CLI_CODIGO '+
      'where NFS_DTEMISSAO between '+Where+' order by NFS_DTEMISSAO desc, CLI_NOME'
    );
    QYNfse.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYNfse.SQL.Text);
  end;
end;

procedure TFormNfseLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
