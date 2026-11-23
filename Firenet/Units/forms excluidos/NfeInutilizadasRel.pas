unit NfeInutilizadasRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Mask;

type
  TFormNfeInutilizadasRel = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    MaskEdit2: TMaskEdit;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeInutilizadasRel: TFormNfeInutilizadasRel;

implementation
uses DataMod, FuncoesFirenet, Funcoes1, NfeInutilizadasQ01;
{$R *.dfm}

procedure TFormNfeInutilizadasRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormNfeInutilizadasQ01, FormNfeInutilizadasQ01);
          FormNfeInutilizadasQ01.QRLabel1.Caption:='Inutilizações de NFe entre '+MaskEdit1.Text+' até '+MaskEdit2.Text;
          FormNfeInutilizadasQ01.IBQuery1.Close;
          FormNfeInutilizadasQ01.IBQuery1.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit1.Text,FS);
          FormNfeInutilizadasQ01.IBQuery1.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit2.Text,FS);
          FormNfeInutilizadasQ01.IBQuery1.Open;
          FormNfeInutilizadasQ01.QuickRep1.PreviewModal;
          FormNfeInutilizadasQ01.Free;
          FormNfeInutilizadasQ01:=nil;
        end;
  end;
end;

procedure TFormNfeInutilizadasRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeInutilizadasRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeInutilizadasRel.ComboBox1Change(Sender: TObject);
begin
  //nothing
end;

procedure TFormNfeInutilizadasRel.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit2.Text:=DateToStr(UltimoDia(Date));
  ComboBox1.ItemIndex:=0;
end;

procedure TFormNfeInutilizadasRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
