unit DeliveryRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.Mask, PngSpeedButton;

type
  TFormDeliveryRel = class(TForm)
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox4: TComboBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label15: TLabel;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label8: TLabel;
    SpeedButton4: TPngSpeedButton;
    Edit8: TEdit;
    Edit9: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryRel: TFormDeliveryRel;

implementation
uses Funcoes1, DataMod, ProdutosLoc, DataModSearch, DeliveryFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Vendas por vendedor'}
          if ComboBox4.Text='ABERTOS' then Where:=' and DLV_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADOS' then Where:=' and DLV_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADOS' then Where:=' and DLV_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADOS' then Where:=' and DLV_STATUS='+QuotedStr('I');
          if ComboBox4.Text='PRODUCAO' then Where:=' and DLV_STATUS='+QuotedStr('P');
          if ComboBox4.Text='ENTREGA' then Where:=' and DLV_STATUS='+QuotedStr('E');
          if Edit2.Text<>'' then Where:=Where+' and DLV_VENDEDOR='+QuotedStr(Edit1.Text);

          Application.CreateForm(TFormDeliveryFast, FormDeliveryFast);
          FormDeliveryFast.QY01.Close;
          FormDeliveryFast.QY01.SQL.Clear;
          FormDeliveryFast.QY01.SQL.Add(
            'select DLV_CARTAO, DLV_CLIENTE, DLV_CODIGO, DLV_DINHEIRO, DLV_DTCADASTRO, DLV_STATUS, '+
            'DLV_TAXAVALOR, DLV_TROCO, DLV_VALORTOTAL, DLV_VENDEDOR, CLI_NOME, VEN_NOME from DELIVERYS '+
            'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on DLV_VENDEDOR=VEN_CODIGO '+
            'where DLV_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, DLV_DTCADASTRO desc, CLI_NOME');
          FormDeliveryFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormDeliveryFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormDeliveryFast.QY01.Open;
          FormDeliveryFast.frxReport1.Variables['TITULO']:=QuotedStr('Deliverys por vendedor');
          FormDeliveryFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormDeliveryFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormDeliveryFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormDeliveryFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormDeliveryFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormDeliveryFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormDeliveryFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox4.Text);
          FormDeliveryFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormDeliveryFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormDeliveryFast.frxReport1.ShowReport;
          FormDeliveryFast.Free;
          FormDeliveryFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Vendas por entregador'}
          if ComboBox4.Text='ABERTOS' then Where:=' and DLV_STATUS='+QuotedStr('A');
          if ComboBox4.Text='CANCELADOS' then Where:=' and DLV_STATUS='+QuotedStr('C');
          if ComboBox4.Text='FINALIZADOS' then Where:=' and DLV_STATUS='+QuotedStr('F');
          if ComboBox4.Text='INUTILIZADOS' then Where:=' and DLV_STATUS='+QuotedStr('I');
          if ComboBox4.Text='PRODUCAO' then Where:=' and DLV_STATUS='+QuotedStr('P');
          if ComboBox4.Text='ENTREGA' then Where:=' and DLV_STATUS='+QuotedStr('E');
          if Edit2.Text<>'' then Where:=Where+' and DLV_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormDeliveryFast, FormDeliveryFast);
          FormDeliveryFast.QY02.Close;
          FormDeliveryFast.QY02.SQL.Clear;
          FormDeliveryFast.QY02.SQL.Add(
            'select DLV_CARTAO, DLV_CLIENTE, DLV_CODIGO, DLV_DINHEIRO, DLV_DTCADASTRO, DLV_ENTREGADOR, '+
            'DLV_STATUS, DLV_TAXAVALOR, DLV_TROCO, DLV_VALORTOTAL, CLI_NOME, VEN_NOME from DELIVERYS '+
            'left join CLIENTES on DLV_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on DLV_ENTREGADOR=VEN_CODIGO '+
            'where DLV_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, DLV_DTCADASTRO desc, CLI_NOME ');
          FormDeliveryFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormDeliveryFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormDeliveryFast.QY02.Open;
          FormDeliveryFast.frxReport2.Variables['TITULO']:=QuotedStr('Deliverys por entregador');
          FormDeliveryFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormDeliveryFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormDeliveryFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormDeliveryFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormDeliveryFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormDeliveryFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormDeliveryFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox4.Text);
          FormDeliveryFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormDeliveryFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormDeliveryFast.frxReport2.ShowReport;
          FormDeliveryFast.Free;
          FormDeliveryFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          MessageDlg('Ainda não.',mtInformation,[mbOk],0);
        end;
    03: begin
          MessageDlg('Ainda não.',mtInformation,[mbOk],0);
        end;
  end;
end;

procedure TFormDeliveryRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDeliveryRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin //por vendedor.
          ComboBox4.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False; SpeedButton4.Enabled:=False;
        end;
    01: begin //por entregador.
          ComboBox4.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False; SpeedButton4.Enabled:=False;
        end;
    02: begin //por cliente.
          ComboBox4.Enabled:=True;
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit8.Enabled:=False; SpeedButton4.Enabled:=False;
        end;
    03: begin //por produto.
          ComboBox4.Enabled:=True;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit8.Enabled:=True; SpeedButton4.Enabled:=True;
        end;
  end;
end;

procedure TFormDeliveryRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormDeliveryRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormDeliveryRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormDeliveryRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormDeliveryRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormDeliveryRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormDeliveryRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryRel.Edit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormDeliveryRel.Edit8Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit8.Clear;
    Edit9.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      Edit8.Text:=IntToStr(DMS.QYProdutosPRO_CODIGO.Value);
      Edit9.Text:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      Edit8.Clear;
      Edit9.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure TFormDeliveryRel.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormDeliveryRel.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormDeliveryRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormDeliveryRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormDeliveryRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormDeliveryRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

procedure TFormDeliveryRel.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      Edit8.Text:=IntToStr(FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value);
      Edit9.Text:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
    end else
    begin
      Edit8.Text:=IntToStr(FormProdutosLoc.QYProdutosPRO_CODIGO.Value);
      Edit9.Text:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
