unit FeriadosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, PngBitBtn;

type
  TFormFeriadosRel = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFeriadosRel: TFormFeriadosRel;

implementation
uses DataMod, FeriadosFast, Funcoes1;

{$R *.dfm}

procedure TFormFeriadosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormFeriadosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormFeriadosFast, FormFeriadosFast);
          FormFeriadosFast.QY01.Close;
          FormFeriadosFast.QY01.SQL.Clear;
          FormFeriadosFast.QY01.SQL.Add('select * from FERIADOS where FRD_DATA between :datainicial and :datafinal order by FRD_DATA');
          FormFeriadosFast.QY01.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormFeriadosFast.QY01.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormFeriadosFast.QY01.Open;
          FormFeriadosFast.frxReport1.Variables['TITULO']:=QuotedStr('Feriados');
          FormFeriadosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
          FormFeriadosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
          FormFeriadosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
          FormFeriadosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
          FormFeriadosFast.frxReport1.ShowReport;
          FormFeriadosFast.Free;
          FormFeriadosFast:=nil;
        end;
  end;
end;

procedure TFormFeriadosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormFeriadosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormFeriadosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

end.
