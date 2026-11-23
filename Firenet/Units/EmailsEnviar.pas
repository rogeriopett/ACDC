unit EmailsEnviar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, ImgList, PngImageList, Menus, StdCtrls, Mask,
  Buttons, PngSpeedButton, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient, IdSMTPBase,
  IdSMTP, IDAttachmentFile, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  IdSSL, IdSSLOpenSSL, IdSASL, IdSASLUserPass, IdSASLLogin, IdUserPassProvider,
  ComCtrls, IdCustomTransparentProxy, IdConnectThroughHttpProxy, Vcl.ToolWin,
  System.ImageList, Vcl.OleCtrls, SHDocVw, IdMessage, ACBrBase, ACBrMail,
  HtmlEditor, IdAntiFreezeBase, Vcl.IdAntiFreeze, System.UITypes;

type
  TFormEmailsEnviar = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton7: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    Label4: TLabel;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label8: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Enviar1: TMenuItem;
    N3: TMenuItem;
    CadastroDeContasDeEmails1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeAssuntos1: TMenuItem;
    N2: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    OpenDialog1: TOpenDialog;
    Panel2: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Cancelar1Button: TPngSpeedButton;
    Enviar1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    CadastroDeAssuntos1Button: TPngSpeedButton;
    CadastroDeContasDeEmails1Button: TPngSpeedButton;
    Bevel1: TBevel;
    Cancelar1: TMenuItem;
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdSASLLogin1: TIdSASLLogin;
    IdUserPassProvider1: TIdUserPassProvider;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    Label3: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBEdit10: TDBEdit;
    Label7: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    IdMessage1: TIdMessage;
    ACBrMail1: TACBrMail;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    Memo1: TMemo;
    TabSheet2: TTabSheet;
    FrameHtmlEditor1: TFrameHtmlEditor;
    Label11: TLabel;
    DBText3: TDBText;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeFornecedores1: TMenuItem;
    EnviarEmaildeTeste1: TMenuItem;
    N1: TMenuItem;
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeContasDeEmails1Click(Sender: TObject);
    procedure CadastroDeAssuntos1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure Enviar1Click(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit6Enter(Sender: TObject);
    procedure ACBrMail1MailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure ACBrMail1BeforeMailProcess(Sender: TObject);
    procedure ACBrMail1AfterMailProcess(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
  private
    { Private declarations }
    //procedure DocumentoEmBranco(WebBrowser: TWebBrowser);
    //function GetIEHandle(WebBrowser: TWebbrowser; ClassName: string): HWND;
  public
    { Public declarations }
    procedure EnviarEmail;
    procedure EnviarEmailACBr;
    function EnviarEmailAutomatico: Boolean;
    function EnviarEmailAutomaticoACBr: Boolean;
    function EnviarEmailAutomaticoACBrBoletos(var Memo: TMemo): Boolean;
  end;

var
  FormEmailsEnviar: TFormEmailsEnviar;
  CriarNovoEmail: Boolean = False;

implementation
uses DataMod, Funcoes1, DB, Assuntos, Clientes, EmailsContas, DataMod2,
  DataModSearch, Emails, EmailsContasLoc, AssuntosLoc, ClientesLoc, Main, Nfe,
  Fornecedores;
{$R *.dfm}

{Função responsável para a execução de comandos internos
no webbrowser, esses que serão de grande importância para o funcionamento de nosso Editor, ou seja: comando Negrito, Italico..... Inserir imagem....).
http://www.planetadelphi.com.br/artigo/114/criando-um-editor-de-html/
}
{
function TFormEmailsEnviar.GetIEHandle(WebBrowser: TWebbrowser; ClassName: string): HWND;
var hwndChild, hwndTmp: HWND;
  oleCtrl: TOleControl;
  szClass: array [0..255] of char;
begin
  oleCtrl :=WebBrowser;
  hwndTmp := oleCtrl.Handle;
  while (true) do
  begin
    hwndChild := GetWindow(hwndTmp, GW_CHILD);
    GetClassName(hwndChild, szClass, SizeOf(szClass));
    if (string(szClass)=ClassName) then
    begin
      Result :=hwndChild;
      Exit;
    end;
    hwndTmp := hwndChild;
  end;
  Result := 0;
end;}

{Fiz este procedimentopara facilitar nossas vidas, ao invés de ficarmos a todo momento"webbrowser1.navigate('about:blank'); basta colocarmos DocumentoEmBranco(webbrowser1); ou seja ele vai navegar ate a página em branco. }
{
procedure TFormEmailsEnviar.DocumentoEmBranco(WebBrowser: TWebBrowser);
begin
  WebBrowser.Navigate('about:blank');
end;    }

procedure TFormEmailsEnviar.Enviar1Click(Sender: TObject);
begin
  EnviarEmailACBr;
end;

procedure TFormEmailsEnviar.EnviarEmail;
var AnexoEmail1, AnexoEmail2, AnexoEmail3: TIDAttachmentFile;
begin
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  begin
    DM2.TBEmailsEMA_ENVIADO.Value:='S';
    DM2.TBEmails.Post;
  end;

  IdMessage1.Clear;
  IdMessage1.From.Name:=UCWords(DM2.TBEmailsVEN_NOME.Value);
  IdMessage1.From.Address:=DM2.TBEmailsEMC_EMAIL.Value;

  IdMessage1.Recipients.EMailAddresses:=DM2.TBEmailsEMA_DESTINATARIOS.Value;
  IdMessage1.ReplyTo.Add.Address:=DM2.TBEmailsEMC_REPLYTO.Value;
  IdMessage1.BccList.EMailAddresses:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  {with IdMessage1.BccList.Add do
  begin
    Name:='Nome'; //DM2.TBEmailsEMA_COPIAOCULTA.Value;
    Address:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  end;}
  //IdMessage1.BccList.Add.Address:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  IdMessage1.Subject:=DM2.TBEmailsASS_DESCRICAO.Value;
  IdMessage1.Body.Clear;
  IdMessage1.Body.Add(DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value);

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  begin
    AnexoEmail1:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail1.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO.Value);
    AnexoEmail1.StoredPathName:=DM2.TBEmailsEMA_ANEXO.Value;
  end;
  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  begin
    AnexoEmail2:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail2.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO2.Value);
    AnexoEmail2.StoredPathName:=DM2.TBEmailsEMA_ANEXO2.Value;
  end;
  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  begin
    AnexoEmail3:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail3.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO3.Value);
    AnexoEmail3.StoredPathName:=DM2.TBEmailsEMA_ANEXO3.Value;
  end;

  IdSSLIOHandlerSocketOpenSSL1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  IdSSLIOHandlerSocketOpenSSL1.Port:=DM2.TBEmailsEMC_SMTPPORTA.Value;
  IdSSLIOHandlerSocketOpenSSL1.ConnectTimeout:=DM2.TBEmailsContasEMC_TIMEOUT.Value;

  IdUserPassProvider1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  IdUserPassProvider1.Password:=DM2.TBEmailsEMC_SENHA.Value;

  IdSMTP1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  IdSMTP1.Port:=DM2.TBEmailsEMC_SMTPPORTA.Value;
  IdSMTP1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  IdSMTP1.Password:=DM2.TBEmailsEMC_SENHA.Value;
  IdSMTP1.ConnectTimeout:=DM2.TBEmailsContasEMC_TIMEOUT.Value;

  try
    try
      Screen.Cursor:=crHourGlass;
      StatusBar1.SimpleText:='Conectando...';
      IdSMTP1.Connect;
      if IdSMTP1.Connected then
      StatusBar1.SimpleText:='Conectando... OK...' else
      StatusBar1.SimpleText:='Erro ao conectar.';
      if idSMTP1.Authenticate then
      begin
        StatusBar1.SimpleText:='Enviando...';
        IdSMTP1.Send(IdMessage1);
        StatusBar1.SimpleText:='Email Enviado!';
      end;
    except on E:Exception do
      begin
        StatusBar1.SimpleText:='ERRO: '+E.Message;
        MessageDlg(E.Message,mtError,[mbOk],0);
        Screen.Cursor:=crDefault;
      end;
    end;
  finally
    if IdSMTP1.Connected then
    begin
      IdSMTP1.Disconnect;
      //StatusBar1.SimpleText:='Email enviado!';
      Close;
    end;
  end;

  UnLoadOpenSSLLibrary;

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  AnexoEmail1.Destroy;
  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  AnexoEmail2.Destroy;
  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  AnexoEmail3.Destroy;

  Screen.Cursor:=crDefault;
  FormEmails.QYEmails.Close;
  FormEmails.QYEmails.Open;
