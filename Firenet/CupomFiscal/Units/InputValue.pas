unit InputValue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons, PngBitBtn;

type
  TFormInputValue = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    ImageDollar: TImage;
    ImagePercent: TImage;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputValue: TFormInputValue;

implementation

{$R *.dfm}

procedure TFormInputValue.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13,#44,#46]) then Key:=#0;
  if Key=#46 then Key:=#44;
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
