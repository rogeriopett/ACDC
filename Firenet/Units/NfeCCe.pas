unit NfeCCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, PngSpeedButton, DBSBtn, ExtCtrls,
  ImgList, PngImageList, Menus, Grids, DBGrids, Mask, IDAttachmentFile,
  Data.DB, System.ImageList, System.UITypes;

type
  TFormNfeCCe = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    EnviarCCe1: TMenuItem;
    EnviarCCePorEmail1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    Panel2: TPanel;
    Bevel4: TBevel;
    InserirRegistro1Button: TDBSpeedButton;
    EliminarRegistro1Button: TDBSpeedButton;
    SalvarRegistro1Button: TDBSpeedButton;
    CancelarRegistro1Button: TDBSpeedButton;
    Fechar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    EnviarCCePorEmail1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    Bevel5: TBevel;
    EnviarCCe1Button: TPngSpeedButton;
    Label53: TLabel;
    DBText10: TDBText;
    Label49: TLabel;
    Label59: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    DBEdit7: TDBEdit;
    N3: TMenuItem;
    Imprimir1: TMenuItem;
    Imprimir1Button: TPngSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EnviarCCe1Click(Sender: TObject);
    procedure EnviarCCePorEmail1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarCCE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarEmail;
  public
    { Public declarations }
  end;

var
  FormNfeCCe: TFormNfeCCe;

implementation
uses DataMod, DataMod2, Funcoes1, ShellAPI, NFe_Util_2G_TLB, EmailsEnviar, NfeCCeFast;
{$R *.dfm}

procedure TFormNfeCCe.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfeCCe.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfeCCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNfeCCe.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNfeCCe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfeCCe.GerarEmail;
var
  A,M,D: Word;
  MM: TMemo;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_NFECCEEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);

  MM.Text:=StringReplace(MM.Text,'|NFE_CODIGO|',IntToStr(DM.TBNfeNFE_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_CHAVEACESSO|',DM.TBNfeNFE_CHAVEACESSO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_NOME|',DM.TBNfeNFE_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NCC_PROTOCOLO|',DM.TBNfeCCeNCC_PROTOCOLO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NCC_PROTOCOLODH|',DM.TBNfeCCeNCC_PROTOCOLODH.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarCCe(False,True,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.xml';
  DM2.TBEmailsEMA_ANEXO2.Value:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  //DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_NFSEEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=Trim(DM.TBClientesCLI_EMAIL.Value);
  if Trim(DM.TBClientesCLI_EMAIL2.Value)<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.TBClientesCLI_EMAIL2.Value);
  if DM.TBParametrosPAR_NFEEMAILTRANSP.Value='S' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.TBNfeNFE_TRANSPEMAIL.Value);
  //ver a quantidade de emails.. nao pode ser maior de 255 caracteres.

  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  DM2.TBEmailsEMC_CONFIRMACAO.Value:=DM2.TBEmailsContasEMC_CONFIRMACAO.Value;
  DM2.TBEmailsEMC_EMAIL.Value:=DM2.TBEmailsContasEMC_EMAIL.Value;
  DM2.TBEmailsEMC_LOGIN.Value:=DM2.TBEmailsContasEMC_LOGIN.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsEMC_POP.Value:=DM2.TBEmailsContasEMC_POP.Value;
  DM2.TBEmailsEMC_POPPORTA.Value:=DM2.TBEmailsContasEMC_POPPORTA.Value;
  DM2.TBEmailsEMC_REPLYTO.Value:=DM2.TBEmailsContasEMC_REPLYTO.Value;
  DM2.TBEmailsEMC_SENHA.Value:=DM2.TBEmailsContasEMC_SENHA.Value;
  DM2.TBEmailsEMC_SMTP.Value:=DM2.TBEmailsContasEMC_SMTP.Value;
  DM2.TBEmailsEMC_SMTPPORTA.Value:=DM2.TBEmailsContasEMC_SMTPPORTA.Value;
  DM2.TBEmailsEMC_SSL.Value:=DM2.TBEmailsContasEMC_SSL.Value;
  DM2.TBEmailsEMC_TLS.Value:=DM2.TBEmailsContasEMC_TLS.Value;
  DM2.TBEmailsVEN_NOME.Value:=DM.TBNfeVEN_NOME.Value;
end;

procedure TFormNfeCCe.GerarCCE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var S: String;
begin
  S:=DM.TBNfeNFE_CHAVEACESSO.Value;
  Insert('.',S,5); Insert('.',S,10); Insert('.',S,15); Insert('.',S,20); Insert('.',S,25); Insert('.',S,30); Insert('.',S,35); Insert('.',S,40); Insert('.',S,45); Insert('.',S,50);

  Application.CreateForm(TFormNfeCCeFast, FormNfeCCeFast);
  FormNfeCCeFast.QY01.Close;
  FormNfeCCeFast.QY01.ParamByName('codigo').AsInteger:=DM.TBNfeCCeNCC_NFE.Value;
  FormNfeCCeFast.QY01.Open;
  FormNfeCCeFast.frxReport1.Variables['EMP_CNPJ']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNfeCCeFast.frxReport1.Variables['EMP_IE']:=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  FormNfeCCeFast.frxReport1.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNfeCCeFast.frxReport1.Variables['CHAVEACESSO']:=QuotedStr(S);
  FormNfeCCeFast.frxReport1.Variables['ENDERECO']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+',  '+
                                                             DM.TBEmpresaEMP_NUMERO.Value+' - '+
                                                             DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                                                             DM.TBEmpresaEMP_CIDADE.Value+' - '+
                                                             DM.TBEmpresaEMP_ESTADO.Value+' - CEP: '+
                                                             DM.TBEmpresaEMP_CEP.Value+' - Fone: '+
                                                             DM.TBEmpresaEMP_FONE1.Value+' - '+
                                                             DM.TBEmpresaEMP_HOMEPAGE.Value);
  if GerarPDF then
  begin
    FormNfeCCeFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormNfeCCeFast.frxPDFExport1.ShowDialog:=False;
    FormNfeCCeFast.frxReport1.PrintOptions.ShowDialog:=False;
    FormNfeCCeFast.frxReport1.PrepareReport;
    FormNfeCCeFast.frxReport1.Export(FormNfeCCeFast.frxPDFExport1);
  end;

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormNfeCCeFast.frxReport1.ShowReport else
    FormNfeCCeFast.frxReport1.Print;
  end;
  FormNfeCCeFast.Free;
  FormNfeCCeFast:=nil;
