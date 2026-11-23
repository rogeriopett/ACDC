unit MdfeValidar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, PngSpeedButton,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, PngImageList, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFormMdfeValidar = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Splitter1: TSplitter;
    RichEdit2: TRichEdit;
    Panel4: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Validar1: TMenuItem;
    ArquivosXMLDoMDFe1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    OpenDialog1: TOpenDialog;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton11: TPngSpeedButton;
    SpeedButton14: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    procedure Abrir1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure ArquivosXMLDoMDFe1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Validar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidarXML: Boolean;
  end;

var
  FormMdfeValidar: TFormMdfeValidar;

implementation
uses Funcoes1, MDFe_Util_TLB, DataMod, MdfeArquivosXML;// MdfeArquivosXML;
{$R *.dfm}

procedure TFormMdfeValidar.Abrir1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_REPOSITORIOMDFE.Value;
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TFormMdfeValidar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMdfeValidar.ArquivosXMLDoMDFe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMdfeArquivosXML, FormMdfeArquivosXML);
  FormMdfeArquivosXML.ShowModal;
  FormMdfeArquivosXML.Free;
  FormMdfeArquivosXML:=nil;
end;

procedure TFormMdfeValidar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMdfeValidar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=1;
  Label2.Caption:='';
  Label3.Caption:='';
  Label4.Caption:='';
end;

procedure TFormMdfeValidar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMdfeValidar.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  Label2.Caption:='Linha: '+IntToStr(Linha+1);
  if Linha+1>1 then
  Label3.Caption:='Coluna: '+IntToStr(Coluna+1)+'/'+IntToStr(Coluna+(1024*Linha)+Linha) else
  Label3.Caption:='Coluna: '+IntToStr(Coluna+1)+'/'+IntToStr(Coluna+1);
  Label4.Caption:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormMdfeValidar.Memo1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Linha, Coluna, LineLength: Integer;
begin
  Linha:=SendMessage(Memo1.Handle,EM_LINEFROMCHAR,Memo1.SelStart,0);
  Coluna:=SendMessage(Memo1.Handle,EM_LINEINDEX,Linha,0);
  LineLength:=SendMessage(Memo1.Handle,EM_LINELENGTH,Coluna,0);
  Coluna:=Memo1.SelStart-Coluna;
  Label2.Caption:='Linha: '+IntToStr(Linha+1);
  if Linha+1>1 then
  Label3.Caption:='Coluna: '+IntToStr(Coluna+1)+'/'+IntToStr(Coluna+(1024*Linha)+Linha) else
  Label3.Caption:='Coluna: '+IntToStr(Coluna+1)+'/'+IntToStr(Coluna+1);
  Label4.Caption:='Nº Caracteres: '+IntToStr(LineLength);
end;

procedure TFormMdfeValidar.Memo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Dummy: Word;
begin
  Memo1KeyUp(Sender,Dummy,Shift);
end;

function TFormMdfeValidar.ValidarXML: Boolean;
var MDFE, MsgResultado, ErroXML: WideString;
  I, QtdeErros: Integer;
  U: MDFe_Util_Interface;
begin
  U:=CoUtil.Create;
  MDFE:=Memo1.Text;
  MDFE:=U.Assinar(MDFE,'infMDFe','Id',DM.TBParametrosPAR_NOMECERTIFICADO.Value,I,MsgResultado);
  RichEdit2.Lines.Clear;
  QtdeErros:=0;

  I:=U.ValidaXML(MDFE,ComboBox1.Text,MsgResultado,QtdeErros,ErroXML);
  if I<>5501 then
  begin
    RichEdit2.Lines.Add(MsgResultado);
    RichEdit2.Lines.Add('Qtde de Erros: '+IntToStr(QtdeErros)+#13+ErroXML);
    Result:=False;
  end else
  begin
    RichEdit2.Lines.Add('Sucesso! Documento XML de acordo com o Schema XML!');
    Result:=True;
  end;
  U:=nil;
end;

procedure TFormMdfeValidar.Validar1Click(Sender: TObject);
begin
  ValidarXML;
end;

end.
