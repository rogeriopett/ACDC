unit VendasZap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.Mask, PngSpeedButton;

type
  TFormVendasZap = class(TForm)
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    Label3: TLabel;
    SpeedButton1: TPngSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasZap: TFormVendasZap;

implementation
uses FuncoesZap, FuncoesFirenet, DataMod, Funcoes1, VendasFast;

{$R *.dfm}

procedure TFormVendasZap.FormCreate(Sender: TObject);
var Numero: String;
begin
  Numero:=SoNumeros(DM.TBVendasVED_FONE1.Value);
  Delete(Numero,1,1);
  MaskEdit1.Text:=FormatarString('FONE11',Numero);
  Edit1.Text:=ExtractFilePath(Application.ExeName)+'Print\OrcamentoVenda.pdf';
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Olá... Segue seu pedido/orçamento.');
end;

procedure TFormVendasZap.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormVendasZap.PngBitBtn1Click(Sender: TObject);
begin
  try
    EnviarZap(MaskEdit1.Text,Memo1.Text,Edit1.Text);
    Close;
  except on Exception do
    MessageDlg('Erro ao enviar mensagem.',mtError,[mbOk],0);
  end;
end;

procedure TFormVendasZap.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendasZap.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  Edit1.Text:=OpenDialog1.FileName;
end;

end.
