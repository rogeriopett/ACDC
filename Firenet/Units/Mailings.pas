unit Mailings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Buttons, DBSBtn, ExtCtrls, DBCtrls, StdCtrls, Mask, ImgList,
  PngImageList, PngSpeedButton, System.ImageList, System.UITypes;

type
  TFormMailings = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Relatorios1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMailings: TFormMailings;

implementation
uses DataMod, Main, DB, MailingsLoc, MailingsFast, Funcoes1;

{$R *.dfm}

procedure TFormMailings.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormMailings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBMailings.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMailings.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMailingsLoc, FormMailingsLoc);
  FormMailingsLoc.ShowModal;
  if MailingsLoc.Procurar then
  begin
    DM.TBMailings.Close;
    DM.TBMailings.ParamByName('codigo').AsInteger:=FormMailingsLoc.QYMailingsMAI_CODIGO.Value;
    DM.TBMailings.Open;
  end;
  FormMailingsLoc.Free;
  FormMailingsLoc:=nil;
end;

procedure TFormMailings.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormMailingsFast, FormMailingsFast);
  FormMailingsFast.QY01.Close;
  FormMailingsFast.QY01.Open;
  FormMailingsFast.frxReport1.Variables['TITULO']:=QuotedStr('Mailings');
  FormMailingsFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormMailingsFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormMailingsFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormMailingsFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormMailingsFast.frxReport1.ShowReport;
  FormMailingsFast.Free;
  FormMailingsFast:=nil;
end;

procedure TFormMailings.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMailings.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormMailings);
end;

procedure TFormMailings.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

initialization
  RegisterClass(TFormMailings);

finalization
  UnRegisterClass(TFormMailings);

end.