end;

procedure TFormNfeCCe.Imprimir1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeCCe.IsEmpty,'Nenhuma carta de correção selecionada.');
  AbortIf(DM.TBNfeCCeNCC_PROTOCOLO.Value='','Esta carta de correção ainda não foi protocolada.');

  GerarCCE(True,False,'');
end;

procedure TFormNfeCCe.EnviarCCe1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  procCCe, msgDados, msgRetWS, msgResultado, nroProtocolo, dhProtocolo: WideString;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
begin
  AbortIf(DM.TBNfeCCe.IsEmpty,'Nenhuma CCe selecionada.');

  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  procCCe:=U.EnviaCCe2G(DM.TBParametrosPAR_SIGLAWS.Value,
                        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                        '4.00', //DM.TBParametrosPAR_VERSAOXML.Value,
                        msgDados,
                        msgRetWS,
                        cStat,
                        msgResultado,
                        DM.TBNfeNFE_CHAVEACESSO.Value,
                        DM.TBNfeCCeNCC_TEXTO.Value,
                        0, //texto acentuado - 0:nao 1:sim.
                        DM.TBNfeCCeNCC_SEQUENCIAL.Value,
                        DateToFBDate(DM.TBNfeCCeNCC_DATA.Value)+'T'+TimeToStr(DM.TBNfeCCeNCC_HORA.Value)+DM.TBParametrosPAR_FUSOHORARIO.Value,
                        nroProtocolo,
                        dhProtocolo,
                        DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value),
                        DM.TBParametrosPAR_PROXYUSER.Value,
                        DM.TBParametrosPAR_PROXYPASSWORD.Value,
                        DM.TBParametrosPAR_LICENCADLL.Value) else
  procCCe:=U.EnviaCCe2G(DM.TBParametrosPAR_SIGLAWS.Value,
                        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                        '4.00', //DM.TBParametrosPAR_VERSAOXML.Value,
                        msgDados,
                        msgRetWS,
                        cStat,
                        msgResultado,
                        DM.TBNfeNFE_CHAVEACESSO.Value,
                        DM.TBNfeCCeNCC_TEXTO.Value,
                        0, //texto acentuado - 0:nao 1:sim.
                        DM.TBNfeCCeNCC_SEQUENCIAL.Value,
                        DateToFBDate(DM.TBNfeCCeNCC_DATA.Value)+'T'+TimeToStr(DM.TBNfeCCeNCC_HORA.Value)+DM.TBParametrosPAR_FUSOHORARIO.Value,
                        nroProtocolo,
                        dhProtocolo,
                        '',
                        '',
                        '',
                        DM.TBParametrosPAR_LICENCADLL.Value);
  Screen.Cursor:=crDefault;
  if cStat=135 then
  begin
    MessageDlg('Protocolo de registro: '+nroProtocolo+#13#10+
               'Data e hora de registro: '+dhProtocolo,mtInformation,[mbOk],0);
    if procCCe<>'' then
    begin
      DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
      AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.xml',CP_UTF8);
      Rewrite(F);
      Write(F,AnsiToUtf8(procCCe));
      CloseFile(F);
      DM.TBNfeCCe.Edit;
      DM.TBNfeCCeNCC_PROTOCOLO.Value:=nroProtocolo;
      DM.TBNfeCCeNCC_PROTOCOLODH.Value:=dhProtocolo;
      DM.TBNfeCCe.Post;
    end;
  end else
  MessageDlg('O envio da carta de correção falhou.'+#13#10#13#10+msgResultado,mtError,[mbOk],0);
end;

procedure TFormNfeCCe.EnviarCCePorEmail1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM.TBNfeCCe.IsEmpty,'Nenhuma carta de correção selecionada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.xml'),'Arquivo XML não encontrado.');

  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

initialization
  RegisterClass(TFormNfeCCe);

finalization
  UnRegisterClass(TFormNfeCCe);

end.
