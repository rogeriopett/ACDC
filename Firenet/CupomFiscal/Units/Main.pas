unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, Menus, StdCtrls,
  DBCtrls, Grids, DBGrids, Buttons, ExtCtrls, ACBrBase, ACBrECF, ACBrDevice, ACBrECFClass,
  ComCtrls, OleCtrls, SHDocVw, StatusLine, ImgList, PngImageList, PngSpeedButton,
  jpeg, ACBrCalculadora, Typinfo, XPMan, MSHTML, ActiveX, pngimage;

type
  TWBPosition = (wbPosBottom, wbPosTop, wbPosRight);

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    Menus1: TMenuItem;
    QYCupomFiscalItens: TIBQuery;
    QYCupomFiscalItensITENS: TIntegerField;
    TRCupomFiscalItens: TIBTransaction;
    TRProdutos: TIBTransaction;
    QYProdutos: TIBQuery;
    QYProdutosPRO_CODIGO: TIntegerField;
    QYProdutosPRO_CODIGOFAB: TIBStringField;
    QYProdutosPRO_CODIGOBARRAS: TIBStringField;
    QYProdutosPRO_FAMILIA: TIntegerField;
    QYProdutosPRO_GRUPO: TIntegerField;
    QYProdutosPRO_NOME: TIBStringField;
    QYProdutosPRO_DESCRICAO: TMemoField;
    QYProdutosPRO_TIPO: TIBStringField;
    QYProdutosPRO_CORSABOR: TIBStringField;
    QYProdutosPRO_TAMANHO: TIBStringField;
    QYProdutosPRO_LOCALIZACAO: TIBStringField;
    QYProdutosPRO_UNIDADE: TIBStringField;
    QYProdutosPRO_PESO: TIBBCDField;
    QYProdutosPRO_REGISTROMS: TIBStringField;
    QYProdutosPRO_ESTOQUEMIN: TIBBCDField;
    QYProdutosPRO_ESTOQUEMAX: TIBBCDField;
    QYProdutosPRO_ESTOQUEATUAL: TIBBCDField;
    QYProdutosPRO_TRIBUTOICMS: TIBStringField;
    QYProdutosPRO_ALIQICMS: TIBBCDField;
    QYProdutosPRO_ALIQICMSRED: TIBBCDField;
    QYProdutosPRO_ALIQICMSST: TIBBCDField;
    QYProdutosPRO_ALIQIPI: TIBBCDField;
    QYProdutosPRO_ALIQISS: TIBBCDField;
    QYProdutosPRO_ALIQOUTROS: TIBBCDField;
    QYProdutosPRO_COMISSAO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOULT: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField;
    QYProdutosPRO_MARGEM: TIBBCDField;
    QYProdutosPRO_PRECOVENDA: TIBBCDField;
    QYProdutosPRO_PRECOVENDAULT: TIBBCDField;
    QYProdutosPRO_PRECOVENDAMEDIO: TIBBCDField;
    QYProdutosPRO_TABPRECO1: TIBStringField;
    QYProdutosPRO_MARGEM1: TIBBCDField;
    QYProdutosPRO_PRECO1: TIBBCDField;
    QYProdutosPRO_TABPRECO2: TIBStringField;
    QYProdutosPRO_MARGEM2: TIBBCDField;
    QYProdutosPRO_PRECO2: TIBBCDField;
    QYProdutosPRO_TABPRECO3: TIBStringField;
    QYProdutosPRO_MARGEM3: TIBBCDField;
    QYProdutosPRO_PRECO3: TIBBCDField;
    QYProdutosPRO_TABPRECO4: TIBStringField;
    QYProdutosPRO_MARGEM4: TIBBCDField;
    QYProdutosPRO_PRECO4: TIBBCDField;
    QYProdutosPRO_TABPRECO5: TIBStringField;
    QYProdutosPRO_MARGEM5: TIBBCDField;
    QYProdutosPRO_PRECO5: TIBBCDField;
    QYProdutosPRO_TABPRECO6: TIBStringField;
    QYProdutosPRO_MARGEM6: TIBBCDField;
    QYProdutosPRO_PRECO6: TIBBCDField;
    QYProdutosPRO_ATUALIZATABELA: TIBStringField;
    QYProdutosPRO_STATUS: TIBStringField;
    QYProdutosPRO_DTCADASTRO: TDateField;
    QYProdutosPRO_DTATUALIZACAO: TDateField;
    QYProdutosPRO_USUARIO: TIBStringField;
    QYProdutosPRO_COMPOSTO: TIBStringField;
    QYProdutosPRO_DTULTCOMPRA: TDateField;
    QYProdutosPRO_DTULTVENDA: TDateField;
    QYProdutosPRO_INTERNET: TIBStringField;
    QYProdutosPRO_OFERTA: TIBStringField;
    QYProdutosPRO_CSTICMS: TIntegerField;
    QYProdutosPRO_CSTIPI: TIntegerField;
    QYProdutosPRO_CSTPIS: TIntegerField;
    QYProdutosPRO_CSTCOFINS: TIntegerField;
    QYProdutosPRO_ALIQPIS: TIBBCDField;
    QYProdutosPRO_ALIQCOFINS: TIBBCDField;
    QYProdutosPRO_ORIGEM: TIBStringField;
    QYProdutosPRO_MODICMS: TIBStringField;
    QYProdutosPRO_MODICMSST: TIBStringField;
    QYProdutosPRO_CSTISS: TIntegerField;
    QYProdutosPRO_TRIBUTOISS: TIBStringField;
    QYProdutosPRO_CLASSFISCAL: TIntegerField;
    QYProdutosPRO_ALIQPISST: TIBBCDField;
    QYProdutosPRO_ALIQCOFINSST: TIBBCDField;
    QYProdutosPRO_ALIQICMSADICST: TIBBCDField;
    Parametros1: TMenuItem;
    Image1: TImage;
    EditCodigo: TEdit;
    EditQuantidade: TEdit;
    EditUnitario: TEdit;
    EditTotalItem: TEdit;
    EditSubTotal: TEdit;
    LabelTotalGeral: TLabel;
    LabelMensagens: TLabel;
    LabelDescricaoProduto: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngSpeedButton9: TPngSpeedButton;
    PngSpeedButton10: TPngSpeedButton;
    PngSpeedButton11: TPngSpeedButton;
    PngSpeedButton12: TPngSpeedButton;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    ImageProduto: TImage;
    Label8: TLabel;
    IdentificarCliente1: TMenuItem;
    MenuPrincipal1: TMenuItem;
    CancelarItem1: TMenuItem;
    MenuOperacoes1: TMenuItem;
    MenuFiscal1: TMenuItem;
    Calculadora1: TMenuItem;
    LocalizarProduto1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    CancelarCupom1: TMenuItem;
    ConcederDesconto1: TMenuItem;
    IdentificarVendedor1: TMenuItem;
    SairdoCaixa1: TMenuItem;
    Timer1: TTimer;
    XPManifest1: TXPManifest;
    Timer2: TTimer;
    BobinaMemo: TMemo;
    BobinaWeb: TWebBrowser;
    PanelMenuPrincipal: TPanel;
    ListaMenuPrincipal: TListBox;
    PanelMenuOperacoes: TPanel;
    ListaMenuOperacoes: TListBox;
    PanelMenuFiscal: TPanel;
    ListaMenuFiscal: TListBox;
    PanelSubMenu: TPanel;
    ListaGerente: TListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label9: TLabel;
    ListaSupervisor: TListBox;
    N1: TMenuItem;
    DBText1: TDBText;
    Principal1: TMenuItem;
    Fiscal1: TMenuItem;
    Operacoes1: TMenuItem;
    IniciarMovimento1: TMenuItem;
    FinalizarMovimento1: TMenuItem;
    Suprimento1: TMenuItem;
    Sangria1: TMenuItem;
    AcrescimoEmDinheiroNoCupom1: TMenuItem;
    AcrescimoPercentualNoCupom1: TMenuItem;
    DescontoEmDinheiroNoCupom1: TMenuItem;
    DescontoPercentualNoCupom1: TMenuItem;
    ReducaoZ1: TMenuItem;
    ConsultarCliente1: TMenuItem;
    ConfiguracoesCaixa1: TMenuItem;
    ImportarTabelas1: TMenuItem;
    ExportarTabelas1: TMenuItem;
    LeituraX1: TMenuItem;
    LMFCLeituraMemoriaFiscalCompleta1: TMenuItem;
    LMFSLeituraMemoriaFiscalSimplificada1: TMenuItem;
    EspelhoMFD1: TMenuItem;
    ArquivoMFD1: TMenuItem;
    TabelaDeProdutos1: TMenuItem;
    Estoque1: TMenuItem;
    MovimentoporECF1: TMenuItem;
    MeiosdePagamento1: TMenuItem;
    DAVEmitidos1: TMenuItem;
    IdentificacaoDoPAFECF1: TMenuItem;
    VendasNoPeriodo1: TMenuItem;
    TabelaIndiceTecnicosDeProducao1: TMenuItem;
    CarregarPreVenda1: TMenuItem;
    MesclarPreVendas1: TMenuItem;
    CarregarDAV1: TMenuItem;
    MesclarDAVs1: TMenuItem;
    FecharMenuFiscal1: TMenuItem;
    FecharMenuOperacoes1: TMenuItem;
    FecharMenueSubMenu1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IdentificarCliente1Click(Sender: TObject);
    procedure SairdoCaixa1Click(Sender: TObject);
    procedure MenuPrincipal1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure MenuOperacoes1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure CancelarCupom1Click(Sender: TObject);
    procedure CancelarItem1Click(Sender: TObject);
    procedure ListaMenuPrincipalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure ListaGerenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaMenuOperacoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListaMenuFiscalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BobinaWebDocumentComplete(ASender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure ListaSupervisorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure IdentificarVendedor1Click(Sender: TObject);
    procedure LocalizarProduto1Click(Sender: TObject);
    procedure ConcederDesconto1Click(Sender: TObject);
    procedure FinalizarVenda1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure LMFCLeituraMemoriaFiscalCompleta1Click(Sender: TObject);
    procedure LMFSLeituraMemoriaFiscalSimplificada1Click(Sender: TObject);
    procedure EspelhoMFD1Click(Sender: TObject);
    procedure ArquivoMFD1Click(Sender: TObject);
    procedure TabelaDeProdutos1Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure MovimentoporECF1Click(Sender: TObject);
    procedure MeiosdePagamento1Click(Sender: TObject);
    procedure DAVEmitidos1Click(Sender: TObject);
    procedure IdentificacaoDoPAFECF1Click(Sender: TObject);
    procedure VendasNoPeriodo1Click(Sender: TObject);
    procedure TabelaIndiceTecnicosDeProducao1Click(Sender: TObject);
    procedure CarregarPreVenda1Click(Sender: TObject);
    procedure MesclarPreVendas1Click(Sender: TObject);
    procedure CarregarDAV1Click(Sender: TObject);
    procedure MesclarDAVs1Click(Sender: TObject);
    procedure Suprimento1Click(Sender: TObject);
    procedure Sangria1Click(Sender: TObject);
    procedure AcrescimoEmDinheiroNoCupom1Click(Sender: TObject);
    procedure AcrescimoPercentualNoCupom1Click(Sender: TObject);
    procedure DescontoEmDinheiroNoCupom1Click(Sender: TObject);
    procedure DescontoPercentualNoCupom1Click(Sender: TObject);
    procedure IniciarMovimento1Click(Sender: TObject);
    procedure FinalizarMovimento1Click(Sender: TObject);
    procedure ReducaoZ1Click(Sender: TObject);
    procedure ConsultarCliente1Click(Sender: TObject);
    procedure ConfiguracoesCaixa1Click(Sender: TObject);
    procedure ImportarTabelas1Click(Sender: TObject);
    procedure ExportarTabelas1Click(Sender: TObject);
    procedure FecharMenuFiscal1Click(Sender: TObject);
    procedure FecharMenuOperacoes1Click(Sender: TObject);
    procedure FecharMenueSubMenu1Click(Sender: TObject);
  private
    { Private declarations }
    function EstadoECF: String;
    function Converter(Cmd: String): String;
    procedure VerificarEstadoImpressora;
    procedure IniciarVenda;
    procedure AtualizarTotais;
    procedure MenuSetaAbaixo(Indice: Integer; Lista: TListBox);
    procedure MenuSetaAcima(Indice: Integer; Lista: TListBox);
  public
    { Public declarations }
//    procedure AtualizarMemos(VerificaEstado: Boolean=True);
    procedure TelaPadrao;
    procedure TratarExcecao(Sender: TObject; E: Exception);
    procedure WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: String);
    procedure WB_SetBodyStyle(Sender: TObject; BorderStyle, BackgroundColor: String);
    function WB_ScrollTo(WB: TWebBrowser; Position: TWBPosition): Boolean;
  end;

