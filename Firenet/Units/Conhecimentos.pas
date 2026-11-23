unit Conhecimentos;

interface

uses
  Windows, Messages, System.SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Buttons, IDAttachmentFile, PngBitBtn, Grids, DBGrids,
  DBCtrls, Mask, ComCtrls, ImgList, PngImageList, Menus, XMLDoc, PngSpeedButton,
  DBSBtn, ExtCtrls, ACBrCTe, ACBrCTeDACTEClass, xmldom, XMLIntf, msxmldom,
  QRPDFFilt, System.ImageList, ACBrBase, ACBrDFe, System.UITypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormConhecimentos = class(TForm)
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
    FinalizarConhecimento1Button: TPngSpeedButton;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    LocalizarConhecimentoNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    CancelarConhecimento1Button: TPngSpeedButton;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    EnviarCTePorEmail1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    CartaDeCorrecao1Button: TPngSpeedButton;
    Ajuda2Button: TPngSpeedButton;
    Bevel5: TBevel;
    EnviarCTe1Button: TPngSpeedButton;
    InutilizarCTe1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarConhecimentonoContasaReceber1: TMenuItem;
    N4: TMenuItem;
    CancelarConhecimento1: TMenuItem;
    FinalizarConhecimento1: TMenuItem;
    N3: TMenuItem;
    RecriarChavedeAcesso1: TMenuItem;
    GerarArquivoCTe1: TMenuItem;
    ValidarArquivoCTe1: TMenuItem;
    EnviarCTe1: TMenuItem;
    BuscarCTe1: TMenuItem;
    InutilizarCTe1: TMenuItem;
    EnviarCTePorEmail1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    CadastroDeNaturezas1: TMenuItem;
    CadastroDeImpostoICMS1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    EditarRegistro1: TMenuItem;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    DACTE1: TMenuItem;
    N6: TMenuItem;
    CTePorStatus1: TMenuItem;
    Ferramentas1: TMenuItem;
    ConsultarStatusDoServico1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    PngImageList1: TPngImageList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    DBText7: TDBText;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label38: TLabel;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    TabSheet2: TTabSheet;
    Label12: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label47: TLabel;
    DBText8: TDBText;
    Label48: TLabel;
    DBText9: TDBText;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    TabSheet6: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    Memo1: TMemo;
    DBEdit79: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBComboBox8: TDBComboBox;
    Label10: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox9: TDBComboBox;
    Label20: TLabel;
    CadastroDeFrota1: TMenuItem;
    CadastroDeFrota1Button: TPngSpeedButton;
    Label8: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    DBEdit52: TDBEdit;
    Label57: TLabel;
    DBComboBox10: TDBComboBox;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label51: TLabel;
    DBEdit54: TDBEdit;
    Label53: TLabel;
    DBEdit55: TDBEdit;
    Label60: TLabel;
    DBEdit56: TDBEdit;
    Label61: TLabel;
    ACBrCTe1: TACBrCTe;
    DACTE1Button: TPngSpeedButton;
    XMLD: TXMLDocument;
    Label68: TLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    SpeedButton9: TPngSpeedButton;
    DBComboBox13: TDBComboBox;
    Label69: TLabel;
    DBComboBox14: TDBComboBox;
    Label70: TLabel;
    DBEdit64: TDBEdit;
    Label71: TLabel;
    DBEdit65: TDBEdit;
    Label72: TLabel;
    CadastroDeVendedores1Button: TPngSpeedButton;
    CadastroDeVendedores1: TMenuItem;
    TabSheet7: TTabSheet;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    SpeedButton1: TPngSpeedButton;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit39: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit36: TDBEdit;
    GroupBox2: TGroupBox;
    Label105: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label19: TLabel;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    GroupBox5: TGroupBox;
    Label75: TLabel;
    PngSpeedButton9: TPngSpeedButton;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label84: TLabel;
    Label104: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    GroupBox6: TGroupBox;
    Label117: TLabel;
    PngSpeedButton11: TPngSpeedButton;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    DBEdit124: TDBEdit;
    DBEdit125: TDBEdit;
    Label5: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label11: TLabel;
    Label74: TLabel;
    DBEdit5: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit66: TDBEdit;
    Label59: TLabel;
    Label35: TLabel;
    DBMemo3: TDBMemo;
    DBMemo1: TDBMemo;
    GroupBox4: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label73: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    DBComboBox11: TDBComboBox;
    DBEdit58: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit126: TDBEdit;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit127: TDBEdit;
    DBEdit128: TDBEdit;
    Label130: TLabel;
    ArquivosXMLDoCTe1: TMenuItem;
    ArquivosXMLDoCTe1Button: TPngSpeedButton;
    TabSheet5: TTabSheet;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label67: TLabel;
    DBEdit61: TDBEdit;
    DBGrid2: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    RecriarArquivoXMLprocCTe1: TMenuItem;
    RecriarArquivoXMLprocCancCTe1: TMenuItem;
    Label29: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    Label103: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBMemo2: TDBMemo;
    BitBtn5: TPngBitBtn;
    DBComboBox7: TDBComboBox;
    Label66: TLabel;
    DBEdit53: TDBEdit;
    ZiparArquivosXML1: TMenuItem;
    IncluirInfoCarga1: TMenuItem;
    EliminarInfoCarga1: TMenuItem;
    DBText16: TDBText;
    Label131: TLabel;
    Label132: TLabel;
    DBText17: TDBText;
    CTePorRemetente1: TMenuItem;
    CTePorDestinatario1: TMenuItem;
    TabSheet3: TTabSheet;
    Label133: TLabel;
    DBEdit129: TDBEdit;
    Label134: TLabel;
    DBComboBox12: TDBComboBox;
    Label135: TLabel;
    DBEdit130: TDBEdit;
    Label136: TLabel;
    DBEdit131: TDBEdit;
    DBEdit132: TDBEdit;
    Label137: TLabel;
    Label138: TLabel;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    Label139: TLabel;
    Label140: TLabel;
    DBEdit135: TDBEdit;
    Label141: TLabel;
    DBEdit136: TDBEdit;
    Label142: TLabel;
    InutilizacaoDeFaixaDeCTe1: TMenuItem;
    VerificacaoDeNumeracao1: TMenuItem;
    Label143: TLabel;
    DBEdit137: TDBEdit;
    Cadastros1: TMenuItem;
    SalvarPDFDACTEcomo1: TMenuItem;
    SalvarZIPXMLscomo1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Label144: TLabel;
    DBEdit138: TDBEdit;
    Label145: TLabel;
    DBEdit139: TDBEdit;
    TabSheet8: TTabSheet;
    Label25: TLabel;
    Label82: TLabel;
    DBEdit26: TDBEdit;
    DBEdit73: TDBEdit;
    Label146: TLabel;
    DBComboBox15: TDBComboBox;
    Label147: TLabel;
    DBEdit140: TDBEdit;
    DBGrid3: TDBGrid;
    PngBitBtn4: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn6: TPngBitBtn;
    Label83: TLabel;
    Label148: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    N10: TMenuItem;
    InformarDadosdeRecebimento1: TMenuItem;
    CTePorStatusComICMS1: TMenuItem;
    CamposdoCTe1: TMenuItem;
    N11: TMenuItem;
    CartaDeCorrecao1: TMenuItem;
    Label149: TLabel;
    DBText12: TDBText;
    Label150: TLabel;
    DBEdit18: TDBEdit;
    Label151: TLabel;
    DBEdit74: TDBEdit;
    Label152: TLabel;
    DBEdit141: TDBEdit;
    TabSheet9: TTabSheet;
    GroupBox3: TGroupBox;
    Label26: TLabel;
    PngSpeedButton4: TPngSpeedButton;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label7: TLabel;
    DBEdit11: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBComboBox3: TDBComboBox;
    Label153: TLabel;
    DBEdit142: TDBEdit;
    Label154: TLabel;
    DBEdit143: TDBEdit;
    Label155: TLabel;
    DBEdit144: TDBEdit;
    InutilizacoesNoPeriodo1: TMenuItem;
    TRCte: TFDTransaction;
    QYCte: TFDQuery;
    UPCte: TFDUpdateSQL;
    QYCteCTE_AEREODIMENSAO: TStringField;
    QYCteCTE_AEREODTPREVISTA: TDateField;
    QYCteCTE_AEREOIATA: TStringField;
    QYCteCTE_AEREOIMP: TStringField;
    QYCteCTE_AEREOMINUTA: TIntegerField;
    QYCteCTE_AEREONOMEFILIAL: TStringField;
    QYCteCTE_AEREOOCA: TStringField;
    QYCteCTE_AEREOTARIFACLASSE: TStringField;
    QYCteCTE_AEREOTARIFACODIGO: TIntegerField;
    QYCteCTE_AEREOTARIFAVALOR: TFMTBCDField;
    QYCteCTE_ALIQFCP: TFMTBCDField;
    QYCteCTE_ALIQICMS: TFMTBCDField;
    QYCteCTE_ALIQICMSINTER: TFMTBCDField;
    QYCteCTE_ALIQICMSINTERPART: TFMTBCDField;
    QYCteCTE_ALIQICMSRED: TFMTBCDField;
    QYCteCTE_ALIQICMSST: TFMTBCDField;
    QYCteCTE_ALIQICMSUFFIM: TFMTBCDField;
    QYCteCTE_ALIQTRIBUTOS: TFMTBCDField;
    QYCteCTE_BAIXADATA: TDateField;
    QYCteCTE_BAIXAPOR: TStringField;
    QYCteCTE_BASEICMS: TFMTBCDField;
    QYCteCTE_BASEICMSRED: TFMTBCDField;
    QYCteCTE_BASEICMSST: TFMTBCDField;
    QYCteCTE_CARGAOUTRASCARAC: TStringField;
    QYCteCTE_CFOP: TIntegerField;
    QYCteCTE_CFOPDESC: TStringField;
    QYCteCTE_CHAVEACESSO: TStringField;
    QYCteCTE_CIOT: TStringField;
    QYCteCTE_CODIGO: TIntegerField;
    QYCteCTE_CODIGONUMERICO: TStringField;
    QYCteCTE_COMISSAO: TFMTBCDField;
    QYCteCTE_CONDICAO: TIntegerField;
    QYCteCTE_CONDICAOMEMO: TMemoField;
    QYCteCTE_CONSULTADA: TStringField;
    QYCteCTE_CSTICMS: TIntegerField;
    QYCteCTE_CTEREFERENCIADO: TStringField;
    QYCteCTE_DATAHORA: TStringField;
    QYCteCTE_DATAHORACONTINGENCIA: TStringField;
    QYCteCTE_DESBAIRRO: TStringField;
    QYCteCTE_DESCEP: TStringField;
    QYCteCTE_DESCIDADE: TStringField;
    QYCteCTE_DESCIDADECODIGO: TIntegerField;
    QYCteCTE_DESCNPJ: TStringField;
    QYCteCTE_DESCOMPLEMENTO: TStringField;
    QYCteCTE_DESCONTATO: TStringField;
    QYCteCTE_DESCPF: TStringField;
    QYCteCTE_DESCPORC: TFMTBCDField;
    QYCteCTE_DESCVALOR: TFMTBCDField;
    QYCteCTE_DESENDERECO: TStringField;
    QYCteCTE_DESESTADO: TStringField;
    QYCteCTE_DESESTADOCODIGO: TIntegerField;
    QYCteCTE_DESFONE: TStringField;
    QYCteCTE_DESIE: TStringField;
    QYCteCTE_DESNOME: TStringField;
    QYCteCTE_DESNUMERO: TStringField;
    QYCteCTE_DESPAIS: TStringField;
    QYCteCTE_DESPAISCODIGO: TIntegerField;
    QYCteCTE_DESTINATARIO: TIntegerField;
    QYCteCTE_DIAPREFERENCIAL: TIntegerField;
    QYCteCTE_DTATUALIZACAO: TDateField;
    QYCteCTE_DTCADASTRO: TDateField;
    QYCteCTE_DTEMISSAO: TDateField;
    QYCteCTE_ENTREGADATA: TStringField;
    QYCteCTE_ENTREGADATAFINAL: TDateField;
    QYCteCTE_ENTREGADATAINICIAL: TDateField;
    QYCteCTE_ENTREGAHORA: TStringField;
    QYCteCTE_ENTREGAHORAFINAL: TTimeField;
    QYCteCTE_ENTREGAHORAINICIAL: TTimeField;
    QYCteCTE_ENVIADO: TStringField;
    QYCteCTE_EXPBAIRRO: TStringField;
    QYCteCTE_EXPCEP: TStringField;
    QYCteCTE_EXPCIDADE: TStringField;
    QYCteCTE_EXPCIDADECODIGO: TIntegerField;
    QYCteCTE_EXPCNPJ: TStringField;
    QYCteCTE_EXPCOMPLEMENTO: TStringField;
    QYCteCTE_EXPCONTATO: TStringField;
    QYCteCTE_EXPCPF: TStringField;
    QYCteCTE_EXPEDIDOR: TIntegerField;
    QYCteCTE_EXPENDERECO: TStringField;
    QYCteCTE_EXPESTADO: TStringField;
    QYCteCTE_EXPESTADOCODIGO: TIntegerField;
    QYCteCTE_EXPFONE: TStringField;
    QYCteCTE_EXPIE: TStringField;
    QYCteCTE_EXPNOME: TStringField;
    QYCteCTE_EXPNUMERO: TStringField;
    QYCteCTE_EXPPAIS: TStringField;
    QYCteCTE_EXPPAISCODIGO: TIntegerField;
    QYCteCTE_FINALIDADE: TStringField;
    QYCteCTE_FORMAPAGTO: TStringField;
    QYCteCTE_FORMAPAGTOSERVICO: TStringField;
    QYCteCTE_HRATUALIZACAO: TTimeField;
    QYCteCTE_HRCADASTRO: TTimeField;
    QYCteCTE_ICMSALIQUOTAUF: TFMTBCDField;
    QYCteCTE_ICMSPOR: TStringField;
    QYCteCTE_INFOADICFISCO: TMemoField;
    QYCteCTE_LOTACAO: TStringField;
    QYCteCTE_LOTE: TStringField;
    QYCteCTE_MODAL: TStringField;
    QYCteCTE_MODELO: TIntegerField;
    QYCteCTE_MOTIVOCANCELAMENTO: TStringField;
    QYCteCTE_MOTIVOCONTINGENCIA: TStringField;
    QYCteCTE_MOTIVOINUTILIZACAO: TStringField;
    QYCteCTE_MOTORISTA: TStringField;
    QYCteCTE_MOTORISTACPF: TStringField;
    QYCteCTE_MOVIMENTAFINANCEIRO: TStringField;
    QYCteCTE_OBSERVACOES: TMemoField;
    QYCteCTE_PAGOPOR: TStringField;
    QYCteCTE_PESOTOTAL: TFMTBCDField;
    QYCteCTE_PRODUTOPREDOM: TStringField;
    QYCteCTE_PROTOCOLO: TStringField;
    QYCteCTE_PROTOCOLOCANC: TStringField;
    QYCteCTE_PROTOCOLOCANCDH: TStringField;
    QYCteCTE_PROTOCOLODH: TStringField;
    QYCteCTE_PROTOCOLOINUT: TStringField;
    QYCteCTE_PROTOCOLOINUTDH: TStringField;
    QYCteCTE_RECBAIRRO: TStringField;
    QYCteCTE_RECCEP: TStringField;
    QYCteCTE_RECCIDADE: TStringField;
    QYCteCTE_RECCIDADECODIGO: TIntegerField;
    QYCteCTE_RECCNPJ: TStringField;
    QYCteCTE_RECCOMPLEMENTO: TStringField;
    QYCteCTE_RECCONTATO: TStringField;
    QYCteCTE_RECCPF: TStringField;
    QYCteCTE_RECEBEDOR: TIntegerField;
    QYCteCTE_RECEBIDODATA: TDateField;
    QYCteCTE_RECEBIDOPOR: TStringField;
    QYCteCTE_RECENDERECO: TStringField;
    QYCteCTE_RECESTADO: TStringField;
    QYCteCTE_RECESTADOCODIGO: TIntegerField;
    QYCteCTE_RECFONE: TStringField;
    QYCteCTE_RECIBO: TStringField;
    QYCteCTE_RECIBODH: TStringField;
    QYCteCTE_RECIE: TStringField;
    QYCteCTE_RECNOME: TStringField;
    QYCteCTE_RECNUMERO: TStringField;
    QYCteCTE_RECPAIS: TStringField;
    QYCteCTE_RECPAISCODIGO: TIntegerField;
    QYCteCTE_REFERENCIA: TStringField;
    QYCteCTE_REMBAIRRO: TStringField;
    QYCteCTE_REMCEP: TStringField;
    QYCteCTE_REMCIDADE: TStringField;
    QYCteCTE_REMCIDADECODIGO: TIntegerField;
    QYCteCTE_REMCNPJ: TStringField;
    QYCteCTE_REMCOMPLEMENTO: TStringField;
    QYCteCTE_REMCONTATO: TStringField;
    QYCteCTE_REMCPF: TStringField;
    QYCteCTE_REMENDERECO: TStringField;
    QYCteCTE_REMESTADO: TStringField;
    QYCteCTE_REMESTADOCODIGO: TIntegerField;
    QYCteCTE_REMETENTE: TIntegerField;
    QYCteCTE_REMFONE: TStringField;
    QYCteCTE_REMIE: TStringField;
    QYCteCTE_REMNOME: TStringField;
    QYCteCTE_REMNUMERO: TStringField;
    QYCteCTE_REMPAIS: TStringField;
    QYCteCTE_REMPAISCODIGO: TIntegerField;
    QYCteCTE_RETIRA: TStringField;
    QYCteCTE_RETIRADETALHES: TStringField;
    QYCteCTE_SEGURO: TStringField;
    QYCteCTE_SEGUROAPOLICE: TStringField;
    QYCteCTE_SEGUROAVERBACAO: TStringField;
    QYCteCTE_SEGURONOME: TStringField;
    QYCteCTE_SEGUROVALOR: TFMTBCDField;
    QYCteCTE_SERIE: TIntegerField;
    QYCteCTE_STATUS: TStringField;
    QYCteCTE_TIPOCTE: TStringField;
    QYCteCTE_TIPOEMISSAO: TStringField;
    QYCteCTE_TIPOSERVICO: TStringField;
    QYCteCTE_TOMADOR: TStringField;
    QYCteCTE_TOMADORBAIRRO: TStringField;
    QYCteCTE_TOMADORCEP: TStringField;
    QYCteCTE_TOMADORCIDADE: TStringField;
    QYCteCTE_TOMADORCIDADECODIGO: TIntegerField;
    QYCteCTE_TOMADORCNPJ: TStringField;
    QYCteCTE_TOMADORCODIGO: TIntegerField;
    QYCteCTE_TOMADORCOMPLEMENTO: TStringField;
    QYCteCTE_TOMADORCONTATO: TStringField;
    QYCteCTE_TOMADORCPF: TStringField;
    QYCteCTE_TOMADORENDERECO: TStringField;
    QYCteCTE_TOMADORESTADO: TStringField;
    QYCteCTE_TOMADORESTADOCODIGO: TIntegerField;
    QYCteCTE_TOMADORFONE: TStringField;
    QYCteCTE_TOMADORIE: TStringField;
    QYCteCTE_TOMADORNOME: TStringField;
    QYCteCTE_TOMADORNUMERO: TStringField;
    QYCteCTE_TOMADORPAIS: TStringField;
    QYCteCTE_TOMADORPAISCODIGO: TIntegerField;
    QYCteCTE_TOTALCCE: TIntegerField;
    QYCteCTE_TOTALCOMISSAO: TFMTBCDField;
    QYCteCTE_TOTALFCP: TFMTBCDField;
    QYCteCTE_TOTALICMS: TFMTBCDField;
    QYCteCTE_TOTALICMSST: TFMTBCDField;
    QYCteCTE_TOTALICMSUFFIM: TFMTBCDField;
    QYCteCTE_TOTALICMSUFINI: TFMTBCDField;
    QYCteCTE_TOTALTRIBUTOS: TFMTBCDField;
    QYCteCTE_USUARIO: TStringField;
    QYCteCTE_VALORCREDITOICMS: TFMTBCDField;
    QYCteCTE_VALORFRETE: TFMTBCDField;
    QYCteCTE_VALORNOTAS: TFMTBCDField;
    QYCteCTE_VALOROUTROS: TFMTBCDField;
    QYCteCTE_VALORSEGURO: TFMTBCDField;
    QYCteCTE_VALORTOTAL: TFMTBCDField;
    QYCteCTE_VENDEDOR: TIntegerField;
    QYCteCPG_ATUALIZAR: TStringField;
    QYCteCPG_BAIXARPRIMEIRAPARC: TStringField;
    QYCteCPG_CODIGO: TIntegerField;
    QYCteCPG_DESCPORC: TFMTBCDField;
    QYCteCPG_DESCRICAO: TStringField;
    QYCteCPG_PARCELASIGUAIS: TStringField;
    QYCteCPG_TOTALPARCELAS: TIntegerField;
    QYCteCPG_TOTALPORCENTAGEM: TFMTBCDField;
    QYCteVEN_NOME: TStringField;
    Funes1: TMenuItem;
    PngBitBtn7: TPngBitBtn;
    PngBitBtn8: TPngBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure LocalizarConhecimentonoContasaReceber1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure DACTE1Click(Sender: TObject);
    procedure ConsultarStatusDoServico1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit93Exit(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit93KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure CadastroDeNaturezas1Click(Sender: TObject);
    procedure CadastroDeImpostoICMS1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastroDeFrota1Click(Sender: TObject);
    procedure CancelarConhecimento1Click(Sender: TObject);
    procedure FinalizarConhecimento1Click(Sender: TObject);
    procedure GerarArquivoCTe1Click(Sender: TObject);
    procedure ValidarArquivoCTe1Click(Sender: TObject);
    procedure BuscarCTe1Click(Sender: TObject);
    procedure InutilizarCTe1Click(Sender: TObject);
    procedure EnviarCTePorEmail1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure CTePorStatus1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit42KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton17Click(Sender: TObject);
    procedure DBEdit11xit(Sender: TObject);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure RecriarChavedeAcesso1Click(Sender: TObject);
    procedure DBEdit62Exit(Sender: TObject);
    procedure DBEdit62KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure CadastroDeVendedores1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit68KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure DBEdit112Exit(Sender: TObject);
    procedure DBEdit112KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton11Click(Sender: TObject);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure ArquivosXMLDoCTe1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure RecriarArquivoXMLprocCTe1Click(Sender: TObject);
    procedure RecriarArquivoXMLprocCancCTe1Click(Sender: TObject);
    procedure ZiparArquivosXML1Click(Sender: TObject);
    procedure IncluirInfoCarga1Click(Sender: TObject);
    procedure EliminarInfoCarga1Click(Sender: TObject);
    procedure CTePorRemetente1Click(Sender: TObject);
    procedure CTePorDestinatario1Click(Sender: TObject);
    procedure InutilizacaoDeFaixaDeCTe1Click(Sender: TObject);
    procedure VerificacaoDeNumeracao1Click(Sender: TObject);
    procedure SalvarPDFDACTEcomo1Click(Sender: TObject);
    procedure SalvarZIPXMLscomo1Click(Sender: TObject);
    procedure DBEdit42Enter(Sender: TObject);
    procedure DBEdit62Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit68Enter(Sender: TObject);
    procedure DBEdit112Enter(Sender: TObject);
    procedure DBEdit93Enter(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit11Enter(Sender: TObject);
    procedure PngBitBtn4Click(Sender: TObject);
    procedure PngBitBtn5Click(Sender: TObject);
    procedure PngBitBtn6Click(Sender: TObject);
    procedure InformarDadosdeRecebimento1Click(Sender: TObject);
    procedure CTePorStatusComICMS1Click(Sender: TObject);
    procedure CamposdoCTe1Click(Sender: TObject);
    procedure CartaDeCorrecao1Click(Sender: TObject);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit93KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit112KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure InutilizacoesNoPeriodo1Click(Sender: TObject);
    procedure EnviarCTe1Click(Sender: TObject);
    procedure PngBitBtn7Click(Sender: TObject);
    procedure PngBitBtn8Click(Sender: TObject);
  private
    { Private declarations }
    function GerarArquivoCTe: Boolean;
    function GerarArquivoCTeUtil: Boolean;
    function GerarArquivoCTeUtil300: Boolean;
    function EnviarCTeSincrono: Boolean;
    function AssinarCTe(var CTe: Widestring): Boolean;
    procedure GerarTagsLote(var CTEAssinado: Widestring);
    procedure ProcessarRetornoConsultaProtocolo(MsgXML: Widestring);
    procedure RetornarDadosRecibo(var Recibo: WideString; var DHRecibo: WideString);
    procedure RetornarDadosInutilizacao(XMLInut: WideString; var ProtocoloInut: WideString; var DHProtocoloInut: WideString);
    procedure ProcessarRetornoCancelamento(MsgXML: Widestring; var Protocolo, DHProtocolo: WideString);
    procedure GerarDACTE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarDACTEAereo(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarDACTERodoviarioLotacao(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarDACTERodoviarioFracionada(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure EnviarCTePorEmailViaSistema;
  public
    { Public declarations }
  end;

var
  FormConhecimentos: TFormConhecimentos;

implementation
uses CTe_Util_TLB, DataMod, DataMod2, Funcoes1, FuncoesFirenet, Parametros, Main, Receber, ClientesLoc,
  ShellAPI, Clientes, Condicoes, Enderecos, Icms, Naturezas, EnderecosRuasLoc, FrotasLoc,
  Frotas, ConhecimentosLoc, ConhecimentosRel, ConhecimentosNotas,
  NaturezasLoc, pcteConversaoCte, pcnConversao, ConhecimentosFinalizar,
  ConhecimentosCancelar, ConhecimentosValidar, VendedoresLoc, Vendedores,
  ConhecimentosArquivosXML, ConhecimentosCarga, ZiparDFE,
  DataModSearch, ConhecimentosInutilizados, ConhecimentosQ01Aereo, EmailsEnviar,
  ConhecimentosQ01Rodoviario, CteRecebido, ConhecimentosQ01RodoviarioFracionada,
  CTeCampos, CTeCCe, CondicoesLoc, System.Zip, System.IOUtils, System.Types,
  CteFuncoes;
{$R *.dfm}
{$I ACBr.inc}

procedure TFormConhecimentos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormConhecimentos.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum conhecimento selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar suas notas.');

  DM2.TBCteNotas.Insert;
  Application.CreateForm(TFormConhecimentosNotas, FormConhecimentosNotas);
  FormConhecimentosNotas.ShowModal;
  FormConhecimentosNotas.Free;
  FormConhecimentosNotas:=nil;
end;

procedure TFormConhecimentos.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum conhecimento selecionado.');
  AbortIf(DM2.TBCteNotas.IsEmpty,          'Não existe nenhuma nota para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar suas notas.');

  if MessageDlg('Eliminar a nota selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCteNotas.Delete;
    DM2.CalcularTotaisCTe(True);
  end;
end;

procedure TFormConhecimentos.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum conhecimento selecionado.');
  AbortIf(DM2.TBCteNotas.IsEmpty,          'Não existe nenhuma nota para editar.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar suas notas.');

  DM2.TBCteNotas.Edit;
  Application.CreateForm(TFormConhecimentosNotas, FormConhecimentosNotas);
  FormConhecimentosNotas.ShowModal;
  FormConhecimentosNotas.Free;
  FormConhecimentosNotas:=nil;
end;

procedure TFormConhecimentos.BitBtn5Click(Sender: TObject);
var ValorParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(DM2.TBCteCTE_STATUS.Value='F','Conhecimento já finalizado.');

  DM2.TBCte.Edit;
  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CONDICAO.Value;
  DM.TBCondicoes.Open;
  //não funciona com dbmemo2.lines.add......
  TextoCondicao:='Condição: '+IntToStr(DM2.TBCteCTE_CONDICAO.Value)+' - '+DM2.TBCteCPG_DESCRICAO.Value+#13#10+
                 '=================================================='+#13#10+
                 'Parcela Vencimento          Valor              %  '+#13#10;

  //nova forma de calculo das parcelas, utilizando a tabela condicoesitens.
  if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(DM2.TBCteCTE_VALORTOTAL.AsExtended / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
  begin
    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM2.TBCteCTE_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBCteCTE_DIAPREFERENCIAL.Value);
      end;
      ValorParcelas:=DM2.TBCteCTE_VALORTOTAL.AsExtended / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      DM.TBCondicoesItens.Next;
    end;
  end else
  begin
    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;
    ValorTotal:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM2.TBCteCTE_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBCteCTE_DIAPREFERENCIAL.Value);
      end;
      ValorParcelas:=(DM2.TBCteCTE_VALORTOTAL.AsExtended/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
      ValorParcelas:=Decimais(ValorParcelas,2);
      ValorTotal:=ValorTotal+ValorParcelas;
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then //verifica o valor da ultima parcela.
      begin
        if ValorTotal>DM2.TBCteCTE_VALORTOTAL.Value then
        ValorParcelas:=ValorParcelas-(ValorTotal-DM2.TBCteCTE_VALORTOTAL.AsExtended);
        if ValorTotal<DM2.TBCteCTE_VALORTOTAL.Value then
        ValorParcelas:=ValorParcelas+(DM2.TBCteCTE_VALORTOTAL.AsExtended-ValorTotal);
      end;
      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      DM.TBCondicoesItens.Next;
    end;
  end;
  DM2.TBCteCTE_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TFormConhecimentos.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum conhecimento selecionado.');
  AbortIf(DM2.TBCteNotas.IsEmpty,          'Não existe nenhuma nota para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar suas notas.');

  if MessageDlg('Eliminar todas as notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBCteNotas.First;
    while not DM2.TBCteNotas.Eof do
    begin
      DM2.TBCteNotas.Delete;
    end;
    DM2.CalcularTotaisCTe(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormConhecimentos.BuscarCTe1Click(Sender: TObject);
var U: CTe_Util_Interface;
  CTEAssinado, MsgDados, MsgRetWS, MsgResultado, NroProtocolo, DHProtocolo, Recibo, procCTe: Widestring;
  F: TextFile;
  A,M,D,I: Word;
  Proxy: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,            'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F','CTe já finalizado.');
  AbortIf(DM2.TBCteCTE_RECIBO.Value='', 'CTe ainda não enviado. Sem recibo para buscar.');
  AbortIf(CTeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL CTE_UTIL.'+#13#10+#13#10+
    'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.'+#13#10+#13#10+
    'Para obter mais ajuda sobre a DLL acesse o menu Ferramentas -> Saiba mais sobre a DLL CTe_Util.'
  );

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  Memo1.Lines.Clear;
  //Atenção para o segundo parâmetro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-cte.xml',TEncoding.UTF8);
  CTEAssinado:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  PageControl1.ActivePageIndex:=6;
  Screen.Cursor:=crHourGlass;
  U:=CoUtil.Create;
  Recibo:=DM2.TBCteCTE_RECIBO.Value; // '424000003924974'; //'424000003924977';

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;

  I:=U.BuscaCTe(
    DM.TBParametrosPAR_SIGLAWSCTE.Value,
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
    DM.TBParametrosPAR_SIGLAUFCTE.Value,
    CTEAssinado,
    Recibo,
    procCTe,
    NroProtocolo,
    DHProtocolo,
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    DM.TBParametrosPAR_VERSAOXMLCTE.Value,
    MsgDados,
    MsgRetWS,
    MsgResultado,
    Proxy,
    DM.TBParametrosPAR_PROXYUSER.Value,
    DM.TBParametrosPAR_PROXYPASSWORD.Value,
    DM.TBParametrosPAR_LICENCADLLCTE.Value
  );
  Screen.Cursor:=crDefault;
  if NroProtocolo<>'' then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_PROTOCOLO.Value:=NroProtocolo;
    DM2.TBCteCTE_PROTOCOLODH.Value:=DHProtocolo;
    DM2.TBCteCTE_CONSULTADA.Value:='F';
    DM2.TBCte.Post;
  end else
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_CONSULTADA.Value:='S';
    DM2.TBCte.Post;
  end;
  if I=100 then
  begin
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(procCTe));
    CloseFile(F);
  end;
  Memo1.Lines.Add('Mensagem Retorno: '+MsgRetWS);
  Memo1.Lines.Add('Protocolo: '+NroProtocolo);
  Memo1.Lines.Add('Data Hora: '+DHProtocolo);
  Memo1.Lines.Add('Codigo de Retorno da função: '+IntToStr(I));
  Memo1.Lines.Add('-'+MsgResultado);
  Memo1.Lines.Add('='+MsgDados);

  ProcessarRetornoConsultaProtocolo(MsgRetWS);

  U:=nil;
end;

procedure TFormConhecimentos.ProcessarRetornoCancelamento(MsgXML: Widestring; var Protocolo, DHProtocolo: WideString);
var
  infCanc: IXMLNodeList;
  Doc: TXMLDocument;
  I: Integer;
  Msg: String;
begin
  Doc:=TXMLDocument.Create(Self);
  Doc.XML.Add(AnsiToUtf8(MsgXML)); //.LoadFromFile(Opendialog1.FileName);
  try
    Doc.Active:=True;
    infCanc:=Doc.DocumentElement.ChildNodes;
    if infCanc.Count>0 then
    begin
      Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
      Msg:=Msg+'Protocolo de retorno de processamento do CT-e'+#13+#10;
      for I:=0 to infCanc.Count-1 do
      begin
        if infCanc[I].NodeName='retCancCTe' then  // a tag de grupo é det
        begin
          Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
          Msg:=Msg+'     Versão Aplicação: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['verAplic'].Text+#13+#10;
          Msg:=Msg+'        Chave do CT-e: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['chCTe'].Text+#13+#10;
          Msg:=Msg+'Data/Hora Recebimento: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['dhRecbto'].Text+#13+#10;
          Msg:=Msg+'  Número do Protocolo: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['nProt'].Text+#13+#10;
          Msg:=Msg+'         Digest Value: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['digVal'].Text+#13+#10;
          Msg:=Msg+'                cStat: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['cStat'].Text+#13+#10;
          Msg:=Msg+'              xMotivo: '+infCanc[I].ChildNodes['infCanc'].ChildNodes['xMotivo'].Text+#13+#10;
          Protocolo:=infCanc[I].ChildNodes['infCanc'].ChildNodes['nProt'].Text;
          DHProtocolo:=infCanc[I].ChildNodes['infCanc'].ChildNodes['dhRecbto'].Text;
        end;
      end;
    end;
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Msg);
  except on exception do
    //nothing.
  end;
end;

procedure TFormConhecimentos.ProcessarRetornoConsultaProtocolo(MsgXML: Widestring);
var
  protCTe: IXMLNodeList;
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
    protCTe:=Doc.DocumentElement.ChildNodes;
    if protCTe.Count>0 then
    begin
//      J:=1;
      Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
      Msg:=Msg+'Protocolo de retorno de processamento do CT-e'+#13+#10;
      for I:=0 to protCTe.Count-1 do
      begin
        if protCTe[I].NodeName='protCTe' then  // a tag de grupo é det
        begin
          Msg:=Msg+'--------------------------------------------------------------------------------------------'+#13+#10;
          Msg:=Msg+'     Versão Aplicação: '+protCTe[I].ChildNodes['infProt'].ChildNodes['verAplic'].text+#13+#10;
          Msg:=Msg+'        Chave do CT-e: '+protCTe[I].ChildNodes['infProt'].ChildNodes['chCTe'].Text+#13+#10;
          Msg:=Msg+'Data/Hora Recebimento: '+protCTe[I].ChildNodes['infProt'].ChildNodes['dhRecbto'].Text+#13+#10;
          Msg:=Msg+'  Número do Protocolo: '+protCTe[I].ChildNodes['infProt'].ChildNodes['nProt'].Text+#13+#10;
          Msg:=Msg+'         Digest Value: '+protCTe[I].ChildNodes['infProt'].ChildNodes['digVal'].Text+#13+#10;
          Msg:=Msg+'                cStat: '+protCTe[I].ChildNodes['infProt'].ChildNodes['cStat'].text+#13+#10;
          Msg:=Msg+'              xMotivo: '+protCTe[I].ChildNodes['infProt'].ChildNodes['xMotivo'].text+#13+#10;
//          J:=J+1;
        end;
      end;
    end;
    Memo1.Lines.Clear;
    Memo1.Lines.Add(Msg);
  except on exception do
    //nothing.
  end;
end;

procedure TFormConhecimentos.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormConhecimentos.CadastroDeCondicoesDePagamento1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormConhecimentos.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormConhecimentos.CadastroDeFrota1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotas, FormFrotas);
  FormFrotas.ShowModal;
  FormFrotas.Free;
  FormFrotas:=nil;
end;

procedure TFormConhecimentos.CadastroDeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormConhecimentos.CadastroDeNaturezas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormConhecimentos.CadastroDeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormConhecimentos.CamposdoCTe1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    DM2.TBCteCampos.Open;
    Application.CreateForm(TFormCteCampos, FormCteCampos);
    FormCteCampos.ShowModal;
    FormCteCampos.Free;
    FormCteCampos:=nil;
    DM2.TBCteCampos.Close;
  end;
end;

procedure TFormConhecimentos.CancelarConhecimento1Click(Sender: TObject);
var U: CTe_Util_Interface;
  MsgDados, MsgRetWS, MsgResultado, Justificativa, ProtocoloCanc, DHProtocoloCanc, procCanc: Widestring;
  cStat: Integer;
  F: TextFile;
  A,M,D: Word;
  Proxy: String;
begin
  {$REGION 'Checagens iniciais'}
  AbortIf(DM2.TBCte.IsEmpty,            'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='A','CTe não finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C','CTe já cancelado.');
  {$ENDREGION}

  if MessageDlg('Deseja cancelar o conhecimento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=6;
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Cancelamento de CTe...');
      Screen.Cursor:=crHourGlass;
      U:=CoUtil.Create;

      Proxy:='';
      if DM.TBParametrosPAR_PROXY.Value = 'S' then
      Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;

      procCanc:=U.CancelaCTEvento(
        DM.TBParametrosPAR_SIGLAWSCTE.Value,
        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
        DM.TBParametrosPAR_VERSAOXMLCTE.Value,
        MsgDados,
        MsgRetWS,
        cStat,
        MsgResultado,
        DM2.TBCteCTE_CHAVEACESSO.Value,
        DM2.TBCteCTE_PROTOCOLO.Value,
        Justificativa,
        FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDateTime('hh:nn:ss',Time)+DM.TBParametrosPAR_FUSOHORARIO.Value,
        ProtocoloCanc,
        DHProtocoloCanc,
        Proxy,
        DM.TBParametrosPAR_PROXYUSER.Value,
        DM.TBParametrosPAR_PROXYPASSWORD.Value,
        DM.TBParametrosPAR_LICENCADLLCTE.Value
      );
      U:=nil;
      Screen.Cursor:=crDefault;
      if cStat=135 then //135=OK.
      begin
        Memo1.Lines.Add(MsgResultado);

        //gera arquivo procCancCTe.
        DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCancCTe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(procCanc));
        CloseFile(F);

        QYCte.Close;
        QYCte.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
        QYCte.Open;
        QYCte.Edit;
        QYCteCTE_PROTOCOLOCANC.Value:=ProtocoloCanc;
        QYCteCTE_PROTOCOLOCANCDH.Value:=DHProtocoloCanc;
        QYCteCTE_MOTIVOCANCELAMENTO.Value:=Justificativa;
        QYCte.Post;
        QYCte.Close;

        Application.CreateForm(TFormConhecimentosCancelar, FormConhecimentosCancelar);
        FormConhecimentosCancelar.ShowModal;
        FormConhecimentosCancelar.Free;
        FormConhecimentosCancelar:=nil;
      end else
      Memo1.Lines.Add(MsgResultado);
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormConhecimentos.CartaDeCorrecao1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,            'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='A','Este CTe ainda não foi finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C','Este CTe foi cancelado.');
  AbortIf(DM2.TBCTeCTE_STATUS.Value='I','Este CTe foi inutilizado.');

  Application.CreateForm(TFormCteCce, FormCteCce);
  FormCteCce.ShowModal;
  FormCteCce.Free;
  FormCteCce:=nil;
end;

procedure TFormConhecimentos.ConsultarStatusDoServico1Click(Sender: TObject);
var
  CabMsg, DadosMsg, RetWS, MsgResultado: Widestring;
  I: Integer;
  U: CTe_Util_Interface;
  Proxy: String;
begin
  CabMsg:='';
  DadosMsg:='';
  RetWS:='';
  MsgResultado:='';
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;
  U:=CoUtil.Create;
  I:=U.ConsultaStatus(
    DM.TBParametrosPAR_SIGLAWSCTE.Value,
    DM.TBParametrosPAR_SIGLAUFCTE.Value,
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    DM.TBParametrosPAR_VERSAOXMLCTE.Value,
    DadosMsg,
    RetWS,
    MsgResultado,
    Proxy,
    DM.TBParametrosPAR_PROXYUSER.Value,
    DM.TBParametrosPAR_PROXYPASSWORD.Value
  );
  U:=nil;
  MessageDlg('Consulta status retornou: '+#13#10+MsgResultado, mtInformation, [mbOk], 0);
  Memo1.Lines.Add(RetWs+#13#10+DadosMsg);
end;

procedure TFormConhecimentos.CTePorStatus1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=0;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.CTePorStatusComICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=1;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.CTePorRemetente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=2;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.CTePorDestinatario1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=3;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.InutilizacoesNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=4;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.VerificacaoDeNumeracao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ComboBox1.Enabled:=False;
  FormConhecimentosRel.ComboBox1.ItemIndex:=5;
  FormConhecimentosRel.ComboBox1Change(Self);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.GerarDACTE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var A,M,D: Word;
begin
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml'),'Arquivo XML não encontrado.');

  //para teste arq:='c:\runtime\firenet\42140605756860000173570010000018541592301620-procCTe.xml';
  //para teste ACBrCTe1.Conhecimentos.LoadFromFile(arq);
  ACBrCTe1.Conhecimentos.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml');
  ACBrCTe1.DACTe.Logo:=ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg';
  ACBrCTe1.DACTe.PathPDF:=ExtractFilePath(ArquivoPDF); //ExtractFilePath(Application.ExeName)+'Print';
  //ACBrCTe1.DACTe.ProtocoloCTE:=DM2.TBConhecimentosCTE_PROTOCOLO.Value;
  if Visualizar then
  begin
    if DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value='S' then
    ACBrCTe1.DACTe.MostraPreview:=True else
    ACBrCTe1.DACTe.MostraPreview:=False;
    ACBrCTe1.Conhecimentos.Items[0].Imprimir;
  end;
  if GerarPDF then
  begin
    ACBrCTe1.Conhecimentos.ImprimirPDF;
  end;
end;

procedure TFormConhecimentos.GerarDACTEAereo(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormConhecimentosQ01Aereo, FormConhecimentosQ01Aereo);
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then FormConhecimentosQ01Aereo.QRLabel174.Font.Color:=clWhite;
  FormConhecimentosQ01Aereo.QYCte.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
  FormConhecimentosQ01Aereo.QYCte.Open;
  FormConhecimentosQ01Aereo.QYCteNotas.Open;
  FormConhecimentosQ01Aereo.QYCteCarga.Open;
  FormConhecimentosQ01Aereo.QuickRep1.Prepare; //faz gerar o PageCount.
  FormConhecimentosQ01Aereo.QRLabel145.Caption:='/'+IntToStr(FormConhecimentosQ01Aereo.QuickRep1.QRPrinter.PageCount);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value='S' then
    FormConhecimentosQ01Aereo.QuickRep1.PreviewModal else
    FormConhecimentosQ01Aereo.QuickRep1.Print;
  end;

  if GerarPDF then
  begin
    //PDFFilter:=TQRPDFDocumentFilter.Create(ExtractFilePath(Application.ExeName)+'\Print\DACTE.PDF');
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormConhecimentosQ01Aereo.QuickRep1.ExportToFilter(PDFFilter);
  end;

  FormConhecimentosQ01Aereo.QuickRep1.QRPrinter:=nil; //libera pagecount.
  FormConhecimentosQ01Aereo.Free;
  FormConhecimentosQ01Aereo:=nil;
end;

procedure TFormConhecimentos.GerarDACTERodoviarioLotacao(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormConhecimentosQ01RodoviarioLotacao, FormConhecimentosQ01RodoviarioLotacao);
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then FormConhecimentosQ01RodoviarioLotacao.QRLabel174.Font.Color:=clWhite;
  FormConhecimentosQ01RodoviarioLotacao.QYCte.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
  FormConhecimentosQ01RodoviarioLotacao.QYCte.Open;
  FormConhecimentosQ01RodoviarioLotacao.QYCteNotas.Open;
  FormConhecimentosQ01RodoviarioLotacao.QYCteCarga.Open;
  FormConhecimentosQ01RodoviarioLotacao.QYCteVeiculos.Open;
  FormConhecimentosQ01RodoviarioLotacao.QYCteNotas.FetchAll; //total de registros.
  FormConhecimentosQ01RodoviarioLotacao.QuickRep1.Prepare; //faz gerar o PageCount.
  FormConhecimentosQ01RodoviarioLotacao.QRLabel145.Caption:='/'+IntToStr(FormConhecimentosQ01RodoviarioLotacao.QuickRep1.QRPrinter.PageCount);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value='S' then
    FormConhecimentosQ01RodoviarioLotacao.QuickRep1.PreviewModal else
    FormConhecimentosQ01RodoviarioLotacao.QuickRep1.Print;
  end;

  if GerarPDF then
  begin
    //PDFFilter:=TQRPDFDocumentFilter.Create(ExtractFilePath(Application.ExeName)+'\Print\DACTE.PDF');
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormConhecimentosQ01RodoviarioLotacao.QuickRep1.ExportToFilter(PDFFilter);
  end;

  FormConhecimentosQ01RodoviarioLotacao.QuickRep1.QRPrinter:=nil; //libera pagecount.
  FormConhecimentosQ01RodoviarioLotacao.Free;
  FormConhecimentosQ01RodoviarioLotacao:=nil;
end;

procedure TFormConhecimentos.GerarDACTERodoviarioFracionada(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
var PDFFilter: TQRPDFDocumentFilter;
begin
  Application.CreateForm(TFormConhecimentosQ01RodoviarioFracionada, FormConhecimentosQ01RodoviarioFracionada);
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then FormConhecimentosQ01RodoviarioFracionada.QRLabel174.Font.Color:=clWhite;
  FormConhecimentosQ01RodoviarioFracionada.QYCte.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
  FormConhecimentosQ01RodoviarioFracionada.QYCte.Open;
  FormConhecimentosQ01RodoviarioFracionada.QYCteNotas.Open;
  FormConhecimentosQ01RodoviarioFracionada.QYCteCarga.Open;
  FormConhecimentosQ01RodoviarioFracionada.QYCteNotas.FetchAll; //total de registros.
  FormConhecimentosQ01RodoviarioFracionada.QuickRep1.Prepare; //faz gerar o PageCount.
  FormConhecimentosQ01RodoviarioFracionada.QRLabel145.Caption:='/'+IntToStr(FormConhecimentosQ01RodoviarioFracionada.QuickRep1.QRPrinter.PageCount);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value='S' then
    FormConhecimentosQ01RodoviarioFracionada.QuickRep1.PreviewModal else
    FormConhecimentosQ01RodoviarioFracionada.QuickRep1.Print;
  end;

  if GerarPDF then
  begin
    //PDFFilter:=TQRPDFDocumentFilter.Create(ExtractFilePath(Application.ExeName)+'\Print\DACTE.PDF');
    PDFFilter:=TQRPDFDocumentFilter.Create(ArquivoPDF);
    FormConhecimentosQ01RodoviarioFracionada.QuickRep1.ExportToFilter(PDFFilter);
  end;

  FormConhecimentosQ01RodoviarioFracionada.QuickRep1.QRPrinter:=nil; //libera pagecount.
  FormConhecimentosQ01RodoviarioFracionada.Free;
  FormConhecimentosQ01RodoviarioFracionada:=nil;
end;

procedure TFormConhecimentos.DACTE1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,             'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value<>'F','CTe não finalizado.');

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  GerarDACTEAereo(True,False,'') else
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  begin
    if DM2.TBCteCTE_LOTACAO.Value='1 - SIM' then
    GerarDACTERodoviarioLotacao(True,False,'') else
    GerarDACTERodoviarioFracionada(True,False,'');
  end else
  GerarDACTE(True,False,'');
end;

procedure TFormConhecimentos.DBEdit112Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit112Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_RECBAIRRO.Clear;
    DM2.TBCteCTE_RECCEP.Clear;
    DM2.TBCteCTE_RECCIDADE.Clear;
    DM2.TBCteCTE_RECCIDADECODIGO.Clear;
    DM2.TBCteCTE_RECCNPJ.Clear;
    DM2.TBCteCTE_RECCOMPLEMENTO.Clear;
    DM2.TBCteCTE_RECCONTATO.Clear;
    DM2.TBCteCTE_RECCPF.Clear;
    DM2.TBCteCTE_RECEBEDOR.Clear;
    DM2.TBCteCTE_RECENDERECO.Clear;
    DM2.TBCteCTE_RECESTADO.Clear;
    DM2.TBCteCTE_RECESTADOCODIGO.Clear;
    DM2.TBCteCTE_RECFONE.Clear;
    DM2.TBCteCTE_RECIE.Clear;
    DM2.TBCteCTE_RECNOME.Clear;
    DM2.TBCteCTE_RECNUMERO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBCteCTE_RECBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBCteCTE_RECCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBCteCTE_RECCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBCteCTE_RECCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBCteCTE_RECCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBCteCTE_RECCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBCteCTE_RECCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM2.TBCteCTE_RECCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBCteCTE_RECENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBCteCTE_RECESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBCteCTE_RECESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBCteCTE_RECFONE.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBCteCTE_RECIE.Value:=DMS.QYClientesCLI_IE.Value;
      DM2.TBCteCTE_RECNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBCteCTE_RECNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
    end else
    begin
      DM2.TBCteCTE_RECBAIRRO.Clear;
      DM2.TBCteCTE_RECCEP.Clear;
      DM2.TBCteCTE_RECCIDADE.Clear;
      DM2.TBCteCTE_RECCIDADECODIGO.Clear;
      DM2.TBCteCTE_RECCNPJ.Clear;
      DM2.TBCteCTE_RECCOMPLEMENTO.Clear;
      DM2.TBCteCTE_RECCONTATO.Clear;
      DM2.TBCteCTE_RECCPF.Clear;
      DM2.TBCteCTE_RECEBEDOR.Clear;
      DM2.TBCteCTE_RECENDERECO.Clear;
      DM2.TBCteCTE_RECESTADO.Clear;
      DM2.TBCteCTE_RECESTADOCODIGO.Clear;
      DM2.TBCteCTE_RECFONE.Clear;
      DM2.TBCteCTE_RECIE.Clear;
      DM2.TBCteCTE_RECNOME.Clear;
      DM2.TBCteCTE_RECNUMERO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit112KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton11.Click;
end;

procedure TFormConhecimentos.DBEdit112KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit11Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit11xit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_TOMADORBAIRRO.Clear;
    DM2.TBCteCTE_TOMADORCEP.Clear;
    DM2.TBCteCTE_TOMADORCIDADE.Clear;
    DM2.TBCteCTE_TOMADORCIDADECODIGO.Clear;
    DM2.TBCteCTE_TOMADORCNPJ.Clear;
    DM2.TBCteCTE_TOMADORCODIGO.Clear;
    DM2.TBCteCTE_TOMADORCOMPLEMENTO.Clear;
    DM2.TBCteCTE_TOMADORCONTATO.Clear;
    DM2.TBCteCTE_TOMADORCPF.Clear;
    DM2.TBCteCTE_TOMADORENDERECO.Clear;
    DM2.TBCteCTE_TOMADORESTADO.Clear;
    DM2.TBCteCTE_TOMADORESTADOCODIGO.Clear;
    DM2.TBCteCTE_TOMADORFONE.Clear;
    DM2.TBCteCTE_TOMADORIE.Clear;
    DM2.TBCteCTE_TOMADORNOME.Clear;
    DM2.TBCteCTE_TOMADORNUMERO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBCteCTE_TOMADORBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBCteCTE_TOMADORCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBCteCTE_TOMADORCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBCteCTE_TOMADORCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBCteCTE_TOMADORCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBCteCTE_TOMADORCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM2.TBCteCTE_TOMADORCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBCteCTE_TOMADORENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBCteCTE_TOMADORESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBCteCTE_TOMADORESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBCteCTE_TOMADORFONE.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBCteCTE_TOMADORIE.Value:=DMS.QYClientesCLI_IE.Value;
      DM2.TBCteCTE_TOMADORNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBCteCTE_TOMADORNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
    end else
    begin
      DM2.TBCteCTE_TOMADORBAIRRO.Clear;
      DM2.TBCteCTE_TOMADORCEP.Clear;
      DM2.TBCteCTE_TOMADORCIDADE.Clear;
      DM2.TBCteCTE_TOMADORCIDADECODIGO.Clear;
      DM2.TBCteCTE_TOMADORCNPJ.Clear;
      DM2.TBCteCTE_TOMADORCODIGO.Clear;
      DM2.TBCteCTE_TOMADORCOMPLEMENTO.Clear;
      DM2.TBCteCTE_TOMADORCONTATO.Clear;
      DM2.TBCteCTE_TOMADORCPF.Clear;
      DM2.TBCteCTE_TOMADORENDERECO.Clear;
      DM2.TBCteCTE_TOMADORESTADO.Clear;
      DM2.TBCteCTE_TOMADORESTADOCODIGO.Clear;
      DM2.TBCteCTE_TOMADORFONE.Clear;
      DM2.TBCteCTE_TOMADORIE.Clear;
      DM2.TBCteCTE_TOMADORNOME.Clear;
      DM2.TBCteCTE_TOMADORNUMERO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton4.Click;
end;

procedure TFormConhecimentos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBCteCTE_DTEMISSAO.Clear;
end;

procedure TFormConhecimentos.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit30Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_CONDICAO.Clear;
    DM2.TBCteCPG_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      DM2.TBCteCTE_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
      DM2.TBCteCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
      DM2.TBCteCTE_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
      //calcula o desconto.
      DM2.TBCteCTE_VALORTOTAL.Value:=DM2.TBCteCTE_VALORFRETE.Value+DM2.TBCteCTE_VALORSEGURO.Value+DM2.TBCteCTE_VALOROUTROS.Value;
      if DM2.TBCteCTE_DESCPORC.Value>0 then
      DM2.TBCteCTE_DESCVALOR.Value:=((DM2.TBCteCTE_VALORTOTAL.Value/100)*DM2.TBCteCTE_DESCPORC.Value) else
      DM2.TBCteCTE_DESCVALOR.Value:=0;
      //...
      BitBtn5.Click;
    end else
    begin
      DM2.TBCteCTE_CONDICAO.Clear;
      DM2.TBCteCPG_DESCRICAO.Clear;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormConhecimentos.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBCteCTE_DTEMISSAO.Clear;
end;

procedure TFormConhecimentos.DBEdit42Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit42Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_CFOP.Clear;
    DM2.TBCteCTE_CFOPDESC.Clear;
    DM2.TBCteCTE_INFOADICFISCO.Clear;
    DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM2.TBCteCTE_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM2.TBCteCTE_CFOPDESC.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM2.TBCteCTE_INFOADICFISCO.Value:=DMS.QYNaturezasNAT_OBSERVACOES.Value;
      DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value:=DMS.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
    end else
    begin
      DM2.TBCteCTE_CFOP.Clear;
      DM2.TBCteCTE_CFOPDESC.Clear;
      DM2.TBCteCTE_INFOADICFISCO.Clear;
      DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit42KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormConhecimentos.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit4Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_REMBAIRRO.Clear;
    DM2.TBCteCTE_REMCEP.Clear;
    DM2.TBCteCTE_REMCIDADE.Clear;
    DM2.TBCteCTE_REMCIDADECODIGO.Clear;
    DM2.TBCteCTE_REMCNPJ.Clear;
    DM2.TBCteCTE_REMCOMPLEMENTO.Clear;
    DM2.TBCteCTE_REMCONTATO.Clear;
    DM2.TBCteCTE_REMCPF.Clear;
    DM2.TBCteCTE_REMENDERECO.Clear;
    DM2.TBCteCTE_REMESTADO.Clear;
    DM2.TBCteCTE_REMESTADOCODIGO.Clear;
    DM2.TBCteCTE_REMETENTE.Clear;
    DM2.TBCteCTE_REMFONE.Clear;
    DM2.TBCteCTE_REMIE.Clear;
    DM2.TBCteCTE_REMNOME.Clear;
    DM2.TBCteCTE_REMNUMERO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
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
          DM2.TBCteCTE_REMBAIRRO.Clear;
          DM2.TBCteCTE_REMCEP.Clear;
          DM2.TBCteCTE_REMCIDADE.Clear;
          DM2.TBCteCTE_REMCIDADECODIGO.Clear;
          DM2.TBCteCTE_REMCNPJ.Clear;
          DM2.TBCteCTE_REMCOMPLEMENTO.Clear;
          DM2.TBCteCTE_REMCONTATO.Clear;
          DM2.TBCteCTE_REMCPF.Clear;
          DM2.TBCteCTE_REMENDERECO.Clear;
          DM2.TBCteCTE_REMESTADO.Clear;
          DM2.TBCteCTE_REMESTADOCODIGO.Clear;
          DM2.TBCteCTE_REMETENTE.Clear;
          DM2.TBCteCTE_REMFONE.Clear;
          DM2.TBCteCTE_REMIE.Clear;
          DM2.TBCteCTE_REMNOME.Clear;
          DM2.TBCteCTE_REMNUMERO.Clear;
          Exit;
        end;
      end;
      DM2.TBCteCTE_REMBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBCteCTE_REMCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBCteCTE_REMCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBCteCTE_REMCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBCteCTE_REMCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBCteCTE_REMCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBCteCTE_REMCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM2.TBCteCTE_REMCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBCteCTE_REMENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBCteCTE_REMESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBCteCTE_REMESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBCteCTE_REMFONE.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBCteCTE_REMIE.Value:=DMS.QYClientesCLI_IE.Value;
      DM2.TBCteCTE_REMNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBCteCTE_REMNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
    end else
    begin
      DM2.TBCteCTE_REMBAIRRO.Clear;
      DM2.TBCteCTE_REMCEP.Clear;
      DM2.TBCteCTE_REMCIDADE.Clear;
      DM2.TBCteCTE_REMCIDADECODIGO.Clear;
      DM2.TBCteCTE_REMCNPJ.Clear;
      DM2.TBCteCTE_REMCOMPLEMENTO.Clear;
      DM2.TBCteCTE_REMCONTATO.Clear;
      DM2.TBCteCTE_REMCPF.Clear;
      DM2.TBCteCTE_REMENDERECO.Clear;
      DM2.TBCteCTE_REMESTADO.Clear;
      DM2.TBCteCTE_REMESTADOCODIGO.Clear;
      DM2.TBCteCTE_REMETENTE.Clear;
      DM2.TBCteCTE_REMFONE.Clear;
      DM2.TBCteCTE_REMIE.Clear;
      DM2.TBCteCTE_REMNOME.Clear;
      DM2.TBCteCTE_REMNUMERO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormConhecimentos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PageControl1.ActivePageIndex:=1;
    DBEdit4.SetFocus;
  end;
end;

procedure TFormConhecimentos.DBEdit62Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit62Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_VENDEDOR.Clear;
    DM2.TBCteVEN_NOME.Clear;
    DM2.TBCteCTE_COMISSAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      DM2.TBCteCTE_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
      DM2.TBCteVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
      DM2.TBCteCTE_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
    end else
    begin
      DM2.TBCteCTE_VENDEDOR.Clear;
      DM2.TBCteVEN_NOME.Clear;
      DM2.TBCteCTE_COMISSAO.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit62KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormConhecimentos.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit68Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit68Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_EXPBAIRRO.Clear;
    DM2.TBCteCTE_EXPCEP.Clear;
    DM2.TBCteCTE_EXPCIDADE.Clear;
    DM2.TBCteCTE_EXPCIDADECODIGO.Clear;
    DM2.TBCteCTE_EXPCNPJ.Clear;
    DM2.TBCteCTE_EXPCOMPLEMENTO.Clear;
    DM2.TBCteCTE_EXPCONTATO.Clear;
    DM2.TBCteCTE_EXPCPF.Clear;
    DM2.TBCteCTE_EXPENDERECO.Clear;
    DM2.TBCteCTE_EXPESTADO.Clear;
    DM2.TBCteCTE_EXPESTADOCODIGO.Clear;
    DM2.TBCteCTE_EXPEDIDOR.Clear;
    DM2.TBCteCTE_EXPFONE.Clear;
    DM2.TBCteCTE_EXPIE.Clear;
    DM2.TBCteCTE_EXPNOME.Clear;
    DM2.TBCteCTE_EXPNUMERO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      DM2.TBCteCTE_EXPBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBCteCTE_EXPCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBCteCTE_EXPCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBCteCTE_EXPCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBCteCTE_EXPCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBCteCTE_EXPCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBCteCTE_EXPCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM2.TBCteCTE_EXPCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBCteCTE_EXPENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBCteCTE_EXPESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBCteCTE_EXPESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBCteCTE_EXPFONE.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBCteCTE_EXPIE.Value:=DMS.QYClientesCLI_IE.Value;
      DM2.TBCteCTE_EXPNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBCteCTE_EXPNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
    end else
    begin
      DM2.TBCteCTE_EXPBAIRRO.Clear;
      DM2.TBCteCTE_EXPCEP.Clear;
      DM2.TBCteCTE_EXPCIDADE.Clear;
      DM2.TBCteCTE_EXPCIDADECODIGO.Clear;
      DM2.TBCteCTE_EXPCNPJ.Clear;
      DM2.TBCteCTE_EXPCOMPLEMENTO.Clear;
      DM2.TBCteCTE_EXPCONTATO.Clear;
      DM2.TBCteCTE_EXPCPF.Clear;
      DM2.TBCteCTE_EXPENDERECO.Clear;
      DM2.TBCteCTE_EXPESTADO.Clear;
      DM2.TBCteCTE_EXPESTADOCODIGO.Clear;
      DM2.TBCteCTE_EXPEDIDOR.Clear;
      DM2.TBCteCTE_EXPFONE.Clear;
      DM2.TBCteCTE_EXPIE.Clear;
      DM2.TBCteCTE_EXPNOME.Clear;
      DM2.TBCteCTE_EXPNUMERO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit68KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton9.Click;
end;

procedure TFormConhecimentos.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit8Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit8Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit8,DBEdit9,nil,DM2.TBCte);
end;

procedure TFormConhecimentos.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormConhecimentos.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBEdit93Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormConhecimentos.DBEdit93Exit(Sender: TObject);
begin
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCteCTE_DESBAIRRO.Clear;
    DM2.TBCteCTE_DESCEP.Clear;
    DM2.TBCteCTE_DESCIDADE.Clear;
    DM2.TBCteCTE_DESCIDADECODIGO.Clear;
    DM2.TBCteCTE_DESCNPJ.Clear;
    DM2.TBCteCTE_DESCOMPLEMENTO.Clear;
    DM2.TBCteCTE_DESCONTATO.Clear;
    DM2.TBCteCTE_DESCPF.Clear;
    DM2.TBCteCTE_DESENDERECO.Clear;
    DM2.TBCteCTE_DESESTADO.Clear;
    DM2.TBCteCTE_DESESTADOCODIGO.Clear;
    DM2.TBCteCTE_DESFONE.Clear;
    DM2.TBCteCTE_DESIE.Clear;
    DM2.TBCteCTE_DESNOME.Clear;
    DM2.TBCteCTE_DESNUMERO.Clear;
    DM2.TBCteCTE_DESTINATARIO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM2.TBCte.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
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
          DM2.TBCteCTE_DESBAIRRO.Clear;
          DM2.TBCteCTE_DESCEP.Clear;
          DM2.TBCteCTE_DESCIDADE.Clear;
          DM2.TBCteCTE_DESCIDADECODIGO.Clear;
          DM2.TBCteCTE_DESCNPJ.Clear;
          DM2.TBCteCTE_DESCOMPLEMENTO.Clear;
          DM2.TBCteCTE_DESCONTATO.Clear;
          DM2.TBCteCTE_DESCPF.Clear;
          DM2.TBCteCTE_DESENDERECO.Clear;
          DM2.TBCteCTE_DESESTADO.Clear;
          DM2.TBCteCTE_DESESTADOCODIGO.Clear;
          DM2.TBCteCTE_DESFONE.Clear;
          DM2.TBCteCTE_DESIE.Clear;
          DM2.TBCteCTE_DESNOME.Clear;
          DM2.TBCteCTE_DESNUMERO.Clear;
          DM2.TBCteCTE_DESTINATARIO.Clear;
          Exit;
        end;
      end;
      DM2.TBCteCTE_DESBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM2.TBCteCTE_DESCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM2.TBCteCTE_DESCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM2.TBCteCTE_DESCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM2.TBCteCTE_DESCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM2.TBCteCTE_DESCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM2.TBCteCTE_DESCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM2.TBCteCTE_DESCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM2.TBCteCTE_DESENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM2.TBCteCTE_DESESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM2.TBCteCTE_DESESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM2.TBCteCTE_DESFONE.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM2.TBCteCTE_DESIE.Value:=DMS.QYClientesCLI_IE.Value;
      DM2.TBCteCTE_DESNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM2.TBCteCTE_DESNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
    end else
    begin
      DM2.TBCteCTE_DESBAIRRO.Clear;
      DM2.TBCteCTE_DESCEP.Clear;
      DM2.TBCteCTE_DESCIDADE.Clear;
      DM2.TBCteCTE_DESCIDADECODIGO.Clear;
      DM2.TBCteCTE_DESCNPJ.Clear;
      DM2.TBCteCTE_DESCOMPLEMENTO.Clear;
      DM2.TBCteCTE_DESCONTATO.Clear;
      DM2.TBCteCTE_DESCPF.Clear;
      DM2.TBCteCTE_DESENDERECO.Clear;
      DM2.TBCteCTE_DESESTADO.Clear;
      DM2.TBCteCTE_DESESTADOCODIGO.Clear;
      DM2.TBCteCTE_DESFONE.Clear;
      DM2.TBCteCTE_DESIE.Clear;
      DM2.TBCteCTE_DESNOME.Clear;
      DM2.TBCteCTE_DESNUMERO.Clear;
      DM2.TBCteCTE_DESTINATARIO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormConhecimentos.DBEdit93KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormConhecimentos.DBEdit93KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormConhecimentos.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TFormConhecimentos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormConhecimentos.EliminarInfoCarga1Click(Sender: TObject);
begin
  if DBGrid2.Focused then
  PngBitBtn2.Click;
end;

procedure TFormConhecimentos.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormConhecimentos.RetornarDadosRecibo(var Recibo: WideString; var DHRecibo: WideString);
var NodeRec: IXMLNode;
begin
  XMLD.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Print\CTe-RetWS.xml');
  NodeRec :=XMLD.DocumentElement.ChildNodes.FindNode('infRec');
  Recibo  :=NodeRec.ChildNodes['nRec'].text;
  DHRecibo:=NodeRec.ChildNodes['dhRecbto'].text;
end;

procedure TFormConhecimentos.EnviarCTePorEmailViaSistema;
var
  A,M,D: Word;
  MM: TMemo;
begin
  DM.TBClientes.Close;
  if DM2.TBCteCTE_PAGOPOR.Value='R' then
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_REMETENTE.Value else
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_DESTINATARIO.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor; //DM.TBCteCTE_VENDEDOR.Value;
  DM.TBVendedores.Open;
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CTEEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False;
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|CTE_CODIGO|',IntToStr(DM2.TBCteCTE_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_REMNOME|',DM2.TBCteCTE_REMNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_DESNOME|',DM2.TBCteCTE_DESNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_PROTOCOLO|',DM2.TBCteCTE_PROTOCOLO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_PROTOCOLODH|',DM2.TBCteCTE_PROTOCOLODH.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|CTE_CHAVEACESSO|',DM2.TBCteCTE_CHAVEACESSO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  GerarDACTEAereo(False,True,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'.pdf') else
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  GerarDACTERodoviarioLotacao(False,True,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'.pdf') else
  GerarDACTE(False,True,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'.pdf');

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml';
  DM2.TBEmailsEMA_ANEXO2.Value:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'.pdf';
  DM2.TBEmailsEMA_ASSINATURA.Value:=DM2.TBEmailsEMC_ASSINATURA.Value;
  DM2.TBEmailsEMA_ASSUNTO.Value:=DM2.TBAssuntosASS_CODIGO.Value;
  DM2.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM.TBClientesCLI_EMAIL.Value;
  if DM.TBClientesCLI_EMAIL2.Value<>'' then
  DM2.TBEmailsEMA_DESTINATARIOS.Value:=DM2.TBEmailsEMA_DESTINATARIOS.Value+','+DM.TBClientesCLI_EMAIL2.Value;
  DM2.TBEmailsEMA_EMAILCONTA.Value:=DM2.TBEmailsContasEMC_CODIGO.Value;
  DM2.TBEmailsEMA_MENSAGEM.Value:=MM.Lines.Text; //memo com texto substituido.
  DM2.TBEmailsASS_DESCRICAO.Value:=DM2.TBAssuntosASS_DESCRICAO.Value;
  DM2.TBEmailsEMC_NOME.Value:=DM2.TBEmailsContasEMC_NOME.Value;
  DM2.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;

  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormConhecimentos.EnviarCTe1Click(Sender: TObject);
begin
  DM.TBParametros.Close;
  DM.TBParametros.Open;
  EnviarCTeSincronoRTC;
end;

procedure TFormConhecimentos.EnviarCTePorEmail1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM2.TBCte.IsEmpty,              'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value='','CTe ainda não autorizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value<>'F', 'CTe não finalizado.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml'),'Arquivo XML não encontrado.');

  EnviarCTePorEmailViaSistema;
end;

procedure TFormConhecimentos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentos.FinalizarConhecimento1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,              'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteNotas.IsEmpty,         'Este CTe não contém notas.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',  'Este CTe foi cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',  'CTe já finalizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value='','Este CTe ainda não foi autorizado para uso.');

  if MessageDlg('Finalizar o CTe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormConhecimentosFinalizar, FormConhecimentosFinalizar);
    FormConhecimentosFinalizar.ShowModal;
    FormConhecimentosFinalizar.Free;
    FormConhecimentosFinalizar:=nil;
  end;
end;

procedure TFormConhecimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBCte.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormConhecimentos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox7);
end;

procedure TFormConhecimentos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConhecimentos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormConhecimentos);
end;

procedure TFormConhecimentos.ArquivosXMLDoCTe1Click(Sender: TObject);
var A,M,D: Word;
  Pasta: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CT-e selecionado.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  AbortIf(not System.SysUtils.DirectoryExists(Pasta),'A pasta do CT-e não foi localizada.'+#13#10+'Tente gerar o arquivo XML antes.');
  AbortIf(not ExisteAlgumArquivo(Pasta+DM2.TBCteCTE_CHAVEACESSO.Value+'*.*'),'Nenhum arquivo encontrado para este CTe.');

  Application.CreateForm(TFormConhecimentosArquivosXML, FormConhecimentosArquivosXML);
  FormConhecimentosArquivosXML.ShowModal;
  FormConhecimentosArquivosXML.Free;
  FormConhecimentosArquivosXML:=nil;
end;

function TFormConhecimentos.AssinarCTe(var CTe: Widestring): Boolean;
var CTEAssinado, MsgResultado, Ref: Widestring;
  Resultado: Integer;
  U: CTe_Util_Interface;
begin
  if DM.TBParametrosPAR_NOMECERTIFICADO.Value<>'' then
  begin
    U:=CoUtil.Create;
    Ref:='infCte';
    Resultado:=U.Assinar(CTE,Ref,DM.TBParametrosPAR_NOMECERTIFICADO.Value,CTEAssinado,MsgResultado);
    if Resultado=0 then
    begin
      Memo1.Lines.Add(MsgResultado);
      CTe:=CTEAssinado;
      Result:=True;
    end else
    begin
      Memo1.Lines.Add('Processo de assinatura falhou...'+#13+MsgResultado);
      Result:=False;
    end;
    U:=nil;
  end else
  begin
    Memo1.Lines.Add('Nome do titular do Certificado não informado...');
    Result:=False;
  end;
end;

procedure TFormConhecimentos.GerarTagsLote(var CTEAssinado: Widestring);
begin
  Insert('<enviCTe xmlns="http://www.portalfiscal.inf.br/cte" versao="'+DM.TBParametrosPAR_VERSAOXMLCTE.Value+'"><idLote>'+AlignText(IntToStr(DM2.TBCteCTE_CODIGO.Value),'0',15,taRight)+'</idLote>',CTEAssinado,39);
  CTEAssinado:=CTEAssinado+'</enviCTe>';
end;

function TFormConhecimentos.GerarArquivoCTe: Boolean;
var A,M,D: Word;
  XMLCTE: WideString;
  F: TextFile;
  Pasta: String;
begin
  if DM2.TBCte.IsEmpty                 then Exit(Erro('Nenhum CTe selecionado.'));
  if DM2.TBCteCTE_CHAVEACESSO.Value='' then Exit(Erro('Este CTe não possui chave de acesso. Recrie a chave de acesso em Arquivo -> Recriar Chave de Acesso.'));
  if DM2.TBCteCTE_STATUS.Value='F'     then Exit(Erro('CTe já finalizado.'));
  if (DM2.TBCteCTE_RECIBO.Value<>'') and ((DM2.TBCteCTE_CONSULTADA.Value='N') or (DM2.TBCteCTE_CONSULTADA.Value='F')) then
  Exit(Erro('Não é possivel gerar o arquivo XML porque foi feito um envio e não foi realizado a busca.'));
  if DM2.TBCteCTE_PROTOCOLO.Value<>''  then Exit(Erro('CTe já autorizado para uso. Impossível realizar nova geração do arquivo.'));

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo CTe...');

  ACBrCTe1.Conhecimentos.Clear;
  with ACBrCTe1.Conhecimentos.Add.CTe do
  begin
    {$REGION 'Dados de Identificação do CT-e'}
    //Dados de Identificação do CT-e
    Ide.cUF  :=DM.TBEmpresaEMP_ESTADOCODIGO.Value;
    Ide.cCT  :=StrToInt(DM2.TBCteCTE_CODIGONUMERICO.Value); //Caso não seja preenchido será gerado um número aleatório pelo componente
    Ide.CFOP :=DM2.TBCteCTE_CFOP.Value; //5357;
    Ide.natOp:=DM2.TBCteCTE_CFOPDESC.Value; // 'PRESTAÇÃO DE SERVIÇO';
    case StrToInt(Copy(DM2.TBCteCTE_FORMAPAGTOSERVICO.Value,1,1)) of
      00: Ide.forPag:=fpPago; //Copy(DM2.TBCteCTE_FORMAPAGTOSERVICO.Value,1,1); // fpPago; // ou fpAPagar
      01: Ide.forPag:=fpAPagar;
      02: Ide.forPag:=fpOutros;
    end;
    Ide.modelo:=DM2.TBCteCTE_MODELO.Value; // '57';
    Ide.serie :=DM2.TBCteCTE_SERIE.Value; // 1;
    Ide.nCT   :=DM2.TBCteCTE_CODIGO.Value; // StrToInt(NumCTe);
    Ide.dhEmi :=Now;  //StrToDateTime(DM2.TBCteCTE_DATAHORA.Value); // Now;
    Ide.tpImp :=tiRetrato; //1-retrato 2-paisagem.
    case StrToInt(Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1)) of
      01: Ide.tpEmis:=teNormal; //Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1); // teNormal, teContingencia, teSCAN, teDPEC, teFSDA
      02: Ide.tpEmis:=teContingencia;
    end;
    case StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value) of
      01: Ide.tpAmb:=taProducao;
      02: Ide.tpAmb:=taHomologacao;
    end;
    case StrToInt(Copy(DM2.TBCteCTE_FINALIDADE.Value,1,1)) of
      00: Ide.tpCTe:=tcNormal;
      01: Ide.tpCTe:=tcComplemento;
      02: Ide.tpCTe:=tcAnulacao;
      03: Ide.tpCTe:=tcSubstituto;
    end;
    Ide.procEmi:=peAplicativoContribuinte;
    Ide.verProc:='12';  //Versão do seu sistema
    Ide.cMunEnv:=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    Ide.xMunEnv:=DM.TBEmpresaEMP_CIDADE.Value;
    Ide.UFEnv  :=DM.TBEmpresaEMP_ESTADO.Value;
    case StrToInt(Copy(DM2.TBCteCTE_MODAL.Value,1,2)) of
      01: Ide.modal:=mdRodoviario;
      02: Ide.modal:=mdAereo;
      03: Ide.modal:=mdAquaviario;
      04: Ide.modal:=mdFerroviario;
      05: Ide.modal:=mdDutoviario;
    end;
    case StrToInt(Copy(DM2.TBCteCTE_TIPOSERVICO.Value,1,1)) of
      00: Ide.tpServ:=tsNormal;
      01: Ide.tpServ:=tsSubcontratacao;
      02: Ide.tpServ:=tsRedespacho;
      03: Ide.tpServ:=tsIntermediario;
    end;

    // Origem da Prestação
    Ide.cMunIni:=DM2.TBCteCTE_REMCIDADECODIGO.Value;
    Ide.xMunIni:=DM2.TBCteCTE_REMCIDADE.Value;
    Ide.UFIni  :=DM2.TBCteCTE_REMESTADO.Value;
    // Destino da Prestação
    Ide.cMunFim:=DM2.TBCteCTE_DESCIDADECODIGO.Value;
    Ide.xMunFim:=DM2.TBCteCTE_DESCIDADE.Value;
    Ide.UFFim  :=DM2.TBCteCTE_DESESTADO.Value;

    Ide.retira    :=rtNao;
    Ide.xdetretira:='';

    case StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)) of
      00: Ide.Toma03.Toma:=tmRemetente;
      01: Ide.Toma03.Toma:=tmExpedidor;
      02: Ide.Toma03.Toma:=tmRecebedor;
      03: Ide.Toma03.Toma:=tmDestinatario;
      04: Ide.Toma03.Toma:=tmOutros;
    end;

    // Tomador do Serviço no CTe 4 = Outros
    if StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1))=4 then
    begin
      Ide.Toma4.Toma             :=tmOutros;
      if (not DM2.TBCteCTE_TOMADORCNPJ.IsNull) and (DM2.TBCteCTE_TOMADORCNPJ.Value<>'  .   .   /    -  ') then
      Ide.Toma4.CNPJCPF          :=LimparFormatacao(DM2.TBCteCTE_TOMADORCNPJ.Value) else
      Ide.Toma4.CNPJCPF          :=LimparFormatacao(DM2.TBCteCTE_TOMADORCPF.Value);
      Ide.Toma4.IE               :=LimparFormatacao(DM2.TBCteCTE_TOMADORIE.Value);
      Ide.Toma4.xNome            :=DM2.TBCteCTE_TOMADORNOME.Value;
      Ide.Toma4.xFant            :='';
      Ide.Toma4.fone             :=LimparFormatacao(DM2.TBCteCTE_TOMADORFONE.Value);
      Ide.Toma4.EnderToma.xLgr   :=DM2.TBCteCTE_TOMADORENDERECO.Value;
      Ide.Toma4.EnderToma.nro    :=DM2.TBCteCTE_TOMADORNUMERO.Value;
      Ide.Toma4.EnderToma.xCpl   :=DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value;
      Ide.Toma4.EnderToma.xBairro:=DM2.TBCteCTE_TOMADORBAIRRO.Value;
      Ide.Toma4.EnderToma.cMun   :=DM2.TBCteCTE_TOMADORCIDADECODIGO.Value;
      Ide.Toma4.EnderToma.xMun   :=DM2.TBCteCTE_TOMADORCIDADE.Value;
      Ide.Toma4.EnderToma.CEP    :=StrToInt(LimparFormatacao(DM2.TBCteCTE_TOMADORCEP.Value));
      Ide.Toma4.EnderToma.UF     :=DM2.TBCteCTE_TOMADORESTADO.Value;
      Ide.Toma4.EnderToma.cPais  :=DM2.TBCteCTE_TOMADORPAISCODIGO.Value;
      Ide.Toma4.EnderToma.xPais  :=DM2.TBCteCTE_TOMADORPAIS.Value;
    end;
    {$ENDREGION}

    {$REGION 'Informações Complementares do CTe'}
    //  Informações Complementares do CTe
    compl.xCaracAd   :='';
    compl.xCaracSer  :='';
    compl.xEmi       :='';
    compl.fluxo.xOrig:='';
    compl.xObs:=DM2.TBCteCTE_INFOADICFISCO.Value;
    // Incluir caso a Passagem for diferente de ''
    {
    with compl.fluxo.pass.Add do
    begin
      xPass := '';
    end;
    }
    compl.fluxo.xDest:='';
    compl.fluxo.xRota:='';

    case StrToInt(Copy(DM2.TBCteCTE_ENTREGADATA.Value,1,1)) of
      00: begin
            compl.Entrega.TipoData:=tdSemData;
            compl.Entrega.semData.tpPer:=tdSemData;
          end;
      01: begin
            compl.Entrega.TipoData:=tdNaData;
            compl.Entrega.comData.tpPer:=tdNaData;
            compl.Entrega.comData.dProg:=DM2.TBCteCTE_ENTREGADATAINICIAL.Value;
          end;
      02: begin
            compl.Entrega.TipoData:=tdAteData;
            compl.Entrega.comData.tpPer:=tdAteData;
            compl.Entrega.comData.dProg:=DM2.TBCteCTE_ENTREGADATAINICIAL.Value;
          end;
      03: begin
            compl.Entrega.TipoData:=tdApartirData;
            compl.Entrega.comData.tpPer:=tdApartirData;
            compl.Entrega.comData.dProg:=DM2.TBCteCTE_ENTREGADATAINICIAL.Value;
          end;
      04: begin
            compl.Entrega.TipoData:=tdNoPeriodo;
            compl.Entrega.noPeriodo.tpPer:=tdNoPeriodo;
            compl.Entrega.noPeriodo.dIni:=DM2.TBCteCTE_ENTREGADATAINICIAL.Value;
            compl.Entrega.noPeriodo.dFim:=DM2.TBCteCTE_ENTREGADATAFINAL.Value;
          end;
    end;

    case StrToInt(Copy(DM2.TBCteCTE_ENTREGAHORA.Value,1,1)) of
      00: begin
            compl.Entrega.TipoHora:=thSemHorario;
            compl.Entrega.semHora.tpHor:=thSemHorario;
          end;
      01: begin
            compl.Entrega.TipoHora:=thNoHorario;
            compl.Entrega.comHora.tpHor:=thNoHorario;
            compl.Entrega.comHora.hProg:=DM2.TBCteCTE_ENTREGAHORAINICIAL.Value;
          end;
      02: begin
            compl.Entrega.TipoHora:=thAteHorario;
            compl.Entrega.comHora.tpHor:=thAteHorario;
            compl.Entrega.comHora.hProg:=DM2.TBCteCTE_ENTREGAHORAINICIAL.Value;
          end;
      03: begin
            compl.Entrega.TipoHora:=thApartirHorario;
            compl.Entrega.comHora.tpHor:=thApartirHorario;
            compl.Entrega.comHora.hProg:=DM2.TBCteCTE_ENTREGAHORAINICIAL.Value;
          end;
      04: begin
            compl.Entrega.TipoHora:=thNoIntervalo;
            compl.Entrega.noInter.tpHor:=thNoIntervalo;
            compl.Entrega.noInter.hIni:=DM2.TBCteCTE_ENTREGAHORAINICIAL.Value;
            compl.Entrega.noInter.hFim:=DM2.TBCteCTE_ENTREGAHORAFINAL.Value;
          end;
    end;

    compl.origCalc:='';
    compl.destCalc:='';
    compl.xObs    :=DM2.TBCteCTE_OBSERVACOES.Value+#13#10+DM2.TBCteCTE_INFOADICFISCO.Value;

    // Obs do Contribuinte
    if (DM2.TBCteCTE_TOTALTRIBUTOS.Value<>0) then
    begin
      with compl.ObsCont.New do
      begin
        xCampo:='Lei da Transparencia'; //DM_CNT.Conhec2ObsContCampo.AsString;
        xTexto:='O valor aproximado de tributos incidentes sobre o preço deste serviço é de R$ '+
                 FormatFloat('##0.00', DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended) + ' (' +
                 FormatFloat('#0.00', DM2.TBCteCTE_ALIQICMS.AsExtended) + '%) ' +
                 'Fonte: IBPT';
      end;
    end;

