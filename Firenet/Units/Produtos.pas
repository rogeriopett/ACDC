unit Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls, Mask,
  DB, ComCtrls, Grids, DBGrids, ImgList, PngSpeedButton, PngImageList, PngBitBtn,
  System.ImageList, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormProdutos = class(TForm)
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
    Localizar1Button: TPngSpeedButton;
    DBText2: TDBText;
    DBText1: TDBText;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SpeedButton7: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    Label26: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit36: TDBEdit;
    DBComboBox2: TDBComboBox;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    Relatorios2: TMenuItem;
    AtualizarTabelaDePrecos1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    InserirRegistro1: TMenuItem;
    EliminarRegistro1: TMenuItem;
    N5: TMenuItem;
    SalvarRegistro1: TMenuItem;
    CancelarRegistro1: TMenuItem;
    TabSheet2: TTabSheet;
    TabelaDePrecos1: TMenuItem;
    TabelaDePrecos1Button: TPngSpeedButton;
    N3: TMenuItem;
    FotosDoProduto1: TMenuItem;
    FotosDoProduto1Button: TPngSpeedButton;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    DBEdit25: TDBEdit;
    Label25: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    N4: TMenuItem;
    CadastroDeFamilias1: TMenuItem;
    CadastroDeGrupos1: TMenuItem;
    GroupBox1: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    AnexosDoProduto1Button: TPngSpeedButton;
    CadastroDeFamilias1Button: TPngSpeedButton;
    CadastroDeGrupos1Button: TPngSpeedButton;
    DBEdit53: TDBEdit;
    Label55: TLabel;
    DBComboBox4: TDBComboBox;
    Label54: TLabel;
    Label61: TLabel;
    DBEdit52: TDBEdit;
    ComposicaoDoProduto1: TMenuItem;
    Label62: TLabel;
    ComposicaoDoProduto1Button: TPngSpeedButton;
    DBEdit60: TDBEdit;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    TabSheet4: TTabSheet;
    Label65: TLabel;
    DBEdit62: TDBEdit;
    DBGrid1: TDBGrid;
    Label66: TLabel;
    DBComboBox6: TDBComboBox;
    AtualizarPrecoDeVendaReajuste1: TMenuItem;
    ImpressaoDeEtiquetas1: TMenuItem;
    ImpressaoDeEtiquetas1Button: TPngSpeedButton;
    DBComboBox7: TDBComboBox;
    Label67: TLabel;
    Bevel6: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Ajuda2Button: TPngSpeedButton;
    Relatorios1: TMenuItem;
    N6: TMenuItem;
    Produtos1: TMenuItem;
    FichaTecnica1: TMenuItem;
    ProdutosComQuantidadeAbaixoDoEstoqueMinimo1: TMenuItem;
    ProdutosComQuantidadeAcimaDoEstoqueMaximo1: TMenuItem;
    ProdutosComQuantidadeNegativa1: TMenuItem;
    ProdutosComQuantidadeDiferenteDeZero1: TMenuItem;
    TabelaDePrecos2: TMenuItem;
    PosicaoAtualDoEstoque1: TMenuItem;
    PosicaoAtualDoEstoquePorAlmoxarifado1: TMenuItem;
    PosicaoAtualDoEstoqueSemValores1: TMenuItem;
    PosicaoAtualDoEstoquePorAlmoxarifadoSemValores1: TMenuItem;
    ProdutosComQuantidadeDiferenteDoTotalDosAlmoxarifados1: TMenuItem;
    CadastroDeLotes1: TMenuItem;
    CadastroDeLotes1Button: TPngSpeedButton;
    EditarRegistro1: TMenuItem;
    EditarRegistro1Button: TDBSpeedButton;
    AtualizarCustoComposicaoDosProdutosCompostos1: TMenuItem;
    ProdutosCompostosSintetico1: TMenuItem;
    ProdutosCompostosAnalitico1: TMenuItem;
    CadastroDeClassificacoesFiscais1: TMenuItem;
    CadastroDeImpostoICMS1: TMenuItem;
    CadastroDeImpostoIPI1: TMenuItem;
    CadastroDeImpostoPISCOFINS1: TMenuItem;
    CadastroDeClassificacoesFiscais1Button: TPngSpeedButton;
    CadastroDeImpostoICMS1Button: TPngSpeedButton;
    Exportar1Button: TPngSpeedButton;
    CodigoDoProdutoNosFornecedores1Button: TPngSpeedButton;
    SpeedButton22: TPngSpeedButton;
    Importar1Button: TPngSpeedButton;
    CadastroDeImpostoISS1: TMenuItem;
    DBEdit73: TDBEdit;
    Label30: TLabel;
    SpeedButton28: TPngSpeedButton;
    DBEdit31: TDBEdit;
    DBEdit77: TDBEdit;
    CadastroDeMarcas1: TMenuItem;
    DBEdit78: TDBEdit;
    Label80: TLabel;
    CadastroDeMarcas1Button: TPngSpeedButton;
    TabSheet10: TTabSheet;
    DBMemo2: TDBMemo;
    ProdutosComCodigosDeFornecedores1: TMenuItem;
    ListagemDeProdutosEstiloDOS1: TMenuItem;
    RecalcularCampoMargem1: TMenuItem;
    ProdutosCompostosDeUmProduto1: TMenuItem;
    PngImageList1: TPngImageList;
    Label76: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    PngSpeedButton1: TPngSpeedButton;
    Label81: TLabel;
    DBEdit56: TDBEdit;
    CadastroDeUnidadesDeMedidas1: TMenuItem;
    DBEdit57: TDBEdit;
    PngSpeedButton2: TPngSpeedButton;
    CadastroDeUnidadesDeMedidas1Button: TPngSpeedButton;
    ProdutosPorUnidadeDeMedida1: TMenuItem;
    AnexosDoProduto1: TMenuItem;
    DuplicarProduto1: TMenuItem;
    DuplicarProduto1Button: TPngSpeedButton;
    TransformarEmProdutoComposto1: TMenuItem;
    TransformarEmProdutoSimples1: TMenuItem;
    DBText9: TDBText;
    AlterarComposicaoDoProduto1: TMenuItem;
    Composio1: TMenuItem;
    PrecoDeCustoMenorQueOPrecoDeCustoDaComposicao1: TMenuItem;
    CodigoDoProdutoNosFornecedores1: TMenuItem;
    ProdutosComQuantidadeNegativaOuZerada1: TMenuItem;
    ProdutosComPrecoDeCustoZeradoOuNegativo1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    TransferirEstoqueEntreAlmoxarifados1Button: TPngSpeedButton;
    ProdutosComQuantidadeAbaixoDoEstoqueMaximo1: TMenuItem;
    Label84: TLabel;
    DBEdit58: TDBEdit;
    Cadastros1: TMenuItem;
    AtualizarEstoqueMinimoEMaximo1: TMenuItem;
    Label86: TLabel;
    AtualizarDescontoMaximo1: TMenuItem;
    AtualizarEstoqueAtualComASomaDosAlmoxarifados1: TMenuItem;
    AtualizarPrecoCustoComOCustoComposicao1: TMenuItem;
    DBEdit79: TDBEdit;
    Label87: TLabel;
    DBEdit80: TDBEdit;
    Label88: TLabel;
    DBEdit81: TDBEdit;
    Label89: TLabel;
    StatusBar1: TStatusBar;
    ListagemDeProdutosEstiloDOSCusto1: TMenuItem;
    Label90: TLabel;
    DBEdit82: TDBEdit;
    PngSpeedButton6: TPngSpeedButton;
    ProdutosVsProdutosReais1: TMenuItem;
    Label93: TLabel;
    DBComboBox15: TDBComboBox;
    DBComboBox16: TDBComboBox;
    Label94: TLabel;
    DBEdit83: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit84: TDBEdit;
    CadastroDeMarkups1: TMenuItem;
    DBEdit85: TDBEdit;
    DBEdit59: TDBEdit;
    N1: TMenuItem;
    Exportar1: TMenuItem;
    N7: TMenuItem;
    AtualizarCustoComposicao1: TMenuItem;
    Label99: TLabel;
    DBComboBox19: TDBComboBox;
    PngSpeedButton3: TPngSpeedButton;
    DescricaoDoProdutoParaWebsite1: TMenuItem;
    PngSpeedButton4: TPngSpeedButton;
    Label100: TLabel;
    DBEdit86: TDBEdit;
    Produo1: TMenuItem;
    CadastroDeEtapas1: TMenuItem;
    EtapasDeProducao1: TMenuItem;
    abeladePreos1: TMenuItem;
    AtualizarOutrosCampos1: TMenuItem;
    AtualizarPrecoDeVenda1: TMenuItem;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label73: TLabel;
    SpeedButton17: TPngSpeedButton;
    Label74: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    Label75: TLabel;
    Label79: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Label96: TLabel;
    DBComboBox3: TDBComboBox;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit68: TDBEdit;
    DBComboBox8: TDBComboBox;
    DBEdit22: TDBEdit;
    DBComboBox9: TDBComboBox;
    DBEdit13: TDBEdit;
    DBComboBox10: TDBComboBox;
    DBEdit76: TDBEdit;
    DBComboBox12: TDBComboBox;
    DBComboBox5: TDBComboBox;
    DBComboBox18: TDBComboBox;
    GroupBox4: TGroupBox;
    Label23: TLabel;
    Label68: TLabel;
    SpeedButton24: TPngSpeedButton;
    DBEdit23: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit69: TDBEdit;
    GroupBox5: TGroupBox;
    Label71: TLabel;
    Label69: TLabel;
    SpeedButton23: TPngSpeedButton;
    Label77: TLabel;
    DBEdit66: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit74: TDBEdit;
    GroupBox6: TGroupBox;
    Label72: TLabel;
    Label70: TLabel;
    SpeedButton25: TPngSpeedButton;
    Label78: TLabel;
    DBEdit67: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit75: TDBEdit;
    GroupBox7: TGroupBox;
    Label24: TLabel;
    Label21: TLabel;
    SpeedButton27: TPngSpeedButton;
    Label91: TLabel;
    Label92: TLabel;
    DBEdit24: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBComboBox13: TDBComboBox;
    DBComboBox14: TDBComboBox;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    Label82: TLabel;
    DBComboBox11: TDBComboBox;
    Label105: TLabel;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    Label106: TLabel;
    DBEdit99: TDBEdit;
    Label107: TLabel;
    DBEdit100: TDBEdit;
    Label108: TLabel;
    DBEdit101: TDBEdit;
    Label109: TLabel;
    DBEdit102: TDBEdit;
    Label110: TLabel;
    DBComboBox1: TDBComboBox;
    Label33: TLabel;
    AtualizarPrecoDeVenda1Button: TPngSpeedButton;
    Label95: TLabel;
    DBComboBox17: TDBComboBox;
    ProdutosPorGrupoSemFoto1: TMenuItem;
    TabelaDePrecosSemAgrupamento1: TMenuItem;
    Label36: TLabel;
    DBComboBox20: TDBComboBox;
    CadastroDeFornecedores1Button: TPngSpeedButton;
    Label37: TLabel;
    DBEdit18: TDBEdit;
    AtualizarPrecoDeVenda2Button: TPngSpeedButton;
    DBEdit34: TDBEdit;
    PngSpeedButton7: TPngSpeedButton;
    Label38: TLabel;
    TabelaDeTributosParaCupomFiscal1: TMenuItem;
    CadastrodeBenefcios1: TMenuItem;
    TabSheet5: TTabSheet;
    CadastroDeRegrasFiscais1Button: TPngSpeedButton;
    CadastroDeRegrasFiscais1: TMenuItem;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    DBEdit37: TDBEdit;
    PngSpeedButton8: TPngSpeedButton;
    Panel1: TPanel;
    Label51: TLabel;
    DBText11: TDBText;
    DBText13: TDBText;
    Label48: TLabel;
    DBText8: TDBText;
    GroupBox2: TGroupBox;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    GroupBox8: TGroupBox;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    GroupBox9: TGroupBox;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    Label128: TLabel;
    DBEdit121: TDBEdit;
    PngSpeedButton5: TPngSpeedButton;
    ConsultarCodigoDeBarras1: TMenuItem;
    Label129: TLabel;
    PngSpeedButton9: TPngSpeedButton;
    DBEdit122: TDBEdit;
    DBEdit123: TDBEdit;
    CadastroDeNBS1: TMenuItem;
    Importar1: TMenuItem;
    PngSpeedButton10: TPngSpeedButton;
    AtualizarEstoqueAtual1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure AtualizarTabelaDePrecos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton7Click(Sender: TObject);
    procedure TabelaDePrecos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FotosDoProduto1Click(Sender: TObject);
    procedure CadastroDeFamilias1Click(Sender: TObject);
    procedure CadastroDeGrupos1Click(Sender: TObject);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit53KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit53Exit(Sender: TObject);
    procedure ComposicaoDoProduto1Click(Sender: TObject);
    procedure AtualizarPrecoDeVendaReajuste1Click(Sender: TObject);
    procedure ImpressaoDeEtiquetas1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FichaTecnica1Click(Sender: TObject);
    procedure ProdutosComQuantidadeAbaixoDoEstoqueMinimo1Click(
      Sender: TObject);
    procedure ProdutosComQuantidadeAcimaDoEstoqueMaximo1Click(
      Sender: TObject);
    procedure ProdutosComQuantidadeNegativa1Click(Sender: TObject);
    procedure ProdutosComQuantidadeDiferenteDeZero1Click(Sender: TObject);
    procedure TabelaDePrecos2Click(Sender: TObject);
    procedure PosicaoAtualDoEstoque1Click(Sender: TObject);
    procedure PosicaoAtualDoEstoquePorAlmoxarifado1Click(Sender: TObject);
    procedure PosicaoAtualDoEstoqueSemValores1Click(Sender: TObject);
    procedure PosicaoAtualDoEstoquePorAlmoxarifadoSemValores1Click(
      Sender: TObject);
    procedure ProdutosComQuantidadeDiferenteDoTotalDosAlmoxarifados1Click(
      Sender: TObject);
    procedure CadastroDeLotes1Click(Sender: TObject);
    procedure AtualizarCustoComposicaoDosProdutosCompostos1Click(
      Sender: TObject);
    procedure ProdutosCompostosSintetico1Click(Sender: TObject);
    procedure ProdutosCompostosAnalitico1Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure CadastroDeClassificacoesFiscais1Click(Sender: TObject);
    procedure CadastroDeImpostoICMS1Click(Sender: TObject);
    procedure CadastroDeImpostoIPI1Click(Sender: TObject);
    procedure CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit68KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit63Exit(Sender: TObject);
    procedure DBEdit63KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton24Click(Sender: TObject);
    procedure DBEdit64Exit(Sender: TObject);
    procedure DBEdit64KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton23Click(Sender: TObject);
    procedure DBEdit65Exit(Sender: TObject);
    procedure DBEdit65KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton25Click(Sender: TObject);
    procedure CadastroDeImpostoISS1Click(Sender: TObject);
    procedure DBEdit71Exit(Sender: TObject);
    procedure DBEdit71KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton27Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit12KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit76KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit75KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31Exit(Sender: TObject);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton28Click(Sender: TObject);
    procedure CadastroDeMarcas1Click(Sender: TObject);
    procedure ProdutosComCodigosDeFornecedores1Click(Sender: TObject);
    procedure ListagemDeProdutosEstiloDOS1Click(Sender: TObject);
    procedure RecalcularCampoMargem1Click(Sender: TObject);
    procedure ProdutosCompostosDeUmProduto1Click(Sender: TObject);
    procedure DBEdit54Exit(Sender: TObject);
    procedure DBEdit54KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure CadastroDeUnidadesDeMedidas1Click(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure ProdutosPorUnidadeDeMedida1Click(Sender: TObject);
    procedure AnexosDoProduto1Click(Sender: TObject);
    procedure DuplicarProduto1Click(Sender: TObject);
    procedure TransformarEmProdutoComposto1Click(Sender: TObject);
    procedure TransformarEmProdutoSimples1Click(Sender: TObject);
    procedure AlterarComposicaoDoProduto1Click(Sender: TObject);
    procedure PrecoDeCustoMenorQueOPrecoDeCustoDaComposicao1Click(Sender: TObject);
    procedure CodigoDoProdutoNosFornecedores1Click(Sender: TObject);
    procedure ProdutosComQuantidadeNegativaOuZerada1Click(Sender: TObject);
    procedure ProdutosComPrecoDeCustoZeradoOuNegativo1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit66KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit67KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure TransferirEstoqueEntreAlmoxarifados1ButtonClick(Sender: TObject);
    procedure ProdutosComQuantidadeAbaixoDoEstoqueMaximo1Click(Sender: TObject);
    procedure AtualizarEstoqueMinimoEMaximo1Click(Sender: TObject);
    procedure AtualizarDescontoMaximo1Click(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit31Enter(Sender: TObject);
    procedure DBEdit54Enter(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit71Enter(Sender: TObject);
    procedure DBEdit65Enter(Sender: TObject);
    procedure DBEdit64Enter(Sender: TObject);
    procedure DBEdit63Enter(Sender: TObject);
    procedure DBEdit68Enter(Sender: TObject);
    procedure DBEdit12Enter(Sender: TObject);
    procedure AtualizarEstoqueAtualComASomaDosAlmoxarifados1Click(Sender: TObject);
    procedure AtualizarPrecoCustoComOCustoComposicao1Click(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure ListagemDeProdutosEstiloDOSCusto1Click(Sender: TObject);
    procedure PngSpeedButton6Click(Sender: TObject);
    procedure DBEdit82KeyPress(Sender: TObject; var Key: Char);
    procedure ProdutosVsProdutosReais1Click(Sender: TObject);
    procedure DBEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeMarkups1Click(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit68KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit63KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit64KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit65KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure Exportar1Click(Sender: TObject);
    procedure AtualizarCustoComposicao1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure DescricaoDoProdutoParaWebsite1Click(Sender: TObject);
    procedure PngSpeedButton4Click(Sender: TObject);
    procedure CadastroDeEtapas1Click(Sender: TObject);
    procedure EtapasDeProducao1Click(Sender: TObject);
    procedure AtualizarOutrosCampos1Click(Sender: TObject);
    procedure AtualizarPrecoDeVenda1Click(Sender: TObject);
    procedure ProdutosPorGrupoSemFoto1Click(Sender: TObject);
    procedure TabelaDePrecosSemAgrupamento1Click(Sender: TObject);
    procedure DBEdit16DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PngSpeedButton7Click(Sender: TObject);
    procedure TabelaDeTributosParaCupomFiscal1Click(Sender: TObject);
    procedure CadastrodeBenefcios1Click(Sender: TObject);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure CadastroDeRegrasFiscais1Click(Sender: TObject);
    procedure DBEdit35Exit(Sender: TObject);
    procedure DBEdit35Enter(Sender: TObject);
    procedure DBEdit35KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton8Click(Sender: TObject);
    procedure ConsultarCodigoDeBarras1Click(Sender: TObject);
    procedure DBEdit122Enter(Sender: TObject);
    procedure DBEdit122Exit(Sender: TObject);
    procedure DBEdit122KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit122KeyPress(Sender: TObject; var Key: Char);
    procedure PngSpeedButton9Click(Sender: TObject);
    procedure CadastroDeNBS1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure PngSpeedButton10Click(Sender: TObject);
    procedure AtualizarEstoqueAtual1Click(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizarPrecoCustoProduto(Produto: Integer);
  public
    { Public declarations }
  end;

var
  FormProdutos: TFormProdutos;

implementation
uses ShellApi, DataMod, Main, Funcoes1, FuncoesFirenet, ProdutosLoc, ProdutosTabPreco,
  ProdutosFotos, Familias, Grupos, ProdutosRel, ProdutosComp, ProdutosPrecos, ProdutosEtiquetas, Lotes,
  ClassFiscal, Icms, Ipi, Iss, Piscofins, Marcas, Unidades, ProdutosAnexos, InputNumber, ProdutosCompTree, ProdutosCodigos, DataModSearch,
  Fornecedores, ProdutosTransferir, ProdutosEstoqueMinMax, ProdutosDescontoMaximo, Markups, MarkupsLoc, ProdutosExportar,
  ProdutosApresentacao, Etapas, ProdutosEtapas, ProdutosAtualizar, ProdutosFast, ProdutosPrecosReajustar, InputFloat, BeneficiosLoc, Beneficios,
  RegrasFiscais, ProdutosGTIN, Nbs, ProdutosImportar, ProdutosEstoqueAtual;

{$R *.dfm}

//dica retirada de: http://delphi.about.com/od/tcombobox/a/sizing-combobox-drop-down-width-no-cut-off-right-edge-placements.htm
procedure ComboBox_AutoWidth(const theComboBox: TDBCombobox);
const HORIZONTAL_PADDING = 26; //valor original: 4.
var
  itemsFullWidth: integer;
  idx: integer;
  itemWidth: integer;
begin
  itemsFullWidth := 0;
  // get the max needed with of the items in dropdown state
  for idx := 0 to -1 + theComboBox.Items.Count do
  begin
    itemWidth := theComboBox.Canvas.TextWidth(theComboBox.Items[idx]);
    Inc(itemWidth, 2 * HORIZONTAL_PADDING);
    if (itemWidth > itemsFullWidth) then itemsFullWidth := itemWidth;
  end;
  // set the width of drop down if needed
  if (itemsFullWidth > theComboBox.Width) then
  begin
    //check if there would be a scroll bar
    if theComboBox.DropDownCount < theComboBox.Items.Count then
    itemsFullWidth := itemsFullWidth + GetSystemMetrics(SM_CXVSCROLL);
    SendMessage(theComboBox.Handle, CB_SETDROPPEDWIDTH, itemsFullWidth, 0);
  end;
end;

procedure TFormProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM.TBProdutos.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormProdutos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

procedure TFormProdutos.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormProdutos);
end;

procedure TFormProdutos.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    DM.TBProdutos.Close;
    if ProdutosLoc.CodigoNoFornecedor then
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosCodigosPCO_PRODUTO.Value else
    DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Open;

    DM.TBProdutosQtde.Close;
    DM.TBProdutosQtde.Open;

    DM.TBProdutosFotos.Close;
    DM.TBProdutosFotos.Open;

    DM.TBProdutosComp.Close;
    DM.TBProdutosComp.Open;

    DM.TBProdutosEtapas.Close;
    DM.TBProdutosEtapas.Open;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProdutos.Relatorios2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.AtualizarTabelaDePrecos1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  if MessageDlg('Deseja atualizar a tabela de preço deste produto de acordo com a tabela de preço padrão?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBProdutos.Edit;
    DM.TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
    DM.TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
    DM.TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
    DM.TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
    DM.TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
    DM.TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
    DM.TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
    DM.TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
    DM.TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
    DM.TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
    DM.TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
    DM.TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
    DM.TBProdutos.Post;
    MessageDlg('Preços atualizados.',mtInformation,[mbOk],0);    
  end;
end;

procedure TFormProdutos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutos.DBEdit4Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit4Exit(Sender: TObject);
begin
  LocFamiliasExit(DBEdit4,DBEdit17,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton3.Click;
end;

procedure TFormProdutos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton3Click(Sender: TObject);
begin
  LocFamiliasBotao(DBEdit4,DBEdit17,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit5Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit5Exit(Sender: TObject);
begin
  LocGruposExit(DBEdit5,DBEdit29,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton7.Click;
end;

procedure TFormProdutos.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton7Click(Sender: TObject);
begin
  LocGruposBotao(DBEdit5,DBEdit29,DM.TBProdutos);
end;

procedure TFormProdutos.TabelaDePrecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosTabPreco, FormProdutosTabPreco);
  FormProdutosTabPreco.ShowModal;
  FormProdutosTabPreco.Free;
  FormProdutosTabPreco:=nil;
end;

procedure TFormProdutos.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  ComboBox_AutoWidth(DBComboBox8); //ajusta largura do dropdown.

  {TODO -oRogerio -cGeral : Remover essa opcao dos parametros}
//  if DM.TBParametrosPAR_PRODUTOCODIGOLIVRE.Value='S' then
//  begin
//    DBEdit1.Color:=clWindow;
//    DBEdit1.Enabled:=False;
//    DBEdit1.ReadOnly:=False;
//    DBEdit1.Tag:=10; //para a função SetFields.
//    //retira o generator field.
//    DM.TBProdutos.GeneratorField.Field:='';
//    DM.TBProdutos.GeneratorField.Generator:='';
//    DM.TBProdutos.GeneratorField.IncrementBy:=0;
//  end else
//  begin
//    DBEdit1.Color:=clBtnFace;
//    DBEdit1.Enabled:=True;
//    DBEdit1.ReadOnly:=True;
//    DBEdit1.Tag:=0; //com código automático a função SetFields não se aplica sobre este campo.
//    //recria o generator field.
//    DM.TBProdutos.GeneratorField.Field:='PRO_CODIGO';
//    DM.TBProdutos.GeneratorField.Generator:='GEN_PRODUTOS';
//    DM.TBProdutos.GeneratorField.IncrementBy:=1;
//    DM.TBProdutos.GeneratorField.ApplyEvent:=gamOnPost;
//  end;
end;

procedure TFormProdutos.FotosDoProduto1Click(Sender: TObject);
var PastaH, PastaL: String;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  AbortIf(
    (DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value='') or
    (DM.TBParametrosPAR_HIGHWIDTH.IsNull) or
    (DM.TBParametrosPAR_HIGHHEIGHT.IsNull) or
    (DM.TBParametrosPAR_LOWWIDTH.IsNull) or
    (DM.TBParametrosPAR_LOWWIDTH.IsNull) or
    (DM.TBParametrosPAR_PASTAHIGH.Value='') or
    (DM.TBParametrosPAR_PASTALOW.Value=''),
    'Parâmetro de localização das fotos não definido.'+#13+'Defina em Parâmetros do Sistema.'
  );

  PastaH:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value);
  PastaH:=PastaH+IncludeTrailingPathDelimiter(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),'0',8,taRight)+'\'+DM.TBParametrosPAR_PASTAHIGH.Value);

  PastaL:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALFOTOSPRODUTOS.Value);
  PastaL:=PastaL+IncludeTrailingPathDelimiter(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),'0',8,taRight)+'\'+DM.TBParametrosPAR_PASTALOW.Value);
  AbortIf(not System.SysUtils.ForceDirectories(PastaH),'Não foi possível criar as pastas'+#13#13+PastaH);
  AbortIf(not System.SysUtils.ForceDirectories(PastaL),'Não foi possível criar as pastas'+#13#13+PastaL);

  Application.CreateForm(TFormProdutosFotos, FormProdutosFotos);
  FormProdutosFotos.PastaH:=PastaH;
  FormProdutosFotos.PastaL:=PastaL;
  FormProdutosFotos.OpenPictureDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormProdutosFotos.ShowModal;
  FormProdutosFotos.Free;
  FormProdutosFotos:=nil;
end;

procedure TFormProdutos.CadastroDeFamilias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamilias, FormFamilias);
  FormFamilias.ShowModal;
  FormFamilias.Free;
  FormFamilias:=nil;
end;

procedure TFormProdutos.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormProdutos.CadastroDeGrupos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGrupos, FormGrupos);
  FormGrupos.ShowModal;
  FormGrupos.Free;
  FormGrupos:=nil;
end;

procedure TFormProdutos.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  //if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit53KeyPress(Sender: TObject; var Key: Char);
begin
  //if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit54Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit54Exit(Sender: TObject);
begin
  LocFornecedoresExit(DBEdit54,DBEdit55,nil,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit54KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton1.Click;
end;

procedure TFormProdutos.DBEdit54KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBProdutosPRO_FCI.Clear;
end;

procedure TFormProdutos.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  //if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit25Exit(Sender: TObject);
begin
  //eliminar depois de atualizar e testar.
{  if (DM.TBProdutos.State in [dsInsert, dsEdit]) then
  begin
    if DM.TBProdutosPRO_PRECOCUSTO.Value <> 0 then
    DM.TBProdutosPRO_MARGEM.Value:=Decimais(((DM.TBProdutosPRO_PRECOVENDA.AsExtended*100.00)/DM.TBProdutosPRO_PRECOCUSTO.AsExtended)-100,8) else
    DM.TBProdutosPRO_MARGEM.Value:=0;
  end;}
end;

procedure TFormProdutos.DBEdit53Exit(Sender: TObject);
begin
  //eliminar depois de atualizar e testar.
{  if (DM.TBProdutos.State in [dsInsert, dsEdit]) then
  if DM.TBParametrosPAR_USARMARKUP.Value='S' then
  DM.TBProdutosPRO_PRECOVENDA.Value:=Decimais(DM.TBProdutosPRO_PRECOCUSTO.AsExtended/DM.TBProdutosPRO_MARKUP.AsExtended,2) else
  DM.TBProdutosPRO_PRECOVENDA.Value:=DM.TBProdutosPRO_PRECOCUSTO.Value+((DM.TBProdutosPRO_PRECOCUSTO.Value/100.00)*DM.TBProdutosPRO_MARGEM.Value);}
end;

procedure TFormProdutos.CodigoDoProdutoNosFornecedores1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  //testar sempre conectado qdo usar firedac. DM.TBProdutosCodigos.Datasource:=DM.DSProdutos;
  Application.CreateForm(TFormProdutosCodigos, FormProdutosCodigos);
  FormProdutosCodigos.ShowModal;
  FormProdutosCodigos.Free;
  FormProdutosCodigos:=nil;
  //DM.TBProdutosCodigos.Datasource:=nil;
end;

procedure TFormProdutos.ComposicaoDoProduto1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='N','O produto selecionado não é um produto composto.');

  Application.CreateForm(TFormProdutosCompTree, FormProdutosCompTree);
  FormProdutosCompTree.ShowModal;
  FormProdutosCompTree.Free;
  FormProdutosCompTree:=nil;
end;

procedure TFormProdutos.ConsultarCodigoDeBarras1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_CODIGOBARRAS.Value='','Código de barras não informado.');

  Application.CreateForm(TFormProdutosGTIN, FormProdutosGTIN);
  FormProdutosGTIN.Edit1.Text:=DM.TBProdutosPRO_CODIGOBARRAS.Value;
  FormProdutosGTIN.ShowModal;
  FormProdutosGTIN.Free;
  FormProdutosGTIN:=nil;
end;

procedure TFormProdutos.AtualizarPrecoDeVendaReajuste1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosPrecosReajustar, FormProdutosPrecosReajustar);
  FormProdutosPrecosReajustar.ShowModal;
  FormProdutosPrecosReajustar.Free;
  FormProdutosPrecosReajustar:=nil;
end;

procedure TFormProdutos.AtualizarPrecoDeVenda1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  //DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
  Application.CreateForm(TFormProdutosPrecos, FormProdutosPrecos);
  FormProdutosPrecos.Produto:=DM.TBProdutosPRO_CODIGO.Value;
  FormProdutosPrecos.TBProdutos.Close;
  FormProdutosPrecos.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
  FormProdutosPrecos.TBProdutos.Open;
  FormProdutosPrecos.TBProdutos.Edit;
  FormProdutosPrecos.ShowModal;
  FormProdutosPrecos.Free;
  FormProdutosPrecos:=nil;
end;

procedure TFormProdutos.Importar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosImportar, FormProdutosImportar);
  FormProdutosImportar.ShowModal;
  FormProdutosImportar.Free;
  FormProdutosImportar:=nil;
end;

procedure TFormProdutos.ImpressaoDeEtiquetas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosEtiquetas, FormProdutosEtiquetas);
  FormProdutosEtiquetas.ShowModal;
  FormProdutosEtiquetas.Free;
  FormProdutosEtiquetas:=nil;
