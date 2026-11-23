unit Ct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xmldom, XMLIntf, DB, IBCustomDataSet, ACBrCTe, ACBrCTeDACTEClass,
  ACBrCTeDACTeQRClass, msxmldom, XMLDoc, IBDatabase, IBQuery, Menus, ImgList,
  PngImageList, DBSBtn, ExtCtrls, StdCtrls, DBCtrls, Buttons, PngBitBtn, Grids,
  DBGrids, Mask, PngSpeedButton, ComCtrls;

type
  TFormCt = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label34: TLabel;
    DBText7: TDBText;
    Label49: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label3: TLabel;
    Label25: TLabel;
    SpeedButton3: TPngSpeedButton;
    Label82: TLabel;
    Label83: TLabel;
    Label15: TLabel;
    Label68: TLabel;
    SpeedButton9: TPngSpeedButton;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
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
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit3: TDBEdit;
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
    DBEdit26: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit73: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBEdit64: TDBEdit;
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
    Label8: TLabel;
    PngSpeedButton6: TPngSpeedButton;
    Label9: TLabel;
    Label57: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label72: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit65: TDBEdit;
    TabSheet3: TTabSheet;
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
    BitBtn6: TPngBitBtn;
    DBComboBox7: TDBComboBox;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnNew1: TDBSpeedButton;
    dbSBtnDelete1: TDBSpeedButton;
    dbSBtnSave1: TDBSpeedButton;
    dbSBtnCancel1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton2: TPngSpeedButton;
    Bevel1: TBevel;
    SpeedButton6: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    SpeedButton8: TPngSpeedButton;
    SpeedButton10: TPngSpeedButton;
    SpeedButton11: TPngSpeedButton;
    SpeedButton12: TPngSpeedButton;
    SpeedButton13: TPngSpeedButton;
    Bevel9: TBevel;
    SpeedButton15: TPngSpeedButton;
    SpeedButton16: TPngSpeedButton;
    dbSBtnEdit: TDBSpeedButton;
    SpeedButton20: TPngSpeedButton;
    SpeedButton21: TPngSpeedButton;
    Bevel5: TBevel;
    PngSpeedButton3: TPngSpeedButton;
    PngSpeedButton7: TPngSpeedButton;
    PngSpeedButton8: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    LocalizarConhecimentonoContasaReceber1: TMenuItem;
    N4: TMenuItem;
    CancelarConhecimento1: TMenuItem;
    FinalizarConhecimento1: TMenuItem;
    N3: TMenuItem;
    CadastrodeClientes1: TMenuItem;
    CadastrodeVendedores1: TMenuItem;
    CadastrodeFrotas1: TMenuItem;
    CadastrodeCondicoesdePagamento1: TMenuItem;
    CadastrodeEnderecos1: TMenuItem;
    CadastrodeNaturezas1: TMenuItem;
    CadastrodeImpostoICMS1: TMenuItem;
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
    Relatrios1: TMenuItem;
    Relatorios1: TMenuItem;
    N6: TMenuItem;
    CTEmitidosNoPeriodo1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    QYFrotas: TIBQuery;
    QYFrotasFRO_CODIGO: TIntegerField;
    QYFrotasFRO_PLACA: TIBStringField;
    QYFrotasFRO_RNTC: TIBStringField;
    QYFrotasFRO_DESCRICAO: TIBStringField;
    QYCondicoes: TIBQuery;
    QYCondicoesCPG_CODIGO: TIntegerField;
    QYCondicoesCPG_DESCRICAO: TIBStringField;
    QYCondicoesCPG_DESCPORC: TIBBCDField;
    QYCondicoesCPG_FORMAPAGTO: TIBStringField;
    TRCondicoes: TIBTransaction;
    TRFrotas: TIBTransaction;
    TRClientes: TIBTransaction;
    QYClientes: TIBQuery;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_NOME: TIBStringField;
    QYClientesCLI_ATIVIDADE: TIntegerField;
    QYClientesCLI_VENDEDOR: TIntegerField;
    QYClientesCLI_ENDERECO: TIBStringField;
    QYClientesCLI_CEP: TIBStringField;
    QYClientesCLI_BAIRRO: TIBStringField;
    QYClientesCLI_CIDADE: TIBStringField;
    QYClientesCLI_ESTADO: TIBStringField;
    QYClientesCLI_FONE1: TIBStringField;
    QYClientesCLI_FONE2: TIBStringField;
    QYClientesCLI_FONE3: TIBStringField;
    QYClientesCLI_CNPJ: TIBStringField;
    QYClientesCLI_IE: TIBStringField;
    QYClientesCLI_CPF: TIBStringField;
    QYClientesCLI_RG: TIBStringField;
    QYClientesCLI_DTNASC: TDateField;
    QYClientesCLI_TIPOPESSOA: TIBStringField;
    QYClientesCLI_ESTADOCIVIL: TIBStringField;
    QYClientesCLI_DTCADASTRO: TDateField;
    QYClientesCLI_STATUS: TIBStringField;
    QYClientesCLI_OBSERVACOES: TMemoField;
    QYClientesCLI_CONTATO: TIBStringField;
    QYClientesCLI_SITE: TIBStringField;
    QYClientesCLI_EMAIL: TIBStringField;
    QYClientesCLI_NUMERO: TIntegerField;
    QYClientesCLI_DTATUALIZACAO: TDateField;
    QYClientesCLI_COMPLEMENTO: TIBStringField;
    QYClientesCLI_USUARIO: TIBStringField;
    QYClientesCLI_ENDERECOCOB: TIBStringField;
    QYClientesCLI_CEPCOB: TIBStringField;
    QYClientesCLI_BAIRROCOB: TIBStringField;
    QYClientesCLI_CIDADECOB: TIBStringField;
    QYClientesCLI_ESTADOCOB: TIBStringField;
    QYClientesCLI_NUMEROCOB: TIntegerField;
    QYClientesCLI_COMPLEMENTOCOB: TIBStringField;
    QYClientesCLI_CNPJCOB: TIBStringField;
    QYClientesCLI_IECOB: TIBStringField;
    QYClientesCLI_TELEVENDA: TIntegerField;
    QYClientesCLI_TABELAPRECO: TIBStringField;
    QYClientesCLI_FANTASIA: TIBStringField;
    QYClientesCLI_EMAIL2: TIBStringField;
    QYClientesCLI_SETOR: TIntegerField;
    QYClientesCLI_LIMITECREDITO: TIBBCDField;
    QYClientesCLI_BLOQUEARVENDA: TIBStringField;
    QYClientesCLI_DESCONTO: TIBBCDField;
    QYClientesCLI_AFE: TIBStringField;
    QYClientesCLI_ALVARA: TIBStringField;
    QYClientesCLI_ALVARASANITARIO: TIBStringField;
    QYClientesCLI_CIDADECODIGO: TIntegerField;
    QYClientesCLI_CIDADECODIGOCOB: TIntegerField;
    QYClientesCLI_ESTADOCODIGO: TIntegerField;
    QYClientesCLI_ESTADOCODIGOCOB: TIntegerField;
    QYClientesCLI_MAE: TIBStringField;
    QYClientesCLI_MAEEMAIL: TIBStringField;
    QYClientesCLI_MAEFONE: TIBStringField;
    QYClientesCLI_MAILING: TIntegerField;
    QYClientesCLI_PAI: TIBStringField;
    QYClientesCLI_PAIEMAIL: TIBStringField;
    QYClientesCLI_PAIFONE: TIBStringField;
    QYClientesCLI_REGPROFISSIONAL: TIBStringField;
    QYClientesCLI_PONTOS: TIBBCDField;
    QYClientesCLI_TIPOCLIENTE: TIBStringField;
    QYClientesCLI_LOCALTRABALHO: TIntegerField;
    QYClientesCLI_NEXTEL: TIBStringField;
    QYClientesCLI_MSN: TIBStringField;
    QYClientesCLI_FONE0800: TIBStringField;
    QYClientesCLI_CONDICAO: TIntegerField;
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
    QYProdutosPRO_ESTOQUEMIN: TIBBCDField;
    QYProdutosPRO_ESTOQUEMAX: TIBBCDField;
    QYProdutosPRO_ESTOQUEATUAL: TIBBCDField;
    QYProdutosPRO_ALIQICMS: TIBBCDField;
    QYProdutosPRO_ALIQICMSRED: TIBBCDField;
    QYProdutosPRO_ALIQIPI: TIBBCDField;
    QYProdutosPRO_ALIQISS: TIBBCDField;
    QYProdutosPRO_ALIQOUTROS: TIBBCDField;
    QYProdutosPRO_COMISSAO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTO: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOULT: TIBBCDField;
    QYProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField;
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
    QYProdutosPRO_PESO: TIBBCDField;
    QYProdutosPRO_REGISTROMS: TIBStringField;
    QYProdutosPRO_MARGEM: TIBBCDField;
    QYProdutosPRO_COMPOSTO: TIBStringField;
    QYProdutosPRO_DTULTCOMPRA: TDateField;
    QYProdutosPRO_DTULTVENDA: TDateField;
    QYProdutosPRO_INTERNET: TIBStringField;
    QYProdutosPRO_OFERTA: TIBStringField;
    QYProdutosPRO_ALIQICMSST: TIBBCDField;
    QYProdutosPRO_CSTICMS: TIntegerField;
    QYProdutosPRO_CSTIPI: TIntegerField;
    QYProdutosPRO_CSTPIS: TIntegerField;
    QYProdutosPRO_CSTCOFINS: TIntegerField;
    QYProdutosPRO_ALIQPIS: TIBBCDField;
    QYProdutosPRO_ALIQCOFINS: TIBBCDField;
    QYProdutosPRO_MODICMS: TIBStringField;
    QYProdutosPRO_MODICMSST: TIBStringField;
    QYProdutosPRO_CSTISS: TIntegerField;
    QYProdutosPRO_CLASSFISCAL: TIntegerField;
    QYProdutosPRO_MARCA: TIntegerField;
    QYProdutosPRO_ALIQCOFINSST: TIBBCDField;
    QYProdutosPRO_ALIQICMSADICST: TIBBCDField;
    QYProdutosPRO_ALIQPISST: TIBBCDField;
    QYProdutosPRO_COMPOEBASEICMS: TIBStringField;
    QYProdutosPRO_OBSERVACOES: TMemoField;
    QYProdutosPRO_PALAVRASCHAVE: TIBStringField;
    TRProdutos: TIBTransaction;
    TRNaturezas: TIBTransaction;
    QYNaturezas: TIBQuery;
    QYNaturezasNAT_CODIGO: TIntegerField;
    QYNaturezasNAT_DESCRICAO: TIBStringField;
    QYNaturezasNAT_ENTRADASAIDA: TIBStringField;
    QYNaturezasNAT_OBSERVACOES: TMemoField;
    QYNaturezasNAT_MOVIMENTAESTOQUE: TIBStringField;
    QYNaturezasNAT_MOVIMENTAFINANCEIRO: TIBStringField;
    QYRuas: TIBQuery;
    QYRuasRUA_NOME: TIBStringField;
    QYRuasRUA_ESTADO: TIntegerField;
    QYRuasRUA_CIDADE: TIntegerField;
    QYRuasRUA_BAIRRO: TIntegerField;
    QYRuasESD_SIGLA: TIBStringField;
    QYRuasCID_NOME: TIBStringField;
    QYRuasCID_CODIGO: TIntegerField;
    QYRuasBAI_NOME: TIBStringField;
    TRRuas: TIBTransaction;
    TRIcms: TIBTransaction;
    QYIcms: TIBQuery;
    QYIcmsICM_CODIGO: TIntegerField;
    QYIcmsICM_DESCRICAO: TIBStringField;
    QYVendedores: TIBQuery;
    QYVendedoresVEN_CODIGO: TIntegerField;
    QYVendedoresVEN_NOME: TIBStringField;
    QYVendedoresVEN_COMISSAO: TIBBCDField;
    TRVendedores: TIBTransaction;
    TRCt: TIBTransaction;
    QYCt: TIBDataSet;
    Label74: TLabel;
    DBEdit66: TDBEdit;
    Label91: TLabel;
    Label92: TLabel;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    Label59: TLabel;
    DBMemo3: TDBMemo;
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
    Label93: TLabel;
    DBEdit86: TDBEdit;
    Imprimir1: TMenuItem;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText16: TDBText;
    DBText17: TDBText;
    DBText18: TDBText;
    DBText19: TDBText;
    DBText20: TDBText;
    DBText21: TDBText;
    DBText22: TDBText;
    DBText23: TDBText;
    DBText24: TDBText;
    DBText25: TDBText;
    DBText26: TDBText;
    DBText27: TDBText;
    DBText28: TDBText;
    DBText29: TDBText;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    DBText30: TDBText;
    DBText31: TDBText;
    DBText32: TDBText;
    DBText33: TDBText;
    DBText34: TDBText;
    DBText35: TDBText;
    DBText36: TDBText;
    DBText37: TDBText;
    DBText38: TDBText;
    DBText39: TDBText;
    DBText40: TDBText;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    QYCtCTT_CODIGO: TIntegerField;
    QYCtCTT_VEICULO: TIntegerField;
    QYCtCTT_ALIQICMS: TIBBCDField;
    QYCtCTT_ALIQICMSRED: TIBBCDField;
    QYCtCTT_BASEICMS: TIBBCDField;
    QYCtCTT_BASEICMSRED: TIBBCDField;
    QYCtCTT_CFOP: TIntegerField;
    QYCtCTT_CFOPDESC: TIBStringField;
    QYCtCTT_COMISSAO: TIBBCDField;
    QYCtCTT_CONDICAO: TIntegerField;
    QYCtCTT_CONDICAOMEMO: TWideMemoField;
    QYCtCTT_CSTICMS: TIntegerField;
    QYCtCTT_CTEREFERENCIADO: TIBStringField;
    QYCtCTT_DESBAIRRO: TIBStringField;
    QYCtCTT_DESCEP: TIBStringField;
    QYCtCTT_DESCIDADE: TIBStringField;
    QYCtCTT_DESCIDADECODIGO: TIntegerField;
    QYCtCTT_DESCNPJ: TIBStringField;
    QYCtCTT_DESCOMPLEMENTO: TIBStringField;
    QYCtCTT_DESCONTATO: TIBStringField;
    QYCtCTT_DESCPF: TIBStringField;
    QYCtCTT_DESCPORC: TIBBCDField;
    QYCtCTT_DESCVALOR: TIBBCDField;
    QYCtCTT_DESENDERECO: TIBStringField;
    QYCtCTT_DESESTADO: TIBStringField;
    QYCtCTT_DESESTADOCODIGO: TIntegerField;
    QYCtCTT_DESFONE: TIBStringField;
    QYCtCTT_DESIE: TIBStringField;
    QYCtCTT_DESNOME: TIBStringField;
    QYCtCTT_DESNUMERO: TIntegerField;
    QYCtCTT_DESTINATARIO: TIntegerField;
    QYCtCTT_DIAPREFERENCIAL: TIntegerField;
    QYCtCTT_DTATUALIZACAO: TDateField;
    QYCtCTT_DTCADASTRO: TDateField;
    QYCtCTT_DTEMISSAO: TDateField;
    QYCtCTT_FORMAPAGTO: TIBStringField;
    QYCtCTT_ICMSALIQUOTAUF: TIBBCDField;
    QYCtCTT_ICMSPOR: TIBStringField;
    QYCtCTT_INFOADICFISCO: TWideMemoField;
    QYCtCTT_MODELO: TIntegerField;
    QYCtCTT_MOTIVOCANCELAMENTO: TIBStringField;
    QYCtCTT_MOVIMENTAFINANCEIRO: TIBStringField;
    QYCtCTT_OBSERVACOES: TWideMemoField;
    QYCtCTT_PAGOPOR: TIBStringField;
    QYCtCTT_PESOTOTAL: TIBBCDField;
    QYCtCTT_PRODUTOPREDOM: TIBStringField;
    QYCtCTT_REMBAIRRO: TIBStringField;
    QYCtCTT_REMCEP: TIBStringField;
    QYCtCTT_REMCIDADE: TIBStringField;
    QYCtCTT_REMCIDADECODIGO: TIntegerField;
    QYCtCTT_REMCNPJ: TIBStringField;
    QYCtCTT_REMCOMPLEMENTO: TIBStringField;
    QYCtCTT_REMCONTATO: TIBStringField;
    QYCtCTT_REMCPF: TIBStringField;
    QYCtCTT_REMENDERECO: TIBStringField;
    QYCtCTT_REMESTADO: TIBStringField;
    QYCtCTT_REMESTADOCODIGO: TIntegerField;
    QYCtCTT_REMETENTE: TIntegerField;
    QYCtCTT_REMFONE: TIBStringField;
    QYCtCTT_REMIE: TIBStringField;
    QYCtCTT_REMNOME: TIBStringField;
    QYCtCTT_REMNUMERO: TIntegerField;
    QYCtCTT_RETIRA: TIBStringField;
    QYCtCTT_SEGURO: TIBStringField;
    QYCtCTT_SEGUROAPOLICE: TIntegerField;
    QYCtCTT_SEGUROAVERBACAO: TIntegerField;
    QYCtCTT_SEGURONOME: TIBStringField;
    QYCtCTT_SEGUROVALOR: TIBBCDField;
    QYCtCTT_SERIE: TIntegerField;
    QYCtCTT_STATUS: TIBStringField;
    QYCtCTT_TOTALCOMISSAO: TIBBCDField;
    QYCtCTT_TOTALICMS: TIBBCDField;
    QYCtCTT_UNIDADEMEDIDA: TIBStringField;
    QYCtCTT_USUARIO: TIBStringField;
    QYCtCTT_VALORFRETE: TIBBCDField;
    QYCtCTT_VALORNOTAS: TIBBCDField;
    QYCtCTT_VALOROUTROS: TIBBCDField;
    QYCtCTT_VALORSEGURO: TIBBCDField;
    QYCtCTT_VALORTOTAL: TIBBCDField;
    QYCtCTT_VEICULOPLACA: TIBStringField;
    QYCtCTT_VEICULORNTC: TIBStringField;
    QYCtCTT_VENDEDOR: TIntegerField;
    QYCtCPG_DESCRICAO: TIBStringField;
    QYCtFRO_DESCRICAO: TIBStringField;
    QYCtICM_DESCRICAO: TIBStringField;
    QYCtVEN_NOME: TIBStringField;
    Label66: TLabel;
    DBEdit61: TDBEdit;
    QYProdutosPRO_FORNECEDOR: TIntegerField;
    QYProdutosPRO_ORIGEM: TIBStringField;
    QYProdutosPRO_PRECOCUSTOCOMP: TIBBCDField;
    QYProdutosPRO_TIPOITEM: TIBStringField;
    QYProdutosPRO_SUBSTITUICAOTRIB: TIBStringField;
    QYProdutosPRO_ECFICMS: TIBStringField;
    QYProdutosPRO_TOTALIZADORPARCIAL: TIBStringField;
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure LocalizarConhecimentonoContasaReceber1Click(Sender: TObject);
    procedure CancelarConhecimento1Click(Sender: TObject);
    procedure FinalizarConhecimento1Click(Sender: TObject);
    procedure Relatorios1Click(Sender: TObject);
    procedure CTEmitidosNoPeriodo1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure CadastrodeClientes1Click(Sender: TObject);
    procedure CadastrodeVendedores1Click(Sender: TObject);
    procedure CadastrodeFrotas1Click(Sender: TObject);
    procedure CadastrodeCondicoesdePagamento1Click(Sender: TObject);
    procedure CadastrodeEnderecos1Click(Sender: TObject);
    procedure CadastrodeNaturezas1Click(Sender: TObject);
    procedure CadastrodeImpostoICMS1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit26KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit42KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton17Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit93Exit(Sender: TObject);
    procedure DBEdit93KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure DBEdit62Exit(Sender: TObject);
    procedure DBEdit62KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton9Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure InserirItem1Click(Sender: TObject);
    procedure EliminarItem1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCt: TFormCt;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, Clientes, Condicoes, Enderecos, Frotas, Icms, Naturezas,
  Vendedores, Main, CtLoc, CtNotas, ClientesLoc, IcmsLoc, NaturezasLoc,
  FrotasLoc, CondicoesLoc, VendedoresLoc, CtFinalizar, CtRel, CtCancelar,
  Receber;
{$R *.dfm}

