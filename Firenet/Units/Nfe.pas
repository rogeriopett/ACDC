unit Nfe;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBSBtn, ExtCtrls, DB, Menus, StdCtrls, Buttons, Grids, DBGrids, DBCtrls,
  Mask, ComCtrls, IDAttachmentFile, xmldom, XMLIntf, msxmldom, XMLDoc, PngSpeedButton,
  ImgList, PngImageList, PngBitBtn, System.ImageList, System.UITypes,
  System.Zip, System.IOUtils, System.Types, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormNfe = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton9: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label37: TLabel;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label51: TLabel;
    SpeedButton18: TPngSpeedButton;
    Label52: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    TabSheet4: TTabSheet;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label39: TLabel;
    Label33: TLabel;
    DBText6: TDBText;
    DBGrid1: TDBGrid;
    IncluirItem1Button: TPngBitBtn;
    EliminarItem1Button: TPngBitBtn;
    AtualizarItens1Button: TPngBitBtn;
    AlterarItem1Button: TPngBitBtn;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label40: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBMemo2: TDBMemo;
    BitBtn5: TPngBitBtn;
    BitBtn6: TPngBitBtn;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarNotanoContasaReceber1: TMenuItem;
    N4: TMenuItem;
    CancelarNota1: TMenuItem;
    FinalizarNota1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeNaturezasDeOperacao1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    IncluirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    AtualizarItens1: TMenuItem;
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
    DANFE1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    FinalizarNota1Button: TPngSpeedButton;
    LocalizarNotaNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    CancelarNota1Button: TPngSpeedButton;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    EnviarNFePorEmail1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    XMLD: TXMLDocument;
    N3: TMenuItem;
    DBComboBox5: TDBComboBox;
    Label38: TLabel;
    DBComboBox6: TDBComboBox;
    Label58: TLabel;
    CadastroDeImpostoICMS1: TMenuItem;
    CadastroDeImpostoIPI1: TMenuItem;
    CadastroDeImpostoPISCOFINS1: TMenuItem;
    CadastroDeClassificacoesFiscais1: TMenuItem;
    GerarBoletos1Button: TPngSpeedButton;
    RecriarChaveDeAcesso1Button: TPngSpeedButton;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    DBMemo3: TDBMemo;
    Label59: TLabel;
    ValidarArquivoNFe1: TMenuItem;
    Bevel5: TBevel;
    GerarArquivoNFe1: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    DANFE1: TMenuItem;
    TabSheet5: TTabSheet;
    Label17: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit26: TDBEdit;
    Label25: TLabel;
    DBEdit18: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    DBEdit27: TDBEdit;
    Label26: TLabel;
    Label22: TLabel;
    DBEdit23: TDBEdit;
    DBEdit22: TDBEdit;
    Label21: TLabel;
    DBEdit61: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label72: TLabel;
    DBEdit64: TDBEdit;
    Label73: TLabel;
    DBEdit65: TDBEdit;
    Label74: TLabel;
    DBEdit66: TDBEdit;
    Label75: TLabel;
    DBEdit67: TDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    Label78: TLabel;
    DBEdit70: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    TabSheet6: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    Label87: TLabel;
    EnviarNFe1: TMenuItem;
    GerarLote1: TMenuItem;
    BuscarNFe1: TMenuItem;
    DBEdit80: TDBEdit;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    Label91: TLabel;
    DBEdit83: TDBEdit;
    Label92: TLabel;
    DBEdit84: TDBEdit;
    Label93: TLabel;
    DBEdit85: TDBEdit;
    Label94: TLabel;
    Ferramentas1: TMenuItem;
    ConsultarStatusDoServico1: TMenuItem;
    EnviarNFeSincrono1Button: TPngSpeedButton;
    CadastroDeImpostoISS1: TMenuItem;
    Label95: TLabel;
    N6: TMenuItem;
    Memo1: TMemo;
    RecriarChavedeAcesso1: TMenuItem;
    DBEdit79: TDBEdit;
    DBEdit87: TDBEdit;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    InutilizarNFe1: TMenuItem;
    DBEdit86: TDBEdit;
    Label98: TLabel;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    Label99: TLabel;
    Label100: TLabel;
    InutilizarNFe1Button: TPngSpeedButton;
    DBComboBox7: TDBComboBox;
    Label101: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    Label102: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    Label103: TLabel;
    EnviarNFePorEmail1: TMenuItem;
    EliminarTodos1Button: TPngBitBtn;
    DBEdit92: TDBEdit;
    Label104: TLabel;
    PngImageList1: TPngImageList;
    NFePorStatus1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    Label50: TLabel;
    Label105: TLabel;
    Relatorios2Button: TPngSpeedButton;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    NFePorCFOP1: TMenuItem;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    CartasDeCorrecao1Button: TPngSpeedButton;
    CartasDeCorrecao1: TMenuItem;
    DBEdit76: TDBEdit;
    TabSheet7: TTabSheet;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    DBGrid2: TDBGrid;
    PngBitBtn4: TPngBitBtn;
    NFeOrdenadoPorCodigo1: TMenuItem;
    VerificacaoDeNumeracao1: TMenuItem;
    N9: TMenuItem;
    GerarBoletos1: TMenuItem;
    RecriarArquivoXMLprocNFe1: TMenuItem;
    InutilizacaoDeFaixaDeNFe1: TMenuItem;
    Cadastros1: TMenuItem;
    ArquivosXMLDaNFe1: TMenuItem;
    ArquivosXMLDaNFe1Button: TPngSpeedButton;
    GroupBox1: TGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    DBEdit44: TDBEdit;
    DBEdit93: TDBEdit;
    Label109: TLabel;
    DBEdit94: TDBEdit;
    ZiparArquivosXML1: TMenuItem;
    GerarArquivoDPEC1: TMenuItem;
    EnviarDPEC1: TMenuItem;
    TabSheet8: TTabSheet;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label110: TLabel;
    Label111: TLabel;
    teste1: TMenuItem;
    DBText17: TDBText;
    DBText16: TDBText;
    Label112: TLabel;
    Label113: TLabel;
    N10: TMenuItem;
    AlterarCampoMovimentacaoEstoque1: TMenuItem;
    AlterarCampoMovimentacaoFinanceiro1: TMenuItem;
    Label115: TLabel;
    DBComboBox4: TDBComboBox;
    Label116: TLabel;
    DBComboBox8: TDBComboBox;
    Label117: TLabel;
    DBComboBox9: TDBComboBox;
    N11: TMenuItem;
    SalvarPDFDANFEComo1: TMenuItem;
    SaveDialog1: TSaveDialog;
    SalvarZIPXMLsComo1: TMenuItem;
    InformarProtocoloDataEHoraDeAutorizacao1: TMenuItem;
    DownloadDaNFeNoPortalNacional1: TMenuItem;
    Funcoes1: TMenuItem;
    ConsultarNFeNoPortalNacional1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    EnviarNFeSincrono1: TMenuItem;
    DBText20: TDBText;
    DBEdit100: TDBEdit;
    Label120: TLabel;
    EnviarNFePorEmailAutomatico1: TMenuItem;
    BaixarDLLsdoSSL1: TMenuItem;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label121: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    GroupBox3: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox4: TGroupBox;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label61: TLabel;
    DBEdit12: TDBEdit;
    DBEdit52: TDBEdit;
    GroupBox6: TGroupBox;
    Label10: TLabel;
    Label60: TLabel;
    DBEdit11: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit105: TDBEdit;
    Label123: TLabel;
    DBEdit106: TDBEdit;
    Label124: TLabel;
    DBEdit107: TDBEdit;
    Label125: TLabel;
    DBEdit108: TDBEdit;
    Label126: TLabel;
    DBEdit109: TDBEdit;
    Label127: TLabel;
    Label128: TLabel;
    DBEdit110: TDBEdit;
    GroupBox7: TGroupBox;
    Label114: TLabel;
    DBEdit97: TDBEdit;
    Label122: TLabel;
    DBEdit104: TDBEdit;
    Label129: TLabel;
    DBEdit111: TDBEdit;
    Label130: TLabel;
    DBEdit112: TDBEdit;
    Label131: TLabel;
    DBEdit113: TDBEdit;
    GroupBox8: TGroupBox;
    Label118: TLabel;
    Label119: TLabel;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    Label132: TLabel;
    DBEdit114: TDBEdit;
    GerarGuiaGNRE1: TMenuItem;
    Label133: TLabel;
    DBEdit115: TDBEdit;
    GroupBox9: TGroupBox;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    PopupMenu1: TPopupMenu;
    AdicoesDaDeclaracaoDeImportacao1: TMenuItem;
    TabSheet9: TTabSheet;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    AlterarCalculosParaManualOuAutomatico1: TMenuItem;
    RecibosDeNFe1: TMenuItem;
    EtiquetaParaEmbalagem1: TMenuItem;
    CancelarNotaDenegada1: TMenuItem;
    ConsultarNFe1: TMenuItem;
    Label142: TLabel;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    Label143: TLabel;
    TotalQuantidade1Button: TPngBitBtn;
    ConsultarStatusDosServidoresDaNFe1: TMenuItem;
    NFeComItens1: TMenuItem;
    InutilizacoesNoPeriodo1: TMenuItem;
    DBComboBox10: TDBComboBox;
    Label144: TLabel;
    Label145: TLabel;
    DBEdit125: TDBEdit;
    DBEdit126: TDBEdit;
    Label146: TLabel;
    Reordenar1Button: TPngBitBtn;
    DBMemo4: TDBMemo;
    Label147: TLabel;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    SincronizaroPedidodeVenda1: TMenuItem;
    NFeporCFOPdositens1: TMenuItem;
    DBEdit129: TDBEdit;
    Label148: TLabel;
    Label149: TLabel;
    DBEdit130: TDBEdit;
    Panel1: TPanel;
    Label53: TLabel;
    DBText10: TDBText;
    Label106: TLabel;
    DBText12: TDBText;
    Label34: TLabel;
    DBText7: TDBText;
    Label141: TLabel;
    DBText8: TDBText;
    Label150: TLabel;
    DBText9: TDBText;
    Label151: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label152: TLabel;
    DBText27: TDBText;
    TRVendas: TFDTransaction;
    UPVendas: TFDUpdateSQL;
    TBVendas: TFDQuery;
    TRVendasItens: TFDTransaction;
    UPVendasItens: TFDUpdateSQL;
    TBVendasItens: TFDQuery;
    DSVendas: TDataSource;
    Itens1: TMenuItem;
    EliminarTodos1: TMenuItem;
    AlterarItem1: TMenuItem;
    Reordenar1: TMenuItem;
    TotalQuantidade1: TMenuItem;
    TabSheet10: TTabSheet;
    Label153: TLabel;
    DBComboBox3: TDBComboBox;
    Label154: TLabel;
    DBComboBox11: TDBComboBox;
    Label155: TLabel;
    DBEdit131: TDBEdit;
    Label156: TLabel;
    DBComboBox12: TDBComboBox;
    Label157: TLabel;
    DBComboBox13: TDBComboBox;
    Label158: TLabel;
    DBEdit132: TDBEdit;
    Label159: TLabel;
    DBEdit133: TDBEdit;
    Label160: TLabel;
    DBEdit134: TDBEdit;
    Label161: TLabel;
    DBEdit135: TDBEdit;
    Label162: TLabel;
    DBEdit136: TDBEdit;
    Label163: TLabel;
    DBEdit137: TDBEdit;
    Label164: TLabel;
    DBEdit138: TDBEdit;
    Label165: TLabel;
    DBEdit139: TDBEdit;
    Label166: TLabel;
    DBEdit140: TDBEdit;
    Label167: TLabel;
    DBEdit141: TDBEdit;
    Label168: TLabel;
    DBEdit142: TDBEdit;
    Label169: TLabel;
    DBEdit143: TDBEdit;
    Label170: TLabel;
    DBEdit144: TDBEdit;
    Label171: TLabel;
    DBEdit145: TDBEdit;
    Label172: TLabel;
    DBEdit146: TDBEdit;
    Label173: TLabel;
    DBEdit147: TDBEdit;
    Label174: TLabel;
    DBEdit148: TDBEdit;
    Label175: TLabel;
    DBEdit149: TDBEdit;
    Label176: TLabel;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    Label177: TLabel;
    DBEdit152: TDBEdit;
    Label178: TLabel;
    Label179: TLabel;
    DBEdit153: TDBEdit;
    ReformaTributria1: TMenuItem;
    GerarNotaDeDebito1: TMenuItem;
    N1: TMenuItem;
    GerarXMLConformeAReformaTributaria1: TMenuItem;
    GerarNotaDeCredito1: TMenuItem;
    Label180: TLabel;
    DBEdit154: TDBEdit;
    TBVendasItensVEI_ALIQCBS: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSRED: TFMTBCDField;
    TBVendasItensVEI_ALIQCOFINS: TFMTBCDField;
    TBVendasItensVEI_ALIQCOFINSST: TFMTBCDField;
    TBVendasItensVEI_ALIQFCP: TFMTBCDField;
    TBVendasItensVEI_ALIQFCPST: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUN: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNRED: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFRED: TFMTBCDField;
    TBVendasItensVEI_ALIQICMS: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSADICST: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSINTER: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSINTERPART: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSRED: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSST: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSSTRET: TFMTBCDField;
    TBVendasItensVEI_ALIQII: TFMTBCDField;
    TBVendasItensVEI_ALIQIPI: TFMTBCDField;
    TBVendasItensVEI_ALIQIS: TFMTBCDField;
    TBVendasItensVEI_ALIQISESP: TFMTBCDField;
    TBVendasItensVEI_ALIQISS: TFMTBCDField;
    TBVendasItensVEI_ALIQPIS: TFMTBCDField;
    TBVendasItensVEI_ALIQPISST: TFMTBCDField;
    TBVendasItensVEI_ALMOXARIFADO: TIntegerField;
    TBVendasItensVEI_BASECOFINS: TFMTBCDField;
    TBVendasItensVEI_BASECOFINSST: TFMTBCDField;
    TBVendasItensVEI_BASEIBSCBS: TFMTBCDField;
    TBVendasItensVEI_BASEICMS: TFMTBCDField;
    TBVendasItensVEI_BASEICMSRED: TFMTBCDField;
    TBVendasItensVEI_BASEICMSST: TFMTBCDField;
    TBVendasItensVEI_BASEICMSSTRET: TFMTBCDField;
    TBVendasItensVEI_BASEII: TFMTBCDField;
    TBVendasItensVEI_BASEIPI: TFMTBCDField;
    TBVendasItensVEI_BASEIS: TFMTBCDField;
    TBVendasItensVEI_BASEISS: TFMTBCDField;
    TBVendasItensVEI_BASEPIS: TFMTBCDField;
    TBVendasItensVEI_BASEPISST: TFMTBCDField;
    TBVendasItensVEI_BENEFICIO: TStringField;
    TBVendasItensVEI_CBSCREDITOPRES: TIntegerField;
    TBVendasItensVEI_CEST: TStringField;
    TBVendasItensVEI_CFOP: TIntegerField;
    TBVendasItensVEI_CIDADEISS: TIntegerField;
    TBVendasItensVEI_CLASSFISCAL: TStringField;
    TBVendasItensVEI_CLASSTRIBIBSCBS: TStringField;
    TBVendasItensVEI_CLASSTRIBIS: TStringField;
    TBVendasItensVEI_CODIGO: TIntegerField;
    TBVendasItensVEI_CODIGOBARRAS: TStringField;
    TBVendasItensVEI_CODIGOFAB: TStringField;
    TBVendasItensVEI_COMISSAO: TFMTBCDField;
    TBVendasItensVEI_COMPLEMENTO: TStringField;
    TBVendasItensVEI_COMPOEBASEICMS: TStringField;
    TBVendasItensVEI_COMPOEBASEICMSST: TStringField;
    TBVendasItensVEI_COMPOETOTAL: TStringField;
    TBVendasItensVEI_CONVERSAO: TFMTBCDField;
    TBVendasItensVEI_CSTCOFINS: TIntegerField;
    TBVendasItensVEI_CSTIBSCBS: TStringField;
    TBVendasItensVEI_CSTICMS: TIntegerField;
    TBVendasItensVEI_CSTIPI: TIntegerField;
    TBVendasItensVEI_CSTIS: TStringField;
    TBVendasItensVEI_CSTPIS: TIntegerField;
    TBVendasItensVEI_DESCMAX: TFMTBCDField;
    TBVendasItensVEI_DESCPORC: TFMTBCDField;
    TBVendasItensVEI_DESCRICAO: TStringField;
    TBVendasItensVEI_DESCVALOR: TFMTBCDField;
    TBVendasItensVEI_DESONERACAO: TStringField;
    TBVendasItensVEI_DICNPJ: TStringField;
    TBVendasItensVEI_DIDATA: TDateField;
    TBVendasItensVEI_DIDESEMBARACODATA: TDateField;
    TBVendasItensVEI_DIDESEMBARACOLOCAL: TStringField;
    TBVendasItensVEI_DIDESEMBARACOUF: TStringField;
    TBVendasItensVEI_DIEXPORTADORCOD: TStringField;
    TBVendasItensVEI_DIINTERMEDIO: TStringField;
    TBVendasItensVEI_DINUMERO: TStringField;
    TBVendasItensVEI_DITERCEIROUF: TStringField;
    TBVendasItensVEI_DITRANSPORTE: TStringField;
    TBVendasItensVEI_DIVALORAFRMM: TFMTBCDField;
    TBVendasItensVEI_ENQUADRAMENTOIPI: TIntegerField;
    TBVendasItensVEI_EXCECAO: TIntegerField;
    TBVendasItensVEI_EXCHAVEACESSO: TStringField;
    TBVendasItensVEI_EXDRAWBACK: TStringField;
    TBVendasItensVEI_EXQUANTIDADE: TFMTBCDField;
    TBVendasItensVEI_EXREGISTRO: TStringField;
    TBVendasItensVEI_FCI: TStringField;
    TBVendasItensVEI_IBSCREDITOPRES: TIntegerField;
    TBVendasItensVEI_INCENTIVOISS: TStringField;
    TBVendasItensVEI_INDICADORISS: TStringField;
    TBVendasItensVEI_INFOADICIONAL: TMemoField;
    TBVendasItensVEI_LOCALIZACAO: TStringField;
    TBVendasItensVEI_LOTE: TStringField;
    TBVendasItensVEI_LUCROPORC: TFMTBCDField;
    TBVendasItensVEI_LUCROVALOR: TFMTBCDField;
    TBVendasItensVEI_MODICMS: TStringField;
    TBVendasItensVEI_MODICMSST: TStringField;
    TBVendasItensVEI_ORIGEM: TStringField;
    TBVendasItensVEI_PAISISS: TIntegerField;
    TBVendasItensVEI_PEDIDOCLIENTE: TStringField;
    TBVendasItensVEI_PEDIDOCLIENTEITEM: TIntegerField;
    TBVendasItensVEI_PESO: TFMTBCDField;
    TBVendasItensVEI_PESOTOTAL: TFMTBCDField;
    TBVendasItensVEI_PRECOCUSTO: TFMTBCDField;
    TBVendasItensVEI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBVendasItensVEI_PROCESSOISS: TStringField;
    TBVendasItensVEI_PRODUTO: TIntegerField;
    TBVendasItensVEI_PRODUTOREAL: TIntegerField;
    TBVendasItensVEI_QUANTIDADE: TFMTBCDField;
    TBVendasItensVEI_QUANTIDADETROCA: TFMTBCDField;
    TBVendasItensVEI_SEQUENCIA: TIntegerField;
    TBVendasItensVEI_SERVICOISS: TStringField;
    TBVendasItensVEI_SOMACOFINSST: TStringField;
    TBVendasItensVEI_SOMAPISST: TStringField;
    TBVendasItensVEI_TIPO: TStringField;
    TBVendasItensVEI_TIPOISS: TStringField;
    TBVendasItensVEI_UNIDADE: TStringField;
    TBVendasItensVEI_VALORACESSORIAS: TFMTBCDField;
    TBVendasItensVEI_VALORADUANA: TFMTBCDField;
    TBVendasItensVEI_VALORCBS: TFMTBCDField;
    TBVendasItensVEI_VALORCBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBVendasItensVEI_VALORCBSDEV: TFMTBCDField;
    TBVendasItensVEI_VALORCBSDIF: TFMTBCDField;
    TBVendasItensVEI_VALORCOFINS: TFMTBCDField;
    TBVendasItensVEI_VALORCOFINSST: TFMTBCDField;
    TBVendasItensVEI_VALORCOMISSAO: TFMTBCDField;
    TBVendasItensVEI_VALORFCP: TFMTBCDField;
    TBVendasItensVEI_VALORFCPST: TFMTBCDField;
    TBVendasItensVEI_VALORFRETE: TFMTBCDField;
    TBVendasItensVEI_VALORIBS: TFMTBCDField;
    TBVendasItensVEI_VALORIBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUN: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUNDEV: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUNDIF: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUF: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUFDEV: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUFDIF: TFMTBCDField;
    TBVendasItensVEI_VALORICMS: TFMTBCDField;
    TBVendasItensVEI_VALORICMSCREDSN: TFMTBCDField;
    TBVendasItensVEI_VALORICMSDESONERADO: TFMTBCDField;
    TBVendasItensVEI_VALORICMSST: TFMTBCDField;
    TBVendasItensVEI_VALORICMSSTRET: TFMTBCDField;
    TBVendasItensVEI_VALORICMSSUBSTITUTO: TFMTBCDField;
    TBVendasItensVEI_VALORICMSUFDEST: TFMTBCDField;
    TBVendasItensVEI_VALORICMSUFREMET: TFMTBCDField;
    TBVendasItensVEI_VALORII: TFMTBCDField;
    TBVendasItensVEI_VALORIOF: TFMTBCDField;
    TBVendasItensVEI_VALORIPI: TFMTBCDField;
    TBVendasItensVEI_VALORIS: TFMTBCDField;
    TBVendasItensVEI_VALORISS: TFMTBCDField;
    TBVendasItensVEI_VALORISSDEDUCAO: TFMTBCDField;
    TBVendasItensVEI_VALORISSDESCCOND: TFMTBCDField;
    TBVendasItensVEI_VALORISSDESCINCOND: TFMTBCDField;
    TBVendasItensVEI_VALORISSOUTROS: TFMTBCDField;
    TBVendasItensVEI_VALORISSRETENCAO: TFMTBCDField;
    TBVendasItensVEI_VALORPIS: TFMTBCDField;
    TBVendasItensVEI_VALORPISST: TFMTBCDField;
    TBVendasItensVEI_VALORSEGURO: TFMTBCDField;
    TBVendasItensVEI_VALORTOTAL: TFMTBCDField;
    TBVendasItensVEI_VALORTOTALBRUTO: TFMTBCDField;
    TBVendasItensVEI_VALORTRIBUTOS: TFMTBCDField;
    TBVendasItensVEI_VALORTRIBUTOSEST: TFMTBCDField;
    TBVendasItensVEI_VALORTRIBUTOSFED: TFMTBCDField;
    TBVendasItensVEI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBVendasItensVEI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBVendasItensVEI_VALORUNIT: TFMTBCDField;
    TBVendasItensVEI_VENDA: TIntegerField;
    TBVendasVED_ALIQICMSCREDSN: TFMTBCDField;
    TBVendasVED_BAIRRO: TStringField;
    TBVendasVED_BAIXADATA: TDateField;
    TBVendasVED_BAIXAPOR: TStringField;
    TBVendasVED_BASECOFINS: TFMTBCDField;
    TBVendasVED_BASECOFINSST: TFMTBCDField;
    TBVendasVED_BASEIBSCBS: TFMTBCDField;
    TBVendasVED_BASEICMS: TFMTBCDField;
    TBVendasVED_BASEICMSST: TFMTBCDField;
    TBVendasVED_BASEII: TFMTBCDField;
    TBVendasVED_BASEIPI: TFMTBCDField;
    TBVendasVED_BASEIS: TFMTBCDField;
    TBVendasVED_BASEISS: TFMTBCDField;
    TBVendasVED_BASEPIS: TFMTBCDField;
    TBVendasVED_BASEPISST: TFMTBCDField;
    TBVendasVED_CBSCREDPRES: TFMTBCDField;
    TBVendasVED_CBSCREDPRESSUS: TFMTBCDField;
    TBVendasVED_CBSDEVOLUCAO: TFMTBCDField;
    TBVendasVED_CBSDIFERIMENTO: TFMTBCDField;
    TBVendasVED_CBSMONO: TFMTBCDField;
    TBVendasVED_CBSMONORETENCAO: TFMTBCDField;
    TBVendasVED_CBSMONORETIDO: TFMTBCDField;
    TBVendasVED_CBSVALOR: TFMTBCDField;
    TBVendasVED_CEP: TStringField;
    TBVendasVED_CFOP: TIntegerField;
    TBVendasVED_CFOPDESC: TStringField;
    TBVendasVED_CIDADE: TStringField;
    TBVendasVED_CIDADECODIGO: TIntegerField;
    TBVendasVED_CLIENTE: TIntegerField;
    TBVendasVED_CNPJ: TStringField;
    TBVendasVED_CODIGO: TIntegerField;
    TBVendasVED_CODIMPORTACAO: TStringField;
    TBVendasVED_COMISSAO: TFMTBCDField;
    TBVendasVED_COMISSAOPOR: TStringField;
    TBVendasVED_COMPLEMENTO: TStringField;
    TBVendasVED_CONDICAO: TIntegerField;
    TBVendasVED_CONDICAOMEMO: TMemoField;
    TBVendasVED_CONFERIDO: TStringField;
    TBVendasVED_CONFERIDODATA: TDateField;
    TBVendasVED_CONFERIDOPOR: TStringField;
    TBVendasVED_CONTATO: TStringField;
    TBVendasVED_CPF: TStringField;
    TBVendasVED_CUSTOTOTAL: TFMTBCDField;
    TBVendasVED_DAV: TStringField;
    TBVendasVED_DESCPORC: TFMTBCDField;
    TBVendasVED_DESCPORCCLIENTE: TFMTBCDField;
    TBVendasVED_DESCPORCCONDICAO: TFMTBCDField;
    TBVendasVED_DESCVALOR: TFMTBCDField;
    TBVendasVED_DESTACARIMPOSTOS: TStringField;
    TBVendasVED_DIAPREFERENCIAL: TIntegerField;
    TBVendasVED_DTATUALIZACAO: TDateField;
    TBVendasVED_DTCADASTRO: TDateField;
    TBVendasVED_DTEMISSAO: TDateField;
    TBVendasVED_DTPRESTSERVICO: TDateField;
    TBVendasVED_DTSAIDA: TDateField;
    TBVendasVED_ENDERECO: TStringField;
    TBVendasVED_ENTRADASAIDA: TStringField;
    TBVendasVED_ENTREGUE: TStringField;
    TBVendasVED_ESPECIE: TStringField;
    TBVendasVED_ESTADO: TStringField;
    TBVendasVED_ESTADOCODIGO: TIntegerField;
    TBVendasVED_EXLOCAL: TStringField;
    TBVendasVED_EXPEDIDOPOR: TIntegerField;
    TBVendasVED_EXUFSAIDA: TStringField;
    TBVendasVED_FONE1: TStringField;
    TBVendasVED_FORMAPAGTO: TStringField;
    TBVendasVED_FRETE: TStringField;
    TBVendasVED_GOVERNAMENTAL: TStringField;
    TBVendasVED_GOVERNAMENTALALIQRED: TFMTBCDField;
    TBVendasVED_GOVERNAMENTALOP: TStringField;
    TBVendasVED_HRATUALIZACAO: TTimeField;
    TBVendasVED_HRCADASTRO: TTimeField;
    TBVendasVED_IBSCREDPRES: TFMTBCDField;
    TBVendasVED_IBSCREDPRESSUS: TFMTBCDField;
    TBVendasVED_IBSMONO: TFMTBCDField;
    TBVendasVED_IBSMONORETENCAO: TFMTBCDField;
    TBVendasVED_IBSMONORETIDO: TFMTBCDField;
    TBVendasVED_IBSMUNDEVOLUCAO: TFMTBCDField;
    TBVendasVED_IBSMUNDIFERIMENTO: TFMTBCDField;
    TBVendasVED_IBSMUNVALOR: TFMTBCDField;
    TBVendasVED_IBSUFDEVOLUCAO: TFMTBCDField;
    TBVendasVED_IBSUFDIFERIMENTO: TFMTBCDField;
    TBVendasVED_IBSUFVALOR: TFMTBCDField;
    TBVendasVED_IBSVALOR: TFMTBCDField;
    TBVendasVED_IDESTRANGEIRO: TStringField;
    TBVendasVED_IE: TStringField;
    TBVendasVED_INFOADICFISCO: TMemoField;
    TBVendasVED_INFOCOMPLEMENTAR: TMemoField;
    TBVendasVED_LACRES: TStringField;
    TBVendasVED_LUCROPORC: TFMTBCDField;
    TBVendasVED_LUCROVALOR: TFMTBCDField;
    TBVendasVED_MANUAL: TStringField;
    TBVendasVED_MARCA: TStringField;
    TBVendasVED_MOVIMENTAESTOQUE: TStringField;
    TBVendasVED_MOVIMENTAFINANCEIRO: TStringField;
    TBVendasVED_NFCE: TIntegerField;
    TBVendasVED_NFE: TIntegerField;
    TBVendasVED_NOME: TStringField;
    TBVendasVED_NOTA: TIntegerField;
    TBVendasVED_NOTACREDITO: TStringField;
    TBVendasVED_NOTADEBITO: TStringField;
    TBVendasVED_NUMERO: TStringField;
    TBVendasVED_OBSERVACOES: TMemoField;
    TBVendasVED_PAIS: TStringField;
    TBVendasVED_PAISCODIGO: TIntegerField;
    TBVendasVED_PEDIDOCLIENTE: TStringField;
    TBVendasVED_PESOBRUTO: TFMTBCDField;
    TBVendasVED_PESOLIQ: TFMTBCDField;
    TBVendasVED_REBOQUEPLACA: TStringField;
    TBVendasVED_REBOQUEPLACAUF: TStringField;
    TBVendasVED_REBOQUERNTC: TStringField;
    TBVendasVED_RG: TStringField;
    TBVendasVED_SEQUENCIAITEM: TIntegerField;
    TBVendasVED_STATUS: TStringField;
    TBVendasVED_SUFRAMA: TStringField;
    TBVendasVED_TABELAPRECO: TStringField;
    TBVendasVED_TIPOATENDIMENTO: TStringField;
    TBVendasVED_TIPOCONSUMIDOR: TStringField;
    TBVendasVED_TIPOOPERACAO: TStringField;
    TBVendasVED_TOTALADUANA: TFMTBCDField;
    TBVendasVED_TOTALBRUTO: TFMTBCDField;
    TBVendasVED_TOTALCOFINS: TFMTBCDField;
    TBVendasVED_TOTALCOFINSST: TFMTBCDField;
    TBVendasVED_TOTALCOMISSAO: TFMTBCDField;
    TBVendasVED_TOTALFCP: TFMTBCDField;
    TBVendasVED_TOTALFCPST: TFMTBCDField;
    TBVendasVED_TOTALICMS: TFMTBCDField;
    TBVendasVED_TOTALICMSCREDSN: TFMTBCDField;
    TBVendasVED_TOTALICMSST: TFMTBCDField;
    TBVendasVED_TOTALICMSUFDEST: TFMTBCDField;
    TBVendasVED_TOTALICMSUFREMET: TFMTBCDField;
    TBVendasVED_TOTALII: TFMTBCDField;
    TBVendasVED_TOTALIOF: TFMTBCDField;
    TBVendasVED_TOTALIPI: TFMTBCDField;
    TBVendasVED_TOTALIS: TFMTBCDField;
    TBVendasVED_TOTALISS: TFMTBCDField;
    TBVendasVED_TOTALISSDEDUCAO: TFMTBCDField;
    TBVendasVED_TOTALISSDESCCOND: TFMTBCDField;
    TBVendasVED_TOTALISSDESCINCOND: TFMTBCDField;
    TBVendasVED_TOTALISSOUTROS: TFMTBCDField;
    TBVendasVED_TOTALISSRETENCAO: TFMTBCDField;
    TBVendasVED_TOTALITENS: TFMTBCDField;
    TBVendasVED_TOTALPIS: TFMTBCDField;
    TBVendasVED_TOTALPISST: TFMTBCDField;
    TBVendasVED_TOTALPRODUTOS: TFMTBCDField;
    TBVendasVED_TOTALSERVICOS: TFMTBCDField;
    TBVendasVED_TOTALTRIBUTOS: TFMTBCDField;
    TBVendasVED_TOTALTRIBUTOSEST: TFMTBCDField;
    TBVendasVED_TOTALTRIBUTOSFED: TFMTBCDField;
    TBVendasVED_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBVendasVED_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBVendasVED_TRANSPCIDADE: TStringField;
    TBVendasVED_TRANSPCNPJ: TStringField;
    TBVendasVED_TRANSPCPF: TStringField;
    TBVendasVED_TRANSPEMAIL: TStringField;
    TBVendasVED_TRANSPENDERECO: TStringField;
    TBVendasVED_TRANSPESTADO: TStringField;
    TBVendasVED_TRANSPFONE: TStringField;
    TBVendasVED_TRANSPIE: TStringField;
    TBVendasVED_TRANSPNOME: TStringField;
    TBVendasVED_TRANSPORTADORA: TIntegerField;
    TBVendasVED_USUARIO: TStringField;
    TBVendasVED_VALORDESPACES: TFMTBCDField;
    TBVendasVED_VALORFRETE: TFMTBCDField;
    TBVendasVED_VALORSEGURO: TFMTBCDField;
    TBVendasVED_VALORTOTAL: TFMTBCDField;
    TBVendasVED_VALORTOTALRTC: TFMTBCDField;
    TBVendasVED_VEICULOPLACA: TStringField;
    TBVendasVED_VEICULOPLACAUF: TStringField;
    TBVendasVED_VEICULORNTC: TStringField;
    TBVendasVED_VENDEDOR: TIntegerField;
    TBVendasVED_VIAINTERNET: TStringField;
    TBVendasVED_VIAINTERNETSTATUS: TStringField;
    TBVendasVED_VOLUMES: TIntegerField;
    TBVendasVED_VOLUMESNUM: TStringField;
    GroupBox10: TGroupBox;
    Label181: TLabel;
    Label182: TLabel;
    DBEdit155: TDBEdit;
    DBEdit156: TDBEdit;
    GroupBox11: TGroupBox;
    Label183: TLabel;
    Label184: TLabel;
    DBEdit157: TDBEdit;
    DBEdit158: TDBEdit;
    TBVendasItensVEI_DFEREF: TStringField;
    TBVendasItensVEI_DFEREFITEM: TIntegerField;
    Label185: TLabel;
    DBEdit159: TDBEdit;
    EnviarNFePorWhatsApp1Button: TPngSpeedButton;
    EnviarNFePorWhatsApp1: TMenuItem;
    LocalizarNotaNaMovimentacaoDoEstoque1Button: TPngSpeedButton;
    LocalizarNotaNaMovimentacaoDoEstoque1: TMenuItem;
    GroupBox12: TGroupBox;
    Label186: TLabel;
    Label187: TLabel;
    DBEdit160: TDBEdit;
    DBEdit161: TDBEdit;
    Label188: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    DBEdit162: TDBEdit;
    DBEdit163: TDBEdit;
    TBVendasVED_DTENTREGA: TDateField;
    TBVendasVED_PRODUCAO: TIntegerField;
    TBVendasVED_REPRESENTANTE: TIntegerField;
    Label189: TLabel;
    Label190: TLabel;
    DBEdit164: TDBEdit;
    DBEdit165: TDBEdit;
    Label191: TLabel;
    DBEdit166: TDBEdit;
    TBVendasVED_COMISSAOREP: TFMTBCDField;
    TBVendasVED_TOTALCOMISSAOREP: TFMTBCDField;
    TBVendasItensVEI_COMISSAOREP: TFMTBCDField;
    TBVendasItensVEI_DTENTREGA: TDateField;
    TBVendasItensVEI_VALORCOMISSAOREP: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit26KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure IncluirItem1ButtonClick(Sender: TObject);
    procedure EliminarItem1ButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AlterarItem1ButtonClick(Sender: TObject);
    procedure AtualizarItens1ButtonClick(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure FinalizarNota1Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure IncluirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure AtualizarItens1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarNotanoContasaReceber1Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
    procedure CancelarNota1Click(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit42KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
    procedure DBEdit45Exit(Sender: TObject);
    procedure DBEdit45KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeImpostoICMS1Click(Sender: TObject);
    procedure CadastroDeImpostoIPI1Click(Sender: TObject);
    procedure CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
    procedure CadastroDeClassificacoesFiscais1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ValidarArquivoNFe1Click(Sender: TObject);
    procedure GerarArquivoNFe1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure DANFE1Click(Sender: TObject);
    procedure EnviarNFe1Click(Sender: TObject);
    procedure GerarLote1Click(Sender: TObject);
    procedure BuscarNFe1Click(Sender: TObject);
    procedure ConsultarStatusDoServico1Click(Sender: TObject);
    procedure CadastroDeImpostoISS1Click(Sender: TObject);
    procedure RecriarChavedeAcesso1Click(Sender: TObject);
    procedure InutilizarNFe1Click(Sender: TObject);
    procedure EnviarNFePorEmail1Click(Sender: TObject);
    procedure EliminarTodos1ButtonClick(Sender: TObject);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure NFePorStatus1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure NFePorCFOP1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure CartasDeCorrecao1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure NFeOrdenadoPorCodigo1Click(Sender: TObject);
    procedure VerificacaoDeNumeracao1Click(Sender: TObject);
    procedure GerarBoletos1Click(Sender: TObject);
    procedure RecriarArquivoXMLprocNFe1Click(Sender: TObject);
    procedure InutilizacaoDeFaixaDeNFe1Click(Sender: TObject);
    procedure ArquivosXMLDaNFe1Click(Sender: TObject);
    procedure ZiparArquivosXML1Click(Sender: TObject);
    procedure GerarArquivoDPEC1Click(Sender: TObject);
    procedure EnviarDPEC1Click(Sender: TObject);
    procedure teste1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
    procedure SalvarPDFDANFEComo1Click(Sender: TObject);
    procedure SalvarZIPXMLsComo1Click(Sender: TObject);
    procedure InformarProtocoloDataEHoraDeAutorizacao1Click(Sender: TObject);
    procedure DownloadDaNFeNoPortalNacional1Click(Sender: TObject);
    procedure ConsultarNFeNoPortalNacional1Click(Sender: TObject);
    procedure EnviarNFeSincrono1Click(Sender: TObject);
    procedure EnviarNFePorEmailAutomatico1Click(Sender: TObject);
    procedure BaixarDLLsdoSSL1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit42Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit45Enter(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit110KeyPress(Sender: TObject; var Key: Char);
    procedure GerarGuiaGNRE1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure AdicoesDaDeclaracaoDeImportacao1Click(Sender: TObject);
    procedure AlterarCalculosParaManualOuAutomatico1Click(Sender: TObject);
    procedure RecibosDeNFe1Click(Sender: TObject);
    procedure EtiquetaParaEmbalagem1Click(Sender: TObject);
    procedure CancelarNotaDenegada1Click(Sender: TObject);
    procedure ConsultarNFe1Click(Sender: TObject);
    procedure TotalQuantidade1ButtonClick(Sender: TObject);
    procedure ConsultarStatusDosServidoresDaNFe1Click(Sender: TObject);
    procedure NFeComItens1Click(Sender: TObject);
    procedure InutilizacoesNoPeriodo1Click(Sender: TObject);
    procedure Reordenar1ButtonClick(Sender: TObject);
    procedure SincronizaroPedidodeVenda1Click(Sender: TObject);
    procedure NFeporCFOPdositens1Click(Sender: TObject);
    procedure EliminarTodos1Click(Sender: TObject);
    procedure AlterarItem1Click(Sender: TObject);
    procedure TotalQuantidade1Click(Sender: TObject);
    procedure Reordenar1Click(Sender: TObject);
    procedure GerarXMLConformeAReformaTributaria1Click(Sender: TObject);
    procedure GerarNotaDeDebito1Click(Sender: TObject);
    procedure GerarNotaDeCredito1Click(Sender: TObject);
    procedure EnviarNFePorWhatsApp1Click(Sender: TObject);
    procedure LocalizarNotaNaMovimentacaoDoEstoque1Click(Sender: TObject);
    procedure DBEdit162Enter(Sender: TObject);
    procedure DBEdit162Exit(Sender: TObject);
    procedure DBEdit162KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit162KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetRepresentante(CodVend: Integer);
    procedure SetVendedor(CodVend: Integer);
    procedure SetCondicao(CodCondicao: Integer);
    procedure SetProdutos(var Detalhes: Widestring);
    function AssinarNFe(var NFe: Widestring): Boolean; //variavel por referencia.
    procedure GerarTagsLote(var NFEAssinada: Widestring); //variavel por referencia.
    procedure ProcessarRetornoConsultaProtocolo(MsgXML: Widestring);
    function GerarArquivoNFe: Boolean;
    function EnviarNFe(MostrarMensagem: Boolean): Boolean;
    procedure EnviarNFeSincrono;
    procedure GerarDANFEFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarEmail;
    procedure EnviarNFePorEmailViaOS;
    procedure EnviarNFePorEmailViaSistema;
    procedure EnviarNFePorEmailViaSistemaAutomatico;
    procedure SincronizarPedidoDeVenda;
    procedure SincronizarPedidoDeVendaQuebraGalho;
    function VerificarEstoque: Boolean;
    function VerificarMatriculaComVendaCurso(Venda: Integer): Boolean;
    function VerificarMatriculaComVendaMaterial(Venda: Integer): Boolean;
  public
    { Public declarations }
    procedure ReadOnlyCamposNfe(ReadOnly: Boolean);
  end;

var
  FormNfe: TFormNfe;

implementation
uses DataMod, DataMod2, VendedoresLoc, FornecedoresLoc, ClientesLoc, Main, Produtos,
  CondicoesLoc, Condicoes, Clientes, NotasLoc, NotasRel, FuncoesFirenet,
  Funcoes1, IdMessage, NaturezasLoc, Naturezas, Receber, NfeLoc, NfeRel,
  NfeItens, NfeFinalizar, NfeCancelar, Icms, Ipi, Iss, Piscofins,
  ClassFiscal, NfeValidar, NFe_Util_2G_TLB, EnderecosRuasLoc,
  Enderecos, Math, ShellApi, Fornecedores, NfeAlterarDesconto,
  NfeAlterarFreteSeguroAcessorias, ReceberLoc, NfeCCe, NfeReferenciadas,
  NfeGerarBoletos, NfeInutilizadas, NfeArquivosXML, ZiparDFE, DataModSearch,
  EmailsEnviar, NfeProtocolo, Gnre, NfeItensAdicoes, NfeFast, NfeAlterarProdutos,
  NfeFuncoes, Zap, EstoqueLoc, Estoque;
{$R *.dfm}

function TFormNfe.VerificarEstoque: Boolean;
var ChecagemEstoque: WideString;
  Quantidade: Double;
begin
  Result:=True;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBNfeNFE_ENTRADASAIDA.Value='S') then
  begin
    ChecagemEstoque:='';
    //checa os produtos que não tem produto real.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE, NFI_PRODUTO from NFEITENS where NFI_PRODUTOREAL=0 and NFI_NOTA=:codigo group by NFI_PRODUTO order by NFI_PRODUTO');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NFI_PRODUTO').AsInteger;
      DM.TBProdutos.Open;
      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value<DM.QYAux.FieldByName('QTDE').AsFloat) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
                       'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;

    //checa os produtos que tem produto real.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE, NFI_PRODUTOREAL, NFI_CONVERSAO from NFEITENS where NFI_PRODUTOREAL<>0 and NFI_NOTA=:codigo group by NFI_PRODUTOREAL, NFI_CONVERSAO order by NFI_PRODUTOREAL');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NFI_PRODUTOREAL').AsInteger;
      DM.TBProdutos.Open;
      Quantidade:=DM.QYAux.FieldByName('QTDE').AsFloat * DM.QYAux.FieldByName('NFI_CONVERSAO').AsFloat;
      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value < Quantidade) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
                       'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;

    if ChecagemEstoque<>'' then
    begin
      MessageDlg('O(s) produto(s) abaixo não tem quantidade suficiente em estoque.'+#13#13+ChecagemEstoque,mtInformation,[mbOk],0);
      Result:=False;
    end;
  end;
end;

procedure TFormNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNfe.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNfe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfe.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfe.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeLoc, FormNfeLoc);
  FormNfeLoc.ShowModal;
  if NfeLoc.Procurar then
  begin
    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=FormNfeLoc.QYNfeNFE_CODIGO.Value;
    DM.TBNfe.Open;

    DM.TBNfeItens.Close;
    DM.TBNfeItens.Open;

    DM.TBNfeRef.Close;
    DM.TBNfeRef.Open;
  end;
  FormNfeLoc.Free;
  FormNfeLoc:=nil;