end;

procedure TFormProdutos.TabelaDeTributosParaCupomFiscal1Click(Sender: TObject);
begin
  if MessageDlg('Atualizar tabela de tributos para o sistema de cupom fiscal?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select PRO_TIPO, PRO_TRIBUTO, coalesce(PRO_CSTPIS,49) as PRO_CSTPIS, coalesce(PRO_ALIQCOFINS,0) as PRO_ALIQCOFINS, '+
      'coalesce(PRO_ALIQIPI,0) as PRO_ALIQIPI, coalesce(PRO_ALIQPIS,0) as PRO_ALIQPIS from PRODUTOS '+
      'where PRO_TRIBUTO<>''FF'' and PRO_TRIBUTO<>''II'' and PRO_TRIBUTO<>''NN'' and '+
      'PRO_TRIBUTO<>''FS'' and PRO_TRIBUTO<>''IS'' and PRO_TRIBUTO<>''NS'' '+
      'group by PRO_TIPO, PRO_TRIBUTO, PRO_CSTPIS, PRO_ALIQCOFINS, PRO_ALIQIPI, PRO_ALIQPIS '+
      'order by PRO_TIPO, PRO_TRIBUTO, PRO_CSTPIS, PRO_ALIQCOFINS, PRO_ALIQIPI, PRO_ALIQPIS'
    );
    DM.QYAux.Open;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add(
        'select count(*) as QTDE from TRIBUTOS '+
        'where TRI_ALIQICMS=:icms and TRI_ALIQPIS=:pis and TRI_ALIQCOFINS=:cofins and TRI_ALIQIPI=:ipi and TRI_CSTPIS=:cst and TRI_SERVICO=:servico'
      );
      DM.QYAux2.ParamByName('icms').AsFloat:=DM.QYAux.FieldByName('PRO_TRIBUTO').AsFloat;
      DM.QYAux2.ParamByName('pis').AsFloat:=DM.QYAux.FieldByName('PRO_ALIQPIS').AsFloat;
      DM.QYAux2.ParamByName('cofins').AsFloat:=DM.QYAux.FieldByName('PRO_ALIQCOFINS').AsFloat;
      DM.QYAux2.ParamByName('ipi').AsFloat:=DM.QYAux.FieldByName('PRO_ALIQIPI').AsFloat;
      DM.QYAux2.ParamByName('cst').AsFloat:=DM.QYAux.FieldByName('PRO_CSTPIS').AsFloat;
      DM.QYAux2.ParamByName('servico').AsString:=DM.QYAux.FieldByName('PRO_TIPO').AsString;
      DM.QYAux2.Open;

      if DM.QYAux2.FieldByName('QTDE').AsInteger=0 then
      begin
        DM.TBTributos.Insert;
        DM.TBTributosTRI_ALIQCOFINS.Value:=DM.QYAux.FieldByName('PRO_ALIQCOFINS').AsFloat;
        DM.TBTributosTRI_ALIQICMS.Value:=DM.QYAux.FieldByName('PRO_TRIBUTO').AsFloat; //campo do tributo é o campo do ICMS.
        DM.TBTributosTRI_ALIQIPI.Value:=DM.QYAux.FieldByName('PRO_ALIQIPI').AsFloat;
        DM.TBTributosTRI_ALIQPIS.Value:=DM.QYAux.FieldByName('PRO_ALIQPIS').AsFloat;
        DM.TBTributosTRI_CSTPIS.Value:=DM.QYAux.FieldByName('PRO_CSTPIS').AsInteger;
        DM.TBTributosTRI_SERVICO.Value:=DM.QYAux.FieldByName('PRO_TIPO').AsString;
        DM.TBTributos.Post;
      end;

      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    DM.QYAux2.Close;
    MessageDlg('Atualização concluída.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutos.TransformarEmProdutoComposto1Click(Sender: TObject);
var Qtde, Codigo: Integer;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='S','O produto selecionado já é um produto composto.');

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from PRODUTOS where PRO_PRODUTOREAL=:produto');
  DM.QYAux.ParamByName('produto').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
  DM.QYAux.Open;
  Qtde:=DM.QYAux.FieldByName('QTDE').AsInteger;
  DM.QYAux.Close;
  AbortIf(Qtde > 0,'Existem produtos que referenciam este produto como produto real. Não é permitido utilizar produtos compostos como produto real.'+#13#10+'Verifique o relatório "Produtos vs Produtos Reais"');

  if MessageDlg('Deseja transformar o produto selecionado em produto composto?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_COMPOSTO='+QuotedStr('S')+' where PRO_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
    DM.QYAux.ExecSQL;
    Codigo:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Codigo; //pra garantir.
    DM.TBProdutos.Open;
    MessageDlg('O produto selecionado foi alterado para composto.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutos.TransformarEmProdutoSimples1Click(Sender: TObject);
var Codigo: Integer;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='N','O produto selecionado já é um produto simples.');

  if MessageDlg('Deseja transformar o produto selecionado em produto simples?'+#13#10+#13#10+'A composição atual do produto será eliminada!',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //elimina a composição do produto.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from PRODUTOSCOMP where PRC_PRODUTO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
    DM.QYAux.ExecSQL;

    //altera o produto para simples e zera o campo custo composição.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_COMPOSTO='+QuotedStr('N')+', PRO_PRECOCUSTOCOMP=0 where PRO_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
    DM.QYAux.ExecSQL;
    Codigo:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Codigo; //pra garantir.
    DM.TBProdutos.Open;

    MessageDlg('O produto selecionado foi alterado para simples.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutos.PngSpeedButton10Click(Sender: TObject);
var ValorFinal: Currency;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='N','Este produto nao é composto.');

  ValorFinal:=CalcularPrecoVendaComposto(DM.TBProdutosPRO_CODIGO.Value);
  MessageDlg('O preço de venda do produto '+DM.TBProdutosPRO_NOME.Value+' é '+Format('%m',[ValorFinal]),mtInformation,[mbOk],0);
end;

procedure TFormProdutos.PngSpeedButton1Click(Sender: TObject);
begin
  LocFornecedoresBotao(DBEdit54,DBEdit55,nil,DM.TBProdutos);
end;

procedure TFormProdutos.PngSpeedButton2Click(Sender: TObject);
begin
  LocUnidadesBotao(DBEdit10,DBEdit57,DM.TBProdutos);
end;

procedure TFormProdutos.PngSpeedButton3Click(Sender: TObject);
begin
  DBEdit6.SelectAll;
  DBEdit6.CopyToClipboard;
end;

procedure TFormProdutos.PngSpeedButton4Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('https://www.codigocest.com.br/'),nil,nil,sw_ShowNormal);
end;

procedure TFormProdutos.TransferirEstoqueEntreAlmoxarifados1ButtonClick(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  Application.CreateForm(TFormProdutosTransferir, FormProdutosTransferir);
  FormProdutosTransferir.ShowModal;
  FormProdutosTransferir.Free;
  FormProdutosTransferir:=nil;
end;

procedure TFormProdutos.PngSpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if DM.TBProdutosPRO_CODIGO.Value=FormProdutosLoc.QYProdutosPRO_CODIGO.Value then
    MessageDlg('Não é possível selecionar o próprio produto como produto real.',mtWarning,[mbOk],0) else
    if FormProdutosLoc.QYProdutosPRO_COMPOSTO.Value='S' then
    MessageDlg('Não é possível selecionar produto composto para produto real.',mtWarning,[mbOk],0) else
    begin
      DM.TBProdutos.Edit;
      DM.TBProdutosPRO_PRODUTOREAL.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure TFormProdutos.PngSpeedButton7Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficiosLoc, FormBeneficiosLoc);
  FormBeneficiosLoc.ShowModal;
  if BeneficiosLoc.Procurar then
  begin
    DM.TBProdutosPRO_BENEFICIO.Value:=FormBeneficiosLoc.QYBeneficiosBEN_CODIGO.Value;
  end;
  FormBeneficiosLoc.Free;
  FormBeneficiosLoc:=nil;
end;

procedure TFormProdutos.PngSpeedButton8Click(Sender: TObject);
begin
  LocRegrasFiscaisBotao(DBEdit35,DBEdit37,DBEdit112,DBEdit113,DBEdit114,DBEdit115,DBEdit116,DBEdit117,DBEdit120,DBEdit119,DBEdit118,
    DBEdit46,DBEdit45,DBEdit38,DBEdit39,DBEdit40,DBEdit41,DBEdit42,DBEdit43,DBEdit44,
    DBEdit106,DBEdit105,DBEdit47,DBEdit48,DBEdit49,DBEdit50,DBEdit51,DBEdit103,DBEdit104,
    DBEdit107,DBEdit108,DBEdit110,DBEdit109,DBEdit111,DM.TBProdutos
  );
end;

procedure TFormProdutos.PngSpeedButton9Click(Sender: TObject);
begin
  LocNbsBotao(DBEdit122,DBEdit123,DM.TBProdutos);
end;

procedure TFormProdutos.FichaTecnica1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  if DM.TBProdutosPRO_NOME.Value<>'' then
  begin
    FormProdutosRel.Edit1.Text:=DM.TBProdutosPRO_CODIGO.Value.ToString;
    FormProdutosRel.Edit2.Text:=DM.TBProdutosPRO_NOME.Value;
  end;
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=0;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.TabelaDePrecos2Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=1;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.TabelaDePrecosSemAgrupamento1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=2;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.Produtos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=3;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMinimo1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=4;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeAcimaDoEstoqueMaximo1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=5;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMaximo1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=6;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeNegativa1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=7;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeNegativaOuZerada1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=8;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeDiferenteDeZero1Click(
  Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=9;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComQuantidadeDiferenteDoTotalDosAlmoxarifados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=10;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComPrecoDeCustoZeradoOuNegativo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=11;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosComCodigosDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=12;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosCompostosSintetico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=13;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosCompostosAnalitico1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=14;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.PrecoDeCustoMenorQueOPrecoDeCustoDaComposicao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=15;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosCompostosDeUmProduto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=16;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosPorGrupoSemFoto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=17;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosPorUnidadeDeMedida1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=18;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.ProdutosVsProdutosReais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=19;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.PosicaoAtualDoEstoque1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=20;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.PosicaoAtualDoEstoqueSemValores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=21;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.PosicaoAtualDoEstoquePorAlmoxarifado1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=22;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.PosicaoAtualDoEstoquePorAlmoxarifadoSemValores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosRel, FormProdutosRel);
  FormProdutosRel.ComboBox2.Enabled:=False;
  FormProdutosRel.ComboBox2.ItemIndex:=23;
  FormProdutosRel.ComboBox2Change(Self);
  FormProdutosRel.ShowModal;
  FormProdutosRel.Free;
  FormProdutosRel:=nil;
end;

procedure TFormProdutos.CadastroDeLotes1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  //associa o datasource apenas quando usar a tabela lotes.
  DM.TBLotes.DataSource:=DM.DSProdutos;
  Application.CreateForm(TFormLotes, FormLotes);
  FormLotes.ShowModal;
  FormLotes.Free;
  FormLotes:=nil;
  DM.TBLotes.DataSource:=nil;
end;

procedure TFormProdutos.AlterarComposicaoDoProduto1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='N','Este produto não é composto.');

  Application.CreateForm(TFormProdutosComp, FormProdutosComp);
  FormProdutosComp.ShowModal;
  FormProdutosComp.Free;
  FormProdutosComp:=nil;

  Screen.Cursor:=crHourGlass;
  DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
  AtualizarPrecoCustoProduto(DM.TBProdutosPRO_CODIGO.Value);
  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM.TBProdutos.Open;
  Screen.Cursor:=crDefault;

  if DM.TBProdutosPRO_PRECOCUSTOCOMP.Value<>DM.TBProdutosPRO_PRECOCUSTO.Value then
  begin
    if MessageDlg('O Custo da Composição é diferente do Preço de Custo.'+#13#10+'Deseja atualizar o Preço de Custo conforme o Custo da Composição?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('update PRODUTOS set PRO_PRECOCUSTO=:precocusto, PRO_MARGEM=:margem where PRO_CODIGO=:codigo'); //campo preco custo não tem na instrucao update do TBProdutos.
      DM.QYAux.ParamByName('precocusto').AsExtended:=DM.TBProdutosPRO_PRECOCUSTOCOMP.AsExtended;
      DM.QYAux.ParamByName('margem').AsExtended:=Decimais(((DM.TBProdutosPRO_PRECOVENDA.AsExtended * 100.00) / DM.TBProdutosPRO_PRECOCUSTOCOMP.AsExtended)-100,8); //recalcula a margem, pois o preco de custo alterou.
      DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
      DM.QYAux.ExecSQL;

      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
      DM.TBProdutos.Open;
    end;
  end;
end;

procedure TFormProdutos.AnexosDoProduto1Click(Sender: TObject);
var Pasta: String;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBParametrosPAR_LOCALANEXOSPRODUTOS.Value='','Parâmetro de localização dos anexos não definido.'+#13+'Defina em Parâmetros do Sistema.');

  Pasta:=IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALANEXOSPRODUTOS.Value);
  Pasta:=Pasta+AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),'0',8,taRight)+'\';
  AbortIf(not System.SysUtils.ForceDirectories(Pasta),'Não foi possível criar as pastas'+#13#13+Pasta);

  Application.CreateForm(TFormProdutosAnexos, FormProdutosAnexos);
  FormProdutosAnexos.Pasta:=Pasta;
  FormProdutosAnexos.FileListBox1.Directory:=Pasta;
  FormProdutosAnexos.FileListBox1.ItemIndex:=0;
  FormProdutosAnexos.OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName);
  FormProdutosAnexos.ShowModal;
  FormProdutosAnexos.Free;
  FormProdutosAnexos:=nil;