end;

procedure TFormEmailsEnviar.EnviarEmailACBr;
var S, E: String;
  Fechar: Boolean;
begin
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  begin
    DM2.TBEmailsEMA_ENVIADO.Value:='S';
    DM2.TBEmails.Post;
    //DM2.TBEmails.Close;
    //DM2.TBEmails.Open;
  end;

  Memo1.Lines.Clear;
  TabSheet3.TabVisible:=True;

  ACBrMail1.From:=DM2.TBEmailsEMC_EMAIL.Value;
  ACBrMail1.FromName:=UCWords(DM2.TBEmailsEMC_NOME.Value); //duplicar conta de email para cada vendedor.
  if DM2.TBEmailsEMC_REPLYTO.Value<>'' then
  ACBrMail1.AddReplyTo(DM2.TBEmailsEMC_REPLYTO.Value);

  ACBrMail1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  ACBrMail1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  ACBrMail1.Password:=DM2.TBEmailsEMC_SENHA.Value;
  ACBrMail1.Port:=IntToStr(DM2.TBEmailsEMC_SMTPPORTA.Value);
  ACBrMail1.Attempts:=2;

  if DM2.TBEmailsEMC_SSL.Value='S' then
  ACBrMail1.SetSSL:=True else
  ACBrMail1.SetSSL:=False;

  if DM2.TBEmailsEMC_TLS.Value='S' then
  ACBrMail1.SetTLS:=True else
  ACBrMail1.SetTLS:=False;

  if DM2.TBEmailsEMA_CONFIRMACAO.Value='S' then
  ACBrMail1.ReadingConfirmation:=True else
  ACBrMail1.ReadingConfirmation:=False;

  S:=DM2.TBEmailsEMA_DESTINATARIOS.Value;
  //verifica se o ultimo caracter é virgula e se for, remove.
  if S[Length(S)]=',' then
  Delete(S,Length(S),1);

  //verifica se tem mais de um destinatário e adiciona cada um deles.
  while Pos(',',S)>1 do
  begin
    E:=Copy(S,1,Pos(',',S)-1);
    Delete(S,1,Pos(',',S));
    ACBrMail1.AddAddress(E,'');
  end;
  ACBrMail1.AddAddress(S,''); //o último ou o único.

  S:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  if S<>'' then
  begin
    //verifica se o ultimo caracter é virgula e se for, remove.
    if S[Length(S)]=',' then
    Delete(S,Length(S),1);

    //verifica se tem mais de um destinatário e adiciona cada um deles.
    while Pos(',',S)>1 do
    begin
      E:=Copy(S,1,Pos(',',S)-1);
      Delete(S,1,Pos(',',S));
      ACBrMail1.AddCC(E);
    end;
    ACBrMail1.AddCC(S); //o último ou o único.
  end;

  if DM2.TBEmailsEMA_HTML.Value='S' then
  begin
    ACBrMail1.IsHTML:=True;
    ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';
  end else
  begin
    ACBrMail1.IsHTML:=False;
    ACBrMail1.AltBody.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;
  end;

  ACBrMail1.Subject:=DM2.TBEmailsASS_DESCRICAO.Value;
  ACBrMail1.Body.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO.Value,'');

  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO2.Value,'');

  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO3.Value,'');

  Fechar:=True;
  try
    try
      ACBrMail1.Send;
    except on Exception do
      Fechar:=False;
    end;
  finally
    if Fechar then
    begin
      MessageDlg('Processo de envio terminado.',mtInformation,[mbOk],0);
      Close;
    end;
  end;

  if FormEmails<>nil then
  begin
    FormEmails.QYEmails.Close;
    FormEmails.QYEmails.Open;
  end;