end;

procedure TFormNfe.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.Reordenar1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeItens.IsEmpty,'Não existem itens nesse pedido.');

  //atualiza a sequencia dos itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'merge into NFEITENS NFEITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    NFI_CODIGO, '+
    '    NFI_NOTA, '+
    '    row_number() over(partition by NFI_NOTA order by NFI_NOTA, NFI_CODIGO) as SEQ '+
    'from NFEITENS where NFI_NOTA=:codigo order by NFI_NOTA, NFI_CODIGO) NFEITENS_ORIGEM '+
    'on NFEITENS_DESTINO.RDB$DB_KEY = NFEITENS_ORIGEM.db_key '+
    'when matched then update set NFEITENS_DESTINO.NFI_SEQUENCIA = NFEITENS_ORIGEM.SEQ'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  DM.QYAux.ExecSQL;

  //atualiza o total de itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'update NFE set NFE_SEQUENCIAITEM=(select max(NFI_SEQUENCIA) as SEQ from NFEITENS where NFI_NOTA=NFE_CODIGO) where NFE_CODIGO=:codigo'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  DM.QYAux.ExecSQL;

  DM.TBNfeItens.Close;
  DM.TBNfe.Close;
  DM.TBNfe.Open;
  DM.TBNfeItens.Open;
end;

procedure TFormNfe.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  AlterarItem1.Click;
end;

procedure TFormNfe.DBGrid2DblClick(Sender: TObject);
begin
  PngBitBtn4.Click;
end;

procedure TFormNfe.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  PngBitBtn4.Click;
end;

procedure TFormNfe.SetRepresentante(CodVend: Integer);
begin
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=CodVend;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    DM.TBNfeNFE_REPRESENTANTE.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
    DM.TBNfeVEN_NOME2.Value:=DMS.QYVendedoresVEN_NOME.Value;
    DM.TBNfeNFE_COMISSAOREP.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
  end else
  begin
    DM.TBNfeNFE_REPRESENTANTE.Clear;
    DM.TBNfeVEN_NOME2.Clear;
    DM.TBNfeNFE_COMISSAOREP.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormNfe.SetVendedor(CodVend: Integer);
