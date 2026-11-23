unit ChequesRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, Buttons, ExtCtrls, PngBitBtn, PngSpeedButton;

type
  TFormChequesRel = class(TForm)
    Label22: TLabel;
    SpeedButton1: TPngSpeedButton;
    Bevel1: TBevel;
    Edit3: TEdit;
    Edit1: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label25: TLabel;
    MaskEdit1: TMaskEdit;
    Label26: TLabel;
    MaskEdit2: TMaskEdit;
    ComboBox2: TComboBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label24: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Label3: TLabel;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequesRel: TFormChequesRel;

implementation
uses DataMod, Funcoes1, DataModSearch, ChequesFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormChequesRel.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox2Change(Self);
end;

procedure TFormChequesRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormChequesRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormChequesRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormChequesRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit1);
end;

procedure TFormChequesRel.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormChequesRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormChequesRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit1);
end;

procedure TFormChequesRel.Edit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormChequesRel.Edit2Exit(Sender: TObject);
begin
  LocBancosExit(Edit2,Edit4);
end;

procedure TFormChequesRel.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormChequesRel.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormChequesRel.SpeedButton2Click(Sender: TObject);
begin
  LocBancosBotao(Edit2,Edit4);
end;

procedure TFormChequesRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          Edit3.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit2.Enabled:=False; SpeedButton2.Enabled:=False;
        end;
    01: begin
          Edit3.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit2.Enabled:=True;  SpeedButton2.Enabled:=True;
        end;
  end;
end;

procedure TFormChequesRel.BitBtn1Click(Sender: TObject);
var Where, Campo: String;
begin
  Where:='';
  Campo:='';
  case ComboBox2.ItemIndex of
    00: begin
          {$REGION 'Cheques por cliente'}
          if Edit1.Text<>'' then Where:=' and CHE_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox3.Text='ABERTOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='COMPENSADOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='DEVOLVIDOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('D');
          if ComboBox1.Text='CADASTRO' then Campo:='CHE_DTCADASTRO' else
          if ComboBox1.Text='BOM PARA' then Campo:='CHE_BOMPARA';
          Application.CreateForm(TFormChequesFast, FormChequesFast);
          FormChequesFast.QY01.Close;
          FormChequesFast.QY01.SQL.Clear;
          FormChequesFast.QY01.SQL.Add(
            'select CHE_CODIGO, CHE_CLIENTE, CHE_BANCO, CHE_AGENCIA, CHE_CONTA, CHE_NUMERO, CHE_PREDATADO, '+
            'CHE_STATUS, CHE_BOMPARA, CHE_VALOR, CHE_DTCADASTRO, CLI_NOME, BAN_NOME from CHEQUES '+
            'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
            'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
            'where '+Campo+' between :datainicial and :datafinal '+Where+
            'order by CLI_NOME, '+Campo);
          FormChequesFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormChequesFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormChequesFast.QY01.Open;
          FormChequesFast.frxReport1.Variables['TITULO']:=QuotedStr('Cheques por Cliente');
          FormChequesFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormChequesFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormChequesFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormChequesFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormChequesFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormChequesFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormChequesFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox1.Text);
          FormChequesFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormChequesFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormChequesFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit1.Text);
          FormChequesFast.frxReport1.ShowReport;
          FormChequesFast.Free;
          FormChequesFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Cheques por banco'}
          if Edit4.Text<>'' then Where:=' and CHE_BANCO='+QuotedStr(Edit2.Text);
          if ComboBox3.Text='ABERTOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='COMPENSADOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='DEVOLVIDOS' then Where:=Where+' and CHE_STATUS='+QuotedStr('D');
          if ComboBox1.Text='CADASTRO' then Campo:='CHE_DTCADASTRO' else
          if ComboBox1.Text='BOM PARA' then Campo:='CHE_BOMPARA';
          Application.CreateForm(TFormChequesFast, FormChequesFast);
          FormChequesFast.QY02.Close;
          FormChequesFast.QY02.SQL.Clear;
          FormChequesFast.QY02.SQL.Add(
            'select CHE_CODIGO, CHE_CLIENTE, CHE_BANCO, CHE_AGENCIA, CHE_CONTA, CHE_NUMERO, CHE_PREDATADO, '+
            'CHE_STATUS, CHE_BOMPARA, CHE_VALOR, CHE_DTCADASTRO, CLI_NOME, BAN_NOME from CHEQUES '+
            'left join CLIENTES on CHE_CLIENTE=CLI_CODIGO '+
            'left join BANCOS on CHE_BANCO=BAN_CODIGO '+
            'where '+Campo+' between :datainicial and :datafinal '+Where+
            'order by BAN_NOME, '+Campo);
          FormChequesFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormChequesFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormChequesFast.QY02.Open;
          FormChequesFast.frxReport2.Variables['TITULO']:=QuotedStr('Cheques por Banco');
          FormChequesFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormChequesFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormChequesFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormChequesFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormChequesFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormChequesFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormChequesFast.frxReport2.Variables['DATA']:=QuotedStr(ComboBox1.Text);
          FormChequesFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormChequesFast.frxReport2.Variables['BAN_CODIGO']:=QuotedStr(Edit2.Text);
          FormChequesFast.frxReport2.Variables['BAN_NOME']:=QuotedStr(Edit4.Text);
          FormChequesFast.frxReport2.ShowReport;
          FormChequesFast.Free;
          FormChequesFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormChequesRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
