unit Notas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBSBtn, ExtCtrls, StdCtrls, DBCtrls, Buttons, Grids,
  DBGrids, Mask, ComCtrls, ImgList, PngImageList, PngSpeedButton, PngBitBtn,
  System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Param,
  FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormNotas = class(TForm)
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
    Label37: TLabel;
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
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    BitBtn3: TPngBitBtn;
    BitBtn4: TPngBitBtn;
    DBComboBox3: TDBComboBox;
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
    CadastroDeProdutos1Button: TPngSpeedButton;
    FinalizarNota1Button: TPngSpeedButton;
    ImprimirNota1Button: TPngSpeedButton;
    LocalizarNotaNoContasAReceber1Button: TPngSpeedButton;
    CadastroDeClientes1Button: TPngSpeedButton;
    CadastroDeCondicoesDePagamento1Button: TPngSpeedButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    CancelarNota1Button: TPngSpeedButton;
    CadastroDeNaturezasDeOperacao1Button: TPngSpeedButton;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarNotaNoContasAReceber1: TMenuItem;
    Relatorios2: TMenuItem;
    ImprimirNota1: TMenuItem;
    N4: TMenuItem;
    CancelarNota1: TMenuItem;
    FinalizarNota1: TMenuItem;
    N2: TMenuItem;
    CadastroDeClientes1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeCondicoesDePagamento1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    InserirItem1: TMenuItem;
    EliminarItem1: TMenuItem;
    AtualizarItens1: TMenuItem;
    Label49: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    SpeedButton17: TPngSpeedButton;
    Label51: TLabel;
    CadastroDeNaturezasDeOperacao1: TMenuItem;
    SpeedButton18: TPngSpeedButton;
    Label52: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label53: TLabel;
    DBText10: TDBText;
    DBEdit47: TDBEdit;
    Label54: TLabel;
    DBEdit48: TDBEdit;
    Label55: TLabel;
    DBEdit49: TDBEdit;
    Label56: TLabel;
    DBEdit50: TDBEdit;
    Label57: TLabel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    Label67: TLabel;
    DBMemo3: TDBMemo;
    CadastroDeEnderecos1Button: TPngSpeedButton;
    CadastroDeEnderecos1: TMenuItem;
    TabSheet5: TTabSheet;
    Label68: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    Label71: TLabel;
    DBEdit65: TDBEdit;
    Label72: TLabel;
    Label73: TLabel;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    Label74: TLabel;
    DBEdit68: TDBEdit;
    Label75: TLabel;
    DBEdit69: TDBEdit;
    Label76: TLabel;
    DBEdit70: TDBEdit;
    Label77: TLabel;
    DBEdit71: TDBEdit;
    Label78: TLabel;
    Label79: TLabel;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    Label86: TLabel;
    Label17: TLabel;
    Label25: TLabel;
    SpeedButton3: TPngSpeedButton;
    DBEdit26: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit18: TDBEdit;
    CadastroDeClassificacoesFiscais1Button: TPngSpeedButton;
    CadastroDeImpostoICMS1Button: TPngSpeedButton;
    CadastroDeImpostoIPI1Button: TPngSpeedButton;
    CadastroDeImpostoPISCOFINS1Button: TPngSpeedButton;
    CadastroDeClassificacoesFiscais1: TMenuItem;
    CadastroDeImpostoICMS1: TMenuItem;
    CadastroDeImpostoIPI1: TMenuItem;
    CadastroDeImpostoPISCOFINS1: TMenuItem;
    CadastroDeImpostoISS1: TMenuItem;
    CadastroDeImpostoISS1Button: TPngSpeedButton;
    DBComboBox5: TDBComboBox;
    Label21: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    Label26: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    Label27: TLabel;
    BitBtn7: TPngBitBtn;
    DBEdit27: TDBEdit;
    Label22: TLabel;
    PngImageList1: TPngImageList;
    CadastroDeFornecedores1: TMenuItem;
    Label87: TLabel;
    Label105: TLabel;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton4: TPngSpeedButton;
    PngSpeedButton5: TPngSpeedButton;
    PngSpeedButton6: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    GroupBox1: TGroupBox;
    Label90: TLabel;
    Label91: TLabel;
    DBEdit28: TDBEdit;
    DBEdit44: TDBEdit;
    Label50: TLabel;
    DBEdit80: TDBEdit;
    DBText16: TDBText;
    Label93: TLabel;
    Label94: TLabel;
    DBText17: TDBText;
    Cadastros1: TMenuItem;
    AlterarCampoMovimentacaoEstoque1: TMenuItem;
    AlterarCampoMovimentacaoFinanceiro1: TMenuItem;
    DBText20: TDBText;
    DBEdit84: TDBEdit;
    Label95: TLabel;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label96: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    GroupBox3: TGroupBox;
    Label10: TLabel;
    Label38: TLabel;
    DBEdit11: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox4: TGroupBox;
    Label59: TLabel;
    Label60: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    GroupBox5: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    GroupBox6: TGroupBox;
    Label58: TLabel;
    DBEdit12: TDBEdit;
    DBEdit52: TDBEdit;
    Label11: TLabel;
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
    GroupBox7: TGroupBox;
    Label88: TLabel;
    DBEdit81: TDBEdit;
    DBEdit94: TDBEdit;
    Label97: TLabel;
    DBEdit95: TDBEdit;
    Label98: TLabel;
    DBEdit96: TDBEdit;
    Label99: TLabel;
    DBEdit97: TDBEdit;
    Label100: TLabel;
    GroupBox8: TGroupBox;
    Label89: TLabel;
    Label92: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    Label108: TLabel;
    DBEdit98: TDBEdit;
    Label109: TLabel;
    DBEdit99: TDBEdit;
    GerarBoletos1Button: TPngSpeedButton;
    GerarBoletos1: TMenuItem;
    N3: TMenuItem;
    TabSheet6: TTabSheet;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    Label110: TLabel;
    DBEdit100: TDBEdit;
    Label126: TLabel;
    DBComboBox4: TDBComboBox;
    DBComboBox8: TDBComboBox;
    Label127: TLabel;
    Label128: TLabel;
    DBComboBox9: TDBComboBox;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    Label111: TLabel;
    DBMemo4: TDBMemo;
    DBEdit103: TDBEdit;
    Label112: TLabel;
    TRVendas: TFDTransaction;
    TRVendasItens: TFDTransaction;
    UPVendas: TFDUpdateSQL;
    UPVendasItens: TFDUpdateSQL;
    TBVendas: TFDQuery;
    TBVendasVED_ALIQICMSCREDSN: TFMTBCDField;
    TBVendasVED_BAIRRO: TStringField;
    TBVendasVED_BAIXADATA: TDateField;
    TBVendasVED_BAIXAPOR: TStringField;
    TBVendasVED_BASECOFINS: TFMTBCDField;
    TBVendasVED_BASECOFINSST: TFMTBCDField;
    TBVendasVED_BASEICMS: TFMTBCDField;
    TBVendasVED_BASEICMSST: TFMTBCDField;
    TBVendasVED_BASEII: TFMTBCDField;
    TBVendasVED_BASEIPI: TFMTBCDField;
    TBVendasVED_BASEISS: TFMTBCDField;
    TBVendasVED_BASEPIS: TFMTBCDField;
    TBVendasVED_BASEPISST: TFMTBCDField;
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
    TBVendasVED_HRATUALIZACAO: TTimeField;
    TBVendasVED_HRCADASTRO: TTimeField;
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
    TBVendasVED_VEICULOPLACA: TStringField;
    TBVendasVED_VEICULOPLACAUF: TStringField;
    TBVendasVED_VEICULORNTC: TStringField;
    TBVendasVED_VENDEDOR: TIntegerField;
    TBVendasVED_VIAINTERNET: TStringField;
    TBVendasVED_VIAINTERNETSTATUS: TStringField;
    TBVendasVED_VOLUMES: TIntegerField;
    TBVendasVED_VOLUMESNUM: TStringField;
    TBVendasItens: TFDQuery;
    TBVendasItensVEI_ALIQCOFINS: TFMTBCDField;
    TBVendasItensVEI_ALIQCOFINSST: TFMTBCDField;
    TBVendasItensVEI_ALIQFCP: TFMTBCDField;
    TBVendasItensVEI_ALIQFCPST: TFMTBCDField;
    TBVendasItensVEI_ALIQICMS: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSADICST: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSINTER: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSINTERPART: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSRED: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSST: TFMTBCDField;
    TBVendasItensVEI_ALIQICMSSTRET: TFMTBCDField;
    TBVendasItensVEI_ALIQII: TFMTBCDField;
    TBVendasItensVEI_ALIQIPI: TFMTBCDField;
    TBVendasItensVEI_ALIQISS: TFMTBCDField;
    TBVendasItensVEI_ALIQPIS: TFMTBCDField;
    TBVendasItensVEI_ALIQPISST: TFMTBCDField;
    TBVendasItensVEI_ALMOXARIFADO: TIntegerField;
    TBVendasItensVEI_BASECOFINS: TFMTBCDField;
    TBVendasItensVEI_BASECOFINSST: TFMTBCDField;
    TBVendasItensVEI_BASEICMS: TFMTBCDField;
    TBVendasItensVEI_BASEICMSRED: TFMTBCDField;
    TBVendasItensVEI_BASEICMSST: TFMTBCDField;
    TBVendasItensVEI_BASEICMSSTRET: TFMTBCDField;
    TBVendasItensVEI_BASEII: TFMTBCDField;
    TBVendasItensVEI_BASEIPI: TFMTBCDField;
    TBVendasItensVEI_BASEISS: TFMTBCDField;
    TBVendasItensVEI_BASEPIS: TFMTBCDField;
    TBVendasItensVEI_BASEPISST: TFMTBCDField;
    TBVendasItensVEI_BENEFICIO: TStringField;
    TBVendasItensVEI_CEST: TStringField;
    TBVendasItensVEI_CFOP: TIntegerField;
    TBVendasItensVEI_CIDADEISS: TIntegerField;
    TBVendasItensVEI_CLASSFISCAL: TStringField;
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
    TBVendasItensVEI_CSTICMS: TIntegerField;
    TBVendasItensVEI_CSTIPI: TIntegerField;
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
    TBVendasItensVEI_VALORCOFINS: TFMTBCDField;
    TBVendasItensVEI_VALORCOFINSST: TFMTBCDField;
    TBVendasItensVEI_VALORCOMISSAO: TFMTBCDField;
    TBVendasItensVEI_VALORFCP: TFMTBCDField;
    TBVendasItensVEI_VALORFCPST: TFMTBCDField;
    TBVendasItensVEI_VALORFRETE: TFMTBCDField;
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
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure FinalizarNota1Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure AtualizarItens1Click(Sender: TObject);
    procedure ImprimirNota1Click(Sender: TObject);
    procedure CadastroDeCondicoesDePagamento1Click(Sender: TObject);
    procedure CadastroDeClientes1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LocalizarNotaNoContasAReceber1Click(Sender: TObject);
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
    procedure DBEdit42KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
    procedure DBEdit45Exit(Sender: TObject);
    procedure DBEdit45KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton18Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CadastroDeEnderecos1Click(Sender: TObject);
    procedure CadastroDeClassificacoesFiscais1Click(Sender: TObject);
    procedure CadastroDeImpostoICMS1Click(Sender: TObject);
    procedure CadastroDeImpostoIPI1Click(Sender: TObject);
    procedure CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
    procedure CadastroDeImpostoISS1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure PngSpeedButton5Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
    procedure AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
    procedure DBEdit30Enter(Sender: TObject);
    procedure DBEdit26Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit42Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit45Enter(Sender: TObject);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure GerarBoletos1Click(Sender: TObject);
  private
    { Private declarations }
    procedure SetVendedor(CodVend: Integer);
    procedure SetCondicao(CodCondicao: Integer);
  public
    { Public declarations }
  end;

