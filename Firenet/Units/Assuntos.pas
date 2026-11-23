unit Assuntos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls, Menus,
  ImgList, PngImageList, Mask, HtmlEditor, Vcl.ComCtrls, System.ImageList,
  System.UITypes;

type
  TFormAssuntos = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Label8: TLabel;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    FrameHtmlEditor1: TFrameHtmlEditor;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBComboBox2: TDBComboBox;
    procedure Localizar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssuntos: TFormAssuntos;

implementation
uses DataMod, DataMod2, Funcoes1, AssuntosFast, AssuntosLoc, DB, Main;
{$R *.dfm}

procedure TFormAssuntos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormAssuntos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAssuntos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBAssuntos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormAssuntos.FormCreate(Sender: TObject);
begin
  FrameHtmlEditor1.InicializarFrame;
  FrameHtmlEditor1.ComboBox1Change(Self);

  DM2.DSAssuntosDataChange(Self,nil); //faz carregar no editor HTML.
end;

procedure TFormAssuntos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAssuntos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormAssuntos);
end;

procedure TFormAssuntos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntosLoc, FormAssuntosLoc);
  FormAssuntosLoc.ShowModal;
  if AssuntosLoc.Procurar then
  begin
    DM2.TBAssuntos.Close;
    DM2.TBAssuntos.ParamByName('codigo').AsInteger:=FormAssuntosLoc.QYAssuntosASS_CODIGO.Value;
    DM2.TBAssuntos.Open;
  end;
  FormAssuntosLoc.Free;
  FormAssuntosLoc:=nil;
end;

procedure TFormAssuntos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntosFast, FormAssuntosFast);
  FormAssuntosFast.QY01.Close;
  FormAssuntosFast.QY01.Open;
  FormAssuntosFast.frxReport1.Variables['TITULO']:=QuotedStr('Assuntos');
  FormAssuntosFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormAssuntosFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormAssuntosFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormAssuntosFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormAssuntosFast.frxReport1.ShowReport;
  FormAssuntosFast.Free;
  FormAssuntosFast:=nil;
end;

initialization
  RegisterClass(TFormAssuntos);

finalization
  UnRegisterClass(TFormAssuntos);

end.
