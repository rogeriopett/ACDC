unit NfeValidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Menus, ComCtrls,
  ImgList, PngImageList, PngSpeedButton, System.ImageList;

type
  TFormNfeValidar = class(TForm)
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton11: TPngSpeedButton;
    SpeedButton14: TPngSpeedButton;
    Label1: TLabel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    N1: TMenuItem;
    Validar1: TMenuItem;
    RichEdit2: TRichEdit;
    Abrir1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SpeedButton1: TPngSpeedButton;
    Panel4: TPanel;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    PngImageList1: TPngImageList;
    ArquivosXMLdaNFe1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Validar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ArquivosXMLdaNFe1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidarXML: Boolean;
  end;

var
  FormNfeValidar: TFormNfeValidar;

implementation
uses Funcoes1, NFe_Util_2G_TLB, DataMod, NfeArquivosXML;
{$R *.dfm}

procedure TFormNfeValidar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=69; //nfe assinada 4.00.
  Label2.Caption:='';
  Label3.Caption:='';
  Label4.Caption:='';
end;

procedure TFormNfeValidar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeValidar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeValidar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeValidar.ArquivosXMLdaNFe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeArquivosXML, FormNfeArquivosXML);
  FormNfeArquivosXML.ShowModal;
  FormNfeArquivosXML.Free;
  FormNfeArquivosXML:=nil;
end;

function TFormNfeValidar.ValidarXML: Boolean;
var NFE, MsgResultado, ErroXML: WideString;
  I, QtdeErros: Integer;
  U: NFe_Util_2G_Interface;
begin
  NFE:=Memo1.Text;
  RichEdit2.Lines.Clear;
  QtdeErros:=0;
  U:=CoUtil.Create;
  I:=U.ValidaXML(NFE,ComboBox1.ItemIndex,MsgResultado,QtdeErros,ErroXML);
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

procedure TFormNfeValidar.Validar1Click(Sender: TObject);
begin
  ValidarXML;
end;

procedure TFormNfeValidar.Abrir1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_REPOSITORIONFE.Value;
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TFormNfeValidar.Memo1KeyUp(Sender: TObject; var Key: Word;
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

procedure TFormNfeValidar.Memo1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Dummy: Word;
begin
  Memo1KeyUp(Sender,Dummy,Shift);
end;

procedure TFormNfeValidar.Memo1KeyDown(Sender: TObject; var Key: Word;
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

end.