var
  FormNotas: TFormNotas;

implementation
uses DataMod, ShellAPI, VendedoresLoc, FornecedoresLoc, ClientesLoc, Main, Produtos,
  CondicoesLoc, Condicoes, Clientes, NotasLoc, NotasRel, FuncoesFirenet,
  NotasItens, NotasFinalizar, Funcoes1, NaturezasLoc, Naturezas,
  Receber, NotasCancelar, EnderecosRuasLoc, Enderecos, ClassFiscal, Icms, Ipi, Iss,
  Piscofins, Fornecedores, NotasAlterarDesconto,
  NotasAlterarFreteSeguroAcessorias, ReceberLoc, DataModSearch,
  NotasGerarBoletos;
{$R *.dfm}

procedure TFormNotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBNotas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormNotas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNotas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNotas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNotasLoc, FormNotasLoc);
  FormNotasLoc.ShowModal;
  if NotasLoc.Procurar then
  begin
    DM.TBNotas.Close;
    DM.TBNotas.ParamByName('codigo').AsInteger:=FormNotasLoc.QYNotasNOT_CODIGO.Value;
    DM.TBNotas.Open;

    DM.TBNotasItens.Close;
    DM.TBNotasItens.Open;
  end;
  FormNotasLoc.Free;
  FormNotasLoc:=nil;
end;

procedure TFormNotas.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormNotasRel, FormNotasRel);
  FormNotasRel.ShowModal;
  FormNotasRel.Free;
  FormNotasRel:=nil;
end;

procedure TFormNotas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormNotas.SetVendedor(CodVend: Integer);
begin
  DMS.QYVendedores.Close;
  DMS.QYVendedores.ParamByName('codigo').AsInteger:=CodVend;
  DMS.QYVendedores.Open;
  if not DMS.QYVendedores.IsEmpty then
  begin
    DM.TBNotasNOT_VENDEDOR.Value:=DMS.QYVendedoresVEN_CODIGO.Value;
    DM.TBNotasVEN_NOME.Value:=DMS.QYVendedoresVEN_NOME.Value;
    DM.TBNotasNOT_COMISSAO.Value:=DMS.QYVendedoresVEN_COMISSAO.Value;
  end else
  begin
    DM.TBNotasNOT_VENDEDOR.Clear;
    DM.TBNotasVEN_NOME.Clear;
    DM.TBNotasNOT_COMISSAO.Clear;
  end;
  DMS.QYVendedores.Close;
end;

procedure TFormNotas.SetCondicao(CodCondicao: Integer);
begin
  DMS.QYCondicoes.Close;
  DMS.QYCondicoes.ParamByName('codigo').AsInteger:=CodCondicao;
  DMS.QYCondicoes.Open;
  if not DMS.QYCondicoes.IsEmpty then
  begin
    DM.TBNotasNOT_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
    DM.TBNotasCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNotasNOT_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    DM.TBNotasNOT_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
  end else
  begin
    DM.TBNotasNOT_CONDICAO.Clear;
    DM.TBNotasCPG_DESCRICAO.Clear;
    DM.TBNotasNOT_FORMAPAGTO.Clear;
  end;
  DMS.QYCondicoes.Close;
end;

procedure TFormNotas.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit5Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit5,DBEdit32,DBEdit34,DM.TBNotas);
end;

procedure TFormNotas.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormNotas.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotas.SpeedButton9Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit5,DBEdit32,DBEdit34,DM.TBNotas);
end;

