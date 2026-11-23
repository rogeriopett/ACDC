unit Compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Mask, IDAttachmentFile,
  Grids, DBGrids, DB, ComCtrls, ImgList, PngImageList, PngSpeedButton, PngBitBtn,
  QRPDFFilt, System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormCompras = class(TForm)
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
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
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
    BitBtn4: TPngBitBtn;
    N2: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    Label33: TLabel;
    DBText6: TDBText;
    Label34: TLabel;
    DBText7: TDBText;
    CadastroDeProdutos1Button: TPngSpeedButton;
    N3: TMenuItem;
    FinalizarCompra1: TMenuItem;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    FinalizarCompra1Button: TPngSpeedButton;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    DBComboBox2: TDBComboBox;
    DBMemo2: TDBMemo;
    BitBtn5: TPngBitBtn;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    LocalizarCompraNoContasAPagar1Button: TPngSpeedButton;
    LocalizarCompraNoContasAPagar1: TMenuItem;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    N4: TMenuItem;
    ComprasNoPeriodoPorFornecedorSintetico1: TMenuItem;
    ImprimirPedidoDeCompras1: TMenuItem;
    PngImageList1: TPngImageList;
    Label87: TLabel;
    Label105: TLabel;
    Label65: TLabel;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    SpeedButton19: TPngSpeedButton;
    Label66: TLabel;
    DBEdit5: TDBEdit;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit36: TDBEdit;
    CancelarCompra1Button: TPngSpeedButton;
    CancelarCompra1: TMenuItem;
    Label26: TLabel;
    Label27: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    DBComboBox5: TDBComboBox;
    Label5: TLabel;
    TabSheet5: TTabSheet;
    Label17: TLabel;
    Label25: TLabel;
    DBEdit26: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit18: TDBEdit;
    SpeedButton3: TPngSpeedButton;
    DBEdit23: TDBEdit;
    Label22: TLabel;
    Label21: TLabel;
    DBEdit22: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit92: TDBEdit;
    Label104: TLabel;
    DBEdit72: TDBEdit;
    Label81: TLabel;
    Label80: TLabel;
    DBEdit71: TDBEdit;
    DBEdit70: TDBEdit;
    Label79: TLabel;
    ComprasNoPeriodoPorProduto1: TMenuItem;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    Label85: TLabel;
    DBEdit76: TDBEdit;
    ComprasNoPeriodoPorFornecedorAnalitico1: TMenuItem;
    DBEdit55: TDBEdit;
    Label60: TLabel;
    EnviarPedidoPorEmail1Button: TPngSpeedButton;
    N6: TMenuItem;
    EnviarPedidoPorEmail1: TMenuItem;
    DBText16: TDBText;
    Label93: TLabel;
    Label94: TLabel;
    DBText17: TDBText;
    N7: TMenuItem;
    ImportarArquivoXMLNFe1: TMenuItem;
    AlterarCampoMovimentacaoEstoque1: TMenuItem;
    AlterarCampoMovimentacaoFinanceiro1: TMenuItem;
    DBText18: TDBText;
    DBText19: TDBText;
    DBComboBox3: TDBComboBox;
    Label61: TLabel;
    DBEdit57: TDBEdit;
    Label63: TLabel;
    DuplicarPedido1Button: TPngSpeedButton;
    DuplicarPedido1: TMenuItem;
    DSCompras: TDataSource;
    FrequenciaDeCompras1: TMenuItem;
    InutilizarCompra1Button: TPngSpeedButton;
    InutilizarCompra1: TMenuItem;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label6: TLabel;
    DBEdit11: TDBEdit;
    DBEdit27: TDBEdit;
    GroupBox3: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label47: TLabel;
    DBEdit29: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit42: TDBEdit;
    GroupBox4: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit43: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label37: TLabel;
    DBEdit12: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit88: TDBEdit;
    Label101: TLabel;
    DBEdit89: TDBEdit;
    Label102: TLabel;
    DBEdit90: TDBEdit;
    Label103: TLabel;
    DBEdit91: TDBEdit;
    Label68: TLabel;
    DBEdit78: TDBEdit;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit93: TDBEdit;
    GroupBox6: TGroupBox;
    Label62: TLabel;
    DBEdit56: TDBEdit;
    Label69: TLabel;
    DBEdit79: TDBEdit;
    Label86: TLabel;
    DBEdit80: TDBEdit;
    Label88: TLabel;
    DBEdit81: TDBEdit;
    Label89: TLabel;
    DBEdit82: TDBEdit;
    GroupBox7: TGroupBox;
    Label64: TLabel;
    Label67: TLabel;
    DBEdit60: TDBEdit;
    DBEdit77: TDBEdit;
    CadastroDeNaturezasDeOperacao1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    ImportarArquivoXMLNFe1Button: TPngSpeedButton;
    N8: TMenuItem;
    ComprasNoPeriodoSintetico1: TMenuItem;
    ComprasNoPeriodoAnalitico1: TMenuItem;
    ImprimirPedidoDeCompras1Button: TPngSpeedButton;
    BitBtn3: TPngBitBtn;
    ComprasNoPeriodoPorProdutoComComplemento1: TMenuItem;
    QYCompras: TFDQuery;
    TRCompras: TFDTransaction;
    UPCompras: TFDUpdateSQL;
    QYComprasCOM_ALIQICMSCREDSN: TFMTBCDField;
    QYComprasCOM_BAIRRO: TStringField;
    QYComprasCOM_BAIXADATA: TDateField;
    QYComprasCOM_BAIXAPOR: TStringField;
    QYComprasCOM_BASECOFINS: TFMTBCDField;
    QYComprasCOM_BASECOFINSST: TFMTBCDField;
    QYComprasCOM_BASEICMS: TFMTBCDField;
    QYComprasCOM_BASEICMSST: TFMTBCDField;
    QYComprasCOM_BASEIPI: TFMTBCDField;
    QYComprasCOM_BASEISS: TFMTBCDField;
    QYComprasCOM_BASEPIS: TFMTBCDField;
    QYComprasCOM_BASEPISST: TFMTBCDField;
    QYComprasCOM_CALCULARTOTAIS: TStringField;
    QYComprasCOM_CEP: TStringField;
    QYComprasCOM_CFOP: TIntegerField;
    QYComprasCOM_CFOPDESC: TStringField;
    QYComprasCOM_CHAVEACESSO: TStringField;
    QYComprasCOM_CIDADE: TStringField;
    QYComprasCOM_CIDADECODIGO: TIntegerField;
    QYComprasCOM_CNPJ: TStringField;
    QYComprasCOM_CODIGO: TIntegerField;
    QYComprasCOM_COMPLEMENTO: TStringField;
    QYComprasCOM_CONDICAO: TIntegerField;
    QYComprasCOM_CONDICAOMEMO: TMemoField;
    QYComprasCOM_CONTATO: TStringField;
    QYComprasCOM_CPF: TStringField;
    QYComprasCOM_DESCPORC: TFMTBCDField;
    QYComprasCOM_DESCVALOR: TFMTBCDField;
    QYComprasCOM_DIAPREFERENCIAL: TIntegerField;
    QYComprasCOM_DTATUALIZACAO: TDateField;
    QYComprasCOM_DTCADASTRO: TDateField;
    QYComprasCOM_DTENTRADA: TDateField;
    QYComprasCOM_DTPRESTSERVICO: TDateField;
    QYComprasCOM_ENDERECO: TStringField;
    QYComprasCOM_ENTRADASAIDA: TStringField;
    QYComprasCOM_ESPECIE: TStringField;
    QYComprasCOM_ESTADO: TStringField;
    QYComprasCOM_ESTADOCODIGO: TIntegerField;
    QYComprasCOM_FONE1: TStringField;
    QYComprasCOM_FORMAPAGTO: TStringField;
    QYComprasCOM_FORNECEDOR: TIntegerField;
    QYComprasCOM_FRETE: TStringField;
    QYComprasCOM_HRATUALIZACAO: TTimeField;
    QYComprasCOM_HRCADASTRO: TTimeField;
    QYComprasCOM_IE: TStringField;
    QYComprasCOM_LACRES: TStringField;
    QYComprasCOM_MARCA: TStringField;
    QYComprasCOM_MODELO: TIntegerField;
    QYComprasCOM_MOVIMENTAESTOQUE: TStringField;
    QYComprasCOM_MOVIMENTAFINANCEIRO: TStringField;
    QYComprasCOM_NOME: TStringField;
    QYComprasCOM_NOTADATA: TDateField;
    QYComprasCOM_NOTANUMERO: TIntegerField;
    QYComprasCOM_NUMERO: TStringField;
    QYComprasCOM_OBSERVACOES: TMemoField;
    QYComprasCOM_PESOBRUTO: TFMTBCDField;
    QYComprasCOM_PESOLIQ: TFMTBCDField;
    QYComprasCOM_REBOQUEPLACA: TStringField;
    QYComprasCOM_REBOQUEPLACAUF: TStringField;
    QYComprasCOM_REBOQUERNTC: TStringField;
    QYComprasCOM_RG: TStringField;
    QYComprasCOM_SERIE: TIntegerField;
    QYComprasCOM_STATUS: TStringField;
    QYComprasCOM_TOTALCOFINS: TFMTBCDField;
    QYComprasCOM_TOTALCOFINSST: TFMTBCDField;
    QYComprasCOM_TOTALFCP: TFMTBCDField;
    QYComprasCOM_TOTALICMS: TFMTBCDField;
    QYComprasCOM_TOTALICMSCREDSN: TFMTBCDField;
    QYComprasCOM_TOTALICMSST: TFMTBCDField;
    QYComprasCOM_TOTALICMSUFDEST: TFMTBCDField;
    QYComprasCOM_TOTALICMSUFREMET: TFMTBCDField;
    QYComprasCOM_TOTALIPI: TFMTBCDField;
    QYComprasCOM_TOTALISS: TFMTBCDField;
    QYComprasCOM_TOTALISSDEDUCAO: TFMTBCDField;
    QYComprasCOM_TOTALISSDESCCOND: TFMTBCDField;
    QYComprasCOM_TOTALISSDESCINCOND: TFMTBCDField;
    QYComprasCOM_TOTALISSOUTROS: TFMTBCDField;
    QYComprasCOM_TOTALISSRETENCAO: TFMTBCDField;
    QYComprasCOM_TOTALITENS: TFMTBCDField;
    QYComprasCOM_TOTALPIS: TFMTBCDField;
    QYComprasCOM_TOTALPISST: TFMTBCDField;
    QYComprasCOM_TOTALPRODUTOS: TFMTBCDField;
    QYComprasCOM_TOTALSERVICOS: TFMTBCDField;
    QYComprasCOM_TOTALTRIBUTOS: TFMTBCDField;
    QYComprasCOM_TOTALTRIBUTOSEST: TFMTBCDField;
    QYComprasCOM_TOTALTRIBUTOSFED: TFMTBCDField;
    QYComprasCOM_TOTALTRIBUTOSIMP: TFMTBCDField;
    QYComprasCOM_TOTALTRIBUTOSMUN: TFMTBCDField;
    QYComprasCOM_TRANSPCIDADE: TStringField;
    QYComprasCOM_TRANSPCNPJ: TStringField;
    QYComprasCOM_TRANSPCPF: TStringField;
    QYComprasCOM_TRANSPENDERECO: TStringField;
    QYComprasCOM_TRANSPESTADO: TStringField;
    QYComprasCOM_TRANSPFONE: TStringField;
    QYComprasCOM_TRANSPIE: TStringField;
    QYComprasCOM_TRANSPNOME: TStringField;
    QYComprasCOM_TRANSPORTADORA: TIntegerField;
    QYComprasCOM_USUARIO: TStringField;
    QYComprasCOM_VALORDESPACES: TFMTBCDField;
    QYComprasCOM_VALORFRETE: TFMTBCDField;
    QYComprasCOM_VALORSEGURO: TFMTBCDField;
    QYComprasCOM_VALORTOTAL: TFMTBCDField;
    QYComprasCOM_VEICULOPLACA: TStringField;
    QYComprasCOM_VEICULOPLACAUF: TStringField;
    QYComprasCOM_VEICULORNTC: TStringField;
    QYComprasCOM_VOLUMES: TIntegerField;
    QYComprasCOM_VOLUMESNUM: TStringField;
    QYComprasCPG_DESCRICAO: TStringField;
    TRComprasItens: TFDTransaction;
    UPComprasItens: TFDUpdateSQL;
    QYComprasItens: TFDQuery;
    QYComprasItensCOI_ALIQCOFINS: TFMTBCDField;
    QYComprasItensCOI_ALIQCOFINSST: TFMTBCDField;
    QYComprasItensCOI_ALIQFCP: TFMTBCDField;
    QYComprasItensCOI_ALIQICMS: TFMTBCDField;
    QYComprasItensCOI_ALIQICMSADICST: TFMTBCDField;
    QYComprasItensCOI_ALIQICMSINTER: TFMTBCDField;
    QYComprasItensCOI_ALIQICMSINTERPART: TFMTBCDField;
    QYComprasItensCOI_ALIQICMSRED: TFMTBCDField;
    QYComprasItensCOI_ALIQICMSST: TFMTBCDField;
    QYComprasItensCOI_ALIQIPI: TFMTBCDField;
    QYComprasItensCOI_ALIQISS: TFMTBCDField;
    QYComprasItensCOI_ALIQPIS: TFMTBCDField;
    QYComprasItensCOI_ALIQPISST: TFMTBCDField;
    QYComprasItensCOI_ALMOXARIFADO: TIntegerField;
    QYComprasItensCOI_BASECOFINS: TFMTBCDField;
    QYComprasItensCOI_BASECOFINSST: TFMTBCDField;
    QYComprasItensCOI_BASEICMS: TFMTBCDField;
    QYComprasItensCOI_BASEICMSRED: TFMTBCDField;
    QYComprasItensCOI_BASEICMSST: TFMTBCDField;
    QYComprasItensCOI_BASEIPI: TFMTBCDField;
    QYComprasItensCOI_BASEISS: TFMTBCDField;
    QYComprasItensCOI_BASEPIS: TFMTBCDField;
    QYComprasItensCOI_BASEPISST: TFMTBCDField;
    QYComprasItensCOI_CEST: TStringField;
    QYComprasItensCOI_CFOP: TIntegerField;
    QYComprasItensCOI_CIDADEISS: TIntegerField;
    QYComprasItensCOI_CLASSFISCAL: TStringField;
    QYComprasItensCOI_CODIGO: TIntegerField;
    QYComprasItensCOI_CODIGOBARRAS: TStringField;
    QYComprasItensCOI_COMPLEMENTO: TStringField;
    QYComprasItensCOI_COMPOEBASEICMS: TStringField;
    QYComprasItensCOI_COMPOEBASEICMSST: TStringField;
    QYComprasItensCOI_COMPRA: TIntegerField;
    QYComprasItensCOI_CONVERSAO: TFMTBCDField;
    QYComprasItensCOI_CSTCOFINS: TIntegerField;
    QYComprasItensCOI_CSTICMS: TIntegerField;
    QYComprasItensCOI_CSTIPI: TIntegerField;
    QYComprasItensCOI_CSTPIS: TIntegerField;
    QYComprasItensCOI_DESCPORC: TFMTBCDField;
    QYComprasItensCOI_DESCRICAO: TStringField;
    QYComprasItensCOI_DESCVALOR: TFMTBCDField;
    QYComprasItensCOI_ENQUADRAMENTOIPI: TIntegerField;
    QYComprasItensCOI_EXCECAO: TIntegerField;
    QYComprasItensCOI_FCI: TStringField;
    QYComprasItensCOI_INCENTIVOISS: TStringField;
    QYComprasItensCOI_INDICADORISS: TStringField;
    QYComprasItensCOI_INFOADICIONAL: TMemoField;
    QYComprasItensCOI_MODICMS: TStringField;
    QYComprasItensCOI_MODICMSST: TStringField;
    QYComprasItensCOI_ORIGEM: TStringField;
    QYComprasItensCOI_PAISISS: TIntegerField;
    QYComprasItensCOI_PESO: TFMTBCDField;
    QYComprasItensCOI_PESOTOTAL: TFMTBCDField;
    QYComprasItensCOI_PROCESSOISS: TStringField;
    QYComprasItensCOI_PRODUTO: TIntegerField;
    QYComprasItensCOI_PRODUTOREAL: TIntegerField;
    QYComprasItensCOI_QUANTIDADE: TFMTBCDField;
    QYComprasItensCOI_SERVICOISS: TStringField;
    QYComprasItensCOI_TIPO: TStringField;
    QYComprasItensCOI_TIPOISS: TStringField;
    QYComprasItensCOI_UNIDADE: TStringField;
    QYComprasItensCOI_VALORACESSORIAS: TFMTBCDField;
    QYComprasItensCOI_VALORCOFINS: TFMTBCDField;
    QYComprasItensCOI_VALORCOFINSST: TFMTBCDField;
    QYComprasItensCOI_VALORFCP: TFMTBCDField;
    QYComprasItensCOI_VALORFRETE: TFMTBCDField;
    QYComprasItensCOI_VALORICMS: TFMTBCDField;
    QYComprasItensCOI_VALORICMSCREDSN: TFMTBCDField;
    QYComprasItensCOI_VALORICMSST: TFMTBCDField;
    QYComprasItensCOI_VALORICMSUFDEST: TFMTBCDField;
    QYComprasItensCOI_VALORICMSUFREMET: TFMTBCDField;
    QYComprasItensCOI_VALORIPI: TFMTBCDField;
    QYComprasItensCOI_VALORISS: TFMTBCDField;
    QYComprasItensCOI_VALORISSDEDUCAO: TFMTBCDField;
    QYComprasItensCOI_VALORISSDESCCOND: TFMTBCDField;
    QYComprasItensCOI_VALORISSDESCINCOND: TFMTBCDField;
    QYComprasItensCOI_VALORISSOUTROS: TFMTBCDField;
    QYComprasItensCOI_VALORISSRETENCAO: TFMTBCDField;
    QYComprasItensCOI_VALORPIS: TFMTBCDField;
    QYComprasItensCOI_VALORPISST: TFMTBCDField;
    QYComprasItensCOI_VALORSEGURO: TFMTBCDField;
    QYComprasItensCOI_VALORTOTAL: TFMTBCDField;
    QYComprasItensCOI_VALORTOTALBRUTO: TFMTBCDField;
    QYComprasItensCOI_VALORTRIBUTOS: TFMTBCDField;
    QYComprasItensCOI_VALORTRIBUTOSEST: TFMTBCDField;
    QYComprasItensCOI_VALORTRIBUTOSFED: TFMTBCDField;
    QYComprasItensCOI_VALORTRIBUTOSIMP: TFMTBCDField;
    QYComprasItensCOI_VALORTRIBUTOSMUN: TFMTBCDField;
    QYComprasItensCOI_VALORUNIT: TFMTBCDField;
    QYComprasItensCLF_DESCRICAO: TStringField;
    QYComprasItensICM_CALCULACREDITOSN: TStringField;
    QYComprasItensICM_DESCRICAO: TStringField;
    QYComprasItensIPI_DESCRICAO: TStringField;
    QYComprasItensISS_DESCRICAO: TStringField;
    QYComprasItensNAT_CALCULACREDITOSN: TStringField;
    QYComprasItensNAT_DESCRICAO: TStringField;
    QYComprasItensPIS_DESCRICAO: TStringField;
    QYComprasItensPIS_DESCRICAO1: TStringField;
    QYComprasItensPRO_NOME: TStringField;
    Label90: TLabel;
    DBEdit83: TDBEdit;
    ImportarArquivoXMLDUIMP1: TMenuItem;
    BitBtn7: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit26KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure FinalizarCompra1Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarCompraNoContasAPagar1Click(Sender: TObject);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure Ajuda2Click(Sender: TObject);
    procedure ComprasNoPeriodoPorFornecedorSintetico1Click(Sender: TObject);
    procedure ImprimirPedidoDeCompras1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit58Exit(Sender: TObject);
    procedure DBEdit58KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton19Click(Sender: TObject);
    procedure CancelarCompra1Click(Sender: TObject);
    procedure ComprasNoPeriodoPorProduto1Click(Sender: TObject);
    procedure ComprasNoPeriodoPorFornecedorAnalitico1Click(Sender: TObject);
    procedure EnviarPedidoPorEmail1Click(Sender: TObject);
    procedure ImportarArquivoXMLNFe1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
    procedure DuplicarPedido1Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit58Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure FrequenciaDeCompras1Click(Sender: TObject);
    procedure InutilizarCompra1Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure ComprasNoPeriodoSintetico1Click(Sender: TObject);
    procedure ComprasNoPeriodoAnalitico1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ComprasNoPeriodoPorProdutoComComplemento1Click(Sender: TObject);
    procedure DBEdit83KeyPress(Sender: TObject; var Key: Char);
    procedure ImportarArquivoXMLDUIMP1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GerarEmailCompra;
  public
    { Public declarations }
  end;