end;

function TFormEmailsEnviar.EnviarEmailAutomatico: Boolean;
var AnexoEmail1, AnexoEmail2, AnexoEmail3: TIDAttachmentFile;
begin
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  begin
    DM2.TBEmailsEMA_ENVIADO.Value:='S';
    DM2.TBEmails.Post;
  end;

  IdMessage1.Clear;
  IdMessage1.From.Name:=UCWords(DM2.TBEmailsVEN_NOME.Value);
  IdMessage1.From.Address:=DM2.TBEmailsEMC_EMAIL.Value;
  IdMessage1.ReplyTo.Add.Address:=DM2.TBEmailsEMC_REPLYTO.Value;

  IdMessage1.Recipients.EMailAddresses:=DM2.TBEmailsEMA_DESTINATARIOS.Value;
  IdMessage1.BccList.EMailAddresses:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  {with IdMessage1.BccList.Add do
  begin
    Name:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
    Address:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  end;}
  //IdMessage1.BccList.Add.Address:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  IdMessage1.Subject:=DM2.TBEmailsASS_DESCRICAO.Value;
  IdMessage1.Body.Clear;
  IdMessage1.Body.Add(DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value);

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  begin
    AnexoEmail1:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail1.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO.Value);
    AnexoEmail1.StoredPathName:=DM2.TBEmailsEMA_ANEXO.Value;
  end;
  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  begin
    AnexoEmail2:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail2.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO2.Value);
    AnexoEmail2.StoredPathName:=DM2.TBEmailsEMA_ANEXO2.Value;
  end;
  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  begin
    AnexoEmail3:=TIDAttachmentFile.Create(IdMessage1.MessageParts);
    AnexoEmail3.FileName:=ExtractFileName(DM2.TBEmailsEMA_ANEXO3.Value);
    AnexoEmail3.StoredPathName:=DM2.TBEmailsEMA_ANEXO3.Value;
  end;

  IdSSLIOHandlerSocketOpenSSL1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  IdSSLIOHandlerSocketOpenSSL1.Port:=DM2.TBEmailsEMC_SMTPPORTA.Value;

  IdUserPassProvider1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  IdUserPassProvider1.Password:=DM2.TBEmailsEMC_SENHA.Value;

  IdSMTP1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  IdSMTP1.Port:=DM2.TBEmailsEMC_SMTPPORTA.Value;
  IdSMTP1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  IdSMTP1.Password:=DM2.TBEmailsEMC_SENHA.Value;

  try
    try
      Screen.Cursor:=crHourGlass;
      FormNfe.Memo1.Lines.Add('Conectando...');
      IdSMTP1.Connect;
      if IdSMTP1.Connected then
      begin
        FormNfe.Memo1.Lines.Delete(FormNfe.Memo1.Lines.Count-1); //retira a ultima linha e insere novamente com OK... na continuação.
        FormNfe.Memo1.Lines.Add('Conectando... OK...');
      end else
      FormNfe.Memo1.Lines.Add('Erro ao conectar.');
      if idSMTP1.Authenticate then
      begin
        if DM2.TBEmailsEMA_COPIAOCULTA.Value<>'' then
        FormNfe.Memo1.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value+' com cópia para '+DM.TBParametrosPAR_NFEEMAILBCC.Value) else
        FormNfe.Memo1.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value);
        IdSMTP1.Send(IdMessage1);
        FormNfe.Memo1.Lines.Add('Email Enviado!');
      end;
    except on E:Exception do
      begin
        FormNfe.Memo1.Lines.Add('ERRO: '+E.Message);
        MessageDlg(E.Message,mtError,[mbOk],0);
        Screen.Cursor:=crDefault;
      end;
    end;
  finally
    if IdSMTP1.Connected then
    begin
      IdSMTP1.Disconnect;
      Close;
    end;
  end;

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  AnexoEmail1.Destroy;
  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  AnexoEmail2.Destroy;
  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  AnexoEmail3.Destroy;

  Screen.Cursor:=crDefault;

  Result:=True;
