unit CupomRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  PngBitBtn, PngSpeedButton, Vcl.ExtCtrls, System.UITypes, Data.DB;

type
  TFormCupomRel = class(TForm)
    Label24: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label10: TLabel;
    SpeedButton3: TPngSpeedButton;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TPngBitBtn;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCupomRel: TFormCupomRel;

implementation
uses DataMod, DataModSearch, Funcoes1, CupomFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormCupomRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Cupons no período por vendedor.'}
          if ComboBox1.Text='ABERTOS' then Where:=' and CUP_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='FINALIZADOS' then Where:=' and CUP_STATUS='+QuotedStr('F') else
          if ComboBox1.Text='CANCELADOS' then Where:=' and CUP_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and CUP_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and CUP_CLIENTE='+Edit7.Text;

          Application.CreateForm(TFormCupomFast, FormCupomFast);
          FormCupomFast.QY01.Close;
          FormCupomFast.QY01.SQL.Clear;
          FormCupomFast.QY01.SQL.Add(
            'select CUP_CCF, CUP_CLIENTE, CUP_CODIGO, CUP_COO, CUP_DESCVALOR, CUP_DTEMISSAO, CUP_ECF, '+
            'CUP_STATUS, CUP_VALORTOTAL, CUP_VENDEDOR, CLI_NOME, VEN_NOME from CUPOM '+
            'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on CUP_VENDEDOR=VEN_CODIGO '+
            'where CUP_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, CUP_CODIGO desc');
          FormCupomFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCupomFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCupomFast.QY01.Open;
          FormCupomFast.frxReport1.Variables['TITULO']:=QuotedStr('Cupons Fiscais por vendedor.');
          FormCupomFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCupomFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCupomFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCupomFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCupomFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCupomFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCupomFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit7.Text);
          FormCupomFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit8.Text);
          FormCupomFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormCupomFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormCupomFast.frxReport1.ShowReport;
          FormCupomFast.Free;
          FormCupomFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Cupons no período por cliente.'}
          if ComboBox1.Text='ABERTOS' then Where:=' and CUP_STATUS='+QuotedStr('A') else
          if ComboBox1.Text='FINALIZADOS' then Where:=' and CUP_STATUS='+QuotedStr('F') else
          if ComboBox1.Text='CANCELADOS' then Where:=' and CUP_STATUS='+QuotedStr('C');
          if Edit4.Text<>'' then Where:=Where+' and CUP_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and CUP_CLIENTE='+Edit7.Text;

          Application.CreateForm(TFormCupomFast, FormCupomFast);
          FormCupomFast.QY02.Close;
          FormCupomFast.QY02.SQL.Clear;
          FormCupomFast.QY02.SQL.Add(
            'select CUP_CCF, CUP_CLIENTE, CUP_CODIGO, CUP_COO, CUP_DESCVALOR, CUP_DTEMISSAO, CUP_ECF, '+
            'CUP_STATUS, CUP_VALORTOTAL, CUP_VENDEDOR, CLI_NOME, VEN_NOME from CUPOM '+
            'left join CLIENTES on CUP_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on CUP_VENDEDOR=VEN_CODIGO '+
            'where CUP_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by CLI_NOME, CUP_CODIGO desc');
          FormCupomFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCupomFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCupomFast.QY02.Open;
          FormCupomFast.frxReport2.Variables['TITULO']:=QuotedStr('Cupons Fiscais por cliente.');
          FormCupomFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCupomFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCupomFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCupomFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCupomFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCupomFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCupomFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit7.Text);
          FormCupomFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit8.Text);
          FormCupomFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormCupomFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormCupomFast.frxReport2.ShowReport;
          FormCupomFast.Free;
          FormCupomFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormCupomRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCupomRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCupomRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormCupomRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormCupomRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormCupomRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCupomRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormCupomRel.Edit7Exit(Sender: TObject);
begin
  LocClientesExit(Edit7,Edit8);
end;

procedure TFormCupomRel.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormCupomRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCupomRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormCupomRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCupomRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormCupomRel.SpeedButton3Click(Sender: TObject);
begin
  LocClientesBotao(Edit7,Edit8);
end;

end.