var
  FormCompras: TFormCompras;

implementation
uses DataMod, ProdutosLoc, FornecedoresLoc, ShellAPI,
  ComprasLoc, ComprasItens, Main, Produtos, Funcoes1, FuncoesFirenet,
  Condicoes, Fornecedores, Pagar, ComprasFinalizar, ComprasRel, NaturezasLoc,
  ComprasCancelar, PagarLoc, DataModSearch, ComprasImportarXML,
  ComprasAlterarFreteSeguroAcessorias, ComprasAlterarDesconto, Naturezas,
  DataMod2, Emails, EmailsEnviar, ImportarXMLNFe, ComprasFast, ComprasAlterarProdutos,
  Duimp;

{$R *.dfm}

procedure TFormCompras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBCompras.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCompras.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCompras.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCompras.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasLoc, FormComprasLoc);
  FormComprasLoc.ShowModal;
  if ComprasLoc.Procurar then
  begin
    DM.TBCompras.Close;
    DM.TBCompras.ParamByName('codigo').AsInteger:=FormComprasLoc.QYComprasCOM_CODIGO.Value;
    DM.TBCompras.Open;

    DM.TBComprasItens.Close;
    DM.TBComprasItens.Open;
  end;
  FormComprasLoc.Free;
  FormComprasLoc:=nil;
