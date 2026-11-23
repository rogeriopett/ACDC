unit Boletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ImgList, PngImageList, Menus, Buttons,
  PngSpeedButton, DBSBtn, ExtCtrls, Grids, DBGrids, PngBitBtn, ComCtrls, QRPDFFilt,
  System.ImageList, System.UITypes, ACBrBase, ACBrBoleto, ACBrBoletoConversao;

type
  TFormBoletos = class(TForm)
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
    BaixarBoleto1Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    EstornarBaixa1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeContas1Button: TPngSpeedButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Ajuda2Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeContas1: TMenuItem;
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
    PngImageList1: TPngImageList;
    BaixarBoleto1: TMenuItem;
    EstornarBaixa1: TMenuItem;
    ImprimirBoleto1Button: TPngSpeedButton;
    N4: TMenuItem;
    Remessas1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit13: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    FluxoDeCaixa1: TMenuItem;
    FluxoDeCaixa1Button: TPngSpeedButton;
    N6: TMenuItem;
    BoletosPorCliente1: TMenuItem;
    BoletosPorClienteComItens1: TMenuItem;
    BoletosPorConta1: TMenuItem;
    BoletosPorContaComItens1: TMenuItem;
    Retornos1Button: TPngSpeedButton;
    Bevel5: TBevel;
    DBEdit23: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    Label29: TLabel;
    DBEdit31: TDBEdit;
    GerarArquivoEDIFiscal1: TMenuItem;
    N7: TMenuItem;
    DBEdit33: TDBEdit;
    Retornos1: TMenuItem;
    DBComboBox4: TDBComboBox;
    Label32: TLabel;
    ImprimirBoleto1: TMenuItem;
    Label35: TLabel;
    DBEdit46: TDBEdit;
    CalcularDgitoVerificador1: TMenuItem;
    Label36: TLabel;
    DBEdit47: TDBEdit;
    Label37: TLabel;
    DBEdit48: TDBEdit;
    Label38: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    Label39: TLabel;
    DBMemo1: TDBMemo;
    Label40: TLabel;
    EnviarBoletoPorEmail1Button: TPngSpeedButton;
    EnviarBoletoPorEmail1: TMenuItem;
    Remessas1Button: TPngSpeedButton;
    DBEdit51: TDBEdit;
    Label47: TLabel;
    SalvarBoletoEmPDF1Button: TPngSpeedButton;
    SalvarBoletoEmPDF1: TMenuItem;
    SaveDialog1: TSaveDialog;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    CalcularMultaEJuros1: TMenuItem;
    TabSheet3: TTabSheet;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label22: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label5: TLabel;
    Label15: TLabel;
    SpeedButton4: TPngSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label53: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label52: TLabel;
    Label25: TLabel;
    DBText3: TDBText;
    Label26: TLabel;
    DBText4: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label48: TLabel;
    DBEdit1: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit52: TDBEdit;
    Label49: TLabel;
    Label50: TLabel;
    SelecionarBoletos1: TMenuItem;
    SelecionarBoletos1Button: TPngSpeedButton;
    Label51: TLabel;
    DBComboBox2: TDBComboBox;
    Label54: TLabel;
    DBEdit55: TDBEdit;
    Label55: TLabel;
    DBEdit56: TDBEdit;
    Label56: TLabel;
    DBEdit57: TDBEdit;
    CancelarBoleto1: TMenuItem;
    CancelarBoleto1Button: TPngSpeedButton;
    Label57: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Label58: TLabel;
    ImprimirBoletoComReciboDeEntrega1: TMenuItem;
    ImprimirBoletoSemReciboDeEntrega1: TMenuItem;
    WebServices1: TMenuItem;
    RegistrarBoletos1: TMenuItem;
    ConsultarBoletos1: TMenuItem;
    Label59: TLabel;
    DBEdit60: TDBEdit;
    RegistrarBoletos1Button: TPngSpeedButton;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBComboBox3: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    EnviarBoletoPorWhatsApp1Button: TPngSpeedButton;
    EnviarBoletoPorWhatsApp1: TMenuItem;
    Label63: TLabel;
    DBEdit61: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeContas1Click(Sender: TObject);
    procedure BaixarBoleto1Click(Sender: TObject);
    procedure EstornarBaixa1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure Remessas1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FluxoDeCaixa1Click(Sender: TObject);
    procedure BoletosPorCliente1Click(Sender: TObject);
    procedure BoletosPorClienteComItens1Click(Sender: TObject);
    procedure BoletosPorConta1Click(Sender: TObject);
    procedure BoletosPorContaComItens1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure GerarArquivoEDIFiscal1Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure Retornos1Click(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure ImprimirBoleto1Click(Sender: TObject);
    procedure CalcularDgitoVerificador1Click(Sender: TObject);
    procedure EnviarBoletoPorEmail1Click(Sender: TObject);
    procedure SalvarBoletoEmPDF1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure CalcularMultaEJuros1Click(Sender: TObject);
    procedure SelecionarBoletos1Click(Sender: TObject);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure CancelarBoleto1Click(Sender: TObject);
    procedure DBEdit50KeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirBoletoComReciboDeEntrega1Click(Sender: TObject);
    procedure ImprimirBoletoSemReciboDeEntrega1Click(Sender: TObject);
    procedure RegistrarBoletos1Click(Sender: TObject);
    procedure ConsultarBoletos1Click(Sender: TObject);
    procedure EnviarBoletoPorWhatsApp1Click(Sender: TObject);
    procedure DBEdit61DblClick(Sender: TObject);
    procedure DBEdit60DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure GerarEmail;
    procedure GerarBoleto(Recibo: Boolean; ArquivoPDF: String);
  public
    { Public declarations }
  end;

var
  FormBoletos: TFormBoletos;

implementation
uses DataMod, DataMod2, BoletosBaixar, BoletosItens, BoletosRel,
  Clientes, Contas, CalculoDV, DataModSearch, Funcoes1, EmailsEnviar, Caixa,
  Main, BoletosEDI, BoletosRemessas, BoletosRetornos, BoletosLoc, ContasLoc,
  DateUtils, ClientesLoc, FuncoesFirenet, ShellAPI, BoletosSelecionar,
  BoletosFast, frxClass, BoletosAPIRegistro, BoletosAPIConsulta, System.StrUtils,
  Zap;
{$R *.dfm}

procedure TFormBoletos.GerarEmail;
var MM: TMemo;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;

  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_BOLETOSEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value; //eliminar esse campo: DM.TBParametrosPAR_NFSEEMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False;
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|BOL_CODIGO|',IntToStr(DM2.TBBoletosBOL_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_CLIENTE|',IntToStr(DM2.TBBoletosBOL_CLIENTE.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_NOME|',DM2.TBBoletosBOL_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_OBSERVACOES|',DM2.TBBoletosBOL_OBSERVACOES.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|BOL_DTVENCIMENTO|',DateToStr(DM2.TBBoletosBOL_DTVENCIMENTO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarBoleto(False,DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\'+AlignText(IntToStr(DM2.TBBoletosBOL_CODIGO.Value),'0',8,taRight)+'.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\'+AlignText(IntToStr(DM2.TBBoletosBOL_CODIGO.Value),'0',8,taRight)+'.pdf';
  //DM2.TBEmailsEMA_ANEXO2.Value:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfseNFS_CHAVEACESSO.Value+'.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  //DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_NFSEEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
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

procedure TFormBoletos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormBoletos.BaixarBoleto1Click(Sender: TObject);
var B: Boolean;
begin
  AbortIf(DM2.TBBoletos.IsEmpty,            'Nenhum boleto selecionado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='B','Boleto já baixado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='C','Não é possível baixar um boleto cancelado.');

  //verifica se tem alguma conta a receber já baixada.
  B:=False;
  DM2.TBBoletosItens.Close;
  DM2.TBBoletosItens.Open;
  DM2.TBBoletosItens.First;
  DM2.TBBoletosItens.DisableControls;
  while not DM2.TBBoletosItens.Eof do
  begin
    if (DM2.TBBoletosItensREE_STATUS.Value='B') or (DM2.TBBoletosItensREE_STATUS.Value='P') then
    begin
      MessageDlg('Já existe uma ou mais contas a receber baixadas ou pré-baixadas neste boleto.'+#13#10+
                 'As contas a receber que compõem um boleto devem ser baixadas somente atráves do boleto.',mtError,[mbOk],0);
      B:=True;
      Break;
    end;
    DM2.TBBoletosItens.Next;
  end;
  DM2.TBBoletosItens.EnableControls;
  if B then Exit;  
  //...
  Application.CreateForm(TFormBoletosBaixar, FormBoletosBaixar);
  FormBoletosBaixar.ShowModal;
  FormBoletosBaixar.Free;
  FormBoletosBaixar:=nil;
end;

procedure TFormBoletos.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBBoletos.IsEmpty,            'Nenhum boleto selecionado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='B','Este boleto já foi baixado. Não é possível incluir mais itens.');

  Application.CreateForm(TFormBoletosItens, FormBoletosItens);
  FormBoletosItens.ShowModal;
  FormBoletosItens.Free;
  FormBoletosItens:=nil;
end;

procedure TFormBoletos.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBBoletosItens.IsEmpty,       'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='B','Boleto já baixado.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBBoletosItens.Delete;
    DM2.CalcularTotaisBoleto(True);
  end;
end;

procedure TFormBoletos.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBBoletosItens.IsEmpty,       'Não existe nenhum item para excluir.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='B','Boleto já baixado.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBBoletosItens.First;
    while not DM2.TBBoletosItens.Eof do
    begin
      DM2.TBBoletosItens.Delete;
    end;
    DM2.CalcularTotaisBoleto(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormBoletos.BoletosPorCliente1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRel, FormBoletosRel);
  FormBoletosRel.ComboBox1.Enabled:=False;
  FormBoletosRel.ComboBox1.ItemIndex:=0;
  FormBoletosRel.ShowModal;
  FormBoletosRel.Free;
  FormBoletosRel:=nil;
end;

procedure TFormBoletos.BoletosPorClienteComItens1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRel, FormBoletosRel);
  FormBoletosRel.ComboBox1.Enabled:=False;
  FormBoletosRel.ComboBox1.ItemIndex:=1;
  FormBoletosRel.ShowModal;
  FormBoletosRel.Free;
  FormBoletosRel:=nil;
end;

procedure TFormBoletos.BoletosPorConta1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRel, FormBoletosRel);
  FormBoletosRel.ComboBox1.Enabled:=False;
  FormBoletosRel.ComboBox1.ItemIndex:=2;
  FormBoletosRel.ShowModal;
  FormBoletosRel.Free;
  FormBoletosRel:=nil;