end;

procedure TFormProdutos.AtualizarDescontoMaximo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosDescontoMaximo, FormProdutosDescontoMaximo);
  FormProdutosDescontoMaximo.ShowModal;
  FormProdutosDescontoMaximo.Free;
  FormProdutosDescontoMaximo:=nil;
end;

procedure TFormProdutos.AtualizarEstoqueAtual1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  Application.CreateForm(TFormProdutosEstoqueAtual, FormProdutosEstoqueAtual);
  FormProdutosEstoqueAtual.ShowModal;
  FormProdutosEstoqueAtual.Free;
  FormProdutosEstoqueAtual:=nil;
end;

procedure TFormProdutos.AtualizarEstoqueAtualComASomaDosAlmoxarifados1Click(
  Sender: TObject);
begin
  if MessageDlg('Atualizar o campo estoque atual de todos os produtos com a soma das quantidades nos almoxarifados?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    //query para somar a quantidade.
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select sum(PRQ_QUANTIDADE) as QTDE from PRODUTOSQTDE where PRQ_PRODUTO=:codigo');
    //query para atualizar o produto.
    DM.QYAux3.Close;
    DM.QYAux3.SQL.Clear;
    DM.QYAux3.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=:qtde where PRO_CODIGO=:codigo');
    //query para percorrer os produtos.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select PRO_CODIGO from PRODUTOS order by PRO_CODIGO');
    DM.QYAux.Open;
    while not DM.QYAux.Eof do
    begin
      //busca a soma da quantidade.
      DM.QYAux2.Close;
      DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      DM.QYAux2.Open;
      //atualiza o produto.
      DM.QYAux3.Close;
      DM.QYAux3.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
      DM.QYAux3.ParamByName('qtde').AsFloat:=DM.QYAux2.FieldByName('QTDE').AsFloat;
      DM.QYAux3.ExecSQL;
      //...
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    Screen.Cursor:=crDefault;
    MessageDlg('Produtos Atualizados.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormProdutos.AtualizarEstoqueMinimoEMaximo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosEstoqueMinMax, FormProdutosEstoqueMinMax);
  FormProdutosEstoqueMinMax.ShowModal;
  FormProdutosEstoqueMinMax.Free;
  FormProdutosEstoqueMinMax:=nil;
end;

procedure TFormProdutos.AtualizarOutrosCampos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosAtualizar, FormProdutosAtualizar);
  FormProdutosAtualizar.ShowModal;
  FormProdutosAtualizar.Free;
  FormProdutosAtualizar:=nil;
end;

procedure TFormProdutos.AtualizarPrecoCustoComOCustoComposicao1Click(
  Sender: TObject);
begin
  if MessageDlg('Atualizar o campo Preço de Custo de todos os produtos COMPOSTOS com o valor do campo Custo Composição?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;

    //atualiza o preço de custo com o preço de custo da composição. (somente dos produtos compostos).
    StatusBar1.Panels[1].Text:='Atualizando preço de custo com o preço de custo da composição...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_PRECOCUSTO=PRO_PRECOCUSTOCOMP where PRO_COMPOSTO='+QuotedStr('S'));
    DM.QYAux.ExecSQL;

    //recalcula o preço de venda de todos os produtos.
    StatusBar1.Panels[1].Text:='Atualizando preço de venda...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update PRODUTOS set PRO_PRECOVENDA=PRO_PRECOCUSTO+( cast(PRO_PRECOCUSTO/100.00 as numeric(18,6)) * PRO_MARGEM);');
    DM.QYAux.ExecSQL;

    //recalcula as demais tabelas de preço de todos os produtos.
    StatusBar1.Panels[1].Text:='Atualizando demais tabelas de preço...';
    Application.ProcessMessages;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update PRODUTOS set '+
      'PRO_PRECO1=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM1 as numeric(18,4))), '+
      'PRO_PRECO2=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM2 as numeric(18,4))), '+
      'PRO_PRECO3=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM3 as numeric(18,4))), '+
      'PRO_PRECO4=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM4 as numeric(18,4))), '+
      'PRO_PRECO5=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM5 as numeric(18,4))), '+
      'PRO_PRECO6=PRO_PRECOVENDA+( cast(PRO_PRECOVENDA/100.00 as numeric(18,6)) * cast(PRO_MARGEM6 as numeric(18,4)));'
    );
    DM.QYAux.ExecSQL;

    DM.TBProdutos.Open;
    Screen.Cursor:=crDefault;
    StatusBar1.Panels[1].Text:='Atualização concluída...';
    Application.ProcessMessages;
    MessageDlg('Atualização OK...',mtInformation,[mbOk],0);
    StatusBar1.Panels[1].Text:='';
  end;
