unit CupomLoc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormCupomLoc = class(TForm)
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
    Edit4: TEdit;
    DSCupom: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label8: TLabel;
    Edit5: TEdit;
    QYCupom: TFDQuery;
    TRCupom: TFDTransaction;
    QYCupomCUP_CCF: TIntegerField;
    QYCupomCUP_CLIENTE: TIntegerField;
    QYCupomCUP_CODIGO: TIntegerField;
    QYCupomCUP_COO: TIntegerField;
    QYCupomCUP_DESCVALOR: TFMTBCDField;
    QYCupomCUP_DTEMISSAO: TDateField;
    QYCupomCUP_ECF: TIntegerField;
    QYCupomCUP_NFCE: TIntegerField;
    QYCupomCUP_STATUS: TStringField;
    QYCupomCUP_VALORTOTAL: TFMTBCDField;
    QYCupomCUP_VENDEDOR: TIntegerField;
    QYCupomCLI_NOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RestaurarVisualizacaoOriginal1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCupomLoc: TFormCupomLoc;
  Procurar: Boolean = False;
  SalvarColunas: Boolean = True;

const
  NomeArquivoFormTxt='FormCupomLoc.txt';
  Campos='CUP_CCF, CUP_CLIENTE, CUP_CODIGO, CUP_COO, CUP_DESCVALOR, CUP_DTEMISSAO, CUP_ECF, '+
         'CUP_NFCE, CUP_STATUS, CUP_VALORTOTAL, CUP_VENDEDOR, CLI_NOME';

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormCupomLoc.DBGrid1DblClick(Sender: TObject);
begin
  if not QYCupom.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCupomLoc.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#13) and (not QYCupom.IsEmpty) then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormCupomLoc.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit1.Text)='' then Exit;
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CUP_CODIGO='+Edit1.Text+' order by CUP_CODIGO');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var Where: String;
begin
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit2.Text)='' then Exit;
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    Where:='';
    if ComboBox1.Text='ABERTOS' then Where:=' and CUP_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=' and CUP_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=' and CUP_STATUS='+QuotedStr('C');
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CLI_NOME like '+QuotedStr(Edit2.Text+'%')+' '+Where+' order by CLI_NOME');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit3.Text)='' then Exit;
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CUP_CLIENTE='+Edit3.Text+' order by CUP_CLIENTE, CUP_DTEMISSAO desc');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit4.Text)='' then Exit;
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CUP_CCF='+Edit4.Text+' order by CUP_CCF');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    if Trim(Edit5.Text)='' then Exit;
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CUP_COO='+Edit5.Text+' order by CUP_COO');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if SalvarColunas then
  DBGrid1.Columns.SaveToFile(GetTempDir+NomeArquivoFormTxt);
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormCupomLoc.FormCreate(Sender: TObject);
begin
  Procurar:=False;
  SalvarColunas:=True;
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DBGrid1.Columns.LoadFromFile(GetTempDir+NomeArquivoFormTxt);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);

  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Self.Name,DM.UsuarioLogado]),[]) then
  begin
    QYCupom.Close;
    QYCupom.SQL.Clear;
    QYCupom.SQL.Add(DM2.TBSqlsSQL_QUERY.Value);
    QYCupom.Open;
  end;
  RestaurarTamanhoForm(Self,DM.UsuarioLogado);
end;

procedure TFormCupomLoc.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCupomLoc.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Cupom Fiscal',[]);
  if DM.TBLocsLOS_CAMPO.Value='CODIGO' then Edit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='DATA INICIAL' then MaskEdit1.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CODIGO CLIENTE' then Edit3.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='NOME' then Edit2.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='CCF' then Edit4.SetFocus else
  if DM.TBLocsLOS_CAMPO.Value='COO' then Edit5.SetFocus;

  DM.TBLocs.Locate('LOS_TELA','Cupom Fiscal com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormCupomLoc.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
  if Key=#13 then Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormCupomLoc.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYCupom.Active:=False;
    QYCupom.SQL.Clear;
    Where:=QuotedStr(DateToFBDate(StrToDate(MaskEdit1.Text,FS)))+' and '+QuotedStr(DateToFBDate(StrToDate(MaskEdit2.Text,FS)));
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and CUP_STATUS='+QuotedStr('A');
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and CUP_STATUS='+QuotedStr('F');
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and CUP_STATUS='+QuotedStr('C');
    QYCupom.SQL.Add('select '+Campos+' from CUPOM '+
                    'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO where CUP_DTEMISSAO between '+Where+' order by CUP_DTEMISSAO desc, CUP_CODIGO desc');
    QYCupom.Active:=True;
    DBGrid1.SetFocus;
    SalvarConsultaSQL(Self.Name,DM.UsuarioLogado,QYCupom.SQL.Text);
  end;
end;

procedure TFormCupomLoc.RestaurarVisualizacaoOriginal1Click(Sender: TObject);
begin
  if FileExists(GetTempDir+NomeArquivoFormTxt) then
  DeleteFile(GetTempDir+NomeArquivoFormTxt);
  SalvarColunas:=False;
  MessageDlg('A visualização original das colunas foi restaurada.',mtInformation,[mbOk],0);
  Close;
end;

end.
