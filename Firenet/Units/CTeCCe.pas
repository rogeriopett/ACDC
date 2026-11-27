unit CTeCCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList, Vcl.ImgList, PngImageList,
  Vcl.Menus, Vcl.Buttons, PngSpeedButton, DBSBtn, Vcl.ExtCtrls, PngBitBtn,
  System.UITypes;

type
  TFormCteCCe = class(TForm)
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel1: TBevel;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton14: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    Bevel5: TBevel;
    SpeedButton28: TPngSpeedButton;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    EnviarCCe1: TMenuItem;
    EnviarCCePorEmail1: TMenuItem;
    N3: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    N2: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    DBGrid1: TDBGrid;
    Label53: TLabel;
    DBText10: TDBText;
    Label49: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBGrid2: TDBGrid;
    procedure Fechar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure EnviarCCe1Click(Sender: TObject);
    procedure EnviarCCePorEmail1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarCCE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarEmail;
  public
    { Public declarations }
  end;

var
  FormCteCCe: TFormCteCCe;

implementation
uses DataMod, DataMod2, Funcoes1, CTeCCeItens, CTe_Util_TLB, EmailsEnviar, CTeCCeFast;
{$R *.dfm}

procedure TFormCteCCe.GerarEmail;
var
  A,M,D: Word;
  MM: TMemo;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_REMETENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CTECCEEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);

  MM.Text:=StringReplace(MM.Text,'|CTE_CODIGO|',IntToStr(DM2.TBCteCTE_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_CHAVEACESSO|',DM2.TBCteCTE_CHAVEACESSO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_DESNOME|',DM2.TBCteCTE_DESNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_REMNOME|',DM2.TBCteCTE_REMNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTC_PROTOCOLO|',DM2.TBCteCCeCTC_PROTOCOLO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTC_PROTOCOLODH|',DM2.TBCteCCeCTC_PROTOCOLODH.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarCCe(False,True,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCCe.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCCe.xml';
  DM2.TBEmailsEMA_ANEXO2.Value:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCCe.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  //DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_NFSEEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=Trim(DM.TBClientesCLI_EMAIL.Value);
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.TBClientesCLI_EMAIL2.Value);
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  DM2.TBEmailsEMC_ASSINATURA.Value:=DM2.TBEmailsContasEMC_ASSINATURA.Value;
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
end;

procedure TFormCteCCe.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCteCCe.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteCce.IsEmpty,'Nenhuma Carta de Correção selecionada.');
  AbortIf(DM2.TBCteCCeCTC_PROTOCOLO.Value<>'','Esta Carta de Correção já foi protocolada.');

  DM2.TBCteCCeItens.Insert;
  Application.CreateForm(TFormCteCCeItens, FormCteCCeItens);
  FormCteCCeItens.ShowModal;
  FormCteCCeItens.Free;
  FormCteCCeItens:=nil;
end;

procedure TFormCteCCe.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteCCeItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBCteCCeCTC_PROTOCOLO.Value<>'','Esta Carta de Correção já foi protocolada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCteCCeItens.Delete;
  end;
end;

procedure TFormCteCCe.EnviarCCe1Click(Sender: TObject);
var U: CTe_Util_Interface;
  procCCe ,msgDados, msgRetWS, msgResultado, nroProtocolo, dhProtocolo, XMLCorrecao: WideString;
  cStat: Integer;
  Proxy: String;
  F: TextFile;
  A,M,D: Word;
