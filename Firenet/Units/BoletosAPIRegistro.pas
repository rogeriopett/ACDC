unit BoletosAPIRegistro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.Components, Data.Bind.ObjectScope,
  ACBrBase, ACBrBoleto, ACBrBoletoConversao, ACBrPIXBase, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Data.DB,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, PngSpeedButton, System.JSON,
  System.DateUtils, Datasnap.DBClient, Vcl.ComCtrls, ACBrBoletoRetorno, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Menus;

type
  TFormBoletosAPIRegistro = class(TForm)
    ACBrBoleto1: TACBrBoleto;
    Label4: TLabel;
    SpeedButton2: TPngSpeedButton;
    Label5: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    PngBitBtn6: TPngBitBtn;
    Label13: TLabel;
    ComboBox4: TComboBox;
    Image1: TImage;
    Label8: TLabel;
    Image2: TImage;
    Label10: TLabel;
    Image3: TImage;
    Label11: TLabel;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    TBResultados: TClientDataSet;
    DSResultados: TDataSource;
    CheckBox1: TCheckBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    TRBoletos: TFDTransaction;
    QYBoletos: TFDQuery;
    TRBoletosItens: TFDTransaction;
    QYBoletosItens: TFDQuery;
    QYBoletosBOL_ACEITE: TStringField;
    QYBoletosBOL_BAIRRO: TStringField;
    QYBoletosBOL_BAIXACODIGO: TIntegerField;
    QYBoletosBOL_BAIXADOPOR: TStringField;
    QYBoletosBOL_CARTEIRA: TStringField;
    QYBoletosBOL_CARTEIRACOD: TIntegerField;
    QYBoletosBOL_CEP: TStringField;
    QYBoletosBOL_CIDADE: TStringField;
    QYBoletosBOL_CLIENTE: TIntegerField;
    QYBoletosBOL_CNPJ: TStringField;
    QYBoletosBOL_CODIGO: TIntegerField;
    QYBoletosBOL_CODIGOBARRAS: TStringField;
    QYBoletosBOL_COMPLEMENTO: TStringField;
    QYBoletosBOL_CONTA: TIntegerField;
    QYBoletosBOL_CONVENIO: TStringField;
    QYBoletosBOL_CPF: TStringField;
    QYBoletosBOL_DESCPORC: TFMTBCDField;
    QYBoletosBOL_DESCTIPO: TStringField;
    QYBoletosBOL_DESCVALOR: TFMTBCDField;
    QYBoletosBOL_DIASBAIXA: TIntegerField;
    QYBoletosBOL_DIASPROTESTO: TIntegerField;
    QYBoletosBOL_DTATUALIZACAO: TDateField;
    QYBoletosBOL_DTBAIXABANCO: TDateField;
    QYBoletosBOL_DTCADASTRO: TDateField;
    QYBoletosBOL_DTDESCONTO: TDateField;
    QYBoletosBOL_DTJUROSAPOS: TDateField;
    QYBoletosBOL_DTPAGAMENTO: TDateField;
    QYBoletosBOL_DTPROTESTO: TDateField;
    QYBoletosBOL_DTVENCIMENTO: TDateField;
    QYBoletosBOL_ENDERECO: TStringField;
    QYBoletosBOL_ESPECIE: TStringField;
    QYBoletosBOL_ESPECIEDOC: TStringField;
    QYBoletosBOL_ESTADO: TStringField;
    QYBoletosBOL_GEROUREMESSA: TStringField;
    QYBoletosBOL_INSTRUCAO1: TStringField;
    QYBoletosBOL_INSTRUCAO2: TStringField;
    QYBoletosBOL_INSTRUCAO3: TStringField;
    QYBoletosBOL_INSTRUCAO4: TStringField;
    QYBoletosBOL_INSTRUCAO5: TStringField;
    QYBoletosBOL_LINHADIGITAVEL: TStringField;
    QYBoletosBOL_LOCALPAGTO: TStringField;
    QYBoletosBOL_MODALIDADE: TIntegerField;
    QYBoletosBOL_MORACODIGO: TStringField;
    QYBoletosBOL_MORAJUROS: TFMTBCDField;
    QYBoletosBOL_MULTA: TFMTBCDField;
    QYBoletosBOL_NOME: TStringField;
    QYBoletosBOL_NOSSONUMERO: TStringField;
    QYBoletosBOL_NUMERO: TStringField;
    QYBoletosBOL_OBSERVACOES: TMemoField;
    QYBoletosBOL_PROTESTOCODIGO: TIntegerField;
    QYBoletosBOL_QRCODEPIX: TStringField;
    QYBoletosBOL_STATUS: TStringField;
    QYBoletosBOL_TIPOPESSOA: TStringField;
    QYBoletosBOL_USUARIO: TStringField;
    QYBoletosBOL_VALORBOLETO: TFMTBCDField;
    QYBoletosBOL_VALORITENS: TFMTBCDField;
    QYBoletosBOL_VALORJUROS: TFMTBCDField;
    QYBoletosBOL_VALORMULTA: TFMTBCDField;
    QYBoletosBOL_VALORPAGO: TFMTBCDField;
    QYBoletosBOL_VALORTOTAL: TFMTBCDField;
    QYBoletosCON_AGENCIA: TStringField;
    QYBoletosCON_AGENCIADIGITO: TIntegerField;
    QYBoletosCON_BANCO: TIntegerField;
    QYBoletosCON_CEDENTE: TStringField;
    QYBoletosCON_CEDENTEDIGITO: TIntegerField;
    QYBoletosCON_CEDENTENOME: TStringField;
    QYBoletosCON_CHAVEPIX: TStringField;
    QYBoletosCON_CHAVEPIXTIPO: TStringField;
    QYBoletosCON_CLIENTID: TStringField;
    QYBoletosCON_CLIENTSECRET: TStringField;
    QYBoletosCON_CODIGO: TIntegerField;
    QYBoletosCON_CONTA: TStringField;
    QYBoletosCON_CONTADIGITO: TIntegerField;
    QYBoletosCON_KEYUSER: TStringField;
    QYBoletosCON_NOME: TStringField;
    QYBoletosCON_NOSSONUMDIGITOS: TIntegerField;
    QYBoletosCON_NOSSONUMFORMATAR: TStringField;
    QYBoletosCON_TIPOCOBRANCA: TStringField;
    QYBoletosBAN_CODIGO: TIntegerField;
    QYBoletosBAN_NOME: TStringField;
    QYBoletosItensBOI_BOLETO: TIntegerField;
    QYBoletosItensBOI_CODIGO: TIntegerField;
    QYBoletosItensBOI_RECEBER: TIntegerField;
    QYBoletosItensREE_NUMDOCTO: TStringField;
    QYBoletosItensREE_STATUS: TStringField;
    QYBoletosBOL_DESCONTOTIPO: TStringField;
    QYBoletosBOL_MORATIPO: TStringField;
    QYBoletosBOL_MULTATIPO: TStringField;
    QYBoletosBOL_PROTESTOTIPO: TStringField;
    QYBoletosBOL_CODIGOSOLICITACAO: TStringField;
    QYBoletosBOL_HRATUALIZACAO: TTimeField;
    QYBoletosBOL_HRCADASTRO: TTimeField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    GroupBox1: TGroupBox;
    PngBitBtnRegistrar: TPngBitBtn;
    PngBitBtnBaixar: TPngBitBtn;
    PngBitBtnCancelar: TPngBitBtn;
    PngBitBtnDetalhar: TPngBitBtn;
    PngBitBtnProrrogar: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    PopupMenu1: TPopupMenu;
    PopupMenu11: TMenuItem;
    TBResultadosBoleto: TIntegerField;
    TBResultadosCliente: TIntegerField;
    TBResultadosNome: TStringField;
    TBResultadosValorPago: TCurrencyField;
    TBResultadosStatus: TStringField;
    TBResultadosMensagem: TStringField;
    TBResultadosStatusConsulta: TStringField;
    TBResultadosCodigoSolicitacao: TStringField;
    TBResultadosCodigoBarras: TStringField;
    TBResultadosLinhaDigitavel: TStringField;
    TBResultadosQRCodePix: TStringField;
    TBResultadosNossoNumero: TStringField;
    procedure PngBitBtnRegistrarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngBitBtnBaixarClick(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtnCancelarClick(Sender: TObject);
    procedure PngBitBtnDetalharClick(Sender: TObject);
    procedure PngBitBtnProrrogarClick(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PopupMenu11Click(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure ConfigurarBancoAilosViaCredi;
    procedure ConfigurarBancoBrasil;
    procedure ConfigurarBancoInter;
    procedure ConfigurarBancoSicredi;
    procedure ConfigurarBancoSicoob;
    procedure LiquidacaoAilosViacredi(Retorno: TACBrBoletoRetornoWS);
    procedure LiquidacaoBancoDoBrasil(Retorno: TACBrBoletoRetornoWS);
    procedure LiquidacaoInter(Retorno: TACBrBoletoRetornoWS);
    procedure LiquidacaoSicredi(Retorno: TACBrBoletoRetornoWS);
    procedure LiquidacaoSicoob(Retorno: TACBrBoletoRetornoWS);
    procedure CancelamentoBancoDoBrasil(Retorno: TACBrBoletoRetornoWS);
    procedure CancelamentoBancoInter(Retorno: TACBrBoletoRetornoWS);
    procedure CancelamentoSicredi(Retorno: TACBrBoletoRetornoWS);
    procedure CancelamentoSicoob(Retorno: TACBrBoletoRetornoWS);
    procedure AlteracaoProtestoSicredi(Retorno: TACBrBoletoRetornoWS);
    procedure ConfigurarSSL;

    procedure AtualizarBoletoPeloDetalheInter(const CodigoBoleto, ResultCode: Integer; ResultJSON: String);

    procedure GetCertPassword(var Password: string);

    function InterGetToken: String;
    function InterConsultarBoletos(const Token, DataInicial, DataFinal,DataCampo: String): String;
    procedure InterLiquidarBoletos;
  public
    { Public declarations }
  end;

var
  FormBoletosAPIRegistro: TFormBoletosAPIRegistro;

implementation
uses DataMod, DataMod2, DataModSearch, Funcoes1, FuncoesFirenet, ACBrDFeSSL,
  REST.Client, REST.Types, System.Net.HttpClient, System.Net.URLClient, System.Net.Mime,
  Winapi.WinInet, Winapi.Security, System.Net.HttpClientComponent,
  IdHTTP, IdSSLOpenSSL, IdSSLOpenSSLHeaders;
{$R *.dfm}

procedure TFormBoletosAPIRegistro.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosAPIRegistro.Edit1Exit(Sender: TObject);
begin
  LocClientesExit(Edit1,Edit2);
end;

procedure TFormBoletosAPIRegistro.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormBoletosAPIRegistro.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosAPIRegistro.Edit3Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormBoletosAPIRegistro.Edit3Exit(Sender: TObject);
begin
  LocContasExit(Edit3,Edit4);
end;

procedure TFormBoletosAPIRegistro.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton2.Click;
end;

procedure TFormBoletosAPIRegistro.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
  if Key=#13 then Key:=#0;
end;

procedure TFormBoletosAPIRegistro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM2.TBBoletos.Close;
  DM2.TBBoletos.Open;
end;

procedure TFormBoletosAPIRegistro.FormCreate(Sender: TObject);
begin
  ComboBox3.ItemIndex:=1; //vencimento.
  ComboBox4.ItemIndex:=1;
  ACBrBoleto1.DirArqRemessa:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Remessas\';
  ACBrBoleto1.DirArqRetorno:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Retorno\';
  MaskEdit3.Text:=DateToStr(PrimeiroDia(Date));
  MaskEdit4.Text:=DateToStr(UltimoDia(Date));

  PageControl1.ActivePageIndex:=0;
  TBResultados.CreateDataSet; //cria a estrutura da tabela.
  TBResultados.Open;

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CONTAPADRAO.Value;
  DM.TBContas.Open;
  Edit3.Text:=DM.TBContasCON_CODIGO.Value.ToString;
  Edit4.Text:=DM.TBContasCON_NOME.Value;
end;

procedure TFormBoletosAPIRegistro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormBoletosAPIRegistro.ConfigurarSSL;
begin
//  if DM.TBParametrosPAR_LIBSSL.Value='libNone'              then ACBrBoleto1.Configuracoes.WebService.SSLLib:=TSSLLib(0) else
//  if DM.TBParametrosPAR_LIBSSL.Value='libOpenSSL'           then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(1) else
//  if DM.TBParametrosPAR_LIBSSL.Value='libCapicom'           then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(2) else
//  if DM.TBParametrosPAR_LIBSSL.Value='libCapicomDelphiSoap' then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(3) else
//  if DM.TBParametrosPAR_LIBSSL.Value='libWinCrypt'          then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(4) else
//  if DM.TBParametrosPAR_LIBSSL.Value='libCustom'            then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(5);

  if DM.TBParametrosPAR_LIBCRYPT.Value='cryNone'            then ACBrBoleto1.Configuracoes.WebService.SSLCryptLib:=TSSLCryptLib(0) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryOpenSSL'         then ACBrBoleto1.Configuracoes.WebService.SSLCryptLib:=TSSLCryptLib(1) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryCapicom'         then ACBrBoleto1.Configuracoes.WebService.SSLCryptLib:=TSSLCryptLib(2) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryWinCrypt'        then ACBrBoleto1.Configuracoes.WebService.SSLCryptLib:=TSSLCryptLib(3);

  if DM.TBParametrosPAR_LIBHTTP.Value='httpNone'            then ACBrBoleto1.Configuracoes.WebService.SSLHttpLib:=TSSLHttpLib(0) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinINet'         then ACBrBoleto1.Configuracoes.WebService.SSLHttpLib:=TSSLHttpLib(1) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinHttp'         then ACBrBoleto1.Configuracoes.WebService.SSLHttpLib:=TSSLHttpLib(2) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpOpenSSL'         then ACBrBoleto1.Configuracoes.WebService.SSLHttpLib:=TSSLHttpLib(3) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpIndy'            then ACBrBoleto1.Configuracoes.WebService.SSLHttpLib:=TSSLHttpLib(4);

  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsNone'           then ACBrBoleto1.Configuracoes.WebService.SSLXmlSignLib:=TSSLXmlSignLib(0) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsXmlSec'         then ACBrBoleto1.Configuracoes.WebService.SSLXmlSignLib:=TSSLXmlSignLib(1) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXml'          then ACBrBoleto1.Configuracoes.WebService.SSLXmlSignLib:=TSSLXmlSignLib(2) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXmlCapicom'   then ACBrBoleto1.Configuracoes.WebService.SSLXmlSignLib:=TSSLXmlSignLib(3) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsLiXml2'         then ACBrBoleto1.Configuracoes.WebService.SSLXmlSignLib:=TSSLXmlSignLib(4);
end;

procedure TFormBoletosAPIRegistro.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  //$8f8fff = vermelho.
  //$7edf71 = verde
  if Column.Field=TBResultadosStatus then
  begin
    if TBResultadosStatus.Value='A' then DBGrid3.Canvas.Brush.Color:=$00FBD2AA;
    if TBResultadosStatus.Value='B' then DBGrid3.Canvas.Brush.Color:=$7edf71;
    if TBResultadosStatus.Value='C' then DBGrid3.Canvas.Brush.Color:=$8f8fff;

    //Column.Alignment:=TAlignment.taCenter;

    DBGrid3.Canvas.FillRect(Rect);
    //DBGrid3.Canvas.Font := Column.Font;

//    DBGrid3.Canvas.TextRect(Rect, Column.Field.AsString, [tfCenter, tfVerticalCenter]);

    //DrawText(DBGrid3.Canvas.Handle, PChar(Column.Field.AsString), -1, Rect,  DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    Column.Field.Alignment:=TAlignment.taCenter;
    DBGrid3.DefaultDrawDataCell(Rect,Column.Field,State);
  end;
end;

procedure TFormBoletosAPIRegistro.ConfigurarBancoAilosViacredi;
begin
  if Length(LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.tbcontasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoAilos;
  AcBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  AcBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value; //usa o mesmo.
  AcBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.Ambiente:=tawsProducao;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=True;
  //ACBrBoleto1.Configuracoes.WebService.VersaoDF:='V3';
  //ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'ChavePublica.pem';
  //ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'ChavePrivada.key';
  //ACBrBoleto1.Cedente.CedenteWS.Scope:='boletos_inclusao boletos_consulta boletos_alteracao';

  ConfigurarSSL;
end;

procedure TFormBoletosAPIRegistro.ConfigurarBancoBrasil;
begin
  if Length(LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.TBContasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=TACBrTipoDocumento.Escritural;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoDoBrasilAPI;
  AcBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  AcBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value; //usa o mesmo
  AcBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=False;
//  ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'ChavePublica.pem';
//  ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'ChavePrivada.key';
  ACBrBoleto1.Cedente.CedenteWS.Scope:='cobrancas.boletos-info cobrancas.boletos-requisicao';

  ConfigurarSSL;
end;

procedure TFormBoletosAPIRegistro.ConfigurarBancoInter;
begin
  //Algumas informacoes aqui: https://www.projetoacbr.com.br/forum/topic/57991-acbrboleto-via-webservice/#comment-458837
  if Length(LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.tbcontasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoInter;
  AcBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value; //id e secret são gerados no internet banking, em minhas integracoes.
  AcBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value;
  AcBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.Ambiente:=tawsProducao;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=True;
  ACBrBoleto1.Configuracoes.WebService.VersaoDF:='V3';
  ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'BancoInterAPICertificado.crt'; //esses arquivos são baixados pelo internet banking.
  ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'BancoInterAPIChave.key';
  //ACBrBoleto1.Configuracoes.WebService.SSLType   :='LT_TLSv1_2';
  ACBrBoleto1.Configuracoes.WebService.TimeOut   :=10000;
  ACBrBoleto1.Cedente.CedenteWS.Scope:='boleto-cobranca.write boleto-cobranca.read'; //'boleto-cobranca.write'; ou 'boleto-cobranca.write boleto-cobranca.read'; (conforme manual/documentação)

  ConfigurarSSL;
end;

procedure TFormBoletosAPIRegistro.ConfigurarBancoSicredi;
begin
  if Length(LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=DM.TBContasCON_CONVENIO.Value; //campo convenio deverá ter o código do POSTO.
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.TBContasCON_CEDENTE.Value; //no sicredi deve ter 5 caracteres numericos. +DM.TBContasCON_CEDENTEDIGITO.Value.ToString;
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //acho que vai o código do posto.
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString;
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobSicred;
  ACBrBoleto1.Banco.TamanhoMaximoNossoNum:=9;
  AcBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  AcBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value;
  AcBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.VersaoDF:='V2'; //teste - https://www.projetoacbr.com.br/forum/topic/73696-api-sicredi-v2-configurar-acessos/
  ACBrBoleto1.Configuracoes.WebService.Ambiente:=tawsProducao;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=True;
  ACBrBoleto1.Configuracoes.WebService.ArquivoPFX:=DM.TBParametrosPAR_ARQUIVOCERTIFICADO.Value;
  ACBrBoleto1.Configuracoes.WebService.Senha:=DM.TBParametrosPAR_SENHACERTIFICADO.Value;
  ACBrBoleto1.Cedente.CedenteWS.Scope:='cobranca';

  ConfigurarSSL;
end;

procedure TFormBoletosAPIRegistro.ConfigurarBancoSicoob;
begin
//Para extrair o certificado CRT e KEY, segue o link do post: https://www.projetoacbr.com.br/forum/topic/73380-exportar-certificado-pem-crt-e-key/
  if Length(LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value))=14 then
  ACBrBoleto1.Cedente.TipoInscricao:=pJuridica else
  ACBrBoleto1.Cedente.TipoInscricao:=pFisica;

  ACBrBoleto1.Cedente.Agencia:=DM.TBContasCON_AGENCIA.Value;
  ACBrBoleto1.Cedente.AgenciaDigito:=IntToStr(DM.TBContasCON_AGENCIADIGITO.Value);
  ACBrBoleto1.Cedente.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrBoleto1.Cedente.CaracTitulo:=tcSimples;
  ACBrBoleto1.Cedente.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrBoleto1.Cedente.Cidade:=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrBoleto1.Cedente.CNPJCPF:=LimparFormatacao(DM.TBContasCON_CEDENTEDOC.Value);
  ACBrBoleto1.Cedente.CodigoCedente:=DM.tbcontasCON_CEDENTE.Value+IntToStr(DM.TBContasCON_CEDENTEDIGITO.Value);
  //ACBrBoleto1.Cedente.CodigoTransmissao:=
  ACBrBoleto1.Cedente.Complemento:=''; //DM.TBEmpresaEMP_COMPLEMENTO.Value;
  ACBrBoleto1.Cedente.Convenio:=DM.TBContasCON_CONVENIO.Value; //faz o q? informar o q?
  ACBrBoleto1.Cedente.Conta:=DM.TBContasCON_CONTA.Value;
  ACBrBoleto1.Cedente.ContaDigito:=IntToStr(DM.TBContasCON_CONTADIGITO.Value);
  ACBrBoleto1.Cedente.Logradouro:=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrBoleto1.Cedente.Modalidade:=DM.TBContasCON_MODALIDADE.Value.ToString; // '35'; //Copy(ComboBox3.Text,1,2); //'01'; //01=simples com registro.
  ACBrBoleto1.Cedente.Nome:=DM.TBContasCON_CEDENTENOME.Value;
  ACBrBoleto1.Cedente.NumeroRes:=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrBoleto1.Cedente.ResponEmissao:=tbCliEmite;
  ACBrBoleto1.Cedente.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrBoleto1.Cedente.TipoCarteira:=tctRegistrada;
  ACBrBoleto1.Cedente.TipoDocumento:=Tradicional;
  ACBrBoleto1.Cedente.UF:=DM.TBEmpresaEMP_ESTADO.Value;

  ACBrBoleto1.Banco.TipoCobranca:=cobBancoSicoob;
  AcBrBoleto1.Cedente.CedenteWS.ClientID     := DM.TBContasCON_CLIENTID.Value;
  AcBrBoleto1.Cedente.CedenteWS.ClientSecret := DM.TBContasCON_CLIENTSECRET.Value; //usa o mesmo.
  AcBrBoleto1.Cedente.CedenteWS.KeyUser 	   := DM.TBContasCON_KEYUSER.Value;
  ACBrBoleto1.Cedente.CedenteWS.IndicadorPix := True;
  ACBrBoleto1.Cedente.PIX.Chave:=DM.TBContasCON_CHAVEPIX.Value;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='NENHUM'    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchNenhuma;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='ALEATORIA' then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchAleatoria;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CELULAR'   then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCelular;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CNPJ'      then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCNPJ;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='CPF'       then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchCPF;
  if DM.TBContasCON_CHAVEPIXTIPO.Value='EMAIL '    then ACBrBoleto1.Cedente.PIX.TipoChavePIX:=tchEmail;
  ACBrBoleto1.Configuracoes.WebService.Ambiente:=tawsProducao;
  ACBrBoleto1.Configuracoes.WebService.UseCertificateHTTP:=True;
  ACBrBoleto1.Configuracoes.WebService.VersaoDF:='V3';
  ACBrBoleto1.Configuracoes.WebService.ArquivoCRT:=ExtractFilePath(Application.ExeName)+'ChavePublica.pem';
  ACBrBoleto1.Configuracoes.WebService.ArquivoKEY:=ExtractFilePath(Application.ExeName)+'ChavePrivada.key';
  ACBrBoleto1.Cedente.CedenteWS.Scope:='boletos_inclusao boletos_consulta boletos_alteracao';
//  ACBrBoleto1.Cedente.CedenteWS.Scope:=
//    'cobranca_boletos_consultar '+
//    'cobranca_boletos_incluir '+
//    'cobranca_boletos_pagador '+
//    'cobranca_boletos_segunda_via '+
//    'cobranca_boletos_descontos '+
//    'cobranca_boletos_abatimentos '+
//    'cobranca_boletos_valor_nominal '+
//    'cobranca_boletos_seu_numero '+
//    'cobranca_boletos_especie_documento '+
//    'cobranca_boletos_baixa '+
//    'cobranca_boletos_rateio_credito '+
//    'cobranca_pagadores '+
//    'cobranca_boletos_negativacoes_incluir '+
//    'cobranca_boletos_negativacoes_alterar '+
//    'cobranca_boletos_negativacoes_baixar '+
//    'cobranca_boletos_protestos_incluir '+
//    'cobranca_boletos_protestos_alterar '+
//    'cobranca_boletos_protestos_desistir '+
//    'cobranca_boletos_solicitacao_movimentacao_incluir '+
//    'cobranca_boletos_solicitacao_movimentacao_consultar '+
//    'cobranca_boletos_solicitacao_movimentacao_download '+
//    'cobranca_boletos_prorrogacoes_data_vencimento '+
//    'cobranca_boletos_prorrogacoes_data_limite_pagamento '+
//    'cobranca_boletos_encargos_multas '+
//    'cobranca_boletos_encargos_juros_mora '+
//    'cobranca_boletos_pix '+
//    'cobranca_boletos_faixa_nn_disponiveis';

  ConfigurarSSL;
end;

procedure TFormBoletosAPIRegistro.PngBitBtnRegistrarClick(Sender: TObject);
var
  Titulo: TACBrTitulo;
  SLRemessa: TStringList;
  I, J, X: Integer;
begin
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and
     (DM.TBContasCON_BANCO.Value<>077) and
     (DM.TBContasCON_BANCO.Value<>085) and
     (DM.TBContasCON_BANCO.Value<>748) and
     (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg(
      'O serviço de registro por API do banco só está disponível para os bancos: '+#13#10+#13#10+
      '001 - Banco do Brasil'+#13#10+
      '077 - Banco Inter'+#13#10+
      '085 - Banco Ailos - Viacredi'+#13#10+
      '748 - Banco Sicredi'+#13#10+
      '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Realizar o registro deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil        else
    if DM.TBContasCON_BANCO.Value=077 then ConfigurarBancoInter         else
    if DM.TBContasCON_BANCO.Value=085 then ConfigurarBancoAilosViacredi else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi       else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);

      if QYBoletosBOL_QRCODEPIX.Value<>'' then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosStatusConsulta.Value:='';
        TBResultadosMensagem.Value:='BOLETO JA REGISTRADO.';
        TBResultados.Post;
        Continue;
      end;

      if ((QYBoletosBAN_CODIGO.Value=077) and (QYBoletosBOL_CODIGOSOLICITACAO.Value<>'')) then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosStatusConsulta.Value:='';
        TBResultadosMensagem.Value:='BOLETO JA REGISTRADO MAS PENDENTE DE CONSULTA.';
        TBResultados.Post;
        Continue;
      end;

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      if QYBoletosBOL_ACEITE.Value='A' then
      Titulo.Aceite            := atSim else
      Titulo.Aceite            := atNao;
      Titulo.CaracTitulo       := tcSimples;
      //if QYBoletosCON_BANCO.Value=104 then
      //Titulo.Carteira          := QYBoletosBOL_CARTEIRA.Value else //codigo da carteira em alfanumerico. (RG ou SR para caixa)
      Titulo.Carteira          := IntToStr(QYBoletosBOL_CARTEIRACOD.Value);
      Titulo.CarteiraEnvio     := tceCedente;

      if (DM.TBContasCON_BANCO.Value=748) then
      Titulo.CodigoGeracao     := '2' else //2-cliente gera.
      Titulo.CodigoGeracao     := '01'; //??Copy(ComboBox2.Text,1,2); //01-entrada de titulo.
      Titulo.CodigoLiquidacao  := '1'; //?? codigo baixa/devolucao? //    02 : result := 'Casa Lotérica';  03 : result := 'Agências CAIXA';  04 : result := 'Compensação Eletrônica';  05 : result := 'Compensação Convencional';  06 : result := 'Internet Banking';  07 : result := 'Correspondente Bancário';  08 : result := 'Em Cartório'
      //CodigoLiquidacaoDescricao  := ??
      //Titulo.TipoDiasProtesto.
      //Titulo.CarteiraEnvio.

      Titulo.CodigoDesconto:=cdSemDesconto;
      if QYBoletosBOL_DESCONTOTIPO.Value='PERCENTUAL'        then Titulo.CodigoDesconto:=cdPercentual else
      if QYBoletosBOL_DESCONTOTIPO.Value='VALOR FIXO'        then Titulo.CodigoDesconto:=cdValorFixo else

      Titulo.CodigoMulta:=cmIsento;
      if QYBoletosBOL_MULTATIPO.Value='PERCENTUAL'           then Titulo.CodigoMulta:=cmPercentual else
      if QYBoletosBOL_MULTATIPO.Value='VALOR FIXO'           then Titulo.CodigoMulta:=cmValorFixo else

      Titulo.CodigoMoraJuros:=cjIsento;
      if QYBoletosBOL_MORATIPO.Value='TAXA DIARIA'           then Titulo.CodigoMoraJuros:=cjTaxaDiaria else
      if QYBoletosBOL_MORATIPO.Value='TAXA MENSAL'           then Titulo.CodigoMoraJuros:=cjTaxaMensal else
      if QYBoletosBOL_MORATIPO.Value='VALOR DIA'             then Titulo.CodigoMoraJuros:=cjValorDia else
      if QYBoletosBOL_MORATIPO.Value='VALOR MENSAL'          then Titulo.CodigoMoraJuros:=cjValorMensal else
      //estava passando... testar sem passar. Titulo.CodigoMora        := QYBoletosBOL_MORACODIGO.Value;

      Titulo.CodigoNegativacao:=cnNenhum;
      if QYBoletosBOL_PROTESTOTIPO.Value='CANCELAMENTO'      then Titulo.CodigoNegativacao:=cnCancelamento else
      if QYBoletosBOL_PROTESTOTIPO.Value='NAO NEGATIVAR'     then Titulo.CodigoNegativacao:=cnNaoNegativar else
      if QYBoletosBOL_PROTESTOTIPO.Value='NAO PROTESTAR'     then Titulo.CodigoNegativacao:=cnNaoProtestar else
      if QYBoletosBOL_PROTESTOTIPO.Value='NEGATIVAR CORRIDO' then Titulo.CodigoNegativacao:=cnNegativar else
      if QYBoletosBOL_PROTESTOTIPO.Value='NEGATIVAR UTEIS'   then Titulo.CodigoNegativacao:=cnNegativarUteis else
      //if QYBoletosBOL_PROTESTOTIPO.Value='NENHUM'            then Titulo.CodigoNegativacao:=cnNenhum else
      if QYBoletosBOL_PROTESTOTIPO.Value='PROTESTAR CORRIDO' then Titulo.CodigoNegativacao:=cnProtestarCorrido else
      if QYBoletosBOL_PROTESTOTIPO.Value='PROTESTAR UTEIS'   then Titulo.CodigoNegativacao:=cnProtestarUteis;
      //Titulo.TipoDiasNegativacao.diCorridos        := QYBoletosBOL_MORACODIGO.Value;

      Titulo.DataAbatimento    := 0;
      Titulo.DataBaixa         := QYBoletosBOL_DTBAIXABANCO.Value;
      Titulo.DataCredito       := 0;
      //Titulo.DataDesconto      := DM2.TBBoletosBOL_DTDESCONTO.Value; // 0;
      Titulo.DataDocumento     := QYBoletosBOL_DTCADASTRO.Value;

      if DM.TBContasCON_BANCO.Value=077 then
      Titulo.DataLimitePagto   := QYBoletosBOL_DTVENCIMENTO.Value + QYBoletosBOL_DIASBAIXA.Value; //maximo 60 dias para o banco inter.

      if QYBoletosBOL_MORATIPO.Value<>'ISENTO' then
      Titulo.DataMoraJuros     := QYBoletosBOL_DTJUROSAPOS.Value;

      if QYBoletosBOL_MULTATIPO.Value<>'ISENTO' then
      Titulo.DataMulta         := QYBoletosBOL_DTVENCIMENTO.Value+1;

      Titulo.DataOcorrencia    := 0;
      Titulo.DataProcessamento := Now;

      if QYBoletosBOL_PROTESTOTIPO.Value<>'NENHUM' then
      begin
        if (QYBoletosBOL_PROTESTOTIPO.Value='NEGATIVAR CORRIDO') or (QYBoletosBOL_PROTESTOTIPO.Value='NEGATIVAR UTEIS') then
        begin
          //Titulo.DataProtesto   :=
          Titulo.DataNegativacao:=QYBoletosBOL_DTPROTESTO.Value; //o campo é o mesmo para protesto ou negativacao.
        end;
        if (QYBoletosBOL_PROTESTOTIPO.Value='PROTESTAR CORRIDO') or (QYBoletosBOL_PROTESTOTIPO.Value='PROTESTAR UTEIS') then
        begin
          Titulo.DataProtesto   :=QYBoletosBOL_DTPROTESTO.Value;
          //Titulo.DataNegativacao:=
        end;
      end;
//      CANCELAMENTO
//      NAO NEGATIVAR
//      NAO PROTESTAR
//      NEGATIVAR CORRIDO
//      NEGATIVAR UTEIS
//      NENHUM
//      PROTESTAR CORRIDO
//      PROTESTAR UTEIS

      //DescricaoMotivoRejeicaoComando :=
      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='02' then Titulo.EspecieDoc:= 'DM';
      if Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2)='03' then Titulo.EspecieDoc:= 'DMI';
      Titulo.EspecieMod                := ''; //Copy(QYBoletosBOL_ESPECIEDOC.Value,1,2); //??
      //Informativo       :=
      Titulo.Instrucao1                := QYBoletosBOL_INSTRUCAO1.Value; // '00'; //padL(trim(edtInstrucoes1.Text),2,'0');
      Titulo.Instrucao2                := QYBoletosBOL_INSTRUCAO2.Value; //'00'; //padL(trim(edtInstrucoes2.Text),2,'0');
      Titulo.Instrucao3                := QYBoletosBOL_INSTRUCAO3.Value; //'';
      //Liquidacao        :=
      Titulo.LocalPagamento            := QYBoletosBOL_LOCALPAGTO.Value;
      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO1.Value);
      Titulo.Mensagem.Add(QYBoletosBOL_INSTRUCAO2.Value);
      //MotivoRejeicaoComando:=??
      Titulo.MultaValorFixo            := False;

      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero               := AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero               := IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo.NossoNumeroCorrespondente := ''; //ver de onde pegar essa info.

      Titulo.NumeroDocumento           := IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo.OcorrenciaOriginal.Tipo   := toRemessaRegistrar; //padrão.
      Titulo.Parcela                   := 0;
      Titulo.PercentualMulta           := QYBoletosBOL_MULTA.AsExtended;
      Titulo.Referencia                := '';
      Titulo.Sacado.Bairro             := Copy(QYBoletosBOL_BAIRRO.Value,1,40);
      Titulo.Sacado.CEP                := LimparFormatacao(QYBoletosBOL_CEP.Value);
      Titulo.Sacado.Cidade             := QYBoletosBOL_CIDADE.Value;
      if QYBoletosBOL_TIPOPESSOA.Value='J' then
      begin
        Titulo.Sacado.CNPJCPF          := LimparFormatacao(QYBoletosBOL_CNPJ.Value);
        Titulo.Sacado.Pessoa           := pJuridica;
      end else
      begin
        Titulo.Sacado.CNPJCPF          := LimparFormatacao(QYBoletosBOL_CPF.Value);
        Titulo.Sacado.Pessoa           := pFisica;
      end;
      Titulo.Sacado.Email              := '';
      Titulo.Sacado.Fone               := '';
      Titulo.Sacado.UF                 := QYBoletosBOL_ESTADO.Value;
      Titulo.Sacado.Logradouro         := Copy(QYBoletosBOL_ENDERECO.Value,1,40);
      Titulo.Sacado.NomeSacado         := QYBoletosBOL_NOME.Value;
      Titulo.Sacado.Numero             := QYBoletosBOL_NUMERO.Value;
      //Sacado.SacadoAvalista
      Titulo.SeuNumero                 := IntToStr(QYBoletosBOL_CODIGO.Value);
      Titulo.TextoLivre                := '';
      Titulo.TipoDiasProtesto          := diCorridos;
      Titulo.TipoDiasNegativacao       := diCorridos;
      Titulo.TipoImpressao             := tipNormal;
      //TotalParcelas         :=
      //UsoBanco              :=
      Titulo.ValorAbatimento           := 0;
      //Titulo.ValorDesconto           := DM2.TBBoletosBOL_DESCVALOR.AsExtended; //0;
      Titulo.ValorDescontoAntDia       := 0;
      Titulo.ValorDespesaCobranca      := 0;
      Titulo.ValorDocumento            := QYBoletosBOL_VALORTOTAL.AsExtended;
      Titulo.ValorIOF                  := 0;
      Titulo.ValorMoraJuros            := QYBoletosBOL_MORAJUROS.AsExtended; //QYBoletosBOL_MORAJUROS.Value/100.00;
      Titulo.ValorOutrosCreditos       := 0;
      Titulo.ValorOutrasDespesas       := 0;
      Titulo.ValorPago                 := 0;
      Titulo.ValorRecebido             := 0;
      Titulo.Vencimento                := QYBoletosBOL_DTVENCIMENTO.Value;
      //ACBrBoleto1.AdicionarMensagensPadroes(Titulo,Mensagem);
      {$ENDREGION}

      //ACBrBoleto1.ListaConsultaRetornoWeb.
      ACBrBoleto1.Configuracoes.WebService.Operacao := tpInclui;
      //ACBrBoleto1.Cedente.PIX.Chave:=DM2.tbboletosbol_chavepix.Value;
      ACBrBoleto1.Enviar; // <<< retorna como false se o httpresult code for diferente de 200,201,202

      {$REGION 'Verifica lista com os retornos.'}
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        SLRemessa:=TStringList.Create;
        try
          for I:=0 to Pred(ACBrBoleto1.TotalListaRetornoWeb) do
          begin
            //Ler todos os campos da classe Retorno
            Memo1.Lines.Add('Retorno HTTP: '+IntToStr(ACBrBoleto1.ListaRetornoWeb[I].HTTPResultCode));
            Memo1.Lines.Add('JSON:'+ACBrBoleto1.ListaRetornoWeb[I].JSON);
            //Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
            for J:= 0 to Pred(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao.Count) do
            begin
              Memo1.Lines.Add('Boleto rejeitado -> '+QYBoletosBOL_CODIGO.Value.ToString+' - '+ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem+' ('+J.ToString+')');
              Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
              Memo1.Lines.Add(' ');
              TBResultados.Insert;
              TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
              TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
              TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
              TBResultadosValorPago.Value:=0;
              TBResultadosStatus.Value:='A';
              TBResultadosStatusConsulta.Value:='';
              TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(ACBrBoleto1.ListaRetornoWeb[I].ListaRejeicao[J].Mensagem));
              TBResultados.Post;
            end;

            //if NaoEstaVazio(ACBrBoleto1.ListaRetornoWeb[i].DadosRet.TituloRet.CodBarras) then
            //if ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras<>'' then //quando ele registra no banco, mas fica com situacao "em_processamento" ele nao retorna o codigo de barras... precisa buscar o detalhe do boleto.

            if (DM.TBContasCON_BANCO.Value<>077) and (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras<>'') then //demais bancos.
            begin
              DM.QYAux.Close;
              DM.QYAux.SQL.Clear;
              DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX=:qrcode where BOL_CODIGO=:codigo');
              DM.QYAux.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
              DM.QYAux.ParamByName('qrcode').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
              DM.QYAux.ExecSQL;

              Memo1.Lines.Add('Boleto OK -> '+QYBoletosBOL_CODIGO.Value.ToString);
              Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
              Memo1.Lines.Add(' ');
              TBResultados.Insert;
              TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
              TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
              TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
              TBResultadosValorPago.Value:=0;
              TBResultadosStatus.Value:='A';
              TBResultadosStatusConsulta.Value:='';
              TBResultadosMensagem.Value:='BOLETO REGISTRADO COM SUCESSO.';
              TBResultados.Post;
            end else
            if (DM.TBContasCON_BANCO.Value=077) and (ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente<>'') then
            begin
              DM.QYAux.Close;
              DM.QYAux.SQL.Clear;
              DM.QYAux.SQL.Add('update BOLETOS set BOL_QRCODEPIX=:qrcode where BOL_CODIGO=:codigo');
              DM.QYAux.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
              DM.QYAux.ParamByName('qrcode').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
              DM.QYAux.ExecSQL;

              DM.QYAux.Close;
              DM.QYAux.SQL.Clear;
              DM.QYAux.SQL.Add(
                'update BOLETOS set BOL_LINHADIGITAVEL=:linhadigitavel, BOL_NOSSONUMERO=:nossonumero, BOL_QRCODEPIX=:qrcode, '+
                'BOL_CODIGOBARRAS=:codigobarras, BOL_CODIGOSOLICITACAO=:solicitacao where BOL_CODIGO=:codigo'
              );
              DM.QYAux.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
              DM.QYAux.ParamByName('codigobarras').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.CodBarras;
              DM.QYAux.ParamByName('linhadigitavel').AsString:=FormatarString('LINHADIGITAVEL',ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.LinhaDig);
              DM.QYAux.ParamByName('nossonumero').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumero;
              DM.QYAux.ParamByName('solicitacao').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.NossoNumeroCorrespondente; //codigo solicitacao.
              DM.QYAux.ParamByName('qrcode').AsString:=ACBrBoleto1.ListaRetornoWeb[I].DadosRet.TituloRet.EMV;
              DM.QYAux.ExecSQL;

              Memo1.Lines.Add('Boleto OK -> '+QYBoletosBOL_CODIGO.Value.ToString);
              Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------');
              Memo1.Lines.Add(' ');
              TBResultados.Insert;
              TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
              TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
              TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
              TBResultadosValorPago.Value:=0;
              TBResultadosStatus.Value:='A';
              TBResultadosStatusConsulta.Value:='';
              TBResultadosMensagem.Value:='BOLETO REGISTRADO COM SUCESSO.';
              TBResultados.Post;
            end else
            begin
              TBResultados.Insert;
              TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
              TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
              TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
              TBResultadosValorPago.Value:=0;
              TBResultadosStatus.Value:='A';
              TBResultadosStatusConsulta.Value:='';
              TBResultadosMensagem.Value:='VERIFIQUE A ABA RETORNOS WEBSERVICE.';
              TBResultados.Post;
            end;

          end;
        finally
        end;
      end;
      {$ENDREGION}
      Application.ProcessMessages;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Processo de envio completo.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosAPIRegistro.LiquidacaoAilosViacredi(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

  //{"linhaDigitavel":"74891125290380302602435075471033111520000097000","codigoBarras":"74891115200000970001125203803026023507547103","carteira":"SIMPLES","seuNumero":"3803","nossoNumero":"252038030","pagador":{"codigo":"0017G","documento":"19574741000104","nome":"PRIMAZIA SEMI JOIAS LTDA ME"},"dataEmissao":"2025-07-17","dataVencimento":"2025-07-24","valorNominal":970,"situacao":"LIQUIDADO REDE","txId":"8066367d65644e20910815956f129c95","codigoQrCode":"00020126910014br.gov.bcb.pix2569pix-qrcode.sicredi.com.br/qr/v2/cobv/ba896e302aba456191ca67be4c3932415204000053039865802BR5903PIX6006Cidade62070503***63045F8B","multa":2,"abatimento":0,"tipoJuros":"A - VALOR","juros":2,"diasProtesto":0,"validadeAposVencimento":180,"diasNegativacao":0,"tipoDesconto":"A - VALOR","descontoAntecipacao":0,"dadosLiquidacao":{"data":"2025-07-28T10:17:45-03:00","valor":997.4,"multa":19.4,"abatimento":0,"juros":8,"desconto":0},"descontos":[],"dataPrevisaoPagamento":"2025-07-29"}
  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO COMPE') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO REDE') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'BAIXADO') then
  begin
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=0;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
    TBResultados.Post;
    Exit;
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='BAIXADO' then
  begin
    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO FOI BAIXADO NO BANCO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
    TBResultados.Post;
    {$ENDREGION}
  end;

  if ((UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO COMPE') or (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO REDE')) then
  begin
    {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
    TemAlgumaBaixa:=False;
    QYBoletosItens.First;
    while not QYBoletosItens.Eof do
    begin
      if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
      begin
        TemAlgumaBaixa:=True;
        Break; //sai do while boletositens.
      end;
      QYBoletosItens.Next;
    end;
    if TemAlgumaBaixa then
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
      TBResultados.Post;
      Exit;
    end;
    {$ENDREGION}

    {$REGION 'Marca boleto como baixado.'}
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='B';
    DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBBoletosBOL_DTPAGAMENTO.Value:=Retorno.DadosRet.TituloRet.DataBaixa;
    DM2.TBBoletosBOL_VALORPAGO.Value:=Retorno.DadosRet.TituloRet.ValorPago;
    DM2.TBBoletos.Post;
    {$ENDREGION}

    {$REGION 'Baixa as contas a receber'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
      'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
    );
    DM2.TBBoletosItens.First;
    PrimeiraContaReceber:=True;
    while not DM2.TBBoletosItens.Eof do
    begin
      {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;
      DM.QYAux.Close;
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
      DM.QYAux.ParamByName('dtpagamento').AsDate:=Retorno.DadosRet.TituloRet.DataBaixa;
      DM.QYAux.ParamByName('status').AsString:='B';
      DM.QYAux.ParamByName('tipobaixa').AsString:='T';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      if PrimeiraContaReceber then
      begin
        PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
        //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
        if DM2.TBBoletosBOL_VALORTOTAL.Value < Retorno.DadosRet.TituloRet.ValorPago then
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (Retorno.DadosRet.TituloRet.ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      end else
      DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.QYAux.ExecSQL;
      {$ENDREGION}
      DM2.TBBoletosItens.Next;
    end;
    {$ENDREGION}

    {$REGION 'Faz o lançamento no fluxo de caixa.'}
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
    {$ENDREGION}

    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
    TBResultadosStatus.Value:='B';
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
    TBResultados.Post;
    {$ENDREGION}
  end;
end;

procedure TFormBoletosAPIRegistro.LiquidacaoBancoDoBrasil(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'BAIXADO') then
  begin
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=0;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
    TBResultados.Post;
    Exit;
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='BAIXADO' then
  begin
    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO FOI BAIXADO NO BANCO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
    TBResultados.Post;
    {$ENDREGION}
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO' then
  begin
    {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
    TemAlgumaBaixa:=False;
    QYBoletosItens.First;
    while not QYBoletosItens.Eof do
    begin
      if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
      begin
        TemAlgumaBaixa:=True;
        Break; //sai do while boletositens.
      end;
      QYBoletosItens.Next;
    end;
    if TemAlgumaBaixa then
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
      TBResultados.Post;
      Exit;
    end;
    {$ENDREGION}

    {$REGION 'Marca boleto como baixado.'}
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='B';
    DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBBoletosBOL_DTPAGAMENTO.Value:=Retorno.DadosRet.TituloRet.DataBaixa;
    DM2.TBBoletosBOL_VALORPAGO.Value:=Retorno.DadosRet.TituloRet.ValorPago;
    DM2.TBBoletos.Post;
    {$ENDREGION}

    {$REGION 'Baixa as contas a receber'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
      'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
    );
    DM2.TBBoletosItens.First;
    PrimeiraContaReceber:=True;
    while not DM2.TBBoletosItens.Eof do
    begin
      {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;
      DM.QYAux.Close;
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
      DM.QYAux.ParamByName('dtpagamento').AsDate:=Retorno.DadosRet.TituloRet.DataBaixa;
      DM.QYAux.ParamByName('status').AsString:='B';
      DM.QYAux.ParamByName('tipobaixa').AsString:='T';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      if PrimeiraContaReceber then
      begin
        PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
        //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
        if DM2.TBBoletosBOL_VALORTOTAL.Value < Retorno.DadosRet.TituloRet.ValorPago then
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (Retorno.DadosRet.TituloRet.ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      end else
      DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.QYAux.ExecSQL;
      {$ENDREGION}
      DM2.TBBoletosItens.Next;
    end;
    {$ENDREGION}

    {$REGION 'Faz o lançamento no fluxo de caixa.'}
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
    {$ENDREGION}

    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
    TBResultadosStatus.Value:='B';
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
    TBResultados.Post;
    {$ENDREGION}
  end;
end;

procedure TFormBoletosAPIRegistro.LiquidacaoInter(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

  //{"linhaDigitavel":"74891125290380302602435075471033111520000097000","codigoBarras":"74891115200000970001125203803026023507547103","carteira":"SIMPLES","seuNumero":"3803","nossoNumero":"252038030","pagador":{"codigo":"0017G","documento":"19574741000104","nome":"PRIMAZIA SEMI JOIAS LTDA ME"},"dataEmissao":"2025-07-17","dataVencimento":"2025-07-24","valorNominal":970,"situacao":"LIQUIDADO REDE","txId":"8066367d65644e20910815956f129c95","codigoQrCode":"00020126910014br.gov.bcb.pix2569pix-qrcode.sicredi.com.br/qr/v2/cobv/ba896e302aba456191ca67be4c3932415204000053039865802BR5903PIX6006Cidade62070503***63045F8B","multa":2,"abatimento":0,"tipoJuros":"A - VALOR","juros":2,"diasProtesto":0,"validadeAposVencimento":180,"diasNegativacao":0,"tipoDesconto":"A - VALOR","descontoAntecipacao":0,"dadosLiquidacao":{"data":"2025-07-28T10:17:45-03:00","valor":997.4,"multa":19.4,"abatimento":0,"juros":8,"desconto":0},"descontos":[],"dataPrevisaoPagamento":"2025-07-29"}
  //possiveis status: "RECEBIDO" "A_RECEBER" "MARCADO_RECEBIDO" "ATRASADO" "CANCELADO" "EXPIRADO" "FALHA_EMISSAO" "EM_PROCESSAMENTO" "PROTESTO"
  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'RECEBIDO') and //verificar opcoes.
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'MARCADO_RECEBIDO') then
  begin
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=0;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='RECEBIDO'         then TBResultadosMensagem.Value:='BOLETO PAGO.'; //coloquei aqui apenas para conter todos os status
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='A_RECEBER'        then TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='MARCADO_RECEBIDO' then TBResultadosMensagem.Value:='BOLETO PAGO.'; //coloquei aqui apenas para conter todos os status
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='ATRASADO'         then TBResultadosMensagem.Value:='BOLETO ABERTO EM ATRASO.';
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='CANCELADO'        then TBResultadosMensagem.Value:='BOLETO CANCELADO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='EXPIRADO'         then TBResultadosMensagem.Value:='BOLETO EXPIRADO.';
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='FALHA_EMISSAO'    then TBResultadosMensagem.Value:='FALHA NA EMISSAO DO BOLETO.';
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='EM_PROCESSAMENTO' then TBResultadosMensagem.Value:='BOLETO EM PROCESSAMENTO.';
    if Retorno.DadosRet.TituloRet.EstadoTituloCobranca='PROTESTO'         then TBResultadosMensagem.Value:='BOLETO EM PROTESTO.';
    TBResultados.Post;
    Exit;
  end;

  if ((UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='RECEBIDO') or
      (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='MARCADO_RECEBIDO')) then
  begin
    {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
    TemAlgumaBaixa:=False;
    QYBoletosItens.First;
    while not QYBoletosItens.Eof do
    begin
      if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
      begin
        TemAlgumaBaixa:=True;
        Break; //sai do while boletositens.
      end;
      QYBoletosItens.Next;
    end;
    if TemAlgumaBaixa then
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
      TBResultados.Post;
      Exit;
    end;
    {$ENDREGION}

    {$REGION 'Marca boleto como baixado.'}
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='B';
    DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBBoletosBOL_DTPAGAMENTO.Value:=Retorno.DadosRet.TituloRet.DataBaixa;
    DM2.TBBoletosBOL_VALORPAGO.Value:=Retorno.DadosRet.TituloRet.ValorPago;
    DM2.TBBoletos.Post;
    {$ENDREGION}

    {$REGION 'Baixa as contas a receber'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
      'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
    );
    DM2.TBBoletosItens.First;
    PrimeiraContaReceber:=True;
    while not DM2.TBBoletosItens.Eof do
    begin
      {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;
      DM.QYAux.Close;
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
      DM.QYAux.ParamByName('dtpagamento').AsDate:=Retorno.DadosRet.TituloRet.DataBaixa;
      DM.QYAux.ParamByName('status').AsString:='B';
      DM.QYAux.ParamByName('tipobaixa').AsString:='T';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      if PrimeiraContaReceber then
      begin
        PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
        //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
        if DM2.TBBoletosBOL_VALORTOTAL.Value < Retorno.DadosRet.TituloRet.ValorPago then
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (Retorno.DadosRet.TituloRet.ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      end else
      DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.QYAux.ExecSQL;
      {$ENDREGION}
      DM2.TBBoletosItens.Next;
    end;
    {$ENDREGION}

    {$REGION 'Faz o lançamento no fluxo de caixa.'}
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
    {$ENDREGION}

    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
    TBResultadosStatus.Value:='B';
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
    TBResultados.Post;
    {$ENDREGION}
  end;
end;

procedure TFormBoletosAPIRegistro.LiquidacaoSicredi(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

  //{"linhaDigitavel":"74891125290380302602435075471033111520000097000","codigoBarras":"74891115200000970001125203803026023507547103","carteira":"SIMPLES","seuNumero":"3803","nossoNumero":"252038030","pagador":{"codigo":"0017G","documento":"19574741000104","nome":"PRIMAZIA SEMI JOIAS LTDA ME"},"dataEmissao":"2025-07-17","dataVencimento":"2025-07-24","valorNominal":970,"situacao":"LIQUIDADO REDE","txId":"8066367d65644e20910815956f129c95","codigoQrCode":"00020126910014br.gov.bcb.pix2569pix-qrcode.sicredi.com.br/qr/v2/cobv/ba896e302aba456191ca67be4c3932415204000053039865802BR5903PIX6006Cidade62070503***63045F8B","multa":2,"abatimento":0,"tipoJuros":"A - VALOR","juros":2,"diasProtesto":0,"validadeAposVencimento":180,"diasNegativacao":0,"tipoDesconto":"A - VALOR","descontoAntecipacao":0,"dadosLiquidacao":{"data":"2025-07-28T10:17:45-03:00","valor":997.4,"multa":19.4,"abatimento":0,"juros":8,"desconto":0},"descontos":[],"dataPrevisaoPagamento":"2025-07-29"}
  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO COMPE') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO REDE') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO PIX') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'BAIXADO') then
  begin
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=0;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
    TBResultados.Post;
    Exit;
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='BAIXADO' then
  begin
    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO FOI BAIXADO NO BANCO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
    TBResultados.Post;
    {$ENDREGION}
  end;

  if ((UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO COMPE') or
      (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO REDE') or
      (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO PIX')) then
  begin
    {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
    TemAlgumaBaixa:=False;
    QYBoletosItens.First;
    while not QYBoletosItens.Eof do
    begin
      if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
      begin
        TemAlgumaBaixa:=True;
        Break; //sai do while boletositens.
      end;
      QYBoletosItens.Next;
    end;
    if TemAlgumaBaixa then
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
      TBResultados.Post;
      Exit;
    end;
    {$ENDREGION}

    {$REGION 'Marca boleto como baixado.'}
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
    DM2.TBBoletos.Open;
    DM2.TBBoletos.Edit;
    DM2.TBBoletosBOL_STATUS.Value:='B';
    DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
    DM2.TBBoletosBOL_DTPAGAMENTO.Value:=Retorno.DadosRet.TituloRet.DataBaixa;
    DM2.TBBoletosBOL_VALORPAGO.Value:=Retorno.DadosRet.TituloRet.ValorPago;
    DM2.TBBoletos.Post;
    {$ENDREGION}

    {$REGION 'Baixa as contas a receber'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
      'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
    );
    DM2.TBBoletosItens.First;
    PrimeiraContaReceber:=True;
    while not DM2.TBBoletosItens.Eof do
    begin
      {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      DM.TBReceber.Open;
      DM.QYAux.Close;
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
      DM.QYAux.ParamByName('dtpagamento').AsDate:=Retorno.DadosRet.TituloRet.DataBaixa;
      DM.QYAux.ParamByName('status').AsString:='B';
      DM.QYAux.ParamByName('tipobaixa').AsString:='T';
      DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
      if PrimeiraContaReceber then
      begin
        PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
        //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
        if DM2.TBBoletosBOL_VALORTOTAL.Value < Retorno.DadosRet.TituloRet.ValorPago then
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (Retorno.DadosRet.TituloRet.ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      end else
      DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.QYAux.ExecSQL;
      {$ENDREGION}
      DM2.TBBoletosItens.Next;
    end;
    {$ENDREGION}

    {$REGION 'Faz o lançamento no fluxo de caixa.'}
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
    DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
    DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
    DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
    DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
    DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
    DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
    DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
    DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
    DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
    {$ENDREGION}

    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
    TBResultadosStatus.Value:='B';
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
    TBResultados.Post;
    {$ENDREGION}
  end;
end;

procedure TFormBoletosAPIRegistro.LiquidacaoSicoob(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO') and
     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'BAIXADO') then
  begin
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=0;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO. '+'('+Retorno.DadosRet.TituloRet.EstadoTituloCobranca+')';
    TBResultados.Post;
    Exit;
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='BAIXADO' then
  begin
    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultadosMensagem.Value:='ESTE BOLETO FOI BAIXADO NO BANCO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
    TBResultados.Post;
    {$ENDREGION}
  end;

  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO' then
  begin
    {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
    TemAlgumaBaixa:=False;
    QYBoletosItens.First;
    while not QYBoletosItens.Eof do
    begin
      if (QYBoletosItensREE_STATUS.Value='B') or (QYBoletosItensREE_STATUS.Value='P') then
      begin
        TemAlgumaBaixa:=True;
        Break; //sai do while boletositens.
      end;
      QYBoletosItens.Next;
    end;
    if TemAlgumaBaixa then
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
      TBResultados.Post;
      Exit;
    end;
    {$ENDREGION}

    if QYBoletosBOL_STATUS.Value='A' then
    begin
      {$REGION 'Marca boleto como baixado.'}
      DM2.TBBoletos.Close;
      DM2.TBBoletos.ParamByName('codigo').AsInteger:=QYBoletosBOL_CODIGO.Value;
      DM2.TBBoletos.Open;
      DM2.TBBoletos.Edit;
      DM2.TBBoletosBOL_STATUS.Value:='B';
      DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
      DM2.TBBoletosBOL_DTPAGAMENTO.Value:=Retorno.DadosRet.TituloRet.DataBaixa;
      DM2.TBBoletosBOL_VALORPAGO.Value:=Retorno.DadosRet.TituloRet.ValorPago;
      DM2.TBBoletos.Post;
      {$ENDREGION}

      {$REGION 'Baixa as contas a receber'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add(
        'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
        'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
      );
      DM2.TBBoletosItens.First;
      PrimeiraContaReceber:=True;
      while not DM2.TBBoletosItens.Eof do
      begin
        {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
        DM.TBReceber.Close;
        DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
        DM.TBReceber.Open;
        DM.QYAux.Close;
        DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
        DM.QYAux.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
        DM.QYAux.ParamByName('dtpagamento').AsDate:=Retorno.DadosRet.TituloRet.DataBaixa;
        DM.QYAux.ParamByName('status').AsString:='B';
        DM.QYAux.ParamByName('tipobaixa').AsString:='T';
        DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
        if PrimeiraContaReceber then
        begin
          PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
          //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
          if DM2.TBBoletosBOL_VALORTOTAL.Value < Retorno.DadosRet.TituloRet.ValorPago then
          DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (Retorno.DadosRet.TituloRet.ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
          DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
        end else
        DM.QYAux.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
        DM.QYAux.ExecSQL;
        {$ENDREGION}
        DM2.TBBoletosItens.Next;
      end;
      {$ENDREGION}

      {$REGION 'Faz o lançamento no fluxo de caixa.'}
      DM.TBCaixa.Insert;
      DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
      DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
      DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
      DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
      DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
      DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
      DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
      DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
      DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
      DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
      DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
      DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
      {$ENDREGION}

      {$REGION 'Exibe resultado pro usuário.'}
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
      TBResultadosStatus.Value:='B';
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='BOLETO BAIXADO COM SUCESSO.';
      TBResultados.Post;
      {$ENDREGION}

    end else
    begin
      TBResultados.Insert;
      TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
      TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
      TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
      TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
      TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
      TBResultadosStatusConsulta.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
      TBResultadosMensagem.Value:='ESTE BOLETO NAO ESTA EM ABERTO PARA SER BAIXADO. '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
      TBResultados.Post;
    end;
  end;
end;

procedure TFormBoletosAPIRegistro.CancelamentoSicoob(Retorno: TACBrBoletoRetornoWS);
var
  RetornoJSON, Status: TJSONObject;
  Resultados: TJSONArray;
  Z: Integer;
begin
  TBResultados.Insert;
  TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
  TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
  TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
  TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
  if Retorno.HTTPResultCode<>204 then //era 207
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:='ERRO AO BAIXAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE';
  end else
  if Retorno.HTTPResultCode=204 then //multi status, no sicoob.
  begin
    //no sicoob, vem um array json com os status de cada boleto.
    RetornoJSON:=TJSONObject.ParseJSONValue(Retorno.JSON) as TJSONObject;
    Resultados:=TJSONArray(RetornoJSON.GetValue<TJSONArray>('resultado')) as TJSONArray;
    for Z := 0 to pred(Resultados.Count) do
    begin
      Status:=Resultados.Items[Z].GetValue<TJSONObject>('status');
      if Status.GetValue<Integer>('codigo')=200 then
      begin
        TBResultadosStatus.Value:='C';
        TBResultadosMensagem.Value:='BOLETO CANCELADO COM SUCESSO.';
      end else
      begin
        TBResultadosStatus.Value:='?';
        TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(Status.GetValue<String>('mensagem')));
      end;
    end;
  end else
  begin
    TBResultadosStatus.Value:='?';
    TBResultadosMensagem.Value:='RETORNO DO BANCO INESPERADO. ('+Retorno.HTTPResultCode.ToString+')';
  end;

  TBResultados.Post;
end;

procedure TFormBoletosAPIRegistro.CancelamentoSicredi(Retorno: TACBrBoletoRetornoWS);
var RetornoJSON: TJSONObject;
begin
  TBResultados.Insert;
  TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
  TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
  TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
  TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
  if Retorno.HTTPResultCode=202 then
  begin
    RetornoJSON:=TJSONObject.ParseJSONValue(Retorno.JSON) as TJSONObject;
    TBResultadosStatus.Value:='C';
    TBResultadosMensagem.Value:='BOLETO CANCELADO COM SUCESSO.';
  end else
  if Retorno.HTTPResultCode=400 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:='ERRO AO BAIXAR O BOLETO. VERIFIQUE NOSSO NUMERO.';
  end else
  if Retorno.HTTPResultCode=404 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(Retorno.MsgRetorno));
  end else
  if Retorno.HTTPResultCode=422 then
  begin
    //{"timestamp":"2025-01-31T15:46:36.737+0000","error":"UNPROCESSABLE_ENTITY","code":"422","message":"0017 - Título não cadastrado."}
    RetornoJSON:=TJSONObject.ParseJSONValue(Retorno.JSON) as TJSONObject;
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(RetornoJSON.GetValue<String>('message')));
  end else
  begin
    TBResultadosStatus.Value:='?';
    TBResultadosMensagem.Value:='RETORNO DO BANCO INESPERADO. ('+Retorno.HTTPResultCode.ToString+')';
  end;

  TBResultados.Post;
end;

procedure TFormBoletosAPIRegistro.AlteracaoProtestoSicredi(Retorno: TACBrBoletoRetornoWS);
var TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  Memo1.Lines.Add('Número............:'+Retorno.DadosRet.TituloRet.SeuNumero);
  Memo1.Lines.Add('Status............:'+Retorno.DadosRet.TituloRet.EstadoTituloCobranca);
  Memo1.Lines.Add('-----------------------------------------------------------------------------');
  Memo1.Lines.Add('');

//  if (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'LIQUIDADO COMPE') and
//     (UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)<>'BAIXADO') then
//  begin
//    TBResultados.Insert;
//    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value; // RetornoDetalhe.DadosRet.TituloRet.NossoNumero.ToInteger;
//    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
//    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
//    TBResultadosValorPago.Value:=0;
//    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
//    TBResultadosMensagem.Value:='ESTE BOLETO AINDA NAO FOI PAGO.';
//    TBResultados.Post;
//    Exit;
//  end;

//  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='BAIXADO' then
//  begin
//    {$REGION 'Exibe resultado pro usuário.'}
//    TBResultados.Insert;
//    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
//    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
//    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
//    TBResultadosValorPago.Value:=QYBoletosBOL_VALORPAGO.AsExtended;
//    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
//    TBResultadosMensagem.Value:='ESTE BOLETO FOI BAIXADO NO BANCO NO DIA '+DateToStr(Retorno.DadosRet.TituloRet.DataBaixa);
//    TBResultados.Post;
//    {$ENDREGION}
//  end;

//  if UpperCase(Retorno.DadosRet.TituloRet.EstadoTituloCobranca)='LIQUIDADO COMPE' then
//  begin
    {$REGION 'Exibe resultado pro usuário.'}
    TBResultados.Insert;
    TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
    TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
    TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
    TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
    TBResultadosStatus.Value:='B';
    TBResultadosMensagem.Value:=Retorno.DadosRet.TituloRet.EstadoTituloCobranca;
    TBResultados.Post;
    {$ENDREGION}
//  end;
end;

procedure TFormBoletosAPIRegistro.CancelamentoBancoDoBrasil(Retorno: TACBrBoletoRetornoWS);
var RetornoJSON: TJSONObject;
begin
  TBResultados.Insert;
  TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
  TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
  TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
  TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
  if Retorno.HTTPResultCode=200 then
  begin
    RetornoJSON:=TJSONObject.ParseJSONValue(Retorno.JSON) as TJSONObject;
    TBResultadosStatus.Value:='C';
    TBResultadosMensagem.Value:='BOLETO CANCELADO COM SUCESSO.';
  end else
  if Retorno.HTTPResultCode=400 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:='ERRO AO BAIXAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE';
  end else
  if Retorno.HTTPResultCode=404 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(Retorno.MsgRetorno));
  end else
  begin
    TBResultadosStatus.Value:='?';
    TBResultadosMensagem.Value:='RETORNO DO BANCO INESPERADO. ('+Retorno.HTTPResultCode.ToString+')';
  end;

  TBResultados.Post;
end;

procedure TFormBoletosAPIRegistro.CancelamentoBancoInter(Retorno: TACBrBoletoRetornoWS);
var RetornoJSON: TJSONObject;
begin
  TBResultados.Insert;
  TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
  TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
  TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
  TBResultadosValorPago.Value:=Retorno.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
  if Retorno.HTTPResultCode=202 then
  begin
    RetornoJSON:=TJSONObject.ParseJSONValue(Retorno.JSON) as TJSONObject;
    TBResultadosStatus.Value:='C';
    TBResultadosMensagem.Value:='BOLETO CANCELADO COM SUCESSO.';
  end else
  if Retorno.HTTPResultCode=400 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:='ERRO AO BAIXAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE. ('+Retorno.HTTPResultCode.ToString+')';
  end else
  if Retorno.HTTPResultCode=403 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:='ERRO AO BAIXAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE. ('+Retorno.HTTPResultCode.ToString+')';
  end else
  if Retorno.HTTPResultCode=404 then
  begin
    TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
    TBResultadosMensagem.Value:=UpperCase(RemoveAcentos(Retorno.MsgRetorno));
  end else
  begin
    TBResultadosStatus.Value:='?';
    TBResultadosMensagem.Value:='RETORNO DO BANCO INESPERADO. ('+Retorno.HTTPResultCode.ToString+')';
  end;

  TBResultados.Post;
end;

procedure TFormBoletosAPIRegistro.PngBitBtnBaixarClick(Sender: TObject);
var
  TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
  Titulo: TACBrTitulo;
  Retorno: TListaACBrBoletoRetornoWS;
  RetornoDetalhe: TACBrBoletoRetornoWS;
  I, X: Integer;
  RetornoJSON, erroObject: TJSONObject;
  //errosArray: TJSONArray;
  Mensagem: String;
begin

  {$REGION 'Checagens iniciais'}
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and
     (DM.TBContasCON_BANCO.Value<>077) and
     (DM.TBContasCON_BANCO.Value<>748) and
     (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg(
      'O serviço de consulta por API do banco só está disponível para os bancos: '+#13#10+#13#10+
      '001 - Banco do Brasil'+#13#10+
      '077 - Banco Inter'+#13#10+
      '748 - Banco Sicredi'+#13#10+
      '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;
  {$ENDREGION}

  if DM.TBContasCON_BANCO.Value=077 then
  begin
    InterLiquidarBoletos;
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Realizar a consulta deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil  else
    if DM.TBContasCON_BANCO.Value=077 then ConfigurarBancoInter   else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    ACBrBoleto1.Configuracoes.WebService.Operacao:=tpConsultaDetalhe;
    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      Application.ProcessMessages;

      {$REGION 'verifica se tem qrcode. se nao tem é pq nao foi enviado'}
      if QYBoletosBOL_QRCODEPIX.Value='' then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosMensagem.Value:='BOLETO AINDA NÃO REGISTRADO.';
        TBResultados.Post;
        Continue;
      end;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      Titulo.DataDocumento:=QYBoletosBOL_DTCADASTRO.Value;
      Titulo.NumeroDocumento:=QYBoletosBOL_CODIGO.Value.ToString;
      Titulo.Carteira:=QYBoletosBOL_CARTEIRA.Value;
      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero:=AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero:=IntToStr(QYBoletosBOL_CODIGO.Value);

      Titulo.NossoNumeroCorrespondente:=QYBoletosBOL_CODIGOSOLICITACAO.Value; //banco inter utiliza esse código.
      {$ENDREGION}

      ACBrBoleto1.Enviar;

      //Sleep(2000); nao resolveu para o erro nas consulta com varios selecionados no banco inter.

      I:=0;
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
        Memo1.Lines.Add('Cod_Retorno...........:'+RetornoDetalhe.CodRetorno + sLineBreak +
                        'Msg_Retorno...........:'+RetornoDetalhe.MsgRetorno + sLineBreak +
                        'Ori_Retorno...........:'+RetornoDetalhe.OriRetorno + sLineBreak +
                        'HTTP_Result...........:'+IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                        'JSON..................:'+RetornoDetalhe.JSON);
        Memo1.Lines.Add('Indicador Continuidade:'+BoolToStr(RetornoDetalhe.indicadorContinuidade));
        Memo1.Lines.Add('Proximo Indice........:'+IntToStr(RetornoDetalhe.proximoIndice));
        Memo1.Lines.Add(' ');
        Memo1.Lines.Add(' ');

        for I:=0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
        begin
          //RetornoJSON:=TJSONObject.ParseJSONValue(RetornoDetalhe.JSON) as TJSONObject;
          //Mensagem:='{"resultado":{"numeroContrato":419150,"modalidade":1,"numeroContaCorrente":1087401}}';

          //RetornoJSON:=TJSONObject.ParseJSONValue(Mensagem) as TJSONObject;
          if DM.TBContasCON_BANCO.Value=001 then LiquidacaoBancoDoBrasil(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=077 then LiquidacaoInter(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=748 then LiquidacaoSicredi(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=756 then LiquidacaoSicoob(RetornoDetalhe);

          {$REGION 'Log no memo 01.'}
//          Memo1.Lines.Add('[Boletos Index = ' + FormatFloat('000',I)+']');
//          Memo1.Lines.Add('Número Boleto..................:'+RetornoDetalhe.DadosRet.TituloRet.NossoNumero);
//          Memo1.Lines.Add('Data Documento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDocumento));
//          Memo1.Lines.Add('Data Processamento.............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProcessamento));
//          Memo1.Lines.Add('Data Crédito...................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataCredito));
//          Memo1.Lines.Add('Data Abatimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataAbatimento));
//          Memo1.Lines.Add('Data Desconto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto));
//          Memo1.Lines.Add('Data Desconto 2................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto2));
//          Memo1.Lines.Add('Data Desconto 3................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto3));
//          Memo1.Lines.Add('Data Mora Juros................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMoraJuros));
//          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
//          Memo1.Lines.Add('Data Protesto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProtesto));
//          Memo1.Lines.Add('Data Baixa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataBaixa));
//          Memo1.Lines.Add('Data Limite Pagto..............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataLimitePagto));
//          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
//          Memo1.Lines.Add('Data Registro..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataRegistro));
//          Memo1.Lines.Add('Data Movimento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMovimento));
//          Memo1.Lines.Add('Data Vencimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.Vencimento));
//          Memo1.Lines.Add('Valor Original.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorDocumento));
//          Memo1.Lines.Add('Carteira Convênio..............:'+RetornoDetalhe.DadosRet.TituloRet.Carteira);
//          Memo1.Lines.Add('Variação Carteira Convênio.....:'+RetornoDetalhe.DadosRet.TituloRet.Modalidade.ToString);
//          Memo1.Lines.Add('Código Estado Título Cobrança..:'+RetornoDetalhe.DadosRet.TituloRet.codigoEstadoTituloCobranca);
//          Memo1.Lines.Add('Estado Título Cobrança.........:'+RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca);
//          Memo1.Lines.Add('Contrato.......................:'+RetornoDetalhe.DadosRet.TituloRet.Contrato);
//          Memo1.Lines.Add('Valor Atual....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.valorAtual));
//          Memo1.Lines.Add('Valor Pago.....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorPago));
//          Memo1.Lines.Add('Valor Recebido.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorRecebido));
//          Memo1.Lines.Add('-----------------------------------------------------------------------------');
//          Memo1.Lines.Add('');
          {$ENDREGION}

        end;
        Application.ProcessMessages;
      end;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Consulta efetuada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosAPIRegistro.PngBitBtnCancelarClick(Sender: TObject);
var
  BoletoBaixadoCancelado: Boolean;
  Titulo: TACBrTitulo;
  I, X: Integer;
  RetornoDetalhe: TACBrBoletoRetornoWS;
begin
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  {$REGION 'Verifica se tem boletos baixados/cancelados.'}
  if DBGrid1.SelectedRows.Count > 0 then
  begin
    BoletoBaixadoCancelado:=False;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      if QYBoletosBOL_STATUS.Value<>'A' then
      BoletoBaixadoCancelado:=True;
    end;
  end;
  AbortIf(BoletoBaixadoCancelado,'Existem boletos selecionados que já foram baixados e/ou cancelados.'+#13#10+'Apenas boletos em aberto podem ser cancelados.');
  {$ENDREGION}

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and
     (DM.TBContasCON_BANCO.Value<>077) and
     (DM.TBContasCON_BANCO.Value<>748) and
     (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg('O serviço de cancelamento por API do banco só está disponível para os bancos: '+#13#10+#13#10+
    '001 - Banco do Brasil'+#13#10+
    '077 - Banco Inter'+#13#10+
    '748 - Banco Sicredi'+#13#10+
    '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Realizar o cancelamento deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil  else
    if DM.TBContasCON_BANCO.Value=077 then ConfigurarBancoInter   else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    ACBrBoleto1.Configuracoes.WebService.Operacao:=tpBaixa;

    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      Application.ProcessMessages;

      {$REGION 'verifica se tem qrcode. se nao tem é pq nao foi enviado'}
      if QYBoletosBOL_QRCODEPIX.Value='' then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosMensagem.Value:='BOLETO AINDA NÃO REGISTRADO.';
        TBResultados.Post;
        Continue;
      end;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      Titulo.DataDocumento:=QYBoletosBOL_DTCADASTRO.Value;
      Titulo.NumeroDocumento:=QYBoletosBOL_CODIGO.Value.ToString;
      Titulo.Carteira:=QYBoletosBOL_CARTEIRA.Value;
      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero:=AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero:=IntToStr(QYBoletosBOL_CODIGO.Value);

      Titulo.NossoNumeroCorrespondente:=QYBoletosBOL_CODIGOSOLICITACAO.Value; //banco inter utiliza esse código.
      {$ENDREGION}

      ACBrBoleto1.Enviar;

      I:=0;
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        RetornoDetalhe:=ACBrBoleto1.ListaRetornoWeb[I];
        Memo1.Lines.Add('Cod_Retorno...........:'+RetornoDetalhe.CodRetorno + sLineBreak +
                        'Msg_Retorno...........:'+RetornoDetalhe.MsgRetorno + sLineBreak +
                        'Ori_Retorno...........:'+RetornoDetalhe.OriRetorno + sLineBreak +
                        'HTTP_Result...........:'+IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                        'JSON..................:'+RetornoDetalhe.JSON);
        Memo1.Lines.Add('Indicador Continuidade:'+BoolToStr(RetornoDetalhe.indicadorContinuidade));
        Memo1.Lines.Add('Proximo Indice........:'+IntToStr(RetornoDetalhe.proximoIndice));
        Memo1.Lines.Add(' ');
        Memo1.Lines.Add(' ');

        for I := 0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
        begin
          RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
          {$REGION 'Log no memo 01.'}
//          Memo1.Lines.Add('[Boletos Index = ' + FormatFloat('000',I)+']');
//          Memo1.Lines.Add('Número Boleto..................:'+RetornoDetalhe.DadosRet.TituloRet.NossoNumero);
//          Memo1.Lines.Add('Data Documento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDocumento));
//          Memo1.Lines.Add('Data Processamento.............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProcessamento));
//          Memo1.Lines.Add('Data Crédito...................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataCredito));
//          Memo1.Lines.Add('Data Abatimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataAbatimento));
//          Memo1.Lines.Add('Data Desconto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto));
//          Memo1.Lines.Add('Data Desconto 2................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto2));
//          Memo1.Lines.Add('Data Desconto 3................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto3));
//          Memo1.Lines.Add('Data Mora Juros................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMoraJuros));
//          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
//          Memo1.Lines.Add('Data Protesto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProtesto));
//          Memo1.Lines.Add('Data Baixa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataBaixa));
//          Memo1.Lines.Add('Data Limite Pagto..............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataLimitePagto));
//          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
//          Memo1.Lines.Add('Data Registro..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataRegistro));
//          Memo1.Lines.Add('Data Movimento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMovimento));
//          Memo1.Lines.Add('Data Vencimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.Vencimento));
//          Memo1.Lines.Add('Valor Original.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorDocumento));
//          Memo1.Lines.Add('Carteira Convênio..............:'+RetornoDetalhe.DadosRet.TituloRet.Carteira);
//          Memo1.Lines.Add('Variação Carteira Convênio.....:'+RetornoDetalhe.DadosRet.TituloRet.Modalidade.ToString);
//          Memo1.Lines.Add('Código Estado Título Cobrança..:'+RetornoDetalhe.DadosRet.TituloRet.codigoEstadoTituloCobranca);
//          Memo1.Lines.Add('Estado Título Cobrança.........:'+RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca);
//          Memo1.Lines.Add('Contrato.......................:'+RetornoDetalhe.DadosRet.TituloRet.Contrato);
//          Memo1.Lines.Add('Valor Atual....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.valorAtual));
//          Memo1.Lines.Add('Valor Pago.....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorPago));
//          Memo1.Lines.Add('Valor Recebido.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorRecebido));
//          Memo1.Lines.Add('-----------------------------------------------------------------------------');
//          Memo1.Lines.Add('');
          {$ENDREGION}

          if DM.TBContasCON_BANCO.Value=001 then CancelamentoBancoDoBrasil(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=077 then CancelamentoBancoInter(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=748 then CancelamentoSicredi(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=756 then CancelamentoSicoob(RetornoDetalhe);

        end;
        Application.ProcessMessages;
      end;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormBoletosAPIRegistro.PngBitBtn1Click(Sender: TObject);
var
  TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
  Titulo: TACBrTitulo;
  Retorno: TListaACBrBoletoRetornoWS;
  RetornoDetalhe: TACBrBoletoRetornoWS;
  I, X: Integer;
  RetornoJSON, erroObject: TJSONObject;
  //errosArray: TJSONArray;
  Mensagem: String;
begin

  {$REGION 'Checagens iniciais'}
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and (DM.TBContasCON_BANCO.Value<>748) and (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg(
      'O serviço por API do banco só está disponível para os bancos: '+#13#10+#13#10+
      '001 - Banco do Brasil'+#13#10+
      '748 - Banco Sicredi'+#13#10+
      '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;
  {$ENDREGION}

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Realizar o comando "Sustar e manter protesto" deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    ACBrBoleto1.Configuracoes.WebService.Operacao:=tpAltera;

    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      Application.ProcessMessages;

      {$REGION 'verifica se tem qrcode. se nao tem é pq nao foi enviado'}
      if QYBoletosBOL_QRCODEPIX.Value='' then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosMensagem.Value:='BOLETO AINDA NÃO REGISTRADO.';
        TBResultados.Post;
        Continue;
      end;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      Titulo.DataDocumento:=QYBoletosBOL_DTCADASTRO.Value;
      Titulo.NumeroDocumento:=QYBoletosBOL_CODIGO.Value.ToString;
      Titulo.Carteira:=QYBoletosBOL_CARTEIRA.Value;
      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero:=AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero:=IntToStr(QYBoletosBOL_CODIGO.Value);
      {$ENDREGION}

      Titulo.DiasDeProtesto:=0;
      Titulo.OcorrenciaOriginal.Tipo:=toRemessaCancelarInstrucaoProtesto; // toRemessaAlterarNumeroDiasProtesto; //toRemessaSustarProtestoManterCarteira;  //toRemessaNaoProtestar;  //toRemessaProtestoAutomatico;
      ACBrBoleto1.Enviar;

      I:=0;
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
        Memo1.Lines.Add('Cod_Retorno...........:'+RetornoDetalhe.CodRetorno + sLineBreak +
                        'Msg_Retorno...........:'+RetornoDetalhe.MsgRetorno + sLineBreak +
                        'Ori_Retorno...........:'+RetornoDetalhe.OriRetorno + sLineBreak +
                        'HTTP_Result...........:'+IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                        'JSON..................:'+RetornoDetalhe.JSON);
        Memo1.Lines.Add('Indicador Continuidade:'+BoolToStr(RetornoDetalhe.indicadorContinuidade));
        Memo1.Lines.Add('Proximo Indice........:'+IntToStr(RetornoDetalhe.proximoIndice));
        Memo1.Lines.Add(' ');
        Memo1.Lines.Add(' ');

        for I:=0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
        begin
          //RetornoJSON:=TJSONObject.ParseJSONValue(RetornoDetalhe.JSON) as TJSONObject;
          //Mensagem:='{"resultado":{"numeroContrato":419150,"modalidade":1,"numeroContaCorrente":1087401}}';

          //RetornoJSON:=TJSONObject.ParseJSONValue(Mensagem) as TJSONObject;
          //if DM.TBContasCON_BANCO.Value=001 then LiquidacaoBancoDoBrasil(RetornoDetalhe) else
          if DM.TBContasCON_BANCO.Value=748 then AlteracaoProtestoSicredi(RetornoDetalhe);
          //if DM.TBContasCON_BANCO.Value=756 then LiquidacaoSicoob(RetornoDetalhe);

          {$REGION 'Log no memo 01.'}
//          Memo1.Lines.Add('[Boletos Index = ' + FormatFloat('000',I)+']');
//          Memo1.Lines.Add('-----------------------------------------------------------------------------');
//          Memo1.Lines.Add('');
          {$ENDREGION}

        end;
        Application.ProcessMessages;
      end;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Consulta efetuada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosAPIRegistro.PngBitBtn4Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=True;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormBoletosAPIRegistro.PngBitBtn5Click(Sender: TObject);
var Linha: Integer;
begin
  DBGrid1.DataSource.DataSet.First;
  for Linha:=0 to DBGrid1.DataSource.DataSet.RecordCount-1 do
  begin
    DBGrid1.SelectedRows.CurrentRowSelected:=not DBGrid1.SelectedRows.CurrentRowSelected;
    DBGrid1.DataSource.DataSet.Next;
  end;
  DBGrid1.SelectedRows.Refresh;
end;

procedure TFormBoletosAPIRegistro.PngBitBtn6Click(Sender: TObject);
var Where: String;
begin
  AbortIf((MaskEdit3.Text='  /  /    ') or (MaskEdit4.Text='  /  /    '), 'Digite as datas inicial e final');
  AbortIf(Edit4.Text='','Informe a conta.');

  Where:=' BOL_CONTA='+QuotedStr(Edit3.Text);

  if ComboBox3.Text='CADASTRO' then Where:=Where+' and (BOL_DTCADASTRO between :datainicial and :datafinal) ' else
  if ComboBox3.Text='VENCIMENTO' then Where:=Where+' and (BOL_DTVENCIMENTO between :datainicial and :datafinal) ' else
  if ComboBox3.Text='PAGAMENTO' then Where:=Where+' and (BOL_DTPAGAMENTO between :datainicial and :datafinal) ';
  if ComboBox4.Text='ABERTOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('A') else
  if ComboBox4.Text='BAIXADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('B') else
  if ComboBox4.Text='CANCELADOS' then Where:=Where+' and BOL_STATUS='+QuotedStr('C');
  if Edit2.Text<>'' then Where:=Where+' and BOL_CLIENTE='+QuotedStr(Edit1.Text);
  if CheckBox1.Checked then Where:=Where+' and BOL_QRCODEPIX is null';

  QYBoletos.Close;
  QYBoletosItens.Close;
  QYBoletos.SQL.Clear;
  QYBoletos.SQL.Add('select * from BOLETOS '+
                    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
                    'left join BANCOS on CON_BANCO=BAN_CODIGO '+
                    'where '+Where+' order by BOL_NOME, BOL_DTVENCIMENTO');
  QYBoletos.ParamByName('datainicial').AsDate:=StrToDate(MaskEdit3.Text);
  QYBoletos.ParamByName('datafinal').AsDate:=StrToDate(MaskEdit4.Text);
  QYBoletos.Open;
  QYBoletosItens.Open;

  QYBoletos.FetchAll;
  QYBoletosItens.FetchAll;
end;

procedure TFormBoletosAPIRegistro.PngBitBtnDetalharClick(Sender: TObject);
var
  I, X: Integer;
  Titulo: TACBrTitulo;
  FiltrosAPI: TACBrBoletoWSFiltroConsulta;
  RetornoDetalhe: TACBrBoletoRetornoWS;
begin
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and
     (DM.TBContasCON_BANCO.Value<>077) and
     (DM.TBContasCON_BANCO.Value<>085) and
     (DM.TBContasCON_BANCO.Value<>748) and
     (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg(
      'O serviço de consulta por API do banco só está disponível para os bancos: '+#13#10+#13#10+
      '001 - Banco do Brasil'+#13#10+
      '077 - Banco Inter'+#13#10+
      '085 - Banco Ailos - Viacredi'+#13#10+
      '748 - Banco Sicredi'+#13#10+
      '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Deseja detalhar cada um deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil else
    if DM.TBContasCON_BANCO.Value=077 then ConfigurarBancoInter else
    if DM.TBContasCON_BANCO.Value=085 then ConfigurarBancoAilosViaCredi else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    ACBrBoleto1.Configuracoes.WebService.Operacao := tpConsultaDetalhe;
    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      Application.ProcessMessages;

      {$REGION 'verifica se tem qrcode. se nao tem é pq nao foi enviado'}
//      if QYBoletosBOL_QRCODEPIX.Value='' then
//      begin
//        TBResultados.Insert;
//        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
//        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
//        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
//        TBResultadosValorPago.Value:=0;
//        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
//        TBResultadosMensagem.Value:='BOLETO AINDA NÃO REGISTRADO.';
//        TBResultados.Post;
//        Continue;
//      end;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      Titulo.NumeroDocumento:=QYBoletosBOL_CODIGO.Value.ToString;
      Titulo.Carteira:=QYBoletosBOL_CARTEIRA.Value;

      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero:=AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero:=IntToStr(QYBoletosBOL_CODIGO.Value);

      Titulo.NossoNumeroCorrespondente:=QYBoletosBOL_CODIGOSOLICITACAO.Value; //banco inter utiliza esse código.
      {$ENDREGION}

      FiltrosAPI:=ACBrBoleto1.Configuracoes.WebService.Filtro;
      FiltrosAPI.Clear;
      FiltrosAPI.indicadorSituacao:=isbBaixado;

      ACBrBoleto1.Enviar;

      I:=0;
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
        Memo1.Lines.Add('Cod_Retorno...........:'+RetornoDetalhe.CodRetorno + sLineBreak +
                        'Msg_Retorno...........:'+RetornoDetalhe.MsgRetorno + sLineBreak +
                        'Ori_Retorno...........:'+RetornoDetalhe.OriRetorno + sLineBreak +
                        'HTTP_Result...........:'+IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                        'JSON..................:'+RetornoDetalhe.JSON);
        Memo1.Lines.Add('Indicador Continuidade:'+BoolToStr(RetornoDetalhe.indicadorContinuidade));
        Memo1.Lines.Add('Proximo Indice........:'+IntToStr(RetornoDetalhe.proximoIndice));
        Memo1.Lines.Add(' ');
        Memo1.Lines.Add(' ');

        for I := 0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
        begin
          RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
          {$REGION 'Log no memo 01.'}
          Memo1.Lines.Add('[Boletos Index = ' + FormatFloat('000',I)+']');
          Memo1.Lines.Add('Número Boleto..................:'+RetornoDetalhe.DadosRet.TituloRet.NossoNumero);
          Memo1.Lines.Add('Data Documento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDocumento));
          Memo1.Lines.Add('Data Processamento.............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProcessamento));
          Memo1.Lines.Add('Data Crédito...................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataCredito));
          Memo1.Lines.Add('Data Abatimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataAbatimento));
          Memo1.Lines.Add('Data Desconto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto));
          Memo1.Lines.Add('Data Desconto 2................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto2));
          Memo1.Lines.Add('Data Desconto 3................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto3));
          Memo1.Lines.Add('Data Mora Juros................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMoraJuros));
          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
          Memo1.Lines.Add('Data Protesto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProtesto));
          Memo1.Lines.Add('Data Baixa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataBaixa));
          Memo1.Lines.Add('Data Limite Pagto..............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataLimitePagto));
          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
          Memo1.Lines.Add('Data Registro..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataRegistro));
          Memo1.Lines.Add('Data Movimento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMovimento));
          Memo1.Lines.Add('Data Vencimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.Vencimento));
          Memo1.Lines.Add('Valor Original.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorDocumento));
          Memo1.Lines.Add('Carteira Convênio..............:'+RetornoDetalhe.DadosRet.TituloRet.Carteira);
          Memo1.Lines.Add('Variação Carteira Convênio.....:'+RetornoDetalhe.DadosRet.TituloRet.Modalidade.ToString);
          Memo1.Lines.Add('Código Estado Título Cobrança..:'+RetornoDetalhe.DadosRet.TituloRet.codigoEstadoTituloCobranca);
          Memo1.Lines.Add('Estado Título Cobrança.........:'+RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca);
          Memo1.Lines.Add('Contrato.......................:'+RetornoDetalhe.DadosRet.TituloRet.Contrato);
          Memo1.Lines.Add('Valor Atual....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorAtual));
          Memo1.Lines.Add('Valor Pago.....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorPago));
          Memo1.Lines.Add('Valor Recebido.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorRecebido));
          Memo1.Lines.Add('-----------------------------------------------------------------------------');
          Memo1.Lines.Add('');
          {$ENDREGION}

          if QYBoletosCON_BANCO.Value=077 then
          AtualizarBoletoPeloDetalheInter(QYBoletosBOL_CODIGO.Value, RetornoDetalhe.HTTPResultCode, RetornoDetalhe.JSON);

          {$REGION 'exibe resultado pro usuário.'}
          TBResultados.Insert;
          TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
          TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
          TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
          TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
          TBResultadosStatusConsulta.Value:=RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca;
          TBResultadosValorPago.Value:=RetornoDetalhe.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
          TBResultadosCodigoSolicitacao.Value:=RetornoDetalhe.DadosRet.TituloRet.NossoNumeroCorrespondente;
          TBResultadosCodigoBarras.Value:=RetornoDetalhe.DadosRet.TituloRet.CodBarras;
          TBResultadosLinhaDigitavel.Value:=RetornoDetalhe.DadosRet.TituloRet.LinhaDig;
          TBResultadosQRCodePix.Value:=RetornoDetalhe.DadosRet.TituloRet.EMV;
          TBResultadosNossoNumero.Value:=RetornoDetalhe.DadosRet.TituloRet.NossoNumero;
          if RetornoDetalhe.HTTPResultCode<>200 then
          begin
            TBResultadosMensagem.Value:='ERRO AO DETALHAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE';
          end else
          begin
            TBResultadosMensagem.Value:='BOLETO DETALHADO COM SUCESSO. VERIFIQUE ABA RETORNO WEBSERVICE';
          end;
          TBResultados.Post;
          {$ENDREGION}
        end;
        Application.ProcessMessages;
      end;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Consulta efetuada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosAPIRegistro.PngBitBtnProrrogarClick(Sender: TObject);
var
  I, X: Integer;
  Titulo: TACBrTitulo;
  FiltrosAPI: TACBrBoletoWSFiltroConsulta;
  RetornoDetalhe: TACBrBoletoRetornoWS;
begin
  AbortIf(Edit4.Text='',                'Informe a conta.');
  AbortIf(DBGrid1.SelectedRows.Count<=0,'Nenhum boleto selecionado.');

  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=StrToInt(Edit3.Text);
  DM.TBContas.Open;

  if (DM.TBContasCON_BANCO.Value<>001) and
     (DM.TBContasCON_BANCO.Value<>077) and
     (DM.TBContasCON_BANCO.Value<>085) and
     (DM.TBContasCON_BANCO.Value<>748) and
     (DM.TBContasCON_BANCO.Value<>756) then
  begin
    MessageDlg(
      'O serviço de consulta por API do banco só está disponível para os bancos: '+#13#10+#13#10+
      '001 - Banco do Brasil'+#13#10+
      '077 - Banco Inter'+#13#10+
      '085 - Banco Ailos - Viacredi'+#13#10+
      '748 - Banco Sicredi'+#13#10+
      '756 - Banco Sicoob',mtInformation,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Você tem '+IntToStr(DBGrid1.SelectedRows.Count)+' boleto(s) selecionado(s).'+#13#10+'Deseja detalhar cada um deles?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    TBResultados.EmptyDataSet;
    PageControl1.ActivePageIndex:=0;
    Application.ProcessMessages;

    {$REGION 'Dados do emitente'}
    if DM.TBContasCON_BANCO.Value=001 then ConfigurarBancoBrasil else
    if DM.TBContasCON_BANCO.Value=077 then ConfigurarBancoInter else
    if DM.TBContasCON_BANCO.Value=085 then ConfigurarBancoAilosViaCredi else
    if DM.TBContasCON_BANCO.Value=748 then ConfigurarBancoSicredi else
    if DM.TBContasCON_BANCO.Value=756 then ConfigurarBancoSicoob;
    {$ENDREGION}

    ACBrBoleto1.Configuracoes.WebService.Operacao := tpAltera;
    Memo1.Lines.Clear;
    for X:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      ACBrBoleto1.ListadeBoletos.Clear; //faz o processo sempre com UM titulo na lista.

      DBGrid1.DataSource.DataSet.GotoBookmark(DBGrid1.SelectedRows.Items[X]);
      Application.ProcessMessages;

      {$REGION 'verifica se tem qrcode. se nao tem é pq nao foi enviado'}
      if QYBoletosBOL_QRCODEPIX.Value='' then
      begin
        TBResultados.Insert;
        TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
        TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
        TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
        TBResultadosValorPago.Value:=0;
        TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
        TBResultadosMensagem.Value:='BOLETO AINDA NÃO REGISTRADO.';
        TBResultados.Post;
        Continue;
      end;
      {$ENDREGION}

      {$REGION 'Dados titulo'}
      Titulo:=ACBrBoleto1.CriarTituloNaLista;
      Titulo.NumeroDocumento:=QYBoletosBOL_CODIGO.Value.ToString;
      Titulo.Carteira:=QYBoletosBOL_CARTEIRA.Value;
      if QYBoletosCON_NOSSONUMFORMATAR.Value='S' then
      Titulo.NossoNumero:=AlignText(IntToStr(QYBoletosBOL_CODIGO.Value),'0',QYBoletosCON_NOSSONUMDIGITOS.Value,taRight) else
      Titulo.NossoNumero:=IntToStr(QYBoletosBOL_CODIGO.Value);

      Titulo.Vencimento:=QYBoletosBOL_DTVENCIMENTO.Value;
      {$ENDREGION}

      ACBrBoleto1.Enviar;

      I:=0;
      if ACBrBoleto1.TotalListaRetornoWeb > 0 then
      begin
        RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
        Memo1.Lines.Add('Cod_Retorno...........:'+RetornoDetalhe.CodRetorno + sLineBreak +
                        'Msg_Retorno...........:'+RetornoDetalhe.MsgRetorno + sLineBreak +
                        'Ori_Retorno...........:'+RetornoDetalhe.OriRetorno + sLineBreak +
                        'HTTP_Result...........:'+IntToStr(RetornoDetalhe.HTTPResultCode) + sLineBreak +
                        'JSON..................:'+RetornoDetalhe.JSON);
        Memo1.Lines.Add('Indicador Continuidade:'+BoolToStr(RetornoDetalhe.indicadorContinuidade));
        Memo1.Lines.Add('Proximo Indice........:'+IntToStr(RetornoDetalhe.proximoIndice));
        Memo1.Lines.Add(' ');
        Memo1.Lines.Add(' ');

        for I := 0 to Pred(ACBrBoleto1.ListadeBoletos.Count) do
        begin
          RetornoDetalhe := ACBrBoleto1.ListaRetornoWeb[I];
          {$REGION 'Log no memo 01.'}
          Memo1.Lines.Add('[Boletos Index = ' + FormatFloat('000',I)+']');
          Memo1.Lines.Add('Número Boleto..................:'+RetornoDetalhe.DadosRet.TituloRet.NossoNumero);
          Memo1.Lines.Add('Data Documento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDocumento));
          Memo1.Lines.Add('Data Processamento.............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProcessamento));
          Memo1.Lines.Add('Data Crédito...................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataCredito));
          Memo1.Lines.Add('Data Abatimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataAbatimento));
          Memo1.Lines.Add('Data Desconto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto));
          Memo1.Lines.Add('Data Desconto 2................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto2));
          Memo1.Lines.Add('Data Desconto 3................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataDesconto3));
          Memo1.Lines.Add('Data Mora Juros................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMoraJuros));
          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
          Memo1.Lines.Add('Data Protesto..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataProtesto));
          Memo1.Lines.Add('Data Baixa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataBaixa));
          Memo1.Lines.Add('Data Limite Pagto..............:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataLimitePagto));
          Memo1.Lines.Add('Data Multa.....................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMulta));
          Memo1.Lines.Add('Data Registro..................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataRegistro));
          Memo1.Lines.Add('Data Movimento.................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.DataMovimento));
          Memo1.Lines.Add('Data Vencimento................:'+DateToStr(RetornoDetalhe.DadosRet.TituloRet.Vencimento));
          Memo1.Lines.Add('Valor Original.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorDocumento));
          Memo1.Lines.Add('Carteira Convênio..............:'+RetornoDetalhe.DadosRet.TituloRet.Carteira);
          Memo1.Lines.Add('Variação Carteira Convênio.....:'+RetornoDetalhe.DadosRet.TituloRet.Modalidade.ToString);
          Memo1.Lines.Add('Código Estado Título Cobrança..:'+RetornoDetalhe.DadosRet.TituloRet.codigoEstadoTituloCobranca);
          Memo1.Lines.Add('Estado Título Cobrança.........:'+RetornoDetalhe.DadosRet.TituloRet.estadoTituloCobranca);
          Memo1.Lines.Add('Contrato.......................:'+RetornoDetalhe.DadosRet.TituloRet.Contrato);
          Memo1.Lines.Add('Valor Atual....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.valorAtual));
          Memo1.Lines.Add('Valor Pago.....................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorPago));
          Memo1.Lines.Add('Valor Recebido.................:'+CurrToStr(RetornoDetalhe.DadosRet.TituloRet.ValorRecebido));
          Memo1.Lines.Add('-----------------------------------------------------------------------------');
          Memo1.Lines.Add('');
          {$ENDREGION}

          {$REGION 'exibe resultado pro usuário.'}
          TBResultados.Insert;
          TBResultadosBoleto.Value:=QYBoletosBOL_CODIGO.Value;
          TBResultadosCliente.Value:=QYBoletosBOL_CLIENTE.Value;
          TBResultadosNome.Value:=QYBoletosBOL_NOME.Value;
          TBResultadosStatus.Value:=QYBoletosBOL_STATUS.Value;
          TBResultadosValorPago.Value:=RetornoDetalhe.DadosRet.TituloRet.ValorPago; //QYBoletosBOL_VALORPAGO.Value;
          if RetornoDetalhe.HTTPResultCode<>200 then
          begin
            TBResultadosMensagem.Value:='ERRO AO DETALHAR O BOLETO. VERIFIQUE ABA RETORNO WEBSERVICE';
          end else
          begin
            TBResultadosMensagem.Value:='BOLETO PRORROGADO COM SUCESSO. VERIFIQUE ABA RETORNO WEBSERVICE';
          end;
          TBResultados.Post;
          {$ENDREGION}
        end;
        Application.ProcessMessages;
      end;
    end;
    Screen.Cursor:=crDefault;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormBoletosAPIRegistro.PngSpeedButton1Click(Sender: TObject);
begin
  LocClientesBotao(Edit1,Edit2);
end;

procedure TFormBoletosAPIRegistro.PopupMenu11Click(Sender: TObject);
begin
  AbortIf(TBResultados.IsEmpty, 'Nenhum resultado selecionado');
  AbortIf(TBResultadosLinhaDigitavel.Value='','Linha digitável não encontrada.');
  AbortIf(TBResultadosCodigoBarras.Value='','Código de barras não encontrado.');
  AbortIf(TBResultadosNossoNumero.Value='','Nosso número não encontrado.');
  AbortIf(TBResultadosQRCodePix.Value='','QRCode PIX não encontrado.');

  if MessageDlg('Deseja atualizar as informações localmente?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update BOLETOS set BOL_CODIGOBARRAS=:codigobarras, '+
      'BOL_LINHADIGITAVEL=:linhadigitavel, BOL_NOSSONUMERO=:nossonumero, '+
      'BOL_QRCODEPIX=:qrcodepix where BOL_CODIGO=:codigo'
    );
    DM.QYAux.ParamByName('codigobarras').AsString:=TBResultadosCodigoBarras.Value;
    DM.QYAux.ParamByName('linhadigitavel').AsString:=FormatarString('LINHADIGITAVEL',TBResultadosLinhaDigitavel.Value);
    DM.QYAux.ParamByName('nossonumero').AsString:=TBResultadosNossoNumero.Value;
    DM.QYAux.ParamByName('qrcodepix').AsString:=TBResultadosQRCodePix.Value;
    DM.QYAux.ParamByName('codigo').AsInteger:=TBResultadosBoleto.Value;
    DM.QYAux.ExecSQL;

    DM2.TBBoletos.Close;
    DM2.TBBoletos.Open;
  end;
end;

procedure TFormBoletosAPIRegistro.SpeedButton2Click(Sender: TObject);
begin
  LocContasBotao(Edit3,Edit4);
end;

procedure TFormBoletosAPIRegistro.AtualizarBoletoPeloDetalheInter(const CodigoBoleto, ResultCode: Integer; ResultJSON: String);
var
  LJSONObj: TJSONObject;
  Cobranca, Boleto, Pix: TJSONObject;
begin
  if ResultCode<>200 then Exit;

  LJSONObj := TJSONObject.ParseJSONValue(ResultJSON) as TJSONObject;

  //exemplo JSON:
  //{"cobranca":{"codigoSolicitacao":"279ddbfa-5163-478b-a9fa-a0f1708a6092","seuNumero":"3639","dataEmissao":"2026-03-06","dataVencimento":"2026-03-20",
  //"valorNominal":200,"tipoCobranca":"SIMPLES","situacao":"A_RECEBER","dataSituacao":"2026-03-06","arquivada":false,"descontos":[],"multa":{"codigo":"PERCENTUAL","taxa":4},
  //"mora":{"codigo":"TAXAMENSAL","taxa":2},"pagador":{"cpfCnpj":"53776289000100","tipoPessoa":"JURIDICA","nome":"RADIADORES GUTHS LTDA","endereco":"RUA BERNARDO DORNBUSCH",
  //"bairro":"VILA LALAU","cidade":"JARAGUA DO SUL","uf":"SC","cep":"89256214","email":"","ddd":"","telefone":"0","numero":"1864","complemento":""}},
  //"boleto":{"nossoNumero":"90632914308","codigoBarras":"07799139100000200000001112150509390632914308","linhaDigitavel":"07790001161215050939106329143082913910000020000"},
  //"pix":{"txid":"5099036731772784733000ZEsqICHXAMX0q","pixCopiaECola":"00020101021226980014BR.GOV.BCB.PIX2576spi-qrcode.bancointer.com.br/spi/pj/v2/cobv/b3424277cf7941909ee530349d62c4335204000053039865406200.005802BR5901*6013JARAGUA_DO_SU61088925446062070503***6304336C"}}

  try
    if not Assigned(LJSONObj) then Exit;

    // Acessa os três objetos principais do JSON
    Cobranca := LJSONObj.GetValue<TJSONObject>('cobranca', nil);
    Boleto   := LJSONObj.GetValue<TJSONObject>('boleto', nil);
    Pix      := LJSONObj.GetValue<TJSONObject>('pix', nil);

    // Inicia a edição na tabela (DM.TBBoletos deve estar posicionada no registro)
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=CodigoBoleto;
    DM2.TBBoletos.Open;

    if DM2.TBBoletosBOL_STATUS.Value<>'A' then Exit;

    DM2.TBBoletos.Edit;
    try
      // Campos vindos de "cobranca"
      if Assigned(Cobranca) then
      begin
        DM2.TBBoletosBOL_CODIGOSOLICITACAO.AsString := Cobranca.GetValue<string>('codigoSolicitacao', '');
        //DM2.TBBoletosBOL_STATUS.AsString          := Cobranca.GetValue<string>('situacao', '');
      end;

      // Campos vindos de "boleto"
      if Assigned(Boleto) then
      begin
        DM2.TBBoletosBOL_NOSSONUMERO.AsString       := Boleto.GetValue<string>('nossoNumero', '');
        DM2.TBBoletosBOL_CODIGOBARRAS.AsString      := Boleto.GetValue<string>('codigoBarras', '');
        DM2.TBBoletosBOL_LINHADIGITAVEL.AsString    := FormatarString('LINHADIGITAVEL',Boleto.GetValue<string>('linhaDigitavel', ''));
      end;

      // Campos vindos de "pix"
      if Assigned(Pix) then
      begin
        DM2.TBBoletosBOL_QRCODEPIX.AsString         := Pix.GetValue<string>('pixCopiaECola', '');
      end;

      DM2.TBBoletos.Post;
    except
      on E: Exception do
      begin
        DM2.TBBoletos.Cancel;
        raise Exception.Create('Erro ao atualizar campos do boleto: ' + E.Message);
      end;
    end;

  finally
    LJSONObj.Free;
  end;
end;

//###########
// testes
//###########
procedure TFormBoletosAPIRegistro.GetCertPassword(var Password: string);
begin
  Password:=DM.TBContasCON_KEYUSER.Value; //DM.TBParametrosPAR_SENHACERTIFICADO.Value;
end;

function TFormBoletosAPIRegistro.InterGetToken: String;
var
  Http: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  Params: TStringList;
  Response: String;
  JSON: TJSONObject;
begin
  Result:='';
  Http  :=TIdHTTP.Create(nil);
  SSL   :=TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  Params:=TStringList.Create;
  try
    SSL.SSLOptions.Method     :=sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions:=[sslvTLSv1_2];
    SSL.SSLOptions.Mode       :=sslmClient;
    SSL.SSLOptions.VerifyMode :=[];
    SSL.SSLOptions.CertFile   :=ExtractFilePath(Application.ExeName)+'BancoInterAPICertificado.crt';
    SSL.SSLOptions.KeyFile    :=ExtractFilePath(Application.ExeName)+'BancoInterAPIChave.key';
//    LSSL.OnGetPassword        :=GetCertPassword; // IMPORTANTE: Se o seu .key foi gerado COM senha, você DEVE passar aqui.

    Http.IOHandler:=SSL;
    Http.Request.ContentType:='application/x-www-form-urlencoded';

    Params.Add('client_id=' + '81b3c447-c85b-4841-8230-71c40b0ac5f6'); //DM.TBContasCON_CLIENTID.Value);
    Params.Add('client_secret=' + '77999d80-7238-48af-9d4b-c670682e003a'); //DM.TBContasCON_CLIENTSECRET.Value);
    Params.Add('scope=extrato.read boleto-cobranca.read pix.read');
    Params.Add('grant_type=client_credentials');

    try
      Response:=Http.Post('https://cdpj.partners.bancointer.com.br/oauth/v2/token', Params);
      JSON:=TJSONObject.ParseJSONValue(Response) as TJSONObject;
      try
        if Assigned(JSON) then
        Result:=JSON.GetValue('access_token').Value;
      finally
        JSON.Free;
      end;
    except
      on E: EIdHTTPProtocolException do
      begin
        // Aqui pegamos o erro real (401, 400, etc) que o Inter devolve no corpo
        raise Exception.Create('Erro HTTP ' + E.ErrorCode.ToString + ': ' + E.ErrorMessage);
      end;
      on E: Exception do raise Exception.Create('Erro na comunicação: ' + E.Message);
    end;
  finally
    Params.Free;
    SSL.Free;
    Http.Free;
  end;
end;

function TFormBoletosAPIRegistro.InterConsultarBoletos(const Token, DataInicial, DataFinal, DataCampo: String): String;
var
  Http: TIdHTTP;
  SSL : TIdSSLIOHandlerSocketOpenSSL;
  URL : String;
begin
  Result:='';
  Http  :=TIdHTTP.Create(nil);
  SSL   :=TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    SSL.SSLOptions.Method     :=sslvTLSv1_2;
    SSL.SSLOptions.SSLVersions:=[sslvTLSv1_2];
    SSL.SSLOptions.Mode       :=sslmClient;
    SSL.SSLOptions.VerifyMode :=[];
    SSL.SSLOptions.CertFile   :=ExtractFilePath(Application.ExeName)+'BancoInterAPICertificado.crt';
    SSL.SSLOptions.KeyFile    :=ExtractFilePath(Application.ExeName)+'BancoInterAPIChave.key';

    Http.IOHandler:=SSL;
    Http.Request.Clear;
    Http.Request.Accept:='application/json';
    Http.Request.CustomHeaders.Values['Authorization']:='Bearer '+Token;
    //Http.Request.CustomHeaders.Values['x-conta-corrente'] := DM.TBContasCON_KEYUSER.Value; // Header da conta corrente (obrigatório para consultas na API Partners)

    // --- MONTAGEM DA URL COM PARÂMETROS ---
    URL:='https://cdpj.partners.bancointer.com.br/cobranca/v3/cobrancas?' +
         'dataInicial=' + DataInicial +
         '&dataFinal=' + DataFinal +
         '&filtrarDataPor=' + DataCampo +
         '&paginacao.itensPorPagina=1000';

    try
      Result:=Http.Get(URL);
    except
      on E: EIdHTTPProtocolException do raise Exception.Create('Erro na consulta (' + E.ErrorCode.ToString + '): ' + E.ErrorMessage);
      on E: Exception do raise Exception.Create('Erro de conexão: ' + E.Message);
    end;
  finally
    SSL.Free;
    Http.Free;
  end;
end;

procedure TFormBoletosAPIRegistro.InterLiquidarBoletos;
var
  I: Integer;
  DataPagamento: TDate;
  DataInicial, DataFinal, DataCampo, DataPagamentoStr, Response, Token: String;
  Cobrancas: TJSONArray;
  JSONObj, CobrancaItem, DadosCobranca, DadosBoleto, DadosPagador, DadosPix: TJSONObject;
  ValorPago: Currency;
  TemAlgumaBaixa, PrimeiraContaReceber: Boolean;
begin
  //Documentação: https://developers.inter.co/references/cobranca-bolepix#tag/Cobranca/operation/pesquisaCobranca
  DataInicial :=FormatDateTime('yyyy-mm-dd', StrToDate(MaskEdit3.Text));
  DataFinal   :=FormatDateTime('yyyy-mm-dd', StrToDate(MaskEdit4.Text));
  if ComboBox3.Text='VENCIMENTO' then DataCampo:='VENCIMENTO' else
  if ComboBox3.Text='CADASTRO' then DataCampo:='EMISSAO' else
  if ComboBox3.Text='PAGAMENTO' then DataCampo:='PAGAMENTO';

  try
    Token:=InterGetToken;
    Response:=InterConsultarBoletos(Token, DataInicial, DataFinal, DataCampo);
    Screen.Cursor:=crHourGlass;
    try
      JSONObj:=TJSONObject.ParseJSONValue(Response) as TJSONObject;
      if Assigned(JSONObj) then
      begin
        Memo1.Lines.Add('JSON Retornado: '+JSONObj.ToString);
        Memo1.Lines.Add('---------------------------------------------');
        Cobrancas:=JSONObj.GetValue('cobrancas') as TJSONArray; //1. Acessa o array principal "cobrancas" que tem 3 objetos em cada item.

        if Assigned(Cobrancas) then
        begin
          for I:=0 to Cobrancas.Count-1 do
          begin
            CobrancaItem :=Cobrancas.Items[I] as TJSONObject; //2. Obtém o objeto da iteração atual

            // 3. Acessa os objetos internos para pegar os campos específicos
            DadosCobranca:=CobrancaItem.GetValue('cobranca') as TJSONObject;
            DadosBoleto  :=CobrancaItem.GetValue('boleto') as TJSONObject;
            DadosPix     :=CobrancaItem.GetValue('pix') as TJSONObject;
            DadosPagador :=DadosCobranca.GetValue('pagador') as TJSONObject;

            ValorPago:=0;
            DadosCobranca.TryGetValue<Currency>('valorTotalRecebido', ValorPago);

            DM.QYAux.Close;
            DM.QYAux.SQL.Clear;
            DM.QYAux.SQL.Add('select BOL_CLIENTE, BOL_CODIGO, BOL_CODIGOSOLICITACAO, BOL_STATUS, BOL_VALORTOTAL, CLI_NOME from BOLETOS left join CLIENTES on BOL_CLIENTE=CLI_CODIGO where BOL_CODIGOSOLICITACAO=:solicitacao');
            DM.QYAux.ParamByName('solicitacao').AsString:=DadosCobranca.GetValue('codigoSolicitacao').Value;
            DM.QYAux.Open;

            if DM.QYAux.IsEmpty then
            begin
              {$REGION 'Boleto nao encontrado no sistema, só no banco.'}
              TBResultados.Insert;
              TBResultadosBoleto.Value           :=StrToInt(DadosCobranca.GetValue('seuNumero').Value);
              //TBResultadosCliente.Value:=
              TBResultadosCodigoBarras.Value     :=DadosBoleto.GetValue('codigoBarras').Value;
              TBResultadosCodigoSolicitacao.Value:=DadosCobranca.GetValue('codigoSolicitacao').Value;
              TBResultadosLinhaDigitavel.Value   :=DadosBoleto.GetValue('linhaDigitavel').Value;
              TBResultadosMensagem.Value         :='BOLETO REGISTRADO NO BANCO MAS NÃO ENCONTRADO NO SISTEMA.';
              TBResultadosNome.Value             :=DadosPagador.GetValue('nome').Value;
              TBResultadosNossoNumero.Value      :=DadosBoleto.GetValue('nossoNumero').Value;
              TBResultadosQRCodePix.Value        :=DadosPix.GetValue('pixCopiaECola').Value;
              TBResultadosStatus.Value           :='';
              TBResultadosStatusConsulta.Value   :=DadosCobranca.GetValue('situacao').Value;
              TBResultadosValorPago.Value        :=ValorPago; //testar StrToCurr(DadosCobranca.GetValue('valorTotalRecebido').Value);
              TBResultados.Post;
              {$ENDREGION}
            end else
            begin
              DM2.TBBoletos.Close;
              DM2.TBBoletos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('BOL_CODIGO').AsInteger;
              DM2.TBBoletos.Open;

              {$REGION 'Verifica se o boleto local tem os campos linha digitavel, codigo barras e qrcodepix e nosso numero.'}
              if (SoNumeros(DM2.TBBoletosBOL_LINHADIGITAVEL.Value)='') or
                 (SoNumeros(DM2.TBBoletosBOL_CODIGOBARRAS.Value)='') or
                 (DM2.TBBoletosBOL_NOSSONUMERO.Value='') or
                 (DM2.TBBoletosBOL_QRCODEPIX.Value='') then
              begin
                DM2.TBBoletos.Edit;
                DM2.TBBoletosBOL_CODIGOBARRAS.Value:=DadosBoleto.GetValue('codigoBarras').Value;
                DM2.TBBoletosBOL_LINHADIGITAVEL.Value:=DadosBoleto.GetValue('linhaDigitavel').Value;
                DM2.TBBoletosBOL_NOSSONUMERO.Value:=DadosBoleto.GetValue('nossoNumero').Value;
                DM2.TBBoletosBOL_QRCODEPIX.Value:=DadosPix.GetValue('pixCopiaECola').Value;
                DM2.TBBoletos.Post;
              end;
              {$ENDREGION}

              {$REGION 'Começa a criar o registro para exibir resultado ao usuário.'}
              TBResultados.Insert;
              TBResultadosBoleto.Value           :=DM2.TBBoletosBOL_CODIGO.Value;
              TBResultadosCliente.Value          :=DM2.TBBoletosBOL_CLIENTE.Value;
              TBResultadosCodigoBarras.Value     :=DadosBoleto.GetValue('codigoBarras').Value;
              TBResultadosCodigoSolicitacao.Value:=DadosCobranca.GetValue('codigoSolicitacao').Value;
              TBResultadosLinhaDigitavel.Value   :=DadosBoleto.GetValue('linhaDigitavel').Value;

              //campo mensagem pode ser alterado mais abaixo tb.
              //STATUS pode ser: "RECEBIDO" "A_RECEBER" "MARCADO_RECEBIDO" "ATRASADO" "CANCELADO" "EXPIRADO" "FALHA_EMISSAO" "EM_PROCESSAMENTO" "PROTESTO"
              if DadosCobranca.GetValue('situacao').Value='RECEBIDO'         then TBResultadosMensagem.Value:='BOLETO RECEBIDO.' else //deixei aqui só pra ter todos os valores, mas ele é checado mais abaixo.
              if DadosCobranca.GetValue('situacao').Value='A_RECEBER'        then TBResultadosMensagem.Value:='BOLETO AINDA NÃO PAGO.' else
              if DadosCobranca.GetValue('situacao').Value='MARCADO_RECEBIDO' then TBResultadosMensagem.Value:='BOLETO MARCADO COMO RECEBIDO.' else //deixei aqui só pra ter todos os valores, mas ele é checado mais abaixo.
              if DadosCobranca.GetValue('situacao').Value='ATRASADO'         then TBResultadosMensagem.Value:='BOLETO EM ATRASO.' else
              if DadosCobranca.GetValue('situacao').Value='CANCELADO'        then TBResultadosMensagem.Value:='BOLETO CANCELADO NO BANCO.' else
              if DadosCobranca.GetValue('situacao').Value='EXPIRADO'         then TBResultadosMensagem.Value:='BOLETO EXPIRADO NO BANCO.' else
              if DadosCobranca.GetValue('situacao').Value='FALHA_EMISSAO'    then TBResultadosMensagem.Value:='BOLETO COM FALHA NA EMISSÃO.' else
              if DadosCobranca.GetValue('situacao').Value='EM_PROCESSAMENTO' then TBResultadosMensagem.Value:='BOLETO EM PROCESSAMENTO.' else
              if DadosCobranca.GetValue('situacao').Value='PROTESTO'         then TBResultadosMensagem.Value:='BOLETO EM PROTESTO.' else
              TBResultadosMensagem.Value:='STATUS NÃO RECONHECIDO: '+DadosCobranca.GetValue('situacao').Value;

              TBResultadosNome.Value             :=DM2.TBBoletosBOL_NOME.Value;
              TBResultadosNossoNumero.Value      :=DadosBoleto.GetValue('nossoNumero').Value;
              TBResultadosQRCodePix.Value        :=DadosPix.GetValue('pixCopiaECola').Value;
              TBResultadosStatus.Value           :=DM2.TBBoletosBOL_STATUS.Value;
              TBResultadosStatusConsulta.Value   :=DadosCobranca.GetValue('situacao').Value;
              TBResultadosValorPago.Value        :=DM2.TBBoletosBOL_VALORPAGO.AsExtended;
              {$ENDREGION}

              if (DM2.TBBoletosBOL_STATUS.Value='B') or (DM2.TBBoletosBOL_STATUS.Value='C') then
              begin
                TBResultadosMensagem.Value:='BOLETO JÁ ESTÁ BAIXADO OU CANCELADO NO SISTEMA.';
                TBResultados.Post;
                Continue;
              end;

              if ((UpperCase(DadosCobranca.GetValue('situacao').Value)='RECEBIDO') or
                  (UpperCase(DadosCobranca.GetValue('situacao').Value)='MARCADO_RECEBIDO')) then
              begin
                DataPagamentoStr:=DadosCobranca.GetValue('dataSituacao').Value;
                if DataPagamentoStr<>'' then
                DataPagamento:=EncodeDate(
                  StrToInt(Copy(DataPagamentoStr, 1, 4)), // Ano
                  StrToInt(Copy(DataPagamentoStr, 6, 2)), // Mês
                  StrToInt(Copy(DataPagamentoStr, 9, 2))  // Dia
                );

                {$REGION 'Verifica se o boleto tem algum item (conta a receber) que já foi baixado ou pré-baixado.'}
                TemAlgumaBaixa:=False;
                DM2.TBBoletosItens.First;
                while not DM2.TBBoletosItens.Eof do
                begin
                  if (DM2.TBBoletosItensREE_STATUS.Value='B') or (DM2.TBBoletosItensREE_STATUS.Value='P') then
                  begin
                    TemAlgumaBaixa:=True;
                    Break; //sai do while boletositens.
                  end;
                  DM2.TBBoletosItens.Next;
                end;
                if TemAlgumaBaixa then
                begin
                  TBResultadosMensagem.Value:='BOLETO LIQUIDADO, MAS JA EXISTE CONTAS A RECEBER BAIXADAS. PROCEDA A BAIXA MANUAL.';
                  TBResultados.Post;
                  Continue;
                end;
                {$ENDREGION}

                {$REGION 'Marca boleto como baixado.'}
                DM2.TBBoletos.Edit;
                DM2.TBBoletosBOL_STATUS.Value:='B';
                DM2.TBBoletosBOL_BAIXADOPOR.Value:=DM.UsuarioLogin;
                DM2.TBBoletosBOL_DTPAGAMENTO.Value:=DataPagamento; //StrToDate(DadosCobranca.GetValue('dataSituacao').Value);
                DM2.TBBoletosBOL_VALORPAGO.Value:=ValorPago;
                DM2.TBBoletos.Post;
                {$ENDREGION}

                {$REGION 'Baixa as contas a receber'}
                DM.QYAux2.Close;
                DM.QYAux2.SQL.Clear;
                DM.QYAux2.SQL.Add(
                  'update RECEBER set REE_BAIXADOPOR=:usuario, REE_CONTA=:conta, REE_DTPAGAMENTO=:dtpagamento, REE_STATUS=:status, '+
                  'REE_TIPOBAIXA=:tipobaixa, REE_VALORPAGO=:valorpago, REE_NOVOCODIGO=null where REE_CODIGO=:codigo'
                );
                DM2.TBBoletosItens.First;
                PrimeiraContaReceber:=True;
                while not DM2.TBBoletosItens.Eof do
                begin
                  {$REGION 'Tem mais de um item. Localiza cada conta a receber e baixa com o valor pago=valor. '}
                  DM.TBReceber.Close;
                  DM.TBReceber.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
                  DM.TBReceber.Open;
                  DM.QYAux2.Close;
                  DM.QYAux2.ParamByName('usuario').AsString:=DM.UsuarioLogin;
                  DM.QYAux2.ParamByName('conta').AsInteger:=DM2.TBBoletosBOL_CONTA.Value;
                  DM.QYAux2.ParamByName('dtpagamento').AsDate:=DataPagamento; //StrToDate(DadosCobranca.GetValue('dataSituacao').Value);
                  DM.QYAux2.ParamByName('status').AsString:='B';
                  DM.QYAux2.ParamByName('tipobaixa').AsString:='T';
                  DM.QYAux2.ParamByName('codigo').AsInteger:=DM2.TBBoletosItensBOI_RECEBER.Value;
                  if PrimeiraContaReceber then
                  begin
                    PrimeiraContaReceber:=False; //so passa por aqui quando é a primeira conta a receber.
                    //se o valor pago é maior que o total do boleto, soma a diferenca na primeira conta a receber.
                    if DM2.TBBoletosBOL_VALORTOTAL.Value < ValorPago then
                    DM.QYAux2.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended + (ValorPago - DM2.TBBoletosBOL_VALORTOTAL.AsExtended) else
                    DM.QYAux2.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
                  end else
                  DM.QYAux2.ParamByName('valorpago').AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
                  DM.QYAux2.ExecSQL;
                  {$ENDREGION}
                  DM2.TBBoletosItens.Next;
                end;
                {$ENDREGION}

                {$REGION 'Faz o lançamento no fluxo de caixa.'}
                DM.TBCaixa.Insert;
                DM.TBCaixaCAI_TIPODOCTO.Value:='BOLETO';
                DM.TBCaixaCAI_NUMDOCTO.Value:='BOL-'+IntToStr(DM2.TBBoletosBOL_CODIGO.Value);
                DM.TBCaixaCAI_DATA.Value:=DM.ServerDate;
                DM.TBCaixaCAI_VALOR.Value:=DM2.TBBoletosBOL_VALORPAGO.Value;
                DM.TBCaixaCAI_ENTRADASAIDA.Value:='E';
                DM.TBCaixaCAI_DESCRICAO.Value:='BAIXA BOLETO '+DM2.TBBoletosBOL_CODIGO.Value.ToString;
                DM.TBCaixaCAI_ORIGEM.Value:='BOLETOS';
                DM.TBCaixaCAI_VENDEDOR.Value:=DM.UsuarioVendedor;
                DM.TBCaixaCAI_CONTA.Value:=DM2.TBBoletosBOL_CONTA.Value;
                DM.TBCaixaCAI_CLIENTE.Value:=DM2.TBBoletosBOL_CLIENTE.Value;
                DM.TBCaixaCAI_CLIENTENOME.Value:=DM2.TBBoletosBOL_NOME.Value;
                DM.TBCaixa.Post; //os saldos são calculados no evento onpost.
                {$ENDREGION}

                {$REGION 'Exibe resultado pro usuário.'}
                TBResultadosValorPago.Value     :=ValorPago; //QYBoletosBOL_VALORPAGO.Value;
                TBResultadosStatus.Value        :=DM2.TBBoletosBOL_STATUS.Value; //ja atualizado.
                TBResultadosMensagem.Value      :='BOLETO BAIXADO COM SUCESSO.';
                {$ENDREGION}
              end;

              TBResultados.Post;
            end;

            DM.QYAux.Close;
          end;
        end;
      end;
    finally
      JSONObj.Free;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;
end;

end.
