unit ReceberRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, ExtCtrls, PngBitBtn, PngSpeedButton, System.UITypes;

type
  TFormReceberRel = class(TForm)
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
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    MaskEdit3: TMaskEdit;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    ComboBox2: TComboBox;
    BitBtn3: TPngBitBtn;
    PngSpeedButton1: TPngSpeedButton;
    Label8: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label9: TLabel;
    ComboBox3: TComboBox;
    Label10: TLabel;
    ComboBox4: TComboBox;
    PngBitBtn1: TPngBitBtn;
    PngSpeedButton2: TPngSpeedButton;
    Label11: TLabel;
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
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure Edit7Exit(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberRel: TFormReceberRel;

implementation
uses Funcoes1, DataMod, ReceberLoc, DataModSearch, ReceberFast, Agrupadores, FuncoesFirenet, frxClass;
{$R *.dfm}

procedure TFormReceberRel.FormCreate(Sender: TObject);
begin
  ComboBox4.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox1.ItemIndex:=0;
  ComboBox1.OnChange(self); //dispara o evento onchange.
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  MaskEdit3.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormReceberRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormReceberRel.PngBitBtn1Click(Sender: TObject);
var Where, Where2, Order, CampoData: String;
begin
  Where:='';
  Where2:='';
  Order:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Contas a receber por cliente - Retrato.'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';

          if ComboBox4.Text='EMISSAO' then Order:=' order by CLI_NOME, REE_DTEMISSAO, REE_CODIGO' else
          if ComboBox4.Text='PAGAMENTO' then Order:=' order by CLI_NOME, REE_DTPAGAMENTO, REE_CODIGO' else
          if ComboBox4.Text='VENCIMENTO' then Order:=' order by CLI_NOME, REE_DTVENCIMENTO, REE_CODIGO';

          if ComboBox3.Text='ABERTAS' then Where:=Where+' and REE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY12.Close;
          FormReceberFast.QY12.SQL.Clear;
          FormReceberFast.QY12.SQL.Add(
            'select REE_CLIENTE, REE_CODIGO, REE_CONTA, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_NUMDOCTO, REE_RECEITA, '+
            'REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDA, REE_VENDEDOR, CLI_NOME from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'where '+Where+' '+Order);
          FormReceberFast.QY12.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY12.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY12.Open;
          FormReceberFast.frxReport12.Variables['TITULO']:=QuotedStr('Contas a Receber por cliente - Retrato.');
          FormReceberFast.frxReport12.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport12.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport12.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport12.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport12.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormReceberFast.frxReport12.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport12.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport12.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport12.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport12.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport12.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport12.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport12.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport12.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport12.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Contas a receber por cliente - Paisagem.'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';

          if ComboBox4.Text='EMISSAO' then Order:=' order by CLI_NOME, REE_DTEMISSAO, REE_CODIGO' else
          if ComboBox4.Text='PAGAMENTO' then Order:=' order by CLI_NOME, REE_DTPAGAMENTO, REE_CODIGO' else
          if ComboBox4.Text='VENCIMENTO' then Order:=' order by CLI_NOME, REE_DTVENCIMENTO, REE_CODIGO';

          if ComboBox3.Text='ABERTAS' then Where:=Where+' and REE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY01.Close;
          FormReceberFast.QY01.SQL.Clear;
          FormReceberFast.QY01.SQL.Add(
            'select REE_CLIENTE, REE_CODIGO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, '+
            'REE_NUMDOCTO, REE_RECEITA, REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDEDOR, '+
            'CLI_NOME, REC_DESCRICAO, VEN_NOME from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join VENDEDORES on REE_VENDEDOR=VEN_CODIGO '+
            'where '+Where+' '+Order);
          FormReceberFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY01.Open;
          FormReceberFast.frxReport1.Variables['TITULO']:=QuotedStr('Contas a Receber por cliente - Paisagem.');
          FormReceberFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormReceberFast.frxReport1.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport1.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport1.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport1.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport1.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport1.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Contas a receber por data.'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and REE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;

          Application.CreateForm(TFormReceberFast, FormReceberFast);

          if ComboBox4.Text='EMISSAO' then
          begin
            Where2:=' order by REE_DTEMISSAO, CLI_NOME, REE_CODIGO desc';
            TfrxGroupHeader(FormReceberFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."REE_DTEMISSAO">';
          end else
          if ComboBox4.Text='PAGAMENTO' then
          begin
            Where2:=' order by REE_DTPAGAMENTO, CLI_NOME, REE_CODIGO desc';
            TfrxGroupHeader(FormReceberFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."REE_DTPAGAMENTO">';
          end else
          if ComboBox4.Text='VENCIMENTO' then
          begin
            Where2:=' order by REE_DTVENCIMENTO, CLI_NOME, REE_CODIGO desc';
            TfrxGroupHeader(FormReceberFast.frxReport9.FindObject('GroupHeader1')).Condition:='<frxDBDataset9."REE_DTVENCIMENTO">';
          end;

          FormReceberFast.QY09.Close;
          FormReceberFast.QY09.SQL.Clear;
          FormReceberFast.QY09.SQL.Add(
            'select REE_CLIENTE, REE_CODIGO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, '+
            'REE_NUMDOCTO, REE_RECEITA, REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDEDOR, '+
            'CLI_NOME, REC_DESCRICAO, VEN_NOME, '+
            'datediff(day,REE_DTEMISSAO,:dataatual) as DIASEMISSAO, '+
            'datediff(day,REE_DTPAGAMENTO,:dataatual) as DIASPAGAMENTO, '+
            'datediff(day,REE_DTVENCIMENTO,:dataatual) as DIASVENCIMENTO from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join VENDEDORES on REE_VENDEDOR=VEN_CODIGO '+
            'where '+Where+' '+Where2);
          FormReceberFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY09.ParamByName('dataatual').AsDate:=Date;
          FormReceberFast.QY09.Open;
          FormReceberFast.frxReport9.Variables['TITULO']:=QuotedStr('Contas a receber por data.');
          FormReceberFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport9.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormReceberFast.frxReport9.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport9.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport9.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport9.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport9.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport9.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport9.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport9.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Contas a receber por data sintético.'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;

          if ComboBox4.Text='EMISSAO' then Where2:=' REE_DTEMISSAO as CAMPODATA,' else
          if ComboBox4.Text='PAGAMENTO' then Where2:=' REE_DTPAGAMENTO as CAMPODATA,' else
          if ComboBox4.Text='VENCIMENTO' then Where2:=' REE_DTVENCIMENTO as CAMPODATA,';

          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY10.Close;
          FormReceberFast.QY10.SQL.Clear;
          FormReceberFast.QY10.SQL.Add(
            'select '+Where2+' '+
            'sum(iif(REE_STATUS=''A'',REE_VALOR,0)) as VALORABERTO, '+
            'sum(iif(REE_STATUS=''C'',REE_VALOR,0)) as VALORCANCELADO, '+
            'sum(iif(REE_STATUS=''B'',REE_VALOR,0)) as VALORORIGINAL, '+
            'sum(iif(REE_STATUS=''B'',REE_VALORPAGO,0)) as VALORPAGO, '+
            'sum(iif(REE_STATUS=''P'',REE_VALOR,0)) as VALORPRE '+
            'from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where '+Where+' '+
            'group by 1'+
            'order by 1');
          FormReceberFast.QY10.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY10.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY10.Open;
          FormReceberFast.frxReport10.Variables['TITULO']:=QuotedStr('Contas a receber por data sintético.');
          FormReceberFast.frxReport10.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport10.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport10.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport10.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport10.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport10.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport10.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport10.Variables['STATUS']:=QuotedStr('TODOS');
          FormReceberFast.frxReport10.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport10.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport10.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport10.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport10.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport10.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport10.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport10.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport10.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport10.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Contas a receber por receita analítico'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and REE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY11.Close;
          FormReceberFast.QY11.SQL.Clear;
          FormReceberFast.QY11.SQL.Add(
            'select REE_CLIENTE, REE_CODIGO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, '+
            'REE_NUMDOCTO, REE_RECEITA, REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDA, REE_VENDEDOR, '+
            'CLI_NOME, REC_DESCRICAO, VEN_NOME from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join VENDEDORES on REE_VENDEDOR=VEN_CODIGO '+
            'where '+Where+' '+
            'order by REC_DESCRICAO, CLI_NOME, REE_CODIGO desc');
          FormReceberFast.QY11.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY11.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY11.Open;
          FormReceberFast.frxReport11.Variables['TITULO']:=QuotedStr('Contas a Receber por receita.');
          FormReceberFast.frxReport11.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport11.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport11.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport11.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport11.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport11.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport11.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport11.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormReceberFast.frxReport11.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport11.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport11.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport11.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport11.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport11.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport11.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport11.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport11.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport11.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Contas a receber por receita sintético'}
          if ComboBox4.Text='EMISSAO' then Where:=' and REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' and REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' and REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          if Edit6.Text<>'' then Where2:=' where REC_CODIGO='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY03.Close;
          FormReceberFast.QY03.SQL.Clear;
          FormReceberFast.QY03.SQL.Add(
            'select A.REC_CODIGO, A.REC_DESCRICAO, '+

            '(select sum(REE_VALOR) from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where REE_STATUS=''A'' and REE_RECEITA=A.REC_CODIGO '+Where+') as VALORABERTO, '+

            '(select sum(REE_VALOR) from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where REE_STATUS=''C'' and REE_RECEITA=A.REC_CODIGO '+Where+') as VALORCANCELADO, '+

            '(select sum(REE_VALOR) from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where REE_STATUS=''B'' and REE_RECEITA=A.REC_CODIGO '+Where+') as VALORORIGINAL, '+

            '(select sum(REE_VALORPAGO) from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where REE_STATUS=''B'' and REE_RECEITA=A.REC_CODIGO '+Where+') as VALORPAGO, '+

            '(select sum(REE_VALOR) from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where REE_STATUS=''P'' and REE_RECEITA=A.REC_CODIGO '+Where+') as VALORPRE '+

            'from RECEITAS A '+Where2+' '+
            'order by A.REC_DESCRICAO');
          FormReceberFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY03.Open;
          FormReceberFast.frxReport3.Variables['TITULO']:=QuotedStr('Contas a receber por receita sintético.');
          FormReceberFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport3.Variables['STATUS']:=QuotedStr('TODOS');
          FormReceberFast.frxReport3.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport3.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport3.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport3.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport3.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport3.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Contas a receber por tipo de documento sintético.'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY04.Close;
          FormReceberFast.QY04.SQL.Clear;
          FormReceberFast.QY04.SQL.Add(
            'select REE_TIPODOCTO, '+
            'sum(iif(REE_STATUS=''A'',REE_VALOR,0)) as VALORABERTO, '+
            'sum(iif(REE_STATUS=''C'',REE_VALOR,0)) as VALORCANCELADO, '+
            'sum(iif(REE_STATUS=''B'',REE_VALOR,0)) as VALORORIGINAL, '+
            'sum(iif(REE_STATUS=''B'',REE_VALORPAGO,0)) as VALORPAGO, '+
            'sum(iif(REE_STATUS=''P'',REE_VALOR,0)) as VALORPRE '+
            'from RECEBER '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join AGRUPADORES on REC_AGRUPADOR=AGR_CODIGO '+
            'where '+Where+' '+
            'group by REE_TIPODOCTO '+
            'order by REE_TIPODOCTO');
          FormReceberFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY04.Open;
          FormReceberFast.frxReport4.Variables['TITULO']:=QuotedStr('Contas a receber por tipo de documento sintético.');
          FormReceberFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport4.Variables['STATUS']:=QuotedStr('TODOS');
          FormReceberFast.frxReport4.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport4.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport4.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport4.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport4.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport4.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Contas a receber por vendedor'}
          if ComboBox4.Text='EMISSAO' then Where:=' REE_DTEMISSAO between :datainicial and :datafinal' else
          if ComboBox4.Text='PAGAMENTO' then Where:=' REE_DTPAGAMENTO between :datainicial and :datafinal' else
          if ComboBox4.Text='VENCIMENTO' then Where:=' REE_DTVENCIMENTO between :datainicial and :datafinal';
          if ComboBox3.Text='ABERTAS' then Where:=Where+' and REE_STATUS='+QuotedStr('A') else
          if ComboBox3.Text='BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('B') else
          if ComboBox3.Text='CANCELADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('C') else
          if ComboBox3.Text='PRE BAIXADAS' then Where:=Where+' and REE_STATUS='+QuotedStr('P');
          if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY05.Close;
          FormReceberFast.QY05.SQL.Clear;
          FormReceberFast.QY05.SQL.Add(
            'select REE_CLIENTE, REE_CODIGO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, '+
            'REE_NUMDOCTO, REE_RECEITA, REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDEDOR, '+
            'CLI_NOME, REC_DESCRICAO, VEN_NOME from RECEBER '+
            'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
            'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
            'left join VENDEDORES on REE_VENDEDOR=VEN_CODIGO '+
            'where '+Where+' '+
            'order by VEN_NOME, REE_CODIGO desc');
          FormReceberFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY05.Open;
          FormReceberFast.frxReport5.Variables['TITULO']:=QuotedStr('Contas a Receber por vendedor');
          FormReceberFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport5.Variables['DATA']:=QuotedStr(ComboBox4.Text);
          FormReceberFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox3.Text);
          FormReceberFast.frxReport5.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport5.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport5.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport5.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport5.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport5.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport5.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport5.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
    08: begin
          {$REGION 'Contas a receber por vendedor sintético'}
          if ComboBox2.Text<>'TODOS' then Where:=Where+' REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
          if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
          if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
          if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
          if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
          Application.CreateForm(TFormReceberFast, FormReceberFast);
          FormReceberFast.QY02.Close;
          FormReceberFast.QY02.SQL.Clear;
          FormReceberFast.QY02.SQL.Add(
            'select R.REE_CLIENTE, R.REE_VENDEDOR, C.CLI_NOME, V.VEN_NOME, sum(REE_VALOR) as VALOR, '+

            '(select first(1) A.REE_DTVENCIMENTO from RECEBER A where A.REE_DTVENCIMENTO between :datainicial and :datafinal '+
            'and A.REE_STATUS=''A'' and A.REE_CLIENTE=R.REE_CLIENTE order by A.REE_DTVENCIMENTO) as VENCIMENTOANTIGO, '+

            '(select first(1) A.REE_DTVENCIMENTO from RECEBER A where A.REE_DTVENCIMENTO between :datainicial and :datafinal '+
            'and A.REE_STATUS=''A'' and A.REE_CLIENTE=R.REE_CLIENTE order by A.REE_DTVENCIMENTO desc) as VENCIMENTONOVO '+

            'from RECEBER R '+
            'left join CLIENTES C on R.REE_CLIENTE=C.CLI_CODIGO '+
            'left join VENDEDORES V on R.REE_VENDEDOR=V.VEN_CODIGO '+
            'left join RECEITAS E on R.REE_RECEITA=E.REC_CODIGO '+
            'left join AGRUPADORES G on E.REC_AGRUPADOR=G.AGR_CODIGO '+
            'where R.REE_DTVENCIMENTO between :datainicial and :datafinal '+Where+' '+
            'group by R.REE_CLIENTE, R.REE_VENDEDOR, C.CLI_NOME, V.VEN_NOME '+
            'order by V.VEN_NOME, C.CLI_NOME');
          FormReceberFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormReceberFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormReceberFast.QY02.Open;
          FormReceberFast.frxReport2.Variables['TITULO']:=QuotedStr('Contas a Receber por vendedor sintético');
          FormReceberFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormReceberFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormReceberFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormReceberFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormReceberFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormReceberFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormReceberFast.frxReport2.Variables['DATA']:=QuotedStr('VENCIMENTO');
          FormReceberFast.frxReport2.Variables['STATUS']:=QuotedStr('ABERTAS');
          FormReceberFast.frxReport2.Variables['TIPODOCTO']:=QuotedStr(ComboBox2.Text);
          FormReceberFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit1.Text);
          FormReceberFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit2.Text);
          FormReceberFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit3.Text);
          FormReceberFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit4.Text);
          FormReceberFast.frxReport2.Variables['AGR_CODIGO']:=QuotedStr(Edit7.Text);
          FormReceberFast.frxReport2.Variables['AGR_DESCRICAO']:=QuotedStr(Edit8.Text);
          FormReceberFast.frxReport2.Variables['REC_CODIGO']:=QuotedStr(Edit5.Text);
          FormReceberFast.frxReport2.Variables['REC_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormReceberFast.frxReport2.ShowReport;
          FormReceberFast.Free;
          FormReceberFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormReceberRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocReceitasBotao(Edit5,Edit6);
end;

procedure TFormReceberRel.PngSpeedButton2Click(Sender: TObject);
begin
  LocAgrupadoresBotao(Edit7,Edit8);
end;

procedure TFormReceberRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormReceberRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberRel.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormReceberRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormReceberRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberRel.SpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormReceberRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=True;  //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    01: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=True;  //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    02: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=True;  //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    03: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    04: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    05: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    06: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=False; //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    07: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=True;  //status.
          ComboBox4.Enabled:=True;  //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
    08: begin
          ComboBox2.Enabled:=True;  //tipo docto.
          ComboBox3.Enabled:=True;  //status.
          ComboBox4.Enabled:=False; //data.
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;    //cliente.
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;    //vendedor.
          Edit5.Enabled:=True;  PngSpeedButton1.Enabled:=True; //receita.
          Edit7.Enabled:=True;  PngSpeedButton2.Enabled:=True; //agrupador.
          MaskEdit3.Enabled:=False;
        end;
  end;
end;

procedure TFormReceberRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormReceberRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormReceberRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberRel.Edit5Exit(Sender: TObject);
begin
  LocReceitasExit(Edit5,Edit6);
end;

procedure TFormReceberRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormReceberRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberRel.Edit7Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormReceberRel.Edit7Exit(Sender: TObject);
begin
  LocAgrupadoresExit(Edit7,Edit8)
end;

procedure TFormReceberRel.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormReceberRel.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormReceberRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

procedure TFormReceberRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
