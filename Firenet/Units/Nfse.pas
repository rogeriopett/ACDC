unit Nfse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  PngSpeedButton, DBSBtn, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList,
  PngImageList, Vcl.Menus, ACBrBase, ACBrDFe, ACBrDFeSSL, ACBrDFe.Conversao, pcnConversao,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, QRPDFFilt, System.UITypes,
  ACBrNFSeX, ACBrNFSeXConversao, ACBrNFSeXWebservicesResponse, ACBrNFSeXWebserviceBase,
  SHDocVw, Vcl.OleCtrls, System.Zip, System.IOUtils, System.Types, System.StrUtils,
  blcksock,
  ACBrUtil.Base,
  ACBrUtil.DateTime, ACBrUtil.FilesIO, ACBrDFeReport, ACBrNFSeXDANFSeClass,
  ACBrNFSeXDANFSeFPDFClass,
  System.JSON,
  System.NetEncoding,
  System.ZLib, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

  //ACBrNFSe,

type
  TDPSStatusResposta = record
    StatusProcessamento: String;
    DataHoraRecebimento: String;
    Protocolo          : String;
    IdDps              : String;
    ChaveAcesso        : String;
    NumeroDps          : String;
    SerieDps           : String;
    NumeroNotaFiscal   : String;
    LinkPdf            : String;
  end;

  TFormNfse = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarNotanoContasaReceber1: TMenuItem;
    N4: TMenuItem;
    CancelarNota1: TMenuItem;
    FinalizarNota1: TMenuItem;
    N11: TMenuItem;
    SalvarPDFDANFSEComo1: TMenuItem;
    SalvarZIPXMLsComo1: TMenuItem;
    N3: TMenuItem;
    GerarBoletos1: TMenuItem;
    N10: TMenuItem;
    AlterarCampoMovimentacaoFinanceiro1: TMenuItem;
    N9: TMenuItem;
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
    Cadastros1: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    CadastroDeEnderecos1: TMenuItem;
    CadastroDeServicos1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    DANFSE1: TMenuItem;
    N6: TMenuItem;
    Funcoes1: TMenuItem;
    GerarLote1: TMenuItem;
    BuscarNFSe1: TMenuItem;
    N12: TMenuItem;
    EnviarNFSePorEmail1: TMenuItem;
    EnviarNFSePorEmailAutomatico1: TMenuItem;
    ArquivosXMLDaNFSe1: TMenuItem;
    Ferramentas1: TMenuItem;
    ZiparArquivosXML1: TMenuItem;
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
    Bevel7: TBevel;
    Localizar1Button: TPngSpeedButton;
    Bevel1: TBevel;
    DANFSE1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    FinalizarNota1Button: TPngSpeedButton;
    LocalizarNotaNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    CancelarNota1Button: TPngSpeedButton;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    EnviarNFSePorEmail1Button: TPngSpeedButton;
    EditarRegistro1Button: TDBSpeedButton;
    GerarBoletos1Button: TPngSpeedButton;
    Bevel5: TBevel;
    EnviarNFSe1Button: TPngSpeedButton;
    InutilizarNota1Button: TPngSpeedButton;
    Relatorios2Button: TPngSpeedButton;
    ArquivosXMLDaNFSe1Button: TPngSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton9: TPngSpeedButton;
    SpeedButton1: TPngSpeedButton;
    Label34: TLabel;
    DBText7: TDBText;
    Label35: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label53: TLabel;
    DBText10: TDBText;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label38: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label105: TLabel;
    DBText17: TDBText;
    DBText16: TDBText;
    Label112: TLabel;
    Label113: TLabel;
    DBText18: TDBText;
    DBEdit39: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit33: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBComboBox5: TDBComboBox;
    DBComboBox6: TDBComboBox;
    DBEdit35: TDBEdit;
    DBMemo3: TDBMemo;
    DBEdit91: TDBEdit;
    DBEdit36: TDBEdit;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    BitBtn7: TPngBitBtn;
    TabSheet2: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label40: TLabel;
    Label120: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit100: TDBEdit;
    TabSheet3: TTabSheet;
    Label29: TLabel;
    SpeedButton7: TPngSpeedButton;
    Label28: TLabel;
    Label101: TLabel;
    DBText15: TDBText;
    Label103: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBMemo2: TDBMemo;
    BitBtn5: TPngBitBtn;
    DBComboBox7: TDBComboBox;
    TabSheet6: TTabSheet;
    Label86: TLabel;
    Label87: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label88: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    DBText11: TDBText;
    Label98: TLabel;
    Label99: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit88: TDBEdit;
    TabSheet8: TTabSheet;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    GroupBox7: TGroupBox;
    Label17: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit97: TDBEdit;
    AtribuirNovoLote1: TMenuItem;
    Label25: TLabel;
    DBEdit26: TDBEdit;
    BuscarNFSe1Button: TPngSpeedButton;
    Label26: TLabel;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBComboBox1: TDBComboBox;
    SaveDialog1: TSaveDialog;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    NotasFiscaisNoPeriodo1: TMenuItem;
    EnviarNFSe1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    PngSpeedButton1: TPngSpeedButton;
    InformarProtocoloDataEHoraDeAutorizacao1: TMenuItem;
    OpenDialog1: TOpenDialog;
    ACBrNFSeX1: TACBrNFSeX;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet9: TTabSheet;
    Memo1: TMemo;
    WBXMLEnvio: TWebBrowser;
    WBXMLRetorno: TWebBrowser;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label32: TLabel;
    DBText4: TDBText;
    Label150: TLabel;
    DBText9: TDBText;
    Label151: TLabel;
    DBText25: TDBText;
    DBText26: TDBText;
    Label152: TLabel;
    DBText27: TDBText;
    Label33: TLabel;
    DBText8: TDBText;
    Label31: TLabel;
    DBText3: TDBText;
    Label37: TLabel;
    DBEdit34: TDBEdit;
    Label39: TLabel;
    DBEdit42: TDBEdit;
    ACBrNFSeXDANFSeFPDF1: TACBrNFSeXDANFSeFPDF;
    InutilizarNota1: TMenuItem;
    Buscar1: TMenuItem;
    DuplicarNota1Button: TPngSpeedButton;
    DuplicarNota1: TMenuItem;
    QYNfse: TFDQuery;
    UPNfse: TFDUpdateSQL;
    TRNfse: TFDTransaction;
    DSNfse: TDataSource;
    QYNfseItens: TFDQuery;
    UPNfseItens: TFDUpdateSQL;
    TRNfseItens: TFDTransaction;
    QYNfseCPG_DESCRICAO: TStringField;
    QYNfseNFS_BAIXADATA: TDateField;
    QYNfseNFS_BAIXAPOR: TStringField;
    QYNfseNFS_BASEIBSCBS: TFMTBCDField;
    QYNfseNFS_BASEIS: TFMTBCDField;
    QYNfseNFS_BASEISS: TFMTBCDField;
    QYNfseNFS_CANCELAMENTOCODIGO: TStringField;
    QYNfseNFS_CANCELAMENTODATA: TDateField;
    QYNfseNFS_CANCELAMENTOHORA: TTimeField;
    QYNfseNFS_CANCELAMENTOMOTIVO: TStringField;
    QYNfseNFS_CBSCREDPRES: TFMTBCDField;
    QYNfseNFS_CBSCREDPRESSUS: TFMTBCDField;
    QYNfseNFS_CBSDEVOLUCAO: TFMTBCDField;
    QYNfseNFS_CBSDIFERIMENTO: TFMTBCDField;
    QYNfseNFS_CBSMONO: TFMTBCDField;
    QYNfseNFS_CBSMONORETENCAO: TFMTBCDField;
    QYNfseNFS_CBSMONORETIDO: TFMTBCDField;
    QYNfseNFS_CBSVALOR: TFMTBCDField;
    QYNfseNFS_CHAVEACESSO: TStringField;
    QYNfseNFS_CLIENTE: TIntegerField;
    QYNfseNFS_CODIGO: TIntegerField;
    QYNfseNFS_CONDICAO: TIntegerField;
    QYNfseNFS_CONDICAOMEMO: TMemoField;
    QYNfseNFS_CONSULTADA: TStringField;
    QYNfseNFS_CSTISS: TStringField;
    QYNfseNFS_DIAPREFERENCIAL: TIntegerField;
    QYNfseNFS_DTATUALIZACAO: TDateField;
    QYNfseNFS_DTCADASTRO: TDateField;
    QYNfseNFS_DTEMISSAO: TDateField;
    QYNfseNFS_FINALIDADE: TStringField;
    QYNfseNFS_FORMAPAGTO: TStringField;
    QYNfseNFS_GOVERNAMENTAL: TStringField;
    QYNfseNFS_GOVERNAMENTALALIQRED: TFMTBCDField;
    QYNfseNFS_GOVERNAMENTALOP: TStringField;
    QYNfseNFS_HRATUALIZACAO: TTimeField;
    QYNfseNFS_HRCADASTRO: TTimeField;
    QYNfseNFS_IBSCREDPRES: TFMTBCDField;
    QYNfseNFS_IBSCREDPRESSUS: TFMTBCDField;
    QYNfseNFS_IBSMONO: TFMTBCDField;
    QYNfseNFS_IBSMONORETENCAO: TFMTBCDField;
    QYNfseNFS_IBSMONORETIDO: TFMTBCDField;
    QYNfseNFS_IBSMUNDEVOLUCAO: TFMTBCDField;
    QYNfseNFS_IBSMUNDIFERIMENTO: TFMTBCDField;
    QYNfseNFS_IBSMUNVALOR: TFMTBCDField;
    QYNfseNFS_IBSUFDEVOLUCAO: TFMTBCDField;
    QYNfseNFS_IBSUFDIFERIMENTO: TFMTBCDField;
    QYNfseNFS_IBSUFVALOR: TFMTBCDField;
    QYNfseNFS_IBSVALOR: TFMTBCDField;
    QYNfseNFS_IDDPS: TStringField;
    QYNfseNFS_INFOADICIONAIS: TMemoField;
    QYNfseNFS_INTERMEDIARIOCPFCNPJ: TStringField;
    QYNfseNFS_INTERMEDIARIOIM: TIntegerField;
    QYNfseNFS_INTERMEDIARIONOME: TStringField;
    QYNfseNFS_LINK: TStringField;
    QYNfseNFS_LOTE: TIntegerField;
    QYNfseNFS_MOVIMENTAFINANCEIRO: TStringField;
    QYNfseNFS_NUMERONOTA: TIntegerField;
    QYNfseNFS_OBRAART: TIntegerField;
    QYNfseNFS_OBRACODIGO: TIntegerField;
    QYNfseNFS_OBSERVACOES: TMemoField;
    QYNfseNFS_PROTOCOLO: TStringField;
    QYNfseNFS_PROTOCOLODH: TStringField;
    QYNfseNFS_RECIBO: TStringField;
    QYNfseNFS_RECIBODH: TStringField;
    QYNfseNFS_RETENCAO: TStringField;
    QYNfseNFS_RETENCAORESP: TStringField;
    QYNfseNFS_SERIE: TStringField;
    QYNfseNFS_SIMPLESNACIONAL: TStringField;
    QYNfseNFS_STATUS: TStringField;
    QYNfseNFS_TOMBAIRRO: TStringField;
    QYNfseNFS_TOMCEP: TStringField;
    QYNfseNFS_TOMCIDADE: TStringField;
    QYNfseNFS_TOMCIDADECODIGO: TIntegerField;
    QYNfseNFS_TOMCNPJ: TStringField;
    QYNfseNFS_TOMCOMPLEMENTO: TStringField;
    QYNfseNFS_TOMCONTATO: TStringField;
    QYNfseNFS_TOMCPF: TStringField;
    QYNfseNFS_TOMEMAIL: TStringField;
    QYNfseNFS_TOMENDERECO: TStringField;
    QYNfseNFS_TOMESTADO: TStringField;
    QYNfseNFS_TOMESTADOCODIGO: TIntegerField;
    QYNfseNFS_TOMFONE1: TStringField;
    QYNfseNFS_TOMFONE2: TStringField;
    QYNfseNFS_TOMIE: TStringField;
    QYNfseNFS_TOMIM: TIntegerField;
    QYNfseNFS_TOMNOME: TStringField;
    QYNfseNFS_TOMNUMERO: TStringField;
    QYNfseNFS_TOMPAIS: TStringField;
    QYNfseNFS_TOMPAISCODIGO: TIntegerField;
    QYNfseNFS_TOMSITE: TStringField;
    QYNfseNFS_TOMTIPOPESSOA: TStringField;
    QYNfseNFS_TOTALDEDUCOES: TFMTBCDField;
    QYNfseNFS_TOTALDESCCOND: TFMTBCDField;
    QYNfseNFS_TOTALDESCINCOND: TFMTBCDField;
    QYNfseNFS_TOTALIS: TFMTBCDField;
    QYNfseNFS_TOTALISS: TFMTBCDField;
    QYNfseNFS_TOTALSERVICOS: TFMTBCDField;
    QYNfseNFS_TOTALTRIBUTOS: TFMTBCDField;
    QYNfseNFS_TOTALTRIBUTOSEST: TFMTBCDField;
    QYNfseNFS_TOTALTRIBUTOSFED: TFMTBCDField;
    QYNfseNFS_TOTALTRIBUTOSIMP: TFMTBCDField;
    QYNfseNFS_TOTALTRIBUTOSMUN: TFMTBCDField;
    QYNfseNFS_USUARIO: TStringField;
    QYNfseNFS_VALORCOFINS: TFMTBCDField;
    QYNfseNFS_VALORCREDITO: TFMTBCDField;
    QYNfseNFS_VALORCSLL: TFMTBCDField;
    QYNfseNFS_VALORINSS: TFMTBCDField;
    QYNfseNFS_VALORIR: TFMTBCDField;
    QYNfseNFS_VALORISSRETIDO: TFMTBCDField;
    QYNfseNFS_VALORLIQUIDO: TFMTBCDField;
    QYNfseNFS_VALOROUTRASRET: TFMTBCDField;
    QYNfseNFS_VALORPIS: TFMTBCDField;
    QYNfseNFS_VALORTOTALRTC: TFMTBCDField;
    QYNfseNFS_VENDA: TIntegerField;
    QYNfseNFS_VENDEDOR: TIntegerField;
    QYNfseVEN_NOME: TStringField;
    QYNfseItensISS_DESCRICAO: TStringField;
    QYNfseItensNBS_DESCRICAO: TStringField;
    QYNfseItensNSI_ALIQCBS: TFMTBCDField;
    QYNfseItensNSI_ALIQCBSCREDPRES: TFMTBCDField;
    QYNfseItensNSI_ALIQCBSDIF: TFMTBCDField;
    QYNfseItensNSI_ALIQCBSEFE: TFMTBCDField;
    QYNfseItensNSI_ALIQCBSRED: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSCREDPRES: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSMUN: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSMUNDIF: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSMUNEFE: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSMUNRED: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSUF: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSUFDIF: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSUFEFE: TFMTBCDField;
    QYNfseItensNSI_ALIQIBSUFRED: TFMTBCDField;
    QYNfseItensNSI_ALIQIS: TFMTBCDField;
    QYNfseItensNSI_ALIQISESP: TFMTBCDField;
    QYNfseItensNSI_ALIQUOTA: TFMTBCDField;
    QYNfseItensNSI_BASEIBSCBS: TFMTBCDField;
    QYNfseItensNSI_BASEIS: TFMTBCDField;
    QYNfseItensNSI_BASEISS: TFMTBCDField;
    QYNfseItensNSI_CBSCREDITOPRES: TIntegerField;
    QYNfseItensNSI_CIDADE: TStringField;
    QYNfseItensNSI_CIDADECODIGO: TIntegerField;
    QYNfseItensNSI_CLASSTRIBIBSCBS: TStringField;
    QYNfseItensNSI_CLASSTRIBIS: TStringField;
    QYNfseItensNSI_CODIGO: TIntegerField;
    QYNfseItensNSI_CSTIBSCBS: TStringField;
    QYNfseItensNSI_CSTIS: TStringField;
    QYNfseItensNSI_DESCRICAO: TMemoField;
    QYNfseItensNSI_IBSCREDITOPRES: TIntegerField;
    QYNfseItensNSI_NBS: TStringField;
    QYNfseItensNSI_NFSE: TIntegerField;
    QYNfseItensNSI_PAIS: TIntegerField;
    QYNfseItensNSI_PRESTADONOPAIS: TStringField;
    QYNfseItensNSI_PRODUTO: TIntegerField;
    QYNfseItensNSI_QUANTIDADE: TFMTBCDField;
    QYNfseItensNSI_SERVICO: TStringField;
    QYNfseItensNSI_VALORCBS: TFMTBCDField;
    QYNfseItensNSI_VALORCBSCREDPRES: TFMTBCDField;
    QYNfseItensNSI_VALORCBSCREDPRESSUS: TFMTBCDField;
    QYNfseItensNSI_VALORCBSDEV: TFMTBCDField;
    QYNfseItensNSI_VALORCBSDIF: TFMTBCDField;
    QYNfseItensNSI_VALORDEDUCOES: TFMTBCDField;
    QYNfseItensNSI_VALORDESCCOND: TFMTBCDField;
    QYNfseItensNSI_VALORDESCINCOND: TFMTBCDField;
    QYNfseItensNSI_VALORIBS: TFMTBCDField;
    QYNfseItensNSI_VALORIBSCREDPRES: TFMTBCDField;
    QYNfseItensNSI_VALORIBSCREDPRESSUS: TFMTBCDField;
    QYNfseItensNSI_VALORIBSMUN: TFMTBCDField;
    QYNfseItensNSI_VALORIBSMUNDEV: TFMTBCDField;
    QYNfseItensNSI_VALORIBSMUNDIF: TFMTBCDField;
    QYNfseItensNSI_VALORIBSUF: TFMTBCDField;
    QYNfseItensNSI_VALORIBSUFDEV: TFMTBCDField;
    QYNfseItensNSI_VALORIBSUFDIF: TFMTBCDField;
    QYNfseItensNSI_VALORIS: TFMTBCDField;
    QYNfseItensNSI_VALORISS: TFMTBCDField;
    QYNfseItensNSI_VALORTOTAL: TFMTBCDField;
    QYNfseItensNSI_VALORTRIBUTOS: TFMTBCDField;
    QYNfseItensNSI_VALORTRIBUTOSEST: TFMTBCDField;
    QYNfseItensNSI_VALORTRIBUTOSFED: TFMTBCDField;
    QYNfseItensNSI_VALORTRIBUTOSIMP: TFMTBCDField;
    QYNfseItensNSI_VALORTRIBUTOSMUN: TFMTBCDField;
    QYNfseItensNSI_VALORUNIT: TFMTBCDField;
    QYNfseItensPRO_NOME: TStringField;
    TabSheet10: TTabSheet;
    Label155: TLabel;
    DBEdit131: TDBEdit;
    DBComboBox11: TDBComboBox;
    Label154: TLabel;
    Label153: TLabel;
    DBComboBox3: TDBComboBox;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    DBEdit132: TDBEdit;
    DBEdit133: TDBEdit;
    DBEdit134: TDBEdit;
    DBEdit135: TDBEdit;
    DBEdit136: TDBEdit;
    DBEdit137: TDBEdit;
    DBEdit138: TDBEdit;
    DBEdit139: TDBEdit;
    DBEdit140: TDBEdit;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    DBEdit141: TDBEdit;
    DBEdit142: TDBEdit;
    DBEdit143: TDBEdit;
    DBEdit144: TDBEdit;
    DBEdit145: TDBEdit;
    DBEdit146: TDBEdit;
    DBEdit147: TDBEdit;
    DBEdit148: TDBEdit;
    DBEdit149: TDBEdit;
    DBEdit150: TDBEdit;
    DBEdit151: TDBEdit;
    DBEdit152: TDBEdit;
    DBEdit153: TDBEdit;
    DANFSENacional1: TMenuItem;
    Label47: TLabel;
    DBComboBox4: TDBComboBox;
    AssociarArquivoXMLBaixado1: TMenuItem;
    FileOpenDialog2: TFileOpenDialog;
    procedure CadastroDeServicos1Click(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure LocalizarNotanoContasaReceber1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DANFSE1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
    procedure GerarBoletos1Click(Sender: TObject);
    procedure SalvarZIPXMLsComo1Click(Sender: TObject);
    procedure SalvarPDFDANFSEComo1Click(Sender: TObject);
    procedure FinalizarNota1Click(Sender: TObject);
    procedure CancelarNota1Click(Sender: TObject);
    procedure ZiparArquivosXML1Click(Sender: TObject);
    procedure ACBrNFSe1StatusChange(Sender: TObject);
    procedure EnviarNFSePorEmailAutomatico1Click(Sender: TObject);
    procedure BuscarNFSe1Click(Sender: TObject);
    procedure GerarLote1Click(Sender: TObject);
    procedure ArquivosXMLDaNFSe1Click(Sender: TObject);
    procedure EnviarNFSePorEmail1Click(Sender: TObject);
    procedure AtribuirNovoLote1Click(Sender: TObject);
    procedure NotasFiscaisNoPeriodo1Click(Sender: TObject);
    procedure EnviarNFSe1Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure InformarProtocoloDataEHoraDeAutorizacao1Click(Sender: TObject);
    procedure ACBrNFSeX1StatusChange(Sender: TObject);
    procedure InutilizarNota1Click(Sender: TObject);
    procedure Buscar1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DuplicarNota1Click(Sender: TObject);
    procedure QYNfseBeforePost(DataSet: TDataSet);
    procedure DANFSENacional1Click(Sender: TObject);
    procedure AssociarArquivoXMLBaixado1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarComponenteACBrNFSeX;
    procedure AlimentarComponenteACBrNFSeX;
    procedure AlimentarComponenteACBrNFSeX_RTC;
    procedure ChecarResposta(aMetodo: TMetodo);
    procedure ChecarResposta2(aMetodo: TMetodo);
    procedure EnviarNFSePorEmailViaSistema;
    procedure EnviarNFSePorEmailViaSistemaAutomatico;
    procedure ExtrairXmlDoBase64Zipado(const RespostaJSON, NomeArquivo: String);
    procedure FinalizarNota(Confirmacao: Boolean);
    //procedure GerarDANFSE(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarDANFSEFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarDANFSENacionalFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
    procedure GerarEmail;
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser; NomeArq: String = 'temp.xml'; Tempo: Integer = 0);
    procedure SetVendedor(CodVend: Integer);
    procedure SetCondicao(CodCondicao: Integer);

    function ConsultarStatusDpsBetha(CNPJ, Cidade, Protocolo, Tipo: String): String;
    function TratarDadosConsultaStatus(const AXml: String): TDPSStatusResposta;
    function VerificarChaveAcessoXML(const ChaveAcesso, Arquivo: String): Boolean;
  public
    { Public declarations }
  end;

var
  FormNfse: TFormNfse;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, Clientes, Condicoes, Enderecos,
  DataModSearch, ClientesLoc, CondicoesLoc, NfseLoc, NfseRel,
  Main, NfseItens, NfeItens, Iss, EmailsEnviar,
  DataMod2, NfseArquivosXML, ZiparDFE, NfseFinalizar, ReceberLoc,
  Receber, NfseCancelar, Produtos, NfseProtocolo, NfseFast, ACBrOpenSSLUtils, OpenSSLExt,
  IdHTTP,
  IdSSLOpenSSL,
  IdGlobal;
  //pnfsNFSe, pnfsConversao,
{$R *.dfm}

procedure TFormNfse.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser; NomeArq: String; Tempo: Integer);
begin
  if RetWS <> '' then
  begin
    WriteToTXT(PathWithDelim(ExtractFileDir(Application.ExeName)) + NomeArq,AnsiString(RetWS), False, False);

    MyWebBrowser.Navigate(PathWithDelim(ExtractFileDir(Application.ExeName)) + NomeArq);

    Sleep(Tempo);
  end;
end;

procedure TFormNfse.SetVendedor(CodVend: Integer);
begin
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=CodVend;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    DM.TBNfseNFS_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
    DM.TBNfseVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
  end else
  begin
    DM.TBNfSeNFS_VENDEDOR.Clear;
    DM.TBNfseVEN_NOME.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormNfse.SalvarPDFDANFSEComo1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value<>'F','NFSe não finalizada.');

  SaveDialog1.DefaultExt:='*.PDF';
  SaveDialog1.Filter:='Arquivo .PDF|*.pdf';
  SaveDialog1.Title:='Salvar em PDF o DANFSE desta NFSe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  GerarDANFSEFast(False,True,SaveDialog1.FileName);
end;

