unit VendasSeparacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, PngSpeedButton,
  Vcl.Menus, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, PngBitBtn, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVendasSeparacao = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    DSVendas: TDataSource;
    PopupMenu1: TPopupMenu;
    RestaurarVisualizacaoOriginal1: TMenuItem;
    Label6: TLabel;
    SpeedButton1: TPngSpeedButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Bevel1: TBevel;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label12: TLabel;
    Label1: TLabel;
    ComboBox2: TComboBox;
    ComboBox6: TComboBox;
    Label21: TLabel;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    QYVendasVED_CLIENTE: TIntegerField;
    QYVendasVED_CODIGO: TIntegerField;
    QYVendasVED_DTEMISSAO: TDateField;
    QYVendasVED_STATUS: TStringField;
    QYVendasVED_USUARIO: TStringField;
    QYVendasVED_VALORTOTAL: TFMTBCDField;
    QYVendasVED_VENDEDOR: TIntegerField;
    QYVendasVED_VIAINTERNET: TStringField;
    QYVendasVED_VIAINTERNETSTATUS: TStringField;
    QYVendasCLI_NOME: TStringField;
    QYVendasNFE_CODIGO: TIntegerField;
    QYVendasNFE_DTEMISSAO: TDateField;
    procedure Edit4Enter(Sender: TObject);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasSeparacao: TFormVendasSeparacao;

implementation
uses DataMod, DataModSearch, FuncoesFirenet, VendasFast;
{$R *.dfm}

procedure TFormVendasSeparacao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasSeparacao.BitBtn3Click(Sender: TObject);
var S: String;
  I: Integer;
begin
  if DBGrid1.SelectedRows.Count>0 then
  begin
    S:='';
    for I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[I]);
      S:=S+','+DBGrid1.DataSource.DataSet.Fields[1].AsString; //manter a ordernacao dos campos no QYVendas. VED_CODIGO=campo numero 1.
    end;
    Delete(S,1,1); //retira a primeira vírgula.
    Application.CreateForm(TFormVendasFast, FormVendasFast);
    FormVendasFast.QY32.Close;
    FormVendasFast.QY32.SQL.Clear;
    FormVendasFast.QY32.SQL.Add(
      'select VEI_DESCRICAO||'+
      'iif(coalesce(VEI_COMPLEMENTO,'+QuotedStr('')+') <> '+QuotedStr('')+','+QuotedStr(' - ')+'||VEI_COMPLEMENTO,'+QuotedStr('')+')||'+
      'iif(coalesce(VEI_LOTE,'+QuotedStr('')+') <> '+QuotedStr('')+','+QuotedStr(' - Lote: ')+'||VEI_LOTE,'+QuotedStr('')+') as DESCRICAO, '+
      'PRO_LOCALIZACAO, VEI_PESO, VEI_PRODUTO, VEI_QUANTIDADE, VEI_SEQUENCIA, VEI_TIPO, VEI_UNIDADE, '+
      'VEI_VALORTOTAL, VEI_VALORUNIT, VED_CLIENTE, VED_CODIGO, VED_CONTATO, VED_DTEMISSAO, VED_DTSAIDA, VED_NFE, VED_NOME, '+
      'VED_OBSERVACOES, VED_TRANSPNOME, VED_TRANSPORTADORA, VED_VALORTOTAL, VED_VENDEDOR, VEN_NOME from VENDASITENS '+
      'left join VENDAS on VEI_VENDA=VED_CODIGO '+
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
      'left join PRODUTOS on VEI_PRODUTO=PRO_CODIGO '+
      'where VED_CODIGO in ('+S+') '+
      'order by VEN_NOME, VED_CODIGO, VEI_SEQUENCIA');
    FormVendasFast.QY32.Open;
    FormVendasFast.frxReport32.Variables['TITULO']:=QuotedStr('Ordem de Separação');
    FormVendasFast.frxReport32.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
    FormVendasFast.frxReport32.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormVendasFast.frxReport32.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
    FormVendasFast.frxReport32.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
    FormVendasFast.frxReport32.ShowReport;
    FormVendasFast.Free;
    FormVendasFast:=nil;
  end else
  MessageDlg('Nenhum Pedido de Venda selecionado.',mtError,[mbOk],0);
end;

procedure TFormVendasSeparacao.Edit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormVendasSeparacao.Edit4Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit4,Edit5,nil);
end;

procedure TFormVendasSeparacao.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormVendasSeparacao.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormVendasSeparacao.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date,FS);
  MaskEdit2.Text:=DateToStr(Date,FS);
  ComboBox2.ItemIndex:=1;
  ComboBox6.ItemIndex:=0;

  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DMS.QYVendedores.Open;
  Edit4.Text:=IntToStr(DM.UsuarioVendedor);
  Edit5.Text:=DMS.QYVendedoresVEN_NOME.Value;
end;

procedure TFormVendasSeparacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasSeparacao.FormShow(Sender: TObject);
begin
  DM.TBLocs.Locate('LOS_TELA','Vendas com Status',[]);
  if DM.TBLocsLOS_CAMPO.Value='TODOS' then ComboBox1.ItemIndex:=0 else
  if DM.TBLocsLOS_CAMPO.Value='ABERTOS' then ComboBox1.ItemIndex:=1 else
  if DM.TBLocsLOS_CAMPO.Value='FINALIZADOS' then ComboBox1.ItemIndex:=2 else
  if DM.TBLocsLOS_CAMPO.Value='CANCELADOS' then ComboBox1.ItemIndex:=3;
end;

procedure TFormVendasSeparacao.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormVendasSeparacao.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
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
    QYVendas.Active:=False;
    QYVendas.SQL.Clear;
    Where:='';
    if ComboBox2.Text='EMISSAO PEDIDO' then Where:=Where+' VED_DTEMISSAO between :datainicial and :datafinal' else
    if ComboBox2.Text='EMISSAO NOTA' then Where:=Where+' NFE_DTEMISSAO between :datainicial and :datafinal';
    if Edit5.Text<>'' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Edit4.Text);
    if ComboBox1.Text='ABERTOS' then Where:=Where+' and VED_STATUS='+QuotedStr('A') else
    if ComboBox1.Text='FINALIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('F') else
    if ComboBox1.Text='CANCELADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('C') else
    if ComboBox1.Text='INUTILIZADOS' then Where:=Where+' and VED_STATUS='+QuotedStr('I');
    if ComboBox6.Text='SIM - ABERTOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('A')+')';
    if ComboBox6.Text='SIM - FINALIZADOS' then Where:=Where+' and (VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+')';
    if ComboBox6.Text='NAO' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr('N');
    QYVendas.SQL.Add(
      'select VED_CLIENTE, VED_CODIGO, VED_DTEMISSAO, VED_STATUS, VED_USUARIO, VED_VALORTOTAL, '+
      'VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, CLI_NOME, NFE_CODIGO, NFE_DTEMISSAO from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'left join NFE on VED_NFE=NFE_CODIGO '+
      'where '+Where+' order by VED_CODIGO desc');
    QYVendas.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
    QYVendas.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
    QYVendas.Active:=True;
    DBGrid1.SetFocus;
  end;
end;

procedure TFormVendasSeparacao.PngBitBtn1Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=True;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormVendasSeparacao.PngBitBtn2Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormVendasSeparacao.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit4,Edit5,nil);
end;

end.