begin
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=CodVend;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    DM.TBNfeNFE_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
    DM.TBNfeVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
    DM.TBNfeNFE_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
  end else
  begin
    DM.TBNfeNFE_VENDEDOR.Clear;
    DM.TBNfeVEN_NOME.Clear;
    DM.TBNfeNFE_COMISSAO.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormNfe.SincronizaroPedidodeVenda1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_VENDA.Value <= 0,'Não existe pedido de venda informado nessa NFe.');

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from VENDAS where VED_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').AsInteger <> 1 then
  begin
    DM.QYAux.Close;
    MessageDlg('Pedido de venda não encontrado.',mtError,[mbOk],0);
    Exit
  end;
  DM.QYAux.Close;

  if MessageDlg('Deseja sincronizar o pedido de venda com essa NFe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    SincronizarPedidoDeVendaQuebraGalho;
  end;
end;

procedure TFormNfe.SincronizarPedidoDeVenda;
begin
  //Rotina para deixar o pedido de venda igual à NFe.
  if not DM.TBNfeNFE_VENDA.IsNull then
  begin
    TBVendas.Close;
    TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    TBVendas.Open;
    TBVendas.Edit;
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    {$REGION 'CAMPOS VENDAS'}
    TBVendasVED_ALIQICMSCREDSN.Value:=        DM.TBNfeNFE_ALIQICMSCREDSN.Value;
    TBVendasVED_BAIRRO.Value:=                DM.TBNfeNFE_BAIRRO.Value;
    //TBVendasVED_BAIXADATA.Value:=           DM.TBNfeNFE_BAIXADATA.Value;
    //TBVendasVED_BAIXAPOR.Value:=            DM.TBNfeNFE_BAIXAPOR.Value;
    TBVendasVED_BASECOFINS.Value:=            DM.TBNfeNFE_BASECOFINS.Value;
    TBVendasVED_BASECOFINSST.Value:=          DM.TBNfeNFE_BASECOFINSST.Value;
    TBVendasVED_BASEIBSCBS.Value:=            DM.TBNfeNFE_BASEIBSCBS.Value;
    TBVendasVED_BASEICMS.Value:=              DM.TBNfeNFE_BASEICMS.Value;
    TBVendasVED_BASEICMSST.Value:=            DM.TBNfeNFE_BASEICMSST.Value;
    TBVendasVED_BASEII.Value:=                DM.TBNfeNFE_BASEII.Value;
    TBVendasVED_BASEIPI.Value:=               DM.TBNfeNFE_BASEIPI.Value;
    TBVendasVED_BASEIS.Value:=                DM.TBNfeNFE_BASEIS.Value;
    TBVendasVED_BASEISS.Value:=               DM.TBNfeNFE_BASEISS.Value;
    TBVendasVED_BASEPIS.Value:=               DM.TBNfeNFE_BASEPIS.Value;
    TBVendasVED_BASEPISST.Value:=             DM.TBNfeNFE_BASEPISST.Value;
    TBVendasVED_CBSCREDPRES.Value:=           DM.TBNfeNFE_CBSCREDPRES.Value;
    TBVendasVED_CBSCREDPRESSUS.Value:=        DM.TBNfeNFE_CBSCREDPRESSUS.Value;
    TBVendasVED_CBSDEVOLUCAO.Value:=          DM.TBNfeNFE_CBSDEVOLUCAO.Value;
    TBVendasVED_CBSDIFERIMENTO.Value:=        DM.TBNfeNFE_CBSDIFERIMENTO.Value;
    TBVendasVED_CBSMONO.Value:=               DM.TBNfeNFE_CBSMONO.Value;
    TBVendasVED_CBSMONORETENCAO.Value:=       DM.TBNfeNFE_CBSMONORETENCAO.Value;
    TBVendasVED_CBSMONORETIDO.Value:=         DM.TBNfeNFE_CBSMONORETIDO.Value;
    TBVendasVED_CBSVALOR.Value:=              DM.TBNfeNFE_CBSVALOR.Value;
    TBVendasVED_CEP.Value:=                   DM.TBNfeNFE_CEP.Value;
    TBVendasVED_CFOP.Value:=                  DM.TBNfeNFE_CFOP.Value;
    TBVendasVED_CFOPDESC.Value:=              DM.TBNfeNFE_CFOPDESC.Value;
    TBVendasVED_CIDADE.Value:=                DM.TBNfeNFE_CIDADE.Value;
    TBVendasVED_CIDADECODIGO.Value:=          DM.TBNfeNFE_CIDADECODIGO.Value;
    TBVendasVED_CLIENTE.Value:=               DM.TBNfeNFE_CLIENTE.Value;
    TBVendasVED_CNPJ.Value:=                  DM.TBNfeNFE_CNPJ.Value;
    //TBVendasVED_CODIGO.Value:=              DM.TBNfeNFE_CODIGO.Value;
    //TBVendasVED_CODIMPORTACAO.Value:=       DM.TBNfeNFE_CODIMPORTACAO.Value;
    TBVendasVED_COMISSAO.Value:=              DM.TBNfeNFE_COMISSAO.Value;
    TBVendasVED_COMISSAOPOR.Value:=           DM.TBNfeNFE_COMISSAOPOR.Value;
    TBVendasVED_COMPLEMENTO.Value:=           DM.TBNfeNFE_COMPLEMENTO.Value;
    TBVendasVED_CONDICAO.Value:=              DM.TBNfeNFE_CONDICAO.Value;
    TBVendasVED_CONDICAOMEMO.Value:=          DM.TBNfeNFE_CONDICAOMEMO.Value;
    //TBVendasVED_CONFERIDO.Value:=
    //TBVendasVED_CONFERIDODATA.Value:=
    //TBVendasVED_CONFERIDOPOR.Value:=
    TBVendasVED_CONTATO.Value:=               DM.TBNfeNFE_CONTATO.Value;
    TBVendasVED_CPF.Value:=                   DM.TBNfeNFE_CPF.Value;
    TBVendasVED_CUSTOTOTAL.Value:=            DM.TBNfeNFE_CUSTOTOTAL.Value;
    //TBVendasVED_DAV.Value:=
    TBVendasVED_DESCPORC.Value:=              DM.TBNfeNFE_DESCPORC.Value;
    TBVendasVED_DESCPORCCLIENTE.Value:=       DM.TBNfeNFE_DESCPORCCLIENTE.Value;
    TBVendasVED_DESCPORCCONDICAO.Value:=      DM.TBNfeNFE_DESCPORCCONDICAO.Value;
    TBVendasVED_DESCVALOR.Value:=             DM.TBNfeNFE_DESCVALOR.Value;
    TBVendasVED_DESTACARIMPOSTOS.Value:=      DM.TBNfeNFE_DESTACARIMPOSTOS.Value;
    TBVendasVED_DIAPREFERENCIAL.Value:=       DM.TBNfeNFE_DIAPREFERENCIAL.Value;
    TBVendasVED_DTATUALIZACAO.Value:=         DM.TBNfeNFE_DTATUALIZACAO.Value;
    //TBVendasVED_DTCADASTRO.Value:=          DM.TBNfeNFE_DTCADASTRO.Value;
    TBVendasVED_DTEMISSAO.Value:=             DM.TBNfeNFE_DTEMISSAO.Value;
    //TBVendasVED_DTENTREGA.Value:=             nao tem. DM.TBNfeNFE_DTENTREGA.Value;
    TBVendasVED_DTPRESTSERVICO.Value:=        DM.TBNfeNFE_DTPRESTSERVICO.Value;
    //TBVendasVED_DTSAIDA.Value:=             DM.TBNfeNFE_DTSAIDA.Value;
    TBVendasVED_ENDERECO.Value:=              DM.TBNfeNFE_ENDERECO.Value;
    TBVendasVED_ENTRADASAIDA.Value:=          DM.TBNfeNFE_ENTRADASAIDA.Value;
    //TBVendasVED_ENTREGUE.Value:=            DM.TBNfeNFE_ENTREGUE.Value;
    TBVendasVED_ESPECIE.Value:=               DM.TBNfeNFE_ESPECIE.Value;
    TBVendasVED_ESTADO.Value:=                DM.TBNfeNFE_ESTADO.Value;
    TBVendasVED_ESTADOCODIGO.Value:=          DM.TBNfeNFE_ESTADOCODIGO.Value;
    TBVendasVED_EXLOCAL.Value:=               DM.TBNfeNFE_EXLOCAL.Value;
    TBVendasVED_EXPEDIDOPOR.Value:=           DM.TBNfeNFE_EXPEDIDOPOR.Value;
    TBVendasVED_EXUFSAIDA.Value:=             DM.TBNfeNFE_EXUFSAIDA.Value;
    TBVendasVED_FONE1.Value:=                 DM.TBNfeNFE_FONE1.Value;
    TBVendasVED_FORMAPAGTO.Value:=            DM.TBNfeNFE_FORMAPAGTO.Value;
    TBVendasVED_FRETE.Value:=                 DM.TBNfeNFE_FRETE.Value;
    TBVendasVED_GOVERNAMENTAL.Value:=         DM.TBNfeNFE_GOVERNAMENTAL.Value;
    TBVendasVED_GOVERNAMENTALALIQRED.Value:=  DM.TBNfeNFE_GOVERNAMENTALALIQRED.Value;
    TBVendasVED_GOVERNAMENTALOP.Value:=       DM.TBNfeNFE_GOVERNAMENTALOP.Value;
    TBVendasVED_IBSCREDPRES.Value:=           DM.TBNfeNFE_IBSCREDPRES.Value;
    TBVendasVED_IBSCREDPRESSUS.Value:=        DM.TBNfeNFE_IBSCREDPRESSUS.Value;
    TBVendasVED_IBSMONO.Value:=               DM.TBNfeNFE_IBSMONO.Value;
    TBVendasVED_IBSMONORETENCAO.Value:=       DM.TBNfeNFE_IBSMONORETENCAO.Value;
    TBVendasVED_IBSMONORETIDO.Value:=         DM.TBNfeNFE_IBSMONORETIDO.Value;
    TBVendasVED_IBSMUNDEVOLUCAO.Value:=       DM.TBNfeNFE_IBSMUNDEVOLUCAO.Value;
    TBVendasVED_IBSMUNDIFERIMENTO.Value:=     DM.TBNfeNFE_IBSMUNDIFERIMENTO.Value;
    TBVendasVED_IBSMUNVALOR.Value:=           DM.TBNfeNFE_IBSMUNVALOR.Value;
    TBVendasVED_IBSUFDEVOLUCAO.Value:=        DM.TBNfeNFE_IBSUFDEVOLUCAO.Value;
    TBVendasVED_IBSUFDIFERIMENTO.Value:=      DM.TBNfeNFE_IBSUFDIFERIMENTO.Value;
    TBVendasVED_IBSUFVALOR.Value:=            DM.TBNfeNFE_IBSUFVALOR.Value;
    TBVendasVED_IBSVALOR.Value:=              DM.TBNfeNFE_IBSVALOR.Value;
    TBVendasVED_IDESTRANGEIRO.Value:=         DM.TBNfeNFE_IDESTRANGEIRO.Value;
    TBVendasVED_IE.Value:=                    DM.TBNfeNFE_IE.Value;
    TBVendasVED_INFOADICFISCO.Value:=         DM.TBNfeNFE_INFOADICFISCO.Value;
    TBVendasVED_INFOCOMPLEMENTAR.Value:=      DM.TBNfeNFE_INFOCOMPLEMENTAR.Value;
    TBVendasVED_LACRES.Value:=                DM.TBNfeNFE_LACRES.Value;
    TBVendasVED_LUCROPORC.Value:=             DM.TBNfeNFE_LUCROPORC.Value;
    TBVendasVED_LUCROVALOR.Value:=            DM.TBNfeNFE_LUCROVALOR.Value;
    TBVendasVED_MANUAL.Value:=                DM.TBNfeNFE_MANUAL.Value;
    TBVendasVED_MARCA.Value:=                 DM.TBNfeNFE_MARCA.Value;
    TBVendasVED_MOVIMENTAESTOQUE.Value:=      DM.TBNfeNFE_MOVIMENTAESTOQUE.Value;
    TBVendasVED_MOVIMENTAFINANCEIRO.Value:=   DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value;
    //TBVendasVED_NFCE.Value:=
    //TBVendasVED_NFE.Value:=                 DM.TBNfeNFE_NFE.Value;
    TBVendasVED_NOME.Value:=                  DM.TBNfeNFE_NOME.Value;
    //TBVendasVED_NOTA.Value:=                DM.TBNfeNFE_NOTA.Value;
    TBVendasVED_NOTACREDITO.Value:=           DM.TBNfeNFE_NOTACREDITO.Value;
    TBVendasVED_NOTADEBITO.Value:=            DM.TBNfeNFE_NOTADEBITO.Value;
    TBVendasVED_NUMERO.Value:=                DM.TBNfeNFE_NUMERO.Value;
    TBVendasVED_OBSERVACOES.Value:=           DM.TBNfeNFE_OBSERVACOES.Value;
    TBVendasVED_PAIS.Value:=                  DM.TBNfeNFE_PAIS.Value;
    TBVendasVED_PAISCODIGO.Value:=            DM.TBNfeNFE_PAISCODIGO.Value;
    TBVendasVED_PEDIDOCLIENTE.Value:=         DM.TBNfeNFE_PEDIDOCLIENTE.Value;
    TBVendasVED_PESOBRUTO.Value:=             DM.TBNfeNFE_PESOBRUTO.Value;
    TBVendasVED_PESOLIQ.Value:=               DM.TBNfeNFE_PESOLIQ.Value;
    //TBVendasVED_PRODUCAO.Value:=              nao tem DM.TBNfeNFE_PRODUCAO.Value;
    TBVendasVED_REBOQUEPLACA.Value:=          DM.TBNfeNFE_REBOQUEPLACA.Value;
    TBVendasVED_REBOQUEPLACAUF.Value:=        DM.TBNfeNFE_REBOQUEPLACAUF.Value;
    TBVendasVED_REBOQUERNTC.Value:=           DM.TBNfeNFE_REBOQUERNTC.Value;
    TBVendasVED_REPRESENTANTE.Value:=         DM.TBNfeNFE_REPRESENTANTE.Value;
    TBVendasVED_RG.Value:=                    DM.TBNfeNFE_RG.Value;
    TBVendasVED_SUFRAMA.Value:=               DM.TBNfeNFE_SUFRAMA.Value;
    TBVendasVED_SEQUENCIAITEM.Value:=         DM.TBNfeNFE_SEQUENCIAITEM.Value;
    //TBVendasVED_STATUS.Value:=              DM.TBNfeNFE_STATUS.Value;
    TBVendasVED_TABELAPRECO.Value:=           DM.TBNfeNFE_TABELAPRECO.Value;
    TBVendasVED_TIPOATENDIMENTO.Value:=       DM.TBNfeNFE_TIPOATENDIMENTO.Value;
    TBVendasVED_TIPOCONSUMIDOR.Value:=        DM.TBNfeNFE_TIPOCONSUMIDOR.Value;
    TBVendasVED_TIPOOPERACAO.Value:=          DM.TBNfeNFE_TIPOOPERACAO.Value;
    TBVendasVED_TOTALADUANA.Value:=           DM.TBNfeNFE_TOTALADUANA.Value;
    TBVendasVED_TOTALBRUTO.Value:=            DM.TBNfeNFE_TOTALBRUTO.Value;
    TBVendasVED_TOTALCOFINS.Value:=           DM.TBNfeNFE_TOTALCOFINS.Value;
    TBVendasVED_TOTALCOFINSST.Value:=         DM.TBNfeNFE_TOTALCOFINSST.Value;
    TBVendasVED_TOTALCOMISSAO.Value:=         DM.TBNfeNFE_TOTALCOMISSAO.Value;
    TBVendasVED_TOTALFCP.Value:=              DM.TBNfeNFE_TOTALFCP.Value;
    TBVendasVED_TOTALFCPST.Value:=            DM.TBNfeNFE_TOTALFCPST.Value;
    TBVendasVED_TOTALICMS.Value:=             DM.TBNfeNFE_TOTALICMS.Value;
    TBVendasVED_TOTALICMSCREDSN.Value:=       DM.TBNfeNFE_TOTALICMSCREDSN.Value;
    TBVendasVED_TOTALICMSST.Value:=           DM.TBNfeNFE_TOTALICMSST.Value;
    TBVendasVED_TOTALICMSUFDEST.Value:=       DM.TBNfeNFE_TOTALICMSUFDEST.Value;
    TBVendasVED_TOTALICMSUFREMET.Value:=      DM.TBNfeNFE_TOTALICMSUFREMET.Value;
    TBVendasVED_TOTALII.Value:=               DM.TBNfeNFE_TOTALII.Value;
    TBVendasVED_TOTALIOF.Value:=              DM.TBNfeNFE_TOTALIOF.Value;
    TBVendasVED_TOTALIPI.Value:=              DM.TBNfeNFE_TOTALIPI.Value;
    TBVendasVED_TOTALIS.Value:=               DM.TBNfeNFE_TOTALIS.Value;
    TBVendasVED_TOTALISS.Value:=              DM.TBNfeNFE_TOTALISS.Value;
    TBVendasVED_TOTALISSDEDUCAO.Value:=       DM.TBNfeNFE_TOTALISSDEDUCAO.Value;
    TBVendasVED_TOTALISSDESCCOND.Value:=      DM.TBNfeNFE_TOTALISSDESCCOND.Value;
    TBVendasVED_TOTALISSDESCINCOND.Value:=    DM.TBNfeNFE_TOTALISSDESCINCOND.Value;
    TBVendasVED_TOTALISSOUTROS.Value:=        DM.TBNfeNFE_TOTALISSOUTROS.Value;
    TBVendasVED_TOTALISSRETENCAO.Value:=      DM.TBNfeNFE_TOTALISSRETENCAO.Value;
    TBVendasVED_TOTALITENS.Value:=            DM.TBNfeNFE_TOTALITENS.Value;
    TBVendasVED_TOTALPIS.Value:=              DM.TBNfeNFE_TOTALPIS.Value;
    TBVendasVED_TOTALPISST.Value:=            DM.TBNfeNFE_TOTALPISST.Value;
    TBVendasVED_TOTALPRODUTOS.Value:=         DM.TBNfeNFE_TOTALPRODUTOS.Value;
    TBVendasVED_TOTALSERVICOS.Value:=         DM.TBNfeNFE_TOTALSERVICOS.Value;
    TBVendasVED_TOTALTRIBUTOS.Value:=         DM.TBNfeNFE_TOTALTRIBUTOS.Value;
    TBVendasVED_TOTALTRIBUTOSEST.Value:=      DM.TBNfeNFE_TOTALTRIBUTOSEST.Value;
    TBVendasVED_TOTALTRIBUTOSFED.Value:=      DM.TBNfeNFE_TOTALTRIBUTOSFED.Value;
    TBVendasVED_TOTALTRIBUTOSIMP.Value:=      DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value;
    TBVendasVED_TOTALTRIBUTOSMUN.Value:=      DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value;
    TBVendasVED_TRANSPCIDADE.Value:=          DM.TBNfeNFE_TRANSPCIDADE.Value;
    TBVendasVED_TRANSPCNPJ.Value:=            DM.TBNfeNFE_TRANSPCNPJ.Value;
    TBVendasVED_TRANSPCPF.Value:=             DM.TBNfeNFE_TRANSPCPF.Value;
    TBVendasVED_TRANSPEMAIL.Value:=           DM.TBNfeNFE_TRANSPEMAIL.Value;
    TBVendasVED_TRANSPENDERECO.Value:=        DM.TBNfeNFE_TRANSPENDERECO.Value;
    TBVendasVED_TRANSPESTADO.Value:=          DM.TBNfeNFE_TRANSPESTADO.Value;
    TBVendasVED_TRANSPFONE.Value:=            DM.TBNfeNFE_TRANSPFONE.Value;
    TBVendasVED_TRANSPIE.Value:=              DM.TBNfeNFE_TRANSPIE.Value;
    TBVendasVED_TRANSPNOME.Value:=            DM.TBNfeNFE_TRANSPNOME.Value;
    TBVendasVED_TRANSPORTADORA.Value:=        DM.TBNfeNFE_TRANSPORTADORA.Value;
    TBVendasVED_USUARIO.Value:=               DM.TBNfeNFE_USUARIO.Value;
    TBVendasVED_VALORDESPACES.Value:=         DM.TBNfeNFE_VALORDESPACES.Value;
    TBVendasVED_VALORFRETE.Value:=            DM.TBNfeNFE_VALORFRETE.Value;
    TBVendasVED_VALORSEGURO.Value:=           DM.TBNfeNFE_VALORSEGURO.Value;
    TBVendasVED_VALORTOTAL.Value:=            DM.TBNfeNFE_VALORTOTAL.Value;
    TBVendasVED_VALORTOTALRTC.Value:=         DM.TBNfeNFE_VALORTOTALRTC.Value;
    TBVendasVED_VEICULOPLACA.Value:=          DM.TBNfeNFE_VEICULOPLACA.Value;
    TBVendasVED_VEICULOPLACAUF.Value:=        DM.TBNfeNFE_VEICULOPLACAUF.Value;
    TBVendasVED_VEICULORNTC.Value:=           DM.TBNfeNFE_VEICULORNTC.Value;
    TBVendasVED_VENDEDOR.Value:=              DM.TBNfeNFE_VENDEDOR.Value;
    //TBVendasVED_VIAINTERNET.Value:=         DM.TBNfeNFE_VIAINTERNET.Value;
    //TBVendasVED_VIAINTERNETSTATUS.Value:=   DM.TBNfeNFE_VIAINTERNETSTATUS.Value;
    TBVendasVED_VOLUMES.Value:=               DM.TBNfeNFE_VOLUMES.Value;
    TBVendasVED_VOLUMESNUM.Value:=            DM.TBNfeNFE_VOLUMESNUM.Value;
    {$ENDREGION}
    TBVendas.Post;

    //elimina os itens da venda e atualiza com os itens da NFe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from VENDASITENS where VEI_VENDA=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    DM.QYAux.ExecSQL;

    //insere novamente os itens da venda.
    TBVendasItens.Open;
    DM.TBNfeItens.First;
    while not DM.TBNfeItens.Eof do
    begin
      TBVendasItens.Insert;
      {$REGION 'CAMPOS VENDASITENS'}
      TBVendasItensVEI_ALIQCBS.Value:=            DM.TBNfeItensNFI_ALIQCBS.Value;
      TBVendasItensVEI_ALIQCBSCREDPRES.Value:=    DM.TBNfeItensNFI_ALIQCBSCREDPRES.Value;
      TBVendasItensVEI_ALIQCBSDIF.Value:=         DM.TBNfeItensNFI_ALIQCBSDIF.Value;
      TBVendasItensVEI_ALIQCBSEFE.Value:=         DM.TBNfeItensNFI_ALIQCBSEFE.Value;
      TBVendasItensVEI_ALIQCBSRED.Value:=         DM.TBNfeItensNFI_ALIQCBSRED.Value;
      TBVendasItensVEI_ALIQCOFINS.Value:=         DM.TBNfeItensNFI_ALIQCOFINS.Value;
      TBVendasItensVEI_ALIQCOFINSST.Value:=       DM.TBNfeItensNFI_ALIQCOFINSST.Value;
      TBVendasItensVEI_ALIQFCP.Value:=            DM.TBNfeItensNFI_ALIQFCP.Value;
      TBVendasItensVEI_ALIQFCPST.Value:=          DM.TBNfeItensNFI_ALIQFCPST.Value;
      TBVendasItensVEI_ALIQIBSCREDPRES.Value:=    DM.TBNfeItensNFI_ALIQIBSCREDPRES.Value;
      TBVendasItensVEI_ALIQIBSMUN.Value:=         DM.TBNfeItensNFI_ALIQIBSMUN.Value;
      TBVendasItensVEI_ALIQIBSMUNDIF.Value:=      DM.TBNfeItensNFI_ALIQIBSMUNDIF.Value;
      TBVendasItensVEI_ALIQIBSMUNEFE.Value:=      DM.TBNfeItensNFI_ALIQIBSMUNEFE.Value;
      TBVendasItensVEI_ALIQIBSMUNRED.Value:=      DM.TBNfeItensNFI_ALIQIBSMUNRED.Value;
      TBVendasItensVEI_ALIQIBSUF.Value:=          DM.TBNfeItensNFI_ALIQIBSUF.Value;
      TBVendasItensVEI_ALIQIBSUFDIF.Value:=       DM.TBNfeItensNFI_ALIQIBSUFDIF.Value;
      TBVendasItensVEI_ALIQIBSUFEFE.Value:=       DM.TBNfeItensNFI_ALIQIBSUFEFE.Value;
      TBVendasItensVEI_ALIQIBSUFRED.Value:=       DM.TBNfeItensNFI_ALIQIBSUFRED.Value;
      TBVendasItensVEI_ALIQICMS.Value:=           DM.TBNfeItensNFI_ALIQICMS.Value;
      TBVendasItensVEI_ALIQICMSADICST.Value:=     DM.TBNfeItensNFI_ALIQICMSADICST.Value;
      TBVendasItensVEI_ALIQICMSINTER.Value:=      DM.TBNfeItensNFI_ALIQICMSINTER.Value;
      TBVendasItensVEI_ALIQICMSINTERPART.Value:=  DM.TBNfeItensNFI_ALIQICMSINTERPART.Value;
      TBVendasItensVEI_ALIQICMSRED.Value:=        DM.TBNfeItensNFI_ALIQICMSRED.Value;
      TBVendasItensVEI_ALIQICMSST.Value:=         DM.TBNfeItensNFI_ALIQICMSST.Value;
      TBVendasItensVEI_ALIQICMSSTRET.Value:=      DM.TBNfeItensNFI_ALIQICMSSTRET.Value;
      TBVendasItensVEI_ALIQII.Value:=             DM.TBNfeItensNFI_ALIQII.Value;
      TBVendasItensVEI_ALIQIPI.Value:=            DM.TBNfeItensNFI_ALIQIPI.Value;
      TBVendasItensVEI_ALIQIS.Value:=             DM.TBNfeItensNFI_ALIQIS.Value;
      TBVendasItensVEI_ALIQISESP.Value:=          DM.TBNfeItensNFI_ALIQISESP.Value;
      TBVendasItensVEI_ALIQISS.Value:=            DM.TBNfeItensNFI_ALIQISS.Value;
      TBVendasItensVEI_ALIQPIS.Value:=            DM.TBNfeItensNFI_ALIQPIS.Value;
      TBVendasItensVEI_ALIQPISST.Value:=          DM.TBNfeItensNFI_ALIQPISST.Value;
      TBVendasItensVEI_ALMOXARIFADO.Value:=       DM.TBNfeItensNFI_ALMOXARIFADO.Value;
      TBVendasItensVEI_BASECOFINS.Value:=         DM.TBNfeItensNFI_BASECOFINS.Value;
      TBVendasItensVEI_BASECOFINSST.Value:=       DM.TBNfeItensNFI_BASECOFINSST.Value;
      TBVendasItensVEI_BASEIBSCBS.Value:=         DM.TBNfeItensNFI_BASEIBSCBS.Value;
      TBVendasItensVEI_BASEICMS.Value:=           DM.TBNfeItensNFI_BASEICMS.Value;
      TBVendasItensVEI_BASEICMSRED.Value:=        DM.TBNfeItensNFI_BASEICMSRED.Value;
      TBVendasItensVEI_BASEICMSST.Value:=         DM.TBNfeItensNFI_BASEICMSST.Value;
      TBVendasItensVEI_BASEICMSSTRET.Value:=      DM.TBNfeItensNFI_BASEICMSSTRET.Value;
      TBVendasItensVEI_BASEII.Value:=             DM.TBNfeItensNFI_BASEII.Value;
      TBVendasItensVEI_BASEIPI.Value:=            DM.TBNfeItensNFI_BASEIPI.Value;
      TBVendasItensVEI_BASEIS.Value:=             DM.TBNfeItensNFI_BASEIS.Value;
      TBVendasItensVEI_BASEISS.Value:=            DM.TBNfeItensNFI_BASEISS.Value;
      TBVendasItensVEI_BASEPIS.Value:=            DM.TBNfeItensNFI_BASEPIS.Value;
      TBVendasItensVEI_BASEPISST.Value:=          DM.TBNfeItensNFI_BASEPISST.Value;
      TBVendasItensVEI_BENEFICIO.Value:=          DM.TBNfeItensNFI_BENEFICIO.Value;
      TBVendasItensVEI_CBSCREDITOPRES.Value:=     DM.TBNfeItensNFI_CBSCREDITOPRES.Value;
      TBVendasItensVEI_CEST.Value:=               DM.TBNfeItensNFI_CEST.Value;
      TBVendasItensVEI_CFOP.Value:=               DM.TBNfeItensNFI_CFOP.Value;
      TBVendasItensVEI_CIDADEISS.Value:=          DM.TBNfeItensNFI_CIDADEISS.Value;
      TBVendasItensVEI_CLASSFISCAL.Value:=        DM.TBNfeItensNFI_CLASSFISCAL.Value;
      TBVendasItensVEI_CLASSTRIBIBSCBS.Value:=    DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value;
      TBVendasItensVEI_CLASSTRIBIS.Value:=        DM.TBNfeItensNFI_CLASSTRIBIS.Value;
      //TBVendasItensVEI_CODIGO.Value:=            DM.TBNfeItensNFI_CODIGO.Value;
      TBVendasItensVEI_CODIGOBARRAS.Value:=       DM.TBNfeItensNFI_CODIGOBARRAS.Value;
      TBVendasItensVEI_CODIGOFAB.Value:=          DM.TBNfeItensNFI_CODIGOFAB.Value;
      TBVendasItensVEI_COMISSAO.Value:=           DM.TBNfeItensNFI_COMISSAO.Value;
      TBVendasItensVEI_COMPLEMENTO.Value:=        DM.TBNfeItensNFI_COMPLEMENTO.Value;
      TBVendasItensVEI_COMPOEBASEICMS.Value:=     DM.TBNfeItensNFI_COMPOEBASEICMS.Value;
      TBVendasItensVEI_COMPOEBASEICMSST.Value:=   DM.TBNfeItensNFI_COMPOEBASEICMSST.Value;
      TBVendasItensVEI_COMPOETOTAL.Value:=        DM.TBNfeItensNFI_COMPOETOTAL.Value;
      TBVendasItensVEI_CONVERSAO.Value:=          DM.TBNfeItensNFI_CONVERSAO.Value;
      TBVendasItensVEI_CSTCOFINS.Value:=          DM.TBNfeItensNFI_CSTCOFINS.Value;
      TBVendasItensVEI_CSTIBSCBS.Value:=          DM.TBNfeItensNFI_CSTIBSCBS.Value;
      TBVendasItensVEI_CSTICMS.Value:=            DM.TBNfeItensNFI_CSTICMS.Value;
      TBVendasItensVEI_CSTIPI.Value:=             DM.TBNfeItensNFI_CSTIPI.Value;
      TBVendasItensVEI_CSTIS.Value:=              DM.TBNfeItensNFI_CSTIS.Value;
      TBVendasItensVEI_CSTPIS.Value:=             DM.TBNfeItensNFI_CSTPIS.Value;
      TBVendasItensVEI_DESCMAX.Value:=            DM.TBNfeItensNFI_DESCMAX.Value;
      TBVendasItensVEI_DESCPORC.Value:=           DM.TBNfeItensNFI_DESCPORC.Value;
      TBVendasItensVEI_DESCRICAO.Value:=          DM.TBNfeItensNFI_DESCRICAO.Value;
      TBVendasItensVEI_DESCVALOR.Value:=          DM.TBNfeItensNFI_DESCVALOR.Value;
      TBVendasItensVEI_DESONERACAO.Value:=        DM.TBNfeItensNFI_DESONERACAO.Value;
      TBVendasItensVEI_DFEREF.Value:=             DM.TBNfeItensNFI_DFEREF.Value;
      TBVendasItensVEI_DFEREFITEM.Value:=         DM.TBNfeItensNFI_DFEREFITEM.Value;
      TBVendasItensVEI_DICNPJ.Value:=             DM.TBNfeItensNFI_DICNPJ.Value;
      TBVendasItensVEI_DIDATA.Value:=             DM.TBNfeItensNFI_DIDATA.Value;
      TBVendasItensVEI_DIDESEMBARACODATA.Value:=  DM.TBNfeItensNFI_DIDESEMBARACODATA.Value;
      TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:= DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value;
      TBVendasItensVEI_DIDESEMBARACOUF.Value:=    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value;
      TBVendasItensVEI_DIEXPORTADORCOD.Value:=    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value;
      TBVendasItensVEI_DIINTERMEDIO.Value:=       DM.TBNfeItensNFI_DIINTERMEDIO.Value;
      TBVendasItensVEI_DINUMERO.Value:=           DM.TBNfeItensNFI_DINUMERO.Value;
      TBVendasItensVEI_DITERCEIROUF.Value:=       DM.TBNfeItensNFI_DITERCEIROUF.Value;
      TBVendasItensVEI_DITRANSPORTE.Value:=       DM.TBNfeItensNFI_DITRANSPORTE.Value;
      TBVendasItensVEI_DIVALORAFRMM.Value:=       DM.TBNfeItensNFI_DIVALORAFRMM.Value;
      //TBVendasItensVEI_DTENTREGA.Value:=       nao tem DM.TBNfeItensNFI_DTENTREGA.Value;
      TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=   DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value;
      TBVendasItensVEI_EXCECAO.Value:=            DM.TBNfeItensNFI_EXCECAO.Value;
      TBVendasItensVEI_EXCHAVEACESSO.Value:=      DM.TBNfeItensNFI_EXCHAVEACESSO.Value;
      TBVendasItensVEI_EXDRAWBACK.Value:=         DM.TBNfeItensNFI_EXDRAWBACK.Value;
      TBVendasItensVEI_EXQUANTIDADE.Value:=       DM.TBNfeItensNFI_EXQUANTIDADE.Value;
      TBVendasItensVEI_EXREGISTRO.Value:=         DM.TBNfeItensNFI_EXREGISTRO.Value;
      TBVendasItensVEI_FCI.Value:=                DM.TBNfeItensNFI_FCI.Value;
      TBVendasItensVEI_IBSCREDITOPRES.Value:=     DM.TBNfeItensNFI_IBSCREDITOPRES.Value;
      TBVendasItensVEI_INCENTIVOISS.Value:=       DM.TBNfeItensNFI_INCENTIVOISS.Value;
      TBVendasItensVEI_INDICADORISS.Value:=       DM.TBNfeItensNFI_INDICADORISS.Value;
      TBVendasItensVEI_INFOADICIONAL.Value:=      DM.TBNfeItensNFI_INFOADICIONAL.Value;
      TBVendasItensVEI_LOCALIZACAO.Value:=        DM.TBNfeItensNFI_LOCALIZACAO.Value;
      TBVendasItensVEI_LOTE.Value:=               DM.TBNfeItensNFI_LOTE.Value;
      TBVendasItensVEI_LUCROPORC.Value:=          DM.TBNfeItensNFI_LUCROPORC.Value;
      TBVendasItensVEI_LUCROVALOR.Value:=         DM.TBNfeItensNFI_LUCROVALOR.Value;
      TBVendasItensVEI_MODICMS.Value:=            DM.TBNfeItensNFI_MODICMS.Value;
      TBVendasItensVEI_MODICMSST.Value:=          DM.TBNfeItensNFI_MODICMSST.Value;
      //TBVendasItensVEI_NOTA.Value:=
      TBVendasItensVEI_ORIGEM.Value:=             DM.TBNfeItensNFI_ORIGEM.Value;
      TBVendasItensVEI_PAISISS.Value:=            DM.TBNfeItensNFI_PAISISS.Value;
      TBVendasItensVEI_PEDIDOCLIENTE.Value:=      DM.TBNfeItensNFI_PEDIDOCLIENTE.Value;
      TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=  DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value;
      TBVendasItensVEI_PESO.Value:=               DM.TBNfeItensNFI_PESO.Value;
      TBVendasItensVEI_PESOTOTAL.Value:=          DM.TBNfeItensNFI_PESOTOTAL.Value;
      TBVendasItensVEI_PRECOCUSTO.Value:=         DM.TBNfeItensNFI_PRECOCUSTO.Value;
      TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value;
      TBVendasItensVEI_PROCESSOISS.Value:=        DM.TBNfeItensNFI_PROCESSOISS.Value;
      TBVendasItensVEI_PRODUTO.Value:=            DM.TBNfeItensNFI_PRODUTO.Value;
      TBVendasItensVEI_PRODUTOREAL.Value:=        DM.TBNfeItensNFI_PRODUTOREAL.Value;
      TBVendasItensVEI_QUANTIDADE.Value:=         DM.TBNfeItensNFI_QUANTIDADE.Value;
      TBVendasItensVEI_QUANTIDADETROCA.Value:=    DM.TBNfeItensNFI_QUANTIDADETROCA.Value;
      TBVendasItensVEI_SEQUENCIA.Value:=          DM.TBNfeItensNFI_SEQUENCIA.Value;
      TBVendasItensVEI_SERVICOISS.Value:=         DM.TBNfeItensNFI_SERVICOISS.Value;
      TBVendasItensVEI_SOMACOFINSST.Value:=       DM.TBNfeItensNFI_SOMACOFINSST.Value;
      TBVendasItensVEI_SOMAPISST.Value:=          DM.TBNfeItensNFI_SOMAPISST.Value;
      TBVendasItensVEI_TIPO.Value:=               DM.TBNfeItensNFI_TIPO.Value;
      TBVendasItensVEI_TIPOISS.Value:=            DM.TBNfeItensNFI_TIPOISS.Value;
      TBVendasItensVEI_UNIDADE.Value:=            DM.TBNfeItensNFI_UNIDADE.Value;
      TBVendasItensVEI_VALORACESSORIAS.Value:=    DM.TBNfeItensNFI_VALORACESSORIAS.Value;
      TBVendasItensVEI_VALORADUANA.Value:=        DM.TBNfeItensNFI_VALORADUANA.Value;
      TBVendasItensVEI_VALORCBS.Value:=           DM.TBNfeItensNFI_VALORCBS.Value;
      TBVendasItensVEI_VALORCBSCREDPRES.Value:=   DM.TBNfeItensNFI_VALORCBSCREDPRES.Value;
      TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=DM.TBNfeItensNFI_VALORCBSCREDPRESSUS.Value;
      TBVendasItensVEI_VALORCBSDEV.Value:=        DM.TBNfeItensNFI_VALORCBSDEV.Value;
      TBVendasItensVEI_VALORCBSDIF.Value:=        DM.TBNfeItensNFI_VALORCBSDIF.Value;
      TBVendasItensVEI_VALORCOFINS.Value:=        DM.TBNfeItensNFI_VALORCOFINS.Value;
      TBVendasItensVEI_VALORCOFINSST.Value:=      DM.TBNfeItensNFI_VALORCOFINSST.Value;
      TBVendasItensVEI_VALORCOMISSAO.Value:=      DM.TBNfeItensNFI_VALORCOMISSAO.Value;
      TBVendasItensVEI_VALORFCP.Value:=           DM.TBNfeItensNFI_VALORFCP.Value;
      TBVendasItensVEI_VALORFCPST.Value:=         DM.TBNfeItensNFI_VALORFCPST.Value;
      TBVendasItensVEI_VALORFRETE.Value:=         DM.TBNfeItensNFI_VALORFRETE.Value;
      TBVendasItensVEI_VALORIBS.Value:=           DM.TBNfeItensNFI_VALORIBS.Value;
      TBVendasItensVEI_VALORIBSCREDPRES.Value:=   DM.TBNfeItensNFI_VALORIBSCREDPRES.Value;
      TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=DM.TBNfeItensNFI_VALORIBSCREDPRESSUS.Value;
      TBVendasItensVEI_VALORIBSMUN.Value:=        DM.TBNfeItensNFI_VALORIBSMUN.Value;
      TBVendasItensVEI_VALORIBSMUNDEV.Value:=     DM.TBNfeItensNFI_VALORIBSMUNDEV.Value;
      TBVendasItensVEI_VALORIBSMUNDIF.Value:=     DM.TBNfeItensNFI_VALORIBSMUNDIF.Value;
      TBVendasItensVEI_VALORIBSUF.Value:=         DM.TBNfeItensNFI_VALORIBSUF.Value;
      TBVendasItensVEI_VALORIBSUFDEV.Value:=      DM.TBNfeItensNFI_VALORIBSUFDEV.Value;
      TBVendasItensVEI_VALORIBSUFDIF.Value:=      DM.TBNfeItensNFI_VALORIBSUFDIF.Value;
      TBVendasItensVEI_VALORICMS.Value:=          DM.TBNfeItensNFI_VALORICMS.Value;
      TBVendasItensVEI_VALORICMSCREDSN.Value:=    DM.TBNfeItensNFI_VALORICMSCREDSN.Value;
      TBVendasItensVEI_VALORICMSDESONERADO.Value:=DM.TBNfeItensNFI_VALORICMSDESONERADO.Value;
      TBVendasItensVEI_VALORICMSST.Value:=        DM.TBNfeItensNFI_VALORICMSST.Value;
      TBVendasItensVEI_VALORICMSSTRET.Value:=     DM.TBNfeItensNFI_VALORICMSSTRET.Value;
      TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value;
      TBVendasItensVEI_VALORICMSUFDEST.Value:=    DM.TBNfeItensNFI_VALORICMSUFDEST.Value;
      TBVendasItensVEI_VALORICMSUFREMET.Value:=   DM.TBNfeItensNFI_VALORICMSUFREMET.Value;
      TBVendasItensVEI_VALORII.Value:=            DM.TBNfeItensNFI_VALORII.Value;
      TBVendasItensVEI_VALORIOF.Value:=           DM.TBNfeItensNFI_VALORIOF.Value;
      TBVendasItensVEI_VALORIPI.Value:=           DM.TBNfeItensNFI_VALORIPI.Value;
      TBVendasItensVEI_VALORIS.Value:=            DM.TBNfeItensNFI_VALORIS.Value;
      TBVendasItensVEI_VALORISS.Value:=           DM.TBNfeItensNFI_VALORISS.Value;
      TBVendasItensVEI_VALORISSDEDUCAO.Value:=    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value;
      TBVendasItensVEI_VALORISSDESCCOND.Value:=   DM.TBNfeItensNFI_VALORISSDESCCOND.Value;
      TBVendasItensVEI_VALORISSDESCINCOND.Value:= DM.TBNfeItensNFI_VALORISSDESCINCOND.Value;
      TBVendasItensVEI_VALORISSOUTROS.Value:=     DM.TBNfeItensNFI_VALORISSOUTROS.Value;
      TBVendasItensVEI_VALORISSRETENCAO.Value:=   DM.TBNfeItensNFI_VALORISSRETENCAO.Value;
      TBVendasItensVEI_VALORPIS.Value:=           DM.TBNfeItensNFI_VALORPIS.Value;
      TBVendasItensVEI_VALORPISST.Value:=         DM.TBNfeItensNFI_VALORPISST.Value;
      TBVendasItensVEI_VALORSEGURO.Value:=        DM.TBNfeItensNFI_VALORSEGURO.Value;
      TBVendasItensVEI_VALORTOTAL.Value:=         DM.TBNfeItensNFI_VALORTOTAL.Value;
      TBVendasItensVEI_VALORTOTALBRUTO.Value:=    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value;
      TBVendasItensVEI_VALORTRIBUTOS.Value:=      DM.TBNfeItensNFI_VALORTRIBUTOS.Value;
      TBVendasItensVEI_VALORTRIBUTOSEST.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value;
      TBVendasItensVEI_VALORTRIBUTOSFED.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value;
      TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value;
      TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value;
      TBVendasItensVEI_VALORUNIT.Value:=          DM.TBNfeItensNFI_VALORUNIT.Value;
      TBVendasItensVEI_VENDA.Value:=              DM.TBNfeNFE_VENDA.Value; //código do pedido está na capa.
      {$ENDREGION}
      TBVendasItens.Post;

      DM.TBNfeItens.Next;
    end;
    TBVendasItens.Close;

    //Lê o registro atualizado.
    DM.TBVendasItens.Close;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    DM.TBVendas.Open;
    DM.TBVendasItens.Open;
  end;
end;

procedure TFormNfe.SincronizarPedidoDeVendaQuebraGalho;
begin
  //Rotina para deixar o pedido de venda igual à NFe.
  if not DM.TBNfeNFE_VENDA.IsNull then
  begin
    TBVendas.Close;
    TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    TBVendas.Open;
    TBVendas.Edit;
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    {$REGION 'CAMPOS VENDAS'}
    TBVendasVED_ALIQICMSCREDSN.Value:=     DM.TBNfeNFE_ALIQICMSCREDSN.Value;
    TBVendasVED_BAIRRO.Value:=             DM.TBNfeNFE_BAIRRO.Value;
    //TBVendasVED_BAIXADATA.Value:=          DM.TBNfeNFE_BAIXADATA.Value;
    //TBVendasVED_BAIXAPOR.Value:=           DM.TBNfeNFE_BAIXAPOR.Value;
    TBVendasVED_BASECOFINS.Value:=         DM.TBNfeNFE_BASECOFINS.Value;
    TBVendasVED_BASECOFINSST.Value:=       DM.TBNfeNFE_BASECOFINSST.Value;
    TBVendasVED_BASEICMS.Value:=           DM.TBNfeNFE_BASEICMS.Value;
    TBVendasVED_BASEICMSST.Value:=         DM.TBNfeNFE_BASEICMSST.Value;
    TBVendasVED_BASEII.Value:=             DM.TBNfeNFE_BASEII.Value;
    TBVendasVED_BASEIPI.Value:=            DM.TBNfeNFE_BASEIPI.Value;
    TBVendasVED_BASEISS.Value:=            DM.TBNfeNFE_BASEISS.Value;
    TBVendasVED_BASEPIS.Value:=            DM.TBNfeNFE_BASEPIS.Value;
    TBVendasVED_BASEPISST.Value:=          DM.TBNfeNFE_BASEPISST.Value;
    TBVendasVED_CEP.Value:=                DM.TBNfeNFE_CEP.Value;
    TBVendasVED_CFOP.Value:=               DM.TBNfeNFE_CFOP.Value;
    TBVendasVED_CFOPDESC.Value:=           DM.TBNfeNFE_CFOPDESC.Value;
    TBVendasVED_CIDADE.Value:=             DM.TBNfeNFE_CIDADE.Value;
    TBVendasVED_CIDADECODIGO.Value:=       DM.TBNfeNFE_CIDADECODIGO.Value;
    TBVendasVED_CLIENTE.Value:=            DM.TBNfeNFE_CLIENTE.Value;
    TBVendasVED_CNPJ.Value:=               DM.TBNfeNFE_CNPJ.Value;
    //TBVendasVED_CODIGO.Value:=             DM.TBNfeNFE_CODIGO.Value;
    //TBVendasVED_CODIMPORTACAO.Value:=      DM.TBNfeNFE_CODIMPORTACAO.Value;
    TBVendasVED_COMISSAO.Value:=           DM.TBNfeNFE_COMISSAO.Value;
    TBVendasVED_COMISSAOPOR.Value:=        DM.TBNfeNFE_COMISSAOPOR.Value;
    TBVendasVED_COMPLEMENTO.Value:=        DM.TBNfeNFE_COMPLEMENTO.Value;
    TBVendasVED_CONDICAO.Value:=           DM.TBNfeNFE_CONDICAO.Value;
    TBVendasVED_CONDICAOMEMO.Value:=       DM.TBNfeNFE_CONDICAOMEMO.Value;
    //TBVendasVED_CONFERIDO.Value:=
    //TBVendasVED_CONFERIDODATA.Value:=
    //TBVendasVED_CONFERIDOPOR.Value:=
    TBVendasVED_CONTATO.Value:=            DM.TBNfeNFE_CONTATO.Value;
    TBVendasVED_CPF.Value:=                DM.TBNfeNFE_CPF.Value;
    TBVendasVED_CUSTOTOTAL.Value:=         DM.TBNfeNFE_CUSTOTOTAL.Value;
    //TBVendasVED_DAV.Value:=
    TBVendasVED_DESCPORC.Value:=           DM.TBNfeNFE_DESCPORC.Value;
    TBVendasVED_DESCPORCCLIENTE.Value:=    DM.TBNfeNFE_DESCPORCCLIENTE.Value;
    TBVendasVED_DESCPORCCONDICAO.Value:=   DM.TBNfeNFE_DESCPORCCONDICAO.Value;
    TBVendasVED_DESCVALOR.Value:=          DM.TBNfeNFE_DESCVALOR.Value;
    TBVendasVED_DESTACARIMPOSTOS.Value:=   DM.TBNfeNFE_DESTACARIMPOSTOS.Value;
    TBVendasVED_DIAPREFERENCIAL.Value:=    DM.TBNfeNFE_DIAPREFERENCIAL.Value;
    TBVendasVED_DTATUALIZACAO.Value:=      DM.TBNfeNFE_DTATUALIZACAO.Value;
    //TBVendasVED_DTCADASTRO.Value:=         DM.TBNfeNFE_DTCADASTRO.Value;
    //TBVendasVED_DTEMISSAO.Value:=          DM.TBNfeNFE_DTEMISSAO.Value;
    //TBVendasVED_DTENTREGA.Value:=          nao tem DM.TBNfeNFE_DTPRESTSERVICO.Value;
    TBVendasVED_DTPRESTSERVICO.Value:=     DM.TBNfeNFE_DTPRESTSERVICO.Value;
    //TBVendasVED_DTSAIDA.Value:=            DM.TBNfeNFE_DTSAIDA.Value;
    TBVendasVED_ENDERECO.Value:=           DM.TBNfeNFE_ENDERECO.Value;
    TBVendasVED_ENTRADASAIDA.Value:=       DM.TBNfeNFE_ENTRADASAIDA.Value;
    //TBVendasVED_ENTREGUE.Value:=           DM.TBNfeNFE_ENTREGUE.Value;
    TBVendasVED_ESPECIE.Value:=            DM.TBNfeNFE_ESPECIE.Value;
    TBVendasVED_ESTADO.Value:=             DM.TBNfeNFE_ESTADO.Value;
    TBVendasVED_ESTADOCODIGO.Value:=       DM.TBNfeNFE_ESTADOCODIGO.Value;
    TBVendasVED_EXLOCAL.Value:=            DM.TBNfeNFE_EXLOCAL.Value;
    TBVendasVED_EXPEDIDOPOR.Value:=        DM.TBNfeNFE_EXPEDIDOPOR.Value;
    TBVendasVED_EXUFSAIDA.Value:=          DM.TBNfeNFE_EXUFSAIDA.Value;
    TBVendasVED_FONE1.Value:=              DM.TBNfeNFE_FONE1.Value;
    TBVendasVED_FORMAPAGTO.Value:=         DM.TBNfeNFE_FORMAPAGTO.Value;
    TBVendasVED_FRETE.Value:=              DM.TBNfeNFE_FRETE.Value;
    TBVendasVED_IDESTRANGEIRO.Value:=      DM.TBNfeNFE_IDESTRANGEIRO.Value;
    TBVendasVED_IE.Value:=                 DM.TBNfeNFE_IE.Value;
    TBVendasVED_INFOADICFISCO.Value:=      DM.TBNfeNFE_INFOADICFISCO.Value;
    TBVendasVED_INFOCOMPLEMENTAR.Value:=   DM.TBNfeNFE_INFOCOMPLEMENTAR.Value;
    TBVendasVED_LACRES.Value:=             DM.TBNfeNFE_LACRES.Value;
    TBVendasVED_LUCROPORC.Value:=          DM.TBNfeNFE_LUCROPORC.Value;
    TBVendasVED_LUCROVALOR.Value:=         DM.TBNfeNFE_LUCROVALOR.Value;
    TBVendasVED_MANUAL.Value:=             DM.TBNfeNFE_MANUAL.Value;
    TBVendasVED_MARCA.Value:=              DM.TBNfeNFE_MARCA.Value;
    TBVendasVED_MOVIMENTAESTOQUE.Value:=   DM.TBNfeNFE_MOVIMENTAESTOQUE.Value;
    TBVendasVED_MOVIMENTAFINANCEIRO.Value:=DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value;
    //TBVendasVED_NFCE.Value:=
    TBVendasVED_NFE.Value:=                DM.TBNfeNFE_CODIGO.Value; //campo a mais no quebra galho.
    TBVendasVED_NOME.Value:=               DM.TBNfeNFE_NOME.Value;
    //TBVendasVED_NOTA.Value:=               DM.TBNfeNFE_NOTA.Value;
    TBVendasVED_NUMERO.Value:=             DM.TBNfeNFE_NUMERO.Value;
    TBVendasVED_OBSERVACOES.Value:=        DM.TBNfeNFE_OBSERVACOES.Value;
    TBVendasVED_PAIS.Value:=               DM.TBNfeNFE_PAIS.Value;
    TBVendasVED_PAISCODIGO.Value:=         DM.TBNfeNFE_PAISCODIGO.Value;
    TBVendasVED_PEDIDOCLIENTE.Value:=      DM.TBNfeNFE_PEDIDOCLIENTE.Value;
    TBVendasVED_PESOBRUTO.Value:=          DM.TBNfeNFE_PESOBRUTO.Value;
    TBVendasVED_PESOLIQ.Value:=            DM.TBNfeNFE_PESOLIQ.Value;
    //TBVendasVED_PRODUCAO.Value:=         nao tem DM.TBNfeNFE_PRODUCAO.Value;
    TBVendasVED_REBOQUEPLACA.Value:=       DM.TBNfeNFE_REBOQUEPLACA.Value;
    TBVendasVED_REBOQUEPLACAUF.Value:=     DM.TBNfeNFE_REBOQUEPLACAUF.Value;
    TBVendasVED_REBOQUERNTC.Value:=        DM.TBNfeNFE_REBOQUERNTC.Value;
    TBVendasVED_RG.Value:=                 DM.TBNfeNFE_RG.Value;
    TBVendasVED_SUFRAMA.Value:=            DM.TBNfeNFE_SUFRAMA.Value;
    TBVendasVED_SEQUENCIAITEM.Value:=      DM.TBNfeNFE_SEQUENCIAITEM.Value;
    TBVendasVED_STATUS.Value:=             DM.TBNfeNFE_STATUS.Value; //campo a mais no quebra galho.
    TBVendasVED_TABELAPRECO.Value:=        DM.TBNfeNFE_TABELAPRECO.Value;
    TBVendasVED_TIPOATENDIMENTO.Value:=    DM.TBNfeNFE_TIPOATENDIMENTO.Value;
    TBVendasVED_TIPOCONSUMIDOR.Value:=     DM.TBNfeNFE_TIPOCONSUMIDOR.Value;
    TBVendasVED_TIPOOPERACAO.Value:=       DM.TBNfeNFE_TIPOOPERACAO.Value;
    TBVendasVED_TOTALADUANA.Value:=        DM.TBNfeNFE_TOTALADUANA.Value;
    TBVendasVED_TOTALBRUTO.Value:=         DM.TBNfeNFE_TOTALBRUTO.Value;
    TBVendasVED_TOTALCOFINS.Value:=        DM.TBNfeNFE_TOTALCOFINS.Value;
    TBVendasVED_TOTALCOFINSST.Value:=      DM.TBNfeNFE_TOTALCOFINSST.Value;
    TBVendasVED_TOTALCOMISSAO.Value:=      DM.TBNfeNFE_TOTALCOMISSAO.Value;
    TBVendasVED_TOTALFCP.Value:=           DM.TBNfeNFE_TOTALFCP.Value;
    TBVendasVED_TOTALFCPST.Value:=         DM.TBNfeNFE_TOTALFCPST.Value;
    TBVendasVED_TOTALICMS.Value:=          DM.TBNfeNFE_TOTALICMS.Value;
    TBVendasVED_TOTALICMSCREDSN.Value:=    DM.TBNfeNFE_TOTALICMSCREDSN.Value;
    TBVendasVED_TOTALICMSST.Value:=        DM.TBNfeNFE_TOTALICMSST.Value;
    TBVendasVED_TOTALICMSUFDEST.Value:=    DM.TBNfeNFE_TOTALICMSUFDEST.Value;
    TBVendasVED_TOTALICMSUFREMET.Value:=   DM.TBNfeNFE_TOTALICMSUFREMET.Value;
    TBVendasVED_TOTALII.Value:=            DM.TBNfeNFE_TOTALII.Value;
    TBVendasVED_TOTALIOF.Value:=           DM.TBNfeNFE_TOTALIOF.Value;
    TBVendasVED_TOTALIPI.Value:=           DM.TBNfeNFE_TOTALIPI.Value;
    TBVendasVED_TOTALISS.Value:=           DM.TBNfeNFE_TOTALISS.Value;
    TBVendasVED_TOTALISSDEDUCAO.Value:=    DM.TBNfeNFE_TOTALISSDEDUCAO.Value;
    TBVendasVED_TOTALISSDESCCOND.Value:=   DM.TBNfeNFE_TOTALISSDESCCOND.Value;
    TBVendasVED_TOTALISSDESCINCOND.Value:= DM.TBNfeNFE_TOTALISSDESCINCOND.Value;
    TBVendasVED_TOTALISSOUTROS.Value:=     DM.TBNfeNFE_TOTALISSOUTROS.Value;
    TBVendasVED_TOTALISSRETENCAO.Value:=   DM.TBNfeNFE_TOTALISSRETENCAO.Value;
    TBVendasVED_TOTALITENS.Value:=         DM.TBNfeNFE_TOTALITENS.Value;
    TBVendasVED_TOTALPIS.Value:=           DM.TBNfeNFE_TOTALPIS.Value;
    TBVendasVED_TOTALPISST.Value:=         DM.TBNfeNFE_TOTALPISST.Value;
    TBVendasVED_TOTALPRODUTOS.Value:=      DM.TBNfeNFE_TOTALPRODUTOS.Value;
    TBVendasVED_TOTALSERVICOS.Value:=      DM.TBNfeNFE_TOTALSERVICOS.Value;
    TBVendasVED_TOTALTRIBUTOS.Value:=      DM.TBNfeNFE_TOTALTRIBUTOS.Value;
    TBVendasVED_TOTALTRIBUTOSEST.Value:=   DM.TBNfeNFE_TOTALTRIBUTOSEST.Value;
    TBVendasVED_TOTALTRIBUTOSFED.Value:=   DM.TBNfeNFE_TOTALTRIBUTOSFED.Value;
    TBVendasVED_TOTALTRIBUTOSIMP.Value:=   DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value;
    TBVendasVED_TOTALTRIBUTOSMUN.Value:=   DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value;
    TBVendasVED_TRANSPCIDADE.Value:=       DM.TBNfeNFE_TRANSPCIDADE.Value;
    TBVendasVED_TRANSPCNPJ.Value:=         DM.TBNfeNFE_TRANSPCNPJ.Value;
    TBVendasVED_TRANSPCPF.Value:=          DM.TBNfeNFE_TRANSPCPF.Value;
    TBVendasVED_TRANSPEMAIL.Value:=        DM.TBNfeNFE_TRANSPEMAIL.Value;
    TBVendasVED_TRANSPENDERECO.Value:=     DM.TBNfeNFE_TRANSPENDERECO.Value;
    TBVendasVED_TRANSPESTADO.Value:=       DM.TBNfeNFE_TRANSPESTADO.Value;
    TBVendasVED_TRANSPFONE.Value:=         DM.TBNfeNFE_TRANSPFONE.Value;
    TBVendasVED_TRANSPIE.Value:=           DM.TBNfeNFE_TRANSPIE.Value;
    TBVendasVED_TRANSPNOME.Value:=         DM.TBNfeNFE_TRANSPNOME.Value;
    TBVendasVED_TRANSPORTADORA.Value:=     DM.TBNfeNFE_TRANSPORTADORA.Value;
    TBVendasVED_USUARIO.Value:=            DM.TBNfeNFE_USUARIO.Value;
    TBVendasVED_VALORDESPACES.Value:=      DM.TBNfeNFE_VALORDESPACES.Value;
    TBVendasVED_VALORFRETE.Value:=         DM.TBNfeNFE_VALORFRETE.Value;
    TBVendasVED_VALORSEGURO.Value:=        DM.TBNfeNFE_VALORSEGURO.Value;
    TBVendasVED_VALORTOTAL.Value:=         DM.TBNfeNFE_VALORTOTAL.Value;
    TBVendasVED_VEICULOPLACA.Value:=       DM.TBNfeNFE_VEICULOPLACA.Value;
    TBVendasVED_VEICULOPLACAUF.Value:=     DM.TBNfeNFE_VEICULOPLACAUF.Value;
    TBVendasVED_VEICULORNTC.Value:=        DM.TBNfeNFE_VEICULORNTC.Value;
    TBVendasVED_VENDEDOR.Value:=           DM.TBNfeNFE_VENDEDOR.Value;
    //TBVendasVED_VIAINTERNET.Value:=        DM.TBNfeNFE_VIAINTERNET.Value;
    //TBVendasVED_VIAINTERNETSTATUS.Value:=  DM.TBNfeNFE_VIAINTERNETSTATUS.Value;
    TBVendasVED_VOLUMES.Value:=            DM.TBNfeNFE_VOLUMES.Value;
    TBVendasVED_VOLUMESNUM.Value:=         DM.TBNfeNFE_VOLUMESNUM.Value;
    {$ENDREGION}
    TBVendas.Post;

    //elimina os itens da venda e atualiza com os itens da NFe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from VENDASITENS where VEI_VENDA=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    DM.QYAux.ExecSQL;
    //insere novamente os itens da venda.
    TBVendasItens.Open;
    DM.TBNfeItens.First;
    while not DM.TBNfeItens.Eof do
    begin
      TBVendasItens.Insert;
      {$REGION 'CAMPOS VENDASITENS'}
      TBVendasItensVEI_ALIQCOFINS.Value:=         DM.TBNfeItensNFI_ALIQCOFINS.Value;
      TBVendasItensVEI_ALIQCOFINSST.Value:=       DM.TBNfeItensNFI_ALIQCOFINSST.Value;
      TBVendasItensVEI_ALIQFCP.Value:=            DM.TBNfeItensNFI_ALIQFCP.Value;
      TBVendasItensVEI_ALIQFCPST.Value:=          DM.TBNfeItensNFI_ALIQFCPST.Value;
      TBVendasItensVEI_ALIQICMS.Value:=           DM.TBNfeItensNFI_ALIQICMS.Value;
      TBVendasItensVEI_ALIQICMSADICST.Value:=     DM.TBNfeItensNFI_ALIQICMSADICST.Value;
      TBVendasItensVEI_ALIQICMSINTER.Value:=      DM.TBNfeItensNFI_ALIQICMSINTER.Value;
      TBVendasItensVEI_ALIQICMSINTERPART.Value:=  DM.TBNfeItensNFI_ALIQICMSINTERPART.Value;
      TBVendasItensVEI_ALIQICMSRED.Value:=        DM.TBNfeItensNFI_ALIQICMSRED.Value;
      TBVendasItensVEI_ALIQICMSST.Value:=         DM.TBNfeItensNFI_ALIQICMSST.Value;
      TBVendasItensVEI_ALIQICMSSTRET.Value:=      DM.TBNfeItensNFI_ALIQICMSSTRET.Value;
      TBVendasItensVEI_ALIQII.Value:=             DM.TBNfeItensNFI_ALIQII.Value;
      TBVendasItensVEI_ALIQIPI.Value:=            DM.TBNfeItensNFI_ALIQIPI.Value;
      TBVendasItensVEI_ALIQISS.Value:=            DM.TBNfeItensNFI_ALIQISS.Value;
      TBVendasItensVEI_ALIQPIS.Value:=            DM.TBNfeItensNFI_ALIQPIS.Value;
      TBVendasItensVEI_ALIQPISST.Value:=          DM.TBNfeItensNFI_ALIQPISST.Value;
      TBVendasItensVEI_ALMOXARIFADO.Value:=       DM.TBNfeItensNFI_ALMOXARIFADO.Value;
      TBVendasItensVEI_BASECOFINS.Value:=         DM.TBNfeItensNFI_BASECOFINS.Value;
      TBVendasItensVEI_BASECOFINSST.Value:=       DM.TBNfeItensNFI_BASECOFINSST.Value;
      TBVendasItensVEI_BASEICMS.Value:=           DM.TBNfeItensNFI_BASEICMS.Value;
      TBVendasItensVEI_BASEICMSRED.Value:=        DM.TBNfeItensNFI_BASEICMSRED.Value;
      TBVendasItensVEI_BASEICMSST.Value:=         DM.TBNfeItensNFI_BASEICMSST.Value;
      TBVendasItensVEI_BASEICMSSTRET.Value:=      DM.TBNfeItensNFI_BASEICMSSTRET.Value;
      TBVendasItensVEI_BASEII.Value:=             DM.TBNfeItensNFI_BASEII.Value;
      TBVendasItensVEI_BASEIPI.Value:=            DM.TBNfeItensNFI_BASEIPI.Value;
      TBVendasItensVEI_BASEISS.Value:=            DM.TBNfeItensNFI_BASEISS.Value;
      TBVendasItensVEI_BASEPIS.Value:=            DM.TBNfeItensNFI_BASEPIS.Value;
      TBVendasItensVEI_BASEPISST.Value:=          DM.TBNfeItensNFI_BASEPISST.Value;
      TBVendasItensVEI_BENEFICIO.Value:=          DM.TBNfeItensNFI_BENEFICIO.Value;
      TBVendasItensVEI_CEST.Value:=               DM.TBNfeItensNFI_CEST.Value;
      TBVendasItensVEI_CFOP.Value:=               DM.TBNfeItensNFI_CFOP.Value;
      TBVendasItensVEI_CIDADEISS.Value:=          DM.TBNfeItensNFI_CIDADEISS.Value;
      TBVendasItensVEI_CLASSFISCAL.Value:=        DM.TBNfeItensNFI_CLASSFISCAL.Value;
      //TBVendasItensVEI_CODIGO.Value:=            DM.TBNfeItensNFI_CODIGO.Value;
      TBVendasItensVEI_CODIGOBARRAS.Value:=       DM.TBNfeItensNFI_CODIGOBARRAS.Value;
      TBVendasItensVEI_CODIGOFAB.Value:=          DM.TBNfeItensNFI_CODIGOFAB.Value;
      TBVendasItensVEI_COMISSAO.Value:=           DM.TBNfeItensNFI_COMISSAO.Value;
      TBVendasItensVEI_COMPLEMENTO.Value:=        DM.TBNfeItensNFI_COMPLEMENTO.Value;
      TBVendasItensVEI_COMPOEBASEICMS.Value:=     DM.TBNfeItensNFI_COMPOEBASEICMS.Value;
      TBVendasItensVEI_COMPOEBASEICMSST.Value:=   DM.TBNfeItensNFI_COMPOEBASEICMSST.Value;
      TBVendasItensVEI_COMPOETOTAL.Value:=        DM.TBNfeItensNFI_COMPOETOTAL.Value;
      TBVendasItensVEI_CONVERSAO.Value:=          DM.TBNfeItensNFI_CONVERSAO.Value;
      TBVendasItensVEI_CSTCOFINS.Value:=          DM.TBNfeItensNFI_CSTCOFINS.Value;
      TBVendasItensVEI_CSTICMS.Value:=            DM.TBNfeItensNFI_CSTICMS.Value;
      TBVendasItensVEI_CSTIPI.Value:=             DM.TBNfeItensNFI_CSTIPI.Value;
      TBVendasItensVEI_CSTPIS.Value:=             DM.TBNfeItensNFI_CSTPIS.Value;
      TBVendasItensVEI_DESCMAX.Value:=            DM.TBNfeItensNFI_DESCMAX.Value;
      TBVendasItensVEI_DESCPORC.Value:=           DM.TBNfeItensNFI_DESCPORC.Value;
      TBVendasItensVEI_DESCRICAO.Value:=          DM.TBNfeItensNFI_DESCRICAO.Value;
      TBVendasItensVEI_DESCVALOR.Value:=          DM.TBNfeItensNFI_DESCVALOR.Value;
      TBVendasItensVEI_DESONERACAO.Value:=        DM.TBNfeItensNFI_DESONERACAO.Value;
      TBVendasItensVEI_DICNPJ.Value:=             DM.TBNfeItensNFI_DICNPJ.Value;
      TBVendasItensVEI_DIDATA.Value:=             DM.TBNfeItensNFI_DIDATA.Value;
      TBVendasItensVEI_DIDESEMBARACODATA.Value:=  DM.TBNfeItensNFI_DIDESEMBARACODATA.Value;
      TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:= DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value;
      TBVendasItensVEI_DIDESEMBARACOUF.Value:=    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value;
      TBVendasItensVEI_DIEXPORTADORCOD.Value:=    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value;
      TBVendasItensVEI_DIINTERMEDIO.Value:=       DM.TBNfeItensNFI_DIINTERMEDIO.Value;
      TBVendasItensVEI_DINUMERO.Value:=           DM.TBNfeItensNFI_DINUMERO.Value;
      TBVendasItensVEI_DITERCEIROUF.Value:=       DM.TBNfeItensNFI_DITERCEIROUF.Value;
      TBVendasItensVEI_DITRANSPORTE.Value:=       DM.TBNfeItensNFI_DITRANSPORTE.Value;
      TBVendasItensVEI_DIVALORAFRMM.Value:=       DM.TBNfeItensNFI_DIVALORAFRMM.Value;
      //TBVendasItensVEI_DTENTREGA.Value:=          nao tem DM.TBNfeItensNFI_DTENTREGA.Value;
      TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=   DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value;
      TBVendasItensVEI_EXCHAVEACESSO.Value:=      DM.TBNfeItensNFI_EXCHAVEACESSO.Value;
      TBVendasItensVEI_EXDRAWBACK.Value:=         DM.TBNfeItensNFI_EXDRAWBACK.Value;
      TBVendasItensVEI_EXQUANTIDADE.Value:=       DM.TBNfeItensNFI_EXQUANTIDADE.Value;
      TBVendasItensVEI_EXREGISTRO.Value:=         DM.TBNfeItensNFI_EXREGISTRO.Value;
      TBVendasItensVEI_FCI.Value:=                DM.TBNfeItensNFI_FCI.Value;
      TBVendasItensVEI_INCENTIVOISS.Value:=       DM.TBNfeItensNFI_INCENTIVOISS.Value;
      TBVendasItensVEI_INDICADORISS.Value:=       DM.TBNfeItensNFI_INDICADORISS.Value;
      TBVendasItensVEI_INFOADICIONAL.Value:=      DM.TBNfeItensNFI_INFOADICIONAL.Value;
      TBVendasItensVEI_LOCALIZACAO.Value:=        DM.TBNfeItensNFI_LOCALIZACAO.Value;
      TBVendasItensVEI_LOTE.Value:=               DM.TBNfeItensNFI_LOTE.Value;
      TBVendasItensVEI_LUCROPORC.Value:=          DM.TBNfeItensNFI_LUCROPORC.Value;
      TBVendasItensVEI_LUCROVALOR.Value:=         DM.TBNfeItensNFI_LUCROVALOR.Value;
      TBVendasItensVEI_MODICMS.Value:=            DM.TBNfeItensNFI_MODICMS.Value;
      TBVendasItensVEI_MODICMSST.Value:=          DM.TBNfeItensNFI_MODICMSST.Value;
      TBVendasItensVEI_ORIGEM.Value:=             DM.TBNfeItensNFI_ORIGEM.Value;
      TBVendasItensVEI_PAISISS.Value:=            DM.TBNfeItensNFI_PAISISS.Value;
      TBVendasItensVEI_PEDIDOCLIENTE.Value:=      DM.TBNfeItensNFI_PEDIDOCLIENTE.Value;
      TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=  DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value;
      TBVendasItensVEI_PESO.Value:=               DM.TBNfeItensNFI_PESO.Value;
      TBVendasItensVEI_PESOTOTAL.Value:=          DM.TBNfeItensNFI_PESOTOTAL.Value;
      TBVendasItensVEI_PRECOCUSTO.Value:=         DM.TBNfeItensNFI_PRECOCUSTO.Value;
      TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value;
      TBVendasItensVEI_PROCESSOISS.Value:=        DM.TBNfeItensNFI_PROCESSOISS.Value;
      TBVendasItensVEI_PRODUTO.Value:=            DM.TBNfeItensNFI_PRODUTO.Value;
      TBVendasItensVEI_PRODUTOREAL.Value:=        DM.TBNfeItensNFI_PRODUTOREAL.Value;
      TBVendasItensVEI_QUANTIDADE.Value:=         DM.TBNfeItensNFI_QUANTIDADE.Value;
      TBVendasItensVEI_QUANTIDADETROCA.Value:=    DM.TBNfeItensNFI_QUANTIDADETROCA.Value;
      TBVendasItensVEI_SEQUENCIA.Value:=          DM.TBNfeItensNFI_SEQUENCIA.Value;
      TBVendasItensVEI_SERVICOISS.Value:=         DM.TBNfeItensNFI_SERVICOISS.Value;
      TBVendasItensVEI_SOMACOFINSST.Value:=       DM.TBNfeItensNFI_SOMACOFINSST.Value;
      TBVendasItensVEI_SOMAPISST.Value:=          DM.TBNfeItensNFI_SOMAPISST.Value;
      TBVendasItensVEI_TIPO.Value:=               DM.TBNfeItensNFI_TIPO.Value;
      TBVendasItensVEI_TIPOISS.Value:=            DM.TBNfeItensNFI_TIPOISS.Value;
      TBVendasItensVEI_UNIDADE.Value:=            DM.TBNfeItensNFI_UNIDADE.Value;
      TBVendasItensVEI_VALORACESSORIAS.Value:=    DM.TBNfeItensNFI_VALORACESSORIAS.Value;
      TBVendasItensVEI_VALORADUANA.Value:=        DM.TBNfeItensNFI_VALORADUANA.Value;
      TBVendasItensVEI_VALORCOFINS.Value:=        DM.TBNfeItensNFI_VALORCOFINS.Value;
      TBVendasItensVEI_VALORCOFINSST.Value:=      DM.TBNfeItensNFI_VALORCOFINSST.Value;
      TBVendasItensVEI_VALORCOMISSAO.Value:=      DM.TBNfeItensNFI_VALORCOMISSAO.Value;
      TBVendasItensVEI_VALORFCP.Value:=           DM.TBNfeItensNFI_VALORFCP.Value;
      TBVendasItensVEI_VALORFCPST.Value:=         DM.TBNfeItensNFI_VALORFCPST.Value;
      TBVendasItensVEI_VALORFRETE.Value:=         DM.TBNfeItensNFI_VALORFRETE.Value;
      TBVendasItensVEI_VALORICMS.Value:=          DM.TBNfeItensNFI_VALORICMS.Value;
      TBVendasItensVEI_VALORICMSCREDSN.Value:=    DM.TBNfeItensNFI_VALORICMSCREDSN.Value;
      TBVendasItensVEI_VALORICMSDESONERADO.Value:=DM.TBNfeItensNFI_VALORICMSDESONERADO.Value;
      TBVendasItensVEI_VALORICMSST.Value:=        DM.TBNfeItensNFI_VALORICMSST.Value;
      TBVendasItensVEI_VALORICMSSTRET.Value:=     DM.TBNfeItensNFI_VALORICMSSTRET.Value;
      TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value;
      TBVendasItensVEI_VALORICMSUFDEST.Value:=    DM.TBNfeItensNFI_VALORICMSUFDEST.Value;
      TBVendasItensVEI_VALORICMSUFREMET.Value:=   DM.TBNfeItensNFI_VALORICMSUFREMET.Value;
      TBVendasItensVEI_VALORII.Value:=            DM.TBNfeItensNFI_VALORII.Value;
      TBVendasItensVEI_VALORIOF.Value:=           DM.TBNfeItensNFI_VALORIOF.Value;
      TBVendasItensVEI_VALORIPI.Value:=           DM.TBNfeItensNFI_VALORIPI.Value;
      TBVendasItensVEI_VALORISS.Value:=           DM.TBNfeItensNFI_VALORISS.Value;
      TBVendasItensVEI_VALORISSDEDUCAO.Value:=    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value;
      TBVendasItensVEI_VALORISSDESCCOND.Value:=   DM.TBNfeItensNFI_VALORISSDESCCOND.Value;
      TBVendasItensVEI_VALORISSDESCINCOND.Value:= DM.TBNfeItensNFI_VALORISSDESCINCOND.Value;
      TBVendasItensVEI_VALORISSOUTROS.Value:=     DM.TBNfeItensNFI_VALORISSOUTROS.Value;
      TBVendasItensVEI_VALORISSRETENCAO.Value:=   DM.TBNfeItensNFI_VALORISSRETENCAO.Value;
      TBVendasItensVEI_VALORPIS.Value:=           DM.TBNfeItensNFI_VALORPIS.Value;
      TBVendasItensVEI_VALORPISST.Value:=         DM.TBNfeItensNFI_VALORPISST.Value;
      TBVendasItensVEI_VALORSEGURO.Value:=        DM.TBNfeItensNFI_VALORSEGURO.Value;
      TBVendasItensVEI_VALORTOTAL.Value:=         DM.TBNfeItensNFI_VALORTOTAL.Value;
      TBVendasItensVEI_VALORTOTALBRUTO.Value:=    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value;
      TBVendasItensVEI_VALORTRIBUTOS.Value:=      DM.TBNfeItensNFI_VALORTRIBUTOS.Value;
      TBVendasItensVEI_VALORTRIBUTOSEST.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value;
      TBVendasItensVEI_VALORTRIBUTOSFED.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value;
      TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value;
      TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=   DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value;
      TBVendasItensVEI_VALORUNIT.Value:=          DM.TBNfeItensNFI_VALORUNIT.Value;
      TBVendasItensVEI_VENDA.Value:=              DM.TBNfeNFE_VENDA.Value; //código do pedido está na capa.
      {$ENDREGION}
      TBVendasItens.Post;

      DM.TBNfeItens.Next;
    end;
    TBVendasItens.Close;

    //Lê o registro atualizado.
    DM.TBVendasItens.Close;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
    DM.TBVendas.Open;
    DM.TBVendasItens.Open;
  end;
end;

procedure TFormNfe.SetCondicao(CodCondicao: Integer);
begin
  DMS.QYCondicoes.Close;
  DMS.QYCondicoes.ParamByName('codigo').AsInteger:=CodCondicao;
  DMS.QYCondicoes.Open;
  if not DMS.QYCondicoes.IsEmpty then
  begin
    DM.TBNfeNFE_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
    DM.TBNfeNFE_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
    DM.TBNfeCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNfeCPG_MEIOPAGAMENTO.Value:=DMS.QYCondicoesCPG_MEIOPAGAMENTO.Value;
    DM.TBNfeCPG_TIPOINTEGRACAO.Value:=DMS.QYCondicoesCPG_TIPOINTEGRACAO.Value;
    DM.TBNfeCPG_TIPOPAGAMENTO.Value:=DMS.QYCondicoesCPG_TIPOPAGAMENTO.Value;
    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    DM.TBNfeNFE_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
  end else
  begin
    DM.TBNfeNFE_CONDICAO.Clear;
    DM.TBNfeNFE_FORMAPAGTO.Clear;
    DM.TBNfeCPG_DESCRICAO.Clear;
    DM.TBNfeCPG_MEIOPAGAMENTO.Clear;
    DM.TBNfeCPG_TIPOINTEGRACAO.Clear;
  end;
  DMS.QYCondicoes.Close;
end;

procedure TFormNfe.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit32,DBEdit34,DM.TBNfe);
end;