procedure TFormNfse.SalvarZIPXMLsComo1Click(Sender: TObject);
var A,M,D: Word;
  Zip: TZipFile;
  BaseDir, SearchMask: string;
  Files: TStringDynArray;
  I: Integer;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='A','NFSe não finalizada ou cancelada.');

  SaveDialog1.DefaultExt:='*.ZIP';
  SaveDialog1.Filter:='Arquivo .ZIP|*.zip';
  SaveDialog1.Title:='Salvar em ZIP os XMLs desta NFSe como...';
  SaveDialog1.FileName:='';
  if SaveDialog1.Execute then
  begin
    DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
    AbortIf(not System.SysUtils.DirectoryExists(DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)),'O repositório desta NFSe não foi localizado.');

    Screen.Cursor:=crHourGlass;

    Zip:=TZipFile.Create;
    try
      BaseDir := IncludeTrailingPathDelimiter(DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M));

      Zip.Open(SaveDialog1.FileName, zmWrite);

      // Adiciona os arquivos "procNFe.*"
      //SearchMask := TPath.Combine(BaseDir, AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps-lot.*');
      //Files := TDirectory.GetFiles(BaseDir, AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps-lot.*');
      //for I := 0 to High(Files) do
      //Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Files := TDirectory.GetFiles(BaseDir, DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.*');
      for I := 0 to High(Files) do
      Zip.Add(Files[I], TPath.GetFileName(Files[I]));

      Zip.Close;
    finally
      Zip.Free;
    end;

    //cria o formulario NfeZipar para utilizar o componente ZipForge.
    //foi necessário isso pois estava dando erro no form close na linha Action:=caNone;
    {Application.CreateForm(TFormNfseZipar, FormNfseZipar);

    FormNfseZipar.ZipForge1.FileName:=SaveDialog1.FileName;
    FormNfseZipar.ZipForge1.OpenArchive(fmCreate);
    FormNfseZipar.ZipForge1.BaseDir:=DM.TBParametrosPAR_REPOSITORIONFE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
    FormNfseZipar.ZipForge1.AddFiles(AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps-lot.*');
    FormNfseZipar.ZipForge1.AddFiles(AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.*');
    FormNfseZipar.ZipForge1.CloseArchive;

    FormNfseZipar.Free;
    FormNfseZipar:=nil;}

    Screen.Cursor:=crDefault;
    MessageDlg('Arquivo criado com sucesso.',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormNfse.SetCondicao(CodCondicao: Integer);
begin
  DMS.QYCondicoes.Close;
  DMS.QYCondicoes.ParamByName('codigo').AsInteger:=CodCondicao;
  DMS.QYCondicoes.Open;
  if not DMS.QYCondicoes.IsEmpty then
  begin
    DM.TBNfseNFS_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
    DM.TBNfseCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNfseNFS_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
  end else
  begin
    DM.TBNfseNFS_CONDICAO.Clear;
    DM.TBNfseCPG_DESCRICAO.Clear;
    DM.TBNfseNFS_FORMAPAGTO.Clear;
  end;
  DMS.QYCondicoes.Close;
end;

procedure TFormNfse.ACBrNFSe1StatusChange(Sender: TObject);
begin
  {case ACBrNFSe1.Status of
    //stNFSeIdle: Memo1.Lines.Add('Ocioso.');
    stNFSeRecepcao:         Memo1.Lines.Add('Gerando lote...');
    stNFSeConsultaSituacao: Memo1.Lines.Add('Consultando a Situação...');
    stNFSeConsulta:         Memo1.Lines.Add('Consultando...');
    stNFSeCancelamento:     Memo1.Lines.Add('Enviando cancelamento de NFSe...');
    stNFSeEmail:            Memo1.Lines.Add('Enviando Email...');
  end;
  Application.ProcessMessages;}
end;

procedure TFormNfse.ACBrNFSeX1StatusChange(Sender: TObject);
begin
  case ACBrNFSeX1.Status of
    stNFSeIdle:              StatusBar1.Simpletext:='.';
    stNFSeRecepcao:          StatusBar1.Simpletext:='Enviando RPS...';
    stNFSeConsultaSituacao:  StatusBar1.Simpletext:='Consultando a Situação...';
    stNFSeConsulta:          StatusBar1.Simpletext:='Consultando...';
    stNFSeCancelamento:      StatusBar1.Simpletext:='Cancelando NFSe...';
    stNFSeSubstituicao:      StatusBar1.Simpletext:='Substituindo NFSe...';
    stNFSeImprimir:          StatusBar1.Simpletext:='Imprimindo NFSe...';
    stNFSeEmail:             StatusBar1.Simpletext:='Enviando Email...';
    stNFSeAbrirSessao:       StatusBar1.Simpletext:='Abrindo sessão...';
    stNFSeFecharSessao:      StatusBar1.Simpletext:='Fechando sessão...';
    stNFSeAguardaProcesso:   StatusBar1.Simpletext:='Aguardando o processo...';
    stNFSeEnvioWebService:   StatusBar1.Simpletext:='Enviando para o WebService...';
    stNFSeGerarToken:        StatusBar1.Simpletext:='Gerando token...';
    stNFSeConsultarEvento:   StatusBar1.Simpletext:='Consultando evento...';
    stNFSeConsultarDFE:      StatusBar1.Simpletext:='Consultando DFe...';
    stNFSeConsultarParam:    StatusBar1.Simpletext:='Consultando parâmetros...';
    stNFSeConsultarSeqRPS:   StatusBar1.Simpletext:='Consultando sequencia RPS...';
    stNFSeConsultarLinkNFSe: StatusBar1.Simpletext:='Consultando link NFSe...';
  end;
  Application.ProcessMessages;
end;

procedure TFormNfse.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNfse.AlimentarComponenteACBrNFSeX;
var Fone: String;
begin
  with ACBrNFSeX1 do
  begin
    //NotasFiscais.Assinar(True);
    NotasFiscais.NumeroLote:=IntToStr(DM.TBNfseNFS_LOTE.Value);
    //preenchido para layout proprio NotasFiscais.Transacao:=True;

    with NotasFiscais.New.NFSe do
    begin
      verAplic:='Runtime';
      Numero:=IntToStr(DM.TBNfseNFS_LOTE.Value);
      infNFSe.nDFSe:=IntToStr(GerarCodigoNFSe(DM.TBNfseNFS_LOTE.Value, 9));
      IdentificacaoRps.Numero:=DM.TBNfseNFS_LOTE.Value.ToString;
      IdentificacaoRps.Serie:=DM.TBNfseNFS_SERIE.Value;
      IdentificacaoRps.Tipo:=trRPS; //TnfseTipoRPS = (trRPS, trNFConjugada, trCupom);
      Competencia:=DM.TBNfseNFS_DTEMISSAO.Value;
      DataEmissao:=DM.TBNfseNFS_DTEMISSAO.Value;
      DataEmissaoRPS:=DM.TBNfseNFS_DTEMISSAO.Value;

      TipoRecolhimento:='1'; // Provedor CTAConsult, Governa

      // Provedor SigISS, ISSCambe
      //Situação pode ser:
      //  tp – Tributada no prestador = tsTributadaNoPrestador;
      //  tt – Tributada no tomador = tsTibutadaNoTomador;
      //  is – Isenta = tsIsenta;
      //  im – Imune = tsImune;
      //  nt – Não tributada = tsNaoTributada.
      SituacaoTrib:=tsTributadaNoPrestador;

      //TnfseNaturezaOperacao = ( no1, no2, no3, no4, no5, no6, no7, no50, no51, no52, no53, no54, no55, no56, no57, no58, no59, no60, no61, no62, no63,
      //  no64, no65, no66, no67, no68, no69, no70, no71, no72, no78, no79, no101, no111, no121, no201, no301, no501, no511, no541, no551, no601, no701 );
      NaturezaOperacao:=no1;

      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='0 - NENHUM'                                     then RegimeEspecialTributacao:=retNenhum else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='1 - MICROEMPRESA MUNICIPAL'                     then RegimeEspecialTributacao:=retMicroempresaMunicipal else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='2 - ESTIMATIVA'                                 then RegimeEspecialTributacao:=retEstimativa else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='3 - SOCIEDADE DE PROFISSIONAIS'                 then RegimeEspecialTributacao:=retSociedadeProfissionais else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='4 - COOPERATIVA'                                then RegimeEspecialTributacao:=retCooperativa else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='5 - MICROEMPRESARIO INDIVIDUAL'                 then RegimeEspecialTributacao:=retMicroempresarioIndividual else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='6 - MICROEMPRESARIO E EMPRESA DE PEQUENO PORTE' then RegimeEspecialTributacao:=retMicroempresarioEmpresaPP;

      if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
      begin
        OptanteSimplesNacional:=snSim;
        OptanteSN:=osnOptanteMEEPP;
      end else
      begin
        OptanteSimplesNacional:=snNao;
        OptanteSN:=osnNaoOptante;
      end;
      if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='4 - MICRO EMPREENDEDOR INDIVIDUAL' then
      OptanteSN:=osnOptanteMEI;

      IncentivadorCultural:=snNao;

//      PercentualCargaTributaria := 0; //aliquota
//      ValorCargaTributaria := 0;
//      PercentualCargaTributariaMunicipal := DM.TBNfseItensNSI_ALIQUOTA.AsExtended; //mesmo valor.
//      ValorCargaTributariaMunicipal := 0;
//      PercentualCargaTributariaEstadual := 0;
//      ValorCargaTributariaEstadual := 0;

      //ValoresNfse.Aliquota
      case StrToInt(Copy(DM.TBEmpresaEMP_REGIMEAPURACAOISS.Value,1,1)) of
        1: RegimeApuracaoSN:=raFederaisMunicipalpeloSN; //tag <regApTribSN> curitiba
        2: RegimeApuracaoSN:=raFederaisSN; //tag <regApTribSN> jaragua
        3: RegimeApuracaoSN:=raFederaisMunicipalforaSN; //tag <regApTribSN> curitiba
      end;

      // TnfseSimNao = ( snSim, snNao );
      // snSim = Ambiente de Produção
      // snNao = Ambiente de Homologação
      if DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value='1' then
      Producao:=snSim else
      Producao:=snNao;

      // TnfseStatusRPS = ( srNormal, srCancelado );
      StatusRps:=srNormal;

      {$REGION 'Dados do Serviço'}
      Servico.CodigoCnae:=LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value);
      Servico.CodigoMunicipio:=IntToStr(DM.TBNfseItensNSI_CIDADECODIGO.Value);
      Servico.CodigoTributacaoMunicipio:=''; //'3314799'; //??
      //testar envio sem infomar. Servico.UFPrestacao:='SC'; //o que fazer?

      if DM.TBNfseNFS_CSTISS.Value='4 - EXPORTACAO' then
      Servico.CodigoPais:=DM.TBNfseItensNSI_PAIS.Value; //1058=Brasil

      Servico.Discriminacao:=DM.TBNfseItensNSI_DESCRICAO.Value;
      Servico.MunicipioIncidencia:=DM.TBNfseItensNSI_CIDADECODIGO.Value; // StrToIntDef(edtCodCidade.Text, 0);

      // TnfseResponsavelRetencao = ( ptTomador, rtPrestador );
      Servico.ResponsavelRetencao:=rtPrestador; //padrao
      if DM.TBNfseNFS_RETENCAORESP.Value='0 - TOMADOR'       then Servico.ResponsavelRetencao:=rtTomador else
      if DM.TBNfseNFS_RETENCAORESP.Value='1 - PRESTADOR'     then Servico.ResponsavelRetencao:=rtPrestador else
      if DM.TBNfseNFS_RETENCAORESP.Value='2 - INTERMEDIARIO' then Servico.ResponsavelRetencao:=rtIntermediario else
      if DM.TBNfseNFS_RETENCAORESP.Value='3 - NENHUM'        then Servico.ResponsavelRetencao:=rtNenhum;

      Servico.Valores.Aliquota:=DM.TBNfseItensNSI_ALIQUOTA.AsExtended;
      Servico.Valores.BaseCalculo:=DM.TBNfseNFS_BASEISS.AsExtended;
      Servico.Valores.DescontoIncondicionado:=DM.TBNfseNFS_TOTALDESCINCOND.AsExtended;
      Servico.Valores.DescontoCondicionado:=DM.TBNfseNFS_TOTALDESCCOND.AsExtended;
      Servico.Valores.OutrasRetencoes:=DM.TBNfseNFS_VALOROUTRASRET.AsExtended;
      Servico.Valores.tribMun.pAliq:=DM.TBNfseItensNSI_ALIQUOTA.AsExtended; //testar em curitiba tb. tag <trib> -> <tribMun> -> <pAliq>
      Servico.Valores.ValorCofins:=DM.TBNfseNFS_VALORCOFINS.AsExtended;
      Servico.Valores.ValorCsll:=DM.TBNfseNFS_VALORCSLL.AsExtended;
      Servico.Valores.ValorDeducoes:=DM.TBNfseNFS_TOTALDEDUCOES.AsExtended;
      Servico.Valores.ValorInss:=DM.TBNfseNFS_VALORINSS.AsExtended;
      Servico.Valores.ValorIr:=DM.TBNfseNFS_VALORIR.AsExtended;
      Servico.Valores.ValorIss:=DM.TBNfseNFS_TOTALISS.AsExtended;
      Servico.Valores.ValorPis:=DM.TBNfseNFS_VALORPIS.AsExtended;
      Servico.Valores.ValorLiquidoNfse:=DM.TBNfseNFS_VALORLIQUIDO.AsExtended;
      Servico.Valores.ValorServicos:=DM.TBNfseNFS_TOTALSERVICOS.AsExtended;

      Servico.Valores.totTrib.vTotTribFed:=0.001;
      Servico.Valores.totTrib.vTotTribEst:=0.001;
      Servico.Valores.totTrib.vTotTribMun:=0.001;
      Servico.Valores.totTrib.indTotTrib:=TindTotTrib.indNao;

      // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao ); tag: <tpRetISSQN>??
      // stRetencao = snSim
      // stNormal   = snNao
      //Tipo de retencao do ISSQN: 1 - Não Retido; 2 - Retido pelo Tomador; 3 - Retido pelo Intermediario;" retirado do layout da nfse
      if DM.TBNfseNFS_RETENCAO.Value='N - NORMAL'                  then Servico.Valores.IssRetido:=stNormal else
      if DM.TBNfseNFS_RETENCAO.Value='R - RETENCAO'                then Servico.Valores.IssRetido:=stRetencao else
      if DM.TBNfseNFS_RETENCAO.Value='S - SUBSTITUICAO TRIBUTARIA' then Servico.Valores.IssRetido:=stSubstituicao;
      Servico.Valores.ValorIssRetido:=DM.TBNfseNFS_VALORISSRETIDO.AsExtended; //se retenção=stNormal, então não tem ISS Retido.

      if Copy(DM.TBNfseItensNSI_SERVICO.Value,1,1)='0' then
      Servico.ItemListaServico:=LimparFormatacao(Copy(DM.TBNfseItensNSI_SERVICO.Value,2,10)) else //teste.. nao vai ter mais de 10 caracteres.
      Servico.ItemListaServico:=LimparFormatacao(DM.TBNfseItensNSI_SERVICO.Value);

      Servico.CodigoNBS:=LimparFormatacao(DM.TBNfseItensNSI_NBS.Value); //  '120013110'; // 1.2001.31.10

      // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
      if DM.TBNfseNFS_CSTISS.Value='1 - TRIBUTACAO NO MUNICIPIO'                         then Servico.ExigibilidadeISS:=exiExigivel;
      if DM.TBNfseNFS_CSTISS.Value='2 - TRIBUTACAO FORA DO MUNICIPIO'                    then Servico.ExigibilidadeISS:=exiNaoIncidencia;
      if DM.TBNfseNFS_CSTISS.Value='3 - ISENCAO'                                         then Servico.ExigibilidadeISS:=exiIsencao;
      if DM.TBNfseNFS_CSTISS.Value='4 - EXPORTACAO'                                      then Servico.ExigibilidadeISS:=exiExportacao;
      if DM.TBNfseNFS_CSTISS.Value='5 - IMUNE'                                           then Servico.ExigibilidadeISS:=exiImunidade;
      if DM.TBNfseNFS_CSTISS.Value='6 - EXIGIBILIDADE SUSPENSA POR DECISAO JUDICIAL'     then Servico.ExigibilidadeISS:=exiSuspensaDecisaoJudicial;
      if DM.TBNfseNFS_CSTISS.Value='7 - EXIGIBILIDADE SUSPENSA POR PROC. ADMINISTRATIVO' then Servico.ExigibilidadeISS:=exiSuspensaProcessoAdministrativo;
      if DM.TBNfseNFS_CSTISS.Value='8 - ISS FIXO'                                        then Servico.ExigibilidadeISS:=exiISSFixo;
      {$ENDREGION}

      {$REGION 'Dados do Prestador'}
      Prestador.Contato.DDD:=Copy(Fone,1,2); //só o DDD.
      Prestador.Contato.Email:=DM.TBEmpresaEMP_EMAIL.Value;
      Prestador.Contato.Telefone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
      Prestador.Endereco.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
      Prestador.Endereco.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
      Prestador.Endereco.CodigoMunicipio:=IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value);
      Prestador.Endereco.CodigoPais:=1058;
      Prestador.Endereco.Numero:=DM.TBEmpresaEMP_NUMERO.Value;
      Prestador.Endereco.UF:=DM.TBEmpresaEMP_ESTADO.Value;
      Prestador.Endereco.xMunicipio:=DM.TBEmpresaEMP_CIDADE.Value;
      Prestador.Endereco.xPais:='BRASIL';
      Prestador.IdentificacaoPrestador.Cnpj:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
      Prestador.IdentificacaoPrestador.InscricaoMunicipal:='';
      if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFSE') then
      Prestador.IdentificacaoPrestador.InscricaoMunicipal:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
      Prestador.RazaoSocial:=DM.TBEmpresaEMP_NOME.Value;
      Prestador.NomeFantasia:=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
      //Prestador.crc:=
      //Prestador.crc_estado:=
      //Prestador.cUF:=
      //Prestador.ValorReceitaBruta:=
      //Prestador.DataInicioAtividade:=
      {$ENDREGION}

      {$REGION 'Dados do Tomador'}
      Tomador.AtualizaTomador := snNao;
      Tomador.TomadorExterior := snNao;

      //Tomador.IdentificacaoTomador.Tipo:=tpPF;
      if DM.TBNfseNFS_TOMTIPOPESSOA.Value='J' then
      Tomador.IdentificacaoTomador.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_TOMCNPJ.Value) else
      Tomador.IdentificacaoTomador.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_TOMCPF.Value);
      Tomador.IdentificacaoTomador.InscricaoEstadual:=LimparFormatacao(DM.TBNfseNFS_TOMIE.Value);
      if DM.TBNfseNFS_TOMIM.Value > 0 then
      Tomador.IdentificacaoTomador.InscricaoMunicipal:=IntToStr(DM.TBNfseNFS_TOMIM.Value) else
      Tomador.IdentificacaoTomador.InscricaoMunicipal:='';
      Tomador.IdentificacaoTomador.Nif:='';
      // (tnnNaoInformado, tnnDispensado, tnnNaoExigencia);
      Tomador.IdentificacaoTomador.cNaoNIF:=tnnDispensado;

      Tomador.Contato.Email:=DM.TBNfseNFS_TOMEMAIL.Value;
      Tomador.Contato.Telefone:=LimparFormatacao(DM.TBNfseNFS_TOMFONE1.Value);
      Tomador.Endereco.Bairro:=DM.TBNfseNFS_TOMBAIRRO.Value;
      Tomador.Endereco.CEP:=LimparFormatacao(DM.TBNfseNFS_TOMCEP.Value);
      Tomador.Endereco.CodigoMunicipio:=IntToStr(DM.TBNfseNFS_TOMCIDADECODIGO.Value);
      Tomador.Endereco.CodigoPais:=1058; // Brasil
      Tomador.Endereco.Complemento:=DM.TBNfseNFS_TOMCOMPLEMENTO.Value;
      Tomador.Endereco.Endereco:=DM.TBNfseNFS_TOMENDERECO.Value;
      Tomador.Endereco.EnderecoInformado:=TnfseSimNaoOpc.snoSim; // 'S';
      Tomador.Endereco.Numero:=DM.TBNfseNFS_TOMNUMERO.Value;
      Tomador.Endereco.TipoBairro:='BAIRRO';
      Tomador.Endereco.TipoLogradouro:='RUA';
      Tomador.Endereco.UF:=DM.TBNfseNFS_TOMESTADO.Value;
      Tomador.Endereco.xMunicipio:=DM.TBNfseNFS_TOMCIDADE.Value;
      Tomador.Endereco.xPais:='BRASIL';
      Tomador.RazaoSocial:=DM.TBNfseNFS_TOMNOME.Value;
      {$ENDREGION}

      // Usado quando houver um intermediario na prestação do serviço
      Intermediario.RazaoSocial:=DM.TBNfseNFS_INTERMEDIARIONOME.Value;
      Intermediario.Identificacao.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_INTERMEDIARIOCPFCNPJ.Value);
      Intermediario.Identificacao.InscricaoMunicipal:=IntToStr(DM.TBNfseNFS_INTERMEDIARIOIM.Value);

      // Usado quando o serviço for uma obra
      //if Pos('BETHA',UpperCase(DM.TBParametrosPAR_NFSESCHEMAS.Value))<>0 then //se encontrou BETHAV2...
      ///begin
//      if IntToStr(DM.TBNfseNFS_OBRACODIGO.Value)<>'' then
//      begin
//        ConstrucaoCivil.CodigoObra:=IntToStr(DM.TBNfseNFS_OBRACODIGO.Value);
//        ConstrucaoCivil.Art:=IntToStr(DM.TBNfseNFS_OBRAART.Value);
//      end;
    end;
  end;
end;

procedure TFormNfse.AlimentarComponenteACBrNFSeX_RTC;
var Fone: String;
begin
  with ACBrNFSeX1 do
  begin
    //NotasFiscais.Assinar(True);
    NotasFiscais.NumeroLote:=IntToStr(DM.TBNfseNFS_LOTE.Value);
    //preenchido para layout proprio NotasFiscais.Transacao:=True;

    with NotasFiscais.New.NFSe do
    begin
      verAplic:='Runtime';
      Numero:=IntToStr(DM.TBNfseNFS_LOTE.Value);
      infNFSe.nDFSe:=IntToStr(GerarCodigoNFSe(DM.TBNfseNFS_LOTE.Value, 9));
      IdentificacaoRps.Numero:=DM.TBNfseNFS_LOTE.Value.ToString;
      IdentificacaoRps.Serie:=DM.TBNfseNFS_SERIE.Value;
      IdentificacaoRps.Tipo:=trRPS; //TnfseTipoRPS = (trRPS, trNFConjugada, trCupom);
      Competencia:=DM.TBNfseNFS_DTEMISSAO.Value;
      DataEmissao:=DM.TBNfseNFS_DTEMISSAO.Value;
      DataEmissaoRPS:=DM.TBNfseNFS_DTEMISSAO.Value;

      TipoRecolhimento:='1'; // Provedor CTAConsult, Governa

      // Provedor SigISS, ISSCambe
      //Situação pode ser:
      //  tp – Tributada no prestador = tsTributadaNoPrestador;
      //  tt – Tributada no tomador = tsTibutadaNoTomador;
      //  is – Isenta = tsIsenta;
      //  im – Imune = tsImune;
      //  nt – Não tributada = tsNaoTributada.
      SituacaoTrib:=tsTributadaNoPrestador;

      //TnfseNaturezaOperacao = ( no1, no2, no3, no4, no5, no6, no7, no50, no51, no52, no53, no54, no55, no56, no57, no58, no59, no60, no61, no62, no63,
      //  no64, no65, no66, no67, no68, no69, no70, no71, no72, no78, no79, no101, no111, no121, no201, no301, no501, no511, no541, no551, no601, no701 );
      NaturezaOperacao:=no1;

      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='0 - NENHUM'                                     then RegimeEspecialTributacao:=retNenhum else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='1 - MICROEMPRESA MUNICIPAL'                     then RegimeEspecialTributacao:=retMicroempresaMunicipal else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='2 - ESTIMATIVA'                                 then RegimeEspecialTributacao:=retEstimativa else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='3 - SOCIEDADE DE PROFISSIONAIS'                 then RegimeEspecialTributacao:=retSociedadeProfissionais else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='4 - COOPERATIVA'                                then RegimeEspecialTributacao:=retCooperativa else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='5 - MICROEMPRESARIO INDIVIDUAL'                 then RegimeEspecialTributacao:=retMicroempresarioIndividual else
      if DM.TBEmpresaEMP_ENQUADRAMENTOISS2.Value='6 - MICROEMPRESARIO E EMPRESA DE PEQUENO PORTE' then RegimeEspecialTributacao:=retMicroempresarioEmpresaPP;

      if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
      begin
        OptanteSimplesNacional:=snSim;
        OptanteSN:=osnOptanteMEEPP;
      end else
      begin
        OptanteSimplesNacional:=snNao;
        OptanteSN:=osnNaoOptante;
      end;
      if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='4 - MICRO EMPREENDEDOR INDIVIDUAL' then
      OptanteSN:=osnOptanteMEI;

      IncentivadorCultural:=snNao;