procedure TFormNotas.DBEdit26Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit26Exit(Sender: TObject);
begin
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNotasNOT_TRANSPCIDADE.Clear;
    DM.TBNotasNOT_TRANSPCNPJ.Clear;
    DM.TBNotasNOT_TRANSPCPF.Clear;
    DM.TBNotasNOT_TRANSPEMAIL.Clear;
    DM.TBNotasNOT_TRANSPENDERECO.Clear;
    DM.TBNotasNOT_TRANSPESTADO.Clear;
    DM.TBNotasNOT_TRANSPFONE.Clear;
    DM.TBNotasNOT_TRANSPIE.Clear;
    DM.TBNotasNOT_TRANSPNOME.Clear;
    DM.TBNotasNOT_TRANSPORTADORA.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      DM.TBNotasNOT_TRANSPCIDADE.Value:=DMS.QYFornecedoresFOR_CIDADE.Value;
      DM.TBNotasNOT_TRANSPCNPJ.Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
      DM.TBNotasNOT_TRANSPCPF.Value:=DMS.QYFornecedoresFOR_CPF.Value;
      DM.TBNotasNOT_TRANSPEMAIL.Value:=DMS.QYFornecedoresFOR_EMAIL.Value;
      DM.TBNotasNOT_TRANSPENDERECO.Value:=DMS.QYFornecedoresFOR_ENDERECO.Value;
      DM.TBNotasNOT_TRANSPESTADO.Value:=DMS.QYFornecedoresFOR_ESTADO.Value;
      DM.TBNotasNOT_TRANSPFONE.Value:=DMS.QYFornecedoresFOR_FONE1.Value;
      DM.TBNotasNOT_TRANSPIE.Value:=DMS.QYFornecedoresFOR_IE.Value;
      DM.TBNotasNOT_TRANSPNOME.Value:=DMS.QYFornecedoresFOR_NOME.Value;
      DM.TBNotasNOT_TRANSPORTADORA.Value:=DMS.QYFornecedoresFOR_CODIGO.Value;
    end else
    begin
      DM.TBNotasNOT_TRANSPCIDADE.Clear;
      DM.TBNotasNOT_TRANSPCNPJ.Clear;
      DM.TBNotasNOT_TRANSPCPF.Clear;
      DM.TBNotasNOT_TRANSPEMAIL.Clear;
      DM.TBNotasNOT_TRANSPENDERECO.Clear;
      DM.TBNotasNOT_TRANSPESTADO.Clear;
      DM.TBNotasNOT_TRANSPFONE.Clear;
      DM.TBNotasNOT_TRANSPIE.Clear;
      DM.TBNotasNOT_TRANSPNOME.Clear;
      DM.TBNotasNOT_TRANSPORTADORA.Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure TFormNotas.DBEdit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormNotas.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    DM.TBNotas.Edit;
    DM.TBNotasNOT_TRANSPCIDADE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CIDADE.Value;
    DM.TBNotasNOT_TRANSPCNPJ.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
    DM.TBNotasNOT_TRANSPCPF.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CPF.Value;
    DM.TBNotasNOT_TRANSPEMAIL.Value:=FormFornecedoresLoc.QYFornecedoresFOR_EMAIL.Value;
    DM.TBNotasNOT_TRANSPENDERECO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ENDERECO.Value;
    DM.TBNotasNOT_TRANSPESTADO.Value:=FormFornecedoresLoc.QYFornecedoresFOR_ESTADO.Value;
    DM.TBNotasNOT_TRANSPFONE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_FONE1.Value;
    DM.TBNotasNOT_TRANSPIE.Value:=FormFornecedoresLoc.QYFornecedoresFOR_IE.Value;
    DM.TBNotasNOT_TRANSPNOME.Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    DM.TBNotasNOT_TRANSPORTADORA.Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure TFormNotas.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit4Exit(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNotasNOT_BAIRRO.Clear;
    DM.TBNotasNOT_CEP.Clear;
    DM.TBNotasNOT_CIDADE.Clear;
    DM.TBNotasNOT_CIDADECODIGO.Clear;
    DM.TBNotasNOT_CLIENTE.Clear;
    DM.TBNotasNOT_CNPJ.Clear;
    DM.TBNotasNOT_COMPLEMENTO.Clear;
    DM.TBNotasNOT_CONTATO.Clear;
    DM.TBNotasNOT_CPF.Clear;
    DM.TBNotasNOT_DESCPORCCLIENTE.Value:=0;
    DM.TBNotasNOT_ENDERECO.Clear;
    DM.TBNotasNOT_ESTADO.Clear;
    DM.TBNotasNOT_ESTADOCODIGO.Clear;
    DM.TBNotasNOT_EXPEDIDOPOR.Clear;
    DM.TBNotasNOT_FONE1.Clear;
    DM.TBNotasNOT_IE.Clear;
    DM.TBNotasNOT_NOME.Clear;
    DM.TBNotasNOT_NUMERO.Clear;
    DM.TBNotasNOT_PAIS.Clear;
    DM.TBNotasNOT_PAISCODIGO.Clear;
    DM.TBNotasNOT_RG.Clear;
    DM.TBNotasNOT_TABELAPRECO.Value;
    DM.TBNotasNOT_VENDEDOR.Clear;
    DM.TBNotasVEN_NOME.Clear;
    DM.TBNotasVEN_NOME1.Clear;
  end;
begin
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    LimparCampos;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
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

      DM.TBNotasNOT_BAIRRO.Value:=DMS.QYClientesCLI_BAIRRO.Value;
      DM.TBNotasNOT_CEP.Value:=DMS.QYClientesCLI_CEP.Value;
      DM.TBNotasNOT_CIDADE.Value:=DMS.QYClientesCLI_CIDADE.Value;
      DM.TBNotasNOT_CIDADECODIGO.Value:=DMS.QYClientesCLI_CIDADECODIGO.Value;
      DM.TBNotasNOT_CLIENTE.Value:=DMS.QYClientesCLI_CODIGO.Value;
      DM.TBNotasNOT_CNPJ.Value:=DMS.QYClientesCLI_CNPJ.Value;
      DM.TBNotasNOT_COMPLEMENTO.Value:=DMS.QYClientesCLI_COMPLEMENTO.Value;
      DM.TBNotasNOT_CONDICAO.Value:=DMS.QYClientesCLI_CONDICAO.Value;
      DM.TBNotasNOT_CONTATO.Value:=DMS.QYClientesCLI_CONTATO.Value;
      DM.TBNotasNOT_CPF.Value:=DMS.QYClientesCLI_CPF.Value;
      DM.TBNotasNOT_DESCPORCCLIENTE.Value:=DMS.QYClientesCLI_DESCONTO.Value;
      DM.TBNotasNOT_ENDERECO.Value:=DMS.QYClientesCLI_ENDERECO.Value;
      DM.TBNotasNOT_ESTADO.Value:=DMS.QYClientesCLI_ESTADO.Value;
      DM.TBNotasNOT_ESTADOCODIGO.Value:=DMS.QYClientesCLI_ESTADOCODIGO.Value;
      if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBNotasNOT_EXPEDIDOPOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      DM.TBNotasNOT_FONE1.Value:=DMS.QYClientesCLI_FONE1.Value;
      //campo aliquota....
      DM.TBNotasNOT_IE.Value:=DMS.QYClientesCLI_IE.Value;
      DM.TBNotasNOT_NOME.Value:=DMS.QYClientesCLI_NOME.Value;
      DM.TBNotasNOT_NUMERO.Value:=DMS.QYClientesCLI_NUMERO.Value;
      DM.TBNotasNOT_PAIS.Value:=DMS.QYClientesCLI_PAIS.Value;
      DM.TBNotasNOT_PAISCODIGO.Value:=DMS.QYClientesCLI_PAISCODIGO.Value;
      DM.TBNotasNOT_RG.Value:=DMS.QYClientesCLI_RG.Value;
      DM.TBNotasNOT_TABELAPRECO.Value:=DMS.QYClientesCLI_TABELAPRECO.Value;
      DM.TBNotasNOT_VENDEDOR.Value:=DMS.QYClientesCLI_VENDEDOR.Value;
      //se cliente é fora do estado, seta a CFOP para fora do estado.
      if DM.TBNotasNOT_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
      DM.TBNotasNOT_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
      DM.TBNotasNOT_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
      DBEdit42Exit(DBEdit42 as TObject);
      //...

      SetVendedor(DM.TBNotasNOT_VENDEDOR.Value);
      SetCondicao(DM.TBNotasNOT_CONDICAO.Value);
    end else
    begin
      LimparCampos;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure TFormNotas.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormNotas.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotas.SpeedButton1Click(Sender: TObject);
var Qtde: Integer; Valor: Currency;
  procedure LimparCampos;
  begin
    DM.TBNotasNOT_BAIRRO.Clear;
    DM.TBNotasNOT_CEP.Clear;
    DM.TBNotasNOT_CIDADE.Clear;
    DM.TBNotasNOT_CIDADECODIGO.Clear;
    DM.TBNotasNOT_CLIENTE.Clear;
    DM.TBNotasNOT_CNPJ.Clear;
    DM.TBNotasNOT_COMPLEMENTO.Clear;
    //campo condicao...
    DM.TBNotasNOT_CONTATO.Clear;
    DM.TBNotasNOT_CPF.Clear;
    DM.TBNotasNOT_DESCPORCCLIENTE.Value:=0;
    DM.TBNotasNOT_ENDERECO.Clear;
    DM.TBNotasNOT_ESTADO.Clear;
    DM.TBNotasNOT_ESTADOCODIGO.Clear;
    DM.TBNotasNOT_EXPEDIDOPOR.Clear;
    DM.TBNotasNOT_FONE1.Clear;
    DM.TBNotasNOT_IE.Clear;
    DM.TBNotasNOT_NOME.Clear;
    DM.TBNotasNOT_NUMERO.Clear;
    DM.TBNotasNOT_PAIS.Clear;
    DM.TBNotasNOT_PAISCODIGO.Clear;
    DM.TBNotasNOT_RG.Clear;
    DM.TBNotasNOT_TABELAPRECO.Clear;
    DM.TBNotasNOT_VENDEDOR.Clear;
    DM.TBNotasVEN_NOME.Clear;
    DM.TBNotasVEN_NOME1.Clear;
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
        DM.TBNotas.Edit;
        LimparCampos;
        Exit;
      end;
    end;
    ChecarContasEmAtraso(FormClientesLoc.QYClientesCLI_CODIGO.Value,Qtde,Valor);
    if Qtde>=1 then
    begin
      MessageDlg('Existem '+IntToStr(Qtde)+' débitos vencidos a mais de '+IntToStr(DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value)+' dias para este cliente. Total Vencido: '+Format('%m',[Valor])+'.',mtWarning,[mbOk],0);
      DM.TBNotas.Edit;
      LimparCampos;
      Exit;
    end;
    DM.TBNotas.Edit;
    DM.TBNotasNOT_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    DM.TBNotasNOT_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    DM.TBNotasNOT_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    DM.TBNotasNOT_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    DM.TBNotasNOT_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBNotasNOT_CNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJ.Value;
    DM.TBNotasNOT_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    DM.TBNotasNOT_CONDICAO.Value:=FormClientesLoc.QYClientesCLI_CONDICAO.Value; //campo a mais.
    DM.TBNotasNOT_CONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM.TBNotasNOT_CPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM.TBNotasNOT_DESCPORCCLIENTE.Value:=FormClientesLoc.QYClientesCLI_DESCONTO.Value;
    DM.TBNotasNOT_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    DM.TBNotasNOT_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    DM.TBNotasNOT_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    if DM.TBParametrosPAR_EXPEDIDOPORVENDEDOR.Value='S' then DM.TBNotasNOT_EXPEDIDOPOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    DM.TBNotasNOT_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    //campo aliquota.
    DM.TBNotasNOT_IE.Value:=FormClientesLoc.QYClientesCLI_IE.Value;
    DM.TBNotasNOT_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM.TBNotasNOT_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    DM.TBNotasNOT_PAIS.Value:=FormClientesLoc.QYClientesCLI_PAIS.Value;
    DM.TBNotasNOT_PAISCODIGO.Value:=FormClientesLoc.QYClientesCLI_PAISCODIGO.Value;
    DM.TBNotasNOT_RG.Value:=FormClientesLoc.QYClientesCLI_RG.Value;
    DM.TBNotasNOT_TABELAPRECO.Value:=FormClientesLoc.QYClientesCLI_TABELAPRECO.Value;
    DM.TBNotasNOT_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    //se cliente é fora do estado, seta a CFOP para fora do estado.
    if DM.TBNotasNOT_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value then
    DM.TBNotasNOT_CFOP.Value:=DM.TBParametrosPAR_CFOPFORAPADRAO.Value else
    DM.TBNotasNOT_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
    DBEdit42Exit(DBEdit42 as TObject);
    //...
    SetVendedor(DM.TBNotasNOT_VENDEDOR.Value);
    SetCondicao(DM.TBNotasNOT_CONDICAO.Value);
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormNotas.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM.TBNotas.State in [dsInsert, dsEdit] then
          try
            DM.TBNotas.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormNotas.PngSpeedButton1Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBNotasNOT_CPF.IsNull) and (DM.TBNotasNOT_CPF.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBNotasNOT_CPF.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal)
  end else
  MessageDlg('CPF não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormNotas.PngSpeedButton3Click(Sender: TObject);
var E: TEdit;
begin
  if (not DM.TBNotasNOT_CNPJ.IsNull) and (DM.TBNotasNOT_CNPJ.Value<>'  .   .   /    -  ') then
  begin
    E:=TEdit.Create(Self);
    E.Text:=LimparFormatacao(DM.TBNotasNOT_CNPJ.Value);
    E.ParentWindow:=Application.Handle;
    E.SelectAll;
    E.CopyToClipboard;
    E.Destroy;
    ShellExecute(GetDesktopWindow,'open',PChar('http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/Cnpjreva_Solicitacao.asp'),nil,nil,sw_ShowNormal)
  end else
  MessageDlg('CNPJ não cadastrado.',mtError,[mbOk],0);
end;

procedure TFormNotas.PngSpeedButton4Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota não contém itens.');

  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NOI_QUANTIDADETROCA) as QTDE from NOTASITENS where NOI_NOTA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta nota contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormNotasAlterarDesconto, FormNotasAlterarDesconto);
  DescontoEmValor:=False;
  FormNotasAlterarDesconto.Edit1.Text:=DM.TBNotasNOT_DESCPORC.AsString;
  FormNotasAlterarDesconto.ShowModal;
  FormNotasAlterarDesconto.Free;
  FormNotasAlterarDesconto:=nil;
end;

procedure TFormNotas.PngSpeedButton5Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota não contém itens.');

  //verifica se tem itens que contém troca.
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(NOI_QUANTIDADETROCA) as QTDE from NOTASITENS where NOI_NOTA=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').Value>0 then
  begin
    DM.QYAux.Close;
    MessageDlg('Esta nota contém itens para troca. Só é possível fazer o desconto direto nos itens.',mtError,[mbOk],0);
    Exit;
  end;
  DM.QYAux.Close;
  //...

  Application.CreateForm(TFormNotasAlterarDesconto, FormNotasAlterarDesconto);
  DescontoEmValor:=True;
  FormNotasAlterarDesconto.Label1.Caption:='Valor do Desconto:';
  FormNotasAlterarDesconto.Edit1.Text:=DM.TBNotasNOT_DESCVALOR.AsString;
  FormNotasAlterarDesconto.ShowModal;
  FormNotasAlterarDesconto.Free;
  FormNotasAlterarDesconto:=nil;
end;

procedure TFormNotas.PngSpeedButton6Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota não contém itens.');

  Application.CreateForm(TFormNotasAlterarFreteSeguroAcessorias, FormNotasAlterarFreteSeguroAcessorias);
  Campo:='FRETE';
  FormNotasAlterarFreteSeguroAcessorias.Caption:='Alterar Frete';
  FormNotasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Frete:';
  FormNotasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNotasNOT_VALORFRETE.AsString;
  FormNotasAlterarFreteSeguroAcessorias.ShowModal;
  FormNotasAlterarFreteSeguroAcessorias.Free;
  FormNotasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNotas.PngSpeedButton7Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota não contém itens.');

  Application.CreateForm(TFormNotasAlterarFreteSeguroAcessorias, FormNotasAlterarFreteSeguroAcessorias);
  Campo:='SEGURO';
  FormNotasAlterarFreteSeguroAcessorias.Caption:='Alterar Seguro';
  FormNotasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor do Seguro:';
  FormNotasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNotasNOT_VALORSEGURO.AsString;
  FormNotasAlterarFreteSeguroAcessorias.ShowModal;
  FormNotasAlterarFreteSeguroAcessorias.Free;
  FormNotasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNotas.PngSpeedButton8Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota não contém itens.');

  Application.CreateForm(TFormNotasAlterarFreteSeguroAcessorias, FormNotasAlterarFreteSeguroAcessorias);
  Campo:='ACESSORIAS';
  FormNotasAlterarFreteSeguroAcessorias.Caption:='Alterar Desp. Acessórias';
  FormNotasAlterarFreteSeguroAcessorias.Label1.Caption:='Valor das Despesas Acessórias:';
  FormNotasAlterarFreteSeguroAcessorias.Edit1.Text:=DM.TBNotasNOT_VALORDESPACES.AsString;
  FormNotasAlterarFreteSeguroAcessorias.ShowModal;
  FormNotasAlterarFreteSeguroAcessorias.Free;
  FormNotasAlterarFreteSeguroAcessorias:=nil;
