unit MesAno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn;

type
  TFormMesAno = class(TForm)
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMesAno: TFormMesAno;
  ClicouOK: Boolean = False;

implementation

{$R *.dfm}

procedure TFormMesAno.FormCreate(Sender: TObject);
var I: Word;
  D,M,A: Word;
begin
  ClicouOK:=False;
  DecodeDate(Date,A,M,D);
  for I := 0 to 9 do
  ComboBox2.Items.Add(IntToStr(A-I));
  ComboBox2.ItemIndex:=0;
  ComboBox1.ItemIndex:=M-1;
end;

procedure TFormMesAno.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMesAno.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMesAno.PngBitBtn2Click(Sender: TObject);
begin
  ClicouOK:=True;
  Close;
end;

end.