//      PercentualCargaTributaria := 0; //aliquota
//      ValorCargaTributaria := 0;
//      PercentualCargaTributariaMunicipal := DM.TBNfseItensNSI_ALIQUOTA.AsExtended; //mesmo valor.
//      ValorCargaTributariaMunicipal := 0;
//      PercentualCargaTributariaEstadual := 0;
//      ValorCargaTributariaEstadual := 0;

      //ValoresNfse.Aliquota

      case StrToInt(Copy(DM.TBEmpresaEMP_REGIMEAPURACAOISS.Value,1,1)) of
        1: RegimeApuracaoSN:=raFederaisMunicipalpeloSN; //tag <regApTribSN> curitiba
        2: RegimeApuracaoSN:=raFederaisSN; //tag <regApTribSN> jaragua
        3: RegimeApuracaoSN:=raFederaisMunicipalforaSN; //tag <regApTribSN> curitiba
      end;

      // TnfseSimNao = ( snSim, snNao );
      // snSim = Ambiente de Produção
      // snNao = Ambiente de Homologação
      if DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value='1' then
      Producao:=snSim else
      Producao:=snNao;

      // TnfseStatusRPS = ( srNormal, srCancelado );
      StatusRps:=srNormal;

      {$REGION 'Dados do Serviço'}
      Servico.CodigoCnae:=LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value);
      Servico.CodigoMunicipio:=IntToStr(DM.TBNfseItensNSI_CIDADECODIGO.Value);
      Servico.CodigoTributacaoMunicipio:=''; //'3314799'; //??
      //testar envio sem infomar. Servico.UFPrestacao:='SC'; //o que fazer?

      if DM.TBNfseNFS_CSTISS.Value='4 - EXPORTACAO' then
      Servico.CodigoPais:=DM.TBNfseItensNSI_PAIS.Value; //1058=Brasil

      Servico.Discriminacao:=DM.TBNfseItensNSI_DESCRICAO.Value;
      Servico.MunicipioIncidencia:=DM.TBNfseItensNSI_CIDADECODIGO.Value; // StrToIntDef(edtCodCidade.Text, 0);

      // TnfseResponsavelRetencao = ( ptTomador, rtPrestador );
      if DM.TBNfseNFS_RETENCAORESP.Value='1 - PRESTADOR' then
      Servico.ResponsavelRetencao:=rtPrestador else
      Servico.ResponsavelRetencao:=rtTomador;

      Servico.Valores.Aliquota:=DM.TBNfseItensNSI_ALIQUOTA.AsExtended;
      Servico.Valores.BaseCalculo:=DM.TBNfseNFS_BASEISS.AsExtended;
      Servico.Valores.DescontoIncondicionado:=DM.TBNfseNFS_TOTALDESCINCOND.AsExtended;
      Servico.Valores.DescontoCondicionado:=DM.TBNfseNFS_TOTALDESCCOND.AsExtended;
      Servico.Valores.OutrasRetencoes:=DM.TBNfseNFS_VALOROUTRASRET.AsExtended;
      Servico.Valores.tribMun.pAliq:=DM.TBNfseItensNSI_ALIQUOTA.AsExtended; //testar em curitiba tb. tag <trib> -> <tribMun> -> <pAliq>
      Servico.Valores.ValorCofins:=DM.TBNfseNFS_VALORCOFINS.AsExtended;
      Servico.Valores.ValorCsll:=DM.TBNfseNFS_VALORCSLL.AsExtended;
      Servico.Valores.ValorDeducoes:=DM.TBNfseNFS_TOTALDEDUCOES.AsExtended;
      Servico.Valores.ValorInss:=DM.TBNfseNFS_VALORINSS.AsExtended;
      Servico.Valores.ValorIr:=DM.TBNfseNFS_VALORIR.AsExtended;
      Servico.Valores.ValorIss:=DM.TBNfseNFS_TOTALISS.AsExtended;
      Servico.Valores.ValorPis:=DM.TBNfseNFS_VALORPIS.AsExtended;
      Servico.Valores.ValorLiquidoNfse:=DM.TBNfseNFS_VALORLIQUIDO.AsExtended;
      Servico.Valores.ValorServicos:=DM.TBNfseNFS_TOTALSERVICOS.AsExtended;

      Servico.Valores.totTrib.vTotTribFed:=0.001;
      Servico.Valores.totTrib.vTotTribEst:=0.001;
      Servico.Valores.totTrib.vTotTribMun:=0.001;
      Servico.Valores.totTrib.indTotTrib:=TindTotTrib.indNao;

      // TnfseSituacaoTributaria = ( stRetencao, stNormal, stSubstituicao ); tag: <tpRetISSQN>??
      // stRetencao = snSim
      // stNormal   = snNao
      if DM.TBNfseNFS_RETENCAO.Value='N - NORMAL'                  then Servico.Valores.IssRetido:=stNormal else
      if DM.TBNfseNFS_RETENCAO.Value='R - RETENCAO'                then Servico.Valores.IssRetido:=stRetencao else
      if DM.TBNfseNFS_RETENCAO.Value='S - SUBSTITUICAO TRIBUTARIA' then Servico.Valores.IssRetido:=stSubstituicao;
      Servico.Valores.ValorIssRetido:=DM.TBNfseNFS_VALORISSRETIDO.AsExtended; //se retenção=stNormal, então não tem ISS Retido.

      if Copy(DM.TBNfseItensNSI_SERVICO.Value,1,1)='0' then
      Servico.ItemListaServico:=LimparFormatacao(Copy(DM.TBNfseItensNSI_SERVICO.Value,2,10)) else //teste.. nao vai ter mais de 10 caracteres.
      Servico.ItemListaServico:=LimparFormatacao(DM.TBNfseItensNSI_SERVICO.Value);

      Servico.CodigoNBS:=LimparFormatacao(DM.TBNfseItensNSI_NBS.Value); //  '120013110'; // 1.2001.31.10

      // Informar A Exigibilidade ISS para fintelISS [1/2/3/4/5/6/7]
      if DM.TBNfseNFS_CSTISS.Value='1 - TRIBUTACAO NO MUNICIPIO'                         then Servico.ExigibilidadeISS:=exiExigivel;
      if DM.TBNfseNFS_CSTISS.Value='2 - TRIBUTACAO FORA DO MUNICIPIO'                    then Servico.ExigibilidadeISS:=exiNaoIncidencia;
      if DM.TBNfseNFS_CSTISS.Value='3 - ISENCAO'                                         then Servico.ExigibilidadeISS:=exiIsencao;
      if DM.TBNfseNFS_CSTISS.Value='4 - EXPORTACAO'                                      then Servico.ExigibilidadeISS:=exiExportacao;
      if DM.TBNfseNFS_CSTISS.Value='5 - IMUNE'                                           then Servico.ExigibilidadeISS:=exiImunidade;
      if DM.TBNfseNFS_CSTISS.Value='6 - EXIGIBILIDADE SUSPENSA POR DECISAO JUDICIAL'     then Servico.ExigibilidadeISS:=exiSuspensaDecisaoJudicial;
      if DM.TBNfseNFS_CSTISS.Value='7 - EXIGIBILIDADE SUSPENSA POR PROC. ADMINISTRATIVO' then Servico.ExigibilidadeISS:=exiSuspensaProcessoAdministrativo;
      if DM.TBNfseNFS_CSTISS.Value='8 - ISS FIXO'                                        then Servico.ExigibilidadeISS:=exiISSFixo;

      {$ENDREGION}

      {$REGION 'Dados do Prestador'}
      Fone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
      Prestador.Contato.DDD:=Copy(Fone,1,2); //só o DDD.
      Prestador.Contato.Email:=DM.TBEmpresaEMP_EMAIL.Value;
      Prestador.Contato.Telefone:=Fone;
      Prestador.Endereco.Bairro:=DM.TBEmpresaEMP_BAIRRO.Value;
      Prestador.Endereco.CEP:=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
      Prestador.Endereco.CodigoMunicipio:=IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value);
      Prestador.Endereco.CodigoPais:=1058;
      Prestador.Endereco.Numero:=DM.TBEmpresaEMP_NUMERO.Value;
      Prestador.Endereco.UF:=DM.TBEmpresaEMP_ESTADO.Value;
      Prestador.Endereco.xMunicipio:=DM.TBEmpresaEMP_CIDADE.Value;
      Prestador.Endereco.xPais:='BRASIL';
      Prestador.IdentificacaoPrestador.Cnpj:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
      Prestador.IdentificacaoPrestador.InscricaoMunicipal:='';
      if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFSE') then
      Prestador.IdentificacaoPrestador.InscricaoMunicipal:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
      Prestador.RazaoSocial:=DM.TBEmpresaEMP_NOME.Value;
      Prestador.NomeFantasia:=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
      //Prestador.crc:=
      //Prestador.crc_estado:=
      //Prestador.cUF:=
      //Prestador.ValorReceitaBruta:=
      //Prestador.DataInicioAtividade:=
      {$ENDREGION}

      {$REGION 'Dados do Tomador'}
      Tomador.AtualizaTomador := snNao;
      Tomador.TomadorExterior := snNao;

      //Tomador.IdentificacaoTomador.Tipo:=tpPF;
      if DM.TBNfseNFS_TOMTIPOPESSOA.Value='J' then
      Tomador.IdentificacaoTomador.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_TOMCNPJ.Value) else
      Tomador.IdentificacaoTomador.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_TOMCPF.Value);
      Tomador.IdentificacaoTomador.InscricaoEstadual:=LimparFormatacao(DM.TBNfseNFS_TOMIE.Value);
      if DM.TBNfseNFS_TOMIM.Value > 0 then
      Tomador.IdentificacaoTomador.InscricaoMunicipal:=IntToStr(DM.TBNfseNFS_TOMIM.Value) else
      Tomador.IdentificacaoTomador.InscricaoMunicipal:='';
      Tomador.IdentificacaoTomador.Nif:='';
      // (tnnNaoInformado, tnnDispensado, tnnNaoExigencia);
      Tomador.IdentificacaoTomador.cNaoNIF:=tnnDispensado;

      Fone:=LimparFormatacao(DM.TBNfseNFS_TOMFONE1.Value);
      Tomador.Contato.Email:=DM.TBNfseNFS_TOMEMAIL.Value;
      Tomador.Contato.Telefone:=Fone;
      Tomador.Endereco.Bairro:=DM.TBNfseNFS_TOMBAIRRO.Value;
      Tomador.Endereco.CEP:=LimparFormatacao(DM.TBNfseNFS_TOMCEP.Value);
      Tomador.Endereco.CodigoMunicipio:=IntToStr(DM.TBNfseNFS_TOMCIDADECODIGO.Value);
      Tomador.Endereco.CodigoPais:=1058; // Brasil
      Tomador.Endereco.Complemento:=DM.TBNfseNFS_TOMCOMPLEMENTO.Value;
      Tomador.Endereco.Endereco:=DM.TBNfseNFS_TOMENDERECO.Value;
      Tomador.Endereco.EnderecoInformado:=TnfseSimNaoOpc.snoSim; // 'S';
      Tomador.Endereco.Numero:=DM.TBNfseNFS_TOMNUMERO.Value;
      Tomador.Endereco.TipoBairro:='BAIRRO';
      Tomador.Endereco.TipoLogradouro:='RUA';
      Tomador.Endereco.UF:=DM.TBNfseNFS_TOMESTADO.Value;
      Tomador.Endereco.xMunicipio:=DM.TBNfseNFS_TOMCIDADE.Value;
      Tomador.Endereco.xPais:='BRASIL';
      Tomador.RazaoSocial:=DM.TBNfseNFS_TOMNOME.Value;
      {$ENDREGION}

      // Usado quando houver um intermediario na prestação do serviço
      Intermediario.RazaoSocial:=DM.TBNfseNFS_INTERMEDIARIONOME.Value;
      Intermediario.Identificacao.CpfCnpj:=LimparFormatacao(DM.TBNfseNFS_INTERMEDIARIOCPFCNPJ.Value);
      Intermediario.Identificacao.InscricaoMunicipal:=IntToStr(DM.TBNfseNFS_INTERMEDIARIOIM.Value);

      {$REGION 'Reforma Tributária.'}
      IBSCBS.finNFSe  :=fnfsRegular;
      IBSCBS.indFinal :=ifNao;
      IBSCBS.cIndOp   :='030103';

      // togNenhum, togFornecimento, togRecebimentoPag,
      // togFornecimentoRealizado, togRecebimentoPagPosterior,
      // togFornecimentoRecebimento
      case StrToInt(Copy(DM.TBNfseNFS_GOVERNAMENTALOP.Value,1,1)) of
        0: IBSCBS.tpOper:=togNenhum;
        1: IBSCBS.tpOper:=togFornecimento;
        2: IBSCBS.tpOper:=togRecebimentoPag;
        3: IBSCBS.tpOper:=togFornecimentoRealizado;
        4: IBSCBS.tpOper:=togRecebimentoPagPosterior;
        5: IBSCBS.tpOper:=togFornecimentoRecebimento;
      end;

      case StrToInt(Copy(DM.TBNfseNFS_GOVERNAMENTAL.Value,1,1)) of
        0: IBSCBS.tpEnteGov:=tcgNenhum;
        1: IBSCBS.tpEnteGov:=tcgUniao;
        2: IBSCBS.tpEnteGov:=tcgEstados;
        3: IBSCBS.tpEnteGov:=tcgDistritoFederal;
        4: IBSCBS.tpEnteGov:=tcgMunicipios;
        5: IBSCBS.tpEnteGov:=tcgConsorcioPublico;
        6: IBSCBS.tpEnteGov:=tcgComiteGestorIBS;
      end;

      IBSCBS.indDest:=idTomadorAdquirenteDestinatarioIguais; // idTomadorAdquirenteDestinatarioIguais, idTomadorAdquirenteIguais,

      case StrToInt(DM.TBNfseItensNSI_CSTIBSCBS.Value) of
        000: IBSCBS.valores.trib.gIBSCBS.CST:=cst000;
        010: IBSCBS.valores.trib.gIBSCBS.CST:=cst010;
        011: IBSCBS.valores.trib.gIBSCBS.CST:=cst011;
        200: IBSCBS.valores.trib.gIBSCBS.CST:=cst200;
        220: IBSCBS.valores.trib.gIBSCBS.CST:=cst220;
        221: IBSCBS.valores.trib.gIBSCBS.CST:=cst221;
        222: IBSCBS.valores.trib.gIBSCBS.CST:=cst222;
        400: IBSCBS.valores.trib.gIBSCBS.CST:=cst400;
        410: IBSCBS.valores.trib.gIBSCBS.CST:=cst410;
        510: IBSCBS.valores.trib.gIBSCBS.CST:=cst510;
        515: IBSCBS.valores.trib.gIBSCBS.CST:=cst515;
        550: IBSCBS.valores.trib.gIBSCBS.CST:=cst550;
        620: IBSCBS.valores.trib.gIBSCBS.CST:=cst620;
        800: IBSCBS.valores.trib.gIBSCBS.CST:=cst800;
        810: IBSCBS.valores.trib.gIBSCBS.CST:=cst810;
        811: IBSCBS.valores.trib.gIBSCBS.CST:=cst811;
        820: IBSCBS.valores.trib.gIBSCBS.CST:=cst820;
        830: IBSCBS.valores.trib.gIBSCBS.CST:=cst830;
      end;

      IBSCBS.valores.trib.gIBSCBS.cClassTrib:=DM.TBNfseItensNSI_CLASSTRIBIBSCBS.Value;

      // cpNenhum, cp01, cp02, cp03, cp04, cp05, cp06, cp07, cp08, cp09, cp10,
      // cp11, cp12, cp13
      IBSCBS.valores.trib.gIBSCBS.cCredPres := cpNenhum;

      IBSCBS.valores.trib.gIBSCBS.gTribRegular.CSTReg       := cstNenhum;
      IBSCBS.valores.trib.gIBSCBS.gTribRegular.cClassTribReg:= '';
      {
      IBSCBS.valores.trib.gIBSCBS.gDif.pDifUF := 0.1;
      IBSCBS.valores.trib.gIBSCBS.gDif.pDifMun := 0;
      IBSCBS.valores.trib.gIBSCBS.gDif.pDifCBS := 0.9;
      }


      infNFSe.IBSCBS.cLocalidadeIncid:=DM.TBNfseNFS_TOMCIDADECODIGO.Value;
      infNFSe.IBSCBS.xLocalidadeIncid:=DM.TBNfseNFS_TOMCIDADE.Value;
      //infNFSe.IBSCBS.pRedutor

      infNFSe.IBSCBS.Valores.vBC                    :=DM.TBNfseNFS_BASEIBSCBS.AsExtended;

      infNFSe.IBSCBS.Valores.uf.pIBSUF              :=DM.TBNfseItensNSI_ALIQIBSUF.AsExtended;
      infNFSe.IBSCBS.Valores.uf.pRedAliqUF          :=DM.TBNfseItensNSI_ALIQIBSUFRED.AsExtended;
      infNFSe.IBSCBS.Valores.uf.pAliqEfetUF         :=DM.TBNfseItensNSI_ALIQIBSUFEFE.AsExtended;

      infNFSe.IBSCBS.Valores.mun.pIBSMun            :=DM.TBNfseItensNSI_ALIQIBSMUN.AsExtended;
      infNFSe.IBSCBS.Valores.mun.pRedAliqMun        :=DM.TBNfseItensNSI_ALIQIBSMUNRED.AsExtended;
      infNFSe.IBSCBS.Valores.mun.pAliqEfetMun       :=DM.TBNfseItensNSI_ALIQIBSMUNEFE.AsExtended;

      infNFSe.IBSCBS.Valores.fed.pCBS               :=DM.TBNfseItensNSI_ALIQCBS.AsExtended;
      infNFSe.IBSCBS.Valores.fed.pRedAliqCBS        :=DM.TBNfseItensNSI_ALIQCBSRED.AsExtended;
      infNFSe.IBSCBS.Valores.fed.pAliqEfetCBS       :=DM.TBNfseItensNSI_ALIQCBSEFE.AsExtended;

      infNFSe.IBSCBS.totCIBS.vTotNF                 :=DM.TBNfseNFS_VALORTOTALRTC.AsExtended;
      infNFSe.IBSCBS.totCIBS.gIBS.vIBSTot           :=DM.TBNfseNFS_IBSVALOR.AsExtended;
      infNFSe.IBSCBS.totCIBS.gIBS.gIBSUFTot.vIBSUF  :=DM.TBNfseNFS_IBSUFVALOR.AsExtended;
      infNFSe.IBSCBS.totCIBS.gIBS.gIBSMunTot.vIBSMun:=DM.TBNfseNFS_IBSMUNVALOR.AsExtended;
      infNFSe.IBSCBS.totCIBS.gCBS.vCBS              :=DM.TBNfseNFS_CBSVALOR.AsExtended;

      infNFSe.IBSCBS.UFLocalidadeIncid              :=DM.TBNfseNFS_TOMESTADO.AsString;
      //infNFSe.IBSCBS.
      {$ENDREGION}


      // Usado quando o serviço for uma obra
      //if Pos('BETHA',UpperCase(DM.TBParametrosPAR_NFSESCHEMAS.Value))<>0 then //se encontrou BETHAV2...
      ///begin
//      if IntToStr(DM.TBNfseNFS_OBRACODIGO.Value)<>'' then
//      begin
//        ConstrucaoCivil.CodigoObra:=IntToStr(DM.TBNfseNFS_OBRACODIGO.Value);
//        ConstrucaoCivil.Art:=IntToStr(DM.TBNfseNFS_OBRAART.Value);
//      end;
    end;
  end;
end;

procedure TFormNfse.AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma nota selecionado.');
  AbortIf(DM.TBNfseNFS_STATUS.Value<>'A','Esta nota não está em aberto.');

  if DM.TBNfseNFS_MOVIMENTAFINANCEIRO.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Financeiro para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfse.Edit;
    DM.TBNfseNFS_MOVIMENTAFINANCEIRO.Value:=Copy(S,1,1); //primeira letra.
    DM.TBNfse.Post;
  end;
end;

procedure TFormNfse.ArquivosXMLDaNFSe1Click(Sender: TObject);
var A,M,D: Word;
  Pasta, S: String;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFS-e selecionada.');

  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';

  AbortIf(not System.SysUtils.DirectoryExists(Pasta),'A pasta da NFS-e não foi localizada.'+#13#10+'Tente gerar o arquivo XML antes.');

//  S:=Pasta+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'*.*';
//  AbortIf(not ExisteAlgumArquivo(S),'Nenhum arquivo encontrado para esta NFSe.');

  Application.CreateForm(TFormNfseArquivosXML, FormNfseArquivosXML);
  FormNfseArquivosXML.ShowModal;
  FormNfseArquivosXML.Free;
  FormNfseArquivosXML:=nil;
end;

function TFormNfse.VerificarChaveAcessoXML(const ChaveAcesso, Arquivo: String): Boolean;
var
  XMLDoc: IXMLDocument;
  Root, Node: IXMLNode;
  ChaveXML: String;
begin
  Result:=False;
  ChaveXML:='';

  if not FileExists(Arquivo) then
  raise Exception.CreateFmt('Arquivo não encontrado: %s', [Arquivo]);

  XMLDoc:=TXMLDocument.Create(nil);
  XMLDoc.Options:=XMLDoc.Options + [doNodeAutoCreate];
  XMLDoc.LoadFromFile(Arquivo);
  XMLDoc.Active:=True;

  Root:=XMLDoc.DocumentElement;
  if not Assigned(Root) then
  raise Exception.Create('XML inválido ou sem elemento raiz.');

  //1 Nota autorizada (tag <infNFe Id="NFe...">)
  Node:=FindNodeRecursive(Root, 'infNFSe');
 //Root.SelectSingleNode('//infNFe');
  if Assigned(Node) and Node.HasAttribute('Id') then
  ChaveXML:=Copy(Node.Attributes['Id'], 4, 51); // Remove 'NFS' //NFS42089062212843516000187000000000000126085165384800

  //2 Evento de cancelamento (<procEventoNFe> ou <evento>)
//  if (ChaveXML='') then
//  begin
//    Node:=FindNodeRecursive(Root, 'chNFe');
//    if Assigned(Node) then
//    ChaveXML := Trim(Node.Text);
//  end;

  //3 Inutilização (<infInut><chave>)
//  if (ChaveXML='') then
//  begin
//    Node:=FindNodeRecursive(Root, 'chave');
//    if Assigned(Node) then
//    ChaveXML := Trim(Node.Text);
//  end;

  // Comparação
  Result:=(ChaveAcesso=ChaveXML);
end;

procedure TFormNfse.AssociarArquivoXMLBaixado1Click(Sender: TObject);
var D,M,A: Word;
  Arquivo, Pasta: String;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='A','Esta NFSe ainda está em aberto.');

  Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';
//  if DM.TBNfseNFS_STATUS.Value='F' then Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';
//  if DM.TBNfseNFS_STATUS.Value='C' then Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-procCancNFCe.xml';
//  if DM.TBNfseNFS_STATUS.Value='I' then Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-procInutNFCe.xml';

  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  AbortIf(FileExists(Pasta+Arquivo),'Já existe um arquivo associado a essa NFSe ('+Arquivo+')');

  if FileOpenDialog2.Execute then
  begin
    AbortIf(not VerificarChaveAcessoXML(DM.TBNfseNFS_CHAVEACESSO.Value,FileOpenDialog2.FileName),'A chave de acesso contida no XML é diferente da chave de acesso da NFSe selecionada.');

    MoveFile(PWideChar(FileOpenDialog2.FileName),PWideChar(Pasta+Arquivo));
    MessageDlg('Arquivo movido com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfse.AtribuirNovoLote1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value<>'A','Esta NFSe não está em aberto.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','Esta NFSe já está autorizada para uso.');

  //garante o valor atualizado do lote.
  DM.TBNfseCodigo.Close;
  DM.TBNfseCodigo.Open;

  //gera um novo código de lote.
  DM.TBNfseCodigo.Edit;
  DM.TBNfseCodigoNFS_CODIGO.Value:=DM.TBNfseCodigoNFS_CODIGO.Value+1;
  DM.TBNfseCodigo.Post;

  //atribui o novo código de lote.
  DM.TBNfse.Edit;
  DM.TBNfseNFS_LOTE.Value:=DM.TBNfseCodigoNFS_CODIGO.Value;
  DM.TBNfse.Post;
end;

procedure TFormNfse.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','NFSe já autorizada para uso. Não é mais possível alterar seus itens.');
  AbortIf(not DM.TBNfseItens.IsEmpty,'No momento, é permitido apenas um item por nota.');

  DM.TBNfseItens.Insert;
  Application.CreateForm(TFormNfseItens, FormNfseItens);
  FormNfseItens.ShowModal;
  FormNfseItens.Free;
  FormNfseItens:=nil;
end;

procedure TFormNfse.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM.TBNfseItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','NFSe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfseItens.Delete;
    DM.CalcularTotaisNFSe(True);
  end;
end;

procedure TFormNfse.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM.TBNfseItens.IsEmpty,'Não existe nenhum item para editar.');

  DM.TBNfseItens.Edit;
  Application.CreateForm(TFormNfseItens, FormNfseItens);
  FormNfseItens.DBEdit2.Enabled:=False;
  FormNfseItens.DBEdit2.Color:=clBtnFace;
  FormNfseItens.DBEdit5.Enabled:=False;
  FormNfseItens.DBEdit5.Color:=clBtnFace;
  FormNfseItens.PngSpeedButton1.Enabled:=False;
  FormNfseItens.SpeedButton9.Enabled:=False;
  FormNfseItens.DesabilitarCampos; //se status = F ou C ou com protocolo de autorizacao, desabilita campos.
  FormNfseItens.ShowModal;
  FormNfseItens.Free;
  FormNfseItens:=nil;
end;

procedure TFormNfse.BitBtn5Click(Sender: TObject);
begin
  DM.SimularCondicaoNfse;
end;

