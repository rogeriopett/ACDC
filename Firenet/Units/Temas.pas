unit Temas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, PngImageList;

type
  TFormTemas = class(TForm)
    ComboBox1: TComboBox;
    Label1: TLabel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngImageCollection1: TPngImageCollection;
    Image1: TImage;
    Bevel1: TBevel;
    Label2: TLabel;
    DBText1: TDBText;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTemas: TFormTemas;

implementation
uses Vcl.Themes, DataMod;
{$R *.dfm}

procedure TFormTemas.ComboBox1Change(Sender: TObject);
begin
  Image1.Picture.Assign(PngImageCollection1.Items[ComboBox1.ItemIndex].PngImage);
end;

procedure TFormTemas.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(DM.TBUsuariosUSU_TEMA.Value);
  if ComboBox1.ItemIndex < 0 then
  ComboBox1.ItemIndex:=0;
  ComboBox1Change(Self);
end;

procedure TFormTemas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTemas.PngBitBtn1Click(Sender: TObject);
var Tema: String;
begin
  Tema:=Copy(ComboBox1.Text,6,Length(ComboBox1.Text));
  if TStyleManager.TrySetStyle(Tema) then
  begin
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_TEMA.Value:=ComboBox1.Text;
    DM.TBUsuarios.Post;
  end;
end;

procedure TFormTemas.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

initialization
  RegisterClass(TFormTemas);

finalization
  UnRegisterClass(TFormTemas);

end.