end;

procedure TFormBoletos.BoletosPorContaComItens1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRel, FormBoletosRel);
  FormBoletosRel.ComboBox1.Enabled:=False;
  FormBoletosRel.ComboBox1.ItemIndex:=3;
  FormBoletosRel.ShowModal;
  FormBoletosRel.Free;
  FormBoletosRel:=nil;
end;

procedure TFormBoletos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormBoletos.CadastroDeContas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormBoletos.CalcularDgitoVerificador1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCalculoDV, FormCalculoDV);
  FormCalculoDV.ShowModal;
  FormCalculoDV.Free;
  FormCalculoDV:=nil;
end;

procedure TFormBoletos.CalcularMultaEJuros1Click(Sender: TObject);
var JurosPorDia, JurosTotal: Extended;
  Dias: Word;
begin
  AbortIf(DM2.TBBoletos.IsEmpty,'Nenhum boleto selecionado.');

  if DM2.TBBoletosBOL_DTJUROSAPOS.Value < Date then
  begin
    DM2.TBBoletos.Edit;
    JurosPorDia:=DM2.TBBoletosBOL_MORAJUROS.AsExtended/30;
    Dias:=DaysBetween(DM2.TBBoletosBOL_DTJUROSAPOS.Value,Date);
    JurosTotal:=Dias*JurosPorDia;
    DM2.TBBoletosBOL_VALORJUROS.Value:=(DM2.TBBoletosBOL_VALORITENS.Value/100.00)*JurosTotal;

    DM2.TBBoletosBOL_VALORMULTA.Value:=(DM2.TBBoletosBOL_VALORITENS.Value/100.00)*DM2.TBBoletosBOL_MULTA.Value;
  end;