end;

procedure TFormProdutos.AtualizarPrecoCustoProduto(Produto: Integer);
var QY, QY2, QY3: TFDQuery;
  TR, TR2, TR3: TFDTransaction;
  CustoTotal: Currency;
begin
  TR:=TFDTransaction.Create(Self);
  TR.Connection:=DM.FDConnection1;
  TR.Options.Isolation:=xiReadCommitted;

  QY:=TFDQuery.Create(Self);
  QY.Connection:=DM.FDConnection1;
  QY.Transaction:=TR;
  QY.SQL.Clear;
  QY.SQL.Add(
    'select PRC_PRODUTOCOMP, PRC_QUANTIDADE, PRO_COMPOSTO, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP from PRODUTOSCOMP '+
    'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO where PRC_PRODUTO=:codigo'
  );
  QY.ParamByName('codigo').AsInteger:=Produto;
  QY.Open;
  CustoTotal:=0;
  while not QY.Eof do
  begin
    if QY.FieldByName('PRO_COMPOSTO').AsString='S' then
    begin
      AtualizarPrecoCustoProduto(QY.FieldByName('PRC_PRODUTOCOMP').AsInteger); //atualiza o produto composto dentro do composto.

      //busca novo valor atualizado do campo PRECOCUSTOCOMP, pois o comando acima pode ter alterado a mesma e quando volta da recursividade não está atualizado nessa transação.
      TR3:=TFDTransaction.Create(Self);
      TR3.Connection:=DM.FDConnection1;
      TR3.Options.Isolation:=xiReadCommitted;

      QY3:=TFDQuery.Create(Self);
      QY3.Connection:=DM.FDConnection1;
      QY3.Transaction:=TR3;
      QY3.SQL.Clear;
      QY3.SQL.Add('select PRO_PRECOCUSTOCOMP from PRODUTOS where PRO_CODIGO=:codigo');
      QY3.ParamByName('codigo').AsInteger:=QY.FieldByName('PRC_PRODUTOCOMP').AsInteger;
      QY3.Open;
      //...

      //CustoTotal:=CustoTotal+(QY.FieldByName('PRO_PRECOCUSTOCOMP').AsExtended*QY.FieldByName('PRC_QUANTIDADE').AsFloat);
      CustoTotal:=CustoTotal+(QY3.FieldByName('PRO_PRECOCUSTOCOMP').AsExtended*QY.FieldByName('PRC_QUANTIDADE').AsFloat);

      QY3.Close;
      TR3.Destroy;
      QY3.Destroy;
    end else
    CustoTotal:=CustoTotal+(QY.FieldByName('PRO_PRECOCUSTO').AsExtended*QY.FieldByName('PRC_QUANTIDADE').AsFloat);
    QY.Next;
  end;

  TR2:=TFDTransaction.Create(Self);
  TR2.Connection:=DM.FDConnection1;
  TR2.Options.Isolation:=xiReadCommitted;

  QY2:=TFDquery.Create(Self);
  QY2.Transaction:=TR2;
  QY2.Connection:=DM.FDConnection1;
  QY2.SQL.Clear;
  QY2.SQL.Add('update PRODUTOS set PRO_PRECOCUSTOCOMP=:custototal where PRO_CODIGO=:codigo');
  QY2.ParamByName('codigo').AsInteger:=Produto;
  QY2.ParamByName('custototal').AsFMTBCD:=CustoTotal;
  QY2.ExecSQL;

  TR2.Destroy;
  QY2.Destroy;

  TR.Destroy;
  QY.Destroy;