procedure TFormCt.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormCt.BitBtn1Click(Sender: TObject);
begin
  if DM2.TBCt.IsEmpty then
  begin
    MessageDlg('Nenhum conhecimento selecionado.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('Conhecimento já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('Conhecimento cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  DM2.TBCtNotas.Insert;
  Application.CreateForm(TFormCtNotas, FormCtNotas);
  FormCtNotas.ShowModal;
  FormCtNotas.Free;
  FormCtNotas:=nil;
end;

procedure TFormCt.BitBtn2Click(Sender: TObject);
begin
  if DM2.TBCtNotas.IsEmpty then
  begin
    MessageDlg('Não existe nenhuma nota para excluir.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('Conhecimento já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('Conhecimento cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Eliminar a nota selecionada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCtNotas.Delete;
    DM2.CalcularTotaisCT(True);
  end;
end;

procedure TFormCt.BitBtn4Click(Sender: TObject);
begin
  if DM2.TBCtNotas.IsEmpty then
  begin
    MessageDlg('Não existe nenhuma nota para editar.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('Conhecimento já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('Conhecimento cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  DM2.TBCtNotas.Edit;
  Application.CreateForm(TFormCtNotas, FormCtNotas);
  FormCtNotas.ShowModal;
  FormCtNotas.Free;
  FormCtNotas:=nil;
end;

procedure TFormCt.BitBtn5Click(Sender: TObject);
var ValorParcelas, ValorTotal: Currency;
  ParcelaAtual: Integer;
  Vencimento: TDate;
  A,M,D: Word;
begin
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('Conhecimento já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  DM2.TBCt.Edit;
  DBMemo2.Lines.Clear;
  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM2.TBCtCTT_CONDICAO.Value;
  DM.TBCondicoes.Open;
  DBMemo2.Lines.Add('Condição: '+IntToStr(DM2.TBCtCTT_CONDICAO.Value)+' - '+DM2.TBCtCPG_DESCRICAO.Value);
  DBMemo2.Lines.Add('==================================================');
  DBMemo2.Lines.Add('Parcela Vencimento          Valor              %');

  //nova forma de calculo das parcelas, utilizando a tabela condicoesitens.
  if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(DM2.TBCtCTT_VALORTOTAL.Value / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
  begin
    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      Vencimento:=DM2.TBCtCTT_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if DM2.TBCtCTT_DIAPREFERENCIAL.Value<>0 then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBCtCTT_DIAPREFERENCIAL.Value);
      end;
      ValorParcelas:=DM2.TBCtCTT_VALORTOTAL.Value / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
      DBMemo2.Lines.Add(AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.Value]),' ',15,taRight));
      DM.TBCondicoesItens.Next;
    end;
  end else
  begin
    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      Vencimento:=DM2.TBCtCTT_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if DM2.TBCtCTT_DIAPREFERENCIAL.Value<>0 then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBCtCTT_DIAPREFERENCIAL.Value);
      end;
      ValorParcelas:=(DM2.TBCtCTT_VALORTOTAL.Value/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.Value;
      ValorParcelas:=Decimais(ValorParcelas,2);
      ValorTotal:=ValorTotal+ValorParcelas;
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then //verifica o valor da ultima parcela.
      begin
        if ValorTotal>DM2.TBCtCTT_VALORTOTAL.Value then
        ValorParcelas:=ValorParcelas-(ValorTotal-DM2.TBCtCTT_VALORTOTAL.Value);
        if ValorTotal<DM2.TBCtCTT_VALORTOTAL.Value then
        ValorParcelas:=ValorParcelas+(DM2.TBCtCTT_VALORTOTAL.Value-ValorTotal);
      end;
      DBMemo2.Lines.Add(AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcelas]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.Value]),' ',15,taRight));
      DM.TBCondicoesItens.Next;
    end;
  end;
