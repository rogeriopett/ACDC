unit EmailsEnviarTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  ACBrBase, ACBrMail, Vcl.ExtCtrls;

type
  TFormEmailsEnviarTeste = class(TForm)
    Memo1: TMemo;
    PngBitBtn1: TPngBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    PngBitBtn2: TPngBitBtn;
    ACBrMail1: TACBrMail;
    Timer1: TTimer;
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ACBrMail1MailException(const AMail: TACBrMail; const E: Exception;
      var ThrowIt: Boolean);
    procedure ACBrMail1MailProcess(const AMail: TACBrMail;
      const aStatus: TMailStatus);
    procedure ACBrMail1AfterMailProcess(Sender: TObject);
    procedure ACBrMail1BeforeMailProcess(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEmailsEnviarTeste: TFormEmailsEnviarTeste;

implementation

{$R *.dfm}

uses DataMod2, Funcoes1;

procedure TFormEmailsEnviarTeste.ACBrMail1AfterMailProcess(Sender: TObject);
begin
  PngBitBtn1.Enabled:=True;
end;

procedure TFormEmailsEnviarTeste.ACBrMail1BeforeMailProcess(Sender: TObject);
begin
  PngBitBtn1.Enabled:=False;
end;

procedure TFormEmailsEnviarTeste.ACBrMail1MailException(const AMail: TACBrMail;
  const E: Exception; var ThrowIt: Boolean);
begin
  Memo1.Lines.Add(E.Message);
end;

procedure TFormEmailsEnviarTeste.ACBrMail1MailProcess(const AMail: TACBrMail;
  const aStatus: TMailStatus);
begin
  case aStatus of
    pmsStartProcess: Memo1.Lines.Add(TimeToStr(Now)+' Iniciando processo de envio...');
    pmsConfigHeaders: Memo1.Lines.Add(TimeToStr(Now)+' Configurando cabeçalhos...');
    pmsAddingMimeParts: Memo1.Lines.Add(TimeToStr(Now)+' Adicionando MIME Parts...');
    pmsLoginSMTP: Memo1.Lines.Add(TimeToStr(Now)+' Conectando ao servidor SMTP...');
    pmsStartSends: Memo1.Lines.Add(TimeToStr(Now)+' Iniciando envio...');
    pmsSendTo: Memo1.Lines.Add(TimeToStr(Now)+' Enviando para destinatários...');
    pmsSendCC: Memo1.Lines.Add(TimeToStr(Now)+' Enviando cópia...');
    pmsSendBCC: Memo1.Lines.Add(TimeToStr(Now)+' Enviando cópia oculta...');
    pmsSendReplyTo: Memo1.Lines.Add(TimeToStr(Now)+' Setando reply to...');
    pmsSendData: Memo1.Lines.Add(TimeToStr(Now)+' Enviando...');
    pmsLogoutSMTP: Memo1.Lines.Add(TimeToStr(Now)+' Desconectando do servidor SMTP...');
    pmsDone: Memo1.Lines.Add(TimeToStr(Now)+' Fim do processo!');
    pmsError: Memo1.Lines.Add(TimeToStr(Now)+' Erro.');
  end;
end;

procedure TFormEmailsEnviarTeste.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Clear;
end;

procedure TFormEmailsEnviarTeste.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  FormEmailsEnviarTeste.Repaint;
  Application.ProcessMessages;
  Timer1.Enabled:=True;
end;

procedure TFormEmailsEnviarTeste.PngBitBtn1Click(Sender: TObject);
var Fechar: Boolean;
begin
  PngBitBtn1.Enabled:=False;
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  Application.ProcessMessages;

  Memo1.Lines.Add('Testando envio de email para '+Label2.Caption);
  Memo1.Lines.Add(' ');
  Memo1.Lines.Add('-------------------------------------------------------------------');
  Memo1.Lines.Add('Configurações da Conta');
  Memo1.Lines.Add('-------------------------------------------------------------------');
  Memo1.Lines.Add('Email origem..: '+DM2.TBEmailsContasEMC_EMAIL.Value);
  Memo1.Lines.Add('Servidor SMTP.: '+DM2.TBEmailsContasEMC_SMTP.Value);
  Memo1.Lines.Add('Porta SMTP....: '+IntToStr(DM2.TBEmailsContasEMC_SMTPPORTA.Value));
  Memo1.Lines.Add('Login.........: '+DM2.TBEmailsContasEMC_LOGIN.Value);
  Memo1.Lines.Add('Senha.........: ***************');
  Memo1.Lines.Add('TLS...........: '+DM2.TBEmailsContasEMC_TLS.Value);
  Memo1.Lines.Add('SSL...........: '+DM2.TBEmailsContasEMC_SSL.Value);
  Memo1.Lines.Add('-------------------------------------------------------------------');
  Memo1.Lines.Add(' ');
  ACBrMail1.From:=DM2.TBEmailsContasEMC_EMAIL.Value;
  ACBrMail1.FromName:=UCWords(DM2.TBEmailsContasEMC_NOME.Value);

  ACBrMail1.Host:=DM2.TBEmailsContasEMC_SMTP.Value;
  ACBrMail1.Username:=DM2.TBEmailsContasEMC_LOGIN.Value;
  ACBrMail1.Password:=DM2.TBEmailsContasEMC_SENHA.Value;
  ACBrMail1.Port:=IntToStr(DM2.TBEmailsContasEMC_SMTPPORTA.Value);
  ACBrMail1.Attempts:=2;

  if DM2.TBEmailsContasEMC_SSL.Value='S' then
  ACBrMail1.SetSSL:=True else
  ACBrMail1.SetSSL:=False;

  if DM2.TBEmailsContasEMC_TLS.Value='S' then
  ACBrMail1.SetTLS:=True else
  ACBrMail1.SetTLS:=False;

  if DM2.TBEmailsContasEMC_CONFIRMACAO.Value='S' then
  ACBrMail1.ReadingConfirmation:=True else
  ACBrMail1.ReadingConfirmation:=False;

  ACBrMail1.AddAddress(Label2.Caption,''); //o último ou o único.

  ACBrMail1.IsHTML:=True;
  ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';

  ACBrMail1.Subject:='[firenet] Teste de envio de email pelo sistema Firenet';
  ACBrMail1.Body.Text:='<html><body>Olá,<br/><br/><p>Se você está lendo esse email é porque o envio de emails pelo sistema <b>Firenet</b> funcionou corretamente.</p><br/><br/><a href="https://www.runtimesistemas.com.br">Runtime Sistemas.</a><br/><br/></body></html>';

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
end;

procedure TFormEmailsEnviarTeste.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEmailsEnviarTeste.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=False;
  Application.ProcessMessages;
  PngBitBtn1.Click;
end;

end.