end;

procedure TFormProdutos.AtualizarCustoComposicaoDosProdutosCompostos1Click(Sender: TObject);
var I, Max: Integer;
begin
  if MessageDlg('Atualizar os preços de custo dos produtos compostos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    Screen.Cursor:=crHourGlass;
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select PRO_CODIGO, PRO_NOME from PRODUTOS where PRO_COMPOSTO=''S'' order by PRO_CODIGO');
    DM.QYAux.Open;
    DM.QYAux.FetchAll;
    Max:=DM.QYAux.RecordCount;
    I:=0;
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      Inc(I);
      StatusBar1.Panels[0].Text:=IntToStr(I)+' de '+IntToStr(Max);
      StatusBar1.Panels[1].Text:='Atualizando produto: '+DM.QYAux.FieldByName('PRO_CODIGO').AsString+' - '+DM.QYAux.FieldByName('PRO_NOME').AsString;
      StatusBar1.Repaint;
      Application.ProcessMessages;
      AtualizarPrecoCustoProduto(DM.QYAux.FieldByName('PRO_CODIGO').AsInteger); //procedure recursiva.
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBProdutos.Open;
    Screen.Cursor:=CrDefault;
    MessageDlg('Atualização completa.',mtInformation,[mbOk],0);
    StatusBar1.Panels[0].Text:='';
    StatusBar1.Panels[1].Text:='';
    StatusBar1.Repaint;
  end;
end;

procedure TFormProdutos.AtualizarCustoComposicao1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(DM.TBProdutosPRO_COMPOSTO.Value='N','Este produto não é composto.');

  if MessageDlg('Atualizar o Custo da Composição?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    AtualizarPrecoCustoProduto(DM.TBProdutosPRO_CODIGO.Value);
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBProdutos.Open;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFormProdutos.ListagemDeProdutosEstiloDOS1Click(Sender: TObject);
begin
  if MessageDlg('Imprimir Lista de Produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  ImprimirListaProdutosPreco('VENDA');
end;

procedure TFormProdutos.ListagemDeProdutosEstiloDOSCusto1Click(Sender: TObject);
begin
  if MessageDlg('Imprimir Lista de Produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  ImprimirListaProdutosPreco('CUSTO');
end;

procedure TFormProdutos.CadastrodeBenefcios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficios, FormBeneficios);
  FormBeneficios.ShowModal;
  FormBeneficios.Free;
  FormBeneficios:=nil;
end;

procedure TFormProdutos.CadastroDeClassificacoesFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscal, FormClassFiscal);
  FormClassFiscal.ShowModal;
  FormClassFiscal.Free;
  FormClassFiscal:=nil;
end;

procedure TFormProdutos.CadastroDeEtapas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtapas, FormEtapas);
  FormEtapas.ShowModal;
  FormEtapas.Free;
  FormEtapas:=nil;
end;

procedure TFormProdutos.CadastroDeImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormProdutos.CadastroDeImpostoIPI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpi, FormIpi);
  FormIpi.ShowModal;
  FormIpi.Free;
  FormIpi:=nil;
