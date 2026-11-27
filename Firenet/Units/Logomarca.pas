//Atualizacoes:
//2026.11.18 - Aba Logo SVG: seleciona o arquivo .svg, mostra o preview (TImage com o TSkSvgGraphic do Vcl.Skia) e grava em EMPRESA.EMP_LOGOSVG.
unit Logomarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.ComCtrls;

type
  TFormLogomarca = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    Bevel2: TBevel;
    Image2: TImage;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
  private
    { Private declarations }
    ArquivoSVG: String; //arquivo .svg selecionado e ainda nao gravado.
    function ValidarSVG(const Arquivo: String): Boolean;
    procedure MostrarSVGGravado;
  public
    { Public declarations }
    Pasta: String;
  end;

var
  FormLogomarca: TFormLogomarca;

implementation
uses DataMod, Main, Funcoes1, System.IOUtils;
{$R *.dfm}

procedure TFormLogomarca.FormCreate(Sender: TObject);
begin
  PngBitBtn5.Enabled:=False;
end;

procedure TFormLogomarca.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormLogomarca.FormShow(Sender: TObject);
begin
  MostrarSVGGravado;
end;

//O arquivo precisa ser um SVG e nao pode ter script (o Brian e o Angus mostram essa logo no navegador).
function TFormLogomarca.ValidarSVG(const Arquivo: String): Boolean;
var Conteudo: String;
begin
  Result:=False;

  Conteudo:=LowerCase(TEncoding.UTF8.GetString(TFile.ReadAllBytes(Arquivo)));

  if Pos('<svg',Conteudo)=0 then
  begin
    MessageDlg('O arquivo informado não é um SVG válido.',mtError,[mbOk],0);
    Exit;
  end;

  if (Pos('<script',Conteudo)>0) or (Pos('javascript:',Conteudo)>0) then
  begin
    MessageDlg('O arquivo informado contém script e não pode ser usado como logomarca.',mtError,[mbOk],0);
    Exit;
  end;

  Result:=True;
end;

//Mostra a logo SVG que ja esta gravada na EMPRESA.
procedure TFormLogomarca.MostrarSVGGravado;
var Stream: TStringStream;
begin
  Image2.Picture.Assign(nil);

  if not DM.TBEmpresa.Active or DM.TBEmpresaEMP_LOGOSVG.IsNull then
  Exit;

  Stream := TStringStream.Create(DM.TBEmpresaEMP_LOGOSVG.Value, TEncoding.UTF8);
  try
    Image2.Picture.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure TFormLogomarca.PngBitBtn4Click(Sender: TObject);
var Stream: TFileStream;
begin
  if OpenDialog1.Execute then
  begin
    if not ValidarSVG(OpenDialog1.FileName) then
    Exit;

    Stream:=TFileStream.Create(OpenDialog1.FileName,fmOpenRead or fmShareDenyWrite);
    try
      Image2.Picture.LoadFromStream(Stream);
    finally
      Stream.Free;
    end;

    ArquivoSVG:=OpenDialog1.FileName;
    PngBitBtn5.Enabled:=True;
  end;
end;

procedure TFormLogomarca.PngBitBtn5Click(Sender: TObject);
begin
  if ArquivoSVG='' then
  Exit;

  if not ValidarSVG(ArquivoSVG) then
  Exit;

  //grava os bytes do arquivo como estao (LoadFromFile), sem conversao de charset.
  DM.TBEmpresa.Edit;
  DM.TBEmpresaEMP_LOGOSVG.Value:=TFile.ReadAllText(ArquivoSVG, TEncoding.UTF8);
  //DM.TBEmpresaEMP_LOGOSVG.LoadFromFile(ArquivoSVG);
  DM.TBEmpresa.Post;

  ArquivoSVG:='';
  PngBitBtn5.Enabled:=False;
  MessageDlg('Logomarca SVG gravada.',mtInformation,[mbOk],0);
  Close;
end;

procedure TFormLogomarca.PngBitBtn6Click(Sender: TObject);
begin
  Close;
end;

initialization
  RegisterClass(TFormLogomarca);

finalization
  UnRegisterClass(TFormLogomarca);

end.
