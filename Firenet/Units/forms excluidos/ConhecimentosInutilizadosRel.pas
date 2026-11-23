unit ConhecimentosInutilizadosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, Mask, ExtCtrls;

type
  TFormConhecimentosInutilizadosRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosInutilizadosRel: TFormConhecimentosInutilizadosRel;

implementation
uses DataMod, FuncoesFirenet, Funcoes1, ConhecimentosInutilizadosQ01;
{$R *.dfm}

procedure TFormConhecimentosInutilizadosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormConhecimentosInutilizadosQ01, FormConhecimentosInutilizadosQ01);
          FormConhecimentosInutilizadosQ01.QRLabel1.Caption:='Inutilizações de CTe entre '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormConhecimentosInutilizadosQ01.IBQuery1.Close;
          FormConhecimentosInutilizadosQ01.IBQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormConhecimentosInutilizadosQ01.IBQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormConhecimentosInutilizadosQ01.IBQuery1.Open;
          FormConhecimentosInutilizadosQ01.QuickRep1.PreviewModal;
          FormConhecimentosInutilizadosQ01.Free;
          FormConhecimentosInutilizadosQ01:=nil;
        end;
  end;
end;

procedure TFormConhecimentosInutilizadosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosInutilizadosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConhecimentosInutilizadosRel.ComboBox1Change(Sender: TObject);
begin
  //nothing
end;

procedure TFormConhecimentosInutilizadosRel.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox1.ItemIndex:=0;
end;

procedure TFormConhecimentosInutilizadosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