var
  FormMain: TFormMain;
  MenuAberto: Integer;  // 0-não | 1-sim
  StatusCaixa: Integer; // 0-aberto | 1-venda em andamento | 2-venda em recuperação ou importação de PV/DAV
  ItemCupom: Integer;
  SubTotal, TotalGeral: Double;
  StringMD5: String;

const
//  ECFTeste_VERSAO = '2.01' ;
  Estados: array[TACBrECFEstado] of String =
    ('ECF não Inicializado','Desconhecido','Caixa Livre','Efetuando Venda',
     'Efetuando Pagamento','Imprimindo Relatório','ECF Bloqueado até as 00:00hs',
     'Redução Z não emitida. Emita agora.','Imprima uma Leitura X antes de vender.',
     'Comprovante Não Fiscal em aberto.');
//   _C = 'tYk*5W@' ;

implementation
uses ClientesLoc, DataMod, FuncoesPomPom, Parametros, IniFiles,
  ECF, PAF, Movimentos, Sangrias, Suprimentos, InputValue,
  VendedoresLoc, ProdutosLoc, FinalizarVenda, Terminal, Lmfc, Lmfs, ArquivoMFD,
  EspelhoMFD, MeiosPagamento;
{$R *.dfm}

procedure TFormMain.MenuSetaAbaixo(Indice: Integer; Lista: TListBox);
begin
  if Indice=Lista.Count-1 then
  LabelMensagens.Caption:=Lista.Items[Lista.ItemIndex] else
  LabelMensagens.Caption:=Lista.Items[Lista.ItemIndex+1];