//    with compl.ObsFisco.Add do
//    begin
//      xCampo:='InfoAdicFisco'; //DM_CNT.Conhec2ObsFiscoCampo.AsString;
//      xTexto:=DM2.TBConhecimentosCTE_INFOADICFISCO.Value; // DM_CNT.Conhec2ObsFiscoTexto.AsString;
//    end;
    {$ENDREGION}

    {$REGION 'Dados do emitente'}
    //Dados do Emitente
    Emit.CNPJ             :=DM.TBEmpresaEMP_CNPJ.Value;
    Emit.IE               :=DM.TBEmpresaEMP_IE.Value;
    Emit.xNome            :=DM.TBEmpresaEMP_NOME.Value;
    Emit.xFant            :=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
    Emit.EnderEmit.xLgr   :=DM.TBEmpresaEMP_ENDERECO.Value;
    Emit.EnderEmit.nro    :=DM.TBEmpresaEMP_NUMERO.Value;
    Emit.EnderEmit.xCpl   :='';
    Emit.EnderEmit.xBairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    Emit.EnderEmit.cMun   :=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    Emit.EnderEmit.xMun   :=DM.TBEmpresaEMP_CIDADE.Value;
    Emit.EnderEmit.CEP    :=StrToInt(LimparFormatacao(DM.TBEmpresaEMP_CEP.Value));
    Emit.EnderEmit.UF     :=DM.TBEmpresaEMP_ESTADO.Value;