end;

procedure TFormCt.BitBtn6Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormCt.BitBtn7Click(Sender: TObject);
begin
  if DM2.TBCtNotas.IsEmpty then
  begin
    MessageDlg('Não existe nenhuma nota para excluir.',mtWarning,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('Conhecimento já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('Conhecimento cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Eliminar todas as notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM2.TBCtNotas.First;
    while not DM2.TBCtNotas.Eof do
    begin
      DM2.TBCtNotas.Delete;
    end;
    DM2.CalcularTotaisCT(True);
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormCt.CadastrodeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormCt.CadastrodeCondicoesdePagamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormCt.CadastrodeEnderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormCt.CadastrodeFrotas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotas, FormFrotas);
  FormFrotas.ShowModal;
  FormFrotas.Free;
  FormFrotas:=nil;
end;

procedure TFormCt.CadastrodeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormCt.CadastrodeNaturezas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormCt.CadastrodeVendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormCt.CancelarConhecimento1Click(Sender: TObject);
var Justificativa: String;
begin
  if DM2.TBCt.IsEmpty then
  begin
    MessageDlg('Nenhum CT selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='A' then
  begin
    MessageDlg('CT não finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('CTe já cancelado.',mtInformation,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja cancelar o conhecimento?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Justificativa:=InputBox('Justificativa','Digite a justificativa para o cancelamento (mínimo 15 caracteres)','');
    if (Justificativa<>'') and (Length(Justificativa)>=15) then
    begin
      QYCt.Close;
      QYCt.ParamByName('codigo').AsInteger:=DM2.TBCtCTT_CODIGO.Value;
      QYCt.Open;
      QYCt.Edit;
      QYCtCTT_MOTIVOCANCELAMENTO.Value:=Justificativa;
      QYCt.Post;
      TRCt.Commit;
      QYCt.Close;
      Application.CreateForm(TFormCtCancelar, FormCtCancelar);
      FormCtCancelar.ShowModal;
      FormCtCancelar.Free;
      FormCtCancelar:=nil;
    end else
    MessageDlg('Justificativa inválida.',mtError,[mbOk],0);
  end;
end;

procedure TFormCt.CTEmitidosNoPeriodo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCtRel, FormCtRel);
  FormCtRel.ComboBox1.Enabled:=False;
  FormCtRel.ComboBox1.ItemIndex:=0;
  FormCtRel.ComboBox1Change(Self);
  FormCtRel.ShowModal;
  FormCtRel.Free;
  FormCtRel:=nil;
end;

procedure TFormCt.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit26Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_VEICULO.Clear;
    DM2.TBCtCTT_VEICULOPLACA.Clear;
    DM2.TBCtCTT_VEICULORNTC.Clear;
    DM2.TBCtFRO_DESCRICAO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYFrotas.Close;
    QYFrotas.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYFrotas.Open;
    if not QYFrotas.IsEmpty then
    begin
      DM2.TBCtCTT_VEICULO.Value:=QYFrotasFRO_CODIGO.Value;
      DM2.TBCtCTT_VEICULOPLACA.Value:=QYFrotasFRO_PLACA.Value;
      DM2.TBCtCTT_VEICULORNTC.Value:=QYFrotasFRO_RNTC.Value;
      DM2.TBCtFRO_DESCRICAO.Value:=QYFrotasFRO_DESCRICAO.Value;
    end else
    begin
      DM2.TBCtCTT_VEICULO.Clear;
      DM2.TBCtCTT_VEICULOPLACA.Clear;
      DM2.TBCtCTT_VEICULORNTC.Clear;
      DM2.TBCtFRO_DESCRICAO.Clear;
      MessageDlg('Veículo não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYFrotas.Close;
  end;
end;

procedure TFormCt.DBEdit26KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormCt.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBCtCTT_DTEMISSAO.Clear;
end;

procedure TFormCt.DBEdit30Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_CONDICAO.Clear;
    DM2.TBCtCPG_DESCRICAO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYCondicoes.Close;
    QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYCondicoes.Open;
    if not QYCondicoes.IsEmpty then
    begin
      DM2.TBCtCTT_CONDICAO.Value:=QYCondicoesCPG_CODIGO.Value;
      DM2.TBCtCPG_DESCRICAO.Value:=QYCondicoesCPG_DESCRICAO.Value;
      DM2.TBCtCTT_FORMAPAGTO.Value:=QYCondicoesCPG_FORMAPAGTO.Value;
      //calcula o desconto.
      DM2.TBCtCTT_VALORTOTAL.Value:=DM2.TBCtCTT_VALORFRETE.Value+DM2.TBCtCTT_VALORSEGURO.Value+DM2.TBCtCTT_VALOROUTROS.Value;
      if DM2.TBCtCTT_DESCPORC.Value>0 then
      DM2.TBCtCTT_DESCVALOR.Value:=((DM2.TBCtCTT_VALORTOTAL.Value/100)*DM2.TBCtCTT_DESCPORC.Value) else
      DM2.TBCtCTT_DESCVALOR.Value:=0;
      //...
      BitBtn5.Click;
    end else
    begin
      DM2.TBCtCTT_CONDICAO.Clear;
      DM2.TBCtCPG_DESCRICAO.Clear;
      MessageDlg('Condição de pagamento não encontrada.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYCondicoes.Close;
  end;
end;

procedure TFormCt.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormCt.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM2.TBCtCTT_DTEMISSAO.Clear;
end;

procedure TFormCt.DBEdit42Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_CFOP.Clear;
    DM2.TBCtCTT_CFOPDESC.Clear;
    DM2.TBCtCTT_MOVIMENTAFINANCEIRO.Value:='S';
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYNaturezas.Close;
    QYNaturezas.ParamByName('codigo').AsString:=(Sender as TDBEdit).Text;
    QYNaturezas.Open;
    if not QYNaturezas.IsEmpty then
    begin
      DM2.TBCtCTT_CFOP.Value:=QYNaturezasNAT_CODIGO.Value;
      DM2.TBCtCTT_CFOPDESC.Value:=QYNaturezasNAT_DESCRICAO.Value;
      DM2.TBCtCTT_MOVIMENTAFINANCEIRO.Value:=QYNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
    end else
    begin
      DM2.TBCtCTT_CFOP.Clear;
      DM2.TBCtCTT_CFOPDESC.Clear;
      DM2.TBCtCTT_MOVIMENTAFINANCEIRO.Value:='S';
      MessageDlg('CFOP não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYNaturezas.Close;
  end;
end;

procedure TFormCt.DBEdit42KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormCt.DBEdit4Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_REMBAIRRO.Clear;
    DM2.TBCtCTT_REMCEP.Clear;
    DM2.TBCtCTT_REMCIDADE.Clear;
    DM2.TBCtCTT_REMCIDADECODIGO.Clear;
    DM2.TBCtCTT_REMCNPJ.Clear;
    DM2.TBCtCTT_REMCOMPLEMENTO.Clear;
    DM2.TBCtCTT_REMCONTATO.Clear;
    DM2.TBCtCTT_REMCPF.Clear;
    DM2.TBCtCTT_REMENDERECO.Clear;
    DM2.TBCtCTT_REMESTADO.Clear;
    DM2.TBCtCTT_REMESTADOCODIGO.Clear;
    DM2.TBCtCTT_REMETENTE.Clear;
    DM2.TBCtCTT_REMFONE.Clear;
    DM2.TBCtCTT_REMIE.Clear;
    DM2.TBCtCTT_REMNOME.Clear;
    DM2.TBCtCTT_REMNUMERO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYClientes.Close;
    QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYClientes.Open;
    if not QYClientes.IsEmpty then
    begin
      if ChecarLimiteCliente(StrToInt((Sender as TDBEdit).Text),QYClientesCLI_LIMITECREDITO.Value) then
      begin
        MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
        if QYClientesCLI_BLOQUEARVENDA.Value='S' then
        begin
          DM2.TBCtCTT_REMBAIRRO.Clear;
          DM2.TBCtCTT_REMCEP.Clear;
          DM2.TBCtCTT_REMCIDADE.Clear;
          DM2.TBCtCTT_REMCIDADECODIGO.Clear;
          DM2.TBCtCTT_REMCNPJ.Clear;
          DM2.TBCtCTT_REMCOMPLEMENTO.Clear;
          DM2.TBCtCTT_REMCONTATO.Clear;
          DM2.TBCtCTT_REMCPF.Clear;
          DM2.TBCtCTT_REMENDERECO.Clear;
          DM2.TBCtCTT_REMESTADO.Clear;
          DM2.TBCtCTT_REMESTADOCODIGO.Clear;
          DM2.TBCtCTT_REMETENTE.Clear;
          DM2.TBCtCTT_REMFONE.Clear;
          DM2.TBCtCTT_REMIE.Clear;
          DM2.TBCtCTT_REMNOME.Clear;
          DM2.TBCtCTT_REMNUMERO.Clear;
          Exit;
        end;
      end;
      DM2.TBCtCTT_REMBAIRRO.Value:=QYClientesCLI_BAIRROCOB.Value;
      DM2.TBCtCTT_REMCEP.Value:=QYClientesCLI_CEPCOB.Value;
      DM2.TBCtCTT_REMCIDADE.Value:=QYClientesCLI_CIDADECOB.Value;
      DM2.TBCtCTT_REMCIDADECODIGO.Value:=QYClientesCLI_CIDADECODIGOCOB.Value;
      DM2.TBCtCTT_REMCNPJ.Value:=QYClientesCLI_CNPJCOB.Value;
      DM2.TBCtCTT_REMCOMPLEMENTO.Value:=QYClientesCLI_COMPLEMENTOCOB.Value;
      DM2.TBCtCTT_REMCONTATO.Value:=QYClientesCLI_CONTATO.Value;
      DM2.TBCtCTT_REMCPF.Value:=QYClientesCLI_CPF.Value;
      DM2.TBCtCTT_REMENDERECO.Value:=QYClientesCLI_ENDERECOCOB.Value;
      DM2.TBCtCTT_REMESTADO.Value:=QYClientesCLI_ESTADOCOB.Value;
      DM2.TBCtCTT_REMESTADOCODIGO.Value:=QYClientesCLI_ESTADOCODIGOCOB.Value;
      DM2.TBCtCTT_REMFONE.Value:=QYClientesCLI_FONE1.Value;
      DM2.TBCtCTT_REMIE.Value:=QYClientesCLI_IECOB.Value;
      DM2.TBCtCTT_REMNOME.Value:=QYClientesCLI_NOME.Value;
      DM2.TBCtCTT_REMNUMERO.Value:=QYClientesCLI_NUMEROCOB.Value;
    end else
    begin
      DM2.TBCtCTT_REMBAIRRO.Clear;
      DM2.TBCtCTT_REMCEP.Clear;
      DM2.TBCtCTT_REMCIDADE.Clear;
      DM2.TBCtCTT_REMCIDADECODIGO.Clear;
      DM2.TBCtCTT_REMCNPJ.Clear;
      DM2.TBCtCTT_REMCOMPLEMENTO.Clear;
      DM2.TBCtCTT_REMCONTATO.Clear;
      DM2.TBCtCTT_REMCPF.Clear;
      DM2.TBCtCTT_REMENDERECO.Clear;
      DM2.TBCtCTT_REMESTADO.Clear;
      DM2.TBCtCTT_REMESTADOCODIGO.Clear;
      DM2.TBCtCTT_REMETENTE.Clear;
      DM2.TBCtCTT_REMFONE.Clear;
      DM2.TBCtCTT_REMIE.Clear;
      DM2.TBCtCTT_REMNOME.Clear;
      DM2.TBCtCTT_REMNUMERO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYClientes.Close;
  end;
end;

procedure TFormCt.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormCt.DBEdit52KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit55KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit5Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_CONBAIRRO.Clear;
    DM2.TBCtCTT_CONCEP.Clear;
    DM2.TBCtCTT_CONCIDADE.Clear;
    DM2.TBCtCTT_CONCIDADECODIGO.Clear;
    DM2.TBCtCTT_CONCNPJ.Clear;
    DM2.TBCtCTT_CONCOMPLEMENTO.Clear;
    DM2.TBCtCTT_CONCONTATO.Clear;
    DM2.TBCtCTT_CONCPF.Clear;
    DM2.TBCtCTT_CONENDERECO.Clear;
    DM2.TBCtCTT_CONESTADO.Clear;
    DM2.TBCtCTT_CONESTADOCODIGO.Clear;
    DM2.TBCtCTT_CONFONE.Clear;
    DM2.TBCtCTT_CONIE.Clear;
    DM2.TBCtCTT_CONNOME.Clear;
    DM2.TBCtCTT_CONNUMERO.Clear;
    DM2.TBCtCTT_CONSIGNATARIO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYClientes.Close;
    QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYClientes.Open;
    if not QYClientes.IsEmpty then
    begin
      if ChecarLimiteCliente(StrToInt((Sender as TDBEdit).Text),QYClientesCLI_LIMITECREDITO.Value) then
      begin
        MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
        if QYClientesCLI_BLOQUEARVENDA.Value='S' then
        begin
          DM2.TBCtCTT_CONBAIRRO.Clear;
          DM2.TBCtCTT_CONCEP.Clear;
          DM2.TBCtCTT_CONCIDADE.Clear;
          DM2.TBCtCTT_CONCIDADECODIGO.Clear;
          DM2.TBCtCTT_CONCNPJ.Clear;
          DM2.TBCtCTT_CONCOMPLEMENTO.Clear;
          DM2.TBCtCTT_CONCONTATO.Clear;
          DM2.TBCtCTT_CONCPF.Clear;
          DM2.TBCtCTT_CONENDERECO.Clear;
          DM2.TBCtCTT_CONESTADO.Clear;
          DM2.TBCtCTT_CONESTADOCODIGO.Clear;
          DM2.TBCtCTT_CONFONE.Clear;
          DM2.TBCtCTT_CONIE.Clear;
          DM2.TBCtCTT_CONNOME.Clear;
          DM2.TBCtCTT_CONNUMERO.Clear;
          DM2.TBCtCTT_CONSIGNATARIO.Clear;
          Exit;
        end;
      end;
      DM2.TBCtCTT_CONBAIRRO.Value:=QYClientesCLI_BAIRROCOB.Value;
      DM2.TBCtCTT_CONCEP.Value:=QYClientesCLI_CEPCOB.Value;
      DM2.TBCtCTT_CONCIDADE.Value:=QYClientesCLI_CIDADECOB.Value;
      DM2.TBCtCTT_CONCIDADECODIGO.Value:=QYClientesCLI_CIDADECODIGOCOB.Value;
      DM2.TBCtCTT_CONCNPJ.Value:=QYClientesCLI_CNPJCOB.Value;
      DM2.TBCtCTT_CONCOMPLEMENTO.Value:=QYClientesCLI_COMPLEMENTOCOB.Value;
      DM2.TBCtCTT_CONCONTATO.Value:=QYClientesCLI_CONTATO.Value;
      DM2.TBCtCTT_CONCPF.Value:=QYClientesCLI_CPF.Value;
      DM2.TBCtCTT_CONENDERECO.Value:=QYClientesCLI_ENDERECOCOB.Value;
      DM2.TBCtCTT_CONESTADO.Value:=QYClientesCLI_ESTADOCOB.Value;
      DM2.TBCtCTT_CONESTADOCODIGO.Value:=QYClientesCLI_ESTADOCODIGOCOB.Value;
      DM2.TBCtCTT_CONFONE.Value:=QYClientesCLI_FONE1.Value;
      DM2.TBCtCTT_CONIE.Value:=QYClientesCLI_IECOB.Value;
      DM2.TBCtCTT_CONNOME.Value:=QYClientesCLI_NOME.Value;
      DM2.TBCtCTT_CONNUMERO.Value:=QYClientesCLI_NUMEROCOB.Value;
    end else
    begin
      DM2.TBCtCTT_CONBAIRRO.Clear;
      DM2.TBCtCTT_CONCEP.Clear;
      DM2.TBCtCTT_CONCIDADE.Clear;
      DM2.TBCtCTT_CONCIDADECODIGO.Clear;
      DM2.TBCtCTT_CONCNPJ.Clear;
      DM2.TBCtCTT_CONCOMPLEMENTO.Clear;
      DM2.TBCtCTT_CONCONTATO.Clear;
      DM2.TBCtCTT_CONCPF.Clear;
      DM2.TBCtCTT_CONENDERECO.Clear;
      DM2.TBCtCTT_CONESTADO.Clear;
      DM2.TBCtCTT_CONESTADOCODIGO.Clear;
      DM2.TBCtCTT_CONFONE.Clear;
      DM2.TBCtCTT_CONIE.Clear;
      DM2.TBCtCTT_CONNOME.Clear;
      DM2.TBCtCTT_CONNUMERO.Clear;
      DM2.TBCtCTT_CONSIGNATARIO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYClientes.Close;
  end;
end;

procedure TFormCt.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormCt.DBEdit60KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormCt.DBEdit62Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_VENDEDOR.Clear;
    DM2.TBCtVEN_NOME.Clear;
    DM2.TBCtCTT_COMISSAO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYVendedores.Close;
    QYVendedores.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYVendedores.Open;
    if not QYVendedores.IsEmpty then
    begin
      DM2.TBCtCTT_VENDEDOR.Value:=QYVendedoresVEN_CODIGO.Value;
      DM2.TBCtVEN_NOME.Value:=QYVendedoresVEN_NOME.Value;
      DM2.TBCtCTT_COMISSAO.Value:=QYVendedoresVEN_COMISSAO.Value;
    end else
    begin
      DM2.TBCtCTT_VENDEDOR.Clear;
      DM2.TBCtVEN_NOME.Clear;
      DM2.TBCtCTT_COMISSAO.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYVendedores.Close;
  end;
end;

procedure TFormCt.DBEdit62KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton9.Click;
end;

procedure TFormCt.DBEdit8Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_CSTICMS.Clear;
    DM2.TBCtICM_DESCRICAO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYIcms.Close;
    QYIcms.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYIcms.Open;
    if not QYIcms.IsEmpty then
    begin
      DM2.TBCtCTT_CSTICMS.Value:=QYIcmsICM_CODIGO.Value;
      DM2.TBCtICM_DESCRICAO.Value:=QYIcmsICM_DESCRICAO.Value;
    end else
    begin
      DM2.TBCtCTT_CSTICMS.Clear;
      DM2.TBCtICM_DESCRICAO.Clear;
      MessageDlg('ICMS não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYIcms.Close;
  end;
end;

procedure TFormCt.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton6.Click;
end;

procedure TFormCt.DBEdit93Exit(Sender: TObject);
begin
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text='') then
  begin
    DM2.TBCtCTT_DESBAIRRO.Clear;
    DM2.TBCtCTT_DESCEP.Clear;
    DM2.TBCtCTT_DESCIDADE.Clear;
    DM2.TBCtCTT_DESCIDADECODIGO.Clear;
    DM2.TBCtCTT_DESCNPJ.Clear;
    DM2.TBCtCTT_DESCOMPLEMENTO.Clear;
    DM2.TBCtCTT_DESCONTATO.Clear;
    DM2.TBCtCTT_DESCPF.Clear;
    DM2.TBCtCTT_DESENDERECO.Clear;
    DM2.TBCtCTT_DESESTADO.Clear;
    DM2.TBCtCTT_DESESTADOCODIGO.Clear;
    DM2.TBCtCTT_DESFONE.Clear;
    DM2.TBCtCTT_DESIE.Clear;
    DM2.TBCtCTT_DESNOME.Clear;
    DM2.TBCtCTT_DESNUMERO.Clear;
    DM2.TBCtCTT_DESTINATARIO.Clear;
    Exit;
  end;
  if (DM2.TBCt.State in [dsInsert, dsEdit]) and ((Sender as TDBEdit).Text<>'') then
  begin
    QYClientes.Close;
    QYClientes.ParamByName('codigo').AsInteger:=StrToInt((Sender as TDBEdit).Text);
    QYClientes.Open;
    if not QYClientes.IsEmpty then
    begin
      if ChecarLimiteCliente(StrToInt((Sender as TDBEdit).Text),QYClientesCLI_LIMITECREDITO.Value) then
      begin
        MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
        if QYClientesCLI_BLOQUEARVENDA.Value='S' then
        begin
          DM2.TBCtCTT_DESBAIRRO.Clear;
          DM2.TBCtCTT_DESCEP.Clear;
          DM2.TBCtCTT_DESCIDADE.Clear;
          DM2.TBCtCTT_DESCIDADECODIGO.Clear;
          DM2.TBCtCTT_DESCNPJ.Clear;
          DM2.TBCtCTT_DESCOMPLEMENTO.Clear;
          DM2.TBCtCTT_DESCONTATO.Clear;
          DM2.TBCtCTT_DESCPF.Clear;
          DM2.TBCtCTT_DESENDERECO.Clear;
          DM2.TBCtCTT_DESESTADO.Clear;
          DM2.TBCtCTT_DESESTADOCODIGO.Clear;
          DM2.TBCtCTT_DESFONE.Clear;
          DM2.TBCtCTT_DESIE.Clear;
          DM2.TBCtCTT_DESNOME.Clear;
          DM2.TBCtCTT_DESNUMERO.Clear;
          DM2.TBCtCTT_DESTINATARIO.Clear;
          Exit;
        end;
      end;
      DM2.TBCtCTT_DESBAIRRO.Value:=QYClientesCLI_BAIRROCOB.Value;
      DM2.TBCtCTT_DESCEP.Value:=QYClientesCLI_CEPCOB.Value;
      DM2.TBCtCTT_DESCIDADE.Value:=QYClientesCLI_CIDADECOB.Value;
      DM2.TBCtCTT_DESCIDADECODIGO.Value:=QYClientesCLI_CIDADECODIGOCOB.Value;
      DM2.TBCtCTT_DESCNPJ.Value:=QYClientesCLI_CNPJCOB.Value;
      DM2.TBCtCTT_DESCOMPLEMENTO.Value:=QYClientesCLI_COMPLEMENTOCOB.Value;
      DM2.TBCtCTT_DESCONTATO.Value:=QYClientesCLI_CONTATO.Value;
      DM2.TBCtCTT_DESCPF.Value:=QYClientesCLI_CPF.Value;
      DM2.TBCtCTT_DESENDERECO.Value:=QYClientesCLI_ENDERECOCOB.Value;
      DM2.TBCtCTT_DESESTADO.Value:=QYClientesCLI_ESTADOCOB.Value;
      DM2.TBCtCTT_DESESTADOCODIGO.Value:=QYClientesCLI_ESTADOCODIGOCOB.Value;
      DM2.TBCtCTT_DESFONE.Value:=QYClientesCLI_FONE1.Value;
      DM2.TBCtCTT_DESIE.Value:=QYClientesCLI_IECOB.Value;
      DM2.TBCtCTT_DESNOME.Value:=QYClientesCLI_NOME.Value;
      DM2.TBCtCTT_DESNUMERO.Value:=QYClientesCLI_NUMEROCOB.Value;
    end else
    begin
      DM2.TBCtCTT_DESBAIRRO.Clear;
      DM2.TBCtCTT_DESCEP.Clear;
      DM2.TBCtCTT_DESCIDADE.Clear;
      DM2.TBCtCTT_DESCIDADECODIGO.Clear;
      DM2.TBCtCTT_DESCNPJ.Clear;
      DM2.TBCtCTT_DESCOMPLEMENTO.Clear;
      DM2.TBCtCTT_DESCONTATO.Clear;
      DM2.TBCtCTT_DESCPF.Clear;
      DM2.TBCtCTT_DESENDERECO.Clear;
      DM2.TBCtCTT_DESESTADO.Clear;
      DM2.TBCtCTT_DESESTADOCODIGO.Clear;
      DM2.TBCtCTT_DESFONE.Clear;
      DM2.TBCtCTT_DESIE.Clear;
      DM2.TBCtCTT_DESNOME.Clear;
      DM2.TBCtCTT_DESNUMERO.Clear;
      DM2.TBCtCTT_DESTINATARIO.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      (Sender as TDBEdit).SetFocus;
    end;
    QYClientes.Close;
  end;
end;

procedure TFormCt.DBEdit93KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormCt.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn4.Click;
end;

procedure TFormCt.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  BitBtn4.Click;
end;

procedure TFormCt.EliminarItem1Click(Sender: TObject);
begin
  if DBGrid1.Focused then
  BitBtn2.Click;
end;

procedure TFormCt.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCt.FinalizarConhecimento1Click(Sender: TObject);
begin
  if DM2.TBCt.IsEmpty then
  begin
    MessageDlg('Nenhum CT selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtNotas.IsEmpty then
  begin
    MessageDlg('Este CT não contém notas.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='C' then
  begin
    MessageDlg('Este CT foi cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='F' then
  begin
    MessageDlg('CT já finalizado.',mtError,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Finalizar o CT?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormCtFinalizar, FormCtFinalizar);
    FormCtFinalizar.ShowModal;
    FormCtFinalizar.Free;
    FormCtFinalizar:=nil;
  end;
end;

procedure TFormCt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM2.TBCt.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormCt.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBoxDiaPreferencial(DBComboBox7);
end;

procedure TFormCt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormCt.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormCt);
end;

procedure TFormCt.Imprimir1Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormCt.InserirItem1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=1;
  PageControl1Change(Self); //gera o evento.
  BitBtn1.Click;
end;

procedure TFormCt.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCtLoc, FormCtLoc);
  FormCtLoc.ShowModal;
  if CtLoc.Procurar then
  begin
    DM2.TBCt.Close;
    DM2.TBCt.ParamByName('codigo').AsInteger:=FormCtLoc.QYCtCTT_CODIGO.Value;
    DM2.TBCt.Open;
  end;
  FormCtLoc.Free;
  FormCtLoc:=nil;
end;

procedure TFormCt.LocalizarConhecimentonoContasaReceber1Click(Sender: TObject);
begin
  if DM2.TBCt.IsEmpty then
  begin
    MessageDlg('Nenhum conhecimento selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  if DM2.TBCtCTT_STATUS.Value='A' then
  begin
    MessageDlg('Conhecimento não finalizado ou não cancelado.',mtError,[mbOk],0);
    Exit;
  end;
  //se a nota tem código de pedido, procura pelo código do pedido, se não, procura pelo código da nota.
  Receber.SQLLocalizar:='select * from RECEBER left join CLIENTES on REE_CLIENTE=CLI_CODIGO where REE_NUMDOCTO like '+QuotedStr('CT-'+IntToStr(DM2.TBCtCTT_CODIGO.Value)+'/%')+' order by REE_NUMDOCTO, REE_DTVENCIMENTO';
  Application.CreateForm(TFormReceber, FormReceber);
  FormReceber.ShowModal;
  FormReceber.Free;
  FormReceber:=nil;
  Receber.SQLLocalizar:='';
end;

procedure TFormCt.PageControl1Change(Sender: TObject);
begin
  case PageControl1.ActivePageIndex of
    01: begin
          if DM2.TBCt.State in [dsInsert, dsEdit] then
          try
            DM2.TBCt.Post;
            except on Exception do
            begin
              PageControl1.ActivePageIndex:=0;
              Abort;
            end;
          end;
        end;
  end;
end;

procedure TFormCt.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if ChecarLimiteCliente(FormClientesLoc.QYClientesCLI_CODIGO.Value,FormClientesLoc.QYClientesCLI_LIMITECREDITO.Value) then
    begin
      MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
      if FormClientesLoc.QYClientesCLI_BLOQUEARVENDA.Value='S' then
      begin
        DM2.TBCt.Edit;
        DM2.TBCtCTT_DESBAIRRO.Clear;
        DM2.TBCtCTT_DESCEP.Clear;
        DM2.TBCtCTT_DESCIDADE.Clear;
        DM2.TBCtCTT_DESCIDADECODIGO.Clear;
        DM2.TBCtCTT_DESCNPJ.Clear;
        DM2.TBCtCTT_DESCOMPLEMENTO.Clear;
        DM2.TBCtCTT_DESCONTATO.Clear;
        DM2.TBCtCTT_DESCPF.Clear;
        DM2.TBCtCTT_DESENDERECO.Clear;
        DM2.TBCtCTT_DESESTADO.Clear;
        DM2.TBCtCTT_DESESTADOCODIGO.Clear;
        DM2.TBCtCTT_DESFONE.Clear;
        DM2.TBCtCTT_DESIE.Clear;
        DM2.TBCtCTT_DESNOME.Clear;
        DM2.TBCtCTT_DESNUMERO.Clear;
        DM2.TBCtCTT_DESTINATARIO.Clear;
        Exit;
      end;
    end;
    DM2.TBCt.Edit;
    DM2.TBCtCTT_DESBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRROCOB.Value;
    DM2.TBCtCTT_DESCEP.Value:=FormClientesLoc.QYClientesCLI_CEPCOB.Value;
    DM2.TBCtCTT_DESCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADECOB.Value;
    DM2.TBCtCTT_DESCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGOCOB.Value;
    DM2.TBCtCTT_DESCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJCOB.Value;
    DM2.TBCtCTT_DESCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTOCOB.Value;
    DM2.TBCtCTT_DESCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCtCTT_DESCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCtCTT_DESENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECOCOB.Value;
    DM2.TBCtCTT_DESESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCOB.Value;
    DM2.TBCtCTT_DESESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGOCOB.Value;
    DM2.TBCtCTT_DESFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCtCTT_DESIE.Value:=FormClientesLoc.QYClientesCLI_IECOB.Value;
    DM2.TBCtCTT_DESNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCtCTT_DESNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMEROCOB.Value;
    DM2.TBCtCTT_DESTINATARIO.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormCt.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if ChecarLimiteCliente(FormClientesLoc.QYClientesCLI_CODIGO.Value,FormClientesLoc.QYClientesCLI_LIMITECREDITO.Value) then
    begin
      MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
      if FormClientesLoc.QYClientesCLI_BLOQUEARVENDA.Value='S' then
      begin
        DM2.TBCt.Edit;
        DM2.TBCtCTT_CONBAIRRO.Clear;
        DM2.TBCtCTT_CONCEP.Clear;
        DM2.TBCtCTT_CONCIDADE.Clear;
        DM2.TBCtCTT_CONCIDADECODIGO.Clear;
        DM2.TBCtCTT_CONCNPJ.Clear;
        DM2.TBCtCTT_CONCOMPLEMENTO.Clear;
        DM2.TBCtCTT_CONCONTATO.Clear;
        DM2.TBCtCTT_CONCPF.Clear;
        DM2.TBCtCTT_CONENDERECO.Clear;
        DM2.TBCtCTT_CONESTADO.Clear;
        DM2.TBCtCTT_CONESTADOCODIGO.Clear;
        DM2.TBCtCTT_CONFONE.Clear;
        DM2.TBCtCTT_CONIE.Clear;
        DM2.TBCtCTT_CONNOME.Clear;
        DM2.TBCtCTT_CONNUMERO.Clear;
        DM2.TBCtCTT_CONSIGNATARIO.Clear;
        Exit;
      end;
    end;
    DM2.TBCt.Edit;
    DM2.TBCtCTT_CONBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRROCOB.Value;
    DM2.TBCtCTT_CONCEP.Value:=FormClientesLoc.QYClientesCLI_CEPCOB.Value;
    DM2.TBCtCTT_CONCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADECOB.Value;
    DM2.TBCtCTT_CONCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGOCOB.Value;
    DM2.TBCtCTT_CONCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJCOB.Value;
    DM2.TBCtCTT_CONCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTOCOB.Value;
    DM2.TBCtCTT_CONCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCtCTT_CONCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCtCTT_CONENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECOCOB.Value;
    DM2.TBCtCTT_CONESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCOB.Value;
    DM2.TBCtCTT_CONESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGOCOB.Value;
    DM2.TBCtCTT_CONFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCtCTT_CONIE.Value:=FormClientesLoc.QYClientesCLI_IECOB.Value;
    DM2.TBCtCTT_CONNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCtCTT_CONNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMEROCOB.Value;
    DM2.TBCtCTT_CONSIGNATARIO.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormCt.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcmsLoc, FormIcmsLoc);
  FormIcmsLoc.ShowModal;
  if IcmsLoc.Procurar then
  begin
    DM2.TBCt.Edit;
    DM2.TBCtCTT_CSTICMS.Value:=FormIcmsLoc.QYIcmsICM_CODIGO.Value;
    DM2.TBCtICM_DESCRICAO.Value:=FormIcmsLoc.QYIcmsICM_DESCRICAO.Value;
  end;
  FormIcmsLoc.Free;
  FormIcmsLoc:=nil;
end;

procedure TFormCt.Relatorios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCtRel, FormCtRel);
  FormCtRel.ShowModal;
  FormCtRel.Free;
  FormCtRel:=nil;
end;

procedure TFormCt.SpeedButton17Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezasLoc, FormNaturezasLoc);
  FormNaturezasLoc.ShowModal;
  if NaturezasLoc.Procurar then
  begin
    DM2.TBCt.Edit;
    DM2.TBCtCTT_CFOP.Value:=FormNaturezasLoc.QYNaturezasNAT_CODIGO.Value;
    DM2.TBCtCTT_CFOPDESC.Value:=FormNaturezasLoc.QYNaturezasNAT_DESCRICAO.Value;
  end;
  FormNaturezasLoc.Free;
  FormNaturezasLoc:=nil;
end;

procedure TFormCt.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    if ChecarLimiteCliente(FormClientesLoc.QYClientesCLI_CODIGO.Value,FormClientesLoc.QYClientesCLI_LIMITECREDITO.Value) then
    begin
      MessageDlg('Este cliente está com seu limite de crédito ultrapassado.',mtWarning,[mbOk],0);
      if FormClientesLoc.QYClientesCLI_BLOQUEARVENDA.Value='S' then
      begin
        DM2.TBCt.Edit;
        DM2.TBCtCTT_REMBAIRRO.Clear;
        DM2.TBCtCTT_REMCEP.Clear;
        DM2.TBCtCTT_REMCIDADE.Clear;
        DM2.TBCtCTT_REMCIDADECODIGO.Clear;
        DM2.TBCtCTT_REMCNPJ.Clear;
        DM2.TBCtCTT_REMCOMPLEMENTO.Clear;
        DM2.TBCtCTT_REMCONTATO.Clear;
        DM2.TBCtCTT_REMCPF.Clear;
        DM2.TBCtCTT_REMENDERECO.Clear;
        DM2.TBCtCTT_REMESTADO.Clear;
        DM2.TBCtCTT_REMESTADOCODIGO.Clear;
        DM2.TBCtCTT_REMETENTE.Clear;
        DM2.TBCtCTT_REMFONE.Clear;
        DM2.TBCtCTT_REMIE.Clear;
        DM2.TBCtCTT_REMNOME.Clear;
        DM2.TBCtCTT_REMNUMERO.Clear;
        Exit;
      end;
    end;
    DM2.TBCt.Edit;
    DM2.TBCtCTT_REMBAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRROCOB.Value;
    DM2.TBCtCTT_REMCEP.Value:=FormClientesLoc.QYClientesCLI_CEPCOB.Value;
    DM2.TBCtCTT_REMCIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADECOB.Value;
    DM2.TBCtCTT_REMCIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGOCOB.Value;
    DM2.TBCtCTT_REMCNPJ.Value:=FormClientesLoc.QYClientesCLI_CNPJCOB.Value;
    DM2.TBCtCTT_REMCOMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTOCOB.Value;
    DM2.TBCtCTT_REMCONTATO.Value:=FormClientesLoc.QYClientesCLI_CONTATO.Value;
    DM2.TBCtCTT_REMCPF.Value:=FormClientesLoc.QYClientesCLI_CPF.Value;
    DM2.TBCtCTT_REMENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECOCOB.Value;
    DM2.TBCtCTT_REMESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCOB.Value;
    DM2.TBCtCTT_REMESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGOCOB.Value;
    DM2.TBCtCTT_REMETENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM2.TBCtCTT_REMFONE.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    DM2.TBCtCTT_REMIE.Value:=FormClientesLoc.QYClientesCLI_IECOB.Value;
    DM2.TBCtCTT_REMNOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    DM2.TBCtCTT_REMNUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMEROCOB.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TFormCt.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotasLoc, FormFrotasLoc);
  FormFrotasLoc.ShowModal;
  if FrotasLoc.Procurar then
  begin
    DM2.TBCt.Edit;
    DM2.TBCtCTT_VEICULO.Value:=FormFrotasLoc.QYFrotasFRO_CODIGO.Value;
    DM2.TBCtCTT_VEICULOPLACA.Value:=FormFrotasLoc.QYFrotasFRO_PLACA.Value;
    DM2.TBCtCTT_VEICULORNTC.Value:=FormFrotasLoc.QYFrotasFRO_RNTC.Value;
    DM2.TBCtFRO_DESCRICAO.Value:=FormFrotasLoc.QYFrotasFRO_DESCRICAO.Value;
  end;
  FormFrotasLoc.Free;
  FormFrotasLoc:=nil;
end;

procedure TFormCt.SpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    DM2.TBCt.Edit;
    DM2.TBCtCTT_CONDICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    DM2.TBCtCPG_DESCRICAO.Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
    DM2.TBCtCTT_FORMAPAGTO.Value:=FormCondicoesLoc.QYCondicoesCPG_FORMAPAGTO.Value;
    //calcula o desconto.
    DM2.TBCtCTT_VALORTOTAL.Value:=DM2.TBCtCTT_VALORFRETE.Value+DM2.TBCtCTT_VALORSEGURO.Value+DM2.TBCtCTT_VALOROUTROS.Value;
    if DM2.TBCtCTT_DESCPORC.Value>0 then
    DM2.TBCtCTT_DESCVALOR.Value:=((DM2.TBCtCTT_VALORTOTAL.Value/100)*DM2.TBCtCTT_DESCPORC.Value) else
    DM2.TBCtCTT_DESCVALOR.Value:=0;
    //...
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure TFormCt.SpeedButton9Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    DM2.TBCt.Edit;
    DM2.TBCtCTT_VENDEDOR.Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    DM2.TBCtVEN_NOME.Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    DM2.TBCtCTT_COMISSAO.Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.Value;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

initialization
  RegisterClass(TFormCt);

finalization
  UnRegisterClass(TFormCt);

end.
