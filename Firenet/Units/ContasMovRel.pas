unit ContasMovRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ExtCtrls, DB, PngBitBtn, PngSpeedButton;

type
  TFormContasMovRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    BitBtn3: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasMovRel: TFormContasMovRel;

implementation
uses DataMod, Funcoes1, ContasMovFast, DataModSearch, FuncoesFirenet;

{$R *.dfm}

procedure TFormContasMovRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormContasMovRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormContasMovRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormContasMovRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          if Edit2.Text<>'' then Where:=' and CMO_CONTA='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormContasMovFast, FormContasMovFast);
          FormContasMovFast.QY01.Close;
          FormContasMovFast.QY01.SQL.Clear;
          FormContasMovFast.QY01.SQL.Add(
            'select CMO_CODIGO, CMO_CONTA, CMO_DTMOVIMENTO, CMO_TIPODOCTO, CMO_NUMDOCTO, CMO_ENTRADASAIDA, '+
            'CMO_SALDOANTERIOR, CMO_SALDOPOSTERIOR, CMO_VALOR, CMO_DESCRICAO, CON_NOME, CON_SALDO from CONTASMOV '+
            'left join CONTAS on CMO_CONTA=CON_CODIGO '+
            'where CMO_DTMOVIMENTO between :datainicial and :datafinal '+Where+' '+
            'order by CON_NOME, CMO_DTMOVIMENTO desc, CMO_CODIGO desc');
          FormContasMovFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormContasMovFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormContasMovFast.QY01.Open;
          FormContasMovFast.frxReport1.Variables['TITULO']:=QuotedStr('Movimentações por conta');
          FormContasMovFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormContasMovFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormContasMovFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormContasMovFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormContasMovFast.frxReport1.Variables['DATAINICIAL']:=QuotedStr(MaskEdit1.Text);
          FormContasMovFast.frxReport1.Variables['DATAFINAL']:=QuotedStr(MaskEdit2.Text);
          FormContasMovFast.frxReport1.Variables['CON_CODIGO']:=QuotedStr(Edit1.Text);
          FormContasMovFast.frxReport1.Variables['CON_NOME']:=QuotedStr(Edit2.Text);
          FormContasMovFast.frxReport1.ShowReport;
          FormContasMovFast.Free;
          FormContasMovFast:=nil;
        end;
    01: begin
        end;
  end; //case.
end;

procedure TFormContasMovRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormContasMovRel.Edit1Exit(Sender: TObject);
begin
  LocContasExit(Edit1,Edit2);
end;

procedure TFormContasMovRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormContasMovRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormContasMovRel.SpeedButton1Click(Sender: TObject);
begin
  LocContasBotao(Edit1,Edit2);
end;

procedure TFormContasMovRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