end;

procedure TFormProdutos.CadastroDeImpostoPISCOFINS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofins, FormPiscofins);
  FormPiscofins.ShowModal;
  FormPiscofins.Free;
  FormPiscofins:=nil;
end;

procedure TFormProdutos.DBEdit68Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit68Exit(Sender: TObject);
begin
  LocIcmsExit(DBEdit68,DBEdit13,nil,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit68KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton17.Click;
end;

procedure TFormProdutos.DBEdit68KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['<','>','!','@','#','$','%','^','&','*','?','[',']','{','}','|','~']) then Key:=#0;
end;

procedure TFormProdutos.SpeedButton17Click(Sender: TObject);
begin
  LocIcmsBotao(DBEdit68,DBEdit13,nil,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit63Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit63Exit(Sender: TObject);
begin
  LocIpiExit(DBEdit63,DBEdit69,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit63KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton24.Click;
end;

procedure TFormProdutos.DBEdit63KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton24Click(Sender: TObject);
begin
  LocIpiBotao(DBEdit63,DBEdit69,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit64Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit64Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit64,DBEdit21,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit64KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton23.Click;
end;

procedure TFormProdutos.DBEdit64KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton23Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit64,DBEdit21,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit65Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit65Exit(Sender: TObject);
begin
  LocPiscofinsExit(DBEdit65,DBEdit70,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit65KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton25.Click;
end;

procedure TFormProdutos.DBEdit65KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit66KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit67KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.SpeedButton25Click(Sender: TObject);
begin
  LocPiscofinsBotao(DBEdit65,DBEdit70,DM.TBProdutos);
end;

procedure TFormProdutos.CadastroDeImpostoISS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIss, FormIss);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormProdutos.DBEdit71Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit71Exit(Sender: TObject);
begin
  LocIssExit(DBEdit71,DBEdit72,DBEdit24,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit71KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton27.Click;
end;

procedure TFormProdutos.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton27Click(Sender: TObject);
begin
  LocIssBotao(DBEdit71,DBEdit72,DBEdit24,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit10Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit10Exit(Sender: TObject);
begin
  LocUnidadesExit(DBEdit10,DBEdit57,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton2.Click;
end;

procedure TFormProdutos.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit122Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit122Exit(Sender: TObject);
begin
  LocNbsExit(DBEdit122,DBEdit123,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit122KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton9.Click;
end;

procedure TFormProdutos.DBEdit122KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit12Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit12Exit(Sender: TObject);
begin
  LocClassFiscalExit(DBEdit12,DBEdit73,DBEdit86,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton22.Click;
end;

procedure TFormProdutos.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit16DblClick(Sender: TObject);
var  Senha: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM.TBProdutos.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Application.CreateForm(TFormInputFloat, FormInputFloat);
      //FormInputFloat.ImageDollar.Visible:=True;
      FormInputFloat.Caption:='Alterar Quantidade';
      FormInputFloat.Label1.Caption:='Informe a nova Quantidade:';
      FormInputFloat.Edit1.Text:=DM.TBProdutosPRO_ESTOQUEATUAL.AsString;
      if (FormInputFloat.ShowModal=mrOK) then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=:qtde where PRO_CODIGO=:codigo');
        DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(FormInputFloat.Edit1.Text);
        DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_CODIGO.Value;
        DM.QYAux.ExecSQL;

        DM.TBProdutos.Close;
        DM.TBProdutos.Open;
      end;
      FormInputFloat.Free;
      FormInputFloat:=nil;
    end;

  end;
end;

procedure TFormProdutos.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.SpeedButton22Click(Sender: TObject);
begin
  LocClassFiscalBotao(DBEdit12,DBEdit73,DBEdit86,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit76KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit82KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  DM.TBProdutosPRO_PRODUTOREAL.Value:=0;
end;

procedure TFormProdutos.DBGrid1DblClick(Sender: TObject);
var  Senha: String;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin

    if DM.TBProdutos.IsEmpty then
    Exit;

    if DM.TBProdutosQtde.IsEmpty then
    Exit;

    repeat
      Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
      if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
    until (Senha=TodaysPassword) or (Senha='');
    if Senha=TodaysPassword then
    begin
      Application.CreateForm(TFormInputFloat, FormInputFloat);
      //FormInputFloat.ImageDollar.Visible:=True;
      FormInputFloat.Caption:='Alterar Quantidade';
      FormInputFloat.Label1.Caption:='Informe a nova Quantidade:';
      FormInputFloat.Edit1.Text:=DM.TBProdutosPRO_ESTOQUEATUAL.AsString;
      if (FormInputFloat.ShowModal=mrOK) then
      begin
        DM.QYAux.Close;
        DM.QYAux.SQL.Clear;
        DM.QYAux.SQL.Add('update PRODUTOSQTDE set PRQ_QUANTIDADE=:qtde where PRQ_PRODUTO=:produto and PRQ_ALMOXARIFADO=:almoxarifado');
        DM.QYAux.ParamByName('qtde').AsFMTBCD:=StrToFloat(FormInputFloat.Edit1.Text);
        DM.QYAux.ParamByName('produto').AsInteger:=DM.TBProdutosQtdePRQ_PRODUTO.Value;
        DM.QYAux.ParamByName('almoxarifado').AsInteger:=DM.TBProdutosQtdePRQ_ALMOXARIFADO.Value;
        DM.QYAux.ExecSQL;

        DM.TBProdutosQtde.Close;
        DM.TBProdutosQtde.Open;
      end;
      FormInputFloat.Free;
      FormInputFloat:=nil;
    end;

  end;
end;

procedure TFormProdutos.DescricaoDoProdutoParaWebsite1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  DM.TBProdutos.Edit;
  Application.CreateForm(TFormProdutosApresentacao, FormProdutosApresentacao);
  FormProdutosApresentacao.ShowModal;
  FormProdutosApresentacao.Free;
  FormProdutosApresentacao:=nil;
end;

procedure TFormProdutos.DuplicarProduto1Click(Sender: TObject);
var Campos: array[0..160] of Variant; //setar para o total de campos pro_ + os campos das tabelas
  Codigo: Integer;
  I: Word;
  DuplicarComposicao: Boolean;
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  if MessageDlg('Deseja realmente duplicar o produto '+DM.TBProdutosPRO_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Codigo:=DM.TBProdutosPRO_CODIGO.Value;
    DuplicarComposicao:=False;
    if DM.TBProdutosPRO_COMPOSTO.Value='S' then
    begin
      if MessageDlg('Este produto é composto. Deseja duplicar sua composição também?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
      begin
        DuplicarComposicao:=True;
      end;
    end;
    //duplica o produto.
    for I:=0 to DM.TBProdutos.Fields.Count-1 do
    Campos[I]:=DM.TBProdutos.Fields[I].Value;

    DM.TBProdutos.Insert;
    for I:=0 to DM.TBProdutos.Fields.Count-1 do
    DM.TBProdutos.Fields[I].Value:=Campos[I];

    DM.TBProdutosPRO_DTCADASTRO.Value:=DM.ServerDate; //associa nova data de cadastro e limpa alguns campos.
    DM.TBProdutosPRO_DTULTCOMPRA.Clear;
    DM.TBProdutosPRO_DTULTVENDA.Clear;
    DM.TBProdutosPRO_HRCADASTRO.Value:=DM.ServerTime;
    DM.TBProdutosPRO_PRECOCUSTOULT.Clear;
    DM.TBProdutosPRO_PRECOCUSTOMEDIO.Clear;
    DM.TBProdutosPRO_PRECOVENDAULT.Clear;
    DM.TBProdutosPRO_PRECOVENDAMEDIO.Clear;
    DM.TBProdutosPRO_ESTOQUEATUAL.Value:=0;
    DM.TBProdutosPRO_CODIGO.Clear; //limpa campos para associar valor novo.
    if DM.TBParametrosPAR_PRODUTOCODIGOLIVRE.Value='S' then
    begin
      Application.CreateForm(TFormInputNumber, FormInputNumber);
      InputNumber.Titulo:='Novo código de produto';
      InputNumber.Etiqueta:='Digite o novo código para o produto duplicado:';
      InputNumber.DefaultValue:='';
      InputNumber.AceitaVirgula:=True;
      FormInputNumber.ShowModal;
      if InputNumber.Retorno<>'' then
      begin
        DM.TBProdutosPRO_CODIGO.Value:=StrToInt(InputNumber.Retorno);
        DM.TBProdutos.Post;
      end else
      begin
        DM.TBProdutos.Cancel;
        MessageDlg('Duplicação de produto cancelada.',mtInformation,[mbOk],0);
      end;
      FormInputNumber.Free;
      FormInputNumber:=nil;
    end else
    DM.TBProdutos.Post;

    //duplica composição do produto.
    if DuplicarComposicao then
    begin
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from PRODUTOSCOMP where PRC_PRODUTO=:codigo');
      DM.QYAux.ParamByName('codigo').AsInteger:=Codigo;
      DM.QYAux.Open;
      DM.QYAux.First;
      while not DM.QYAux.Eof do
      begin
        DM.TBProdutosComp.Insert;
        DM.TBProdutosCompPRC_PRODUTOCOMP.Value:=DM.QYAux.FieldByName('PRC_PRODUTOCOMP').AsInteger;
        DM.TBProdutosCompPRC_QUANTIDADE.Value:=DM.QYAux.FieldByName('PRC_QUANTIDADE').AsFloat;
        //demais campos são preenchidos automaticamente.
        DM.TBProdutosComp.Post;
        DM.QYAux.Next;
      end;
    end;
    //...
  end;
end;

procedure TFormProdutos.EtapasDeProducao1Click(Sender: TObject);
begin
  AbortIf(DM.TBProdutos.IsEmpty,'Nenhum produto selecionado.');

  //DM.TBProdutosEtapas.DataSource:=DM.DSProdutos;
  Application.CreateForm(TFormProdutosEtapas, FormProdutosEtapas);
  FormProdutosEtapas.ShowModal;
  FormProdutosEtapas.Free;
  FormProdutosEtapas:=nil;
  //DM.TBProdutosEtapas.DataSource:=nil;
end;

procedure TFormProdutos.Exportar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosExportar, FormProdutosExportar);
  FormProdutosExportar.ShowModal;
  FormProdutosExportar.Free;
  FormProdutosExportar:=nil;
end;

procedure TFormProdutos.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormProdutos.DBEdit31Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit31Exit(Sender: TObject);
begin
  LocMarcasExit(DBEdit31,DBEdit77,DM.TBProdutos);
end;

procedure TFormProdutos.DBEdit31KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton28.Click;
end;

procedure TFormProdutos.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then
  begin
    DM.TBProdutos.Edit;
    DM.TBProdutosPRO_BENEFICIO.Clear;
  end;
end;

procedure TFormProdutos.DBEdit35Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TDBEdit).Text;
end;

procedure TFormProdutos.DBEdit35Exit(Sender: TObject);
begin
  LocRegrasFiscaisExit(DBEdit35,DBEdit37,DBEdit112,DBEdit113,DBEdit114,DBEdit115,DBEdit116,DBEdit117,DBEdit120,DBEdit119,DBEdit118,
    DBEdit46,DBEdit45,DBEdit38,DBEdit39,DBEdit40,DBEdit41,DBEdit42,DBEdit43,DBEdit44,
    DBEdit106,DBEdit105,DBEdit47,DBEdit48,DBEdit49,DBEdit50,DBEdit51,DBEdit103,DBEdit104,
    DBEdit107,DBEdit108,DBEdit110,DBEdit109,DBEdit111,DM.TBProdutos
  );
end;

procedure TFormProdutos.DBEdit35KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  PngSpeedButton8.Click;
end;

procedure TFormProdutos.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormProdutos.SpeedButton28Click(Sender: TObject);
begin
  LocMarcasBotao(DBEdit31,DBEdit77,DM.TBProdutos);
end;

procedure TFormProdutos.CadastroDeMarcas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcas, FormMarcas);
  FormMarcas.ShowModal;
  FormMarcas.Free;
  FormMarcas:=nil;
end;

procedure TFormProdutos.CadastroDeMarkups1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarkups, FormMarkups);
  FormMarkups.ShowModal;
  FormMarkups.Free;
  FormMarkups:=nil;
end;

procedure TFormProdutos.CadastroDeNBS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNbs, FormNbs);
  FormNbs.ShowModal;
  FormNbs.Free;
  FormNbs:=nil;
end;

procedure TFormProdutos.CadastroDeRegrasFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscais, FormRegrasFiscais);
  FormRegrasFiscais.ShowModal;
  FormRegrasFiscais.Free;
  FormRegrasFiscais:=nil;
end;

procedure TFormProdutos.CadastroDeUnidadesDeMedidas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUnidades, FormUnidades);
  FormUnidades.ShowModal;
  FormUnidades.Free;
  FormUnidades:=nil;
end;

procedure TFormProdutos.RecalcularCampoMargem1Click(Sender: TObject);
begin
  if MessageDlg('Deseja recalcular o campo margem de todos os produtos?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'update PRODUTOS set PRO_MARGEM=cast(((PRO_PRECOVENDA-PRO_PRECOCUSTO)*100.00) as numeric(18,2)) / PRO_PRECOCUSTO where '+
      '(PRO_PRECOCUSTO<>0 and PRO_PRECOCUSTO is not null) and '+
      '(PRO_PRECOVENDA<>0 and PRO_PRECOVENDA is not null)'
    );
    DM.QYAux.ExecSQL;

    DM.TBProdutos.Close;
    DM.TBProdutos.Open;
    MessageDlg('Recálculo OK.',mtInformation,[mbOk],0);
  end;
end;

initialization
  RegisterClass(TFormProdutos);

finalization
  UnRegisterClass(TFormProdutos);

end.