procedure TFormNfse.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM.TBNfseItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','Nota cancelada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','NFSe já autorizada para uso. Não é mais possível alterar seus itens.');

  if MessageDlg('Eliminar todos os itens?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBNfseItens.First;
    while not DM.TBNfseItens.Eof do
    begin
      DM.TBNfseItens.Delete;
    end;
    DM.CalcularTotaisNFSe(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormNfse.Buscar1Click(Sender: TObject);
var A,M,D: Word;
  F: TextFile;
  Pasta, Arquivo: String;
  Resp: TDpsStatusResposta;
  I: Integer;
begin
  {$REGION 'Checagens Iniciais'}
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
//  AbortIf(DM.TBNfseNFS_STATUS.Value='F','NFSe já finalizada.');
//  AbortIf(DM.TBNfseNFS_STATUS.Value='I','NFSe já inutilizada.');
//  AbortIf(DM.TBNfseNFS_RECIBO.Value='','NFSe ainda não enviada. Sem recibo para buscar.');
//  AbortIf(DM.TBNfseNFS_NUMERONOTA.Value>0,'NFSe já autorizada. Proceda com a finalização da NFSe.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Consultando DPS...');
  PageControl1.ActivePageIndex:=4;
  PageControl2.ActivePageIndex:=0;
  {$ENDREGION}

  ConfigurarComponenteACBrNFSeX;
  ACBrNFSeX1.NotasFiscais.Clear;

  //rotina minha q funciona.
  Resp:=TratarDadosConsultaStatus(
    ConsultarStatusDpsBetha(DM.TBEmpresaEMP_CNPJ.Value, DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString, DM.TBNfseNFS_RECIBO.Value, 'EMISSAO')
  );
  if (Resp.NumeroNotaFiscal<>'') then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update NFSE set NFS_NUMERONOTA=:nota, NFS_PROTOCOLO=:protocolo, NFS_PROTOCOLODH=:protocolodh, '+
      'NFS_LINK=:link, NFS_CHAVEACESSO=:chaveacesso, NFS_IDDPS=:iddps where NFS_CODIGO=:codigo'
    );
    DM.QYAux.ParamByName('nota').AsInteger:=Resp.NumeroNotaFiscal.ToInteger;
    DM.QYAux.ParamByName('protocolo').AsString:=Resp.Protocolo;
    DM.QYAux.ParamByName('protocolodh').AsString:=Resp.DataHoraRecebimento;
    DM.QYAux.ParamByName('chaveacesso').AsString:=Resp.ChaveAcesso;
    DM.QYAux.ParamByName('link').AsString:=Resp.LinkPdf;
    DM.QYAux.ParamByName('iddps').AsString:=Resp.IdDps;
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CODIGO.Value;
    DM.QYAux.ExecSQL;
    DM.TBNfse.Close;
    DM.TBNfse.Open;
  end;

  Memo1.Lines.Add('============================================================================');
  Memo1.Lines.Add('Método Executado...: ' + 'Consultar DPS');
  Memo1.Lines.Add('============================================================================');
  Memo1.Lines.Add('--- Parâmetros de Envio');
  Memo1.Lines.Add('Numero do Recibo...: ' + DM.TBNfseNFS_RECIBO.Value);
  Memo1.Lines.Add('--- Parâmetros de Retorno');
  Memo1.Lines.Add('Data de Envio......: ' + Resp.DataHoraRecebimento);
  Memo1.Lines.Add('Numero do Protocolo: ' + Resp.Protocolo);
  Memo1.Lines.Add('Numero da Nota.....: ' + Resp.NumeroNotaFiscal);
  Memo1.Lines.Add('Série..............: ' + Resp.SerieDps);
  Memo1.Lines.Add('Link...............: ' + Resp.LinkPdf);
  Memo1.Lines.Add('Chave de Acesso....: ' + Resp.ChaveAcesso);
  Memo1.Lines.Add('ID DPS.............: ' + Resp.IdDps);
  Memo1.Lines.Add('Status.............: ' + Resp.StatusProcessamento);
  Memo1.Lines.Add('');

  Memo1.Lines.Add(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno);

  if DM.TBNfseNFS_CHAVEACESSO.Value<>'' then
  begin
    Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';
    ACBrNFSeX1.ConsultarNFSePorChave(DM.TBNfseNFS_CHAVEACESSO.Value);
    ChecarResposta(tmConsultarNFSePorChave);

    if Trim(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno).StartsWith('<') then
    begin
      AssignFile(F,Pasta+Arquivo);
      Rewrite(F);
      Write(F,ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno);
      CloseFile(F);
    end else
    ExtrairXmlDoBase64Zipado(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno,Pasta+Arquivo);
  end;
end;

procedure TFormNfse.BuscarNFSe1Click(Sender: TObject);
var A,M,D: Word;
  F: TextFile;
  Pasta, Arquivo: String;
  Resp: TDpsStatusResposta;
  I: Integer;
begin
  {$REGION 'Checagens Iniciais'}
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','NFSe já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='I','NFSe já inutilizada.');
  AbortIf(DM.TBNfseNFS_RECIBO.Value='','NFSe ainda não enviada. Sem recibo para buscar.');
  AbortIf(DM.TBNfseNFS_NUMERONOTA.Value>0,'NFSe já autorizada. Proceda com a finalização da NFSe.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Consultando DPS...');
  PageControl1.ActivePageIndex:=4;
  PageControl2.ActivePageIndex:=0;
  {$ENDREGION}

  ConfigurarComponenteACBrNFSeX;
  ACBrNFSeX1.NotasFiscais.Clear;

  //rotina minha q funciona.
  Resp:=TratarDadosConsultaStatus(
    ConsultarStatusDpsBetha(DM.TBEmpresaEMP_CNPJ.Value, DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString, DM.TBNfseNFS_RECIBO.Value, 'EMISSAO')
  );
  if (Resp.NumeroNotaFiscal<>'') and (DM.TBNfseNFS_NUMERONOTA.Value<=0) then
  begin
    DM.TBNfse.Edit;
    DM.TBNfseNFS_CHAVEACESSO.Value:=Resp.ChaveAcesso;
    DM.TBNfseNFS_IDDPS.Value:=Resp.IdDps;
    DM.TBNfseNFS_LINK.Value:=Resp.LinkPdf;
    DM.TBNfseNFS_NUMERONOTA.Value:=Resp.NumeroNotaFiscal.ToInteger;
    DM.TBNfseNFS_PROTOCOLO.Value:=Resp.Protocolo;
    DM.TBNfseNFS_PROTOCOLODH.Value:=Resp.DataHoraRecebimento;
    DM.TBNfse.Post;
  end;

  Memo1.Lines.Add('============================================================================');
  Memo1.Lines.Add('Método Executado...: ' + 'Consultar DPS');
  Memo1.Lines.Add('============================================================================');
  Memo1.Lines.Add('--- Parâmetros de Envio');
  Memo1.Lines.Add('Numero do Recibo...: ' + DM.TBNfseNFS_RECIBO.Value);
  Memo1.Lines.Add('--- Parâmetros de Retorno');
  Memo1.Lines.Add('Data de Envio......: ' + Resp.DataHoraRecebimento);
  Memo1.Lines.Add('Numero do Protocolo: ' + Resp.Protocolo);
  Memo1.Lines.Add('Numero da Nota.....: ' + Resp.NumeroNotaFiscal);
  Memo1.Lines.Add('Série..............: ' + Resp.SerieDps);
  Memo1.Lines.Add('Link...............: ' + Resp.LinkPdf);
  Memo1.Lines.Add('Chave de Acesso....: ' + Resp.ChaveAcesso);
  Memo1.Lines.Add('ID DPS.............: ' + Resp.IdDps);
  Memo1.Lines.Add('Status.............: ' + Resp.StatusProcessamento);
  Memo1.Lines.Add('');

  Memo1.Lines.Add(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno);

  if DM.TBNfseNFS_CHAVEACESSO.Value<>'' then
  begin
    Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';
    ACBrNFSeX1.ConsultarNFSePorChave(DM.TBNfseNFS_CHAVEACESSO.Value);
    ChecarResposta(tmConsultarNFSePorChave);

    if Trim(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno).StartsWith('<') then
    begin
      AssignFile(F,Pasta+Arquivo);
      Rewrite(F);
      Write(F,ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno);
      CloseFile(F);
    end else
    ExtrairXmlDoBase64Zipado(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno,Pasta+Arquivo);
  end;

  //se NAO TEM chave de acesso, consulta por DPS antes.
//  if DM.TBNfseNFS_CHAVEACESSO.Value='' then
//  begin
//    ACBrNFSeX1.ConsultarDPSPorChave(DM.TBNfseNFS_IDDPS.Value);
//    ChecarResposta(tmConsultarNFSePorRps);
//    if ACBrNFSeX1.WebService.ConsultaNFSeporRps.idNota<>'' then
//    begin
//      DM.TBNfse.Edit;
//      DM.TBNfseNFS_CHAVEACESSO.Value:=ACBrNFSeX1.WebService.ConsultaNFSeporRps.idNota;
//      DM.TBNfse.Post;
//    end;
//  end;

  //se JA TEM chave de acesso, consulta a chave pra obter demais dados e XML.
//  if DM.TBNfseNFS_CHAVEACESSO.Value<>'' then
//  begin
//    ACBrNFSeX1.ConsultarNFSePorChave(DM.TBNfseNFS_CHAVEACESSO.Value);
//    ChecarResposta(tmConsultarNFSePorChave);
//
//    for I:=0 to ACBrNFSeX1.NotasFiscais.Count-1 do
//    begin
//      Memo1.Lines.Add('NFS-e Numero.......: ' + ACBrNFSeX1.NotasFiscais.Items[I].NFSe.Numero);
//      //Memo1.Lines.Add('Cod. Verificacao...: ' + ACBrNFSeX1.NotasFiscais.Items[I].NFSe.CodigoVerificacao);
//      Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.NotasFiscais.Items[I].NFSe.Link);
//
//      //ACBrNFSeX1.NotasFiscais.Items[I].
//      Memo1.Lines.Add(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno);
//
//      if ACBrNFSeX1.NotasFiscais.Items[I].NFSe.Numero<>'' then
//      begin
//        DM.TBNfse.Edit;
//        DM.TBNfseNFS_LINK.Value:=ACBrNFSeX1.NotasFiscais.Items[I].NFSe.Link;
//        DM.TBNfseNFS_NUMERONOTA.Value:=ACBrNFSeX1.NotasFiscais.Items[I].NFSe.Numero.ToInteger;
//        DM.TBNfse.Post;
//      end;
//
//      if ACBrNFSeX1.NotasFiscais.Items[I].NFSe.SituacaoNfse = ACBrNFSeXConversao.snCancelado then
//      Memo1.Lines.Add('A Nota encontra-se Cancelada.');
//
//      if ACBrNFSeX1.NotasFiscais.Items[i].XmlNfse<>'' then
//      begin
//        Arquivo:=ACBrNFSeX1.NotasFiscais.Items[I].NFSe.CodigoVerificacao+'-nfse.xml';
//        AssignFile(F,Pasta+Arquivo);
//        Rewrite(F);
//        Write(F,ACBrNFSeX1.NotasFiscais.Items[i].XmlNfse);
//        CloseFile(F);
//      end;
//    end;
//  end;

  //as rotinas abaixo deixaram de funcionar com a betha e foram resolvidas com as acima.
//  ConfigurarComponenteACBrNFSeX;
//
//  ACBrNFSeX1.ConsultarNFSePorRps(DM.TBNfseNFS_CODIGO.Value.ToString, DM.TBNfseNFS_SERIE.Value, '1', '');
//  ChecarResposta(tmConsultarNFSePorRps);
//
//  if ACBrNFSeX1.NotasFiscais.Items[0].XmlNfse<>'' then
//  begin
//    Memo1.Lines.Add('Número da Nota.....: '+ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero);
//    Memo1.Lines.Add('Código Verificação.: '+ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao);
//    Memo1.Lines.Add('Data Emissão.......: '+DateToStr(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.DataEmissao));
//    Memo1.Lines.Add('Link...............: '+ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Link);
//    Memo1.Lines.Add('Situação...........: '+StatusNFSeToStr(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.SituacaoNfse));
//    Memo1.Lines.Add('Valor Crédito......: '+FloatToStr(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.ValorCredito));
//
//    //grava arquivo nfse.xml.
//    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.xml');
//    Rewrite(F);
//    Write(F,UTF8Encode(ACBrNFSeX1.NotasFiscais.Items[0].XMLNFSe));
//    CloseFile(F);
//
//    DM.TBNfse.Edit;
//    DM.TBNfseNFS_CONSULTADA.Value:='S';
//    DM.TBNfseNFS_CHAVEACESSO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.ChaveAcesso;
//    DM.TBNfseNFS_IDDPS.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.InfID.ID; //testar se vem o DPS.
//    DM.TBNfseNFS_LINK.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Link;
//    DM.TBNfseNFS_NUMERONOTA.Value:=StrToInt(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero);
//    DM.TBNfseNFS_PROTOCOLO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
//    DM.TBNfseNFS_PROTOCOLODH.Value:=DateTimeToStr(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.DataEmissao);
//    DM.TBNfseNFS_VALORCREDITO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.ValorCredito;
//    DM.TBNfse.Post;
//  end;
end;

