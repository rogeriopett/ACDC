unit EmailsContas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ImgList, PngImageList, DBCtrls, Buttons, PngSpeedButton,
  DBSBtn, ExtCtrls, StdCtrls, Mask, System.ImageList, System.UITypes;

type
  TFormEmailsContas = class(TForm)
    Label1: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
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
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBComboBox3: TDBComboBox;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBComboBox4: TDBComboBox;
    N2: TMenuItem;
    EnviarEmailDeTeste1: TMenuItem;
    Bevel2: TBevel;
    EnviarEmailDeTeste1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure EnviarEmailDeTeste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmailsContas: TFormEmailsContas;

implementation
uses DataMod, DataMod2, Funcoes1, Main, DB, EmailsContasLoc, EmailsEnviarTeste;
{$R *.dfm}

procedure TFormEmailsContas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('http://firenet.runtimesistemas.com.br/email-exemplos…-configuracoes/');
end;

procedure TFormEmailsContas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormEmailsContas.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormEmailsContas.EnviarEmailDeTeste1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM2.TBEmailsContas.IsEmpty,'Nenhuma conta de email selecionada.');

  S:=InputBox('Destinatário','Digite o email do destinatario:',DM2.TBEmailsContasEMC_EMAIL.Value);
  if S<>'' then
  begin
    Application.CreateForm(TFormEmailsEnviarTeste, FormEmailsEnviarTeste);
    FormEmailsEnviarTeste.Label2.Caption:=S;
    FormEmailsEnviarTeste.ShowModal;
    FormEmailsEnviarTeste.Free;
    FormEmailsEnviarTeste:=nil;
  end;
end;

procedure TFormEmailsContas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmailsContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBEmailsContas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormEmailsContas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEmailsContas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormEmailsContas);
end;

procedure TFormEmailsContas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContasLoc, FormEmailsContasLoc);
  FormEmailsContasLoc.ShowModal;
  if EmailsContasLoc.Procurar then
  begin
    DM2.TBEmailsContas.Close;
    DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=FormEmailsContasLoc.QYEmailsContasEMC_CODIGO.Value;
    DM2.TBEmailsContas.Open;
  end;
  FormEmailsContasLoc.Free;
  FormEmailsContasLoc:=nil;
end;

procedure TFormEmailsContas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

initialization
  RegisterClass(TFormEmailsContas);

finalization
  UnRegisterClass(TFormEmailsContas);

end.