//nao tem mais na V. 1.04    Emit.EnderEmit.cPais  :=1058; //Brasil.
//nao tem mais na V. 1.04    Emit.EnderEmit.xPais  :='BRASIL';
    Emit.EnderEmit.fone   :=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    {$ENDREGION}

    {$REGION 'Dados do remetente'}
    //Dados do Remetente
    if (not DM2.TBCteCTE_REMCNPJ.IsNull) and (DM2.TBCteCTE_REMCNPJ.Value<>'  .   .   /    -  ') then
    Rem.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value) else
    Rem.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_REMCPF.Value);
    Rem.IE                :=LimparFormatacao(DM2.TBCteCTE_REMIE.Value);
    Rem.xNome             :=DM2.TBCteCTE_REMNOME.Value;
    Rem.xFant             :='';
    Rem.EnderReme.xLgr    :=DM2.TBCteCTE_REMENDERECO.Value;
    Rem.EnderReme.nro     :=DM2.TBCteCTE_REMNUMERO.Value;
    Rem.EnderReme.xCpl    :=DM2.TBCteCTE_REMCOMPLEMENTO.Value;
    Rem.EnderReme.xBairro :=DM2.TBCteCTE_REMBAIRRO.Value;
    Rem.EnderReme.cMun    :=DM2.TBCteCTE_REMCIDADECODIGO.Value;
    Rem.EnderReme.xMun    :=DM2.TBCteCTE_REMCIDADE.Value;
    Rem.EnderReme.CEP     :=StrToInt(LimparFormatacao(DM2.TBCteCTE_REMCEP.Value));
    Rem.EnderReme.UF      :=DM2.TBCteCTE_REMESTADO.Value;
    Rem.EnderReme.cPais   :=DM2.TBCteCTE_REMPAISCODIGO.Value;
    Rem.EnderReme.xPais   :=DM2.TBCteCTE_REMPAIS.Value;
    Rem.fone              :=LimparFormatacao(DM2.TBCteCTE_REMFONE.Value);
    {$ENDREGION}

    {$REGION 'Dados do destinatario'}
    //Dados do Destinatario.
    if (not DM2.TBCteCTE_DESCNPJ.IsNull) and (DM2.TBCteCTE_DESCNPJ.Value<>'  .   .   /    -  ') then
    Dest.CNPJCPF          :=LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value) else
    Dest.CNPJCPF          :=LimparFormatacao(DM2.TBCteCTE_DESCPF.Value);
    Dest.IE               :=LimparFormatacao(DM2.TBCteCTE_DESIE.Value);
    Dest.xNome            :=DM2.TBCteCTE_DESNOME.Value;
    Dest.EnderDest.xLgr   :=DM2.TBCteCTE_DESENDERECO.Value;
    Dest.EnderDest.nro    :=DM2.TBCteCTE_DESNUMERO.Value;
    Dest.EnderDest.xCpl   :=DM2.TBCteCTE_DESCOMPLEMENTO.Value;
    Dest.EnderDest.xBairro:=DM2.TBCteCTE_DESBAIRRO.Value;
    Dest.EnderDest.cMun   :=DM2.TBCteCTE_DESCIDADECODIGO.Value;
    Dest.EnderDest.xMun   :=DM2.TBCteCTE_DESCIDADE.Value;
    Dest.EnderDest.CEP    :=StrToInt(LimparFormatacao(DM2.TBCteCTE_DESCEP.Value));
    Dest.EnderDest.UF     :=DM2.TBCteCTE_DESESTADO.Value;
    Dest.EnderDest.cPais  :=DM2.TBCteCTE_DESPAISCODIGO.Value;
    Dest.EnderDest.xPais  :=DM2.TBCteCTE_DESPAIS.Value;
    Dest.fone             :=LimparFormatacao(DM2.TBCteCTE_DESFONE.Value);
    Dest.ISUF             :=''; //suframa.

    // Local de Entrega.
    Dest.locEnt.CNPJCPF:=''; //Copy(DM_CTA.PessoaFJCGC.AsString, 2, 14)
    Dest.locEnt.xNome  :=''; //DM_CTA.PessoaFJRSocial.AsString;
    Dest.locEnt.xLgr   :=''; //DM_CTA.PessoaFJEndereco.AsString;
    Dest.locEnt.nro    :=''; //DM_CTA.PessoaFJNumero.AsString;
    Dest.locEnt.xCpl   :=''; //DM_CTA.PessoaFJComplemento.AsString;
    Dest.locEnt.xBairro:=''; //DM_CTA.PessoaFJBairro.AsString;
    Dest.locEnt.cMun   :=0; //CodigoMunicipio;
    Dest.locEnt.xMun   :=''; //DM_CTA.PessoaFJCidade.AsString;
    Dest.locEnt.UF     :=''; //DM_CTA.PessoaFJEstado.AsString;
    {$ENDREGION}

    {$REGION 'Dados do expedidor = remetente'}
    //Dados do Expedidor. Informa os mesmos dados do remetente.
    Exped.xNome             :=DM2.TBCteCTE_REMNOME.Value;
    Exped.EnderExped.xLgr   :=DM2.TBCteCTE_REMENDERECO.Value;
    Exped.EnderExped.nro    :=DM2.TBCteCTE_REMNUMERO.Value;
    Exped.EnderExped.xCpl   :=DM2.TBCteCTE_REMCOMPLEMENTO.Value;
    Exped.EnderExped.xBairro:=DM2.TBCteCTE_REMBAIRRO.Value;
    Exped.EnderExped.cMun   :=DM2.TBCteCTE_REMCIDADECODIGO.Value;
    Exped.EnderExped.xMun   :=DM2.TBCteCTE_REMCIDADE.Value;
    Exped.EnderExped.CEP    :=StrToInt(LimparFormatacao(DM2.TBCteCTE_REMCEP.Value));
    Exped.EnderExped.UF     :=DM2.TBCteCTE_REMESTADO.Value;
    Exped.EnderExped.cPais  :=DM2.TBCteCTE_REMPAISCODIGO.Value;
    Exped.EnderExped.xPais  :=DM2.TBCteCTE_REMPAIS.Value;
    if (not DM2.TBCteCTE_REMCNPJ.IsNull) and (DM2.TBCteCTE_REMCNPJ.Value<>'  .   .   /    -  ') then
    Exped.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value) else
    Exped.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_REMCPF.Value);
    Exped.IE                :=DM2.TBCteCTE_REMIE.Value;
    Exped.fone              :=LimparFormatacao(DM2.TBCteCTE_REMFONE.Value);
    {$ENDREGION}

    {$REGION 'Dados do recebedor = destinatario'}
    //Dados do Recebedor. Informa os mesmos dados do destinatario.
    Receb.xNome             :=DM2.TBCteCTE_DESNOME.Value;
    Receb.EnderReceb.xLgr   :=DM2.TBCteCTE_DESENDERECO.Value;
    Receb.EnderReceb.nro    :=DM2.TBCteCTE_DESNUMERO.Value;
    Receb.EnderReceb.xCpl   :=DM2.TBCteCTE_DESCOMPLEMENTO.Value;
    Receb.EnderReceb.xBairro:=DM2.TBCteCTE_DESBAIRRO.Value;
    Receb.EnderReceb.cMun   :=DM2.TBCteCTE_DESCIDADECODIGO.Value;
    Receb.EnderReceb.xMun   :=DM2.TBCteCTE_DESCIDADE.Value;
    Receb.EnderReceb.CEP    :=StrToInt(LimparFormatacao(DM2.TBCteCTE_DESCEP.Value));
    Receb.EnderReceb.UF     :=DM2.TBCteCTE_DESESTADO.Value;
    Receb.EnderReceb.cPais  :=DM2.TBCteCTE_DESPAISCODIGO.Value;
    Receb.EnderReceb.xPais  :=DM2.TBCteCTE_DESPAIS.Value;
    if (not DM2.TBCteCTE_DESCNPJ.IsNull) and (DM2.TBCteCTE_DESCNPJ.Value<>'  .   .   /    -  ') then
    Receb.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value) else
    Receb.CNPJCPF           :=LimparFormatacao(DM2.TBCteCTE_DESCPF.Value);
    Receb.IE                :=DM2.TBCteCTE_DESIE.Value;
    Receb.fone              :=LimparFormatacao(DM2.TBCteCTE_DESFONE.Value);
    {$ENDREGION}

    {$REGION 'Relação das notas fiscais'}
    //Relação das Notas Fiscais.
    DM2.TBCteNotas.First;
    while not DM2.TBCteNotas.Eof do
    begin
      case StrToInt(Copy(DM2.TBCteNotasCTN_TIPONOTA.Value,1,1)) of
        01: begin //nota fiscal.
              //{$IFDEF PL_200}
              //with infCTeNorm.infDoc.infNFe.Add do
              //{$ELSE}
              //with Rem.InfNF.New do //.Add do
              //begin
              //  nRoma:=''; //numero romaneio.
              //  nPed :=''; //numero pedido.
              //  serie:=IntToStr(DM2.TBCteNotasCTN_SERIE.Value);
              //  nDoc :=IntToStr(DM2.TBCteNotasCTN_NUMERO.Value);
              //  dEmi :=DM2.TBCteNotasCTN_DTEMISSAO.Value;
              //  vBC  :=DM2.TBCteNotasCTN_BASEICMS.Value;
              //  vICMS:=DM2.TBCteNotasCTN_TOTALICMS.Value;
              //  vBCST:=DM2.TBCteNotasCTN_BASEICMSST.Value;
              //  vST  :=DM2.TBCteNotasCTN_TOTALICMSST.Value;
              //  vProd:=DM2.TBCteNotasCTN_TOTALPRODUTOS.Value;
              //  vNF  :=DM2.TBCteNotasCTN_VALORTOTAL.Value;
              //  nCFOP:=StrToInt(DM2.TBCteNotasCTN_CFOP.Value);
              //  nPeso:=DM2.TBCteNotasCTN_PESO.Value;
              //  PIN  :=DM2.TBCteNotasCTN_SUFRAMA.Value;
              //  // Local de Retirada.
              //  locRet.CNPJCPF:='';
              //  locRet.xNome  :='';
              //  locRet.xLgr   :='';
              //  locRet.nro    :='';
              //  locRet.xCpl   :='';
              //  locRet.xBairro:='';
              //  locRet.cMun   :=0;
              //  locRet.xMun   :='';
              //  locRet.UF     :='';  }
              //end;
              //{$ENDIF}
            end;
        02: begin //Nota Fiscal Eletrônica.
