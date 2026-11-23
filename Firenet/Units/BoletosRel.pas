unit BoletosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PngBitBtn, DB, Mask, PngSpeedButton, System.UITypes;

type
  TFormBoletosRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label4: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    ComboBox3: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosRel: TFormBoletosRel;

implementation
uses DataMod, DataModSearch, Funcoes1, BoletosFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormBoletosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Boletos por Cliente'}
          if ComboBox3.Text='CADASTRO' then Where:='BOL_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='VENCIMENTO' then Where:='BOL_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='PAGAMENTO' then Where:='BOL_DTPAGAMENTO between :datainicial and :datafinal';
          if ComboBox2.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
          if ComboBox2.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
          if ComboBox2.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
          if Trim(Edit2.Text)<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
          if Trim(Edit4.Text)<>'' then Where:=Where+' and BOL_CONTA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormBoletosFast, FormBoletosFast);
          FormBoletosFast.QY01.Close;
          FormBoletosFast.QY01.SQL.Clear;
          FormBoletosFast.QY01.SQL.Add(
            'select BOL_CODIGO, BOL_CLIENTE, BOL_NOME, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_DTPAGAMENTO, '+
            'BOL_VALORITENS, BOL_VALORTOTAL, BOL_VALORPAGO, BOL_CONTA, CON_NOME from BOLETOS '+
            'left join CONTAS on BOL_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by BOL_NOME, BOL_DTPAGAMENTO, BOL_NOME');
          FormBoletosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormBoletosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormBoletosFast.QY01.Open;
          FormBoletosFast.frxReport1.Variables['TITULO']:=QuotedStr('Boletos por Cliente');
          FormBoletosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormBoletosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormBoletosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormBoletosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormBoletosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormBoletosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormBoletosFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormBoletosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormBoletosFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormBoletosFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormBoletosFast.frxReport1.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormBoletosFast.frxReport1.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormBoletosFast.frxReport1.ShowReport;
          FormBoletosFast.Free;
          FormBoletosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Boletos por cliente com itens.'}
          if ComboBox3.Text='CADASTRO' then Where:='BOL_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='VENCIMENTO' then Where:='BOL_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='PAGAMENTO' then Where:='BOL_DTPAGAMENTO between :datainicial and :datafinal';
          if ComboBox2.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
          if ComboBox2.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
          if ComboBox2.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
          if Trim(Edit2.Text)<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
          if Trim(Edit4.Text)<>'' then Where:=Where+' and BOL_CONTA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormBoletosFast, FormBoletosFast);
          FormBoletosFast.QY02.Close;
          FormBoletosFast.QY02.SQL.Clear;
          FormBoletosFast.QY02.SQL.Add(
            'select BOL_CODIGO, BOL_CLIENTE, BOL_NOME, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_DTPAGAMENTO, '+
            'BOL_VALORITENS, BOL_VALORTOTAL, BOL_VALORPAGO, BOL_CONTA, CON_NOME from BOLETOS '+
            'left join CONTAS on BOL_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by BOL_NOME, BOL_DTPAGAMENTO, BOL_NOME');
          FormBoletosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormBoletosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormBoletosFast.QY02.Open;
          FormBoletosFast.QY02a.Open;
          FormBoletosFast.frxReport2.Variables['TITULO']:=QuotedStr('Boletos por Cliente com Itens');
          FormBoletosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormBoletosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormBoletosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormBoletosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormBoletosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormBoletosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormBoletosFast.frxReport2.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormBoletosFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormBoletosFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormBoletosFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormBoletosFast.frxReport2.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormBoletosFast.frxReport2.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormBoletosFast.frxReport2.ShowReport;
          FormBoletosFast.Free;
          FormBoletosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Boletos por Conta'}
          if ComboBox3.Text='CADASTRO' then Where:='BOL_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='VENCIMENTO' then Where:='BOL_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='PAGAMENTO' then Where:='BOL_DTPAGAMENTO between :datainicial and :datafinal';
          if ComboBox2.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
          if ComboBox2.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
          if ComboBox2.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
          if Trim(Edit2.Text)<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
          if Trim(Edit4.Text)<>'' then Where:=Where+' and BOL_CONTA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormBoletosFast, FormBoletosFast);
          FormBoletosFast.QY03.Close;
          FormBoletosFast.QY03.SQL.Clear;
          FormBoletosFast.QY03.SQL.Add(
            'select BOL_CODIGO, BOL_CLIENTE, BOL_NOME, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_DTPAGAMENTO, '+
            'BOL_VALORITENS, BOL_VALORTOTAL, BOL_VALORPAGO, BOL_CONTA, CON_NOME from BOLETOS '+
            'left join CONTAS on BOL_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by CON_NOME, BOL_DTPAGAMENTO, BOL_NOME');
          FormBoletosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormBoletosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormBoletosFast.QY03.Open;
          FormBoletosFast.frxReport3.Variables['TITULO']:=QuotedStr('Boletos por Conta');
          FormBoletosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormBoletosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormBoletosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormBoletosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormBoletosFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormBoletosFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormBoletosFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormBoletosFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormBoletosFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormBoletosFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormBoletosFast.frxReport3.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormBoletosFast.frxReport3.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormBoletosFast.frxReport3.ShowReport;
          FormBoletosFast.Free;
          FormBoletosFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Boletos por Conta com Itens'}
          if ComboBox3.Text='CADASTRO' then Where:='BOL_DTCADASTRO between :datainicial and :datafinal';
          if ComboBox3.Text='VENCIMENTO' then Where:='BOL_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='PAGAMENTO' then Where:='BOL_DTPAGAMENTO between :datainicial and :datafinal';
          if ComboBox2.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A');
          if ComboBox2.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B');
          if ComboBox2.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
          if Trim(Edit2.Text)<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
          if Trim(Edit4.Text)<>'' then Where:=Where+' and BOL_CONTA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormBoletosFast, FormBoletosFast);
          FormBoletosFast.QY04.Close;
          FormBoletosFast.QY04.SQL.Clear;
          FormBoletosFast.QY04.SQL.Add(
            'select BOL_CODIGO, BOL_CLIENTE, BOL_NOME, BOL_DTCADASTRO, BOL_DTVENCIMENTO, BOL_DTPAGAMENTO, '+
            'BOL_VALORITENS, BOL_VALORTOTAL, BOL_VALORPAGO, BOL_CONTA, CON_NOME from BOLETOS '+
            'left join CONTAS on BOL_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by CON_NOME, BOL_DTPAGAMENTO, BOL_NOME');
          FormBoletosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormBoletosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormBoletosFast.QY04.Open;
          FormBoletosFast.QY04a.Open;
          FormBoletosFast.frxReport4.Variables['TITULO']:=QuotedStr('Boletos por Cliente com Itens');
          FormBoletosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormBoletosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormBoletosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormBoletosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormBoletosFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormBoletosFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormBoletosFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox3.Text);
          FormBoletosFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormBoletosFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormBoletosFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormBoletosFast.frxReport4.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormBoletosFast.frxReport4.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormBoletosFast.frxReport4.ShowReport;
          FormBoletosFast.Free;
          FormBoletosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormBoletosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBoletosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosRel.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormBoletosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormBoletosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosRel.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=1; //vencimento.
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormBoletosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormBoletosRel.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

end.
