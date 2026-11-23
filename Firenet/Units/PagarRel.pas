unit PagarRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormPagarRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn3: TPngBitBtn;
    Label4: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Edit5: TEdit;
    Edit6: TEdit;
    PngBitBtn1: TPngBitBtn;
    Label10: TLabel;
    ComboBox4: TComboBox;
    Label9: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Edit7: TEdit;
    Edit8: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarRel: TFormPagarRel;

implementation
uses Funcoes1, DataMod, DataModSearch, FuncoesFirenet, PagarFast, frxClass;
{$R *.dfm}

procedure TFormPagarRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox1.OnChange(self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormPagarRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPagarRel.PngBitBtn1Click(Sender: TObject);
var Where, Where2: String;
begin
  Where:='';
  Where2:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Contas a pagar por fornecedor.'}
          if ComboBox4.Text='EMISSAO' then Where:=' PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('C');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;
          Application.CreateForm(TFormPagarFast, FormPagarFast);
          FormPagarFast.QY01.Close;
          FormPagarFast.QY01.SQL.Clear;
          FormPagarFast.QY01.SQL.Add(
            'select PAG_CODIGO, PAG_CONTA, PAG_DESCRICAO, PAG_DESPESA, PAG_DTEMISSAO, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, '+
            'PAG_FORNECEDOR, PAG_NUMDOCTO, PAG_STATUS, PAG_TIPODOCTO, PAG_VALOR, PAG_VALORPAGO, CON_NOME, DES_DESCRICAO, FOR_NOME from PAGAR '+
            'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'left join CONTAS on PAG_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by FOR_NOME, PAG_CODIGO desc');
          FormPagarFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY01.Open;
          FormPagarFast.frxReport1.Variables['TITULO']:=QuotedStr('Contas a pagar por fornecedor.');
          FormPagarFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormPagarFast.frxReport1.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport1.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport1.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport1.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport1.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport1.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport1.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport1.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Contas a pagar por data.'}
          if ComboBox4.Text='EMISSAO' then Where:=' PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and PAg_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;

          Application.CreateForm(TFormPagarFast, FormPagarFast);

          if ComboBox4.Text='EMISSAO' then
          begin
            Where2:=' order by PAG_DTEMISSAO, FOR_NOME, PAG_CODIGO desc';
            TfrxGroupHeader(FormPagarFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."PAG_DTEMISSAO">';
          end else
          if ComboBox4.Text='PAGAMENTO' then
          begin
            Where2:=' order by PAG_DTPAGAMENTO, FOR_NOME, PAG_CODIGO desc';
            TfrxGroupHeader(FormPagarFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."PAG_DTPAGAMENTO">';
          end else
          if ComboBox4.Text='VENCIMENTO' then
          begin
            Where2:=' order by PAG_DTVENCIMENTO, FOR_NOME, PAG_CODIGO desc';
            TfrxGroupHeader(FormPagarFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."PAG_DTVENCIMENTO">';
          end;

          FormPagarFast.QY09.Close;
          FormPagarFast.QY09.SQL.Clear;
          FormPagarFast.QY09.SQL.Add(
            'select PAG_CODIGO, PAG_DESCRICAO, PAG_DESPESA, PAG_DTEMISSAO, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, '+
            'PAG_FORNECEDOR, PAG_NUMDOCTO, PAG_STATUS, PAG_TIPODOCTO, PAG_VALOR, PAG_VALORPAGO, PAG_CONTA, FOR_NOME, CON_NOME, DES_DESCRICAO, '+
            'datediff(day,PAG_DTEMISSAO,:dataatual) as DIASEMISSAO, '+
            'datediff(day,PAG_DTPAGAMENTO,:dataatual) as DIASPAGAMENTO, '+
            'datediff(day,PAG_DTVENCIMENTO,:dataatual) as DIASVENCIMENTO from PAGAR '+
            'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join CONTAS on PAG_CONTA=CON_CODIGO '+
            'where '+Where+' '+Where2);
          FormPagarFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY09.ParamByName('dataatual').AsDate:=Date;
          FormPagarFast.QY09.Open;
          FormPagarFast.frxReport9.Variables['TITULO']:=QuotedStr('Contas a pagar por data.');
          FormPagarFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport9.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormPagarFast.frxReport9.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport9.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport9.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport9.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport9.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport9.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport9.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport9.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport9.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport9.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Contas a pagar por data sintético.'}
          if ComboBox4.Text='EMISSAO' then Where:=' PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;

          if ComboBox4.Text='EMISSAO' then Where2:=' PAG_DTEMISSAO as CAMPODATA,' else
          if ComboBox4.Text='PAGAMENTO' then Where2:=' PAG_DTPAGAMENTO as CAMPODATA,' else
          if ComboBox4.Text='VENCIMENTO' then Where2:=' PAG_DTVENCIMENTO as CAMPODATA,';

          Application.CreateForm(TFormPagarFast, FormPagarFast);
          FormPagarFast.QY10.Close;
          FormPagarFast.QY10.SQL.Clear;
          FormPagarFast.QY10.SQL.Add(
            'select '+Where2+' '+
            'sum(iif(PAG_STATUS=''A'',PAG_VALOR,0)) as VALORABERTO, '+
            'sum(iif(PAG_STATUS=''C'',PAG_VALOR,0)) as VALORCANCELADO, '+
            'sum(iif(PAG_STATUS=''B'',PAG_VALOR,0)) as VALORORIGINAL, '+
            'sum(iif(PAG_STATUS=''B'',PAG_VALORPAGO,0)) as VALORPAGO, '+
            'sum(iif(PAG_STATUS=''P'',PAG_VALOR,0)) as VALORPRE '+
            'from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=PAG_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where '+Where+' '+
            'group by 1'+
            'order by 1');
          FormPagarFast.QY10.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY10.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY10.Open;
          FormPagarFast.frxReport10.Variables['TITULO']:=QuotedStr('Contas a pagar por data sintético.');
          FormPagarFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport10.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport10.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport10.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport10.Variables['STATUS']:=QuotedStr('TODOS');
          FormPagarFast.frxReport10.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport10.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport10.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport10.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport10.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport10.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport10.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport10.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport10.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport10.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Contas a pagar por despesa analítico.'}
          if ComboBox4.Text='EMISSAO' then Where:=' PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and PAG_STATUS='+QuotedStr('C');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;
          Application.CreateForm(TFormPagarFast, FormPagarFast);
          FormPagarFast.QY11.Close;
          FormPagarFast.QY11.SQL.Clear;
          FormPagarFast.QY11.SQL.Add(
            'select PAG_CODIGO, PAG_CONTA, PAG_DESCRICAO, PAG_DESPESA, PAG_DTEMISSAO, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, '+
            'PAG_FORNECEDOR, PAG_NUMDOCTO, PAG_STATUS, PAG_TIPODOCTO, PAG_VALOR, PAG_VALORPAGO, CON_NOME, DES_DESCRICAO, FOR_NOME from PAGAR '+
            'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'left join CONTAS on PAG_CONTA=CON_CODIGO '+
            'where '+Where+' '+
            'order by DES_DESCRICAO, FOR_NOME, PAG_CODIGO desc');
          FormPagarFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY11.Open;
          FormPagarFast.frxReport11.Variables['TITULO']:=QuotedStr('Contas a pagar por despesa analítico.');
          FormPagarFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport11.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport11.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormPagarFast.frxReport11.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport11.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport11.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport11.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport11.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport11.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport11.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport11.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport11.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport11.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Contas a pagar por despesa sintético'}
          if ComboBox4.Text='EMISSAO' then Where:=' and PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' and PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' and PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;
          if Edit4.Text<>'' then Where2:=' where DES_CODIGO='+Edit3.Text;
          Application.CreateForm(TFormPagarFast, FormPagarFast);
          FormPagarFast.QY03.Close;
          FormPagarFast.QY03.SQL.Clear;
          FormPagarFast.QY03.SQL.Add(
            'select A.DES_CODIGO, A.DES_DESCRICAO, '+

            '(select sum(PAG_VALOR) from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where PAG_STATUS=''A'' and PAG_DESPESA=A.DES_CODIGO '+Where+') as VALORABERTO, '+

            '(select sum(PAG_VALOR) from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where PAG_STATUS=''C'' and PAG_DESPESA=A.DES_CODIGO '+Where+') as VALORCANCELADO, '+

            '(select sum(PAG_VALOR) from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where PAG_STATUS=''B'' and PAG_DESPESA=A.DES_CODIGO '+Where+') as VALORORIGINAL, '+

            '(select sum(PAG_VALORPAGO) from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where PAG_STATUS=''B'' and PAG_DESPESA=A.DES_CODIGO '+Where+') as VALORPAGO, '+

            '(select sum(PAG_VALOR) from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where PAG_STATUS=''P'' and PAG_DESPESA=A.DES_CODIGO '+Where+') as VALORPRE '+

            'from DESPESAS A '+Where2+' '+
            'order by A.DES_DESCRICAO');
          FormPagarFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY03.Open;
          FormPagarFast.frxReport3.Variables['TITULO']:=QuotedStr('Contas a pagar por despesa sintético.');
          FormPagarFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport3.Variables['STATUS']:=QuotedStr('TODOS');
          FormPagarFast.frxReport3.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport3.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport3.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport3.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport3.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport3.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport3.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport3.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport3.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport3.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Contas a pagar por tipo de documento sintético.'}
          if ComboBox4.Text='EMISSAO' then Where:=' PAG_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' PAG_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' PAG_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and PAG_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and PAG_FORNECEDOR='+Edit1.Text;
          if Edit8.Text<>'' then Where:=Where+' and PAG_CONTA='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and DES_AGRUPADOR='+Edit5.Text;
          if Edit4.Text<>'' then Where:=Where+' and PAG_DESPESA='+Edit3.Text;
          Application.CreateForm(TFormPagarFast, FormPagarFast);
          FormPagarFast.QY04.Close;
          FormPagarFast.QY04.SQL.Clear;
          FormPagarFast.QY04.SQL.Add(
            'select PAG_TIPODOCTO, '+
            'sum(iif(PAG_STATUS=''A'',PAG_VALOR,0)) as VALORABERTO, '+
            'sum(iif(PAG_STATUS=''C'',PAG_VALOR,0)) as VALORCANCELADO, '+
            'sum(iif(PAG_STATUS=''B'',PAG_VALOR,0)) as VALORORIGINAL, '+
            'sum(iif(PAG_STATUS=''B'',PAG_VALORPAGO,0)) as VALORPAGO, '+
            'sum(iif(PAG_STATUS=''P'',PAG_VALOR,0)) as VALORPRE '+
            'from PAGAR '+
            'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
            'left join AGRUPADORES on DES_AGRUPADOR=AGR_CODIGO '+
            'where '+Where+' '+
            'group by PAG_TIPODOCTO '+
            'order by PAG_TIPODOCTO');
          FormPagarFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormPagarFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormPagarFast.QY04.Open;
          FormPagarFast.frxReport4.Variables['TITULO']:=QuotedStr('Contas a pagar por tipo de documento sintético.');
          FormPagarFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormPagarFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormPagarFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormPagarFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormPagarFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormPagarFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormPagarFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormPagarFast.frxReport4.Variables['STATUS']:=QuotedStr('TODOS');
          FormPagarFast.frxReport4.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormPagarFast.frxReport4.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormPagarFast.frxReport4.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormPagarFast.frxReport4.Variables['CON_CODIGO']:=QuotedStr(Edit7.Text);
          FormPagarFast.frxReport4.Variables['CON_NOME']:=QuotedStr(Edit8.Text);
          FormPagarFast.frxReport4.Variables['AGR_CODIGO']:=QuotedStr(Edit5.Text);
          FormPagarFast.frxReport4.Variables['AGR_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormPagarFast.frxReport4.Variables['DES_CODIGO']:=QuotedStr(Edit3.Text);
          FormPagarFast.frxReport4.Variables['DES_DESCRICAO']:=QuotedStr(Edit4.Text);
          FormPagarFast.frxReport4.ShowReport;
          FormPagarFast.Free;
          FormPagarFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormPagarRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocDespesasBotao(Edit3,Edit4);
end;

procedure TFormPagarRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocAgrupadoresBotao(Edit5,Edit6);
end;

procedure TFormPagarRel.PngSpeedButton3Click(Sender: TObject);
begin
  LocContasBotao(Edit7,Edit8);
end;

procedure TFormPagarRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPagarRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormPagarRel.Edit1Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit1,Edit2,nil);
end;

procedure TFormPagarRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormPagarRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagarRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormPagarRel.Edit3Exit(Sender: TObject);
begin
  LocDespesasExit(Edit3,Edit4);
end;

procedure TFormPagarRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormPagarRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagarRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormPagarRel.Edit5Exit(Sender: TObject);
begin
  LocAgrupadoresExit(Edit5,Edit6);
end;

procedure TFormPagarRel.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormPagarRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagarRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormPagarRel.Edit7Exit(Sender: TObject);
begin
  LocContasExit(Edit7,Edit8);
end;

procedure TFormPagarRel.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormPagarRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormPagarRel.SpeedButton1Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormPagarRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True; //tipo docto.
          ComboBox3.Enabled:=True; //status.
          ComboBox4.Enabled:=True; //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True; //tipo docto.
          ComboBox3.Enabled:=True; //status.
          ComboBox4.Enabled:=True; //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True; //tipo docto.
          ComboBox3.Enabled:=True; //status.
          ComboBox4.Enabled:=True; //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;    //fornecedor.
          Edit3.Enabled:=True; PngSpeedButton1.Enabled:=True; //despesa.
          Edit5.Enabled:=True; PngSpeedButton2.Enabled:=True; //agrupador.
          Edit7.Enabled:=True; PngSpeedButton3.Enabled:=True; //conta.
        end;
  end;
end;

procedure TFormPagarRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
