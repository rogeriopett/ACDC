unit SegurosRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, Vcl.Mask, PngBitBtn, Vcl.ExtCtrls;

type
  TFormSegurosRel = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label15: TLabel;
    ComboBox4: TComboBox;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    ComboBox3: TComboBox;
    ComboBox5: TComboBox;
    Label9: TLabel;
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
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSegurosRel: TFormSegurosRel;

implementation
uses DataMod, DataMod2, Funcoes1, DataModSearch, SegurosFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosRel.BitBtn1Click(Sender: TObject);
var Where, Order: String;
begin
  Where:='';
  Order:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Seguros no período'}
          if ComboBox2.Text='EMISSAO' then
          begin
            Where:=' SEG_DTEMISSAO between :datainicial and :datafinal ';
            Order:=' SEG_DTEMISSAO, CLI_NOME';
          end else
          if ComboBox2.Text='CADASTRO' then
          begin
            Where:=' SEG_DTCADASTRO between :datainicial and :datafinal ';
            Order:=' SEG_DTCADASTRO, CLI_NOME';
          end else
          if ComboBox2.Text='INICIO' then
          begin
            Where:=' SEG_DTINICIO between :datainicial and :datafinal ';
            Order:=' SEG_DTINICIO, CLI_NOME';
          end else
          if ComboBox2.Text='TERMINO' then
          begin
            Where:=' SEG_DTTERMINO between :datainicial and :datafinal ';
            Order:=' SEG_DTTERMINO, CLI_NOME';
          end else
          if ComboBox2.Text='LEMBRETE' then
          begin
            Where:=' SEG_DTLEMBRETE between :datainicial and :datafinal ';
            Order:=' SEG_DTLEMBRETE, CLI_NOME';
          end;
          if Edit2.Text<>'' then Where:=Where+' and SEG_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and SEG_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and SEG_SEGURADORA='+QuotedStr(Edit5.Text);
          if ComboBox4.Text='PROPOSTAS' then Where:=Where+' and SEG_STATUS=''P''' else
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and SEG_STATUS=''I''' else
          if ComboBox4.Text='APOLICES' then Where:=Where+' and SEG_STATUS=''A''' else
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and SEG_STATUS=''C''';
          Application.CreateForm(TFormSegurosFast, FormSegurosFast);
          FormSegurosFast.QY01.Close;
          FormSegurosFast.QY01.SQL.Clear;
          FormSegurosFast.QY01.SQL.Add(
            'select SEG_CODIGO, SEG_CLIENTE, SEG_DTCADASTRO, SEG_DTEMISSAO, SEG_DTINICIO, SEG_DTTERMINO, SEG_SEGURADORA, SEG_STATUS, SEG_VALORTOTAL, '+
            'SEG_VENDEDOR, CLI_NOME, FOR_NOME, VEN_NOME from SEGUROS '+
            'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on SEG_VENDEDOR=VEN_CODIGO '+
            'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
            'where '+Where+' '+
            'order by '+Order);
          FormSegurosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormSegurosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormSegurosFast.QY01.Open;
          FormSegurosFast.frxReport1.Variables['TITULO']:=QuotedStr('Seguros no período.');
          FormSegurosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormSegurosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormSegurosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormSegurosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormSegurosFast.frxReport1.Variables['DATA']:=QuotedStr(ComboBox2.Text);
          FormSegurosFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormSegurosFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormSegurosFast.frxReport1.Variables['STATUS']:=QuotedStr(ComboBox4.Text);
          FormSegurosFast.frxReport1.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormSegurosFast.frxReport1.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormSegurosFast.frxReport1.Variables['FOR_CODIGO']:=QuotedStr(Edit5.Text);
          FormSegurosFast.frxReport1.Variables['FOR_NOME']:=QuotedStr(Edit6.Text);
          FormSegurosFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormSegurosFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormSegurosFast.frxReport1.ShowReport;
          FormSegurosFast.Free;
          FormSegurosFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Seguros por Seguradora'}
          Where:='';
          Order:='';
          if ComboBox2.Text='EMISSAO' then
          begin
            Where:=' SEG_DTEMISSAO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTEMISSAO, CLI_NOME';
          end else
          if ComboBox2.Text='CADASTRO' then
          begin
            Where:=' SEG_DTCADASTRO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTCADASTRO, CLI_NOME';
          end else
          if ComboBox2.Text='INICIO' then
          begin
            Where:=' SEG_DTINICIO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTINICIO, CLI_NOME';
          end else
          if ComboBox2.Text='TERMINO' then
          begin
            Where:=' SEG_DTTERMINO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTTERMINO, CLI_NOME';
          end else
          if ComboBox2.Text='LEMBRETE' then
          begin
            Where:=' SEG_DTLEMBRETE between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTLEMBRETE, CLI_NOME';
          end;
          if Edit2.Text<>'' then Where:=Where+' and SEG_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and SEG_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and SEG_SEGURADORA='+QuotedStr(Edit5.Text);
          if ComboBox4.Text='PROPOSTAS' then Where:=Where+' and SEG_STATUS=''P''' else
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and SEG_STATUS=''I''' else
          if ComboBox4.Text='APOLICES' then Where:=Where+' and SEG_STATUS=''A''' else
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and SEG_STATUS=''C''';
          Application.CreateForm(TFormSegurosFast, FormSegurosFast);
          FormSegurosFast.QY02.Close;
          FormSegurosFast.QY02.SQL.Clear;
          FormSegurosFast.QY02.SQL.Add(
            'select SEG_CODIGO, SEG_CLIENTE, SEG_DTCADASTRO, SEG_DTEMISSAO, SEG_DTINICIO, SEG_DTTERMINO, SEG_SEGURADORA, SEG_STATUS, SEG_VALORTOTAL, '+
            'SEG_VENDEDOR, CLI_NOME, FOR_NOME, VEN_NOME from SEGUROS '+
            'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on SEG_VENDEDOR=VEN_CODIGO '+
            'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
            'where '+Where+' '+
            'order by '+Order);
          FormSegurosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormSegurosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormSegurosFast.QY02.Open;
          FormSegurosFast.frxReport2.Variables['TITULO']:=QuotedStr('Seguros por seguradora.');
          FormSegurosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormSegurosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormSegurosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormSegurosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormSegurosFast.frxReport2.Variables['DATA']:=QuotedStr(ComboBox2.Text);
          FormSegurosFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormSegurosFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormSegurosFast.frxReport2.Variables['STATUS']:=QuotedStr(ComboBox4.Text);
          FormSegurosFast.frxReport2.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormSegurosFast.frxReport2.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormSegurosFast.frxReport2.Variables['FOR_CODIGO']:=QuotedStr(Edit5.Text);
          FormSegurosFast.frxReport2.Variables['FOR_NOME']:=QuotedStr(Edit6.Text);
          FormSegurosFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormSegurosFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormSegurosFast.frxReport2.ShowReport;
          FormSegurosFast.Free;
          FormSegurosFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Seguros por Vendedor'}
          Where:='';
          Order:='';
          if ComboBox2.Text='EMISSAO' then
          begin
            Where:=' SEG_DTEMISSAO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTEMISSAO, CLI_NOME';
          end else
          if ComboBox2.Text='CADASTRO' then
          begin
            Where:=' SEG_DTCADASTRO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTCADASTRO, CLI_NOME';
          end else
          if ComboBox2.Text='INICIO' then
          begin
            Where:=' SEG_DTINICIO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTINICIO, CLI_NOME';
          end else
          if ComboBox2.Text='TERMINO' then
          begin
            Where:=' SEG_DTTERMINO between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTTERMINO, CLI_NOME';
          end else
          if ComboBox2.Text='LEMBRETE' then
          begin
            Where:=' SEG_DTLEMBRETE between :datainicial and :datafinal ';
            Order:=' FOR_NOME, SEG_DTLEMBRETE, CLI_NOME';
          end;
          if Edit2.Text<>'' then Where:=Where+' and SEG_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and SEG_CLIENTE='+QuotedStr(Edit3.Text);
          if Edit6.Text<>'' then Where:=Where+' and SEG_SEGURADORA='+QuotedStr(Edit5 .Text);
          if ComboBox4.Text='PROPOSTAS' then Where:=Where+' and SEG_STATUS=''P''' else
          if ComboBox4.Text='INUTILIZADAS' then Where:=Where+' and SEG_STATUS=''I''' else
          if ComboBox4.Text='APOLICES' then Where:=Where+' and SEG_STATUS=''A''' else
          if ComboBox4.Text='CANCELADAS' then Where:=Where+' and SEG_STATUS=''C''';
          Application.CreateForm(TFormSegurosFast, FormSegurosFast);
          FormSegurosFast.QY03.Close;
          FormSegurosFast.QY03.SQL.Clear;
          FormSegurosFast.QY03.SQL.Add(
            'select SEG_CODIGO, SEG_CLIENTE, SEG_DTCADASTRO, SEG_DTEMISSAO, SEG_DTINICIO, SEG_DTTERMINO, SEG_SEGURADORA, SEG_STATUS, SEG_VALORTOTAL, '+
            'SEG_VENDEDOR, CLI_NOME, FOR_NOME, VEN_NOME from SEGUROS '+
            'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on SEG_VENDEDOR=VEN_CODIGO '+
            'left join FORNECEDORES on SEG_SEGURADORA=FOR_CODIGO '+
            'where '+Where+' '+
            'order by '+Order);
          FormSegurosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormSegurosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormSegurosFast.QY03.Open;
          FormSegurosFast.frxReport3.Variables['TITULO']:=QuotedStr('Seguros por seguradora.');
          FormSegurosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormSegurosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormSegurosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormSegurosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormSegurosFast.frxReport3.Variables['DATA']:=QuotedStr(ComboBox2.Text);
          FormSegurosFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormSegurosFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormSegurosFast.frxReport3.Variables['STATUS']:=QuotedStr(ComboBox4.Text);
          FormSegurosFast.frxReport3.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormSegurosFast.frxReport3.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormSegurosFast.frxReport3.Variables['FOR_CODIGO']:=QuotedStr(Edit5.Text);
          FormSegurosFast.frxReport3.Variables['FOR_NOME']:=QuotedStr(Edit6.Text);
          FormSegurosFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormSegurosFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormSegurosFast.frxReport3.ShowReport;
          FormSegurosFast.Free;
          FormSegurosFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Comissões no período.'}
          Where:='';
          Order:='';
          if ComboBox3.Text='VENCIMENTO' then
          begin
            Where:=' SGP_DTVENCIMENTO between :datainicial and :datafinal ';
            Order:=' VEN_NOME, SGP_DTVENCIMENTO, CLI_NOME';
          end else
          if ComboBox3.Text='PAGAMENTO' then
          begin
            Where:=' SGP_DTPAGAMENTO between :datainicial and :datafinal ';
            Order:=' VEN_NOME, SGP_DTPAGAMENTO, CLI_NOME';
          end else
          if ComboBox3.Text='RECEBIMENTO' then
          begin
            Where:=' SGP_DTRECEBIMENTO between :datainicial and :datafinal ';
            Order:=' VEN_NOME, SGP_DTRECEBIMENTO, CLI_NOME';
          end;
          if Edit2.Text<>'' then Where:=Where+' and SEG_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and SEG_CLIENTE='+QuotedStr(Edit3.Text);
          if ComboBox5.Text='ABERTAS' then Where:=Where+' and SGP_STATUS=''A''' else
          if ComboBox5.Text='BAIXADAS' then Where:=Where+' and SGP_STATUS=''B''';
          Application.CreateForm(TFormSegurosFast, FormSegurosFast);
          FormSegurosFast.QY04.Close;
          FormSegurosFast.QY04.SQL.Clear;
          FormSegurosFast.QY04.SQL.Add(
            'select SGP_CODIGO, SGP_COMISSAOVENDEDOR, SGP_DTPAGAMENTO, SGP_DTRECEBIMENTO, SGP_DTVENCIMENTO, '+
            'SGP_PARCELA, SGP_STATUS, SGP_VALOR, SGP_SEGURO, SEG_CLIENTE, SEG_CODIGO, SEG_VENDEDOR, CLI_NOME, VEN_NOME '+
            'from SEGUROSPARCELAS '+
            'left join SEGUROS on SGP_SEGURO=SEG_CODIGO '+
            'left join CLIENTES on SEG_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on SEG_VENDEDOR=VEN_CODIGO '+
            'where '+Where+' '+
            'order by '+Order);
          FormSegurosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormSegurosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormSegurosFast.QY04.Open;
          FormSegurosFast.frxReport4.Variables['TITULO']:=QuotedStr('Comissões no perído.');
          FormSegurosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormSegurosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormSegurosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormSegurosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormSegurosFast.frxReport4.Variables['DATA']:=QuotedStr(ComboBox2.Text);
          FormSegurosFast.frxReport4.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormSegurosFast.frxReport4.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormSegurosFast.frxReport4.Variables['STATUS']:=QuotedStr(ComboBox5.Text);
          FormSegurosFast.frxReport4.Variables['CLI_CODIGO']:=QuotedStr(Edit3.Text);
          FormSegurosFast.frxReport4.Variables['CLI_NOME']:=QuotedStr(Edit4.Text);
          FormSegurosFast.frxReport4.Variables['FOR_CODIGO']:=QuotedStr(Edit5.Text);
          FormSegurosFast.frxReport4.Variables['FOR_NOME']:=QuotedStr(Edit6.Text);
          FormSegurosFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormSegurosFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormSegurosFast.frxReport4.ShowReport;
          FormSegurosFast.Free;
          FormSegurosFast:=nil;
          {$ENDREGION}
        end;
  end;