end;

function TFormEmailsEnviar.EnviarEmailAutomaticoACBr: Boolean;
var S, E: String;
begin
  ACBrMail1.Clear;
  ACBrMail1.From:=DM2.TBEmailsEMC_EMAIL.Value;
  //alterado para mostrar o nome que está na conta de email. ACBrMail1.FromName:=UCWords(DM2.TBEmailsVEN_NOME.Value);
  ACBrMail1.FromName:=UCWords(DM2.TBEmailsEMC_NOME.Value);
  //ACBrMail1.AddReplyTo(DM2.TBEmailsEMC_REPLYTO.Value);

  ACBrMail1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  ACBrMail1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  ACBrMail1.Password:=DM2.TBEmailsEMC_SENHA.Value;
  ACBrMail1.Port:=IntToStr(DM2.TBEmailsEMC_SMTPPORTA.Value);
  ACBrMail1.Attempts:=1;

  if DM2.TBEmailsEMC_SSL.Value='S' then
  ACBrMail1.SetSSL:=True else
  ACBrMail1.SetSSL:=False;

  if DM2.TBEmailsEMC_TLS.Value='S' then
  ACBrMail1.SetTLS:=True else
  ACBrMail1.SetTLS:=False;

  if DM2.TBEmailsEMA_CONFIRMACAO.Value='S' then
  ACBrMail1.ReadingConfirmation:=True else
  ACBrMail1.ReadingConfirmation:=False;

  S:=DM2.TBEmailsEMA_DESTINATARIOS.Value;
  //verifica se o ultimo caracter é virgula e se for, remove.
  if S[Length(S)]=',' then
  Delete(S,Length(S),1);

  //verifica se tem mais de um destinatário e adiciona cada um deles.
  while Pos(',',S)>1 do
  begin
    E:=Copy(S,1,Pos(',',S)-1);
    Delete(S,1,Pos(',',S));
    ACBrMail1.AddAddress(E,'');
  end;
  ACBrMail1.AddAddress(S,''); //o último ou o único.

  S:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  if S<>'' then
  begin
    //verifica se o ultimo caracter é virgula e se for, remove.
    if S[Length(S)]=',' then
    Delete(S,Length(S),1);

    //verifica se tem mais de um destinatário e adiciona cada um deles.
    while Pos(',',S)>1 do
    begin
      E:=Copy(S,1,Pos(',',S)-1);
      Delete(S,1,Pos(',',S));
      ACBrMail1.AddBCC(E);
    end;
    ACBrMail1.AddBCC(S); //o último ou o único.
  end;

  if DM2.TBEmailsEMA_HTML.Value='S' then
  begin
    ACBrMail1.IsHTML:=True;
    ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';
  end else
  begin
    ACBrMail1.IsHTML:=False;
    ACBrMail1.AltBody.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;
  end;

  ACBrMail1.Subject:=DM2.TBEmailsASS_DESCRICAO.Value;
  ACBrMail1.Body.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO.Value,'');

  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO2.Value,'');

  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO3.Value,'');

  try
    if DM2.TBEmailsEMA_COPIAOCULTA.Value<>'' then
    FormNfe.Memo1.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value+' com cópia para '+DM.TBParametrosPAR_NFEEMAILBCC.Value) else
    FormNfe.Memo1.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value);
    ACBrMail1.Send;
    FormNfe.Memo1.Lines.Add('Email enviado!');
  except on E:Exception do
    FormNfe.Memo1.Lines.Add('ERRO: '+E.Message);
  end;

  Result:=True;
