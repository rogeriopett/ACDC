unit CalculoDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls;

type
  TFormCalculoDV = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalculoDV: TFormCalculoDV;

implementation
uses Funcoes1;
{$R *.dfm}

procedure TFormCalculoDV.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: Edit2.Text:=Modulo10(Edit1.Text);
    01: Edit2.Text:=Modulo11(Edit1.Text);
  end;
end;

procedure TFormCalculoDV.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCalculoDV.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCalculoDV.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormCalculoDV.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
end;

procedure TFormCalculoDV.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