end;

procedure TFormSegurosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormSegurosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormSegurosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit5.Enabled:=True; PngSpeedButton1.Enabled:=True;
          ComboBox2.Enabled:=True;
          ComboBox4.Enabled:=True;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
        end;
    01: begin
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit5.Enabled:=True; PngSpeedButton1.Enabled:=True;
          ComboBox2.Enabled:=True;
          ComboBox4.Enabled:=True;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
        end;
    02: begin
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit5.Enabled:=True; PngSpeedButton1.Enabled:=True;
          ComboBox2.Enabled:=True;
          ComboBox4.Enabled:=True;
          ComboBox3.Enabled:=False;
          ComboBox5.Enabled:=False;
        end;
    03: begin
          Edit3.Enabled:=True; SpeedButton2.Enabled:=True;
          Edit1.Enabled:=True; SpeedButton1.Enabled:=True;
          Edit5.Enabled:=False; PngSpeedButton1.Enabled:=False;
          ComboBox2.Enabled:=False;
          ComboBox4.Enabled:=False;
          ComboBox3.Enabled:=True;
          ComboBox5.Enabled:=True;
        end;
  end;
end;

procedure TFormSegurosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormSegurosRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormSegurosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormSegurosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSegurosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormSegurosRel.Edit3Exit(Sender: TObject);
begin
  LocClientesExit(Edit3,Edit4);
end;

procedure TFormSegurosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormSegurosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSegurosRel.Edit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormSegurosRel.Edit5Exit(Sender: TObject);
begin
  LocFornecedoresExit(Edit5,Edit6,nil);
end;

procedure TFormSegurosRel.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormSegurosRel.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormSegurosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  ComboBox3.ItemIndex:=0;
  ComboBox4.ItemIndex:=0;
  ComboBox5.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  ComboBox1Change(Self);
end;

procedure TFormSegurosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSegurosRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocFornecedoresBotao(Edit5,Edit6,nil);
end;

procedure TFormSegurosRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

procedure TFormSegurosRel.SpeedButton2Click(Sender: TObject);
begin
  LocClientesBotao(Edit3,Edit4);
end;

end.
