unit ComprasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Mask, ExtCtrls, PngBitBtn, PngSpeedButton,
  System.UITypes;

type
  TFormComprasRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    SpeedButton1: TPngSpeedButton;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    BitBtn3: TPngBitBtn;
    Label8: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    SpeedButton4: TPngSpeedButton;
    ComboBox2: TComboBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure Edit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit8Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasRel: TFormComprasRel;

implementation
uses DataMod, Funcoes1, DataModSearch, ComprasFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormComprasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  ComboBox2.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormComprasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComprasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Compras sintético'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and COM_FORNECEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY02.Close;
          FormComprasFast.QY02.SQL.Clear;
          FormComprasFast.QY02.SQL.Add(
            'select COM_CODIGO, COM_FORNECEDOR, COM_NOTADATA, COM_NOTANUMERO, COM_VALORTOTAL, '+
            'COM_STATUS, COM_CHAVEACESSO, COM_NOME from COMPRAS '+
            'left join FORNECEDORES on COM_FORNECEDOR=FOR_CODIGO '+
            'where COM_NOTADATA between :datainicial and :datafinal '+Where+' '+
            'order by COM_STATUS, COM_NOTADATA, COM_CODIGO desc');
          FormComprasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY02.Open;
          FormComprasFast.frxReport2.Variables['TITULO']:=QuotedStr('Compras sintético');
          FormComprasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport2.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport2.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport2.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Compras analítico'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and COM_FORNECEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY03.Close;
          FormComprasFast.QY03.SQL.Clear;
          FormComprasFast.QY03.SQL.Add(
            'select COM_CODIGO, COM_FORNECEDOR, COM_NOTADATA, COM_NOTANUMERO, COM_NOME, COM_TOTALCOFINS, COM_TOTALICMS, '+
            'COM_TOTALICMSST, COM_TOTALIPI, COM_TOTALPIS, COM_VALORTOTAL from COMPRAS '+
            'where COM_NOTADATA between :datainicial and :datafinal '+Where+' '+
            'order by COM_STATUS, COM_NOTADATA, COM_CODIGO desc');
          FormComprasFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY03.Open;
          FormComprasFast.QY03a.Open;
          FormComprasFast.frxReport3.Variables['TITULO']:=QuotedStr('Compras analítico');
          FormComprasFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport3.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport3.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport3.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Compras por fornecedor sintético'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and COM_FORNECEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY04.Close;
          FormComprasFast.QY04.SQL.Clear;
          FormComprasFast.QY04.SQL.Add(
            'select COM_FORNECEDOR, COM_DTENTRADA, sum(COM_VALORTOTAL) as TOTAL, count(COM_FORNECEDOR) as QTDE, COM_NOME from COMPRAS '+
            'where COM_DTENTRADA between :datainicial and :datafinal '+Where+' '+
            'group by COM_FORNECEDOR, COM_DTENTRADA, COM_NOME '+
            'order by COM_FORNECEDOR, COM_DTENTRADA');
          FormComprasFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY04.Open;
          FormComprasFast.frxReport4.Variables['TITULO']:=QuotedStr('Compras por fornecedor sintético');
          FormComprasFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport4.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport4.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport4.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Compras por fornecedor analítico'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit2.Text<>'' then Where:=Where+' and COM_FORNECEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY05.Close;
          FormComprasFast.QY05.SQL.Clear;
          FormComprasFast.QY05.SQL.Add(
            'select COM_CODIGO, COM_FORNECEDOR, COM_CFOP, COM_CFOPDESC, COM_DTCADASTRO, COM_VALORTOTAL, '+
            'COM_NOME, COM_CONDICAO, COM_STATUS, CPG_DESCRICAO from COMPRAS '+
            'left join CONDICOES on COM_CONDICAO=CPG_CODIGO '+
            'where COM_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by COM_NOME, COM_DTCADASTRO desc');
          FormComprasFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY05.Open;
          FormComprasFast.QY05a.Open;
          FormComprasFast.frxReport5.Variables['TITULO']:=QuotedStr('Compras por fornecedor analítico');
          FormComprasFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport5.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport5.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport5.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport5.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport5.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport5.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Compras por produto'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit9.Text<>'' then Where:=Where+'and COI_PRODUTO='+QuotedStr(Edit8.Text)+' ';
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY06.Close;
          FormComprasFast.QY06.SQL.Clear;
          //somado o IPI ao valor unitário por solicitação da Fernanda (GPAutoAr).
          FormComprasFast.QY06.SQL.Add(
            'select COI_PRODUTO, COI_DESCRICAO, COI_UNIDADE, COI_COMPRA, COI_QUANTIDADE, COI_VALORUNIT+(COI_VALORIPI/COI_QUANTIDADE) as COI_VALORUNIT, '+
            'COI_VALORTOTAL, COM_FORNECEDOR, COM_NOME, COM_VALORTOTAL, COM_DTENTRADA from COMPRASITENS '+
            'left join COMPRAS on COI_COMPRA=COM_CODIGO '+
            'where COM_DTENTRADA between :datainicial and :datafinal '+Where+
            'order by COI_DESCRICAO, COM_NOME');
          FormComprasFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY06.Open;
          FormComprasFast.frxReport6.Variables['TITULO']:=QuotedStr('Compras por produto');
          FormComprasFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport6.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport6.Variables['PRO_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport6.Variables['PRO_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport6.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Compras por produto com complemento'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit9.Text<>'' then Where:=Where+'and COI_PRODUTO='+QuotedStr(Edit8.Text)+' ';
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY08.Close;
          FormComprasFast.QY08.SQL.Clear;
          FormComprasFast.QY08.SQL.Add(
            'select COI_COMPLEMENTO, COI_DESCRICAO, COI_PRODUTO, COI_QUANTIDADE, COI_UNIDADE, COI_VALORUNIT, '+
            'COI_VALORTOTAL, COM_CODIGO, COM_DTCADASTRO, COM_NOTADATA, COM_NOTANUMERO from COMPRASITENS '+
            'left join COMPRAS on COI_COMPRA=COM_CODIGO '+
            'where COM_DTENTRADA between :datainicial and :datafinal '+Where+
            'order by COI_DESCRICAO, COM_NOTADATA desc');
          FormComprasFast.QY08.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY08.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY08.Open;
          FormComprasFast.frxReport8.Variables['TITULO']:=QuotedStr('Compras por produto com complemento');
          FormComprasFast.frxReport8.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport8.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport8.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport8.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport8.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport8.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport8.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport8.Variables['PRO_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport8.Variables['PRO_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport8.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
    06: begin
          {$REGION 'Frequência de compra'}
          if ComboBox2.Text='TODAS' then Where:='';
          if ComboBox2.Text='ABERTAS' then Where:=' and COM_STATUS=''A''';
          if ComboBox2.Text='FINALIZADAS' then Where:=' and COM_STATUS=''F''';
          if ComboBox2.Text='CANCELADAS' then Where:=' and COM_STATUS=''C''';
          if ComboBox2.Text='INUTILIZADAS' then Where:=' and COM_STATUS=''I''';
          if Edit1.Text<>'' then Where:=Where+' and COM_FORNECEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormComprasFast, FormComprasFast);
          FormComprasFast.QY07.Close;
          FormComprasFast.QY07.SQL.Clear;
          FormComprasFast.QY07.SQL.Add(
            'select COM_FORNECEDOR, FOR_NOME, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=01,COM_VALORTOTAL,0)) as JAN, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=02,COM_VALORTOTAL,0)) as FEB, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=03,COM_VALORTOTAL,0)) as MAR, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=04,COM_VALORTOTAL,0)) as APR, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=05,COM_VALORTOTAL,0)) as MAY, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=06,COM_VALORTOTAL,0)) as JUN, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=07,COM_VALORTOTAL,0)) as JUL, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=08,COM_VALORTOTAL,0)) as AUG, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=09,COM_VALORTOTAL,0)) as SEP, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=10,COM_VALORTOTAL,0)) as OCT, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=11,COM_VALORTOTAL,0)) as NOV, '+
            'sum(iif(extract(MONTH from COM_DTENTRADA)=12,COM_VALORTOTAL,0)) as DEZ, '+
            'sum(COM_VALORTOTAL) as TOTAL from COMPRAS '+
            'left join FORNECEDORES on COM_FORNECEDOR=FOR_CODIGO '+
            'where COM_DTENTRADA between :datainicial and :datafinal '+Where+' '+
            'group by COM_FORNECEDOR, FOR_NOME '+
            'order by FOR_NOME');
          FormComprasFast.QY07.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormComprasFast.QY07.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormComprasFast.QY07.Open;
          FormComprasFast.frxReport7.Variables['TITULO']:=QuotedStr('Frequência de compra');
          FormComprasFast.frxReport7.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormComprasFast.frxReport7.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormComprasFast.frxReport7.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormComprasFast.frxReport7.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormComprasFast.frxReport7.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormComprasFast.frxReport7.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormComprasFast.frxReport7.Variables['STATUS']:=QuotedStr(ComboBox2.Text);
          FormComprasFast.frxReport7.Variables['FOR_CODIGO']:=QuotedStr(Edit1.Text);
          FormComprasFast.frxReport7.Variables['FOR_NOME']:=QuotedStr(Edit2.Text);
          FormComprasFast.frxReport7.ShowReport;
          FormComprasFast.Free;
          FormComprasFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormComprasRel.Edit1Change(Sender: TObject);
begin
  if Edit1.Text='' then
  Edit2.Text:='';
end;

procedure TFormComprasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasRel.Edit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasRel.Edit8Exit(Sender: TObject);
begin
  LocProdutosExit(Edit8,Edit9);
end;

procedure TFormComprasRel.Edit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormComprasRel.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormComprasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormComprasRel.Edit1Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit1,Edit2,nil);
end;

procedure TFormComprasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormComprasRel.SpeedButton1Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormComprasRel.SpeedButton4Click(Sender: TObject);
begin
  LocProdutosBotao(Edit8,Edit9);
end;

procedure TFormComprasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormComprasRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit8.Enabled:=True;
          SpeedButton4.Enabled:=True;
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=False;
          SpeedButton1.Enabled:=False;
          Edit8.Enabled:=True;
          SpeedButton4.Enabled:=True;
        end;
    06: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
          Edit8.Enabled:=False;
          SpeedButton4.Enabled:=False;
        end;
  end;
end;

end.
