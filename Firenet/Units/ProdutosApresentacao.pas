unit ProdutosApresentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, HtmlEditor, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  PngSpeedButton;

type
  TFormProdutosApresentacao = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FrameHtmlEditor1: TFrameHtmlEditor;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBMemo1: TDBMemo;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosApresentacao: TFormProdutosApresentacao;

implementation
uses DataMod, DB;
{$R *.dfm}

procedure TFormProdutosApresentacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBProdutos.State in [dsInsert, dsEdit] then
  begin
    DM.TBProdutos.Post;;
  end;
end;

procedure TFormProdutosApresentacao.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  FrameHtmlEditor1.InicializarFrame;
  FrameHtmlEditor1.ComboBox1Change(Self);
  DM.DSProdutosDataChange(Self,nil); //faz carregar no editor HTML.
end;

procedure TFormProdutosApresentacao.PngSpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosApresentacao.PngSpeedButton2Click(Sender: TObject);
begin
  DM.TBProdutos.Cancel;
  Close;
end;

initialization
  RegisterClass(TFormProdutosApresentacao);

finalization
  UnRegisterClass(TFormProdutosApresentacao);

end.
