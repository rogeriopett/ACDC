unit ConhecimentosValidar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, PngSpeedButton, ExtCtrls, ImgList, PngImageList, Menus,
  StdCtrls, ComCtrls, System.ImageList;

type
  TFormConhecimentosValidar = class(TForm)
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
    ArquivosXMLdoCTe1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Validar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Memo1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ArquivosXMLdoCTe1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function ValidarXML: Boolean;
  end;

var
  FormConhecimentosValidar: TFormConhecimentosValidar;

implementation
uses Funcoes1, CTe_Util_TLB, DataMod, ConhecimentosArquivosXML;
{$R *.dfm}

procedure TFormConhecimentosValidar.Abrir1Click(Sender: TObject);
begin
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_REPOSITORIOCTE.Value;
  if OpenDialog1.Execute then
  begin
    Memo1.Lines.Clear;
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TFormConhecimentosValidar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConhecimentosValidar.ArquivosXMLdoCTe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosArquivosXML, FormConhecimentosArquivosXML);
  FormConhecimentosArquivosXML.ShowModal;
  FormConhecimentosArquivosXML.Free;
  FormConhecimentosArquivosXML:=nil;
end;

procedure TFormConhecimentosValidar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosValidar.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=67; //cte assinado 3.00.
  Label2.Caption:='';
  Label3.Caption:='';
  Label4.Caption:='';
end;

procedure TFormConhecimentosValidar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentosValidar.FormShow(Sender: TObject);
begin
  Validar1.Click;
end;

procedure TFormConhecimentosValidar.Memo1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFormConhecimentosValidar.Memo1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFormConhecimentosValidar.Memo1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var Dummy: Word;
begin
  Memo1KeyUp(Sender,Dummy,Shift);
end;

function TFormConhecimentosValidar.ValidarXML: Boolean;
var CTE, MsgResultado, ErroXML: WideString;
  I, QtdeErros: Integer;
  U: CTe_Util_Interface;
begin
  CTE:=Memo1.Text;
  RichEdit2.Lines.Clear;
  QtdeErros:=0;
  U:=CoUtil.Create;
  I:=U.ValidaXML(CTE,ComboBox1.ItemIndex,MsgResultado,QtdeErros,ErroXML);
  if I<>0 then
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

procedure TFormConhecimentosValidar.Validar1Click(Sender: TObject);
begin
  ValidarXML;
end;

end.