end;

procedure TFormCompras.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormCompras.DuplicarPedido1Click(Sender: TObject);
var NovoCodigo: Integer;
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');

  if MessageDlg('Duplicar pedido de compra?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCompras.DisableControls;
    DM.TBComprasItens.DisableControls;

    QYCompras.Open; //foi colocado ibdataset para nao gerar os totais da nota e impedir de dar a msg de venda já finaliza.
    QYComprasItens.Open;
    QYCompras.Insert;
    {$REGION 'CAPA COMPRA'}
    QYComprasCOM_ALIQICMSCREDSN.Value:=DM.TBComprasCOM_ALIQICMSCREDSN.Value;
    QYComprasCOM_BAIRRO.Value:=DM.TBComprasCOM_BAIRRO.Value;
    //QYComprasCOM_BAIXADATA.Value:=DM.TBComprasCOM_BAIXADATA.Value;
    //QYComprasCOM_BAIXAPOR.Value:=DM.TBComprasCOM_BAIXAPOR.Value;
    QYComprasCOM_BASECOFINS.Value:=DM.TBComprasCOM_BASECOFINS.Value;
    QYComprasCOM_BASECOFINSST.Value:=DM.TBComprasCOM_BASECOFINSST.Value;
    QYComprasCOM_BASEICMS.Value:=DM.TBComprasCOM_BASEICMS.Value;
    QYComprasCOM_BASEICMSST.Value:=DM.TBComprasCOM_BASEICMSST.Value;
    QYComprasCOM_BASEIPI.Value:=DM.TBComprasCOM_BASEIPI.Value;
    QYComprasCOM_BASEISS.Value:=DM.TBComprasCOM_BASEISS.Value;
    QYComprasCOM_BASEPIS.Value:=DM.TBComprasCOM_BASEPIS.Value;
    QYComprasCOM_BASEPISST.Value:=DM.TBComprasCOM_BASEPISST.Value;
    QYComprasCOM_CALCULARTOTAIS.Value:='S'; //DM.TBComprasCOM_CALCULARTOTAIS.Value;
    QYComprasCOM_CEP.Value:=DM.TBComprasCOM_CEP.Value;
    QYComprasCOM_CFOP.Value:=DM.TBComprasCOM_CFOP.Value;
    QYComprasCOM_CFOPDESC.Value:=DM.TBComprasCOM_CFOPDESC.Value;
    //QYComprasCOM_CHAVEACESSO.Value:=DM.TBComprasCOM_CHAVEACESSO.Value;
    QYComprasCOM_CIDADE.Value:=DM.TBComprasCOM_CIDADE.Value;
    QYComprasCOM_CIDADECODIGO.Value:=DM.TBComprasCOM_CIDADECODIGO.Value;
    QYComprasCOM_CNPJ.Value:=DM.TBComprasCOM_CNPJ.Value;
    //QYComprasCOM_CODIGO.Value:= //generator.
    QYComprasCOM_COMPLEMENTO.Value:=DM.TBComprasCOM_COMPLEMENTO.Value;
    QYComprasCOM_CONDICAO.Value:=DM.TBComprasCOM_CONDICAO.Value;
    QYComprasCOM_CONDICAOMEMO.Value:=DM.TBComprasCOM_CONDICAOMEMO.Value;
    QYComprasCOM_CONTATO.Value:=DM.TBComprasCOM_CONTATO.Value;
    QYComprasCOM_CPF.Value:=DM.TBComprasCOM_CPF.Value;
    QYComprasCOM_DESCPORC.Value:=DM.TBComprasCOM_DESCPORC.Value;
    QYComprasCOM_DESCVALOR.Value:=DM.TBComprasCOM_DESCVALOR.Value;
    QYComprasCOM_DIAPREFERENCIAL.Value:=DM.TBComprasCOM_DIAPREFERENCIAL.Value;
    QYComprasCOM_DTATUALIZACAO.Value:=DM.TBComprasCOM_DTATUALIZACAO.Value;
    QYComprasCOM_DTCADASTRO.Value:=DM.ServerDate;
    QYComprasCOM_DTENTRADA.Value:=DM.TBComprasCOM_DTENTRADA.Value;
    QYComprasCOM_DTPRESTSERVICO.Value:=DM.TBComprasCOM_DTPRESTSERVICO.Value;
    QYComprasCOM_ENDERECO.Value:=DM.TBComprasCOM_ENDERECO.Value;
    QYComprasCOM_ENTRADASAIDA.Value:=DM.TBComprasCOM_ENTRADASAIDA.Value;
    QYComprasCOM_ESPECIE.Value:=DM.TBComprasCOM_ESPECIE.Value;
    QYComprasCOM_ESTADO.Value:=DM.TBComprasCOM_ESTADO.Value;
    QYComprasCOM_ESTADOCODIGO.Value:=DM.TBComprasCOM_ESTADOCODIGO.Value;
    QYComprasCOM_FONE1.Value:=DM.TBComprasCOM_FONE1.Value;
    QYComprasCOM_FORMAPAGTO.Value:=DM.TBComprasCOM_FORMAPAGTO.Value;
    QYComprasCOM_FORNECEDOR.Value:=DM.TBComprasCOM_FORNECEDOR.Value;
    QYComprasCOM_FRETE.Value:=DM.TBComprasCOM_FRETE.Value;
    QYComprasCOM_IE.Value:=DM.TBComprasCOM_IE.Value;
    QYComprasCOM_LACRES.Value:=DM.TBComprasCOM_LACRES.Value;
    QYComprasCOM_MARCA.Value:=DM.TBComprasCOM_MARCA.Value;
    QYComprasCOM_MODELO.Value:=DM.TBComprasCOM_MODELO.Value;
    QYComprasCOM_MOVIMENTAESTOQUE.Value:=DM.TBComprasCOM_MOVIMENTAESTOQUE.Value;
    QYComprasCOM_MOVIMENTAFINANCEIRO.Value:=DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value;
    QYComprasCOM_NOME.Value:=DM.TBComprasCOM_NOME.Value;
    QYComprasCOM_NOTADATA.Value:=DM.TBComprasCOM_NOTADATA.Value;
    QYComprasCOM_NOTANUMERO.Value:=DM.TBComprasCOM_NOTANUMERO.Value;
    QYComprasCOM_NUMERO.Value:=DM.TBComprasCOM_NUMERO.Value;
    QYComprasCOM_OBSERVACOES.Value:=DM.TBComprasCOM_OBSERVACOES.Value;
    QYComprasCOM_PESOBRUTO.Value:=DM.TBComprasCOM_PESOBRUTO.Value;
    QYComprasCOM_PESOLIQ.Value:=DM.TBComprasCOM_PESOLIQ.Value;
    QYComprasCOM_REBOQUEPLACA.Value:=DM.TBComprasCOM_REBOQUEPLACA.Value;
    QYComprasCOM_REBOQUEPLACAUF.Value:=DM.TBComprasCOM_REBOQUEPLACAUF.Value;
    QYComprasCOM_REBOQUERNTC.Value:=DM.TBComprasCOM_REBOQUERNTC.Value;
    QYComprasCOM_RG.Value:=DM.TBComprasCOM_RG.Value;
    QYComprasCOM_SERIE.Value:=DM.TBComprasCOM_SERIE.Value;
    QYComprasCOM_STATUS.Value:='A';
    QYComprasCOM_TOTALCOFINS.Value:=DM.TBComprasCOM_TOTALCOFINS.Value;
    QYComprasCOM_TOTALCOFINSST.Value:=DM.TBComprasCOM_TOTALCOFINSST.Value;
    QYComprasCOM_TOTALFCP.Value:=DM.TBComprasCOM_TOTALFCP.Value;
    QYComprasCOM_TOTALICMS.Value:=DM.TBComprasCOM_TOTALICMS.Value;
    QYComprasCOM_TOTALICMSCREDSN.Value:=DM.TBComprasCOM_TOTALICMSCREDSN.Value;
    QYComprasCOM_TOTALICMSST.Value:=DM.TBComprasCOM_TOTALICMSST.Value;
    QYComprasCOM_TOTALICMSUFDEST.Value:=DM.TBComprasCOM_TOTALICMSUFDEST.Value;
    QYComprasCOM_TOTALICMSUFREMET.Value:=DM.TBComprasCOM_TOTALICMSUFREMET.Value;
    QYComprasCOM_TOTALIPI.Value:=DM.TBComprasCOM_TOTALIPI.Value;
    QYComprasCOM_TOTALISS.Value:=DM.TBComprasCOM_TOTALISS.Value;
    QYComprasCOM_TOTALISSDEDUCAO.Value:=DM.TBComprasCOM_TOTALISSDEDUCAO.Value;
    QYComprasCOM_TOTALISSDESCCOND.Value:=DM.TBComprasCOM_TOTALISSDESCCOND.Value;
    QYComprasCOM_TOTALISSDESCINCOND.Value:=DM.TBComprasCOM_TOTALISSDESCINCOND.Value;
    QYComprasCOM_TOTALISSOUTROS.Value:=DM.TBComprasCOM_TOTALISSOUTROS.Value;
    QYComprasCOM_TOTALISSRETENCAO.Value:=DM.TBComprasCOM_TOTALISSRETENCAO.Value;
    QYComprasCOM_TOTALITENS.Value:=DM.TBComprasCOM_TOTALITENS.Value;
    QYComprasCOM_TOTALPIS.Value:=DM.TBComprasCOM_TOTALPIS.Value;
    QYComprasCOM_TOTALPISST.Value:=DM.TBComprasCOM_TOTALPISST.Value;
    QYComprasCOM_TOTALPRODUTOS.Value:=DM.TBComprasCOM_TOTALPRODUTOS.Value;
    QYComprasCOM_TOTALSERVICOS.Value:=DM.TBComprasCOM_TOTALSERVICOS.Value;
    QYComprasCOM_TOTALTRIBUTOS.Value:=DM.TBComprasCOM_TOTALTRIBUTOS.Value;
    QYComprasCOM_TOTALTRIBUTOSEST.Value:=DM.TBComprasCOM_TOTALTRIBUTOSEST.Value;
    QYComprasCOM_TOTALTRIBUTOSFED.Value:=DM.TBComprasCOM_TOTALTRIBUTOSFED.Value;
    QYComprasCOM_TOTALTRIBUTOSIMP.Value:=DM.TBComprasCOM_TOTALTRIBUTOSIMP.Value;
    QYComprasCOM_TOTALTRIBUTOSMUN.Value:=DM.TBComprasCOM_TOTALTRIBUTOSMUN.Value;
    QYComprasCOM_TRANSPCIDADE.Value:=DM.TBComprasCOM_TRANSPCIDADE.Value;
    QYComprasCOM_TRANSPCNPJ.Value:=DM.TBComprasCOM_TRANSPCNPJ.Value;
    QYComprasCOM_TRANSPCPF.Value:=DM.TBComprasCOM_TRANSPCPF.Value;
    QYComprasCOM_TRANSPENDERECO.Value:=DM.TBComprasCOM_TRANSPENDERECO.Value;
    QYComprasCOM_TRANSPESTADO.Value:=DM.TBComprasCOM_TRANSPESTADO.Value;
    QYComprasCOM_TRANSPFONE.Value:=DM.TBComprasCOM_TRANSPFONE.Value;
    QYComprasCOM_TRANSPIE.Value:=DM.TBComprasCOM_TRANSPIE.Value;
    QYComprasCOM_TRANSPNOME.Value:=DM.TBComprasCOM_TRANSPNOME.Value;
    QYComprasCOM_TRANSPORTADORA.Value:=DM.TBComprasCOM_TRANSPORTADORA.Value;
    QYComprasCOM_USUARIO.Value:=DM.TBComprasCOM_USUARIO.Value;
    QYComprasCOM_VALORDESPACES.Value:=DM.TBComprasCOM_VALORDESPACES.Value;
    QYComprasCOM_VALORFRETE.Value:=DM.TBComprasCOM_VALORFRETE.Value;
    QYComprasCOM_VALORSEGURO.Value:=DM.TBComprasCOM_VALORSEGURO.Value;
    QYComprasCOM_VALORTOTAL.Value:=DM.TBComprasCOM_VALORTOTAL.Value;
    QYComprasCOM_VEICULOPLACA.Value:=DM.TBComprasCOM_VEICULOPLACA.Value;
    QYComprasCOM_VEICULOPLACAUF.Value:=DM.TBComprasCOM_VEICULOPLACAUF.Value;
    QYComprasCOM_VEICULORNTC.Value:=DM.TBComprasCOM_VEICULORNTC.Value;
    QYComprasCOM_VOLUMES.Value:=DM.TBComprasCOM_VOLUMES.Value;
    QYComprasCOM_VOLUMESNUM.Value:=DM.TBComprasCOM_VOLUMESNUM.Value;
    {$ENDREGION}
    QYCompras.Post;
    NovoCodigo:=QYComprasCOM_CODIGO.Value;
    DM.TBComprasItens.First;
    while not DM.TBComprasItens.Eof do
    begin
      QYComprasItens.Insert;
      {$REGION 'ITENS COMPRA'}
      //QYComprasItensCOI_CODIGO.Value:=
      QYComprasItensCOI_ALIQCOFINS.Value:=DM.TBComprasItensCOI_ALIQCOFINS.Value;
      QYComprasItensCOI_ALIQCOFINSST.Value:=DM.TBComprasItensCOI_ALIQCOFINSST.Value;
      QYComprasItensCOI_ALIQFCP.Value:=DM.TBComprasItensCOI_ALIQFCP.Value;
      QYComprasItensCOI_ALIQICMS.Value:=DM.TBComprasItensCOI_ALIQICMS.Value;
      QYComprasItensCOI_ALIQICMSADICST.Value:=DM.TBComprasItensCOI_ALIQICMSADICST.Value;
      QYComprasItensCOI_ALIQICMSINTER.Value:=DM.TBComprasItensCOI_ALIQICMSINTER.Value;
      QYComprasItensCOI_ALIQICMSINTERPART.Value:=DM.TBComprasItensCOI_ALIQICMSINTERPART.Value;
      QYComprasItensCOI_ALIQICMSRED.Value:=DM.TBComprasItensCOI_ALIQICMSRED.Value;
      QYComprasItensCOI_ALIQICMSST.Value:=DM.TBComprasItensCOI_ALIQICMSST.Value;
      QYComprasItensCOI_ALIQIPI.Value:=DM.TBComprasItensCOI_ALIQIPI.Value;
      QYComprasItensCOI_ALIQISS.Value:=DM.TBComprasItensCOI_ALIQISS.Value;
      QYComprasItensCOI_ALIQPIS.Value:=DM.TBComprasItensCOI_ALIQPIS.Value;
      QYComprasItensCOI_ALIQPISST.Value:=DM.TBComprasItensCOI_ALIQPISST.Value;
      QYComprasItensCOI_ALMOXARIFADO.Value:=DM.TBComprasItensCOI_ALMOXARIFADO.Value;
      QYComprasItensCOI_BASECOFINS.Value:=DM.TBComprasItensCOI_BASECOFINS.Value;
      QYComprasItensCOI_BASECOFINSST.Value:=DM.TBComprasItensCOI_BASECOFINSST.Value;
      QYComprasItensCOI_BASEICMS.Value:=DM.TBComprasItensCOI_BASEICMS.Value;
      QYComprasItensCOI_BASEICMSRED.Value:=DM.TBComprasItensCOI_BASEICMSRED.Value;
      QYComprasItensCOI_BASEICMSST.Value:=DM.TBComprasItensCOI_BASEICMSST.Value;
      QYComprasItensCOI_BASEIPI.Value:=DM.TBComprasItensCOI_BASEIPI.Value;
      QYComprasItensCOI_BASEISS.Value:=DM.TBComprasItensCOI_BASEISS.Value;
      QYComprasItensCOI_BASEPIS.Value:=DM.TBComprasItensCOI_BASEPIS.Value;
      QYComprasItensCOI_BASEPISST.Value:=DM.TBComprasItensCOI_BASEPISST.Value;
      QYComprasItensCOI_CEST.Value:=DM.TBComprasItensCOI_CEST.Value;
      QYComprasItensCOI_CFOP.Value:=DM.TBComprasItensCOI_CFOP.Value;
      QYComprasItensCOI_CIDADEISS.Value:=DM.TBComprasItensCOI_CIDADEISS.Value;
      QYComprasItensCOI_CLASSFISCAL.Value:=DM.TBComprasItensCOI_CLASSFISCAL.Value;
      //QYComprasItensCOI_CODIGO.Value:= auto incremento.
      QYComprasItensCOI_CODIGOBARRAS.Value:=DM.TBComprasItensCOI_CODIGOBARRAS.Value;
      QYComprasItensCOI_COMPLEMENTO.Value:=DM.TBComprasItensCOI_COMPLEMENTO.Value;
      QYComprasItensCOI_COMPOEBASEICMS.Value:=DM.TBComprasItensCOI_COMPOEBASEICMS.Value;
      QYComprasItensCOI_COMPOEBASEICMSST.Value:=DM.TBComprasItensCOI_COMPOEBASEICMSST.Value;
      QYComprasItensCOI_COMPRA.Value:=NovoCodigo;
      QYComprasItensCOI_CONVERSAO.Value:=DM.TBComprasItensCOI_CONVERSAO.Value;
      QYComprasItensCOI_CSTCOFINS.Value:=DM.TBComprasItensCOI_CSTCOFINS.Value;
      QYComprasItensCOI_CSTICMS.Value:=DM.TBComprasItensCOI_CSTICMS.Value;
      QYComprasItensCOI_CSTIPI.Value:=DM.TBComprasItensCOI_CSTIPI.Value;
      QYComprasItensCOI_CSTPIS.Value:=DM.TBComprasItensCOI_CSTPIS.Value;
      QYComprasItensCOI_DESCPORC.Value:=DM.TBComprasItensCOI_DESCPORC.Value;
      QYComprasItensCOI_DESCRICAO.Value:=DM.TBComprasItensCOI_DESCRICAO.Value;
      QYComprasItensCOI_DESCVALOR.Value:=DM.TBComprasItensCOI_DESCVALOR.Value;
      QYComprasItensCOI_FCI.Value:=DM.TBComprasItensCOI_FCI.Value;
      QYComprasItensCOI_INCENTIVOISS.Value:=DM.TBComprasItensCOI_INCENTIVOISS.Value;
      QYComprasItensCOI_INDICADORISS.Value:=DM.TBComprasItensCOI_INDICADORISS.Value;
      QYComprasItensCOI_INFOADICIONAL.Value:=DM.TBComprasItensCOI_INFOADICIONAL.Value;
      QYComprasItensCOI_MODICMS.Value:=DM.TBComprasItensCOI_MODICMS.Value;
      QYComprasItensCOI_MODICMSST.Value:=DM.TBComprasItensCOI_MODICMSST.Value;
      QYComprasItensCOI_ORIGEM.Value:=DM.TBComprasItensCOI_ORIGEM.Value;
      QYComprasItensCOI_PAISISS.Value:=DM.TBComprasItensCOI_PAISISS.Value;
      QYComprasItensCOI_PESO.Value:=DM.TBComprasItensCOI_PESO.Value;
      QYComprasItensCOI_PESOTOTAL.Value:=DM.TBComprasItensCOI_PESOTOTAL.Value;
      QYComprasItensCOI_PROCESSOISS.Value:=DM.TBComprasItensCOI_PROCESSOISS.Value;
      QYComprasItensCOI_PRODUTO.Value:=DM.TBComprasItensCOI_PRODUTO.Value;
      QYComprasItensCOI_PRODUTOREAL.Value:=DM.TBComprasItensCOI_PRODUTOREAL.Value;
      QYComprasItensCOI_QUANTIDADE.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value;
      QYComprasItensCOI_SERVICOISS.Value:=DM.TBComprasItensCOI_SERVICOISS.Value;
      QYComprasItensCOI_TIPO.Value:=DM.TBComprasItensCOI_TIPO.Value;
      QYComprasItensCOI_TIPOISS.Value:=DM.TBComprasItensCOI_TIPOISS.Value;
      QYComprasItensCOI_UNIDADE.Value:=DM.TBComprasItensCOI_UNIDADE.Value;
      QYComprasItensCOI_VALORACESSORIAS.Value:=DM.TBComprasItensCOI_VALORACESSORIAS.Value;
      QYComprasItensCOI_VALORCOFINS.Value:=DM.TBComprasItensCOI_VALORCOFINS.Value;
      QYComprasItensCOI_VALORCOFINSST.Value:=DM.TBComprasItensCOI_VALORCOFINSST.Value;
      QYComprasItensCOI_VALORFCP.Value:=DM.TBComprasItensCOI_VALORFCP.Value;
      QYComprasItensCOI_VALORFRETE.Value:=DM.TBComprasItensCOI_VALORFRETE.Value;
      QYComprasItensCOI_VALORICMS.Value:=DM.TBComprasItensCOI_VALORICMS.Value;
      QYComprasItensCOI_VALORICMSCREDSN.Value:=DM.TBComprasItensCOI_VALORICMSCREDSN.Value;
      QYComprasItensCOI_VALORICMSST.Value:=DM.TBComprasItensCOI_VALORICMSST.Value;
      QYComprasItensCOI_VALORICMSUFDEST.Value:=DM.TBComprasItensCOI_VALORICMSUFDEST.Value;
      QYComprasItensCOI_VALORICMSUFREMET.Value:=DM.TBComprasItensCOI_VALORICMSUFREMET.Value;
      QYComprasItensCOI_VALORIPI.Value:=DM.TBComprasItensCOI_VALORIPI.Value;
      QYComprasItensCOI_VALORISS.Value:=DM.TBComprasItensCOI_VALORISS.Value;
      QYComprasItensCOI_VALORISSDEDUCAO.Value:=DM.TBComprasItensCOI_VALORISSDEDUCAO.Value;
      QYComprasItensCOI_VALORISSDESCCOND.Value:=DM.TBComprasItensCOI_VALORISSDESCCOND.Value;
      QYComprasItensCOI_VALORISSDESCINCOND.Value:=DM.TBComprasItensCOI_VALORISSDESCINCOND.Value;
      QYComprasItensCOI_VALORISSOUTROS.Value:=DM.TBComprasItensCOI_VALORISSOUTROS.Value;
      QYComprasItensCOI_VALORISSRETENCAO.Value:=DM.TBComprasItensCOI_VALORISSRETENCAO.Value;
      QYComprasItensCOI_VALORPIS.Value:=DM.TBComprasItensCOI_VALORPIS.Value;
      QYComprasItensCOI_VALORPISST.Value:=DM.TBComprasItensCOI_VALORPISST.Value;
      QYComprasItensCOI_VALORSEGURO.Value:=DM.TBComprasItensCOI_VALORSEGURO.Value;
      QYComprasItensCOI_VALORTOTAL.Value:=DM.TBComprasItensCOI_VALORTOTAL.Value;
      QYComprasItensCOI_VALORTOTALBRUTO.Value:=DM.TBComprasItensCOI_VALORTOTALBRUTO.Value;
      QYComprasItensCOI_VALORTRIBUTOS.Value:=DM.TBComprasItensCOI_VALORTRIBUTOS.Value;
      QYComprasItensCOI_VALORTRIBUTOSEST.Value:=DM.TBComprasItensCOI_VALORTRIBUTOSEST.Value;
      QYComprasItensCOI_VALORTRIBUTOSFED.Value:=DM.TBComprasItensCOI_VALORTRIBUTOSFED.Value;
      QYComprasItensCOI_VALORTRIBUTOSIMP.Value:=DM.TBComprasItensCOI_VALORTRIBUTOSIMP.Value;
      QYComprasItensCOI_VALORTRIBUTOSMUN.Value:=DM.TBComprasItensCOI_VALORTRIBUTOSMUN.Value;
      QYComprasItensCOI_VALORUNIT.Value:=DM.TBComprasItensCOI_VALORUNIT.Value;
      {$ENDREGION}
      QYComprasItens.Post;
      DM.TBComprasItens.Next;
    end;
    //localiza a nova compra e calcula os totais.
    DM.TBCompras.Close;
    DM.TBCompras.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBCompras.Open;
    DM.CalcularTotaisCompra(True);
    //...
    QYCompras.Close;
    QYComprasItens.Close;

    DM.TBComprasItens.EnableControls;
    DM.TBCompras.EnableControls;

    DM.TBComprasItens.Close;
    DM.TBCompras.Close;
    DM.TBCompras.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBCompras.Open;
    DM.TBComprasItens.Open;
    MessageDlg('Pedido de compra duplicado com sucesso! Código: '+IntToStr(NovoCodigo),mtInformation,[mbOk],0);
  end;
end;

procedure TFormCompras.DBEdit26Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCompras.DBEdit26Exit(Sender: TObject);
begin
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBComprasCOM_TRANSPORTADORA.Clear;
    DM.TBComprasCOM_TRANSPNOME.Clear;
    DM.TBComprasCOM_TRANSPCNPJ.Clear;
    DM.TBComprasCOM_TRANSPCPF.Clear;
    DM.TBComprasCOM_TRANSPIE.Clear;
    DM.TBComprasCOM_TRANSPCIDADE.Clear;
    DM.TBComprasCOM_TRANSPESTADO.Clear;
    DM.TBComprasCOM_TRANSPENDERECO.Clear;
    DM.TBComprasCOM_TRANSPFONE.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM.TBComprasCOM_TRANSPORTADORA.Value:=DMS.QYFornecedoresFOR_CODIGO.Value;
      DM.TBComprasCOM_TRANSPNOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM.TBComprasCOM_TRANSPCNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
      DM.TBComprasCOM_TRANSPCPF.Value:=DMS.QYFornecedoresFOR_CPF.Value;
      DM.TBComprasCOM_TRANSPIE.Value:=DMS.QYFornecedoresFOR_IE.Value;
      DM.TBComprasCOM_TRANSPCIDADE.Value:=DMS.QYFornecedoresFOR_CIDADE.Value;
      DM.TBComprasCOM_TRANSPESTADO.Value:=DMS.QYFornecedoresFOR_ESTADO.Value;
      DM.TBComprasCOM_TRANSPENDERECO.Value:=DMS.QYFornecedoresFOR_ENDERECO.Value;
      DM.TBComprasCOM_TRANSPFONE.Value:=DMS.QYFornecedoresFOR_FONE1.Value;
    end else
    begin
      DM.TBComprasCOM_TRANSPORTADORA.Clear;
      DM.TBComprasCOM_TRANSPNOME.Clear;
      DM.TBComprasCOM_TRANSPCNPJ.Clear;
      DM.TBComprasCOM_TRANSPCPF.Clear;
      DM.TBComprasCOM_TRANSPIE.Clear;
      DM.TBComprasCOM_TRANSPCIDADE.Clear;
      DM.TBComprasCOM_TRANSPESTADO.Clear;
      DM.TBComprasCOM_TRANSPENDERECO.Clear;
      DM.TBComprasCOM_TRANSPFONE.Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormCompras.DBEdit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormCompras.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCompras.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBComprasCOM_DTENTRADA.Clear;
end;

procedure TFormCompras.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_TRANSPORTADORA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
    DM.TBComprasCOM_TRANSPNOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBComprasCOM_TRANSPCNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBComprasCOM_TRANSPCPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBComprasCOM_TRANSPIE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBComprasCOM_TRANSPCIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBComprasCOM_TRANSPESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBComprasCOM_TRANSPENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBComprasCOM_TRANSPFONE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormCompras.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCompras.DBEdit4Exit(Sender: TObject);
begin
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBComprasCOM_BAIRRO.Clear;
    DM.TBComprasCOM_CIDADE.Clear;
    DM.TBComprasCOM_CIDADECODIGO.Clear;
    DM.TBComprasCOM_CEP.Clear;
    DM.TBComprasCOM_CNPJ.Clear;
    DM.TBComprasCOM_COMPLEMENTO.Clear;
    DM.TBComprasCOM_CONTATO.Clear;
    DM.TBComprasCOM_CPF.Clear;
    DM.TBComprasCOM_ENDERECO.Clear;
    DM.TBComprasCOM_ESTADO.Clear;
    DM.TBComprasCOM_ESTADOCODIGO.Clear;
    DM.TBComprasCOM_FONE1.Clear;
    DM.TBComprasCOM_FORNECEDOR.Clear;
    DM.TBComprasCOM_IE.Clear;
    DM.TBComprasCOM_NOME.Clear;
    DM.TBComprasCOM_NUMERO.Clear;
    DM.TBComprasCOM_RG.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM.TBComprasCOM_BAIRRO.Value:=DMS.QYFornecedoresFOR_BAIRRO.Value;
      DM.TBComprasCOM_CIDADE.Value:=DMS.QYFornecedoresFOR_CIDADE.Value;
      DM.TBComprasCOM_CIDADECODIGO.Value:=DMS.QYFornecedoresFOR_CIDADECODIGO.Value;
      DM.TBComprasCOM_FORNECEDOR.Value:=DMS.QYFornecedoresFOR_CODIGO.Value;
      DM.TBComprasCOM_NOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM.TBComprasCOM_ENDERECO.Value:=DMS.QYFornecedoresFOR_ENDERECO.Value;

      DM.TBComprasCOM_ESTADO.Value:=DMS.QYFornecedoresFOR_ESTADO.Value;
      DM.TBComprasCOM_CEP.Value:=DMS.QYFornecedoresFOR_CEP.Value;
      DM.TBComprasCOM_CNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
      DM.TBComprasCOM_IE.Value:=DMS.QYFornecedoresFOR_IE.Value;
      DM.TBComprasCOM_CPF.Value:=DMS.QYFornecedoresFOR_CPF.Value;
      DM.TBComprasCOM_RG.Value:=DMS.QYFornecedoresFOR_RG.Value;
      DM.TBComprasCOM_FONE1.Value:=DMS.QYFornecedoresFOR_FONE1.Value;
      DM.TBComprasCOM_CONTATO.Value:=DMS.QYFornecedoresFOR_CONTATO.Value;
      DM.TBComprasCOM_COMPLEMENTO.Value:=DMS.QYFornecedoresFOR_COMPLEMENTO.Value;
      DM.TBComprasCOM_NUMERO.Value:=DMS.QYFornecedoresFOR_NUMERO.Value;
    end else
    begin
      DM.TBComprasCOM_FORNECEDOR.Clear;
      DM.TBComprasCOM_NOME.Clear;
      DM.TBComprasCOM_ENDERECO.Clear;
      DM.TBComprasCOM_BAIRRO.Clear;
      DM.TBComprasCOM_CIDADE.Clear;
      DM.TBComprasCOM_ESTADO.Clear;
      DM.TBComprasCOM_CEP.Clear;
      DM.TBComprasCOM_CNPJ.Clear;
      DM.TBComprasCOM_IE.Clear;
      DM.TBComprasCOM_CPF.Clear;
      DM.TBComprasCOM_RG.Clear;
      DM.TBComprasCOM_FONE1.Clear;
      DM.TBComprasCOM_CONTATO.Clear;
      DM.TBComprasCOM_COMPLEMENTO.Clear;
      DM.TBComprasCOM_NUMERO.Clear;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormCompras.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormCompras.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCompras.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBComprasCOM_NOTADATA.Clear;
end;

procedure TFormCompras.DBEdit58Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCompras.DBEdit58Exit(Sender: TObject);
begin
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBComprasCOM_CFOP.Clear;
    DM.TBComprasCOM_CFOPDESC.Clear;
    DM.TBComprasCOM_ENTRADASAIDA.Clear;
    DM.TBComprasCOM_MOVIMENTAESTOQUE.Clear;
    DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:='S';
    DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBComprasCOM_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBComprasCOM_CFOPDESC.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBComprasCOM_ENTRADASAIDA.Value:=DMS.QYNaturezasNAT_ENTRADASAIDA.Value;
      DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:=DMS.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
      DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:=DMS.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
    end else
    begin
      DM.TBComprasCOM_CFOP.Clear;
      DM.TBComprasCOM_CFOPDESC.Clear;
      DM.TBComprasCOM_ENTRADASAIDA.Clear;
      DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:='S';
      DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormCompras.DBEdit58KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton19.Click;
end;

procedure TFormCompras.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCompras.DBEdit83KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBComprasCOM_DTENTREGA.Clear;
end;

procedure TFormCompras.SpeedButton19Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBComprasCOM_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBComprasCOM_ENTRADASAIDA.Value:=FormNaturezasLoc.QYNaturezasNAT_ENTRADASAIDA.Value;
    DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
    DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormCompras.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_FORNECEDOR.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
    DM.TBComprasCOM_NOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBComprasCOM_ENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBComprasCOM_BAIRRO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_BAIRRO.Value;
    DM.TBComprasCOM_CIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBComprasCOM_ESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBComprasCOM_CEP.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CEP.Value;
    DM.TBComprasCOM_CNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBComprasCOM_IE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBComprasCOM_CPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBComprasCOM_RG.Value:=FormFornecedoresLoc.QYFornecedoresFOR_RG.Value;
    DM.TBComprasCOM_FONE1.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
    DM.TBComprasCOM_CONTATO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CONTATO.Value;
    DM.TBComprasCOM_COMPLEMENTO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_COMPLEMENTO.Value;
    DM.TBComprasCOM_NUMERO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NUMERO.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormCompras.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM.TBCompras.State in [dsInsert, dsEdit] then
          try
            DM.TBCompras.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormCompras.PngBitBtn2Click(Sender: TObject);
begin
  MessageDlg('Função não disponível nesta tela.',mtInformation,[mbOk],0);
  Exit;
  //fazer essa funcao.
//  AbortIf(DM.TBVendasItens.IsEmpty,'Não existem itens nesse pedido.');
//
//  RecriarSequencialItens(DM.TBComprasCOM_CODIGO.Value);
//
//  DM.TBComprasItens.Close;
//  DM.TBCompras.Close;
//  DM.TBCompras.Open;
//  DM.TBComprasItens.Open;
end;

procedure TFormCompras.PngSpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasItens.IsEmpty,'Este pedido de compra não contém itens.');

  Application.CreateForm(TFormComprasAlterarDesconto, FormComprasAlterarDesconto);
  DescontoEmValor:=False;
  FormComprasAlterarDesconto.Edit1.Text:=DM.TBComprasCOM_DESCPORC.AsString;
  FormComprasAlterarDesconto.ShowModal;
  FormComprasAlterarDesconto.Free;
  FormComprasAlterarDesconto:=nil;
