unit VeiculosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, PngBitBtn;

type
  TFormVeiculosRel = class(TForm)
    Label24: TLabel;
    ComboBox1: TComboBox;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn3: TPngBitBtn;
    ComboBox2: TComboBox;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosRel: TFormVeiculosRel;

implementation
uses VeiculosQ01, Funcoes1;

{$R *.dfm}

procedure TFormVeiculosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVeiculosRel.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVeiculosRel.FormCreate(Sender: TObject);
begin
  ComboBox2.ItemIndex:=0;
  ComboBox1.ItemIndex:=0;
  ComboBox2Change(Self);
end;

procedure TFormVeiculosRel.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVeiculosRel.ComboBox2Change(Sender: TObject);
begin
  case ComboBox2.ItemIndex of
    00: begin
          ComboBox1.Enabled:=False;
        end;
    01: begin
          ComboBox1.Enabled:=True;
        end;
  end;
end;

end.
