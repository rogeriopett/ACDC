unit RecibosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, PngBitBtn;

type
  TFormRecibosRel = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ComboBox4: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosRel: TFormRecibosRel;

implementation
uses DataMod, DataMod2, Funcoes1, RecibosFast;
{$R *.dfm}

procedure TFormRecibosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormRecibosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormRecibosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRecibosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin //Todos.
          Application.CreateForm(TFormRecibosFast, FormRecibosFast);
          FormRecibosFast.QY02.Close;
          FormRecibosFast.QY02.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormRecibosFast.QY02.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormRecibosFast.QY02.Open;
          FormRecibosFast.frxReport2.Variables['TITULO']:=QuotedStr('Recibos por usuário');
          FormRecibosFast.frxReport2.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormRecibosFast.frxReport2.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormRecibosFast.frxReport2.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormRecibosFast.frxReport2.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormRecibosFast.frxReport2.Variables['USU_LOGIN']:=QuotedStr('');
          FormRecibosFast.frxReport2.ShowReport;
          FormRecibosFast.Free;
          FormRecibosFast:=nil;
        end;
  end;
end;

procedure TFormRecibosRel.ComboBox4Change(Sender: TObject);
begin
  case ComboBox4.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
        end;
  end;
end;

procedure TFormRecibosRel.FormCreate(Sender: TObject);
begin
  ComboBox4.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

end.
