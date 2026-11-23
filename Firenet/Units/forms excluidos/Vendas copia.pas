unit Vendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Mask, IDAttachmentFile,
  Grids, DBGrids, IBDatabase, DB, IBCustomDataSet, IBQuery, ComCtrls, QRPDFFilt,
  PngSpeedButton, ImgList, PngImageList, PngBitBtn, System.ImageList, System.UITypes;

type
  TFormVendas = class(TForm)
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
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit32: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBEdit7: TDBEdit;
    SpeedButton1: TPngSpeedButton;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    DBEdit25: TDBEdit;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    BitBtn1: TPngBitBtn;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    CadastroDeProdutos1: TMenuItem;
    Label39: TLabel;
    DBEdit29: TDBEdit;
    Label40: TLabel;
    Label33: TLabel;
    DBText6: TDBText;
    Label34: TLabel;
    DBText7: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    N3: TMenuItem;
    FinalizarPedido1: TMenuItem;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    GerarNota1Button: TPngSpeedButton;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    DBComboBox2: TDBComboBox;
    DBMemo2: TDBMemo;
    BitBtn5: TPngBitBtn;
    DBEdit33: TDBEdit;
    Label36: TLabel;
    DBEdit35: TDBEdit;
    Label41: TLabel;
    DBEdit36: TDBEdit;
    Label42: TLabel;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit39: TDBEdit;
    Label45: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Label46: TLabel;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    DBEdit34: TDBEdit;
    Label37: TLabel;
    AtualizarItens1: TMenuItem;
    ImprimirPedidoDeVendas1Button: TPngSpeedButton;
    ImprimirVenda1: TMenuItem;
    CadastroDeCondiesdePagamento1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    LocalizarVendaNoContasAReceber1Button: TPngSpeedButton;
    LocalizarVendaNoContasAReceber1: TMenuItem;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    DuplicarPedido1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    DuplicarPedido1: TMenuItem;
    BitBtn6: TPngBitBtn;
    CancelarPedido1: TMenuItem;
    TRVendas: TIBTransaction;
    TRVendasItens: TIBTransaction;
    QYVendas: TIBDataSet;
    QYVendasItens: TIBDataSet;
    QYVendasVEN_CODIGO: TIntegerField;
    QYVendasVEN_NOME: TIBStringField;
    QYVendasCPG_CODIGO: TIntegerField;
    QYVendasCPG_DESCRICAO: TIBStringField;
    DSVendas: TDataSource;
    QYVendasItensPRO_CODIGO: TIntegerField;
    QYVendasItensPRO_NOME: TIBStringField;
    QYVendasItensPRO_TIPO: TIBStringField;
    QYVendasItensPRO_UNIDADE: TIBStringField;
    EnviarPedidoPorEmail1: TMenuItem;
    EnviarPedidoPorEmail1Button: TPngSpeedButton;
    QYReceber: TIBQuery;
    TRReceber: TIBTransaction;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    SpeedButton17: TPngSpeedButton;
    Label49: TLabel;
    QYVendasVEN_CODIGO1: TIntegerField;
    QYVendasVEN_NOME1: TIBStringField;
    GerarNota1: TMenuItem;
    ImprimirPedidoDeVendas1: TMenuItem;
    ImprimirPedidoComoOrcamento1: TMenuItem;
    CadastroDeNotasFiscais1Button: TPngSpeedButton;
    CadastroDeNotasFiscais1: TMenuItem;
    Label50: TLabel;
    DBText10: TDBText;
    Label51: TLabel;
    DBText11: TDBText;
    Mostrarcamponota1: TMenuItem;
    DBEdit44: TDBEdit;
    Label52: TLabel;
    DBEdit45: TDBEdit;
    Label53: TLabel;
    DBEdit46: TDBEdit;
    Label54: TLabel;
    DBEdit47: TDBEdit;
    Label55: TLabel;
    ImprimirVendaEstiloWindows1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N6: TMenuItem;
    VendasPorCliente1: TMenuItem;
    VendasPorVendedorSintetico1: TMenuItem;
    VendasPorVendedorAnalitico1: TMenuItem;
    CurvaABCClientes1: TMenuItem;
    MargemBruta1: TMenuItem;
    MelhoresClientesPorItemVendido1: TMenuItem;
    AnaliseValorDeVendaVsTabelaPreco1: TMenuItem;
    FrequenciaDeVendasPorVendedor1: TMenuItem;
    FrequenciaDeVendasMensalPorVendedor1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    RastreamentoDeLotes1: TMenuItem;
    GerarNFe1: TMenuItem;
    Label65: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    SpeedButton19: TPngSpeedButton;
    Label66: TLabel;
    Label67: TLabel;
    DBMemo3: TDBMemo;
    DBText12: TDBText;
    Label68: TLabel;
    QYVendasItensPRO_CSTICMS: TIntegerField;
    CadastroDeEnderecos1: TMenuItem;
    GerarNFe1Button: TPngSpeedButton;
    TabSheet5: TTabSheet;
    Label69: TLabel;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    Label72: TLabel;
    DBEdit64: TDBEdit;
    Label73: TLabel;
    Label74: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    Label75: TLabel;
    DBEdit67: TDBEdit;
    Label76: TLabel;
    DBEdit68: TDBEdit;
    Label77: TLabel;
    DBEdit69: TDBEdit;
    Label78: TLabel;
    DBEdit70: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    Label87: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    SpeedButton3: TPngSpeedButton;
    DBEdit26: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit18: TDBEdit;
    CadastroDeNotasFiscaisEletronicas1: TMenuItem;
    CadastroDeNotasFiscaisEletronicas1Button: TPngSpeedButton;
    CadastroDeClassificacoesFiscais1: TMenuItem;
    CadastroDeImpostoICMS1: TMenuItem;
    CadastroDeNaturezasdeOperacao1: TMenuItem;
    CadastroDeImpostoIPI1: TMenuItem;
    CadastroDeImpostoISS1: TMenuItem;
    CadastroDeImpostoPISCOFINS1: TMenuItem;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    CadastroDeClassificacoesFiscais1Button: TPngSpeedButton;
    CadastroDeImpostoICMS1Button: TPngSpeedButton;
    CadastroDeImpostoIPI1Button: TPngSpeedButton;
    CadastroDeImpostoISS1Button: TPngSpeedButton;
    CadastroDeImpostoPISCOFINS1Button: TPngSpeedButton;
    QYVendasItensNAT_CODIGO: TIntegerField;
    QYVendasItensNAT_DESCRICAO: TIBStringField;
    QYVendasItensCLF_DESCRICAO: TIBStringField;
    QYVendasItensICM_DESCRICAO: TIBStringField;
    QYVendasItensIPI_DESCRICAO: TIBStringField;
    QYVendasItensISS_DESCRICAO: TIBStringField;
    QYVendasItensPIS_DESCRICAO: TIBStringField;
    QYVendasItensPIS_DESCRICAO1: TIBStringField;
    DBComboBox5: TDBComboBox;
    Label21: TLabel;
    ComissoesPorVendedorAnalitico1: TMenuItem;
    ComissoesPorVendedorSintetico1: TMenuItem;
    DBText13: TDBText;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    MarcarPedidoComoEntregue1: TMenuItem;
    MarcarPedidoComoEntregue1Button: TPngSpeedButton;
    DBEdit23: TDBEdit;
    VendasPorMarca1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    VendasPorCondicaoDePagamentoSintetico1: TMenuItem;
    VendasPorCondicaoDePagamentoAnalitico1: TMenuItem;
    BitBtn7: TPngBitBtn;
    DBEdit27: TDBEdit;
    Label88: TLabel;
    VendasPorProduto1: TMenuItem;
    PngImageList1: TPngImageList;
    CadastroDeFornecedores1: TMenuItem;
    Label89: TLabel;
    Label105: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    OrdemDeEntrega1: TMenuItem;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    VendasPorGrupo1: TMenuItem;
    VendasPorFamilia1: TMenuItem;
    GroupBox1: TGroupBox;
    Label90: TLabel;
    DBEdit28: TDBEdit;
    Label91: TLabel;
    DBEdit79: TDBEdit;
    Label92: TLabel;
    DBEdit80: TDBEdit;
    EtiquetaParaEmbalagem1: TMenuItem;
    Label93: TLabel;
    DBText16: TDBText;
    Label94: TLabel;
    DBText17: TDBText;
    VendasPorVendedorETipoDeFrete1: TMenuItem;
    OrdemDeSeparacao1: TMenuItem;
    VendasPorVendedorECidade1: TMenuItem;
    VendasPorClienteComItens1: TMenuItem;
    Cadastros1: TMenuItem;
    AlterarCampoMovimentacaoEstoque1: TMenuItem;
    AlterarCampoMovimentacaoFinanceiro1: TMenuItem;
    DBText18: TDBText;
    DBText19: TDBText;
    QYVendasItensICM_CALCULACREDITOSN: TIBStringField;
    QYVendasItensNAT_CALCULACREDITOSN: TIBStringField;
    QYVendasNAT_CALCULACREDITOSN: TIBStringField;
    CurvaABCProdutos1: TMenuItem;
    QYVendasNAT_CALCULACOMISSAO: TIBStringField;
    QYVendasItensNAT_CALCULACOMISSAO: TIBStringField;
    InutilizarPedido1: TMenuItem;
    InutilizarPedido1Button: TPngSpeedButton;
    DBText20: TDBText;
    Label98: TLabel;
    DBEdit84: TDBEdit;
    ProdutosVendidosPorVendedor1: TMenuItem;
    OrdemDeSeparacaoSelecionarNFs: TMenuItem;
    Label48: TLabel;
    DBText8: TDBText;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label56: TLabel;
    DBEdit12: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit88: TDBEdit;
    Label101: TLabel;
    DBEdit89: TDBEdit;
    Label102: TLabel;
    DBEdit90: TDBEdit;
    Label103: TLabel;
    DBEdit91: TDBEdit;
    Label104: TLabel;
    DBEdit92: TDBEdit;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit93: TDBEdit;
    GroupBox3: TGroupBox;
    Label57: TLabel;
    Label59: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    GroupBox4: TGroupBox;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    Label38: TLabel;
    DBEdit11: TDBEdit;
    DBEdit48: TDBEdit;
    GroupBox6: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label47: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    GroupBox7: TGroupBox;
    Label95: TLabel;
    DBEdit81: TDBEdit;
    Label108: TLabel;
    DBEdit94: TDBEdit;
    Label109: TLabel;
    DBEdit95: TDBEdit;
    Label110: TLabel;
    DBEdit96: TDBEdit;
    Label111: TLabel;
    DBEdit97: TDBEdit;
    GroupBox8: TGroupBox;
    Label96: TLabel;
    Label97: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    PopupMenu1: TPopupMenu;
    EnviarComoOrcamentoDetalhado2: TMenuItem;
    EnviarComoOrcamentoPadrao2: TMenuItem;
    OpenDialog1: TOpenDialog;
    ImprimirPedidoUtilizandoModelo1: TMenuItem;
    ImprimirPedidoComOrdemDeProducao1: TMenuItem;
    Label112: TLabel;
    DBEdit98: TDBEdit;
    EtiquetaParaEmbalagemModelo21: TMenuItem;
    AlterarTipoDeReceita1: TMenuItem;
    Label113: TLabel;
    DBText9: TDBText;
    DBText21: TDBText;
    Label114: TLabel;
    Label115: TLabel;
    DBEdit99: TDBEdit;
    ImprimirPedidoUtilizandoModelo1Item1: TMenuItem;
    ImportarArquivoXML1: TMenuItem;
    TabSheet6: TTabSheet;
    Label116: TLabel;
    DBEdit100: TDBEdit;
    Label117: TLabel;
    DBEdit101: TDBEdit;
    Label118: TLabel;
    DBEdit102: TDBEdit;
    GroupBox9: TGroupBox;
    Label119: TLabel;
    Label120: TLabel;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    Label121: TLabel;
    DBEdit105: TDBEdit;
    Label122: TLabel;
    DBEdit106: TDBEdit;
    Imprimir1: TMenuItem;
    ImprimirPedidoDeVendasA51: TMenuItem;
    Label123: TLabel;
    DBText22: TDBText;
    PngSpeedButton2: TPngSpeedButton;
    Label124: TLabel;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    Label125: TLabel;
    QYVendasVED_CODIGO: TIntegerField;
    QYVendasVED_CLIENTE: TIntegerField;
    QYVendasVED_EXPEDIDOPOR: TIntegerField;
    QYVendasVED_VENDEDOR: TIntegerField;
    QYVendasVED_ALIQICMSCREDSN: TFMTBCDField;
    QYVendasVED_BAIRRO: TIBStringField;
    QYVendasVED_BAIXADATA: TDateField;
    QYVendasVED_BAIXAPOR: TIBStringField;
    QYVendasVED_BASECOFINS: TFMTBCDField;
    QYVendasVED_BASECOFINSST: TFMTBCDField;
    QYVendasVED_BASEICMS: TFMTBCDField;
    QYVendasVED_BASEICMSST: TFMTBCDField;
    QYVendasVED_BASEII: TFMTBCDField;
    QYVendasVED_BASEIPI: TFMTBCDField;
    QYVendasVED_BASEISS: TFMTBCDField;
    QYVendasVED_BASEPIS: TFMTBCDField;
    QYVendasVED_BASEPISST: TFMTBCDField;
    QYVendasVED_CEP: TIBStringField;
    QYVendasVED_CFOP: TIntegerField;
    QYVendasVED_CFOPDESC: TIBStringField;
    QYVendasVED_CIDADE: TIBStringField;
    QYVendasVED_CIDADECODIGO: TIntegerField;
    QYVendasVED_CNPJ: TIBStringField;
    QYVendasVED_CODIMPORTACAO: TIBStringField;
    QYVendasVED_COMISSAO: TFMTBCDField;
    QYVendasVED_COMISSAOPOR: TIBStringField;
    QYVendasVED_COMPLEMENTO: TIBStringField;
    QYVendasVED_CONDICAO: TIntegerField;
    QYVendasVED_CONDICAOMEMO: TWideMemoField;
    QYVendasVED_CONFERIDO: TIBStringField;
    QYVendasVED_CONFERIDODATA: TDateField;
    QYVendasVED_CONFERIDOPOR: TIBStringField;
    QYVendasVED_CONTATO: TIBStringField;
    QYVendasVED_CPF: TIBStringField;
    QYVendasVED_CUSTOTOTAL: TFMTBCDField;
    QYVendasVED_DESCPORC: TFMTBCDField;
    QYVendasVED_DESCPORCCLIENTE: TFMTBCDField;
    QYVendasVED_DESCPORCCONDICAO: TFMTBCDField;
    QYVendasVED_DESCVALOR: TFMTBCDField;
    QYVendasVED_DESTACARIMPOSTOS: TIBStringField;
    QYVendasVED_DIAPREFERENCIAL: TIntegerField;
    QYVendasVED_DTATUALIZACAO: TDateField;
    QYVendasVED_DTCADASTRO: TDateField;
    QYVendasVED_DTEMISSAO: TDateField;
    QYVendasVED_DTPRESTSERVICO: TDateField;
    QYVendasVED_DTSAIDA: TDateField;
    QYVendasVED_ENDERECO: TIBStringField;
    QYVendasVED_ENTRADASAIDA: TIBStringField;
    QYVendasVED_ENTREGUE: TIBStringField;
    QYVendasVED_ESPECIE: TIBStringField;
    QYVendasVED_ESTADO: TIBStringField;
    QYVendasVED_ESTADOCODIGO: TIntegerField;
    QYVendasVED_EXLOCAL: TIBStringField;
    QYVendasVED_EXUFSAIDA: TIBStringField;
    QYVendasVED_FONE1: TIBStringField;
    QYVendasVED_FORMAPAGTO: TIBStringField;
    QYVendasVED_FRETE: TIBStringField;
    QYVendasVED_IDESTRANGEIRO: TIBStringField;
    QYVendasVED_IE: TIBStringField;
    QYVendasVED_INFOADICFISCO: TWideMemoField;
    QYVendasVED_LACRES: TIBStringField;
    QYVendasVED_LUCROPORC: TFMTBCDField;
    QYVendasVED_LUCROVALOR: TFMTBCDField;
    QYVendasVED_MANUAL: TIBStringField;
    QYVendasVED_MARCA: TIBStringField;
    QYVendasVED_MOVIMENTAESTOQUE: TIBStringField;
    QYVendasVED_MOVIMENTAFINANCEIRO: TIBStringField;
    QYVendasVED_NFE: TIntegerField;
    QYVendasVED_NOME: TIBStringField;
    QYVendasVED_NOTA: TIntegerField;
    QYVendasVED_NUMERO: TIBStringField;
    QYVendasVED_OBSERVACOES: TWideMemoField;
    QYVendasVED_PAIS: TIBStringField;
    QYVendasVED_PAISCODIGO: TIntegerField;
    QYVendasVED_PEDIDOCLIENTE: TIBStringField;
    QYVendasVED_PESOBRUTO: TIBBCDField;
    QYVendasVED_PESOLIQ: TIBBCDField;
    QYVendasVED_REBOQUEPLACA: TIBStringField;
    QYVendasVED_REBOQUEPLACAUF: TIBStringField;
    QYVendasVED_REBOQUERNTC: TIBStringField;
    QYVendasVED_RG: TIBStringField;
    QYVendasVED_SEQUENCIAITEM: TIntegerField;
    QYVendasVED_STATUS: TIBStringField;
    QYVendasVED_TABELAPRECO: TIBStringField;
    QYVendasVED_TOTALADUANA: TFMTBCDField;
    QYVendasVED_TOTALBRUTO: TFMTBCDField;
    QYVendasVED_TOTALCOFINS: TFMTBCDField;
    QYVendasVED_TOTALCOFINSST: TFMTBCDField;
    QYVendasVED_TOTALCOMISSAO: TFMTBCDField;
    QYVendasVED_TOTALFCP: TFMTBCDField;
    QYVendasVED_TOTALFCPST: TFMTBCDField;
    QYVendasVED_TOTALICMS: TFMTBCDField;
    QYVendasVED_TOTALICMSCREDSN: TFMTBCDField;
    QYVendasVED_TOTALICMSST: TFMTBCDField;
    QYVendasVED_TOTALICMSUFDEST: TFMTBCDField;
    QYVendasVED_TOTALICMSUFREMET: TFMTBCDField;
    QYVendasVED_TOTALII: TFMTBCDField;
    QYVendasVED_TOTALIOF: TFMTBCDField;
    QYVendasVED_TOTALIPI: TFMTBCDField;
    QYVendasVED_TOTALISS: TFMTBCDField;
    QYVendasVED_TOTALISSDEDUCAO: TFMTBCDField;
    QYVendasVED_TOTALISSDESCCOND: TFMTBCDField;
    QYVendasVED_TOTALISSDESCINCOND: TFMTBCDField;
    QYVendasVED_TOTALISSOUTROS: TFMTBCDField;
    QYVendasVED_TOTALISSRETENCAO: TFMTBCDField;
    QYVendasVED_TOTALITENS: TFMTBCDField;
    QYVendasVED_TOTALPIS: TFMTBCDField;
    QYVendasVED_TOTALPISST: TFMTBCDField;
    QYVendasVED_TOTALPRODUTOS: TFMTBCDField;
    QYVendasVED_TOTALSERVICOS: TFMTBCDField;
    QYVendasVED_TOTALTRIBUTOS: TFMTBCDField;
    QYVendasVED_TOTALTRIBUTOSEST: TFMTBCDField;
    QYVendasVED_TOTALTRIBUTOSFED: TFMTBCDField;
    QYVendasVED_TOTALTRIBUTOSIMP: TFMTBCDField;
    QYVendasVED_TOTALTRIBUTOSMUN: TFMTBCDField;
    QYVendasVED_TRANSPCIDADE: TIBStringField;
    QYVendasVED_TRANSPCNPJ: TIBStringField;
    QYVendasVED_TRANSPCPF: TIBStringField;
    QYVendasVED_TRANSPEMAIL: TIBStringField;
    QYVendasVED_TRANSPENDERECO: TIBStringField;
    QYVendasVED_TRANSPESTADO: TIBStringField;
    QYVendasVED_TRANSPFONE: TIBStringField;
    QYVendasVED_TRANSPIE: TIBStringField;
    QYVendasVED_TRANSPNOME: TIBStringField;
    QYVendasVED_TRANSPORTADORA: TIntegerField;
    QYVendasVED_USUARIO: TIBStringField;
    QYVendasVED_VALORDESPACES: TFMTBCDField;
    QYVendasVED_VALORFRETE: TFMTBCDField;
    QYVendasVED_VALORSEGURO: TFMTBCDField;
    QYVendasVED_VALORTOTAL: TFMTBCDField;
    QYVendasVED_VEICULOPLACA: TIBStringField;
    QYVendasVED_VEICULOPLACAUF: TIBStringField;
    QYVendasVED_VEICULORNTC: TIBStringField;
    QYVendasVED_VIAINTERNET: TIBStringField;
    QYVendasVED_VOLUMES: TIntegerField;
    QYVendasVED_VOLUMESNUM: TIBStringField;
    QYVendasItensVEI_CODIGO: TIntegerField;
    QYVendasItensVEI_PRODUTO: TIntegerField;
    QYVendasItensVEI_VENDA: TIntegerField;
    QYVendasItensVEI_ALIQCOFINS: TFMTBCDField;
    QYVendasItensVEI_ALIQCOFINSST: TFMTBCDField;
    QYVendasItensVEI_ALIQFCP: TFMTBCDField;
    QYVendasItensVEI_ALIQFCPST: TFMTBCDField;
    QYVendasItensVEI_ALIQICMS: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSADICST: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSINTER: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSINTERPART: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSRED: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSST: TFMTBCDField;
    QYVendasItensVEI_ALIQII: TFMTBCDField;
    QYVendasItensVEI_ALIQIPI: TFMTBCDField;
    QYVendasItensVEI_ALIQISS: TFMTBCDField;
    QYVendasItensVEI_ALIQPIS: TFMTBCDField;
    QYVendasItensVEI_ALIQPISST: TFMTBCDField;
    QYVendasItensVEI_ALMOXARIFADO: TIntegerField;
    QYVendasItensVEI_BASECOFINS: TFMTBCDField;
    QYVendasItensVEI_BASECOFINSST: TFMTBCDField;
    QYVendasItensVEI_BASEICMS: TFMTBCDField;
    QYVendasItensVEI_BASEICMSRED: TFMTBCDField;
    QYVendasItensVEI_BASEICMSST: TFMTBCDField;
    QYVendasItensVEI_BASEII: TFMTBCDField;
    QYVendasItensVEI_BASEIPI: TFMTBCDField;
    QYVendasItensVEI_BASEISS: TFMTBCDField;
    QYVendasItensVEI_BASEPIS: TFMTBCDField;
    QYVendasItensVEI_BASEPISST: TFMTBCDField;
    QYVendasItensVEI_CEST: TIBStringField;
    QYVendasItensVEI_CFOP: TIntegerField;
    QYVendasItensVEI_CIDADEISS: TIntegerField;
    QYVendasItensVEI_CODIGOBARRAS: TIBStringField;
    QYVendasItensVEI_CODIGOFAB: TIBStringField;
    QYVendasItensVEI_COMISSAO: TFMTBCDField;
    QYVendasItensVEI_COMPLEMENTO: TIBStringField;
    QYVendasItensVEI_COMPOEBASEICMS: TIBStringField;
    QYVendasItensVEI_COMPOEBASEICMSST: TIBStringField;
    QYVendasItensVEI_COMPOETOTAL: TIBStringField;
    QYVendasItensVEI_CONVERSAO: TFMTBCDField;
    QYVendasItensVEI_CSTCOFINS: TIntegerField;
    QYVendasItensVEI_CSTICMS: TIntegerField;
    QYVendasItensVEI_CSTIPI: TIntegerField;
    QYVendasItensVEI_CSTPIS: TIntegerField;
    QYVendasItensVEI_DESCMAX: TFMTBCDField;
    QYVendasItensVEI_DESCPORC: TFMTBCDField;
    QYVendasItensVEI_DESCRICAO: TIBStringField;
    QYVendasItensVEI_DESCVALOR: TFMTBCDField;
    QYVendasItensVEI_DICNPJ: TIBStringField;
    QYVendasItensVEI_DIDATA: TDateField;
    QYVendasItensVEI_DIDESEMBARACODATA: TDateField;
    QYVendasItensVEI_DIDESEMBARACOLOCAL: TIBStringField;
    QYVendasItensVEI_DIDESEMBARACOUF: TIBStringField;
    QYVendasItensVEI_DIEXPORTADORCOD: TIBStringField;
    QYVendasItensVEI_DIINTERMEDIO: TIBStringField;
    QYVendasItensVEI_DINUMERO: TIBStringField;
    QYVendasItensVEI_DITERCEIROUF: TIBStringField;
    QYVendasItensVEI_DITRANSPORTE: TIBStringField;
    QYVendasItensVEI_DIVALORAFRMM: TFMTBCDField;
    QYVendasItensVEI_EXCHAVEACESSO: TIBStringField;
    QYVendasItensVEI_EXDRAWBACK: TIBStringField;
    QYVendasItensVEI_EXQUANTIDADE: TFMTBCDField;
    QYVendasItensVEI_EXREGISTRO: TIBStringField;
    QYVendasItensVEI_FCI: TIBStringField;
    QYVendasItensVEI_INCENTIVOISS: TIBStringField;
    QYVendasItensVEI_INDICADORISS: TIBStringField;
    QYVendasItensVEI_INFOADICIONAL: TWideMemoField;
    QYVendasItensVEI_LOCALIZACAO: TIBStringField;
    QYVendasItensVEI_LOTE: TIBStringField;
    QYVendasItensVEI_LUCROPORC: TFMTBCDField;
    QYVendasItensVEI_LUCROVALOR: TFMTBCDField;
    QYVendasItensVEI_MODICMS: TIBStringField;
    QYVendasItensVEI_MODICMSST: TIBStringField;
    QYVendasItensVEI_ORIGEM: TIBStringField;
    QYVendasItensVEI_PAISISS: TIntegerField;
    QYVendasItensVEI_PEDIDOCLIENTEITEM: TIntegerField;
    QYVendasItensVEI_PESO: TIBBCDField;
    QYVendasItensVEI_PESOTOTAL: TIBBCDField;
    QYVendasItensVEI_PRECOCUSTO: TFMTBCDField;
    QYVendasItensVEI_PRECOCUSTOTOTAL: TFMTBCDField;
    QYVendasItensVEI_PROCESSOISS: TIBStringField;
    QYVendasItensVEI_PRODUTOREAL: TIntegerField;
    QYVendasItensVEI_QUANTIDADE: TFMTBCDField;
    QYVendasItensVEI_QUANTIDADETROCA: TFMTBCDField;
    QYVendasItensVEI_SEQUENCIA: TIntegerField;
    QYVendasItensVEI_SERVICOISS: TIBStringField;
    QYVendasItensVEI_TIPO: TIBStringField;
    QYVendasItensVEI_TIPOISS: TIBStringField;
    QYVendasItensVEI_UNIDADE: TIBStringField;
    QYVendasItensVEI_VALORACESSORIAS: TFMTBCDField;
    QYVendasItensVEI_VALORADUANA: TFMTBCDField;
    QYVendasItensVEI_VALORCOFINS: TFMTBCDField;
    QYVendasItensVEI_VALORCOFINSST: TFMTBCDField;
    QYVendasItensVEI_VALORCOMISSAO: TFMTBCDField;
    QYVendasItensVEI_VALORFCP: TFMTBCDField;
    QYVendasItensVEI_VALORFCPST: TFMTBCDField;
    QYVendasItensVEI_VALORFRETE: TFMTBCDField;
    QYVendasItensVEI_VALORICMS: TFMTBCDField;
    QYVendasItensVEI_VALORICMSCREDSN: TFMTBCDField;
    QYVendasItensVEI_VALORICMSST: TFMTBCDField;
    QYVendasItensVEI_VALORICMSUFDEST: TFMTBCDField;
    QYVendasItensVEI_VALORICMSUFREMET: TFMTBCDField;
    QYVendasItensVEI_VALORII: TFMTBCDField;
    QYVendasItensVEI_VALORIOF: TFMTBCDField;
    QYVendasItensVEI_VALORIPI: TFMTBCDField;
    QYVendasItensVEI_VALORISS: TFMTBCDField;
    QYVendasItensVEI_VALORISSDEDUCAO: TFMTBCDField;
    QYVendasItensVEI_VALORISSDESCCOND: TFMTBCDField;
    QYVendasItensVEI_VALORISSDESCINCOND: TFMTBCDField;
    QYVendasItensVEI_VALORISSOUTROS: TFMTBCDField;
    QYVendasItensVEI_VALORISSRETENCAO: TFMTBCDField;
    QYVendasItensVEI_VALORPIS: TFMTBCDField;
    QYVendasItensVEI_VALORPISST: TFMTBCDField;
    QYVendasItensVEI_VALORSEGURO: TFMTBCDField;
    QYVendasItensVEI_VALORTOTAL: TFMTBCDField;
    QYVendasItensVEI_VALORTOTALBRUTO: TFMTBCDField;
    QYVendasItensVEI_VALORTRIBUTOS: TFMTBCDField;
    QYVendasItensVEI_VALORTRIBUTOSEST: TFMTBCDField;
    QYVendasItensVEI_VALORTRIBUTOSFED: TFMTBCDField;
    QYVendasItensVEI_VALORTRIBUTOSIMP: TFMTBCDField;
    QYVendasItensVEI_VALORTRIBUTOSMUN: TFMTBCDField;
    QYVendasItensVEI_VALORUNIT: TFMTBCDField;
    QYVendasItensPRO_PRECOVENDA: TFMTBCDField;
    QYReceberVALOR: TFMTBCDField;
    TrocasPorVendedor1: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    GerarPedidoUnificado1: TMenuItem;
    VendasPorVendedorEEstado1: TMenuItem;
    QYVendasVED_SUFRAMA: TIBStringField;
    QYVendasItensVEI_BASEICMSSTRET: TFMTBCDField;
    QYVendasItensVEI_VALORICMSSTRET: TFMTBCDField;
    QYVendasItensVEI_VALORICMSSUBSTITUTO: TFMTBCDField;
    QYVendasItensVEI_ALIQICMSSTRET: TFMTBCDField;
    QYVendasItensVEI_DESONERACAO: TIBStringField;
    QYVendasItensVEI_VALORICMSDESONERADO: TFMTBCDField;
    ConferenciaDoPedido1: TMenuItem;
    QYVendasItensVEI_CLASSFISCAL: TIBStringField;
    QYVendasItensVEI_EXCECAO: TIntegerField;
    QYVendasItensPRO_CLASSFISCAL: TIBStringField;
    VendasPorRamoDeAtividade1: TMenuItem;
    EtiquetaConferencia1: TMenuItem;
    AjustaroNmeroSequencialdosItens1: TMenuItem;
    ProdutosVendidosPorCliente1: TMenuItem;
    QYVendasVED_TIPOATENDIMENTO: TIBStringField;
    QYVendasVED_TIPOCONSUMIDOR: TIBStringField;
    QYVendasVED_TIPOOPERACAO: TIBStringField;
    Label126: TLabel;
    DBComboBox4: TDBComboBox;
    DBComboBox8: TDBComboBox;
    Label127: TLabel;
    Label128: TLabel;
    DBComboBox9: TDBComboBox;
    QYVendasItensVEI_SOMACOFINSST: TIBStringField;
    QYVendasItensVEI_SOMAPISST: TIBStringField;
    AtualizarOValorUnitarioDosItens1: TMenuItem;
    DBEdit4: TDBEdit;
    PngBitBtn2: TPngBitBtn;
    QYVendasVED_VIAINTERNETSTATUS: TIBStringField;
    DBText23: TDBText;
    Label129: TLabel;
    FrequenciaDeVendasSemAgrupamento1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit26KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure FinalizarPedido1Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure AtualizarItens1Click(Sender: TObject);
    procedure ImprimirVenda1Click(Sender: TObject);
    procedure CadastroDeCondiesdePagamento1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarVendaNoContasAReceber1Click(Sender: TObject);
    procedure DuplicarPedido1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CancelarPedido1Click(Sender: TObject);
    procedure QYVendasAfterPost(DataSet: TDataSet);
    procedure QYVendasBeforePost(DataSet: TDataSet);
    procedure QYVendasItensAfterPost(DataSet: TDataSet);
    procedure EnviarPedidoPorEmail1Click(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit42KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton17Click(Sender: TObject);
    procedure GerarNota1Click(Sender: TObject);
    procedure ImprimirPedidoDeVendas1Click(Sender: TObject);
    procedure ImprimirPedidoComoOrcamento1Click(Sender: TObject);
    procedure CadastroDeNotasFiscais1Click(Sender: TObject);
    procedure Mostrarcamponota1Click(Sender: TObject);
    procedure ImprimirVendaEstiloWindows1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure VendasPorCliente1Click(Sender: TObject);
    procedure VendasPorVendedorSintetico1Click(Sender: TObject);
    procedure VendasPorVendedorAnalitico1Click(Sender: TObject);
    procedure CurvaABCClientes1Click(Sender: TObject);
    procedure MargemBruta1Click(Sender: TObject);
    procedure MelhoresClientesPorItemVendido1Click(Sender: TObject);
    procedure AnaliseValorDeVendaVsTabelaPreco1Click(Sender: TObject);
    procedure FrequenciaDeVendasPorVendedor1Click(Sender: TObject);
    procedure FrequenciaDeVendasMensalPorVendedor1Click(Sender: TObject);
    procedure RastreamentoDeLotes1Click(Sender: TObject);
    procedure GerarNFe1Click(Sender: TObject);
    procedure DBEdit58KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit58Exit(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure CadastroDeNotasFiscaisEletronicas1Click(Sender: TObject);
    procedure CadastroDeNaturezasdeOperacao1Click(Sender: TObject);
    procedure CadastroDeClassificacoesFiscais1Click(Sender: TObject);
    procedure CadastroDeImpostoICMS1Click(Sender: TObject);
    procedure CadastroDeImpostoIPI1Click(Sender: TObject);
    procedure CadastroDeImpostoISS1Click(Sender: TObject);
    procedure CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
    procedure ComissoesPorVendedorAnalitico1Click(Sender: TObject);
    procedure ComissoesPorVendedorSintetico1Click(Sender: TObject);
    procedure MarcarPedidoComoEntregue1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure VendasPorMarca1Click(Sender: TObject);
    procedure VendasPorCondicaoDePagamentoSintetico1Click(Sender: TObject);
    procedure VendasPorCondicaoDePagamentoAnalitico1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure VendasPorProduto1Click(Sender: TObject);
    procedure DBEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure OrdemDeEntrega1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure VendasPorGrupo1Click(Sender: TObject);
    procedure VendasPorFamilia1Click(Sender: TObject);
    procedure EtiquetaParaEmbalagem1Click(Sender: TObject);
    procedure VendasPorVendedorETipoDeFrete1Click(Sender: TObject);
    procedure OrdemDeSeparacao1Click(Sender: TObject);
    procedure VendasPorVendedorECidade1Click(Sender: TObject);
    procedure VendasPorClienteComItens1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
    procedure CurvaABCProdutos1Click(Sender: TObject);
    procedure InutilizarPedido1Click(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit42Enter(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure ProdutosVendidosPorVendedor1Click(Sender: TObject);
    procedure OrdemDeSeparacaoSelecionarNFsClick(Sender: TObject);
    procedure ImprimirPedidoUtilizandoModelo1Click(Sender: TObject);
    procedure ImprimirPedidoComOrdemDeProducao1Click(Sender: TObject);
    procedure EtiquetaParaEmbalagemModelo21Click(Sender: TObject);
    procedure AlterarTipoDeReceita1Click(Sender: TObject);
    procedure ImprimirPedidoUtilizandoModelo1Item1Click(Sender: TObject);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure ImportarArquivoXML1Click(Sender: TObject);
    procedure ImprimirPedidoDeVendasA51Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure TrocasPorVendedor1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure GerarPedidoUnificado1Click(Sender: TObject);
    procedure VendasPorVendedorEEstado1Click(Sender: TObject);
    procedure ConferenciaDoPedido1Click(Sender: TObject);
    procedure EtiquetaConferencia1Click(Sender: TObject);
    procedure VendasPorRamoDeAtividade1Click(Sender: TObject);
    procedure AjustaroNmeroSequencialdosItens1Click(Sender: TObject);
    procedure ProdutosVendidosPorCliente1Click(Sender: TObject);
    procedure AtualizarOValorUnitarioDosItens1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FrequenciaDeVendasSemAgrupamento1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetVendedor(CodVend: Integer);
    procedure SetCondicao(CodCondicao: Integer);
    procedure ImprimirVendaControleInterno;
    procedure ImprimirPedidoDeVenda(Titulo, ArquivoPDF: String);
    //procedure ImprimirOrcamentoDetalhado(ArquivoPDF: String);
    procedure GerarEmailVenda;
    //procedure GerarEmailVendaDetalhado;
    function VerificarEstoque: Boolean;
  public
    { Public declarations }
    function VerificarEstoqueItem: Boolean;
  end;

var
  FormVendas: TFormVendas;

implementation
uses DataMod, DataMod2, ProdutosLoc, VendedoresLoc, FornecedoresLoc, ClientesLoc,
  VendasLoc, VendasItens, Main, Produtos, CondicoesLoc, Funcoes1, FuncoesFirenet,
  VendasFinalizar, VendasRel, Condicoes, Clientes, Receber,
  VendasCancelar, IdMessage, ShellAPI, NaturezasLoc,
  Notas, Nfe, EnderecosRuasLoc, Enderecos, Naturezas, ClassFiscal, Icms, Ipi, Iss,
  Piscofins, Fornecedores, VendasQ20, VendasAlterarDesconto, NFe_Util_2G_TLB,
  VendasAlterarFreteSeguroAcessorias, ReceberLoc, VendasQ23, DataModSearch,
  VendasQ25, VendasSeparacao, EmailsEnviar, VendasQ32, VendasQ33,
  ReceitasLoc, VendasImportarXML, VendasQ34, NotasFinalizar, VendasUnificar, VendasConferencia,
  VendasAlterarProdutos;

{$R *.dfm}

procedure TFormVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormVendas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormVendas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormVendas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.ShowModal;
  if VendasLoc.Procurar=True then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=FormVendasLoc.QYVendasVED_CODIGO.Value;
    DM.TBVendas.Open;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;
end;

procedure TFormVendas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormVendas.SetVendedor(CodVend: Integer);
begin
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=CodVend;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    DM.TBVendasVED_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
    DM.TBVendasVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
    DM.TBVendasVED_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
  end else
  begin
    DM.TBVendasVED_VENDEDOR.Clear;
    DM.TBVendasVEN_NOME.Clear;
    DM.TBVendasVED_COMISSAO.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormVendas.SetCondicao(CodCondicao: Integer);
begin
  DMS.QYCondicoes.Close;
  DMS.QYCondicoes.ParamByName('codigo').AsInteger:=CodCondicao;
  DMS.QYCondicoes.Open;
  if not DMS.QYCondicoes.IsEmpty then
  begin
    DM.TBVendasVED_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
    DM.TBVendasCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBVendasVED_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    DM.TBVendasVED_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
    BitBtn5.Click;
  end else
  begin
    DM.TBVendasVED_CONDICAO.Clear;
    DM.TBVendasCPG_DESCRICAO.Clear;
    DM.TBVendasVED_FORMAPAGTO.Clear;
  end;
  DMS.QYCondicoes.Close;
end;

procedure TFormVendas.DBEdit5Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendas.DBEdit5Exit(Sender: TObject);
begin
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendasVED_VENDEDOR.Clear;
    DM.TBVendasVEN_NOME.Clear;
    DM.TBVendasVED_COMISSAO.Clear;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      DM.TBVendasVED_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
      DM.TBVendasVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
      DM.TBVendasVED_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
    end else
    begin
      DM.TBVendasVED_VENDEDOR.Clear;
      DM.TBVendasVEN_NOME.Clear;
      DM.TBVendasVED_COMISSAO.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;

procedure TFormVendas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormVendas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar=True then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM.TBVendasVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    DM.TBVendasVED_COMISSAO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormVendas.DBEdit4Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendas.DBEdit4Exit(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBVendasVED_BAIRRO.Clear;
    DM.TBVendasVED_CEP.Clear;
    DM.TBVendasVED_CIDADE.Clear;
    DM.TBVendasVED_CIDADECODIGO.Clear;
    DM.TBVendasVED_CLIENTE.Clear;
    DM.TBVendasVED_CNPJ.Clear;
    DM.TBVendasVED_COMPLEMENTO.Clear;
    DM.TBVendasVED_CONTATO.Clear;
    DM.TBVendasVED_CPF.Clear;
    DM.TBVendasVED_DESCPORCCLIENTE.Value:=0;
    DM.TBVendasVED_ENDERECO.Clear;
    DM.TBVendasVED_ESTADO.Clear;
    DM.TBVendasVED_ESTADOCODIGO.Clear;
    DM.TBVendasVED_EXPEDIDOPOR.Clear;
    DM.TBVendasVED_FONE1.Clear;
    DM.TBVendasVED_FRETE.Value:='0 - EMITENTE';
    DM.TBVendasVED_IDESTRANGEIRO.Clear;
    DM.TBVendasVED_IE.Clear;
    DM.TBVendasVED_NOME.Clear;
    DM.TBVendasVED_NUMERO.Clear;
    DM.TBVendasVED_PAIS.Clear;
    DM.TBVendasVED_PAISCODIGO.Clear;
    DM.TBVendasVED_RG.Clear;
    DM.TBVendasVED_SUFRAMA.Clear;
    DM.TBVendasVED_TABELAPRECO.Clear;
    DM.TBVendasVED_VENDEDOR.Clear;
    DM.TBVendasVEN_NOME.Clear;
    DM.TBVendasVEN_NOME1.Clear;
  end;
begin
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCampos;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
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

      DM.TBVendasVED_BAIRRO.Value:=DMS.QYClientesCLI_BAIRROCOB.Value;
      DM.TBVendasVED_CEP.Value:=DMS.QYClientesCLI_CEPCOB.Value;
      DM.TBVendasVED_CIDADE.Value:=DMS.QYClientesCLI_CIDADECOB.Value;
      DM.TBVendasVED_CIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGOCOB.Value;
      DM.TBVendasVED_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM.TBVendasVED_CNPJ.Value:=DMS.QYClientesCLI_CNPJCOB.Value;
      DM.TBVendasVED_COMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTOCOB.Value;
      DM.TBVendasVED_CONDICAO.Value:=DMS.QYClientesCLI_CONDICAO.Value; //campo a mais.
      DM.TBVendasVED_CONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM.TBVendasVED_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM.TBVendasVED_DESCPORCCLIENTE.Value:=DMS.QYClientesCLI_DESCONTO.Value;
      DM.TBVendasVED_ENDERECO.Value:=DMS.QYClientesCLI_ENDERECOCOB.Value;
      DM.TBVendasVED_ESTADO.Value:=DMS.QYClientesCLI_ESTADOCOB.Value;
      DM.TBVendasVED_ESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGOCOB.Value;
      if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBVendasVED_EXPEDIDOPOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM.TBVendasVED_FONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM.TBVendasVED_FRETE.Value:=DMS.QYClientesCLI_FRETE.Value;
      //campo aliquota, pega no before post.
      DM.TBVendasVED_IDESTRANGEIRO.Value:=DMS.QYClientesCLI_IDESTRANGEIRO.Value;
      DM.TBVendasVED_IE.Value:=DMS.QYClientesCLI_IECOB.Value;
      DM.TBVendasVED_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBVendasVED_NUMERO.Value:=DMS.QYClientesCLI_NUMEROCOB.Value;
      DM.TBVendasVED_PAIS.Value:=DMS.QYClientesCLI_PAISCOB.Value;
      DM.TBVendasVED_PAISCODIGO.Value:=DMS.QYClientesCLI_PAISCODIGOCOB.Value;
      DM.TBVendasVED_RG.Value:=DMS.QYClientesCLI_RG.Value;
      DM.TBVendasVED_SUFRAMA.Value:=DMS.QYClientesCLI_SUFRAMA.Value;
      DM.TBVendasVED_TABELAPRECO.Value:=DMS.QYClientesCLI_TABELAPRECO.Value;
      DM.TBVendasVED_TIPOCONSUMIDOR.Value:=DMS.QYClientesCLI_TIPOCONSUMIDOR.Value;
      DM.TBVendasVED_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      //se cliente é fora do estado, seta a CFOP para fora do estado.
      if DM.TBVendasVED_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
      DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
      DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
      DBEdit58Exit(DBEdit58 as TObject);

      SetVendedor(DM.TBVendasVED_VENDEDOR.Value);
      SetCondicao(DM.TBVendasVED_CONDICAO.Value);
//falta fazer a implementação na simulacao das condições e na finalizacao da venda.      if QYClientesCLI_MENSALISTA.Value='S' then
//      DM.TBVendasVED_DIAPREFERENCIAL.Value:=QYClientesCLI_DIACOBRANCA.Value;

    end else
    begin
      LimparCampos;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormVendas.DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormVendas.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.DBEdit26Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text
end;

procedure TFormVendas.DBEdit26Exit(Sender: TObject);
begin
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendasVED_TRANSPCIDADE.Clear;
    DM.TBVendasVED_TRANSPCNPJ.Clear;
    DM.TBVendasVED_TRANSPCPF.Clear;
    DM.TBVendasVED_TRANSPIE.Clear;
    DM.TBVendasVED_TRANSPEMAIL.Clear;
    DM.TBVendasVED_TRANSPENDERECO.Clear;
    DM.TBVendasVED_TRANSPESTADO.Clear;
    DM.TBVendasVED_TRANSPFONE.Clear;
    DM.TBVendasVED_TRANSPNOME.Clear;
    DM.TBVendasVED_TRANSPORTADORA.Clear;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM.TBVendasVED_TRANSPCIDADE.Value:=DMS.QYFornecedoresFOR_CIDADE.Value;
      DM.TBVendasVED_TRANSPCNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
      DM.TBVendasVED_TRANSPCPF.Value:=DMS.QYFornecedoresFOR_CPF.Value;
      DM.TBVendasVED_TRANSPIE.Value:=DMS.QYFornecedoresFOR_IE.Value;
      DM.TBVendasVED_TRANSPEMAIL.Value:=DMS.QYFornecedoresFOR_EMAIL.Value;
      DM.TBVendasVED_TRANSPENDERECO.Value:=DMS.QYFornecedoresFOR_ENDERECO.Value;
      DM.TBVendasVED_TRANSPESTADO.Value:=DMS.QYFornecedoresFOR_ESTADO.Value;
      DM.TBVendasVED_TRANSPFONE.Value:=DMS.QYFornecedoresFOR_FONE1.Value;
      DM.TBVendasVED_TRANSPNOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM.TBVendasVED_TRANSPORTADORA.Value:=DMS.QYFornecedoresFOR_CODIGO.Value;
    end else
    begin
      DM.TBVendasVED_TRANSPCIDADE.Clear;
      DM.TBVendasVED_TRANSPCNPJ.Clear;
      DM.TBVendasVED_TRANSPCPF.Clear;
      DM.TBVendasVED_TRANSPIE.Clear;
      DM.TBVendasVED_TRANSPEMAIL.Clear;
      DM.TBVendasVED_TRANSPENDERECO.Clear;
      DM.TBVendasVED_TRANSPESTADO.Clear;
      DM.TBVendasVED_TRANSPFONE.Clear;
      DM.TBVendasVED_TRANSPNOME.Clear;
      DM.TBVendasVED_TRANSPORTADORA.Clear;
       MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormVendas.DBEdit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormVendas.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar=True then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_TRANSPCIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBVendasVED_TRANSPCNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBVendasVED_TRANSPCPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBVendasVED_TRANSPEMAIL.Value:=FormFornecedoresLoc.QYFornecedoresFOR_EMAIL.Value;
    DM.TBVendasVED_TRANSPENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBVendasVED_TRANSPESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBVendasVED_TRANSPFONE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
    DM.TBVendasVED_TRANSPIE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBVendasVED_TRANSPNOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBVendasVED_TRANSPORTADORA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormVendas.SpeedButton1Click(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBVendasVED_BAIRRO.Clear;
    DM.TBVendasVED_CEP.Clear;
    DM.TBVendasVED_CIDADE.Clear;
    DM.TBVendasVED_CIDADECODIGO.Clear;
    DM.TBVendasVED_CLIENTE.Clear;
    DM.TBVendasVED_CNPJ.Clear;
    DM.TBVendasVED_COMPLEMENTO.Clear;
    //campo condicao nao limpa.
    DM.TBVendasVED_CONTATO.Clear;
    DM.TBVendasVED_CPF.Clear;
    DM.TBVendasVED_DESCPORCCLIENTE.Value:=0;
    DM.TBVendasVED_ENDERECO.Clear;
    DM.TBVendasVED_ESTADO.Clear;
    DM.TBVendasVED_ESTADOCODIGO.Clear;
    DM.TBVendasVED_EXPEDIDOPOR.Clear;
    DM.TBVendasVED_FONE1.Clear;
    DM.TBVendasVED_IDESTRANGEIRO.Clear;
    DM.TBVendasVED_IE.Clear;
    DM.TBVendasVED_NOME.Clear;
    DM.TBVendasVED_NUMERO.Clear;
    DM.TBVendasVED_PAIS.Clear;
    DM.TBVendasVED_PAISCODIGO.Clear;
    DM.TBVendasVED_RG.Clear;
    DM.TBVendasVED_SUFRAMA.Clear;
    DM.TBVendasVED_TABELAPRECO.Clear;
    DM.TBVendasVED_VENDEDOR.Clear;
    DM.TBVendasVEN_NOME.Clear;
    DM.TBVendasVEN_NOME1.Clear;
  end;
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar=True then //as vezes não funciona se não colocar =true. será isso um bug?
  begin
    if ChecarLimiteCliente(FormClientesLoc.QYClientesCLI_CODIGO.Value,FormClientesLoc.QYClientesCLI_LIMITECREDITO.AsExtended) then
    begin
      MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
      if FormClientesLoc.QYClientesCLI_BLOQUEARVENDA.Value='S' then
      begin
        DM.TBVendas.Edit;
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
    DM.TBVendas.Edit;
    DM.TBVendasVED_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRROCOB.Value;
    DM.TBVendasVED_CEP.Value:=FormClientesLoc.QYClientesCLI_CEPCOB.Value;
    DM.TBVendasVED_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADECOB.Value;
    DM.TBVendasVED_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGOCOB.Value;
    DM.TBVendasVED_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBVendasVED_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJCOB.Value;
    DM.TBVendasVED_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTOCOB.Value;
    DM.TBVendasVED_CONDICAO.Value:=FormClientesLoc.QYClientesCLI_CONDICAO.Value; //campo a mais.
    DM.TBVendasVED_CONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM.TBVendasVED_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBVendasVED_DESCPORCCLIENTE.Value:=FormClientesLoc.QYClientesCLI_DESCONTO.Value;
    DM.TBVendasVED_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECOCOB.Value;
    DM.TBVendasVED_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCOB.Value;
    DM.TBVendasVED_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGOCOB.Value;
    if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBVendasVED_EXPEDIDOPOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM.TBVendasVED_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM.TBVendasVED_FRETE.Value:=FormClientesLoc.QYClientesCLI_FRETE.Value;
    //campo aliquota, pega no before post.
    DM.TBVendasVED_IDESTRANGEIRO.Value:=FormClientesLoc.QYClientesCLI_IDESTRANGEIRO.Value;
    DM.TBVendasVED_IE.Value:=FormClientesLoc.QYClientesCLI_IECOB.Value;
    DM.TBVendasVED_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBVendasVED_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMEROCOB.Value;
    DM.TBVendasVED_PAIS.Value:=FormClientesLoc.QYClientesCLI_PAISCOB.Value;
    DM.TBVendasVED_PAISCODIGO.Value:=FormClientesLoc.QYClientesCLI_PAISCODIGOCOB.Value;
    DM.TBVendasVED_RG.Value:=FormClientesLoc.QYClientesCLI_RG.Value;
    DM.TBVendasVED_SUFRAMA.Value:=FormClientesLoc.QYClientesCLI_SUFRAMA.Value;
    DM.TBVendasVED_TABELAPRECO.Value:=FormClientesLoc.QYClientesCLI_TABELAPRECO.Value;
    DM.TBVendasVED_TIPOCONSUMIDOR.Value:=FormClientesLoc.QYClientesCLI_TIPOCONSUMIDOR.Value;
    DM.TBVendasVED_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    //se cliente é fora do estado, seta a CFOP para fora do estado.
    if DM.TBVendasVED_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
    DM.TBVendasVED_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
    DBEdit58Exit(DBEdit58 as TObject);
    //...
    SetVendedor(DM.TBVendasVED_VENDEDOR.Value);
    SetCondicao(DM.TBVendasVED_CONDICAO.Value);
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormVendas.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM.TBVendas.State in [dsInsert, dsEdit] then
          try
            DM.TBVendas.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormVendas.BitBtn1Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBVendasItens.Insert;
  Application.CreateForm(TFormVendasItens, FormVendasItens);
  FormVendasItens.ShowModal;
  FormVendasItens.Free;
  FormVendasItens:=nil;
end;

procedure TFormVendas.BitBtn2Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Não existe nenhum item para excluir.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBVendasItens.Delete;
    DM.CalcularTotaisVenda(True); //era true.
  end;
end;

procedure TFormVendas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormVendas);
end;

procedure TFormVendas.BitBtn4Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Não existe nenhum item para alterar.',mtWarning,[mbOk],0);
    Exit;
  end;
  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM.TBVendasItens.Edit;
  Application.CreateForm(TFormVendasItens, FormVendasItens);
  FormVendasItens.DBEdit5.Enabled:=False;
  FormVendasItens.DBEdit5.Color:=clBtnFace;
  FormVendasItens.SpeedButton9.Enabled:=False;
  FormVendasItens.DesabilitarCampos; //se status = F, C ou I, desabilita campos.
  FormVendasItens.ShowModal;
  FormVendasItens.Free;
  FormVendasItens:=nil;
end;

procedure TFormVendas.BitBtn3Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhuma venda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;

  Application.CreateForm(TFormVendasAlterarProdutos, FormVendasAlterarProdutos);
  FormVendasAlterarProdutos.ShowModal;
  FormVendasAlterarProdutos.Free;
  FormVendasAlterarProdutos:=nil;
end;

procedure TFormVendas.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormVendas.FinalizarPedido1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda ainda não tem itens.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda já foi finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Finalizar a venda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //garante o texto da simulação correto.
    BitBtn5.Click; //clica no botao para simular condições de pagamento.
    DM.TBVendas.Post;

    Application.CreateForm(TFormVendasFinalizar, FormVendasFinalizar);
    FormVendasFinalizar.ShowModal;
    FormVendasFinalizar.Free;
    FormVendasFinalizar:=nil;
    if MessageDlg('Imprimir controle de venda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    ImprimirVenda1Click(Self);
  end;
end;

procedure TFormVendas.DBEdit30Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendas.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendasVED_CONDICAO.Clear;
    DM.TBVendasCPG_DESCRICAO.Clear;
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      if DMS.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
      begin
        MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
        DM.TBVendasVED_CONDICAO.Clear;
        DM.TBVendasCPG_DESCRICAO.Clear;
        Exit;
      end;

      DM.TBVendasVED_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
      DM.TBVendasCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
      DM.TBVendasVED_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
      DM.TBVendasVED_DESCPORCCONDICAO.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;

      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
      begin
        if DM.TBVendasVED_DESCPORC.Value<>DMS.QYCondicoesCPG_DESCPORC.Value then
        begin
          if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBVendasVED_DESCPORC.AsString+')'+#13#10+
                        'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+DMS.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBVendasItens.DisableControls;
            DM.TBVendas.DisableControls;
            DM.TBVendasItens.First;
            CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da venda.
            while not DM.TBVendasItens.Eof do
            begin
              DM.TBVendasItens.Edit;
              DM.TBVendasItensVEI_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
              DM.TBVendasItens.Post;
              DM.TBVendasItens.Next;
            end;
            CalcularTotais:=True;
            DM.TBVendas.EnableControls;
            DM.TBVendasItens.EnableControls;
            DM.CalcularTotaisVenda(False);
          end;
        end;
      end;

      BitBtn5.Click;
    end else
    begin
      DM.TBVendasVED_CONDICAO.Clear;
      DM.TBVendasCPG_DESCRICAO.Clear;
      DM.TBVendasVED_DESCPORCCONDICAO.Value:=0;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure TFormVendas.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormVendas.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar=True then
  begin
    if FormCondicoesLoc.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
      DM.TBVendasVED_CONDICAO.Clear;
      DM.TBVendasCPG_DESCRICAO.Clear;
      FormCondicoesLoc.Free;
      FormCondicoesLoc:=nil;
      Exit;
    end;

    DM.TBVendas.Edit;
    DM.TBVendasVED_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM.TBVendasCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBVendasVED_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    DM.TBVendasVED_DESCPORCCONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;

    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    begin
      if DM.TBVendasVED_DESCPORC.Value<>FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value then
      begin
        if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBVendasVED_DESCPORC.AsString+')'+#13#10+
                      'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+FormCondicoesLoc.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
        begin
          DM.TBVendasItens.DisableControls;
          DM.TBVendas.DisableControls;
          DM.TBVendasItens.First;
          CalcularTotais:=False; //variavel no datamod. ItensAfterPost checa se deve calcular os totais da capa da venda.
          while not DM.TBVendasItens.Eof do
          begin
            DM.TBVendasItens.Edit;
            DM.TBVendasItensVEI_DESCPORC.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;
            DM.TBVendasItens.Post;
            DM.TBVendasItens.Next;
          end;
          CalcularTotais:=True;
          DM.TBVendas.EnableControls;
          DM.TBVendasItens.EnableControls;
          DM.CalcularTotaisVenda(False);
        end;
      end;
    end;

    BitBtn5.Click;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormVendas.BitBtn5Click(Sender: TObject);
{var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;}
begin
  //criado procedure na unit DataMod.
  DM.SimularCondicaoVenda;
  {if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBVendas.Edit;
  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CONDICAO.Value;
  DM.TBCondicoes.Open;

  if DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(DM.TBVendasVED_CONDICAO.Value)+' - '+DM.TBVendasCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    ValorTotal:=DM.TBVendasVED_VALORTOTAL.Value;
    if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=DM.TBVendasVED_VALORTOTAL.Value-DM.TBVendasVED_TOTALICMSST.Value;
    SomaParcelas:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM.TBVendasVED_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM.TBVendasVED_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM.TBVendasVED_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM.TBVendasVED_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM.TBVendasVED_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then //0=entrada, não muda o dia.
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM.TBVendasVED_DIAPREFERENCIAL.Value);
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.Value;

      //se for a primeira parcela, verifica se soma a ST.
      if ParcelaAtual=1 then
      begin
        if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+DM.TBVendasVED_TOTALICMSST.Value;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > DM.TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-DM.TBVendasVED_VALORTOTAL.Value);
        if SomaParcelas < DM.TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela+(DM.TBVendasVED_VALORTOTAL.Value-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.Value]),' ',15,taRight)+#13#10;
      DM.TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  DM.TBVendasVED_CONDICAOMEMO.Value:=TextoCondicao;}
end;

procedure TFormVendas.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormVendas.InutilizarPedido1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Somente pedidos de venda em ABERTO podem ser inutilizados.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja inutilizar este pedido de venda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_STATUS.Value:='I';
    DM.TBVendas.Post;
  end;
end;

procedure TFormVendas.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormVendas.AtualizarItens1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn3.Click;
end;

procedure TFormVendas.AtualizarOValorUnitarioDosItens1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Este pedido de venda não está em aberto.',mtError,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Deseja atualizar os valores unitários de todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.TBVendas.State in [dsInsert, dsEdit] then
    DM.TBVendas.Post;
    DM.TBVendas.DisableControls;
    DM.TBVendasItens.DisableControls;
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
      DM.TBProdutos.Open;
      DM.TBVendasItens.Edit;
      if DM.TBVendasVED_TABELAPRECO.Value='V' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='1' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='2' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='3' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='4' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='5' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='6' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
      DM.TBVendasItens.Post;
      DM.TBVendasItens.Next;
    end;
    DM.TBVendasItens.EnableControls;
    DM.TBVendas.EnableControls;
  end;
end;

procedure TFormVendas.ImprimirVendaControleInterno;
begin
  Application.CreateForm(TFormVendasQ23, FormVendasQ23);
  if DM.TBParametrosPAR_IMPRIMIRRECEBER.Value='N' then
  begin
    FormVendasQ23.QRSubDetail4.DisposeOf;
    FormVendasQ23.QRSubDetail5.DisposeOf;
  end else
  begin
    //aberto ou inutilizado, imprime a simulação da condição.
    if (DM.TBVendasVED_STATUS.Value='A') or (DM.TBVendasVED_STATUS.Value='I') then
    FormVendasQ23.QRSubDetail5.DisposeOf;
    //finalizado ou cancelado, imprime o contas a receber que foi gerado.
    if (DM.TBVendasVED_STATUS.Value='F') or (DM.TBVendasVED_STATUS.Value='C') then
    FormVendasQ23.QRSubDetail4.DisposeOf;
  end;
  FormVendasQ23.QRLabel1.Caption:='Controle Interno de Vendas - '+IntToStr(DM.TBVendasVED_CODIGO.Value);
  FormVendasQ23.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ23.IBQuery2.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ23.IBQuery3.SQL.Clear;
  FormVendasQ23.IBQuery3.SQL.Add('select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, REE_STATUS from RECEBER '+
                                 'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
                                 'and REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' order by REE_DTVENCIMENTO');
  FormVendasQ23.IBQuery4.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  FormVendasQ23.IBQuery1.Open;
  FormVendasQ23.IBQuery2.Open;
  FormVendasQ23.IBQuery3.Open;
  FormVendasQ23.IBQuery4.Open;

  if Trim(FormVendasQ23.IBQuery1VED_CNPJ.Value)<>'' then
  FormVendasQ23.QRDBText13.DataField:='VED_CNPJ' else
  FormVendasQ23.QRDBText13.DataField:='VED_CPF';

  if not FormVendasQ23.IBQuery1VED_NFE.IsNull then
  FormVendasQ23.QRDBText19.DataField:='VED_NFE' else
  FormVendasQ23.QRDBText19.DataField:='VED_NOTA';

  if DM.TBParametrosPAR_CALCULARPONTUACAO.Value='N' then
  begin
    FormVendasQ23.QRLabel77.Font.Color:=clWhite;
    FormVendasQ23.QRDBText93.Font.Color:=clWhite;
  end else
  if DM.TBVendasVED_STATUS.Value<>'F' then //só imprime o saldo de pontos se o pedido estiver finalizado.
  begin
    FormVendasQ23.QRLabel77.Font.Color:=clWhite;
    FormVendasQ23.QRDBText93.Font.Color:=clWhite;
  end;

  if (DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='S') and (DM.TBVendasVED_STATUS.Value<>'F') then //se nao estiver finalizada, não imprime os campos.
  FormVendasQ23.QRLabel14.Font.Color:=clWhite;

  FormVendasQ23.QuickRep1.PreviewModal;
  FormVendasQ23.Free;
  FormVendasQ23:=nil;
end;

procedure TFormVendas.ImprimirVenda1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if VendasEstilo='WINDOWS' then
  begin
    ImprimirPedidoDeVenda('Controle Interno','');
  end else
  if VendasEstilo='DOS' then
  begin
    ImprimirControleVendas;
    if MessageDlg('Imprimir as codições de pagamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    ImprimirCondicoesVendas;
  end else
  if VendasEstilo='TERMICA' then
  begin
    ImprimirControleVendasTermica;
  end;
end;

procedure TFormVendas.CadastroDeCondiesdePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormVendas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormVendas.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox5);
end;

procedure TFormVendas.LocalizarVendaNoContasAReceber1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='A' then
  begin
    MessageDlg('Este pedido de venda não está finalizado ou não cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  //por padrão, utiliza o campo código... mas se tiver NF ou NFE...
  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;

  if not DM.TBVendasVED_NOTA.IsNull then
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBVendasVED_NOTA.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO') else
  if not DM.TBVendasVED_NFE.IsNull then
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBVendasVED_NFE.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO') else
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');

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

procedure TFormVendas.DuplicarPedido1Click(Sender: TObject);
var NovoCodigo: Integer;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Duplicar pedido de venda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if VerificarEstoque=False then
    Exit;
    //if VerificarEstoqueNosPedidosEmAberto=False then
    //Exit;

    Screen.Cursor:=crHourGlass;
    DM.TBVendas.DisableControls;
    DM.TBVendasItens.DisableControls;
    QYVendas.Open; //foi colocado ibdataset para nao gerar os totais da nota e impedir de dar a msg de venda já finaliza, nao pode ser alterada.
    QYVendasItens.Open;
    //CAPA.
    QYVendas.Insert;
    {$REGION 'DUPLICACAO_CAPA_PEDIDO'}
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    QYVendasVED_ALIQICMSCREDSN.Value:=DM.TBVendasVED_ALIQICMSCREDSN.Value;
    QYVendasVED_BAIRRO.Value:=DM.TBVendasVED_BAIRRO.Value;
    //QYVendasVED_BAIXADATA.Value:=
    //QYVendasVED_BAIXAPOR.Value:=
    QYVendasVED_BASECOFINS.Value:=DM.TBVendasVED_BASECOFINS.Value;
    QYVendasVED_BASECOFINSST.Value:=DM.TBVendasVED_BASECOFINSST.Value;
    QYVendasVED_BASEICMS.Value:=DM.TBVendasVED_BASEICMS.Value;
    QYVendasVED_BASEICMSST.Value:=DM.TBVendasVED_BASEICMSST.Value;
    QYVendasVED_BASEII.Value:=DM.TBVendasVED_BASEII.Value;
    QYVendasVED_BASEIPI.Value:=DM.TBVendasVED_BASEIPI.Value;
    QYVendasVED_BASEISS.Value:=DM.TBVendasVED_BASEISS.Value;
    QYVendasVED_BASEPIS.Value:=DM.TBVendasVED_BASEPIS.Value;
    QYVendasVED_BASEPISST.Value:=DM.TBVendasVED_BASEPISST.Value;
    QYVendasVED_CEP.Value:=DM.TBVendasVED_CEP.Value;
    QYVendasVED_CFOP.Value:=DM.TBVendasVED_CFOP.Value;
    QYVendasVED_CFOPDESC.Value:=DM.TBVendasVED_CFOPDESC.Value;
    QYVendasVED_CIDADE.Value:=DM.TBVendasVED_CIDADE.Value;
    QYVendasVED_CIDADECODIGO.Value:=DM.TBVendasVED_CIDADECODIGO.Value;
    QYVendasVED_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
    QYVendasVED_CNPJ.Value:=DM.TBVendasVED_CNPJ.Value;
    //QYVendasVED_CODIGO.Value:=
    //QYVendasVED_CODIMPORTACAO.Value:=DM.TBVendasVED_CODIMPORTACAO.Value;
    QYVendasVED_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value;
    QYVendasVED_COMISSAOPOR.Value:=DM.TBVendasVED_COMISSAOPOR.Value;
    QYVendasVED_COMPLEMENTO.Value:=DM.TBVendasVED_COMPLEMENTO.Value;
    QYVendasVED_CONDICAO.Value:=DM.TBVendasVED_CONDICAO.Value;
    QYVendasVED_CONDICAOMEMO.Value:=DM.TBVendasVED_CONDICAOMEMO.Value;
    QYVendasVED_CONFERIDO.Value:='N';
    QYVendasVED_CONFERIDODATA.Clear;
    QYVendasVED_CONFERIDOPOR.Clear;
    QYVendasVED_CONTATO.Value:=DM.TBVendasVED_CONTATO.Value;
    QYVendasVED_CPF.Value:=DM.TBVendasVED_CPF.Value;
    QYVendasVED_CUSTOTOTAL.Value:=DM.TBVendasVED_CUSTOTOTAL.Value;
    QYVendasVED_DESCPORC.Value:=DM.TBVendasVED_DESCPORC.Value;
    QYVendasVED_DESCPORCCLIENTE.Value:=DM.TBVendasVED_DESCPORCCLIENTE.Value;
    QYVendasVED_DESCPORCCONDICAO.Value:=DM.TBVendasVED_DESCPORCCONDICAO.Value;
    QYVendasVED_DESCVALOR.Value:=DM.TBVendasVED_DESCVALOR.Value;
    QYVendasVED_DESTACARIMPOSTOS.Value:=DM.TBVendasVED_DESTACARIMPOSTOS.Value;
    QYVendasVED_DIAPREFERENCIAL.Value:=DM.TBVendasVED_DIAPREFERENCIAL.Value;
    QYVendasVED_DTATUALIZACAO.Value:=DM.ServerDate; //DM.TBVendasVED_DTATUALIZACAO.Value;
    QYVendasVED_DTCADASTRO.Value:=DM.ServerDate; //DM.TBVendasVED_DTCADASTRO.Value;
    QYVendasVED_DTEMISSAO.Value:=DM.ServerDate; //DM.TBVendasVED_DTEMISSAO.Value;
    QYVendasVED_DTPRESTSERVICO.Value:=DM.ServerDate;
    QYVendasVED_DTSAIDA.Clear;
    QYVendasVED_ENDERECO.Value:=DM.TBVendasVED_ENDERECO.Value;
    QYVendasVED_ENTRADASAIDA.Value:=DM.TBVendasVED_ENTRADASAIDA.Value;
    QYVendasVED_ENTREGUE.Value:=DM.TBVendasVED_ENTREGUE.Value;
    QYVendasVED_ESPECIE.Value:=DM.TBVendasVED_ESPECIE.Value;
    QYVendasVED_ESTADO.Value:=DM.TBVendasVED_ESTADO.Value;
    QYVendasVED_ESTADOCODIGO.Value:=DM.TBVendasVED_ESTADOCODIGO.Value;
    QYVendasVED_EXLOCAL.Value:=DM.TBVendasVED_EXLOCAL.Value;
    QYVendasVED_EXPEDIDOPOR.Value:=DM.TBVendasVED_EXPEDIDOPOR.Value;
    QYVendasVED_EXUFSAIDA.Value:=DM.TBVendasVED_EXUFSAIDA.Value;
    QYVendasVED_FONE1.Value:=DM.TBVendasVED_FONE1.Value;
    QYVendasVED_FORMAPAGTO.Value:=DM.TBVendasVED_FORMAPAGTO.Value;
    QYVendasVED_FRETE.Value:=DM.TBVendasVED_FRETE.Value;
    QYVendasVED_IDESTRANGEIRO.Value:=DM.TBVendasVED_IDESTRANGEIRO.Value;
    QYVendasVED_IE.Value:=DM.TBVendasVED_IE.Value;
    QYVendasVED_INFOADICFISCO.Value:=DM.TBVendasVED_INFOADICFISCO.Value;
    QYVendasVED_LACRES.Value:=DM.TBVendasVED_LACRES.Value;
    QYVendasVED_LUCROPORC.Value:=DM.TBVendasVED_LUCROPORC.Value;
    QYVendasVED_LUCROVALOR.Value:=DM.TBVendasVED_LUCROVALOR.Value;
    QYVendasVED_MANUAL.Value:=DM.TBVendasVED_MANUAL.Value;
    QYVendasVED_MARCA.Value:=DM.TBVendasVED_MARCA.Value;
    QYVendasVED_MOVIMENTAESTOQUE.Value:=DM.TBVendasVED_MOVIMENTAESTOQUE.Value;
    QYVendasVED_MOVIMENTAFINANCEIRO.Value:=DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value;
    //QYVendasVED_NFE.Value:=
    QYVendasVED_NOME.Value:=DM.TBVendasVED_NOME.Value;
    //QYVendasVED_NOTA.Value:=
    QYVendasVED_NUMERO.Value:=DM.TBVendasVED_NUMERO.Value;
    QYVendasVED_OBSERVACOES.Value:=DM.TBVendasVED_OBSERVACOES.Value;
    QYVendasVED_PAIS.Value:=DM.TBVendasVED_PAIS.Value;
    QYVendasVED_PAISCODIGO.Value:=DM.TBVendasVED_PAISCODIGO.Value;
    QYVendasVED_PEDIDOCLIENTE.Value:=DM.TBVendasVED_PEDIDOCLIENTE.Value;
    QYVendasVED_PESOBRUTO.Value:=DM.TBVendasVED_PESOBRUTO.Value;
    QYVendasVED_PESOLIQ.Value:=DM.TBVendasVED_PESOLIQ.Value;
    QYVendasVED_REBOQUEPLACA.Value:=DM.TBVendasVED_REBOQUEPLACA.Value;
    QYVendasVED_REBOQUEPLACAUF.Value:=DM.TBVendasVED_REBOQUEPLACAUF.Value;
    QYVendasVED_REBOQUERNTC.Value:=DM.TBVendasVED_REBOQUERNTC.Value;
    QYVendasVED_RG.Value:=DM.TBVendasVED_RG.Value;
    QYVendasVED_SEQUENCIAITEM.Value:=DM.TBVendasVED_SEQUENCIAITEM.Value;
    QYVendasVED_STATUS.Value:='A'; //DM.TBVendasVED_STATUS.Value;
    QYVendasVED_SUFRAMA.Value:=DM.TBVendasVED_SUFRAMA.Value;
    QYVendasVED_TABELAPRECO.Value:=DM.TBVendasVED_TABELAPRECO.Value;
    QYVendasVED_TIPOATENDIMENTO.Value:=DM.TBVendasVED_TIPOATENDIMENTO.Value;
    QYVendasVED_TIPOCONSUMIDOR.Value:=DM.TBVendasVED_TIPOCONSUMIDOR.Value;
    QYVendasVED_TIPOOPERACAO.Value:=DM.TBVendasVED_TIPOOPERACAO.Value;
    QYVendasVED_TOTALADUANA.Value:=DM.TBVendasVED_TOTALADUANA.Value;
    QYVendasVED_TOTALBRUTO.Value:=DM.TBVendasVED_TOTALBRUTO.Value;
    QYVendasVED_TOTALCOFINS.Value:=DM.TBVendasVED_TOTALCOFINS.Value;
    QYVendasVED_TOTALCOFINSST.Value:=DM.TBVendasVED_TOTALCOFINSST.Value;
    QYVendasVED_TOTALCOMISSAO.Value:=DM.TBVendasVED_TOTALCOMISSAO.Value;
    QYVendasVED_TOTALFCP.Value:=DM.TBVendasVED_TOTALFCP.Value;
    QYVendasVED_TOTALFCPST.Value:=DM.TBVendasVED_TOTALFCPST.Value;
    QYVendasVED_TOTALICMS.Value:=DM.TBVendasVED_TOTALICMS.Value;
    QYVendasVED_TOTALICMSCREDSN.Value:=DM.TBVendasVED_TOTALICMSCREDSN.Value;
    QYVendasVED_TOTALICMSST.Value:=DM.TBVendasVED_TOTALICMSST.Value;
    QYVendasVED_TOTALICMSUFDEST.Value:=DM.TBVendasVED_TOTALICMSUFDEST.Value;
    QYVendasVED_TOTALICMSUFREMET.Value:=DM.TBVendasVED_TOTALICMSUFREMET.Value;
    QYVendasVED_TOTALII.Value:=DM.TBVendasVED_TOTALII.Value;
    QYVendasVED_TOTALIOF.Value:=DM.TBVendasVED_TOTALIOF.Value;
    QYVendasVED_TOTALIPI.Value:=DM.TBVendasVED_TOTALIPI.Value;
    QYVendasVED_TOTALISS.Value:=DM.TBVendasVED_TOTALISS.Value;
    QYVendasVED_TOTALISSDEDUCAO.Value:=DM.TBVendasVED_TOTALISSDEDUCAO.Value;
    QYVendasVED_TOTALISSDESCCOND.Value:=DM.TBVendasVED_TOTALISSDESCCOND.Value;
    QYVendasVED_TOTALISSDESCINCOND.Value:=DM.TBVendasVED_TOTALISSDESCINCOND.Value;
    QYVendasVED_TOTALISSOUTROS.Value:=DM.TBVendasVED_TOTALISSOUTROS.Value;
    QYVendasVED_TOTALISSRETENCAO.Value:=DM.TBVendasVED_TOTALISSRETENCAO.Value;
    QYVendasVED_TOTALITENS.Value:=DM.TBVendasVED_TOTALITENS.Value;
    QYVendasVED_TOTALPIS.Value:=DM.TBVendasVED_TOTALPIS.Value;
    QYVendasVED_TOTALPISST.Value:=DM.TBVendasVED_TOTALPISST.Value;
    QYVendasVED_TOTALPRODUTOS.Value:=DM.TBVendasVED_TOTALPRODUTOS.Value;
    QYVendasVED_TOTALSERVICOS.Value:=DM.TBVendasVED_TOTALSERVICOS.Value;
    QYVendasVED_TOTALTRIBUTOS.Value:=DM.TBVendasVED_TOTALTRIBUTOS.Value;
    QYVendasVED_TOTALTRIBUTOSEST.Value:=DM.TBVendasVED_TOTALTRIBUTOSEST.Value;
    QYVendasVED_TOTALTRIBUTOSFED.Value:=DM.TBVendasVED_TOTALTRIBUTOSFED.Value;
    QYVendasVED_TOTALTRIBUTOSIMP.Value:=DM.TBVendasVED_TOTALTRIBUTOSIMP.Value;
    QYVendasVED_TOTALTRIBUTOSMUN.Value:=DM.TBVendasVED_TOTALTRIBUTOSMUN.Value;
    QYVendasVED_TRANSPCIDADE.Value:=DM.TBVendasVED_TRANSPCIDADE.Value;
    QYVendasVED_TRANSPCNPJ.Value:=DM.TBVendasVED_TRANSPCNPJ.Value;
    QYVendasVED_TRANSPCPF.Value:=DM.TBVendasVED_TRANSPCPF.Value;
    QYVendasVED_TRANSPEMAIL.Value:=DM.TBVendasVED_TRANSPEMAIL.Value;
    QYVendasVED_TRANSPENDERECO.Value:=DM.TBVendasVED_TRANSPENDERECO.Value;
    QYVendasVED_TRANSPESTADO.Value:=DM.TBVendasVED_TRANSPESTADO.Value;
    QYVendasVED_TRANSPFONE.Value:=DM.TBVendasVED_TRANSPFONE.Value;
    QYVendasVED_TRANSPIE.Value:=DM.TBVendasVED_TRANSPIE.Value;
    QYVendasVED_TRANSPNOME.Value:=DM.TBVendasVED_TRANSPNOME.Value;
    QYVendasVED_TRANSPORTADORA.Value:=DM.TBVendasVED_TRANSPORTADORA.Value;
    QYVendasVED_USUARIO.Value:=UsuarioLogado; //DM.TBVendasVED_USUARIO.Value;
    QYVendasVED_VALORDESPACES.Value:=DM.TBVendasVED_VALORDESPACES.Value;
    QYVendasVED_VALORFRETE.Value:=DM.TBVendasVED_VALORFRETE.Value;
    QYVendasVED_VALORSEGURO.Value:=DM.TBVendasVED_VALORSEGURO.Value;
    QYVendasVED_VALORTOTAL.Value:=DM.TBVendasVED_VALORTOTAL.Value;
    QYVendasVED_VEICULOPLACA.Value:=DM.TBVendasVED_VEICULOPLACA.Value;
    QYVendasVED_VEICULOPLACAUF.Value:=DM.TBVendasVED_VEICULOPLACAUF.Value;
    QYVendasVED_VEICULORNTC.Value:=DM.TBVendasVED_VEICULORNTC.Value;
    QYVendasVED_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
    QYVendasVED_VIAINTERNET.Value:=DM.TBVendasVED_VIAINTERNET.Value;
    QYVendasVED_VIAINTERNETSTATUS.Value:=DM.TBVendasVED_VIAINTERNETSTATUS.Value;
    QYVendasVED_VOLUMES.Value:=DM.TBVendasVED_VOLUMES.Value;
    QYVendasVED_VOLUMESNUM.Value:=DM.TBVendasVED_VOLUMESNUM.Value;
    {$ENDREGION}
    QYVendas.Post;
    NovoCodigo:=QYVendasVED_CODIGO.Value;
    //ITENS.
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      QYVendasItens.Insert;
      {$REGION 'DUPLICACAO_ITENS_PEDIDO'}
      QYVendasItensVEI_ALIQCOFINS.Value:=DM.TBVendasItensVEI_ALIQCOFINS.Value;
      QYVendasItensVEI_ALIQCOFINSST.Value:=DM.TBVendasItensVEI_ALIQCOFINSST.Value;
      QYVendasItensVEI_ALIQFCP.Value:=DM.TBVendasItensVEI_ALIQFCP.Value;
      QYVendasItensVEI_ALIQFCPST.Value:=DM.TBVendasItensVEI_ALIQFCPST.Value;
      QYVendasItensVEI_ALIQICMS.Value:=DM.TBVendasItensVEI_ALIQICMS.Value;
      QYVendasItensVEI_ALIQICMSADICST.Value:=DM.TBVendasItensVEI_ALIQICMSADICST.Value;
      QYVendasItensVEI_ALIQICMSINTER.Value:=DM.TBVendasItensVEI_ALIQICMSINTER.Value;
      QYVendasItensVEI_ALIQICMSINTERPART.Value:=DM.TBVendasItensVEI_ALIQICMSINTERPART.Value;
      QYVendasItensVEI_ALIQICMSRED.Value:=DM.TBVendasItensVEI_ALIQICMSRED.Value;
      QYVendasItensVEI_ALIQICMSST.Value:=DM.TBVendasItensVEI_ALIQICMSST.Value;
      QYVendasItensVEI_ALIQICMSSTRET.Value:=DM.TBVendasItensVEI_ALIQICMSSTRET.Value;
      QYVendasItensVEI_ALIQII.Value:=DM.TBVendasItensVEI_ALIQII.Value;
      QYVendasItensVEI_ALIQIPI.Value:=DM.TBVendasItensVEI_ALIQIPI.Value;
      QYVendasItensVEI_ALIQISS.Value:=DM.TBVendasItensVEI_ALIQISS.Value;
      QYVendasItensVEI_ALIQPIS.Value:=DM.TBVendasItensVEI_ALIQPIS.Value;
      QYVendasItensVEI_ALIQPISST.Value:=DM.TBVendasItensVEI_ALIQPISST.Value;
      QYVendasItensVEI_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
      QYVendasItensVEI_BASECOFINS.Value:=DM.TBVendasItensVEI_BASECOFINS.Value;
      QYVendasItensVEI_BASECOFINSST.Value:=DM.TBVendasItensVEI_BASECOFINSST.Value;
      QYVendasItensVEI_BASEICMS.Value:=DM.TBVendasItensVEI_BASEICMS.Value;
      QYVendasItensVEI_BASEICMSRED.Value:=DM.TBVendasItensVEI_BASEICMSRED.Value;
      QYVendasItensVEI_BASEICMSST.Value:=DM.TBVendasItensVEI_BASEICMSST.Value;
      QYVendasItensVEI_BASEICMSSTRET.Value:=DM.TBVendasItensVEI_BASEICMSSTRET.Value;
      QYVendasItensVEI_BASEII.Value:=DM.TBVendasItensVEI_BASEII.Value;
      QYVendasItensVEI_BASEIPI.Value:=DM.TBVendasItensVEI_BASEIPI.Value;
      QYVendasItensVEI_BASEISS.Value:=DM.TBVendasItensVEI_BASEISS.Value;
      QYVendasItensVEI_BASEPIS.Value:=DM.TBVendasItensVEI_BASEPIS.Value;
      QYVendasItensVEI_BASEPISST.Value:=DM.TBVendasItensVEI_BASEPISST.Value;
      QYVendasItensVEI_CEST.Value:=DM.TBVendasItensVEI_CEST.Value;
      QYVendasItensVEI_CFOP.Value:=DM.TBVendasItensVEI_CFOP.Value;
      QYVendasItensVEI_CIDADEISS.Value:=DM.TBVendasItensVEI_CIDADEISS.Value;
      QYVendasItensVEI_CLASSFISCAL.Value:=DM.TBVendasItensVEI_CLASSFISCAL.Value;
      //QYVendasItensVEI_CODIGO.Value:= //generator.
      QYVendasItensVEI_CODIGOBARRAS.Value:=DM.TBVendasItensVEI_CODIGOBARRAS.Value;
      QYVendasItensVEI_CODIGOFAB.Value:=DM.TBVendasItensVEI_CODIGOFAB.Value;
      QYVendasItensVEI_COMISSAO.Value:=DM.TBVendasItensVEI_COMISSAO.Value;
      QYVendasItensVEI_COMPLEMENTO.Value:=DM.TBVendasItensVEI_COMPLEMENTO.Value;
      QYVendasItensVEI_COMPOEBASEICMS.Value:=DM.TBVendasItensVEI_COMPOEBASEICMS.Value;
      QYVendasItensVEI_COMPOEBASEICMSST.Value:=DM.TBVendasItensVEI_COMPOEBASEICMSST.Value;
      QYVendasItensVEI_COMPOETOTAL.Value:=DM.TBVendasItensVEI_COMPOETOTAL.Value;
      QYVendasItensVEI_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
      QYVendasItensVEI_CSTCOFINS.Value:=DM.TBVendasItensVEI_CSTCOFINS.Value;
      QYVendasItensVEI_CSTICMS.Value:=DM.TBVendasItensVEI_CSTICMS.Value;
      QYVendasItensVEI_CSTIPI.Value:=DM.TBVendasItensVEI_CSTIPI.Value;
      QYVendasItensVEI_CSTPIS.Value:=DM.TBVendasItensVEI_CSTPIS.Value;
      QYVendasItensVEI_DESCMAX.Value:=DM.TBVendasItensVEI_DESCMAX.Value;
      QYVendasItensVEI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCPORC.Value;
      QYVendasItensVEI_DESCRICAO.Value:=DM.TBVendasItensVEI_DESCRICAO.Value;
      QYVendasItensVEI_DESCVALOR.Value:=DM.TBVendasItensVEI_DESCVALOR.Value;
      QYVendasItensVEI_DESONERACAO.Value:=DM.TBVendasItensVEI_DESONERACAO.Value;
      QYVendasItensVEI_DICNPJ.Value:=DM.TBVendasItensVEI_DICNPJ.Value;
      QYVendasItensVEI_DIDATA.Value:=DM.TBVendasItensVEI_DIDATA.Value;
      QYVendasItensVEI_DIDESEMBARACODATA.Value:=DM.TBVendasItensVEI_DIDESEMBARACODATA.Value;
      QYVendasItensVEI_DIDESEMBARACOLOCAL.Value:=DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value;
      QYVendasItensVEI_DIDESEMBARACOUF.Value:=DM.TBVendasItensVEI_DIDESEMBARACOUF.Value;
      QYVendasItensVEI_DIEXPORTADORCOD.Value:=DM.TBVendasItensVEI_DIEXPORTADORCOD.Value;
      QYVendasItensVEI_DIINTERMEDIO.Value:=DM.TBVendasItensVEI_DIINTERMEDIO.Value;
      QYVendasItensVEI_DINUMERO.Value:=DM.TBVendasItensVEI_DINUMERO.Value;
      QYVendasItensVEI_DITERCEIROUF.Value:=DM.TBVendasItensVEI_DITERCEIROUF.Value;
      QYVendasItensVEI_DITRANSPORTE.Value:=DM.TBVendasItensVEI_DITRANSPORTE.Value;
      QYVendasItensVEI_DIVALORAFRMM.Value:=DM.TBVendasItensVEI_DIVALORAFRMM.Value;
      QYVendasItensVEI_EXCECAO.Value:=DM.TBVendasItensVEI_EXCECAO.Value;
      QYVendasItensVEI_EXCHAVEACESSO.Value:=DM.TBVendasItensVEI_EXCHAVEACESSO.Value;
      QYVendasItensVEI_EXDRAWBACK.Value:=DM.TBVendasItensVEI_EXDRAWBACK.Value;
      QYVendasItensVEI_EXQUANTIDADE.Value:=DM.TBVendasItensVEI_EXQUANTIDADE.Value;
      QYVendasItensVEI_EXREGISTRO.Value:=DM.TBVendasItensVEI_EXREGISTRO.Value;
      QYVendasItensVEI_FCI.Value:=DM.TBVendasItensVEI_FCI.Value;
      QYVendasItensVEI_INCENTIVOISS.Value:=DM.TBVendasItensVEI_INCENTIVOISS.Value;
      QYVendasItensVEI_INDICADORISS.Value:=DM.TBVendasItensVEI_INDICADORISS.Value;
      QYVendasItensVEI_INFOADICIONAL.Value:=DM.TBVendasItensVEI_INFOADICIONAL.Value;
      QYVendasItensVEI_LOCALIZACAO.Value:=DM.TBVendasItensVEI_LOCALIZACAO.Value;
      QYVendasItensVEI_LOTE.Value:=DM.TBVendasItensVEI_LOTE.Value;
      QYVendasItensVEI_LUCROPORC.Value:=DM.TBVendasItensVEI_LUCROPORC.Value;
      QYVendasItensVEI_LUCROVALOR.Value:=DM.TBVendasItensVEI_LUCROVALOR.Value;
      QYVendasItensVEI_MODICMS.Value:=DM.TBVendasItensVEI_MODICMS.Value;
      QYVendasItensVEI_MODICMSST.Value:=DM.TBVendasItensVEI_MODICMSST.Value;
      QYVendasItensVEI_ORIGEM.Value:=DM.TBVendasItensVEI_ORIGEM.Value;
      QYVendasItensVEI_PAISISS.Value:=DM.TBVendasItensVEI_PAISISS.Value;
      QYVendasItensVEI_PEDIDOCLIENTEITEM.Value:=DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value;
      QYVendasItensVEI_PESO.Value:=DM.TBVendasItensVEI_PESO.Value;
      QYVendasItensVEI_PESOTOTAL.Value:=DM.TBVendasItensVEI_PESOTOTAL.Value;
      QYVendasItensVEI_PRECOCUSTO.Value:=DM.TBVendasItensVEI_PRECOCUSTO.Value;
      QYVendasItensVEI_PRECOCUSTOTOTAL.Value:=DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
      QYVendasItensVEI_PROCESSOISS.Value:=DM.TBVendasItensVEI_PROCESSOISS.Value;
      QYVendasItensVEI_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
      QYVendasItensVEI_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
      QYVendasItensVEI_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
      QYVendasItensVEI_QUANTIDADETROCA.Value:=DM.TBVendasItensVEI_QUANTIDADETROCA.Value;
      QYVendasItensVEI_SEQUENCIA.Value:=DM.TBVendasItensVEI_SEQUENCIA.Value;
      QYVendasItensVEI_SERVICOISS.Value:=DM.TBVendasItensVEI_SERVICOISS.Value;
      QYVendasItensVEI_SOMACOFINSST.Value:=DM.TBVendasItensVEI_SOMACOFINSST.Value;
      QYVendasItensVEI_SOMAPISST.Value:=DM.TBVendasItensVEI_SOMAPISST.Value;
      QYVendasItensVEI_TIPO.Value:=DM.TBVendasItensVEI_TIPO.Value;
      QYVendasItensVEI_TIPOISS.Value:=DM.TBVendasItensVEI_TIPOISS.Value;
      QYVendasItensVEI_UNIDADE.Value:=DM.TBVendasItensVEI_UNIDADE.Value;
      QYVendasItensVEI_VALORACESSORIAS.Value:=DM.TBVendasItensVEI_VALORACESSORIAS.Value;
      QYVendasItensVEI_VALORADUANA.Value:=DM.TBVendasItensVEI_VALORADUANA.Value;
      QYVendasItensVEI_VALORCOFINS.Value:=DM.TBVendasItensVEI_VALORCOFINS.Value;
      QYVendasItensVEI_VALORCOFINSST.Value:=DM.TBVendasItensVEI_VALORCOFINSST.Value;
      QYVendasItensVEI_VALORCOMISSAO.Value:=DM.TBVendasItensVEI_VALORCOMISSAO.Value;
      QYVendasItensVEI_VALORFCP.Value:=DM.TBVendasItensVEI_VALORFCP.Value;
      QYVendasItensVEI_VALORFCPST.Value:=DM.TBVendasItensVEI_VALORFCPST.Value;
      QYVendasItensVEI_VALORFRETE.Value:=DM.TBVendasItensVEI_VALORFRETE.Value;
      QYVendasItensVEI_VALORICMS.Value:=DM.TBVendasItensVEI_VALORICMS.Value;
      QYVendasItensVEI_VALORICMSCREDSN.Value:=DM.TBVendasItensVEI_VALORICMSCREDSN.Value;
      QYVendasItensVEI_VALORICMSDESONERADO.Value:=DM.TBVendasItensVEI_VALORICMSDESONERADO.Value;
      QYVendasItensVEI_VALORICMSST.Value:=DM.TBVendasItensVEI_VALORICMSST.Value;
      QYVendasItensVEI_VALORICMSSTRET.Value:=DM.TBVendasItensVEI_VALORICMSSTRET.Value;
      QYVendasItensVEI_VALORICMSSUBSTITUTO.Value:=DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value;
      QYVendasItensVEI_VALORICMSUFDEST.Value:=DM.TBVendasItensVEI_VALORICMSUFDEST.Value;
      QYVendasItensVEI_VALORICMSUFREMET.Value:=DM.TBVendasItensVEI_VALORICMSUFREMET.Value;
      QYVendasItensVEI_VALORII.Value:=DM.TBVendasItensVEI_VALORII.Value;
      QYVendasItensVEI_VALORIOF.Value:=DM.TBVendasItensVEI_VALORIOF.Value;
      QYVendasItensVEI_VALORIPI.Value:=DM.TBVendasItensVEI_VALORIPI.Value;
      QYVendasItensVEI_VALORISS.Value:=DM.TBVendasItensVEI_VALORISS.Value;
      QYVendasItensVEI_VALORISSDEDUCAO.Value:=DM.TBVendasItensVEI_VALORISSDEDUCAO.Value;
      QYVendasItensVEI_VALORISSDESCCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCCOND.Value;
      QYVendasItensVEI_VALORISSDESCINCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCINCOND.Value;
      QYVendasItensVEI_VALORISSOUTROS.Value:=DM.TBVendasItensVEI_VALORISSOUTROS.Value;
      QYVendasItensVEI_VALORISSRETENCAO.Value:=DM.TBVendasItensVEI_VALORISSRETENCAO.Value;
      QYVendasItensVEI_VALORPIS.Value:=DM.TBVendasItensVEI_VALORPIS.Value;
      QYVendasItensVEI_VALORPISST.Value:=DM.TBVendasItensVEI_VALORPISST.Value;
      QYVendasItensVEI_VALORSEGURO.Value:=DM.TBVendasItensVEI_VALORSEGURO.Value;
      QYVendasItensVEI_VALORTOTAL.Value:=DM.TBVendasItensVEI_VALORTOTAL.Value;
      QYVendasItensVEI_VALORTOTALBRUTO.Value:=DM.TBVendasItensVEI_VALORTOTALBRUTO.Value;
      QYVendasItensVEI_VALORTRIBUTOS.Value:=DM.TBVendasItensVEI_VALORTRIBUTOS.Value;
      QYVendasItensVEI_VALORTRIBUTOSEST.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value;
      QYVendasItensVEI_VALORTRIBUTOSFED.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value;
      QYVendasItensVEI_VALORTRIBUTOSIMP.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
      QYVendasItensVEI_VALORTRIBUTOSMUN.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
      QYVendasItensVEI_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value;
      QYVendasItensVEI_VENDA.Value:=NovoCodigo;
      {$ENDREGION}
      QYVendasItens.Post;
      DM.TBVendasItens.Next;
    end;
    //localiza a nova venda e calcula os totais.
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBVendas.Open;
    DM.CalcularTotaisVenda(True);
    //...
    DM.TBVendasItens.EnableControls;
    DM.TBVendas.EnableControls;
    QYVendas.Close;
    QYVendasItens.Close;

    DM.TBVendasItens.Close;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBVendas.Open;
    DM.TBVendasItens.Open;
    //DM.TBVendasItens.Refresh; //nao funciona?
    Screen.Cursor:=crDefault;
    MessageDlg('Pedido de venda duplicado com sucesso! Código: '+IntToStr(NovoCodigo),mtInformation,[mbOk],0);
  end;
end;

procedure TFormVendas.BitBtn6Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhuma venda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja imprimir as condições de pagamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ImprimirCondicoesVendas;
  end;
end;

procedure TFormVendas.CancelarPedido1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='A' then
  begin
    MessageDlg('Este pedido de venda não está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda já está cancelado.',mtInformation,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtInformation,[mbOk],0);
    Exit;
  end;
  if (DM.TBVendasVED_STATUS.Value='F') and (not DM.TBVendasVED_NOTA.IsNull) then
  begin
    MessageDlg('Use o cadastro de notas para cancelar este pedido.',mtInformation,[mbOk],0);
    Exit;
  end;
  if (DM.TBVendasVED_STATUS.Value='F') and (not DM.TBVendasVED_NFE.IsNull) then
  begin
    MessageDlg('Use o cadastro de notas eletrônicas para cancelar este pedido.',mtInformation,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja cancelar a venda?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormVendasCancelar, FormVendasCancelar);
    FormVendasCancelar.ShowModal;
    FormVendasCancelar.Free;
    FormVendasCancelar:=nil;
  end;
end;

procedure TFormVendas.QYVendasAfterPost(DataSet: TDataSet);
begin
  TRVendas.Commit;
  QYVendas.ParamByName('codigo').AsInteger:=CodigoMark;
  QYVendas.Open;
end;

procedure TFormVendas.QYVendasBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=QYVendasVED_CODIGO.Value;
end;

procedure TFormVendas.QYVendasItensAfterPost(DataSet: TDataSet);
begin
  TRVendasItens.Commit;
  QYVendasItens.Open;
end;

procedure TFormVendas.EnviarPedidoPorEmail1Click(Sender: TObject);
//var MousePos: TPoint;
begin
  //GetCursorPos(MousePos);
  //PopupMenu1.Popup(MousePos.X,MousePos.Y);
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  GerarEmailVenda;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormVendas.GerarEmailVenda;
var
  MM: TMemo;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_VENDAEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|VED_CODIGO|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_CONTATO|',DM.TBVendasVED_CONTATO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_NOME|',DM.TBVendasVED_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VEN_NOME|',DM.TBVendasVEN_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  ImprimirPedidoDeVenda('Orçamento',ExtractFilePath(Application.ExeName)+'Print\OrcamentoVenda.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=ExtractFilePath(Application.ExeName)+'Print\OrcamentoVenda.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_COPIAOCULTA.Value:='';
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:='S';
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
end;

{procedure TFormVendas.GerarEmailVendaDetalhado;
var MM: TMemo;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_VENDAEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|VED_CODIGO|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_CONTATO|',DM.TBVendasVED_CONTATO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_NOME|',DM.TBVendasVED_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VEN_NOME|',DM.TBVendasVEN_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  ImprimirOrcamentoDetalhado(ExtractFilePath(Application.ExeName)+'Print\OrcamentoVenda.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=ExtractFilePath(Application.ExeName)+'Print\OrcamentoVenda.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_COPIAOCULTA.Value:='';
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:='S';
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
end; }

procedure TFormVendas.EtiquetaConferencia1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhuma venda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBEtiquetas.Close;
  DM.TBEtiquetas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_ETIQUETACONFERENCIA.Value;
  DM.TBEtiquetas.Open;
  if DM.TBEtiquetas.IsEmpty then
  begin
    MessageDlg('A configuração de etiqueta não foi encontrada.'+#13#10+'É necessário configurá-la nos Parâmetos do sistema. Certifique-se também que a configuração da etiqueta existe no cadastro de etiquetas.',mtError,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Imprimir etiqueta de conferência?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ImprimirEtiquetasConferenciaPPLB;
  end;
end;

procedure TFormVendas.EtiquetaParaEmbalagem1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhuma venda selecionada.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBEtiquetas.Close;
  DM.TBEtiquetas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_ETIQUETAEMBALAGEM.Value;
  DM.TBEtiquetas.Open;
  if DM.TBEtiquetas.IsEmpty then
  begin
    MessageDlg('A configuração de etiqueta não foi encontrada.'+#13#10+'É necessário configurá-la nos Parâmetos do sistema. Certifique-se também que a configuração da etiqueta existe no cadastro de etiquetas.',mtError,[mbOk],0);
    Exit;
  end;

  if MessageDlg('Imprimir etiqueta para embalagem?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //ImprimirEtiquetasEmbalagemPPLB;
    ImprimirEtiquetasEmbalagemPPLB_Novo;
  end;
end;

procedure TFormVendas.EtiquetaParaEmbalagemModelo21Click(Sender: TObject);
var I: Word;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasQ33, FormVendasQ33);
  FormVendasQ33.TBEtiquetas.EmptyDataSet;
  for I:=1 to DM.TBVendasVED_VOLUMES.Value do
  begin
    FormVendasQ33.TBEtiquetas.Insert;
    FormVendasQ33.TBEtiquetasBAIRRO.Value:=DM.TBVendasVED_BAIRRO.Value;
    FormVendasQ33.TBEtiquetasCEP.Value:=DM.TBVendasVED_CEP.Value;
    FormVendasQ33.TBEtiquetasCIDADE.Value:=DM.TBVendasVED_CIDADE.Value;
    FormVendasQ33.TBEtiquetasCOMPLEMENTO.Value:=DM.TBVendasVED_COMPLEMENTO.Value;
    FormVendasQ33.TBEtiquetasENDERECO.Value:=DM.TBVendasVED_ENDERECO.Value;
    FormVendasQ33.TBEtiquetasESTADO.Value:=DM.TBVendasVED_ESTADO.Value;
    FormVendasQ33.TBEtiquetasNOME.Value:=DM.TBVendasVED_NOME.Value;
    if not DM.TBVendasVED_NFE.IsNull then
    FormVendasQ33.TBEtiquetasNOTA.Value:='NFe: '+IntToStr(DM.TBVendasVED_NFE.Value) else
    FormVendasQ33.TBEtiquetasNOTA.Value:='PEDIDO: '+IntToStr(DM.TBVendasVED_CODIGO.Value);
    FormVendasQ33.TBEtiquetasNUMERO.Value:=DM.TBVendasVED_NUMERO.Value;
    FormVendasQ33.TBEtiquetasTRANSPORTADORA.Value:=DM.TBVendasVED_TRANSPNOME.Value;
    FormVendasQ33.TBEtiquetasVOLUMES.Value:=IntToStr(DM.TBVendasVED_VOLUMES.Value);
    FormVendasQ33.TBEtiquetasVOLUMESNUM.Value:=DM.TBVendasVED_VOLUMESNUM.Value;
    FormVendasQ33.TBEtiquetas.Post;
  end;
  FormVendasQ33.TBEtiquetas.First;
  FormVendasQ33.QuickRep1.PreviewModal;
  FormVendasQ33.Free;
  FormVendasQ33:=nil;
end;

procedure TFormVendas.DBEdit42Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendas.DBEdit42Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit42,DBEdit43,DM.TBVendas);
end;

procedure TFormVendas.DBEdit42KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormVendas.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.SpeedButton17Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit42,DBEdit43,DM.TBVendas);
end;

procedure CopiarCapaVendaParaNota;
begin
  { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
  //os campos comentados não se aplicam.
  DM.TBNotas.Insert;
  DM.TBNotasNOT_ALIQICMSCREDSN.Value:=DM.TBVendasVED_ALIQICMSCREDSN.Value;
  DM.TBNotasNOT_BAIRRO.Value:=DM.TBVendasVED_BAIRRO.Value;
  //DM.TBNotasNOT_BAIXADATA.Value:=
  //DM.TBNotasNOT_BAIXAPOR.Value:=
  DM.TBNotasNOT_BASECOFINS.Value:=DM.TBVendasVED_BASECOFINS.Value;
  DM.TBNotasNOT_BASECOFINSST.Value:=DM.TBVendasVED_BASECOFINSST.Value;
  DM.TBNotasNOT_BASEICMS.Value:=DM.TBVendasVED_BASEICMS.Value;
  DM.TBNotasNOT_BASEICMSST.Value:=DM.TBVendasVED_BASEICMSST.Value;
  DM.TBNotasNOT_BASEII.Value:=DM.TBVendasVED_BASEII.Value;
  DM.TBNotasNOT_BASEIPI.Value:=DM.TBVendasVED_BASEIPI.Value;
  DM.TBNotasNOT_BASEISS.Value:=DM.TBVendasVED_BASEISS.Value;
  DM.TBNotasNOT_BASEPIS.Value:=DM.TBVendasVED_BASEPIS.Value;
  DM.TBNotasNOT_BASEPISST.Value:=DM.TBVendasVED_BASEPISST.Value;
  DM.TBNotasNOT_CEP.Value:=DM.TBVendasVED_CEP.Value;
  DM.TBNotasNOT_CFOP.Value:=DM.TBVendasVED_CFOP.Value;
  DM.TBNotasNOT_CFOPDESC.Value:=DM.TBVendasVED_CFOPDESC.Value;
  DM.TBNotasNOT_CIDADE.Value:=DM.TBVendasVED_CIDADE.Value;
  DM.TBNotasNOT_CIDADECODIGO.Value:=DM.TBVendasVED_CIDADECODIGO.Value;
  DM.TBNotasNOT_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBNotasNOT_CNPJ.Value:=DM.TBVendasVED_CNPJ.Value;
  //DM.TBNotasNOT_CODIGO.Value:=
  DM.TBNotasNOT_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value;
  DM.TBNotasNOT_COMISSAOPOR.Value:=DM.TBVendasVED_COMISSAOPOR.Value;
  DM.TBNotasNOT_COMPLEMENTO.Value:=DM.TBVendasVED_COMPLEMENTO.Value;
  DM.TBNotasNOT_CONDICAO.Value:=DM.TBVendasVED_CONDICAO.Value;
  DM.TBNotasNOT_CONDICAOMEMO.Value:=DM.TBVendasVED_CONDICAOMEMO.Value;
  DM.TBNotasNOT_CONTATO.Value:=DM.TBVendasVED_CONTATO.Value;
  DM.TBNotasNOT_CPF.Value:=DM.TBVendasVED_CPF.Value;
  DM.TBNotasNOT_CUSTOTOTAL.Value:=DM.TBVendasVED_CUSTOTOTAL.Value;
  DM.TBNotasNOT_DESCPORC.Value:=DM.TBVendasVED_DESCPORC.Value;
  DM.TBNotasNOT_DESCPORCCLIENTE.Value:=DM.TBVendasVED_DESCPORCCLIENTE.Value;
  DM.TBNotasNOT_DESCPORCCONDICAO.Value:=DM.TBVendasVED_DESCPORCCONDICAO.Value;
  DM.TBNotasNOT_DESCVALOR.Value:=DM.TBVendasVED_DESCVALOR.Value;
  DM.TBNotasNOT_DESTACARIMPOSTOS.Value:=DM.TBVendasVED_DESTACARIMPOSTOS.Value;
  DM.TBNotasNOT_DIAPREFERENCIAL.Value:=DM.TBVendasVED_DIAPREFERENCIAL.Value;
  //DM.TBNotasNOT_DTATUALIZACAO.Value:=
  DM.TBNotasNOT_DTCADASTRO.Value:=DM.TBVendasVED_DTCADASTRO.Value;
  DM.TBNotasNOT_DTEMISSAO.Value:=DM.ServerDate;
  DM.TBNotasNOT_DTPRESTSERVICO.Value:=DM.TBVendasVED_DTPRESTSERVICO.Value;
  DM.TBNotasNOT_DTSAIDA.Value:=DM.ServerDate;
  DM.TBNotasNOT_ENDERECO.Value:=DM.TBVendasVED_ENDERECO.Value;
  DM.TBNotasNOT_ENTRADASAIDA.Value:=DM.TBVendasVED_ENTRADASAIDA.Value;
  DM.TBNotasNOT_ESPECIE.Value:=DM.TBVendasVED_ESPECIE.Value;
  DM.TBNotasNOT_ESTADO.Value:=DM.TBVendasVED_ESTADO.Value;
  DM.TBNotasNOT_ESTADOCODIGO.Value:=DM.TBVendasVED_ESTADOCODIGO.Value;
  DM.TBNotasNOT_EXLOCAL.Value:=DM.TBVendasVED_EXLOCAL.Value;
  DM.TBNotasNOT_EXPEDIDOPOR.Value:=DM.TBVendasVED_EXPEDIDOPOR.Value;
  DM.TBNotasNOT_EXUFSAIDA.Value:=DM.TBVendasVED_EXUFSAIDA.Value;
  DM.TBNotasNOT_FONE1.Value:=DM.TBVendasVED_FONE1.Value;
  DM.TBNotasNOT_FORMAPAGTO.Value:=DM.TBVendasVED_FORMAPAGTO.Value;
  DM.TBNotasNOT_FRETE.Value:=DM.TBVendasVED_FRETE.Value;
  DM.TBNotasNOT_IDESTRANGEIRO.Value:=DM.TBVendasVED_IDESTRANGEIRO.Value;
  DM.TBNotasNOT_IE.Value:=DM.TBVendasVED_IE.Value;
  DM.TBNotasNOT_INFOADICFISCO.Value:=DM.TBVendasVED_INFOADICFISCO.Value;
  DM.TBNotasNOT_LACRES.Value:=DM.TBVendasVED_LACRES.Value;
  DM.TBNotasNOT_LUCROPORC.Value:=DM.TBVendasVED_LUCROPORC.Value;
  DM.TBNotasNOT_LUCROVALOR.Value:=DM.TBVendasVED_LUCROVALOR.Value;
  DM.TBNotasNOT_MARCA.Value:=DM.TBVendasVED_MARCA.Value;
  DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:=DM.TBVendasVED_MOVIMENTAESTOQUE.Value;
  DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:=DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value;
  DM.TBNotasNOT_NOME.Value:=DM.TBVendasVED_NOME.Value;
  DM.TBNotasNOT_NUMERO.Value:=DM.TBVendasVED_NUMERO.Value;
  DM.TBNotasNOT_OBSERVACOES.Value:=DM.TBVendasVED_OBSERVACOES.Value;
  DM.TBNotasNOT_PAIS.Value:=DM.TBVendasVED_PAIS.Value;
  DM.TBNotasNOT_PAISCODIGO.Value:=DM.TBVendasVED_PAISCODIGO.Value;
  DM.TBNotasNOT_PEDIDOCLIENTE.Value:=DM.TBVendasVED_PEDIDOCLIENTE.Value;
  DM.TBNotasNOT_PESOBRUTO.Value:=DM.TBVendasVED_PESOBRUTO.Value;
  DM.TBNotasNOT_PESOLIQ.Value:=DM.TBVendasVED_PESOLIQ.Value;
  DM.TBNotasNOT_REBOQUEPLACA.Value:=DM.TBVendasVED_REBOQUEPLACA.Value;
  DM.TBNotasNOT_REBOQUEPLACAUF.Value:=DM.TBVendasVED_REBOQUEPLACAUF.Value;
  DM.TBNotasNOT_REBOQUERNTC.Value:=DM.TBVendasVED_REBOQUERNTC.Value;
  DM.TBNotasNOT_RG.Value:=DM.TBVendasVED_RG.Value;
  DM.TBNotasNOT_SEQUENCIAITEM.Value:=DM.TBVendasVED_SEQUENCIAITEM.Value;
  DM.TBNotasNOT_STATUS.Value:='A';
  DM.TBNotasNOT_TABELAPRECO.Value:=DM.TBVendasVED_TABELAPRECO.Value;
  DM.TBNotasNOT_TIPOATENDIMENTO.Value:=DM.TBVendasVED_TIPOATENDIMENTO.Value;
  DM.TBNotasNOT_TIPOCONSUMIDOR.Value:=DM.TBVendasVED_TIPOCONSUMIDOR.Value;
  DM.TBNotasNOT_TIPOOPERACAO.Value:=DM.TBVendasVED_TIPOOPERACAO.Value;
  DM.TBNotasNOT_TOTALADUANA.Value:=DM.TBVendasVED_TOTALADUANA.Value;
  DM.TBNotasNOT_TOTALBRUTO.Value:=DM.TBVendasVED_TOTALBRUTO.Value;
  DM.TBNotasNOT_TOTALCOFINS.Value:=DM.TBVendasVED_TOTALCOFINS.Value;
  DM.TBNotasNOT_TOTALCOFINSST.Value:=DM.TBVendasVED_TOTALCOFINSST.Value;
  DM.TBNotasNOT_TOTALCOMISSAO.Value:=DM.TBVendasVED_TOTALCOMISSAO.Value;
  DM.TBNotasNOT_TOTALFCP.Value:=DM.TBVendasVED_TOTALFCP.Value;
  DM.TBNotasNOT_TOTALFCPST.Value:=DM.TBVendasVED_TOTALFCPST.Value;
  DM.TBNotasNOT_TOTALICMS.Value:=DM.TBVendasVED_TOTALICMS.Value;
  DM.TBNotasNOT_TOTALICMSCREDSN.Value:=DM.TBVendasVED_TOTALICMSCREDSN.Value;
  DM.TBNotasNOT_TOTALICMSST.Value:=DM.TBVendasVED_TOTALICMSST.Value;
  DM.TBNotasNOT_TOTALICMSUFDEST.Value:=DM.TBVendasVED_TOTALICMSUFDEST.Value;
  DM.TBNotasNOT_TOTALICMSUFREMET.Value:=DM.TBVendasVED_TOTALICMSUFREMET.Value;
  DM.TBNotasNOT_TOTALII.Value:=DM.TBVendasVED_TOTALII.Value;
  DM.TBNotasNOT_TOTALIOF.Value:=DM.TBVendasVED_TOTALIOF.Value;
  DM.TBNotasNOT_TOTALIPI.Value:=DM.TBVendasVED_TOTALIPI.Value;
  DM.TBNotasNOT_TOTALISS.Value:=DM.TBVendasVED_TOTALISS.Value;
  DM.TBNotasNOT_TOTALISSDEDUCAO.Value:=DM.TBVendasVED_TOTALISSDEDUCAO.Value;
  DM.TBNotasNOT_TOTALISSDESCCOND.Value:=DM.TBVendasVED_TOTALISSDESCCOND.Value;
  DM.TBNotasNOT_TOTALISSDESCINCOND.Value:=DM.TBVendasVED_TOTALISSDESCINCOND.Value;
  DM.TBNotasNOT_TOTALISSOUTROS.Value:=DM.TBVendasVED_TOTALISSOUTROS.Value;
  DM.TBNotasNOT_TOTALISSRETENCAO.Value:=DM.TBVendasVED_TOTALISSRETENCAO.Value;
  DM.TBNotasNOT_TOTALITENS.Value:=DM.TBVendasVED_TOTALITENS.Value;
  DM.TBNotasNOT_TOTALPIS.Value:=DM.TBVendasVED_TOTALPIS.Value;
  DM.TBNotasNOT_TOTALPISST.Value:=DM.TBVendasVED_TOTALPISST.Value;
  DM.TBNotasNOT_TOTALPRODUTOS.Value:=DM.TBVendasVED_TOTALPRODUTOS.Value;
  DM.TBNotasNOT_TOTALSERVICOS.Value:=DM.TBVendasVED_TOTALSERVICOS.Value;
  DM.TBNotasNOT_TOTALTRIBUTOS.Value:=DM.TBVendasVED_TOTALTRIBUTOS.Value;
  DM.TBNotasNOT_TOTALTRIBUTOSEST.Value:=DM.TBVendasVED_TOTALTRIBUTOSEST.Value;
  DM.TBNotasNOT_TOTALTRIBUTOSFED.Value:=DM.TBVendasVED_TOTALTRIBUTOSFED.Value;
  DM.TBNotasNOT_TOTALTRIBUTOSIMP.Value:=DM.TBVendasVED_TOTALTRIBUTOSIMP.Value;
  DM.TBNotasNOT_TOTALTRIBUTOSMUN.Value:=DM.TBVendasVED_TOTALTRIBUTOSMUN.Value;
  DM.TBNotasNOT_TRANSPCIDADE.Value:=DM.TBVendasVED_TRANSPCIDADE.Value;
  DM.TBNotasNOT_TRANSPCNPJ.Value:=DM.TBVendasVED_TRANSPCNPJ.Value;
  DM.TBNotasNOT_TRANSPCPF.Value:=DM.TBVendasVED_TRANSPCPF.Value;
  DM.TBNotasNOT_TRANSPEMAIL.Value:=DM.TBVendasVED_TRANSPEMAIL.Value;
  DM.TBNotasNOT_TRANSPENDERECO.Value:=DM.TBVendasVED_TRANSPENDERECO.Value;
  DM.TBNotasNOT_TRANSPESTADO.Value:=DM.TBVendasVED_TRANSPESTADO.Value;
  DM.TBNotasNOT_TRANSPFONE.Value:=DM.TBVendasVED_TRANSPFONE.Value;
  DM.TBNotasNOT_TRANSPIE.Value:=DM.TBVendasVED_TRANSPIE.Value;
  DM.TBNotasNOT_TRANSPNOME.Value:=DM.TBVendasVED_TRANSPNOME.Value;
  DM.TBNotasNOT_TRANSPORTADORA.Value:=DM.TBVendasVED_TRANSPORTADORA.Value;
  //DM.TBNotasNOT_USUARIO.Value:=
  DM.TBNotasNOT_VALORDESPACES.Value:=DM.TBVendasVED_VALORDESPACES.Value;
  DM.TBNotasNOT_VALORFRETE.Value:=DM.TBVendasVED_VALORFRETE.Value;
  DM.TBNotasNOT_VALORSEGURO.Value:=DM.TBVendasVED_VALORSEGURO.Value;
  DM.TBNotasNOT_VALORTOTAL.Value:=DM.TBVendasVED_VALORTOTAL.Value;
  DM.TBNotasNOT_VEICULOPLACA.Value:=DM.TBVendasVED_VEICULOPLACA.Value;
  DM.TBNotasNOT_VEICULOPLACAUF.Value:=DM.TBVendasVED_VEICULOPLACAUF.Value;
  DM.TBNotasNOT_VEICULORNTC.Value:=DM.TBVendasVED_VEICULORNTC.Value;
  DM.TBNotasNOT_VENDA.Value:=DM.TBVendasVED_CODIGO.Value;
  DM.TBNotasNOT_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBNotasNOT_VOLUMES.Value:=DM.TBVendasVED_VOLUMES.Value;
  DM.TBNotasNOT_VOLUMESNUM.Value:=DM.TBVendasVED_VOLUMESNUM.Value;
//funciona sem essa linha?  DM.TBNotasVEN_NOME1.Value:=DM.TBVendasVEN_NOME1.Value;
  DM.TBNotas.Post;
end;

procedure CopiarItensVendaParaNota;
begin
  DM.TBVendasItens.DisableControls;
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do
  begin
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    DM.TBNotasItens.Insert;
    DM.TBNotasItensNOI_ALIQCOFINS.Value:=DM.TBVendasItensVEI_ALIQCOFINS.Value;
    DM.TBNotasItensNOI_ALIQCOFINSST.Value:=DM.TBVendasItensVEI_ALIQCOFINSST.Value;
    DM.TBNotasItensNOI_ALIQFCP.Value:=DM.TBVendasItensVEI_ALIQFCP.Value;
    DM.TBNotasItensNOI_ALIQFCPST.Value:=DM.TBVendasItensVEI_ALIQFCPST.Value;
    DM.TBNotasItensNOI_ALIQICMS.Value:=DM.TBVendasItensVEI_ALIQICMS.Value;
    DM.TBNotasItensNOI_ALIQICMSADICST.Value:=DM.TBVendasItensVEI_ALIQICMSADICST.Value;
    DM.TBNotasItensNOI_ALIQICMSINTER.Value:=DM.TBVendasItensVEI_ALIQICMSINTER.Value;
    DM.TBNotasItensNOI_ALIQICMSINTERPART.Value:=DM.TBVendasItensVEI_ALIQICMSINTERPART.Value;
    DM.TBNotasItensNOI_ALIQICMSRED.Value:=DM.TBVendasItensVEI_ALIQICMSRED.Value;
    DM.TBNotasItensNOI_ALIQICMSST.Value:=DM.TBVendasItensVEI_ALIQICMSST.Value;
    DM.TBNotasItensNOI_ALIQII.Value:=DM.TBVendasItensVEI_ALIQII.Value;
    DM.TBNotasItensNOI_ALIQIPI.Value:=DM.TBVendasItensVEI_ALIQIPI.Value;
    DM.TBNotasItensNOI_ALIQISS.Value:=DM.TBVendasItensVEI_ALIQISS.Value;
    DM.TBNotasItensNOI_ALIQPIS.Value:=DM.TBVendasItensVEI_ALIQPIS.Value;
    DM.TBNotasItensNOI_ALIQPISST.Value:=DM.TBVendasItensVEI_ALIQPISST.Value;
    DM.TBNotasItensNOI_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
    DM.TBNotasItensNOI_BASECOFINS.Value:=DM.TBVendasItensVEI_BASECOFINS.Value;
    DM.TBNotasItensNOI_BASECOFINSST.Value:=DM.TBVendasItensVEI_BASECOFINSST.Value;
    DM.TBNotasItensNOI_BASEICMS.Value:=DM.TBVendasItensVEI_BASEICMS.Value;
    DM.TBNotasItensNOI_BASEICMSRED.Value:=DM.TBVendasItensVEI_BASEICMSRED.Value;
    DM.TBNotasItensNOI_BASEICMSST.Value:=DM.TBVendasItensVEI_BASEICMSST.Value;
    DM.TBNotasItensNOI_BASEII.Value:=DM.TBVendasItensVEI_BASEII.Value;
    DM.TBNotasItensNOI_BASEIPI.Value:=DM.TBVendasItensVEI_BASEIPI.Value;
    DM.TBNotasItensNOI_BASEISS.Value:=DM.TBVendasItensVEI_BASEISS.Value;
    DM.TBNotasItensNOI_BASEPIS.Value:=DM.TBVendasItensVEI_BASEPIS.Value;
    DM.TBNotasItensNOI_BASEPISST.Value:=DM.TBVendasItensVEI_BASEPISST.Value;
    DM.TBNotasItensNOI_CEST.Value:=DM.TBVendasItensVEI_CEST.Value;
    DM.TBNotasItensNOI_CFOP.Value:=DM.TBVendasItensVEI_CFOP.Value;
    DM.TBNotasItensNOI_CIDADEISS.Value:=DM.TBVendasItensVEI_CIDADEISS.Value;
    DM.TBNotasItensNOI_CLASSFISCAL.Value:=DM.TBVendasItensVEI_CLASSFISCAL.Value;
    //DM.TBNotasItensNOI_CODIGO.Value:=
    DM.TBNotasItensNOI_CODIGOBARRAS.Value:=DM.TBVendasItensVEI_CODIGOBARRAS.Value;
    DM.TBNotasItensNOI_CODIGOFAB.Value:=DM.TBVendasItensVEI_CODIGOFAB.Value;
    DM.TBNotasItensNOI_COMISSAO.Value:=DM.TBVendasItensVEI_COMISSAO.Value;
    DM.TBNotasItensNOI_COMPLEMENTO.Value:=DM.TBVendasItensVEI_COMPLEMENTO.Value;
    DM.TBNotasItensNOI_COMPOEBASEICMS.Value:=DM.TBVendasItensVEI_COMPOEBASEICMS.Value;
    DM.TBNotasItensNOI_COMPOEBASEICMSST.Value:=DM.TBVendasItensVEI_COMPOEBASEICMSST.Value;
    DM.TBNotasItensNOI_COMPOETOTAL.Value:=DM.TBVendasItensVEI_COMPOETOTAL.Value;
    DM.TBNotasItensNOI_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
    DM.TBNotasItensNOI_CSTCOFINS.Value:=DM.TBVendasItensVEI_CSTCOFINS.Value;
    DM.TBNotasItensNOI_CSTICMS.Value:=DM.TBVendasItensVEI_CSTICMS.Value;
    DM.TBNotasItensNOI_CSTIPI.Value:=DM.TBVendasItensVEI_CSTIPI.Value;
    DM.TBNotasItensNOI_CSTPIS.Value:=DM.TBVendasItensVEI_CSTPIS.Value;
    DM.TBNotasItensNOI_DESCMAX.Value:=DM.TBVendasItensVEI_DESCMAX.Value;
    DM.TBNotasItensNOI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCPORC.Value;
    DM.TBNotasItensNOI_DESCRICAO.Value:=DM.TBVendasItensVEI_DESCRICAO.Value;
    DM.TBNotasItensNOI_DESCVALOR.Value:=DM.TBVendasItensVEI_DESCVALOR.Value;
    DM.TBNotasItensNOI_DICNPJ.Value:=DM.TBVendasItensVEI_DICNPJ.Value;
    DM.TBNotasItensNOI_DIDATA.Value:=DM.TBVendasItensVEI_DIDATA.Value;
    DM.TBNotasItensNOI_DIDESEMBARACODATA.Value:=DM.TBVendasItensVEI_DIDESEMBARACODATA.Value;
    DM.TBNotasItensNOI_DIDESEMBARACOLOCAL.Value:=DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value;
    DM.TBNotasItensNOI_DIDESEMBARACOUF.Value:=DM.TBVendasItensVEI_DIDESEMBARACOUF.Value;
    DM.TBNotasItensNOI_DIEXPORTADORCOD.Value:=DM.TBVendasItensVEI_DIEXPORTADORCOD.Value;
    DM.TBNotasItensNOI_DIINTERMEDIO.Value:=DM.TBVendasItensVEI_DIINTERMEDIO.Value;
    DM.TBNotasItensNOI_DINUMERO.Value:=DM.TBVendasItensVEI_DINUMERO.Value;
    DM.TBNotasItensNOI_DITERCEIROUF.Value:=DM.TBVendasItensVEI_DITERCEIROUF.Value;
    DM.TBNotasItensNOI_DITRANSPORTE.Value:=DM.TBVendasItensVEI_DITRANSPORTE.Value;
    DM.TBNotasItensNOI_DIVALORAFRMM.Value:=DM.TBVendasItensVEI_DIVALORAFRMM.Value;
    DM.TBNotasItensNOI_EXCHAVEACESSO.Value:=DM.TBVendasItensVEI_EXCHAVEACESSO.Value;
    DM.TBNotasItensNOI_EXDRAWBACK.Value:=DM.TBVendasItensVEI_EXDRAWBACK.Value;
    DM.TBNotasItensNOI_EXQUANTIDADE.Value:=DM.TBVendasItensVEI_EXQUANTIDADE.Value;
    DM.TBNotasItensNOI_EXREGISTRO.Value:=DM.TBVendasItensVEI_EXREGISTRO.Value;
    DM.TBNotasItensNOI_FCI.Value:=DM.TBVendasItensVEI_FCI.Value;
    DM.TBNotasItensNOI_INCENTIVOISS.Value:=DM.TBVendasItensVEI_INCENTIVOISS.Value;
    DM.TBNotasItensNOI_INDICADORISS.Value:=DM.TBVendasItensVEI_INDICADORISS.Value;
    DM.TBNotasItensNOI_INFOADICIONAL.Value:=DM.TBVendasItensVEI_INFOADICIONAL.Value;
    DM.TBNotasItensNOI_LOCALIZACAO.Value:=DM.TBVendasItensVEI_LOCALIZACAO.Value;
    DM.TBNotasItensNOI_LOTE.Value:=DM.TBVendasItensVEI_LOTE.Value;
    DM.TBNotasItensNOI_LUCROPORC.Value:=DM.TBVendasItensVEI_LUCROPORC.Value;
    DM.TBNotasItensNOI_LUCROVALOR.Value:=DM.TBVendasItensVEI_LUCROVALOR.Value;
    DM.TBNotasItensNOI_MODICMS.Value:=DM.TBVendasItensVEI_MODICMS.Value;
    DM.TBNotasItensNOI_MODICMSST.Value:=DM.TBVendasItensVEI_MODICMSST.Value;
    //DM.TBNotasItensNOI_NOTA.Value:=
    DM.TBNotasItensNOI_ORIGEM.Value:=DM.TBVendasItensVEI_ORIGEM.Value;
    DM.TBNotasItensNOI_PAISISS.Value:=DM.TBVendasItensVEI_PAISISS.Value;
    DM.TBNotasItensNOI_PEDIDOCLIENTEITEM.Value:=DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value;
    DM.TBNotasItensNOI_PESO.Value:=DM.TBVendasItensVEI_PESO.Value;
    DM.TBNotasItensNOI_PESOTOTAL.Value:=DM.TBVendasItensVEI_PESOTOTAL.Value;
    DM.TBNotasItensNOI_PRECOCUSTO.Value:=DM.TBVendasItensVEI_PRECOCUSTO.Value;
    DM.TBNotasItensNOI_PRECOCUSTOTOTAL.Value:=DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
    DM.TBNotasItensNOI_PROCESSOISS.Value:=DM.TBVendasItensVEI_PROCESSOISS.Value;
    DM.TBNotasItensNOI_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBNotasItensNOI_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
    DM.TBNotasItensNOI_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
    DM.TBNotasItensNOI_QUANTIDADETROCA.Value:=DM.TBVendasItensVEI_QUANTIDADETROCA.Value;
    DM.TBNotasItensNOI_SEQUENCIA.Value:=DM.TBVendasItensVEI_SEQUENCIA.Value;
    DM.TBNotasItensNOI_SERVICOISS.Value:=DM.TBVendasItensVEI_SERVICOISS.Value;
    DM.TBNotasItensNOI_SOMACOFINSST.Value:=DM.TBVendasItensVEI_SOMACOFINSST.Value;
    DM.TBNotasItensNOI_SOMAPISST.Value:=DM.TBVendasItensVEI_SOMAPISST.Value;
    DM.TBNotasItensNOI_TIPO.Value:=DM.TBVendasItensVEI_TIPO.Value;
    DM.TBNotasItensNOI_TIPOISS.Value:=DM.TBVendasItensVEI_TIPOISS.Value;
    DM.TBNotasItensNOI_UNIDADE.Value:=DM.TBVendasItensVEI_UNIDADE.Value;
    DM.TBNotasItensNOI_VALORACESSORIAS.Value:=DM.TBVendasItensVEI_VALORACESSORIAS.Value;
    DM.TBNotasItensNOI_VALORADUANA.Value:=DM.TBVendasItensVEI_VALORADUANA.Value;
    DM.TBNotasItensNOI_VALORCOFINS.Value:=DM.TBVendasItensVEI_VALORCOFINS.Value;
    DM.TBNotasItensNOI_VALORCOFINSST.Value:=DM.TBVendasItensVEI_VALORCOFINSST.Value;
    DM.TBNotasItensNOI_VALORCOMISSAO.Value:=DM.TBVendasItensVEI_VALORCOMISSAO.Value;
    DM.TBNotasItensNOI_VALORFCP.Value:=DM.TBVendasItensVEI_VALORFCP.Value;
    DM.TBNotasItensNOI_VALORFCPST.Value:=DM.TBVendasItensVEI_VALORFCPST.Value;
    DM.TBNotasItensNOI_VALORFRETE.Value:=DM.TBVendasItensVEI_VALORFRETE.Value;
    DM.TBNotasItensNOI_VALORICMS.Value:=DM.TBVendasItensVEI_VALORICMS.Value;
    DM.TBNotasItensNOI_VALORICMSCREDSN.Value:=DM.TBVendasItensVEI_VALORICMSCREDSN.Value;
    DM.TBNotasItensNOI_VALORICMSST.Value:=DM.TBVendasItensVEI_VALORICMSST.Value;
    DM.TBNotasItensNOI_VALORICMSUFDEST.Value:=DM.TBVendasItensVEI_VALORICMSUFDEST.Value;
    DM.TBNotasItensNOI_VALORICMSUFREMET.Value:=DM.TBVendasItensVEI_VALORICMSUFREMET.Value;
    DM.TBNotasItensNOI_VALORII.Value:=DM.TBVendasItensVEI_VALORII.Value;
    DM.TBNotasItensNOI_VALORIOF.Value:=DM.TBVendasItensVEI_VALORIOF.Value;
    DM.TBNotasItensNOI_VALORIPI.Value:=DM.TBVendasItensVEI_VALORIPI.Value;
    DM.TBNotasItensNOI_VALORISS.Value:=DM.TBVendasItensVEI_VALORISS.Value;
    DM.TBNotasItensNOI_VALORISSDEDUCAO.Value:=DM.TBVendasItensVEI_VALORISSDEDUCAO.Value;
    DM.TBNotasItensNOI_VALORISSDESCCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCCOND.Value;
    DM.TBNotasItensNOI_VALORISSDESCINCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCINCOND.Value;
    DM.TBNotasItensNOI_VALORISSOUTROS.Value:=DM.TBVendasItensVEI_VALORISSOUTROS.Value;
    DM.TBNotasItensNOI_VALORISSRETENCAO.Value:=DM.TBVendasItensVEI_VALORISSRETENCAO.Value;
    DM.TBNotasItensNOI_VALORPIS.Value:=DM.TBVendasItensVEI_VALORPIS.Value;
    DM.TBNotasItensNOI_VALORPISST.Value:=DM.TBVendasItensVEI_VALORPISST.Value;
    DM.TBNotasItensNOI_VALORSEGURO.Value:=DM.TBVendasItensVEI_VALORSEGURO.Value;
    DM.TBNotasItensNOI_VALORTOTAL.Value:=DM.TBVendasItensVEI_VALORTOTAL.Value;
    DM.TBNotasItensNOI_VALORTOTALBRUTO.Value:=DM.TBVendasItensVEI_VALORTOTALBRUTO.Value;
    DM.TBNotasItensNOI_VALORTRIBUTOS.Value:=DM.TBVendasItensVEI_VALORTRIBUTOS.Value;
    DM.TBNotasItensNOI_VALORTRIBUTOSEST.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value;
    DM.TBNotasItensNOI_VALORTRIBUTOSFED.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value;
    DM.TBNotasItensNOI_VALORTRIBUTOSIMP.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
    DM.TBNotasItensNOI_VALORTRIBUTOSMUN.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
    DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value;
    //nao coloquei aqui os campos que estao comentado na rotina de copia dos itens da nota para a NFe.
    DM.TBNotasItens.Post;
    DM.TBVendasItens.Next;
  end;
  DM.TBVendasItens.EnableControls;
end;

procedure TFormVendas.GerarNota1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda ainda não tem itens.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if (DM.TBVendasVED_STATUS.Value='F') and ((not DM.TBVendasVED_NOTA.IsNull) or (not DM.TBVendasVED_NFE.IsNull)) then
  begin
    if MessageDlg('Já foi gerada uma nota com esse pedido. Deseja abrir o cadastro de notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      if not DM.TBVendasVED_NFE.IsNull then
      CadastrodeNotasFiscaisEletronicas1.Click else
      CadastrodeNotasFiscais1.Click;
    end;
    Exit;
  end;
  if DM.TBNotas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('No momento existe uma nota fiscal em edição. Verifique!',mtError,[mbOk],0);
    Exit;
  end;

  if VerificarEstoque=False then
  Exit;

  if DM.TBVendasVED_STATUS.Value='A' then
  begin
    if MessageDlg('Gerar nota e finalizar este pedido?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      CopiarCapaVendaParaNota;
      CopiarItensVendaParaNota;
      //deixa a nota em aberto para possíveis ajustes. - alterado para F, para já finalizar a NF.
      DM.TBNotas.Edit;
      DM.TBNotasNOT_STATUS.Value:='A';
      //DM.TBNotasNOT_STATUS.Value:='F';
      DM.TBNotas.Post;
      //finaliza o pedido e informa que foi gerado uma nota.
      DM.TBVendas.Edit;
      DM.TBVendasVED_STATUS.Value:='F';
      DM.TBVendasVED_NOTA.Value:=DM.TBNotasNOT_CODIGO.Value;
      DM.TBVendasVED_BAIXADATA.Value:=DM.ServerDate;
      DM.TBVendasVED_BAIXAPOR.Value:=UsuarioLogado;
      DM.TBVendas.Post;
      //MessageDlg('Nota gerada com número: '+IntToStr(DM.TBNotasNOT_CODIGO.Value)+#13#13+'Clique OK para abrir o cadastro de notas.',mtInformation,[mbOk],0);


      Application.CreateForm(TFormNotasFinalizar, FormNotasFinalizar);
      FormNotasFinalizar.ShowModal;
      FormNotasFinalizar.Free;
      FormNotasFinalizar:=nil;


      //Application.CreateForm(TFormNotas, FormNotas);
      ////FormNotas.FinalizarNota1.Click;
      //FormNotas.ShowModal;
      //FormNotas.Free;
      //FormNotas:=nil;
    end;
  end;
end;

procedure TFormVendas.GerarPedidoUnificado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasUnificar, FormVendasUnificar);
  FormVendasUnificar.ShowModal;
  FormVendasUnificar.Free;
  FormVendasUnificar:=nil;
end;

procedure TFormVendas.ImprimirPedidoDeVendas1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  ImprimirPedidoDeVenda('Pedido de Venda','');
end;

procedure TFormVendas.ImprimirPedidoDeVendasA51Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasQ34, FormVendasQ34);

  FormVendasQ34.QRLabel132.Caption:=''; //retira a palavra "cancelada".
  if DM.TBVendasVED_STATUS.Value='C' then
  FormVendasQ34.QRLabel132.Caption:='CANCELADA';
  if DM.TBVendasVED_STATUS.Value='I' then
  FormVendasQ34.QRLabel132.Caption:='INUTILIZADA';

  FormVendasQ34.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ34.IBQuery2.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ34.IBQuery4.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  FormVendasQ34.IBQuery1.Open;
  FormVendasQ34.IBQuery2.Open;
  FormVendasQ34.IBQuery4.Open;

  if Trim(FormVendasQ34.IBQuery1VED_CNPJ.Value)<>'' then
  FormVendasQ34.QRDBText13.DataField:='VED_CNPJ' else
  FormVendasQ34.QRDBText13.DataField:='VED_CPF';

  if not FormVendasQ34.IBQuery1VED_NFE.IsNull then
  FormVendasQ34.QRDBText19.DataField:='VED_NFE' else
  FormVendasQ34.QRDBText19.DataField:='VED_NOTA';

  //se não estiver finalizado, não imprime o saldo de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='N') or (DM.TBVendasVED_STATUS.Value<>'F') then
  begin
    FormVendasQ34.QRLabel77.Font.Color:=clWhite;
    FormVendasQ34.QRDBText93.Font.Color:=clWhite;
  end;

  //se não estiver finalizado, não imprime o saldo devedor acumulado.
  if (DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='N') or (DM.TBVendasVED_STATUS.Value<>'F') then
  FormVendasQ34.QRLabel14.Font.Color:=clWhite;

  FormVendasQ34.QuickRep1.ReportTitle:=IntToStr(DM.TBVendasVED_CODIGO.Value)+' - '+DM.TBVendasVED_NOME.Value;

  if DM.TBParametrosPAR_PREVISUALIZARVENDA.Value='S' then
  FormVendasQ34.QuickRep1.PreviewModal else
  FormVendasQ34.QuickRep1.Print;

  FormVendasQ34.Free;
  FormVendasQ34:=nil;
end;

procedure TFormVendas.ImprimirPedidoUtilizandoModelo1Click(Sender: TObject);
var M: TMemo;
  S1, S2: String;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  OpenDialog1.InitialDir:=DM.TBParametrosPAR_LOCALMODELOSDOC.Value;
  if OpenDialog1.Execute then
  begin
    Screen.Cursor:=crHourGlass;
    M:=TMemo.CreateParented(Application.Handle);
    M.WordWrap:=False;
    M.Lines.LoadFromFile(OpenDialog1.FileName);
    M.Text:=StringReplace(M.Text,'|VED_BAIRRO|',AnsiString(DM.TBVendasVED_BAIRRO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CEP|',AnsiString(DM.TBVendasVED_CEP.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CIDADE|',AnsiString(DM.TBVendasVED_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CLIENTE|',AnsiString(IntToStr(DM.TBVendasVED_CODIGO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CNPJ|',AnsiString(DM.TBVendasVED_CNPJ.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CODIGO|',AnsiString(IntToStr(DM.TBVendasVED_CODIGO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CONDICOESMEMO|',StringReplace(DM.TBVendasVED_CONDICAOMEMO.Value,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CONTATO|',AnsiString(DM.TBVendasVED_CONTATO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CPF|',AnsiString(DM.TBVendasVED_CPF.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_DTEMISSAO|',AnsiString(DateToStr(DM.TBVendasVED_DTEMISSAO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_ENDERECO|',AnsiString(DM.TBVendasVED_ENDERECO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_ESTADO|',AnsiString(DM.TBVendasVED_ESTADO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_FONE1|',AnsiString(DM.TBVendasVED_FONE1.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_IE|',AnsiString(DM.TBVendasVED_IE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_NOME|',AnsiString(DM.TBVendasVED_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_NUMERO|',AnsiString(DM.TBVendasVED_NUMERO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_VALORTOTAL|',AnsiString(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended])),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_EMAIL|',AnsiString(DM.TBClientesCLI_EMAIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE2|',AnsiString(DM.TBClientesCLI_FONE2.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE3|',AnsiString(DM.TBClientesCLI_FONE3.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CPG_DESCRICAO|',AnsiString(DM.TBVendasCPG_DESCRICAO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CIDADE|',AnsiString(DM.TBEmpresaEMP_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEN_NOME|',AnsiString(DM.TBVendasVEN_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|DATAEXTENSO|',FormatDateTime('dd "de" mmmm "de" yyyy',Now),[rfReplaceAll]);

    S1:='';
    S2:='';
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      S1:=S1+AlignText(IntToStr(DM.TBVendasItensVEI_CODIGO.Value),' ',15,taLeft)+
             AlignText(DM.TBVendasItensVEI_DESCRICAO.Value,' ',100,taLeft)+#13#10;
      S2:=S2+AlignText(IntToStr(DM.TBVendasItensVEI_CODIGO.Value),' ',15,taLeft)+
             AlignText(DM.TBVendasItensVEI_DESCRICAO.Value,' ',100,taLeft)+
             AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',3,taLeft)+
             AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',10,taRight)+
             AlignText(Format('%m',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',10,taRight)+
             AlignText(Format('%m',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',10,taRight)+#13#10;
      DM.TBVendasItens.Next;
    end;
    M.Text:=StringReplace(M.Text,'|VED_ITENSSIMPLES|',StringReplace(S1,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_ITENSCOMLETO|',StringReplace(S2,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);

    M.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\PedidoModelo.rtf');
    M.Destroy;
    Screen.Cursor:=crDefault;
    ShellExecute(GetDesktopWindow,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\PedidoModelo.rtf'),nil,nil,sw_ShowNormal);
  end;
end;

procedure TFormVendas.ImprimirPedidoUtilizandoModelo1Item1Click(Sender: TObject);
var M: TMemo;
  F: String;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  DM.TBVendasItens.First;

  F:=DM.TBParametrosPAR_LOCALMODELOSDOC.Value+'\produto_'+IntToStr(DM.TBVendasItensVEI_PRODUTO.Value)+'.rtf';
  if not FileExists(F) then
  begin
    F:='';
    OpenDialog1.InitialDir:=DM.TBParametrosPAR_LOCALMODELOSDOC.Value;
    if OpenDialog1.Execute then
    begin
      F:=OpenDialog1.FileName;
    end;
  end;

  if F<>'' then
  begin
    Screen.Cursor:=crHourGlass;
    M:=TMemo.CreateParented(Application.Handle);
    M.WordWrap:=False;
    M.Lines.LoadFromFile(F); //OpenDialog1.FileName);
    M.Text:=StringReplace(M.Text,'|VED_BAIRRO|',AnsiString(DM.TBVendasVED_BAIRRO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CEP|',AnsiString(DM.TBVendasVED_CEP.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CIDADE|',AnsiString(DM.TBVendasVED_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CLIENTE|',AnsiString(IntToStr(DM.TBVendasVED_CODIGO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CNPJ|',AnsiString(DM.TBVendasVED_CNPJ.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CODIGO|',AnsiString(IntToStr(DM.TBVendasVED_CODIGO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CONDICOESMEMO|',StringReplace(DM.TBVendasVED_CONDICAOMEMO.Value,#13,'\line',[rfReplaceAll]),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CONTATO|',AnsiString(DM.TBVendasVED_CONTATO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_CPF|',AnsiString(DM.TBVendasVED_CPF.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_DTEMISSAO|',AnsiString(DateToStr(DM.TBVendasVED_DTEMISSAO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_ENDERECO|',AnsiString(DM.TBVendasVED_ENDERECO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_ESTADO|',AnsiString(DM.TBVendasVED_ESTADO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_FONE1|',AnsiString(DM.TBVendasVED_FONE1.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_IE|',AnsiString(DM.TBVendasVED_IE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_NOME|',AnsiString(DM.TBVendasVED_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_NUMERO|',AnsiString(DM.TBVendasVED_NUMERO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VED_VALORTOTAL|',AnsiString(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended])),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_EMAIL|',AnsiString(DM.TBClientesCLI_EMAIL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE2|',AnsiString(DM.TBClientesCLI_FONE2.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CLI_FONE3|',AnsiString(DM.TBClientesCLI_FONE3.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|CPG_DESCRICAO|',AnsiString(DM.TBVendasCPG_DESCRICAO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|EMP_CIDADE|',AnsiString(DM.TBEmpresaEMP_CIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEN_NOME|',AnsiString(DM.TBVendasVEN_NOME.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|DATAEXTENSO|',FormatDateTime('dd "de" mmmm "de" yyyy',Now),[rfReplaceAll]);

    //neste modelo só vai imprimir o primeiro item do pedido.
    DM.TBVendasItens.First;
    M.Text:=StringReplace(M.Text,'|VEI_ALIQICMS|',AnsiString(DM.TBVendasItensVEI_ALIQICMS.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_DESCRICAO|',AnsiString(DM.TBVendasItensVEI_DESCRICAO.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_DESCPORC|',AnsiString(DM.TBVendasItensVEI_DESCPORC.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_DESCVALOR|',AnsiString(DM.TBVendasItensVEI_DESCVALOR.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_PRODUTO|',AnsiString(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value)),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_QUANTIDADE|',AnsiString(DM.TBVendasItensVEI_QUANTIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_UNIDADE|',AnsiString(DM.TBVendasItensVEI_UNIDADE.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_VALORTOTAL|',AnsiString(DM.TBVendasItensVEI_VALORTOTAL.Value),[rfReplaceAll]);
    M.Text:=StringReplace(M.Text,'|VEI_VALORUNIT|',AnsiString(DM.TBVendasItensVEI_VALORUNIT.Value),[rfReplaceAll]);

    M.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\PedidoModelo1Item.rtf');
    M.Destroy;
    Screen.Cursor:=crDefault;
    ShellExecute(GetDesktopWindow,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\PedidoModelo1Item.rtf'),nil,nil,sw_ShowNormal);
  end;
end;

procedure TFormVendas.ImprimirPedidoComOrdemDeProducao1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasQ32, FormVendasQ32);
  FormVendasQ32.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ32.IBQuery2.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ32.IBQuery1.Open;
  FormVendasQ32.IBQuery2.Open;
  FormVendasQ32.QuickRep1.PreviewModal;
  FormVendasQ32.Free;
  FormVendasQ32:=nil;
end;

procedure TFormVendas.ImprimirPedidoComoOrcamento1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Somente pedidos em aberto podem ser impresso como orçamento.',mtError,[mbOk],0);
    Exit;
  end;
  ImprimirPedidoDeVenda('Orçamento','');
end;

procedure TFormVendas.ImprimirPedidoDeVenda(Titulo, ArquivoPDF: String);
var PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormVendasQ23, FormVendasQ23);
  if (DM.TBParametrosPAR_IMPRIMIRCANHOTOPEDIDO.Value='N') or (Titulo='Orçamento') then
  begin
    FormVendasQ23.QRShape16.Destroy;
    FormVendasQ23.QRShape17.Destroy;
    FormVendasQ23.QRShape18.Destroy;
    FormVendasQ23.QRShape19.Destroy;
    FormVendasQ23.QRShape20.Destroy;
    FormVendasQ23.QRLabel60.Destroy;
    FormVendasQ23.QRLabel61.Destroy;
    FormVendasQ23.QRLabel62.Destroy;
    FormVendasQ23.QRLabel63.Destroy;
    FormVendasQ23.QRLabel66.Destroy;
    FormVendasQ23.QRDBText53.Destroy;
    FormVendasQ23.QRBand3.Size.Height:=4.0;
    FormVendasQ23.QRBand3.Height:=15;
  end;

  FormVendasQ23.QRLabel132.Caption:=''; //retira a palavra "cancelada".
  if DM.TBVendasVED_STATUS.Value='C' then FormVendasQ23.QRLabel132.Caption:='CANCELADA';
  if DM.TBVendasVED_STATUS.Value='I' then FormVendasQ23.QRLabel132.Caption:='INUTILIZADA';

  if DM.TBParametrosPAR_IMPRIMIRRECEBER.Value='N' then
  begin
    FormVendasQ23.QRSubDetail4.DisposeOf;
    FormVendasQ23.QRSubDetail5.DisposeOf;
  end else
  begin
    //aberto ou inutilizado, imprime a simulação da condição.
    if (DM.TBVendasVED_STATUS.Value='A') or (DM.TBVendasVED_STATUS.Value='I') then
    FormVendasQ23.QRSubDetail5.DisposeOf;
    //finalizado ou cancelado, imprime o contas a receber que foi gerado.
    if (DM.TBVendasVED_STATUS.Value='F') or (DM.TBVendasVED_STATUS.Value='C') then
    FormVendasQ23.QRSubDetail4.DisposeOf;
  end;

  FormVendasQ23.QRLabel1.Caption:=Titulo;
  FormVendasQ23.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ23.IBQuery2.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ23.IBQuery4.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  FormVendasQ23.IBQuery3.SQL.Clear;
  if not DM.TBVendasVED_NOTA.IsNull then
  FormVendasQ23.IBQuery3.SQL.Add('select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, REE_STATUS from RECEBER '+
                                 'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
                                 'and REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBVendasVED_NOTA.Value)+'/%')+' order by REE_DTVENCIMENTO') else
  if not DM.TBVendasVED_NFE.IsNull then
  FormVendasQ23.IBQuery3.SQL.Add('select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, REE_STATUS from RECEBER '+
                                 'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
                                 'and REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBVendasVED_NFE.Value)+'/%')+' order by REE_DTVENCIMENTO') else
  FormVendasQ23.IBQuery3.SQL.Add('select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, REE_STATUS from RECEBER '+
                                 'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
                                 'and REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' order by REE_DTVENCIMENTO');
  FormVendasQ23.IBQuery1.Open;
  FormVendasQ23.IBQuery2.Open;
  FormVendasQ23.IBQuery3.Open;
  FormVendasQ23.IBQuery4.Open;

  if Trim(FormVendasQ23.IBQuery1VED_CNPJ.Value)<>'' then
  FormVendasQ23.QRDBText13.DataField:='VED_CNPJ' else
  FormVendasQ23.QRDBText13.DataField:='VED_CPF';

  if not FormVendasQ23.IBQuery1VED_NFE.IsNull then
  FormVendasQ23.QRDBText19.DataField:='VED_NFE' else
  FormVendasQ23.QRDBText19.DataField:='VED_NOTA';

  //se não estiver finalizado, não imprime o saldo de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='N') or (DM.TBVendasVED_STATUS.Value<>'F') then
  begin
    FormVendasQ23.QRLabel77.Font.Color:=clWhite;
    FormVendasQ23.QRDBText93.Font.Color:=clWhite;
  end;

  //se não estiver finalizado, não imprime o saldo devedor acumulado.
  if (DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='N') or (DM.TBVendasVED_STATUS.Value<>'F') then
  FormVendasQ23.QRLabel14.Font.Color:=clWhite;

  FormVendasQ23.QuickRep1.ReportTitle:=IntToStr(DM.TBVendasVED_CODIGO.Value)+' - '+DM.TBVendasVED_NOME.Value;

  if ArquivoPDF<>'' then
  begin
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormVendasQ23.QuickRep1.ExportToFilter(PDFFilter);
  end else
  begin
    if DM.TBParametrosPAR_PREVISUALIZARVENDA.Value='S' then
    FormVendasQ23.QuickRep1.PreviewModal else
    FormVendasQ23.QuickRep1.Print;
  end;

  FormVendasQ23.Free;
  FormVendasQ23:=nil;
end;

procedure TFormVendas.ImportarArquivoXML1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Este pedido de venda não está em aberto.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasImportarXML, FormVendasImportarXML);
  if not FormVendasImportarXML.Fechar then //se o emissor do xml é diferente do cliente do pedido ou se nao selecionou arquivo xml, nao exibe tela... no oncreate já mostra a msg.
  FormVendasImportarXML.ShowModal;
  FormVendasImportarXML.Free;
  FormVendasImportarXML:=nil;
end;

{
removido do sistema... era usado pela frigoking.
procedure TFormVendas.ImprimirOrcamentoDetalhado(ArquivoPDF: String);
var PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormVendasQ31, FormVendasQ31);
  FormVendasQ31.QRLabel1.Caption:='Cotação Nº: '+IntToStr(DM.TBVendasVED_CODIGO.Value);
  FormVendasQ31.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasQ31.IBQuery1.Open;
  FormVendasQ31.IBQuery2.Open;
  FormVendasQ31.QuickRep1.ReportTitle:=IntToStr(DM.TBVendasVED_CODIGO.Value)+' - '+DM.TBVendasVED_NOME.Value;

  if ArquivoPDF<>'' then
  begin
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormVendasQ31.QuickRep1.ExportToFilter(PDFFilter);
  end else
  FormVendasQ31.QuickRep1.PreviewModal;

  FormVendasQ31.Free;
  FormVendasQ31:=nil;
end; }

procedure TFormVendas.CadastroDeNotasFiscais1Click(Sender: TObject);
begin
  if (not DM.TBVendas.IsEmpty) and (not DM.TBVendasVED_NOTA.IsNull) then
  begin
    if DM.TBNotas.State in [dsInsert, dsEdit] then
    MessageDlg('No momento existe uma nota fiscal em edição. Verifique!',mtError,[mbOk],0) else
    begin
      DM.TBNotas.Close;
      DM.TBNotas.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NOTA.Value;
      DM.TBNotas.Open;
    end;
  end;
  Application.CreateForm(TFormNotas, FormNotas);
  FormNotas.ShowModal;
  FormNotas.Free;
  FormNotas:=nil;
end;

procedure TFormVendas.Mostrarcamponota1Click(Sender: TObject);
begin
  Label51.Visible:=not Label51.Visible;
  DBText11.Visible:=not DBText11.Visible;
  Label68.Visible:=not Label68.Visible;
  DBText12.Visible:=not DBText12.Visible;
end;

procedure TFormVendas.ImprimirVendaEstiloWindows1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  ImprimirPedidoDeVenda('Controle Interno','');
end;

procedure TFormVendas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormVendas.PngBitBtn1Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE from VENDASITENS where VEI_VENDA=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.Open;
  MessageDlg('A quantidade total é: '+DM.QYAux.FieldByName('QTDE').AsString,mtInformation,[mbOk],0);
  DM.QYAux.Close;
end;

procedure TFormVendas.PngBitBtn2Click(Sender: TObject);
begin
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Não existem itens nesse pedido.',mtError,[mbOk],0);
    Exit;
  end;

  //atualiza a sequencia dos itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'merge into VENDASITENS VENDASITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    VEI_CODIGO, '+
    '    VEI_VENDA, '+
    '    row_number() over(partition by VEI_VENDA order by VEI_VENDA, VEI_CODIGO) as SEQ '+
    'from VENDASITENS where VEI_VENDA=:codigo order by VEI_VENDA, VEI_CODIGO) VENDASITENS_ORIGEM '+
    'on VENDASITENS_DESTINO.RDB$DB_KEY = VENDASITENS_ORIGEM.db_key '+
    'when matched then update set VENDASITENS_DESTINO.VEI_SEQUENCIA = VENDASITENS_ORIGEM.SEQ'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.ExecSQL;
  DM.TRAux.Commit;

  //atualiza o total de itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'update VENDAS set VED_SEQUENCIAITEM=(select max(VEI_SEQUENCIA) as SEQ from VENDASITENS where VEI_VENDA=VED_CODIGO) where VED_CODIGO=:codigo'
  );
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.ExecSQL;
  DM.TRAux.Commit;

  DM.TBVendasItens.Close;
  DM.TBVendas.Close;
  DM.TBVendas.Open;
  DM.TBVendasItens.Open;
end;

procedure TFormVendas.PngSpeedButton1Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBVendasVED_CPF.IsNull) and (DM.TBVendasVED_CPF.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBVendasVED_CPF.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal)
  end else
  MessageDlg('CPF não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormVendas.PngSpeedButton2Click(Sender: TObject);
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBFornecedores.Close;
  DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.TBClientesCLI_TRANSPORTADORA.Value;
  DM.TBFornecedores.Open;

  if not DM.TBFornecedores.IsEmpty then
  begin
    DM.TBVendasVED_TRANSPCIDADE.Value:=DM.TBFornecedoresFOR_CIDADE.Value;
    DM.TBVendasVED_TRANSPCNPJ.Value:=DM.TBFornecedoresFOR_CNPJ.Value;
    DM.TBVendasVED_TRANSPCPF.Value:=DM.TBFornecedoresFOR_CPF.Value;
    DM.TBVendasVED_TRANSPEMAIL.Value:=DM.TBFornecedoresFOR_EMAIL.Value;
    DM.TBVendasVED_TRANSPENDERECO.Value:=DM.TBFornecedoresFOR_ENDERECO.Value;
    DM.TBVendasVED_TRANSPESTADO.Value:=DM.TBFornecedoresFOR_ESTADO.Value;
    DM.TBVendasVED_TRANSPFONE.Value:=DM.TBFornecedoresFOR_FONE1.Value;
    DM.TBVendasVED_TRANSPIE.Value:=DM.TBFornecedoresFOR_IE.Value;
    DM.TBVendasVED_TRANSPNOME.Value:=DM.TBFornecedoresFOR_NOME.Value;
    DM.TBVendasVED_TRANSPORTADORA.Value:=DM.TBFornecedoresFOR_CODIGO.Value;
  end;
end;

procedure TFormVendas.PngSpeedButton3Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBVendasVED_CNPJ.IsNull) and (DM.TBVendasVED_CNPJ.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBVendasVED_CNPJ.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal)
  end else
  MessageDlg('CNPJ não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormVendas.PngSpeedButton4Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda não contém itens.',mtError,[mbOk],0);
    Exit;
  end;
  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADETROCA) as QTDE from VENDASITENS where VEI_VENDA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta venda contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormVendasAlterarDesconto, FormVendasAlterarDesconto);
  DescontoEmValor:=False;
  FormVendasAlterarDesconto.Edit1.Text:=DM.TBVendasVED_DESCPORC.AsString;
  FormVendasAlterarDesconto.ShowModal;
  FormVendasAlterarDesconto.Free;
  FormVendasAlterarDesconto:=nil;
end;

procedure TFormVendas.PngSpeedButton5Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda não contém itens.',mtError,[mbOk],0);
    Exit;
  end;
  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADETROCA) as QTDE from VENDASITENS where VEI_VENDA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta venda contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormVendasAlterarDesconto, FormVendasAlterarDesconto);
  DescontoEmValor:=True;
  FormVendasAlterarDesconto.Label1.Caption:='Valor do Desconto:';
  FormVendasAlterarDesconto.Edit1.Text:=DM.TBVendasVED_DESCVALOR.AsString;
  FormVendasAlterarDesconto.ShowModal;
  FormVendasAlterarDesconto.Free;
  FormVendasAlterarDesconto:=nil;
end;

procedure TFormVendas.PngSpeedButton6Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda não contém itens.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasAlterarFreteSeguroAcessorias, FormVendasAlterarFreteSeguroAcessorias);
  Campo:='FRETE';
  FormVendasAlterarFreteSeguroAcessorias.Caption:='Alterar Frete';
  FormVendasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Frete:';
  FormVendasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORFRETE.AsString;
  FormVendasAlterarFreteSeguroAcessorias.ShowModal;
  FormVendasAlterarFreteSeguroAcessorias.Free;
  FormVendasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormVendas.PngSpeedButton7Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda não contém itens.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasAlterarFreteSeguroAcessorias, FormVendasAlterarFreteSeguroAcessorias);
  Campo:='SEGURO';
  FormVendasAlterarFreteSeguroAcessorias.Caption:='Alterar Seguro';
  FormVendasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Seguro:';
  FormVendasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORSEGURO.AsString;
  FormVendasAlterarFreteSeguroAcessorias.ShowModal;
  FormVendasAlterarFreteSeguroAcessorias.Free;
  FormVendasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormVendas.PngSpeedButton8Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda não contém itens.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormVendasAlterarFreteSeguroAcessorias, FormVendasAlterarFreteSeguroAcessorias);
  Campo:='ACESSORIAS';
  FormVendasAlterarFreteSeguroAcessorias.Caption:='Alterar Desp. Acessórias';
  FormVendasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor das Despesas Acessórias:';
  FormVendasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORDESPACES.AsString;
  FormVendasAlterarFreteSeguroAcessorias.ShowModal;
  FormVendasAlterarFreteSeguroAcessorias.Free;
  FormVendasAlterarFreteSeguroAcessorias:=nil;
end;

function TFormVendas.VerificarEstoque: Boolean;
var ChecagemEstoque: WideString;
  Quantidade: Double;
begin
  Result:=True;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
  begin
    ChecagemEstoque:='';
    //checa os produtos que não tem produto real.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE, VEI_PRODUTO from VENDASITENS where VEI_PRODUTOREAL=0 and VEI_VENDA=:codigo group by VEI_PRODUTO order by VEI_PRODUTO');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('VEI_PRODUTO').AsInteger;
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
    DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE, VEI_PRODUTOREAL, VEI_CONVERSAO from VENDASITENS where VEI_PRODUTOREAL<>0 and VEI_VENDA=:codigo group by VEI_PRODUTOREAL, VEI_CONVERSAO order by VEI_PRODUTOREAL');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('VEI_PRODUTOREAL').AsInteger;
      DM.TBProdutos.Open;
      Quantidade:=DM.QYAux.FieldByName('QTDE').AsFloat * DM.QYAux.FieldByName('VEI_CONVERSAO').AsFloat;
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

function TFormVendas.VerificarEstoqueItem: Boolean;
var ChecagemEstoque: WideString;
begin
  Result:=True;
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
  begin
    ChecagemEstoque:='';

    if DM.TBVendasItensVEI_PRODUTOREAL.Value=0 then
    begin
      {$REGION 'Verifica produto normal'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;

      if not (DM.TBVendasItens.State in [dsInsert]) then //em edicao, temos o campo VEI_CODIGO. - selecionamos tudo, menos o item atual.
      begin
        DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
                         'left join VENDAS on VEI_VENDA=VED_CODIGO '+
                         'where VEI_CODIGO<>:item and VEI_PRODUTO=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
                         'group by VEI_PRODUTO order by VEI_PRODUTO');
        DM.QYAux.ParamByName('item').AsInteger:=DM.TBVendasItensVEI_CODIGO.Value;
      end else //em inserção, não temos o campo VEI_CODIGO.
      DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
                       'left join VENDAS on VEI_VENDA=VED_CODIGO '+
                       'where VEI_PRODUTO=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
                       'group by VEI_PRODUTO order by VEI_PRODUTO');
      DM.QYAux.ParamByName('produto').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
      DM.QYAux.Open;

      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
      DM.TBProdutos.Open;

      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value <= 0) or
         (DM.TBProdutosPRO_ESTOQUEATUAL.Value < (DM.QYAux.FieldByName('QTDE').AsFloat+DM.TBVendasItensVEI_QUANTIDADE.Value)) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
                       'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10+
                       'Quantidade: '+DM.TBVendasItensVEI_QUANTIDADE.AsString+#13#10+
                       'Quantidade em pedidos em aberto: '+FloatToStr(DM.QYAux.FieldByName('QTDE').AsFloat)+#13#10;
      DM.QYAux.Close;
      {$ENDREGION}
    end else


    if DM.TBVendasItensVEI_PRODUTOREAL.Value<>0 then
    begin
      {$REGION 'Verifica produto real'}
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      if not (DM.TBVendasItens.State in [dsInsert]) then
      begin
        DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE * VEI_CONVERSAO) as QTDE from VENDASITENS '+
                         'left join VENDAS on VEI_VENDA=VED_CODIGO '+
                         'where VEI_CODIGO<>:item and VEI_PRODUTOREAL=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
                         'group by VEI_PRODUTOREAL order by VEI_PRODUTOREAL');
        DM.QYAux.ParamByName('item').AsInteger:=DM.TBVendasItensVEI_CODIGO.Value;
      end else
      DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE * VEI_CONVERSAO) as QTDE from VENDASITENS '+
                       'left join VENDAS on VEI_VENDA=VED_CODIGO '+
                       'where VEI_PRODUTOREAL=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
                       'group by VEI_PRODUTOREAL order by VEI_PRODUTOREAL');
      DM.QYAux.ParamByName('produto').AsInteger:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
      DM.QYAux.Open;

      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
      DM.TBProdutos.Open;

      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value <= 0) or
         (DM.TBProdutosPRO_ESTOQUEATUAL.Value < (DM.QYAux.FieldByName('QTDE').AsFloat+DM.TBVendasItensVEI_QUANTIDADE.Value*DM.TBVendasItensVEI_CONVERSAO.Value)) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
                       'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10+
                       'Quantidade: '+DM.TBVendasItensVEI_QUANTIDADE.AsString+' * '+DM.TBVendasItensVEI_CONVERSAO.AsString+' = '+FloatToStr(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)+#13#10+
                       'Quantidade em pedidos em aberto: '+FloatToStr(DM.QYAux.FieldByName('QTDE').AsFloat)+#13#10;
      DM.QYAux.Close;
      {$ENDREGION}
    end;

    if ChecagemEstoque<>'' then
    begin
      MessageDlg('Este produto não tem quantidade suficiente em estoque.'+#13#13+ChecagemEstoque,mtInformation,[mbOk],0);
      Result:=False;
    end;
  end;
end;

procedure TFormVendas.AnaliseValorDeVendaVsTabelaPreco1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=00;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.ComissoesPorVendedorAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=01;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.ComissoesPorVendedorSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=02;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.CurvaABCClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=03;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.CurvaABCProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=04;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.FrequenciaDeVendasMensalPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=05;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.FrequenciaDeVendasPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=06;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.FrequenciaDeVendasSemAgrupamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=07;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.MargemBruta1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=08;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.MelhoresClientesPorItemVendido1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=09;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.ProdutosVendidosPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=10;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.ProdutosVendidosPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=11;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.RastreamentoDeLotes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=12;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.TrocasPorVendedor1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=13;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorCliente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=14;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorClienteComItens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=15;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorCondicaoDePagamentoAnalitico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=16;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorCondicaoDePagamentoSintetico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=17;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorFamilia1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=18;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorGrupo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=19;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorMarca1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=20;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=21;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorRamoDeAtividade1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=22;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorVendedorAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=23;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorVendedorECidade1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=24;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorVendedorEEstado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=25;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorVendedorETipoDeFrete1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=26;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.VendasPorVendedorSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRel, FormVendasRel);
  FormVendasRel.ComboBox1.Enabled:=False;
  FormVendasRel.ComboBox1.ItemIndex:=27;
  FormVendasRel.ComboBox1Change(Self);
  FormVendasRel.ShowModal;
  FormVendasRel.Free;
  FormVendasRel:=nil;
end;

procedure TFormVendas.ConferenciaDoPedido1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasConferencia, FormVendasConferencia);
  if not DM.TBVendas.IsEmpty then
  begin
    if DM.TBVendasVED_CONFERIDO.Value='S' then
    begin
      if MessageDlg('Esta venda já foi conferida.'+#13#10#13#10+'Deseja conferir novamente?',mtConfirmation,[mbYes,mbNo],0)=mrNo then
      begin
        FormVendasConferencia.Free;
        FormVendasConferencia:=nil;
        Exit;
      end;
    end;
    FormVendasConferencia.CarregarVenda;
  end;

  FormVendasConferencia.ShowModal;
  FormVendasConferencia.Free;
  FormVendasConferencia:=nil;
end;


procedure TFormVendas.OrdemDeSeparacao1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    Application.CreateForm(TFormVendasRel, FormVendasRel);
    FormVendasRel.ComboBox1.Enabled:=False;
    FormVendasRel.ComboBox1.ItemIndex:=26;
    FormVendasRel.ComboBox1Change(Self);
    FormVendasRel.ShowModal;
    FormVendasRel.Free;
    FormVendasRel:=nil;
  end else
  begin
    if MessageDlg('Deseja imprimir a ordem de separação do pedido de venda selecionado?'+#13#10+'Clique em não para abrir a tela com mais opções de filtro.',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      Application.CreateForm(TFormVendasQ25, FormVendasQ25);
      FormVendasQ25.QRLabel1.Caption:='Ordem de Separação';
      FormVendasQ25.IBQuery1.SQL.Clear;
      FormVendasQ25.IBQuery1.SQL.Add('select VEI_DESCRICAO, VEI_LOCALIZACAO, VEI_PESO, VEI_PRODUTO, VEI_QUANTIDADE, VEI_SEQUENCIA, VEI_TIPO, VEI_UNIDADE, '+
                                     'VEI_VALORTOTAL, VEI_VALORUNIT, VED_CLIENTE, VED_CODIGO, VED_CONTATO, VED_DTEMISSAO, VED_DTSAIDA, VED_NFE, VED_NOME, '+
                                     'VED_OBSERVACOES, VED_TRANSPNOME, VED_TRANSPORTADORA, VED_VALORTOTAL, VED_VENDEDOR, VEN_NOME from VENDASITENS '+
                                     'left join VENDAS on VEI_VENDA=VED_CODIGO '+
                                     'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
                                     //'where VED_DTEMISSAO between :datainicial and :datafinal and VED_CODIGO='+IntToStr(DM.TBVendasVED_CODIGO.Value)+' '+
                                     'where VED_CODIGO='+IntToStr(DM.TBVendasVED_CODIGO.Value)+' '+
                                     'order by VEN_NOME, VED_CODIGO, VEI_DESCRICAO');
      //FormVendasQ25.IBQuery1.ParamByName('datainicial').AsDate:=DM.TBVendasVED_DTEMISSAO.Value; //na tela de relatorios é possível informar as datas. (para não alterar o SQL).
      //FormVendasQ25.IBQuery1.ParamByName('datafinal').AsDate:=DM.TBVendasVED_DTEMISSAO.Value;
      FormVendasQ25.IBQuery1.Open;
      FormVendasQ25.ColumnHeaderBand1.Height:=0; //se nao tiver essa banda, nao imprime o segundo group header.
      FormVendasQ25.QuickRep1.PreviewModal;
      FormVendasQ25.Free;
      FormVendasQ25:=nil;
    end else
    begin
      Application.CreateForm(TFormVendasRel, FormVendasRel);
      FormVendasRel.ComboBox1.Enabled:=False;
      FormVendasRel.ComboBox1.ItemIndex:=26;
      FormVendasRel.ComboBox1Change(Self);
      FormVendasRel.ShowModal;
      FormVendasRel.Free;
      FormVendasRel:=nil;
    end;
  end;
end;

procedure TFormVendas.OrdemDeSeparacaoSelecionarNFsClick(Sender: TObject);
begin
  Application.CreateForm(TFormVendasSeparacao, FormVendasSeparacao);
  FormVendasSeparacao.ShowModal;
  FormVendasSeparacao.Free;
  FormVendasSeparacao:=nil;
end;

procedure TFormVendas.AjustaroNmeroSequencialdosItens1Click(Sender: TObject);
var I: Integer;
begin
  //opção não visível para o usuário.
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtInformation,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Ajustar o número sequencial?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    I:=0;
    DM.TBVendasItens.DisableControls;
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      Inc(I);
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update VENDASITENS set VEI_SEQUENCIA=:sequencia where VEI_CODIGO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_CODIGO.Value;
      DM.QYAux.ParamByName('sequencia').AsInteger:=I;
      DM.QYAux.ExecSQL;
      DM.TRAux.Commit;
      DM.TBVendasItens.Next;
    end;
    DM.TBVendasItens.EnableControls;

    //seleciona novamente com os dados atualizados.
    I:=DM.TBVendasVED_CODIGO.Value;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=I;
    DM.TBVendas.Open;
    DM.TBVendasItens.Close;
    DM.TBVendasItens.Open;
  end;
end;

procedure TFormVendas.AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
var S: String;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Este pedido de venda não está em aberto.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_MOVIMENTAESTOQUE.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Estoque para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_MOVIMENTAESTOQUE.Value:=Copy(S,1,1); //primeira letra.
    DM.TBVendas.Post;
  end;
end;

procedure TFormVendas.AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
var S: String;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'A' then
  begin
    MessageDlg('Este pedido de venda não está em aberto.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Financeiro para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=Copy(S,1,1); //primeira letra.
    DM.TBVendas.Post;
  end;
end;

procedure TFormVendas.AlterarTipoDeReceita1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='A' then
  begin
    MessageDlg('Este pedido de venda ainda está em aberto.',mtError,[mbOk],0);
    Exit;
  end;
  if (DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='N') then
  begin
    MessageDlg('Este pedido não movimentou financeiro.',mtError,[mbOk],0);
    Exit;
  end;
  Application.CreateForm(TFormReceitasLoc, FormReceitasLoc);
  FormReceitasLoc.ShowModal;
  if ReceitasLoc.Procurar then
  begin
    if MessageDlg('Deseja alterar o tipo de receita desta venda para '+FormReceitasLoc.QYReceitasREC_DESCRICAO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      if not DM.TBVendasVED_NOTA.IsNull then
      DM.QYAux.SQL.Add('update RECEBER set REE_RECEITA=:receita where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBVendasVED_NOTA.Value)+'/%')) else
      if not DM.TBVendasVED_NFE.IsNull then
      DM.QYAux.SQL.Add('update RECEBER set REE_RECEITA=:receita where REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBVendasVED_NFE.Value)+'/%')) else
      DM.QYAux.SQL.Add('update RECEBER set REE_RECEITA=:receita where REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%'));
      DM.QYAux.ParamByName('receita').AsInteger:=FormReceitasLoc.QYReceitasREC_CODIGO.Value;
      DM.QYAux.ExecSQL;
      DM.TRAux.Commit;
      MessageDlg('Tipo de receita alterada!',mtInformation,[mbOk],0);
    end;
  end;
  FormReceitasLoc.Free;
  FormReceitasLoc:=nil;
end;

procedure TFormVendas.OrdemDeEntrega1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value<>'F' then
  begin
    MessageDlg('Este pedido não está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if EntregaEstilo='WINDOWS' then
  begin
    Application.CreateForm(TFormVendasQ20, FormVendasQ20);
    FormVendasQ20.IBQuery1.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
    FormVendasQ20.IBQuery2.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
    FormVendasQ20.IBQuery1.Open;
    FormVendasQ20.IBQuery2.Open;
    if Trim(FormVendasQ20.IBQuery1VED_CNPJ.Value)<>'' then
    FormVendasQ20.QRDBText10.DataField:='VED_CNPJ' else
    FormVendasQ20.QRDBText10.DataField:='VED_CPF';
    FormVendasQ20.QuickRep1.PreviewModal;
    FormVendasQ20.Free;
    FormVendasQ20:=nil;
  end else
  if EntregaEstilo='DOS' then
  ImprimirOrdemEntrega;
end;

procedure CopiarCapaVendaParaNfe;
begin
  DM.TBNfe.Insert;
  { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
  //Campos comentados são preenchidos por outros eventos.
  DM.TBNfeNFE_ALIQICMSCREDSN.Value:=DM.TBParametrosPAR_CREDITOICMSSN.Value; //alterado para pegar o valor atualizado. DM.TBVendasVED_ALIQICMSCREDSN.Value;
  DM.TBNfeNFE_BAIRRO.Value:=DM.TBVendasVED_BAIRRO.Value;
  //DM.TBNfeNFE_BAIXADATA.Value:=
  //DM.TBNfeNFE_BAIXAPOR.Value:=
  DM.TBNfeNFE_BASECOFINS.Value:=DM.TBVendasVED_BASECOFINS.Value;
  DM.TBNfeNFE_BASECOFINSST.Value:=DM.TBVendasVED_BASECOFINSST.Value;
  DM.TBNfeNFE_BASEICMS.Value:=DM.TBVendasVED_BASEICMS.Value;
  DM.TBNfeNFE_BASEICMSST.Value:=DM.TBVendasVED_BASEICMSST.Value;
  DM.TBNfeNFE_BASEII.Value:=DM.TBVendasVED_BASEII.Value;
  DM.TBNfeNFE_BASEIPI.Value:=DM.TBVendasVED_BASEIPI.Value;
  DM.TBNfeNFE_BASEPIS.Value:=DM.TBVendasVED_BASEPIS.Value;
  DM.TBNfeNFE_BASEISS.Value:=DM.TBVendasVED_BASEISS.Value;
  DM.TBNfeNFE_BASEPISST.Value:=DM.TBVendasVED_BASEPISST.Value;
  DM.TBNfeNFE_CEP.Value:=DM.TBVendasVED_CEP.Value;
  DM.TBNfeNFE_CFOP.Value:=DM.TBVendasVED_CFOP.Value;
  DM.TBNfeNFE_CFOPDESC.Value:=DM.TBVendasVED_CFOPDESC.Value;
  //DM.TBNfeNFE_CHAVEACESSO
  DM.TBNfeNFE_CIDADE.Value:=DM.TBVendasVED_CIDADE.Value;
  DM.TBNfeNFE_CIDADECODIGO.Value:=DM.TBVendasVED_CIDADECODIGO.Value;
  DM.TBNfeNFE_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBNfeNFE_CNPJ.Value:=DM.TBVendasVED_CNPJ.Value;
  //DM.TBNfeNFE_CODIGO - evento afterpost define o codigo.
  //DM.TBNfeNFE_CODIGONUMERICO
  DM.TBNfeNFE_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value;
  DM.TBNfeNFE_COMISSAOPOR.Value:=DM.TBVendasVED_COMISSAOPOR.Value;
  DM.TBNfeNFE_COMPLEMENTO.Value:=DM.TBVendasVED_COMPLEMENTO.Value;
  DM.TBNfeNFE_CONDICAO.Value:=DM.TBVendasVED_CONDICAO.Value;
  DM.TBNfeNFE_CONDICAOMEMO.Value:=DM.TBVendasVED_CONDICAOMEMO.Value;
  //DM.TBNfeNFE_CONSULTADA
  DM.TBNfeNFE_CONTATO.Value:=DM.TBVendasVED_CONTATO.Value;
  DM.TBNfeNFE_CPF.Value:=DM.TBVendasVED_CPF.Value;
  DM.TBNfeNFE_CUSTOTOTAL.Value:=DM.TBVendasVED_CUSTOTOTAL.Value;
  DM.TBNfeNFE_DESCPORC.Value:=DM.TBVendasVED_DESCPORC.Value;
  DM.TBNfeNFE_DESCPORCCLIENTE.Value:=DM.TBVendasVED_DESCPORCCLIENTE.Value;
  DM.TBNfeNFE_DESCPORCCONDICAO.Value:=DM.TBVendasVED_DESCPORCCONDICAO.Value;
  DM.TBNfeNFE_DESCVALOR.Value:=DM.TBVendasVED_DESCVALOR.Value;
  DM.TBNfeNFE_DESTACARIMPOSTOS.Value:=DM.TBVendasVED_DESTACARIMPOSTOS.Value;
  DM.TBNfeNFE_DIAPREFERENCIAL.Value:=DM.TBVendasVED_DIAPREFERENCIAL.Value;
  //DM.TBNfeNFE_DPEC
  //DM.TBNfeNFE_DPECDH
  //DM.TBNfeNFE_DTATUALIZACAO
  DM.TBNfeNFE_DTCADASTRO.Value:=DM.ServerDate; //alterado a pedido do Fábio. DM.TBVendasVED_DTCADASTRO.Value;
  DM.TBNfeNFE_DTEMISSAO.Value:=DM.ServerDate;
  DM.TBNfeNFE_DTPRESTSERVICO.Value:=DM.TBVendasVED_DTPRESTSERVICO.Value;
  DM.TBNfeNFE_DTSAIDA.Value:=DM.ServerDate;
  DM.TBNfeNFE_ENDERECO.Value:=DM.TBVendasVED_ENDERECO.Value;
  DM.TBNfeNFE_ENTRADASAIDA.Value:=DM.TBVendasVED_ENTRADASAIDA.Value;
  //DM.TBNfeNFE_ENVIADA
  DM.TBNfeNFE_ESPECIE.Value:=DM.TBVendasVED_ESPECIE.Value;
  DM.TBNfeNFE_ESTADO.Value:=DM.TBVendasVED_ESTADO.Value;
  DM.TBNfeNFE_ESTADOCODIGO.Value:=DM.TBVendasVED_ESTADOCODIGO.Value;
  DM.TBNfeNFE_EXLOCAL.Value:=DM.TBVendasVED_EXLOCAL.Value;
  DM.TBNfeNFE_EXPEDIDOPOR.Value:=DM.TBVendasVED_EXPEDIDOPOR.Value;
  DM.TBNfeNFE_EXUFSAIDA.Value:=DM.TBVendasVED_EXUFSAIDA.Value;
  //DM.TBNfeNFE_FINALIDADE
  DM.TBNfeNFE_FONE1.Value:=DM.TBVendasVED_FONE1.Value;
  DM.TBNfeNFE_FORMAPAGTO.Value:=DM.TBVendasVED_FORMAPAGTO.Value;
  DM.TBNfeNFE_FRETE.Value:=DM.TBVendasVED_FRETE.Value;
  DM.TBNfeNFE_IDESTRANGEIRO.Value:=DM.TBVendasVED_IDESTRANGEIRO.Value;
  DM.TBNfeNFE_IE.Value:=DM.TBVendasVED_IE.Value;
  DM.TBNfeNFE_INFOADICFISCO.Value:=DM.TBVendasVED_INFOADICFISCO.Value;
  //DM.TBNfeNFE_INTERMEDIADOR.Value:=
  //DM.TBNfeNFE_INTERMEDIADORCAD.Value:=
  //DM.TBNfeNFE_INTERMEDIADORCNPJ.Value:=
  DM.TBNfeNFE_LACRES.Value:=DM.TBVendasVED_LACRES.Value;
  //DM.TBNfeNFE_LOTE
  DM.TBNfeNFE_LUCROPORC.Value:=DM.TBVendasVED_LUCROPORC.Value;
  DM.TBNfeNFE_LUCROVALOR.Value:=DM.TBVendasVED_LUCROVALOR.Value;
  DM.TBNfeNFE_MANUAL.Value:=DM.TBVendasVED_MANUAL.Value;
  DM.TBNfeNFE_MARCA.Value:=DM.TBVendasVED_MARCA.Value;
  //DM.TBNfeNFE_MODELO
  //DM.TBNfeNFE_MOTIVOCANCELAMENTO
  //DM.TBNfeNFE_MOTIVOINUTILIZACAO
  DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:=DM.TBVendasVED_MOVIMENTAESTOQUE.Value;
  DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value;
  DM.TBNfeNFE_NOME.Value:=DM.TBVendasVED_NOME.Value;
  DM.TBNfeNFE_NUMERO.Value:=DM.TBVendasVED_NUMERO.Value;
  DM.TBNfeNFE_OBSERVACOES.Value:=DM.TBVendasVED_OBSERVACOES.Value;
  DM.TBNfeNFE_PAIS.Value:=DM.TBVendasVED_PAIS.Value;
  DM.TBNfeNFE_PAISCODIGO.Value:=DM.TBVendasVED_PAISCODIGO.Value;
  DM.TBNfeNFE_PEDIDOCLIENTE.Value:=DM.TBVendasVED_PEDIDOCLIENTE.Value;
  DM.TBNfeNFE_PESOBRUTO.Value:=DM.TBVendasVED_PESOBRUTO.Value;
  DM.TBNfeNFE_PESOLIQ.Value:=DM.TBVendasVED_PESOLIQ.Value;
  //DM.TBNfeNFE_PROTOCOLO
  //DM.TBNfeNFE_PROTOCOLOCANC
  //DM.TBNfeNFE_PROTOCOLOCANCDH
  //DM.TBNfeNFE_PROTOCOLODH
  //DM.TBNfeNFE_PROTOCOLOINUT
  //DM.TBNfeNFE_PROTOCOLOINUTDH
  DM.TBNfeNFE_REBOQUEPLACA.Value:=DM.TBVendasVED_REBOQUEPLACA.Value;
  DM.TBNfeNFE_REBOQUEPLACAUF.Value:=DM.TBVendasVED_REBOQUEPLACAUF.Value;
  DM.TBNfeNFE_REBOQUERNTC.Value:=DM.TBVendasVED_REBOQUERNTC.Value;
  //DM.TBNfeNFE_RECIBO
  //DM.TBNfeNFE_RECIBODH
  DM.TBNfeNFE_RG.Value:=DM.TBVendasVED_RG.Value;
  DM.TBNfeNFE_SEQUENCIAITEM.Value:=DM.TBVendasVED_SEQUENCIAITEM.Value;
  //DM.TBNfeNFE_SERIE.Value:=
  DM.TBNfeNFE_STATUS.Value:='A';
  DM.TBNfeNFE_TABELAPRECO.Value:=DM.TBVendasVED_TABELAPRECO.Value;
  DM.TBNfeNFE_TIPOATENDIMENTO.Value:=DM.TBVendasVED_TIPOATENDIMENTO.Value;
  DM.TBNfeNFE_TIPOCONSUMIDOR.Value:=DM.TBVendasVED_TIPOCONSUMIDOR.Value;
  //DM.TBNfeNFE_TIPOEMISSAO.Value:=
  DM.TBNfeNFE_TIPOOPERACAO.Value:=DM.TBVendasVED_TIPOOPERACAO.Value;
  DM.TBNfeNFE_TOTALADUANA.Value:=DM.TBVendasVED_TOTALADUANA.Value;
  DM.TBNfeNFE_TOTALBRUTO.Value:=DM.TBVendasVED_TOTALBRUTO.Value;
  //DM.TBNfeNFE_TOTALCCE.Value:=
  DM.TBNfeNFE_TOTALCOFINS.Value:=DM.TBVendasVED_TOTALCOFINS.Value;
  DM.TBNfeNFE_TOTALCOFINSST.Value:=DM.TBVendasVED_TOTALCOFINSST.Value;
  DM.TBNfeNFE_TOTALCOMISSAO.Value:=DM.TBVendasVED_TOTALCOMISSAO.Value;
  DM.TBNfeNFE_TOTALFCP.Value:=DM.TBVendasVED_TOTALFCP.Value;
  DM.TBNfeNFE_TOTALFCPST.Value:=DM.TBVendasVED_TOTALFCPST.Value;
  DM.TBNfeNFE_TOTALICMS.Value:=DM.TBVendasVED_TOTALICMS.Value;
  DM.TBNfeNFE_TOTALICMSCREDSN.Value:=DM.TBVendasVED_TOTALICMSCREDSN.Value; //no after post recalcula, ja que atualizou a aliquota.
  DM.TBNfeNFE_TOTALICMSST.Value:=DM.TBVendasVED_TOTALICMSST.Value;
  DM.TBNfeNFE_TOTALICMSUFDEST.Value:=DM.TBVendasVED_TOTALICMSUFDEST.Value;
  DM.TBNfeNFE_TOTALICMSUFREMET.Value:=DM.TBVendasVED_TOTALICMSUFREMET.Value;
  DM.TBNfeNFE_TOTALII.Value:=DM.TBVendasVED_TOTALII.Value;
  DM.TBNfeNFE_TOTALIOF.Value:=DM.TBVendasVED_TOTALIOF.Value;
  DM.TBNfeNFE_TOTALIPI.Value:=DM.TBVendasVED_TOTALIPI.Value;
  DM.TBNfeNFE_TOTALISS.Value:=DM.TBVendasVED_TOTALISS.Value;
  DM.TBNfeNFE_TOTALISSDEDUCAO.Value:=DM.TBVendasVED_TOTALISSDEDUCAO.Value;
  DM.TBNfeNFE_TOTALISSDESCCOND.Value:=DM.TBVendasVED_TOTALISSDESCCOND.Value;
  DM.TBNfeNFE_TOTALISSDESCINCOND.Value:=DM.TBVendasVED_TOTALISSDESCINCOND.Value;
  DM.TBNfeNFE_TOTALISSOUTROS.Value:=DM.TBVendasVED_TOTALISSOUTROS.Value;
  DM.TBNfeNFE_TOTALISSRETENCAO.Value:=DM.TBVendasVED_TOTALISSRETENCAO.Value;
  DM.TBNfeNFE_TOTALITENS.Value:=DM.TBVendasVED_TOTALITENS.Value;
  DM.TBNfeNFE_TOTALPIS.Value:=DM.TBVendasVED_TOTALPIS.Value;
  DM.TBNfeNFE_TOTALPISST.Value:=DM.TBVendasVED_TOTALPISST.Value;
  DM.TBNfeNFE_TOTALPRODUTOS.Value:=DM.TBVendasVED_TOTALPRODUTOS.Value;
  DM.TBNfeNFE_TOTALSERVICOS.Value:=DM.TBVendasVED_TOTALSERVICOS.Value;
  DM.TBNfeNFE_TOTALTRIBUTOS.Value:=DM.TBVendasVED_TOTALTRIBUTOS.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSEST.Value:=DM.TBVendasVED_TOTALTRIBUTOSEST.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSFED.Value:=DM.TBVendasVED_TOTALTRIBUTOSFED.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value:=DM.TBVendasVED_TOTALTRIBUTOSIMP.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value:=DM.TBVendasVED_TOTALTRIBUTOSMUN.Value;
  DM.TBNfeNFE_TRANSPCIDADE.Value:=DM.TBVendasVED_TRANSPCIDADE.Value;
  DM.TBNfeNFE_TRANSPCNPJ.Value:=DM.TBVendasVED_TRANSPCNPJ.Value;
  DM.TBNfeNFE_TRANSPCPF.Value:=DM.TBVendasVED_TRANSPCPF.Value;
  DM.TBNfeNFE_TRANSPEMAIL.Value:=DM.TBVendasVED_TRANSPEMAIL.Value;
  DM.TBNfeNFE_TRANSPENDERECO.Value:=DM.TBVendasVED_TRANSPENDERECO.Value;
  DM.TBNfeNFE_TRANSPESTADO.Value:=DM.TBVendasVED_TRANSPESTADO.Value;
  DM.TBNfeNFE_TRANSPFONE.Value:=DM.TBVendasVED_TRANSPFONE.Value;
  DM.TBNfeNFE_TRANSPIE.Value:=DM.TBVendasVED_TRANSPIE.Value;
  DM.TBNfeNFE_TRANSPNOME.Value:=DM.TBVendasVED_TRANSPNOME.Value;
  DM.TBNfeNFE_TRANSPORTADORA.Value:=DM.TBVendasVED_TRANSPORTADORA.Value;
  //DM.TBNfeNFE_USUARIO.Value:=
  DM.TBNfeNFE_VALORDESPACES.Value:=DM.TBVendasVED_VALORDESPACES.Value;
  DM.TBNfeNFE_VALORFRETE.Value:=DM.TBVendasVED_VALORFRETE.Value;
  DM.TBNfeNFE_VALORSEGURO.Value:=DM.TBVendasVED_VALORSEGURO.Value;
  DM.TBNfeNFE_VALORTOTAL.Value:=DM.TBVendasVED_VALORTOTAL.Value;
  DM.TBNfeNFE_VEICULOPLACA.Value:=DM.TBVendasVED_VEICULOPLACA.Value;
  DM.TBNfeNFE_VEICULOPLACAUF.Value:=DM.TBVendasVED_VEICULOPLACAUF.Value;
  DM.TBNfeNFE_VEICULORNTC.Value:=DM.TBVendasVED_VEICULORNTC.Value;
  DM.TBNfeNFE_VENDA.Value:=DM.TBVendasVED_CODIGO.Value;
  DM.TBNfeNFE_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBNfeNFE_VOLUMES.Value:=DM.TBVendasVED_VOLUMES.Value;
  DM.TBNfeNFE_VOLUMESNUM.Value:=DM.TBVendasVED_VOLUMESNUM.Value;
  //testar com os campos abaixo comentados.
{  DM.TBNfeCPG_CODIGO.Value:=DM.TBVendasCPG_CODIGO.Value;
  DM.TBNfeCPG_DESCRICAO.Value:=DM.TBVendasCPG_DESCRICAO.Value;
  DM.TBNfeVEN_CODIGO1.Value:=DM.TBVendasVEN_CODIGO1.Value;
  DM.TBNfeVEN_NOME1.Value:=DM.TBVendasVEN_NOME1.Value;
  DM.TBNfeVEN_CODIGO.Value:=DM.TBVendasVEN_CODIGO.Value;
  DM.TBNfeVEN_NOME.Value:=DM.TBVendasVEN_NOME.Value;}
  DM.TBNfe.Post;
end;

procedure CopiarItensVendaParaNfe;
begin
  DM.TBVendasItens.DisableControls;
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do
  begin
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    DM.TBNfeItens.Insert; //quando incluir campos novos na tabela, incluir os mesmoS aqui. em ordem alfabética.
    DM.TBNfeItensNFI_ALIQCOFINS.Value:=DM.TBVendasItensVEI_ALIQCOFINS.Value;
    DM.TBNfeItensNFI_ALIQCOFINSST.Value:=DM.TBVendasItensVEI_ALIQCOFINSST.Value;
    DM.TBNfeItensNFI_ALIQFCP.Value:=DM.TBVendasItensVEI_ALIQFCP.Value;
    DM.TBNfeItensNFI_ALIQFCPST.Value:=DM.TBVendasItensVEI_ALIQFCPST.Value;
    DM.TBNfeItensNFI_ALIQICMS.Value:=DM.TBVendasItensVEI_ALIQICMS.Value;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value:=DM.TBVendasItensVEI_ALIQICMSADICST.Value;
    DM.TBNfeItensNFI_ALIQICMSINTER.Value:=DM.TBVendasItensVEI_ALIQICMSINTER.Value;
    DM.TBNfeItensNFI_ALIQICMSINTERPART.Value:=DM.TBVendasItensVEI_ALIQICMSINTERPART.Value;
    DM.TBNfeItensNFI_ALIQICMSRED.Value:=DM.TBVendasItensVEI_ALIQICMSRED.Value;
    DM.TBNfeItensNFI_ALIQICMSST.Value:=DM.TBVendasItensVEI_ALIQICMSST.Value;
    DM.TBNfeItensNFI_ALIQICMSSTRET.Value:=DM.TBVendasItensVEI_ALIQICMSSTRET.Value;
    DM.TBNfeItensNFI_ALIQII.Value:=DM.TBVendasItensVEI_ALIQII.Value;
    DM.TBNfeItensNFI_ALIQIPI.Value:=DM.TBVendasItensVEI_ALIQIPI.Value;
    DM.TBNfeItensNFI_ALIQISS.Value:=DM.TBVendasItensVEI_ALIQISS.Value;
    DM.TBNfeItensNFI_ALIQPIS.Value:=DM.TBVendasItensVEI_ALIQPIS.Value;
    DM.TBNfeItensNFI_ALIQPISST.Value:=DM.TBVendasItensVEI_ALIQPISST.Value;
    DM.TBNfeItensNFI_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
    DM.TBNfeItensNFI_BASECOFINS.Value:=DM.TBVendasItensVEI_BASECOFINS.Value;
    DM.TBNfeItensNFI_BASECOFINSST.Value:=DM.TBVendasItensVEI_BASECOFINSST.Value;
    DM.TBNfeItensNFI_BASEICMS.Value:=DM.TBVendasItensVEI_BASEICMS.Value;
    DM.TBNfeItensNFI_BASEICMSRED.Value:=DM.TBVendasItensVEI_BASEICMSRED.Value;
    DM.TBNfeItensNFI_BASEICMSST.Value:=DM.TBVendasItensVEI_BASEICMSST.Value;
    DM.TBNfeItensNFI_BASEICMSSTRET.Value:=DM.TBVendasItensVEI_BASEICMSSTRET.Value;
    DM.TBNfeItensNFI_BASEII.Value:=DM.TBVendasItensVEI_BASEII.Value;
    DM.TBNfeItensNFI_BASEIPI.Value:=DM.TBVendasItensVEI_BASEIPI.Value;
    DM.TBNfeItensNFI_BASEISS.Value:=DM.TBVendasItensVEI_BASEISS.Value;
    DM.TBNfeItensNFI_BASEPIS.Value:=DM.TBVendasItensVEI_BASEPIS.Value;
    DM.TBNfeItensNFI_BASEPISST.Value:=DM.TBVendasItensVEI_BASEPISST.Value;
    DM.TBNfeItensNFI_CEST.Value:=DM.TBVendasItensVEI_CEST.Value;
    DM.TBNfeItensNFI_CFOP.Value:=DM.TBVendasItensVEI_CFOP.Value;
    DM.TBNfeItensNFI_CIDADEISS.Value:=DM.TBVendasItensVEI_CIDADEISS.Value;
    DM.TBNfeItensNFI_CLASSFISCAL.Value:=DM.TBVendasItensVEI_CLASSFISCAL.Value;
    //DM.TBNfeItensNFI_CODIGO.Value:= //chave primaria.
    DM.TBNfeItensNFI_CODIGOBARRAS.Value:=DM.TBVendasItensVEI_CODIGOBARRAS.Value;
    DM.TBNfeItensNFI_CODIGOFAB.Value:=DM.TBVendasItensVEI_CODIGOFAB.Value;
    DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBVendasItensVEI_COMISSAO.Value;
    DM.TBNfeItensNFI_COMPLEMENTO.Value:=DM.TBVendasItensVEI_COMPLEMENTO.Value;
    DM.TBNfeItensNFI_COMPOEBASEICMS.Value:=DM.TBVendasItensVEI_COMPOEBASEICMS.Value;
    DM.TBNfeItensNFI_COMPOEBASEICMSST.Value:=DM.TBVendasItensVEI_COMPOEBASEICMSST.Value;
    DM.TBNfeItensNFI_COMPOETOTAL.Value:=DM.TBVendasItensVEI_COMPOETOTAL.Value;
    DM.TBNfeItensNFI_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
    DM.TBNfeItensNFI_CSTCOFINS.Value:=DM.TBVendasItensVEI_CSTCOFINS.Value;
    DM.TBNfeItensNFI_CSTICMS.Value:=DM.TBVendasItensVEI_CSTICMS.Value;
    DM.TBNfeItensNFI_CSTIPI.Value:=DM.TBVendasItensVEI_CSTIPI.Value;
    DM.TBNfeItensNFI_CSTPIS.Value:=DM.TBVendasItensVEI_CSTPIS.Value;
    DM.TBNfeItensNFI_DESCMAX.Value:=DM.TBVendasItensVEI_DESCMAX.Value;
    DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCPORC.Value;
    DM.TBNfeItensNFI_DESCRICAO.Value:=DM.TBVendasItensVEI_DESCRICAO.Value;
    DM.TBNfeItensNFI_DESCVALOR.Value:=DM.TBVendasItensVEI_DESCVALOR.Value;
    DM.TBNfeItensNFI_DESONERACAO.Value:=DM.TBVendasItensVEI_DESONERACAO.Value;
    DM.TBNfeItensNFI_DICNPJ.Value:=DM.TBVendasItensVEI_DICNPJ.Value;
    DM.TBNfeItensNFI_DIDATA.Value:=DM.TBVendasItensVEI_DIDATA.Value;
    DM.TBNfeItensNFI_DIDESEMBARACODATA.Value:=DM.TBVendasItensVEI_DIDESEMBARACODATA.Value;
    DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value:=DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value;
    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value:=DM.TBVendasItensVEI_DIDESEMBARACOUF.Value;
    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value:=DM.TBVendasItensVEI_DIEXPORTADORCOD.Value;
    DM.TBNfeItensNFI_DIINTERMEDIO.Value:=DM.TBVendasItensVEI_DIINTERMEDIO.Value;
    DM.TBNfeItensNFI_DINUMERO.Value:=DM.TBVendasItensVEI_DINUMERO.Value;
    DM.TBNfeItensNFI_DITERCEIROUF.Value:=DM.TBVendasItensVEI_DITERCEIROUF.Value;
    DM.TBNfeItensNFI_DITRANSPORTE.Value:=DM.TBVendasItensVEI_DITRANSPORTE.Value;
    DM.TBNfeItensNFI_DIVALORAFRMM.Value:=DM.TBVendasItensVEI_DIVALORAFRMM.Value;
    DM.TBNfeItensNFI_EXCHAVEACESSO.Value:=DM.TBVendasItensVEI_EXCHAVEACESSO.Value;
    DM.TBNfeItensNFI_EXDRAWBACK.Value:=DM.TBVendasItensVEI_EXDRAWBACK.Value;
    DM.TBNfeItensNFI_EXQUANTIDADE.Value:=DM.TBVendasItensVEI_EXQUANTIDADE.Value;
    DM.TBNfeItensNFI_EXREGISTRO.Value:=DM.TBVendasItensVEI_EXREGISTRO.Value;
    DM.TBNfeItensNFI_FCI.Value:=DM.TBVendasItensVEI_FCI.Value;
    DM.TBNfeItensNFI_INCENTIVOISS.Value:=DM.TBVendasItensVEI_INCENTIVOISS.Value;
    DM.TBNfeItensNFI_INDICADORISS.Value:=DM.TBVendasItensVEI_INDICADORISS.Value;
    DM.TBNfeItensNFI_INFOADICIONAL.Value:=DM.TBVendasItensVEI_INFOADICIONAL.Value;
    DM.TBNfeItensNFI_LOCALIZACAO.Value:=DM.TBVendasItensVEI_LOCALIZACAO.Value;
    DM.TBNfeItensNFI_LOTE.Value:=DM.TBVendasItensVEI_LOTE.Value;
    DM.TBNfeItensNFI_LUCROPORC.Value:=DM.TBVendasItensVEI_LUCROPORC.Value;
    DM.TBNfeItensNFI_LUCROVALOR.Value:=DM.TBVendasItensVEI_LUCROVALOR.Value;
    DM.TBNfeItensNFI_MODICMS.Value:=DM.TBVendasItensVEI_MODICMS.Value;
    DM.TBNfeItensNFI_MODICMSST.Value:=DM.TBVendasItensVEI_MODICMSST.Value;
    //DM.TBNfeItensNFI_NOTA.Value:= //chave estrangeira.
    DM.TBNfeItensNFI_ORIGEM.Value:=DM.TBVendasItensVEI_ORIGEM.Value;
    DM.TBNfeItensNFI_PAISISS.Value:=DM.TBVendasItensVEI_PAISISS.Value;
    DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value:=DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value;
    DM.TBNfeItensNFI_PESO.Value:=DM.TBVendasItensVEI_PESO.Value;
    DM.TBNfeItensNFI_PESOTOTAL.Value:=DM.TBVendasItensVEI_PESOTOTAL.Value;
    DM.TBNfeItensNFI_PRECOCUSTO.Value:=DM.TBVendasItensVEI_PRECOCUSTO.Value;
    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value:=DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
    DM.TBNfeItensNFI_PROCESSOISS.Value:=DM.TBVendasItensVEI_PROCESSOISS.Value;
    DM.TBNfeItensNFI_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBNfeItensNFI_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
    DM.TBNfeItensNFI_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
    DM.TBNfeItensNFI_QUANTIDADETROCA.Value:=DM.TBVendasItensVEI_QUANTIDADETROCA.Value;
    DM.TBNfeItensNFI_SEQUENCIA.Value:=DM.TBVendasItensVEI_SEQUENCIA.Value;
    DM.TBNfeItensNFI_SERVICOISS.Value:=DM.TBVendasItensVEI_SERVICOISS.Value;
    DM.TBNfeItensNFI_SOMACOFINSST.Value:=DM.TBVendasItensVEI_SOMACOFINSST.Value;
    DM.TBNfeItensNFI_SOMAPISST.Value:=DM.TBVendasItensVEI_SOMAPISST.Value;
    DM.TBNfeItensNFI_TIPO.Value:=DM.TBVendasItensVEI_TIPO.Value;
    DM.TBNfeItensNFI_TIPOISS.Value:=DM.TBVendasItensVEI_TIPOISS.Value;
    DM.TBNfeItensNFI_UNIDADE.Value:=DM.TBVendasItensVEI_UNIDADE.Value;
    DM.TBNfeItensNFI_VALORACESSORIAS.Value:=DM.TBVendasItensVEI_VALORACESSORIAS.Value;
    DM.TBNfeItensNFI_VALORADUANA.Value:=DM.TBVendasItensVEI_VALORADUANA.Value;
    DM.TBNfeItensNFI_VALORCOFINS.Value:=DM.TBVendasItensVEI_VALORCOFINS.Value;
    DM.TBNfeItensNFI_VALORCOFINSST.Value:=DM.TBVendasItensVEI_VALORCOFINSST.Value;
    DM.TBNfeItensNFI_VALORCOMISSAO.Value:=DM.TBVendasItensVEI_VALORCOMISSAO.Value;
    DM.TBNfeItensNFI_VALORFCP.Value:=DM.TBVendasItensVEI_VALORFCP.Value;
    DM.TBNfeItensNFI_VALORFCPST.Value:=DM.TBVendasItensVEI_VALORFCPST.Value;
    DM.TBNfeItensNFI_VALORFRETE.Value:=DM.TBVendasItensVEI_VALORFRETE.Value;
    DM.TBNfeItensNFI_VALORICMS.Value:=DM.TBVendasItensVEI_VALORICMS.Value;
    DM.TBNfeItensNFI_VALORICMSCREDSN.Value:=DM.TBVendasItensVEI_VALORICMSCREDSN.Value;
    DM.TBNfeItensNFI_VALORICMSDESONERADO.Value:=DM.TBVendasItensVEI_VALORICMSDESONERADO.Value;
    DM.TBNfeItensNFI_VALORICMSST.Value:=DM.TBVendasItensVEI_VALORICMSST.Value;
    DM.TBNfeItensNFI_VALORICMSSTRET.Value:=DM.TBVendasItensVEI_VALORICMSSTRET.Value;
    DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value:=DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value;
    DM.TBNfeItensNFI_VALORICMSUFDEST.Value:=DM.TBVendasItensVEI_VALORICMSUFDEST.Value;
    DM.TBNfeItensNFI_VALORICMSUFREMET.Value:=DM.TBVendasItensVEI_VALORICMSUFREMET.Value;
    DM.TBNfeItensNFI_VALORII.Value:=DM.TBVendasItensVEI_VALORII.Value;
    DM.TBNfeItensNFI_VALORIOF.Value:=DM.TBVendasItensVEI_VALORIOF.Value;
    DM.TBNfeItensNFI_VALORIPI.Value:=DM.TBVendasItensVEI_VALORIPI.Value;
    DM.TBNfeItensNFI_VALORISS.Value:=DM.TBVendasItensVEI_VALORISS.Value;
    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value:=DM.TBVendasItensVEI_VALORISSDEDUCAO.Value;
    DM.TBNfeItensNFI_VALORISSDESCCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCCOND.Value;
    DM.TBNfeItensNFI_VALORISSDESCINCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCINCOND.Value;
    DM.TBNfeItensNFI_VALORISSOUTROS.Value:=DM.TBVendasItensVEI_VALORISSOUTROS.Value;
    DM.TBNfeItensNFI_VALORISSRETENCAO.Value:=DM.TBVendasItensVEI_VALORISSRETENCAO.Value;
    DM.TBNfeItensNFI_VALORPIS.Value:=DM.TBVendasItensVEI_VALORPIS.Value;
    DM.TBNfeItensNFI_VALORPISST.Value:=DM.TBVendasItensVEI_VALORPISST.Value;
    DM.TBNfeItensNFI_VALORSEGURO.Value:=DM.TBVendasItensVEI_VALORSEGURO.Value;
    DM.TBNfeItensNFI_VALORTOTAL.Value:=DM.TBVendasItensVEI_VALORTOTAL.Value;
    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value:=DM.TBVendasItensVEI_VALORTOTALBRUTO.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOS.Value:=DM.TBVendasItensVEI_VALORTRIBUTOS.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
    DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value;

    //testar sem associar os campos abaixo.
    DM.TBNfeItensCLF_DESCRICAO.Value:=DM.TBVendasItensCLF_DESCRICAO.Value;
    DM.TBNfeItensICM_CALCULACREDITOSN.Value:=DM.TBVendasItensICM_CALCULACREDITOSN.Value;
    DM.TBNfeItensICM_DESCRICAO.Value:=DM.TBVendasItensICM_DESCRICAO.Value;
    DM.TBNfeItensIPI_DESCRICAO.Value:=DM.TBVendasItensIPI_DESCRICAO.Value;
    DM.TBNfeItensISS_DESCRICAO.Value:=DM.TBVendasItensISS_DESCRICAO.Value;
    DM.TBNfeItensPIS_DESCRICAO.Value:=DM.TBVendasItensPIS_DESCRICAO.Value; //pis.
    DM.TBNfeItensPIS_DESCRICAO1.Value:=DM.TBVendasItensPIS_DESCRICAO1.Value; //cofins.
    DM.TBNfeItensNAT_CALCULACREDITOSN.Value:=DM.TBVendasItensNAT_CALCULACREDITOSN.Value;
    DM.TBNfeItensNAT_DESCRICAO.Value:=DM.TBVendasItensNAT_DESCRICAO.Value;
    DM.TBNfeItensPRO_CODIGO.Value:=DM.TBVendasItensPRO_CODIGO.Value;
    DM.TBNfeItensPRO_CLASSFISCAL.Value:=DM.TBVendasItensPRO_CLASSFISCAL.Value;
    DM.TBNfeItensPRO_CSTICMS.Value:=DM.TBVendasItensPRO_CSTICMS.Value;
    DM.TBNfeItensPRO_NOME.Value:=DM.TBVendasItensPRO_NOME.Value;
    DM.TBNfeItensPRO_PRECOVENDA.Value:=DM.TBVendasItensPRO_PRECOVENDA.Value;

    DM.TBNfeItens.Post;
    DM.TBVendasItens.Next;
  end;
  DM.TBVendasItens.EnableControls;
end;

procedure TFormVendas.GerarNFe1Click(Sender: TObject);
var QtdeItensEmQuilos: Integer;
  Limite, Disponivel, Aberto: Currency;
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Este pedido de venda ainda não tem itens.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if (DM.TBVendasVED_STATUS.Value='F') and ((not DM.TBVendasVED_NOTA.IsNull) or (not DM.TBVendasVED_NFE.IsNull)) then
  begin
    if MessageDlg('Já foi gerada uma nota com esse pedido. Deseja abrir o cadastro de notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      if not DM.TBVendasVED_NFE.IsNull then
      CadastrodeNotasFiscaisEletronicas1.Click else
      CadastrodeNotasFiscais1.Click;
    end;
    Exit;
  end;
  if DM.TBNfe.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('No momento existe uma NFe em edição. Verifique!',mtError,[mbOk],0);
    Exit;
  end;
  //checa se a DLL NFE_UTIL está registrada.
  if NFeUtilRegistrada=False then
  begin
    MessageDlg('Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+
               'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL, na tela da NFe.'+#13#10+#13#10+
               'Para obter mais ajuda sobre a DLL acesse o menu Ferramentas -> Saiba mais sobre a DLL NFe_Util, na tela da NFe.',mtError,[mbOk],0);
    Exit;
  end;
  //...

  //verifica se o pedido nao vai estourar o limite do cliente....
  //valor que tem em aberto + o valor da venda ultrapassa o limite definido?.
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(REE_VALOR) as VALOR from RECEBER where REE_STATUS=''A'' and REE_CLIENTE=:cliente');
  DM.QYAux.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.QYAux.Open;
  if (DM.QYAux.FieldByName('VALOR').AsExtended + DM.TBVendasVED_VALORTOTAL.Value) > DM.TBClientesCLI_LIMITECREDITO.Value then
  begin
    Limite:=DM.TBClientesCLI_LIMITECREDITO.AsExtended;
    Aberto:=DM.QYAux.FieldByName('VALOR').AsExtended;
    Disponivel:=Limite - Aberto;
    MessageDlg('O Cliente não tem limite disponível para realizar essa compra.'+#13#10#13#10+
               'Total em Aberto: '+Format('%m',[Aberto])+#13#10+
               'Limite Total: '+Format('%m',[Limite])+#13#10+
               'Limite Disponível: '+Format('%m',[Disponivel])
               ,mtWarning,[mbOk],0);
    if DM.TBClientesCLI_BLOQUEARVENDA.Value='S' then    
    Exit;
  end;

  if VerificarEstoque=False then
  Exit;
  //if VerificarEstoqueNosPedidosEmAberto=False then
  //Exit;

  {$REGION 'VERIFICA SE TEM ITENS COM UNIDADE EM KILO.'}
  QtdeItensEmQuilos:=0;
  if DM.TBParametrosPAR_ALERTAKG.Value='S' then
  begin
    DM.TBVendasItens.DisableControls;
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      if DM.TBVendasItensVEI_UNIDADE.Value='KG' then
      Inc(QtdeItensEmQuilos);
      DM.TBVendasItens.Next;
    end;
    DM.TBVendasItens.EnableControls;
    if QtdeItensEmQuilos > 0 then
    begin
      if MessageDlg('Existem '+IntToStr(QtdeItensEmQuilos)+' itens em Quilogramas. Deseja continuar?',mtConfirmation,[mbYes,mbNo],0)=mrNo then //se não continuar, sai da rotina.
      begin
        Exit;
      end;
    end;
  end;
  {$ENDREGION}

  if DM.TBVendasVED_STATUS.Value='A' then
  begin
    if MessageDlg('Gerar NFe deste pedido?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      CopiarCapaVendaParaNfe;
      CopiarItensVendaParaNfe;
      //deixa a nota em aberto para possíveis ajustes.
      DM.TBNfe.Edit;
      DM.TBNfeNFE_STATUS.Value:='A';
      DM.TBNfe.Post;
      //finaliza o pedido e informa que foi gerado uma nota.
      DM.TBVendas.Edit;
      DM.TBVendasVED_STATUS.Value:='F';
      DM.TBVendasVED_NFE.Value:=DM.TBNfeNFE_CODIGO.Value;
      DM.TBVendasVED_BAIXADATA.Value:=DM.ServerDate;
      DM.TBVendasVED_BAIXAPOR.Value:=UsuarioLogado;
      DM.TBVendas.Post;
      MessageDlg('Nota gerada com número: '+IntToStr(DM.TBNfeNFE_CODIGO.Value)+#13#13+'Clique OK para abrir o cadastro de notas.',mtInformation,[mbOk],0);
      Application.CreateForm(TFormNfe, FormNfe);
      FormNfe.ShowModal;
      FormNfe.Free;
      FormNfe:=nil;
    end;
  end;
end;

procedure TFormVendas.DBEdit58Enter(Sender: TObject);
begin
  CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormVendas.DBEdit58Exit(Sender: TObject);
begin
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBVendasVED_CFOP.Clear;
    DM.TBVendasVED_CFOPDESC.Clear;
    DM.TBVendasVED_DESTACARIMPOSTOS.Value:='N';
    DM.TBVendasVED_ENTRADASAIDA.Clear;
    DM.TBVendasVED_INFOADICFISCO.Clear;
    DM.TBVendasVED_MOVIMENTAESTOQUE.Value:='S';
    DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBVendas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBVendasVED_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBVendasVED_CFOPDESC.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBVendasVED_DESTACARIMPOSTOS.Value:=DMS.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
      DM.TBVendasVED_ENTRADASAIDA.Value:=DMS.QYNaturezasNAT_ENTRADASAIDA.Value;
      DM.TBVendasVED_INFOADICFISCO.Value:=DMS.QYNaturezasNAT_OBSERVACOES.Value;
      DM.TBVendasVED_MOVIMENTAESTOQUE.Value:=DMS.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
      DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=DMS.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
    end else
    begin
      DM.TBVendasVED_CFOP.Clear;
      DM.TBVendasVED_CFOPDESC.Clear;
      DM.TBVendasVED_ENTRADASAIDA.Clear;
      DM.TBVendasVED_DESTACARIMPOSTOS.Value:='N';
      DM.TBVendasVED_INFOADICFISCO.Clear;
      DM.TBVendasVED_MOVIMENTAESTOQUE.Value:='S';
      DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormVendas.DBEdit58KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton19.Click;
end;

procedure TFormVendas.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then CodigosOld:='';
end;

procedure TFormVendas.SpeedButton19Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar=True then
  begin
    DM.TBVendas.Edit;
    DM.TBVendasVED_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBVendasVED_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBVendasVED_DESTACARIMPOSTOS.Value:=FormNaturezasLoc.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
    DM.TBVendasVED_ENTRADASAIDA.Value:=FormNaturezasLoc.QYNaturezasNAT_ENTRADASAIDA.Value;
    DM.TBVendasVED_INFOADICFISCO.Value:=FormNaturezasLoc.QYNaturezasNAT_OBSERVACOES.Value;
    DM.TBVendasVED_MOVIMENTAESTOQUE.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
    DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormVendas.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormVendas.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormVendas.CadastroDeNotasFiscaisEletronicas1Click(
  Sender: TObject);
begin
  if (not DM.TBVendas.IsEmpty) and (not DM.TBVendasVED_NFE.IsNull) then
  begin
    if DM.TBNFe.State in [dsInsert, dsEdit] then
    MessageDlg('No momento existe uma NFe em edição. Verifique!',mtError,[mbOk],0) else
    begin
      DM.TBNfe.Close;
      DM.TBNfe.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NFE.Value;
      DM.TBNfe.Open;
    end;
  end;
  Application.CreateForm(TFormNfe, FormNfe);
  FormNfe.ShowModal;
  FormNfe.Free;
  FormNfe:=nil;
end;

procedure TFormVendas.CadastroDeNaturezasdeOperacao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormVendas.CadastroDeClassificacoesFiscais1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscal, FormClassFiscal);
  FormClassFiscal.ShowModal;
  FormClassFiscal.Free;
  FormClassFiscal:=nil;
end;

procedure TFormVendas.CadastroDeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormVendas.CadastroDeImpostoIPI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpi, FormIpi);
  FormIpi.ShowModal;
  FormIpi.Free;
  FormIpi:=nil;
end;

procedure TFormVendas.CadastroDeImpostoISS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIss, FormIss);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormVendas.CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofins, FormPiscofins);
  FormPiscofins.ShowModal;
  FormPiscofins.Free;
  FormPiscofins:=nil;
end;

procedure TFormVendas.MarcarPedidoComoEntregue1Click(Sender: TObject);
begin
  if DM.TBVendas.IsEmpty then
  begin
    MessageDlg('Nenhum pedido de venda selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_ENTREGUE.Value='S' then
  begin
    MessageDlg('Este pedido de venda já está marcado como entregue.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Marcar pedido de venda como entregue?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    if DM.TBVendasVED_DTSAIDA.IsNull then
    begin
      DM.QYAux.SQL.Add('update VENDAS set VED_ENTREGUE=''S'', VED_DTSAIDA=:datasaida where VED_CODIGO=:codigo');
      DM.QYAux.ParamByName('datasaida').AsDate:=DM.ServerDate;
    end else
    DM.QYAux.SQL.Add('update VENDAS set VED_ENTREGUE=''S'' where VED_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
    DM.QYAux.ExecSQL;
    DM.TRAux.Commit;

    CodigoMark:=DM.TBVendasVED_CODIGO.Value;
    DM.TRVendas.Commit;
    DM.TBVendas.ParamByName('codigo').AsInteger:=CodigoMark;
    DM.TBVendas.Open;
  end;
end;

procedure TFormVendas.DBGrid1DblClick(Sender: TObject);
begin
  if not DM.TBVendasItens.IsEmpty then
  BitBtn4.Click;
end;

procedure TFormVendas.BitBtn7Click(Sender: TObject);
begin
  if DM.TBVendas.State in [dsInsert, dsEdit] then
  Exit;

  if DM.TBVendasItens.IsEmpty then
  begin
    MessageDlg('Não existe nenhum item para excluir.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM.TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      DM.TBVendasItens.Delete;
    end;
    DM.CalcularTotaisVenda(True); //era true.
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormVendas.DBEdit44KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasVED_CNPJ.Clear;
end;

procedure TFormVendas.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasVED_CPF.Clear;
end;

procedure TFormVendas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasVED_DTEMISSAO.Clear;
end;

procedure TFormVendas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBVendasVED_DTSAIDA.Clear;
end;

initialization
  RegisterClass(TFormVendas);

finalization
  UnRegisterClass(TFormVendas);

end.
