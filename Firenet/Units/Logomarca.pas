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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image1: TImage;
    Label1: TLabel;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Label2: TLabel;
    Image2: TImage;
    Bevel2: TBevel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    OpenDialog1: TOpenDialog;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
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
  PngBitBtn2.Enabled:=False;
  PngBitBtn5.Enabled:=False;
  PageControl1.ActivePageIndex:=0;
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
  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALLOGOMARCA.Value);
  if not DirectoryExists(Pasta) then
  ForceDirectories(Pasta);

  if FileExists(Pasta+'Logomarca.png') then
  Image1.Picture.LoadFromFile(Pasta+'Logomarca.png') else
  Image1.Picture:=Image1.Picture;

  MostrarSVGGravado;
end;

procedure TFormLogomarca.PngBitBtn1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    if not ChecarTamanhoImagem(700,400,OpenPictureDialog1.FileName) then
    begin
      MessageDlg('A imagem informada não tem as dimensões de 700x400 pixels.',mtError,[mbOk],0);
      Exit;
    end;

    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    PngBitBtn2.Enabled:=True;
  end;
end;

procedure TFormLogomarca.PngBitBtn2Click(Sender: TObject);
var Arquivo: String;
begin
  Pasta:=DM.TBParametrosPAR_LOCALLOGOMARCA.Value;
  if not DirectoryExists(Pasta) then
  ForceDirectories(Pasta);

  if OpenPictureDialog1.FileName<>'' then
  begin
    if not ChecarTamanhoImagem(700,400,OpenPictureDialog1.FileName) then
    begin
      MessageDlg('A imagem informada não tem as dimensões de 700x400 pixels.',mtError,[mbOk],0);
      Exit;
    end;

    Arquivo:='Logomarca.png';
    CopyFile(PChar(OpenPictureDialog1.FileName),PChar(Pasta+Arquivo),False);
    FormMain.Image1.Picture.LoadFromFile(IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALLOGOMARCA.Value)+'Logomarca.png');
    Application.ProcessMessages;
    Close;
  end;
end;

procedure TFormLogomarca.PngBitBtn3Click(Sender: TObject);
begin
  Close;
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

initialization
  RegisterClass(TFormLogomarca);

finalization
  UnRegisterClass(TFormLogomarca);

end.
