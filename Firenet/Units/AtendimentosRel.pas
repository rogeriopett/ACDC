unit AtendimentosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, PngBitBtn, DB, PngSpeedButton,
  System.UITypes;

type
  TFormAtendimentosRel = class(TForm)
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    SpeedButton2: TPngSpeedButton;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label7: TLabel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    Label1: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentosRel: TFormAtendimentosRel;

implementation
uses DataMod, DataMod2, Funcoes1, AtendimentosFast, DataModSearch, FuncoesFirenet;
{$R *.dfm}

procedure TFormAtendimentosRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  case ComboBox4.ItemIndex of
    00: begin
          Application.CreateForm(TFormAtendimentosFast, FormAtendimentosFast);
          FormAtendimentosFast.QY01.Close;
          FormAtendimentosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormAtendimentosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormAtendimentosFast.QY01.Open;
          FormAtendimentosFast.frxReport1.Variables['TITULO']:=QuotedStr('Aulas demo agendadas no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormAtendimentosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAtendimentosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAtendimentosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAtendimentosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAtendimentosFast.frxReport1.ShowReport;
          FormAtendimentosFast.Free;
          FormAtendimentosFast:=nil;
        end;
    01: begin
          Application.CreateForm(TFormAtendimentosFast, FormAtendimentosFast);
          FormAtendimentosFast.QY02.Close;
          FormAtendimentosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormAtendimentosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormAtendimentosFast.QY02.Open;
          FormAtendimentosFast.frxReport2.Variables['TITULO']:=QuotedStr('Testes escritos agendados no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormAtendimentosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAtendimentosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAtendimentosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAtendimentosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAtendimentosFast.frxReport2.ShowReport;
          FormAtendimentosFast.Free;
          FormAtendimentosFast:=nil;
        end;
    02: begin
          Application.CreateForm(TFormAtendimentosFast, FormAtendimentosFast);
          FormAtendimentosFast.QY03.Close;
          FormAtendimentosFast.QY03.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormAtendimentosFast.QY03.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormAtendimentosFast.QY03.Open;
          FormAtendimentosFast.frxReport3.Variables['TITULO']:=QuotedStr('Testes orais agendados no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormAtendimentosFast.frxReport3.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAtendimentosFast.frxReport3.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAtendimentosFast.frxReport3.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAtendimentosFast.frxReport3.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAtendimentosFast.frxReport3.ShowReport;
          FormAtendimentosFast.Free;
          FormAtendimentosFast:=nil;
        end;
    03: begin
          Where:='';
          if Edit4.Text<>'' then Where:=' and ATE_VENDEDOR='+Edit3.Text;
          Application.CreateForm(TFormAtendimentosFast, FormAtendimentosFast);
          FormAtendimentosFast.QY04.Close;
          FormAtendimentosFast.QY04.SQL.Clear;
          FormAtendimentosFast.QY04.SQL.Add(
            'select ATE_AULA, iif(ATE_AULA=''S'',1,0) as ATE_AULA_N, ATE_CODIGO, ATE_CLIENTE, ATE_CURSO, ATE_DTCADASTRO, '+
            'ATE_TESTEESCRITO, iif(ATE_TESTEESCRITO=''S'',1,0) as ATE_TESTEESCRITO_N, ATE_TESTEORAL, '+
            'iif(ATE_TESTEORAL=''S'',1,0) as ATE_TESTEORAL_N, ATE_VENDEDOR, CLI_NOME, CUR_DESCRICAO, VEN_NOME, '+
            'iif( (select count(*) from MATRICULAS where MAT_CLIENTE=ATE_CLIENTE and (MAT_DTCADASTRO between :datainicial and :datafinal))>0,1,0) as MATRICULADO_N, '+
            'iif( (select count(*) from MATRICULAS where MAT_CLIENTE=ATE_CLIENTE and (MAT_DTCADASTRO between :datainicial and :datafinal))>0,''S'',''N'') as MATRICULADO_S '+
            'from ATENDIMENTOS left join CLIENTES on ATE_CLIENTE=CLI_CODIGO '+
            'left join VENDEDORES on ATE_VENDEDOR=VEN_CODIGO '+
            'left join CURSOS on ATE_CURSO=CUR_CODIGO '+
            'where ATE_DTCADASTRO between :datainicial and :datafinal '+Where+' '+
            'order by VEN_NOME, CLI_NOME');
          FormAtendimentosFast.QY04.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormAtendimentosFast.QY04.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormAtendimentosFast.QY04.Open;
          FormAtendimentosFast.frxReport4.Variables['TITULO']:=QuotedStr('Atendimentos no período de '+MaskEdit1.Text+' até '+MaskEdit2.Text);
          FormAtendimentosFast.frxReport4.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormAtendimentosFast.frxReport4.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormAtendimentosFast.frxReport4.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormAtendimentosFast.frxReport4.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormAtendimentosFast.frxReport4.ShowReport;
          FormAtendimentosFast.Free;
          FormAtendimentosFast:=nil;
        end;
  end;
end;

procedure TFormAtendimentosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAtendimentosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAtendimentosRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=False;
          SpeedButton2.Enabled:=False;
          Edit1.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
        end;
    03: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit3.Enabled:=True;
          SpeedButton2.Enabled:=True;
          Edit1.Enabled:=False;
          PngSpeedButton1.Enabled:=False;
        end;
  end;
end;

procedure TFormAtendimentosRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormAtendimentosRel.Edit1Exit(Sender: TObject);
begin
  LocMailingsExit(Edit1,Edit2);
end;

procedure TFormAtendimentosRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormAtendimentosRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormAtendimentosRel.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormAtendimentosRel.Edit3Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit3,Edit4,nil);
end;

procedure TFormAtendimentosRel.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormAtendimentosRel.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormAtendimentosRel.FormCreate(Sender: TObject);
begin
  ComboBox4.ItemIndex:=0;
  ComboBox4Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
end;

procedure TFormAtendimentosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAtendimentosRel.PngSpeedButton1Click(Sender: TObject);
begin
  LocMailingsBotao(Edit1,Edit2);
end;

procedure TFormAtendimentosRel.SpeedButton2Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit3,Edit4,nil);
end;

end.
