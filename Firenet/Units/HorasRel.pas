unit HorasRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Data.DB,
  Vcl.Mask, PngSpeedButton, Vcl.ExtCtrls, System.UITypes;

type
  TFormHorasRel = class(TForm)
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
    BitBtn3: TPngBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorasRel: TFormHorasRel;

implementation
uses DataMod, Funcoes1, DataModSearch, HorasFast, FuncoesFirenet;
{$R *.dfm}

procedure TFormHorasRel.BitBtn1Click(Sender: TObject);
var Where: String;
begin
  Where:='';
  case ComboBox1.ItemIndex of
    00: begin
          if Edit1.Text<>'' then Where:='where VEN_CODIGO='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormHorasFast, FormHorasFast);
          FormHorasFast.QY01.Close;
          FormHorasFast.QY01.SQL.Clear;
          FormHorasFast.QY01.SQL.Add(
            'select VEN_CODIGO, VEN_NOME, VEN_SALDOHORAS from VENDEDORES '+Where+' order by VEN_NOME');
          FormHorasFast.QY01.Open;
          FormHorasFast.frxReport1.Variables['TITULO']:=QuotedStr('Banco de horas por vendedor');
          FormHorasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormHorasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormHorasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormHorasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormHorasFast.frxReport1.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormHorasFast.frxReport1.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormHorasFast.frxReport1.ShowReport;
          FormHorasFast.Free;
          FormHorasFast:=nil;

        end;
    01: begin
          if Edit1.Text<>'' then Where:=' and HOR_VENDEDOR='+QuotedStr(Edit1.Text);
          Application.CreateForm(TFormHorasFast, FormHorasFast);
          FormHorasFast.QY02.Close;
          FormHorasFast.QY02.SQL.Clear;
          FormHorasFast.QY02.SQL.Add(
            'select HOR_CODIGO, HOR_DESCRICAO, HOR_DTCADASTRO, HOR_QUANTIDADE, HOR_SALDOANTERIOR, HOR_SALDOPOSTERIOR, '+
            'HOR_TRANSACAO, HOR_VENDEDOR, VEN_NOME, VEN_SALDOHORAS from HORAS '+
            'left join VENDEDORES on HOR_VENDEDOR=VEN_CODIGO '+
            'where HOR_DTCADASTRO between :datainicial and :datafinal '+Where+' order by VEN_NOME, HOR_CODIGO desc');
          FormHorasFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormHorasFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormHorasFast.QY02.Open;
          FormHorasFast.frxReport2.Variables['TITULO']:=QuotedStr('Histórico de horas');
          FormHorasFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormHorasFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormHorasFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormHorasFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormHorasFast.frxReport2.Variables['VEN_CODIGO']:=QuotedStr(Edit1.Text);
          FormHorasFast.frxReport2.Variables['VEN_NOME']:=QuotedStr(Edit2.Text);
          FormHorasFast.frxReport2.ShowReport;
          FormHorasFast.Free;
          FormHorasFast:=nil;
        end;
  end;
end;

procedure TFormHorasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormHorasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormHorasRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
          Edit1.Enabled:=True;
          SpeedButton1.Enabled:=True;
        end;
  end;
end;

procedure TFormHorasRel.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormHorasRel.Edit1Exit(Sender: TObject);
begin
  LocVendedoresExit(Edit1,Edit2,nil);
end;

procedure TFormHorasRel.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormHorasRel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormHorasRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormHorasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormHorasRel.SpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(Edit1,Edit2,nil);
end;

end.