procedure TFormNfse.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormNfse.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormNfse.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormNfse.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormNfse.CadastroDeServicos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIss, FormIss);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormNfse.CancelarNota1Click(Sender: TObject);
var A,M,D: Word;
  CodCanc, Justificativa, Data, Hora: String;
  InfCancelamento: TInfCancelamento;

  InfEvento: TInfEvento;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','NFSe já cancelada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='I','NFSe já inutilizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='A','NFSe ainda não finalizada.');

  if MessageDlg('Deseja cancelar a NFSe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    PageControl1.ActivePageIndex:=4;
    PageControl2.ActivePageIndex:=0;
    Justificativa:='';
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    AbortIf((Length(Justificativa)<15) or (Length(Justificativa)>50), 'Justificativa Inválida!'+#13#10+'Deve ter entre 15 e 50 caracteres.');

    // Codigo de Cancelamento
    // 1 - Erro de emissão
    // 2 - Serviço não concluido
    // 3 - RPS Cancelado na Emissão
    CodCanc:='1';
    if not(InputQuery('Cancelar NFSe','Código de Cancelamento',CodCanc)) then
    Exit;

    Memo1.Lines.Clear;
    Memo1.Lines.Add('Cancelamento de NFe...');

    ConfigurarComponenteACBrNFSeX;

    InfEvento:=TInfEvento.Create;
    try
      with InfEvento.pedRegEvento do
      begin
        tpAmb:=ACBrNFSeX1.Configuracoes.WebServices.AmbienteCodigo;
        verAplic:='Runtime';
        dhEvento:=Now;
        chNFSe:=DM.TBNfseNFS_CHAVEACESSO.Value;
        nPedRegEvento:=1;
        tpEvento:=ACBrNFSeXConversao.teCancelamento; //padrao nacional funcionou.... vai funcionar pra betha?
        //tpEvento:=ACBrNFSeXConversao.teAnaliseParaCancelamento;
        cMotivo:=StrToIntDef(CodCanc, 1);
        xMotivo:=Justificativa;
      end;
      ACBrNFSeX1.EnviarEvento(InfEvento);
    finally
      InfEvento.Free;
    end;

    ChecarResposta(tmEnviarEvento); //antigo->ChecarResposta(tmCancelarNFSe);

    //ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.DataHora

    //betha??    if (UpperCase(ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.Sucesso)='TRUE') or
    //       (UpperCase(ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.Sucesso)='SIM') then
//    if (UpperCase(BoolToStr(ACBrNFSeX1.WebService.EnviarEvento.Sucesso))='TRUE') or (UpperCase(BoolToStr(ACBrNFSeX1.WebService.EnviarEvento.Sucesso))='SIM') then //nfse nacional.
    if (UpperCase(BoolToStr(ACBrNFSeX1.WebService.EnviarEvento.Sucesso, True))='TRUE') or (UpperCase(BoolToStr(ACBrNFSeX1.WebService.EnviarEvento.Sucesso, True))='SIM') then //nfse nacional.
    begin
//      Data:=DateTimeToStr(ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.DataHora);
//      Hora:=DateTimeToStr(ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.DataHora);
//      Data:=Copy(Data,1,Pos(' ',Data)-1);
//      Hora:=Copy(Hora,Pos(' ',Hora)+1,8);

      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add(
        'update NFSE set NFS_CANCELAMENTOCODIGO=:cancelamentocodigo, '+
        'NFS_CANCELAMENTODATA=:cancelamentodata, '+
        'NFS_CANCELAMENTOHORA=:cancelamentohora, '+
        'NFS_CANCELAMENTOMOTIVO=:cancelamentomotivo, '+
        'NFS_USUARIO=:usuario, '+
        'NFS_DTATUALIZACAO=:dtatualizacao, '+
        'NFS_STATUS=:status where NFS_CODIGO=:codigo'
      );
      DM.QYAux.ParamByName('cancelamentocodigo').AsInteger:=StrToInt(CodCanc); // StrToInt(ACBrNFSeX1.WebService.CancelaNfse.InfCancelamento.CodCancelamento);
      DM.QYAux.ParamByName('cancelamentodata').AsDate:=DM.ServerDate; // StrToDate(Data);
      DM.QYAux.ParamByName('cancelamentohora').AsTime:=DM.ServerTime; // StrToTime(Hora);
      DM.QYAux.ParamByName('cancelamentomotivo').AsString:=Justificativa;
      DM.QYAux.ParamByName('status').AsString:='C';
      DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
      DM.QYAux.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CODIGO.Value;
      DM.QYAux.ExecSQL;

      Application.CreateForm(TFormNfseCancelar, FormNfseCancelar);
      FormNfseCancelar.ShowModal;
      FormNfseCancelar.Free;
      FormNfseCancelar:=nil;

      DM.TBNfse.Close;
      DM.TBNfse.Open;
    end;

  end;
end;

procedure TFormNfse.ConfigurarComponenteACBrNFSeX;
var OK: Boolean;
begin
  //se usar arquivo pfx com openssl, nao precisa preencher o numero serial.
  //dá o erro: CarregarCertificadoDeNumeroSerie" não suportado em: TDFeOpenSSL.
  ACBrNFSeX1.Configuracoes.Certificados.ArquivoPFX      :=DM.TBParametrosPAR_ARQUIVOCERTIFICADO.Value;
  ACBrNFSeX1.Configuracoes.Certificados.Senha           :=DM.TBParametrosPAR_SENHACERTIFICADO.Value;
  if DM.TBParametrosPAR_LIBSSL.Value<>'libOpenSSL' then
  ACBrNFSeX1.Configuracoes.Certificados.NumeroSerie     :=DM.TBParametrosPAR_SERIALCERTIFICADO.Value;

  ACBrNFSeX1.SSL.DescarregarCertificado; //o que faz?

  ACBrNFSeX1.Configuracoes.Arquivos.AdicionarLiteral    :=False; //True;
  ACBrNFSeX1.Configuracoes.Arquivos.EmissaoPathNFSe     :=False;
  ACBrNFSeX1.Configuracoes.Arquivos.SepararPorMes       :=False;
  ACBrNFSeX1.Configuracoes.Arquivos.SepararPorCNPJ      :=False;
  ACBrNFSeX1.Configuracoes.Arquivos.PathCan             :=DM.TBParametrosPAR_REPOSITORIONFSE.Value;
  ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar          :=DM.TBParametrosPAR_REPOSITORIONFSE.Value; //GetPathGer(0);
  ACBrNFSeX1.Configuracoes.Arquivos.PathGer             :=DM.TBParametrosPAR_REPOSITORIONFSE.Value;
  ACBrNFSeX1.Configuracoes.Arquivos.PathNFSe            :=DM.TBParametrosPAR_REPOSITORIONFSE.Value;
  ACBrNFSeX1.Configuracoes.Arquivos.PathRPS             :=DM.TBParametrosPAR_REPOSITORIONFSE.Value;
  ACBrNFSeX1.Configuracoes.Arquivos.PathSchemas         :=DM.TBParametrosPAR_NFSESCHEMAS.Value;
  ACBrNFSeX1.Configuracoes.Arquivos.NomeLongoNFSe       :=True;
  ACBrNFSeX1.Configuracoes.Arquivos.Salvar              :=False;

  ACBrNFSeX1.Configuracoes.Geral.CNPJPrefeitura         :=LimparFormatacao(DM.TBEmpresaEMP_CNPJPREFEITURA.Value);
  ACBrNFSeX1.Configuracoes.Geral.CodigoMunicipio        :=DM.TBEmpresaEMP_CIDADECODIGO.Value; // StrToIntDef(edtCodCidade.Text, 0);
  ACBrNFSeX1.Configuracoes.Geral.ConsultaAposCancelar   :=False;
  ACBrNFSeX1.Configuracoes.Geral.ConsultaLoteAposEnvio  :=False;
  ACBrNFSeX1.Configuracoes.Geral.ExibirErroSchema       :=True;
  ACBrNFSeX1.Configuracoes.Geral.FormaEmissao           :=teNormal; //teOffline.
  ACBrNFSeX1.Configuracoes.Geral.FormatoAlerta          :='TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.';
  ACBrNFSeX1.Configuracoes.Geral.FormatoDiscriminacao   :=TFormatoDiscriminacao(0); //nenhum
  ACBrNFSeX1.Configuracoes.Geral.LayoutNFSe             :=TLayoutNFSe.lnfsProvedor; //(0); //provedor.
  ACBrNFSeX1.Configuracoes.Geral.Provedor               :=StrToProvedor(DM.TBParametrosPAR_NFSEPROVEDOR.Value); //proBetha
  ACBrNFSeX1.Configuracoes.Geral.RetirarAcentos         :=True;
  ACBrNFSeX1.Configuracoes.Geral.MontarPathSchema       :=True; //monta apos o pathschemas conforme provedor. ex: \betha\v100\
  ACBrNFSeX1.Configuracoes.Geral.Salvar                 :=False;
  ACBrNFSeX1.Configuracoes.Geral.Versao                 :=StrToVersaoNFSe(OK,DM.TBParametrosPAR_NFSEVERSAO.Value); //ve202;

  ACBrNFSeX1.Configuracoes.Geral.Emitente.CNPJ          :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  ACBrNFSeX1.Configuracoes.Geral.Emitente.InscMun       :='';
  if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFSE') then
  ACBrNFSeX1.Configuracoes.Geral.Emitente.InscMun       :=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
  ACBrNFSeX1.Configuracoes.Geral.Emitente.RazSocial     :=DM.TBEmpresaEMP_NOME.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.WSChaveAcesso :='';
  ACBrNFSeX1.Configuracoes.Geral.Emitente.WSChaveAutoriz:='';
  ACBrNFSeX1.Configuracoes.Geral.Emitente.WSFraseSecr   :='';
  ACBrNFSeX1.Configuracoes.Geral.Emitente.WSSenha       :='';
  ACBrNFSeX1.Configuracoes.Geral.Emitente.WSUser        :=''; //senha do portal da betha?

  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Bairro           :=DM.TBEmpresaEMP_BAIRRO.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.CEP              :=LimparFormatacao(DM.TBEmpresaEMP_CEP.Value);
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.CodigoMunicipio  :=DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Complemento      :='';
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Email            :=DM.TBEmpresaEMP_EMAIL.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Endereco         :=DM.TBEmpresaEMP_ENDERECO.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.InscricaoEstadual:=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Municipio        :=DM.TBEmpresaEMP_CIDADE.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.NomeFantasia     :=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Numero           :=DM.TBEmpresaEMP_NUMERO.Value;
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.Telefone         :=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
  ACBrNFSeX1.Configuracoes.Geral.Emitente.DadosEmitente.UF               :=DM.TBEmpresaEMP_ESTADO.Value;

  //ACBrNFSeX1.Configuracoes.Geral.Layout:=loABRASF;

  {$REGION 'Configuracao do SSL'}
  ACBrNFSeX1.SSL.SSLType := TSSLType(5); //tls v1.2

  if DM.TBParametrosPAR_LIBSSL.Value='libNone'              then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(0) else
  if DM.TBParametrosPAR_LIBSSL.Value='libOpenSSL'           then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(1) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCapicom'           then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(2) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCapicomDelphiSoap' then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(3) else
  if DM.TBParametrosPAR_LIBSSL.Value='libWinCrypt'          then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(4) else
  if DM.TBParametrosPAR_LIBSSL.Value='libCustom'            then ACBrNFSeX1.Configuracoes.Geral.SSLLib:=TSSLLib(5);

  if DM.TBParametrosPAR_LIBCRYPT.Value='cryNone'            then ACBrNFSeX1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(0) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryOpenSSL'         then ACBrNFSeX1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(1) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryCapicom'         then ACBrNFSeX1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(2) else
  if DM.TBParametrosPAR_LIBCRYPT.Value='cryWinCrypt'        then ACBrNFSeX1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(3);

  if DM.TBParametrosPAR_LIBHTTP.Value='httpNone'            then ACBrNFSeX1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(0) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinINet'         then ACBrNFSeX1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(1) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpWinHttp'         then ACBrNFSeX1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(2) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpOpenSSL'         then ACBrNFSeX1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(3) else
  if DM.TBParametrosPAR_LIBHTTP.Value='httpIndy'            then ACBrNFSeX1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(4);

  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsNone'           then ACBrNFSeX1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(0) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsXmlSec'         then ACBrNFSeX1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(1) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXml'          then ACBrNFSeX1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(2) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsMsXmlCapicom'   then ACBrNFSeX1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(3) else
  if DM.TBParametrosPAR_LIBXMLSIGN.Value='xsLiXml2'         then ACBrNFSeX1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(4);
  {$ENDREGION}

  ACBrNFSeX1.Configuracoes.WebServices.AguardarConsultaRet     :=0; //igual do demo.
  ACBrNFSeX1.Configuracoes.WebServices.AjustaAguardaConsultaRet:=False;
  ACBrNFSeX1.Configuracoes.WebServices.Ambiente                :=StrToTpAmb(OK,DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value); //tpcntipoambiente taHomologacao=2; //taProducao=1 //StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex+1));
  ACBrNFSeX1.Configuracoes.WebServices.IntervaloTentativas     :=0; //igual do demo.
  ACBrNFSeX1.Configuracoes.WebServices.ProxyHost               :='';
  ACBrNFSeX1.Configuracoes.WebServices.ProxyPort               :='';
  ACBrNFSeX1.Configuracoes.WebServices.ProxyUser               :='';
  ACBrNFSeX1.Configuracoes.WebServices.ProxyPass               :='';
  ACBrNFSeX1.Configuracoes.WebServices.QuebradeLinha           :=';';
  ACBrNFSeX1.Configuracoes.WebServices.Salvar                  :=False;
  ACBrNFSeX1.Configuracoes.WebServices.Tentativas              :=5; //igual do demo.
  ACBrNFSeX1.Configuracoes.WebServices.TimeOut                 :=DM.TBParametrosPAR_NFSETIMEOUT.Value;
  ACBrNFSeX1.Configuracoes.WebServices.UF                      :=DM.TBEmpresaEMP_ESTADO.Value;
  ACBrNFSeX1.Configuracoes.WebServices.Visualizar              :=False;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrNFSeX1.Configuracoes.WebServices.ProxyHost:=DM.TBParametrosPAR_PROXYENDERECO.Value;
    ACBrNFSeX1.Configuracoes.WebServices.ProxyPort:=IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
    ACBrNFSeX1.Configuracoes.WebServices.ProxyUser:=DM.TBParametrosPAR_PROXYUSER.Value;
    ACBrNFSeX1.Configuracoes.WebServices.ProxyPass:=DM.TBParametrosPAR_PROXYPASSWORD.Value;
  end;

  //ACBrNFSeX1.Configuracoes.Geral.LerParamsMunicipio;

  if ACBrNFSeX1.DANFSE <> nil then
  begin
    ACBrNFSeX1.DANFSE.CasasDecimais.Aliquota:=2;
    ACBrNFSeX1.DANFSE.ImprimeCanhoto        :=True;
    ACBrNFSeX1.DANFSE.Logo                  :=ExtractFilePath(Application.ExeName)+'\logo_prefeitura_120x60.jpg';
    ACBrNFSeX1.DANFSE.MargemDireita         :=5;
    ACBrNFSeX1.DANFSE.MargemEsquerda        :=5;
    ACBrNFSeX1.DANFSE.MargemInferior        :=5;
    ACBrNFSeX1.DANFSE.MargemSuperior        :=5;
    ACBrNFSeX1.DANFSE.PathPDF               :=ExtractFilePath(Application.ExeName)+'\Print\DANFSE.pdf'; //testar.
    ACBrNFSeX1.DANFSE.Prefeitura            :='Prefeitura Municipal de '+DM.TBEmpresaEMP_CIDADE.Value;
    ACBrNFSeX1.DANFSE.Prestador.Logo        :=ExtractFilePath(Application.ExeName)+'logo_empresa_120x60.jpg';
    ACBrNFSeX1.DANFSE.TipoDANFSE            :=tpGeral; //mudou? tpPadraoNacional. TTipoDANFSE = ( tpPadrao, tpIssDSF, tpFiorilli );
  end;

  // A propriedade CodigoMunicipio tem que ser a ultima a receber o seu valor
  // Pois ela se utiliza das demais configurações
  //LayoutNFSe := TLayoutNFSe.lnfsPadraoNacionalv101; //(0); //provedor.
  try
    ACBrNFSeX1.Configuracoes.Geral.CodigoMunicipio:=StrToIntDef(DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString, -1);
  except on E: Exception do
    ShowMessage('Erro ao configurar o componente: ' + E.Message);
  end;

end;

procedure TFormNfse.DANFSE1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');

//  GerarDANFSEFast(True,False,'');
  GerarDANFSENacionalFast(True,False,'');
end;

procedure TFormNfse.DANFSENacional1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');

  GerarDANFSENacionalFast(True,False,'');
end;

procedure TFormNfse.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNfseNFS_DTEMISSAO.Clear;
end;

procedure TFormNfse.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfse.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBNfse.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNfseNFS_CONDICAO.Clear;
    DM.TBNfseCPG_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfse.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      if DMS.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
      begin
        MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
        DM.TBNfseNFS_CONDICAO.Clear;
        DM.TBNfseCPG_DESCRICAO.Clear;
        Exit;
      end;

      DM.TBNfseNFS_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
      DM.TBNfseCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
      DM.TBNfseNFS_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
      BitBtn5.Click;
    end else
    begin
      DM.TBNfseNFS_CONDICAO.Clear;
      DM.TBNfseCPG_DESCRICAO.Clear;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure TFormNfse.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormNfse.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfse.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfse.DBEdit4Exit(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNfseNFS_CLIENTE.Clear;
    DM.TBNfseNFS_TOMBAIRRO.Clear;
    DM.TBNfseNFS_TOMCEP.Clear;
    DM.TBNfseNFS_TOMCIDADE.Clear;
    DM.TBNfseNFS_TOMCIDADECODIGO.Clear;
    DM.TBNfseNFS_TOMCNPJ.Clear;
    DM.TBNfseNFS_TOMCOMPLEMENTO.Clear;
    DM.TBNfseNFS_TOMCONTATO.Clear;
    DM.TBNfseNFS_TOMCPF.Clear;
    DM.TBNfseNFS_TOMEMAIL.Clear;
    DM.TBNfseNFS_TOMENDERECO.Clear;
    DM.TBNfseNFS_TOMESTADO.Clear;
    DM.TBNfseNFS_TOMESTADOCODIGO.Clear;
    DM.TBNfseNFS_TOMFONE1.Clear;
    DM.TBNfseNFS_TOMFONE2.Clear;
    DM.TBNfseNFS_TOMIE.Clear;
    DM.TBNfseNFS_TOMIM.Clear;
    DM.TBNfseNFS_TOMNOME.Clear;
    DM.TBNfseNFS_TOMNUMERO.Clear;
    DM.TBNfseNFS_TOMPAIS.Clear;
    DM.TBNfseNFS_TOMPAISCODIGO.Clear;
    DM.TBNfseNFS_TOMSITE.Clear;
    DM.TBNfseNFS_TOMTIPOPESSOA.Clear;
    DM.TBNfseNFS_VENDEDOR.Clear;
    DM.TBNfseVEN_NOME.Clear;
  end;
begin
  if (DM.TBNfse.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCampos;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNfse.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
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
      DM.TBNfseNFS_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM.TBNfseNFS_CONDICAO.Value:=DMS.QYClientesCLI_CONDICAO.Value; //campo a mais.
      DM.TBNfseNFS_TOMBAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM.TBNfseNFS_TOMCEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM.TBNfseNFS_TOMCIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM.TBNfseNFS_TOMCIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM.TBNfseNFS_TOMCNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM.TBNfseNFS_TOMCOMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM.TBNfseNFS_TOMCONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM.TBNfseNFS_TOMCPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM.TBNfseNFS_TOMEMAIL.Value:=DMS.QYClientesCLI_EMAIL.Value;
      DM.TBNfseNFS_TOMENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM.TBNfseNFS_TOMESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM.TBNfseNFS_TOMESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      DM.TBNfseNFS_TOMFONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      DM.TBNfseNFS_TOMFONE2.Value:=DMS.QYClientesCLI_FONE2.Value;
      DM.TBNfseNFS_TOMIE.Value:=DMS.QYClientesCLI_IE.Value;
      if DMS.QYClientesCLI_IM.Value > 0 then
      DM.TBNfseNFS_TOMIM.Value:=DMS.QYClientesCLI_IM.Value else
      DM.TBNfseNFS_TOMIM.Clear;
      DM.TBNfseNFS_TOMNOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBNfseNFS_TOMNUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
      DM.TBNfseNFS_TOMPAIS.Value:=DMS.QYClientesCLI_PAIS.Value;
      DM.TBNfseNFS_TOMPAISCODIGO.Value:=DMS.QYClientesCLI_PAISCODIGO.Value;
      DM.TBNfseNFS_TOMSITE.Value:=DMS.QYClientesCLI_SITE.Value;
      DM.TBNfseNFS_TOMTIPOPESSOA.Value:=DMS.QYClientesCLI_TIPOPESSOA.Value;
      DM.TBNfseNFS_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      SetVendedor(DM.TBNfseNFS_VENDEDOR.Value);
      SetCondicao(DM.TBNfseNFS_CONDICAO.Value);
    end else
    begin
      LimparCampos;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormNfse.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNfse.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfse.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNfse.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit32,nil,DM.TBNfse);
end;

procedure TFormNfse.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNfse.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNfse.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TFormNfse.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormNfse.DuplicarNota1Click(Sender: TObject);
var NovoCodigo: Integer;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');

  if MessageDlg('Deseja duplicar a nota '+DM.TBNfseNFS_CODIGO.Value.ToString+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    Memo1.Lines.Clear;
    DM.TBNfse.DisableControls;
    DM.TBNfseItens.DisableControls;
    QYNfse.Open; //foi colocado ibdataset para nao gerar os totais da nota e impedir de dar a msg de venda já finaliza, nao pode ser alterada.
    QYNfseItens.Open;
    //CAPA.
    QYNfse.Insert;
    {$REGION 'DUPLICACAO_CAPA_NFSE'}
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    QYNfseNFS_BAIXADATA.Clear;
    QYNfseNFS_BAIXAPOR.Clear;
    QYNfseNFS_BASEIBSCBS.Value          :=DM.TBNfseNFS_BASEIBSCBS.Value;
    QYNfseNFS_BASEIS.Value              :=DM.TBNfseNFS_BASEIS.Value;
    QYNfseNFS_BASEISS.Value             :=DM.TBNfseNFS_BASEISS.Value;
    QYNfseNFS_CANCELAMENTOCODIGO.Clear;
    QYNfseNFS_CANCELAMENTODATA.Clear;
    QYNfseNFS_CANCELAMENTOHORA.Clear;
    QYNfseNFS_CANCELAMENTOMOTIVO.Clear;
    QYNfseNFS_CBSCREDPRES.Value         :=DM.TBNfseNFS_CBSCREDPRES.Value;
    QYNfseNFS_CBSCREDPRESSUS.Value      :=DM.TBNfseNFS_CBSCREDPRESSUS.Value;
    QYNfseNFS_CBSDEVOLUCAO.Value        :=DM.TBNfseNFS_CBSDEVOLUCAO.Value;
    QYNfseNFS_CBSDIFERIMENTO.Value      :=DM.TBNfseNFS_CBSDIFERIMENTO.Value;
    QYNfseNFS_CBSMONO.Value             :=DM.TBNfseNFS_CBSMONO.Value;
    QYNfseNFS_CBSMONORETENCAO.Value     :=DM.TBNfseNFS_CBSMONORETENCAO.Value;
    QYNfseNFS_CBSMONORETIDO.Value       :=DM.TBNfseNFS_CBSMONORETIDO.Value;
    QYNfseNFS_CBSVALOR.Value            :=DM.TBNfseNFS_CBSVALOR.Value;
    QYNfseNFS_CHAVEACESSO.Clear;
    QYNfseNFS_CLIENTE.Value             :=DM.TBNfseNFS_CLIENTE.Value;
    QYNfseNFS_CODIGO.Clear;
    QYNfseNFS_CONDICAO.Value            :=DM.TBNfseNFS_CONDICAO.Value;
    QYNfseNFS_CONDICAOMEMO.Value        :=DM.TBNfseNFS_CONDICAOMEMO.Value;
    QYNfseNFS_CONSULTADA.Value          :='N';
    QYNfseNFS_CSTISS.Value              :=DM.TBNfseNFS_CSTISS.Value;
    QYNfseNFS_DIAPREFERENCIAL.Value     :=DM.TBNfseNFS_DIAPREFERENCIAL.Value;
    QYNfseNFS_DTATUALIZACAO.Value       :=DM.ServerDate;
    QYNfseNFS_DTCADASTRO.Value          :=DM.ServerDate;
    QYNfseNFS_DTEMISSAO.Value           :=DM.ServerDate;
    QYNfseNFS_FINALIDADE.Value          :=DM.TBNfseNFS_FINALIDADE.Value;
    QYNfseNFS_FORMAPAGTO.Value          :=DM.TBNfseNFS_FORMAPAGTO.Value;
    QYNfseNFS_GOVERNAMENTAL.Value       :=DM.TBNfseNFS_GOVERNAMENTAL.Value;
    QYNfseNFS_GOVERNAMENTALALIQRED.Value:=DM.TBNfseNFS_GOVERNAMENTALALIQRED.Value;
    QYNfseNFS_GOVERNAMENTALOP.Value     :=DM.TBNfseNFS_GOVERNAMENTALOP.Value;
    QYNfseNFS_HRATUALIZACAO.Value       :=DM.ServerTime;
    QYNfseNFS_HRCADASTRO.Value          :=DM.ServerTime;
    QYNfseNFS_IBSCREDPRES.Value         :=DM.TBNfseNFS_IBSCREDPRES.Value;
    QYNfseNFS_IBSCREDPRESSUS.Value      :=DM.TBNfseNFS_IBSCREDPRESSUS.Value;
    QYNfseNFS_IBSMONO.Value             :=DM.TBNfseNFS_IBSMONO.Value;
    QYNfseNFS_IBSMONORETENCAO.Value     :=DM.TBNfseNFS_IBSMONORETENCAO.Value;
    QYNfseNFS_IBSMONORETIDO.Value       :=DM.TBNfseNFS_IBSMONORETIDO.Value;
    QYNfseNFS_IBSMUNDEVOLUCAO.Value     :=DM.TBNfseNFS_IBSMUNDEVOLUCAO.Value;
    QYNfseNFS_IBSMUNDIFERIMENTO.Value   :=DM.TBNfseNFS_IBSMUNDIFERIMENTO.Value;
    QYNfseNFS_IBSMUNVALOR.Value         :=DM.TBNfseNFS_IBSMUNVALOR.Value;
    QYNfseNFS_IBSUFDEVOLUCAO.Value      :=DM.TBNfseNFS_IBSUFDEVOLUCAO.Value;
    QYNfseNFS_IBSUFDIFERIMENTO.Value    :=DM.TBNfseNFS_IBSUFDIFERIMENTO.Value;
    QYNfseNFS_IBSUFVALOR.Value          :=DM.TBNfseNFS_IBSUFVALOR.Value;
    QYNfseNFS_IDDPS.Clear;
    QYNfseNFS_INFOADICIONAIS.Value      :=DM.TBNfseNFS_INFOADICIONAIS.Value;
    QYNfseNFS_INTERMEDIARIOCPFCNPJ.Value:=DM.TBNfseNFS_INTERMEDIARIOCPFCNPJ.Value;
    QYNfseNFS_INTERMEDIARIOIM.Value     :=DM.TBNfseNFS_INTERMEDIARIOIM.Value;
    QYNfseNFS_INTERMEDIARIONOME.Value   :=DM.TBNfseNFS_INTERMEDIARIONOME.Value;
    QYNfseNFS_LINK.Clear;
    QYNfseNFS_LOTE.Clear; //associado no beforpost.
    QYNfseNFS_MOVIMENTAFINANCEIRO.Value :=DM.TBNfseNFS_MOVIMENTAFINANCEIRO.Value;
    QYNfseNFS_NUMERONOTA.Clear;
    QYNfseNFS_OBRAART.Value             :=DM.TBNfseNFS_OBRAART.Value;
    QYNfseNFS_OBRACODIGO.Value          :=DM.TBNfseNFS_OBRACODIGO.Value;
    QYNfseNFS_OBSERVACOES.Value         :=DM.TBNfseNFS_OBSERVACOES.Value;
    QYNfseNFS_PROTOCOLO.Clear;
    QYNfseNFS_PROTOCOLODH.Clear;
    QYNfseNFS_RECIBO.Clear;
    QYNfseNFS_RECIBODH.Clear;
    QYNfseNFS_RETENCAO.Value            :=DM.TBNfseNFS_RETENCAO.Value;
    QYNfseNFS_RETENCAORESP.Value        :=DM.TBNfseNFS_RETENCAORESP.Value;
    QYNfseNFS_SERIE.Value               :=DM.TBNfseNFS_SERIE.Value;
    QYNfseNFS_SIMPLESNACIONAL.Value     :=DM.TBNfseNFS_SIMPLESNACIONAL.Value;
    QYNfseNFS_STATUS.Value              :='A';
    QYNfseNFS_TOMBAIRRO.Value           :=DM.TBNfseNFS_TOMBAIRRO.Value;
    QYNfseNFS_TOMCEP.Value              :=DM.TBNfseNFS_TOMCEP.Value;
    QYNfseNFS_TOMCIDADE.Value           :=DM.TBNfseNFS_TOMCIDADE.Value;
    QYNfseNFS_TOMCIDADECODIGO.Value     :=DM.TBNfseNFS_TOMCIDADECODIGO.Value;
    QYNfseNFS_TOMCNPJ.Value             :=DM.TBNfseNFS_TOMCNPJ.Value;
    QYNfseNFS_TOMCOMPLEMENTO.Value      :=DM.TBNfseNFS_TOMCOMPLEMENTO.Value;
    QYNfseNFS_TOMCONTATO.Value          :=DM.TBNfseNFS_TOMCONTATO.Value;
    QYNfseNFS_TOMCPF.Value              :=DM.TBNfseNFS_TOMCPF.Value;
    QYNfseNFS_TOMEMAIL.Value            :=DM.TBNfseNFS_TOMEMAIL.Value;
    QYNfseNFS_TOMENDERECO.Value         :=DM.TBNfseNFS_TOMENDERECO.Value;
    QYNfseNFS_TOMESTADO.Value           :=DM.TBNfseNFS_TOMESTADO.Value;
    QYNfseNFS_TOMESTADOCODIGO.Value     :=DM.TBNfseNFS_TOMESTADOCODIGO.Value;
    QYNfseNFS_TOMFONE1.Value            :=DM.TBNfseNFS_TOMFONE1.Value;
    QYNfseNFS_TOMFONE2.Value            :=DM.TBNfseNFS_TOMFONE2.Value;
    QYNfseNFS_TOMIE.Value               :=DM.TBNfseNFS_TOMIE.Value;
    QYNfseNFS_TOMIM.Value               :=DM.TBNfseNFS_TOMIM.Value;
    QYNfseNFS_TOMNOME.Value             :=DM.TBNfseNFS_TOMNOME.Value;
    QYNfseNFS_TOMNUMERO.Value           :=DM.TBNfseNFS_TOMNUMERO.Value;
    QYNfseNFS_TOMPAIS.Value             :=DM.TBNfseNFS_TOMPAIS.Value;
    QYNfseNFS_TOMPAISCODIGO.Value       :=DM.TBNfseNFS_TOMPAISCODIGO.Value;
    QYNfseNFS_TOMSITE.Value             :=DM.TBNfseNFS_TOMSITE.Value;
    QYNfseNFS_TOMTIPOPESSOA.Value       :=DM.TBNfseNFS_TOMTIPOPESSOA.Value;
    QYNfseNFS_TOTALDEDUCOES.Value       :=DM.TBNfseNFS_TOTALDEDUCOES.Value;
    QYNfseNFS_TOTALDESCCOND.Value       :=DM.TBNfseNFS_TOTALDESCCOND.Value;
    QYNfseNFS_TOTALDESCINCOND.Value     :=DM.TBNfseNFS_TOTALDESCINCOND.Value;
    QYNfseNFS_TOTALIS.Value             :=DM.TBNfseNFS_TOTALIS.Value;
    QYNfseNFS_TOTALISS.Value            :=DM.TBNfseNFS_TOTALISS.Value;
    QYNfseNFS_TOTALSERVICOS.Value       :=DM.TBNfseNFS_TOTALSERVICOS.Value;
    QYNfseNFS_TOTALTRIBUTOS.Value       :=DM.TBNfseNFS_TOTALTRIBUTOS.Value;
    QYNfseNFS_TOTALTRIBUTOSEST.Value    :=DM.TBNfseNFS_TOTALTRIBUTOSEST.Value;
    QYNfseNFS_TOTALTRIBUTOSFED.Value    :=DM.TBNfseNFS_TOTALTRIBUTOSFED.Value;
    QYNfseNFS_TOTALTRIBUTOSIMP.Value    :=DM.TBNfseNFS_TOTALTRIBUTOSIMP.Value;
    QYNfseNFS_TOTALTRIBUTOSMUN.Value    :=DM.TBNfseNFS_TOTALTRIBUTOSMUN.Value;
    QYNfseNFS_USUARIO.Value             :=DM.UsuarioLogin;
    QYNfseNFS_VALORCOFINS.Value         :=DM.TBNfseNFS_VALORCOFINS.Value;
    QYNfseNFS_VALORCREDITO.Value        :=DM.TBNfseNFS_VALORCREDITO.Value;
    QYNfseNFS_VALORCSLL.Value           :=DM.TBNfseNFS_VALORCSLL.Value;
    QYNfseNFS_VALORINSS.Value           :=DM.TBNfseNFS_VALORINSS.Value;
    QYNfseNFS_VALORIR.Value             :=DM.TBNfseNFS_VALORIR.Value;
    QYNfseNFS_VALORISSRETIDO.Value      :=DM.TBNfseNFS_VALORISSRETIDO.Value;
    QYNfseNFS_VALORLIQUIDO.Value        :=DM.TBNfseNFS_VALORLIQUIDO.Value;
    QYNfseNFS_VALOROUTRASRET.Value      :=DM.TBNfseNFS_VALOROUTRASRET.Value;
    QYNfseNFS_VALORPIS.Value            :=DM.TBNfseNFS_VALORPIS.Value;
    QYNfseNFS_VALORTOTALRTC.Value       :=DM.TBNfseNFS_VALORTOTALRTC.Value;
    QYNfseNFS_VENDA.Clear;
    QYNfseNFS_VENDEDOR.Value            :=DM.UsuarioVendedor;
    {$ENDREGION}
    QYNfse.Post;
    NovoCodigo:=QYNfseNFS_CODIGO.Value;

    //ITENS.
    DM.TBNfseItens.First;
    while not DM.TBNfseItens.Eof do
    begin
      QYNfseItens.Insert;
      { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
      {$REGION 'DUPLICACAO_ITENS_PEDIDO'}
      QYNfseItensNSI_ALIQCBS.Value            :=DM.TBNfseItensNSI_ALIQCBS.Value;
      QYNfseItensNSI_ALIQCBSCREDPRES.Value    :=DM.TBNfseItensNSI_ALIQCBSCREDPRES.Value;
      QYNfseItensNSI_ALIQCBSDIF.Value         :=DM.TBNfseItensNSI_ALIQCBSDIF.Value;
      QYNfseItensNSI_ALIQCBSEFE.Value         :=DM.TBNfseItensNSI_ALIQCBSEFE.Value;
      QYNfseItensNSI_ALIQCBSRED.Value         :=DM.TBNfseItensNSI_ALIQCBSRED.Value;
      QYNfseItensNSI_ALIQIBSCREDPRES.Value    :=DM.TBNfseItensNSI_ALIQIBSCREDPRES.Value;
      QYNfseItensNSI_ALIQIBSMUN.Value         :=DM.TBNfseItensNSI_ALIQIBSMUN.Value;
      QYNfseItensNSI_ALIQIBSMUNDIF.Value      :=DM.TBNfseItensNSI_ALIQIBSMUNDIF.Value;
      QYNfseItensNSI_ALIQIBSMUNEFE.Value      :=DM.TBNfseItensNSI_ALIQIBSMUNEFE.Value;
      QYNfseItensNSI_ALIQIBSMUNRED.Value      :=DM.TBNfseItensNSI_ALIQIBSMUNRED.Value;
      QYNfseItensNSI_ALIQIBSUF.Value          :=DM.TBNfseItensNSI_ALIQIBSUF.Value;
      QYNfseItensNSI_ALIQIBSUFDIF.Value       :=DM.TBNfseItensNSI_ALIQIBSUFDIF.Value;
      QYNfseItensNSI_ALIQIBSUFEFE.Value       :=DM.TBNfseItensNSI_ALIQIBSUFEFE.Value;
      QYNfseItensNSI_ALIQIBSUFRED.Value       :=DM.TBNfseItensNSI_ALIQIBSUFRED.Value;
      QYNfseItensNSI_ALIQIS.Value             :=DM.TBNfseItensNSI_ALIQIS.Value;
      QYNfseItensNSI_ALIQISESP.Value          :=DM.TBNfseItensNSI_ALIQISESP.Value;
      QYNfseItensNSI_ALIQUOTA.Value           :=DM.TBNfseItensNSI_ALIQUOTA.Value;
      QYNfseItensNSI_BASEIBSCBS.Value         :=DM.TBNfseItensNSI_BASEIBSCBS.Value;
      QYNfseItensNSI_BASEIS.Value             :=DM.TBNfseItensNSI_BASEIS.Value;
      QYNfseItensNSI_BASEISS.Value            :=DM.TBNfseItensNSI_BASEISS.Value;
      QYNfseItensNSI_CBSCREDITOPRES.Value     :=DM.TBNfseItensNSI_CBSCREDITOPRES.Value;
      QYNfseItensNSI_CIDADE.Value             :=DM.TBNfseItensNSI_CIDADE.Value;
      QYNfseItensNSI_CIDADECODIGO.Value       :=DM.TBNfseItensNSI_CIDADECODIGO.Value;
      QYNfseItensNSI_CLASSTRIBIBSCBS.Value    :=DM.TBNfseItensNSI_CLASSTRIBIBSCBS.Value;
      QYNfseItensNSI_CLASSTRIBIS.Value        :=DM.TBNfseItensNSI_CLASSTRIBIS.Value;
      QYNfseItensNSI_CODIGO.Clear;
      QYNfseItensNSI_CSTIBSCBS.Value          :=DM.TBNfseItensNSI_CSTIBSCBS.Value;
      QYNfseItensNSI_CSTIS.Value              :=DM.TBNfseItensNSI_CSTIS.Value;
      QYNfseItensNSI_DESCRICAO.Value          :=DM.TBNfseItensNSI_DESCRICAO.Value;
      QYNfseItensNSI_IBSCREDITOPRES.Value     :=DM.TBNfseItensNSI_IBSCREDITOPRES.Value;
      QYNfseItensNSI_NBS.Value                :=DM.TBNfseItensNSI_NBS.Value;
      QYNfseItensNSI_NFSE.Value               :=NovoCodigo;
      QYNfseItensNSI_PAIS.Value               :=DM.TBNfseItensNSI_PAIS.Value;
      QYNfseItensNSI_PRESTADONOPAIS.Value     :=DM.TBNfseItensNSI_PRESTADONOPAIS.Value;
      QYNfseItensNSI_PRODUTO.Value            :=DM.TBNfseItensNSI_PRODUTO.Value;
      QYNfseItensNSI_QUANTIDADE.Value         :=DM.TBNfseItensNSI_QUANTIDADE.Value;
      QYNfseItensNSI_SERVICO.Value            :=DM.TBNfseItensNSI_SERVICO.Value;
      QYNfseItensNSI_VALORCBS.Value           :=DM.TBNfseItensNSI_VALORCBS.Value;
      QYNfseItensNSI_VALORCBSCREDPRES.Value   :=DM.TBNfseItensNSI_VALORCBSCREDPRES.Value;
      QYNfseItensNSI_VALORCBSCREDPRESSUS.Value:=DM.TBNfseItensNSI_VALORCBSCREDPRESSUS.Value;
      QYNfseItensNSI_VALORCBSDEV.Value        :=DM.TBNfseItensNSI_VALORCBSDEV.Value;
      QYNfseItensNSI_VALORCBSDIF.Value        :=DM.TBNfseItensNSI_VALORCBSDIF.Value;
      QYNfseItensNSI_VALORDEDUCOES.Value      :=DM.TBNfseItensNSI_VALORDEDUCOES.Value;
      QYNfseItensNSI_VALORDESCCOND.Value      :=DM.TBNfseItensNSI_VALORDESCCOND.Value;
      QYNfseItensNSI_VALORDESCINCOND.Value    :=DM.TBNfseItensNSI_VALORDESCINCOND.Value;
      QYNfseItensNSI_VALORIBS.Value           :=DM.TBNfseItensNSI_VALORIBS.Value;
      QYNfseItensNSI_VALORIBSCREDPRES.Value   :=DM.TBNfseItensNSI_VALORIBSCREDPRES.Value;
      QYNfseItensNSI_VALORIBSCREDPRESSUS.Value:=DM.TBNfseItensNSI_VALORIBSCREDPRESSUS.Value;
      QYNfseItensNSI_VALORIBSMUN.Value        :=DM.TBNfseItensNSI_VALORIBSMUN.Value;
      QYNfseItensNSI_VALORIBSMUNDEV.Value     :=DM.TBNfseItensNSI_VALORIBSMUNDEV.Value;
      QYNfseItensNSI_VALORIBSMUNDIF.Value     :=DM.TBNfseItensNSI_VALORIBSMUNDIF.Value;
      QYNfseItensNSI_VALORIBSUF.Value         :=DM.TBNfseItensNSI_VALORIBSUF.Value;
      QYNfseItensNSI_VALORIBSUFDEV.Value      :=DM.TBNfseItensNSI_VALORIBSUFDEV.Value;
      QYNfseItensNSI_VALORIBSUFDIF.Value      :=DM.TBNfseItensNSI_VALORIBSUFDIF.Value;
      QYNfseItensNSI_VALORIS.Value            :=DM.TBNfseItensNSI_VALORIS.Value;
      QYNfseItensNSI_VALORISS.Value           :=DM.TBNfseItensNSI_VALORISS.Value;
      QYNfseItensNSI_VALORTOTAL.Value         :=DM.TBNfseItensNSI_VALORTOTAL.Value;
      QYNfseItensNSI_VALORTRIBUTOS.Value      :=DM.TBNfseItensNSI_VALORTRIBUTOS.Value;
      QYNfseItensNSI_VALORTRIBUTOSEST.Value   :=DM.TBNfseItensNSI_VALORTRIBUTOSEST.Value;
      QYNfseItensNSI_VALORTRIBUTOSFED.Value   :=DM.TBNfseItensNSI_VALORTRIBUTOSFED.Value;
      QYNfseItensNSI_VALORTRIBUTOSIMP.Value   :=DM.TBNfseItensNSI_VALORTRIBUTOSIMP.Value;
      QYNfseItensNSI_VALORTRIBUTOSMUN.Value   :=DM.TBNfseItensNSI_VALORTRIBUTOSMUN.Value;
      QYNfseItensNSI_VALORUNIT.Value          :=DM.TBNfseItensNSI_VALORUNIT.Value;
      {$ENDREGION}
      QYNfseItens.Post;
      DM.TBNfseItens.Next;
    end;
    //localiza a nova venda e calcula os totais.
    DM.TBNfse.Close;
    DM.TBNfse.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBNfse.Open;
    DM.CalcularTotaisNFSe(True);
    //...
    DM.TBNfseItens.EnableControls;
    DM.TBNfse.EnableControls;
    QYNfse.Close;
    QYNfseItens.Close;

    DM.TBNfseItens.Close;
    DM.TBNfse.Close;
    DM.TBNfse.ParamByName('codigo').AsInteger:=NovoCodigo;
    DM.TBNfse.Open;
    DM.TBNfseItens.Open;

    Screen.Cursor:=crDefault;
    MessageDlg('Nota de serviço duplicada com sucesso! Código: '+IntToStr(NovoCodigo),mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfse.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormNfse.ChecarResposta(aMetodo: TMetodo);
var I: Integer;

  {$REGION 'Procedure lista de erros'}
  procedure ListaDeErros(aErros: TNFSeEventoCollection);
  var I: Integer;
  begin
    if aErros.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Erro(s):');
      for I := 0 to aErros.Count -1 do
      begin
        Memo1.Lines.Add('Código.....: ' + aErros[I].Codigo);
        Memo1.Lines.Add('Mensagem...: ' + aErros[I].Descricao);
        Memo1.Lines.Add('Correção...: ' + aErros[I].Correcao);
        Memo1.Lines.Add('----------------------------------------------------------------------------');
      end;
    end;
  end;
  {$ENDREGION}

  {$REGION 'Procedure lista de alertas'}
  procedure ListaDeAlertas(aAlertas: TNFSeEventoCollection);
  var I: Integer;
  begin
    if aAlertas.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Alerta(s):');
      for I:=0 to aAlertas.Count -1 do
      begin
        Memo1.Lines.Add('Código.....: ' + aAlertas[I].Codigo);
        Memo1.Lines.Add('Mensagem...: ' + aAlertas[I].Descricao);
        Memo1.Lines.Add('Correção...: ' + aAlertas[I].Correcao);
        Memo1.Lines.Add('----------------------------------------------------------------------------');
      end;
    end;
  end;
  {$ENDREGION}

  {$REGION 'Procedure lista de resumos'}
  procedure ListaDeResumos(aResumos: TNFSeResumoCollection; aMetodo: TMetodo);
  var I: Integer;
  begin
    if aResumos.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Resumo(s):');
      for I:=0 to aResumos.Count -1 do
      begin
        case aMetodo of
          tmConsultarEvento:
            begin
              Memo1.Lines.Add('Chave DFe: ' + aResumos[I].ChaveDFe);
              Memo1.Lines.Add('Tipo Doc.: ' + aResumos[I].TipoDoc);
            end;

          tmConsultarDFe:
            begin
              Memo1.Lines.Add('NSU......: ' + IntToStr(aResumos[I].NSU));
              Memo1.Lines.Add('Chave DFe: ' + aResumos[I].ChaveDFe);
              Memo1.Lines.Add('Tipo Doc.: ' + aResumos[I].TipoDoc);

              if aResumos[i].TipoDoc <> 'NFSE' then
              begin
                Memo1.Lines.Add('nSeqEvento.: ' + IntToStr(aResumos[i].nSeqEvento));
                Memo1.Lines.Add('Data.......: ' + DateToStr(aResumos[i].Data));
                Memo1.Lines.Add('idEvento...: ' + aResumos[i].idEvento);
                Memo1.Lines.Add('idNota.....: ' + aResumos[i].idNota);
                Memo1.Lines.Add('tpEvento...: ' + ACBrNFSeXConversao.tpEventoToStr(aResumos[i].tpEvento));
              end;
            end;
        else
          begin
            Memo1.Lines.Add('Numero da Nota....: ' + aResumos[I].NumeroNota);
            Memo1.Lines.Add('Código Verificação: ' + aResumos[I].CodigoVerificacao);
            Memo1.Lines.Add('Numero do Rps.....: ' + aResumos[I].NumeroRps);
            Memo1.Lines.Add('Série do Rps......: ' + aResumos[I].SerieRps);

            Memo1.Lines.Add('Série da Nota     : ' + aResumos[i].SerieNota);
            Memo1.Lines.Add('Id da Nota        : ' + aResumos[i].idNota);
            Memo1.Lines.Add('Id da Rps         : ' + aResumos[i].idRps);
            Memo1.Lines.Add('Data              : ' + DateTimeToStr(aResumos[i].Data));
            Memo1.Lines.Add('Link              : ' + aResumos[i].Link);
            Memo1.Lines.Add('Protocolo         : ' + aResumos[i].Protocolo);
            Memo1.Lines.Add('Situação          : ' + aResumos[i].Situacao);
            Memo1.Lines.Add('Desc. da Situação : ' + aResumos[i].DescSituacao);
          end;
        end;
        Memo1.Lines.Add('----------------------------------------------------------------------------');
      end;
    end;
  end;
 {$ENDREGION}
begin
  //Memo1.Lines.Add('------------------------------');
  //Memo1.Lines.Add('Versão OpenSSL');
  //Memo1.Lines.Add( OpenSSLExt.OpenSSLVersion(0) );
  //Memo1.Lines.Add( OpenSSLExt.OpenSSLFullVersion );
  //Memo1.Lines.Add( OpenSSLExt.SSLUtilFile );
  //Memo1.Lines.Add( OpenSSLExt.SSLLibFile );
  //Memo1.Lines.Add('------------------------------');
  Memo1.Lines.Add('Ambiente.: ' + TpAmbToStr(ACBrNFSeX1.Configuracoes.WebServices.Ambiente));
  Memo1.Lines.Add('Cidade...: ' + ACBrNFSeX1.Configuracoes.Geral.xMunicipio + '/' + ACBrNFSeX1.Configuracoes.Geral.xUF);
  Memo1.Lines.Add('Provedor.: ' + ACBrNFSeX1.Configuracoes.Geral.xProvedor + ' Versão: ' + VersaoNFSeToStr(ACBrNFSeX1.Configuracoes.Geral.Versao));
  Memo1.Lines.Add('Data/Hora: ' + DateTimeToStr(Now));
  Memo1.Lines.Add('');

  case aMetodo of
    {$REGION 'tmRecepcionar, tmTeste'}
    tmRecepcionar, tmTeste:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + ModoEnvioToStr(ACBrNFSeX1.WebService.Emite.ModoEnvio));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Numero do Lote: ' + ACBrNFSeX1.WebService.Emite.NumeroLote);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Data de Envio......: ' + DateToStr(ACBrNFSeX1.WebService.Emite.Data));
        Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.Emite.Protocolo);
        Memo1.Lines.Add('Numero da Nota.....: ' + ACBrNFSeX1.WebService.Emite.NumeroNota);
        //Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.Emite.Link);   ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Link
        Memo1.Lines.Add('Código Verificação.: ' + ACBrNFSeX1.WebService.Emite.CodigoVerificacao);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.Emite.Sucesso, True));
        Memo1.Lines.Add('');
        LoadXML(ACBrNFSeX1.WebService.Emite.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.Emite.XmlRetorno, WBXmlRetorno, 'temp2.xml');
        ListaDeErros(ACBrNFSeX1.WebService.Emite.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.Emite.Alertas);

        if ACBrNFSeX1.Configuracoes.Geral.ConsultaLoteAposEnvio and
          (ACBrNFSeX1.WebService.Emite.Erros.Count = 0) and
          ((ACBrNFSeX1.WebService.Emite.Protocolo <> '') or (ACBrNFSeX1.WebService.Emite.NumeroLote <> '')) then
        begin
          if ACBrNFSeX1.Provider.ConfigGeral.ConsultaSitLote then
          begin
            Memo1.Lines.Add('============================================================================');
            Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarSituacao));
            Memo1.Lines.Add('============================================================================');
            Memo1.Lines.Add('--- Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.ConsultaSituacao.Protocolo);
            Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.ConsultaSituacao.NumeroLote);
            Memo1.Lines.Add('--- Parâmetros de Retorno');
            Memo1.Lines.Add('Situação Lote......: ' + ACBrNFSeX1.WebService.ConsultaSituacao.Situacao);
            Memo1.Lines.Add('Descrição Situação.: ' + ACBrNFSeX1.WebService.ConsultaSituacao.DescSituacao);
            Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaSituacao.Sucesso, True));
            Memo1.Lines.Add('');

            LoadXML(ACBrNFSeX1.WebService.ConsultaSituacao.XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
            LoadXML(ACBrNFSeX1.WebService.ConsultaSituacao.XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

            ListaDeErros(ACBrNFSeX1.WebService.ConsultaSituacao.Erros);
            ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaSituacao.Alertas);
          end;

          if ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote and (ACBrNFSeX1.WebService.ConsultaSituacao.Erros.Count = 0) then
          //if ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote then
          begin
            Memo1.Lines.Add('============================================================================');
            Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarLote));
            Memo1.Lines.Add('============================================================================');
            Memo1.Lines.Add('--- Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.Protocolo);
            Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.NumeroLote);
            Memo1.Lines.Add('--- Parâmetros de Retorno');
            Memo1.Lines.Add('Situação Lote......: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.Situacao);
            Memo1.Lines.Add('ID Nota............: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.idNota);
            Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaLoteRps.Sucesso, True));
            Memo1.Lines.Add('');

            ListaDeResumos(ACBrNFSeX1.WebService.ConsultaLoteRps.Resumos, tmConsultarLote);

            LoadXML(ACBrNFSeX1.WebService.ConsultaLoteRps.XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
            LoadXML(ACBrNFSeX1.WebService.ConsultaLoteRps.XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

            ListaDeErros(ACBrNFSeX1.WebService.ConsultaLoteRps.Erros);
            ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaLoteRps.Alertas);
          end;
        end;
      end;
    {$ENDREGION}

    {$REGION 'tmRecepcionarSincrono, tmGerar'}
    tmRecepcionarSincrono, tmGerar:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + ModoEnvioToStr(ACBrNFSeX1.WebService.Emite.ModoEnvio));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.Emite.NumeroLote);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Data de Envio......: ' + DateToStr(ACBrNFSeX1.WebService.Emite.Data));
        Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.Emite.Protocolo);
        Memo1.Lines.Add('Numero da Nota.....: ' + ACBrNFSeX1.WebService.Emite.NumeroNota);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.Emite.Link);
        Memo1.Lines.Add('Código Verificação.: ' + ACBrNFSeX1.WebService.Emite.CodigoVerificacao);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.Emite.Sucesso, True));
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.Emite.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.Emite.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.Emite.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.Emite.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarSituacao'}
    tmConsultarSituacao:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarSituacao));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.ConsultaSituacao.Protocolo);
        Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.ConsultaSituacao.NumeroLote);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Situação Lote......: ' + ACBrNFSeX1.WebService.ConsultaSituacao.Situacao);
        Memo1.Lines.Add('Descrição Situação.: ' + ACBrNFSeX1.WebService.ConsultaSituacao.DescSituacao);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaSituacao.Sucesso, True));
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.ConsultaSituacao.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaSituacao.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaSituacao.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaSituacao.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarLote'}
    tmConsultarLote:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarLote));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.Protocolo);
        Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.NumeroLote);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Situação Lote......: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.Situacao);
        Memo1.Lines.Add('ID Nota............: ' + ACBrNFSeX1.WebService.ConsultaLoteRps.idNota);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaLoteRps.Sucesso, True));
        Memo1.Lines.Add('');

        ListaDeResumos(ACBrNFSeX1.WebService.ConsultaLoteRps.Resumos, tmConsultarLote);

        LoadXML(ACBrNFSeX1.WebService.ConsultaLoteRps.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaLoteRps.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaLoteRps.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaLoteRps.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarNFSeporRps'}
    tmConsultarNFSePorRps:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarNFSePorRps));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio ---');
        Memo1.Lines.Add('Numero do RPS......: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.NumeroRps);
        Memo1.Lines.Add('Série do RPS.......: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.SerieRps);
        Memo1.Lines.Add('--- Parâmetros de Retorno ---');
        Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.NumeroLote);
        Memo1.Lines.Add('Numero do Protocolo: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.Protocolo);
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.Situacao);
        Memo1.Lines.Add('Data...............: ' + DateToStr(ACBrNFSeX1.WebService.ConsultaNFSeporRps.Data));
        Memo1.Lines.Add('Descrição Situação.: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.DescSituacao);
        Memo1.Lines.Add('ID Nota............: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.idNota);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.ConsultaNFSeporRps.Link);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaNFSeporRps.Sucesso, True));
        //Memo1.Lines.Add('');
        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSeporRps.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSeporRps.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaNFSeporRps.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaNFSeporRps.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarNFSe, tmConsultarNFSePorFaixa, tmConsultarNFSeServicoPrestado, tmConsultarNFSeServicoTomado'}
    tmConsultarNFSe, tmConsultarNFSePorFaixa, tmConsultarNFSeServicoPrestado, tmConsultarNFSeServicoTomado:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Metodo));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Num. Inicial NFSe..: ' + ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroIniNFSe);
        Memo1.Lines.Add('Num. Final NFSe....: ' + ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroFinNFSe);
        Memo1.Lines.Add('Data Inicial.......: ' + DateToStr(ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataInicial));
        Memo1.Lines.Add('Data Final.........: ' + DateToStr(ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.DataFinal));
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Sucesso, True));

        if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proPrescon] then
        Memo1.Lines.Add('Número NFSe........: ' + ACBrNFSeX1.WebService.ConsultaNFSe.NumeroNota);
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaNFSe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaNFSe.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarNFSePorChave'}
    tmConsultarNFSePorChave:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Metodo));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio ---');
        Memo1.Lines.Add('Chave da NFSe......: ' + ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.ChaveNFSe);
        Memo1.Lines.Add('--- Parâmetros de Retorno ---');
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Sucesso, True));

        if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proPrescon] then
        Memo1.Lines.Add('Número NFSe........: ' + ACBrNFSeX1.WebService.ConsultaNFSe.NumeroNota);
        //Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaNFSe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaNFSe.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarLinkNFSe'}
    tmConsultarLinkNFSe:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarLinkNFSe));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Competência........: ' + DateToStr(ACBrNFSeX1.WebService.ConsultaLinkNFSe.InfConsultaLinkNFSe.Competencia));
        Memo1.Lines.Add('Número da NFSe.....: ' + ACBrNFSeX1.WebService.ConsultaLinkNFSe.InfConsultaLinkNFSe.NumeroNFSe);
        Memo1.Lines.Add('Série da NFSe......: ' + ACBrNFSeX1.WebService.ConsultaLinkNFSe.InfConsultaLinkNFSe.SerieNFSe);
        Memo1.Lines.Add('Número do RPS......: ' + IntToStr(ACBrNFSeX1.WebService.ConsultaLinkNFSe.InfConsultaLinkNFSe.NumeroRps));
        Memo1.Lines.Add('Série do RPS.......: ' + ACBrNFSeX1.WebService.ConsultaLinkNFSe.InfConsultaLinkNFSe.SerieRps);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.ConsultaLinkNFSe.Situacao);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.ConsultaLinkNFSe.Link);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaLinkNFSe.Sucesso, True));
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.ConsultaLinkNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultaLinkNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultaLinkNFSe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaLinkNFSe.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmCancelarNFSe'}
    tmCancelarNFSe:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmCancelarNFSe));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Número da NFSe.....: ' + ACBrNFSeX1.WebService.CancelaNFSe.InfCancelamento.NumeroNFSe);
        Memo1.Lines.Add('Série da NFSe......: ' + ACBrNFSeX1.WebService.CancelaNFSe.InfCancelamento.SerieNFSe);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.CancelaNFSe.Situacao);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.CancelaNFSe.Link);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.CancelaNFSe.Sucesso, True));
        Memo1.Lines.Add('--- Retorno do Pedido de Cancelamento');
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.Situacao);
        Memo1.Lines.Add('Data/Hora..........: ' + DateTimeToStr(ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.DataHora));
        Memo1.Lines.Add('Mensagem...........: ' + ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.MsgCanc);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.Link);
        Memo1.Lines.Add('Sucesso............: ' + ACBrNFSeX1.WebService.CancelaNFSe.RetCancelamento.Sucesso);
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.CancelaNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.CancelaNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.CancelaNFSe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.CancelaNFSe.Alertas);

        if ACBrNFSeX1.Configuracoes.Geral.ConsultaAposCancelar and ACBrNFSeX1.Provider.ConfigGeral.ConsultaNFSe then
        begin
          Memo1.Lines.Add('============================================================================');
          Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Metodo));
          Memo1.Lines.Add('============================================================================');
          Memo1.Lines.Add('--- Parâmetros de Envio');
          Memo1.Lines.Add('Num. Inicial NFSe..: ' + ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroIniNFSe);
          Memo1.Lines.Add('Num. Final NFSe....: ' + ACBrNFSeX1.WebService.ConsultaNFSe.InfConsultaNFSe.NumeroFinNFSe);
          Memo1.Lines.Add('--- Parâmetros de Retorno');
          Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultaNFSe.Sucesso, True));
          Memo1.Lines.Add('');

          LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
          LoadXML(ACBrNFSeX1.WebService.ConsultaNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

          ListaDeErros(ACBrNFSeX1.WebService.ConsultaNFSe.Erros);
          ListaDeAlertas(ACBrNFSeX1.WebService.ConsultaNFSe.Alertas);
        end;
      end;
    {$ENDREGION}

    {$REGION 'tmSubstituirNFSe'}
    tmSubstituirNFSe:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmSubstituirNFSe));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Número da NFSe.....: ' + ACBrNFSeX1.WebService.SubstituiNFSe.InfCancelamento.NumeroNFSe);
        Memo1.Lines.Add('Série da NFSe......: ' + ACBrNFSeX1.WebService.SubstituiNFSe.InfCancelamento.SerieNFSe);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.SubstituiNFSe.Situacao);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.SubstituiNFSe.Link);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.SubstituiNFSe.Sucesso, True));
        Memo1.Lines.Add('Numero da NFSe Substituida..: ' + ACBrNFSeX1.WebService.SubstituiNFSe.NumNotaSubstituida);
        Memo1.Lines.Add('Numero da NFSe Substituidora: ' + ACBrNFSeX1.WebService.SubstituiNFSe.NumNotaSubstituidora);
        Memo1.Lines.Add('--- Retorno do Pedido de Cancelamento');
        Memo1.Lines.Add('Situação...........: ' + ACBrNFSeX1.WebService.SubstituiNFSe.RetCancelamento.Situacao);
        Memo1.Lines.Add('Data/Hora..........: ' + DateToStr(ACBrNFSeX1.WebService.SubstituiNFSe.RetCancelamento.DataHora));
        Memo1.Lines.Add('Mensagem...........: ' + ACBrNFSeX1.WebService.SubstituiNFSe.RetCancelamento.MsgCanc);
        Memo1.Lines.Add('Link...............: ' + ACBrNFSeX1.WebService.SubstituiNFSe.RetCancelamento.Link);
        Memo1.Lines.Add('Sucesso............: ' + ACBrNFSeX1.WebService.SubstituiNFSe.RetCancelamento.Sucesso);
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.SubstituiNFSe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.SubstituiNFSe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.SubstituiNFSe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.SubstituiNFSe.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmGerarLote'}
    tmGerarLote:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + ModoEnvioToStr(ACBrNFSeX1.WebService.Gerar.ModoEnvio));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('-- Parâmetros de Envio');
        Memo1.Lines.Add('Numero do Lote.....: ' + ACBrNFSeX1.WebService.Gerar.NumeroLote);
        Memo1.Lines.Add('-- Parâmetros de Retorno');
        Memo1.Lines.Add('Nome Arquivo.......: ' + ACBrNFSeX1.WebService.Gerar.NomeArq);
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.Gerar.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.Gerar.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.Gerar.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.Gerar.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmGerarToken'}
    tmGerarToken:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmGerarToken));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('-- Parâmetros de Envio');
        Memo1.Lines.Add('-- Parâmetros de Retorno');
        Memo1.Lines.Add('Token..............: ' + ACBrNFSeX1.WebService.GerarToken.Token);
        Memo1.Lines.Add('Data Expiração.....: ' + DateTimeToStr(ACBrNFSeX1.WebService.GerarToken.DataExpiracao));
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.GerarToken.Sucesso, True));
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.GerarToken.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.GerarToken.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.GerarToken.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.GerarToken.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmAbrirSessao'}
    tmAbrirSessao:
      begin
      end;
    {$ENDREGION}

    {$REGION 'tmFecharsessao'}
    tmFecharSessao:
      begin
      end;
    {$ENDREGION}

    {$REGION 'tmEnviarEvento'}
    tmEnviarEvento:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmEnviarEvento));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Chave NFSe.........: ' + ACBrNFSeX1.WebService.EnviarEvento.InfEvento.pedRegEvento.chNFSe);
        Memo1.Lines.Add('Evento.............: ' + tpEventoToDesc(ACBrNFSeX1.WebService.EnviarEvento.InfEvento.pedRegEvento.tpEvento));
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Chave NFSe.........: ' + ACBrNFSeX1.WebService.EnviarEvento.idNota);
        Memo1.Lines.Add('Data...............: ' + DateToStr(ACBrNFSeX1.WebService.EnviarEvento.Data));
        Memo1.Lines.Add('Tipo Evento........: ' + tpEventoToDesc(ACBrNFSeX1.WebService.EnviarEvento.tpEvento));
        Memo1.Lines.Add('Num. Seq. Evento...: ' + IntToStr(ACBrNFSeX1.WebService.EnviarEvento.nSeqEvento));
        Memo1.Lines.Add('ID do Evento.......: ' + ACBrNFSeX1.WebService.EnviarEvento.idEvento);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.EnviarEvento.Sucesso, True));
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.EnviarEvento.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.EnviarEvento.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.EnviarEvento.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.EnviarEvento.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarEvento'}
    tmConsultarEvento:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarEvento));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Chave NFSe.........: ' + ACBrNFSeX1.WebService.ConsultarEvento.ChaveNFSe);
        Memo1.Lines.Add('Evento.............: ' + tpEventoToDesc(ACBrNFSeX1.WebService.ConsultarEvento.tpEvento));
        Memo1.Lines.Add('Num. Seq. Evento...: ' + IntToStr(ACBrNFSeX1.WebService.ConsultarEvento.nSeqEvento));
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Chave NFSe.........: ' + ACBrNFSeX1.WebService.ConsultarEvento.idNota);
        Memo1.Lines.Add('Data...............: ' + DateToStr(ACBrNFSeX1.WebService.ConsultarEvento.Data));
        Memo1.Lines.Add('Tipo Evento .......: ' + tpEventoToDesc(ACBrNFSeX1.WebService.ConsultarEvento.tpEvento));
        Memo1.Lines.Add('Num. Seq. Evento...: ' + IntToStr(ACBrNFSeX1.WebService.ConsultarEvento.nSeqEvento));
        Memo1.Lines.Add('ID do Evento.......: ' + ACBrNFSeX1.WebService.ConsultarEvento.idEvento);
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultarEvento.Sucesso, True));
        Memo1.Lines.Add('');

        ListaDeResumos(ACBrNFSeX1.WebService.ConsultarEvento.Resumos, tmConsultarEvento);

        LoadXML(ACBrNFSeX1.WebService.ConsultarEvento.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultarEvento.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultarEvento.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultarEvento.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarDFe'}
    tmConsultarDFe:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarDFe));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Chave NFSe.........: ' + ACBrNFSeX1.WebService.ConsultarDFe.ChaveNFSe);
        Memo1.Lines.Add('Num. Seq. Unico....: ' + IntToStr(ACBrNFSeX1.WebService.ConsultarDFe.NSU));
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Data...............: ' + DateToStr(ACBrNFSeX1.WebService.ConsultarDFe.Data));
        Memo1.Lines.Add('Sucesso"...........: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultarDFe.Sucesso, True));
        Memo1.Lines.Add('');

        ListaDeResumos(ACBrNFSeX1.WebService.ConsultarDFe.Resumos, tmConsultarDFe);

        LoadXML(ACBrNFSeX1.WebService.ConsultarDFe.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultarDFe.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultarDFe.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultarDFe.Alertas);
      end;
    {$ENDREGION}

    {$REGION 'tmConsultarParam'}
    tmConsultarParam:
      begin
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('Método Executado...: ' + MetodoToStr(tmConsultarParam));
        Memo1.Lines.Add('============================================================================');
        Memo1.Lines.Add('--- Parâmetros de Envio');
        Memo1.Lines.Add('Tipo Parâmetro.....: ' + ParamMunicToStr(ACBrNFSeX1.WebService.ConsultarParam.tpParamMunic));
        Memo1.Lines.Add('Código Municipío...: ' + IntToStr(ACBrNFSeX1.WebService.ConsultarParam.CodigoMunicipio));
        Memo1.Lines.Add('Código Serviço.....: ' + ACBrNFSeX1.WebService.ConsultarParam.CodigoServico);
        Memo1.Lines.Add('Competência........: ' + DateToStr(ACBrNFSeX1.WebService.ConsultarParam.Competencia));
        Memo1.Lines.Add('Numero Beneficio...: ' + ACBrNFSeX1.WebService.ConsultarParam.NumeroBeneficio);
        Memo1.Lines.Add('--- Parâmetros de Retorno');
        Memo1.Lines.Add('Data...............: ' + DateTimeToStr(ACBrNFSeX1.WebService.ConsultarParam.Data));
        Memo1.Lines.Add('Sucesso............: ' + BoolToStr(ACBrNFSeX1.WebService.ConsultarParam.Sucesso, True));

        if ACBrNFSeX1.WebService.ConsultarParam.Parametros.Count > 0 then
        begin
          Memo1.Lines.Add('Parâmetros(s).....:');
          for I := 0 to ACBrNFSeX1.WebService.ConsultarParam.Parametros.Count -1 do
          begin
            Memo1.Lines.Add(ACBrNFSeX1.WebService.ConsultarParam.Parametros[I]);
          end;
        end;
        Memo1.Lines.Add('');

        LoadXML(ACBrNFSeX1.WebService.ConsultarParam.XmlEnvio, WBXmlEnvio, 'temp1.xml');
        LoadXML(ACBrNFSeX1.WebService.ConsultarParam.XmlRetorno, WBXmlRetorno, 'temp2.xml');

        ListaDeErros(ACBrNFSeX1.WebService.ConsultarParam.Erros);
        ListaDeAlertas(ACBrNFSeX1.WebService.ConsultarParam.Alertas);
      end;
    {$ENDREGION}
  end;
end;

procedure TFormNfse.EnviarNFSe1Click(Sender: TObject);
var A,M,D: Word;
  Link, NumeroNota, Pasta, Arquivo: String;
  F: TextFile;
  XML: WideString;
begin
  {$REGION 'CHECAGENS INICIAIS'}
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseItens.IsEmpty,'Esta NFSe não contém itens.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','NFSe já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='I','NFSe já inutilizada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','NFSe já autorizada para uso. Impossível realizar novo envio.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');
  {$ENDREGION}

  Screen.Cursor:=crHourGlass;
  Memo1.Lines.Clear;
  Memo1.Lines.Add('Enviar NFSe...');
  PageControl1.ActivePageIndex:=4;
  PageControl2.ActivePageIndex:=0;

  ConfigurarComponenteACBrNFSeX;

  ACBrNFSeX1.NotasFiscais.Clear;
  //Alimentar_Componente_layout_ABRASF('81','81');
  AlimentarComponenteACBrNFSeX;
  //AlimentarComponenteACBrNFSeX_RTC;

  //ACBrNFSe1.Enviar(DM.TBNfseNFS_LOTE.Value); //para versao 1.0 da betha.
  //ACBrNFSe1.Gerar(DM.TBNfseNFS_CODIGO.Value); //para versao 2.02 da betha.
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_LOTE.Value.ToString,meAutomatico,False);
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_CODIGO.Value.ToString,meUnitario,False);  //dá não implementado no provedor betha 1.00.
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_CODIGO.Value.ToString,meAutomatico,False);
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_CODIGO.Value.ToString,meLoteSincrono,False); //deve ser com numero do lote.
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_CODIGO.Value.ToString,meLoteAssincrono,false);
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_CODIGO.Value.ToString);
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_LOTE.Value.ToString,meLoteSincrono,False); //deve ser com numero do lote.
  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_LOTE.Value.ToString);
  //ACBrNFSeX1.Emitir('81');

  //Salva o xml que será enviado.
  XML:=ACBrNFSeX1.NotasFiscais.Items[0].GerarXML;
  Arquivo:=AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-dps.xml';
  AssignFile(F,Pasta+Arquivo);
  Rewrite(F);
  Write(F,XML);
  CloseFile(F);

  //ACBrNFSeX1.Emitir(DM.TBNfseNFS_LOTE.Value.ToString,meAutomatico,False);
  ACBrNFSeX1.Emitir(DM.TBNfseNFS_LOTE.Value.ToString,meUnitario,False); // No caso do Padrão Nacional o envio é sempre unitário

  Screen.Cursor:=crDefault;

  //ChecarResposta(tmRecepcionar);
  ChecarResposta(tmGerar);
  //ChecarResposta(tmRecepcionarSincrono);

  if ACBrNFSeX1.WebService.Emite.Protocolo<>'' then
  begin
    DM.TBNfse.Edit;
    DM.TBNfseNFS_RECIBO.Value:=ACBrNFSeX1.WebService.Emite.Protocolo;
    DM.TBNfseNFS_RECIBODH.Value:=DateToStr(ACBrNFSeX1.WebService.Emite.Data);
    DM.TBNfse.Post;
  end;

  NumeroNota:=ACBrNFSeX1.WebService.Emite.NumeroNota; //para nfse nacional.
  //NumeroNota:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Numero; //pra betha funciona.
  if NumeroNota<>'' then
  begin
    if ACBrNFSeX1.NotasFiscais.Items[0].XMLNFSe <> '' then
    begin
      DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
      DM.TBNfse.Edit;
      DM.TBNfseNFS_CHAVEACESSO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
      DM.TBNfseNFS_CONSULTADA.Value:='F';
      DM.TBNfseNFS_LINK.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.Link;
      DM.TBNfseNFS_NUMERONOTA.Value:=StrToInt(NumeroNota);
      DM.TBNfseNFS_PROTOCOLO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.CodigoVerificacao;
      DM.TBNfseNFS_PROTOCOLODH.Value:=DateTimeToStr(ACBrNFSeX1.NotasFiscais.Items[0].NFSe.DataEmissao);
      DM.TBNfseNFS_VALORCREDITO.Value:=ACBrNFSeX1.NotasFiscais.Items[0].NFSe.ValorCredito;
      DM.TBNfse.Post;

      //salva o arquivo de lote enviado.
      //AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-dps-lot.xml');
      //Rewrite(F);
      //Write(F,ACBrNFSeX1.NotasFiscais.XMLLoteAssinado);
      //CloseFile(F);

      //salva o arquivo da NFSe.
      Arquivo:=AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.xml';
      if DM.TBNfseNFS_CHAVEACESSO.Value<>'' then
      Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';
      AssignFile(F,Pasta+Arquivo);
      Rewrite(F);
      Write(F,UTF8Encode(ACBrNFSeX1.NotasFiscais.Items[0].XMLNFSe));
      CloseFile(F);

      FinalizarNota(False);
    end;
  end;

  ACBrNFSeX1.NotasFiscais.Clear;
