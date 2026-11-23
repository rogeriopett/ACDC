unit Zap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.Mask, PngSpeedButton;

type
  TFormZap = class(TForm)
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    MemoMensagem: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    EditAnexo1: TEdit;
    Label3: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    OpenDialog1: TOpenDialog;
    Label4: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    EditAnexo2: TEdit;
    Label5: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    EditAnexo3: TEdit;
    EditNumero: TEdit;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure EditNumeroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZap: TFormZap;

implementation
uses FuncoesZap, FuncoesFirenet, DataMod, Funcoes1, VendasFast;

{$R *.dfm}

procedure TFormZap.EditNumeroChange(Sender: TObject);
begin
  FormatarTelefone(Sender as TEdit);
end;

procedure TFormZap.FormCreate(Sender: TObject);
var Numero: String;
begin
  EditNumero.Text:='';
  EditAnexo1.Text:='';
  EditAnexo2.Text:='';
  EditAnexo3.Text:='';
  MemoMensagem.Lines.Clear;
end;

procedure TFormZap.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormZap.PngBitBtn1Click(Sender: TObject);
begin
  try
    //metodo com o FIREZAP EnviarZap(EditNumero.Text,MemoMensagem.Text,EditAnexo1.Text);
    EnviarZapi(EditNumero.Text,MemoMensagem.Text,EditAnexo1.Text);

    if EditAnexo2.Text<>'' then
    begin
      Sleep(200);
      EnviarZapi(EditNumero.Text,'',EditAnexo2.Text);
    end;

    if EditAnexo3.Text<>'' then
    begin
      Sleep(200);
      EnviarZapi(EditNumero.Text,'',EditAnexo3.Text);
    end;

    Close;
  except on Exception do
    MessageDlg('Erro ao enviar mensagem.',mtError,[mbOk],0);
  end;
end;

procedure TFormZap.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormZap.PngSpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  EditAnexo1.Text:=OpenDialog1.FileName;
end;

procedure TFormZap.PngSpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  EditAnexo2.Text:=OpenDialog1.FileName;
end;

procedure TFormZap.PngSpeedButton3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  EditAnexo3.Text:=OpenDialog1.FileName;
end;

end.