end;

procedure TFormNotas.BitBtn1Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  DM.TBNotasItens.Insert;
  Application.CreateForm(TFormNotasItens, FormNotasItens);
  FormNotasItens.ShowModal;
  FormNotasItens.Free;
  FormNotasItens:=nil;
end;

procedure TFormNotas.BitBtn2Click(Sender: TObject);
begin
  AbortIf(DM.TBNotasItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNotasItens.Delete;
    DM.CalcularTotaisNota(True); //era true.
  end;
end;

procedure TFormNotas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormNotas);
end;

procedure TFormNotas.GerarBoletos1Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='A','Nota não finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  Application.CreateForm(TFormNotasGerarBoletos, FormNotasGerarBoletos);
  FormNotasGerarBoletos.QYReceber.SQL.Clear;
  FormNotasGerarBoletos.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
  FormNotasGerarBoletos.QYReceber.Open;
  FormNotasGerarBoletos.QYTotalReceber.SQL.Clear;
  FormNotasGerarBoletos.QYTotalReceber.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from RECEBER where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value)+'/%')+' and REE_STATUS=''A''');
  FormNotasGerarBoletos.QYTotalReceber.Open;
  FormNotasGerarBoletos.ShowModal;
  FormNotasGerarBoletos.Free;
  FormNotasGerarBoletos:=nil;
end;

