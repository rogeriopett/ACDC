unit NfceAvisos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls;

type
  TFormNfceAvisos = class(TForm)
    Panel1: TPanel;
    PngBitBtn1: TPngBitBtn;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Timer2: TTimer;
    Label3: TLabel;
    PngBitBtn2: TPngBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TempoAtual: Integer;
    TempoMax: Integer;
    Imprimir: Boolean;
  end;

var
  FormNfceAvisos: TFormNfceAvisos;

implementation

{$R *.dfm}

procedure TFormNfceAvisos.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
    Timer1.Enabled:=True;
    Timer2.Enabled:=True;
  end else
  begin
    Timer1.Enabled:=False;
    Timer2.Enabled:=False;
    CheckBox1.Caption:='Fechar esta mensagem automaticamente.'
  end;
end;

procedure TFormNfceAvisos.FormCreate(Sender: TObject);
begin
  Label1.Caption:='';
  Label2.Caption:='';
  TempoAtual:=0;
  Imprimir:=False;
end;

procedure TFormNfceAvisos.FormShow(Sender: TObject);
begin
  if Imprimir then
  begin
    PngBitBtn1.Default:=True;
    PngBitBtn2.Default:=False;
    PngBitBtn1.SetFocus;
  end else
  begin
    PngBitBtn1.Default:=False;
    PngBitBtn2.Default:=True;
    PngBitBtn2.SetFocus;
  end;
  Timer1.Interval:=TempoMax*1000; //em segundos.
  Timer1.Enabled:=True;
  Timer2.Enabled:=True;
  CheckBox1.Caption:='Fechar esta mensagem automaticamente em '+IntToStr(TempoMax-TempoAtual)+'...';
end;

procedure TFormNfceAvisos.PngBitBtn1Click(Sender: TObject);
begin
  Imprimir:=True;
  Timer1.Enabled:=False;
  Close;
end;

procedure TFormNfceAvisos.PngBitBtn2Click(Sender: TObject);
begin
  Imprimir:=False;
  Timer1.Enabled:=False;
  Close;
end;

procedure TFormNfceAvisos.Timer1Timer(Sender: TObject);
begin
  if CheckBox1.Checked then
  Close;
end;

procedure TFormNfceAvisos.Timer2Timer(Sender: TObject);
begin
  Inc(TempoAtual);
  CheckBox1.Caption:='Fechar esta mensagem automaticamente em '+IntToStr(TempoMax-TempoAtual)+'...';
  Application.ProcessMessages;
end;

end.