end;

procedure TFormNfse.EnviarNFSePorEmail1Click(Sender: TObject);
var A,M,D: Word;
  Pasta, Arquivo: String;
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf((DM.TBNfseNFS_STATUS.Value<>'F') and (DM.TBNfseNFS_STATUS.Value<>'C'),'NFSe não finalizada ou cancelada.');

  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  Arquivo:=DM.TBNfseNFS_CHAVEACESSO.Value+'-nfse.xml'; //era assim o nome do arquivo: AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.xml'
  AbortIf(not FileExists(Pasta+Arquivo),'Arquivo XML não encontrado.');

  //if DM.TBParametrosPAR_NFEEMAILSISTEMA.Value='N' then
  //EnviarNFePorEmailViaOS else
  EnviarNFSePorEmailViaSistema;
end;

procedure TFormNfse.EnviarNFSePorEmailAutomatico1Click(Sender: TObject);
begin
  //if DM.TBParametrosPAR_NFEEMAILSISTEMA.Value='N' then
  //EnviarNFSPorEmailViaOS else
  EnviarNFSePorEmailViaSistemaAutomatico;
end;

procedure TFormNfse.EnviarNFSePorEmailViaSistema;
begin
  GerarEmail;
  Application.CreateForm(TFormEmailsEnviar, FormEmailsEnviar);
  FormEmailsEnviar.ShowModal;
  FormEmailsEnviar.Free;
  FormEmailsEnviar:=nil;
