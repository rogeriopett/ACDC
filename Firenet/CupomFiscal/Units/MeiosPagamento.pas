unit MeiosPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, PngBitBtn, pngimage;

type
  TFormMeiosPagamento = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMeiosPagamento: TFormMeiosPagamento;

implementation
uses PAF;
{$R *.dfm}

procedure TFormMeiosPagamento.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
end;

procedure TFormMeiosPagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMeiosPagamento.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormMeiosPagamento.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormMeiosPagamento.PngBitBtn1Click(Sender: TObject);
begin
  PAF.MeiosPagamento(MaskEdit1.Text,MaskEdit2.Text);
  Close;
end;

procedure TFormMeiosPagamento.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
