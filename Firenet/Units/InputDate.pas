unit InputDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Buttons, ExtCtrls, PngBitBtn, System.UITypes;

type
  TFormInputDate = class(TForm)
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    MonthCalendar1: TMonthCalendar;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel2: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1Click(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputDate: TFormInputDate;
  Retorno: Boolean = False;
implementation
uses DataMod;
{$R *.dfm}

procedure TFormInputDate.FormCreate(Sender: TObject);
begin
  Retorno:=False;
  MaskEdit1.Text:=DateToStr(Date,FS);
  MonthCalendar1.Date:=DM.ServerDate;
end;

procedure TFormInputDate.MonthCalendar1Click(Sender: TObject);
begin
  MaskEdit1.Text:=DateToStr(MonthCalendar1.Date,FS);
end;

procedure TFormInputDate.MonthCalendar1DblClick(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFormInputDate.BitBtn2Click(Sender: TObject);
begin
  Retorno:=False;
  Close;
end;

procedure TFormInputDate.BitBtn1Click(Sender: TObject);
begin
  try
    StrToDate(MaskEdit1.Text,FS);
  except on exception do
    begin
      MessageDlg('Data inválida.',mtError,[mbOk],0);
      MaskEdit1.SetFocus;
      MaskEdit1.SelectAll;
      Exit;
    end;
  end;
  Retorno:=True;
  Close;
end;

procedure TFormInputDate.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  MaskEdit1.Clear;
  if Key=#13 then
  Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFormInputDate.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Retorno:=False;
    Close;
  end;
end;

end.