begin
  AbortIf(DM2.TBCteCCe.IsEmpty,'Nenhuma CCe selecionada.');

  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  XMLCorrecao:='';
  DM2.TBCteCCeItens.First;
  while not DM2.TBCteCCeItens.Eof do
  begin
    if DM2.TBCteCCeItensCTX_NUMITEM.IsNull then
    XMLCorrecao:=XMLCorrecao+U.geraInfCorrecao(DM2.TBCteCCeItensCTX_GRUPO.Value,DM2.TBCteCCeItensCTX_CAMPO.Value,DM2.TBCteCCeItensCTX_VALOR.Value,'') else
    XMLCorrecao:=XMLCorrecao+U.geraInfCorrecao(DM2.TBCteCCeItensCTX_GRUPO.Value,DM2.TBCteCCeItensCTX_CAMPO.Value,DM2.TBCteCCeItensCTX_VALOR.Value,IntToStr(DM2.TBCteCCeItensCTX_NUMITEM.Value));
    DM2.TBCteCCeItens.Next;
  end;
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value) else
  Proxy:='';
  procCCe:=U.EnviaCCe(
    DM.TBParametrosPAR_SIGLAWSCTE.Value,
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    DM.TBParametrosPAR_VERSAOXMLCTE.Value,
    MsgDados,
    MsgRetWS,
    cStat,
    MsgResultado,
    DM2.TBCteCTE_CHAVEACESSO.Value,
    XMLCorrecao,
    0,
    DM2.TBCteCCeCTC_SEQUENCIAL.Value,
    FormatDateTime('yyyy-mm-dd "" hh:mm:ss', Now), //DM2.TBCteCCeCTC_DATA.Value,
    nroProtocolo,
    dhProtocolo,
    Proxy,
    DM.TBParametrosPAR_PROXYUSER.Value,
    DM.TBParametrosPAR_PROXYPASSWORD.Value,
    DM.TBParametrosPAR_LICENCADLLCTE.Value
  );
  Screen.Cursor:=crDefault;
  if cStat=135 then
  begin
    MessageDlg('Protocolo de registro: '+nroProtocolo+#13#10+'Data e hora de registro: '+dhProtocolo,mtInformation,[mbOk],0);
    if procCCe<>'' then
    begin
      DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D); //estava utilizando a data da CCe... alterado para a data na NFe para ficar na mesma pasta.
      AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCCe.xml',CP_UTF8);
      Rewrite(F);
      Write(F,AnsiToUtf8(procCCe));
      CloseFile(F);
      DM2.TBCteCCe.Edit;
      DM2.TBCteCCeCTC_PROTOCOLO.Value:=nroProtocolo;
      DM2.TBCteCCeCTC_PROTOCOLODH.Value:=dhProtocolo;
      DM2.TBCteCCe.Post;
    end;
  end else
  MessageDlg('O envio da carta de correção falhou.'+#13#10#13#10+msgResultado,mtError,[mbOk],0);
end;

procedure TFormCteCCe.EnviarCCePorEmail1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM2.TBCteCCe.IsEmpty,'Nenhuma carta de correção selecionada.');
  AbortIf(DM2.TBCteCCeItens.IsEmpty,'Esta carta de correção não possui itens.');
  AbortIf(DM2.TBCteCCeCTC_PROTOCOLO.Value='','Esta carta de correção ainda não foi protocolada.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCCe.xml'),'Arquivo XML não encontrado.');

  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormCteCCe.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCteCCe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBCteCCe.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCteCCe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCteCCe.Imprimir1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteCCe.IsEmpty,'Nenhuma carta de correção selecionada.');
  AbortIf(DM2.TBCteCCeItens.IsEmpty,'Esta carta de correção não possui itens.');
  AbortIf(DM2.TBCteCCeCTC_PROTOCOLO.Value='','Esta carta de correção ainda não foi protocolada.');

  GerarCCE(True,False,'');
end;

procedure TFormCteCCe.GerarCCE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var S: String;
  //PDFFilter: TQRPDFDocumentFilter;
begin
  S:=DM2.TBCteCTE_CHAVEACESSO.Value;
  Insert('.',S,5); Insert('.',S,10); Insert('.',S,15); Insert('.',S,20); Insert('.',S,25); Insert('.',S,30); Insert('.',S,35); Insert('.',S,40); Insert('.',S,45); Insert('.',S,50);

  Application.CreateForm(TFormCTeCCeFast, FormCTeCCeFast);
  FormCTeCCeFast.QY01.Close;
  FormCTeCCeFast.QY01.ParamByName('codigo').AsInteger:=DM2.TBCteCCeCTC_CODIGO.Value;
  FormCTeCCeFast.QY01.Open;
  FormCTeCCeFast.QY01a.Open;
  FormCTeCCeFast.frxReport1.Variables['EMP_CNPJ']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormCTeCCeFast.frxReport1.Variables['EMP_IE']:=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  FormCTeCCeFast.frxReport1.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormCTeCCeFast.frxReport1.Variables['CHAVEACESSO']:=QuotedStr(S);
  FormCTeCCeFast.frxReport1.Variables['ENDERECO']:=QuotedStr(
    DM.TBEmpresaEMP_ENDERECO.Value+',  '+
    DM.TBEmpresaEMP_NUMERO.Value+' - '+
    DM.TBEmpresaEMP_BAIRRO.Value+' - '+
    DM.TBEmpresaEMP_CIDADE.Value+' - '+
    DM.TBEmpresaEMP_ESTADO.Value+' - CEP: '+
    DM.TBEmpresaEMP_CEP.Value+' - Fone: '+
    DM.TBEmpresaEMP_FONE1.Value+' - '+
    DM.TBEmpresaEMP_HOMEPAGE.Value
  );
  if GerarPDF then
  begin
    FormCTeCCeFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormCTeCCeFast.frxPDFExport1.ShowDialog:=False;
    FormCTeCCeFast.frxReport1.PrintOptions.ShowDialog:=False;
    FormCTeCCeFast.frxReport1.PrepareReport;
    FormCTeCCeFast.frxReport1.Export(FormCTeCCeFast.frxPDFExport1);
  end;

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormCTeCCeFast.frxReport1.ShowReport else
    FormCTeCCeFast.frxReport1.Print;
  end;
  FormCTeCCeFast.Free;
  FormCTeCCeFast:=nil;
end;

end.