procedure TFormNotas.BitBtn4Click(Sender: TObject);
begin
  AbortIf(DM.TBNotasItens.IsEmpty,'Não existe nenhum item para editar.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  DM.TBProdutos.Close; //localiza para poder mostrar o grupo, familia e estoque atual.
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value;
  DM.TBProdutos.Open;
  DM.TBNotasItens.Edit;
  Application.CreateForm(TFormNotasItens, FormNotasItens);
  FormNotasItens.DBEdit5.Enabled:=False;
  FormNotasItens.DBEdit5.Color:=clBtnFace;
  FormNotasItens.SpeedButton9.Enabled:=False;
  FormNotasItens.ShowModal;
  FormNotasItens.Free;
  FormNotasItens:=nil;
end;

procedure TFormNotas.BitBtn3Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  if MessageDlg('Deseja atualizar os preços conforme a tabela '+DM.TBNotasNOT_TABELAPRECO.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    if DM.TBNotas.State in [dsInsert, dsEdit] then
    DM.TBNotas.Post;
    DM.TBNotas.DisableControls;
    DM.TBNotasItens.DisableControls;
    DM.TBNotasItens.First;
    while not DM.TBNotasItens.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value;
      DM.TBProdutos.Open;
      DM.TBNotasItens.Edit;
      if DM.TBNotasNOT_TABELAPRECO.Value='V' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='1' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='2' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='3' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='4' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='5' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBNotasNOT_TABELAPRECO.Value='6' then DM.TBNotasItensNOI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
      DM.TBNotasItens.Post;
      DM.TBNotasItens.Next;
    end;
    DM.TBNotasItens.EnableControls;
    DM.TBNotas.EnableControls;
  end;
end;

procedure TFormNotas.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormNotas.FinalizarNota1Click(Sender: TObject);
var ChecagemEstoque: WideString;
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasItens.IsEmpty,'Esta nota ainda não tem itens');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Esta nota foi cancelada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');

  {$REGION 'VERIFICAR_ESTOQUE'}
  if (DM.TBParametrosPAR_VENDEESTOQUEZERO.Value='N') and (DM.TBNotasNOT_ENTRADASAIDA.Value='S') then //se for saída, checa estoque.
  begin
    ChecagemEstoque:='';
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(NOI_QUANTIDADE) as QTDE, NOI_PRODUTO from NOTASITENS where NOI_NOTA=:codigo group by NOI_PRODUTO order by NOI_PRODUTO');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('NOI_PRODUTO').AsInteger;
      DM.TBProdutos.Open;
      if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value<DM.QYAux.FieldByName('QTDE').AsFloat) then
      ChecagemEstoque:=ChecagemEstoque+IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+' - Qtde: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    AbortIf(ChecagemEstoque<>'','O(s) produto(s) abaixo não tem quantidade suficiente em estoque.'+#13#13+ChecagemEstoque);
  end;
  {$ENDREGION VERIFICAR_ESTOQUE}

  if MessageDlg('Finalizar a nota?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //garante o texto da simulação correto.
    BitBtn5.Click; //clica no botao para simular condições de pagamento.
    DM.TBNotas.Post;

    //Atualiza o pedido de venda para deixar igual a Nota.
    if not DM.TBNotasNOT_VENDA.IsNull then
    begin
      TBVendas.Close;
      TBVendas.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_VENDA.Value;
      TBVendas.Open;
      TBVendas.Edit;
      { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
      {$REGION 'CAMPOS VENDAS'}
      TBVendasVED_ALIQICMSCREDSN.Value:=     DM.TBNotasNOT_ALIQICMSCREDSN.Value;
      TBVendasVED_BAIRRO.Value:=             DM.TBNotasNOT_BAIRRO.Value;
      //TBVendasVED_BAIXADATA.Value:=          DM.TBNotasNOT_BAIXADATA.Value;
      //TBVendasVED_BAIXAPOR.Value:=           DM.TBNotasNOT_BAIXAPOR.Value;
      TBVendasVED_BASECOFINS.Value:=         DM.TBNotasNOT_BASECOFINS.Value;
      TBVendasVED_BASECOFINSST.Value:=       DM.TBNotasNOT_BASECOFINSST.Value;
      TBVendasVED_BASEICMS.Value:=           DM.TBNotasNOT_BASEICMS.Value;
      TBVendasVED_BASEICMSST.Value:=         DM.TBNotasNOT_BASEICMSST.Value;
      TBVendasVED_BASEII.Value:=             DM.TBNotasNOT_BASEII.Value;
      TBVendasVED_BASEIPI.Value:=            DM.TBNotasNOT_BASEIPI.Value;
      TBVendasVED_BASEISS.Value:=            DM.TBNotasNOT_BASEISS.Value;
      TBVendasVED_BASEPIS.Value:=            DM.TBNotasNOT_BASEPIS.Value;
      TBVendasVED_BASEPISST.Value:=          DM.TBNotasNOT_BASEPISST.Value;
      TBVendasVED_CEP.Value:=                DM.TBNotasNOT_CEP.Value;
      TBVendasVED_CFOP.Value:=               DM.TBNotasNOT_CFOP.Value;
      TBVendasVED_CFOPDESC.Value:=           DM.TBNotasNOT_CFOPDESC.Value;
      TBVendasVED_CIDADE.Value:=             DM.TBNotasNOT_CIDADE.Value;
      TBVendasVED_CIDADECODIGO.Value:=       DM.TBNotasNOT_CIDADECODIGO.Value;
      TBVendasVED_CLIENTE.Value:=            DM.TBNotasNOT_CLIENTE.Value;
      TBVendasVED_CNPJ.Value:=               DM.TBNotasNOT_CNPJ.Value;
      //TBVendasVED_CODIGO.Value:=             DM.TBNotasNOT_CODIGO.Value;
      //TBVendasVED_CODIMPORTACAO.Value:=      DM.TBNotasNOT_CODIMPORTACAO.Value;
      TBVendasVED_COMISSAO.Value:=           DM.TBNotasNOT_COMISSAO.Value;
      TBVendasVED_COMISSAOPOR.Value:=        DM.TBNotasNOT_COMISSAOPOR.Value;
      TBVendasVED_COMPLEMENTO.Value:=        DM.TBNotasNOT_COMPLEMENTO.Value;
      TBVendasVED_CONDICAO.Value:=           DM.TBNotasNOT_CONDICAO.Value;
      TBVendasVED_CONDICAOMEMO.Value:=       DM.TBNotasNOT_CONDICAOMEMO.Value;
      //TBVendasVED_CONFERIDO.Value:=
      //TBVendasVED_CONFERIDODATA.Value:=
      //TBVendasVED_CONFERIDOPOR.Value:=
      TBVendasVED_CONTATO.Value:=            DM.TBNotasNOT_CONTATO.Value;
      TBVendasVED_CPF.Value:=                DM.TBNotasNOT_CPF.Value;
      TBVendasVED_CUSTOTOTAL.Value:=         DM.TBNotasNOT_CUSTOTOTAL.Value;
      //TBVendasVED_DAV.Value:=
      TBVendasVED_DESCPORC.Value:=           DM.TBNotasNOT_DESCPORC.Value;
      TBVendasVED_DESCPORCCLIENTE.Value:=    DM.TBNotasNOT_DESCPORCCLIENTE.Value;
      TBVendasVED_DESCPORCCONDICAO.Value:=   DM.TBNotasNOT_DESCPORCCONDICAO.Value;
      TBVendasVED_DESCVALOR.Value:=          DM.TBNotasNOT_DESCVALOR.Value;
      TBVendasVED_DESTACARIMPOSTOS.Value:=   DM.TBNotasNOT_DESTACARIMPOSTOS.Value;
      TBVendasVED_DIAPREFERENCIAL.Value:=    DM.TBNotasNOT_DIAPREFERENCIAL.Value;
      TBVendasVED_DTATUALIZACAO.Value:=      DM.TBNotasNOT_DTATUALIZACAO.Value;
      //TBVendasVED_DTCADASTRO.Value:=         DM.TBNotasNOT_DTCADASTRO.Value;
      //TBVendasVED_DTEMISSAO.Value:=          DM.TBNotasNOT_DTEMISSAO.Value;
      //TBVendasVED_DTENTREGA.Value:=          nao tem DM.TBNotasNOT_DTENTREGA.Value;
      TBVendasVED_DTPRESTSERVICO.Value:=     DM.TBNotasNOT_DTPRESTSERVICO.Value;
      //TBVendasVED_DTSAIDA.Value:=            DM.TBNotasNOT_DTSAIDA.Value;
      TBVendasVED_ENDERECO.Value:=           DM.TBNotasNOT_ENDERECO.Value;
      TBVendasVED_ENTRADASAIDA.Value:=       DM.TBNotasNOT_ENTRADASAIDA.Value;
      //TBVendasVED_ENTREGUE.Value:=           DM.TBNotasNOT_ENTREGUE.Value;
      TBVendasVED_ESPECIE.Value:=            DM.TBNotasNOT_ESPECIE.Value;
      TBVendasVED_ESTADO.Value:=             DM.TBNotasNOT_ESTADO.Value;
      TBVendasVED_ESTADOCODIGO.Value:=       DM.TBNotasNOT_ESTADOCODIGO.Value;
      TBVendasVED_EXLOCAL.Value:=            DM.TBNotasNOT_EXLOCAL.Value;
      TBVendasVED_EXPEDIDOPOR.Value:=        DM.TBNotasNOT_EXPEDIDOPOR.Value;
      TBVendasVED_EXUFSAIDA.Value:=          DM.TBNotasNOT_EXUFSAIDA.Value;
      TBVendasVED_FONE1.Value:=              DM.TBNotasNOT_FONE1.Value;
      TBVendasVED_FORMAPAGTO.Value:=         DM.TBNotasNOT_FORMAPAGTO.Value;
      TBVendasVED_FRETE.Value:=              DM.TBNotasNOT_FRETE.Value;
      TBVendasVED_IDESTRANGEIRO.Value:=      DM.TBNotasNOT_IDESTRANGEIRO.Value;
      TBVendasVED_IE.Value:=                 DM.TBNotasNOT_IE.Value;
      TBVendasVED_INFOADICFISCO.Value:=      DM.TBNotasNOT_INFOADICFISCO.Value;
      TBVendasVED_INFOCOMPLEMENTAR.Value:=   DM.TBNotasNOT_INFOCOMPLEMENTAR.Value;
      TBVendasVED_LACRES.Value:=             DM.TBNotasNOT_LACRES.Value;
      TBVendasVED_LUCROPORC.Value:=          DM.TBNotasNOT_LUCROPORC.Value;
      TBVendasVED_LUCROVALOR.Value:=         DM.TBNotasNOT_LUCROVALOR.Value;
      //TBVendasVED_MANUAL.Value:=
      TBVendasVED_MARCA.Value:=              DM.TBNotasNOT_MARCA.Value;
      TBVendasVED_MOVIMENTAESTOQUE.Value:=   DM.TBNotasNOT_MOVIMENTAESTOQUE.Value;
      TBVendasVED_MOVIMENTAFINANCEIRO.Value:=DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value;
      //TBVendasVED_NFCE.Value:=
      //TBVendasVED_NFE.Value:=                DM.TBNotasNOT_NFE.Value;
      TBVendasVED_NOME.Value:=               DM.TBNotasNOT_NOME.Value;
      //TBVendasVED_NOTA.Value:=               DM.TBNotasNOT_NOTA.Value;
      TBVendasVED_NUMERO.Value:=             DM.TBNotasNOT_NUMERO.Value;
      TBVendasVED_OBSERVACOES.Value:=        DM.TBNotasNOT_OBSERVACOES.Value;
      TBVendasVED_PAIS.Value:=               DM.TBNotasNOT_PAIS.Value;
      TBVendasVED_PAISCODIGO.Value:=         DM.TBNotasNOT_PAISCODIGO.Value;
      TBVendasVED_PEDIDOCLIENTE.Value:=      DM.TBNotasNOT_PEDIDOCLIENTE.Value;
      TBVendasVED_PESOBRUTO.Value:=          DM.TBNotasNOT_PESOBRUTO.Value;
      TBVendasVED_PESOLIQ.Value:=            DM.TBNotasNOT_PESOLIQ.Value;
      //TBVendasVED_PRODUCAO.Value:=          naop tem DM.TBNotasNOT_PRODUCAO.Value;
      TBVendasVED_REBOQUEPLACA.Value:=       DM.TBNotasNOT_REBOQUEPLACA.Value;
      TBVendasVED_REBOQUEPLACAUF.Value:=     DM.TBNotasNOT_REBOQUEPLACAUF.Value;
      TBVendasVED_REBOQUERNTC.Value:=        DM.TBNotasNOT_REBOQUERNTC.Value;
      TBVendasVED_RG.Value:=                 DM.TBNotasNOT_RG.Value;
      TBVendasVED_SEQUENCIAITEM.Value:=      DM.TBNotasNOT_SEQUENCIAITEM.Value;
      //TBVendasVED_STATUS.Value:=             DM.TBNotasNOT_STATUS.Value;
      TBVendasVED_SUFRAMA.Value:=            DM.TBNotasNOT_SUFRAMA.Value;
      TBVendasVED_TABELAPRECO.Value:=        DM.TBNotasNOT_TABELAPRECO.Value;
      TBVendasVED_TIPOATENDIMENTO.Value:=    DM.TBNotasNOT_TIPOATENDIMENTO.Value;
      TBVendasVED_TIPOCONSUMIDOR.Value:=     DM.TBNotasNOT_TIPOCONSUMIDOR.Value;
      TBVendasVED_TIPOOPERACAO.Value:=       DM.TBNotasNOT_TIPOOPERACAO.Value;
      TBVendasVED_TOTALADUANA.Value:=        DM.TBNotasNOT_TOTALADUANA.Value;
      TBVendasVED_TOTALBRUTO.Value:=         DM.TBNotasNOT_TOTALBRUTO.Value;
      TBVendasVED_TOTALCOFINS.Value:=        DM.TBNotasNOT_TOTALCOFINS.Value;
      TBVendasVED_TOTALCOFINSST.Value:=      DM.TBNotasNOT_TOTALCOFINSST.Value;
      TBVendasVED_TOTALCOMISSAO.Value:=      DM.TBNotasNOT_TOTALCOMISSAO.Value;
      TBVendasVED_TOTALFCP.Value:=           DM.TBNotasNOT_TOTALFCP.Value;
      TBVendasVED_TOTALFCPST.Value:=         DM.TBNotasNOT_TOTALFCPST.Value;
      TBVendasVED_TOTALICMS.Value:=          DM.TBNotasNOT_TOTALICMS.Value;
      TBVendasVED_TOTALICMSCREDSN.Value:=    DM.TBNotasNOT_TOTALICMSCREDSN.Value;
      TBVendasVED_TOTALICMSST.Value:=        DM.TBNotasNOT_TOTALICMSST.Value;
      TBVendasVED_TOTALICMSUFDEST.Value:=    DM.TBNotasNOT_TOTALICMSUFDEST.Value;
      TBVendasVED_TOTALICMSUFREMET.Value:=   DM.TBNotasNOT_TOTALICMSUFREMET.Value;
      TBVendasVED_TOTALII.Value:=            DM.TBNotasNOT_TOTALII.Value;
      TBVendasVED_TOTALIOF.Value:=           DM.TBNotasNOT_TOTALIOF.Value;
      TBVendasVED_TOTALIPI.Value:=           DM.TBNotasNOT_TOTALIPI.Value;
      TBVendasVED_TOTALISS.Value:=           DM.TBNotasNOT_TOTALISS.Value;
      TBVendasVED_TOTALISSDEDUCAO.Value:=    DM.TBNotasNOT_TOTALISSDEDUCAO.Value;
      TBVendasVED_TOTALISSDESCCOND.Value:=   DM.TBNotasNOT_TOTALISSDESCCOND.Value;
      TBVendasVED_TOTALISSDESCINCOND.Value:= DM.TBNotasNOT_TOTALISSDESCINCOND.Value;
      TBVendasVED_TOTALISSOUTROS.Value:=     DM.TBNotasNOT_TOTALISSOUTROS.Value;
      TBVendasVED_TOTALISSRETENCAO.Value:=   DM.TBNotasNOT_TOTALISSRETENCAO.Value;
      TBVendasVED_TOTALITENS.Value:=         DM.TBNotasNOT_TOTALITENS.Value;
      TBVendasVED_TOTALPIS.Value:=           DM.TBNotasNOT_TOTALPIS.Value;
      TBVendasVED_TOTALPISST.Value:=         DM.TBNotasNOT_TOTALPISST.Value;
      TBVendasVED_TOTALPRODUTOS.Value:=      DM.TBNotasNOT_TOTALPRODUTOS.Value;
      TBVendasVED_TOTALSERVICOS.Value:=      DM.TBNotasNOT_TOTALSERVICOS.Value;
      TBVendasVED_TOTALTRIBUTOS.Value:=      DM.TBNotasNOT_TOTALTRIBUTOS.Value;
      TBVendasVED_TOTALTRIBUTOSEST.Value:=   DM.TBNotasNOT_TOTALTRIBUTOSEST.Value;
      TBVendasVED_TOTALTRIBUTOSFED.Value:=   DM.TBNotasNOT_TOTALTRIBUTOSFED.Value;
      TBVendasVED_TOTALTRIBUTOSIMP.Value:=   DM.TBNotasNOT_TOTALTRIBUTOSIMP.Value;
      TBVendasVED_TOTALTRIBUTOSMUN.Value:=   DM.TBNotasNOT_TOTALTRIBUTOSMUN.Value;
      TBVendasVED_TRANSPCIDADE.Value:=       DM.TBNotasNOT_TRANSPCIDADE.Value;
      TBVendasVED_TRANSPCNPJ.Value:=         DM.TBNotasNOT_TRANSPCNPJ.Value;
      TBVendasVED_TRANSPCPF.Value:=          DM.TBNotasNOT_TRANSPCPF.Value;
      TBVendasVED_TRANSPEMAIL.Value:=        DM.TBNotasNOT_TRANSPEMAIL.Value;
      TBVendasVED_TRANSPENDERECO.Value:=     DM.TBNotasNOT_TRANSPENDERECO.Value;
      TBVendasVED_TRANSPESTADO.Value:=       DM.TBNotasNOT_TRANSPESTADO.Value;
      TBVendasVED_TRANSPFONE.Value:=         DM.TBNotasNOT_TRANSPFONE.Value;
      TBVendasVED_TRANSPIE.Value:=           DM.TBNotasNOT_TRANSPIE.Value;
      TBVendasVED_TRANSPNOME.Value:=         DM.TBNotasNOT_TRANSPNOME.Value;
      TBVendasVED_TRANSPORTADORA.Value:=     DM.TBNotasNOT_TRANSPORTADORA.Value;
      TBVendasVED_USUARIO.Value:=            DM.TBNotasNOT_USUARIO.Value;
      TBVendasVED_VALORDESPACES.Value:=      DM.TBNotasNOT_VALORDESPACES.Value;
      TBVendasVED_VALORFRETE.Value:=         DM.TBNotasNOT_VALORFRETE.Value;
      TBVendasVED_VALORSEGURO.Value:=        DM.TBNotasNOT_VALORSEGURO.Value;
      TBVendasVED_VALORTOTAL.Value:=         DM.TBNotasNOT_VALORTOTAL.Value;
      TBVendasVED_VEICULOPLACA.Value:=       DM.TBNotasNOT_VEICULOPLACA.Value;
      TBVendasVED_VEICULOPLACAUF.Value:=     DM.TBNotasNOT_VEICULOPLACAUF.Value;
      TBVendasVED_VEICULORNTC.Value:=        DM.TBNotasNOT_VEICULORNTC.Value;
      TBVendasVED_VENDEDOR.Value:=           DM.TBNotasNOT_VENDEDOR.Value;
      //TBVendasVED_VIAINTERNET.Value:=        DM.TBNotasNOT_VIAINTERNET.Value;
      //TBVendasVED_VIAINTERNETSTATUS.Value:=  DM.TBNotasNOT_VIAINTERNETSTATUS.Value;
      TBVendasVED_VOLUMES.Value:=            DM.TBNotasNOT_VOLUMES.Value;
      TBVendasVED_VOLUMESNUM.Value:=         DM.TBNotasNOT_VOLUMESNUM.Value;
      {$ENDREGION}
      TBVendas.Post;

      //elimina os itens da venda e atualiza com os itens da Nota.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('delete from VENDASITENS where VEI_VENDA=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_VENDA.Value;
      DM.QYAux.ExecSQL;

      //insere novamente os itens da venda.
      TBVendasItens.Open;
      DM.TBNotasItens.First;
      while not DM.TBNotasItens.Eof do
      begin
        TBVendasItens.Insert;
        { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
        {$REGION 'CAMPOS VENDASITENS'}
        TBVendasItensVEI_ALIQCOFINS.Value:=         DM.TBNotasItensNOI_ALIQCOFINS.Value;
        TBVendasItensVEI_ALIQCOFINSST.Value:=       DM.TBNotasItensNOI_ALIQCOFINSST.Value;
        TBVendasItensVEI_ALIQFCP.Value:=            DM.TBNotasItensNOI_ALIQFCP.Value;
        TBVendasItensVEI_ALIQFCPST.Value:=          DM.TBNotasItensNOI_ALIQFCPST.Value;
        TBVendasItensVEI_ALIQICMS.Value:=           DM.TBNotasItensNOI_ALIQICMS.Value;
        TBVendasItensVEI_ALIQICMSADICST.Value:=     DM.TBNotasItensNOI_ALIQICMSADICST.Value;
        TBVendasItensVEI_ALIQICMSINTER.Value:=      DM.TBNotasItensNOI_ALIQICMSINTER.Value;
        TBVendasItensVEI_ALIQICMSINTERPART.Value:=  DM.TBNotasItensNOI_ALIQICMSINTERPART.Value;
        TBVendasItensVEI_ALIQICMSRED.Value:=        DM.TBNotasItensNOI_ALIQICMSRED.Value;
        TBVendasItensVEI_ALIQICMSST.Value:=         DM.TBNotasItensNOI_ALIQICMSST.Value;
        TBVendasItensVEI_ALIQICMSSTRET.Value:=      DM.TBNotasItensNOI_ALIQICMSSTRET.Value;
        TBVendasItensVEI_ALIQII.Value:=             DM.TBNotasItensNOI_ALIQII.Value;
        TBVendasItensVEI_ALIQIPI.Value:=            DM.TBNotasItensNOI_ALIQIPI.Value;
        TBVendasItensVEI_ALIQISS.Value:=            DM.TBNotasItensNOI_ALIQISS.Value;
        TBVendasItensVEI_ALIQPIS.Value:=            DM.TBNotasItensNOI_ALIQPIS.Value;
        TBVendasItensVEI_ALIQPISST.Value:=          DM.TBNotasItensNOI_ALIQPISST.Value;
        TBVendasItensVEI_ALMOXARIFADO.Value:=       DM.TBNotasItensNOI_ALMOXARIFADO.Value;
        TBVendasItensVEI_BASECOFINS.Value:=         DM.TBNotasItensNOI_BASECOFINS.Value;
        TBVendasItensVEI_BASECOFINSST.Value:=       DM.TBNotasItensNOI_BASECOFINSST.Value;
        TBVendasItensVEI_BASEICMS.Value:=           DM.TBNotasItensNOI_BASEICMS.Value;
        TBVendasItensVEI_BASEICMSRED.Value:=        DM.TBNotasItensNOI_BASEICMSRED.Value;
        TBVendasItensVEI_BASEICMSST.Value:=         DM.TBNotasItensNOI_BASEICMSST.Value;
        TBVendasItensVEI_BASEICMSSTRET.Value:=      DM.TBNotasItensNOI_BASEICMSSTRET.Value;
        TBVendasItensVEI_BASEII.Value:=             DM.TBNotasItensNOI_BASEII.Value;
        TBVendasItensVEI_BASEIPI.Value:=            DM.TBNotasItensNOI_BASEIPI.Value;
        TBVendasItensVEI_BASEISS.Value:=            DM.TBNotasItensNOI_BASEISS.Value;
        TBVendasItensVEI_BASEPIS.Value:=            DM.TBNotasItensNOI_BASEPIS.Value;
        TBVendasItensVEI_BASEPISST.Value:=          DM.TBNotasItensNOI_BASEPISST.Value;
        TBVendasItensVEI_BENEFICIO.Value:=          DM.TBNotasItensNOI_BENEFICIO.Value;
        TBVendasItensVEI_CEST.Value:=               DM.TBNotasItensNOI_CEST.Value;
        TBVendasItensVEI_CFOP.Value:=               DM.TBNotasItensNOI_CFOP.Value;
        TBVendasItensVEI_CIDADEISS.Value:=          DM.TBNotasItensNOI_CIDADEISS.Value;
        TBVendasItensVEI_CLASSFISCAL.Value:=        DM.TBNotasItensNOI_CLASSFISCAL.Value;
        //TBVendasItensVEI_CODIGO.Value:=            DM.TBNotasItensNOI_CODIGO.Value;
        TBVendasItensVEI_CODIGOBARRAS.Value:=       DM.TBNotasItensNOI_CODIGOBARRAS.Value;
        TBVendasItensVEI_CODIGOFAB.Value:=          DM.TBNotasItensNOI_CODIGOFAB.Value;
        TBVendasItensVEI_COMISSAO.Value:=           DM.TBNotasItensNOI_COMISSAO.Value;
        TBVendasItensVEI_COMPLEMENTO.Value:=        DM.TBNotasItensNOI_COMPLEMENTO.Value;
        TBVendasItensVEI_COMPOEBASEICMS.Value:=     DM.TBNotasItensNOI_COMPOEBASEICMS.Value;
        TBVendasItensVEI_COMPOEBASEICMSST.Value:=   DM.TBNotasItensNOI_COMPOEBASEICMSST.Value;
        TBVendasItensVEI_COMPOETOTAL.Value:=        DM.TBNotasItensNOI_COMPOETOTAL.Value;
        TBVendasItensVEI_CONVERSAO.Value:=          DM.TBNotasItensNOI_CONVERSAO.Value;
        TBVendasItensVEI_CSTCOFINS.Value:=          DM.TBNotasItensNOI_CSTCOFINS.Value;
        TBVendasItensVEI_CSTICMS.Value:=            DM.TBNotasItensNOI_CSTICMS.Value;
        TBVendasItensVEI_CSTIPI.Value:=             DM.TBNotasItensNOI_CSTIPI.Value;
        TBVendasItensVEI_CSTPIS.Value:=             DM.TBNotasItensNOI_CSTPIS.Value;
        TBVendasItensVEI_DESCMAX.Value:=            DM.TBNotasItensNOI_DESCMAX.Value;
        TBVendasItensVEI_DESCPORC.Value:=           DM.TBNotasItensNOI_DESCPORC.Value;
        TBVendasItensVEI_DESCRICAO.Value:=          DM.TBNotasItensNOI_DESCRICAO.Value;
        TBVendasItensVEI_DESCVALOR.Value:=          DM.TBNotasItensNOI_DESCVALOR.Value;
        TBVendasItensVEI_DESONERACAO.Value:=        DM.TBNotasItensNOI_DESONERACAO.Value;
        TBVendasItensVEI_DICNPJ.Value:=             DM.TBNotasItensNOI_DICNPJ.Value;
        TBVendasItensVEI_DIDATA.Value:=             DM.TBNotasItensNOI_DIDATA.Value;
        TBVendasItensVEI_DIDESEMBARACODATA.Value:=  DM.TBNotasItensNOI_DIDESEMBARACODATA.Value;
        TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:= DM.TBNotasItensNOI_DIDESEMBARACOLOCAL.Value;
        TBVendasItensVEI_DIDESEMBARACOUF.Value:=    DM.TBNotasItensNOI_DIDESEMBARACOUF.Value;
        TBVendasItensVEI_DIEXPORTADORCOD.Value:=    DM.TBNotasItensNOI_DIEXPORTADORCOD.Value;
        TBVendasItensVEI_DIINTERMEDIO.Value:=       DM.TBNotasItensNOI_DIINTERMEDIO.Value;
        TBVendasItensVEI_DINUMERO.Value:=           DM.TBNotasItensNOI_DINUMERO.Value;
        TBVendasItensVEI_DITERCEIROUF.Value:=       DM.TBNotasItensNOI_DITERCEIROUF.Value;
        TBVendasItensVEI_DITRANSPORTE.Value:=       DM.TBNotasItensNOI_DITRANSPORTE.Value;
        TBVendasItensVEI_DIVALORAFRMM.Value:=       DM.TBNotasItensNOI_DIVALORAFRMM.Value;
        //TBVendasItensVEI_DTENTREGA.Value:=        nao tem DM.TBNotasItensNOI_DTENTREGA.Value;
        TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=   DM.TBNotasItensNOI_ENQUADRAMENTOIPI.Value;
        TBVendasItensVEI_EXCECAO.Value:=            DM.TBNotasItensNOI_EXCECAO.Value;
        TBVendasItensVEI_EXCHAVEACESSO.Value:=      DM.TBNotasItensNOI_EXCHAVEACESSO.Value;
        TBVendasItensVEI_EXDRAWBACK.Value:=         DM.TBNotasItensNOI_EXDRAWBACK.Value;
        TBVendasItensVEI_EXQUANTIDADE.Value:=       DM.TBNotasItensNOI_EXQUANTIDADE.Value;
        TBVendasItensVEI_EXREGISTRO.Value:=         DM.TBNotasItensNOI_EXREGISTRO.Value;
        TBVendasItensVEI_FCI.Value:=                DM.TBNotasItensNOI_FCI.Value;
        TBVendasItensVEI_INCENTIVOISS.Value:=       DM.TBNotasItensNOI_INCENTIVOISS.Value;
        TBVendasItensVEI_INDICADORISS.Value:=       DM.TBNotasItensNOI_INDICADORISS.Value;
        TBVendasItensVEI_INFOADICIONAL.Value:=      DM.TBNotasItensNOI_INFOADICIONAL.Value;
        TBVendasItensVEI_LOCALIZACAO.Value:=        DM.TBNotasItensNOI_LOCALIZACAO.Value;
        TBVendasItensVEI_LOTE.Value:=               DM.TBNotasItensNOI_LOTE.Value;
        TBVendasItensVEI_LUCROPORC.Value:=          DM.TBNotasItensNOI_LUCROPORC.Value;
        TBVendasItensVEI_LUCROVALOR.Value:=         DM.TBNotasItensNOI_LUCROVALOR.Value;
        TBVendasItensVEI_MODICMS.Value:=            DM.TBNotasItensNOI_MODICMS.Value;
        TBVendasItensVEI_MODICMSST.Value:=          DM.TBNotasItensNOI_MODICMSST.Value;
        TBVendasItensVEI_ORIGEM.Value:=             DM.TBNotasItensNOI_ORIGEM.Value;
        TBVendasItensVEI_PAISISS.Value:=            DM.TBNotasItensNOI_PAISISS.Value;
        TBVendasItensVEI_PEDIDOCLIENTE.Value:=      DM.TBNotasItensNOI_PEDIDOCLIENTE.Value;
        TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=  DM.TBNotasItensNOI_PEDIDOCLIENTEITEM.Value;
        TBVendasItensVEI_PESO.Value:=               DM.TBNotasItensNOI_PESO.Value;
        TBVendasItensVEI_PESOTOTAL.Value:=          DM.TBNotasItensNOI_PESOTOTAL.Value;
        TBVendasItensVEI_PRECOCUSTO.Value:=         DM.TBNotasItensNOI_PRECOCUSTO.Value;
        TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=    DM.TBNotasItensNOI_PRECOCUSTOTOTAL.Value;
        TBVendasItensVEI_PROCESSOISS.Value:=        DM.TBNotasItensNOI_PROCESSOISS.Value;
        TBVendasItensVEI_PRODUTO.Value:=            DM.TBNotasItensNOI_PRODUTO.Value;
        TBVendasItensVEI_PRODUTOREAL.Value:=        DM.TBNotasItensNOI_PRODUTOREAL.Value;
        TBVendasItensVEI_QUANTIDADE.Value:=         DM.TBNotasItensNOI_QUANTIDADE.Value;
        TBVendasItensVEI_QUANTIDADETROCA.Value:=    DM.TBNotasItensNOI_QUANTIDADETROCA.Value;
        TBVendasItensVEI_SEQUENCIA.Value:=          DM.TBNotasItensNOI_SEQUENCIA.Value;
        TBVendasItensVEI_SERVICOISS.Value:=         DM.TBNotasItensNOI_SERVICOISS.Value;
        TBVendasItensVEI_SOMACOFINSST.Value:=       DM.TBNotasItensNOI_SOMACOFINSST.Value;
        TBVendasItensVEI_SOMAPISST.Value:=          DM.TBNotasItensNOI_SOMAPISST.Value;
        TBVendasItensVEI_TIPO.Value:=               DM.TBNotasItensNOI_TIPO.Value;
        TBVendasItensVEI_TIPOISS.Value:=            DM.TBNotasItensNOI_TIPOISS.Value;
        TBVendasItensVEI_UNIDADE.Value:=            DM.TBNotasItensNOI_UNIDADE.Value;
        TBVendasItensVEI_VALORACESSORIAS.Value:=    DM.TBNotasItensNOI_VALORACESSORIAS.Value;
        TBVendasItensVEI_VALORADUANA.Value:=        DM.TBNotasItensNOI_VALORADUANA.Value;
        TBVendasItensVEI_VALORCOFINS.Value:=        DM.TBNotasItensNOI_VALORCOFINS.Value;
        TBVendasItensVEI_VALORCOFINSST.Value:=      DM.TBNotasItensNOI_VALORCOFINSST.Value;
        TBVendasItensVEI_VALORCOMISSAO.Value:=      DM.TBNotasItensNOI_VALORCOMISSAO.Value;
        TBVendasItensVEI_VALORFCP.Value:=           DM.TBNotasItensNOI_VALORFCP.Value;
        TBVendasItensVEI_VALORFCPST.Value:=         DM.TBNotasItensNOI_VALORFCPST.Value;
        TBVendasItensVEI_VALORFRETE.Value:=         DM.TBNotasItensNOI_VALORFRETE.Value;
        TBVendasItensVEI_VALORICMS.Value:=          DM.TBNotasItensNOI_VALORICMS.Value;
        TBVendasItensVEI_VALORICMSCREDSN.Value:=    DM.TBNotasItensNOI_VALORICMSCREDSN.Value;
        TBVendasItensVEI_VALORICMSDESONERADO.Value:=DM.TBNotasItensNOI_VALORICMSDESONERADO.Value;
        TBVendasItensVEI_VALORICMSST.Value:=        DM.TBNotasItensNOI_VALORICMSST.Value;
        TBVendasItensVEI_VALORICMSSTRET.Value:=     DM.TBNotasItensNOI_VALORICMSSTRET.Value;
        TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=DM.TBNotasItensNOI_VALORICMSSUBSTITUTO.Value;
        TBVendasItensVEI_VALORICMSUFDEST.Value:=    DM.TBNotasItensNOI_VALORICMSUFDEST.Value;
        TBVendasItensVEI_VALORICMSUFREMET.Value:=   DM.TBNotasItensNOI_VALORICMSUFREMET.Value;
        TBVendasItensVEI_VALORII.Value:=            DM.TBNotasItensNOI_VALORII.Value;
        TBVendasItensVEI_VALORIOF.Value:=           DM.TBNotasItensNOI_VALORIOF.Value;
        TBVendasItensVEI_VALORIPI.Value:=           DM.TBNotasItensNOI_VALORIPI.Value;
        TBVendasItensVEI_VALORISS.Value:=           DM.TBNotasItensNOI_VALORISS.Value;
        TBVendasItensVEI_VALORISSDEDUCAO.Value:=    DM.TBNotasItensNOI_VALORISSDEDUCAO.Value;
        TBVendasItensVEI_VALORISSDESCCOND.Value:=   DM.TBNotasItensNOI_VALORISSDESCCOND.Value;
        TBVendasItensVEI_VALORISSDESCINCOND.Value:= DM.TBNotasItensNOI_VALORISSDESCINCOND.Value;
        TBVendasItensVEI_VALORISSOUTROS.Value:=     DM.TBNotasItensNOI_VALORISSOUTROS.Value;
        TBVendasItensVEI_VALORISSRETENCAO.Value:=   DM.TBNotasItensNOI_VALORISSRETENCAO.Value;
        TBVendasItensVEI_VALORPIS.Value:=           DM.TBNotasItensNOI_VALORPIS.Value;
        TBVendasItensVEI_VALORPISST.Value:=         DM.TBNotasItensNOI_VALORPISST.Value;
        TBVendasItensVEI_VALORSEGURO.Value:=        DM.TBNotasItensNOI_VALORSEGURO.Value;
        TBVendasItensVEI_VALORTOTAL.Value:=         DM.TBNotasItensNOI_VALORTOTAL.Value;
        TBVendasItensVEI_VALORTOTALBRUTO.Value:=    DM.TBNotasItensNOI_VALORTOTALBRUTO.Value;
        TBVendasItensVEI_VALORTRIBUTOS.Value:=      DM.TBNotasItensNOI_VALORTRIBUTOS.Value;
        TBVendasItensVEI_VALORTRIBUTOSEST.Value:=   DM.TBNotasItensNOI_VALORTRIBUTOSEST.Value;
        TBVendasItensVEI_VALORTRIBUTOSFED.Value:=   DM.TBNotasItensNOI_VALORTRIBUTOSFED.Value;
        TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=   DM.TBNotasItensNOI_VALORTRIBUTOSIMP.Value;
        TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=   DM.TBNotasItensNOI_VALORTRIBUTOSMUN.Value;
        TBVendasItensVEI_VALORUNIT.Value:=          DM.TBNotasItensNOI_VALORUNIT.Value;
        TBVendasItensVEI_VENDA.Value:=              DM.TBNotasNOT_VENDA.Value; //código do pedido está na capa.
        {$ENDREGION}
        TBVendasItens.Post;
        DM.TBNotasItens.Next;
      end;
      TBVendasItens.Close;

      //Lê o registro atualizado.
      DM.TBVendasItens.Close;
      DM.TBVendas.Close;
      DM.TBVendas.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_VENDA.Value;
      DM.TBVendas.Open;
      DM.TBVendasItens.Open;
    end;

    Application.CreateForm(TFormNotasFinalizar, FormNotasFinalizar);
    FormNotasFinalizar.ShowModal;
    FormNotasFinalizar.Free;
    FormNotasFinalizar:=nil;
  end;
end;

procedure TFormNotas.DBEdit30Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit30Exit(Sender: TObject);
begin
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNotasNOT_CONDICAO.Clear;
    DM.TBNotasCPG_DESCRICAO.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      if DMS.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
      begin
        MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
        DM.TBNotasNOT_CONDICAO.Clear;
        DM.TBNotasCPG_DESCRICAO.Clear;
        Exit;
      end;

      DM.TBNotasNOT_CONDICAO.Value:=DMS.QYCondicoesCPG_CODIGO.Value;
      DM.TBNotasCPG_DESCRICAO.Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
      DM.TBNotasNOT_FORMAPAGTO.Value:=DMS.QYCondicoesCPG_FORMAPAGTO.Value;
      DM.TBNotasNOT_DESCPORCCONDICAO.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;

      if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
      begin
        if DM.TBNotasNOT_DESCPORC.Value<>DMS.QYCondicoesCPG_DESCPORC.Value then
        begin
          if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBNotasNOT_DESCPORC.AsString+')'+#13#10+
                        'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+DMS.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
          begin
            DM.TBNotasItens.DisableControls;
            DM.TBNotas.DisableControls;
            DM.TBNotasItens.First;
            DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da venda.
            while not DM.TBNotasItens.Eof do
            begin
              DM.TBNotasItens.Edit;
              DM.TBNotasItensNOI_DESCPORC.Value:=DMS.QYCondicoesCPG_DESCPORC.Value;
              DM.TBNotasItens.Post;
              DM.TBNotasItens.Next;
            end;
            DM.CalcularTotais:=True;
            DM.TBNotas.EnableControls;
            DM.TBNotasItens.EnableControls;
            DM.CalcularTotaisNota(False);
          end;
        end;
      end;

      BitBtn5.Click;
    end else
    begin
      DM.TBNotasNOT_CONDICAO.Clear;
      DM.TBNotasCPG_DESCRICAO.Clear;
      DM.TBNotasNOT_DESCPORCCONDICAO.Value:=0;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure TFormNotas.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormNotas.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotas.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    if FormCondicoesLoc.QYCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      MessageDlg('A condição de pagamento selecionada não está configurada corretamente.'+#13#10+'Verifique a configuração das parcelas.',mtError,[mbOk],0);
      DM.TBNotasNOT_CONDICAO.Clear;
      DM.TBNotasCPG_DESCRICAO.Clear;
      FormCondicoesLoc.Free;
      FormCondicoesLoc:=nil;
      Exit;
    end;

    DM.TBNotas.Edit;
    DM.TBNotasNOT_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM.TBNotasCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM.TBNotasNOT_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    DM.TBNotasNOT_DESCPORCCONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;

    if DM.TBParametrosPAR_DESCONTOPORCLIENTE.Value='N' then
    begin
      if DM.TBNotasNOT_DESCPORC.Value<>FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value then
      begin
        if MessageDlg('A porcentagem de desconto da condição de pagamento é diferente da porcentagem de desconto atual. ('+DM.TBNotasNOT_DESCPORC.AsString+')'+#13#10+
                      'Deseja alterar o desconto para o que está configurado na condição de pagamento? ('+FormCondicoesLoc.QYCondicoesCPG_DESCPORC.AsString+')',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
        begin
          DM.TBNotasItens.DisableControls;
          DM.TBNotas.DisableControls;
          DM.TBNotasItens.First;
          DM.CalcularTotais:=False; //ItensAfterPost checa se deve calcular os totais da capa da venda.
          while not DM.TBNotasItens.Eof do
          begin
            DM.TBNotasItens.Edit;
            DM.TBNotasItensNOI_DESCPORC.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCPORC.Value;
            DM.TBNotasItens.Post;
            DM.TBNotasItens.Next;
          end;
          DM.CalcularTotais:=True;
          DM.TBNotas.EnableControls;
          DM.TBNotasItens.EnableControls;
          DM.CalcularTotaisNota(False);
        end;
      end;
    end;

    BitBtn5.Click;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormNotas.BitBtn5Click(Sender: TObject);
begin
  DM.SimularCondicaoNota;
end;

procedure TFormNotas.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormNotas.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormNotas.AlterarCampoMovimentacaoEstoque1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma Nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value<>'A','Esta Nota não está em aberto.');

  if DM.TBNotasNOT_MOVIMENTAESTOQUE.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Estoque para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNotas.Edit;
    DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:=Copy(S,1,1); //primeira letra.
    DM.TBNotas.Post;
  end;
end;

procedure TFormNotas.AlterarCampoMovimentacaoFinanceiro1Click(Sender: TObject);
var S: String;
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma Nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value<>'A','Esta Nota não está em aberto.');

  if DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value='S' then
  S:='Não' else
  S:='Sim';
  if MessageDlg('Deseja alterar o campo Mov. Financeiro para '+S+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBNotas.Edit;
    DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:=Copy(S,1,1); //primeira letra.
    DM.TBNotas.Post;
  end;
end;

procedure TFormNotas.AtualizarItens1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn3.Click;
end;

procedure TFormNotas.ImprimirNota1Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='A','Somente notas finalizadas ou canceladas podem ser impressas.');

  if DM.NotasModelo='MODELO 01' then
  begin
    ImprimirNotasModelo01Condensado; //dentalplus.
  end else
  if DM.NotasModelo='MODELO 02' then
  begin
    ImprimirNotasModelo02; //fase chicotes e circuitos.
  end else
  if DM.NotasModelo='MODELO 03' then
  begin
    ImprimirNotasModelo03; //GP Auto AR.
  end;
end;

procedure TFormNotas.CadastroDeCondicoesDePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormNotas.CadastroDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormNotas.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox5);
end;

procedure TFormNotas.LocalizarNotaNoContasAReceber1Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='A','Nota não finalizada ou não cancelada.');

  Application.CreateForm(TFormReceberLoc, FormReceberLoc);
  //FormReceberLoc.Height:=354;
  FormReceberLoc.Panel1.Visible:=False;
  FormReceberLoc.Panel2.Height:=FormReceberLoc.Panel2.Height+FormReceberLoc.Panel1.Height;
  FormReceberLoc.QYReceber.SQL.Clear;
  FormReceberLoc.QYReceber.SQL.Add('select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO');
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

procedure TFormNotas.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormNotas.BitBtn6Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');

  if MessageDlg('Deseja imprimir as condições de pagamento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    ImprimirCondicoesNotas;
  end;
end;

procedure TFormNotas.CancelarNota1Click(Sender: TObject);
begin
  AbortIf(DM.TBNotas.IsEmpty,'Nenhuma nota selecionada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='A','Nota não finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota já cancelada.');

  //verifica matricula com venda de curso.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select MAT_CODIGO, MAT_STATUS from MATRICULAS where MAT_VENDA=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=DM.TBNotasNOT_VENDA.Value;
  DM.QYAux.Open;
  if (not DM.QYAux.IsEmpty) and (DM.QYAux.FieldByName('MAT_STATUS').AsString<>'C') then
  begin
    MessageDlg('Esta venda está associada a matrícula número '+DM.QYAux.FieldByName('MAT_CODIGO').AsString+'.'+#13#10+
               'Não é possível cancelar a venda sem antes cancelar a matrícula.',mtError,[mbOk],0);
    Exit;
    DM.QYAux.Close;
  end;
  //verifica matriculas com venda de material.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select MAT_CODIGO, MAT_STATUS from MATRICULAS where MAT_VENDAMATERIAL=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=DM.TBNotasNOT_VENDA.Value;
  DM.QYAux.Open;
  if (not DM.QYAux.IsEmpty) and (DM.QYAux.FieldByName('MAT_STATUS').AsString<>'C') then
  begin
    MessageDlg('Esta venda está associada a matrícula número '+DM.QYAux.FieldByName('MAT_CODIGO').AsString+'.'+#13#10+
               'Não é possível cancelar a venda sem antes cancelar a matrícula.',mtError,[mbOk],0);
    Exit;
    DM.QYAux.Close;
  end;
  DM.QYAux.Close;
  //...
  if MessageDlg('Deseja cancelar a nota?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormNotasCancelar, FormNotasCancelar);
    FormNotasCancelar.ShowModal;
    FormNotasCancelar.Free;
    FormNotasCancelar:=nil;
  end;
end;

procedure TFormNotas.DBEdit42Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit42Exit(Sender: TObject);
begin
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM.TBNotasNOT_CFOP.Clear;
    DM.TBNotasNOT_CFOPDESC.Clear;
    DM.TBNotasNOT_DESTACARIMPOSTOS.Value:='N';
    DM.TBNotasNOT_ENTRADASAIDA.Clear;
    DM.TBNotasNOT_INFOADICFISCO.Clear;
    DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:='S';
    DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if DM.CodigosOld=(Sender as TDBEdit).Text then
  Exit;
  if (DM.TBNotas.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    DMS.QYNaturezas.Close;
    DMS.QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    DMS.QYNaturezas.Open;
    if not DMS.QYNaturezas.IsEmpty then
    begin
      DM.TBNotasNOT_CFOP.Value:=DMS.QYNaturezasNAT_CODIGO.Value;
      DM.TBNotasNOT_CFOPDESC.Value:=DMS.QYNaturezasNAT_DESCRICAO.Value;
      DM.TBNotasNOT_DESTACARIMPOSTOS.Value:=DMS.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
      DM.TBNotasNOT_ENTRADASAIDA.Value:=DMS.QYNaturezasNAT_ENTRADASAIDA.Value;
      DM.TBNotasNOT_INFOADICFISCO.Value:=DMS.QYNaturezasNAT_OBSERVACOES.Value;
      DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:=DMS.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
      DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:=DMS.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
    end else
    begin
      DM.TBNotasNOT_CFOP.Clear;
      DM.TBNotasNOT_CFOPDESC.Clear;
      DM.TBNotasNOT_DESTACARIMPOSTOS.Value:='N';
      DM.TBNotasNOT_ENTRADASAIDA.Clear;
      DM.TBNotasNOT_INFOADICFISCO.Clear;
      DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:='S';
      DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    DMS.QYNaturezas.Close;
  end;
end;

procedure TFormNotas.DBEdit42KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormNotas.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotas.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM.TBNotas.Edit;
    DM.TBNotasNOT_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM.TBNotasNOT_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
    DM.TBNotasNOT_DESTACARIMPOSTOS.Value:=FormNaturezasLoc.QYNaturezasNAT_DESTACARIMPOSTOS.Value;
    DM.TBNotasNOT_ENTRADASAIDA.Value:=FormNaturezasLoc.QYNaturezasNAT_ENTRADASAIDA.Value;
    DM.TBNotasNOT_INFOADICFISCO.Value:=FormNaturezasLoc.QYNaturezasNAT_OBSERVACOES.Value;
    DM.TBNotasNOT_MOVIMENTAESTOQUE.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAESTOQUE.Value;
    DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value:=FormNaturezasLoc.QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormNotas.CadastroDeNaturezasDeOperacao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormNotas.DBEdit45Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormNotas.DBEdit45Exit(Sender: TObject);
begin
  LocVendedoresExit(DBEdit45,DBEdit46,nil,DM.TBNotas);
end;

procedure TFormNotas.DBEdit45KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton18.Click;
end;

procedure TFormNotas.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormNotas.SpeedButton18Click(Sender: TObject);
begin
  LocVendedoresBotao(DBEdit45,DBEdit46,nil,DM.TBNotas);
end;

procedure TFormNotas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormNotas.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TFormNotas.CadastroDeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormNotas.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormNotas.CadastroDeClassificacoesFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscal, FormClassFiscal);
  FormClassFiscal.ShowModal;
  FormClassFiscal.Free;
  FormClassFiscal:=nil;
end;

procedure TFormNotas.CadastroDeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormICMS, FormICMS);
  FormICMS.ShowModal;
  FormICMS.Free;
  FormICMS:=nil;
end;

procedure TFormNotas.CadastroDeImpostoIPI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIPI, FormIPI);
  FormIPI.ShowModal;
  FormIPI.Free;
  FormIPI:=nil;
end;

procedure TFormNotas.CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofins, FormPiscofins);
  FormPiscofins.ShowModal;
  FormPiscofins.Free;
  FormPiscofins:=nil;
end;

procedure TFormNotas.CadastroDeImpostoISS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIss, FormIss);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormNotas.BitBtn7Click(Sender: TObject);
begin
  AbortIf(DM.TBNotasItens.IsEmpty,'Não existe nenhum item para excluir.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(DM.TBNotasNOT_STATUS.Value='C','Nota cancelada.');

  if MessageDlg('Eliminar o item selecionado?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.TBNotasItens.First;
    while not DM.TBNotasItens.Eof do
    begin
      DM.TBNotasItens.Delete;
    end;
    DM.CalcularTotaisNota(True); //era true.
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormNotas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasNOT_DTEMISSAO.Clear;
end;

procedure TFormNotas.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasNOT_DTSAIDA.Clear;
end;

procedure TFormNotas.DBEdit47KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasNOT_CNPJ.Clear;
end;

procedure TFormNotas.DBEdit48KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBNotasNOT_CPF.Clear;
end;

initialization
  RegisterClass(TFormNotas);

finalization
  UnRegisterClass(TFormNotas);

end.