end;

procedure TFormNfse.EnviarNFSePorEmailViaSistemaAutomatico;
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

procedure TFormNfse.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfse.FinalizarNota(Confirmacao: Boolean);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseItens.IsEmpty,'Esta NFSe ainda não tem itens.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','Esta NFSe foi cancelada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','NFSe já finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='I','NFSe já inutilizada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value='','Esta NFSe ainda não foi autorizada para uso.');
  AbortIf(DM.TBNfseNFS_CHAVEACESSO.Value='','Esta NFSe ainda não foi autorizada para uso.');

  if Confirmacao=True then
  begin
    if MessageDlg('Finalizar a nota?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Application.CreateForm(TFormNfseFinalizar, FormNfseFinalizar);
      FormNfseFinalizar.ShowModal;
      FormNfseFinalizar.Free;
      FormNfseFinalizar:=nil;
    end;
  end else
  begin
    Application.CreateForm(TFormNfseFinalizar, FormNfseFinalizar);
    FormNfseFinalizar.ShowModal;
    FormNfseFinalizar.Free;
    FormNfseFinalizar:=nil;
  end;
end;

procedure TFormNfse.FinalizarNota1Click(Sender: TObject);
begin
  FinalizarNota(True);
end;

procedure TFormNfse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNfse.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNfse.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox7);
end;

procedure TFormNfse.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfse.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNfse);
end;

procedure TFormNfse.GerarBoletos1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormNfse.GerarDANFSEFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
begin
  Application.CreateForm(TFormNfseFast, FormNfseFast);
  FormNfseFast.QY01.Close;
  FormNfseFast.QY01.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CODIGO.Value;
  FormNfseFast.QY01.Open;
  FormNfseFast.QY01a.Open;

  {$REGION 'Alimenta variaveis do relatório.'}
  FormNfseFast.frxReport1.Variables['OVERLAY']:=QuotedStr('');
  if DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value='2' then
  FormNfseFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
  begin
    if DM.TBNfseNFS_STATUS.Value='A' then FormNfseFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else //impressão de espelho.
    if DM.TBNfseNFS_STATUS.Value='I' then FormNfseFast.frxReport1.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
    if DM.TBNfseNFS_STATUS.Value='C' then FormNfseFast.frxReport1.Variables['OVERLAY']:=QuotedStr('CANCELADA');
  end;
  FormNfseFast.frxReport1.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNfseFast.frxReport1.Variables['EMP_CNPJ']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNfseFast.frxReport1.Variables['EMP_IE']:=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  FormNfseFast.frxReport1.Variables['EMP_IM']:=QuotedStr(DM.TBEmpresaEMP_IM.Value);
  FormNfseFast.frxReport1.Variables['EMP_EMAIL']:=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value);
  FormNfseFast.frxReport1.Variables['EMP_FONE1']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value);
  FormNfseFast.frxReport1.Variables['EMP_ENDERECO']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value);
  FormNfseFast.frxReport1.Variables['EMP_NUMERO']:=QuotedStr(DM.TBEmpresaEMP_NUMERO.Value);
  FormNfseFast.frxReport1.Variables['EMP_BAIRRO']:=QuotedStr(DM.TBEmpresaEMP_BAIRRO.Value);
  FormNfseFast.frxReport1.Variables['EMP_CIDADE']:=QuotedStr(DM.TBEmpresaEMP_CIDADE.Value);
  FormNfseFast.frxReport1.Variables['EMP_ESTADO']:=QuotedStr(DM.TBEmpresaEMP_ESTADO.Value);
  FormNfseFast.frxReport1.Variables['EMP_CEP']:=QuotedStr(DM.TBEmpresaEMP_CEP.Value);
  FormNfseFast.frxReport1.Variables['EMP_HOMEPAGE']:=QuotedStr(DM.TBEmpresaEMP_HOMEPAGE.Value);
  FormNfseFast.frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  {$ENDREGION}

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormNfseFast.frxReport1.ShowReport else
    FormNfseFast.frxReport1.ShowReport; //fazer imprimir.
  end;

  if GerarPDF then
  begin
    FormNfseFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormNfseFast.frxPDFExport1.ShowDialog:=False;
    FormNfseFast.frxReport1.PrintOptions.ShowDialog:=False;
    FormNfseFast.frxReport1.PrepareReport;
    FormNfseFast.frxReport1.Export(FormNfseFast.frxPDFExport1);
  end;

  FormNfseFast.Free;
  FormNfseFast:=nil;
end;

procedure TFormNfse.GerarDANFSENacionalFast(Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
begin
  Application.CreateForm(TFormNfseFast, FormNfseFast);
  FormNfseFast.QY03.Close;
  FormNfseFast.QY03.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CODIGO.Value;
  FormNfseFast.QY03.Open;
  FormNfseFast.QY03a.Open;

  {$REGION 'Alimenta variaveis do relatório.'}
  FormNfseFast.frxReport3.Variables['OVERLAY']:=QuotedStr('');
  if DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value='2' then
  FormNfseFast.frxReport3.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
  begin
    if DM.TBNfseNFS_STATUS.Value='A' then FormNfseFast.frxReport3.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else //impressão de espelho.
    if DM.TBNfseNFS_STATUS.Value='I' then FormNfseFast.frxReport3.Variables['OVERLAY']:=QuotedStr('SEM VALOR FISCAL') else
    if DM.TBNfseNFS_STATUS.Value='C' then FormNfseFast.frxReport3.Variables['OVERLAY']:=QuotedStr('CANCELADA');
  end;
  FormNfseFast.frxReport3.Variables['AMBIENTE']             :=QuotedStr(DM.TBParametrosPAR_TIPOAMBIENTENFSE.Value);
  FormNfseFast.frxReport3.Variables['EMP_BAIRRO']           :=QuotedStr(DM.TBEmpresaEMP_BAIRRO.Value);
  FormNfseFast.frxReport3.Variables['EMP_CEP']              :=QuotedStr(DM.TBEmpresaEMP_CEP.Value);
  FormNfseFast.frxReport3.Variables['EMP_CIDADE']           :=QuotedStr(DM.TBEmpresaEMP_CIDADE.Value);
  FormNfseFast.frxReport3.Variables['EMP_CIDADECODIGO']     :=QuotedStr(DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString);
  FormNfseFast.frxReport3.Variables['EMP_CNPJ']             :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  FormNfseFast.frxReport3.Variables['EMP_EMAIL']            :=QuotedStr(DM.TBEmpresaEMP_EMAIL.Value);
  FormNfseFast.frxReport3.Variables['EMP_ENDERECO']         :=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value);
  FormNfseFast.frxReport3.Variables['EMP_ENQUADRAMENTO']    :=QuotedStr(DM.TBEmpresaEMP_ENQUADRAMENTO.Value);
  FormNfseFast.frxReport3.Variables['EMP_ESTADO']           :=QuotedStr(DM.TBEmpresaEMP_ESTADO.Value);
  FormNfseFast.frxReport3.Variables['EMP_FONE1']            :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value);
  FormNfseFast.frxReport3.Variables['EMP_HOMEPAGE']         :=QuotedStr(DM.TBEmpresaEMP_HOMEPAGE.Value);
  FormNfseFast.frxReport3.Variables['EMP_IE']               :=QuotedStr(DM.TBEmpresaEMP_IE.Value);
  FormNfseFast.frxReport3.Variables['EMP_IM']               :=QuotedStr(DM.TBEmpresaEMP_IM.Value);
  FormNfseFast.frxReport3.Variables['EMP_NOME']             :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormNfseFast.frxReport3.Variables['EMP_NUMERO']           :=QuotedStr(DM.TBEmpresaEMP_NUMERO.Value);
  FormNfseFast.frxReport3.Variables['EMP_REGIMEAPURACAOISS']:=QuotedStr(DM.TBEmpresaEMP_REGIMEAPURACAOISS.Value);
  FormNfseFast.frxReport3.Variables['TRIBUTOSAPROX']        :=QuotedStr(
    'Totais aproximados dos Tributos cfe. Lei n°12.741/2012: Federais: '+Format('%m',[DM.TBNfseNFS_TOTALTRIBUTOSFED.AsExtended])+'; Estaduais: '+Format('%m',[DM.TBNfseNFS_TOTALTRIBUTOSEST.AsExtended])+'; Municipais: '+Format('%m',[DM.TBNfseNFS_TOTALTRIBUTOSMUN.AsExtended])
  );
  FormNfseFast.frxReport3.Variables['USUARIO']              :=QuotedStr(DM.UsuarioLogin);
  {$ENDREGION}

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    FormNfseFast.frxReport3.ShowReport else
    FormNfseFast.frxReport3.ShowReport; //fazer imprimir.
  end;

  if GerarPDF then
  begin
    FormNfseFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormNfseFast.frxPDFExport1.ShowDialog:=False;
    FormNfseFast.frxReport3.PrintOptions.ShowDialog:=False;
    FormNfseFast.frxReport3.PrepareReport;
    FormNfseFast.frxReport3.Export(FormNfseFast.frxPDFExport1);
  end;

  FormNfseFast.Free;
  FormNfseFast:=nil;
end;

procedure TFormNfse.GerarEmail;
var
  A,M,D: Word;
  MM: TMemo;
  Pasta, ArquivoPDF, ArquivoXML: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM2.TBAssuntos.Close;
  DM2.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_NFSEEMAILASSUNTO.Value;
  DM2.TBAssuntos.Open;
  DM2.TBEmailsContas.Close;
  DM2.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value; //eliminar esse campo: DM.TBParametrosPAR_NFSEEMAILCONTA.Value;
  DM2.TBEmailsContas.Open;

  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  ArquivoPDF:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.pdf';
  ArquivoXML:=DM.TBNfseNFS_CHAVEACESSO.Value+'-NFSe.xml';

  //substitui as palavras-chave no texto padrão.
  MM:=TMemo.CreateParented(Application.Handle);
  MM.WordWrap:=False; //funcionou?!
  MM.Lines.Add(DM2.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|NFS_CODIGO|',AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',7,taRight),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFS_CLIENTE|',IntToStr(DM.TBNfseNFS_CLIENTE.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFS_NOME|',DM.TBNfseNFS_TOMNOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFS_NUMERONOTA|',AlignText(IntToStr(DM.TBNfseNFS_NUMERONOTA.Value),'0',7,taRight),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFS_PROTOCOLO|',DM.TBNfseNFS_PROTOCOLO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|NFS_PROTOCOLODH|',DM.TBNfseNFS_PROTOCOLODH.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  if DM.TBNfseNFS_STATUS.Value='F' then
  MM.Text:=StringReplace(MM.Text,'|NFS_STATUS|','EMITIDA',[rfReplaceAll]) else
  if DM.TBNfseNFS_STATUS.Value='C' then
  MM.Text:=StringReplace(MM.Text,'|NFS_STATUS|','CANCELADA - ('+DM.TBNfseNFS_CANCELAMENTOMOTIVO.Value+')',[rfReplaceAll]) else
  MM.Text:=StringReplace(MM.Text,'|NFS_STATUS|','',[rfReplaceAll]);

  GerarDANFSENacionalFast(False,True,Pasta+ArquivoPDF); //AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.pdf'); //gera o arquivo PDF somente.

  DM2.TBEmails.Insert;
  DM2.TBEmailsEMA_ANEXO.Value:=Pasta+ArquivoXML; //AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.xml';
  DM2.TBEmailsEMA_ANEXO2.Value:=Pasta+ArquivoPDF; //AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-NFSe.pdf';
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

procedure TFormNfse.GerarLote1Click(Sender: TObject);
var A,M,D: Word;
  XMLRps, XMLLote: WideString;
  F: TextFile;
  Pasta: String;
begin
  {$REGION 'CHECAGENS INICIAIS'}
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseItens.IsEmpty,'Esta NFSe não contém itens.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','NFSe já finalizada.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','NFSe já autorizada para uso. Impossível gerar lote.');

  //cria subdiretórios de ANO e MES.
  DecodeDate(DM.TBNfseNFS_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M);
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.');
  {$ENDREGION}

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Gerar Lote...');
  PageControl1.ActivePageIndex:=4;
  PageControl2.ActivePageIndex:=0;

  ACBrNFSeX1.NotasFiscais.Clear;

  ConfigurarComponenteACBrNFSeX;

  AlimentarComponenteACBrNFSeX;

  //altera o pathsalvar pq o componente salva o arquivo xx-env-lot.xml mesmo configurado para nao salvar.
  ACBrNFSeX1.Configuracoes.Arquivos.PathSalvar:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\';
  //ACBrNFSeX1.WebService.Gerar.NomeArq:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps2.xml';
  //ACBrNFSeX1.NotasFiscais.Items[0].NomeArq:=DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps2.xml';

  ACBrNFSeX1.GerarLote(DM.TBNfseNFS_LOTE.Value.ToString);

  ChecarResposta(tmGerarLote);

  XMLRps:=ACBrNFSeX1.NotasFiscais.Items[0].XmlRps;
  XMLLote:=ACBrNFSeX1.WebService.Gerar.XmlEnvio;

  if XMLRps<>'' then
  begin
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps.xml');
    Rewrite(F);
    Write(F,XMLRps);
    CloseFile(F);
  end;

  if XMLLote<>'' then
  begin
    AssignFile(F,DM.TBParametrosPAR_REPOSITORIONFSE.Value+'\'+IntToStr(A)+'\'+IntToStr(M)+'\'+AlignText(IntToStr(DM.TBNfseNFS_CODIGO.Value),'0',10,taRight)+'-rps-lot.xml');
    Rewrite(F);
    Write(F,XMLLote);
    CloseFile(F);
  end;
end;

procedure TFormNfse.InformarProtocoloDataEHoraDeAutorizacao1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='F','Esta NFSe já foi finalizada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='C','Esta NFSe já está cancelada.');
  AbortIf((DM.TBNfseNFS_STATUS.Value='A') and (DM.TBNfseNFS_PROTOCOLO.Value<>''),'Esta NFSe já tem o protocolo informado.');

  Application.CreateForm(TFormNfseProtocolo, FormNfseProtocolo);
  FormNfseProtocolo.ShowModal;
  FormNfseProtocolo.Free;
  FormNfseProtocolo:=nil;
end;

procedure TFormNfse.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormNfse.InutilizarNota1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma NFSe selecionada.');
  //AbortIf(DM.TBNfseNFS_RECIBO.Value<>'','Esta nota tem recibo de envio. Não é possível inutilizar.');
  AbortIf(DM.TBNfseNFS_PROTOCOLO.Value<>'','Esta nota já foi autorizada para uso. Não é possível inutilizar.');
  AbortIf(DM.TBNfseNFS_STATUS.Value<>'A','Somente notas em aberto podem ser inutilizadas.');

  if MessageDlg('Deseja inutilizar esta NFSe?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNfse.Edit;
    DM.TBNfseNFS_STATUS.Value:='I';
    DM.TBNfse.Post;
    MessageDlg('NFSe inutilizada.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormNfse.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfseLoc, FormNfseLoc);
  FormNfseLoc.ShowModal;
  if NfseLoc.Procurar then
  begin
    DM.TBNfse.Close;
    DM.TBNfse.ParamByName('codigo').AsInteger:=FormNfseLoc.QYNfseNFS_CODIGO.Value;
    DM.TBNfse.Open;

    DM.TBNfseItens.Close;
    DM.TBNfseItens.Open;
  end;
  FormNfseLoc.Free;
  FormNfseLoc:=nil;
end;

procedure TFormNfse.LocalizarNotanoContasaReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBNfse.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNfseNFS_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
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

procedure TFormNfse.NotasFiscaisNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfseRel, FormNfseRel);
  FormNfseRel.ComboBox1.Enabled:=False;
  FormNfseRel.ComboBox1.ItemIndex:=0;
  FormNfseRel.ComboBox1Change(Self);
  FormNfseRel.ShowModal;
  FormNfseRel.Free;
  FormNfseRel:=nil;
end;

procedure TFormNfse.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM.TBNfse.State in [dsInsert, dsEdit] then
          try
            DM.TBNfse.Post;
          except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormNfse.QYNfseBeforePost(DataSet: TDataSet);
begin
  //cria um novo lote e associa o valor somente quando é inserido um registro na tabela nfse. (LOCAL neste form.)
  if QYNfse.State in [dsInsert] then
  begin
    DM.TBNfseCodigo.Edit;
    DM.TBNfseCodigoNFS_CODIGO.Value:=DM.TBNfseCodigoNFS_CODIGO.Value+1;
    DM.TBNfseCodigo.Post;
    QYNfseNFS_LOTE.Value:=DM.TBNfseCodigoNFS_CODIGO.Value;
  end;
end;

procedure TFormNfse.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfseRel, FormNfseRel);
  FormNfseRel.ShowModal;
  FormNfseRel.Free;
  FormNfseRel:=nil;
end;

procedure TFormNfse.SpeedButton1Click(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNfseNFS_CLIENTE.Clear;
    //campo condicao nao limpa.
    DM.TBNfseNFS_TOMBAIRRO.Clear;
    DM.TBNfseNFS_TOMCEP.Clear;
    DM.TBNfseNFS_TOMCIDADE.Clear;
    DM.TBNfseNFS_TOMCIDADECODIGO.Clear;
    DM.TBNfseNFS_TOMCNPJ.Clear;
    DM.TBNfseNFS_TOMCOMPLEMENTO.Clear;
    DM.TBNfseNFS_TOMCONTATO.Clear;
    DM.TBNfseNFS_TOMCPF.Clear;
    DM.TBNfseNFS_TOMEMAIL.Clear;
    DM.TBNfseNFS_TOMENDERECO.Clear;
    DM.TBNfseNFS_TOMESTADO.Clear;
    DM.TBNfseNFS_TOMESTADOCODIGO.Clear;
    DM.TBNfseNFS_TOMFONE1.Clear;
    DM.TBNfseNFS_TOMFONE2.Clear;
    DM.TBNfseNFS_TOMIE.Clear;
    DM.TBNfseNFS_TOMIM.Clear;
    DM.TBNfseNFS_TOMNOME.Clear;
    DM.TBNfseNFS_TOMNUMERO.Clear;
    DM.TBNfseNFS_TOMPAIS.Clear;
    DM.TBNfseNFS_TOMPAISCODIGO.Clear;
    DM.TBNfseNFS_TOMSITE.Clear;
    DM.TBNfseNFS_TOMTIPOPESSOA.Clear;
    DM.TBNfseNFS_VENDEDOR.Clear;
    DM.TBNfseVEN_NOME.Clear;
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
    DM.TBNfse.Edit;
    DM.TBNfseNFS_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBNfseNFS_CONDICAO.Value:=FormClientesLoc.QYClientesCLI_CONDICAO.Value; //campo a mais.
    DM.TBNfseNFS_TOMBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM.TBNfseNFS_TOMCEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM.TBNfseNFS_TOMCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM.TBNfseNFS_TOMCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM.TBNfseNFS_TOMCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.TBNfseNFS_TOMCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM.TBNfseNFS_TOMCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM.TBNfseNFS_TOMCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBNfseNFS_TOMEMAIL.Value:=FormClientesLoc.QYClientesCLI_EMAIL.Value;
    DM.TBNfseNFS_TOMENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM.TBNfseNFS_TOMESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM.TBNfseNFS_TOMESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    DM.TBNfseNFS_TOMFONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM.TBNfseNFS_TOMFONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
    DM.TBNfseNFS_TOMIE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    if FormClientesLoc.QYClientesCLI_IM.Value > 0 then
    DM.TBNfseNFS_TOMIM.Value:=FormClientesLoc.QYClientesCLI_IM.Value else
    DM.TBNfseNFS_TOMIM.Clear;
    DM.TBNfseNFS_TOMNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBNfseNFS_TOMNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM.TBNfseNFS_TOMPAIS.Value:=FormClientesLoc.QYClientesCLI_PAIS.Value;
    DM.TBNfseNFS_TOMPAISCODIGO.Value:=FormClientesLoc.QYClientesCLI_PAISCODIGO.Value;
    DM.TBNfseNFS_TOMSITE.Value:=FormClientesLoc.QYClientesCLI_SITE.Value;
    DM.TBNfseNFS_TOMTIPOPESSOA.Value:=FormClientesLoc.QYClientesCLI_TIPOPESSOA.Value;
    DM.TBNfseNFS_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    //...
    SetVendedor(DM.TBNfseNFS_VENDEDOR.Value);
    SetCondicao(DM.TBNfseNFS_CONDICAO.Value);
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormNfse.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar=True then
  begin
    if FormCondicoesLoc.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
      DM.TBNfseNFS_CONDICAO.Clear;
      DM.TBNfseCPG_DESCRICAO.Clear;
      FormCondicoesLoc.Free;
      FormCondicoesLoc:=nil;
      Exit;
    end;

    DM.TBNfse.Edit;
    DM.TBNfseNFS_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM.TBNfseCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNfseNFS_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    BitBtn5.Click;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormNfse.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit32,nil,DM.TBNfse);
end;

procedure TFormNfse.ZiparArquivosXML1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZiparDFE, FormZiparDFE);
  FormZiparDFE.CheckBox3.Checked:=True;
  FormZiparDFE.ShowModal;
  FormZiparDFE.Free;
  FormZiparDFE:=nil;