end;

procedure TFormBoletos.CancelarBoleto1Click(Sender: TObject);
begin
  AbortIf(DM2.TBBoletos.IsEmpty,            'Nenhum boleto selecionado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='B','Não é possível cancelar um boleto baixado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='C','Este boleto já está cancelado.');

  if MessageDlg('Deseja realmente cancelar este boleto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='C';
    DM2.TBBoletos.Post;
  end;
  if MessageDlg('Deseja cancelar também as contas a receber associadas a este boleto?'+#13#10+#13#10+'OBSERVAÇÃO: Somente as que estão em aberto serão canceladas.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBBoletosItens.First;
    DM2.TBBoletosItens.DisableControls;
    while not DM2.TBBoletosItens.Eof do
    begin
      if DM2.TBBoletosItensREE_STATUS.Value='A' then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update RECEBER set REE_STATUS=''C'' where REE_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
        DM.QYAux.ExecSQL;
      end;
      DM2.TBBoletosItens.Next;
    end;
    DM2.TBBoletosItens.EnableControls;
    DM2.TBBoletosItens.Close;
    DM2.TBBoletosItens.Open;
    DM.TBReceber.Close;
    DM.TBReceber.Open;
  end;
end;

procedure TFormBoletos.ConsultarBoletos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosAPIConsulta, FormBoletosAPIConsulta);
  FormBoletosAPIConsulta.ShowModal;
  FormBoletosAPIConsulta.Free;
  FormBoletosAPIConsulta:=nil;
end;

procedure TFormBoletos.DBEdit10Exit(Sender: TObject);
begin
  if (DM2.TBBoletosBOL_DTJUROSAPOS.IsNull) and (DM2.TBBoletos.State in [dsInsert, dsEdit]) and (not DM2.TBBoletosBOL_DTVENCIMENTO.IsNull) then
  DM2.TBBoletosBOL_DTJUROSAPOS.Value:=DM2.TBBoletosBOL_DTVENCIMENTO.Value;
end;

procedure TFormBoletos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBBoletosBOL_DTVENCIMENTO.Clear;
end;

procedure TFormBoletos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormBoletos.DBEdit15Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormBoletos.DBEdit15Exit(Sender: TObject);
begin
  if (DM2.TBBoletos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBBoletosBOL_BAIXACODIGO.Clear;
    DM2.TBBoletosBOL_CARTEIRA.Clear;
    DM2.TBBoletosBOL_CARTEIRACOD.Clear;
    DM2.TBBoletosBOL_CONTA.Clear;
    DM2.TBBoletosBOL_CONVENIO.Clear;
    DM2.TBBoletosBOL_DESCONTOTIPO.Clear;
    DM2.TBBoletosBOL_DIASBAIXA.Clear;
    DM2.TBBoletosBOL_DIASPROTESTO.Clear;
    DM2.TBBoletosBOL_ESPECIE.Clear;
    DM2.TBBoletosBOL_ESPECIEDOC.Clear;
    DM2.TBBoletosBOL_INSTRUCAO1.Clear;
    DM2.TBBoletosBOL_INSTRUCAO2.Clear;
    DM2.TBBoletosBOL_INSTRUCAO3.Clear;
    DM2.TBBoletosBOL_INSTRUCAO4.Clear;
    DM2.TBBoletosBOL_INSTRUCAO5.Clear;
    DM2.TBBoletosBOL_LOCALPAGTO.Clear;
    DM2.TBBoletosBOL_MODALIDADE.Clear;
    DM2.TBBoletosBOL_MORACODIGO.Clear;
    DM2.TBBoletosBOL_MORAJUROS.Clear;
    DM2.TBBoletosBOL_MORATIPO.Clear;
    DM2.TBBoletosBOL_MULTA.Clear;
    DM2.TBBoletosBOL_MULTATIPO.Clear;
    DM2.TBBoletosBOL_PROTESTOCODIGO.Clear;
    DM2.TBBoletosBOL_PROTESTOTIPO.Clear;
    DM2.TBBoletosBOL_VALORBOLETO.Clear;
    DM2.TBBoletosBAN_NOME.Clear;
    DM2.TBBoletosCON_AGENCIA.Clear;
    DM2.TBBoletosCON_AGENCIADIGITO.Clear;
    DM2.TBBoletosCON_BANCO.Clear;
    DM2.TBBoletosCON_CEDENTE.Clear;
    DM2.TBBoletosCON_CEDENTEDIGITO.Clear;
    DM2.TBBoletosCON_CONTA.Clear;
    DM2.TBBoletosCON_CONTADIGITO.Clear;
    DM2.TBBoletosCON_NOME.Clear;

    DM2.TBBoletosBOL_NOSSONUMERO.Clear;
    DM2.TBBoletosBOL_CODIGOBARRAS.Clear;
    DM2.TBBoletosBOL_LINHADIGITAVEL.Clear;

    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBBoletos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYContas.Open;
    if not DMS.QYContas.IsEmpty then
    begin
      DM2.TBBoletosBOL_BAIXACODIGO.Value:=DMS.QYContasCON_BAIXACODIGO.Value;
      DM2.TBBoletosBOL_CARTEIRA.Value:=DMS.QYContasCON_CARTEIRA.Value;
      DM2.TBBoletosBOL_CARTEIRACOD.Value:=DMS.QYContasCON_CARTEIRACOD.Value;
      DM2.TBBoletosBOL_CONTA.Value:=DMS.QYContasCON_CODIGO.Value;
      DM2.TBBoletosBOL_CONVENIO.Value:=DMS.QYContasCON_CONVENIO.Value;
      DM2.TBBoletosBOL_DESCONTOTIPO.Value:=DMS.QYContasCON_DESCONTOTIPO.Value;
      DM2.TBBoletosBOL_DIASBAIXA.Value:=DMS.QYContasCON_DIASBAIXA.Value;
      DM2.TBBoletosBOL_DIASPROTESTO.Value:=DMS.QYContasCON_DIASPROTESTO.Value;
      DM2.TBBoletosBOL_ESPECIE.Value:=DMS.QYContasCON_ESPECIE.Value;
      DM2.TBBoletosBOL_ESPECIEDOC.Value:=DMS.QYContasCON_ESPECIEDOC.Value;
      DM2.TBBoletosBOL_INSTRUCAO1.Value:=DMS.QYContasCON_INSTRUCAO1.Value;
      DM2.TBBoletosBOL_INSTRUCAO2.Value:=DMS.QYContasCON_INSTRUCAO2.Value;
      DM2.TBBoletosBOL_INSTRUCAO3.Value:=DMS.QYContasCON_INSTRUCAO3.Value;
      DM2.TBBoletosBOL_INSTRUCAO4.Value:=DMS.QYContasCON_INSTRUCAO4.Value;
      DM2.TBBoletosBOL_INSTRUCAO5.Value:=DMS.QYContasCON_INSTRUCAO5.Value;
      DM2.TBBoletosBOL_LOCALPAGTO.Value:=DMS.QYContasCON_LOCALPAGTO.Value;
      DM2.TBBoletosBOL_MODALIDADE.Value:=DMS.QYContasCON_MODALIDADE.Value;
      DM2.TBBoletosBOL_MORACODIGO.Value:=DMS.QYContasCON_MORACODIGO.Value;
      DM2.TBBoletosBOL_MORAJUROS.Value:=DMS.QYContasCON_MORAJUROS.Value;
      DM2.TBBoletosBOL_MORATIPO.Value:=DMS.QYContasCON_MORATIPO.Value;
      DM2.TBBoletosBOL_MULTA.Value:=DMS.QYContasCON_MULTA.Value;
      DM2.TBBoletosBOL_MULTATIPO.Value:=DMS.QYContasCON_MULTATIPO.Value;
      DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=DMS.QYContasCON_PROTESTOCODIGO.Value;
      DM2.TBBoletosBOL_PROTESTOTIPO.Value:=DMS.QYContasCON_PROTESTOTIPO.Value;
      DM2.TBBoletosBOL_VALORBOLETO.Value:=DMS.QYContasCON_VALORBOLETO.Value;
      DM2.TBBoletosBAN_NOME.Value:=DMS.QYContasBAN_NOME.Value;
      DM2.TBBoletosCON_AGENCIA.Value:=DMS.QYContasCON_AGENCIA.Value;
      DM2.TBBoletosCON_AGENCIADIGITO.Value:=DMS.QYContasCON_AGENCIADIGITO.Value;
      DM2.TBBoletosCON_BANCO.Value:=DMS.QYContasCON_BANCO.Value;
      DM2.TBBoletosCON_CEDENTE.Value:=DMS.QYContasCON_CEDENTE.Value;
      DM2.TBBoletosCON_CEDENTEDIGITO.Value:=DMS.QYContasCON_CEDENTEDIGITO.Value;
      DM2.TBBoletosCON_CONTA.Value:=DMS.QYContasCON_CONTA.Value;
      DM2.TBBoletosCON_CONTADIGITO.Value:=DMS.QYContasCON_CONTADIGITO.Value;
      DM2.TBBoletosCON_NOME.Value:=DMS.QYContasCON_NOME.Value;

      //esses campos sao gerados no before post da tabela, mas para o banco inter não... banco inter gera no envio do boleto.
      DM2.TBBoletosBOL_NOSSONUMERO.Clear;
      DM2.TBBoletosBOL_CODIGOBARRAS.Clear;
      DM2.TBBoletosBOL_LINHADIGITAVEL.Clear;
    end else
    begin
      DM2.TBBoletosBOL_BAIXACODIGO.Clear;
      DM2.TBBoletosBOL_CARTEIRA.Clear;
      DM2.TBBoletosBOL_CARTEIRACOD.Clear;
      DM2.TBBoletosBOL_CONTA.Clear;
      DM2.TBBoletosBOL_CONVENIO.Clear;
      DM2.TBBoletosBOL_DESCONTOTIPO.Clear;
      DM2.TBBoletosBOL_DIASBAIXA.Clear;
      DM2.TBBoletosBOL_DIASPROTESTO.Clear;
      DM2.TBBoletosBOL_ESPECIE.Clear;
      DM2.TBBoletosBOL_ESPECIEDOC.Clear;
      DM2.TBBoletosBOL_INSTRUCAO1.Clear;
      DM2.TBBoletosBOL_INSTRUCAO2.Clear;
      DM2.TBBoletosBOL_INSTRUCAO3.Clear;
      DM2.TBBoletosBOL_INSTRUCAO4.Clear;
      DM2.TBBoletosBOL_INSTRUCAO5.Clear;
      DM2.TBBoletosBOL_LOCALPAGTO.Clear;
      DM2.TBBoletosBOL_MODALIDADE.Clear;
      DM2.TBBoletosBOL_MORACODIGO.Clear;
      DM2.TBBoletosBOL_MORAJUROS.Clear;
      DM2.TBBoletosBOL_MORATIPO.Clear;
      DM2.TBBoletosBOL_MULTA.Clear;
      DM2.TBBoletosBOL_MULTATIPO.Clear;
      DM2.TBBoletosBOL_PROTESTOCODIGO.Clear;
      DM2.TBBoletosBOL_PROTESTOTIPO.Clear;
      DM2.TBBoletosBOL_VALORBOLETO.Clear;
      DM2.TBBoletosBAN_NOME.Clear;
      DM2.TBBoletosCON_AGENCIA.Clear;
      DM2.TBBoletosCON_AGENCIADIGITO.Clear;
      DM2.TBBoletosCON_BANCO.Clear;
      DM2.TBBoletosCON_CEDENTE.Clear;
      DM2.TBBoletosCON_CEDENTEDIGITO.Clear;
      DM2.TBBoletosCON_CONTA.Clear;
      DM2.TBBoletosCON_CONTADIGITO.Clear;
      DM2.TBBoletosCON_NOME.Clear;

      DM2.TBBoletosBOL_NOSSONUMERO.Clear;
      DM2.TBBoletosBOL_CODIGOBARRAS.Clear;
      DM2.TBBoletosBOL_LINHADIGITAVEL.Clear;

      MessageDlg('Conta não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYContas.Close;
  end;
end;

procedure TFormBoletos.DBEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton4.Click;
end;

procedure TFormBoletos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletos.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBBoletosBOL_DTJUROSAPOS.Clear;
end;

procedure TFormBoletos.DBEdit50KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBBoletosBOL_DIASBAIXA.Clear;
end;

procedure TFormBoletos.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormBoletos.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormBoletos.DBEdit57KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBBoletosBOL_DTDESCONTO.Clear;
end;

procedure TFormBoletos.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormBoletos.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBBoletos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBBoletosBOL_BAIRRO.Clear;
    DM2.TBBoletosBOL_CEP.Clear;
    DM2.TBBoletosBOL_CIDADE.Clear;
    DM2.TBBoletosBOL_CLIENTE.Clear;
    DM2.TBBoletosBOL_CNPJ.Clear;
    DM2.TBBoletosBOL_COMPLEMENTO.Clear;
    DM2.TBBoletosBOL_CPF.Clear;
    DM2.TBBoletosBOL_ENDERECO.Clear;
    DM2.TBBoletosBOL_ESTADO.Clear;
    DM2.TBBoletosBOL_NOME.Clear;
    DM2.TBBoletosBOL_NUMERO.Clear;
    DM2.TBBoletosBOL_TIPOPESSOA.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBBoletos.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBBoletosBOL_BAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBBoletosBOL_CEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBBoletosBOL_CIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBBoletosBOL_CNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBBoletosBOL_COMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBBoletosBOL_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBBoletosBOL_ENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBBoletosBOL_ESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBBoletosBOL_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBBoletosBOL_NUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
      DM2.TBBoletosBOL_TIPOPESSOA.Value:=DMS.QYClientesCLI_TIPOPESSOA.Value;
    end else
    begin
      DM2.TBBoletosBOL_BAIRRO.Clear;
      DM2.TBBoletosBOL_CEP.Clear;
      DM2.TBBoletosBOL_CIDADE.Clear;
      DM2.TBBoletosBOL_CLIENTE.Clear;
      DM2.TBBoletosBOL_CNPJ.Clear;
      DM2.TBBoletosBOL_COMPLEMENTO.Clear;
      DM2.TBBoletosBOL_CPF.Clear;
      DM2.TBBoletosBOL_ENDERECO.Clear;
      DM2.TBBoletosBOL_ESTADO.Clear;
      DM2.TBBoletosBOL_NOME.Clear;
      DM2.TBBoletosBOL_NUMERO.Clear;
      DM2.TBBoletosBOL_TIPOPESSOA.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormBoletos.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormBoletos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormBoletos.DBEdit60DblClick(Sender: TObject);
var Senha, Valor: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM2.TBBoletos.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Valor:=InputBox('Código PIX','Digite o QRCode PIX:','');
      if (Valor<>'') then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX=:qrcode where BOL_CODIGO=:codigo');
        DM.QYAux.ParamByName('qrcode').AsString:=Valor;
        DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM2.TBBoletos.Close;
        DM2.TBBoletos.Open;
      end;
    end;

  end;
end;

procedure TFormBoletos.DBEdit61DblClick(Sender: TObject);
var Senha, Valor: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM2.TBBoletos.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Valor:=InputBox('Código Solicitação','Digite o código de solicitação:','');
      if (Valor<>'') then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update BOLETOS set BOL_CODIGOSOLICITACAO=:solicitacao where BOL_CODIGO=:codigo');
        DM.QYAux.ParamByName('solicitacao').AsString:=Valor;
        DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM2.TBBoletos.Close;
        DM2.TBBoletos.Open;
      end;
    end;

  end;
end;

procedure TFormBoletos.EnviarBoletoPorEmail1Click(Sender: TObject);
begin
  AbortIf(DM2.TBBoletos.IsEmpty,'Nenhum boleto selecionado.');

  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormBoletos.EnviarBoletoPorWhatsApp1Click(Sender: TObject);
var Texto: WideString;
  ArquivoBoleto: String;
begin
  AbortIf(DM2.TBBoletos.IsEmpty,       'Nenhum boleto selecionado.');
  //AbortIf(not IsRunning('FIREZAP.EXE'),'Aplicativo Firezap não está rodando.');

  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBBoletosBOL_CLIENTE.Value;
  DM.TBClientes.Open;

  ArquivoBoleto:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\BoletosCLI_'+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value),'0',6,taRight)+'.pdf';

  if DM.TBParametrosPAR_BOLETOPADRAO.Value='BOLETO PADRAO' then
  GerarBoleto(False,ArquivoBoleto) else
  GerarBoleto(True,ArquivoBoleto);

  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_BOLETOSZAPASSUNTO.Value;
  DM2.TBAssuntos.Open;

  Texto:=DM2.TBAssuntosASS_TEXTO.Value;
  Texto:=StringReplace(Texto,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|BOL_CLIENTE|',DM2.TBBoletosBOL_CLIENTE.Value.ToString,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|BOL_NOME|',DM2.TBBoletosBOL_NOME.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|BOL_CODIGO|',DM2.TBBoletosBOL_CODIGO.Value.ToString,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|BOL_DTVENCIMENTO|',DateToStr(DM2.TBBoletosBOL_DTVENCIMENTO.Value),[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|BOL_OBSERVACOES|',DM2.TBBoletosBOL_OBSERVACOES.Value,[rfReplaceAll]);

  Application.CreateForm(TFormZap, FormZap);
  FormZap.EditNumero.Text:=FormatarString('FONE11',SoNumeros(DM.TBClientesCLI_FONE1.Value));
  FormZap.EditAnexo1.Text:=ArquivoBoleto;
  FormZap.MemoMensagem.Lines.Add(Texto);

  FormZap.ShowModal;
  FormZap.Free;
  FormZap:=nil;
end;

procedure TFormBoletos.EstornarBaixa1Click(Sender: TObject);
var B: Boolean;
begin
  AbortIf(DM2.TBBoletos.IsEmpty,            'Nenhum boleto selecionado.');
  AbortIf(DM2.TBBoletosBOL_STATUS.Value='A','Este boleto não está baixado.');

  //verifica se tem alguma conta a receber já baixada.
  B:=False;
  DM2.TBBoletosItens.Close;
  DM2.TBBoletosItens.Open;
  DM2.TBBoletosItens.First;
  DM2.TBBoletosItens.DisableControls;
  while not DM2.TBBoletosItens.Eof do
  begin
    if DM2.TBBoletosItensREE_STATUS.Value='A' then
    begin
      MessageDlg('Já existe uma ou mais contas a receber estornadas neste boleto.'+#13#10+
                 'As contas a receber que compõem um boleto devem ser estornadas somente atráves do boleto.',mtError,[mbOk],0);
      B:=True;
      Break;
    end;
    DM2.TBBoletosItens.Next;
  end;
  DM2.TBBoletosItens.EnableControls;
  if B then Exit;
  //...

  if MessageDlg('Deseja estornar a baixa deste boleto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBBoletosItens.FetchAll;
    DM2.TBBoletosItens.First;
    while not DM2.TBBoletosItens.Eof do
    begin
      //localiza cada conta a receber e estorna.
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;

      //efetua lançamento no fluxo de caixa primeiro.
      //nao faz mais o lancamento em caixa para cada conta a receber. - faz apenas um lançamento pelo valor pago do boleto.
      {DM.TBCaixa.Insert;
      DM.TBCaixaCAI_CLIENTE.Value:=DM.TBReceberREE_CLIENTE.Value;
      DM.TBCaixaCAI_CLIENTENOME.Value:=DM.TBReceberCLI_NOME.Value;
      DM.TBCaixaCAI_CONTA.Value:=DM.TBReceberREE_CONTA.Value;
      DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
      DM.TBCaixaCAI_DESCRICAO.Value:='ESTORNO AUTOMATICO BOLETOS';
      DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
      DM.TBCaixaCAI_NUMDOCTO.Value:=IntToStr(DM.TBReceberREE_CODIGO.Value);
      DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
      DM.TBCaixaCAI_TIPODOCTO.Value:=DM.TBReceberREE_TIPODOCTO.Value;
      DM.TBCaixaCAI_VALOR.Value:=DM.TBReceberREE_VALORPAGO.Value;
      DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
      DM.TBCaixa.Post; }//os saldos são calculados no evento onpost.

      //depois altera o status da conta a receber.
      DM.CodigoMark:=DM.TBReceberREE_CODIGO.Value;
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update RECEBER set REE_STATUS=''A'', REE_VALORPAGO=0, REE_DTPAGAMENTO=null, REE_TIPOBAIXA=null, REE_NOVOCODIGO=null where REE_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.CodigoMark;
      DM.QYAux.ExecSQL;

      DM2.TBBoletosItens.Next;
    end;
    //deixa o cursor na tabela no último registro processado.
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBReceber.Open;

    //se o valor pago for superior, então gera um lançamento com a diferença.
    //também nao faz mais esse lançamento, pois o valor pago no boleto será estornado em apenas um lançamento.
    {if DM2.TBBoletosBOL_VALORPAGO.Value>DM2.TBBoletosBOL_VALORTOTAL.Value then
    begin
      DM.TBCaixa.Insert;
      DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
      DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
      DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
      DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
      DM.TBCaixaCAI_DESCRICAO.Value:='ESTORNO AUTOM. BOLETOS - DIFERENCA VALOR PAGO';
      DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
      DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
      DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
      DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
      DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value-DM2.TBBoletosBOL_VALORTOTAL.Value;
      DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
      DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
    end;}

    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_DESCRICAO.Value:='ESTORNO BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='S';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.

    //marca boleto como aberto novamente.
    DM.CodigoMark:=DM2.TBBoletosBOL_CODIGO.Value;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update BOLETOS set BOL_STATUS=''A'', BOL_DTPAGAMENTO=null where BOL_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.QYAux.ExecSQL;

    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM2.TBBoletos.Open;
    DM2.TBBoletosItens.Close;
    DM2.TBBoletosItens.Open;
    MessageDlg('O boleto '+IntToStr(DM2.TBBoletosBOL_CODIGO.Value)+' foi estornado com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormBoletos.FluxoDeCaixa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixa, FormCaixa);
  FormCaixa.ShowModal;
  FormCaixa.Free;
  FormCaixa:=nil;
end;

procedure TFormBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBBoletos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormBoletos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormBoletos);
end;

procedure TFormBoletos.GerarArquivoEDIFiscal1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosEDI, FormBoletosEDI);
  FormBoletosEDI.ShowModal;
  FormBoletosEDI.Free;
  FormBoletosEDI:=nil;
end;

procedure TFormBoletos.Remessas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRemessas, FormBoletosRemessas);
  FormBoletosRemessas.ShowModal;
  FormBoletosRemessas.Free;
  FormBoletosRemessas:=nil;
end;

procedure TFormBoletos.ImprimirBoleto1Click(Sender: TObject);
begin
  if DM.TBParametrosPAR_BOLETOPADRAO.Value='BOLETO PADRAO' then
  GerarBoleto(False,'') else
  GerarBoleto(True,'');
end;

procedure TFormBoletos.GerarBoleto(Recibo: Boolean; ArquivoPDF: String);
begin
  Application.CreateForm(TFormBoletosFast, FormBoletosFast);
  FormBoletosFast.QY10.Close;
  FormBoletosFast.QY10.SQL.Clear;
  FormBoletosFast.QY10.SQL.Add(
    'select BOL_ACEITE, BOL_CARTEIRA, BOL_CARTEIRACOD, coalesce(BOL_CEP,'''')||'' - ''||coalesce(BOL_CIDADE,'''')||'' - ''||coalesce(BOL_ESTADO,'''') as CEPCIDADEUF, '+
    'BOL_CLIENTE, iif(BOL_TIPOPESSOA=''J'',BOL_CNPJ,BOL_CPF) as CNPJCPF, BOL_CODIGO, BOL_CODIGOBARRAS, BOL_DESCVALOR, '+
    'BOL_DTCADASTRO, BOL_DTVENCIMENTO, coalesce(BOL_ENDERECO,'''')||'', ''||coalesce(BOL_NUMERO,'''')||'' - ''||coalesce(BOL_COMPLEMENTO,'''')||'' - ''||coalesce(BOL_BAIRRO,'''') as ENDERECOBAIRRO, '+
    'BOL_ESPECIE, trim(substring(BOL_ESPECIEDOC from 6 for 3)) as BOL_ESPECIEDOC, BOL_ESTADO, BOL_INSTRUCAO1, BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INSTRUCAO4, BOL_LINHADIGITAVEL, '+
    'BOL_LOCALPAGTO, BOL_NOME, BOL_NOSSONUMERO, BOL_OBSERVACOES, BOL_QRCODEPIX, (BOL_VALORJUROS+BOL_VALORMULTA) as MULTAJUROS, BOL_VALORTOTAL, '+
    'CON_AGENCIA, CON_BANCO, CON_CONTA, CON_CONTADIGITO, CON_CEDENTE, CON_CEDENTEDIGITO, CON_CEDENTEDOC, CON_CEDENTENOME, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CEDENTE,'''')||''-''||coalesce(CON_CEDENTEDIGITO,'''') as AGENCIACEDENTE, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CONTA,'''')||''-''||coalesce(CON_CONTADIGITO,'''') as AGENCIACONTA, '+
    'current_date as DATAATUAL from BOLETOS '+
    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
    'where BOL_CODIGO=:codigo');
  FormBoletosFast.QY10.ParamByName('codigo').AsInteger:=DM2.TBBoletosBOL_CODIGO.Value;
  FormBoletosFast.QY10.Open;
  FormBoletosFast.CarregarImagemBanco(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsInteger);
  FormBoletosFast.frxReport10.Variables['BANCO']:=QuotedStr(AlignText(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString,'0',3,taRight)+'-'+Modulo11(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString));
  FormBoletosFast.frxReport10.Variables['ENDERECOCEDENTE']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+
                                                                      DM.TBEmpresaEMP_NUMERO.Value+' - '+
                                                                      DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CIDADE.Value+' - '+
                                                                      DM.TBEmpresaEMP_ESTADO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CEP.Value);
  if Recibo=False then
  TfrxPageHeader(FormBoletosFast.frxReport10.FindObject('PageHeader1')).Visible:=False;
  if ArquivoPDF<>'' then
  begin
    FormBoletosFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormBoletosFast.frxPDFExport1.ShowDialog:=False;
    FormBoletosFast.frxReport10.PrintOptions.ShowDialog:=False;
    FormBoletosFast.frxReport10.PrepareReport;
    FormBoletosFast.frxReport10.Export(FormBoletosFast.frxPDFExport1);
  end else
  FormBoletosFast.frxReport10.ShowReport;
  FormBoletosFast.Free;
  FormBoletosFast:=nil;
end;

procedure TFormBoletos.ImprimirBoletoComReciboDeEntrega1Click(Sender: TObject);
begin
  GerarBoleto(True,'');
end;

procedure TFormBoletos.ImprimirBoletoSemReciboDeEntrega1Click(Sender: TObject);
begin
  GerarBoleto(False,'');
end;

procedure TFormBoletos.Retornos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRetornos, FormBoletosRetornos);
  FormBoletosRetornos.ShowModal;
  FormBoletosRetornos.Free;
  FormBoletosRetornos:=nil;
end;

procedure TFormBoletos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosLoc, FormBoletosLoc);
  FormBoletosLoc.ShowModal;
  if BoletosLoc.Procurar then
  begin
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=FormBoletosLoc.QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;

    DM2.TBBoletosItens.Close;
    DM2.TBBoletosItens.Open;
  end;
  FormBoletosLoc.Free;
  FormBoletosLoc:=nil;
end;

procedure TFormBoletos.PngSpeedButton1Click(Sender: TObject);
begin
  if (not DM2.TBBoletosBOL_CPF.IsNull) and (DM2.TBBoletosBOL_CPF.Value<>'  .   .   /    -  ') then
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal) else
  MessageDlg('CPF não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormBoletos.PngSpeedButton3Click(Sender: TObject);
begin
  if (not DM2.TBBoletosBOL_CNPJ.IsNull) and (DM2.TBBoletosBOL_CNPJ.Value<>'  .   .   /    -  ') then
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal) else
  MessageDlg('CNPJ não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormBoletos.RegistrarBoletos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosAPIRegistro, FormBoletosAPIRegistro);
  FormBoletosAPIRegistro.ShowModal;
  FormBoletosAPIRegistro.Free;
  FormBoletosAPIRegistro:=nil;
end;

procedure TFormBoletos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosRel, FormBoletosRel);
  FormBoletosRel.ShowModal;
  FormBoletosRel.Free;
  FormBoletosRel:=nil;
end;

procedure TFormBoletos.SalvarBoletoEmPDF1Click(Sender: TObject);
var PDFFilter: TQRPDFDocumentFilter;
begin
  if DM2.TBBoletos.IsEmpty then
  begin
    MessageDlg('Nenhum boleto selecionado.',mtError,[mbOk],0);
    Exit;
  end;

  if SaveDialog1.Execute then
  begin
    if DM.TBParametrosPAR_BOLETOPADRAO.Value='BOLETO PADRAO' then
    GerarBoleto(False,SaveDialog1.FileName) else
    GerarBoleto(True,SaveDialog1.FileName);
    MessageDlg('Arquivo gerado com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletos.SelecionarBoletos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletosSelecionar, FormBoletosSelecionar);
  FormBoletosSelecionar.ShowModal;
  FormBoletosSelecionar.Free;
  FormBoletosSelecionar:=nil;
end;

procedure TFormBoletos.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar then
  begin
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_BAIXACODIGO.Value:=FormContasLoc.QYContasCON_BAIXACODIGO.Value;
    DM2.TBBoletosBOL_CARTEIRA.Value:=FormContasLoc.QYContasCON_CARTEIRA.Value;
    DM2.TBBoletosBOL_CONTA.Value:=FormContasLoc.QYContasCON_CODIGO.Value;
    DM2.TBBoletosBOL_CONVENIO.Value:=FormContasLoc.QYContasCON_CONVENIO.Value;
    DM2.TBBoletosBOL_DESCONTOTIPO.Value:=FormContasLoc.QYContasCON_DESCONTOTIPO.Value;
    DM2.TBBoletosBOL_DIASBAIXA.Value:=FormContasLoc.QYContasCON_DIASBAIXA.Value;
    DM2.TBBoletosBOL_DIASPROTESTO.Value:=FormContasLoc.QYContasCON_DIASPROTESTO.Value;
    DM2.TBBoletosBOL_ESPECIE.Value:=FormContasLoc.QYContasCON_ESPECIE.Value;
    DM2.TBBoletosBOL_INSTRUCAO1.Value:=FormContasLoc.QYContasCON_INSTRUCAO1.Value;
    DM2.TBBoletosBOL_INSTRUCAO2.Value:=FormContasLoc.QYContasCON_INSTRUCAO2.Value;
    DM2.TBBoletosBOL_INSTRUCAO3.Value:=FormContasLoc.QYContasCON_INSTRUCAO3.Value;
    DM2.TBBoletosBOL_INSTRUCAO4.Value:=FormContasLoc.QYContasCON_INSTRUCAO4.Value;
    DM2.TBBoletosBOL_INSTRUCAO5.Value:=FormContasLoc.QYContasCON_INSTRUCAO5.Value;
    DM2.TBBoletosBOL_LOCALPAGTO.Value:=FormContasLoc.QYContasCON_LOCALPAGTO.Value;
    DM2.TBBoletosBOL_MODALIDADE.Value:=FormContasLoc.QYContasCON_MODALIDADE.Value;
    DM2.TBBoletosBOL_MORACODIGO.Value:=FormContasLoc.QYContasCON_MORACODIGO.Value;
    DM2.TBBoletosBOL_MORAJUROS.Value:=FormContasLoc.QYContasCON_MORAJUROS.Value;
    DM2.TBBoletosBOL_MORATIPO.Value:=FormContasLoc.QYContasCON_MORATIPO.Value;
    DM2.TBBoletosBOL_MULTA.Value:=FormContasLoc.QYContasCON_MULTA.Value;
    DM2.TBBoletosBOL_MULTATIPO.Value:=FormContasLoc.QYContasCON_MULTATIPO.Value;
    DM2.TBBoletosBOL_PROTESTOCODIGO.Value:=FormContasLoc.QYContasCON_PROTESTOCODIGO.Value;
    DM2.TBBoletosBOL_PROTESTOTIPO.Value:=FormContasLoc.QYContasCON_PROTESTOTIPO.Value;
    DM2.TBBoletosBOL_VALORBOLETO.Value:=FormContasLoc.QYContasCON_VALORBOLETO.Value;
    DM2.TBBoletosBAN_NOME.Value:=FormContasLoc.QYContasBAN_NOME.Value;
    DM2.TBBoletosCON_AGENCIA.Value:=FormContasLoc.QYContasCON_AGENCIA.Value;
    DM2.TBBoletosCON_AGENCIADIGITO.Value:=FormContasLoc.QYContasCON_AGENCIADIGITO.Value;
    DM2.TBBoletosCON_BANCO.Value:=FormContasLoc.QYContasCON_BANCO.Value;
    DM2.TBBoletosCON_CEDENTE.Value:=FormContasLoc.QYContasCON_CEDENTE.Value;
    DM2.TBBoletosCON_CEDENTEDIGITO.Value:=FormContasLoc.QYContasCON_CEDENTEDIGITO.Value;
    DM2.TBBoletosCON_CONTA.Value:=FormContasLoc.QYContasCON_CONTA.Value;
    DM2.TBBoletosCON_CONTADIGITO.Value:=FormContasLoc.QYContasCON_CONTADIGITO.Value;
    DM2.TBBoletosCON_NOME.Value:=FormContasLoc.QYContasCON_NOME.Value;

    DM2.TBBoletosBOL_NOSSONUMERO.Clear;
    DM2.TBBoletosBOL_CODIGOBARRAS.Clear;
    DM2.TBBoletosBOL_LINHADIGITAVEL.Clear;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure TFormBoletos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBBoletosBOL_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBBoletosBOL_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBBoletosBOL_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBBoletosBOL_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBBoletosBOL_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBBoletosBOL_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBBoletosBOL_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBBoletosBOL_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBBoletosBOL_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBBoletosBOL_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBBoletosBOL_TIPOPESSOA.Value:=FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

initialization
  RegisterClass(TFormBoletos);

finalization
  UnRegisterClass(TFormBoletos);

end.
