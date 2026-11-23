unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, PngBitBtn;

type
  TFormConfig = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TPngBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    BitBtn5: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    OpenDialog1: TOpenDialog;
    procedure BitBtn4Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfig: TFormConfig;

implementation

uses Main;

{$R *.dfm}

procedure TFormConfig.BitBtn1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit2.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormConfig.BitBtn2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit4.Text:=OpenDialog1.FileName;
  end;
end;

procedure TFormConfig.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConfig.BitBtn5Click(Sender: TObject);
begin
  if Edit2.Text=Edit4.Text then
  begin
    MessageDlg('A base de dados de origem e destino não pode ser a mesma.',mtWarning,[mbOk],0);
    Exit;
  end;

  DB_ORIGEM:=Edit2.Text;
  SV_ORIGEM:=Edit1.Text;
  if RadioButton1.Checked then
  TP_ORIGEM:='Local' else
  TP_ORIGEM:='Remoto';

  DB_DESTINO:=Edit4.Text;
  SV_DESTINO:=Edit3.Text;
  if RadioButton3.Checked then
  TP_DESTINO:='Local' else
  TP_DESTINO:='Remoto';

  FormMain.Variaveis('SAVE');
  Close;
end;

procedure TFormConfig.FormCreate(Sender: TObject);
begin
  Edit2.Text:=DB_ORIGEM;
  Edit1.Text:=SV_ORIGEM;
  if TP_ORIGEM<>'Local' then
  RadioButton2.Checked:=True else
  RadioButton1.Checked:=True;

  Edit4.Text:=DB_DESTINO;
  Edit3.Text:=SV_DESTINO;
  if TP_DESTINO<>'Local' then
  RadioButton4.Checked:=True else
  RadioButton3.Checked:=True;
end;

procedure TFormConfig.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  Close;
end;

procedure TFormConfig.RadioButton1Click(Sender: TObject);
begin
  Edit1.Enabled:=False;
  Edit1.ReadOnly:=True;
end;

procedure TFormConfig.RadioButton2Click(Sender: TObject);
begin
  Edit1.Enabled:=True;
  Edit1.ReadOnly:=False;
end;

procedure TFormConfig.RadioButton3Click(Sender: TObject);
begin
  Edit3.Enabled:=False;
  Edit3.ReadOnly:=True;
end;

procedure TFormConfig.RadioButton4Click(Sender: TObject);
begin
  Edit3.Enabled:=True;
  Edit3.ReadOnly:=False;
end;

end.