//              {$IFDEF PL_200}
//              with infCTeNorm.infDoc.infNFe.Add do
//              {$ELSE}
//              with Rem.InfNFe.Add do
              with infCTeNorm.infDoc.infNFe.New do
              begin
                chave:=DM2.TBCteNotasCTN_CHAVEACESSO.Value;
                PIN  :=DM2.TBCteNotasCTN_SUFRAMA.Value;
              end;
//              {$ENDIF}
              end;
        03: begin //Outros Tipos de Documentos.
              //{$IFDEF PL_200}
              with infCTeNorm.infDoc.infOutros.New do

              //{$ELSE}
              //with Rem.InfOutros.Add do
              begin
                case StrToInt(Copy(DM2.TBCteNotasCTN_TIPOOUTROS.Value,1,2)) of
                  00: tpDoc:=tdDeclaracao;
                  99: tpDoc:=tdOutros;
                end;
                descOutros:=DM2.TBCteNotasCTN_DESCRICAODOC.Value;
                nDoc      :=IntToStr(DM2.TBCteNotasCTN_NUMERO.Value);
                dEmi      :=DM2.TBCteNotasCTN_DTEMISSAO.Value;
                vDocFisc  :=DM2.TBCteNotasCTN_VALORTOTAL.AsCurrency;
              end;
              //{$ENDIF}
            end;
      end;
      DM2.TBCteNotas.Next;
    end;
    {$ENDREGION}

    {$REGION 'Valores da prestação de serviço'}
    //Valores da Prestação de Serviço.
    vPrest.vTPrest:=DM2.TBCteCTE_VALORTOTAL.AsExtended;
    vPrest.vRec   :=DM2.TBCteCTE_VALORTOTAL.AsExtended;

    //Relação dos Componentes da Prestação de Serviço. PODE TER MAIS DE UM.
    with vPrest.comp.New do
    begin
      xNome:='FRETE'; //EX: FRETE PESO, FRETE VALOR, SEC/CAT, ADEME, AGENDAMENTO, ETC...
      vComp:=DM2.TBCteCTE_VALORFRETE.AsExtended;
    end;
    if DM2.TBCteCTE_VALORSEGURO.Value<>0 then
    begin
      with vPrest.comp.New do
      begin
        xNome:='SEGURO'; //EX: FRETE PESO, FRETE VALOR, SEC/CAT, ADEME, AGENDAMENTO, ETC...
        vComp:=DM2.TBCteCTE_VALORSEGURO.AsExtended;
      end;
    end;
    if DM2.TBCteCTE_VALOROUTROS.Value<>0 then
    begin
      with vPrest.comp.New do
      begin
        xNome:='OUTROS'; //EX: FRETE PESO, FRETE VALOR, SEC/CAT, ADEME, AGENDAMENTO, ETC...
        vComp:=DM2.TBCteCTE_VALOROUTROS.AsExtended;
      end;
    end;
    //...
    {$ENDREGION}

    {$REGION 'Valores dos impostos'}
    //Valores dos Impostos.
    // TpcnCSTIcms = (cst00, cst10, cst20, cst30, cst40, cst41, cst45, cst50, cst51, cst60, cst70, cst80, cst81, cst90);
    // 80 e 81 apenas para CTe
    if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
    begin
      imp.ICMS.SituTrib:=cstICMSSN;
      imp.ICMS.ICMSSN.indSN:=1;
    end else
    begin
      case DM2.TBCteCTE_CSTICMS.Value of
        00: begin
              Imp.ICMS.SituTrib     :=cst00;
              Imp.ICMS.ICMS00.CST   :=cst00; // Tributação Normal ICMS
              Imp.ICMS.ICMS00.vBC   :=DM2.TBCteCTE_BASEICMS.AsExtended;
              Imp.ICMS.ICMS00.pICMS :=DM2.TBCteCTE_ALIQICMS.AsExtended;
              Imp.ICMS.ICMS00.vICMS :=DM2.TBCteCTE_TOTALICMS.AsExtended;
            end;
        20: begin
              Imp.ICMS.SituTrib     :=cst20;
              Imp.ICMS.ICMS20.CST   :=cst20; // Tributação com BC reduzida do ICMS
              Imp.ICMS.ICMS20.pRedBC:=DM2.TBCteCTE_ALIQICMSRED.AsExtended;
              Imp.ICMS.ICMS20.vBC   :=DM2.TBCteCTE_BASEICMS.AsExtended;
              Imp.ICMS.ICMS20.pICMS :=DM2.TBCteCTE_ALIQICMS.AsExtended;
              Imp.ICMS.ICMS20.vICMS :=DM2.TBCteCTE_TOTALICMS.AsExtended;
            end;
        40: begin
              Imp.ICMS.SituTrib     :=cst40;
              Imp.ICMS.ICMS45.CST   :=cst40; // ICMS Isento
            end;
        41: begin
              Imp.ICMS.SituTrib     :=cst41;
              Imp.ICMS.ICMS45.CST   :=cst41; // ICMS não Tributada
            end;
        51: begin
              Imp.ICMS.SituTrib     :=cst51;
              Imp.ICMS.ICMS45.CST   :=cst51; // ICMS diferido
            end;
        80: begin //está correto icms90 ?
              Imp.ICMS.SituTrib     :=cst80;
              Imp.ICMS.ICMS90.CST   :=cst90; // Tributação atribuida ao tomador ou 3. por ST
              Imp.ICMS.ICMS90.vBC   :=DM2.TBCteCTE_BASEICMS.AsExtended;
              Imp.ICMS.ICMS90.pICMS :=DM2.TBCteCTE_ALIQICMS.AsExtended;
              Imp.ICMS.ICMS90.vICMS :=DM2.TBCteCTE_TOTALICMS.AsExtended;
              Imp.ICMS.ICMS90.vCred :=DM2.TBCteCTE_TOTALICMS.AsExtended; //verificar.
            end;
        81: begin //está correto icms90 ?
              Imp.ICMS.SituTrib     :=cst81;
              Imp.ICMS.ICMS90.CST   :=cst90; // Tributação devido a outra UF
              Imp.ICMS.ICMS90.pRedBC:=DM2.TBCteCTE_ALIQICMSRED.AsExtended;
              Imp.ICMS.ICMS90.vBC   :=DM2.TBCteCTE_BASEICMS.AsExtended;
              Imp.ICMS.ICMS90.pICMS :=DM2.TBCteCTE_ALIQICMS.AsExtended;
              Imp.ICMS.ICMS90.vICMS :=DM2.TBCteCTE_TOTALICMS.AsExtended;
            end;
        90: begin
              Imp.ICMS.SituTrib     :=cst90;
              Imp.ICMS.ICMS90.CST   :=cst90; // ICMS Outros
              Imp.ICMS.ICMS90.pRedBC:=DM2.TBCteCTE_ALIQICMSRED.AsExtended;
              Imp.ICMS.ICMS90.vBC   :=DM2.TBCteCTE_BASEICMS.AsExtended;
              Imp.ICMS.ICMS90.pICMS :=DM2.TBCteCTE_ALIQICMS.AsExtended;
              Imp.ICMS.ICMS90.vICMS :=DM2.TBCteCTE_TOTALICMS.AsExtended;
              Imp.ICMS.ICMS90.vCred :=DM2.TBCteCTE_TOTALICMS.AsExtended; //verificar.
            end;
      end;
    end;
    imp.infAdFisco:=DM2.TBCteCTE_INFOADICFISCO.Value;
    imp.vTotTrib:=DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended;
    {$ENDREGION}

    {$REGION 'Informações da carga'}
    //Informações da Carga.
    infCTeNorm.infCarga.vCarga  := DM2.TBCteCTE_VALORNOTAS.AsExtended;
    infCTeNorm.infCarga.proPred := DM2.TBCteCTE_PRODUTOPREDOM.Value;
    infCTeNorm.infCarga.xOutCat :='';

    DM2.TBCteCarga.First;
    while not DM2.TBCteCarga.Eof do
    begin
      with infCTeNorm.infCarga.InfQ.Add do //UnidMed = (uM3,uKG, uTON, uUNIDADE, uLITROS); PODE TER MAIS DE UM.
      begin
        case StrToInt(Copy(DM2.TBCteCargaCCG_UNIDADEMEDIDA.Value,1,2)) of
          00: cUnid:=uM3;
          01: cUnid:=uKG;
          02: cUnid:=uTON;
          03: cUnid:=uUNIDADE;
          04: cUnid:=uLITROS;
          05: cUnid:=uMMBTU;
        end;
        tpMed:=DM2.TBCteCargaCCG_TIPOMEDIDA.Value;
        qCarga:=DM2.TBCteCargaCCG_QUANTIDADE.AsExtended;
      end;
      DM2.TBCteCarga.Next;
    end;
    {$ENDREGION}

    {$REGION 'Informações da seguradora - modal rodoviário'}
    //Informações da Seguradora. obrigatório apenas no modal rodoviario.
    if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
    begin
      with infCTeNorm.seg.New do
      begin
        case StrToInt(Copy(DM2.TBCteCTE_SEGURO.Value,1,1)) of
          00: respSeg:=rsRemetente;
          01: respSeg:=rsExpedidor;
          02: respSeg:=rsRecebedor;
          03: respSeg:=rsDestinatario;
          04: respSeg:=rsEmitenteCTe;
          05: respSeg:=rsTomadorServico;
        end;
        xSeg:=DM2.TBCteCTE_SEGURONOME.Value;
        nApol:=DM2.TBCteCTE_SEGUROAPOLICE.Value;
        nAver:=AlignText(DM2.TBCteCTE_SEGUROAVERBACAO.Value,'0',20,taRight);
      end;
      //Dados do Modal Rodoviário.
      // verificar infCTeNorm.rodo.RNTRC:=DM2.TBCteCTE_VEICULORNTC.Value;
      infCTeNorm.Rodo.dPrev:=(Date+1);
      infCTeNorm.Rodo.Lota:=ltNao;
      /// ??? ESTAVA NO EXEMPLO DO ACBR. Rodo.CIOT := Trim(DM_CTA.ParamDFeCIOT.AsString);
    end;
    {$ENDREGION}

    {$REGION 'Informações para modal aéreo'}
    //Informações para o modal aéreo.
    if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
    begin
      infCTeNorm.Aereo.nMinu:=DM2.TBCteCTE_AEREOMINUTA.Value;
      infCTeNorm.Aereo.nOCA:=DM2.TBCteCTE_AEREOOCA.Value;
      infCTeNorm.Aereo.dPrevAereo:=DM2.TBCteCTE_AEREODTPREVISTA.Value;
      infCTeNorm.Aereo.xLAgEmi:=DM2.TBCteCTE_AEREONOMEFILIAL.Value;
      infCTeNorm.Aereo.IdT:=''; //???
      infCTeNorm.Aereo.tarifa.CL:=Copy(DM2.TBCteCTE_AEREOTARIFACLASSE.Value,0,1);
      infCTeNorm.Aereo.tarifa.cTar:=IntToStr(DM2.TBCteCTE_AEREOTARIFACODIGO.Value);
      infCTeNorm.Aereo.tarifa.vTar:=DM2.TBCteCTE_AEREOTARIFAVALOR.AsExtended;
      infCTeNorm.Aereo.natCarga.xDime:=DM2.TBCteCTE_AEREODIMENSAO.Value;
      //Aereo.natCarga.cinfManu:= falta criar campo. (ou tabela?).
      infCTeNorm.Aereo.natCarga.cIMP:=''; // falta criar campo. (ou tabela?).
    end;
    {$ENDREGION}

    //Informações do Detalhamento do CTe do tipo Anulação de Valores.
    // infCTeAnuEnt.dEmi:=DM_CNT.Conhec2Data.AsDateTime;
    // infCTeAnuEnt.chCTe:='';
  end;

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

  ACBrCTe1.Configuracoes.Certificados.NumeroSerie:=DM.TBParametrosPAR_SERIALCERTIFICADO.Value; // ACBrCTe1.Configuracoes.Certificados.SelecionarCertificado;
  ACBrCTe1.Conhecimentos.Items[0].GravarXML(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml');
  ACBrCTe1.Conhecimentos.Clear;

  Memo1.Lines.Clear;
  //Atenção para o segundo parâmetro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml',TEncoding.UTF8);
  XMLCTE:=Memo1.Lines.Text;

  if AssinarCTe(XMLCTE) then
  begin
    //grava o CTe com apenas a assinatuta. (substitui o arquivo gerado pelo ACBr acima.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    //Insere as tags de lote e grava o CTe completo.
    GerarTagsLote(XMLCTE);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Geração OK.');
    Result:=True;
  end;
end;

procedure TFormConhecimentos.GerarArquivoCTe1Click(Sender: TObject);
begin
  AbortIf(CTeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL CTE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  //GerarArquivoCTe;
//  if DM.TBParametrosPAR_VERSAOXMLCTE.Value='2.00' then
//  GerarArquivoCTeUtil else
//  if DM.TBParametrosPAR_VERSAOXMLCTE.Value='3.00' then
  GerarArquivoCTeUtil300;
//  if DM.TBParametrosPAR_VERSAOXMLCTE.Value='4.00' then
//  EnviarCTeSincronoRTC;
end;

function TFormConhecimentos.GerarArquivoCTeUtil: Boolean;
var A,M,D, Retira: Word;
  CargaEspecial, Cobranca, CompPrestacao, Containers, CTeSubstituto, Destinatario, DocAnterior, Emitente, Expedidor, Identificacao, Imposto, InfNotas,
  InfoAdicional, InfoCarga, InfoComplementares, InfoCte, InfoManuseio, InfoModal, LocalColeta, Motoristas, PPerigosos, QuantidadeCarga, Recebedor, Remetente,
  Seguro, SeguroApolice, SeguroAverbacao, Transparencia, Tomador, ValoresPrestacao, VeicTransportados, Veiculos, VeiculosProp, XMLCTE: WideString;
  U: CTe_Util_Interface;
  F: TextFile;
  DataHora, Pasta: String;
begin
  {$REGION 'VERIFICACOES'}
  if DM2.TBCte.IsEmpty                then Exit(Erro('Nenhum CTe selecionado.'));
  if DM2.TBCteCTE_STATUS.Value='F'    then Exit(Erro('CTe já finalizado.'));
  if DM2.TBCteCTE_PROTOCOLO.Value<>'' then Exit(Erro('CTe já autorizado para uso. Impossível realizar nova geração do arquivo.'));

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo CTe...');
  {$ENDREGION}
  U:=CoUtil.Create;

  {$REGION 'TOMADOR - REMETENTE'}
  if DM2.TBCteCTE_TOMADOR.Value='0 - REMETENTE' then
  Tomador:=U.tomador(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                     LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                     LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                     LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                     DM2.TBCteCTE_REMNOME.Value,
                     '',
                     LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                     DM2.TBCteCTE_REMENDERECO.Value,
                     DM2.TBCteCTE_REMNUMERO.Value,
                     DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                     DM2.TBCteCTE_REMBAIRRO.Value,
                     IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                     DM2.TBCteCTE_REMCIDADE.Value,
                     LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                     DM2.TBCteCTE_REMESTADO.Value,
                     IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                     DM2.TBCteCTE_REMPAIS.Value,'');
  {$ENDREGION}
  {$REGION 'TOMADOR - EXPEDIDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='1 - EXPEDIDOR' then
  Tomador:=U.tomador(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                     LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                     LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                     LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                     DM2.TBCteCTE_EXPNOME.Value,
                     '',
                     LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                     DM2.TBCteCTE_EXPENDERECO.Value,
                     DM2.TBCteCTE_EXPNUMERO.Value,
                     DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                     DM2.TBCteCTE_EXPBAIRRO.Value,
                     IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                     DM2.TBCteCTE_EXPCIDADE.Value,
                     LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                     DM2.TBCteCTE_EXPESTADO.Value,
                     IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                     DM2.TBCteCTE_EXPPAIS.Value,'');
  {$ENDREGION}
  {$REGION 'TOMADOR - RECEBEDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='2 - RECEBEDOR' then
  Tomador:=U.tomador(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                     LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                     LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                     LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                     DM2.TBCteCTE_RECNOME.Value,
                     '',
                     LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                     DM2.TBCteCTE_RECENDERECO.Value,
                     DM2.TBCteCTE_RECNUMERO.Value,
                     DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                     DM2.TBCteCTE_RECBAIRRO.Value,
                     IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                     DM2.TBCteCTE_RECCIDADE.Value,
                     LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                     DM2.TBCteCTE_RECESTADO.Value,
                     IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                     DM2.TBCteCTE_RECPAIS.Value,
                     '');
  {$ENDREGION}
  {$REGION 'TOMADOR - DESTINATARIO'}
  if DM2.TBCteCTE_TOMADOR.Value='3 - DESTINATARIO' then
  Tomador:=U.tomador(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                     LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                     LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                     LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                     DM2.TBCteCTE_DESNOME.Value,
                     '',
                     LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                     DM2.TBCteCTE_DESENDERECO.Value,
                     DM2.TBCteCTE_DESNUMERO.Value,
                     DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                     DM2.TBCteCTE_DESBAIRRO.Value,
                     IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                     DM2.TBCteCTE_DESCIDADE.Value,
                     LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                     DM2.TBCteCTE_DESESTADO.Value,
                     IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                     DM2.TBCteCTE_DESPAIS.Value,
                     '');
  {$ENDREGION}
  {$REGION 'TOMADOR - OUTROS'}
  if DM2.TBCteCTE_TOMADOR.Value='4 - OUTROS' then
  Tomador:=U.tomador(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                     LimparFormatacao(DM2.TBCteCTE_TOMADORCNPJ.Value),
                     LimparFormatacao(DM2.TBCteCTE_TOMADORCPF.Value),
                     LimparFormatacao(DM2.TBCteCTE_TOMADORIE.Value),
                     DM2.TBCteCTE_TOMADORNOME.Value,
                     '',
                     LimparFormatacao(DM2.TBCteCTE_TOMADORFONE.Value),
                     DM2.TBCteCTE_TOMADORENDERECO.Value,
                     DM2.TBCteCTE_TOMADORNUMERO.Value,
                     DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value,
                     DM2.TBCteCTE_TOMADORBAIRRO.Value,
                     IntToStr(DM2.TBCteCTE_TOMADORCIDADECODIGO.Value),
                     DM2.TBCteCTE_TOMADORCIDADE.Value,
                     LimparFormatacao(DM2.TBCteCTE_TOMADORCEP.Value),
                     DM2.TBCteCTE_TOMADORESTADO.Value,
                     IntToStr(DM2.TBCteCTE_TOMADORPAISCODIGO.Value),
                     DM2.TBCteCTE_TOMADORPAIS.Value,
                     '');
  {$ENDREGION}

  {$REGION 'ide - IDENTIFICACAO'}
  if DM2.TBCteCTE_RETIRA.Value='S' then Retira:=0 else Retira:=1;
  DataHora:=Copy(DM2.TBCteCTE_DATAHORA.Value,9,2)+'/'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,6,2)+'/'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,1,4)+' '+
            Copy(DM2.TBCteCTE_DATAHORA.Value,12,8);
  Identificacao:=U.identificador(DM.TBEmpresaEMP_ESTADOCODIGO.Value,
                                 StrToInt(DM2.TBCteCTE_CODIGONUMERICO.Value),
                                 IntToStr(DM2.TBCteCTE_CFOP.Value),
                                 DM2.TBCteCTE_CFOPDESC.Value,
                                 StrToInt(Copy(DM2.TBCteCTE_FORMAPAGTOSERVICO.Value,1,1)),
                                 DM2.TBCteCTE_MODELO.Value,
                                 DM2.TBCteCTE_SERIE.Value,
                                 DM2.TBCteCTE_CODIGO.Value,
                                 StrToDateTime(DataHora),
                                 1, //dacte 1=retrato - 2=paisagem.
                                 StrToInt(Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1)),
                                 //fia da puta...StrToInt(Copy(DM2.TBCteCTE_CHAVEACESSO.Value,Length(DM2.TBCteCTE_CHAVEACESSO.Value)-1,1)),
                                 StrToInt(Copy(DM2.TBCteCTE_CHAVEACESSO.Value,44,1)),
                                 StrToInt(Copy(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value,1,1)),
                                 StrToInt(Copy(DM2.TBCteCTE_FINALIDADE.Value,1,1)),
                                 0, //0=aplicativo do contribuinte.
                                 '12', //versão do firenet.
                                 DM2.TBCteCTE_CTEREFERENCIADO.Value,
                                 IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                                 DM.TBEmpresaEMP_CIDADE.Value,
                                 DM.TBEmpresaEMP_ESTADO.Value,
                                 Copy(DM2.TBCteCTE_MODAL.Value,1,2),
                                 StrToInt(Copy(DM2.TBCteCTE_TIPOSERVICO.Value,1,1)),
                                 IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                                 DM2.TBCteCTE_REMCIDADE.Value,
                                 DM2.TBCteCTE_REMESTADO.Value,
                                 IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                                 DM2.TBCteCTE_DESCIDADE.Value,
                                 DM2.TBCteCTE_DESESTADO.Value,
                                 Retira,
                                 DM2.TBCteCTE_RETIRADETALHES.Value,
                                 Tomador,
                                 0, //StrToDate(DM2.TBCteCTE_DATAHORACONTINGENCIA.Value),
                                 DM2.TBCteCTE_MOTIVOCONTINGENCIA.Value);
  {$ENDREGION}

  {$REGION 'emi - EMITENTE'}
  Emitente:=U.emitente(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                       LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
                       DM.TBEmpresaEMP_NOME.Value,
                       DM.TBEmpresaEMP_NOMEFANTASIA.Value,
                       DM.TBEmpresaEMP_ENDERECO.Value,
                       DM.TBEmpresaEMP_NUMERO.Value,
                       '',
                       DM.TBEmpresaEMP_BAIRRO.Value,
                       IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                       DM.TBEmpresaEMP_CIDADE.Value,
                       LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
                       DM.TBEmpresaEMP_ESTADO.Value,
                       LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value));
  {$ENDREGION}

  {$REGION 'rem - REMETENTE'}
  LocalColeta:='';
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  Remetente:=U.remetente2G(LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                           LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                           LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                           DM2.TBCteCTE_REMNOME.Value,
                           '',
                           LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                           DM2.TBCteCTE_REMENDERECO.Value,
                           DM2.TBCteCTE_REMNUMERO.Value,
                           DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                           DM2.TBCteCTE_REMBAIRRO.Value,
                           IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                           DM2.TBCteCTE_REMCIDADE.Value,
                           LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                           DM2.TBCteCTE_REMESTADO.Value,
                           IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                           DM2.TBCteCTE_REMPAIS.Value,'',LocalColeta) else
  Remetente:=U.remetente2G(LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                           LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                           LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                           'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', //DM2.TBCteCTE_REMNOME.Value,
                           '',
                           LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                           DM2.TBCteCTE_REMENDERECO.Value,
                           DM2.TBCteCTE_REMNUMERO.Value,
                           DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                           DM2.TBCteCTE_REMBAIRRO.Value,
                           IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                           DM2.TBCteCTE_REMCIDADE.Value,
                           LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                           DM2.TBCteCTE_REMESTADO.Value,
                           IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                           DM2.TBCteCTE_REMPAIS.Value,'',LocalColeta);
  {$ENDREGION}

  {$REGION 'exp - EXPEDIDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  Expedidor:=U.expedidor(LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                         LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                         LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                         DM2.TBCteCTE_EXPNOME.Value,
                         LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                         DM2.TBCteCTE_EXPENDERECO.Value,
                         DM2.TBCteCTE_EXPNUMERO.Value,
                         DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                         DM2.TBCteCTE_EXPBAIRRO.Value,
                         IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                         DM2.TBCteCTE_EXPCIDADE.Value,
                         LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                         DM2.TBCteCTE_EXPESTADO.Value,
                         IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                         DM2.TBCteCTE_EXPPAIS.Value,'') else
  Expedidor:=U.expedidor(LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                         LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                         LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                         'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', //DM2.TBCteCTE_EXPNOME.Value,
                         LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                         DM2.TBCteCTE_EXPENDERECO.Value,
                         DM2.TBCteCTE_EXPNUMERO.Value,
                         DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                         DM2.TBCteCTE_EXPBAIRRO.Value,
                         IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                         DM2.TBCteCTE_EXPCIDADE.Value,
                         LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                         DM2.TBCteCTE_EXPESTADO.Value,
                         IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                         DM2.TBCteCTE_EXPPAIS.Value,'');

  {$ENDREGION}

  {$REGION 'des - DESTINATARIO'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  Destinatario:=U.destinatario(LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                               LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                               LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                               DM2.TBCteCTE_DESNOME.Value,
                               LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                               '',
                               DM2.TBCteCTE_DESENDERECO.Value,
                               DM2.TBCteCTE_DESNUMERO.Value,
                               DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                               DM2.TBCteCTE_DESBAIRRO.Value,
                               IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                               DM2.TBCteCTE_DESCIDADE.Value,
                               LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                               DM2.TBCteCTE_DESESTADO.Value,
                               IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                               DM2.TBCteCTE_DESPAIS.Value,'','') else
  Destinatario:=U.destinatario(LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                               LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                               LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                               'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', //DM2.TBCteCTE_DESNOME.Value,
                               LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                               '',
                               DM2.TBCteCTE_DESENDERECO.Value,
                               DM2.TBCteCTE_DESNUMERO.Value,
                               DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                               DM2.TBCteCTE_DESBAIRRO.Value,
                               IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                               DM2.TBCteCTE_DESCIDADE.Value,
                               LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                               DM2.TBCteCTE_DESESTADO.Value,
                               IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                               DM2.TBCteCTE_DESPAIS.Value,'','');
  {$ENDREGION}

  {$REGION 'receb - RECEBEDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  Recebedor:=U.recebedor(LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                         LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                         LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                         DM2.TBCteCTE_RECNOME.Value,
                         LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                         DM2.TBCteCTE_RECENDERECO.Value,
                         DM2.TBCteCTE_RECNUMERO.Value,
                         DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                         DM2.TBCteCTE_RECBAIRRO.Value,
                         IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                         DM2.TBCteCTE_RECCIDADE.Value,
                         LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                         DM2.TBCteCTE_RECESTADO.Value,
                         IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                         DM2.TBCteCTE_RECPAIS.Value,'') else
  Recebedor:=U.recebedor(LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                         LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                         LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                         'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL', //DM2.TBCteCTE_RECNOME.Value,
                         LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                         DM2.TBCteCTE_RECENDERECO.Value,
                         DM2.TBCteCTE_RECNUMERO.Value,
                         DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                         DM2.TBCteCTE_RECBAIRRO.Value,
                         IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                         DM2.TBCteCTE_RECCIDADE.Value,
                         LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                         DM2.TBCteCTE_RECESTADO.Value,
                         IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                         DM2.TBCteCTE_RECPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'vPrest - VALORES PRESTAÇÃO'}
  CompPrestacao:=U.compVPrest('FRETE',DM2.TBCteCTE_VALORFRETE.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('SEGURO',DM2.TBCteCTE_VALORSEGURO.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('OUTROS',DM2.TBCteCTE_VALOROUTROS.AsExtended);
  ValoresPrestacao:=U.vPrest((DM2.TBCteCTE_VALORFRETE.AsExtended+DM2.TBCteCTE_VALORSEGURO.AsExtended+DM2.TBCteCTE_VALOROUTROS.AsExtended),
                             DM2.TBCteCTE_VALORTOTAL.AsExtended,CompPrestacao);
  {$ENDREGION}

  {$REGION 'imp - IMPOSTOS'}
  InfoAdicional:=DeleteLineBreaks(DM2.TBCteCTE_INFOADICFISCO.Value);
  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value<>'1 - SIMPLES NACIONAL' then
  begin
    if DM2.TBCteCTE_CSTICMS.Value=0 then
    Imposto:=U.ImpICMS00_2G('00',DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional);
    if DM2.TBCteCTE_CSTICMS.Value=20 then
    Imposto:=U.ImpICMS20_2G('20',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMSRED.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional);
    if (DM2.TBCteCTE_CSTICMS.Value=40) or (DM2.TBCteCTE_CSTICMS.Value=41) or (DM2.TBCteCTE_CSTICMS.Value=51) then
    Imposto:=U.ImpICMS45_2G(IntToStr(DM2.TBCteCTE_CSTICMS.Value),DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,DM2.TBCteCTE_INFOADICFISCO.Value);
    if DM2.TBCteCTE_CSTICMS.Value=60 then
    Imposto:=U.ImpICMS60_2G('60',DM2.TBCteCTE_BASEICMSST.AsExtended,DM2.TBCteCTE_ALIQICMSST.AsExtended,DM2.TBCteCTE_TOTALICMSST.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional);
    if (DM2.TBCteCTE_CSTICMS.Value=90) then
    begin
      if DM2.TBCteCTE_REMESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
      Imposto:=U.ImpICMS90_2G('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional) else
      Imposto:=U.ImpICMSOutraUF_2G('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ICMSALIQUOTAUF.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional);
    end;
  end else
  Imposto:=U.ImpICMSSN_2G(DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional); //simples nacional.
  {$ENDREGION}

  //informacoes cte normal e substituto - info carga - containers - docto transp. anterior - seguro da carga - modal rodoviario - modal aereo - modal aquaviario - produtos perigosos - veiculos transportados - cobranca - cte de subtituicao.
  {$REGION 'InfoCarga'}
  QuantidadeCarga:='';
  DM2.TBCteCarga.First;
  while not DM2.TBCteCarga.Eof do
  begin
    QuantidadeCarga:=QuantidadeCarga+U.infQ(Copy(DM2.TBCteCargaCCG_UNIDADEMEDIDA.Value,1,2),DM2.TBCteCargaCCG_TIPOMEDIDA.Value,DM2.TBCteCargaCCG_QUANTIDADE.AsExtended);
    DM2.TBCteCarga.Next;
  end;
  InfoCarga:=U.infCarga(DM2.TBCteCTE_VALORNOTAS.AsExtended,DM2.TBCteCTE_PRODUTOPREDOM.Value,'',QuantidadeCarga);
  {$ENDREGION}
  {$REGION 'Containers - VAZIO'}
  Containers:='';
  {$ENDREGION}
  {$REGION 'Docto transporte anterior - VAZIO'}
  DocAnterior:='';
  {$ENDREGION}
  {$REGION 'Seguro'}
  SeguroApolice:='';
  if DM2.TBCteCTE_SEGUROAPOLICE.Value <> '' then
  SeguroApolice:=DM2.TBCteCTE_SEGUROAPOLICE.Value;

  SeguroAverbacao:='';
  if DM2.TBCteCTE_SEGUROAVERBACAO.Value <> '' then
  SeguroAverbacao:=DM2.TBCteCTE_SEGUROAVERBACAO.Value;

  Seguro:='';
  if DM2.TBCteCTE_SEGUROVALOR.Value > 0 then
  Seguro:=U.seg(StrToInt(Copy(DM2.TBCteCTE_SEGURO.Value,1,1)),
                DM2.TBCteCTE_SEGURONOME.Value,
                SeguroApolice,
                SeguroAverbacao,
                DM2.TBCteCTE_SEGUROVALOR.AsExtended);
  {$ENDREGION}
  {$REGION 'Info modais'}
  InfoModal:='';
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  begin
    Veiculos:='';
    Motoristas:='';
    if DM2.TBCteCTE_LOTACAO.Value='1 - SIM' then
    begin
      DM2.TBCteVeiculos.First;
      while not DM2.TBCteVeiculos.Eof do
      begin
        VeiculosProp:='';
        if DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value='T - TERCEIRO' then
        VeiculosProp:=U.prop(LimparFormatacao(DM2.TBCteVeiculosCTV_CPF.Value),
                             LimparFormatacao(DM2.TBCteVeiculosCTV_CNPJ.Value),
                             DM2.TBCteVeiculosCTV_RNTRC.Value,
                             DM2.TBCteVeiculosCTV_NOME.Value,
                             LimparFormatacao(DM2.TBCteVeiculosCTV_IE.Value),
                             DM2.TBCteVeiculosCTV_ESTADOPROPRIETARIO.Value,
                             StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIETARIO.Value,1,1)));
        Veiculos:=Veiculos+U.veic(IntToStr(DM2.TBCteVeiculosCTV_VEICULO.Value),
                                  DM2.TBCteVeiculosCTV_RENAVAM.Value,
                                  LimparFormatacao(DM2.TBCteVeiculosCTV_PLACA.Value),
                                  FloatToStr(DM2.TBCteVeiculosCTV_TARA.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEKG.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEM3.AsExtended),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value,1,1),
                                  StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOVEICULO.Value,1,1)),
                                  Copy(DM2.TBCteVeiculosCTV_TIPORODADO.Value,1,2),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOCARROCERIA.Value,1,2),
                                  DM2.TBCteVeiculosCTV_ESTADO.Value,VeiculosProp);
        DM2.TBCteVeiculos.Next;
      end;
      Motoristas:=U.moto(DM2.TBCteCTE_MOTORISTA.Value,LimparFormatacao(DM2.TBCteCTE_MOTORISTACPF.Value));
    end;
    InfoModal:=U.rod(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                     DM.TBParametrosPAR_RNTRC.Value,
                     DM2.TBCteCTE_ENTREGADATAFINAL.Value,
                     StrToInt(Copy(DM2.TBCteCTE_LOTACAO.Value,1,1)),
                     DM2.TBCteCTE_CIOT.Value,'','',Veiculos,'',Motoristas);
  end;

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  begin
    //U.cInfManu()
    //U.cIMP()
    //t:='<cInfManu>99</cInfManu><cInfManu>03</cInfManu><cInfManu>06</cInfManu>';
    InfoManuseio:=''; //U.cInfManu('99');
    CargaEspecial:=U.cIMP(DM2.TBCteCTE_AEREOIMP.Value);
    InfoModal:=U.aereo_2G(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                          IntToStr(DM2.TBCteCTE_AEREOMINUTA.Value),
                          DM2.TBCteCTE_AEREOOCA.Value,
                          DM2.TBCteCTE_AEREODTPREVISTA.Value,
                          DM2.TBCteCTE_AEREONOMEFILIAL.Value,
                          '', //id
                          Copy(DM2.TBCteCTE_AEREOTARIFACLASSE.Value,0,1),
                          IntToStr(DM2.TBCteCTE_AEREOTARIFACODIGO.Value),
                          DM2.TBCteCTE_AEREOTARIFAVALOR.AsExtended,
                          DM2.TBCteCTE_AEREODIMENSAO.Value,
                          InfoManuseio,
                          CargaEspecial); //IMP carga.
  end;
  {$ENDREGION}
  {$REGION 'Produtos Perigosos - VAZIO'}
  PPerigosos:='';
  {$ENDREGION}
  {$REGION 'Veiculos Transportados - VAZIO'}
  VeicTransportados:='';
  {$ENDREGION}
  {$REGION 'Cobranca - VAZIO'}
  Cobranca:='';
  {$ENDREGION}
  {$REGION 'cte de substituicao - VAZIO'}
  CTeSubstituto:='';
  {$ENDREGION}
  {$REGION 'Info notas'}
  InfNotas:='';
  DM2.TBCteNotas.First;
  while not DM2.TBCteNotas.Eof do
  begin
    case StrToInt(Copy(DM2.TBCteNotasCTN_TIPONOTA.Value,1,1)) of
      01: begin //nota fiscal.
            InfNotas:=InfNotas+U.infNF_2G('','',IntToStr(DM2.TBCteNotasCTN_MODELO.Value),IntToStr(DM2.TBCteNotasCTN_SERIE.Value),IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                          DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                          DM2.TBCteNotasCTN_BASEICMS.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMS.AsExtended,
                                          DM2.TBCteNotasCTN_BASEICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALPRODUTOS.AsExtended,
                                          DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                          DM2.TBCteNotasCTN_CFOP.Value,
                                          DM2.TBCteNotasCTN_PESO.AsExtended,
                                          DM2.TBCteNotasCTN_SUFRAMA.Value,
                                          0,'');
          end;
      02: begin //Nota Fiscal Eletrônica.
            InfNotas:=InfNotas+U.infNFe_2G(DM2.TBCteNotasCTN_CHAVEACESSO.Value,DM2.TBCteNotasCTN_SUFRAMA.Value,0,'');
          end;
      03: begin //Outros Tipos de Documentos.
            InfNotas:=InfNotas+U.infOutros_2G(Copy(DM2.TBCteNotasCTN_TIPOOUTROS.Value,1,2),
                                              DM2.TBCteNotasCTN_DESCRICAODOC.Value,
                                              IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                              DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                              DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                              0,'');
          end;
    end;
    DM2.TBCteNotas.Next;
  end;
  {$ENDREGION}

  InfoCte:=U.infCTeNorm_2G(InfoCarga,InfNotas,DocAnterior,Seguro,InfoModal,PPerigosos,VeicTransportados,Cobranca,CTeSubstituto);

  Transparencia:=u.obsCont('LEI DA TRANSPARENCIA','O valor aproximado dos tributos incidentes sobre o preco deste servico e de '+Format('%m',[DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended])+' ('+DM2.TBCteCTE_ALIQTRIBUTOS.AsString+'%) Fonte: IBPT');
  InfoComplementares:=U.compl('','','','','','','','',Transparencia,'');