end;

procedure TFormMain.MenuSetaAcima(Indice: Integer; Lista: TListBox);
begin
 if Indice=0 then
 LabelMensagens.Caption:=Lista.Items[Lista.ItemIndex] else
 LabelMensagens.Caption:=Lista.Items[Lista.ItemIndex-1];
end;

procedure TFormMain.MesclarDAVs1Click(Sender: TObject);
begin
  FecharMenuOperacoes1.Click;
//      Application.CreateForm(TFMesclaDAV, FMesclaDAV);
//      FMesclaDAV.ShowModal;
end;

procedure TFormMain.MesclarPreVendas1Click(Sender: TObject);
begin
  FecharMenuOperacoes1.Click;
//      Application.CreateForm(TFMesclaPreVenda, FMesclaPreVenda);
//      FMesclaPreVenda.ShowModal;
end;

procedure TFormMain.MovimentoporECF1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  if MessageDlg('Deseja gerar o movimento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  PAF.GerarMovimentoECF;
end;

procedure TFormMain.WB_LoadHTML(WebBrowser: TWebBrowser; HTMLCode: string);
var
  SL: TStringList;
  MS: TMemoryStream;
begin
  WebBrowser.Navigate('about:blank');
  while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
  Application.ProcessMessages;
  if Assigned(WebBrowser.Document) then
  begin
    SL:=TStringList.Create;
    try
      MS:=TMemoryStream.Create;
      try
        SL.Text:=HTMLCode;
        SL.SaveToStream(MS);
        MS.Seek(0,0);
        (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(MS));
      finally
        MS.Free;
      end;
    finally
      SL.Free;
    end;
  end;
end;

function TFormMain.WB_ScrollTo(WB: TWebBrowser; Position: TWBPosition): Boolean;
var ParentW: OLEVariant;
begin
  Result:=WB.Document<>nil;
  if Result then
  begin
    ParentW:=WB.OleObject.Document.ParentWindow;
    case Position of
      wbPosBottom: ParentW.ScrollTo(0,ParentW.Screen.Height);
      wbPosTop:    ParentW.ScrollTo(0,0);
      wbPosRight:  ParentW.ScrollTo(ParentW.Screen.Width,0);
    end;
  end;
end;

//BorderStyle values:
//'none' No border is drawn
//'dotted' Border is a dotted line. (as of IE 5.5)
//'dashed' Border is a dashed line. (as of IE 5.5)
//'solid' Border is a solid line.
//'double' Border is a double line
//'groove' 3-D groove is drawn
//'ridge' 3-D ridge is drawn
//'inset' 3-D inset is drawn
//'window-inset' Border is the same as inset, but is surrounded by an additional single line
//'outset' 3-D outset is drawn
procedure TFormMain.WB_SetBodyStyle(Sender: TObject; BorderStyle, BackgroundColor: String);
var
  Document: IHTMLDocument2;
  Element: IHTMLElement;
begin
  Document:=TWebBrowser(Sender).Document as IHTMLDocument2;
  if Assigned(Document) then
  begin
    Element:=Document.Body;
    if Element<>nil then
    begin
      Element.Style.BorderStyle:=BorderStyle;
      Element.Style.BackgroundColor:=BackgroundColor;
    end;
  end;
end;

procedure TFormMain.VendasNoPeriodo1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
//      Application.CreateForm(TFVendasPeriodo, FVendasPeriodo);
//      FVendasPeriodo.ShowModal;
end;

procedure TFormMain.VerificarEstadoImpressora;
var Estado: String;
begin
  case
    DM.ACBrECF.Estado of
      estNaoInicializada: begin
                            LabelMensagens.Caption:='ECF não inicializado.';
                            MessageDlg('Problemas com a porta serial. A aplicação será encerrada.',mtError,[mbOk],0);
                            Application.Terminate;
                          end;
      estDesconhecido:    begin
                            LabelMensagens.Caption:='Problema desconhecido.';
                            MessageDlg('Problemas com a porta serial. A aplicação será encerrada.',mtError,[mbOk],0);
                            Application.Terminate;
                          end;
      estLivre:           begin
                            LabelMensagens.Caption:='Caixa Livre...';
                          end;
      estVenda:           begin
                            LabelMensagens.Caption:='Venda em andamento...';
                            MessageDlg('Existe uma venda em andamento. O cupom fiscal será cancelado.',mtWarning,[mbOk],0);
                            { TODO : Podemos cancelar um cupom aqui? }
                            ECF.CancelarCupom;
                          end;
      estPagamento:       begin
                            LabelMensagens.Caption:='Pagamento em andamento...';
                            MessageDlg('Existe uma venda em andamento. O cupom fiscal será cancelado.',mtWarning,[mbOk],0);
                            { TODO : Podemos cancelar um cupom aqui? }
                            ECF.CancelarCupom;
                          end;
      estRelatorio:       begin
                            LabelMensagens.Caption:='Imprimindo cupom fiscal vinculado ou relatório gerencial...';
                          end;
      estBloqueada:       begin
                            LabelMensagens.Caption:='Redução Z já emitida. ECF bloqueado até 00:00hs.';
                          end;
      estRequerZ:         begin
                            LabelMensagens.Caption:='ECF requer redução Z.';
                            if MessageDlg('É necessário uma Redução Z. Deseja fazer isso agora?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
                            ECF.ReducaoZ;
                          end;
      estRequerX:         begin
                            LabelMensagens.Caption:='ECF requer leitura X.';
                            if MessageDlg('É necessário emitir uma Leitura X. Deseja fazer isso agora?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
                            ECF.LeituraX;
                          end;
      estNaoFiscal:       begin
                            LabelMensagens.Caption:='Comprovante não fiscal em aberto.';
                          end;
  end;
end;

procedure TFormMain.IniciarMovimento1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  //IniciaMovimento;
end;

procedure TFormMain.IniciarVenda;
begin
  if DM.TBMovimentos.IsEmpty then
  begin
    MessageDlg('Não existe um movimento aberto.',mtWarning,[mbOk],0);
    Exit;
  end;
  try
    DM.ACBrECF.TestaPodeAbrirCupom;
  except
    TelaPadrao;
    EditCodigo.SetFocus;
  end;

  //atribui dados do cliente abre o cupom.
  DM.TBCupomFiscal.Insert;
  if not DM.TBClientes.IsEmpty then
  begin
    DM.TBCupomFiscalCUP_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
    DM.TBCupomFiscalCUP_NOME.Value:=DM.TBClientesCLI_NOME.Value;
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    DM.TBCupomFiscalCUP_DOCUMENTO.Value:=DM.TBClientesCLI_CNPJ.Value else
    DM.TBCupomFiscalCUP_DOCUMENTO.Value:=DM.TBClientesCLI_CPF.Value;
  end;
  DM.TBCupomFiscalCUP_MOVIMENTO.Value:=DM.TBMovimentosMOV_CODIGO.Value;
  DM.TBCupomFiscalCUP_DATAHORA.Value:=DM. ACBrECF.DataHora;
  DM.TBCupomFiscalCUP_STATUS.Value:='A';
  DM.TBCupomFiscalCUP_CFOP.Value:=IntToStr(DM.TBParametrosPAR_ECFCFOP.Value);
  DM.TBCupomFiscalCUP_COO.Value:=StrToInt(DM.ACBrECF.NumCupom);
  DM.TBCupomFiscalCUP_CCF.Value:=StrToInt(DM.ACBrECF.NumCCF);
  DM.TBCupomFiscal.Post;

  ECF.AbrirCupom(DM.TBCupomFiscalCUP_DOCUMENTO.Value); //O campo pode vir em branco.
  Timer1.Enabled:=False;
  ImageProduto.Picture.Assign(nil); //(DMConfiguracao.CaminhoImagensProdutos + 'padrao.png');
  ItemCupom:=0;
  SubTotal:=0;
  TotalGeral:=0;
  StatusCaixa:=1;
  EditCodigo.SetFocus;
  EditCodigo.SelectAll;
end;

procedure TFormMain.TelaPadrao;
begin
  if DM.TBMovimentos.IsEmpty then
  LabelMensagens.Caption:='CAIXA FECHADO' else
  if DM.TBMovimentosMOV_STATUS.Value='T' then
  LabelMensagens.Caption:='SAIDA TEMPORÁRIA' else
  LabelMensagens.Caption:='CAIXA ABERTO';

  if StatusCaixa=1 then
  LabelMensagens.Caption:='Venda em andamento...';

  EditCodigo.Text:='';
  EditQuantidade.Text:='1';
  EditUnitario.Text:='0';
  EditTotalItem.Text:='0';
  EditSubTotal.Text:='0';
  LabelTotalGeral.Caption:='0,00';
  LabelDescricaoProduto.Caption:='';
  BobinaMemo.Clear;
//  if DM.TBParametrosPAR_ECFMARKETING.Value='S' then
//  Timer1.Enabled:=True else
//  ImageProduto.Picture.Assign(nil);
end;

procedure TFormMain.Timer2Timer(Sender: TObject);
begin
  Label5.Caption:=TimeToStr(Time);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if StatusCaixa=0 then
  begin
    if MessageDlg('Tem certeza que deseja sair do sistema?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //SetTaskBar(True);
      DM.ACBrECF.Desativar;
      Application.Terminate;
    end else
    Action:=caNone;
  end else
  begin
    MessageDlg('Existe uma venda em andamento.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormMain.IdentificacaoDoPAFECF1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  if MessageDlg('Deseja imprimir o relatório IDENTIFICAÇÃO DO PAF-ECF?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  PAF.IdentificacaoPafEcf;
end;

procedure TFormMain.IdentificarCliente1Click(Sender: TObject);
begin
  if DM.TBMovimentosMOV_STATUS.Value='A' then
  begin
    if StatusCaixa=0 then
    begin
      Application.CreateForm(TFormClientesLoc, FormClientesLoc);
      FormClientesLoc.ShowModal;
      if ClientesLoc.Procurar then
      IniciarVenda;
      FormClientesLoc.Free;
      FormClientesLoc:=nil;
    end else
    MessageDlg('Já existe uma venda em andamento. Cancele o cupom e inicie nova venda para identificar o cliente.',mtError,[mbOk],0);
  end else
  MessageDlg('Não existe movimento em aberto.',mtError,[mbOk],0);
end;

procedure TFormMain.IdentificarVendedor1Click(Sender: TObject);
begin
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
    FormVendedoresLoc.ShowModal;
    if VendedoresLoc.Procurar then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
      DM.TBCupomFiscal.Post;
    end;
    FormVendedoresLoc.Free;
    FormVendedoresLoc:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtError,[mbOk],0);
end;

procedure TFormMain.ImportarTabelas1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  //TODO...
end;

procedure TFormMain.BobinaWebDocumentComplete(ASender: TObject; const pDisp: IDispatch; var URL: OleVariant);
begin
  WB_SetBodyStyle(ASender,'none','#ffedb9');
  WB_ScrollTo(BobinaWeb,wbPosBottom);
end;

procedure TFormMain.Calculadora1Click(Sender: TObject);
begin
  DM.ACBrCalculadora1.Execute;
end;

procedure TFormMain.CancelarCupom1Click(Sender: TObject);
begin
  if StatusCaixa=0 then
  begin
    MessageDlg('Não existe venda em andamento.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja cancelar o cupom atual?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCupomFiscal.Edit;
    DM.TBCupomFiscalCUP_STATUS.Value:='C';
    DM.TBCupomFiscalCUP_VALORCANCELADO.Value:=DM.TBCupomFiscalCUP_VALORTOTAL.Value;
    DM.TBCupomFiscal.Post;

    ECF.CancelarCupom;
    StatusCaixa:=0;
    TelaPadrao;
  end;
end;

procedure TFormMain.TabelaDeProdutos1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  if MessageDlg('Deseja gerar o arquivo da Tabela de Produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  PAF.GerarTabelaProdutos;
end;

procedure TFormMain.TabelaIndiceTecnicosDeProducao1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  // Tabela de indice tecnico de produção
  { TODO : Devemos implementar essa funcionalidade? }
  if Application.MessageBox('Devemos implementar essa funcionalidade?', 'Pergunta do Sistema', Mb_YesNo + Mb_IconQuestion) = IdYes then
  Application.MessageBox('Ponha sua opinião no EAD.', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
end;

procedure TFormMain.AcrescimoEmDinheiroNoCupom1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormInputValue, FormInputValue);
    FormInputValue.ImageDollar.Visible:=True;
    FormInputValue.Caption:='Acréscimo Valor';
    FormInputValue.Label1.Caption:='Informe o valor do acréscimo (R$):';
    FormInputValue.Edit1.Text:=FloatToStr(DM.TBCupomFiscalCUP_ACREVALOR.Value);
    if FormInputValue.ShowModal=mrOK then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_ACREVALOR.Value:=StrToFloat(FormInputValue.Edit1.Text);
      DM.TBCupomFiscal.Post;
    end;
    FormInputValue.Free;
    FormInputValue:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.AcrescimoPercentualNoCupom1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormInputValue, FormInputValue);
    FormInputValue.ImagePercent.Visible:=True;
    FormInputValue.Caption:='Acréscimo Percentual';
    FormInputValue.Label1.Caption:='Informe o percentual do acréscimo (%):';
    FormInputValue.Edit1.Text:=FloatToStr(DM.TBCupomFiscalCUP_ACREPORC.Value);
    if FormInputValue.ShowModal=mrOK then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_ACREPORC.Value:=StrToFloat(FormInputValue.Edit1.Text);
      DM.TBCupomFiscal.Post;
    end;
    FormInputValue.Free;
    FormInputValue:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.ArquivoMFD1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  Application.CreateForm(TFormArquivoMFD, FormArquivoMFD);
  FormArquivoMFD.ShowModal;
  FormArquivoMFD.Free;
  FormArquivoMFD:=nil;
end;

procedure TFormMain.AtualizarTotais;
begin
  EditSubTotal.Text:=Format('%m',[SubTotal]);
  LabelTotalGeral.Caption:=Format('%m',[TotalGeral]);
  //TODO... totalizar o valor total na tabela de cupomfiscal aqui.?
  //VendaCabecalho.ValorVenda:=SubTotal;
end;

procedure TFormMain.CancelarItem1Click(Sender: TObject);
var Item: Integer;
begin
  if StatusCaixa=0 then
  begin
    MessageDlg('Não existe venda em andamento.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBCupomFiscalItens.IsEmpty then
  begin
    MessageDlg('Nenhum item para excluir.',mtError,[mbOk],0);
    Exit;
  end;
  Item:=StrToInt(InputBox('Cancelar Item.','Digite o número do item que deseja cancelar:',''));
  if MessageDlg('Cancelar item '+IntToStr(Item)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.TBCupomFiscalItens.Locate('CUI_ITEM',Item,[]) then
    begin
      DM.TBCupomFiscalItens.Edit;
      DM.TBCupomFiscalItensCUI_CANCELADO.Value:='S'; //item cancelado.
      DM.TBCupomFiscalItens.Post;
      ECF.CancelarItem(Item);
      SubTotal:=SubTotal-DM.TBCupomFiscalItensCUI_VALORTOTAL.Value;
      TotalGeral:=TotalGeral-DM.TBCupomFiscalItensCUI_VALORTOTAL.Value;
      AtualizarTotais;
    end else
    MessageDlg('Item não encontrado.',mtError,[mbOk],0);
  end;
end;

procedure TFormMain.CarregarDAV1Click(Sender: TObject);
begin
  FecharMenuOperacoes1.Click;
//      if StatusCaixa = 0 then
//      begin
//        Application.CreateForm(TFImportaNumero, FImportaNumero);
//        FImportaNumero.Caption := 'Carrega DAV (Orçamento)';
//        FImportaNumero.LabelEntrada.Caption := 'Informe o número do DAV (Orçamento)';
//        try
//          if (FImportaNumero.ShowModal = MROK) then
//            begin
//              FechaMenuOperacoes;
//              CarregaDAV(FImportaNumero.EditEntrada.Text);
//            end;
//        finally
//          if Assigned(FImportaNumero) then
//            FImportaNumero.Free;
//        end;
//      end
//      else
//        Application.MessageBox('Já existe uma venda em andamento.', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
end;

procedure TFormMain.CarregarPreVenda1Click(Sender: TObject);
begin
  FecharMenuOperacoes1.Click;
//      if StatusCaixa = 0 then
//      begin
//        Application.CreateForm(TFImportaNumero, FImportaNumero);
//        FImportaNumero.Caption := 'Carrega Pré-Venda';
//        FImportaNumero.LabelEntrada.Caption := 'Informe o número da Pré-Venda';
//        try
//          if (FImportaNumero.ShowModal = MROK) then
//          begin
//            FechaMenuOperacoes;
//            CarregaPreVenda(FImportaNumero.EditEntrada.Text);
//          end;
//        finally
//          if Assigned(FImportaNumero) then
//            FImportaNumero.Free;
//        end;
//      end
//      else
//        Application.MessageBox('Já existe uma venda em andamento.', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
end;

procedure TFormMain.SairdoCaixa1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.Sangria1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  Application.CreateForm(TFormSangrias, FormSangrias);
  FormSangrias.ShowModal;
  FormSangrias.Free;
  FormSangrias:=nil;
end;

procedure TFormMain.Suprimento1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  Application.CreateForm(TFormSuprimentos, FormSuprimentos);
  FormSuprimentos.ShowModal;
  FormSuprimentos.Free;
  FormSuprimentos:=nil;
end;

procedure TFormMain.LeituraX1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  if MessageDlg('Confirma a emissão da Leitura X?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  ECF.LeituraX;
end;

procedure TFormMain.ListaGerenteKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  begin
    PanelSubMenu.Visible:=False;
    ListaMenuPrincipal.SetFocus;
    ListaMenuPrincipal.ItemIndex:=0;
  end;
  if Key=VK_UP then MenuSetaAcima(ListaGerente.ItemIndex,ListaGerente);
  if Key=VK_DOWN then MenuSetaAbaixo(ListaGerente.ItemIndex,ListaGerente);
  if Key=VK_RETURN then
  begin
    if ListaGerente.ItemIndex=0 then IniciarMovimento1.Click;
    if ListaGerente.ItemIndex=1 then FinalizarMovimento1.Click;
    if ListaGerente.ItemIndex=3 then Suprimento1.Click;
    if ListaGerente.ItemIndex=4 then Sangria1.Click;
    if ListaGerente.ItemIndex=6 then AcrescimoEmDinheiroNoCupom1.Click;
    if ListaGerente.ItemIndex=7 then AcrescimoPercentualNoCupom1.Click;
    if ListaGerente.ItemIndex=8 then DescontoEmDinheiroNoCupom1.Click;
    if ListaGerente.ItemIndex=9 then DescontoPercentualNoCupom1.Click;
    if ListaGerente.ItemIndex=11 then ReducaoZ1.Click;
    if ListaGerente.ItemIndex=13 then ConsultarCliente1.Click;
    if ListaGerente.ItemIndex=15 then ConfiguracoesCaixa1.Click;
  end;
end;

procedure TFormMain.ListaMenuFiscalKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key=VK_ESCAPE then FecharMenuFiscal1.Click;
  if Key=VK_UP then MenuSetaAcima(ListaMenuFiscal.ItemIndex,ListaMenuFiscal);
  if Key=VK_DOWN then MenuSetaAbaixo(ListaMenuFiscal.ItemIndex,ListaMenuFiscal);
  if Key=VK_RETURN then
  begin
    if ListaMenuFiscal.ItemIndex=0 then LeituraX1.Click;
    if ListaMenuFiscal.ItemIndex=1 then LMFCLeituraMemoriaFiscalCompleta1.Click;
    if ListaMenuFiscal.ItemIndex=2 then LMFSLeituraMemoriaFiscalSimplificada1.Click;
    if ListaMenuFiscal.ItemIndex=3 then EspelhoMFD1.Click;
    if ListaMenuFiscal.ItemIndex=4 then ArquivoMFD1.Click;
    if ListaMenuFiscal.ItemIndex=5 then TabelaDeProdutos1.Click;
    if ListaMenuFiscal.ItemIndex=6 then Estoque1.Click;
    if ListaMenuFiscal.ItemIndex=7 then MovimentoporECF1.Click;
    if ListaMenuFiscal.ItemIndex=8 then MeiosdePagamento1.Click;
    if ListaMenuFiscal.ItemIndex=9 then DAVEmitidos1.Click;
    if ListaMenuFiscal.ItemIndex=10 then IdentificacaoDoPAFECF1.Click;
    if ListaMenuFiscal.ItemIndex=11 then VendasNoPeriodo1.Click;
    if ListaMenuFiscal.ItemIndex=12 then TabelaIndiceTecnicosDeProducao1.Click;
  end;
end;

procedure TFormMain.ListaMenuOperacoesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then FecharMenuOperacoes1.Click;
  if Key=VK_UP then MenuSetaAcima(ListaMenuOperacoes.ItemIndex,ListaMenuOperacoes);
  if Key=VK_DOWN then MenuSetaAbaixo(ListaMenuOperacoes.ItemIndex,ListaMenuOperacoes);
  if Key=VK_RETURN then
  begin
    if ListaMenuOperacoes.ItemIndex=0 then CarregarPreVenda1.Click;
    if ListaMenuOperacoes.ItemIndex=1 then MesclarPreVendas1.Click;
    if ListaMenuOperacoes.ItemIndex=2 then CarregarDAV1.Click;
    if ListaMenuOperacoes.ItemIndex=3 then MesclarDAVs1.Click;
  end;
end;

procedure TFormMain.ListaMenuPrincipalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  begin
    PanelMenuPrincipal.Visible:=False;
    LabelMensagens.Caption:='';
    MenuAberto:=0;
    EditCodigo.SetFocus;
  end;
  if Key=VK_UP then MenuSetaAcima(ListaMenuPrincipal.ItemIndex,ListaMenuPrincipal);
  if Key=VK_DOWN then MenuSetaAbaixo(ListaMenuPrincipal.ItemIndex,ListaMenuPrincipal);
  if Key=VK_RETURN then
  begin
    //chama submenu do supervisor.
    if ListaMenuPrincipal.ItemIndex=0 then
    begin
      PanelSubMenu.Visible:=True;
      Label9.Caption:='Menu Supervisor';
      ListaSupervisor.BringToFront;
      ListaSupervisor.SetFocus;
      ListaSupervisor.ItemIndex:=0;
    end;
    //chama submenu do gerente.
    if ListaMenuPrincipal.ItemIndex=1 then
    begin
      PanelSubMenu.Visible:=True;
      Label9.Caption:='Menu Gerente';
      ListaGerente.BringToFront;
      ListaGerente.SetFocus;
      ListaGerente.ItemIndex:=0;
    end;
    //saida temporária.
    if ListaMenuPrincipal.ItemIndex=2 then
    begin
      if MessageDlg('Deseja fechar o caixa temporariamente?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
      begin
        DM.TBMovimentos.Edit;
        DM.TBMovimentosMOV_STATUS.Value:='T';
        DM.TBMovimentos.Post;
        Application.CreateForm(TFormMovimentos, FormMovimentos);
        FormMovimentos.ShowModal;
        FormMovimentos.Free;
        FormMovimentos:=nil;
      end;
    end;
  end;
end;

procedure TFormMain.ListaSupervisorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
  begin
    PanelSubMenu.Visible:=False;
    ListaMenuPrincipal.SetFocus;
    ListaMenuPrincipal.ItemIndex:=0;
  end;
  if Key=VK_UP then MenuSetaAcima(ListaSupervisor.ItemIndex,ListaSupervisor);
  if Key=VK_DOWN then MenuSetaAbaixo(ListaSupervisor.ItemIndex,ListaSupervisor);
  if Key=VK_RETURN then
  begin
    if ListaSupervisor.ItemIndex=0 then IniciarMovimento1.Click;
    if ListaSupervisor.ItemIndex=1 then FinalizarMovimento1.Click;
    if ListaSupervisor.ItemIndex=3 then Suprimento1.Click;
    if ListaSupervisor.ItemIndex=4 then Sangria1.Click;
    if ListaSupervisor.ItemIndex=6 then AcrescimoemDinheiroNoCupom1.Click;
    if ListaSupervisor.ItemIndex=7 then AcrescimoPercentualNoCupom1.Click;
    if ListaSupervisor.ItemIndex=8 then DescontoEmDinheiroNoCupom1.Click;
    if ListaSupervisor.ItemIndex=9 then DescontoPercentualNoCupom1.Click;
  end;
end;

procedure TFormMain.LMFCLeituraMemoriaFiscalCompleta1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  Application.CreateForm(TFormLMFC, FormLMFC);
  FormLMFC.ShowModal;
  FormLMFC.Free;
  FormLMFC:=nil;
end;

procedure TFormMain.LMFSLeituraMemoriaFiscalSimplificada1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  Application.CreateForm(TFormLMFS, FormLMFS);
  FormLMFS.ShowModal;
  FormLMFS.Free;
  FormLMFS:=nil;
end;

procedure TFormMain.LocalizarProduto1Click(Sender: TObject);
begin
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
    FormProdutosLoc.ShowModal;
    if ProdutosLoc.Procurar then
    begin
      //associa o codigo de barras do produto e simula o enter no campo codigo do produto.
      //EditCodigo.Text:=FormProdutosLoc.QYProdutosPRO_CODIGOBARRAS.Value;
      EditCodigo.Text:=IntToStr(FormProdutosLoc.QYProdutosPRO_CODIGO.Value);
      EditCodigo.SetFocus;
      Perform(WM_NEXTDLGCTL,0,0);
    end;
    FormProdutosLoc.Free;
    FormProdutosLoc:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.MeiosdePagamento1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  Application.CreateForm(TFormMeiosPagamento, FormMeiosPagamento);
  FormMeiosPagamento.ShowModal;
  FormMeiosPagamento.Free;
  FormMeiosPagamento:=nil;
end;

procedure TFormMain.MenuFiscal1Click(Sender: TObject);
begin
  if MenuAberto=0 then
  begin
    MenuAberto:=1;
    PanelMenuFiscal.Top:=104;
    PanelMenuFiscal.Left:=8;
    PanelMenuFiscal.Visible:=True;
    ListaMenuFiscal.SetFocus;
    ListaMenuFiscal.ItemIndex:=0;
  end;
end;

procedure TFormMain.MenuOperacoes1Click(Sender: TObject);
begin
  if MenuAberto=0 then
  begin
    MenuAberto:=1;
    PanelMenuOperacoes.Top:=104;
    PanelMenuOperacoes.Left:=8;
    PanelMenuOperacoes.Visible:=True;
    ListaMenuOperacoes.SetFocus;
    ListaMenuOperacoes.ItemIndex:=0;
  end;
end;

procedure TFormMain.MenuPrincipal1Click(Sender: TObject);
begin
  if MenuAberto=0 then
  begin
    MenuAberto:=1;
    PanelMenuPrincipal.Visible:=True;
    ListaMenuPrincipal.SetFocus;
    ListaMenuPrincipal.ItemIndex:=0;
  end;
end;

procedure TFormMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
{  if Key=VK_F1 then IdentificaCliente;
  if Key=VK_F2 then AcionaMenuPrincipal;
  if Key=VK_F3 then AcionaMenuOperacoes;
  if Key=VK_F4 then AcionaMenuFiscal;
  if Key=VK_F5 then Calculadora.Execute;
  if Key=VK_F6 then LocalizaProduto;
  if Key=VK_F7 then IniciaEncerramentoVenda;
  if Key=VK_F8 then CancelaItem;
  if Key=VK_F9 then CancelaCupom;
  if Key=VK_F10 then DescontoValor;
  if Key=VK_F11 then IdentificaVendedor;
  if Key=VK_F12 then Close;}
end;

procedure TFormMain.TratarExcecao(Sender: TObject; E: Exception);
begin
  MessageDlg(PChar(E.Message),mtError,[mbOk],0);
end;

procedure TFormMain.FormCreate(Sender: TObject);
var S: String;
begin
  S:=FileVersion(Application.ExeName);
  Label8.Caption:='V'+S;
  Label6.Caption:=UsuarioNome+' ('+UsuarioLogado+')';
  Label7.Caption:=DM.TBTerminaisTER_DESCRICAO.Value;
  BobinaMemo.Lines.Add('<body style="border: none; background: #FFEDB9; '+
                       'scrollbar-base-color:#FFEDB9; '+
                       'scrollbar-darkshadow-color:#FFEDB9; '+
                       'scrollbar-shadow-color:#FFEDB9; '+
                       'scrollbar-highlight-color:#FFEDB9; '+
                       'scrollbar-3dlight-color:#FFEDB9; '+
                       'scrollbar-face-color:#FFEDB9; '+
                       'scrollbar-arrow-color:#000000;">&nbsp</body>');
  WB_LoadHTML(BobinaWeb,BobinaMemo.Text);
  Application.ProcessMessages;
//  FormMain.WindowState:=wsMaximized;

  MenuAberto:=0;
//  SetTaskBar(False);

  //Verifica movimento em aberto.

  TelaPadrao;
  DM.ACBrECF.Porta:=DM.TBTerminaisTER_PORTAECF.Value;
  DM.ACBrECF.TimeOut:=DM.TBTerminaisTER_ECFTIMEOUT.Value;
  DM.ACBrECF.IntervaloAposComando:=DM.TBTerminaisTER_ECFINTERVALO.Value;
  DM.ACBrECF.Modelo:=TACBrECFModelo(GetEnumValue(TypeInfo(TACBrECFModelo),DM.TBTerminaisTER_ECFMODELOACBR.Value));
  DM.ACBrECF.Ativar;
  DM.ACBrECF.CarregaAliquotas;
  DM.ACBrECF.CarregaFormasPagamento;

  VerificarEstadoImpressora;

  Application.OnException:=TratarExcecao;
{  if not PAF.ECFAutorizado then
  begin
    Application.MessageBox('ECF não autorizado - aplicação será encerrada.', 'Informação do Sistema', MB_OK + MB_ICONINFORMATION);
    Application.Terminate;
  end;
  StringMD5:=PAF.GerarMD5;  }
end;

procedure TFormMain.EditCodigoExit(Sender: TObject);
var NomeArquivo: String;
begin
  if MenuAberto=0 then
  begin
    if StatusCaixa=0 then
//    begin
//      VerificarEstadoImpressora;
      IniciarVenda;
//    end;
    if EditCodigo.Text<>'' then
    begin
      //localiza o produto.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsString:=EditCodigo.Text;
      DM.TBProdutos.Open;
      if not DM.TBProdutos.IsEmpty then
      begin
        EditUnitario.Text:=Format('%m',[DM.TBProdutosPRO_PRECOVENDA.Value]);
        LabelDescricaoProduto.Caption:=DM.TBProdutosPRO_NOME.Value;
        //carrega imagem do produto.
        NomeArquivo:=DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'\'+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'001.jpg';
        if FileExists(NomeArquivo) then
        ImageProduto.Picture.LoadFromFile(NomeArquivo) else
        ImageProduto.Picture.Assign(nil);
        EditTotalItem.Text:=Format('%m',[DM.TBProdutosPRO_PRECOVENDA.Value*StrToFloat(EditQuantidade.Text)]);

        //pega o total de itens.
        QYCupomFiscalItens.Close;
        QYCupomFiscalItens.ParamByName('codigo').AsInteger:=DM.TBCupomFiscalCUP_CODIGO.Value;
        QYCupomFiscalItens.Open;
        //...
        DM.TBCupomFiscalItens.Insert;
        DM.TBCupomFiscalItensCUI_ITEM.Value:=QYCupomFiscalItensITENS.Value+1;
        DM.TBCupomFiscalItensCUI_PRODUTO.Value:=DM.TBProdutosPRO_CODIGO.Value;
        DM.TBCupomFiscalItensCUI_CODIGOBARRAS.Value:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
        DM.TBCupomFiscalItensCUI_QUANTIDADE.Value:=StrToFloat(EditQuantidade.Text);
        DM.TBCupomFiscalItensCUI_VALORUNITARIO.Value:=DM.TBProdutosPRO_PRECOVENDA.Value;
        DM.TBCupomFiscalItensCUI_CSTICMS.Value:=DM.TBProdutosPRO_ECFICMS.Value;
        DM.TBCupomFiscalItensCUI_ALIQICMS.Value:=DM.TBProdutosPRO_ALIQICMS.Value;
        DM.TBCupomFiscalItensCUI_ALIQISS.Value:=DM.TBProdutosPRO_ALIQISS.Value;
        DM.TBCupomFiscalItensCUI_ALIQPIS.Value:=DM.TBProdutosPRO_ALIQPIS.Value;
        DM.TBCupomFiscalItensCUI_ALIQCOFINS.Value:=DM.TBProdutosPRO_ALIQCOFINS.Value;
        DM.TBCupomFiscalItensCUI_TOTALIZADORPARCIAL.Value:=DM.TBProdutosPRO_TOTALIZADORPARCIAL.Value;
        DM.TBCupomFiscalItens.Post;

        ECF.VenderItem(IntToStr(DM.TBCupomFiscalItensCUI_PRODUTO.Value), //TODO... deve ser o codigo de barras.
                       DM.TBCupomFiscalItensPRO_NOME.Value,
                       DM.TBCupomFiscalItensCUI_CSTICMS.Value,
                       DM.TBCupomFiscalItensCUI_QUANTIDADE.Value,
                       DM.TBCupomFiscalItensCUI_VALORUNITARIO.Value);

        SubTotal:=SubTotal+DM.TBCupomFiscalItensCUI_VALORTOTAL.Value;
        TotalGeral:=TotalGeral+DM.TBCupomFiscalItensCUI_VALORTOTAL.Value;
        AtualizarTotais;
        EditCodigo.Clear;
        EditCodigo.SetFocus;
        EditQuantidade.Text:='1';
      end else
      begin
        MessageDlg('Código não encontrado.',mtWarning,[mbOk],0);
        EditUnitario.Text:='0';
        EditTotalItem.Text:='0';
        EditQuantidade.Text:='1';
        LabelDescricaoProduto.Caption:='';
        EditCodigo.SetFocus;
      end;
    end;
  end;
end;

procedure TFormMain.EditCodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    EditQuantidade.SetFocus; //Perform(WM_NEXTDLGCTL,0,0);
    EditQuantidade.SelectAll;
  end;
end;

procedure TFormMain.EditQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13]) then Key:=#0;
  if Key=#13 then
  begin
    Key:=#0;
    EditCodigo.SetFocus; //Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormMain.FecharMenueSubMenu1Click(Sender: TObject);
begin
  PanelSubMenu.Visible:=False;
  PanelMenuPrincipal.Visible:=False;
  LabelMensagens.Caption:='';
  MenuAberto:=0;
  EditCodigo.SetFocus;
end;

procedure TFormMain.FecharMenuFiscal1Click(Sender: TObject);
begin
  PanelMenuFiscal.Visible:=False;
  LabelMensagens.Caption:='';
  MenuAberto:=0;
  EditCodigo.SetFocus;
end;

procedure TFormMain.FecharMenuOperacoes1Click(Sender: TObject);
begin
  PanelMenuOperacoes.Visible:=False;
  LabelMensagens.Caption:='';
  MenuAberto:=0;
  EditCodigo.SetFocus;
end;

procedure TFormMain.FinalizarMovimento1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  //EncerraMovimento;
end;

procedure TFormMain.FinalizarVenda1Click(Sender: TObject);
begin
  if StatusCaixa=1 then
  begin
    if DM.TBCupomFiscalItens.RecordCount > 0 then
    begin
      Application.CreateForm(TFormFinalizarVenda, FormFinalizarVenda);
      FormFinalizarVenda.ShowModal;
      FormFinalizarVenda.Free;
      FormFinalizarVenda:=nil;
    end else
    MessageDlg('A venda não contém itens.',mtWarning,[mbOk],0);
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.EspelhoMFD1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  Application.CreateForm(TFormEspelhoMFD, FormEspelhoMFD);
  FormEspelhoMFD.ShowModal;
  FormEspelhoMFD.Free;
  FormEspelhoMFD:=nil;
end;

function TFormMain.EstadoECF: String;
begin
  try
    Result:=Estados[DM.ACBrECF.Estado];
  except
    Result:='Falha ao ler estado do ECF.';
  end;
end;

procedure TFormMain.Estoque1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
  if MessageDlg('Deseja gerar o arquivo do Estoque?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  PAF.GerarArquivoEstoque;
end;

procedure TFormMain.ExportarTabelas1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  //TODO...
end;

procedure TFormMain.ConcederDesconto1Click(Sender: TObject);
begin
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormInputValue, FormInputValue);
    FormInputValue.ImageDollar.Visible:=True;
    FormInputValue.Caption:='Desconto em Dinheiro';
    FormInputValue.Label1.Caption:='Informe o valor do desconto (R$):';
    FormInputValue.Edit1.Text:=FloatToStr(DM.TBCupomFiscalCUP_DESCVALOR.Value);
    if (FormInputValue.ShowModal=mrOK) then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_DESCVALOR.Value:=StrToFloat(FormInputValue.Edit1.Text);
      DM.TBCupomFiscal.Post;
    end;
    FormInputValue.Free;
    FormInputValue:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.ConfiguracoesCaixa1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  Application.CreateForm(TFormTerminal, FormTerminal);
  FormTerminal.ShowModal;
  FormTerminal.Free;
  FormTerminal:=nil;

  DM.ACBrECF.Desativar;
  DM.ACBrECF.Porta:=DM.TBTerminaisTER_PORTAECF.Value;
  DM.ACBrECF.TimeOut:=DM.TBTerminaisTER_ECFTIMEOUT.Value;
  DM.ACBrECF.IntervaloAposComando:=DM.TBTerminaisTER_ECFINTERVALO.Value;
  DM.ACBrECF.Modelo:=TACBrECFModelo(GetEnumValue(TypeInfo(TACBrECFModelo),DM.TBTerminaisTER_ECFMODELOACBR.Value));
  DM.ACBrECF.Ativar;
  DM.ACBrECF.CarregaAliquotas;
  DM.ACBrECF.CarregaFormasPagamento;
end;

procedure TFormMain.ConsultarCliente1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  //Application.CreateForm(TFImportaCliente, FImportaCliente);
  //FImportaCliente.ShowModal;
end;

function TFormMain.Converter(Cmd: String): String;
var I: Integer;
begin
  Result:='';
  for I:=1 to Length(Cmd) do
  begin
    if (Ord(Cmd[I])<32) or (Ord(Cmd[I])>127) then
    Result:=Result+'#'+IntToStr(Ord(Cmd[I])) else
    Result:=Result+Cmd[I];
  end;
end;

procedure TFormMain.DAVEmitidos1Click(Sender: TObject);
begin
  FecharMenuFiscal1.Click;
//      Application.CreateForm(TFDavEmitidos, FDavEmitidos);
//      FDavEmitidos.ShowModal;
end;

procedure TFormMain.DescontoEmDinheiroNoCupom1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormInputValue, FormInputValue);
    FormInputValue.ImageDollar.Visible:=True;
    FormInputValue.Caption:='Desconto em Dinheiro';
    FormInputValue.Label1.Caption:='Informe o valor do desconto (R$):';
    FormInputValue.Edit1.Text:=FloatToStr(DM.TBCupomFiscalCUP_DESCVALOR.Value);
    if FormInputValue.ShowModal=mrOK then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_DESCVALOR.Value:=StrToFloat(FormInputValue.Edit1.Text);
      DM.TBCupomFiscal.Post;
    end;
    FormInputValue.Free;
    FormInputValue:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.DescontoPercentualNoCupom1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  if StatusCaixa=1 then
  begin
    Application.CreateForm(TFormInputValue, FormInputValue);
    FormInputValue.ImagePercent.Visible:=True;
    FormInputValue.Caption:='Desconto em Percentual';
    FormInputValue.Label1.Caption:='Informe o percentual do desconto (%):';
    FormInputValue.Edit1.Text:=FloatToStr(DM.TBCupomFiscalCUP_DESCPORC.Value);
    if FormInputValue.ShowModal=mrOK then
    begin
      DM.TBCupomFiscal.Edit;
      DM.TBCupomFiscalCUP_DESCPORC.Value:=StrToFloat(FormInputValue.Edit1.Text);
      DM.TBCupomFiscal.Post;
    end;
    FormInputValue.Free;
    FormInputValue:=nil;
  end else
  MessageDlg('Não existe venda em andamento.',mtWarning,[mbOk],0);
end;

procedure TFormMain.Parametros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormParametros, FormParametros);
  FormParametros.ShowModal;
  FormParametros.Free;
  FormParametros:=nil;
end;

procedure TFormMain.ReducaoZ1Click(Sender: TObject);
begin
  FecharMenueSubMenu1.Click;
  if MessageDlg('Tem certeza que deseja executar a Redução Z?'+#13#13+'O movimento da impressora será suspenso no dia de hoje.',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  ECF.ReducaoZ;
end;

end.
