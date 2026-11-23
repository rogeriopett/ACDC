unit ManifestacoesConcluir;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormManifestacoesConcluir = class(TForm)
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label24: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormManifestacoesConcluir: TFormManifestacoesConcluir;
  Concluir: Boolean = False;

implementation

{$R *.dfm}

uses NFe_Util_2G_TLB;

procedure TFormManifestacoesConcluir.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormManifestacoesConcluir.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: Edit1.Enabled:=False;
    01: Edit1.Enabled:=False;
    02: Edit1.Enabled:=True;
  end;
end;

procedure TFormManifestacoesConcluir.FormCreate(Sender: TObject);
begin
  Concluir:=False;
  ComboBox1.ItemIndex:=0;
  Edit1.Enabled:=False;
end;

procedure TFormManifestacoesConcluir.PngBitBtn1Click(Sender: TObject);
begin
  if (ComboBox1.ItemIndex=2) and (Edit1.Text='') then
  begin
    MessageDlg('Digite uma justificativa.',mtWarning,[mbOk],0);
    Exit;
  end;

  Concluir:=True;
  Close;
end;

end.