//  '<ObsCont xCampo="LEI DA TRANSPARENCIA"><xTexto>O valor aproximado de tributos incidentes sobre o preço deste serviço é de R$ '+FloatToStr(DM2.TBCteCTE_TOTALTRIBUTOS.Value)+'.</xTexto></ObsCont>';
  //Guia de uso: http://www.flexdocs.com.br/guiaCTe/gerarCTe.html
  //consolida os grupos acima criados.
  XMLCTE:=U.CTe2G(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                  DM2.TBCteCTE_CHAVEACESSO.Value,
                  Identificacao,
                  InfoComplementares,
                  Emitente,
                  Remetente,
                  Expedidor,
                  Recebedor,
                  Destinatario,
                  ValoresPrestacao,
                  Imposto,
                  infoCTe,'');
  XMLCTE:=RemoveAcentosXML(XMLCTE);
  U:=nil;

  if AssinarCTe(XMLCTE) then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    if not System.SysUtils.DirectoryExists(Pasta) then
    begin
      if not System.SysUtils.ForceDirectories(Pasta) then Exit(Erro('Não foi possível criar subpastas para gravação do arquivo.'));
    end;

    //grava o CTe com apenas a assinatuta. (substitui o arquivo gerado pelo ACBr acima.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    //Insere as tags de lote e grava o CTe completo.
    GerarTagsLote(XMLCTE);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Geração OK.');
    Result:=True;
  end;
end;

function TFormConhecimentos.GerarArquivoCTeUtil300: Boolean;
var A,M,D, Retira: Word;
  CargaEspecial, Cobranca, CompPrestacao, Containers, CTeSubstituto, Destinatario, DocAnterior, Emitente, Expedidor, ICMSUFFim, Identificacao, Imposto, InfNotas,
  InfoAdicional, InfoCarga, InfoComplementares, InfoCte, InfoCteSup, InfoManuseio, InfoModal, InfoRespTec, Motoristas, PPerigosos, QuantidadeCarga, Recebedor, Remetente,
  Fluxo, Seguro, SeguroApolice, SeguroAverbacao, Transparencia, Tomador, ValoresPrestacao, VeicTransportados, Veiculos, VeiculosProp, qrCode, MsgResultado, XMLCTE: WideString;
  U: CTe_Util_Interface;
  F: TextFile;
  DataHora, indIETomador, DesNome, RemNome, ExpNome, RecNome: String;
  CodigoClienteTomador, Resultado: Integer;
