unit InputFloat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormInputFloat = class(TForm)
    Label1: TLabel;
    Bevel1: TBevel;
    ImageDollar: TImage;
    ImagePercent: TImage;
    Edit1: TEdit;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputFloat: TFormInputFloat;

implementation

{$R *.dfm}

procedure TFormInputFloat.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if not CharInSet(Key,['0'..'9',#8,#13,#44,#45]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

end.