procedure TFormNfe.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNfe.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_REBOQUEPLACA.Clear;
end;

procedure TFormNfe.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit32,DBEdit34,DM.TBNfe);
end;

procedure TFormNfe.teste1Click(Sender: TObject);
var U: nfe_util_2g_interface;
  MsgDados, MsgRetWS, MsgResultado, Proxy: WideString;
begin
  MessageDlg('Consulta de cadastro em desenvolvimento.',mtInformation,[mbOk],0);
  Exit;
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  U.ConsultaCad2G(DM.TBParametrosPAR_SIGLAWS.Value,
                  StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                  DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                  '2.00', //DM.TBParametrosPAR_VERSAOXML.Value,
                  MsgDados,
                  MsgRetWS,
                  MsgResultado,
                  '1',
                  '12843516000187',
                  Proxy,
                  DM.TBParametrosPAR_PROXYUSER.Value,
                  DM.TBParametrosPAR_PROXYPASSWORD.Value);
  Memo1.Lines.Add(MsgDados);
  Memo1.Lines.Add('==========================================================================');
  Memo1.Lines.Add(MsgRetWS);
  Memo1.Lines.Add('==========================================================================');
  Memo1.Lines.Add(MsgResultado);
  U:=nil;
end;

procedure TFormNfe.TotalQuantidade1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE from NFEITENS where NFI_NOTA=:nota');
  DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  DM.QYAux.Open;
  MessageDlg('A quantidade total é: '+DM.QYAux.FieldByName('QTDE').AsString,mtInformation,[mbOk],0);
  DM.QYAux.Close;
end;

procedure TFormNfe.DBEdit26Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit26Exit(Sender: TObject);
begin
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfeNFE_TRANSPCIDADE.Clear;
    DM.TBNfeNFE_TRANSPCNPJ.Clear;
    DM.TBNfeNFE_TRANSPCPF.Clear;
    DM.TBNfeNFE_TRANSPEMAIL.Clear;
    DM.TBNfeNFE_TRANSPENDERECO.Clear;
    DM.TBNfeNFE_TRANSPESTADO.Clear;
    DM.TBNfeNFE_TRANSPFONE.Clear;
    DM.TBNfeNFE_TRANSPIE.Clear;
    DM.TBNfeNFE_TRANSPNOME.Clear;
    DM.TBNfeNFE_TRANSPORTADORA.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM.TBNfeNFE_TRANSPCIDADE.Value:=DMS.QYFornecedoresFOR_CIDADE.Value;
      DM.TBNfeNFE_TRANSPCNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
      DM.TBNfeNFE_TRANSPCPF.Value:=DMS.QYFornecedoresFOR_CPF.Value;
      DM.TBNfeNFE_TRANSPEMAIL.Value:=DMS.QYFornecedoresFOR_EMAIL.Value;
      DM.TBNfeNFE_TRANSPENDERECO.Value:=DMS.QYFornecedoresFOR_ENDERECO.Value;
      DM.TBNfeNFE_TRANSPESTADO.Value:=DMS.QYFornecedoresFOR_ESTADO.Value;
      DM.TBNfeNFE_TRANSPFONE.Value:=DMS.QYFornecedoresFOR_FONE1.Value;
      DM.TBNfeNFE_TRANSPIE.Value:=DMS.QYFornecedoresFOR_IE.Value;
      DM.TBNfeNFE_TRANSPNOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM.TBNfeNFE_TRANSPORTADORA.Value:=DMS.QYFornecedoresFOR_CODIGO.Value;
    end else
    begin
      DM.TBNfeNFE_TRANSPCIDADE.Clear;
      DM.TBNfeNFE_TRANSPCNPJ.Clear;
      DM.TBNfeNFE_TRANSPCPF.Clear;
      DM.TBNfeNFE_TRANSPEMAIL.Clear;
      DM.TBNfeNFE_TRANSPENDERECO.Clear;
      DM.TBNfeNFE_TRANSPESTADO.Clear;
      DM.TBNfeNFE_TRANSPFONE.Clear;
      DM.TBNfeNFE_TRANSPIE.Clear;
      DM.TBNfeNFE_TRANSPNOME.Clear;
      DM.TBNfeNFE_TRANSPORTADORA.Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormNfe.DBEdit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormNfe.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_VEICULOPLACA.Clear;
end;

procedure TFormNfe.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_TRANSPCIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBNfeNFE_TRANSPCNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBNfeNFE_TRANSPCPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBNfeNFE_TRANSPEMAIL.Value:=FormFornecedoresLoc.QYFornecedoresFOR_EMAIL.Value;
    DM.TBNfeNFE_TRANSPENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBNfeNFE_TRANSPESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBNfeNFE_TRANSPFONE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
    DM.TBNfeNFE_TRANSPIE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBNfeNFE_TRANSPNOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBNfeNFE_TRANSPORTADORA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormNfe.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit4Exit(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNfeNFE_BAIRRO.Clear;
    DM.TBNfeNFE_CEP.Clear;
    DM.TBNfeNFE_CIDADE.Clear;
    DM.TBNfeNFE_CIDADECODIGO.Clear;
    DM.TBNfeNFE_CLIENTE.Clear;
    DM.TBNfeNFE_CNPJ.Clear;
    DM.TBNfeNFE_COMPLEMENTO.Clear;
    DM.TBNfeNFE_CONTATO.Clear;
    DM.TBNfeNFE_CPF.Clear;
    DM.TBNfeNFE_DESCPORCCLIENTE.Value:=0;
    DM.TBNfeNFE_ENDERECO.Clear;
    DM.TBNfeNFE_ESTADO.Clear;
    DM.TBNfeNFE_ESTADOCODIGO.Clear;
    DM.TBNfeNFE_EXPEDIDOPOR.Clear;
    DM.TBNfeNFE_FONE1.Clear;
    DM.TBNfeNFE_IDESTRANGEIRO.Clear;
    DM.TBNfeNFE_IE.Clear;
    DM.TBNfeNFE_NOME.Clear;
    DM.TBNfeNFE_NUMERO.Clear;
    DM.TBNfeNFE_PAIS.Clear;
    DM.TBNfeNFE_PAISCODIGO.Clear;
    DM.TBNfeNFE_REPRESENTANTE.Clear;
    DM.TBNfeNFE_RG.Clear;
    DM.TBNfeNFE_SUFRAMA.Clear;
    DM.TBNfeNFE_TABELAPRECO.Clear;
    DM.TBNfeNFE_VENDEDOR.Clear;
    DM.TBNfeVEN_NOME.Clear;
    DM.TBNfeVEN_NOME1.Clear;
    DM.TBNfeVEN_NOME2.Clear;
  end;
begin
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCampos;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      if ChecarLimiteCliente(StrToInt((Sender as TDBEdit).Text),DMS.QYClientesCLI_LIMITECREDITO.AsExtended) then
      begin
        MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
        if DMS.QYClientesCLI_BLOQUEARVENDA.Value='S' then
        begin
          LimparCampos;
          Exit;
        end;
      end;
      ChecarContasEmAtraso(StrToInt((Sender as TDBEdit).Text),Qtde,Valor);
      if Qtde>=1 then
      begin
        MessageDlg('Existem '+IntToStr(Qtde)+' débitos vencidos a mais de '+IntToStr(DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value)+' dias para este cliente. Total Vencido: '+Format('%m',[Valor])+'.',mtWarning,[mbOk],0);
        LimparCampos;
        Exit;
      end;
      DM.TBNfeNFE_BAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM.TBNfeNFE_CEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM.TBNfeNFE_CIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM.TBNfeNFE_CIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM.TBNfeNFE_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      if DMS.QYClientesCLI_TIPOPESSOA.Value='J' then
      DM.TBNfeNFE_CNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM.TBNfeNFE_COMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM.TBNfeNFE_CONDICAO.Value:=DMS.QYClientesCLI_CONDICAO.Value;
      DM.TBNfeNFE_CONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      if DMS.QYClientesCLI_TIPOPESSOA.Value='F' then
      DM.TBNfeNFE_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM.TBNfeNFE_DESCPORCCLIENTE.Value:=DMS.QYClientesCLI_DESCONTO.Value;
      DM.TBNfeNFE_ENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM.TBNfeNFE_ESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM.TBNfeNFE_ESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBNfeNFE_EXPEDIDOPOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM.TBNfeNFE_FONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      //campo aliquota...
      DM.TBNfeNFE_IDESTRANGEIRO.Value:=DMS.QYClientesCLI_IDESTRANGEIRO.Value;
      DM.TBNfeNFE_IE.Value:=DMS.QYClientesCLI_IE.Value;
      DM.TBNfeNFE_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBNfeNFE_NUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
      DM.TBNfeNFE_PAIS.Value:=DMS.QYClientesCLI_PAIS.Value;
      DM.TBNfeNFE_PAISCODIGO.Value:=DMS.QYClientesCLI_PAISCODIGO.Value;
      DM.TBNfeNFE_REPRESENTANTE.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM.TBNfeNFE_RG.Value:=DMS.QYClientesCLI_RG.Value;
      DM.TBNfeNFE_SUFRAMA.Value:=DMS.QYClientesCLI_SUFRAMA.Value;
      DM.TBNfeNFE_TABELAPRECO.Value:=DMS.QYClientesCLI_TABELAPRECO.Value;
      DM.TBNfeNFE_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      //se cliente é fora do estado, seta a CFOP para fora do estado.
      if DM.TBNfeNFE_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
      DM.TBNfeNFE_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
      DM.TBNfeNFE_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
      DBEdit42Exit(DBEdit42 as TObject);
      //...

      if DM.TBNfe.State in [dsInsert] then //só quando tá inserindo.
      begin
        SetRepresentante(DM.TBNfeNFE_REPRESENTANTE.Value);
        SetVendedor(DM.TBNfeNFE_VENDEDOR.Value);
        SetCondicao(DM.TBNfeNFE_CONDICAO.Value);
      end;
    end else
    begin
      LimparCampos;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormNfe.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfe.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.SpeedButton1Click(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNfeNFE_BAIRRO.Clear;
    DM.TBNfeNFE_CEP.Clear;
    DM.TBNfeNFE_CIDADE.Clear;
    DM.TBNfeNFE_CIDADECODIGO.Clear;
    DM.TBNfeNFE_CLIENTE.Clear;
    DM.TBNfeNFE_CNPJ.Clear;
    DM.TBNfeNFE_COMPLEMENTO.Clear;
    //campo condicao...
    DM.TBNfeNFE_CONTATO.Clear;
    DM.TBNfeNFE_CPF.Clear;
    DM.TBNfeNFE_DESCPORCCLIENTE.Value:=0;
    DM.TBNfeNFE_ENDERECO.Clear;
    DM.TBNfeNFE_ESTADO.Clear;
    DM.TBNfeNFE_ESTADOCODIGO.Clear;
    DM.TBNfeNFE_EXPEDIDOPOR.Clear;
    DM.TBNfeNFE_FONE1.Clear;
    DM.TBNfeNFE_IDESTRANGEIRO.Clear;
    DM.TBNfeNFE_IE.Clear;
    DM.TBNfeNFE_NOME.Clear;
    DM.TBNfeNFE_NUMERO.Clear;
    DM.TBNfeNFE_PAIS.Clear;
    DM.TBNfeNFE_PAISCODIGO.Clear;
    DM.TBNfeNFE_RG.Clear;
    DM.TBNfeNFE_SUFRAMA.Clear;
    DM.TBNfeNFE_TABELAPRECO.Clear;
    DM.TBNfeNFE_VENDEDOR.Clear;
    DM.TBNfeVEN_NOME.Clear;
    DM.TBNfeVEN_NOME1.Clear;
    DM.TBNfeVEN_NOME2.Clear;
  end;
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if ChecarLimiteCliente(FormClientesLoc.QYClientesCLI_CODIGO.Value,FormClientesLoc.QYClientesCLI_LIMITECREDITO.AsExtended) then
    begin
      MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
      if FormClientesLoc.QYClientesCLI_BLOQUEARVENDA.Value='S' then
      begin
        DM.TBNfe.Edit;
        LimparCampos;
        Exit;
      end;
    end;
    ChecarContasEmAtraso(FormClientesLoc.QYClientesCLI_CODIGO.Value,Qtde,Valor);
    if Qtde>=1 then
    begin
      MessageDlg('Existem '+IntToStr(Qtde)+' débitos vencidos a mais de '+IntToStr(DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value)+' dias para este cliente. Total Vencido: '+Format('%m',[Valor])+'.',mtWarning,[mbOk],0);
      DM.TBVendas.Edit;
      LimparCampos;
      Exit;
    end;
    DM.TBNfe.Edit;
    DM.TBNfeNFE_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM.TBNfeNFE_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM.TBNfeNFE_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM.TBNfeNFE_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM.TBNfeNFE_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBNfeNFE_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.TBNfeNFE_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM.TBNfeNFE_CONDICAO.Value:=FormClientesLoc.QYClientesCLI_CONDICAO.Value; //campo a mais.
    DM.TBNfeNFE_CONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM.TBNfeNFE_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBNfeNFE_DESCPORCCLIENTE.Value:=FormClientesLoc.QYClientesCLI_DESCONTO.Value;
    DM.TBNfeNFE_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM.TBNfeNFE_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM.TBNfeNFE_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBNfeNFE_EXPEDIDOPOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM.TBNfeNFE_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    //campo aliquota...
    DM.TBNfeNFE_IDESTRANGEIRO.Value:=FormClientesLoc.QYClientesCLI_IDESTRANGEIRO.Value;
    DM.TBNfeNFE_IE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM.TBNfeNFE_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBNfeNFE_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM.TBNfeNFE_PAIS.Value:=FormClientesLoc.QYClientesCLI_PAIS.Value;
    DM.TBNfeNFE_PAISCODIGO.Value:=FormClientesLoc.QYClientesCLI_PAISCODIGO.Value;
    DM.TBNfeNFE_REPRESENTANTE.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM.TBNfeNFE_RG.Value:=FormClientesLoc.QYClientesCLI_RG.Value;
    DM.TBNfeNFE_SUFRAMA.Value:=FormClientesLoc.QYClientesCLI_SUFRAMA.Value;
    DM.TBNfeNFE_TABELAPRECO.Value:=FormClientesLoc.QYClientesCLI_TABELAPRECO.Value;
    DM.TBNfeNFE_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    //se cliente é fora do estado, seta a CFOP para fora do estado.
    if DM.TBNfeNFE_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBNfeNFE_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
    DM.TBNfeNFE_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
    DBEdit42Exit(DBEdit42 as TObject);
    //...
    if DM.TBNfe.State in [dsInsert] then
    begin
      SetRepresentante(DM.TBNfeNFE_REPRESENTANTE.Value);
      SetVendedor(DM.TBNfeNFE_VENDEDOR.Value);
      SetCondicao(DM.TBNfeNFE_CONDICAO.Value);
    end;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormNfe.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01,05: begin
          if DM.TBNfe.State in [dsInsert, dsEdit] then
          try
            DM.TBNfe.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormNfe.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  DM.TBNfeRef.Insert;
  Application.CreateForm(TFormNfeReferenciadas, FormNfeReferenciadas);
  FormNfeReferenciadas.ShowModal;
  FormNfeReferenciadas.Free;
  FormNfeReferenciadas:=nil;
end;

procedure TFormNfe.PngBitBtn2Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeRef.IsEmpty,'Não existe nenhuma nota para excluir.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM.TBNfeRef.Delete;
end;

procedure TFormNfe.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeRef.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar todos as notas referenciadas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBNfeRef.First;
    while not DM.TBNfeRef.Eof do
    begin
      DM.TBNfeRef.Delete;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormNfe.PngBitBtn4Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeRef.IsEmpty,'Não existe nenhum item para editar.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  DM.TBNfeRef.Edit;
  Application.CreateForm(TFormNfeReferenciadas, FormNfeReferenciadas);
  FormNfeReferenciadas.ShowModal;
  FormNfeReferenciadas.Free;
  FormNfeReferenciadas:=nil;
end;

procedure TFormNfe.TotalQuantidade1ButtonClick(Sender: TObject);
begin
  TotalQuantidade1.Click;
end;

procedure TFormNfe.Reordenar1ButtonClick(Sender: TObject);
begin
  Reordenar1.Click;
end;

procedure TFormNfe.PngSpeedButton1Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit162,DBEdit163,DBEdit164,DM.TBNfe);
end;

procedure TFormNfe.PngSpeedButton2Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBNfeNFE_CPF.IsNull) and (DM.TBNfeNFE_CPF.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBNfeNFE_CPF.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/Aplicacoes/ATCTA/CPF/ConsultaPublica.asp'),nil,nil,sw_ShowNormal);
  end else
  MessageDlg('CPF não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormNfe.PngSpeedButton3Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBNfeNFE_CNPJ.IsNull) and (DM.TBNfeNFE_CNPJ.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBNfeNFE_CNPJ.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal)
  end else
  MessageDlg('CNPJ não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormNfe.PngSpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NF-e não contém itens.');

  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADETROCA) as QTDE from NFEITENS where NFI_NOTA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta nota contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormNfeAlterarDesconto, FormNfeAlterarDesconto);
  DescontoEmValor:=False;
  FormNfeAlterarDesconto.Edit1.Text:=DM.TBNfeNFE_DESCPORC.AsString;
  FormNfeAlterarDesconto.ShowModal;
  FormNfeAlterarDesconto.Free;
  FormNfeAlterarDesconto:=nil;
end;

procedure TFormNfe.PngSpeedButton5Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NF-e não contém itens.');

  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADETROCA) as QTDE from NFEITENS where NFI_NOTA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta nota contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormNfeAlterarDesconto, FormNfeAlterarDesconto);
  DescontoEmValor:=True;
  FormNfeAlterarDesconto.Label1.Caption:='Valor do Desconto:';
  FormNfeAlterarDesconto.Edit1.Text:=DM.TBNfeNFE_DESCVALOR.AsString;
  FormNfeAlterarDesconto.ShowModal;
  FormNfeAlterarDesconto.Free;
  FormNfeAlterarDesconto:=nil;
end;

procedure TFormNfe.PngSpeedButton6Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NF-e não contém itens.');

  Application.CreateForm(TFormNfeAlterarFreteSeguroAcessorias, FormNfeAlterarFreteSeguroAcessorias);
  Campo:='FRETE';
  FormNfeAlterarFreteSeguroAcessorias.Caption:='Alterar Frete';
  FormNfeAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Frete:';
  FormNfeAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNfeNFE_VALORFRETE.AsString;
  FormNfeAlterarFreteSeguroAcessorias.ShowModal;
  FormNfeAlterarFreteSeguroAcessorias.Free;
  FormNfeAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNfe.PngSpeedButton7Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NF-e não contém itens.');

  Application.CreateForm(TFormNfeAlterarFreteSeguroAcessorias, FormNfeAlterarFreteSeguroAcessorias);
  Campo:='SEGURO';
  FormNfeAlterarFreteSeguroAcessorias.Caption:='Alterar Seguro';
  FormNfeAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Seguro:';
  FormNfeAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNfeNFE_VALORSEGURO.AsString;
  FormNfeAlterarFreteSeguroAcessorias.ShowModal;
  FormNfeAlterarFreteSeguroAcessorias.Free;
  FormNfeAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNfe.PngSpeedButton8Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NF-e não contém itens.');

  Application.CreateForm(TFormNfeAlterarFreteSeguroAcessorias, FormNfeAlterarFreteSeguroAcessorias);
  Campo:='ACESSORIAS';
  FormNfeAlterarFreteSeguroAcessorias.Caption:='Alterar Desp. Acessórias';
  FormNfeAlterarFreteSeguroAcessorias.Label1.Caption:='Valor das Despesas Acessórias:';
  FormNfeAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNfeNFE_VALORDESPACES.AsString;
  FormNfeAlterarFreteSeguroAcessorias.ShowModal;
  FormNfeAlterarFreteSeguroAcessorias.Free;
  FormNfeAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNfe.BaixarDLLsdoSSL1Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://indy.fulgan.com/SSL/'),nil,nil,sw_ShowNormal);
