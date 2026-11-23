unit EspelhoMFD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, PngBitBtn, pngimage;

type
  TFormEspelhoMFD = class(TForm)
    Bevel1: TBevel;
    Image1: TImage;
    RadioGroup2: TRadioGroup;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEspelhoMFD: TFormEspelhoMFD;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormEspelhoMFD.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormEspelhoMFD.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormEspelhoMFD.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(Date);
  MaskEdit2.Text:=DateToStr(Date);
end;

procedure TFormEspelhoMFD.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEspelhoMFD.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormEspelhoMFD.MaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormEspelhoMFD.PngBitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Deseja gerar o arquivo MFD - Memória Fita Detalhe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    case RadioGroup2.ItemIndex of
      00: DM.ACBrECF.EspelhoMFD_DLL(StrToDateTime(MaskEdit1.Text),StrToDateTime(MaskEdit2.Text),'EspelhoMFD.txt');
      01: DM.ACBrECF.EspelhoMFD_DLL(StrToInt(Edit1.Text),StrToInt(Edit2.Text),'EspelhoMFD.txt');
    end;
  end;
end;

procedure TFormEspelhoMFD.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEspelhoMFD.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    00: begin;
          Panel1.Enabled:=True;
          Panel1.BevelOuter:=bvRaised;
          Panel2.Enabled:=False;
          Panel2.BevelOuter:=bvLowered;
        end;
    01: begin
          Panel1.Enabled:=False;
          Panel1.BevelOuter:=bvLowered;
          Panel2.Enabled:=True;
          Panel2.BevelOuter:=bvRaised;
        end;
  end;
end;

end.