end;

procedure TFormCompras.PngSpeedButton5Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasItens.IsEmpty,'Este pedido de compra não contém itens.');

  Application.CreateForm(TFormComprasAlterarDesconto, FormComprasAlterarDesconto);
  DescontoEmValor:=True;
  FormComprasAlterarDesconto.Label1.Caption:='Valor do Desconto:';
  FormComprasAlterarDesconto.Edit1.Text:=DM.TBComprasCOM_DESCVALOR.AsString;
  FormComprasAlterarDesconto.ShowModal;
  FormComprasAlterarDesconto.Free;
  FormComprasAlterarDesconto:=nil;
end;

procedure TFormCompras.PngSpeedButton6Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasItens.IsEmpty,'Este pedido de compra não contém itens.');

  Application.CreateForm(TFormComprasAlterarFreteSeguroAcessorias, FormComprasAlterarFreteSeguroAcessorias);
  Campo:='FRETE';
  FormComprasAlterarFreteSeguroAcessorias.Caption:='Alterar Frete';
  FormComprasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Frete:';
  FormComprasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORFRETE.AsString;
  FormComprasAlterarFreteSeguroAcessorias.ShowModal;
  FormComprasAlterarFreteSeguroAcessorias.Free;
  FormComprasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormCompras.PngSpeedButton7Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasItens.IsEmpty,'Este pedido de compra não contém itens.');

  Application.CreateForm(TFormComprasAlterarFreteSeguroAcessorias, FormComprasAlterarFreteSeguroAcessorias);
  Campo:='SEGURO';
  FormComprasAlterarFreteSeguroAcessorias.Caption:='Alterar Seguro';
  FormComprasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Seguro:';
  FormComprasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORSEGURO.AsString;
  FormComprasAlterarFreteSeguroAcessorias.ShowModal;
  FormComprasAlterarFreteSeguroAcessorias.Free;
  FormComprasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormCompras.PngSpeedButton8Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasItens.IsEmpty,'Este pedido de compra não contém itens.');

  Application.CreateForm(TFormComprasAlterarFreteSeguroAcessorias, FormComprasAlterarFreteSeguroAcessorias);
  Campo:='ACESSORIAS';
  FormComprasAlterarFreteSeguroAcessorias.Caption:='Alterar Desp. Acessórias';
  FormComprasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor das Despesas Acessórias:';
  FormComprasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBVendasVED_VALORDESPACES.AsString;
  FormComprasAlterarFreteSeguroAcessorias.ShowModal;
  FormComprasAlterarFreteSeguroAcessorias.Free;
  FormComprasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormCompras.AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhuma Nota selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value<>'A','Esta Nota não está em aberto.');

  if DM.TBComprasCOM_MOVIMENTAESTOQUE.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Estoque para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:=Copy(S,1,1); //primeira letra.
    DM.TBCompras.Post;
  end;