end;

function TFormEmailsEnviar.EnviarEmailAutomaticoACBrBoletos(var Memo: TMemo): Boolean;
var S, E: String;
begin
  ACBrMail1.Clear;
  ACBrMail1.From:=DM2.TBEmailsEMC_EMAIL.Value;
  ACBrMail1.FromName:=UCWords(DM2.TBEmailsVEN_NOME.Value);
  //ACBrMail1.AddReplyTo(DM2.TBEmailsEMC_REPLYTO.Value);

  ACBrMail1.Host:=DM2.TBEmailsEMC_SMTP.Value;
  ACBrMail1.Username:=DM2.TBEmailsEMC_LOGIN.Value;
  ACBrMail1.Password:=DM2.TBEmailsEMC_SENHA.Value;
  ACBrMail1.Port:=IntToStr(DM2.TBEmailsEMC_SMTPPORTA.Value);
  ACBrMail1.Attempts:=1;

  if DM2.TBEmailsEMC_SSL.Value='S' then
  ACBrMail1.SetSSL:=True else
  ACBrMail1.SetSSL:=False;

  if DM2.TBEmailsEMC_TLS.Value='S' then
  ACBrMail1.SetTLS:=True else
  ACBrMail1.SetTLS:=False;

  if DM2.TBEmailsEMA_CONFIRMACAO.Value='S' then
  ACBrMail1.ReadingConfirmation:=True else
  ACBrMail1.ReadingConfirmation:=False;

  S:=DM2.TBEmailsEMA_DESTINATARIOS.Value;
  //verifica se o ultimo caracter é virgula e se for, remove.
  if S[Length(S)]=',' then
  Delete(S,Length(S),1);

  //verifica se tem mais de um destinatário e adiciona cada um deles.
  while Pos(',',S)>1 do
  begin
    E:=Copy(S,1,Pos(',',S)-1);
    Delete(S,1,Pos(',',S));
    ACBrMail1.AddAddress(E,'');
  end;
  ACBrMail1.AddAddress(S,''); //o último ou o único.

  S:=DM2.TBEmailsEMA_COPIAOCULTA.Value;
  if S<>'' then
  begin
    //verifica se o ultimo caracter é virgula e se for, remove.
    if S[Length(S)]=',' then
    Delete(S,Length(S),1);

    //verifica se tem mais de um destinatário e adiciona cada um deles.
    while Pos(',',S)>1 do
    begin
      E:=Copy(S,1,Pos(',',S)-1);
      Delete(S,1,Pos(',',S));
      ACBrMail1.AddBCC(E);
    end;
    ACBrMail1.AddBCC(S); //o último ou o único.
  end;

  if DM2.TBEmailsEMA_HTML.Value='S' then
  begin
    ACBrMail1.IsHTML:=True;
    ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';
  end else
  begin
    ACBrMail1.IsHTML:=False;
    ACBrMail1.AltBody.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;
  end;

  ACBrMail1.Subject:=DM2.TBEmailsASS_DESCRICAO.Value;
  ACBrMail1.Body.Text:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsEMA_ASSINATURA.Value;

  if (DM2.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO.Value,'');

  if (DM2.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO2.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO2.Value,'');

  if (DM2.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM2.TBEmailsEMA_ANEXO3.Value)) then
  ACBrMail1.AddAttachment(DM2.TBEmailsEMA_ANEXO3.Value,'');

  try
    if DM2.TBEmailsEMA_COPIAOCULTA.Value<>'' then
    Memo.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value+' com cópia para '+DM.TBParametrosPAR_NFEEMAILBCC.Value) else
    Memo.Lines.Add('Enviando para '+DM2.TBEmailsEMA_DESTINATARIOS.Value);
    ACBrMail1.Send;
    Memo.Lines.Add('Email enviado!');
  except on E:Exception do
    Memo.Lines.Add('ERRO: '+E.Message);
  end;

  Result:=True;