end;

procedure TFormNfe.IncluirItem1ButtonClick(Sender: TObject);
begin
  IncluirItem1.Click;
end;

procedure TFormNfe.EliminarItem1ButtonClick(Sender: TObject);
begin
  EliminarItem1.Click;
end;

procedure TFormNfe.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNfe);
end;

procedure TFormNfe.AlterarItem1ButtonClick(Sender: TObject);
begin
  AlterarItem1.Click;
end;

procedure TFormNfe.AtualizarItens1ButtonClick(Sender: TObject);
begin
  AtualizarItens1.Click;
end;

procedure TFormNfe.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormNfe.FinalizarNota1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NFe ainda não tem itens.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Esta NFe foi cancelada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value='','Esta NFe ainda não foi autorizada para uso.');

  if MessageDlg('Finalizar a nota?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //garante o texto da simulação correto.
//    BitBtn5.Click; //clica no botao para simular condições de pagamento.
//    DM.TBNfe.Post;
    SincronizarPedidoDeVenda; //Atualiza o pedido de venda para deixar igual a NFe.
    Application.CreateForm(TFormNfeFinalizar, FormNfeFinalizar);
    FormNfeFinalizar.ShowModal;
    FormNfeFinalizar.Free;
    FormNfeFinalizar:=nil;
  end;
end;

procedure TFormNfe.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfeNFE_CONDICAO.Clear;
    DM.TBNfeNFE_DESCPORCCONDICAO.Value:=0;
    DM.TBNfeCPG_DESCRICAO.Clear;
    DM.TBNfeCPG_MEIOPAGAMENTO.Clear;
    DM.TBNfeCPG_TIPOINTEGRACAO.Clear;
    DM.TBNfeCPG_TIPOPAGAMENTO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      if DMS.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
      begin
        MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
        DM.TBNfeNFE_CONDICAO.Clear;
        DM.TBNfeCPG_DESCRICAO.Clear;
        DM.TBNfeCPG_MEIOPAGAMENTO.Clear;
        DM.TBNfeCPG_TIPOINTEGRACAO.Clear;
        DM.TBNfeCPG_TIPOPAGAMENTO.Clear;
        Exit;
      end;

      DM.TBNfeNFE_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
      DM.TBNfeNFE_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
      DM.TBNfeNFE_DESCPORCCONDICAO.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
      DM.TBNfeCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
      DM.TBNfeCPG_MEIOPAGAMENTO.Value:=DMS.QYCondicoesCPG_MEIOPAGAMENTO.Value;
      DM.TBNfeCPG_TIPOINTEGRACAO.Value:=DMS.QYCondicoesCPG_TIPOINTEGRACAO.Value;
      DM.TBNfeCPG_TIPOPAGAMENTO.Value:=DMS.QYCondicoesCPG_TIPOPAGAMENTO.Value;

      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
      begin
        if DM.TBNfeNFE_DESCPORC.Value<>DMS.QYCondicoesCPG_DESCPORC.Value then
        begin
          if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBNfeNFE_DESCPORC.AsString+')'+#13#10+
                        'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+DMS.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBNfeItens.DisableControls;
            DM.TBNfe.DisableControls;
            DM.TBNfeItens.First;
            CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
            while not DM.TBNfeItens.Eof do
            begin
              DM.TBNfeItens.Edit;
              DM.TBNfeItensNFI_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
              DM.TBNfeItens.Post;
              DM.TBNfeItens.Next;
            end;
            CalcularTotais:=True;
            DM.TBNfe.EnableControls;
            DM.TBNfeItens.EnableControls;
            DM.CalcularTotaisNFe(False);
          end;
        end;
      end;

      BitBtn5.Click;
    end else
    begin
      DM.TBNfeNFE_CONDICAO.Clear;
      DM.TBNfeNFE_DESCPORCCONDICAO.Value:=0;
      DM.TBNfeCPG_DESCRICAO.Clear;
      DM.TBNfeCPG_MEIOPAGAMENTO.Clear;
      DM.TBNfeCPG_TIPOINTEGRACAO.Clear;
      DM.TBNfeCPG_TIPOPAGAMENTO.Clear;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure TFormNfe.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormNfe.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    if FormCondicoesLoc.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
      DM.TBNfeNFE_CONDICAO.Clear;
      DM.TBNfeCPG_DESCRICAO.Clear;
      DM.TBNfeCPG_MEIOPAGAMENTO.Clear;
      DM.TBNfeCPG_TIPOINTEGRACAO.Clear;
      DM.TBNfeCPG_TIPOPAGAMENTO.Clear;
      FormCondicoesLoc.Free;
      FormCondicoesLoc:=nil;
      Exit;
    end;

    DM.TBNfe.Edit;
    DM.TBNfeNFE_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM.TBNfeNFE_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    DM.TBNfeNFE_DESCPORCCONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;
    DM.TBNfeCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNfeCPG_MEIOPAGAMENTO.Value:=FormCondicoesLoc.QYCondicoesCPG_MEIOPAGAMENTO.Value;
    DM.TBNfeCPG_TIPOINTEGRACAO.Value:=FormCondicoesLoc.QYCondicoesCPG_TIPOINTEGRACAO.Value;
    DM.TBNfeCPG_TIPOPAGAMENTO.Value:=FormCondicoesLoc.QYCondicoesCPG_TIPOPAGAMENTO.Value;

    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    begin
      if DM.TBNfeNFE_DESCPORC.Value<>FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value then
      begin
        if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBNfeNFE_DESCPORC.AsString+')'+#13#10+
                      'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+FormCondicoesLoc.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
        begin
          DM.TBNfeItens.DisableControls;
          DM.TBNfe.DisableControls;
          DM.TBNfeItens.First;
          CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da NFe.
          while not DM.TBNfeItens.Eof do
          begin
            DM.TBNfeItens.Edit;
            DM.TBNfeItensNFI_DESCPORC.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;
            DM.TBNfeItens.Post;
            DM.TBNfeItens.Next;
          end;
          CalcularTotais:=True;
          DM.TBNfe.EnableControls;
          DM.TBNfeItens.EnableControls;
          DM.CalcularTotaisNFe(False);
        end;
      end;
    end;

    BitBtn5.Click;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormNfe.BitBtn5Click(Sender: TObject);
begin
  DM.SimularCondicaoNfe;
end;

procedure TFormNfe.InformarProtocoloDataEHoraDeAutorizacao1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Esta NFe já foi finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Esta NFe já está cancelada.');
  AbortIf((DM.TBNfeNFE_STATUS.Value='A') and (DM.TBNfeNFE_PROTOCOLO.Value<>''),'Esta NFe já tem o protocolo informado.');

  Application.CreateForm(TFormNfeProtocolo, FormNfeProtocolo);
  FormNfeProtocolo.ShowModal;
  FormNfeProtocolo.Free;
  FormNfeProtocolo:=nil;
end;

procedure TFormNfe.IncluirItem1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.

  DM.TBNfeItens.Insert;
  Application.CreateForm(TFormNfeItens, FormNfeItens);
  FormNfeItens.ShowModal;
  FormNfeItens.Free;
  FormNfeItens:=nil;
  DM.TBNfeItens.Refresh;
end;

procedure TFormNfe.EliminarItem1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfeItens.Delete;
    DM.CalcularTotaisNFe(True);
  end;
end;

procedure TFormNfe.EliminarTodos1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBNfeItens.First;
    while not DM.TBNfeItens.Eof do
    begin
      DM.TBNfeItens.Delete;
    end;
    DM.CalcularTotaisNFe(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormNfe.AtualizarItens1Click(Sender: TObject);
begin
  if DM.TBNfe.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','Esta nota já está finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Esta nota já está cancelada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='I','Esta nota já está inutilizada.');

  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  Application.CreateForm(TFormNfeAlterarProdutos, FormNfeAlterarProdutos);
  FormNfeAlterarProdutos.ShowModal;
  FormNfeAlterarProdutos.Free;
  FormNfeAlterarProdutos:=nil;
end;

procedure TFormNfe.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormNfe.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormNfe.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox7);
  GerarXMLConformeAReformaTributaria1.Checked:=DM.TBParametrosPAR_REFORMATRIBUTARIA.Value='S';
end;

procedure TFormNfe.LocalizarNotaNaMovimentacaoDoEstoque1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormEstoqueLoc, FormEstoqueLoc);
  FormReceberLoc.Edit3.Text:='NFE-'+DM.TBNfeNFE_CODIGO.Value.ToString;
  FormEstoqueLoc.QYEstoque.SQL.Clear;
  FormEstoqueLoc.QYEstoque.SQL.Add(
    'select EST_CODIGO, EST_PRODUTO, EST_QUANTIDADE, EST_VALORUNIT, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
    'EST_DATA, EST_DESCRICAO, EST_NUMDOCTO, EST_TRANSACAO, EST_CLIENTE, PRO_NOME from ESTOQUE '+
    'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO where EST_NUMDOCTO like '+QuotedStr('NFE-'+DM.TBNfeNFE_CODIGO.Value.ToString+'/%')+' order by EST_NUMDOCTO, EST_CODIGO desc'
  );
  FormEstoqueLoc.QYEstoque.Open;
  FormEstoqueLoc.ShowModal;
  if EstoqueLoc.Procurar then
  begin
    DM.TBEstoque.Close;
    DM.TBEstoque.ParamByName('codigo').AsInteger:=FormEstoqueLoc.QYEstoqueEST_CODIGO.Value;
    DM.TBEstoque.Open;
    //liberamos o form antes de abrir o outro form.
    FormEstoqueLoc.Free;
    FormEstoqueLoc:=nil;

    Application.CreateForm(TFormEstoque, FormEstoque);
    FormEstoque.ShowModal;
    FormEstoque.Free;
    FormEstoque:=nil;
  end else
  begin
    FormEstoqueLoc.Free;
    FormEstoqueLoc:=nil;
  end;

end;

procedure TFormNfe.LocalizarNotanoContasaReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormReceberLoc.QYReceber.Open;
  FormReceberLoc.ShowModal;
  if ReceberLoc.Procurar then
  begin
    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=FormReceberLoc.QYReceberREE_CODIGO.Value;
    DM.TBReceber.Open;
    //liberamos o form antes de abrir o outro form.
    FormReceberLoc.Free;
    FormReceberLoc:=nil;

    Application.CreateForm(TFormReceber, FormReceber);
    FormReceber.ShowModal;
    FormReceber.Free;
    FormReceber:=nil;
  end else
  begin
    FormReceberLoc.Free;
    FormReceberLoc:=nil;
  end;
end;

procedure TFormNfe.NFePorStatus1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=0;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.NFeOrdenadoPorCodigo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=1;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.GerarXMLConformeAReformaTributaria1Click(Sender: TObject);
begin
  DM.TBParametros.Edit;
  if DM.TBParametrosPAR_REFORMATRIBUTARIA.Value='S' then
  begin
    DM.TBParametrosPAR_REFORMATRIBUTARIA.Value:='N';
    GerarXMLConformeAReformaTributaria1.Checked:=False;
  end else
  begin
    DM.TBParametrosPAR_REFORMATRIBUTARIA.Value:='S';
    GerarXMLConformeAReformaTributaria1.Checked:=True;
  end;
  DM.TBParametros.Post;
end;

procedure TFormNfe.NFeComItens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=2;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.NFePorCFOP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=3;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.NFeporCFOPdositens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=4;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.RecibosDeNFe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=5;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.VerificacaoDeNumeracao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=6;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.InutilizacoesNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeRel, FormNfeRel);
  FormNfeRel.ComboBox1.Enabled:=False;
  FormNfeRel.ComboBox1.ItemIndex:=7;
  FormNfeRel.ComboBox1Change(Self);
  FormNfeRel.ShowModal;
  FormNfeRel.Free;
  FormNfeRel:=nil;
end;

procedure TFormNfe.DBEdit110KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_DTPRESTSERVICO.Clear;
end;

procedure TFormNfe.DBEdit162Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit162Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit162,DBEdit163,DBEdit164,DM.TBNfe);
end;

procedure TFormNfe.DBEdit162KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormNfe.DBEdit162KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNfe.BitBtn6Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  if MessageDlg('Deseja imprimir as condições de pagamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  ImprimirCondicoesNfe;
end;

function TFormNfe.VerificarMatriculaComVendaCurso(Venda: Integer): Boolean;
begin
  //verifica matricula com venda de curso.
  Result:=True;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select MAT_CODIGO, MAT_STATUS from MATRICULAS where MAT_VENDA=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=Venda;
  DM.QYAux.Open;
  if (not DM.QYAux.IsEmpty) and (DM.QYAux.FieldByName('MAT_STATUS').AsString<>'C') then
  begin
    MessageDlg('Esta venda está associada a matrícula número '+DM.QYAux.FieldByName('MAT_CODIGO').AsString+'.'+#13#10+
               'Não é possível cancelar a venda sem antes cancelar a matrícula.',mtError,[mbOk],0);
    Result:=False;
  end;
  DM.QYAux.Close;
end;

function TFormNfe.VerificarMatriculaComVendaMaterial(Venda: Integer): Boolean;
begin
  //verifica matricula com venda de material.
  Result:=True;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select MAT_CODIGO, MAT_STATUS from MATRICULAS where MAT_VENDAMATERIAL=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=DM.TBNfeNFE_VENDA.Value;
  DM.QYAux.Open;
  if (not DM.QYAux.IsEmpty) and (DM.QYAux.FieldByName('MAT_STATUS').AsString<>'C') then
  begin
    MessageDlg('Esta venda está associada a matrícula número '+DM.QYAux.FieldByName('MAT_CODIGO').AsString+'.'+#13#10+
               'Não é possível cancelar a venda sem antes cancelar a matrícula.',mtError,[mbOk],0);
    Result:=False;
  end;
  DM.QYAux.Close;
end;

procedure TFormNfe.CancelarNota1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  MsgDados, MsgRetWS, MsgResultado, Justificativa, ProtocoloCanc, DHProtocoloCanc, Proxy: Widestring;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','NFe não finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','NFe já cancelada.');

  if not VerificarMatriculaComVendaCurso(DM.TBNfeNFE_CODIGO.Value) then Exit;
  if not VerificarMatriculaComVendaMaterial(DM.TBNfeNFE_CODIGO.Value) then Exit;

  //...
  if MessageDlg('Deseja cancelar a NFe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=6;
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Cancelamento de NFe...');
      Screen.Cursor:=crHourGlass;
      U:=CoUtil.Create;
      Proxy:='';
      if DM.TBParametrosPAR_PROXY.Value='S' then
      Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
      U.CancelaNFEvento(DM.TBParametrosPAR_SIGLAWS.Value,
                        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                        '4.00', //verificar futuramente se será possível utilizar o parametro como de costume. DM.TBParametrosPAR_VERSAOXML.Value,
                        MsgDados,
                        MsgRetWS,
                        cStat,
                        MsgResultado,
                        DM.TBNfeNFE_CHAVEACESSO.Value,
                        DM.TBNfeNFE_PROTOCOLO.Value,
                        Justificativa,
                        FormatDateTime('yyyy-mm-dd "" hh:mm:ss',Now),
                        ProtocoloCanc,
                        DHProtocoloCanc,
                        Proxy,
                        DM.TBParametrosPAR_PROXYUSER.Value,
                        DM.TBParametrosPAR_PROXYPASSWORD.Value,
                        DM.TBParametrosPAR_LICENCADLL.Value);
      U:=nil;
      Screen.Cursor:=crDefault;
      if ProtocoloCanc<>'' then
      begin
        Memo1.Lines.Add(MsgResultado);
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update NFE set NFE_PROTOCOLOCANC=:protocolocanc, NFE_PROTOCOLOCANCDH=:protocolocancdh, NFE_MOTIVOCANCELAMENTO=:justificativa where NFE_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
        DM.QYAux.ParamByName('protocolocanc').AsString:=ProtocoloCanc;
        DM.QYAux.ParamByName('protocolocancdh').AsString:=DHProtocoloCanc;
        DM.QYAux.ParamByName('justificativa').AsString:=Justificativa;
        DM.QYAux.ExecSQL;

        DM.CodigoMark:=DM.TBNfeNFE_CODIGO.Value;
        DM.TBNfe.Close;
        DM.TBNfe.ParamByName('codigo').AsInteger:=DM.CodigoMark;
        DM.TBNfe.Open;

        //o form cancelar altera o status para C.
        Application.CreateForm(TFormNfeCancelar, FormNfeCancelar);
        FormNfeCancelar.ShowModal;
        FormNfeCancelar.Free;
        FormNfeCancelar:=nil;

        //gera arquivo procCancNfe
        DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procCancNFe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(MsgRetWS));
        CloseFile(F);

        //gera arquivo pedCancNfe.
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-pedCancNFe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(MsgDados));
        CloseFile(F);
      end else
      Memo1.Lines.Add(MsgResultado);
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormNfe.CancelarNotaDenegada1Click(Sender: TObject);
var
  U: NFe_Util_2G_Interface;
  DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  U:=CoUtil.Create;
  I:=U.ConsultaNF2G(DM.TBParametrosPAR_SIGLAWS.Value,
                    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                    DM.TBParametrosPAR_VERSAOXML.Value,
                    DadosMsg,
                    RetWS,
                    MsgResultado,
                    DM.TBNfeNFE_CHAVEACESSO.Value,
                    Proxy,
                    DM.TBParametrosPAR_PROXYUSER.Value,
                    DM.TBParametrosPAR_PROXYPASSWORD.Value);
  if I<>110 then
  begin
    MessageDlg('Esta NFe não foi denegada pela SEFAZ.',mtError,[mbOk],0);
    PageControl1.ActivePageIndex:=6;
    Memo1.Lines.Add(MsgResultado);
  end else
  begin
    if not VerificarMatriculaComVendaCurso(DM.TBNfeNFE_CODIGO.Value) then Exit;
    if not VerificarMatriculaComVendaMaterial(DM.TBNfeNFE_CODIGO.Value) then Exit;

    if MessageDlg('Deseja estornar essa NFe denegada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      PageControl1.ActivePageIndex:=6;
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Cancelamento de NFe denegada...');
      Application.CreateForm(TFormNfeCancelar, FormNfeCancelar);
      FormNfeCancelar.ShowModal;
      FormNfeCancelar.Free;
      FormNfeCancelar:=nil;

      { TODO -oRogerio -cGeral : alterar o status para D? }
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update NFE set NFE_MOTIVOCANCELAMENTO=:motivocancelamento where NFE_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
      DM.QYAux.ParamByName('motivocancelamento').AsString:='NFE DENEGADA';
      DM.QYAux.ExecSQL;

      DM.CodigoMark:=Dm.TBNfeNFE_CODIGO.Value;
      DM.TBNfe.Close;
      DM.TBNfe.ParamByName('codigo').AsInteger:=DM.CodigoMark;
      DM.TBNfe.Open;
    end;
  end;
  U:=nil;
end;

procedure TFormNfe.CartasDeCorrecao1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','Esta NFe ainda não foi finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Esta NFe foi cancelada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='I','Esta NFe foi inutilizada.');

  Application.CreateForm(TFormNfeCCe, FormNfeCCe);
  FormNfeCCe.ShowModal;
  FormNfeCCe.Free;
  FormNfeCCe:=nil;
end;

procedure TFormNfe.DBEdit42Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit42Exit(Sender: TObject);
begin
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfeNFE_CFOP.Clear;
    DM.TBNfeNFE_CFOPDESC.Clear;
    DM.TBNfeNFE_DESTACARIMPOSTOS.Value:='N';
    DM.TBNfeNFE_ENTRADASAIDA.Clear;
    DM.TBNfeNFE_FINALIDADE.Value:='1 - NFE NORMAL';
    DM.TBNfeNFE_INFOADICFISCO.Clear;
    DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:='S';
    DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfe.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBNfeNFE_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBNfeNFE_CFOPDESC.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBNfeNFE_DESTACARIMPOSTOS.Value:=DMS.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
      DM.TBNfeNFE_ENTRADASAIDA.Value:=DMS.QYNaturezasNAT_ENTRADASAIDA.Value;
      DM.TBNfeNFE_INFOADICFISCO.Value:=DMS.QYNaturezasNAT_OBSERVACOES.Value;
      DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:=DMS.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
      DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=DMS.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
      if DMS.QYNaturezasNAT_DEVOLUCAO.Value='S' then
      DM.TBNfeNFE_FINALIDADE.Value:='4 - DEVOLUCAO DE MERCADORIA';
    end else
    begin
      DM.TBNfeNFE_CFOP.Clear;
      DM.TBNfeNFE_CFOPDESC.Clear;
      DM.TBNfeNFE_DESTACARIMPOSTOS.Value:='N';
      DM.TBNfeNFE_ENTRADASAIDA.Clear;
      DM.TBNfeNFE_FINALIDADE.Value:='1 - NFE NORMAL';
      DM.TBNfeNFE_INFOADICFISCO.Clear;
      DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:='S';
      DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNfe.DBEdit42KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormNfe.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBNfeNFE_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBNfeNFE_DESTACARIMPOSTOS.Value:=FormNaturezasLoc.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
    DM.TBNfeNFE_ENTRADASAIDA.Value:=FormNaturezasLoc.QYNaturezasNAT_ENTRADASAIDA.Value;
    DM.TBNfeNFE_INFOADICFISCO.Value:=FormNaturezasLoc.QYNaturezasNAT_OBSERVACOES.Value;
    DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
    DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNfe.CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormNfe.DBEdit45Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfe.DBEdit45Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit45,DBEdit46,nil,DM.TBNfe);
end;

procedure TFormNfe.DBEdit45KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton18.Click;
end;

procedure TFormNfe.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfe.SpeedButton18Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit45,DBEdit46,nil,DM.TBNfe);
end;

procedure TFormNfe.AdicoesDaDeclaracaoDeImportacao1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeItens.IsEmpty,'Nenhum item selecionado.');

  DM.TBNfeItensAdicoes.Open;
  Application.CreateForm(TFormNfeItensAdicoes, FormNfeItensAdicoes);
  FormNfeItensAdicoes.ShowModal;
  FormNfeItensAdicoes.Free;
  FormNfeItensAdicoes:=nil;
  DM.TBNfeItensAdicoes.Close;
end;

procedure TFormNfe.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfe.CadastroDeClassificacoesFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscal, FormClassFiscal);
  FormClassFiscal.ShowModal;
  FormClassFiscal.Free;
  FormClassFiscal:=nil;
end;

procedure TFormNfe.CadastroDeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormNfe.CadastroDeImpostoIPI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpi, FormIpi);
  FormIpi.ShowModal;
  FormIpi.Free;
  FormIpi:=nil;
end;


procedure TFormNfe.CadastroDeImpostoISS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormISS, FormISS);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormNfe.CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofins, FormPiscofins);
  FormPiscofins.ShowModal;
  FormPiscofins.Free;
  FormPiscofins:=nil;
end;

procedure TFormNfe.DBGrid1DblClick(Sender: TObject);
begin
  AlterarItem1.Click;
end;

procedure TFormNfe.ValidarArquivoNFe1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml'),'O arquivo da NFe selecionada não foi encontrado ou ainda não foi gerado.');

  Application.CreateForm(TFormNfeValidar,FormNfeValidar);
  //atenção para o segundo parametro.
  FormNfeValidar.Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml',TEncoding.UTF8);
  FormNfeValidar.ShowModal;
  FormNfeValidar.Free;
  FormNfeValidar:=nil;
end;

procedure TFormNfe.SetProdutos(var Detalhes: Widestring);
var
  U: NFe_Util_2G_Interface;
  Produto, Adicoes, cEAN, DI, ICMS, ICMSUFDest, PIS, PISST, COFINS, COFINSST, IPI, ISS, II, Imposto, ItemDetalhe, InfoAdic, DetExportacao, Rastro: Widestring;
  Item, IndTot: Integer;
  vUnCom, NCM, Incentivo, ProdutoCodigo: String;
  CSTIcms: String;
  BCFCP, BCFCPST: Currency;
begin
  Detalhes:='';
  Item:=0;
  U:=CoUtil.Create;
  DM.TBNfeItens.First;
  while not DM.TBNfeItens.Eof do
  begin
    Item:=Item+1;
    vUnCom:=Decimais2(DM.TBNfeItensNFI_VALORUNIT.AsExtended,8); //o campo na funcao nao é float como valor total.
    vUnCom:=StringReplace(vUnCom,',','.',[rfReplaceAll]);

    if DM.TBNfeItensNFI_TIPO.Value='P' then //P=produto - S=Serviço.
    begin
      NCM:=DM.TBNfeItensNFI_CLASSFISCAL.Value;

      CSTIcms:=DM.TBNfeItensNFI_CSTICMS.Value.ToString;
      if CSTIcms.Length < 2 then // se tem menos de 2 digitos preenche com zero a esquerda.
      CSTIcms:=AlignText(CSTIcms,'0',2,taRight);

      BCFCP:=DM.TBNfeItensNFI_BASEICMS.AsExtended;
      if DM.TBNfeItensNFI_ALIQFCP.AsExtended=0 then BCFCP:=0;
      BCFCPST:=DM.TBNfeItensNFI_BASEICMSST.AsExtended;
      if DM.TBNfeItensNFI_ALIQFCPST.AsExtended=0 then BCFCPST:=0;

      if (DM.TBNfeItensNFI_CSTICMS.Value=60) or (DM.TBNfeItensNFI_CSTICMS.Value=500) then
      begin
        ICMS:=U.icmsEfetNT201805(
          DM.TBNfeItensNFI_ORIGEM.Value, CSTIcms, DM.TBNfeItensNFI_BASEICMSSTRET.AsExtended,
          DM.TBNfeItensNFI_ALIQICMSSTRET.AsExtended, DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.AsExtended,
          DM.TBNfeItensNFI_VALORICMSSTRET.AsExtended, 0, 0, 0, 0, 0, 0, 0, 0, 0
        );
      end else
      begin
        ICMS:=U.icmsNT2020005(
          DM.TBNfeItensNFI_ORIGEM.Value, CSTIcms, StrToInt(Copy(DM.TBNfeItensNFI_MODICMS.Value,1,1)),
          DM.TBNfeItensNFI_ALIQICMSRED.AsExtended, DM.TBNfeItensNFI_BASEICMS.AsExtended, DM.TBNfeItensNFI_ALIQICMS.AsExtended,
          DM.TBNfeItensNFI_VALORICMS.AsExtended, StrToInt(Copy(DM.TBNfeItensNFI_MODICMSST.Value,1,1)),
          DM.TBNfeItensNFI_ALIQICMSADICST.AsExtended, DM.TBNfeItensNFI_ALIQICMSRED.AsExtended,
          DM.TBNfeItensNFI_BASEICMSST.AsExtended, DM.TBNfeItensNFI_ALIQICMSST.AsExtended, DM.TBNfeItensNFI_VALORICMSST.AsExtended,
          DM.TBNfeItensNFI_BASEICMSSTRET.AsExtended,DM.TBNfeItensNFI_VALORICMSSTRET.AsExtended,0,0,
          StrToInt(Copy(DM.TBNfeItensNFI_DESONERACAO.Value,1,2)),0,DM.TBNfeNFE_ESTADO.Value,
          DM.TBNfeNFE_ALIQICMSCREDSN.AsExtended, DM.TBNfeItensNFI_VALORICMSCREDSN.AsExtended,
          DM.TBNfeItensNFI_VALORICMSDESONERADO.AsExtended, 0, 0, 0, BCFCP, DM.TBNfeItensNFI_ALIQFCP.AsExtended,
          DM.TBNfeItensNFI_VALORFCP.AsExtended, BCFCPST, DM.TBNfeItensNFI_ALIQFCPST.AsExtended,
          DM.TBNfeItensNFI_VALORFCPST.AsExtended, 0, 0, 0, 0, DM.TBNfeItensNFI_ALIQFCP.AsExtended,
          DM.TBNfeItensNFI_VALORFCP.AsExtended, DM.TBNfeItensNFI_VALORFCP.AsExtended,
          DM.TBNfeItensNFI_VALORICMSDESONERADO.AsExtended, StrToInt(Copy(DM.TBNfeItensNFI_DESONERACAO.Value,1,2))
        );
      end;

      PIS:=U.PIS(AlignText(IntToStr(DM.TBNfeItensNFI_CSTPIS.Value),'0',2,taRight), DM.TBNfeItensNFI_BASEPIS.AsExtended,
                 DM.TBNfeItensNFI_ALIQPIS.AsExtended, DM.TBNfeItensNFI_VALORPIS.AsExtended,0,0);

      COFINS:=U.COFINS(AlignText(IntToStr(DM.TBNfeItensNFI_CSTCOFINS.Value),'0',2,taRight), DM.TBNfeItensNFI_BASECOFINS.AsExtended,
                       DM.TBNfeItensNFI_ALIQCOFINS.AsExtended, DM.TBNfeItensNFI_VALORCOFINS.AsExtended,0,0);

      //comentado para testes em 31/05/2023 em nota de importacao. if DM.TBNfeItensNFI_ALIQIPI.Value>0 then
      //begin
        IPI:=U.IPI400('','',0,IntToStr(DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value), //código de enquadramento legal do IPI - tabela a ser criada pela RFB.
                      AlignText(IntToStr(DM.TBNfeItensNFI_CSTIPI.Value),'0',2,taRight),DM.TBNfeItensNFI_BASEIPI.AsExtended,
                      DM.TBNfeItensNFI_ALIQIPI.AsExtended,DM.TBNfeItensNFI_VALORIPI.AsExtended,0,0);
      //end else
      //IPI:='';

      II:=U.II(DM.TBNfeItensNFI_BASEII.AsExtended,DM.TBNfeItensNFI_VALORADUANA.AsExtended,DM.TBNfeItensNFI_VALORII.AsExtended,DM.TBNfeItensNFI_VALORIOF.AsExtended);

      if DM.TBNfeItensNFI_ALIQPISST.Value>0 then
      begin
        if DM.TBNfeItensNFI_SOMAPISST.Value='S' then
        PISST:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,1) else
        PISST:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,0);
      end else
      PISST:='';

      if DM.TBNfeItensNFI_ALIQCOFINSST.Value>0 then
      begin
        if DM.TBNfeItensNFI_SOMACOFINSST.Value='S' then
        COFINSST:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,1) else
        COFINSST:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,0);
      end else
      COFINSST:='';

      //ICMSUFDest:=U.ICMSUFDest400(DM.TBNfeItensNFI_BASEICMS.AsExtended,DM.TBNfeItensNFI_BASEICMS.AsExtended,
      //                              DM.TBNfeItensNFI_ALIQFCP.AsExtended,DM.TBNfeItensNFI_ALIQICMS.AsExtended,DM.TBNfeItensNFI_ALIQICMSINTER.AsExtended,
      //                              DM.TBNfeItensNFI_ALIQICMSINTERPART.AsExtended,DM.TBNfeItensNFI_VALORFCP.AsExtended,
      //                              DM.TBNfeItensNFI_VALORICMSUFDEST.AsExtended,DM.TBNfeItensNFI_VALORICMSUFREMET.AsExtended);
      //alterado a ordem dos campos pICMSInter (aliquota da operacao) e pICMSUFDest (aliquota interna da UF destino)
      ICMSUFDest:=U.ICMSUFDest400(DM.TBNfeItensNFI_BASEICMS.AsExtended,DM.TBNfeItensNFI_BASEICMS.AsExtended,
                                    DM.TBNfeItensNFI_ALIQFCP.AsExtended,DM.TBNfeItensNFI_ALIQICMSINTER.AsExtended,DM.TBNfeItensNFI_ALIQICMS.AsExtended,
                                    DM.TBNfeItensNFI_ALIQICMSINTERPART.AsExtended,DM.TBNfeItensNFI_VALORFCP.AsExtended,
                                    DM.TBNfeItensNFI_VALORICMSUFDEST.AsExtended,DM.TBNfeItensNFI_VALORICMSUFREMET.AsExtended);

      //Imposto:=U.imposto310(DM.TBNfeItensNFI_VALORTRIBUTOS.Value,ICMS,IPI,II,PIS,PISST,COFINS,COFINSST,'');
      //Só informa o grupo se for operação interestadual e se for nota de saida. Nota de devolução não informa.
      if (DM.TBNfeNFE_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value) and (DM.TBNfeItensNAT_INFORMADIFAL.Value='S') then
      Imposto:=U.impostoNT2015003(DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,ICMS,IPI,II,PIS,PISST,COFINS,COFINSST,'',ICMSUFDest) else
      Imposto:=U.impostoNT2015003(DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,ICMS,IPI,II,PIS,PISST,COFINS,COFINSST,'','');
    end else


    begin //tipo do item é SERVIÇO.
      NCM:='00000000';
      PIS:=U.PIS(AlignText(DM.TBNfeItensNFI_CSTPIS.AsString,'0',2,taRight),DM.TBNfeItensNFI_BASEPIS.AsExtended,DM.TBNfeItensNFI_ALIQPIS.AsExtended,DM.TBNfeItensNFI_VALORPIS.AsExtended,0,0);

      if DM.TBNfeItensNFI_ALIQPISST.Value>0 then
      begin
        if DM.TBNfeItensNFI_SOMAPISST.Value='S' then
        PISST:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,1) else
        PISST:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,0);
      end else
      PISST:='';

      COFINS:=U.COFINS(AlignText(DM.TBNfeItensNFI_CSTCOFINS.AsString,'0',2,taRight), DM.TBNfeItensNFI_BASECOFINS.AsExtended,
                       DM.TBNfeItensNFI_ALIQCOFINS.AsExtended, DM.TBNfeItensNFI_VALORCOFINS.AsExtended,0,0);

      if DM.TBNfeItensNFI_ALIQCOFINSST.Value>0 then
      begin
        if DM.TBNfeItensNFI_SOMACOFINSST.Value='S' then
        COFINSST:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,1) else
        COFINSST:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,0);
      end else
      COFINSST:='';

      if DM.TBNfeItensNFI_INCENTIVOISS.Value='S' then Incentivo:='1' else Incentivo:='2';
      ISS:=U.ISSQN310(DM.TBNfeItensNFI_BASEISS.AsExtended,
                      DM.TBNfeItensNFI_ALIQISS.AsExtended,
                      DM.TBNfeItensNFI_VALORISS.AsExtended,
                      IntToStr(DM.TBNfeNFE_CIDADECODIGO.Value),
                      DM.TBNfeItensNFI_TIPOISS.Value,
                      DM.TBNfeItensNFI_VALORISSDEDUCAO.AsExtended,
                      DM.TBNfeItensNFI_VALORISSOUTROS.AsExtended,
                      DM.TBNfeItensNFI_VALORISSDESCINCOND.AsExtended,
                      DM.TBNfeItensNFI_VALORISSDESCCOND.AsExtended,
                      DM.TBNfeItensNFI_VALORISSRETENCAO.AsExtended,
                      Copy(DM.TBNfeItensNFI_INDICADORISS.Value,1,1),
                      DM.TBNfeItensNFI_SERVICOISS.Value,
                      IntToStr(DM.TBNfeItensNFI_CIDADEISS.Value),
                      IntToStr(DM.TBNfeItensNFI_PAISISS.Value),
                      DM.TBNfeItensNFI_PROCESSOISS.Value,
                      Incentivo);
      Imposto:=U.impostoNT2015003(DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,'','','',PIS,PISST,COFINS,COFINSST,ISS,'');
    end;

    DetExportacao:='';
    if DM.TBNfeItensNFI_EXDRAWBACK.Value<>'' then
    DetExportacao:=U.detExport(DM.TBNfeItensNFI_EXDRAWBACK.Value,
                               DM.TBNfeItensNFI_EXREGISTRO.Value,
                               DM.TBNfeItensNFI_EXCHAVEACESSO.Value,
                               FloatToStr(DM.TBNfeItensNFI_EXQUANTIDADE.AsExtended));

    Adicoes:='';
    DI:='';
    if DM.TBNfeItensNFI_DINUMERO.Value<>'' then //se tiver declaração de importação...
    begin
      DM.TBNfeItensAdicoes.Open;
      DM.TBNfeItensAdicoes.First;
      while not DM.TBNfeItensAdicoes.Eof do
      begin
        Adicoes:=Adicoes+U.adi310(DM.TBNfeItensAdicoesNFA_NUMERO.Value,
                                  DM.TBNfeItensAdicoesNFA_SEQUENCIA.Value,
                                  DM.TBNfeItensAdicoesNFA_FABRICANTE.Value,
                                  DM.TBNfeItensAdicoesNFA_DESCONTODI.AsExtended,
                                  DM.TBNfeItensAdicoesNFA_DRAWBACK.Value);
        DM.TBNfeItensAdicoes.Next;
      end;
      DM.TBNfeItensAdicoes.Close;
      DI:=U.DI310(DM.TBNfeItensNFI_DINUMERO.Value,
                  DateToFBDate(DM.TBNfeItensNFI_DIDATA.Value),
                  DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value,
                  DM.TBNfeItensNFI_DIDESEMBARACOUF.Value,
                  DateToFBDate(DM.TBNfeItensNFI_DIDESEMBARACODATA.Value),
                  StrToInt(Copy(DM.TBNfeItensNFI_DITRANSPORTE.Value,1,2)),
                  DM.TBNfeItensNFI_DIVALORAFRMM.AsExtended,
                  StrToInt(Copy(DM.TBNfeItensNFI_DIINTERMEDIO.Value,1,1)),
                  LimparFormatacao(DM.TBNfeItensNFI_DICNPJ.Value),
                  DM.TBNfeItensNFI_DITERCEIROUF.Value,
                  DM.TBNfeItensNFI_DIEXPORTADORCOD.Value,
                  Adicoes);
    end;

    ProdutoCodigo:=IntToStr(DM.TBNfeItensNFI_PRODUTO.Value);
    if (DM.TBParametrosPAR_USARCODIGOFAB.Value='S') and (DM.TBNfeItensNFI_CODIGOFAB.Value<>'') then
    ProdutoCodigo:=DM.TBNfeItensNFI_CODIGOFAB.Value;

    Rastro:='';
    if DM.TBNfeItensNFI_LOTE.Value<>'' then
    begin
      DM.QYAux4.Close;
      DM.QYAux4.SQL.Clear;
      DM.QYAux4.SQL.Add('select LOT_CODIGO, LOT_FABRICACAO, LOT_LOTE, LOT_VALIDADE from LOTES where LOT_PRODUTO=:produto and LOT_CODIGO=:codigo');
      DM.QYAux4.ParamByName('produto').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
      DM.QYAux4.ParamByName('codigo').AsInteger:=StrToInt(DM.TBNfeItensNFI_LOTE.Value);
      DM.QYAux4.Open;
      Rastro:=U.rastro(
        DM.TBNfeItensNFI_LOTE.Value,
        DM.TBNfeItensNFI_QUANTIDADE.AsExtended,
        DM.QYAux4.FieldByName('LOT_FABRICACAO').AsDateTime,
        DM.QYAux4.FieldByName('LOT_VALIDADE').AsDateTime,
        DM.QYAux4.FieldByName('LOT_LOTE').AsString
      );
      DM.QYAux4.Close;
    end;

    //indtot 0:nao compoe o valor total da nf. 1:compoe o total.
    if (DM.TBNfeItensNFI_COMPOETOTAL.Value='S') or (DM.TBNfeItensNFI_COMPOETOTAL.IsNull) then
    IndTot:=1 else
    IndTot:=0;

    cEAN:=DM.TBNfeItensNFI_CODIGOBARRAS.Value;
    if DM.TBNfeItensNFI_CODIGOBARRAS.Value='' then
    cEAN:='SEM GTIN';

    Produto:=U.produto400(ProdutoCodigo,cEAN,DM.TBNfeItensNFI_DESCRICAO.Value,
                          NCM,'',DM.TBNfeItensNFI_CEST.Value,'','',DM.TBNfeItensNFI_BENEFICIO.Value,'',DM.TBNfeItensNFI_CFOP.Value,DM.TBNfeItensNFI_UNIDADE.Value,
                          DM.TBNfeItensNFI_QUANTIDADE.AsString,
                          vUnCom,DM.TBNfeItensNFI_VALORTOTALBRUTO.AsExtended,cEAN,DM.TBNfeItensNFI_UNIDADE.Value,
                          DM.TBNfeItensNFI_QUANTIDADE.AsString,vUnCom,DM.TBNfeItensNFI_VALORFRETE.AsExtended,
                          DM.TBNfeItensNFI_VALORSEGURO.AsExtended,DM.TBNfeItensNFI_DESCVALOR.AsExtended,DM.TBNfeItensNFI_VALORACESSORIAS.AsExtended,
                          IndTot,
                          DI,DetExportacao,'',DM.TBNfeItensNFI_PEDIDOCLIENTE.Value,DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value.ToString,
                          DM.TBNfeItensNFI_FCI.Value,Rastro);


    if DM.TBNfeItensNFI_QUANTIDADETROCA.Value>0 then
    ItemDetalhe:=U.detalhe310(Item,Produto,Imposto,'Abatimento Ref. Troca: '+DM.TBNfeItensNFI_DESCVALOR.AsString+' Qtde: '+DM.TBNfeItensNFI_QUANTIDADETROCA.AsString,0,0) else
    ItemDetalhe:=U.detalhe310(Item,Produto,Imposto,'',0,0);

    Detalhes:=Detalhes+ItemDetalhe;
    DM.TBNfeItens.Next;
  end;
  U:=nil;