end;

procedure TFormCompras.AlterarCampoMovimentacaoFinanceiro1Click(
  Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhuma Nota selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value<>'A','Esta Nota não está em aberto.');

  if DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Financeiro para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:=Copy(S,1,1); //primeira letra.
    DM.TBCompras.Post;
  end;
end;

procedure TFormCompras.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhuma compra selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Compra já finalizada.');

  DM.TBComprasItens.Insert;
  Application.CreateForm(TFormComprasItens, FormComprasItens);
  FormComprasItens.ShowModal;
  FormComprasItens.Free;
  FormComprasItens:=nil;
end;

procedure TFormCompras.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM.TBComprasItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Compra já finalizada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBComprasItens.Delete;
    DM.CalcularTotaisCompra(True);
  end;
end;

procedure TFormCompras.BitBtn3Click(Sender: TObject);
begin
  if DM.TBCompras.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBCompras.IsEmpty,            'Nenhuma compra selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Este pedido de compra está finalizado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='C','Este pedido de compra está cancelado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='I','Este pedido de compra está inutilizado.');

  Application.CreateForm(TFormComprasAlterarProdutos, FormComprasAlterarProdutos);
  FormComprasAlterarProdutos.ShowModal;
  FormComprasAlterarProdutos.Free;
  FormComprasAlterarProdutos:=nil;