begin
  {$REGION 'VERIFICACOES'}
  if DM2.TBCte.IsEmpty                then Exit(Erro('Nenhum CTe selecionado.'));
  if DM2.TBCteCTE_STATUS.Value='F'    then Exit(Erro('CTe já finalizado.'));
  if DM2.TBCteCTE_PROTOCOLO.Value<>'' then Exit(Erro('CTe já autorizado para uso. Impossível realizar nova geração do arquivo.'));

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo CTe...');
  {$ENDREGION}
  U:=CoUtil.Create;

  {$REGION 'TOMADOR - REMETENTE'}
  if DM2.TBCteCTE_TOMADOR.Value='0 - REMETENTE' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                          DM2.TBCteCTE_REMNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                          DM2.TBCteCTE_REMENDERECO.Value,
                          DM2.TBCteCTE_REMNUMERO.Value,
                          DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                          DM2.TBCteCTE_REMBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                          DM2.TBCteCTE_REMCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                          DM2.TBCteCTE_REMESTADO.Value,
                          IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                          DM2.TBCteCTE_REMPAIS.Value,'');
    CodigoClienteTomador:=DM2.TBCteCTE_REMETENTE.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - EXPEDIDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='1 - EXPEDIDOR' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                          DM2.TBCteCTE_EXPNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                          DM2.TBCteCTE_EXPENDERECO.Value,
                          DM2.TBCteCTE_EXPNUMERO.Value,
                          DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                          DM2.TBCteCTE_EXPBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                          DM2.TBCteCTE_EXPCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                          DM2.TBCteCTE_EXPESTADO.Value,
                          IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                          DM2.TBCteCTE_EXPPAIS.Value,'');
    CodigoClienteTomador:=DM2.TBCteCTE_EXPEDIDOR.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - RECEBEDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='2 - RECEBEDOR' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                          DM2.TBCteCTE_RECNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                          DM2.TBCteCTE_RECENDERECO.Value,
                          DM2.TBCteCTE_RECNUMERO.Value,
                          DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                          DM2.TBCteCTE_RECBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                          DM2.TBCteCTE_RECCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                          DM2.TBCteCTE_RECESTADO.Value,
                          IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                          DM2.TBCteCTE_RECPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_RECEBEDOR.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - DESTINATARIO'}
  if DM2.TBCteCTE_TOMADOR.Value='3 - DESTINATARIO' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                          DM2.TBCteCTE_DESNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                          DM2.TBCteCTE_DESENDERECO.Value,
                          DM2.TBCteCTE_DESNUMERO.Value,
                          DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                          DM2.TBCteCTE_DESBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                          DM2.TBCteCTE_DESCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                          DM2.TBCteCTE_DESESTADO.Value,
                          IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                          DM2.TBCteCTE_DESPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_DESTINATARIO.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - OUTROS'}
  if DM2.TBCteCTE_TOMADOR.Value='4 - OUTROS' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORIE.Value),
                          DM2.TBCteCTE_TOMADORNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_TOMADORFONE.Value),
                          DM2.TBCteCTE_TOMADORENDERECO.Value,
                          DM2.TBCteCTE_TOMADORNUMERO.Value,
                          DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value,
                          DM2.TBCteCTE_TOMADORBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_TOMADORCIDADECODIGO.Value),
                          DM2.TBCteCTE_TOMADORCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCEP.Value),
                          DM2.TBCteCTE_TOMADORESTADO.Value,
                          IntToStr(DM2.TBCteCTE_TOMADORPAISCODIGO.Value),
                          DM2.TBCteCTE_TOMADORPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_TOMADORCODIGO.Value;
  end;
  {$ENDREGION}

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select CLI_CONTRIBUINTEICMS from CLIENTES where CLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=CodigoClienteTomador;
  DM.QYAux.Open;
  indIETomador:=DM.QYAux.FieldByName('CLI_CONTRIBUINTEICMS').AsString;
  DM.QYAux.Close;

  {$REGION 'ide - IDENTIFICACAO'}
  if DM2.TBCteCTE_RETIRA.Value='S' then Retira:=0 else Retira:=1;
  DataHora:=Copy(DM2.TBCteCTE_DATAHORA.Value,1,4)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,6,2)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,9,2)+'T'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,12,8)+DM.TBParametrosPAR_FUSOHORARIO.Value;
  Identificacao:=U.identificador300(DM.TBEmpresaEMP_ESTADOCODIGO.Value,
                                    StrToInt(DM2.TBCteCTE_CODIGONUMERICO.Value),
                                    IntToStr(DM2.TBCteCTE_CFOP.Value),
                                    DM2.TBCteCTE_CFOPDESC.Value,
                                    DM2.TBCteCTE_MODELO.Value,
                                    DM2.TBCteCTE_SERIE.Value,
                                    DM2.TBCteCTE_CODIGO.Value,
                                    DataHora,
                                    1, //dacte 1=retrato - 2=paisagem.
                                    StrToInt(Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1)),
                                    StrToInt(Copy(DM2.TBCteCTE_CHAVEACESSO.Value,44,1)),
                                    StrToInt(Copy(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value,1,1)),
                                    StrToInt(Copy(DM2.TBCteCTE_FINALIDADE.Value,1,1)),
                                    0, //0=aplicativo do contribuinte.
                                    '12', //versão do firenet.
                                    ' ', //ind globalizado.
                                    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                                    DM.TBEmpresaEMP_CIDADE.Value,
                                    DM.TBEmpresaEMP_ESTADO.Value,
                                    Copy(DM2.TBCteCTE_MODAL.Value,1,2),
                                    StrToInt(Copy(DM2.TBCteCTE_TIPOSERVICO.Value,1,1)),
                                    IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                                    DM2.TBCteCTE_REMCIDADE.Value,
                                    DM2.TBCteCTE_REMESTADO.Value,
                                    IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                                    DM2.TBCteCTE_DESCIDADE.Value,
                                    DM2.TBCteCTE_DESESTADO.Value,
                                    Retira,
                                    DM2.TBCteCTE_RETIRADETALHES.Value,
                                    StrToInt(Copy(indIETomador,1,1)),
                                    Tomador,
                                    '', //StrToDate(DM2.TBCteCTE_DATAHORACONTINGENCIA.Value),
                                    ' '); //campos nao estao na tela -> ^ DM2.TBCteCTE_MOTIVOCONTINGENCIA.Value);
  {$ENDREGION}

  {$REGION 'emi - EMITENTE'}
  Emitente:=U.emitente300(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                          LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
                          '', //IE St.
                          DM.TBEmpresaEMP_NOME.Value,
                          DM.TBEmpresaEMP_NOMEFANTASIA.Value,
                          DM.TBEmpresaEMP_ENDERECO.Value,
                          DM.TBEmpresaEMP_NUMERO.Value,
                          '', //complemento.
                          DM.TBEmpresaEMP_BAIRRO.Value,
                          IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                          DM.TBEmpresaEMP_CIDADE.Value,
                          LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
                          DM.TBEmpresaEMP_ESTADO.Value,
                          LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value));
  {$ENDREGION}

  {$REGION 'rem - REMETENTE'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  RemNome:=DM2.TBCteCTE_REMNOME.Value else
  RemNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Remetente:=U.remetente300(LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                            RemNome,
                            '',
                            LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                            DM2.TBCteCTE_REMENDERECO.Value,
                            DM2.TBCteCTE_REMNUMERO.Value,
                            DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                            DM2.TBCteCTE_REMBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                            DM2.TBCteCTE_REMCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                            DM2.TBCteCTE_REMESTADO.Value,
                            IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                            DM2.TBCteCTE_REMPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'exp - EXPEDIDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  ExpNome:=DM2.TBCteCTE_EXPNOME.Value else
  ExpNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Expedidor:=U.expedidor300(LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                            ExpNome, //DM2.TBCteCTE_EXPNOME.Value,
                            LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                            DM2.TBCteCTE_EXPENDERECO.Value,
                            DM2.TBCteCTE_EXPNUMERO.Value,
                            DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                            DM2.TBCteCTE_EXPBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                            DM2.TBCteCTE_EXPCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                            DM2.TBCteCTE_EXPESTADO.Value,
                            IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                            DM2.TBCteCTE_EXPPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'des - DESTINATARIO'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  DesNome:=DM2.TBCteCTE_DESNOME.Value else
  DesNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Destinatario:=U.destinatario300(LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                                  LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                                  LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                                  DesNome, //DM2.TBCteCTE_DESNOME.Value,
                                  LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                                  '',
                                  DM2.TBCteCTE_DESENDERECO.Value,
                                  DM2.TBCteCTE_DESNUMERO.Value,
                                  DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                                  DM2.TBCteCTE_DESBAIRRO.Value,
                                  IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                                  DM2.TBCteCTE_DESCIDADE.Value,
                                  LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                                  DM2.TBCteCTE_DESESTADO.Value,
                                  IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                                  DM2.TBCteCTE_DESPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'receb - RECEBEDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  RecNome:=DM2.TBCteCTE_RECNOME.Value else
  RecNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Recebedor:=U.recebedor300(LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                            RecNome,
                            LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                            DM2.TBCteCTE_RECENDERECO.Value,
                            DM2.TBCteCTE_RECNUMERO.Value,
                            DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                            DM2.TBCteCTE_RECBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                            DM2.TBCteCTE_RECCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                            DM2.TBCteCTE_RECESTADO.Value,
                            IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                            DM2.TBCteCTE_RECPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'vPrest - VALORES PRESTAÇÃO'}
  CompPrestacao:=U.compVPrest('FRETE',DM2.TBCteCTE_VALORFRETE.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('SEGURO',DM2.TBCteCTE_VALORSEGURO.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('OUTROS',DM2.TBCteCTE_VALOROUTROS.AsExtended);
  ValoresPrestacao:=U.vPrest((DM2.TBCteCTE_VALORFRETE.AsExtended+DM2.TBCteCTE_VALORSEGURO.AsExtended+DM2.TBCteCTE_VALOROUTROS.AsExtended),
                             DM2.TBCteCTE_VALORTOTAL.AsExtended,CompPrestacao);
  {$ENDREGION}

  {$REGION 'imp - IMPOSTOS'}
  InfoAdicional:=DeleteLineBreaks(DM2.TBCteCTE_INFOADICFISCO.Value);
  ICMSUFFim:='';
  //se informa a difal, entao cria o grupo icmsuffim.
  DM.TBNaturezas.Close;
  DM.TBNaturezas.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CFOP.Value;
  DM.TBNaturezas.Open;

  if DM.TBNaturezasNAT_INFORMADIFAL.Value='S' then
  ICMSUFFim:=U.ICMSUFFim(DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMSUFFIM.AsExtended,
                         DM2.TBCteCTE_ALIQFCP.AsExtended,DM2.TBCteCTE_ALIQICMSINTER.AsExtended,DM2.TBCteCTE_ALIQICMSINTERPART.AsExtended,
                         DM2.TBCteCTE_TOTALFCP.AsExtended,DM2.TBCteCTE_TOTALICMSUFFIM.AsExtended,DM2.TBCteCTE_TOTALICMSUFINI.AsExtended);

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value<>'1 - SIMPLES NACIONAL' then
  begin
    if DM2.TBCteCTE_CSTICMS.Value=0 then
    Imposto:=U.ImpICMS00_NT2015003('00',DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if DM2.TBCteCTE_CSTICMS.Value=20 then
    Imposto:=U.ImpICMS20_NT2015003('20',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMSRED.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if (DM2.TBCteCTE_CSTICMS.Value=40) or (DM2.TBCteCTE_CSTICMS.Value=41) or (DM2.TBCteCTE_CSTICMS.Value=51) then
    Imposto:=U.ImpICMS45_NT2015003(IntToStr(DM2.TBCteCTE_CSTICMS.Value),DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,DM2.TBCteCTE_INFOADICFISCO.Value,ICMSUFFim);
    if DM2.TBCteCTE_CSTICMS.Value=60 then
    Imposto:=U.ImpICMS60_NT2015003('60',DM2.TBCteCTE_BASEICMSST.AsExtended,DM2.TBCteCTE_ALIQICMSST.AsExtended,DM2.TBCteCTE_TOTALICMSST.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if (DM2.TBCteCTE_CSTICMS.Value=90) then
    begin
      if DM2.TBCteCTE_REMESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
      Imposto:=U.ImpICMS90_NT2015003('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim) else
      Imposto:=U.ImpICMSOutraUF_NT2015003('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ICMSALIQUOTAUF.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    end;
  end else
  //Imposto:=U.ImpICMSSN300(Decimais(DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,2),InfoAdicional,ICMSUFFim); //simples nacional. só essa atualizou para a 3.00?
  //Imposto:='<imp><ICMS><ICMSSN><CST>90</CST><indSN>1</indSN></ICMSSN></ICMS><vTotTrib>30.00</vTotTrib><infAdFisco>testes</infAdFisco></imp>';
  begin
    if InfoAdicional<>'' then
    Imposto:='<imp><ICMS><ICMSSN><CST>90</CST><indSN>1</indSN></ICMSSN></ICMS><vTotTrib>'+V2P(Decimais2(DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,2))+'</vTotTrib><infAdFisco>'+InfoAdicional+'</infAdFisco></imp>' else
    Imposto:='<imp><ICMS><ICMSSN><CST>90</CST><indSN>1</indSN></ICMSSN></ICMS><vTotTrib>'+V2P(Decimais2(DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,2))+'</vTotTrib></imp>';
  end;
  {$ENDREGION}

  //informacoes cte normal e substituto - info carga - containers - docto transp. anterior - seguro da carga - modal rodoviario - modal aereo - modal aquaviario - produtos perigosos - veiculos transportados - cobranca - cte de subtituicao.
  {$REGION 'InfoCarga'}
  QuantidadeCarga:='';
  DM2.TBCteCarga.First;
  while not DM2.TBCteCarga.Eof do
  begin
    QuantidadeCarga:=QuantidadeCarga+U.infQ(Copy(DM2.TBCteCargaCCG_UNIDADEMEDIDA.Value,1,2),DM2.TBCteCargaCCG_TIPOMEDIDA.Value,DM2.TBCteCargaCCG_QUANTIDADE.AsExtended);
    DM2.TBCteCarga.Next;
  end;
  InfoCarga:=U.infCarga300(DM2.TBCteCTE_VALORNOTAS.AsExtended,DM2.TBCteCTE_PRODUTOPREDOM.Value,'',QuantidadeCarga,0);
  {$ENDREGION}
  {$REGION 'Containers - VAZIO'}
  Containers:='';
  {$ENDREGION}
  {$REGION 'Docto transporte anterior - VAZIO'}
  DocAnterior:='';
  {$ENDREGION}
  {$REGION 'Seguro'}
  SeguroApolice:='';
  if DM2.TBCteCTE_SEGUROAPOLICE.Value <> '' then
  SeguroApolice:=DM2.TBCteCTE_SEGUROAPOLICE.Value;

  SeguroAverbacao:='';
  if DM2.TBCteCTE_SEGUROAVERBACAO.Value <> '' then
  SeguroAverbacao:=DM2.TBCteCTE_SEGUROAVERBACAO.Value;

  Seguro:='';
  if DM2.TBCteCTE_SEGUROVALOR.Value > 0 then
  Seguro:=U.seg(StrToInt(Copy(DM2.TBCteCTE_SEGURO.Value,1,1)),
                DM2.TBCteCTE_SEGURONOME.Value,
                SeguroApolice,
                SeguroAverbacao,
                DM2.TBCteCTE_SEGUROVALOR.AsExtended);
  {$ENDREGION}
  {$REGION 'Info modais'}
  InfoModal:='';
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  begin
    Veiculos:='';
    Motoristas:='';
    if DM2.TBCteCTE_LOTACAO.Value='1 - SIM' then
    begin
      DM2.TBCteVeiculos.First;
      while not DM2.TBCteVeiculos.Eof do
      begin
        VeiculosProp:='';
        if DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value='T - TERCEIRO' then
        VeiculosProp:=U.prop(LimparFormatacao(DM2.TBCteVeiculosCTV_CPF.Value),
                             LimparFormatacao(DM2.TBCteVeiculosCTV_CNPJ.Value),
                             DM2.TBCteVeiculosCTV_RNTRC.Value,
                             DM2.TBCteVeiculosCTV_NOME.Value,
                             LimparFormatacao(DM2.TBCteVeiculosCTV_IE.Value),
                             DM2.TBCteVeiculosCTV_ESTADOPROPRIETARIO.Value,
                             StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIETARIO.Value,1,1)));
        Veiculos:=Veiculos+U.veic(IntToStr(DM2.TBCteVeiculosCTV_VEICULO.Value),
                                  DM2.TBCteVeiculosCTV_RENAVAM.Value,
                                  LimparFormatacao(DM2.TBCteVeiculosCTV_PLACA.Value),
                                  FloatToStr(DM2.TBCteVeiculosCTV_TARA.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEKG.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEM3.AsExtended),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value,1,1),
                                  StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOVEICULO.Value,1,1)),
                                  Copy(DM2.TBCteVeiculosCTV_TIPORODADO.Value,1,2),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOCARROCERIA.Value,1,2),
                                  DM2.TBCteVeiculosCTV_ESTADO.Value,VeiculosProp);
        DM2.TBCteVeiculos.Next;
      end;
      Motoristas:=U.moto(DM2.TBCteCTE_MOTORISTA.Value,LimparFormatacao(DM2.TBCteCTE_MOTORISTACPF.Value));
    end;
    InfoModal:=U.rod300(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                        DM.TBParametrosPAR_RNTRC.Value,
                        ''); //ordens de coleta.
                        //DM2.TBCteCTE_ENTREGADATAFINAL.Value,
                        //StrToInt(Copy(DM2.TBCteCTE_LOTACAO.Value,1,1)),
                        //DM2.TBCteCTE_CIOT.Value,'','',Veiculos,'',Motoristas);
  end;

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  begin
    //U.cInfManu()
    //U.cIMP()
    //t:='<cInfManu>99</cInfManu><cInfManu>03</cInfManu><cInfManu>06</cInfManu>';
    InfoManuseio:=''; //U.cInfManu('99');
    CargaEspecial:=U.cIMP(DM2.TBCteCTE_AEREOIMP.Value);
    //U.inf
    InfoModal:=U.aereo300(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                          IntToStr(DM2.TBCteCTE_AEREOMINUTA.Value),
                          DM2.TBCteCTE_AEREOOCA.Value,
                          DM2.TBCteCTE_AEREODTPREVISTA.Value,
                          DM2.TBCteCTE_AEREODIMENSAO.Value,
                          InfoManuseio,
                          Copy(DM2.TBCteCTE_AEREOTARIFACLASSE.Value,0,1),
                          IntToStr(DM2.TBCteCTE_AEREOTARIFACODIGO.Value),
                          DM2.TBCteCTE_AEREOTARIFAVALOR.AsExtended,
                          '');
                          //DM2.TBCteCTE_AEREONOMEFILIAL.Value,
                          //'', //id
                          //CargaEspecial); //IMP carga.
    //acho q nao precisa mais!InfoModal:=StringReplace(InfoModal,'dPrev','dPrevAereo',[rfReplaceAll]); //bug na DLL?s
  end;
  {$ENDREGION}
  {$REGION 'Produtos Perigosos - VAZIO'}
  PPerigosos:='';
  {$ENDREGION}
  {$REGION 'Veiculos Transportados - VAZIO'}
  VeicTransportados:='';
  {$ENDREGION}
  {$REGION 'Cobranca - VAZIO'}
  Cobranca:='';
  {$ENDREGION}
  {$REGION 'cte de substituicao - VAZIO'}
  CTeSubstituto:='';
  {$ENDREGION}
  {$REGION 'Info notas'}
  InfNotas:='';
  DM2.TBCteNotas.First;
  while not DM2.TBCteNotas.Eof do
  begin
    case StrToInt(Copy(DM2.TBCteNotasCTN_TIPONOTA.Value,1,1)) of
      01: begin //nota fiscal.
            InfNotas:=InfNotas+U.infNF_2G('','',IntToStr(DM2.TBCteNotasCTN_MODELO.Value),IntToStr(DM2.TBCteNotasCTN_SERIE.Value),IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                          DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                          DM2.TBCteNotasCTN_BASEICMS.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMS.AsExtended,
                                          DM2.TBCteNotasCTN_BASEICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALPRODUTOS.AsExtended,
                                          DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                          DM2.TBCteNotasCTN_CFOP.Value,
                                          DM2.TBCteNotasCTN_PESO.AsExtended,
                                          DM2.TBCteNotasCTN_SUFRAMA.Value,
                                          0,'');
          end;
      02: begin //Nota Fiscal Eletrônica.
            InfNotas:=InfNotas+U.infNFe_2G(DM2.TBCteNotasCTN_CHAVEACESSO.Value,DM2.TBCteNotasCTN_SUFRAMA.Value,0,'');
          end;
      03: begin //Outros Tipos de Documentos.
            InfNotas:=InfNotas+U.infOutros_2G(Copy(DM2.TBCteNotasCTN_TIPOOUTROS.Value,1,2),
                                              DM2.TBCteNotasCTN_DESCRICAODOC.Value,
                                              IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                              DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                              DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                              0,'');
          end;
    end;
    DM2.TBCteNotas.Next;
  end;
  {$ENDREGION}
  {$REGION 'Info Resp Tecnico'}
  InfoRespTec:=U.infRespTec2('12843516000187','ROGERIO','rogeriopett@gmail.com','47991963060','','','');
  {$ENDREGION}
  InfoCte:=U.infCTeNorm300(InfoCarga,InfNotas,DocAnterior,InfoModal,VeicTransportados,Cobranca,CTeSubstituto,'', '');
  InfoCteSup:=U.infCTeSupl('https://dfe-portal.svrs.rs.gov.br/cte/qrCode',
                           DM2.TBCteCTE_CHAVEACESSO.Value,
                           StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
                           DM.TBParametrosPAR_NOMECERTIFICADO.Value,
                           qrCode,Resultado,MsgResultado);

  Transparencia:=u.obsCont('LEI DA TRANSPARENCIA','O valor aproximado dos tributos incidentes sobre o preco deste servico e de '+Format('%m',[DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended])+' ('+DM2.TBCteCTE_ALIQTRIBUTOS.AsString+'%) Fonte: IBPT');
  //Fluxo:=U.fluxo300('CWB','','GRU','');
  Fluxo:=''; //U.fluxo300('CWB','','GRU','');
  InfoComplementares:=U.compl('','','',Fluxo,'','','','',Transparencia,'');

//  '<ObsCont xCampo="LEI DA TRANSPARENCIA"><xTexto>O valor aproximado de tributos incidentes sobre o preço deste serviço é de R$ '+FloatToStr(DM2.TBCteCTE_TOTALTRIBUTOS.Value)+'.</xTexto></ObsCont>';
  //Guia de uso: http://www.flexdocs.com.br/guiaCTe/gerarCTe.html
  //consolida os grupos acima criados.
  XMLCTE:=U.CTe_v3a(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                    DM2.TBCteCTE_CHAVEACESSO.Value,
                    Identificacao,
                    InfoComplementares,
                    Emitente,
                    Remetente,
                    Expedidor,
                    Recebedor,
                    Destinatario,
                    ValoresPrestacao,
                    Imposto,
                    infoCTe,'',
                    InfoRespTec,
                    InfoCteSup);
  XMLCTE:=RemoveAcentosXML(XMLCTE);
  U:=nil;

  if AssinarCTe(XMLCTE) then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
    if not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)) then
    begin
      if not System.SysUtils.ForceDirectories(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)) then
      begin
        MessageDlg('Não foi possível criar subpastas para gravação do arquivo.',mtError,[mbOK],0);
        Result:=False;
        Exit;
      end;
    end;
    //grava o CTe com apenas a assinatuta. (substitui o arquivo gerado pelo ACBr acima.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    //Insere as tags de lote e grava o CTe completo.
    GerarTagsLote(XMLCTE);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Geração OK.');
    Result:=True;
  end else
  Result:=False;
end;

function TFormConhecimentos.EnviarCTeSincrono: Boolean;
var A,M,D, Retira: Word;
  CargaEspecial, Cobranca, CompPrestacao, Containers, CTeSubstituto, Destinatario, DocAnterior, Emitente, Expedidor, ICMSUFFim, Identificacao, Imposto, InfNotas,
  InfoAdicional, InfoCarga, InfoComplementares, InfoCte, InfoManuseio, InfoModal, Motoristas, PPerigosos, QuantidadeCarga, Recebedor, Remetente,
  Fluxo, Seguro, SeguroApolice, SeguroAverbacao, Transparencia, Tomador, ValoresPrestacao, VeicTransportados, Veiculos, VeiculosProp, XMLCTE: WideString;
  U: CTe_Util_Interface;
  F: TextFile;
  DataHora, Pasta, indIETomador, DesNome, RemNome, ExpNome, RecNome: String;
  CodigoClienteTomador: Integer;
begin
  {$REGION 'VERIFICACOES'}
  if DM2.TBCte.IsEmpty                then Exit(Erro('Nenhum CTe selecionado.'));
  if DM2.TBCteCTE_STATUS.Value='F'    then Exit(Erro('CTe já finalizado.'));
  if DM2.TBCteCTE_PROTOCOLO.Value<>'' then Exit(Erro('CTe já autorizado para uso. Impossível realizar nova geração do arquivo.'));

  PageControl1.ActivePageIndex:=6;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Geração de arquivo CTe...');
  {$ENDREGION}
  U:=CoUtil.Create;

  {$REGION 'TOMADOR - REMETENTE'}
  if DM2.TBCteCTE_TOMADOR.Value='0 - REMETENTE' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                          DM2.TBCteCTE_REMNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                          DM2.TBCteCTE_REMENDERECO.Value,
                          DM2.TBCteCTE_REMNUMERO.Value,
                          DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                          DM2.TBCteCTE_REMBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                          DM2.TBCteCTE_REMCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                          DM2.TBCteCTE_REMESTADO.Value,
                          IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                          DM2.TBCteCTE_REMPAIS.Value,'');
    CodigoClienteTomador:=DM2.TBCteCTE_REMETENTE.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - EXPEDIDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='1 - EXPEDIDOR' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                          DM2.TBCteCTE_EXPNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                          DM2.TBCteCTE_EXPENDERECO.Value,
                          DM2.TBCteCTE_EXPNUMERO.Value,
                          DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                          DM2.TBCteCTE_EXPBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                          DM2.TBCteCTE_EXPCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                          DM2.TBCteCTE_EXPESTADO.Value,
                          IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                          DM2.TBCteCTE_EXPPAIS.Value,'');
    CodigoClienteTomador:=DM2.TBCteCTE_EXPEDIDOR.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - RECEBEDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='2 - RECEBEDOR' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                          DM2.TBCteCTE_RECNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                          DM2.TBCteCTE_RECENDERECO.Value,
                          DM2.TBCteCTE_RECNUMERO.Value,
                          DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                          DM2.TBCteCTE_RECBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                          DM2.TBCteCTE_RECCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                          DM2.TBCteCTE_RECESTADO.Value,
                          IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                          DM2.TBCteCTE_RECPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_RECEBEDOR.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - DESTINATARIO'}
  if DM2.TBCteCTE_TOMADOR.Value='3 - DESTINATARIO' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                          DM2.TBCteCTE_DESNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                          DM2.TBCteCTE_DESENDERECO.Value,
                          DM2.TBCteCTE_DESNUMERO.Value,
                          DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                          DM2.TBCteCTE_DESBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                          DM2.TBCteCTE_DESCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                          DM2.TBCteCTE_DESESTADO.Value,
                          IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                          DM2.TBCteCTE_DESPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_DESTINATARIO.Value;
  end;
  {$ENDREGION}
  {$REGION 'TOMADOR - OUTROS'}
  if DM2.TBCteCTE_TOMADOR.Value='4 - OUTROS' then
  begin
    Tomador:=U.tomador300(StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCNPJ.Value),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCPF.Value),
                          LimparFormatacao(DM2.TBCteCTE_TOMADORIE.Value),
                          DM2.TBCteCTE_TOMADORNOME.Value,
                          '',
                          LimparFormatacao(DM2.TBCteCTE_TOMADORFONE.Value),
                          DM2.TBCteCTE_TOMADORENDERECO.Value,
                          DM2.TBCteCTE_TOMADORNUMERO.Value,
                          DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value,
                          DM2.TBCteCTE_TOMADORBAIRRO.Value,
                          IntToStr(DM2.TBCteCTE_TOMADORCIDADECODIGO.Value),
                          DM2.TBCteCTE_TOMADORCIDADE.Value,
                          LimparFormatacao(DM2.TBCteCTE_TOMADORCEP.Value),
                          DM2.TBCteCTE_TOMADORESTADO.Value,
                          IntToStr(DM2.TBCteCTE_TOMADORPAISCODIGO.Value),
                          DM2.TBCteCTE_TOMADORPAIS.Value,
                          '');
    CodigoClienteTomador:=DM2.TBCteCTE_TOMADORCODIGO.Value;
  end;
  {$ENDREGION}

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select CLI_CONTRIBUINTEICMS from CLIENTES where CLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=CodigoClienteTomador;
  DM.QYAux.Open;
  indIETomador:=DM.QYAux.FieldByName('CLI_CONTRIBUINTEICMS').AsString;
  DM.QYAux.Close;

  {$REGION 'ide - IDENTIFICACAO'}
  if DM2.TBCteCTE_RETIRA.Value='S' then Retira:=0 else Retira:=1;
  DataHora:=Copy(DM2.TBCteCTE_DATAHORA.Value,1,4)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,6,2)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,9,2)+'T'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,12,8)+DM.TBParametrosPAR_FUSOHORARIO.Value;
  Identificacao:=U.identificador300(DM.TBEmpresaEMP_ESTADOCODIGO.Value,
                                    StrToInt(DM2.TBCteCTE_CODIGONUMERICO.Value),
                                    IntToStr(DM2.TBCteCTE_CFOP.Value),
                                    DM2.TBCteCTE_CFOPDESC.Value,
                                    DM2.TBCteCTE_MODELO.Value,
                                    DM2.TBCteCTE_SERIE.Value,
                                    DM2.TBCteCTE_CODIGO.Value,
                                    DataHora,
                                    1, //dacte 1=retrato - 2=paisagem.
                                    StrToInt(Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1)),
                                    StrToInt(Copy(DM2.TBCteCTE_CHAVEACESSO.Value,44,1)),
                                    StrToInt(Copy(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value,1,1)),
                                    StrToInt(Copy(DM2.TBCteCTE_FINALIDADE.Value,1,1)),
                                    0, //0=aplicativo do contribuinte.
                                    '12', //versão do firenet.
                                    ' ', //ind globalizado.
                                    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                                    DM.TBEmpresaEMP_CIDADE.Value,
                                    DM.TBEmpresaEMP_ESTADO.Value,
                                    Copy(DM2.TBCteCTE_MODAL.Value,1,2),
                                    StrToInt(Copy(DM2.TBCteCTE_TIPOSERVICO.Value,1,1)),
                                    IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                                    DM2.TBCteCTE_REMCIDADE.Value,
                                    DM2.TBCteCTE_REMESTADO.Value,
                                    IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                                    DM2.TBCteCTE_DESCIDADE.Value,
                                    DM2.TBCteCTE_DESESTADO.Value,
                                    Retira,
                                    DM2.TBCteCTE_RETIRADETALHES.Value,
                                    StrToInt(Copy(indIETomador,1,1)),
                                    Tomador,
                                    '', //StrToDate(DM2.TBCteCTE_DATAHORACONTINGENCIA.Value),
                                    ' '); //campos nao estao na tela -> ^ DM2.TBCteCTE_MOTIVOCONTINGENCIA.Value);
  {$ENDREGION}

  {$REGION 'emi - EMITENTE'}
  Emitente:=U.emitente300(LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                          LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
                          '', //IE St.
                          DM.TBEmpresaEMP_NOME.Value,
                          DM.TBEmpresaEMP_NOMEFANTASIA.Value,
                          DM.TBEmpresaEMP_ENDERECO.Value,
                          DM.TBEmpresaEMP_NUMERO.Value,
                          '', //complemento.
                          DM.TBEmpresaEMP_BAIRRO.Value,
                          IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
                          DM.TBEmpresaEMP_CIDADE.Value,
                          LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
                          DM.TBEmpresaEMP_ESTADO.Value,
                          LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value));
  {$ENDREGION}

  {$REGION 'rem - REMETENTE'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  RemNome:=DM2.TBCteCTE_REMNOME.Value else
  RemNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Remetente:=U.remetente300(LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
                            RemNome,
                            '',
                            LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
                            DM2.TBCteCTE_REMENDERECO.Value,
                            DM2.TBCteCTE_REMNUMERO.Value,
                            DM2.TBCteCTE_REMCOMPLEMENTO.Value,
                            DM2.TBCteCTE_REMBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_REMCIDADECODIGO.Value),
                            DM2.TBCteCTE_REMCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
                            DM2.TBCteCTE_REMESTADO.Value,
                            IntToStr(DM2.TBCteCTE_REMPAISCODIGO.Value),
                            DM2.TBCteCTE_REMPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'exp - EXPEDIDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  ExpNome:=DM2.TBCteCTE_EXPNOME.Value else
  ExpNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Expedidor:=U.expedidor300(LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
                            DM2.TBCteCTE_EXPNOME.Value,
                            LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
                            DM2.TBCteCTE_EXPENDERECO.Value,
                            DM2.TBCteCTE_EXPNUMERO.Value,
                            DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
                            DM2.TBCteCTE_EXPBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_EXPCIDADECODIGO.Value),
                            DM2.TBCteCTE_EXPCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
                            DM2.TBCteCTE_EXPESTADO.Value,
                            IntToStr(DM2.TBCteCTE_EXPPAISCODIGO.Value),
                            DM2.TBCteCTE_EXPPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'des - DESTINATARIO'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  DesNome:=DM2.TBCteCTE_DESNOME.Value else
  DesNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Destinatario:=U.destinatario300(LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
                                  LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
                                  LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
                                  DM2.TBCteCTE_DESNOME.Value,
                                  LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
                                  '',
                                  DM2.TBCteCTE_DESENDERECO.Value,
                                  DM2.TBCteCTE_DESNUMERO.Value,
                                  DM2.TBCteCTE_DESCOMPLEMENTO.Value,
                                  DM2.TBCteCTE_DESBAIRRO.Value,
                                  IntToStr(DM2.TBCteCTE_DESCIDADECODIGO.Value),
                                  DM2.TBCteCTE_DESCIDADE.Value,
                                  LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
                                  DM2.TBCteCTE_DESESTADO.Value,
                                  IntToStr(DM2.TBCteCTE_DESPAISCODIGO.Value),
                                  DM2.TBCteCTE_DESPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'receb - RECEBEDOR'}
  if DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1' then
  RecNome:=DM2.TBCteCTE_RECNOME.Value else
  RecNome:='CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  Recebedor:=U.recebedor300(LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
                            LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
                            LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
                            RecNome,
                            LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
                            DM2.TBCteCTE_RECENDERECO.Value,
                            DM2.TBCteCTE_RECNUMERO.Value,
                            DM2.TBCteCTE_RECCOMPLEMENTO.Value,
                            DM2.TBCteCTE_RECBAIRRO.Value,
                            IntToStr(DM2.TBCteCTE_RECCIDADECODIGO.Value),
                            DM2.TBCteCTE_RECCIDADE.Value,
                            LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
                            DM2.TBCteCTE_RECESTADO.Value,
                            IntToStr(DM2.TBCteCTE_RECPAISCODIGO.Value),
                            DM2.TBCteCTE_RECPAIS.Value,'');
  {$ENDREGION}

  {$REGION 'vPrest - VALORES PRESTAÇÃO'}
  CompPrestacao:=U.compVPrest('FRETE',DM2.TBCteCTE_VALORFRETE.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('SEGURO',DM2.TBCteCTE_VALORSEGURO.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('OUTROS',DM2.TBCteCTE_VALOROUTROS.AsExtended);
  ValoresPrestacao:=U.vPrest((DM2.TBCteCTE_VALORFRETE.AsExtended+DM2.TBCteCTE_VALORSEGURO.AsExtended+DM2.TBCteCTE_VALOROUTROS.AsExtended),
                             DM2.TBCteCTE_VALORTOTAL.AsExtended,CompPrestacao);
  {$ENDREGION}

  {$REGION 'imp - IMPOSTOS'}
  InfoAdicional:=DeleteLineBreaks(DM2.TBCteCTE_INFOADICFISCO.Value);
  ICMSUFFim:='';
  //se informa a difal, entao cria o grupo icmsuffim.
  DM.TBNaturezas.Close;
  DM.TBNaturezas.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CFOP.Value;
  DM.TBNaturezas.Open;

  if DM.TBNaturezasNAT_INFORMADIFAL.Value='S' then
  ICMSUFFim:=U.ICMSUFFim(DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMSUFFIM.AsExtended,
                         DM2.TBCteCTE_ALIQFCP.AsExtended,DM2.TBCteCTE_ALIQICMSINTER.AsExtended,DM2.TBCteCTE_ALIQICMSINTERPART.AsExtended,
                         DM2.TBCteCTE_TOTALFCP.AsExtended,DM2.TBCteCTE_TOTALICMSUFFIM.AsExtended,DM2.TBCteCTE_TOTALICMSUFINI.AsExtended);

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value<>'1 - SIMPLES NACIONAL' then
  begin
    if DM2.TBCteCTE_CSTICMS.Value=0 then
    Imposto:=U.ImpICMS00_NT2015003('00',DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if DM2.TBCteCTE_CSTICMS.Value=20 then
    Imposto:=U.ImpICMS20_NT2015003('20',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMSRED.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if (DM2.TBCteCTE_CSTICMS.Value=40) or (DM2.TBCteCTE_CSTICMS.Value=41) or (DM2.TBCteCTE_CSTICMS.Value=51) then
    Imposto:=U.ImpICMS45_NT2015003(IntToStr(DM2.TBCteCTE_CSTICMS.Value),DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,DM2.TBCteCTE_INFOADICFISCO.Value,ICMSUFFim);
    if DM2.TBCteCTE_CSTICMS.Value=60 then
    Imposto:=U.ImpICMS60_NT2015003('60',DM2.TBCteCTE_BASEICMSST.AsExtended,DM2.TBCteCTE_ALIQICMSST.AsExtended,DM2.TBCteCTE_TOTALICMSST.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    if (DM2.TBCteCTE_CSTICMS.Value=90) then
    begin
      if DM2.TBCteCTE_REMESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
      Imposto:=U.ImpICMS90_NT2015003('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ALIQICMS.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim) else
      Imposto:=U.ImpICMSOutraUF_NT2015003('90',DM2.TBCteCTE_ALIQICMSRED.AsExtended,DM2.TBCteCTE_BASEICMS.AsExtended,DM2.TBCteCTE_ICMSALIQUOTAUF.AsExtended,DM2.TBCteCTE_TOTALICMS.AsExtended,DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim);
    end;
  end else
  Imposto:=U.ImpICMSSN300(DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,InfoAdicional,ICMSUFFim); //simples nacional. só essa atualizou para a 3.00?
  {$ENDREGION}

  //informacoes cte normal e substituto - info carga - containers - docto transp. anterior - seguro da carga - modal rodoviario - modal aereo - modal aquaviario - produtos perigosos - veiculos transportados - cobranca - cte de subtituicao.
  {$REGION 'InfoCarga'}
  QuantidadeCarga:='';
  DM2.TBCteCarga.First;
  while not DM2.TBCteCarga.Eof do
  begin
    QuantidadeCarga:=QuantidadeCarga+U.infQ(Copy(DM2.TBCteCargaCCG_UNIDADEMEDIDA.Value,1,2),DM2.TBCteCargaCCG_TIPOMEDIDA.Value,DM2.TBCteCargaCCG_QUANTIDADE.AsExtended);
    DM2.TBCteCarga.Next;
  end;
  InfoCarga:=U.infCarga300(DM2.TBCteCTE_VALORNOTAS.AsExtended,DM2.TBCteCTE_PRODUTOPREDOM.Value,'',QuantidadeCarga,0);
  {$ENDREGION}
  {$REGION 'Containers - VAZIO'}
  Containers:='';
  {$ENDREGION}
  {$REGION 'Docto transporte anterior - VAZIO'}
  DocAnterior:='';
  {$ENDREGION}
  {$REGION 'Seguro'}
  SeguroApolice:='';
  if DM2.TBCteCTE_SEGUROAPOLICE.Value <> '' then
  SeguroApolice:=DM2.TBCteCTE_SEGUROAPOLICE.Value;

  SeguroAverbacao:='';
  if DM2.TBCteCTE_SEGUROAVERBACAO.Value <> '' then
  SeguroAverbacao:=DM2.TBCteCTE_SEGUROAVERBACAO.Value;

  Seguro:='';
  if DM2.TBCteCTE_SEGUROVALOR.Value > 0 then
  Seguro:=U.seg(StrToInt(Copy(DM2.TBCteCTE_SEGURO.Value,1,1)),
                DM2.TBCteCTE_SEGURONOME.Value,
                SeguroApolice,
                SeguroAverbacao,
                DM2.TBCteCTE_SEGUROVALOR.AsExtended);
  {$ENDREGION}
  {$REGION 'Info modais'}
  InfoModal:='';
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  begin
    Veiculos:='';
    Motoristas:='';
    if DM2.TBCteCTE_LOTACAO.Value='1 - SIM' then
    begin
      DM2.TBCteVeiculos.First;
      while not DM2.TBCteVeiculos.Eof do
      begin
        VeiculosProp:='';
        if DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value='T - TERCEIRO' then
        VeiculosProp:=U.prop(LimparFormatacao(DM2.TBCteVeiculosCTV_CPF.Value),
                             LimparFormatacao(DM2.TBCteVeiculosCTV_CNPJ.Value),
                             DM2.TBCteVeiculosCTV_RNTRC.Value,
                             DM2.TBCteVeiculosCTV_NOME.Value,
                             LimparFormatacao(DM2.TBCteVeiculosCTV_IE.Value),
                             DM2.TBCteVeiculosCTV_ESTADOPROPRIETARIO.Value,
                             StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIETARIO.Value,1,1)));
        Veiculos:=Veiculos+U.veic(IntToStr(DM2.TBCteVeiculosCTV_VEICULO.Value),
                                  DM2.TBCteVeiculosCTV_RENAVAM.Value,
                                  LimparFormatacao(DM2.TBCteVeiculosCTV_PLACA.Value),
                                  FloatToStr(DM2.TBCteVeiculosCTV_TARA.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEKG.AsExtended),
                                  FloatToStr(DM2.TBCteVeiculosCTV_CAPACIDADEM3.AsExtended),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value,1,1),
                                  StrToInt(Copy(DM2.TBCteVeiculosCTV_TIPOVEICULO.Value,1,1)),
                                  Copy(DM2.TBCteVeiculosCTV_TIPORODADO.Value,1,2),
                                  Copy(DM2.TBCteVeiculosCTV_TIPOCARROCERIA.Value,1,2),
                                  DM2.TBCteVeiculosCTV_ESTADO.Value,VeiculosProp);
        DM2.TBCteVeiculos.Next;
      end;
      Motoristas:=U.moto(DM2.TBCteCTE_MOTORISTA.Value,LimparFormatacao(DM2.TBCteCTE_MOTORISTACPF.Value));
    end;
    InfoModal:=U.rod300(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                        DM.TBParametrosPAR_RNTRC.Value,
                        ''); //ordens de coleta.
                        //DM2.TBCteCTE_ENTREGADATAFINAL.Value,
                        //StrToInt(Copy(DM2.TBCteCTE_LOTACAO.Value,1,1)),
                        //DM2.TBCteCTE_CIOT.Value,'','',Veiculos,'',Motoristas);
  end;

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  begin
    //U.cInfManu()
    //U.cIMP()
    //t:='<cInfManu>99</cInfManu><cInfManu>03</cInfManu><cInfManu>06</cInfManu>';
    InfoManuseio:=''; //U.cInfManu('99');
    CargaEspecial:=U.cIMP(DM2.TBCteCTE_AEREOIMP.Value);
    //U.inf
    InfoModal:=U.aereo300(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                          IntToStr(DM2.TBCteCTE_AEREOMINUTA.Value),
                          DM2.TBCteCTE_AEREOOCA.Value,
                          DM2.TBCteCTE_AEREODTPREVISTA.Value,
                          DM2.TBCteCTE_AEREODIMENSAO.Value,
                          InfoManuseio,
                          Copy(DM2.TBCteCTE_AEREOTARIFACLASSE.Value,0,1),
                          IntToStr(DM2.TBCteCTE_AEREOTARIFACODIGO.Value),
                          DM2.TBCteCTE_AEREOTARIFAVALOR.AsExtended,
                          '');
                          //DM2.TBCteCTE_AEREONOMEFILIAL.Value,
                          //'', //id
                          //CargaEspecial); //IMP carga.
    InfoModal:=StringReplace(InfoModal,'dPrev','dPrevAereo',[rfReplaceAll]); //bug na DLL?s
  end;
  {$ENDREGION}
  {$REGION 'Produtos Perigosos - VAZIO'}
  PPerigosos:='';
  {$ENDREGION}
  {$REGION 'Veiculos Transportados - VAZIO'}
  VeicTransportados:='';
  {$ENDREGION}
  {$REGION 'Cobranca - VAZIO'}
  Cobranca:='';
  {$ENDREGION}
  {$REGION 'cte de substituicao - VAZIO'}
  CTeSubstituto:='';
  {$ENDREGION}
  {$REGION 'Info notas'}
  InfNotas:='';
  DM2.TBCteNotas.First;
  while not DM2.TBCteNotas.Eof do
  begin
    case StrToInt(Copy(DM2.TBCteNotasCTN_TIPONOTA.Value,1,1)) of
      01: begin //nota fiscal.
            InfNotas:=InfNotas+U.infNF_2G('','',IntToStr(DM2.TBCteNotasCTN_MODELO.Value),IntToStr(DM2.TBCteNotasCTN_SERIE.Value),IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                          DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                          DM2.TBCteNotasCTN_BASEICMS.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMS.AsExtended,
                                          DM2.TBCteNotasCTN_BASEICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALICMSST.AsExtended,
                                          DM2.TBCteNotasCTN_TOTALPRODUTOS.AsExtended,
                                          DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                          DM2.TBCteNotasCTN_CFOP.Value,
                                          DM2.TBCteNotasCTN_PESO.AsExtended,
                                          DM2.TBCteNotasCTN_SUFRAMA.Value,
                                          0,'');
          end;
      02: begin //Nota Fiscal Eletrônica.
            InfNotas:=InfNotas+U.infNFe_2G(DM2.TBCteNotasCTN_CHAVEACESSO.Value,DM2.TBCteNotasCTN_SUFRAMA.Value,0,'');
          end;
      03: begin //Outros Tipos de Documentos.
            InfNotas:=InfNotas+U.infOutros_2G(Copy(DM2.TBCteNotasCTN_TIPOOUTROS.Value,1,2),
                                              DM2.TBCteNotasCTN_DESCRICAODOC.Value,
                                              IntToStr(DM2.TBCteNotasCTN_NUMERO.Value),
                                              DM2.TBCteNotasCTN_DTEMISSAO.Value,
                                              DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
                                              0,'');
          end;
    end;
    DM2.TBCteNotas.Next;
  end;
  {$ENDREGION}

  InfoCte:=U.infCTeNorm300(InfoCarga,InfNotas,DocAnterior,InfoModal,VeicTransportados,Cobranca,CTeSubstituto,'','');

  Transparencia:=u.obsCont('LEI DA TRANSPARENCIA','O valor aproximado dos tributos incidentes sobre o preco deste servico e de '+Format('%m',[DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended])+' ('+DM2.TBCteCTE_ALIQTRIBUTOS.AsString+'%) Fonte: IBPT');
  //Fluxo:=U.fluxo300('CWB','','GRU','');
  Fluxo:=''; //U.fluxo300('CWB','','GRU','');
  InfoComplementares:=U.compl('','','',Fluxo,'','','','',Transparencia,'');

//  '<ObsCont xCampo="LEI DA TRANSPARENCIA"><xTexto>O valor aproximado de tributos incidentes sobre o preço deste serviço é de R$ '+FloatToStr(DM2.TBCteCTE_TOTALTRIBUTOS.Value)+'.</xTexto></ObsCont>';
  //Guia de uso: http://www.flexdocs.com.br/guiaCTe/gerarCTe.html
  //consolida os grupos acima criados.
  XMLCTE:=U.CTe2G(DM.TBParametrosPAR_VERSAOXMLCTE.Value,
                  DM2.TBCteCTE_CHAVEACESSO.Value,
                  Identificacao,
                  InfoComplementares,
                  Emitente,
                  Remetente,
                  Expedidor,
                  Recebedor,
                  Destinatario,
                  ValoresPrestacao,
                  Imposto,
                  infoCTe,'');
  XMLCTE:=RemoveAcentosXML(XMLCTE);
  U:=nil;

  if AssinarCTe(XMLCTE) then
  begin
    //cria subdiretórios de ANO e MES.
    DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
    Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    if not System.SysUtils.DirectoryExists(Pasta) then
    begin
      if not System.SysUtils.ForceDirectories(Pasta) then Exit(Erro('Não foi possível criar subpastas para gravação do arquivo.'));
    end;

    //grava o CTe com apenas a assinatuta. (substitui o arquivo gerado pelo ACBr acima.
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-CTe.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    //Insere as tags de lote e grava o CTe completo.
    GerarTagsLote(XMLCTE);
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml',CP_UTF8);
    Rewrite(F);
    Write(F,AnsiToUtf8(XMLCTE));
    CloseFile(F);
    Memo1.Lines.Clear;
    Memo1.Lines.Add('Geração OK.');
    Result:=True;
  end else
  Result:=False;
end;

procedure TFormConhecimentos.IncluirInfoCarga1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=4;
  PageControl1Change(Self); //gera o evento.
  PngBitBtn1.Click;
end;

procedure TFormConhecimentos.InformarDadosdeRecebimento1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');

  Application.CreateForm(TFormCteRecebido, FormCteRecebido);
  FormCteRecebido.ShowModal;
  FormCteRecebido.Free;
  FormCteRecebido:=nil;
end;

procedure TFormConhecimentos.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=3;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormConhecimentos.InutilizacaoDeFaixaDeCTe1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosInutilizados, FormConhecimentosInutilizados);
  FormConhecimentosInutilizados.ShowModal;
  FormConhecimentosInutilizados.Free;
  FormConhecimentosInutilizados:=nil;
end;

procedure TFormConhecimentos.InutilizarCTe1Click(Sender: TObject);
var U: CTe_Util_Interface;
  MsgDados, MsgRetWS, MsgResultado, Justificativa, procInut, ProtocoloInut, DHProtocoloInut: Widestring;
  Ano: String[10];
  F: TextFile;
  A,M,D,I: Word;
  Proxy: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,                   'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'',    'CTe já autorizado para uso. Proceda com o "cancelamento" do CTe.');
  AbortIf(DM2.TBCteCTE_PROTOCOLOINUT.Value<>'','CTe já inutilizado.');

  if MessageDlg('Deseja inutilizar o CTe número '+IntToStr(DM2.TBCteCTE_CODIGO.Value)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=6;
    Justificativa:=InputBox('Justificativa','Digite a justificativa para a inutilização (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      Memo1.Lines.Clear;
      Memo1.Lines.Add('Inutilização de CTe...');
      Screen.Cursor:=crHourGlass;
      Ano:=FormatDateTime('DD/MM/YY',DM2.TBCteCTE_DTEMISSAO.Value);

      Proxy:='';
      if DM.TBParametrosPAR_PROXY.Value='S' then
      Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;

      U:=CoUtil.Create;
      I:=U.InutilizaNroCT(
        DM.TBParametrosPAR_SIGLAWSCTE.Value,
        DM.TBParametrosPAR_SIGLAUFCTE.Value,
        StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
        DM.TBParametrosPAR_NOMECERTIFICADO.Value,
        DM.TBParametrosPAR_VERSAOXMLCTE.Value,
        MsgDados,
        MsgRetWS,
        MsgResultado,
        procInut,
        DM.TBEmpresaEMP_ESTADOCODIGO.Value.ToString,
        Copy(Ano,7,2),
        LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
        DM2.TBCteCTE_MODELO.Value.ToString,
        DM2.TBCteCTE_SERIE.Value.ToString,
        DM2.TBCteCTE_CODIGO.Value.ToString,
        DM2.TBCteCTE_CODIGO.Value.ToString,
        Justificativa,
        Proxy,
        DM.TBParametrosPAR_PROXYUSER.Value,
        DM.TBParametrosPAR_PROXYPASSWORD.Value,
        DM.TBParametrosPAR_LICENCADLLCTE.Value
      );
      U:=nil;
      Screen.Cursor:=crDefault;
      if I=102 then
      begin
        RetornarDadosInutilizacao(MsgRetWS,ProtocoloInut,DHProtocoloInut);
        Memo1.Lines.Add(MsgResultado);
        QYCte.Close;
        QYCte.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
        QYCte.Open;
        QYCte.Edit;
        QYCteCTE_PROTOCOLOINUT.Value:=ProtocoloInut;
        QYCteCTE_PROTOCOLOINUTDH.Value:=DHProtocoloInut;
        QYCteCTE_MOTIVOINUTILIZACAO.Value:=Justificativa;
        QYCteCTE_STATUS.Value:='I';
        QYCte.Post;
        QYCte.Close;

        DM2.TBCte.Close;
        DM2.TBCte.Open;
        //gera arquivo procInutCTe
        DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
        AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procInutCTe.xml',CP_UTF8);
        Rewrite(F);
        Write(F,AnsiToUtf8(MsgRetWS));
        CloseFile(F);
        //...
      end else
      Memo1.Lines.Add(MsgResultado);
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormConhecimentos.RetornarDadosInutilizacao(XMLInut: WideString; var ProtocoloInut: WideString; var DHProtocoloInut: WideString);
var NodeRec: IXMLNode;
begin
  XMLD.XML.Clear;
  XMLD.XML.Add(XMLInut);
  XMLD.Active:=True;
//  XMLD.LoadFromFile(ExtractFilePath(Application.ExeName)+'\Print\procInutCTe-RetWS.xml');
  NodeRec:=XMLD.DocumentElement.ChildNodes.FindNode('infInut');
  ProtocoloInut:=NodeRec.ChildNodes['nProt'].Text;
  DHProtocoloInut:=NodeRec.ChildNodes['dhRecbto'].Text;
end;

procedure TFormConhecimentos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosLoc, FormConhecimentosLoc);
  FormConhecimentosLoc.ShowModal;
  if ConhecimentosLoc.Procurar then
  begin
    DM2.TBCte.Close;
    DM2.TBCte.ParamByName('codigo').AsInteger:=FormConhecimentosLoc.QYCteCTE_CODIGO.Value;
    DM2.TBCte.Open;

    DM2.TBCteNotas.Close;
    DM2.TBCteNotas.Open;

    DM2.TBCteCarga.Close;
    DM2.TBCteCarga.Open;

    DM2.TBCteVeiculos.Close;
    DM2.TBCteVeiculos.Open;
    Memo1.Clear;
  end;
  FormConhecimentosLoc.Free;
  FormConhecimentosLoc:=nil;
end;

procedure TFormConhecimentos.LocalizarConhecimentonoContasaReceber1Click(
  Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='A','Conhecimento não finalizado ou não cancelado.');

  //se a nota tem código de pedido, procura pelo código do pedido, se não, procura pelo código da nota.
  Receber.SQLLocalizar:='select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO';
  Application.CreateForm(TFormReceber, FormReceber);
  FormReceber.ShowModal;
  FormReceber.Free;
  FormReceber:=nil;
  Receber.SQLLocalizar:='';
end;

procedure TFormConhecimentos.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    03: begin
          if DM2.TBCte.State in [dsInsert, dsEdit] then
          try
            DM2.TBCte.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
    04: begin //idem anterior.
          if DM2.TBCte.State in [dsInsert, dsEdit] then
          try
            DM2.TBCte.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormConhecimentos.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar a informação da carga.');

  DM2.TBCteCarga.Insert;
  Application.CreateForm(TFormConhecimentosCarga, FormConhecimentosCarga);
  FormConhecimentosCarga.ShowModal;
  FormConhecimentosCarga.Free;
  FormConhecimentosCarga:=nil;
end;

procedure TFormConhecimentos.PngBitBtn2Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteNotas.IsEmpty,          'Não existe nenhuma informação de carga para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar as informações de carga.');

  if MessageDlg('Eliminar a informação de carga selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBCteCarga.Delete;
end;

procedure TFormConhecimentos.PngBitBtn3Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteNotas.IsEmpty,          'Não existe nenhuma informação de carga para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar as informações de carga.');

  if MessageDlg('Eliminar todas as informações de carga?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBCteCarga.First;
    while not DM2.TBCteCarga.Eof do
    begin
      DM2.TBCteCarga.Delete;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormConhecimentos.PngBitBtn4Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,               'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar a informação dos veículos.');

  Application.CreateForm(TFormFrotasLoc, FormFrotasLoc);
  FormFrotasLoc.ShowModal;
  if FrotasLoc.Procurar then
  begin
    DM2.TBCteVeiculos.Insert;
    DM2.TBCteVeiculosCTV_CAPACIDADEKG.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEKG.Value;
    DM2.TBCteVeiculosCTV_CAPACIDADEM3.Value:=FormFrotasLoc.QYFrotasFRO_CAPACIDADEM3.Value;
    DM2.TBCteVeiculosCTV_CNPJ.Value:=FormFrotasLoc.QYFrotasFRO_CNPJ.Value;
    DM2.TBCteVeiculosCTV_CPF.Value:=FormFrotasLoc.QYFrotasFRO_CPF.Value;
    //DM2.TBCteVeiculosCTV_CTE.Value:= no afterinsert.
    DM2.TBCteVeiculosCTV_ESTADO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADO.Value;
    DM2.TBCteVeiculosCTV_ESTADOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_ESTADOPROPRIETARIO.Value;
    DM2.TBCteVeiculosCTV_IE.Value:=FormFrotasLoc.QYFrotasFRO_IE.Value;
    DM2.TBCteVeiculosCTV_NOME.Value:=FormFrotasLoc.QYFrotasFRO_NOME.Value;
    DM2.TBCteVeiculosCTV_PLACA.Value:=FormFrotasLoc.QYFrotasFRO_PLACA.Value;
    DM2.TBCteVeiculosCTV_RENAVAM.Value:=FormFrotasLoc.QYFrotasFRO_RENAVAM.Value;
    DM2.TBCteVeiculosCTV_RNTRC.Value:=FormFrotasLoc.QYFrotasFRO_RNTRC.Value;
    DM2.TBCteVeiculosCTV_TARA.Value:=FormFrotasLoc.QYFrotasFRO_TARA.Value;
    DM2.TBCteVeiculosCTV_TIPOCARROCERIA.Value:=FormFrotasLoc.QYFrotasFRO_TIPOCARROCERIA.Value;
    DM2.TBCteVeiculosCTV_TIPOPROPRIEDADE.Value:=FormFrotasLoc.QYFrotasFRO_TIPOPROPRIEDADE.Value;
    DM2.TBCteVeiculosCTV_TIPOPROPRIETARIO.Value:=FormFrotasLoc.QYFrotasFRO_TIPOPROPRIETARIO.Value;
    DM2.TBCteVeiculosCTV_TIPORODADO.Value:=FormFrotasLoc.QYFrotasFRO_TIPORODADO.Value;
    DM2.TBCteVeiculosCTV_TIPOVEICULO.Value:=FormFrotasLoc.QYFrotasFRO_TIPOVEICULO.Value;
    DM2.TBCteVeiculosCTV_VEICULO.Value:=FormFrotasLoc.QYFrotasFRO_CODIGO.Value;
    DM2.TBCteVeiculos.Post;
  end;
  FormFrotasLoc.Free;
  FormFrotasLoc:=nil;
end;

procedure TFormConhecimentos.PngBitBtn5Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteVeiculos.IsEmpty,       'Não existe nenhuma informação de veículos para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar as informações de veículos.');

  if MessageDlg('Eliminar o veículo selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  DM2.TBCteVeiculos.Delete;
end;

procedure TFormConhecimentos.PngBitBtn6Click(Sender: TObject);
begin
  AbortIf(DM2.TBCteVeiculos.IsEmpty,       'Não existe nenhuma informação de veículos para excluir.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F',   'Conhecimento já finalizado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='C',   'Conhecimento cancelado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='I',   'Conhecimento inutilizado.');
  AbortIf(DM2.TBCteCTE_PROTOCOLO.Value<>'','CTe já autorizado para uso. Não é mais possível alterar as informações de carga.');

  if MessageDlg('Eliminar todas os veículos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBCteVeiculos.First;
    while not DM2.TBCteVeiculos.Eof do
    begin
      DM2.TBCteVeiculos.Delete;
    end;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormConhecimentos.PngBitBtn7Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,             'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value<>'A','CTe não está em aberto.');

  DM2.TBCte.Edit;
  DM2.TBCteCTE_RECBAIRRO.Value:=       DM2.TBCteCTE_DESBAIRRO.Value;
  DM2.TBCteCTE_RECCEP.Value:=          DM2.TBCteCTE_DESCEP.Value;
  DM2.TBCteCTE_RECCIDADE.Value:=       DM2.TBCteCTE_DESCIDADE.Value;
  DM2.TBCteCTE_RECCIDADECODIGO.Value:= DM2.TBCteCTE_DESCIDADECODIGO.Value;
  DM2.TBCteCTE_RECCNPJ.Value:=         DM2.TBCteCTE_DESCNPJ.Value;
  DM2.TBCteCTE_RECCOMPLEMENTO.Value:=  DM2.TBCteCTE_DESCOMPLEMENTO.Value;
  DM2.TBCteCTE_RECCONTATO.Value:=      DM2.TBCteCTE_DESCONTATO.Value;
  DM2.TBCteCTE_RECCPF.Value:=          DM2.TBCteCTE_DESCPF.Value;
  DM2.TBCteCTE_RECEBEDOR.Value:=       DM2.TBCteCTE_DESTINATARIO.Value;
  DM2.TBCteCTE_RECENDERECO.Value:=     DM2.TBCteCTE_DESENDERECO.Value;
  DM2.TBCteCTE_RECESTADO.Value:=       DM2.TBCteCTE_DESESTADO.Value;
  DM2.TBCteCTE_RECESTADOCODIGO.Value:= DM2.TBCteCTE_DESESTADOCODIGO.Value;
  DM2.TBCteCTE_RECFONE.Value:=         DM2.TBCteCTE_DESFONE.Value;
  DM2.TBCteCTE_RECIE.Value:=           DM2.TBCteCTE_DESIE.Value;
  DM2.TBCteCTE_RECNOME.Value:=         DM2.TBCteCTE_DESNOME.Value;
  DM2.TBCteCTE_RECNUMERO.Value:=       DM2.TBCteCTE_DESNUMERO.Value;
end;

procedure TFormConhecimentos.PngBitBtn8Click(Sender: TObject);
begin
  AbortIf(DM2.TBCte.IsEmpty,             'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value<>'A','CTe não está em aberto.');

  DM2.TBCte.Edit;
  DM2.TBCteCTE_EXPBAIRRO.Value:=       DM2.TBCteCTE_REMBAIRRO.Value;
  DM2.TBCteCTE_EXPCEP.Value:=          DM2.TBCteCTE_REMCEP.Value;
  DM2.TBCteCTE_EXPCIDADE.Value:=       DM2.TBCteCTE_REMCIDADE.Value;
  DM2.TBCteCTE_EXPCIDADECODIGO.Value:= DM2.TBCteCTE_REMCIDADECODIGO.Value;
  DM2.TBCteCTE_EXPCNPJ.Value:=         DM2.TBCteCTE_REMCNPJ.Value;
  DM2.TBCteCTE_EXPCOMPLEMENTO.Value:=  DM2.TBCteCTE_REMCOMPLEMENTO.Value;
  DM2.TBCteCTE_EXPCONTATO.Value:=      DM2.TBCteCTE_REMCONTATO.Value;
  DM2.TBCteCTE_EXPCPF.Value:=          DM2.TBCteCTE_REMCPF.Value;
  DM2.TBCteCTE_EXPEDIDOR.Value:=       DM2.TBCteCTE_REMETENTE.Value;
  DM2.TBCteCTE_EXPENDERECO.Value:=     DM2.TBCteCTE_REMENDERECO.Value;
  DM2.TBCteCTE_EXPESTADO.Value:=       DM2.TBCteCTE_REMESTADO.Value;
  DM2.TBCteCTE_EXPESTADOCODIGO.Value:= DM2.TBCteCTE_REMESTADOCODIGO.Value;
  DM2.TBCteCTE_EXPFONE.Value:=         DM2.TBCteCTE_REMFONE.Value;
  DM2.TBCteCTE_EXPIE.Value:=           DM2.TBCteCTE_REMIE.Value;
  DM2.TBCteCTE_EXPNOME.Value:=         DM2.TBCteCTE_REMNOME.Value;
  DM2.TBCteCTE_EXPNUMERO.Value:=       DM2.TBCteCTE_REMNUMERO.Value;
end;

procedure TFormConhecimentos.PngSpeedButton11Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_RECBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBCteCTE_RECCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBCteCTE_RECCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBCteCTE_RECCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBCteCTE_RECCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBCteCTE_RECCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBCteCTE_RECCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCteCTE_RECCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCteCTE_RECEBEDOR.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBCteCTE_RECENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBCteCTE_RECESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBCteCTE_RECESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBCteCTE_RECFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCteCTE_RECIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM2.TBCteCTE_RECNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCteCTE_RECNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentos.PngSpeedButton1Click(Sender: TObject);
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
        DM2.TBCte.Edit;
        DM2.TBCteCTE_DESBAIRRO.Clear;
        DM2.TBCteCTE_DESCEP.Clear;
        DM2.TBCteCTE_DESCIDADE.Clear;
        DM2.TBCteCTE_DESCIDADECODIGO.Clear;
        DM2.TBCteCTE_DESCNPJ.Clear;
        DM2.TBCteCTE_DESCOMPLEMENTO.Clear;
        DM2.TBCteCTE_DESCONTATO.Clear;
        DM2.TBCteCTE_DESCPF.Clear;
        DM2.TBCteCTE_DESENDERECO.Clear;
        DM2.TBCteCTE_DESESTADO.Clear;
        DM2.TBCteCTE_DESESTADOCODIGO.Clear;
        DM2.TBCteCTE_DESFONE.Clear;
        DM2.TBCteCTE_DESIE.Clear;
        DM2.TBCteCTE_DESNOME.Clear;
        DM2.TBCteCTE_DESNUMERO.Clear;
        DM2.TBCteCTE_DESTINATARIO.Clear;
        Exit;
      end;
    end;
    DM2.TBCte.Edit;
    DM2.TBCteCTE_DESBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBCteCTE_DESCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBCteCTE_DESCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBCteCTE_DESCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBCteCTE_DESCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBCteCTE_DESCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBCteCTE_DESCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCteCTE_DESCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCteCTE_DESENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBCteCTE_DESESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBCteCTE_DESESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBCteCTE_DESFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCteCTE_DESIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM2.TBCteCTE_DESNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCteCTE_DESNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM2.TBCteCTE_DESTINATARIO.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentos.PngSpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_TOMADORBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBCteCTE_TOMADORCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBCteCTE_TOMADORCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBCteCTE_TOMADORCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBCteCTE_TOMADORCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBCteCTE_TOMADORCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCteCTE_TOMADORCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCteCTE_TOMADORENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBCteCTE_TOMADORESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBCteCTE_TOMADORESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBCteCTE_TOMADORFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCteCTE_TOMADORIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM2.TBCteCTE_TOMADORNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCteCTE_TOMADORNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentos.PngSpeedButton6Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit8,DBEdit9,nil,DM2.TBCte);
end;

procedure TFormConhecimentos.PngSpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_EXPBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBCteCTE_EXPCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBCteCTE_EXPCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBCteCTE_EXPCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBCteCTE_EXPCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBCteCTE_EXPCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBCteCTE_EXPCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCteCTE_EXPCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCteCTE_EXPENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBCteCTE_EXPESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBCteCTE_EXPESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBCteCTE_EXPEDIDOR.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBCteCTE_EXPFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCteCTE_EXPIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM2.TBCteCTE_EXPNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCteCTE_EXPNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentos.RecriarArquivoXMLprocCancCTe1Click(Sender: TObject);
var U: CTe_Util_Interface;
  ProcCancCTe, CancCTe, retCancCTe, MsgResultado, Protocolo, ProtocoloDH: WideString;
  Resultado: Integer;
  A,M,D: Word;
  F: TextFile;
  Proxy: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-Cte.xml'),'O arquivo XML desse CTe não foi encontrado no repositório.');

  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM.TBNfeNFE_CHAVEACESSO.Value+'-pedCancCte.xml',TEncoding.UTF8);
  CancCte:=Memo1.Lines.Text;
  Memo1.Lines.Clear;
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;

  U:=CoUtil.Create;
  ProcCancCTe:=U.CriaProcCancCTe(
    DM.TBParametrosPAR_SIGLAWSCTE.Value,
    CancCTe,
    Protocolo,
    retCancCTe,
    Resultado,
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    MsgResultado,
    Proxy,
    DM.TBParametrosPAR_PROXYUSER.Value,
    DM.TBParametrosPAR_PROXYPASSWORD.Value
  );
  U:=nil;

  if (Resultado<>6801) then
  begin
    MessageDlg('Falha na chamada do WS...'+#13+#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add('Falha na chamada do WS...'+#13#10+MsgResultado);
    Exit;
  end;

  //Memo1.Lines:=U.IdentaXML(ProcNFe,Resultado,MsgResultado);
  AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCancCTe.xml',CP_UTF8);
  Rewrite(F);
  Write(F,AnsiToUtf8(ProcCancCTe));
  CloseFile(F);
  Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);
  Memo1.Lines.Add('Protocolo.......: '+Protocolo);
  Memo1.Lines.Add('Data Hora.......: '+retCancCTe);
  if (DM2.TBCteCTE_PROTOCOLOCANC.Value='') and (Protocolo<>'') then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_PROTOCOLOCANC.Value:=Copy(Protocolo,1,Pos(' ',Protocolo)-1);
    //formata campo protocolodh pra ficar igual a quando é retornado na funcao buscanfe2g.
//      S:=Protocolo;
//      Delete(S,1,Pos(' ',S));
    ProtocoloDH:=retCancCte; //Copy(S,7,4);
//      ProtocoloDH:=ProtocoloDH+'-'+Copy(S,4,2);
//      ProtocoloDH:=ProtocoloDH+'-'+Copy(S,1,2);
//      ProtocoloDH:=ProtocoloDH+'T'+Copy(S,Pos(' ',S)+1,Length(S));
    DM2.TBCteCTE_PROTOCOLOCANCDH.Value:=ProtocoloDH;
    DM2.TBCteCTE_CONSULTADA.Value:='F';
    DM2.TBCte.Post;
  end;
  MessageDlg('procCancCTe montado com sucesso! '+#13#10+#13#10+'Protocolo de cancelamento: '+Protocolo,mtInformation,[mbOk],0);
end;

procedure TFormConhecimentos.RecriarArquivoXMLprocCTe1Click(Sender: TObject);
var U: CTe_Util_Interface;
  CTeAssinada, ProcCTe, CancCTe, MsgResultado, Protocolo, ProtocoloDH: WideString;
  Resultado: Integer;
  A,M,D: Word;
  F: TextFile;
  S, Proxy: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-Cte.xml'),'O arquivo XML desse CTe não foi encontrado no repositório.');

  Memo1.Lines.Clear;
  //Atenção para o segundo parametro.
  Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-Cte.xml',TEncoding.UTF8);
  CTeAssinada:=Memo1.Lines.Text;
  Memo1.Lines.Clear;

  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value='S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.ToString;

  U:=CoUtil.Create;
  ProcCTe:=U.CriaProcCTe(
    DM.TBParametrosPAR_SIGLAWSCTE.Value,
    CTeAssinada,
    Protocolo,
    CancCTe,
    Resultado,
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    MsgResultado,
    Proxy,
    DM.TBParametrosPAR_PROXYUSER.Value,
    DM.TBParametrosPAR_PROXYPASSWORD.Value
  );
  U:=nil;

  if (Resultado<>6201) and (Resultado<>6216) and (Resultado<>6217) then
  begin
    MessageDlg('Falha na chamada do WS...'+#13+#13+MsgResultado,mtError,[mbOk],0);
    Memo1.Lines.Add('Falha na chamada do WS...'+#13#10+MsgResultado);
    Exit;
  end;

  AssignFile(F,DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml',CP_UTF8);
  Rewrite(F);
  Write(F,AnsiToUtf8(ProcCTe));
  CloseFile(F);

  Memo1.Lines.Add('Mensagem Retorno: '+MsgResultado);
  Memo1.Lines.Add('Protocolo.......: '+Protocolo);
  if (DM2.TBCteCTE_PROTOCOLO.Value='') and (Protocolo<>'') then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_PROTOCOLO.Value:=Copy(Protocolo,1,Pos(' ',Protocolo)-1);
    //formata campo protocolodh pra ficar igual a quando é retornado na funcao buscanfe2g.
    S:=Protocolo;
    Delete(S,1,Pos(' ',S));
    ProtocoloDH:=Copy(S,7,4);
    ProtocoloDH:=ProtocoloDH+'-'+Copy(S,4,2);
    ProtocoloDH:=ProtocoloDH+'-'+Copy(S,1,2);
    ProtocoloDH:=ProtocoloDH+'T'+Copy(S,Pos(' ',S)+1,Length(S));
    DM2.TBCteCTE_PROTOCOLODH.Value:=ProtocoloDH;
    DM2.TBCteCTE_CONSULTADA.Value:='F';
    DM2.TBCte.Post;
  end;
  MessageDlg('procCTe montado com sucesso! '+#13#10+#13#10+'Protocolo de autorização de uso: '+Protocolo,mtInformation,[mbOk],0);
end;

procedure TFormConhecimentos.RecriarChavedeAcesso1Click(Sender: TObject);
var U: CTe_Util_Interface;
  MsgResultado, cCT, cDV, ChaveCTe: Widestring;
  Emissao: String[10];
  I: Integer;
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value='F','CTe já finalizado.');
  AbortIf(CTeUtilRegistrada=False,'Um erro ocorreu ao tentar utilizar a DLL CTE_UTIL.'+#13#10+#13#10+'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL.');

  Emissao:=FormatDateTime('DD/MM/YY',DM2.TBCteCTE_DTEMISSAO.Value);
  U:=CoUtil.Create;
  I:=U.CriaChaveCTeNovo(IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                        Copy(Emissao,7,2), //ano.
                        Copy(Emissao,4,2), //mes.
                        LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                        IntToStr(DM2.TBCteCTE_MODELO.Value),
                        IntToStr(DM2.TBCteCTE_SERIE.Value),
                        IntToStr(DM2.TBCteCTE_CODIGO.Value),
                        Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1),
                        IntToStr(CodigoSegurancaCTE),
                        msgResultado,
                        cCT,
                        cDV,
                        ChaveCTe);
  if I<>0 then
  begin
    MessageDlg('Erro na criação da chave de acesso da CTe. Verifique os parâmetros.'+#13#13+'A chave de acesso é composta por: '+#13+
               'Codigo do estado do emitente'+#13+
               'Ano'+#13+
               'Mes'+#13+
               'CNPJ do emitente'+#13+
               'Modelo'+#13+
               'Série'+#13+
               'Código CTe'+#13+
               'Código numérico'+#13#13+MsgResultado,mtError,[mbOk],0);
  end else
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_CHAVEACESSO.Value:=ChaveCTe;
    DM2.TBCteCTE_CODIGONUMERICO.Value:=cCT;
  end;
  U:=nil;
end;

procedure TFormConhecimentos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentosRel, FormConhecimentosRel);
  FormConhecimentosRel.ShowModal;
  FormConhecimentosRel.Free;
  FormConhecimentosRel:=nil;
end;

procedure TFormConhecimentos.SalvarPDFDACTEcomo1Click(Sender: TObject);
var A,M,D: Word;
  Pasta, Arquivo: String;
begin
  AbortIf(DM2.TBCte.IsEmpty,'Nenhum CTe selecionado.');
  AbortIf(DM2.TBCteCTE_STATUS.Value<>'F','CTe não finalizado.');

  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  Arquivo:=DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.xml';
  AbortIf(not FileExists(Pasta+Arquivo),'Arquivo XML não encontrado.');

  SaveDialog1.DefaultExt:='*.PDF';
  SaveDialog1.Filter:='Arquivo .PDF|*.pdf';
  SaveDialog1.Title:='Salvar em PDF o DACTE deste CTe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    ACBrCTe1.Conhecimentos.LoadFromFile(Pasta+Arquivo);
    ACBrCTe1.DACTe.Logo:=ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg';
    ACBrCTe1.DACTe.PathPDF:=SaveDialog1.Filename;
    ACBrCTe1.Conhecimentos.ImprimirPDF;
  end;
end;

procedure TFormConhecimentos.SalvarZIPXMLscomo1Click(Sender: TObject);
var A,M,D: Word;
  Zip: TZipFile;
  BaseDir, SearchMask: string;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(DM2.TBCte.IsEmpty,            'Nenhum CTe selecionado');
  AbortIf(DM2.TBCteCTE_STATUS.Value='A','CTe não finalizado, cancelado ou inutilizado.');

  SaveDialog1.DefaultExt:='*.ZIP';
  SaveDialog1.Filter:='Arquivo .ZIP|*.zip';
  SaveDialog1.Title:='Salvar em ZIP os XMLs deste CTe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)),'O repositório deste CTe não foi localizado.');
    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M));

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      SearchMask := TPath.Combine(BaseDir, DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.*');
      Files := TDirectory.GetFiles(BaseDir, DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procCancNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM2.TBCteCTE_CHAVEACESSO.Value+'-procCancCTe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      // Adiciona os arquivos "procInutNFe.*"
      Files := TDirectory.GetFiles(BaseDir, DM2.TBCteCTE_CHAVEACESSO.Value+'-procInutCTe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;

    //cria o formulario NfeZipar para utilizar o componente ZipForge.
    //foi necessário isso pois estava dando erro no form close na linha Action:=caNone;
    {Application.CreateForm(TFormConhecimentosZipar, FormConhecimentosZipar);

    FormConhecimentosZipar.ZipForge1.FileName:=SaveDialog1.FileName;
    FormConhecimentosZipar.ZipForge1.OpenArchive(fmCreate);
    FormConhecimentosZipar.ZipForge1.BaseDir:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    FormConhecimentosZipar.ZipForge1.AddFiles(DM2.TBCteCTE_CHAVEACESSO.Value+'-procCTe.*');
    FormConhecimentosZipar.ZipForge1.AddFiles(DM2.TBCteCTE_CHAVEACESSO.Value+'-procCancCTe.*');
    FormConhecimentosZipar.ZipForge1.AddFiles(DM2.TBCteCTE_CHAVEACESSO.Value+'-procInutCTe.*');
    FormConhecimentosZipar.ZipForge1.CloseArchive;

    FormConhecimentosZipar.Free;
    FormConhecimentosZipar:=nil;}

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormConhecimentos.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM2.TBCteCTE_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM2.TBCteCTE_INFOADICFISCO.Value:=FormNaturezasLoc.QYNaturezasNAT_OBSERVACOES.Value;
    DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormConhecimentos.SpeedButton1Click(Sender: TObject);
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
        DM2.TBCte.Edit;
        DM2.TBCteCTE_REMBAIRRO.Clear;
        DM2.TBCteCTE_REMCEP.Clear;
        DM2.TBCteCTE_REMCIDADE.Clear;
        DM2.TBCteCTE_REMCIDADECODIGO.Clear;
        DM2.TBCteCTE_REMCNPJ.Clear;
        DM2.TBCteCTE_REMCOMPLEMENTO.Clear;
        DM2.TBCteCTE_REMCONTATO.Clear;
        DM2.TBCteCTE_REMCPF.Clear;
        DM2.TBCteCTE_REMENDERECO.Clear;
        DM2.TBCteCTE_REMESTADO.Clear;
        DM2.TBCteCTE_REMESTADOCODIGO.Clear;
        DM2.TBCteCTE_REMETENTE.Clear;
        DM2.TBCteCTE_REMFONE.Clear;
        DM2.TBCteCTE_REMIE.Clear;
        DM2.TBCteCTE_REMNOME.Clear;
        DM2.TBCteCTE_REMNUMERO.Clear;
        Exit;
      end;
    end;
    DM2.TBCte.Edit;
    DM2.TBCteCTE_REMBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM2.TBCteCTE_REMCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM2.TBCteCTE_REMCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM2.TBCteCTE_REMCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM2.TBCteCTE_REMCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM2.TBCteCTE_REMCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM2.TBCteCTE_REMCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCteCTE_REMCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCteCTE_REMENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM2.TBCteCTE_REMESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM2.TBCteCTE_REMESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM2.TBCteCTE_REMETENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBCteCTE_REMFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCteCTE_REMIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM2.TBCteCTE_REMNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCteCTE_REMNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormConhecimentos.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM2.TBCteCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM2.TBCteCTE_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    //calcula o desconto.
    DM2.TBCteCTE_VALORTOTAL.Value:=DM2.TBCteCTE_VALORFRETE.Value+DM2.TBCteCTE_VALORSEGURO.Value+DM2.TBCteCTE_VALOROUTROS.Value;
    if DM2.TBCteCTE_DESCPORC.Value>0 then
    DM2.TBCteCTE_DESCVALOR.Value:=((DM2.TBCteCTE_VALORTOTAL.Value/100)*DM2.TBCteCTE_DESCPORC.Value) else
    DM2.TBCteCTE_DESCVALOR.Value:=0;
    //...
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormConhecimentos.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM2.TBCte.Edit;
    DM2.TBCteCTE_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM2.TBCteVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    DM2.TBCteCTE_COMISSAO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure TFormConhecimentos.ValidarArquivoCTe1Click(Sender: TObject);
var A,M,D: Word;
begin
  AbortIf(DM2.TBCte.IsEmpty, 'Nenhum CTe selecionado.');
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  AbortIf(not FileExists(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml'),'O arquivo do CTe selecionado não foi encontrado ou ainda não foi gerado.');

  Application.CreateForm(TFormConhecimentosValidar, FormConhecimentosValidar);
  //Atenção para o segundo parametro.
  FormConhecimentosValidar.Memo1.Lines.LoadFromFile(DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+DM2.TBCteCTE_CHAVEACESSO.Value+'-env-lot.xml',TEncoding.UTF8);
  FormConhecimentosValidar.ShowModal;
  FormConhecimentosValidar.Free;
  FormConhecimentosValidar:=nil;
end;

procedure TFormConhecimentos.ZiparArquivosXML1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZiparDFE, FormZiparDFE);
  FormZiparDFE.CheckBox4.Checked:=True;
  FormZiparDFE.ShowModal;
  FormZiparDFE.Free;
  FormZiparDFE:=nil;
end;

initialization
  RegisterClass(TFormConhecimentos);

finalization
  UnRegisterClass(TFormConhecimentos);

end.