end;

procedure TFormNfe.AlterarCalculosParaManualOuAutomatico1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value<>'A','Esta NFe não está em aberto.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Proceda com a finalização.');

  if DM.TBNfeNFE_MANUAL.Value='N' then
  begin
    if MessageDlg('Alterar a forma de cálculo dos valores da nota para manual?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBNfe.Edit;
      DM.TBNfeNFE_MANUAL.Value:='S';
      DM.TBNfe.Post;
    end;
  end else
  if DM.TBNfeNFE_MANUAL.Value='S' then
  begin
    if MessageDlg('Altera a forma de cálculo dos valores da nota para automático?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.TBNfe.Edit;
      DM.TBNfeNFE_MANUAL.Value:='N';
      DM.TBNfe.Post;
    end;
  end;
end;

procedure TFormNfe.AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value<>'A','Esta NFe não está em aberto.');

  if DM.TBNfeNFE_MOVIMENTAESTOQUE.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Estoque para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:=Copy(S,1,1); //primeira letra.
    DM.TBNfe.Post;
  end;
end;

procedure TFormNfe.AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value<>'A','Esta NFe não está em aberto.');

  if DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Financeiro para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=Copy(S,1,1); //primeira letra.
    DM.TBNfe.Post;
  end;
end;

procedure TFormNfe.AlterarItem1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfeItens.IsEmpty,'Não existe nenhum item para editar.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM.TBNfeItens.Edit;
  Application.CreateForm(TFormNfeItens, FormNfeItens);
  FormNfeItens.DBEdit5.Enabled:=False;
  FormNfeItens.DBEdit5.Color:=clBtnFace;
  FormNfeItens.SpeedButton9.Enabled:=False;
  FormNfeItens.DesabilitarCampos; //se status = F ou C ou com protocolo de autorizacao, desabilita campos.
  FormNfeItens.ShowModal;
  FormNfeItens.Free;
  FormNfeItens:=nil;
end;

procedure TFormNfe.ArquivosXMLDaNFe1Click(Sender: TObject);
var A,M,D: Word;
  Arquivo, Pasta: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NF-e selecionada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  AbortIf(not System.SysUtils.DirectoryExists(Pasta),'A pasta da NF-e não foi localizada.'+#13#10+'Tente gerar o arquivo XML antes.');

  Arquivo:=DM.TBNfeNFE_CHAVEACESSO.Value+'*.*';
  AbortIf(not ExisteAlgumArquivo(Pasta+Arquivo),'Nenhum arquivo encontrado para esta NFe.');

  Application.CreateForm(TFormNfeArquivosXML, FormNfeArquivosXML);
  FormNfeArquivosXML.ShowModal;
  FormNfeArquivosXML.Free;
  FormNfeArquivosXML:=nil;
end;

function TFormNfe.AssinarNFe(var NFe: Widestring): Boolean;
var NFEAssinada, MsgResultado, Ref: Widestring;
  Resultado: Integer;
  U: NFe_Util_2G_Interface;
begin
  if DM.TBParametrosPAR_NOMECERTIFICADO.Value<>'' then
  begin
    U:=CoUtil.Create;
    Ref:='infNFe';
    NFEAssinada:=U.Assinar(NFE,Ref,DM.TBParametrosPAR_NOMECERTIFICADO.Value,Resultado,MsgResultado);
    if Resultado=5300 then
    begin
      Memo1.Lines.Add(MsgResultado);
      NFe:=NFEAssinada;
      Result:=True;
    end else
    begin
      Memo1.Lines.Add('Processo de assinatura falhou...'+#13+MsgResultado);
      Memo1.Lines.Add('--------------------------------------------------------------');
      Memo1.Lines.Add(NFe);
      Result:=False;
    end;
    U:=nil;
  end else
  begin
    Memo1.Lines.Add('Nome do titular do Certificado não informado...');
    Result:=False;
  end;
end;

procedure TFormNfe.GerarTagsLote(var NFEAssinada: Widestring);
begin
  Insert('<enviNFe xmlns="http://www.portalfiscal.inf.br/nfe" versao="'+DM.TBParametrosPAR_VERSAOXML.Value+'"><idLote>'+AlignText(IntToStr(DM.TBNfeNFE_CODIGO.Value),'0',15,taRight)+'</idLote><indSinc>0</indSinc>',NFEAssinada,39);
  NFEAssinada:=NFEAssinada+'</enviNFe>';
end;

procedure TFormNfe.ReadOnlyCamposNfe(ReadOnly: Boolean);
begin
  DBEdit8.ReadOnly:=ReadOnly;
  DBEdit9.ReadOnly:=ReadOnly;
  DBEdit10.ReadOnly:=ReadOnly;
  DBEdit11.ReadOnly:=ReadOnly;
  DBEdit12.ReadOnly:=ReadOnly;
  DBEdit13.ReadOnly:=ReadOnly;
  DBEdit14.ReadOnly:=ReadOnly;
  DBEdit15.ReadOnly:=ReadOnly;
  DBEdit16.ReadOnly:=ReadOnly;
  DBEdit17.ReadOnly:=ReadOnly;
  DBEdit19.ReadOnly:=ReadOnly;
  DBEdit20.ReadOnly:=ReadOnly;
  DBEdit21.ReadOnly:=ReadOnly;
  DBEdit24.ReadOnly:=ReadOnly;
  DBEdit25.ReadOnly:=ReadOnly;
  DBEdit51.ReadOnly:=ReadOnly;
  DBEdit52.ReadOnly:=ReadOnly;
  DBEdit53.ReadOnly:=ReadOnly;
  DBEdit54.ReadOnly:=ReadOnly;
  DBEdit55.ReadOnly:=ReadOnly;
  DBEdit56.ReadOnly:=ReadOnly;
  DBEdit57.ReadOnly:=ReadOnly;
  DBEdit58.ReadOnly:=ReadOnly;
  DBEdit59.ReadOnly:=ReadOnly;
  DBEdit60.ReadOnly:=ReadOnly;
  DBEdit97.ReadOnly:=ReadOnly;
  DBEdit98.ReadOnly:=ReadOnly;
  DBEdit99.ReadOnly:=ReadOnly;
  DBEdit100.ReadOnly:=ReadOnly;
  DBEdit101.ReadOnly:=ReadOnly;
  DBEdit102.ReadOnly:=ReadOnly;
  DBEdit103.ReadOnly:=ReadOnly;
  DBEdit104.ReadOnly:=ReadOnly;
  DBEdit105.ReadOnly:=ReadOnly;
  DBEdit106.ReadOnly:=ReadOnly;
  DBEdit107.ReadOnly:=ReadOnly;
  DBEdit108.ReadOnly:=ReadOnly;
  DBEdit109.ReadOnly:=ReadOnly;
  DBEdit111.ReadOnly:=ReadOnly;
  DBEdit112.ReadOnly:=ReadOnly;
  DBEdit116.ReadOnly:=ReadOnly;
  DBEdit117.ReadOnly:=ReadOnly;
  DBEdit118.ReadOnly:=ReadOnly;
  DBEdit119.ReadOnly:=ReadOnly;
end;

function TFormNfe.GerarArquivoNFe: Boolean;
var U: NFe_Util_2G_Interface;
  F: TextFile;
  D,M,A: Word;
  XMLNFE, ChecagemEstoque, NFRef, Identificacao, Emitente, Destinatario, Detalhes, Duplicatas, EmpTransp, Veiculo, Reboque, Transportadora, Volumes,
  ICMSTot, TotalNota, Retirada, Entrega, Compra, Exporta, Cobranca, InfoAdicional, InfoComplementar, MsgResultado, IdLote: WideString;
  dhCont2: TDate;
  xJust, dhCont3, CRT_old, CNPJ, CPF, xNome, IEDest, ValorDuplicata, Pasta, IM: String;
  dSaiEnt, tpNF, idDest, cResultado, QuantidadeNFe, I: Integer;
  vBC, vICMS, vPIS, vCOFINS: Currency;
  TextoCondicao: TStringList;
begin
  {$REGION 'CHECAGENS_INICIAIS'}
  if DM.TBNfe.IsEmpty then Exit(Erro('Nenhuma NFe selecionada.'));
  if DM.TBNfeItens.IsEmpty then Exit(Erro('Esta NFe não contém itens.'));
  if DM.TBNfeNFE_CHAVEACESSO.Value='' then Exit(Erro('Esta NFe não possui chave de acesso. Recrie a chave de acesso em Arquivo -> Recriar Chave de Acesso.'));
  if DM.TBNfeNFE_STATUS.Value='F' then Exit(Erro('NFe já finalizada.'));
  if (DM.TBNfeNFE_RECIBO.Value<>'') and ((DM.TBNfeNFE_CONSULTADA.Value='N') or (DM.TBNfeNFE_CONSULTADA.Value='F')) then
  Exit(Erro('Não é possivel gerar o arquivo XML porque foi feito um envio e não foi realizado a busca.'));
  if DM.TBNfeNFE_PROTOCOLO.Value<>'' then Exit(Erro('NFe já autorizada para uso. Impossível realizar nova geração do arquivo.'));
  {$ENDREGION}

  {$REGION 'VERIFICAR_ESTOQUE'}
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') then
  begin
    ChecagemEstoque:='';
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE, NFI_PRODUTO from NFEITENS where NFI_NOTA=:codigo group by NFI_PRODUTO order by NFI_PRODUTO');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NFI_PRODUTO').AsInteger;
      DM.TBProdutos.Open;
      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value<DM.QYAux.FieldByName('QTDE').AsFloat) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+' - Qtde: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    if ChecagemEstoque<>'' then
    Exit(Erro('O(s) produto(s) abaixo não tem quantidade suficiente em estoque.'+#13#13+ChecagemEstoque));
  end;
  {$ENDREGION VERIFICAR_ESTOQUE}

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo NFe...');

  U:=CoUtil.Create;

  {$REGION 'NOTAS_REFERENCIADAS'}
  //SetReferenciadas; //seta as variaveis do subgrupo do grupo identificação. de notas referenciadas. - FORMA ANTIGA.
  NFRef:='';
  U:=CoUtil.Create;
  DM.TBNfeRef.First;
  while not DM.TBNfeRef.Eof do
  begin
    if DM.TBNfeRefNFR_TIPO.Value='CF' then
    begin
      NFRef:=NFRef+U.ECFRef(DM.TBNfeRefNFR_MODELO.Value,
                                DM.TBNfeRefNFR_NUMERO.Value,
                                DM.TBNfeRefNFR_COO.Value);

    end;
    if DM.TBNfeRefNFR_TIPO.Value='CTE' then
    NFRef:=NFRef+U.CTeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFE' then
    NFRef:=NFRef+U.NFeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFP' then
    begin
      NFRef:=NFRef+U.NFRefP(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                                DM.TBNfeRefNFR_ANOMES.Value,
                                LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                                LimparFormatacao(DM.TBNfeRefNFR_CPFEMITENTE.Value),
                                LimparFormatacao(DM.TBNfeRefNFR_IEEMITENTE.Value),
                                StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                                DM.TBNfeRefNFR_SERIE.Value,
                                DM.TBNfeRefNFR_NUMERO.Value);
    end;
    if DM.TBNfeRefNFR_TIPO.Value='NF' then
    begin
      NFRef:=NFRef+U.NFRef(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                               DM.TBNfeRefNFR_ANOMES.Value,
                               LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                               StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                               DM.TBNfeRefNFR_SERIE.Value,
                               DM.TBNfeRefNFR_NUMERO.Value);
    end;
    DM.TBNfeRef.Next;
  end;
  {$ENDREGION}

  {$REGION 'IDENTIFICACAO'}
  //SetIdentificacao; //seta as variaveis do grupo identificacao da nota. FORMA ANTIGA.
  tpNF:=0; //0:entrada 1:saida.
  if DM.TBNfeNFE_ENTRADASAIDA.Value='S' then
  tpNF:=1;
  if DM.TBNfeNFE_DTSAIDA.IsNull then
  dSaiEnt:=0 else
  dSaiEnt:=0; //DM.TBNfeNFE_DTSAIDA.Value;

  dhCont2:=0;
  dhCont3:='';
  xJust:='';
  if DM.TBNfeNFE_TIPOEMISSAO.Value<>'1 - NORMAL' then
  begin
    dhCont2:=DM.TBParametrosPAR_NFECONTINGENCIADATA.Value;
    dhCont3:=UTC(DM.TBParametrosPAR_NFECONTINGENCIADATA.Value,DM.TBParametrosPAR_NFECONTINGENCIAHORA.Value,DM.TBParametrosPAR_FUSOHORARIO.Value);
    xJust:=DM.TBParametrosPAR_NFECONTINGENCIAJUST.Value;
  end;
  idDest:=1; //op interna... se estado diferente, op interestadual.
  if DM.TBEmpresaEMP_ESTADO.Value<>DM.TBNfeNFE_ESTADO.Value then
  idDest:=2;
  if DM.TBEmpresaEMP_ESTADO.Value='EX' then //se estado=EX=Exterior.
  idDest:=3;
  Identificacao:=U.identificador300(DM.TBEmpresaEMP_ESTADOCODIGO.Value,
                                    StrToInt(DM.TBNfeNFE_CODIGONUMERICO.Value),
                                    DM.TBNfeNFE_CFOPDESC.Value,
                                    2, //forma pagto: 0:outros 1:a prazo 2:a vista.
                                    DM.TBNfeNFE_MODELO.Value,
                                    DM.TBNfeNFE_SERIE.Value,
                                    DM.TBNfeNFE_CODIGO.Value,
                                    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
                                    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
                                    tpNF,
                                    idDest, //1:op interna 2:op interestadual 3:op com exterior.
                                    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                                    NFRef,
                                    1, //1:retrato 2:paisagem.
                                    DBComboBox5.ItemIndex+1,
                                    StrToInt(Copy(DM.TBNfeNFE_CHAVEACESSO.Value,Length(DM.TBNfeNFE_CHAVEACESSO.Value),1)),
                                    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                                    DBComboBox6.ItemIndex+1, //finalidade.
                                    StrToInt(Copy(DBComboBox8.Text,1,1)), //0:nao consumidor final 1:consumidor final.
                                    StrToInt(Copy(DBComboBox9.Text,1,1)), //0:nao se aplica 1:op presencial 2:op nao presencial pela internet 3:op nao presencial teleatendimento 4:NFC-e em op de entrega a domicilio 5:op nao presencial, outros.
                                    0, //0-app proprio, 1-avulsa pelo fisco, 2-avulsa pelo cont. pelo site, 3-app do fisco.
                                    'Runtime',
                                    dhCont3,
                                    xJust);
  {$ENDREGION}

  {$REGION 'EMITENTE'}
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfeNFE_ESTADO.Value,[]); //localiza o estado do cliente na tabela de aliquotas para preencher a IE ST.   //a empresa pode ter uma IE ST para cada estado.
  IM:='';
  if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFE') then
  IM:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
  Emitente:=U.Emitente2G(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                         '',
                         DM.TBEmpresaEMP_NOME.Value,
                         DM.TBEmpresaEMP_NOMEFANTASIA.Value,
                         DM.TBEmpresaEMP_ENDERECO.Value,
                         DM.TBEmpresaEMP_NUMERO.Value,
                         '',
                         DM.TBEmpresaEMP_BAIRRO.Value,
                         IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                         DM.TBEmpresaEMP_CIDADE.Value,
                         DM.TBEmpresaEMP_ESTADO.Value,
                         LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
                         IntToStr(DM.TBEmpresaEMP_PAISCODIGO.Value),
                         DM.TBEmpresaEMP_PAIS.Value,
                         LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
                         LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
                         LimparFormatacao(DM.TBAliquotasALI_IEST.Value),
                         IM,
                         LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value),
                         Copy(DM.TBEmpresaEMP_ENQUADRAMENTO.Value,1,1));
  {$ENDREGION}

  {$REGION 'DESTINATARIO'}
  //SetDestinatario; FORMA ANTIGA.
  if (not DM.TBNfeNFE_CNPJ.IsNull) and (DM.TBNfeNFE_CNPJ.Value<>'  .   .   /    -  ') then
  begin
   CNPJ:=LimparFormatacao(DM.TBNfeNFE_CNPJ.Value);
   CPF:='';
  end else
  begin
   CPF:=LimparFormatacao(DM.TBNfeNFE_CPF.Value);
   CNPJ:='';
  end;
  //1=Contribuinte ICMS (informar a IE do destinatário);
  //2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS;
  //9=Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS;
  //Nota 1: No caso de NFC-e informar indIEDest=9 e não informar a tag IE do destinatário;
  //Nota 2: No caso de operação com o Exterior informar indIEDest=9 e não informar a tag IE do destinatário;
  //Nota 3: No caso de Contribuinte Isento de Inscrição (indIEDest=2), não informar a tag IE do destinatário.
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;

  //if (DM.TBNfeNFE_IE.Value='') or (DM.TBNfeNFE_IE.Value='ISENTO') then
  //IEDest:='2' else
  //IEDest:='1';
  IEDest:=Copy(DM.TBClientesCLI_CONTRIBUINTEICMS.Value,1,1);

  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  xNome:='NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  xNome:=DM.TBNfeNFE_NOME.Value;
  Destinatario:=U.destinatario310(CNPJ,
                                  CPF,
                                  '',
                                  xNome,
                                  DM.TBNfeNFE_ENDERECO.Value,
                                  DM.TBNfeNFE_NUMERO.Value,
                                  DM.TBNfeNFE_COMPLEMENTO.Value,
                                  DM.TBNfeNFE_BAIRRO.Value,
                                  IntToStr(DM.TBNfeNFE_CIDADECODIGO.Value),
                                  DM.TBNfeNFE_CIDADE.Value,
                                  DM.TBNfeNFE_ESTADO.Value,
                                  LimparFormatacao(DM.TBNfeNFE_CEP.Value),
                                  IntToStr(DM.TBNfeNFE_PAISCODIGO.Value),
                                  DM.TBNfeNFE_PAIS.Value,
                                  LimparFormatacao(DM.TBNfeNFE_FONE1.Value),
                                  IEDest,
                                  LimparFormatacao(DM.TBNfeNFE_IE.Value),
                                  '',
                                  '',
                                  '');
  {$ENDREGION}

  SetProdutos(Detalhes); //monta o xml na variavel Detalhes.

  {$REGION 'TRANSPORTADORA'}
  //SetTransportadora; FORMA ANTIGA.
  if (not DM.TBNfeNFE_TRANSPCNPJ.IsNull) and (DM.TBNfeNFE_TRANSPCNPJ.Value<>'  .   .   /    -  ') then
  begin
    CNPJ:=LimparFormatacao(DM.TBNfeNFE_TRANSPCNPJ.Value);
    CPF:='';
  end else
  begin
    CNPJ:='';
    CPF:=LimparFormatacao(DM.TBNfeNFE_TRANSPCPF.Value);
  end;
  if DM.TBNfeNFE_TRANSPNOME.Value<>'' then
  EmpTransp:=U.Transporta(CNPJ,CPF,DM.TBNfeNFE_TRANSPNOME.Value,LimparFormatacao(DM.TBNfeNFE_TRANSPIE.Value),DM.TBNfeNFE_TRANSPENDERECO.Value,DM.TBNfeNFE_TRANSPCIDADE.Value,DM.TBNfeNFE_TRANSPESTADO.Value);
  if DM.TBNfeNFE_VEICULOPLACA.Value<>'' then
  Veiculo:=U.VeicTransp(LimparFormatacao(DM.TBNfeNFE_VEICULOPLACA.Value),DM.TBNfeNFE_VEICULOPLACAUF.Value,DM.TBNfeNFE_VEICULORNTC.Value);
  if DM.TBNfeNFE_REBOQUEPLACA.Value<>'' then
  Reboque:=U.Reboque(LimparFormatacao(DM.TBNfeNFE_REBOQUEPLACA.Value),DM.TBNfeNFE_REBOQUEPLACAUF.Value,DM.TBNfeNFE_REBOQUERNTC.Value);
  if not DM.TBNfeNFE_VOLUMES.IsNull then
  Volumes:=U.vol(DM.TBNfeNFE_VOLUMES.Value,DM.TBNfeNFE_ESPECIE.Value,DM.TBNfeNFE_MARCA.Value,DM.TBNfeNFE_VOLUMESNUM.Value,DM.TBNfeNFE_PESOLIQ.AsExtended,DM.TBNfeNFE_PESOBRUTO.AsExtended,DM.TBNfeNFE_LACRES.Value);
  Transportadora:=U.Transportador2G(Copy(DM.TBNfeNFE_FRETE.Value,1,1),EmpTransp,'',Veiculo,Reboque,'','',Volumes); //Omitindo retTransp, vagao, balsa e volumes.
  {$ENDREGION}

  {$REGION 'TOTAIS'}
  //SetTotais; FORMA ANTIGA.
  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  begin
    if DM.TBNfeNFE_DESTACARIMPOSTOS.Value='S' then
    begin
      vBC:=DM.TBNfeNFE_BASEICMS.AsExtended; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
      vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
    end else
    begin
      vBC:=0; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=0;
      vPIS:=0; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=0;
    end;
  end else
  begin //demais empresas.
    vBC:=DM.TBNfeNFE_BASEICMS.AsExtended;
    vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
    vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended;
    vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
  end;
  ICMSTot:=U.totalICMS310(vBC,
                          vICMS,
                          DM.TBNfeNFE_BASEICMSST.AsExtended,
                          DM.TBNfeNFE_TOTALICMSST.AsExtended,
                          DM.TBNfeNFE_TOTALITENS.AsExtended+DM.TBNfeNFE_DESCVALOR.AsExtended,
                          DM.TBNfeNFE_VALORFRETE.AsExtended,
                          DM.TBNfeNFE_VALORSEGURO.AsExtended,
                          DM.TBNfeNFE_DESCVALOR.AsExtended,
                          0,
                          DM.TBNfeNFE_TOTALIPI.AsExtended,
                          vPIS,
                          vCOFINS,
                          DM.TBNfeNFE_VALORDESPACES.AsExtended,
                          DM.TBNfeNFE_VALORTOTAL.AsExtended,
                          DM.TBNfeNFE_TOTALTRIBUTOS.AsExtended,
                          0);
  TotalNota:=U.Total(ICMSTot,'',''); //omitido valores de ISSQN e RetTributos
  {$ENDREGION}

  //grupos nao utilizados.
  Retirada:='';
  Entrega:='';
  Compra:='';
  Exporta:='';

  {$REGION 'COBRANCA'}
  Cobranca:='';
  Duplicatas:='';
  if DM.TBParametrosPAR_INFOCOBRANCAXML.Value='S' then
  begin
    if DM.TBNfeNFE_CONDICAOMEMO.Value<>'ESTA CFOP NAO MOVIMENTA FINANCEIRO.' then
    begin
      for I:=3 to DBMemo2.Lines.Count-1 do //descarta as 3 primeiras linhas.
      begin
        //AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)
        ValorDuplicata:=Trim(Copy(DBMemo2.Lines[I],19,15));
        Delete(ValorDuplicata,1,3);
        Duplicatas:=Duplicatas+U.dup(IntToStr(DM.TBNfeNFE_CODIGO.Value)+'-'+Trim(Copy(DBMemo2.Lines[I],1,8)),
                                     StrToDate(Copy(DBMemo2.Lines[I],9,10)),
                                     StrToFloat(EliminarPontos(ValorDuplicata)));
      end;
    end;
    Cobranca:=U.cobr('',0,0,0,Duplicatas);
  end;
  {$ENDREGION}

  InfoComplementar:=DeleteLineBreaks(DM.TBNfeNFE_INFOCOMPLEMENTAR.Value);
  //se total ICMS crédito SN maior que zero, então insere mensagem sobre permissão de crédito...
  if DM.TBNfeNFE_TOTALICMSCREDSN.Value>0 then
  InfoAdicional:=U.infAdic2G(DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value)+' Permite o aproveitamento do credito de ICMS no valor de '+Format('%m',[DM.TBNfeNFE_TOTALICMSCREDSN.AsExtended])+' correspondente '+
  'a alíquota de '+DM.TBNfeNFE_ALIQICMSCREDSN.AsString+'% nos termos do art. 23 da LC 123.',InfoComplementar,'','','') else
  InfoAdicional:=U.infAdic2G(DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value),InfoComplementar,'','','');

  //...

  //Monta XML da NFe.
  XMLNFE:=U.NFe310(DM.TBParametrosPAR_VERSAOXML.Value,DM.TBNfeNFE_CHAVEACESSO.Value,Identificacao,Emitente,'',Destinatario,Retirada,Entrega,Detalhes,TotalNota,Transportadora,Cobranca,'',InfoAdicional,Exporta,Compra,'','');

  if AssinarNFe(XMLNFE) then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
    if not System.SysUtils.DirectoryExists(Pasta) then
    begin
      if not System.SysUtils.ForceDirectories(Pasta) then
      Exit(Erro('Não foi possível criar subpastas para gravação do arquivo.'));
    end;
    //grava a NFe com apenas a assinatuta.
    AssignFile(F,Pasta+DM.TBNfeNFE_CHAVEACESSO.Value+'-NFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLNFE));
    //Write(F,UTF8Encode(XMLNFE));
    CloseFile(F);
    //Insere as tags de lote e grava a NFe completa.
    //XMLNFE:=U.MontaLoteNFe(DM.TBParametrosPAR_VERSAOXML.Value,IntToStr(DM.TBNfeNFE_CODIGO.Value),XMLNFE,QuantidadeNfe,cResultado,MsgResultado);
    //Memo1.Lines.Add(MsgResultado);
    // forma antiga... utilizar ainda? ->
    GerarTagsLote(XMLNFE); //a forma nova (acima) ainda nao monta corretamente o lote para a versão 3.10. (falta tag indsinc no xml)
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLNFE));
    //Write(F,UTF8Encode(XMLNFE));
    CloseFile(F);
    Memo1.Lines.Add('Geração OK.');
    Result:=True;
  end;
  U:=nil;
end;

procedure TFormNfe.GerarArquivoNFe1Click(Sender: TObject);
begin
  AbortIf(NFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  //original GerarArquivoNfe;
  GerarArquivoXMLNFe;
end;

procedure TFormNfe.GerarBoletos1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','Nota não finalizada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Nota cancelada.');

  Application.CreateForm(TFormNfeGerarBoletos, FormNfeGerarBoletos);
  FormNfeGerarBoletos.QYReceber.SQL.Clear;
  FormNfeGerarBoletos.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormNfeGerarBoletos.QYReceber.Open;
  FormNfeGerarBoletos.QYTotalReceber.SQL.Clear;
  FormNfeGerarBoletos.QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' and REE_STATUS=''A''');
  FormNfeGerarBoletos.QYTotalReceber.Open;
  FormNfeGerarBoletos.ShowModal;
  FormNfeGerarBoletos.Free;
  FormNfeGerarBoletos:=nil;
end;

procedure TFormNfe.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormNfe.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormNfe.SalvarPDFDANFEComo1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  SaveDialog1.DefaultExt:='*.PDF';
  SaveDialog1.Filter:='Arquivo .PDF|*.pdf';
  SaveDialog1.Title:='Salvar em PDF o DANFE desta NFe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  GerarDANFEFast(False,True,SaveDialog1.FileName);
end;