end;

procedure TFormNFSe.ChecarResposta2(aMetodo: TMetodo);
var
  i: Integer;
  Ambiente: string;

  procedure ListaDeErros(aErros: TNFSeEventoCollection);
  var
    i: Integer;
  begin
    if aErros.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Erro(s):');
      for i := 0 to aErros.Count -1 do
      begin
        Memo1.Lines.Add('Código  : ' + aErros[i].Codigo);
        Memo1.Lines.Add('Mensagem: ' + aErros[i].Descricao);
        Memo1.Lines.Add('Correção: ' + aErros[i].Correcao);
        Memo1.Lines.Add('---------');
      end;
    end;
  end;

  procedure ListaDeAlertas(aAlertas: TNFSeEventoCollection);
  var
    i: Integer;
  begin
    if aAlertas.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Alerta(s):');
      for i := 0 to aAlertas.Count -1 do
      begin
        Memo1.Lines.Add('Código  : ' + aAlertas[i].Codigo);
        Memo1.Lines.Add('Mensagem: ' + aAlertas[i].Descricao);
        Memo1.Lines.Add('Correção: ' + aAlertas[i].Correcao);
        Memo1.Lines.Add('---------');
      end;
    end;
  end;

  procedure ListaDeResumos(aResumos: TNFSeResumoCollection; aMetodo: TMetodo);
  var
    i: Integer;
  begin
    if aResumos.Count > 0 then
    begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Resumo(s):');
      for i := 0 to aResumos.Count -1 do
      begin
        case aMetodo of
          tmConsultarEvento:
            begin
              Memo1.Lines.Add('Chave DFe: ' + aResumos[i].ChaveDFe);
              Memo1.Lines.Add('Tipo Doc.: ' + aResumos[i].TipoDoc);
            end;

          tmConsultarDFe:
            begin
              Memo1.Lines.Add('NSU        : ' + IntToStr(aResumos[i].NSU));
              Memo1.Lines.Add('Chave DFe  : ' + aResumos[i].ChaveDFe);
              Memo1.Lines.Add('Tipo Evento: ' + aResumos[i].TipoEvento);
              Memo1.Lines.Add('Tipo Doc.  : ' + aResumos[i].TipoDoc);

              If aResumos[i].TipoDoc <> 'NFSE' then
              begin
                Memo1.Lines.Add('nSeqEvento : ' + IntToStr(aResumos[i].nSeqEvento));
                Memo1.Lines.Add('Data       : ' + DateToStr(aResumos[i].Data));
                Memo1.Lines.Add('idEvento   : ' + aResumos[i].idEvento);
                Memo1.Lines.Add('idNota     : ' + aResumos[i].idNota);
                Memo1.Lines.Add('tpEvento   : ' +
                  ACBrNFSeXConversao.tpEventoToStr(aResumos[i].tpEvento));
              end;
            end;
        else
          begin
            Memo1.Lines.Add('Numero da Nota    : ' + aResumos[i].NumeroNota);
            Memo1.Lines.Add('Série da Nota     : ' + aResumos[i].SerieNota);
            Memo1.Lines.Add('Código Verificação: ' + aResumos[i].CodigoVerificacao);
            Memo1.Lines.Add('Numero do Rps     : ' + aResumos[i].NumeroRps);
            Memo1.Lines.Add('Série do Rps      : ' + aResumos[i].SerieRps);
            Memo1.Lines.Add('Id da Nota        : ' + aResumos[i].idNota);
            Memo1.Lines.Add('Id da Rps         : ' + aResumos[i].idRps);
            Memo1.Lines.Add('Data              : ' + DateTimeToStr(aResumos[i].Data));
            Memo1.Lines.Add('Link              : ' + aResumos[i].Link);
            Memo1.Lines.Add('Protocolo         : ' + aResumos[i].Protocolo);
            Memo1.Lines.Add('Situação          : ' + aResumos[i].Situacao);
            Memo1.Lines.Add('Desc. da Situação : ' + aResumos[i].DescSituacao);
          end;
        end;

        Memo1.Lines.Add('---------');
      end;
    end;
  end;
begin
  Ambiente := TpAmbToStr(ACBrNFSeX1.Configuracoes.WebServices.Ambiente);

  if Ambiente = '1' then
    Ambiente := Ambiente + ' - Produção'
  else
    Ambiente := Ambiente + ' - Homologação';

  Memo1.Clear;
  Memo1.Lines.Clear;
  Memo1.Update;

  Memo1.Lines.Add('------------------------------');
  Memo1.Lines.Add('Versão OpenSSL');
  Memo1.Lines.Add( OpenSSLExt.OpenSSLVersion(0) );
  Memo1.Lines.Add( OpenSSLExt.OpenSSLFullVersion );
  Memo1.Lines.Add( OpenSSLExt.SSLUtilFile );
  Memo1.Lines.Add( OpenSSLExt.SSLLibFile );
  Memo1.Lines.Add('------------------------------');

  Memo1.Lines.Add('Requisição');
  Memo1.Lines.Add('Ambiente : ' + Ambiente);
  Memo1.Lines.Add('Cidade   : ' + ACBrNFSeX1.Configuracoes.Geral.xMunicipio + '/' +
                                   ACBrNFSeX1.Configuracoes.Geral.xUF);
  Memo1.Lines.Add('Provedor : ' + ACBrNFSeX1.Configuracoes.Geral.xProvedor +
          ' Versão: ' + VersaoNFSeToStr(ACBrNFSeX1.Configuracoes.Geral.Versao));
  Memo1.Lines.Add('Data/Hora: ' + DateTimeToStr(Now));
  Memo1.Lines.Add(' ');

  with ACBrNFSeX1.WebService do
  begin
    case aMetodo of
      tmRecepcionar,
      tmTeste:
        begin
          with Emite do
          begin
            Memo1.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Data de Envio : ' + DateToStr(Data));
            Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
            Memo1.Lines.Add('Numero da Nota: ' + NumeroNota);
            Memo1.Lines.Add('Link          : ' + Link);
            Memo1.Lines.Add('Código Verif. : ' + CodigoVerificacao);
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;

          if ACBrNFSeX1.Configuracoes.Geral.ConsultaLoteAposEnvio and
             (Emite.Erros.Count = 0) and
             ((Emite.Protocolo <> '') or (Emite.NumeroLote <> '')) then
          begin
            if ACBrNFSeX1.Provider.ConfigGeral.ConsultaSitLote then
            begin
              with ConsultaSituacao do
              begin
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarSituacao));
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Parâmetros de Envio');
                Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
                Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Parâmetros de Retorno');
                Memo1.Lines.Add('Situação Lote : ' + Situacao);
                Memo1.Lines.Add('Descrição Sit : ' + DescSituacao);
                Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

                LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
                LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

                ListaDeErros(Erros);
                ListaDeAlertas(Alertas);
              end;
            end;

            if ACBrNFSeX1.Provider.ConfigGeral.ConsultaLote and
               (ConsultaSituacao.Erros.Count = 0) then
            begin
              with ConsultaLoteRps do
              begin
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarLote));
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Parâmetros de Envio');
                Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
                Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
                Memo1.Lines.Add(' ');
                Memo1.Lines.Add('Parâmetros de Retorno');
                Memo1.Lines.Add('Situação Lote : ' + Situacao);
                Memo1.Lines.Add('ID Nota       : ' + idNota);
                Memo1.Lines.Add('ID Rps        : ' + idRps);
                Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

                ListaDeResumos(Resumos, tmConsultarLote);

                LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
                LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

                ListaDeErros(Erros);
                ListaDeAlertas(Alertas);
              end;
            end;
          end;
        end;

      tmRecepcionarSincrono,
      tmGerar:
        begin
          with Emite do
          begin
            Memo1.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Data de Envio : ' + DateToStr(Data));
            Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
            Memo1.Lines.Add('Numero da Nota: ' + NumeroNota);
            Memo1.Lines.Add('Link          : ' + Link);
            Memo1.Lines.Add('Código Verif. : ' + CodigoVerificacao);
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
            ListaDeResumos(Resumos, tmRecepcionarSincrono);
          end;
        end;

      tmConsultarSituacao:
        begin
          with ConsultaSituacao do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarSituacao));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Situação Lote : ' + Situacao);
            Memo1.Lines.Add('Descrição Sit : ' + DescSituacao);
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarLote:
        begin
          with ConsultaLoteRps do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarLote));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Situação Lote : ' + Situacao);
            Memo1.Lines.Add('ID Nota       : ' + idNota);
            Memo1.Lines.Add('ID Rps        : ' + idRps);
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            ListaDeResumos(Resumos, tmConsultarLote);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarNFSePorRps:
        begin
          with ConsultaNFSeporRps do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarNFSePorRps));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Rps : ' + NumeroRps);
            Memo1.Lines.Add('Série do Rps  : ' + SerieRps);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add('Numero do Prot: ' + Protocolo);
            Memo1.Lines.Add('Situação      : ' + Situacao);
            Memo1.Lines.Add('Data          : ' + DateToStr(Data));
            Memo1.Lines.Add('Desc. Situação: ' + DescSituacao);
            Memo1.Lines.Add('ID Nota       : ' + idNota);
            Memo1.Lines.Add('Link          : ' + Link);
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarNFSe,
      tmConsultarNFSePorFaixa,
      tmConsultarNFSeServicoPrestado,
      tmConsultarNFSeServicoTomado:
        begin
          with ConsultaNFSe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(Metodo));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Num. Ini. NFSe: ' + InfConsultaNFSe.NumeroIniNFSe);
            Memo1.Lines.Add('Num. Fin. NFSe: ' + InfConsultaNFSe.NumeroFinNFSe);
            Memo1.Lines.Add('Data Inicial  : ' + DateToStr(InfConsultaNFSe.DataInicial));
            Memo1.Lines.Add('Data Final    : ' + DateToStr(InfConsultaNFSe.DataFinal));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proPrescon] then
              Memo1.Lines.Add('Número NFSe   : ' + NumeroNota);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarNFSePorChave:
        begin
          with ConsultaNFSe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(Metodo));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Chave da NFSe: ' + InfConsultaNFSe.ChaveNFSe);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            if ACBrNFSeX1.Configuracoes.Geral.Provedor in [proPrescon] then
              Memo1.Lines.Add('Número NFSe   : ' + NumeroNota);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarLinkNFSe:
        begin
          with ConsultaLinkNFSe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarLinkNFSe));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Competencia   : ' + DateToStr(InfConsultaLinkNFSe.Competencia));
            Memo1.Lines.Add('Numero da NFSe: ' + InfConsultaLinkNFSe.NumeroNFSe);
            Memo1.Lines.Add('Série da NFSe : ' + InfConsultaLinkNFSe.SerieNFSe);
            Memo1.Lines.Add('Numero do RPS : ' + IntToStr(InfConsultaLinkNFSe.NumeroRps));
            Memo1.Lines.Add('Série da NFSe : ' + InfConsultaLinkNFSe.SerieRps);

            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Situação: ' + Situacao);
            Memo1.Lines.Add('Link    : ' + Link);
            Memo1.Lines.Add('Sucesso : ' + BoolToStr(Sucesso, True));
            Memo1.Lines.Add(' ');

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmCancelarNFSe:
        begin
          with CancelaNFSe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmCancelarNFSe));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero da NFSe: ' + InfCancelamento.NumeroNFSe);
            Memo1.Lines.Add('Série da NFSe : ' + InfCancelamento.SerieNFSe);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Situação: ' + Situacao);
            Memo1.Lines.Add('Link    : ' + Link);
            Memo1.Lines.Add('Sucesso : ' + BoolToStr(Sucesso, True));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Retorno do Pedido de Cancelamento:');
            Memo1.Lines.Add('Situação : ' + RetCancelamento.Situacao);
            Memo1.Lines.Add('Data/Hora: ' + DateToStr(RetCancelamento.DataHora));
            Memo1.Lines.Add('Mensagem : ' + RetCancelamento.MsgCanc);
            Memo1.Lines.Add('Sucesso  : ' + RetCancelamento.Sucesso);
            Memo1.Lines.Add('Link     : ' + RetCancelamento.Link);
            Memo1.Lines.Add('Nome Arq.: ' + PathNome);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;

          if ACBrNFSeX1.Configuracoes.Geral.ConsultaAposCancelar and
             ACBrNFSeX1.Provider.ConfigGeral.ConsultaNFSe then
          begin
            with ConsultaNFSe do
            begin
              Memo1.Lines.Add(' ');
              Memo1.Lines.Add(' ');
              Memo1.Lines.Add('Método Executado: ' + MetodoToStr(Metodo));
              Memo1.Lines.Add('Parâmetros de Envio');
              Memo1.Lines.Add('Num. Ini. NFSe: ' + InfConsultaNFSe.NumeroIniNFSe);
              Memo1.Lines.Add('Num. Fin. NFSe: ' + InfConsultaNFSe.NumeroFinNFSe);
              Memo1.Lines.Add(' ');
              Memo1.Lines.Add('Parâmetros de Retorno');
              Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

              LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml', 1000);
              LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml', 1000);

              ListaDeErros(Erros);
              ListaDeAlertas(Alertas);
            end;
          end;
        end;

      tmSubstituirNFSe:
        begin
          with SubstituiNFSe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmSubstituirNFSe));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero da NFSe: ' + InfCancelamento.NumeroNFSe);
            Memo1.Lines.Add('Série da NFSe : ' + InfCancelamento.SerieNFSe);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Situação: ' + Situacao);
            Memo1.Lines.Add('Link    : ' + Link);
            Memo1.Lines.Add('Sucesso : ' + BoolToStr(Sucesso, True));
            Memo1.Lines.Add('Numero da NFSe Substituida  : ' + NumNotaSubstituida);
            Memo1.Lines.Add('Numero da NFSe Substituidora: ' + NumNotaSubstituidora);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Retorno do Pedido de Cancelamento:');
            Memo1.Lines.Add('Situação : ' + RetCancelamento.Situacao);
            Memo1.Lines.Add('Data/Hora: ' + DateToStr(RetCancelamento.DataHora));
            Memo1.Lines.Add('Mensagem : ' + RetCancelamento.MsgCanc);
            Memo1.Lines.Add('Sucesso  : ' + RetCancelamento.Sucesso);
            Memo1.Lines.Add('Link     : ' + RetCancelamento.Link);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmGerarLote:
        begin
          with Gerar do
          begin
            Memo1.Lines.Add('Método Executado: ' + ModoEnvioToStr(ModoEnvio));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Numero do Lote: ' + NumeroLote);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Nome Arquivo : ' + NomeArq);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmGerarToken:
        begin
          with GerarToken do
          begin
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmGerarToken));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Token         : ' + Token);
            Memo1.Lines.Add('Data Expiracao: ' + DateTimeToStr(DataExpiracao));

            Memo1.Lines.Add('Sucesso       : ' + BoolToStr(Sucesso, True));

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmAbrirSessao:
        begin
        end;

      tmFecharSessao:
        begin
        end;

      tmEnviarEvento:
        begin
          with EnviarEvento do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmEnviarEvento));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            with InfEvento.pedRegEvento do
            begin
              Memo1.Lines.Add('Chave NFSe : ' + chNFSe);
              Memo1.Lines.Add('Evento     : ' + tpEventoToDesc(tpEvento));
            end;
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Chave NFSe      : ' + idNota);
            Memo1.Lines.Add('Data            : ' + DateToStr(Data));
            Memo1.Lines.Add('Tipo Evento     : ' + tpEventoToDesc(tpEvento));
            Memo1.Lines.Add('Num. Seq. Evento: ' + IntToStr(nSeqEvento));
            Memo1.Lines.Add('ID do Evento    : ' + idEvento);
            Memo1.Lines.Add('Sucesso         : ' + BoolToStr(Sucesso, True));
            Memo1.Lines.Add('Sucesso Canc.   : ' + BoolToStr(SucessoCanc, True));
            Memo1.Lines.Add('Desc. Situação  : ' + DescSituacao);
            Memo1.Lines.Add('Nome Arquivo    : ' + PathNome);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarEvento:
        begin
          with ConsultarEvento do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarEvento));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Chave NFSe      : ' + ChaveNFSe);
            Memo1.Lines.Add('Evento          : ' + tpEventoToDesc(tpEvento));
            Memo1.Lines.Add('Num. Seq. Evento: ' + IntToStr(nSeqEvento));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Chave NFSe      : ' + idNota);
            Memo1.Lines.Add('Data            : ' + DateToStr(Data));
            Memo1.Lines.Add('Tipo Evento     : ' + tpEventoToDesc(tpEvento));
            Memo1.Lines.Add('Num. Seq. Evento: ' + IntToStr(nSeqEvento));
            Memo1.Lines.Add('ID do Evento    : ' + idEvento);
            Memo1.Lines.Add('Sucesso         : ' + BoolToStr(Sucesso, True));

            ListaDeResumos(Resumos, tmConsultarEvento);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarDFe:
        begin
          with ConsultarDFe do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarDFe));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Chave NFSe     : ' + ChaveNFSe);
            Memo1.Lines.Add('Num. Seq. Unico: ' + IntToStr(NSU));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Data   : ' + DateToStr(Data));
            Memo1.Lines.Add('Sucesso: ' + BoolToStr(Sucesso, True));

            ListaDeResumos(Resumos, tmConsultarDFe);

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;

      tmConsultarParam:
        begin
          with ConsultarParam do
          begin
            Memo1.Lines.Add('Método Executado: ' + MetodoToStr(tmConsultarParam));
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Envio');
            Memo1.Lines.Add('Tipo Parâmetro  : ' + ParamMunicToStr(tpParamMunic));
            Memo1.Lines.Add('Código Municipío: ' + IntToStr(CodigoMunicipio));
            Memo1.Lines.Add('Código Serviço  : ' + CodigoServico);
            Memo1.Lines.Add('Competencia     : ' + DateToStr(Competencia));
            Memo1.Lines.Add('Numero Beneficio: ' + NumeroBeneficio);
            Memo1.Lines.Add(' ');
            Memo1.Lines.Add('Parâmetros de Retorno');
            Memo1.Lines.Add('Data      : ' + DateTimeToStr(Data));
            Memo1.Lines.Add('Sucesso   : ' + BoolToStr(Sucesso, True));

            if Parametros.Count > 0 then
            begin
              Memo1.Lines.Add(' ');
              Memo1.Lines.Add('Parâmetros(s):');
              for i := 0 to Parametros.Count -1 do
              begin
                Memo1.Lines.Add(Parametros[i]);
              end;
            end;

            LoadXML(XmlEnvio, WBXmlEnvio, 'temp1.xml');
            LoadXML(XmlRetorno, WBXmlRetorno, 'temp2.xml');

            ListaDeErros(Erros);
            ListaDeAlertas(Alertas);
          end;
        end;
    end;
  end;

  for i := 0 to ACBrNFSeX1.NotasFiscais.Count -1 do
  begin
    Memo1.Lines.Add(' ');
    Memo1.Lines.Add('NFS-e Numero....: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Numero);
    Memo1.Lines.Add('Cod. Verificacao: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.CodigoVerificacao);
    Memo1.Lines.Add('Prestador.......: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Prestador.RazaoSocial);
    Memo1.Lines.Add('Tomador.........: ' + ACBrNFSeX1.NotasFiscais.Items[i].NFSe.Tomador.RazaoSocial);

    if ACBrNFSeX1.NotasFiscais.Items[i].NFSe.SituacaoNfse = ACBrNFSeXConversao.snCancelado then
      Memo1.Lines.Add('A Nota encontra-se Cancelada.');

    if ACBrNFSeX1.NotasFiscais.Items[i].NomeArq <> '' then
    begin
      Memo1.Lines.Add('Nome do arquivo.: ' + ACBrNFSeX1.Configuracoes.Arquivos.GetPathNFSe() + '\' +
                                               ACBrNFSeX1.NotasFiscais.Items[i].NomeArq);
      if ACBrNFSeX1.Configuracoes.Arquivos.Salvar then
        Memo1.Lines.Add('==> Xml da nota salvo na pasta e com o nome informado acima.')
      else
        Memo1.Lines.Add('==> Xml da nota não salvo em disco.');

      // Na propriedade XmlNfse temos o XML da NFS-e
      //LoadXML(ACBrNFSeX1.NotasFiscais.Items[i].XmlNfse, WBXmlNotas);
    end;
  end;

  //pgRespostas.ActivePageIndex := 0;
end;

//A funcao abaixo retorna um XML com a consulta do protocolo de envio da NFSE
function TFormNfse.ConsultarStatusDpsBetha(CNPJ, Cidade, Protocolo, Tipo: String): String;
var
  HTTP: TIdHTTP;
  SSL: TIdSSLIOHandlerSocketOpenSSL;
  ReqStream, RespStream: TStringStream;
  XML: String;
begin
  Result := '';
  HTTP := TIdHTTP.Create(nil);
  SSL  := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  ReqStream  := nil;
  RespStream := nil;

  try
    // XML exatamente como solicitado
    XML :=
      '<?xml version="1.0" encoding="UTF-8"?>' +
      '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" ' +
      'xmlns:e="http://www.betha.com.br/e-nota-dps">' +
      '<soapenv:Header/>' +
      '<soapenv:Body>' +
      '<e:ConsultarStatusDpsEnvio>' +
      '<e:tpAmb>1</e:tpAmb>' +
      '<e:codigoIbge>'+Cidade+'</e:codigoIbge>' +
      '<e:cpfCnpjPrestador>'+LimparFormatacao(CNPJ)+'</e:cpfCnpjPrestador>' +
      '<e:protocolo>'+Protocolo+'</e:protocolo>' +
      '<e:tipoIntegracao>'+Tipo+'</e:tipoIntegracao>' +
      '</e:ConsultarStatusDpsEnvio>' +
      '</soapenv:Body>' +
      '</soapenv:Envelope>';

    ReqStream :=TStringStream.Create(XML, TEncoding.UTF8);
    RespStream:=TStringStream.Create('', TEncoding.UTF8);

    // Configuração SSL
    SSL.SSLOptions.Method:=sslvTLSv1_2;
    SSL.SSLOptions.Mode  :=sslmClient;

    HTTP.IOHandler := SSL;
    HTTP.HandleRedirects := True;
    HTTP.ReadTimeout := 60000;
    HTTP.ConnectTimeout := 30000;

    // Headers SOAP
    HTTP.Request.ContentType:='text/xml; charset=utf-8';
    HTTP.Request.CharSet:='utf-8';
    HTTP.Request.CustomHeaders.Values['SOAPAction']:='ConsultarStatusDpsEnvio';

    // POST
    HTTP.Post('https://nota-eletronica.betha.cloud/dps/ws',ReqStream,RespStream);
    Result:=RespStream.DataString;

  except
    on E: Exception do
    Result:='Erro: '+E.Message;
  end;

  RespStream.Free;
  ReqStream.Free;
  HTTP.Free;
  SSL.Free;
end;

//A funcao abaixo retorna um objeto do tipo TDPSStatusResposta com os campos da consulta devidamente em seu lugar.
function TFormNfse.TratarDadosConsultaStatus(const AXml: String): TDPSStatusResposta;
var
  XmlDoc : IXMLDocument;
  Node   : IXMLNode;
  Emissao: IXMLNode;
begin
  FillChar(Result, SizeOf(Result), 0);

  XmlDoc := NewXMLDocument;
  XmlDoc.LoadFromXML(AXml);
  XmlDoc.Active := True;

  // Navega direto até o nó ConsultarStatusDpsResposta
  Node:=XmlDoc.DocumentElement.ChildNodes['Body'].ChildNodes[0]; // ConsultarStatusDpsResposta

  Result.StatusProcessamento:=Node.ChildNodes['statusProcessamento'].Text;
  Result.DataHoraRecebimento:=Node.ChildNodes['dataHoraRecebimento'].Text;
  Result.Protocolo          :=Node.ChildNodes['protocolo'].Text;
  Emissao                   :=Node.ChildNodes['emissao'];
  Result.IdDps              :=Emissao.ChildNodes['idDps'].Text;
  Result.ChaveAcesso        :=Emissao.ChildNodes['chaveAcesso'].Text;
  Result.NumeroDps          :=Emissao.ChildNodes['numeroDps'].Text;
  Result.SerieDps           :=Emissao.ChildNodes['serieDps'].Text;
  Result.NumeroNotaFiscal   :=Emissao.ChildNodes['numeroNotaFiscal'].Text;
  Result.LinkPdf            :=Emissao.ChildNodes['linkPdf'].Text;
end;

procedure TFormNfse.ExtrairXmlDoBase64Zipado(const RespostaJSON, NomeArquivo: String);
var
  JSONObject   : TJSONObject;
  Base64Zipado : String;
  BytesZIP     : TBytes;
  StreamZIP    : TBytesStream;
  StreamXML    : TStringStream;
  Descompactado: TDecompressionStream;
begin
  JSONObject := TJSONObject.ParseJSONValue(RespostaJson) as TJSONObject;
  if not Assigned(JSONObject) then
  raise Exception.Create('JSON inválido.');

  try
    Base64Zipado:=JSONObject.GetValue<string>('nfseXmlGZipB64');

    if Base64Zipado='' then
    raise Exception.Create('Campo nfseXmlGZipB64 não encontrado.');

    BytesZIP:=TNetEncoding.Base64.DecodeStringToBytes(Base64Zipado); //passa base64 para Bytes

    if (Length(BytesZIP) < 2) or (BytesZIP[0] <> $1F) or (BytesZIP[1] <> $8B) then
    raise Exception.Create('O conteúdo NÃO é GZip válido.');

    StreamZIP:=TBytesStream.Create(BytesZIP);
    StreamZIP.Position:=0;
    StreamXML:=TStringStream.Create('',TEncoding.UTF8);
    try
      //Descompacta GZip. O parâmetro 31 é o "window bits" para detectar cabeçalho GZip automaticamente
      Descompactado:=TDecompressionStream.Create(StreamZIP,31);
      try
        StreamXML.CopyFrom(Descompactado, 0);
      finally
        Descompactado.Free;
      end;

      //Salva XML
      StreamXML.Position := 0;
      StreamXML.SaveToFile(NomeArquivo);

    finally
      StreamZIP.Free;
      StreamXML.Free;
    end;

  finally
    JSONObject.Free;
  end;
end;

initialization
  RegisterClass(TFormNfse);

finalization
  UnRegisterClass(TFormNfse);

end.
