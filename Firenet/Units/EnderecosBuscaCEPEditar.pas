unit EnderecosBuscaCEPEditar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls;

type
  TFormEnderecosBuscaCEPEditar = class(TForm)
    DBEdit1: TDBEdit;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosBuscaCEPEditar: TFormEnderecosBuscaCEPEditar;

implementation

{$R *.dfm}

uses EnderecosBuscaCEP;

procedure TFormEnderecosBuscaCEPEditar.BitBtn1Click(Sender: TObject);
begin
  FormEnderecosBuscaCEP.TBRuas.Post;
  Close;
end;

procedure TFormEnderecosBuscaCEPEditar.PngBitBtn1Click(Sender: TObject);
begin
  FormEnderecosBuscaCEP.TBRuas.Cancel;
  Close;
end;

end.