procedure TFormNfe.SalvarZIPXMLsComo1Click(Sender: TObject);
var A,M,D: Word;
  Zip: TZipFile;
  BaseDir, SearchMask: String;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','NFe não finalizada, cancelada ou inutilizada.');

  SaveDialog1.DefaultExt:='*.ZIP';
  SaveDialog1.Filter:='Arquivo .ZIP|*.zip';
  SaveDialog1.Title:='Salvar em ZIP os XMLs desta NFe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)),'O repositório desta NFe não foi localizado.');

    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M));

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      SearchMask := TPath.Combine(BaseDir, DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.*');
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCCe.*"
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCancNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfeNFE_CHAVEACESSO.Value+'-procCancNFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procInutNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM.TBNfeNFE_CHAVEACESSO.Value+'-procInutNFe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;


    //cria o formulario NfeZipar para utilizar o componente ZipForge.
    //foi necessário isso pois estava dando erro no form close na linha Action:=caNone;
    {Application.CreateForm(TFormNfeZipar, FormNfeZipar);

    FormNfeZipar.ZipForge1.FileName:=SaveDialog1.FileName;
    FormNfeZipar.ZipForge1.OpenArchive(fmCreate);
    FormNfeZipar.ZipForge1.BaseDir:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    FormNfeZipar.ZipForge1.AddFiles(DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.*');
    FormNfeZipar.ZipForge1.AddFiles(DM.TBNfeNFE_CHAVEACESSO.Value+'-procCCe.*');
    FormNfeZipar.ZipForge1.AddFiles(DM.TBNfeNFE_CHAVEACESSO.Value+'-procCancNFe.*');
    FormNfeZipar.ZipForge1.AddFiles(DM.TBNfeNFE_CHAVEACESSO.Value+'-procInutNFe.*');
    FormNfeZipar.ZipForge1.CloseArchive;

    FormNfeZipar.Free;
    FormNfeZipar:=nil;}

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormNfe.GerarDANFEFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var Vencimentos: array[1..12] of String;
  Valores: array[1..12] of String;
  ValoresFCP: String;
  I: Byte;
  S: String;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfeNFE_ESTADO.Value,[]); //localiza o estado para imprimir a IE ST da empresa no estado do cliente.
  Application.CreateForm(TFormNfeFast, FormNfeFast);
  //if DM.TBParametrosPAR_TIPOAMBIENTE.Value='1' then FormNfeFast.QRLabel124.Font.Color:=clWhite;

  FormNfeFast.QY01.Close;
  FormNfeFast.QY01.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
  FormNfeFast.QY01.Open;
  FormNfeFast.QY01a.Open;
  FormNfeFast.QY01a.FetchAll;
  FormNfeFast.QY01b.SQL.Clear;
  FormNfeFast.QY01b.SQL.Add('select first(12) REE_DTVENCIMENTO, REE_VALOR from RECEBER where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormNfeFast.QY01b.Open;

  {$REGION 'Alimenta variaveis do relatório.'}
  FormNfeFast.frxReport1.Variables['OVERLAY']:=QuotedStr('');
  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  FormNfeFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
  begin
    if DM.TBNfeNFE_STATUS.Value='A' then FormNfeFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else //impressão de espelho.
    if DM.TBNfeNFE_STATUS.Value='I' then FormNfeFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
    if DM.TBNfeNFE_STATUS.Value='C' then FormNfeFast.frxReport1.Variables['OVERLAY']:=QuotedStr('CANCELADA');
  end;

  FormNfeFast.frxReport1.Variables['TIPOAMBIENTE']:=QuotedStr(DM.TBParametrosPAR_TIPOAMBIENTE.Value);
  FormNfeFast.frxReport1.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNfeFast.frxReport1.Variables['EMP_CNPJ']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNfeFast.frxReport1.Variables['EMP_IE']:=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  FormNfeFast.frxReport1.Variables['EMP_IM']:=QuotedStr(DM.TBEmpresaEMP_IM.Value);
  FormNfeFast.frxReport1.Variables['EMP_ENQUADRAMENTO']:=QuotedStr(DM.TBEmpresaEMP_ENQUADRAMENTO.Value);
  FormNfeFast.frxReport1.Variables['ALI_IEST']:=QuotedStr(DM.TBAliquotasALI_IEST.Value);
  FormNfeFast.frxReport1.Variables['ENDERECO']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+',  '+
                                                          DM.TBEmpresaEMP_NUMERO.Value+' - '+
                                                          DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                                                          DM.TBEmpresaEMP_CIDADE.Value+' - '+
                                                          DM.TBEmpresaEMP_ESTADO.Value+' - CEP: '+
                                                          DM.TBEmpresaEMP_CEP.Value+' - Fone: '+
                                                          DM.TBEmpresaEMP_FONE1.Value+' - '+
                                                          DM.TBEmpresaEMP_HOMEPAGE.Value);

  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  FormNfeFast.frxReport1.Variables['NOMEDESTINATARIO']:=QuotedStr('NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL') else
  FormNfeFast.frxReport1.Variables['NOMEDESTINATARIO']:=QuotedStr(FormNfeFast.QY01.FieldByName('NFE_NOME').AsString);

  FormNfeFast.frxReport1.Variables['TOTALPRODUTOS']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_TOTALPRODUTOS.AsExtended+FormNfeFast.QY01NFE_DESCVALOR.AsExtended]));
  FormNfeFast.frxReport1.Variables['HORASAIDA']:=QuotedStr(Copy(DM.TBNfeNFE_PROTOCOLODH.Value,12,8));
  FormNfeFast.frxReport1.Variables['USARCODIGOFAB']:=QuotedStr(DM.TBParametrosPAR_USARCODIGOFAB.Value);

  //Configura as informacoes adicionais.
  ValoresFCP:='';
  if FormNfeFast.QY01NFE_TOTALFCP.Value > 0 then ValoresFCP:=ValoresFCP+'Total FCP: '+Format('%m',[FormNfeFast.QY01NFE_TOTALFCP.AsExtended]);
  if FormNfeFast.QY01NFE_TOTALFCPST.Value > 0 then ValoresFCP:=ValoresFCP+' Total FCP-ST: '+Format('%m',[FormNfeFast.QY01NFE_TOTALFCPST.AsExtended]);

  if FormNfeFast.QY01NFE_TOTALICMSCREDSN.Value>0 then
  S:=DeleteLineBreaks(FormNfeFast.QY01NFE_INFOADICFISCO.Value)+' Permite o aproveitamento do credito de ICMS no valor de '+Format('%m',[FormNfeFast.QY01NFE_TOTALICMSCREDSN.AsExtended])+' correspondente '+
  'a alíquota de '+FormNfeFast.QY01NFE_ALIQICMSCREDSN.AsString+'% nos termos do art. 23 da LC 123.'+' - Pedido: '+IntToStr(FormNfeFast.QY01NFE_VENDA.Value) else
  S:=DeleteLineBreaks(FormNfeFast.QY01NFE_INFOADICFISCO.Value+' - Pedido: '+IntToStr(FormNfeFast.QY01NFE_VENDA.Value));
  S:=S+' - Tributos aprox: '+FormNfeFast.QY01NFE_TOTALTRIBUTOSFED.AsString+' Fed. '+FormNfeFast.QY01NFE_TOTALTRIBUTOSEST.AsString+' Est. e '+FormNfeFast.QY01NFE_TOTALTRIBUTOSMUN.AsString+' Mun. Fonte: IBPT';
  S:=S+ValoresFCP;
  S:=S+DeleteLineBreaks(FormNfeFast.QY01NFE_INFOCOMPLEMENTAR.Value);

  if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='S' then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormNfeFast.QY01NFE_CLIENTE.Value;
    DM.TBClientes.Open;
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then //pessoa jurídica... pessoa física não tem nome fantasia.
    S:=S+' - Nome Fantasia: '+DM.TBClientesCLI_FANTASIA.Value;
  end;
  if DM.TBParametrosPAR_IMPRIMIRCONDICAO.Value='S' then
  S:=S+' - Condição pagamento: '+FormNfeFast.QY01CPG_DESCRICAO.Value;
  if DM.TBParametrosPAR_IMPRIMIRNUMPEDIDO.Value='S' then
  S:=S+' - Num. Pedido Cliente: '+FormNfeFast.QY01NFE_PEDIDOCLIENTE.Value;
  FormNfeFast.frxReport1.Variables['INFORMACOES']:=QuotedStr(S);
  //...

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  begin
    FormNfeFast.frxReport1.Variables['CSOSN-CST']:=QuotedStr('CSOSN');
    //pis e cofins não aparecem na DANFE.
    if DM.TBNfeNFE_DESTACARIMPOSTOS.Value='S' then
    begin
      FormNfeFast.frxReport1.Variables['BASEICMS']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_BASEICMS.AsExtended])); //base icms.
      FormNfeFast.frxReport1.Variables['TOTALICMS']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_TOTALICMS.AsExtended])); //total icms.
      FormNfeFast.frxReport1.Variables['TOTALIPI']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_TOTALIPI.AsExtended])); //total ipi.
    end else
    begin
      FormNfeFast.frxReport1.Variables['BASEICMS']:=QuotedStr(Format('%m',[0.00])); //base icms.
      FormNfeFast.frxReport1.Variables['TOTALICMS']:=QuotedStr(Format('%m',[0.00])); //total icms.
      FormNfeFast.frxReport1.Variables['TOTALIPI']:=QuotedStr(Format('%m',[0.00])); //total ipi.
    end;
  end else
  begin //demais empresas.
    FormNfeFast.frxReport1.Variables['CSOSN-CST']:=QuotedStr('CST');
    FormNfeFast.frxReport1.Variables['BASEICMS']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_BASEICMS.AsExtended])); //base icms.
    FormNfeFast.frxReport1.Variables['TOTALICMS']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_TOTALICMS.AsExtended])); //total icms.
    FormNfeFast.frxReport1.Variables['TOTALIPI']:=QuotedStr(Format('%m',[FormNfeFast.QY01NFE_TOTALIPI.AsExtended])); //total ipi.
  end;
  {$ENDREGION}

  {$REGION 'Seleciona as contas a receber.'}
  for I:=1 to 12 do
  begin
    Vencimentos[I]:='';
    Valores[I]:='';
  end;
  I:=0;
  while not FormNfeFast.QY01b.Eof do
  begin
    Inc(I);
    Vencimentos[I]:=DateToStr(FormNfeFast.QY01bREE_DTVENCIMENTO.Value,FS);
    Valores[I]:=Format('%m',[FormNfeFast.QY01bREE_VALOR.AsExtended]);
    FormNfeFast.QY01b.Next;
  end;
  if Vencimentos[1] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_A']:=QuotedStr(Vencimentos[1]);  FormNfeFast.frxReport1.Variables['VALOR_A']:=QuotedStr(Valores[1]);  end;
  if Vencimentos[2] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_B']:=QuotedStr(Vencimentos[2]);  FormNfeFast.frxReport1.Variables['VALOR_B']:=QuotedStr(Valores[2]);  end;
  if Vencimentos[3] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_C']:=QuotedStr(Vencimentos[3]);  FormNfeFast.frxReport1.Variables['VALOR_C']:=QuotedStr(Valores[3]);  end;
  if Vencimentos[4] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_D']:=QuotedStr(Vencimentos[4]);  FormNfeFast.frxReport1.Variables['VALOR_D']:=QuotedStr(Valores[4]);  end;
  if Vencimentos[5] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_E']:=QuotedStr(Vencimentos[5]);  FormNfeFast.frxReport1.Variables['VALOR_E']:=QuotedStr(Valores[5]);  end;
  if Vencimentos[6] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_F']:=QuotedStr(Vencimentos[6]);  FormNfeFast.frxReport1.Variables['VALOR_F']:=QuotedStr(Valores[6]);  end;
  if Vencimentos[7] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_G']:=QuotedStr(Vencimentos[7]);  FormNfeFast.frxReport1.Variables['VALOR_G']:=QuotedStr(Valores[7]);  end;
  if Vencimentos[8] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_H']:=QuotedStr(Vencimentos[8]);  FormNfeFast.frxReport1.Variables['VALOR_H']:=QuotedStr(Valores[8]);  end;
  if Vencimentos[9] <>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_I']:=QuotedStr(Vencimentos[9]);  FormNfeFast.frxReport1.Variables['VALOR_I']:=QuotedStr(Valores[9]);  end;
  if Vencimentos[10]<>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_J']:=QuotedStr(Vencimentos[10]); FormNfeFast.frxReport1.Variables['VALOR_J']:=QuotedStr(Valores[10]); end;
  if Vencimentos[11]<>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_K']:=QuotedStr(Vencimentos[11]); FormNfeFast.frxReport1.Variables['VALOR_K']:=QuotedStr(Valores[11]); end;
  if Vencimentos[12]<>'30/12/1899' then begin FormNfeFast.frxReport1.Variables['VECTO_L']:=QuotedStr(Vencimentos[12]); FormNfeFast.frxReport1.Variables['VALOR_L']:=QuotedStr(Valores[12]); end;
  {$ENDREGION}

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormNfeFast.frxReport1.ShowReport else
    FormNfeFast.frxReport1.ShowReport; //fazer imprimir.
  end;

  if GerarPDF then
  begin
    FormNfeFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormNfeFast.frxPDFExport1.ShowDialog:=False;
    FormNfeFast.frxReport1.PrintOptions.ShowDialog:=False;
    FormNfeFast.frxReport1.PrepareReport;
    FormNfeFast.frxReport1.Export(FormNfeFast.frxPDFExport1);
  end;

  FormNfeFast.Free;
  FormNfeFast:=nil;
end;

procedure TFormNfe.GerarEmail;
var
  A,M,D: Word;
  MM: TMemo;
  Boletos, PDFBoletos: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_NFEEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value; //eliminar esse campo: DM.TBParametrosPAR_NFEEMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|NFE_CODIGO|',IntToStr(DM.TBNfeNFE_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_CLIENTE|',IntToStr(DM.TBNfeNFE_CLIENTE.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_NOME|',DM.TBNfeNFE_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_PROTOCOLO|',DM.TBNfeNFE_PROTOCOLO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_PROTOCOLODH|',DM.TBNfeNFE_PROTOCOLODH.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFE_CHAVEACESSO|',DM.TBNfeNFE_CHAVEACESSO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  GerarDANFEFast(False,True,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf'); //gera o arquivo PDF somente.

  //gerar pdf boletos e anexar.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select REE_BOLETO from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  DM.QYAux.Open;
  DM.QYAux.FetchAll;
  Boletos:='';
  PDFBoletos:='';
  while not DM.QYAux.Eof do
  begin
    if DM.QYAux.FieldByName('REE_BOLETO').AsString<>'' then
    Boletos:=Boletos+','+DM.QYAux.FieldByName('REE_BOLETO').AsString;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  Delete(Boletos,1,1);
  if Boletos<>'' then
  begin
    PDFBoletos:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Boletos_'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf';
    GerarBoletosFast(Boletos,PDFBoletos); //gera o arquivo PDF somente.
  end;
  //...

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml';
  DM2.TBEmailsEMA_ANEXO2.Value:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf';
  if PDFBoletos<>'' then
  DM2.TBEmailsEMA_ANEXO3.Value:=PDFBoletos;

  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_NFEEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=Trim(DM.TBClientesCLI_EMAIL.Value);
  if Trim(DM.TBClientesCLI_EMAIL2.Value)<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.TBClientesCLI_EMAIL2.Value);
  if DM.TBParametrosPAR_NFEEMAILTRANSP.Value='S' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+Trim(DM.TBNfeNFE_TRANSPEMAIL.Value);
  //ver a quantidade de emails.. nao pode ser maior de 255 caracteres.

  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:=DM2.TBAssuntosASS_HTML.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  //DM2.TBEmailsEMA_MENSAGEM.Value:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.tbemailscontas

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

procedure TFormNfe.GerarGuiaGNRE1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGnre, FormGnre);
  FormGnre.ShowModal;
  FormGnre.Free;
  FormGnre:=nil;
end;

procedure TFormNfe.DANFE1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  GerarDANFEFast(True,False,'');
  //GerarDANFE(True,False,'');
end;