end;

procedure TFormCompras.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCompras);
end;

procedure TFormCompras.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM.TBComprasItens.IsEmpty,'Não existe nenhum item para editar.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM.TBComprasItens.Edit;
  Application.CreateForm(TFormComprasItens, FormComprasItens);
  FormComprasItens.DBEdit5.Enabled:=False;
  FormComprasItens.DBEdit5.Color:=clBtnFace;
  FormComprasItens.SpeedButton9.Enabled:=False;
  FormComprasItens.DesabilitarCampos; //se status = F ou C ou com protocolo de autorizacao, desabilita campos.
  FormComprasItens.ShowModal;
  FormComprasItens.Free;
  FormComprasItens:=nil;
end;

procedure TFormCompras.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormCompras.CancelarCompra1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,            'Nenhuma compra selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='A','Compra não finalizada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='I','Somente pedido de compra finalizado pode ser cancelado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='C','Compra já cancelada.');

  if MessageDlg('Deseja cancelar a compra?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormComprasCancelar, FormComprasCancelar);
    FormComprasCancelar.ShowModal;
    FormComprasCancelar.Free;
    FormComprasCancelar:=nil;
  end;
end;

procedure TFormCompras.DBEdit24Exit(Sender: TObject);
begin
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and (DM.TBComprasCOM_DESCPORC.Value>0) then
  DM.TBComprasCOM_DESCVALOR.Value:=0;
end;

procedure TFormCompras.DBEdit25Exit(Sender: TObject);
begin
  if (DM.TBCompras.State in [dsInsert, dsEdit]) and (DM.TBComprasCOM_DESCVALOR.Value>0) then
  DM.TBComprasCOM_DESCPORC.Value:=0;
end;

procedure TFormCompras.FinalizarCompra1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBCompras.IsEmpty,            'Nenhuma compra selecionada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Compra já finalizada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='I','Esta compra foi inutilizada.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='C','Esta compra foi cancelada.');

  //checagens do SPED FISCAL. Sabrina chata do caralho.
  if DM.TBParametrosPAR_CHECARSPED.Value='S' then
  begin

    //checagem de CNPJ.
    if not DM.TBComprasCOM_CNPJ.IsNull then
    begin
      S:=Copy(DM.TBComprasCOM_CHAVEACESSO.Value,7,14);
      if S <> LimparFormatacao(DM.TBComprasCOM_CNPJ.Value) then
      begin
        S:=FormatarString('CNPJ',S);
        MessageDlg('O CNPJ contido na chave de acesso não é igual ao CNPJ do fornecedor.'+#13#10#13#10+
        'CNPJ da Chave: '+S+#13#10+
        'CNPJ do Fornecedor: '+DM.TBComprasCOM_CNPJ.Value,mtError,[mbOk],0);
        Exit;
      end;
      AbortIf(Length(DM.TBComprasCOM_CHAVEACESSO.Value)<>44,'O tamanho da chave de acesso não está correto. Verifique o preenchimento do campo.');
    end;

    //verifica se preencheu o numero da nota.
    AbortIf(DM.TBComprasCOM_NOTANUMERO.IsNull,'Preencha o número da nota.');

    //checagem do numero da NF.
    AbortIf(StrToInt(Copy(DM.TBComprasCOM_CHAVEACESSO.Value,26,9)) <> DM.TBComprasCOM_NOTANUMERO.Value,
      'O número da NF nao está batendo com o número contido na chave de acesso.'+#13#10#13#10+
      'Número da chave de acesso: '+Copy(DM.TBComprasCOM_CHAVEACESSO.Value,26,9)+#13#10+
      'Número informado: '+DM.TBComprasCOM_NOTANUMERO.Value.ToString
    );

    //checagem de CFOP da capa.
    AbortIf(
      (Copy(IntToStr(DM.TBComprasCOM_CFOP.Value),1,1) <> '1') and
      (Copy(IntToStr(DM.TBComprasCOM_CFOP.Value),1,1) <> '2') and
      (Copy(IntToStr(DM.TBComprasCOM_CFOP.Value),1,1) <> '3'),
      'CFOP inválido. Para entradas, utilizar CFOP iniciando por 1, 2 ou 3.'
    );

    //checagem de CFOP dos itens.
    DM.TBComprasItens.First;
    while not DM.TBComprasItens.Eof do
    begin
      AbortIf(
        (Copy(IntToStr(DM.TBComprasItensCOI_CFOP.Value),1,1) <> '1') and
        (Copy(IntToStr(DM.TBComprasItensCOI_CFOP.Value),1,1) <> '2') and
        (Copy(IntToStr(DM.TBComprasItensCOI_CFOP.Value),1,1) <> '3'),
        'CFOP inválido. Para entradas, utilizar CFOP iniciando por 1, 2 ou 3.'+#13#10+'Verifique a CFOP dos itens.'
      );
      DM.TBComprasItens.Next;
    end;

    //checagem de CST do IPI dos itens.
    DM.TBComprasItens.First;
    while not DM.TBComprasItens.Eof do
    begin
      AbortIf(DM.TBComprasItensCOI_CSTIPI.Value >= 50,'CST do IPI inválido. Para entradas, utilizar CST do IPI menor que 50.'+#13#10+'Verifique o CST do IPI dos itens.');
      DM.TBComprasItens.Next;
    end;
  end;

  //finalmente...
  if MessageDlg('Finalizar a compra?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormComprasFinalizar, FormComprasFinalizar);
    FormComprasFinalizar.ShowModal;
    FormComprasFinalizar.Free;
    FormComprasFinalizar:=nil;
  end;
end;

procedure TFormCompras.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormCompras.DBEdit30Exit(Sender: TObject);
begin
  LocCondicoesExit(DBEdit30,DBEdit31,DM.TBCompras);
  if not DM.TBComprasCOM_CONDICAO.IsNull then
  BitBtn5.Click;
end;

procedure TFormCompras.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormCompras.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormCompras.SpeedButton7Click(Sender: TObject);
begin
  LocCondicoesBotao(DBEdit30,DBEdit31,DM.TBCompras);
end;

procedure TFormCompras.BitBtn5Click(Sender: TObject);
begin
  DM.SimularCondicaoCompra;
end;

procedure TFormCompras.BitBtn7Click(Sender: TObject);
begin
  if DM.TBCompras.State in [dsInsert, dsEdit] then
  Exit;

  AbortIf(DM.TBComprasItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Este pedido de compra está finalizado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='C','Este pedido de compra está cancelado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value='I','Este pedido de compra está inutilizado.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBComprasItens.First;
    while not DM.TBComprasItens.Eof do
    begin
      DM.TBComprasItens.Delete;
    end;
    DM.CalcularTotaisCompra(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormCompras.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormCompras.InutilizarCompra1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value<>'A','Somente pedidos de compra em ABERTO podem ser inutilizados.');

  if MessageDlg('Deseja inutilizar este pedido de compra?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBCompras.Edit;
    DM.TBComprasCOM_STATUS.Value:='I';
    DM.TBCompras.Post;
  end;
end;

procedure TFormCompras.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormCompras.GerarEmailCompra;
var MM: TMemo;
  PDFFilter: TQRPDFDocumentFilter;
begin
  DM.TBFornecedores.Close;
  DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_FORNECEDOR.Value;
  DM.TBFornecedores.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_COMPRAEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|COM_CODIGO|',IntToStr(DM.TBComprasCOM_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|COM_CONTATO|',DM.TBComprasCOM_CONTATO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|COM_NOME|',DM.TBComprasCOM_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  //Gera o PDF.
  Application.CreateForm(TFormComprasFast, FormComprasFast);
  FormComprasFast.QY01.Close;
  FormComprasFast.QY01.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
  FormComprasFast.QY01a.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
  FormComprasFast.QY01.Open;
  FormComprasFast.QY01a.Open;
  FormComprasFast.frxReport1.Variables['TITULO']:=QuotedStr('Pedido de Compras');
  FormComprasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormComprasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormComprasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormComprasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormComprasFast.frxPDFExport1.FileName:=ExtractFilePath(Application.ExeName)+'\Print\PedidoCompra.pdf';
  FormComprasFast.frxPDFExport1.ShowDialog:=False;
  FormComprasFast.frxReport1.PrintOptions.ShowDialog:=False;
  FormComprasFast.frxReport1.PrepareReport;
  FormComprasFast.frxReport1.Export(FormComprasFast.frxPDFExport1);
  //FormComprasFast.frxReport1.ShowReport;
  FormComprasFast.Free;
  FormComprasFast:=nil;

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=ExtractFilePath(Application.ExeName)+'Print\PedidoCompra.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=1; //DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_COPIAOCULTA.Value:=DM.TBParametrosPAR_COMPRASEMAILBCC.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBFornecedoresFOR_EMAIL.Value;
  if DM.TBFornecedoresFOR_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBFornecedoresFOR_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_HTML.Value:='S';
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  DM2.TBEmailsEMA_MENSAGEM.Value:=DM2.TBEmailsEMA_MENSAGEM.Value+DM2.TBEmailsContasEMC_ASSINATURA.Value;

  //campos derivados.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsCLI_NOME.Value:='FORNECEDOR';
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

procedure TFormCompras.EnviarPedidoPorEmail1Click(Sender: TObject);
var AnexoEmail: TIDAttachmentFile;
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhuma compra selecionada.');

  DM.TBFornecedores.Close;
  DM.TBFornecedores.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_FORNECEDOR.Value;
  DM.TBFornecedores.Open;
  AbortIf(DM.TBFornecedoresFOR_EMAIL.IsNull,'Endereço de email do fornecedor inexistente.');

  GerarEmailCompra;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;

  //Dica retirada de: http://www.devmedia.com.br/articles/viewcomp.asp?comp=1195  //
  {DM.IdMessage1.Recipients.EMailAddresses:=DM.TBFornecedoresFOR_EMAIL.Value;
  DM.IdMessage1.Subject:='Pedido de compra número '+IntToStr(DM.TBComprasCOM_CODIGO.Value);
  DM.IdMessage1.Body.Clear;
  DM.IdMessage1.Body.Add('Segue anexo...');
  AnexoEmail:=TIDAttachmentFile.Create(DM.IdMessage1.MessageParts);
  AnexoEmail.FileName:='ComprasEmail.pdf';
  AnexoEmail.StoredPathName:=ExtractFilePath(Application.ExeName)+'Print\ComprasEmail.pdf';
  DM.IdMessage1.Headers.Add('X-Unsent: 1'); //marca a mensagem como NÃO ENVIADA!!!.
  DM.IdMessage1.SaveToFile(ExtractFilePath(Application.ExeName)+'Print\ComprasEmail.eml');
  ShellExecute(0,'open',PChar(ExtractFilePath(Application.ExeName)+'Print\ComprasEmail.eml'),'','',SW_SHOWNORMAL);
  AnexoEmail.DisposeOf;}
end;

procedure TFormCompras.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormCompras.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormCompras.CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormCompras.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox5);
end;

procedure TFormCompras.LocalizarCompraNoContasAPagar1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhuma compra selecionada.');
  AbortIf((DM.TBComprasCOM_STATUS.Value='A') or (DM.TBComprasCOM_STATUS.Value='I'),'Compra não finalizada ou cancelada.');

  Application.CreateForm(TFormPagarLoc, FormPagarLoc);
  FormPagarLoc.Height:=354;
  FormPagarLoc.QYPagar.SQL.Clear;
  FormPagarLoc.QYPagar.SQL.Add('select * from PAGAR left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO where PAG_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBComprasCOM_CODIGO.Value)+'/%')+' order by PAG_NUMDOCTO, PAG_DTVENCIMENTO');
  FormPagarLoc.QYPagar.Open;
  FormPagarLoc.ShowModal;
  if PagarLoc.Procurar then
  begin
    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=FormPagarLoc.QYPagarPAG_CODIGO.Value;
    DM.TBPagar.Open;
    //liberamos o form antes de abrir o outro form.
    FormPagarLoc.Free;
    FormPagarLoc:=nil;

    Application.CreateForm(TFormPagar, FormPagar);
    FormPagar.ShowModal;
    FormPagar.Free;
    FormPagar:=nil;
  end else
  begin
    FormPagarLoc.Free;
    FormPagarLoc:=nil;
  end;
end;

procedure TFormCompras.N8Click(Sender: TObject);
begin
  Application.CreateForm(TFormImportarXMLNFe, FormImportarXMLNFe);
  FormImportarXMLNFe.ShowModal;
  FormImportarXMLNFe.Free;
  FormImportarXMLNFe:=nil;
end;

procedure TFormCompras.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCompras.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCompras.ComprasNoPeriodoSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=0;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ComprasNoPeriodoAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=1;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ComprasNoPeriodoPorFornecedorSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=2;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ComprasNoPeriodoPorFornecedorAnalitico1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=3;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ComprasNoPeriodoPorProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=4;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ComprasNoPeriodoPorProdutoComComplemento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=5;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.FrequenciaDeCompras1Click(Sender: TObject);
begin
  Application.CreateForm(TFormComprasRel, FormComprasRel);
  FormComprasRel.ComboBox1.Enabled:=False;
  FormComprasRel.ComboBox1.ItemIndex:=6;
  FormComprasRel.ComboBox1Change(Self);
  FormComprasRel.ShowModal;
  FormComprasRel.Free;
  FormComprasRel:=nil;
end;

procedure TFormCompras.ImportarArquivoXMLDUIMP1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value<>'A','Este pedido de compra não está em aberto.');

  Application.CreateForm(TFormDuimp, FormDuimp);
  FormDuimp.ShowModal;
  FormDuimp.Free;
  FormDuimp:=nil;
end;

procedure TFormCompras.ImportarArquivoXMLNFe1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido de compra selecionado.');
  AbortIf(DM.TBComprasCOM_STATUS.Value<>'A','Este pedido de compra não está em aberto.');

  Application.CreateForm(TFormComprasImportarXML, FormComprasImportarXML);
  FormComprasImportarXML.ShowModal;
  FormComprasImportarXML.Free;
  FormComprasImportarXML:=nil;
end;

procedure TFormCompras.ImprimirPedidoDeCompras1Click(Sender: TObject);
begin
  AbortIf(DM.TBCompras.IsEmpty,'Nenhum pedido selecionado.');

  Application.CreateForm(TFormComprasFast, FormComprasFast);
  FormComprasFast.QY01.Close;
  FormComprasFast.QY01.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
  FormComprasFast.QY01a.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CODIGO.Value;
  FormComprasFast.QY01.Open;
  FormComprasFast.QY01a.Open;
  FormComprasFast.frxReport1.Variables['TITULO']:=QuotedStr('Pedido de Compras');
  FormComprasFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  FormComprasFast.frxReport1.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormComprasFast.frxReport1.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormComprasFast.frxReport1.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormComprasFast.frxReport1.ShowReport;
  FormComprasFast.Free;
  FormComprasFast:=nil;
end;

procedure TFormCompras.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

initialization
  RegisterClass(TFormCompras);

finalization
  UnRegisterClass(TFormCompras);

end.
