unit InputBlob;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls;

type
  TFormInputBlob = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Memo1: TMemo;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputBlob: TFormInputBlob;
  Retorno: String;

implementation

{$R *.dfm}

procedure TFormInputBlob.BitBtn1Click(Sender: TObject);
begin
  if Memo1.Text='' then
  begin
    MessageDlg(Label1.Caption,mtError,[mbOk],0);
    Exit;
  end;
  Retorno:=Memo1.Text;
  Close;
end;

procedure TFormInputBlob.BitBtn2Click(Sender: TObject);
begin
  Retorno:='';
  Close;
end;

procedure TFormInputBlob.FormCreate(Sender: TObject);
begin
  Retorno:='';
  Memo1.Lines.Clear;
end;

end.