procedure TFormNfe.EnviarDPEC1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  DPEC, DPECAssinado, MsgResultado, RetWS, DHRegDPEC, NumRegDPEC, Proxy: Widestring;
  I: Integer;
  A,M,D: Word;
  F: TextFile;
  Pasta: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NFe ainda não tem itens.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='C','Esta NFe foi cancelada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(DM.TBNfeNFE_TIPOEMISSAO.Value<>'4 - CONTINGENCIA DPEC','O tipo de emissão da NFe selecionada não é CONTINGENCIA DPEC');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  AbortIf(not FileExists(Pasta+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml'),'NFe ainda não gerada.');
  AbortIf(not FileExists(Pasta+DM.TBNfeNFE_CHAVEACESSO.Value+'-DPEC.xml'),'DPEC ainda não gerado.');

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-DPEC.xml',TEncoding.UTF8);
  DPEC:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  DPECAssinado:='';
  RetWS:='';
  MsgResultado:='';
  DHRegDPEC:='';
  NumRegDPEC:='';
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.EnviaDPEC(DPEC,
                 DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                 DPECAssinado,
                 RetWS,
                 MsgResultado,
                 DHRegDPEC,
                 NumRegDPEC,
                 Proxy,
                 DM.TBParametrosPAR_PROXYUSER.Value,
                 DM.TBParametrosPAR_PROXYPASSWORD.Value,
                 DM.TBParametrosPAR_LICENCADLL.Value);
  Screen.Cursor:=crDefault;
  if I<>124 then
  begin
    MessageDlg('Falha na chamada do WS...'+#13#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add(MsgResultado);
  end else
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_DPEC.Value:=NumRegDPEC;
    DM.TBNfeNFE_DPECDH.Value:=DHRegDPEC;
    DM.TBNfe.Post;
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-envDPEC.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(DPECAssinado));
    CloseFile(F);
    MessageDlg('DPEC enviado com sucesso.'+#13#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add(MsgResultado+#13#10+'Número registro DPEC: '+NumRegDPEC+#13#10+'Data e Hora Registro: '+DHRegDPEC);
  end;
  U:=nil;
end;

function TFormNfe.EnviarNFe(MostrarMensagem: Boolean): Boolean;
var
  U: NFe_Util_2G_Interface;
  I: Integer;
  NFE, RetWS, MsgResultado, DadosMsg, Recibo, DHRecibo, TMed, Proxy: Widestring;
  A,M,D: Word;
begin
  if DM.TBNfe.IsEmpty then Exit(Erro('Nenhuma NFe selecionada.'));
  if (DM.TBNfeNFE_RECIBO.Value<>'') and (DM.TBNfeNFE_CONSULTADA.Value='N') then Exit(Erro('Consulte a NFe antes de realizar novo envio.'));
  if DM.TBNfeNFE_PROTOCOLO.Value<>'' then Exit(Erro('NFe já autorizada para uso. Impossível realizar novo envio.'));
  if DM.TBNfeNFE_PROTOCOLOCANC.Value<>'' then Exit(Erro('NFe já cancelada. Impossível realizar novo envio.'));
  if DM.TBNfeNFE_PROTOCOLOINUT.Value<>'' then Exit(Erro('NFe já inutilizada. Impossível realizar novo envio.'));

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  if not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml') then
  Exit(Erro('NFe ainda não gerada.'));

  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml',TEncoding.UTF8);
  NFE:=Memo1.Lines.Text;
  DadosMsg:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  RetWS:='';
  MsgResultado:='';
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.EnviaLoteV3(DM.TBParametrosPAR_SIGLAWS.Value,
                   StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                   DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                   DM.TBParametrosPAR_VERSAOXML.Value,
                   DadosMsg,
                   0,
                   RetWS,
                   MsgResultado,
                   Recibo,
                   DHRecibo,
                   TMed,
                   Proxy,
                   DM.TBParametrosPAR_PROXYUSER.Value,
                   DM.TBParametrosPAR_PROXYPASSWORD.Value,
                   DM.TBParametrosPAR_LICENCADLL.Value);

  Screen.Cursor:=crDefault;
  if I<>103 then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_CONSULTADA.Value:='N';
    DM.TBNfe.Post;
    MessageDlg('Falha na chamada do WS...'+#13#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add(MsgResultado);
    Result:=False;
  end else
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_RECIBO.Value:=Recibo;
    DM.TBNfeNFE_RECIBODH.Value:=DHRecibo;
    DM.TBNfeNFE_LOTE.Value:=AlignText(IntToStr(DM.TBNfeNFE_CODIGO.Value),'0',15,taRight);
    DM.TBNfeNFE_CONSULTADA.Value:='N';
    Memo1.Lines.Clear;
    DM.TBNfe.Post;
    if MostrarMensagem then
    MessageDlg(MsgResultado+#13#13+'NF-e enviada, recibo do lote: '+Recibo+', '+DHRecibo+#13#13+'IMPORTANTE: É necessário buscar o resultado do processamento da NF-e (Buscar NFe)',mtInformation,[mbOk],0);
    Result:=True;
  end;
  U:=nil;
end;

procedure TFormNfe.EnviarNFe1Click(Sender: TObject);
begin
  EnviarNFe(True);
end;

procedure TFormNfe.GerarLote1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='A','NFe não finalizada.');

  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfe.GerarNotaDeCredito1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfe.GerarNotaDeDebito1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfe.BuscarNFe1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  NFEAssinada, MsgDados, MsgRetWS, MsgResultado, NroProtocolo, DHProtocolo, cMsg, xMsg, procNFe, Proxy: Widestring;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(DM.TBNfeNFE_RECIBO.Value='','NFe ainda não enviada. Sem recibo para buscar.');
  AbortIf(NFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-nfe.xml',TEncoding.UTF8);
  NFEAssinada:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  PageControl1.ActivePageIndex:=6;
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  //Recibo:=DM.TBNfeNFE_RECIBO.Value; // '424000003924974'; //'424000003924977';
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  procNFe:=U.BuscaNFe2G(DM.TBParametrosPAR_SIGLAWS.Value,
               StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
               NFEAssinada,
               DM.TBNfeNFE_RECIBO.Value,
               DM.TBParametrosPAR_NOMECERTIFICADO.Value,
               DM.TBParametrosPAR_VERSAOXML.Value,
               MsgDados,
               MsgRetWS,
               cStat,
               MsgResultado,
               NroProtocolo,
               DHProtocolo,
               cMsg,
               xMsg,
               Proxy,
               DM.TBParametrosPAR_PROXYUSER.Value,
               DM.TBParametrosPAR_PROXYPASSWORD.Value,
               DM.TBParametrosPAR_LICENCADLL.Value);
  Screen.Cursor:=crDefault;
  if NroProtocolo<>'' then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_PROTOCOLO.Value:=NroProtocolo;
    DM.TBNfeNFE_PROTOCOLODH.Value:=DHProtocolo;
    DM.TBNfeNFE_CONSULTADA.Value:='F';
    DM.TBNfe.Post;
  end else
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_CONSULTADA.Value:='S';
    DM.TBNfe.Post;
  end;
  if procNFe<>'' then
  begin
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(procNFe));
    CloseFile(F);
  end;
  Memo1.Lines.Add('Mensagem Retorno: '+MsgRetWS);
  Memo1.Lines.Add('Protocolo: '+NroProtocolo);
  Memo1.Lines.Add('Data Hora: '+DHProtocolo);

  ProcessarRetornoConsultaProtocolo(MsgRetWS);

  U:=nil;
end;

procedure TFormNfe.ZiparArquivosXML1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZiparDFE, FormZiparDFE);
  FormZiparDFE.CheckBox1.Checked:=True;
  FormZiparDFE.ShowModal;
  FormZiparDFE.Free;
  FormZiparDFE:=nil;
end;

procedure TFormNfe.ConsultarNFe1Click(Sender: TObject);
var
  U: NFe_Util_2G_Interface;
  DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  U:=CoUtil.Create;
  I:=U.ConsultaNF2G(DM.TBParametrosPAR_SIGLAWS.Value,
                    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                    DM.TBParametrosPAR_VERSAOXML.Value,
                    DadosMsg,
                    RetWS,
                    MsgResultado,
                    DM.TBNfeNFE_CHAVEACESSO.Value,
                    Proxy,
                    DM.TBParametrosPAR_PROXYUSER.Value,
                    DM.TBParametrosPAR_PROXYPASSWORD.Value);
  if I>0 then
  begin
    PageControl1.ActivePageIndex:=6;
    Memo1.Lines.Add(MsgResultado);
  end else
  begin
    MessageDlg('Nenhum retorno obtido.'+#13#10+'Código retorno: '+IntToStr(I),mtError,[mbOk],0);
  end;
  U:=nil;
end;

procedure TFormNfe.ConsultarNFeNoPortalNacional1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  DBEdit76.SelectAll;
  DBEdit76.CopyToClipboard;
  MessageDlg('A chave de acesso foi copiada para a área de transferência.'+#13#13+'Utilize CTRL+V para colar a chave de acesso no campo apropriado.'+#13#13+'O portal nacional será aberto ao clicar OK.',mtInformation,[mbOk],0);
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8='),nil,nil,sw_ShowNormal);
end;

procedure TFormNfe.ConsultarStatusDoServico1Click(Sender: TObject);
var
  CabMsg, DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
  U: NFe_Util_2G_Interface;
begin
  CabMsg:='';
  DadosMsg:='';
  RetWS:='';
  MsgResultado:='';
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  I:=U.ConsultaStatus2G(DM.TBParametrosPAR_SIGLAWS.Value,
                        DM.TBParametrosPAR_SIGLAUF.Value,
                        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                        DM.TBParametrosPAR_VERSAOXML.Value,
                        DadosMsg,
                        RetWS,
                        MsgResultado,
                        Proxy,
                        DM.TBParametrosPAR_PROXYUSER.Value,
                        DM.TBParametrosPAR_PROXYPASSWORD.Value);
  MessageDlg('Consulta status retornou: '+#13#10+MsgResultado, mtInformation, [mbOk], 0);
  Memo1.Lines.Add(RetWs);
  U:=nil;
end;

procedure TFormNfe.ConsultarStatusDosServidoresDaNFe1Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('http://www.nfe.fazenda.gov.br/portal/disponibilidade.aspx'),nil,nil,sw_ShowNormal);
end;

procedure TFormNfe.GerarArquivoDPEC1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  NFeLote, MsgResultado, ErroXML, DPEC: WideString;
  Resultado: Integer;
  A,M,D: Word;
  F: TextFile;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-Nfe.xml'),'O arquivo XML dessa NFe não foi encontrado no repositório.');

  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-Nfe.xml',TEncoding.UTF8);
  NFeLote:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  U:=CoUtil.Create;
  DPEC:=U.criaDPEC(NFeLote,Resultado,MsgResultado,ErroXML);
  if Resultado=5901 then
  begin
    Memo1.Lines.Add(MsgResultado+#13#10);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-DPEC.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(DPEC));
    CloseFile(F);
  end else
  Memo1.Lines.Add('Processo de geração da DPEC falhou'+#13#10+MsgResultado+#13#10+ErroXML);
  U:=nil;
end;

procedure TFormNfe.RecriarArquivoXMLprocNFe1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  NFeAssinada, ProcNFe, CancNFe, MsgResultado, Protocolo, ProtocoloDH, Proxy: WideString;
  Resultado: Integer;
  A,M,D: Word;
  F: TextFile;
  S: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-Nfe.xml'),'O arquivo XML dessa NFe não foi encontrado no repositório.');

  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-Nfe.xml',TEncoding.UTF8);
  NFeAssinada:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  U:=CoUtil.Create;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  ProcNFe:=U.CriaProcNFe2G(DM.TBParametrosPAR_SIGLAWS.Value,
                           NFeAssinada,
                           Protocolo,
                           CancNFe,
                           Resultado,
                           DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                           MsgResultado,
                           Proxy,
                           DM.TBParametrosPAR_PROXYUSER.Value,
                           DM.TBParametrosPAR_PROXYPASSWORD.Value);
  if (Resultado<>6201) and (Resultado<>6216) and (Resultado<>6217) then
  begin
    MessageDlg('Falha na chamada do WS...'+#13+#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add('Falha na chamada do WS...'+#13#10+MsgResultado);
    Exit;
  end else
  begin
    //Memo1.Lines:=U.IdentaXML(ProcNFe,Resultado,MsgResultado);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(ProcNFe));
    CloseFile(F);
    Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);
    Memo1.Lines.Add('Protocolo.......: '+Protocolo);
    if (DM.TBNfeNFE_PROTOCOLO.Value='') and (Protocolo<>'') then
    begin
      DM.TBNfe.Edit;
      DM.TBNfeNFE_PROTOCOLO.Value:=Copy(Protocolo,1,Pos(' ',Protocolo)-1);
      //formata campo protocolodh pra ficar igual a quando é retornado na funcao buscanfe2g.
      S:=Protocolo;
      Delete(S,1,Pos(' ',S));
      ProtocoloDH:=Copy(S,7,4);
      ProtocoloDH:=ProtocoloDH+'-'+Copy(S,4,2);
      ProtocoloDH:=ProtocoloDH+'-'+Copy(S,1,2);
      ProtocoloDH:=ProtocoloDH+'T'+Copy(S,Pos(' ',S)+1,Length(S));
      DM.TBNfeNFE_PROTOCOLODH.Value:=ProtocoloDH;
      DM.TBNfeNFE_CONSULTADA.Value:='F';
      DM.TBNfe.Post;
    end;
    MessageDlg('procNFe montado com sucesso! '+#13+#13+'Protocolo de autorização de uso: '+Protocolo+#13+#13+'Gerado arquivo procNFe: '+
    DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml',mtInformation,[mbOk],0);
  end;
  U:=nil;
end;

procedure TFormNfe.RecriarChavedeAcesso1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  MsgResultado, cNF, cDV, ChaveNFe: Widestring;
  I: Integer;
  Emissao: String[10];
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(NFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  Emissao:=FormatDateTime('DD/MM/YY',DM.TBNfeNFE_DTEMISSAO.Value);
  U:=CoUtil.Create;
  I:=U.CriaChaveNFe2G(IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                      Copy(Emissao,7,2), //ano.
                      Copy(Emissao,4,2), //mes.
                      LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                      IntToStr(DM.TBNfeNFE_MODELO.Value),
                      IntToStr(DM.TBNfeNFE_SERIE.Value),
                      IntToStr(DM.TBNfeNFE_CODIGO.Value),
                      Copy(DM.TBNfeNFE_TIPOEMISSAO.Value,1,1),
                      IntToStr(DataMod.CodigoSegurancaNFE),
                      MsgResultado,
                      cNF,
                      cDV,
                      ChaveNFe);
  if I<>5601 then
  begin
    MessageDlg('Erro na criação da chave de acesso da NFe. Verifique os parâmetros.'+#13#13+'A chave de acesso é composta por: '+#13+
               'Codigo do estado do emitente'+#13+
               'Ano'+#13+
               'Mes'+#13+
               'CNPJ do emitente'+#13+
               'Modelo'+#13+
               'Série'+#13+
               'Código NFe (NSU)'+#13+
               'Tipo Emissão'+#13+
               'Código numérico'+#13#13+MsgResultado,mtError,[mbOk],0);
  end else
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_CHAVEACESSO.Value:=ChaveNFe;
    DM.TBNfeNFE_CODIGONUMERICO.Value:=cNF;
  end;
  U:=nil;
end;

procedure TFormNfe.InutilizacaoDeFaixaDeNFe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfeInutilizadas, FormNfeInutilizadas);
  FormNfeInutilizadas.ShowModal;
  FormNfeInutilizadas.Free;
  FormNfeInutilizadas:=nil;
end;

procedure TFormNfe.InutilizarNFe1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
  MsgDados, MsgRetWS, MsgResultado, Justificativa, ProtocoloInut, DHProtocoloInut, Proxy: Widestring;
  cStat: Integer;
  Ano: String[10];
  F: TextFile;
  A,M,D: Word;
  Pasta: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Proceda com o "cancelamento" da NFe.');
  AbortIf(DM.TBNfeNFE_CHAVEACESSO.Value='','Esta NFe não possui chave de acesso. Recrie a chave de acesso em Arquivo -> Recriar Chave de Acesso.');
  AbortIf(DM.TBNfeNFE_PROTOCOLOINUT.Value<>'','NFe já inutilizada.');

  if MessageDlg('Deseja inutilizar a NFe número '+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
    if not System.SysUtils.DirectoryExists(Pasta) then
    AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

    PageControl1.ActivePageIndex:=6;
    Justificativa:=InputBox('Justificativa','Digite a justificativa para a inutilização (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Inutilização de NFe...');
      Screen.Cursor:=crHourGlass;
      Ano:=FormatDateTime('DD/MM/YY',DM.TBNfeNFE_DTEMISSAO.Value);
      U:=CoUtil.Create;
      Proxy:='';
      if DM.TBParametrosPAR_PROXY.Value='S' then
      Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
      U.InutilizaNroNF2G(DM.TBParametrosPAR_SIGLAWS.Value,
                         StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
                         DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                         DM.TBParametrosPAR_VERSAOXML.Value,
                         MsgDados,
                         MsgRetWS,
                         cStat,
                         MsgResultado,
                         IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                         Copy(Ano,7,2),
                         LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                         IntToStr(DM.TBNfeNFE_MODELO.Value),
                         IntToStr(DM.TBNfeNFE_SERIE.Value),
                         IntToStr(DM.TBNfeNFE_CODIGO.Value),
                         IntToStr(DM.TBNfeNFE_CODIGO.Value),
                         Justificativa,
                         ProtocoloInut,
                         DHProtocoloInut,
                         Proxy,
                         DM.TBParametrosPAR_PROXYUSER.Value,
                         DM.TBParametrosPAR_PROXYPASSWORD.Value,
                         DM.TBParametrosPAR_LICENCADLL.Value);
      U:=nil;
      Screen.Cursor:=crDefault;
      if ProtocoloInut<>'' then
      begin
        Memo1.Lines.Add(MsgResultado);
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update NFE set NFE_PROTOCOLOINUT=:protocoloinut, NFE_PROTOCOLOINUTDH=:protocoloinutdh, NFE_MOTIVOINUTILIZACAO=:justificativa, NFE_STATUS=:status where NFE_CODIGO=:codigo');
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CODIGO.Value;
        DM.QYAux.ParamByName('protocoloinut').AsString:=ProtocoloInut;
        DM.QYAux.ParamByName('protocoloinutdh').AsString:=DHProtocoloInut;
        DM.QYAux.ParamByName('status').AsString:='I';
        DM.QYAux.ExecSQL;

        DM.CodigoMark:=DM.TBNfeNFE_CODIGO.Value;
        DM.TBNfe.Close;
        DM.TBNfe.ParamByName('codigo').AsInteger:=DM.CodigoMark;
        DM.TBNfe.Open;
        //gera arquivo procInutNfe
        DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procInutNFe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(MsgRetWS));
        CloseFile(F);

        if not DM.TBNfeNFE_VENDA.IsNull then
        begin
          SincronizarPedidoDeVenda; //Atualiza o pedido de venda para deixar igual a NFe.
          DM.QYAux.Close;
          DM.QYAux.SQL.Clear;
          DM.QYAux.SQL.Add('update VENDAS set VED_STATUS=:status where VED_CODIGO=:codigo');
          DM.QYAux.ParamByName('status').AsString:='I';
          DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
          DM.QYAux.ExecSQL;

          DM.TBVendas.Close;
          DM.TBVendasVED_CODIGO.Value:=DM.TBNfeNFE_VENDA.Value;
          DM.TBVendas.Open;
        end;

        //...
      end else
      Memo1.Lines.Add(MsgResultado);
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormNfe.ProcessarRetornoConsultaProtocolo(MsgXML: Widestring);
var
  protNFe: IXMLNodeList;
  Doc: TXMLDocument;
  I: Integer;
  Msg: String;
begin
  Doc:=TXMLDocument.Create(Self);
  Doc.XML.Add(AnsiToUtf8(MsgXML)); //.LoadFromFile(Opendialog1.FileName);
  try
    Doc.Active:=True;
    Msg:=    '--------------------------------------------------------------------------------------------'+#13+#10;
    Msg:=Msg+'Dados Basicos do Retorno'+#13+#10;
    Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
    Msg:=Msg+'     Versão Aplicação: '+Doc.DocumentElement.ChildNodes['verAplic'].text+#13+#10;
    Msg:=Msg+'     Número do Recibo: '+Doc.DocumentElement.ChildNodes['nRec'].text+#13+#10;
    Msg:=Msg+'                cStat: '+Doc.DocumentElement.ChildNodes['cStat'].text+#13+#10;
    Msg:=Msg+'              xMotivo: '+Doc.DocumentElement.ChildNodes['xMotivo'].text+#13+#10;
    Msg:=Msg+'                  cUF: '+Doc.DocumentElement.ChildNodes['cUF'].text+#13+#10;
    protNFe:=Doc.DocumentElement.ChildNodes;
    if protNFe.Count>0 then
    begin
//      J:=1;
      Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
      Msg:=Msg+'Protocolo de retorno de processamento da NF-e'+#13+#10;
      for I:=0 to protNFe.Count-1 do
      begin
        if protNFe[I].NodeName='protNFe' then  // a tag de grupo é det
        begin
          Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
          Msg:=Msg+'     Versão Aplicação: '+protNFe[I].ChildNodes['infProt'].ChildNodes['verAplic'].text+#13+#10;
          Msg:=Msg+'        Chave da NF-e: '+protNFe[I].ChildNodes['infProt'].ChildNodes['chNFe'].Text+#13+#10;
          Msg:=Msg+'Data/Hora Recebimento: '+protNFe[I].ChildNodes['infProt'].ChildNodes['dhRecbto'].Text+#13+#10;
          Msg:=Msg+'  Número do Protocolo: '+protNFe[I].ChildNodes['infProt'].ChildNodes['nProt'].Text+#13+#10;
          Msg:=Msg+'         Digest Value: '+protNFe[I].ChildNodes['infProt'].ChildNodes['digVal'].Text+#13+#10;
          Msg:=Msg+'                cStat: '+protNFe[I].ChildNodes['infProt'].ChildNodes['cStat'].text+#13+#10;
          Msg:=Msg+'              xMotivo: '+protNFe[I].ChildNodes['infProt'].ChildNodes['xMotivo'].text+#13+#10;
//          J:=J+1;
        end;
      end;
    end;
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Msg);
  except on exception do
    //nothing.
  end;
  Doc.Destroy;
end;

procedure TFormNfe.DownloadDaNFeNoPortalNacional1Click(Sender: TObject);
var
  U: NFe_Util_2G_Interface;
  cStat: Integer;                // retorna o código do resultado da chamada
  MsgResultado: Widestring;      // retorna o literal do resultado da chamada
  procNFe: Widestring;           // retorna o XML do procNFe
  F: TextFile;
  A,M,D: Word;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value='','NFe ainda não autorizada.');

  cStat:=0;
  MsgResultado:='';
  procNFe:='';
  U:=CoUtil.Create;
  procNFe:=U.DownloadNFWeb(DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                           DM.TBNfeNFE_CHAVEACESSO.Value,
                           LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                           cStat,
                           msgResultado,
                           DM.TBParametrosPAR_LICENCADLL.Value);
  if procNFe<>'' then
  begin
    DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(procNFe));
    CloseFile(F);
  end;
  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Application.ProcessMessages;
  Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);
end;

procedure TFormNfe.EtiquetaParaEmbalagem1Click(Sender: TObject);
begin
  //esta etiqueta é a mesma utilizada na tela de vendas.
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma venda selecionada.');
  AbortIf(DM.TBNfeNFE_VENDA.IsNull,'Esta NFe não tem pedido de venda associado.'+#13#10+'Esta etiqueta para embalagem é a mesma que tem no pedido de venda.');

  DM.TBVendas.Close;
  DM.TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_VENDA.Value;
  DM.TBVendas.Open;

  DM.TBEtiquetas.Close;
  DM.TBEtiquetas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_ETIQUETAEMBALAGEM.Value;
  DM.TBEtiquetas.Open;
  AbortIf(DM.TBEtiquetas.IsEmpty,'A configuração de etiqueta não foi encontrada.'+#13#10+'É necessário configurá-la nos Parâmetos do sistema. Certifique-se também que a configuração da etiqueta existe no cadastro de etiquetas.');

  if MessageDlg('Imprimir etiqueta para embalagem?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //ImprimirEtiquetasEmbalagemPPLB;
    ImprimirEtiquetasEmbalagemPPLB_Novo;
  end;
end;

procedure TFormNfe.EnviarNFePorEmailViaOS;
var AnexoEmail1, AnexoEmail2: TIDAttachmentFile;
  A,M,D: Word;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  //Dica retirada de: http://www.devmedia.com.br/articles/viewcomp.asp?comp=1195  //
  DM.IdMessage1.Clear;
  DM.IdMessage1.Recipients.EMailAddresses:=DM.TBClientesCLI_EMAIL.Value;
  DM.IdMessage1.Subject:='Nota Fiscal Eletronica número '+IntToStr(DM.TBNfeNFE_CODIGO.Value);
  DM.IdMessage1.Body.Clear;
  DM.IdMessage1.Body.Add(
    'Caro Cliente,'+#13#10#13#10+
    'Segue abaixo os dados da NFe emitida e em anexo o DANFE para seu armazenamento.'+#13#10+
    'Para verificar a autenticidade da NFe acesse http://www.nfe.fazenda.gov.br e consulte pela chave de acesso informada abaixo.'+#13#10#13#10+
    'Emitente: '+DM.TBEmpresaEMP_NOME.Value+#13#10+
    'Destinatário: '+DM.TBNfeNFE_NOME.Value+#13#10+
    'Chave de acesso: '+DM.TBNfeNFE_CHAVEACESSO.Value+#13#10+
    'Data de Emissão: '+DM.TBNfeNFE_PROTOCOLODH.Value+#13#10#13#10+
    'Esta mensagem foi gerada automaticamente pelo sistema. Por favor, não responda.'+#13#10#13#10+
    'Aviso Legal: Esta mensagem eletrônica pode conter informações privilegiadas e/ou confidenciais, portanto, fica o seu receptor notificado de que qualquer '+
    'disseminação, distribuição ou cópia não autorizada é estritamente proibida. '+
    'Se você entende que recebeu esta mensagem indevidamente ou por engano, por favor, informe este fato ao remetente e apague-a de seu computador.'
  );
  GerarDANFEFast(False,True,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf');

  AnexoEmail1:=TIDAttachmentFile.Create(DM.IdMessage1.MessageParts);
  AnexoEmail1.FileName:=DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml';
  AnexoEmail1.StoredPathName:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml';

  AnexoEmail2:=TIDAttachmentFile.Create(DM.IdMessage1.MessageParts);
  AnexoEmail2.FileName:=DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf'; //'DANFE.PDF';
//  AnexoEmail2.StoredPathName:=ExtractFilePath(Application.ExeName)+'Print\DANFE.PDF';
  AnexoEmail2.StoredPathName:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf';

  DM.IdMessage1.Headers.Add('X-Unsent: 1'); //marca a mensagem como NÃO ENVIADA!!!.
  DM.IdMessage1.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\NfeEmail.eml');
  ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\NfeEmail.eml'),'','',SW_SHOWNORMAL);
  AnexoEmail1.Destroy;
  AnexoEmail2.Destroy;
end;

procedure TFormNfe.EnviarNFePorEmailViaSistema;
begin
  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormNfe.EnviarNFePorEmailViaSistemaAutomatico;
begin
  try
    try
      GerarEmail;
      DM2.TBEmailsEMA_ENVIADO.Value:='S';
      DM2.TBEmails.Post;

      Memo1.Lines.Add('-------------------------------------------------');
      Memo1.Lines.Add('Enviando Email...');
      Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
      FormEmailsEnviar.EnviarEmailAutomaticoACBr;
      FormEmailsEnviar.Free;
      FormEmailsEnviar:=nil;
    except on Exception do
      //nothing...
    end;
  finally
    FormEmailsEnviar.Free;
    FormEmailsEnviar:=nil;
  end;
end;

procedure TFormNfe.EnviarNFePorWhatsApp1Click(Sender: TObject);
var A,M,D: Word;
  Texto: WideString;
  ArquivoPDF, ArquivoXML, Boletos, PDFBoletos: String;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value='','NFe ainda não autorizada.');
  AbortIf((DM.TBNfeNFE_STATUS.Value<>'F') and (DM.TBNfeNFE_STATUS.Value<>'C'),'NFe não finalizada ou cancelada.');
  //AbortIf(not IsRunning('FIREZAP.EXE'),'Aplicativo Firezap não está rodando.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  ArquivoXML:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml';
  AbortIf(not FileExists(ArquivoXML),'Arquivo XML não encontrado.');

  ArquivoPDF:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf';
  GerarDANFEFast(False,True,ArquivoPDF); //gera o arquivo PDF somente.

  //gerar pdf boletos e anexar.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select REE_BOLETO from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBNfeNFE_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  DM.QYAux.Open;
  DM.QYAux.FetchAll;
  Boletos:='';
  PDFBoletos:='';
  while not DM.QYAux.Eof do
  begin
    if DM.QYAux.FieldByName('REE_BOLETO').AsString<>'' then
    Boletos:=Boletos+','+DM.QYAux.FieldByName('REE_BOLETO').AsString;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  Delete(Boletos,1,1);
  if Boletos<>'' then
  begin
    PDFBoletos:=DM.TBParametrosPAR_REPOSITORIOBOLETOS.Value+'\Boletos_'+DM.TBNfeNFE_CHAVEACESSO.Value+'.pdf';
    GerarBoletosFast(Boletos,PDFBoletos); //gera o arquivo PDF somente.
  end;
  //...

  Application.CreateForm(TFormZap, FormZap);

  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_NFEZAPASSUNTO.Value;
  DM2.TBAssuntos.Open;
  Texto:=DM2.TBAssuntosASS_TEXTO.Value;
  Texto:=StringReplace(Texto,'|NFE_CODIGO|',IntToStr(DM.TBNfeNFE_CODIGO.Value),[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|NFE_CLIENTE|',IntToStr(DM.TBNfeNFE_CLIENTE.Value),[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|NFE_NOME|',DM.TBNfeNFE_NOME.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|NFE_PROTOCOLO|',DM.TBNfeNFE_PROTOCOLO.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|NFE_PROTOCOLODH|',DM.TBNfeNFE_PROTOCOLODH.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|NFE_CHAVEACESSO|',DM.TBNfeNFE_CHAVEACESSO.Value,[rfReplaceAll]);
  Texto:=StringReplace(Texto,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  FormZap.EditNumero.Text:=FormatarString('FONE11',RemoveZerosIniciais(SoNumeros(DM.TBNfeNFE_FONE1.Value)));
  FormZap.EditAnexo1.Text:=ArquivoPDF;
  FormZap.EditAnexo2.Text:=ArquivoXML;
  if PDFBoletos<>'' then
  FormZap.EditAnexo3.Text:=PDFBoletos;

  FormZap.MemoMensagem.Lines.Add(Texto);
  FormZap.ShowModal;
  FormZap.Free;
  FormZap:=nil;
end;

procedure TFormNfe.EnviarNFeSincrono1Click(Sender: TObject);
var A,M,D: Word;
  Pasta: String;
begin
  {$REGION 'CHECAGENS_INICIAIS'}
  AbortIf(NFeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+'Faça a instalação da DLL pelo menu Arquivo -> FlexDocs -> Instalar NFE_UTIL na tela principal.');
  AbortIf(not NFeUtilAtualizada,'A DLL NFE_UTIL não está atualizada.'+#13#10+#13#10+'Atualize a DLL pelo menu Arquivo -> FlexDocs -> Instalar NFE_UTIL na tela principal.');
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NFe não contém itens.');
  AbortIf(DM.TBNfeNFE_CHAVEACESSO.Value='','Esta NFe não possui chave de acesso. Recrie a chave de acesso em Funções -> Recriar Chave de Acesso.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Impossível realizar novo envio.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');
  {$ENDREGION}

  DM.TBParametros.Close;
  DM.TBParametros.Open;

  //checa validade do certificado para avisar o usuário.

  //...

  if DM.TBParametrosPAR_REFORMATRIBUTARIA.Value='S' then
  EnviarNFeSincronoRTC else
  EnviarNfeSincrono;
end;

procedure TFormNfe.EnviarNFeSincrono;
var U: NFe_Util_2G_Interface;
  F: TextFile;
  D,M,A,D2,M2,A2: Word;
  XMLNFE, XMLNFEAss, ChecagemEstoque, NFRef, Identificacao, Emitente, Destinatario, Detalhes, Duplicatas, EmpTransp, Veiculo, Reboque, Transportadora, Volumes, Pagamento, PagamentoDetalhe, TipoPagamento, AutXML,
  ICMSTot, ISSQNTot, TotalNota, Retirada, Entrega, Compra, Exporta, Cobranca, InfoAdicional, InfoComplementar, InfIntermed, InfoRespTecnico, Lacres, MsgResultado, MsgDados, retTrib, RetWS, Protocolo, ProtocoloDH, ProcNFe, Proxy, CobrancaSearch: WideString;
  xJust, dhCont, CRT_old, CNPJ, CPF, IDEstrangeiro, xNome, IEDest, IM, ValorDuplicata, NumeroCob, Fone, TipoIntegracao, S: String;
  tpNF, idDest, IndPag, IndIntermed, cStat, I: Integer;
  vBC, vICMS, vPIS, vCOFINS, vOrig, vDesc, vLiq, ValorPagto: Currency;
  TextoCondicao: TStringList;
  Pasta: String;
begin
  {$REGION 'CHECAGENS_INICIAIS'}
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeItens.IsEmpty,'Esta NFe não contém itens.');
  AbortIf(DM.TBNfeNFE_CHAVEACESSO.Value='','Esta NFe não possui chave de acesso. Recrie a chave de acesso em Funções -> Recriar Chave de Acesso.');
  AbortIf(DM.TBNfeNFE_STATUS.Value='F','NFe já finalizada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value<>'','NFe já autorizada para uso. Impossível realizar novo envio.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');
  {$ENDREGION}

  if VerificarEstoque=False then
  Exit;

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Application.ProcessMessages;
  Memo1.Lines.Add('Envio de NFe...');

  U:=CoUtil.Create;

  {$REGION 'NOTAS_REFERENCIADAS'}
  //SetReferenciadas; //seta as variaveis do subgrupo do grupo identificação. de notas referenciadas. - FORMA ANTIGA.
  NFRef:='';
  U:=CoUtil.Create;
  DM.TBNfeRef.First;
  while not DM.TBNfeRef.Eof do
  begin
    if DM.TBNfeRefNFR_TIPO.Value='CF' then
    begin
      NFRef:=NFRef+U.ECFRef(DM.TBNfeRefNFR_MODELO.Value,
                                DM.TBNfeRefNFR_NUMERO.Value,
                                DM.TBNfeRefNFR_COO.Value);

    end;
    if DM.TBNfeRefNFR_TIPO.Value='CTE' then
    NFRef:=NFRef+U.CTeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFE' then
    NFRef:=NFRef+U.NFeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFP' then
    begin
      NFRef:=NFRef+U.NFRefP(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                                DM.TBNfeRefNFR_ANOMES.Value,
                                LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                                LimparFormatacao(DM.TBNfeRefNFR_CPFEMITENTE.Value),
                                LimparFormatacao(DM.TBNfeRefNFR_IEEMITENTE.Value),
                                StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                                DM.TBNfeRefNFR_SERIE.Value,
                                DM.TBNfeRefNFR_NUMERO.Value);
    end;
    if DM.TBNfeRefNFR_TIPO.Value='NF' then
    begin
      NFRef:=NFRef+U.NFRef(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                               DM.TBNfeRefNFR_ANOMES.Value,
                               LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                               StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                               DM.TBNfeRefNFR_SERIE.Value,
                               DM.TBNfeRefNFR_NUMERO.Value);
    end;
    DM.TBNfeRef.Next;
  end;
  {$ENDREGION}

  {$REGION 'IDENTIFICACAO'}
  tpNF:=0; //0:entrada 1:saida.
  if DM.TBNfeNFE_ENTRADASAIDA.Value='S' then
  tpNF:=1;
  dhCont:='';
  xJust:='';
  if DM.TBNfeNFE_TIPOEMISSAO.Value<>'1 - NORMAL' then
  begin
    dhCont:=UTC(DM.TBParametrosPAR_NFECONTINGENCIADATA.Value,DM.TBParametrosPAR_NFECONTINGENCIAHORA.Value,DM.TBParametrosPAR_FUSOHORARIO.Value);
    xJust:=DM.TBParametrosPAR_NFECONTINGENCIAJUST.Value;
  end;
  idDest:=1; //op interna... se estado diferente, op interestadual.
  if DM.TBEmpresaEMP_ESTADO.Value<>DM.TBNfeNFE_ESTADO.Value then
  idDest:=2;
  if DM.TBNfeNFE_ESTADO.Value='EX' then //se estado=EX=Exterior.
  idDest:=3;

  IndIntermed:=StrToInt(Copy(DM.TBNfeNFE_INTERMEDIADOR.Value,1,1));
  InfIntermed:=U.infIntermed(LimparFormatacao(DM.TBNfeNFE_INTERMEDIADORCNPJ.Value),DM.TBNfeNFE_INTERMEDIADORCAD.Value);

  Identificacao:=U.identificador202006(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    StrToInt(DM.TBNfeNFE_CODIGONUMERICO.Value),
    DM.TBNfeNFE_CFOPDESC.Value,
    DM.TBNfeNFE_MODELO.Value,
    DM.TBNfeNFE_SERIE.Value,
    DM.TBNfeNFE_CODIGO.Value,
    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    tpNF,
    idDest, //1:op interna 2:op interestadual 3:op com exterior.
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    NFRef,
    1, //1:retrato 2:paisagem.
    DBComboBox5.ItemIndex+1,
    StrToInt(Copy(DM.TBNfeNFE_CHAVEACESSO.Value,Length(DM.TBNfeNFE_CHAVEACESSO.Value),1)),
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
    DBComboBox6.ItemIndex+1, //finalidade.
    StrToInt(Copy(DBComboBox8.Text,1,1)), //0:nao consumidor final 1:consumidor final.
    StrToInt(Copy(DBComboBox9.Text,1,1)), //0:nao se aplica 1:op presencial 2:op nao presencial pela internet 3:op nao presencial teleatendimento 4:NFC-e em op de entrega a domicilio 5:op nao presencial, outros.
    0, //0-app proprio, 1-avulsa pelo fisco, 2-avulsa pelo cont. pelo site, 3-app do fisco.
    'Runtime',
    dhCont,
    xJust,
    IndIntermed
  );
  {$ENDREGION}

  {$REGION 'EMITENTE'}
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfeNFE_ESTADO.Value,[]); //localiza o estado do cliente na tabela de aliquotas para preencher a IE ST.   //a empresa pode ter uma IE ST para cada estado.
  IM:='';
  if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFE') then
  IM:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
  Emitente:=U.Emitente2G(
    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    '',
    DM.TBEmpresaEMP_NOME.Value,
    DM.TBEmpresaEMP_NOMEFANTASIA.Value,
    DM.TBEmpresaEMP_ENDERECO.Value,
    DM.TBEmpresaEMP_NUMERO.Value,
    '',
    DM.TBEmpresaEMP_BAIRRO.Value,
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    DM.TBEmpresaEMP_CIDADE.Value,
    DM.TBEmpresaEMP_ESTADO.Value,
    LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
    IntToStr(DM.TBEmpresaEMP_PAISCODIGO.Value),
    DM.TBEmpresaEMP_PAIS.Value,
    LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
    LimparFormatacao(DM.TBAliquotasALI_IEST.Value),
    IM,
    LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value),
    Copy(DM.TBEmpresaEMP_ENQUADRAMENTO.Value,1,1)
  );
  {$ENDREGION}

  {$REGION 'DESTINATARIO'}
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;
  if DM.TBClientesCLI_IDESTRANGEIRO.Value<>'' then
  begin
    IDEstrangeiro:=DM.TBClientesCLI_IDESTRANGEIRO.Value;
    CNPJ:='';
    CPF:='';
  end else
  begin
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    //estava dando problema com nulo e vazio... if (not DM.TBNfeNFE_CNPJ.IsNull) and (DM.TBNfeNFE_CNPJ.Value<>'  .   .   /    -  ') then
    begin
      IDEstrangeiro:='';
      CNPJ:=LimparFormatacao(DM.TBNfeNFE_CNPJ.Value);
      CPF:='';
    end else
    begin
      IDEstrangeiro:='';
      CNPJ:='';
      CPF:=LimparFormatacao(DM.TBNfeNFE_CPF.Value);
    end;
  end;
  IEDest:=Copy(DM.TBClientesCLI_CONTRIBUINTEICMS.Value,1,1);
  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  xNome:='NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  xNome:=DM.TBNfeNFE_NOME.Value;
  NumeroCob:=DM.TBNfeNFE_NUMERO.Value;
  if NumeroCob='' then NumeroCob:='SN'; //chega desse erro idiota.
  Fone:=LimparFormatacao(DM.TBNfeNFE_FONE1.Value);
  if Fone.Length<11 then
  Fone:=''; //chega desse erro idiota também.
  Destinatario:=U.destinatario310(CNPJ,CPF,IDEstrangeiro,xNome,DM.TBNfeNFE_ENDERECO.Value,NumeroCob,DM.TBNfeNFE_COMPLEMENTO.Value,
                                  DM.TBNfeNFE_BAIRRO.Value,IntToStr(DM.TBNfeNFE_CIDADECODIGO.Value),DM.TBNfeNFE_CIDADE.Value,
                                  DM.TBNfeNFE_ESTADO.Value,LimparFormatacao(DM.TBNfeNFE_CEP.Value),
                                  IntToStr(DM.TBNfeNFE_PAISCODIGO.Value),DM.TBNfeNFE_PAIS.Value,Fone,
                                  IEDest,LimparFormatacao(DM.TBNfeNFE_IE.Value),LimparFormatacao(DM.TBClientesCLI_SUFRAMA.Value),'','');
  {$ENDREGION}

  //Autoriza o CNPJ da contabilidade a baixar o XML.
  AutXML:='';
  if (DM.TBEmpresaFOR_CNPJ.Value<>'') and (DM.TBEmpresaFOR_CNPJ.Value<>DM.TBNfeNFE_CNPJ.Value) then
  AutXML:=AutXML+U.autXML(LimparFormatacao(DM.TBEmpresaFOR_CNPJ.Value),'');

  //Autoriza o CNPJ da transportadora a baixar o XML.
  if (DM.TBNfeNFE_TRANSPCNPJ.Value<>'') and (DM.TBNfeNFE_TRANSPCNPJ.Value<>DM.TBNfeNFE_CNPJ.Value) then
  AutXML:=AutXML+U.autXML(LimparFormatacao(DM.TBNfeNFE_TRANSPCNPJ.Value),'');

  SetProdutos(Detalhes); //monta o xml na variavel Detalhes.

  {$REGION 'TRANSPORTADORA'}
  if (not DM.TBNfeNFE_TRANSPCNPJ.IsNull) and (DM.TBNfeNFE_TRANSPCNPJ.Value<>'  .   .   /    -  ') then
  begin
    CNPJ:=LimparFormatacao(DM.TBNfeNFE_TRANSPCNPJ.Value);
    CPF:='';
  end else
  begin
    CNPJ:='';
    CPF:=LimparFormatacao(DM.TBNfeNFE_TRANSPCPF.Value);
  end;
  if DM.TBNfeNFE_TRANSPNOME.Value<>'' then
  EmpTransp:=U.Transporta(CNPJ,CPF,DM.TBNfeNFE_TRANSPNOME.Value,LimparFormatacao(DM.TBNfeNFE_TRANSPIE.Value),DM.TBNfeNFE_TRANSPENDERECO.Value,DM.TBNfeNFE_TRANSPCIDADE.Value,DM.TBNfeNFE_TRANSPESTADO.Value);
  if DM.TBNfeNFE_VEICULOPLACA.Value<>'' then
  Veiculo:=U.VeicTransp(LimparFormatacao(DM.TBNfeNFE_VEICULOPLACA.Value),DM.TBNfeNFE_VEICULOPLACAUF.Value,DM.TBNfeNFE_VEICULORNTC.Value);
  if DM.TBNfeNFE_REBOQUEPLACA.Value<>'' then
  Reboque:=U.Reboque(LimparFormatacao(DM.TBNfeNFE_REBOQUEPLACA.Value),DM.TBNfeNFE_REBOQUEPLACAUF.Value,DM.TBNfeNFE_REBOQUERNTC.Value);
  Lacres:='';
  if not DM.TBNfeNFE_LACRES.IsNull then
  Lacres:=U.lacres(DM.TBNfeNFE_LACRES.Value);
  if not DM.TBNfeNFE_VOLUMES.IsNull then
  Volumes:=U.vol(DM.TBNfeNFE_VOLUMES.Value,DM.TBNfeNFE_ESPECIE.Value,DM.TBNfeNFE_MARCA.Value,DM.TBNfeNFE_VOLUMESNUM.Value,DM.TBNfeNFE_PESOLIQ.AsExtended,DM.TBNfeNFE_PESOBRUTO.AsExtended,Lacres);
  Transportadora:=U.transportador2G(Copy(DM.TBNfeNFE_FRETE.Value,1,1),EmpTransp,'',Veiculo,Reboque,'','',Volumes); //Omitindo retTransp, vagao, balsa.
  {$ENDREGION}

  {$REGION 'TOTAIS'}
  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  begin
    if DM.TBNfeNFE_DESTACARIMPOSTOS.Value='S' then
    begin
      vBC:=DM.TBNfeNFE_BASEICMS.AsExtended; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
      vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
    end else
    begin
      vBC:=0; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=0;
      vPIS:=0; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=0;
    end;
  end else
  begin //demais empresas.
    vBC:=DM.TBNfeNFE_BASEICMS.AsExtended;
    vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
    vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended;
    vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
  end;
  if DM.TBParametrosPAR_VERSAOXML.Value='3.10' then
  begin
    ICMSTot:=U.totalICMSNT2015003(vBC,
                                  vICMS,
                                  DM.TBNfeNFE_BASEICMSST.AsExtended,
                                  DM.TBNfeNFE_TOTALICMSST.AsExtended,
                                  DM.TBNfeNFE_TOTALPRODUTOS.AsExtended+DM.TBNfeNFE_DESCVALOR.AsExtended,
                                  DM.TBNfeNFE_VALORFRETE.AsExtended,
                                  DM.TBNfeNFE_VALORSEGURO.AsExtended,
                                  DM.TBNfeNFE_DESCVALOR.AsExtended,
                                  DM.TBNfeNFE_TOTALII.AsExtended,
                                  DM.TBNfeNFE_TOTALIPI.AsExtended,
                                  vPIS,
                                  vCOFINS,
                                  DM.TBNfeNFE_VALORDESPACES.AsExtended,
                                  DM.TBNfeNFE_VALORTOTAL.AsExtended,
                                  DM.TBNfeNFE_TOTALTRIBUTOS.AsExtended,
                                  //0,0,0,0);
                                  0,DM.TBNfeNFE_TOTALICMSUFDEST.AsExtended,DM.TBNfeNFE_TOTALICMSUFREMET.AsExtended,DM.TBNfeNFE_TOTALFCP.AsExtended);
  end else
  if DM.TBParametrosPAR_VERSAOXML.Value='4.00' then
  begin
    ICMSTot:=U.totalICMS400(vBC,
                            vICMS,
                            DM.TBNfeNFE_BASEICMSST.AsExtended,
                            DM.TBNfeNFE_TOTALICMSST.AsExtended,
                            DM.TBNfeNFE_TOTALPRODUTOS.AsExtended+DM.TBNfeNFE_DESCVALOR.AsExtended,
                            DM.TBNfeNFE_VALORFRETE.AsExtended,
                            DM.TBNfeNFE_VALORSEGURO.AsExtended,
                            DM.TBNfeNFE_DESCVALOR.AsExtended,
                            DM.TBNfeNFE_TOTALII.AsExtended,
                            DM.TBNfeNFE_TOTALIPI.AsExtended,
                            vPIS,
                            vCOFINS,
                            DM.TBNfeNFE_VALORDESPACES.AsExtended,
                            DM.TBNfeNFE_VALORTOTAL.AsExtended,
                            DM.TBNfeNFE_TOTALTRIBUTOS.AsExtended,
                            0,
                            DM.TBNfeNFE_TOTALICMSUFDEST.AsExtended,
                            DM.TBNfeNFE_TOTALICMSUFREMET.AsExtended,
                            DM.TBNfeNFE_TOTALFCP.AsExtended,
                            DM.TBNfeNFE_TOTALFCP.AsExtended,
                            DM.TBNfeNFE_TOTALFCPST.AsExtended,
                            0,
                            0);

  end;
  ISSQNTot:=U.totalISS310(DM.TBNfeNFE_TOTALSERVICOS.AsExtended,
                          DM.TBNfeNFE_BASEISS.AsExtended,
                          DM.TBNfeNFE_TOTALISS.AsExtended,
                          0, //total pis sobre servico.
                          0, //total cofins sobre servico.
                          DateToFBDate(DM.TBNfeNFE_DTPRESTSERVICO.Value),
                          DM.TBNfeNFE_TOTALISSDEDUCAO.AsExtended,
                          DM.TBNfeNFE_TOTALISSOUTROS.AsExtended,
                          DM.TBNfeNFE_TOTALISSDESCINCOND.AsExtended,
                          DM.TBNfeNFE_TOTALISSDESCCOND.AsExtended,
                          DM.TBNfeNFE_TOTALISSRETENCAO.AsExtended,
                          Copy(DM.TBEmpresaEMP_ENQUADRAMENTOISS.Value,1,1));

  retTrib:=U.tributoRetido(0,0,0,DM.TBNfeNFE_BASEIRRF.AsExtended,DM.TBNfeNFE_TOTALIRRF.AsExtended,0,0);

  TotalNota:=U.Total(ICMSTot,ISSQNTot,retTrib); //omitido valores de RetTributos
  {$ENDREGION}

  //grupos nao utilizados.
  Retirada:='';
  Entrega:='';
  Compra:='';

  //info sobre exportação.
  Exporta:='';
  if DM.TBNfeNFE_EXUFSAIDA.Value<>'' then
  Exporta:=U.exporta310(DM.TBNfeNFE_EXUFSAIDA.Value,DM.TBNfeNFE_EXLOCAL.Value,'');

  {$REGION 'COBRANCA'}
  indPag:=StrToInt(Copy(DM.TBNfeCPG_TIPOPAGAMENTO.Value,1,1));
  Cobranca:='';
  Duplicatas:='';
  Pagamento:='';
  if DM.TBParametrosPAR_INFOCOBRANCAXML.Value='S' then //na versão 4.00 tornou-se obrigatório a informação abaixo.
  begin
    if DM.TBNfeNFE_CONDICAOMEMO.Value<>'ESTA CFOP NAO MOVIMENTA FINANCEIRO.' then
    begin
      for I:=3 to DBMemo2.Lines.Count-1 do //descarta as 3 primeiras linhas.
      begin
        //AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)
        ValorDuplicata:=Trim(Copy(DBMemo2.Lines[I],19,15));
        if Copy(ValorDuplicata,1,2)='R$' then Delete(ValorDuplicata,1,2); //retira o R$
        ValorDuplicata:=Trim(ValorDuplicata); //dá mais um trim para ter certeza que nao ficou espaço depois do R$.
        Duplicatas:=Duplicatas+U.dup(AlignText(Trim(Copy(DBMemo2.Lines[I],1,8)),'0',3,taRight),
                                     StrToDate(Copy(DBMemo2.Lines[I],9,10)),
                                     StrToFloat(EliminarPontos(ValorDuplicata)));
      end;
    end;
    //se o valor do desconto for zero, chama novamente a funcao passando 0.001 para gerar a tag vDesc com valor zerado.
    vDesc:=DM.TBNfeNFE_DESCVALOR.AsExtended;
    vOrig:=DM.TBNfeNFE_VALORTOTAL.AsExtended+vDesc;
    vLiq:=DM.TBNfeNFE_VALORTOTAL.AsExtended;
    if vDesc=0 then vDesc:=0.001;
    if vOrig=0 then vOrig:=0.001;
    if vLiq=0  then  vLiq:=0.001;
    if (DM.TBParametrosPAR_VERSAOXML.Value='4.00') and (DM.TBNfeNFE_FINALIDADE.Value<>'2 - NFE COMPLEMENTAR') then
    Cobranca:=U.cobr(IntToStr(DM.TBNfeNFE_CODIGO.Value),vOrig,vDesc,vLiq,Duplicatas);

    if (DM.TBNfeNFE_FINALIDADE.Value='3 - NFE DE AJUSTE') or
       (DM.TBNfeNFE_FINALIDADE.Value='4 - DEVOLUCAO DE MERCADORIA') then
    TipoPagamento:='90' else
    TipoPagamento:=Copy(DM.TBNfeCPG_MEIOPAGAMENTO.Value,1,2);

    TipoIntegracao:='';
    if DM.TBNfeCPG_TIPOINTEGRACAO.Value<>'0 - NAO INFORMAR' then
    TipoIntegracao:=Copy(DM.TBNfeCPG_TIPOINTEGRACAO.Value,1,1);

    //if IndPag=2 then IndPag:=0; //0=a vista 1=a prazo 2=outros... nos detalhes do pagamento nao tem outros.
    ValorPagto:=DM.TBNfeNFE_VALORTOTAL.AsExtended;
    if TipoPagamento='90' then ValorPagto:=0;
    PagamentoDetalhe:=U.detPag(IntToStr(IndPag),TipoPagamento,ValorPagto,TipoIntegracao,'','',''); //2=idem acima.
    Pagamento:=U.pagamento400(PagamentoDetalhe,0);
  end;

  if IndPag=0 then //se for a vista, nao informa cobrança.
  Cobranca:='';
  {$ENDREGION}

  InfoComplementar:=DeleteLineBreaks(DM.TBNfeNFE_INFOCOMPLEMENTAR.Value);
  //se total ICMS crédito SN maior que zero, então insere mensagem sobre permissão de crédito...
  if DM.TBNfeNFE_TOTALICMSCREDSN.Value>0 then
  InfoAdicional:=U.infAdic2G(DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value)+' Permite o aproveitamento do credito de ICMS no valor de '+Format('%m',[DM.TBNfeNFE_TOTALICMSCREDSN.AsExtended])+' correspondente '+
  'a aliquota de '+DM.TBNfeNFE_ALIQICMSCREDSN.AsString+'% nos termos do art. 23 da LC 123.',InfoComplementar,'','','') else
  InfoAdicional:=U.infAdic2G(DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value),InfoComplementar,'','','');

  //responsável técnico pelo software.
  InfoRespTecnico:=U.infRespTec('12843516000187','Rogerio','rogeriopett@gmail.com','47991963060','','','');
  //token (hash) gerado em https://updweb.fazenda.pr.gov.br/upd/solicitacao_token_fornecedor. sistema UPD.
  if DM.TBParametrosPAR_CSRT.Value<>'' then
  InfoRespTecnico:=U.infRespTec('12843516000187','Rogerio','rogeriopett@gmail.com','47991963060',DM.TBParametrosPAR_CSRTID.Value.ToString,DM.TBParametrosPAR_CSRT.Value,DM.TBNfeNFE_CHAVEACESSO.Value);

  //Monta XML da NFe.
  //XMLNFE:=U.NFe310(DM.TBParametrosPAR_VERSAOXML.Value,DM.TBNfeNFE_CHAVEACESSO.Value,Identificacao,Emitente,'',Destinatario,Retirada,
  //                 Entrega,Detalhes,TotalNota,Transportadora,Cobranca,Pagamento,InfoAdicional,Exporta,Compra,'','');
  //XMLNFE:=U.NFe201805(DM.TBParametrosPAR_VERSAOXML.Value,DM.TBNfeNFE_CHAVEACESSO.Value,Identificacao,Emitente,'',Destinatario,Retirada,
  //                    Entrega,Detalhes,TotalNota,Transportadora,Cobranca,Pagamento,InfoAdicional,Exporta,Compra,'',AutXML,InfoRespTecnico);
  XMLNFE:=U.NFe202006(DM.TBParametrosPAR_VERSAOXML.Value,DM.TBNfeNFE_CHAVEACESSO.Value,Identificacao,Emitente,'',Destinatario,Retirada,
                      Entrega,Detalhes,TotalNota,Transportadora,Cobranca,Pagamento,InfoAdicional,Exporta,Compra,'',AutXML,InfoRespTecnico,InfIntermed);
  XMLNFE:=RemoveAcentosXML(XMLNFE);

  //faz o envio síncrono.
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
  ProcNFe:=U.EnviaNFSincrono(DM.TBParametrosPAR_SIGLAWS.Value,
                             XMLNFE,
                             DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                             DM.TBParametrosPAR_VERSAOXML.Value,
                             MsgDados,
                             RetWS,
                             cStat,
                             MsgResultado,
                             Protocolo,
                             ProtocoloDH,
                             XMLNFEAss,
                             Proxy,
                             DM.TBParametrosPAR_PROXYUSER.Value,
                             DM.TBParametrosPAR_PROXYPASSWORD.Value,
                             DM.TBParametrosPAR_LICENCADLL.Value);

  Memo1.Lines.Add('Código Retorno..: '+IntToStr(cStat));
  Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);

  if cStat<>100 then
  FormNfe.Memo1.Lines.Add(TraduzirErroSchemaSEFAZ(MsgResultado));

  //grava o XML enviado para a receita... neste caso, o lote em si.
  AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
  Rewrite(F);
  if MsgDados<>'' then
  Write(F,AnsiToUtf8(MsgDados)) else
  Write(F,AnsiToUtf8(XMLNFE)); //se deu erro no envio, salva o XML que tentamos enviar.
  CloseFile(F);

  if ProcNFe<>'' then
  begin
    DM.TBNfe.Edit;
    DM.TBNfeNFE_PROTOCOLO.Value:=Protocolo;
    DM.TBNfeNFE_PROTOCOLODH.Value:=ProtocoloDH;
    DM.TBNfeNFE_CONSULTADA.Value:='F';
    DM.TBNfe.Post;

    Memo1.Lines.Add('Protocolo.......: '+Protocolo);
    Memo1.Lines.Add('Data Hora.......: '+ProtocoloDH);

    //grava a NFe com apenas a assinatura.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-NFe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLNFEAss));
    //Write(F,UTF8Encode(XMLNFEAss));
    CloseFile(F);
    //grava a NFe autorizada.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml',CP_UTF8);
    Rewrite(F);
    //Write(F,AnsiToUtf8(ProcNFe));
    Write(F,UTF8Encode(ProcNFe));
    CloseFile(F);
  end;

  U:=nil;
end;

procedure TFormNfe.EnviarNFePorEmail1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM.TBNfe.IsEmpty,'Nenhuma NFe selecionada.');
  AbortIf(DM.TBNfeNFE_PROTOCOLO.Value='','NFe ainda não autorizada.');
  AbortIf((DM.TBNfeNFE_STATUS.Value<>'F') and (DM.TBNfeNFE_STATUS.Value<>'C'),'NFe não finalizada ou cancelada.');

  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-procNFe.xml'),'Arquivo XML não encontrado.');

  //if DM.TBParametrosPAR_NFEEMAILSISTEMA.Value='N' then
  //EnviarNFePorEmailViaOS else
  EnviarNFePorEmailViaSistema;
end;

procedure TFormNfe.EnviarNFePorEmailAutomatico1Click(Sender: TObject);
begin
  //if DM.TBParametrosPAR_NFEEMAILSISTEMA.Value='N' then
  //EnviarNFePorEmailViaOS else
  EnviarNFePorEmailViaSistemaAutomatico;
end;

procedure TFormNfe.EliminarTodos1ButtonClick(Sender: TObject);
begin
  EliminarTodos1.Click;
end;

procedure TFormNfe.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_CNPJ.Clear;
end;

procedure TFormNfe.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_CPF.Clear;
end;

procedure TFormNfe.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_DTSAIDA.Clear;
end;

procedure TFormNfe.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfeNFE_DTEMISSAO.Clear;
end;

initialization
  RegisterClass(TFormNfe);

finalization
  UnRegisterClass(TFormNfe);

end.
