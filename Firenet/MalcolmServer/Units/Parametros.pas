unit Parametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.StdCtrls, PngBitBtn, Vcl.ExtCtrls;

type
  TFormParametros = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    FileOpenDialog1: TFileOpenDialog;
    PngBitBtn1: TPngBitBtn;
    Edit3: TEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    Label4: TLabel;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    ComboBox3: TComboBox;
    Label9: TLabel;
    ComboBox4: TComboBox;
    Label10: TLabel;
    Edit6: TEdit;
    PngSpeedButton3: TPngSpeedButton;
    Label11: TLabel;
    Edit7: TEdit;
    Label12: TLabel;
    ComboBox5: TComboBox;
    Label13: TLabel;
    ComboBox6: TComboBox;
    Label14: TLabel;
    ComboBox7: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParametros: TFormParametros;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormParametros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PastaEstoque:=Edit6.Text;
  PastaReq:=Edit1.Text;
  PastaResp:=Edit2.Text;
  Servidor:=Edit7.Text;
  LocalBase:=Edit3.Text;
  TempoAtualizacao:=Edit4.Text;
  SenhaSYSDBA:=Edit5.Text;
  IniciaAoAbrir:=ComboBox1.Text;
  LayoutNFCe:=ComboBox7.Text;
  MovimentarEstoque:=ComboBox2.Text;
  MovimentarFinanceiro:=ComboBox3.Text;
  GerarBlocoX:=ComboBox4.Text;
  ProdutosAtivos:=ComboBox6.Text;
  ProdutosTipoServico:=ComboBox5.Text;
  DM.Variaveis('SAVE');
end;

procedure TFormParametros.FormCreate(Sender: TObject);
begin
  Edit1.Text:=PastaReq;
  Edit2.Text:=PastaResp;
  Edit3.Text:=LocalBase;
  Edit4.Text:=TempoAtualizacao;
  Edit5.Text:=SenhaSYSDBA;
  Edit6.Text:=PastaEstoque;
  Edit7.Text:=Servidor;

  if IniciaAoAbrir='S' then
  ComboBox1.ItemIndex:=0 else
  ComboBox1.ItemIndex:=1;

  if MovimentarEstoque='S' then
  ComboBox2.ItemIndex:=0 else
  ComboBox2.ItemIndex:=1;

  if MovimentarFinanceiro='S' then
  ComboBox3.ItemIndex:=0 else
  ComboBox3.ItemIndex:=1;

  if GerarBlocoX='S' then
  ComboBox4.ItemIndex:=0 else
  ComboBox4.ItemIndex:=1;

  if ProdutosTipoServico='S' then
  ComboBox5.ItemIndex:=0 else
  ComboBox5.ItemIndex:=1;

  if ProdutosAtivos='S' then
  ComboBox6.ItemIndex:=0 else
  ComboBox6.ItemIndex:=1;

  if LayoutNFCe='S' then
  ComboBox7.ItemIndex:=0 else
  ComboBox7.ItemIndex:=1;
end;

procedure TFormParametros.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormParametros.PngSpeedButton1Click(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  Edit1.Text:=FileOpenDialog1.FileName;
end;

procedure TFormParametros.PngSpeedButton2Click(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  Edit2.Text:=FileOpenDialog1.FileName;
end;

procedure TFormParametros.PngSpeedButton3Click(Sender: TObject);
begin
  if FileOpenDialog1.Execute then
  Edit6.Text:=FileOpenDialog1.FileName;
end;

end.
