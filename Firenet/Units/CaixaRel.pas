unit CaixaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DB, System.UITypes,
  PngBitBtn, PngSpeedButton;

type
  TFormCaixaRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaRel: TFormCaixaRel;

implementation
uses DataMod, Funcoes1, DataModSearch, CaixaFast, FuncoesFirenet;

{$R *.dfm}

procedure TFormCaixaRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
  //localiza vendedor logado no sistema.
  Edit1.Text:=IntToStr(DM.UsuarioVendedor);
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    Edit1.Text:=IntToStr(DMS.QYVendedoresVEN_CODIGO.Value);
    Edit2.Text:=DMS.QYVendedoresVEN_NOME.Value;
  end else
  begin
    Edit1.Clear;
    Edit2.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormCaixaRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCaixaRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

procedure TFormCaixaRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCaixaRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          {$REGION 'Movimentações por vendedor analítico'}
          if Edit1.Text<>'' then Where:=' and CAI_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY01.Close;
          FormCaixaFast.QY01.SQL.Clear;
          FormCaixaFast.QY01.SQL.Add(
            'select CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, CAI_FORNECEDOR, '+
            'CAI_NUMDOCTO, CAI_ORIGEM, CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_VALOR, CAI_VENDEDOR, VEN_NOME, '+
            'iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0) as ENTRADAS, iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0) as SAIDAS from CAIXAMOV '+
            'left join VENDEDORES on CAI_VENDEDOR=VEN_CODIGO '+
            'where CAI_DATA between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, CAI_CODIGO');
          FormCaixaFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCaixaFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCaixaFast.QY01.Open;
          FormCaixaFast.frxReport1.Variables['TITULO']:=QuotedStr('Movimentações por vendedor analítico');
          FormCaixaFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCaixaFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCaixaFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport1.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
    01: begin
          {$REGION 'Movimentações por vendedor sintético'}
          if Edit1.Text<>'' then Where:=' and CAI_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY02.Close;
          FormCaixaFast.QY02.SQL.Clear;
          FormCaixaFast.QY02.SQL.Add(
            'select CAI_VENDEDOR, VEN_NOME, VEN_SALDOATUAL, CAI_TIPODOCTO, '+
            'sum(iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0)) as ENTRADAS, '+
            'sum(iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0)) as SAIDAS, '+
            'sum(iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0)) - sum(iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0)) as DIFERENCA '+
            'from CAIXAMOV '+
            'left join VENDEDORES on CAI_VENDEDOR=VEN_CODIGO '+
            'where CAI_DATA between :datainicial and :datafinal '+Where+' '+
            'group by CAI_VENDEDOR, VEN_NOME, VEN_SALDOATUAL, CAI_TIPODOCTO '+
            'order by CAI_VENDEDOR, VEN_NOME, VEN_SALDOATUAL, CAI_TIPODOCTO');
          FormCaixaFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCaixaFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCaixaFast.QY02.Open;
          FormCaixaFast.frxReport2.Variables['TITULO']:=QuotedStr('Movimentações por vendedor sintético');
          FormCaixaFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport2.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCaixaFast.frxReport2.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCaixaFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport2.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
    02: begin
          {$REGION 'Movimentações por conta analítico'}
          if Edit1.Text<>'' then Where:=Where+' and CAI_VENDEDOR='+QuotedStr(Edit1.Text);
          if Edit4.Text<>'' then Where:=Where+' and CAI_CONTA='+QuotedStr(Edit3.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY03.Close;
          FormCaixaFast.QY03.SQL.Clear;
          FormCaixaFast.QY03.SQL.Add(
            'select CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, '+
            'CAI_FORNECEDOR, CAI_NUMDOCTO, CAI_ORIGEM, CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_VALOR, '+
            'CAI_VENDEDOR, CON_NOME, VEN_NOME, iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0) as ENTRADAS, '+
            'iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0) as SAIDAS from CAIXAMOV '+
            'left join VENDEDORES on CAI_VENDEDOR=VEN_CODIGO '+
            'left join CONTAS on CAI_CONTA=CON_CODIGO '+
            'where CAI_DATA between :datainicial and :datafinal '+Where+' '+
            'order by CON_NOME, CAI_CODIGO');
          FormCaixaFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCaixaFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCaixaFast.QY03.Open;
          FormCaixaFast.frxReport3.Variables['TITULO']:=QuotedStr('Movimentações por conta analítico');
          FormCaixaFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport3.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCaixaFast.frxReport3.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCaixaFast.frxReport3.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport3.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport3.Variables['CON_CODIGO']:=QuotedStr(Edit3.Text);
          FormCaixaFast.frxReport3.Variables['CON_NOME']:=QuotedStr(Edit4.Text);
          FormCaixaFast.frxReport3.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
    03: begin
          {$REGION 'Saldos por vendedor'}
          if Edit1.Text<>'' then Where:=' where VEN_CODIGO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY04.Close;
          FormCaixaFast.QY04.SQL.Clear;
          FormCaixaFast.QY04.SQL.Add(
            'select VEN_CODIGO, VEN_NOME, VEN_SALDOATUAL from VENDEDORES '+Where+' order by VEN_NOME');
          FormCaixaFast.QY04.Open;
          FormCaixaFast.frxReport4.Variables['TITULO']:=QuotedStr('Saldos por vendedor');
          FormCaixaFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport4.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport4.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport4.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
    04: begin
          {$REGION 'Totais por tipo de documento'}
          if Edit1.Text<>'' then Where:=' and CAI_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY05.Close;
          FormCaixaFast.QY05.SQL.Clear;
          FormCaixaFast.QY05.SQL.Add(
            'select CAI_TIPODOCTO, sum(iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0)) as ENTRADAS, '+
            'sum(iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0)) as SAIDAS, '+
            'sum(iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0)) - sum(iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0)) as DIFERENCA from CAIXAMOV '+
            'where CAI_DATA between :datainicial and :datafinal '+Where+' '+
            'group by CAI_TIPODOCTO order by CAI_TIPODOCTO');
          FormCaixaFast.QY05.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCaixaFast.QY05.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCaixaFast.QY05.Open;
          FormCaixaFast.frxReport5.Variables['TITULO']:=QuotedStr('Totais por tipo de documento.');
          FormCaixaFast.frxReport5.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport5.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport5.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport5.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport5.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport5.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport5.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
    05: begin
          {$REGION 'Movimentações analítico'}
          if Edit1.Text<>'' then Where:=' and CAI_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormCaixaFast, FormCaixaFast);
          FormCaixaFast.QY06.Close;
          FormCaixaFast.QY06.SQL.Clear;
          FormCaixaFast.QY06.SQL.Add(
            'select CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, CAI_DATA, CAI_ENTRADASAIDA, CAI_FORNECEDOR, CAI_NUMDOCTO, '+
            'CAI_ORIGEM, CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_VALOR, CAI_VENDEDOR, VEN_NOME, FOR_NOME, '+
            'iif(CAI_ENTRADASAIDA=''E'',CAI_VALOR,0) as ENTRADAS, iif(CAI_ENTRADASAIDA=''S'',CAI_VALOR,0) as SAIDAS from CAIXAMOV '+
            'left join VENDEDORES on CAI_VENDEDOR=VEN_CODIGO '+
            'left join FORNECEDORES on CAI_FORNECEDOR=FOR_CODIGO '+
            'where CAI_DATA between :datainicial and :datafinal '+Where+' '+
            'order by CAI_CODIGO');
          FormCaixaFast.QY06.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormCaixaFast.QY06.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormCaixaFast.QY06.Open;
          FormCaixaFast.frxReport6.Variables['TITULO']:=QuotedStr('Movimentações analítico');
          FormCaixaFast.frxReport6.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormCaixaFast.frxReport6.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormCaixaFast.frxReport6.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormCaixaFast.frxReport6.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormCaixaFast.frxReport6.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormCaixaFast.frxReport6.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormCaixaFast.frxReport6.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormCaixaFast.frxReport6.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormCaixaFast.frxReport6.ShowReport;
          FormCaixaFast.Free;
          FormCaixaFast:=nil;
          {$ENDREGION}
        end;
  end; //case.
end;

procedure TFormCaixaRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=True;  PngSpeedButton1.Enabled:=True;
        end;
    03: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    04: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
    05: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;  SpeedButton1.Enabled:=True;
          Edit3.Enabled:=False; PngSpeedButton1.Enabled:=False;
        end;
  end;
end;

procedure TFormCaixaRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCaixaRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormCaixaRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormCaixaRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormCaixaRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixaRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormCaixaRel.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormCaixaRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormCaixaRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCaixaRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

end.
