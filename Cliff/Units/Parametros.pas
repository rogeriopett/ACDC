unit Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFormParametros = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    Button2: TButton;
    Bevel1: TBevel;
    Label6: TLabel;
    Edit6: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation
uses Main;
{$R *.dfm}

procedure TFormParametros.Button1Click(Sender: TObject);
begin
  INICIAR_AO_ABRIR:=ComboBox1.Text;
  MOSTRAR_LOGS:=ComboBox2.Text;
  EXCLUIR_TEMP:=ComboBox3.Text;
  URL_SITE:=Edit6.Text;
  URL_API:=Edit1.Text;
  CHAVESECRETA:=Edit2.Text;
  ARQUIVOS_SISTEMA:=Edit3.Text;
  PRODUTOS_FOTOS:=Edit4.Text;
  PASTA_TEMP:=Edit5.Text;

  FormMain.Variaveis('SAVE');
  Close;
end;

procedure TFormParametros.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormParametros.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(INICIAR_AO_ABRIR);
  ComboBox2.ItemIndex:=ComboBox2.Items.IndexOf(MOSTRAR_LOGS);
  ComboBox3.ItemIndex:=ComboBox3.Items.IndexOf(EXCLUIR_TEMP);
  Edit6.Text:=URL_SITE;
  Edit1.Text:=URL_API;
  Edit2.Text:=CHAVESECRETA;
  Edit3.Text:=ARQUIVOS_SISTEMA;
  Edit4.Text:=PRODUTOS_FOTOS;
  Edit5.Text:=PASTA_TEMP;
end;

end.
