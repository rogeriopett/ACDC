unit NfceRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.Mask, PngSpeedButton, Vcl.ExtCtrls, ACBrBase, ACBrPosPrinter;

type
  TFormNfceRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label4: TLabel;
    SpeedButton1: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    Label7: TLabel;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    BitBtn3: TPngBitBtn;
    ComboBox2: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    ACBrPosPrinter1: TACBrPosPrinter;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfceRel: TFormNfceRel;

implementation
uses DataMod, NfceFast, DataModSearch, NaturezasLoc, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfceRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'NFCe por status'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFC_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY02.Active:=False;
          FormNfceFast.QY02.SQL.Clear;
          FormNfceFast.QY02.SQL.Add(
            'select NFC_CODIGO, NFC_CLIENTE, NFC_DTEMISSAO, NFC_VALORTOTAL, NFC_CHAVEACESSO, CLI_NOME, '+
            'case NFC_STATUS '+
            '  when ''A'' then ''ABERTA'''+
            '  when ''F'' then ''FINALIZADA'''+
            '  when ''C'' then ''CANCELADA'''+
            '  when ''I'' then ''INUTILIZADA'''+
            'end as NFC_STATUS from NFCE '+
            'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFC_STATUS, NFC_DTEMISSAO, NFC_CODIGO desc');
          FormNfceFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY02.Open;
          FormNfceFast.frxReport2.Variables['TITULO']:=QuotedStr('NFCe por status');
          FormNfceFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfceFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfceFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfceFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfceFast.frxReport2.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfceFast.frxReport2.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfceFast.frxReport2.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'NFCe ordenado por código'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFC_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY03.Active:=False;
          FormNfceFast.QY03.SQL.Clear;
          FormNfceFast.QY03.SQL.Add(
            'select NFC_CODIGO, NFC_CLIENTE, NFC_DTEMISSAO, NFC_VALORTOTAL, '+
            'NFC_CHAVEACESSO, CLI_NOME, NFC_STATUS from NFCE '+
            'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFC_CODIGO desc');
          FormNfceFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY03.Open;
          FormNfceFast.frxReport3.Variables['TITULO']:=QuotedStr('NFCe ordenado por código');
          FormNfceFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfceFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfceFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfceFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfceFast.frxReport3.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfceFast.frxReport3.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfceFast.frxReport3.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'NFCe com itens'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFC_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY04.Active:=False;
          FormNfceFast.QY04.SQL.Clear;
          FormNfceFast.QY04.SQL.Add(
            'select NFC_CODIGO, NFC_CLIENTE, NFC_DTEMISSAO, NFC_NOME, NFC_TOTALCOFINS, NFC_TOTALICMS, '+
            'NFC_TOTALICMSST, NFC_TOTALIPI, NFC_TOTALPIS, NFC_VALORTOTAL from NFCE '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFC_STATUS, NFC_DTEMISSAO, NFC_CODIGO desc');
          FormNfceFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY04.Open;
          FormNfceFast.QY04a.Open;
          FormNfceFast.frxReport4.Variables['TITULO']:=QuotedStr('NFCe com itens');
          FormNfceFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfceFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfceFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfceFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfceFast.frxReport4.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfceFast.frxReport4.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfceFast.frxReport4.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'NFCe por CFOP'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NFC_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY05.Active:=False;
          FormNfceFast.QY05.SQL.Clear;
          FormNfceFast.QY05.SQL.Add(
            'select NFC_CODIGO, NFC_CLIENTE, NFC_DESCVALOR, NFC_DTEMISSAO, NFC_VALORTOTAL, NFC_CHAVEACESSO, '+
            'NFC_STATUS, NFC_CFOP, NFC_NOME, NFC_CONDICAO, CLI_NOME, CPG_DESCRICAO, NAT_DESCRICAO from NFCE '+
            'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
            'left join CONDICOES on NFC_CONDICAO=CPG_CODIGO '+
            'left join NATUREZAS on NFC_CFOP=NAT_CODIGO '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NFC_CFOP, CLI_NOME, NFC_DTEMISSAO desc');
          FormNfceFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY05.Open;
          FormNfceFast.frxReport5.Variables['TITULO']:=QuotedStr('NFCe por CFOP');
          FormNfceFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport5.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfceFast.frxReport5.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfceFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfceFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfceFast.frxReport5.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfceFast.frxReport5.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfceFast.frxReport5.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'NFCe por CFOP dos Itens'}
          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and NCI_CFOP='+QuotedStr(Edit5.Text);
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY09.Active:=False;
          FormNfceFast.QY09.SQL.Clear;
          FormNfceFast.QY09.SQL.Add(
            'select NCI_CFOP, NCI_DESCRICAO, NCI_DESCVALOR, NCI_QUANTIDADE, NCI_PRODUTO, NCI_VALORTOTAL, CLI_NOME, '+
            'NAT_DESCRICAO, NFC_CODIGO, NFC_CLIENTE, NFC_DTEMISSAO, NFC_STATUS, NFC_NOME from NFCEITENS '+
            'left join NATUREZAS on NCI_CFOP=NAT_CODIGO '+
            'left join NFCE on NCI_NOTA=NFC_CODIGO '+
            'left join CLIENTES on NFC_CLIENTE=CLI_CODIGO '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' '+
            'order by NCI_CFOP, CLI_NOME, NCI_PRODUTO, NFC_DTEMISSAO desc');
          FormNfceFast.QY09.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY09.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY09.Open;
          FormNfceFast.frxReport9.Variables['TITULO']:=QuotedStr('NFCe por CFOP dos Itens');
          FormNfceFast.frxReport9.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport9.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport9.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport9.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport9.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport9.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport9.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport9.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormNfceFast.frxReport9.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormNfceFast.frxReport9.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormNfceFast.frxReport9.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormNfceFast.frxReport9.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
          FormNfceFast.frxReport9.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
          FormNfceFast.frxReport9.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
        //nao disponibilizado.
//    05: begin
//          {$REGION 'Recibos de NFCe'}
//          if ComboBox2.Text='ABERTAS' then Where:=' and NFC_STATUS=''A''' else
//          if ComboBox2.Text='FINALIZADAS' then Where:=' and NFC_STATUS=''F''' else
//          if ComboBox2.Text='CANCELADAS' then Where:=' and NFC_STATUS=''C''' else
//          if ComboBox2.Text='INUTILIZADAS' then Where:=' and NFC_STATUS=''I''';
//          if Edit2.Text<>'' then Where:=Where+' and NFC_VENDEDOR='+QuotedStr(Edit1.Text);
//          if Edit4.Text<>'' then Where:=Where+' and NFC_CLIENTE='+QuotedStr(Edit3.Text);
//          if Edit6.Text<>'' then Where:=Where+' and NFC_CFOP='+QuotedStr(Edit5.Text);
//          Application.CreateForm(TFormNfceFast, FormNfceFast);
//          FormNfceFast.QY06.Active:=False;
//          FormNfceFast.QY06.SQL.Clear;
//          FormNfceFast.QY06.SQL.Add(
//            'select NFC_CODIGO, NFC_CLIENTE, NFC_NOME, NFC_DTEMISSAO, NFC_VALORTOTAL, NFC_VENDEDOR, VEN_NOME from NFCE '+
//            'left join VENDEDORES on NFC_VENDEDOR=VEN_CODIGO '+
//            'where NFC_DTEMISSAO between :datainicial and :datafinal '+Where+' order by VEN_NOME, NFC_NOME, NFC_CODIGO desc');
//          FormNfceFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
//          FormNfceFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
//          FormNfceFast.QY06.Open;
//          FormNfceFast.frxReport6.Variables['TITULO']:=QuotedStr('Entrega de tickets de recibo da NFCe');
//          FormNfceFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
//          FormNfceFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
//          FormNfceFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
//          FormNfceFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
//          FormNfceFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
//          FormNfceFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
//          FormNfceFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
//          FormNfceFast.frxReport6.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
//          FormNfceFast.frxReport6.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
//          FormNfceFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
//          FormNfceFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
//          FormNfceFast.frxReport6.Variables['NAT_CODIGO']:=QuotedStr(Edit5.Text);
//          FormNfceFast.frxReport6.Variables['NAT_DESCRICAO']:=QuotedStr(Edit6.Text);
//          FormNfceFast.frxReport6.ShowReport;
//          FormNfceFast.Free;
//          FormNfceFast:=nil;
//          {$ENDREGION}
//        end;
    05: begin
          {$REGION 'Verificação de numeração'}
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY07.Active:=False;
          FormNfceFast.QY07.Open;
          FormNfceFast.CriarTabela;
          FormNfceFast.frxReport7.Variables['TITULO']:=QuotedStr('Verificação de numeração de NFCe que faltam.');
          FormNfceFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport7.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Verificação dos XMLs'}
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY06.Active:=False;
          FormNfceFast.QY06.SQL.Clear;
          FormNfceFast.QY06.SQL.Add(
            'select NFC_CHAVEACESSO, NFC_CLIENTE, NFC_CODIGO, NFC_NOME, NFC_DTEMISSAO, NFC_VALORTOTAL, '+
            'case NFC_STATUS '+
            '  when ''A'' then ''ABERTA'''+
            '  when ''F'' then ''FINALIZADA'''+
            '  when ''C'' then ''CANCELADA'''+
            '  when ''I'' then ''INUTILIZADA'''+
            'end as NFC_STATUS from NFCE '+
            'where NFC_DTEMISSAO between :datainicial and :datafinal '+
            'order by NFC_STATUS, NFC_CODIGO desc'
          );
          FormNfceFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY06.Open;
          FormNfceFast.CriarTabelaXmls;
          FormNfceFast.frxReport6.Variables['TITULO']:=QuotedStr('Verificação dos XMLs.');
          FormNfceFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormNfceFast.frxReport6.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
    07: begin
          {$REGION 'Inutilizações no período'}
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          FormNfceFast.QY08.Close;
          FormNfceFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfceFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfceFast.QY08.Open;
          FormNfceFast.frxReport8.Variables['TITULO']:=QuotedStr('Inutilizações no período.');
          FormNfceFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormNfceFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormNfceFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormNfceFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormNfceFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormNfceFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormNfceFast.frxReport8.ShowReport;
          FormNfceFast.Free;
          FormNfceFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormNfceRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfceRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfceRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    01: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    02: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    03: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
    04: begin
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
        end;
//    05: begin
//          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
//          Edit3.Enabled:=True;  SpeedButton2.Enabled:=True;
//          Edit5.Enabled:=True;  SpeedButton17.Enabled:=True;
//        end;
    05: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; SpeedButton17.Enabled:=False;
        end;
    06: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; SpeedButton17.Enabled:=False;
        end;
    07: begin
          Edit1.Enabled:=False; SpeedButton1.Enabled:=False;
          Edit3.Enabled:=False; SpeedButton2.Enabled:=False;
          Edit5.Enabled:=False; SpeedButton17.Enabled:=False;
        end;
  end;
end;

procedure TFormNfceRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfceRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormNfceRel.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfceRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfceRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfceRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormNfceRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormNfceRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfceRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormNfceRel.Edit5Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit5.Clear;
    Edit6.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      Edit5.Text:=IntToStr(DMS.QYNaturezasNAT_CODIGO.Value);
      Edit6.Text:=DMS.QYNaturezasNAT_DESCRICAO.Value;
    end else
    begin
      Edit5.Clear;
      Edit6.Clear;
      MessageDlg('CFOP não encontrada.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNfceRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfceRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfceRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormNfceRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfceRel.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    Edit5.Text:=IntToStr(FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value);
    Edit6.Text:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNfceRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormNfceRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

end.