end;

procedure TFormEmailsEnviar.ACBrMail1AfterMailProcess(Sender: TObject);
begin
  TabSheet3.TabVisible:=False;
end;

procedure TFormEmailsEnviar.ACBrMail1BeforeMailProcess(Sender: TObject);
begin
  Memo1.Lines.Clear;
  TabSheet3.TabVisible:=True;
  PageControl1.ActivePageIndex:=2;
end;

procedure TFormEmailsEnviar.ACBrMail1MailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  TabSheet3.TabVisible:=True;
  PageControl1.ActivePageIndex:=2;
  Memo1.Lines.Add(E.Message);
  StatusBar1.SimpleText:='ERRO: '+E.Message;
end;

procedure TFormEmailsEnviar.ACBrMail1MailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
  case aStatus of
    pmsStartProcess: Memo1.Lines.Add(TimeToStr(Now)+' Iniciando processo de envio...');
    pmsConfigHeaders: Memo1.Lines.Add(TimeToStr(Now)+' Configurando cabeçalhos...');
    pmsAddingMimeParts: Memo1.Lines.Add(TimeToStr(Now)+' Adicionando MIME Parts...');
    pmsLoginSMTP: Memo1.Lines.Add(TimeToStr(Now)+' Conectando ao servidor SMTP...');
    pmsStartSends: Memo1.Lines.Add(TimeToStr(Now)+' Iniciando envio...');
    //pmsSendTo: Memo1.Lines.Add(TimeToStr(Now)+' Enviando para destinatários...');
    //pmsSendCC: Memo1.Lines.Add(TimeToStr(Now)+' Enviando cópia...');
    //pmsSendBCC: Memo1.Lines.Add(TimeToStr(Now)+' Enviando cópia oculta...');
    //pmsSendReplyTo: Memo1.Lines.Add(TimeToStr(Now)+' Setando reply to...');
    pmsSendData: Memo1.Lines.Add(TimeToStr(Now)+' Enviando...');
    pmsLogoutSMTP: Memo1.Lines.Add(TimeToStr(Now)+' Desconectando do servidor SMTP...');
    pmsDone: Memo1.Lines.Add(TimeToStr(Now)+' Fim do processo!');
    pmsError: Memo1.Lines.Add(TimeToStr(Now)+' Erro.');
  end;
end;

procedure TFormEmailsEnviar.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormEmailsEnviar.CadastroDeAssuntos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntos, FormAssuntos);
  FormAssuntos.ShowModal;
  FormAssuntos.Free;
  FormAssuntos:=nil;
end;

procedure TFormEmailsEnviar.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormEmailsEnviar.CadastroDeContasDeEmails1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContas, FormEmailsContas);
  FormEmailsContas.ShowModal;
  FormEmailsContas.Free;
  FormEmailsContas:=nil;
end;

procedure TFormEmailsEnviar.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormEmailsEnviar.Cancelar1Click(Sender: TObject);
begin
  DM2.TBEmails.Cancel;
  Close;
end;

procedure TFormEmailsEnviar.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormEmailsEnviar.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormEmailsEnviar.DBEdit2Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEmailsEnviar.DBEdit2Exit(Sender: TObject);
begin
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBEmailsEMA_EMAILCONTA.Clear;
    DM2.TBEmailsEMC_NOME.Clear;
    DM2.TBEmailsEMA_ASSINATURA.Clear;
    DM2.TBEmailsEMA_CONFIRMACAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYEmailsContas.Close;
    DMS.QYEmailsContas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYEmailsContas.Open;
    if not DMS.QYEmailsContas.IsEmpty then
    begin
      DM2.TBEmailsEMA_EMAILCONTA.Value:=DMS.QYEmailsContasEMC_CODIGO.Value;
      DM2.TBEmailsEMC_NOME.Value:=DMS.QYEmailsContasEMC_NOME.Value;
      DM2.TBEmailsEMA_ASSINATURA.Value:=DMS.QYEmailsContasEMC_ASSINATURA.Value;
      DM2.TBEmailsEMA_CONFIRMACAO.Value:=DMS.QYEmailsContasEMC_CONFIRMACAO.Value;
    end else
    begin
      DM2.TBEmailsEMA_EMAILCONTA.Clear;
      DM2.TBEmailsEMC_NOME.Clear;
      DM2.TBEmailsEMA_ASSINATURA.Clear;
      DM2.TBEmailsEMA_CONFIRMACAO.Clear;
      MessageDlg('Conta de email não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYEmailsContas.Close;
  end;
end;

procedure TFormEmailsEnviar.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton3.Click;
end;

procedure TFormEmailsEnviar.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEmailsEnviar.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormEmailsEnviar.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEmailsEnviar.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBEmailsEMA_CLIENTE.Clear;
    DM2.TBEmailsCLI_NOME.Clear;
    DM2.TBEmailsEMA_DESTINATARIOS.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBEmailsEMA_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM2.TBEmailsCLI_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBEmailsEMA_DESTINATARIOS.Value:=DMS.QYClientesCLI_EMAIL.Value;
      if DMS.QYClientesCLI_EMAIL2.Value<>'' then
      DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DMS.QYClientesCLI_EMAIL2.Value;
    end else
    begin
      DM2.TBEmailsEMA_CLIENTE.Clear;
      DM2.TBEmailsCLI_NOME.Clear;
      DM2.TBEmailsEMA_DESTINATARIOS.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormEmailsEnviar.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormEmailsEnviar.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEmailsEnviar.DBEdit6Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormEmailsEnviar.DBEdit6Exit(Sender: TObject);
begin
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBEmailsEMA_ASSUNTO.Clear;
    DM2.TBEmailsASS_DESCRICAO.Clear;
    //nao limpar esse campo. DM2.TBEmailsEMA_MENSAGEM.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBEmails.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYAssuntos.Close;
    DMS.QYAssuntos.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYAssuntos.Open;
    if not DMS.QYAssuntos.IsEmpty then
    begin
      DM2.TBEmailsEMA_ASSUNTO.Value:=DMS.QYAssuntosASS_CODIGO.Value;
      DM2.TBEmailsASS_DESCRICAO.Value:=DMS.QYAssuntosASS_DESCRICAO.Value;
      DM2.TBEmailsEMA_MENSAGEM.Value:=DMS.QYAssuntosASS_TEXTO.Value;
    end else
    begin
      DM2.TBEmailsEMA_ASSUNTO.Clear;
      DM2.TBEmailsASS_DESCRICAO.Clear;
      //nao limpar esse campo. DM2.TBEmailsEMA_MENSAGEM.Clear;
      MessageDlg('Assunto não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYAssuntos.Close;
  end;
end;

procedure TFormEmailsEnviar.DBEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormEmailsEnviar.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormEmailsEnviar.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['a'..'z','A'..'Z','0'..'9','@','-','_',',','.',#8,#13,#3,#22,#26]) then Key:=#0; //#3=CTRL+C - #22=CTRL+V - #26=CTRL+Z.
end;

procedure TFormEmailsEnviar.DBEdit9KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormEmailsEnviar.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmailsEnviar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  begin
    if MessageDlg('Cancelar?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DM2.TBEmails.Cancel;
    end else
    Action:=caNone;
  end;
end;

procedure TFormEmailsEnviar.FormCreate(Sender: TObject);
begin
  StatusBar1.SimpleText:='';
  TabSheet3.TabVisible:=False;
  Memo1.Lines.Clear;

  FrameHtmlEditor1.InicializarFrame;
  FrameHtmlEditor1.ComboBox1Change(Self);

  DM2.DSEmailsDataChange(Self,nil); //faz carregar no editor HTML.
end;

procedure TFormEmailsEnviar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormEmailsEnviar.FormShow(Sender: TObject);
begin
  if CriarNovoEmail then
  DM2.TBEmails.Insert;
  if DM2.TBEmails.State in [dsInsert, dsEdit] then
  FormMain.SetFields(FormEmailsEnviar,True);
end;

procedure TFormEmailsEnviar.PngSpeedButton1Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_ANEXO.Value:=OpenDialog1.FileName;
  end;
end;

procedure TFormEmailsEnviar.PngSpeedButton2Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_ANEXO2.Value:=OpenDialog1.FileName;
  end;
end;

procedure TFormEmailsEnviar.PngSpeedButton4Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_ANEXO3.Value:=OpenDialog1.FileName;
  end;
end;

procedure TFormEmailsEnviar.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContasLoc, FormEmailsContasLoc);
  FormEmailsContasLoc.ShowModal;
  if EmailsContasLoc.Procurar then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_EMAILCONTA.Value:=FormEmailsContasLoc.QYEmailsContasEMC_CODIGO.Value;
    DM2.TBEmailsEMC_NOME.Value:=FormEmailsContasLoc.QYEmailsContasEMC_NOME.Value;
    DM2.TBEmailsEMA_ASSINATURA.Value:=FormEmailsContasLoc.QYEmailsContasEMC_ASSINATURA.Value;
    DM2.TBEmailsEMA_CONFIRMACAO.Value:=FormEmailsContasLoc.QYEmailsContasEMC_CONFIRMACAO.Value;
  end;
  FormEmailsContasLoc.Free;
  FormEmailsContasLoc:=nil;
end;

procedure TFormEmailsEnviar.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntosLoc, FormAssuntosLoc);
  FormAssuntosLoc.ShowModal;
  if AssuntosLoc.Procurar then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_ASSUNTO.Value:=FormAssuntosLoc.QYAssuntosASS_CODIGO.Value;
    DM2.TBEmailsASS_DESCRICAO.Value:=FormAssuntosLoc.QYAssuntosASS_DESCRICAO.Value;
    DM2.TBEmailsEMA_MENSAGEM.Value:=FormAssuntosLoc.QYAssuntosASS_TEXTO.Value;
  end;
  FormAssuntosLoc.Free;
  FormAssuntosLoc:=nil;
end;

procedure TFormEmailsEnviar.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBEmails.Edit;
    DM2.TBEmailsEMA_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBEmailsCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBEmailsEMA_DESTINATARIOS.Value:=FormClientesLoc.QYClientesCLI_EMAIL.Value;
    if FormClientesLoc.QYClientesCLI_EMAIL2.Value<>'' then
    DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+FormClientesLoc.QYClientesCLI_EMAIL2.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormEmailsEnviar);

finalization
  UnRegisterClass(TFormEmailsEnviar);

end.
