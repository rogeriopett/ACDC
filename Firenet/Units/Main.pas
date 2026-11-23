unit Main;

interface

uses
  Windows, Messages, Forms, Data.DB, Vcl.Menus, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Controls, PngImageList, Vcl.AppEvnts, RPEnter, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Grids, Vcl.DBGrids, Vcl.ToolWin,
  Vcl.Imaging.pngimage, DBCtrls, DBSBtn, Graphics, SysUtils, ShellAPI, Dialogs,
  System.Classes, MidasLib, System.UITypes, PngSpeedButton,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  AdvTypes;

type
  TFormMain = class(TForm)
    Agrupadores1: TMenuItem;
    Ajuda1: TMenuItem;
    Aliquotas1: TMenuItem;
    Aliquotas1Button: TToolButton;
    Almoxarifados1: TMenuItem;
    Almoxarifados1Button: TToolButton;
    AlterarSenhadeAcesso1: TMenuItem;
    AlterarSenhadeAcesso1Button: TToolButton;
    ApplicationEvents1: TApplicationEvents;
    Arquivo1: TMenuItem;
    Assuntos1: TMenuItem;
    Assuntos1Button: TToolButton;
    Atendimentos1: TMenuItem;
    Atendimentos1Button: TToolButton;
    Bancos1: TMenuItem;
    Bancos1Button: TToolButton;
    Boletos1: TMenuItem;
    Boletos1Button: TToolButton;
    Cadastros1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendario1: TMenuItem;
    Chamadas1: TMenuItem;
    Chamadas1Button: TToolButton;
    Cheques1: TMenuItem;
    Cheques1Button: TToolButton;
    Classes1: TMenuItem;
    Classes1Button: TToolButton;
    ClassificacoesFiscais1: TMenuItem;
    Classificados1: TMenuItem;
    Classificados1Button: TToolButton;
    Clientes1: TMenuItem;
    Clientes1Button: TToolButton;
    Comandas1: TMenuItem;
    Comandas1Button: TToolButton;
    Comandas2: TMenuItem;
    CondicoesDePagamento1Button: TToolButton;
    CondicoesDePagamentos1: TMenuItem;
    Conhecimentos1: TMenuItem;
    Conhecimentos2: TMenuItem;
    Conhecimentos2Button: TToolButton;
    ContasAPagar1: TMenuItem;
    ContasAPagar1Button: TToolButton;
    ContasAReceber1: TMenuItem;
    ContasAReceber1Button: TToolButton;
    ContasCorrente1: TMenuItem;
    ContasCorrente1Button: TToolButton;
    ContasDeEmails1: TMenuItem;
    ContasDeEmails1Button: TToolButton;
    Conteudos1: TMenuItem;
    Conteudos1Button: TToolButton;
    Contratos1: TMenuItem;
    Contratos1Button: TToolButton;
    CoolBar1: TCoolBar;
    CupomFiscal1: TMenuItem;
    NotasFiscaisDeConsumidorEletronicas1Button: TToolButton;
    CupomFiscal2: TMenuItem;
    Cursos1: TMenuItem;
    Cursos1Button: TToolButton;
    DBGrid1: TDBGrid;
    Despesas1: TMenuItem;
    Emails1: TMenuItem;
    Empresa1: TMenuItem;
    Enderecos1: TMenuItem;
    EnvioDeEmails1: TMenuItem;
    EnvioDeEmails1Button: TToolButton;
    Escolar1: TMenuItem;
    Estoque1: TMenuItem;
    Etiquetas1: TMenuItem;
    Evolucoes1: TMenuItem;
    Evolucoes1Button: TToolButton;
    Familias1: TMenuItem;
    Familias1Button: TToolButton;
    Fases1: TMenuItem;
    Feriados1: TMenuItem;
    Feriados1Button: TToolButton;
    Finalizar1: TMenuItem;
    Finalizar1Button: TToolButton;
    Financeiro1: TMenuItem;
    FluxoDeCaixa1: TMenuItem;
    FluxoDeCaixa1Button: TToolButton;
    Fornecedores1: TMenuItem;
    Fornecedores1Button: TToolButton;
    Foros1: TMenuItem;
    Frotas1: TMenuItem;
    Frotas1Button: TToolButton;
    GNREGuiaImpostosEstaduais1: TMenuItem;
    Grupos1: TMenuItem;
    Grupos1Button: TToolButton;
    Image1: TImage;
    Imobiliaria1: TMenuItem;
    Imoveis1: TMenuItem;
    Imoveis1Button: TToolButton;
    ImpostoICMS1: TMenuItem;
    ImpostoIPI1: TMenuItem;
    ImpostoISS1: TMenuItem;
    ImpostoPISCOFINS1: TMenuItem;
    ImpressorasECF1: TMenuItem;
    Juridico1: TMenuItem;
    Label1: TLabel;
    LimparHistoricoDeConversa1: TMenuItem;
    LocacoesDeObjetos1: TMenuItem;
    LocacoesDeObjetos1Button: TToolButton;
    Locais1: TMenuItem;
    Mailings1: TMenuItem;
    Mailings1Button: TToolButton;
    MainMenu1: TMainMenu;
    Manifestos1: TMenuItem;
    Manifestos1Button: TToolButton;
    Marcas1: TMenuItem;
    Markups1: TMenuItem;
    Matriculas1: TMenuItem;
    Matriculas1Button: TToolButton;
    Medicamentos1: TMenuItem;
    Medicamentos1Button: TToolButton;
    Medicoes1: TMenuItem;
    Medicoes1Button: TToolButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Mensalidades1: TMenuItem;
    Motivos1: TMenuItem;
    MovimentacaoDeContas1: TMenuItem;
    MovimentacaoDeContas1Button: TToolButton;
    MovimentacaoEstoque1: TMenuItem;
    MovimentacaoEstoque1Button: TToolButton;
    N1: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    NaturezasDeOperacao1: TMenuItem;
    NotasFiscais1: TMenuItem;
    NotasFiscais1Button: TToolButton;
    NotasFiscaisDeServicoEletronicas1: TMenuItem;
    NotasFiscaisDeServicosEletronica1Button: TToolButton;
    NotasFiscaisEletronicas1: TMenuItem;
    NotasFiscaisEletronicas1Button: TToolButton;
    Objetos1: TMenuItem;
    Objetos2: TMenuItem;
    Objetos2Button: TToolButton;
    Opcionais1: TMenuItem;
    Opcionais1Button: TToolButton;
    OrdemDeProducao1: TMenuItem;
    OrdemDeProducao1Button: TToolButton;
    OrdensDeServico1Button: TToolButton;
    OrdensDeServicos1: TMenuItem;
    Panel1: TPanel;
    Parametros1: TMenuItem;
    Parametros1Button: TToolButton;
    PedidoDeCompras1: TMenuItem;
    PedidoDeCompras1Button: TToolButton;
    PedidoDeVendas1: TMenuItem;
    PedidoDeVendas1Button: TToolButton;
    PedidoDeVendasConferencia1: TMenuItem;
    PedidoDeVendasRapidas1: TMenuItem;
    PngBitBtn1: TPngBitBtn;
    PngImageList1: TPngImageList;
    PngImageList2: TPngImageList;
    PngImageList3: TPngImageList;
    PopupMenu1: TPopupMenu;
    Processos1: TMenuItem;
    Produtos1: TMenuItem;
    Produtos1Button: TToolButton;
    ProgramaDePontos1: TMenuItem;
    Projetos1: TMenuItem;
    Projetos1Button: TToolButton;
    ProjetosDmProducao1: TMenuItem;
    Promissorias1: TMenuItem;
    Promissorias1Button: TToolButton;
    RamosDeAtividades1: TMenuItem;
    RamosDeAtividades1Button: TToolButton;
    Receitas1: TMenuItem;
    Receituarios1: TMenuItem;
    Receituarios1Button: TToolButton;
    ReciboAvulso1: TMenuItem;
    ReciboAvulso1Button: TToolButton;
    Resumo1: TMenuItem;
    RPEnter1: TRPEnter;
    Saude1: TMenuItem;
    Servicos1: TMenuItem;
    Sintegra1: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    SPEDFiscal1: TMenuItem;
    StatusBar1: TStatusBar;
    Suporte1: TMenuItem;
    TabelaDePreco1Button: TToolButton;
    TabelaDePrecos1: TMenuItem;
    TeleVendas1Button: TToolButton;
    TeleVendas2: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    TiposDeAcoes1: TMenuItem;
    TiposDeImoveis1: TMenuItem;
    TiposDeImoveis1Button: TToolButton;
    TiposDeProjetos1: TMenuItem;
    ToolBar1: TToolBar;
    ToolBar2: TToolBar;
    TrocarUsuario1: TMenuItem;
    TrocarUsuario1Button: TToolButton;
    Turmas1: TMenuItem;
    Turmas1Button: TToolButton;
    UnidadesDeMedidas1: TMenuItem;
    Usuarios1: TMenuItem;
    Veiculos1: TMenuItem;
    Veiculos1Button: TToolButton;
    Veiculos2: TMenuItem;
    VeiculosAVenda1: TMenuItem;
    VeiculosAVenda1Button: TToolButton;
    VeiculosDeClientes1: TMenuItem;
    VeiculosDeClientes1Button: TToolButton;
    Vendas1: TMenuItem;
    Vendedores1: TMenuItem;
    Vendedores1Button: TToolButton;
    Web1: TMenuItem;
    Prontuarios1: TMenuItem;
    Prontuarios1Button: TToolButton;
    N12: TMenuItem;
    InstalarNFEUTIL1: TMenuItem;
    InstalarCTEUTIL1: TMenuItem;
    InstalarMDFEUTIL1: TMenuItem;
    VersaoMDFEUTIL1: TMenuItem;
    VersaoCTEUTIL1: TMenuItem;
    VersaoNFEUTIL1: TMenuItem;
    SaibamaissobreasDLLs1: TMenuItem;
    FlexDocs1: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    ViasDeContato1: TMenuItem;
    N21: TMenuItem;
    TiposDeExames1: TMenuItem;
    AgendamentoDeConsultas1: TMenuItem;
    Convenios1: TMenuItem;
    TiposDeExames1Button: TToolButton;
    AgendamentoDeConsultas1Button: TToolButton;
    Taxas1: TMenuItem;
    Delivery1: TMenuItem;
    Delivery1Button: TToolButton;
    Corretora1: TMenuItem;
    Seguros1: TMenuItem;
    TiposDeSeguros1: TMenuItem;
    TiposDeSeguros1Button: TToolButton;
    Seguros1Button: TToolButton;
    Odontogramas1: TMenuItem;
    Odontogramas1Button: TToolButton;
    TransferenciaDeSaldos1: TMenuItem;
    TransferenciaDeSaldos1Button: TToolButton;
    Metas1: TMenuItem;
    Metas1Button: TToolButton;
    BenefciosFiscais1: TMenuItem;
    ManifestacoesDoDestinatario1: TMenuItem;
    Timer3: TTimer;
    DSVendas: TDataSource;
    Panel3: TPanel;
    Label2: TLabel;
    PngSpeedButton1: TPngSpeedButton;
    Label4: TLabel;
    PngSpeedButton2: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label5: TLabel;
    DBText3: TDBText;
    DSMetas: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    Equipamentos1: TMenuItem;
    ConsultarCEP1: TMenuItem;
    Dashboard1: TMenuItem;
    PngSpeedButton3: TPngSpeedButton;
    Checklists1: TMenuItem;
    FrenteDeCaixa1: TMenuItem;
    QYVendas: TFDQuery;
    TRVendas: TFDTransaction;
    TRMetas: TFDTransaction;
    QYMetas: TFDQuery;
    QYVendasQTDE: TLargeintField;
    QYVendasVALOR: TFMTBCDField;
    QYMetasMET_DTFIM: TDateField;
    QYMetasMET_DTINICIO: TDateField;
    QYMetasMET_METAATINGIDA: TFMTBCDField;
    QYMetasMET_METAVALOR: TFMTBCDField;
    QYMetasMET_VENDEDOR: TIntegerField;
    AlterarTema1: TMenuItem;
    AlterarTema1Button: TToolButton;
    NotasFiscaisDeConsumidorEletronicas1: TMenuItem;
    FrenteDeCaixa1Button: TToolButton;
    ConsultarPlacaVeicular1: TMenuItem;
    ConsultarPlacaVeicular1Button: TToolButton;
    TabelaCST1: TMenuItem;
    ClassificacoesTributarias1: TMenuItem;
    CreditoPresumido1: TMenuItem;
    N4: TMenuItem;
    Image2: TImage;
    Logomarca1: TMenuItem;
    RegrasFiscais1: TMenuItem;
    GeraoArquivosFCI1: TMenuItem;
    NomenclaturaBrasileiraDeServicos1: TMenuItem;
    Dashboard1Button: TToolButton;
    InstanciasWhatsApp1: TMenuItem;
    AjustarCamposdeTelefone1: TMenuItem;
    WhatsAppMensagens1: TMenuItem;
    N6: TMenuItem;
    IAsmin1: TMenuItem;
    IAsmin1Button: TToolButton;
    procedure Agrupadores1Click(Sender: TObject);
    procedure Ajuda1Click(Sender: TObject);
    procedure Aliquotas1Click(Sender: TObject);
    procedure Almoxarifados1Click(Sender: TObject);
    procedure AlterarSenhadeAcesso1Click(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
    procedure Assuntos1Click(Sender: TObject);
    procedure Atendimentos1Click(Sender: TObject);
    procedure Bancos1Click(Sender: TObject);
    procedure Boletos1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure Chamadas1Click(Sender: TObject);
    procedure Cheques1Click(Sender: TObject);
    procedure Classes1Click(Sender: TObject);
    procedure ClassificacoesFiscais1Click(Sender: TObject);
    procedure Classificados1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Comandas2Click(Sender: TObject);
    procedure CondicoesDePagamentos1Click(Sender: TObject);
    procedure Conhecimentos2Click(Sender: TObject);
    procedure ContasAPagar1Click(Sender: TObject);
    procedure ContasAReceber1Click(Sender: TObject);
    procedure ContasCorrente1Click(Sender: TObject);
    procedure ContasDeEmails1Click(Sender: TObject);
    procedure Conteudos1Click(Sender: TObject);
    procedure Contratos1Click(Sender: TObject);
    procedure CupomFiscal2Click(Sender: TObject);
    procedure Cursos1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Despesas1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure Enderecos1Click(Sender: TObject);
    procedure EnvioDeEmails1Click(Sender: TObject);
    procedure Etiquetas1Click(Sender: TObject);
    procedure Evolucoes1Click(Sender: TObject);
    procedure Familias1Click(Sender: TObject);
    procedure Fases1Click(Sender: TObject);
    procedure Feriados1Click(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure FluxoDeCaixa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Foros1Click(Sender: TObject);
    procedure Frotas1Click(Sender: TObject);
    procedure GNREGuiaImpostosEstaduais1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Imoveis1Click(Sender: TObject);
    procedure ImpostoICMS1Click(Sender: TObject);
    procedure ImpostoIPI1Click(Sender: TObject);
    procedure ImpostoISS1Click(Sender: TObject);
    procedure ImpostoPISCOFINS1Click(Sender: TObject);
    procedure ImpressorasECF1Click(Sender: TObject);
    procedure LimparHistoricoDeConversa1Click(Sender: TObject);
    procedure LocacoesDeObjetos1Click(Sender: TObject);
    procedure Locais1Click(Sender: TObject);
    procedure Mailings1Click(Sender: TObject);
    procedure Manifestos1Click(Sender: TObject);
    procedure Marcas1Click(Sender: TObject);
    procedure Markups1Click(Sender: TObject);
    procedure Matriculas1Click(Sender: TObject);
    procedure Medicamentos1Click(Sender: TObject);
    procedure Medicoes1Click(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure Mensalidades1Click(Sender: TObject);
    procedure Motivos1Click(Sender: TObject);
    procedure MovimentacaoDeContas1Click(Sender: TObject);
    procedure MovimentacaoEstoque1Click(Sender: TObject);
    procedure NaturezasDeOperacao1Click(Sender: TObject);
    procedure NotasFiscais1Click(Sender: TObject);
    procedure NotasFiscaisDeServicoEletronicas1Click(Sender: TObject);
    procedure NotasFiscaisEletronicas1Click(Sender: TObject);
    procedure Objetos2Click(Sender: TObject);
    procedure Opcionais1Click(Sender: TObject);
    procedure OrdemDeProducao1Click(Sender: TObject);
    procedure OrdensDeServicos1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure PedidoDeCompras1Click(Sender: TObject);
    procedure PedidoDeVendas1Click(Sender: TObject);
    procedure PedidoDeVendasConferencia1Click(Sender: TObject);
    procedure PedidoDeVendasRapidas1Click(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Processos1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ProgramaDePontos1Click(Sender: TObject);
    procedure Projetos1Click(Sender: TObject);
    procedure ProjetosDmProducao1Click(Sender: TObject);
    procedure Promissorias1Click(Sender: TObject);
    procedure RamosDeAtividades1Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure Receituarios1Click(Sender: TObject);
    procedure ReciboAvulso1Click(Sender: TObject);
    procedure Resumo1Click(Sender: TObject);
    procedure Sintegra1Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure SPEDFiscal1Click(Sender: TObject);
    procedure Suporte1Click(Sender: TObject);
    procedure TabelaDePrecos1Click(Sender: TObject);
    procedure TeleVendas2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure TiposDeAcoes1Click(Sender: TObject);
    procedure TiposDeImoveis1Click(Sender: TObject);
    procedure TiposDeProjetos1Click(Sender: TObject);
    procedure TrocarUsuario1Click(Sender: TObject);
    procedure Turmas1Click(Sender: TObject);
    procedure UnidadesDeMedidas1Click(Sender: TObject);
    procedure Usuarios1Click(Sender: TObject);
    procedure Veiculos2Click(Sender: TObject);
    procedure VeiculosAVenda1Click(Sender: TObject);
    procedure VeiculosDeClientes1Click(Sender: TObject);
    procedure Vendedores1Click(Sender: TObject);
    procedure Web1Click(Sender: TObject);
    procedure Prontuarios1Click(Sender: TObject);
    procedure InstalarNFEUTIL1Click(Sender: TObject);
    procedure InstalarCTEUTIL1Click(Sender: TObject);
    procedure InstalarMDFEUTIL1Click(Sender: TObject);
    procedure VersaoMDFEUTIL1Click(Sender: TObject);
    procedure VersaoNFEUTIL1Click(Sender: TObject);
    procedure VersaoCTEUTIL1Click(Sender: TObject);
    procedure SaibamaissobreasDLLs1Click(Sender: TObject);
    procedure ViasDeContato1Click(Sender: TObject);
    procedure TiposDeExames1Click(Sender: TObject);
    procedure AgendamentoDeConsultas1Click(Sender: TObject);
    procedure Convenios1Click(Sender: TObject);
    procedure Taxas1Click(Sender: TObject);
    procedure Delivery1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure TiposDeSeguros1Click(Sender: TObject);
    procedure Seguros1Click(Sender: TObject);
    procedure Odontogramas1Click(Sender: TObject);
    procedure TransferenciaDeSaldos1Click(Sender: TObject);
    procedure Metas1Click(Sender: TObject);
    procedure BenefciosFiscais1Click(Sender: TObject);
    procedure ManifestacoesDoDestinatario1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure PngSpeedButton2Click(Sender: TObject);
    procedure Equipamentos1Click(Sender: TObject);
    procedure ConsultarCEP1Click(Sender: TObject);
    procedure Dashboard1Click(Sender: TObject);
    procedure PngSpeedButton3Click(Sender: TObject);
    procedure Checklists1Click(Sender: TObject);
    procedure FrenteDeCaixa1Click(Sender: TObject);
    procedure AlterarTema1Click(Sender: TObject);
    procedure NotasFiscaisDeConsumidorEletronicas1Click(Sender: TObject);
    procedure ConsultarPlacaVeicular1Click(Sender: TObject);
    procedure TabelaCST1Click(Sender: TObject);
    procedure ClassificacoesTributarias1Click(Sender: TObject);
    procedure CreditoPresumido1Click(Sender: TObject);
    procedure Logomarca1Click(Sender: TObject);
    procedure RegrasFiscais1Click(Sender: TObject);
    procedure GeraoArquivosFCI1Click(Sender: TObject);
    procedure NomenclaturaBrasileiraDeServicos1Click(Sender: TObject);
    procedure InstanciasWhatsApp1Click(Sender: TObject);
    procedure AjustarCamposdeTelefone1Click(Sender: TObject);
    procedure WhatsAppMensagens1Click(Sender: TObject);
    procedure IAsmin1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    procedure HandleShortcuts(var Msg: TMsg; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
    procedure DesabilitarControles(FormName: TForm);
    procedure HabilitarControles(FormName: TForm);
    procedure HabilitarTodosControles(FormName: TForm);
    procedure ConfigurarModulos(FormName: TForm);
    procedure EsconderBotoes;
    procedure SetFields(FormName: TForm; Enable: Boolean);
    procedure MostrarHint(Sender: TObject);
  end;

var
  FormMain: TFormMain;

implementation
uses Registry, IniFiles, DataMod, DataMod2, Login, Usuarios, Empresa, Sobre,
  Cadastro, Calendar, Recibos, Parametros, Enderecos, FuncoesFirenet,
  Calendario, Funcoes1, Telas, AlterarSenha, Clientes,
  CTe_Util_TLB, NFe_Util_2G_TLB, MDFe_Util_TLB,
  Fornecedores, Receitas, Despesas, Grupos, Familias, Caixa, Pagar,
  Receber, Vendedores, Atividades, Contas, Produtos, ProdutosTabPreco,
  Estoque, Naturezas, TeleVendas, ContasMov, Vendas, Condicoes, Aliquotas,
  Modulos, Compras, Servicos, Almoxarifados, TelasAtualizarComponentes,
  UsuariosAcessosAtualizar, Notas, Locacoes,
  Veiculos, Opcionais, Classificados, VeiculosVenda, VeiculosCliente,
  Promissorias, Agrupadores, Producao, ProjetosTipos, Projetos,
  SenhaPeriodica, Mailings, Fases, Bancos, Cheques, Nfe, Icms, Piscofins, Ipi,
  Iss, ClassFiscal, Marcas, Classeso, Objetos, Reorder, Turmas,
  Matriculas, Chamadas, Conteudos, Pontos, Motivos, Locais,
  Feriados, Conhecimentos, Frotas, SpedFiscal, Unidades, Boletos, Sintegra,
  Atendimentos, ImoveisTipos, Resumo, Imoveis, Contratos,
  ComandasControle, Cursos, Emails, Assuntos, EmailsContas, Foros, Acoes,
  Processos, VendasRapidas, Mdfe, Gnre, Ecf, Cupom, Nfse,
  VendasConferencia, Markups, Medicoes, Evolucoes, Medicamentos, Receituarios,
  Mensalidades, Etiquetas, Prontuarios, Vias, Convenios, ExamesTipos, Consultas,
  Taxas, Delivery, SegurosTipos, Seguros, Odontogramas, CaixaTransferencias,
  Metas, Beneficios, Manifestacoes, VendasLoc, Equipamentos, EnderecosBuscaCEP,
  Dashboard, MetasMinhas, Checklists, NfceCaixa, Temas, Nfce, ConsultarPlaca,
  Cst, ClassTrib, CreditoPresumido, Logomarca, RegrasFiscais, Fci, Nbs,
  ZapInstancias, ZapMensagens, IasminConsulta;
{$R *.DFM}

//##############################################################################
// Para usar essa função: colocar TAG=1 nos componentes que                   //
// deseja desabilitar. No caso dos DBSpeedButton não é                        //
// necessário alterar o TAG dos menuitens associados com o botão.             //
// No FormMain, usar como hint dos botoes, o mesmo caption do item de menu.   //
// A procedure deve ser chamada no evento OnShow de cada form que tem         //
// controles a serem desabilitados, se estiver no OnCreate, gera erro         //
// de Access Violation.                                                       //
// Nos menuitens, a descrição é o próprio caption.                            //
// Nos Botões, a descrição é o Hint.                                          //
// Revisado em 06/04/2007.                                                    //
// Revisado em 19/01/2011.                                                    //
// Revisado em 22/01/2015. Incluido TDBEdit para as telas de inclusao de itens//
// ###########################################################################//
procedure TFormMain.DesabilitarControles(FormName: TForm);
var
  Componente: TObject;
  ClasseComp: String;
begin
  if DM.UsuarioLogado.ToString='' then
  Exit;
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  //DM.TBAcessos.DataSource:=DM.DSUsuarios; //coloca o datasource.
  DM.TBAcessos.Close;
  DM.TBAcessos.ParamByName('tela').AsString:='T'+FormName.Name;
  DM.TBAcessos.Open;
  DM.TBAcessos.First;
  DM.TBAcessos.DisableControls;
  while not DM.TBAcessos.Eof do
  begin
    if DM.TBAcessosACE_ACESSO.Value='N' then
    begin
      Componente:=FormName.FindComponent(DM.TBAcessosACE_COMPONENTE.Value);
      if Componente<>nil then
      ClasseComp:=Componente.ClassName else
      ClasseComp:='';
      if ClasseComp='TMenuItem' then
      begin
        (Componente as TMenuItem).Enabled:=False;
        Componente:=FormName.FindComponent(DM.TBAcessosACE_COMPONENTE.Value+'Button'); //localiza o botao associado com o menuitem.
        if Componente<>nil then
        begin
          ClasseComp:=Componente.ClassName;
          if ClasseComp='TSpeedButton'    then (Componente as TSpeedButton).Enabled:=False;
          if ClasseComp='TPngSpeedButton' then (Componente as TPngSpeedButton).Enabled:=False;
          if ClasseComp='TToolButton'     then (Componente as TToolButton).Enabled:=False; //toolbutton só tem no formmain.
          if ClasseComp='TDBSpeedButton'  then //como esses botoes mudam de estado conforme o estado da tabela, é necessário torná-los invisíveis.
          begin
            (Componente as TDBSpeedButton).Enabled:=False;
            (Componente as TDBSpeedButton).Visible:=False;
            (Componente as TDBSpeedButton).MenuItem.Enabled:=False; //item de menu associado.
            (Componente as TDBSpeedButton).MenuItem.Visible:=False;
            (Componente as TDBSpeedButton).MenuItem.ShortCut:=ShortCut(0,[ssMiddle]); //nao adianta ficar invisivel e ser acessível pelo atalho de teclado. :-( .
          end;
        end;
      end;
      //if ClasseComp='TSpeedButton' then (Componente as TSpeedButton).Enabled:=False;
      //if ClasseComp='TPngSpeedButton' then (Componente as TSpeedButton).Enabled:=False;
      //if ClasseComp='TToolButton' then (Componente as TToolButton).Enabled:=False; //toolbutton só tem no formmain.
      if ClasseComp='TGroupBox'   then (Componente as TGroupBox).Visible:=False; //para o cadastro de produtos. (preços)
      if ClasseComp='TDBComboBox' then (Componente as TDBComboBox).Enabled:=False; //incluido inicialmente para controlar o destino da baixa de contas a receber e pagar.
      if ClasseComp='TEdit'       then (Componente as TEdit).Enabled:=False;
      if ClasseComp='TDBEdit'     then (Componente as TDBEdit).Enabled:=False;
      if ClasseComp='TTabSheet'   then (Componente as TTabSheet).TabVisible:=False;
      //if ClasseComp='TDBSpeedButton' then
      //begin
      //  (Componente as TDBSpeedButton).Enabled:=False;
      //  (Componente as TDBSpeedButton).Visible:=False;
      //  (Componente as TDBSpeedButton).MenuItem.Enabled:=False; //item de menu associado.
      //  (Componente as TDBSpeedButton).MenuItem.Visible:=False;
      // (Componente as TDBSpeedButton).MenuItem.ShortCut:=ShortCut(0,[ssMiddle]); //nao adianta ficar invisivel e ser acessível pelo atalho de teclado. :-( .
      //end;
    end;
    DM.TBAcessos.Next;
  end;
  DM.TBAcessos.EnableControls;
  //DM.TBAcessos.DataSource:=nil; //retira o datasource. melhora a performance.
end;

//############################################################################//
// Esta função é para ser usada quando precisa habilitar campos específicos.  //
// Lógica inversa da função DesabilitarControles.                             //
// Criada em 19/01/2011.                                                      //
//############################################################################//
procedure TFormMain.HabilitarControles(FormName: TForm);
var
  Componente: TObject;
  ClasseComp: String;
begin
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  //DM.TBAcessos.DataSource:=DM.DSUsuarios; //coloca o datasource.
  DM.TBAcessos.Close;
  DM.TBAcessos.ParamByName('tela').AsString:='T'+FormName.Name;
  DM.TBAcessos.Open;
  DM.TBAcessos.First;
  DM.TBAcessos.DisableControls;
  while not DM.TBAcessos.Eof do
  begin
    if DM.TBAcessosACE_ACESSO.Value='S' then
    begin
      Componente:=FormName.FindComponent(DM.TBAcessosACE_COMPONENTE.Value);
      ClasseComp:=Componente.ClassName;
      if ClasseComp='TMenuItem'       then (Componente as TMenuItem).Enabled:=True;
      if ClasseComp='TSpeedButton'    then (Componente as TSpeedButton).Enabled:=True;
      if ClasseComp='TPngSpeedButton' then (Componente as TSpeedButton).Enabled:=True;
      if ClasseComp='TToolButton'     then (Componente as TToolButton).Enabled:=True; //toolbutton só tem no formmain.
      if ClasseComp='TGroupBox'       then (Componente as TGroupBox).Visible:=True; //para o cadastro de produtos. (preços)
      if ClasseComp='TDBComboBox'     then (Componente as TDBComboBox).Enabled:=True; //incluido inicialmente para controlar o destino da baixa de contas a receber e pagar.
      if ClasseComp='TEdit'           then (Componente as TEdit).Enabled:=True;
      if ClasseComp='TTabSheet'       then (Componente as TTabSheet).TabVisible:=True;
      if ClasseComp='TDBEdit' then
      begin
        (Componente as TDBEdit).ReadOnly:=False;
        (Componente as TDBEdit).Color:=clWindow;
      end;
      if ClasseComp='TDBSpeedButton' then
      begin
        (Componente as TDBSpeedButton).Enabled:=True;
        (Componente as TDBSpeedButton).Visible:=True;
        (Componente as TDBSpeedButton).MenuItem.Enabled:=True; //item de menu associado.
        (Componente as TDBSpeedButton).MenuItem.Visible:=True;
        (Componente as TDBSpeedButton).MenuItem.ShortCut:=ShortCut(0,[ssMiddle]); //nao adianta ficar invisivel e ser acessível pelo atalho de teclado. :-( .
      end;
    end;
    DM.TBAcessos.Next;
  end;
  DM.TBAcessos.EnableControls;
  //DM.TBAcessos.DataSource:=nil; //retira o datasource. melhora a performance.
end;

//##############################################################################
// PROCEDURE PARA HABILITAR TODOS OS CONTROLES NO FORMMAIN.                   //
// UTILIZADO NA OPÇÃO DE TROCA DE USUÁRIO COM O SISTEMA ABERTO.               //
// Revisado em: 05/04/2007                                                    //
// Revisado em: 19/01/2011                                                    //
// Revisado em: 01/04/2014 - incluído linha para o TPngSpeedButton e TEdit    //
//##############################################################################
procedure TFormMain.HabilitarTodosControles(FormName: TForm);
var
  Componente: TObject;
  ClasseComp: String;
begin
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  //DM.TBAcessos.DataSource:=DM.DSUsuarios;
  DM.TBAcessos.Close;
  DM.TBAcessos.ParamByName('tela').AsString:='T'+FormName.Name;
  DM.TBAcessos.Open;
  DM.TBAcessos.First;
  DM.TBAcessos.DisableControls;
  while not DM.TBAcessos.Eof do
  begin
    Componente:=FormName.FindComponent(DM.TBAcessosACE_COMPONENTE.Value);
    ClasseComp:=Componente.ClassName;
    if ClasseComp='TMenuItem'       then (Componente as TMenuItem).Enabled:=True;
    if ClasseComp='TSpeedButton'    then (Componente as TSpeedButton).Enabled:=True;
    if ClasseComp='TPngSpeedButton' then (Componente as TSpeedButton).Enabled:=True;
    if ClasseComp='TToolButton'     then (Componente as TToolButton).Enabled:=True; //toolbutton só tem no formmain.
    if ClasseComp='TGroupBox'       then (Componente as TGroupBox).Visible:=True; //para o cadastro de produtos. (preços)
    if ClasseComp='TDBComboBox'     then (Componente as TDBComboBox).Enabled:=True; //para o cadastro de produtos. (preços)
    if ClasseComp='TEdit'           then (Componente as TEdit).Enabled:=True;
    if ClasseComp='TTabSheet'       then (Componente as TTabSheet).TabVisible:=True;
    //precisa? testar! if ClasseComp='TDBEdit' then (Componente as TDBEdit).Enabled:=True;
    if ClasseComp='TDBSpeedButton' then
    begin
      (Componente as TDBSpeedButton).Enabled:=True;
      (Componente as TDBSpeedButton).Visible:=True;
      (Componente as TDBSpeedButton).MenuItem.Enabled:=True; //item de menu associado.
      (Componente as TDBSpeedButton).MenuItem.Visible:=True;
//como volta o atalho? deixei assim, pois só será usado no formmain,
//que nao tem menuitem associado a algum botao.
//(Componente as TDBSpeedButton).MenuItem.ShortCut:=ShortCut(0,[ssMiddle]); //nao adianta ficar invisivel e ser acessível pelo atalho de teclado. :-( .
    end;
    DM.TBAcessos.Next;
  end;
  DM.TBAcessos.EnableControls;
  //DM.TBAcessos.DataSource:=nil;
end;

// #############################################################################################.
// ## ESTA ROTINA DESABILITA OS MODULOS QUE A EMPRESA NAO TEM ACESSO.                         ##.
// ## CADA MODULO DEVE SER COLOCADO EM UM MENUITEM PRINCIPAL.                                 ##.
// ## TODOS OS SUBMENUITENS DESTE MENU SERAO DESABILITADOS.                                   ##.
// ## OS BOTOES DE ATALHO DEVEM TER O MESMO CAPTION DO ITEM DE MENU (CASO EXISTAM)            ##.
// ## Criada em 16/10/2008.                                                                   ##.
// ## Revisada em 01/12/2009. - IMPLEMENTADO FUNC. PARA ELIMINAR OS BOTOES NO PARAMETROS.INI. ##.
// ## Revisada em 15/02/2017. - IMPLEMENTADO FUNC. PARA HABILITAR OS MODULOS QUE TEM ACESSO.  ##.
// ## Revisada em 26/11/2025. - ALTERADO LISTAGEM DE BOTOES EM PARAMETROS PARA CHECKLISTBOX.  ##.
// #############################################################################################.
procedure TFormMain.ConfigurarModulos(FormName: TForm);
var MenuItem: TMenuItem;
  procedure DesabilitarSubItens(var Menu: TMenuItem);
  var I,B: Byte;
    F: TIniFile;
  begin
    F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
    for I:=0 to Menu.Count-1 do
    begin
      Menu.Items[I].Enabled:=False;

      //faz um loop pra encontrar o botao com o mesmo caption do subitem do menu passado no parametro.
      //também retira a opção do botao nos parametros.ini.

      //TOOLBAR 1.
      for B:=0 to ToolBar1.ButtonCount-1 do
      if ToolBar1.Buttons[B].Caption=Menu.Items[I].Caption then
      begin
        ToolBar1.Buttons[B].Visible:=False;
        F.DeleteKey('BOTOES1',ToolBar1.Buttons[B].Caption);
      end;

      //TOOLBAR 2.
      for B:=0 to ToolBar2.ButtonCount-1 do
      if ToolBar2.Buttons[B].Caption=Menu.Items[I].Caption then
      begin
        ToolBar2.Buttons[B].Visible:=False;
        F.DeleteKey('BOTOES2',ToolBar2.Buttons[B].Caption);
      end;
    end;
    F.Free;
  end;
  procedure HabilitarSubItens(var Menu: TMenuItem);
  var I,B: Byte;
    F: TIniFile;
  begin
    F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
    for I:=0 to Menu.Count-1 do
    begin
      Menu.Items[I].Enabled:=True;
      //faz um loop pra encontrar o botao com o mesmo caption do subitem do menu passado no parametro.
      //também inclui a opção do botao nos parametros.ini SE NAO EXISTIR!!!

      //TOOLBAR 1.
      for B:=0 to ToolBar1.ButtonCount-1 do
      if ToolBar1.Buttons[B].Caption=Menu.Items[I].Caption then
      begin
        ToolBar1.Buttons[B].Visible:=True;
        if F.ReadString('BOTOES1',ToolBar1.Buttons[B].Caption,'')='' then //se igual a nada é pq nao tem.
        F.WriteString('BOTOES1',ToolBar1.Buttons[B].Caption,'SIM');
      end;

      //TOOLBAR 2.
      for B:=0 to ToolBar2.ButtonCount-1 do
      if ToolBar2.Buttons[B].Caption=Menu.Items[I].Caption then
      begin
        ToolBar2.Buttons[B].Visible:=True;
        if F.ReadString('BOTOES2',ToolBar2.Buttons[B].Caption,'')='' then //se igual a nada é pq nao tem.
        F.WriteString('BOTOES2',ToolBar2.Buttons[B].Caption,'SIM');
      end;
    end;
    F.Free;
  end;
begin
  if not DM.TBModulos.Active then
  Exit;
  DM.TBModulos.First;
  while not DM.TBModulos.Eof do
  begin
    MenuItem:=FormMain.MainMenu1.Items.Find(DM.TBModulosMOD_MENUITEM.Value);
    if MenuItem<>nil then
    begin
      if DM.TBModulosMOD_ACESSO.Value='N' then
      begin
        DesabilitarSubItens(MenuItem);
        MenuItem.Visible:=False;
      end else
      begin
        HabilitarSubItens(MenuItem);
        MenuItem.Visible:=True;
      end;
    end;
    DM.TBModulos.Next;
  end;
end;

// #############################################################################################.
// ## ESTA ROTINA ESCONDE OS BOTOES DA BARRA CONFORME O PARAMETROS.INI                        ##.
// ## É CHAMADA APÓS A CHAMADA DA PROCEDURE DE DESABILITAR OS MODULOS DO CLIENTE.             ##.
// ## A TELA DE PARAMETROS CONTÉM ROTINAS PARA LER, CRIAR E SALVAR AS INFORMAÇÕES DOS BOTÕES. ##.
// ## A PROCEDURE QUE DESABILITA OS MODULOS TAMBÉM FAZ A EXCLUSÃO DAS INFORMAÇÕES DOS BOTÕES. ##.
// ## Revisado em 01/12/2009.                                                                 ##.
// #############################################################################################.
procedure TFormMain.EsconderBotoes;
var F: TIniFile;
  I: Integer;
  S: String;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  for I:=0 to ToolBar1.ButtonCount-1 do
  begin
    S:=F.ReadString('BOTOES1',ToolBar1.Buttons[I].Caption,'');
    if (S<>'') and (S='NAO') then
    ToolBar1.Buttons[I].Visible:=False;
  end;
  for I:=0 to ToolBar2.ButtonCount-1 do
  begin
    S:=F.ReadString('BOTOES2',ToolBar2.Buttons[I].Caption,'');
    if (S<>'') and (S='NAO') then
    ToolBar2.Buttons[I].Visible:=False;
  end;
  F.Free;
end;

// #############################################################################################.
// ## ESTA ROTINA HABILITA OU DESABILITA OS CAMPOS EDIT.                                      ##.
// ## DEVE SER USADA ASSIM:                                                                   ##.
// ##   OnBeforeInsert: HABILITA OS CAMPOS.                                                   ##.
// ##   OnBeforeEdit: HABILITA OS CAMPOS.                                                     ##.
// ##   OnStateChange: DESABILITA OS CAMPOS QUANDO DIFERENTE DE dsInsert OU dsEdit.           ##.
// ## OBS: COLOCAR TAG=10 NOS CAMPOS QUE DESEJA DESABILITAR.                                  ##.
// ## Revisado em 28/01/2009.                                                                 ##.
// #############################################################################################.
procedure TFormMain.SetFields(FormName: TForm; Enable: Boolean);
var I: Integer;
begin
  if FormName=nil then
  Exit;
  for I:=0 to FormName.ComponentCount-1 do
  begin
    if ((FormName.Components[I] is TDBEdit) and ((FormName.Components[I] as TDBEdit).Tag=10)) then
    (FormName.Components[I] as TDBEdit).Enabled:=Enable else

    if ((FormName.Components[I] is TDBMemo) and ((FormName.Components[I] as TDBMemo).Tag=10)) then
    (FormName.Components[I] as TDBMemo).ReadOnly:=not Enable else //a propriedade readonly trabalha inverso. usa readonly para poder rolar a barra.

    if ((FormName.Components[I] is TDBComboBox) and ((FormName.Components[I] as TDBComboBox).Tag=10)) then
    (FormName.Components[I] as TDBComboBox).Enabled:=Enable else

    if ((FormName.Components[I] is TDBCheckBox) and ((FormName.Components[I] as TDBCheckBox).Tag=10)) then
    (FormName.Components[I] as TDBCheckBox).Enabled:=Enable else

    if ((FormName.Components[I] is TSpeedButton) and ((FormName.Components[I] as TSpeedButton).Tag=10)) then
    (FormName.Components[I] as TSpeedButton).Enabled:=Enable else

    if ((FormName.Components[I] is TPngSpeedButton) and ((FormName.Components[I] as TPngSpeedButton).Tag=10)) then
    (FormName.Components[I] as TPngSpeedButton).Enabled:=Enable else
    //edit tb... tem no cadastro de usuarios.
    if ((FormName.Components[I] is TEdit) and ((FormName.Components[I] as TEdit).Tag=10)) then
    (FormName.Components[I] as TEdit).Enabled:=Enable;
  end;
end;

procedure TFormMain.SaibamaissobreasDLLs1Click(Sender: TObject);
begin
  MostrarAjuda('http://firenet.runtimesistemas.com.br/?page_id=172');
end;

procedure TFormMain.Delivery1Click(Sender: TObject);
begin
  //liberado para a base oficial e base do cliente bread burger.
  AbortIf((DM.TBEmpresaEMP_CODIGOCLIENTE.Value<>1130) and (DM.TBEmpresaEMP_CODIGOCLIENTE.Value<>1000),'Acesso não autorizado.');

  Application.CreateForm(TFormDelivery, FormDelivery);
  FormDelivery.ShowModal;
  FormDelivery.Free;
  FormDelivery:=nil;
end;

procedure TFormMain.Seguros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSeguros, FormSeguros);
  FormSeguros.ShowModal;
  FormSeguros.Free;
  FormSeguros:=nil;
end;

procedure TFormMain.MostrarHint(Sender: TObject);
begin
  StatusBar1.Panels[1].Text:=GetLongHint(Application.Hint);
end;

procedure TFormMain.Atendimentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtendimentos, FormAtendimentos);
  FormAtendimentos.ShowModal;
  FormAtendimentos.Free;
  FormAtendimentos:=nil;
end;

procedure TFormMain.Sintegra1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSintegra, FormSintegra);
  FormSintegra.ShowModal;
  FormSintegra.Free;
  FormSintegra:=nil;
end;

procedure TFormMain.Finalizar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.HandleShortcuts(var Msg: TMsg; var Handled: Boolean);
begin
  // Verifica se a mensagem é de tecla pressionada
  if Msg.Message = WM_KEYDOWN then
  begin
    case Msg.wParam of
      VK_F12: begin
                AbortIf(FormClientes<>nil,'Cadastro de clientes já se encontra aberto.');

                Application.CreateForm(TFormClientes, FormClientes);
                FormClientes.ShowModal;
                FormClientes.Free;
                FormClientes:=nil;
                Handled:=True;
              end;
    end;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FormMainCreate; //procedimentos do evento create são utilizados também quando é feito a troca de usuário.
  //Application.OnMessage:=HandleShortcuts;
end;

procedure TFormMain.FormResize(Sender: TObject);
begin
  Image1.Left := (Self.ClientWidth - Image1.Width) div 2;
  Image1.Top  := (Self.ClientHeight - Image1.Height) div 2;
end;

procedure TFormMain.Etiquetas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEtiquetas, FormEtiquetas);
  FormEtiquetas.ShowModal;
  FormEtiquetas.Free;
  FormEtiquetas:=nil;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DM.TBUsuarios.Close;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update USUARIO set USU_LOGADO=:logado where USU_CODIGO=:login');
    DM.QYAux.ParamByName('logado').AsString:='N';
    DM.QYAux.ParamByName('login').AsInteger:=DM.UsuarioLogado;
    DM.QYAux.ExecSQL;

    DM.TBUsuarios.Open;

//    DM.TBUsuarios.DisableControls;
//    DM.TBUsuarios.Close;
//    DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
//    DM.TBUsuarios.Open;
//    DM.TBUsuarios.Edit;
//    DM.TBUsuariosUSU_LOGADO.Value:='N';
//    DM.TBUsuarios.Post;
//    DM.TBUsuarios.EnableControls;
  except on Exception do //nothing.
  end;
  Application.Terminate;
end;

procedure TFormMain.UnidadesDeMedidas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUnidades, FormUnidades);
  FormUnidades.ShowModal;
  FormUnidades.Free;
  FormUnidades:=nil;
end;

procedure TFormMain.Usuarios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormUsuarios, FormUsuarios);
  FormUsuarios.ShowModal;
  FormUsuarios.Free;
  FormUsuarios:=nil;
end;

procedure TFormMain.Empresa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmpresa, FormEmpresa);
  FormEmpresa.ShowModal;
  FormEmpresa.Free;
  FormEmpresa:=nil;
end;

procedure TFormMain.Sobre2Click(Sender: TObject);
begin
  Application.CreateForm(TFormSobre, FormSobre);
  FormSobre.Caption:='Sobre FIRENET...';
  FormSobre.Label5.Caption:='Gestão Comercial. ®';
  FormSobre.ShowModal;
  FormSobre.Free;
  FormSobre:=nil;
end;

procedure TFormMain.SPEDFiscal1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSpedFiscal, FormSpedFiscal);
  FormSpedFiscal.ShowModal;
  FormSpedFiscal.Free;
  FormSpedFiscal:=nil;
end;

procedure TFormMain.Suporte1Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBEmpresaEMP_NOSSOSITE.Value+'/suporte'),nil,nil,sw_ShowNormal);
end;

procedure TFormMain.Calculadora1Click(Sender: TObject);
begin
  try
    WinExec('CALC.EXE',sw_ShowNormal);
  except on exception do
    ShowMessage('Não foi possível executar CALC.EXE. Verifique se o arquivo está instalado no Windows.');
  end;
end;

procedure TFormMain.Calendario1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCalendario, FormCalendario);
  FormCalendario.ShowModal;
  FormCalendario.Free;
  FormCalendario:=nil;
end;

procedure TFormMain.Parametros1Click(Sender: TObject);
begin
  //trás a informação atualizada.
  DM.TBParametros.Close;
  DM.TBParametros.Open;

  Application.CreateForm(TFormParametros, FormParametros);
  FormParametros.ShowModal;
  FormParametros.Free;
  FormParametros:=nil;
end;

procedure TFormMain.Enderecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecos, FormEnderecos);
  FormEnderecos.ShowModal;
  FormEnderecos.Free;
  FormEnderecos:=nil;
end;

procedure TFormMain.ReciboAvulso1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRecibos, FormRecibos);
  FormRecibos.ShowModal;
  FormRecibos.Free;
  FormRecibos:=nil;
end;

procedure TFormMain.RegrasFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormRegrasFiscais, FormRegrasFiscais);
  FormRegrasFiscais.ShowModal;
  FormRegrasFiscais.Free;
  FormRegrasFiscais:=nil;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
//  DesabilitarControles(FormMain); nao é feito aqui. é no .DPR .

//passado para a tela de login, apos atualizacao da base.
//  if AtualizarComponentes then
//  begin
//    MessageDlg('Será atualizado a listagem de componentes de acesso.',mtInformation,[mbOk],0);
//    Application.CreateForm(TFormTelasAtualizarComponentes, FormTelasAtualizarComponentes);
//    FormTelasAtualizarComponentes.ShowModal;
//    FormTelasAtualizarComponentes.Free;
//    FormTelasAtualizarComponentes:=nil;
//    DataMod.AtualizarComponentes:=False;
//  end;
//  if AtualizarUsuariosAcessos then
//  begin
//    MessageDlg('Será atualizado a lista de controle de acesso de cada usuário.',mtInformation,[mbOk],0);
//    Application.CreateForm(TFormUsuariosAcessosAtualizar, FormUsuariosAcessosAtualizar);
//    FormUsuariosAcessosAtualizar.ShowModal;
//    FormUsuariosAcessosAtualizar.Free;
//    FormUsuariosAcessosAtualizar:=nil;
//    DataMod.AtualizarUsuariosAcessos:=False;
//  end;

  //Cria a lista de contatos para as mensagens.
  if (not DM.AtualizandoAcessos) then
  begin
    if DM.TBParametrosPAR_CHATHABILITADO.Value='S' then
    begin
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select USU_CODIGO, USU_LOGIN, USU_NOME from USUARIOS where USU_STATUS=''A'' and USU_CODIGO<>:usuario order by USU_NOME desc');
      DM.QYAux.ParamByName('usuario').AsInteger:=DM.UsuarioLogado;
      DM.QYAux.Open;
      while not DM.QYAux.EOF do
      begin
        DM2.TBContatos.Insert;
        DM2.TBContatosUSU_CODIGO.Value:=DM.QYAux.FieldByName('USU_CODIGO').AsInteger;
        DM2.TBContatosUSU_LOGIN.Value:=DM.QYAux.FieldByName('USU_LOGIN').AsString;
        DM2.TBContatosUSU_NOME.Value:=DM.QYAux.FieldByName('USU_NOME').AsString;
        DM2.TBContatosUSU_LIDAS.Value:=0;
        DM2.TBContatos.Post;
        DM.QYAux.Next;
      end;
      DM.QYAux.Close;
      DM2.TBContatos.First;
      Label1.Caption:=DM.UsuarioNome+' <-> '+DM2.TBContatosUSU_NOME.Value;
      DBGrid1CellClick(nil); //faz preencher o memo com as mensagens.
      Timer2.Enabled:=True; //timer da checagem de novas mensagens.
    end else
    Panel1.Height:=Panel3.Height;

    Panel1.Visible:=True;
    Timer1.Enabled:=True; //timer da tela de resumo.
    Timer3.Enabled:=True; //timer da checagem de novos pedidos via internet.

    QYMetas.Close;
    QYMetas.ParamByName('vendedor').AsInteger:=DM.TBUsuariosUSU_VENDEDOR.Value;
    QYMetas.Open;

    PngSpeedButton1.Click; //clica no botao de atualizar.
    Memo1.SetFocus;

    //CarregarLogomarca(IncludeTrailingPathDelimiter(DM.TBParametrosPAR_LOCALLOGOMARCA.Value)+'Logomarca.png',Image1);
    CarregarLogomarcaSVG(Image1);

    //Verifica e avisa se o certificado digital tá vencendo.
    ChecarValidadeCertificado;
  end;

end;

procedure TFormMain.AlterarSenhadeAcesso1Click(Sender: TObject);
begin
  //localiza o usuario antes.
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  Application.CreateForm(TFormAlterarSenha, FormAlterarSenha);
  FormAlterarSenha.CancelarFecharAplicacao:=False; //se cancelar NAO fecha a aplicação.
  FormAlterarSenha.ShowModal;
  FormAlterarSenha.Free;
  FormAlterarSenha:=nil;
end;

procedure TFormMain.AlterarTema1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTemas, FormTemas);
  FormTemas.ShowModal;
  FormTemas.Free;
  FormTemas:=nil;
end;

procedure TFormMain.Clientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
  FormClientes.Free;
  FormClientes:=nil;
end;

procedure TFormMain.Fornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormMain.Foros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormForos, FormForos);
  FormForos.ShowModal;
  FormForos.Free;
  FormForos:=nil;
end;

procedure TFormMain.FrenteDeCaixa1Click(Sender: TObject);
begin
  AbortIf((DM.TBParametrosPAR_NFCECSC.Value='') and (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='1'),'Não informado o CSC. Informe o CSC na tela de parâmetros.');
  AbortIf((DM.TBParametrosPAR_NFCECSCID.Value='') and (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='1'),'Não informado o CSC ID. Informe o CSC ID na tela de parâmetros.');
  AbortIf((DM.TBParametrosPAR_NFCECSCHOMOLOGACAO.Value='') and (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2'),'Não informado o CSC Homologação. Informe o CSC na tela de parâmetros.');
  AbortIf((DM.TBParametrosPAR_NFCECSCIDHOMOLOGACAO.Value='') and (DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2'),'Não informado o CSC ID Homologação. Informe o CSC ID na tela de parâmetros.');

  Application.CreateForm(TFormNfceCaixa, FormNfceCaixa);
  FormNfceCaixa.ShowModal;
  FormNfceCaixa.Free;
  FormNfceCaixa:=nil;
end;

procedure TFormMain.Frotas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFrotas, FormFrotas);
  FormFrotas.ShowModal;
  FormFrotas.Free;
  FormFrotas:=nil;
end;

procedure TFormMain.Receitas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormReceitas, FormReceitas);
  FormReceitas.ShowModal;
  FormReceitas.Free;
  FormReceitas:=nil;
end;

procedure TFormMain.Receituarios1Click(Sender: TObject);
begin
  //DM2.TBReceituarios.DataSource:=DM.DSClientes; //liga o master source.
  Application.CreateForm(TFormReceituarios, FormReceituarios);
  FormReceituarios.ShowModal;
  FormReceituarios.Free;
  FormReceituarios:=nil;
  //DM2.TBReceituarios.DataSource:=nil; //retira o master source. Algumas operações ficam lentas se o master source ficar associado direto.
end;

procedure TFormMain.Despesas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDespesas, FormDespesas);
  FormDespesas.ShowModal;
  FormDespesas.Free;
  FormDespesas:=nil;
end;

procedure TFormMain.Grupos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGrupos, FormGrupos);
  FormGrupos.ShowModal;
  FormGrupos.Free;
  FormGrupos:=nil;
end;

procedure TFormMain.Familias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFamilias, FormFamilias);
  FormFamilias.ShowModal;
  FormFamilias.Free;
  FormFamilias:=nil;
end;

procedure TFormMain.FluxoDeCaixa1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixa, FormCaixa);
  FormCaixa.ShowModal;
  FormCaixa.Free;
  FormCaixa:=nil;
end;

procedure TFormMain.ContasDeEmails1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmailsContas, FormEmailsContas);
  FormEmailsContas.ShowModal;
  FormEmailsContas.Free;
  FormEmailsContas:=nil;
end;

procedure TFormMain.ContasAPagar1Click(Sender: TObject);
begin
  Pagar.SQLLocalizar:='';
  Application.CreateForm(TFormPagar, FormPagar);
  FormPagar.ShowModal;
  FormPagar.Free;
  FormPagar:=nil;
end;

procedure TFormMain.ContasAReceber1Click(Sender: TObject);
begin
  Receber.SQLLocalizar:='';
  Application.CreateForm(TFormReceber, FormReceber);
  FormReceber.ShowModal;
  FormReceber.Free;
  FormReceber:=nil;
end;

procedure TFormMain.Vendedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendedores, FormVendedores);
  FormVendedores.ShowModal;
  FormVendedores.Free;
  FormVendedores:=nil;
end;

procedure TFormMain.VersaoCTEUTIL1Click(Sender: TObject);
var U: CTe_Util_Interface;
begin
  U:=CTe_Util_TLB.CoUtil.Create;
  MessageDlg('A versão da CTe_Util em uso é '+U.Versao,mtInformation,[mbOk],0);
  U:=nil;
end;

procedure TFormMain.VersaoMDFEUTIL1Click(Sender: TObject);
var U: MDFe_Util_Interface;
  Nome, Versao, Data, DataVal, URLVersao, URLData, Ret: WideString;
begin
  U:=MDFe_Util_TLB.CoUtil.Create;
  Ret:=U.Versao(Nome,Versao,Data,DataVal,URLVersao,URLData);
  MessageDlg('A versão da MDFe_Util em uso é '+Ret,mtInformation,[mbOk],0);
  U:=nil;
end;

procedure TFormMain.VersaoNFEUTIL1Click(Sender: TObject);
var U: NFe_Util_2G_Interface;
begin
  U:=NFe_Util_2G_TLB.CoUtil.Create;
  MessageDlg('A versão da NFe_Util em uso é '+U.Versao,mtInformation,[mbOk],0);
  U:=nil;
end;

procedure TFormMain.ViasDeContato1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVias, FormVias);
  FormVias.ShowModal;
  FormVias.Free;
  FormVias:=nil;
end;

procedure TFormMain.Web1Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar(DM.TBEmpresaEMP_NOSSOSITE.Value),nil,nil,sw_ShowNormal);
end;

procedure TFormMain.WhatsAppMensagens1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZapMensagens, FormZapMensagens);
  FormZapMensagens.ShowModal;
  FormZapMensagens.Free;
  FormZapMensagens:=nil;
end;

procedure TFormMain.RamosDeAtividades1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAtividades, FormAtividades);
  FormAtividades.ShowModal;
  FormAtividades.Free;
  FormAtividades:=nil;
end;

procedure TFormMain.TransferenciaDeSaldos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCaixaTransferencias, FormCaixaTransferencias);
  FormCaixaTransferencias.ShowModal;
  FormCaixaTransferencias.Free;
  FormCaixaTransferencias:=nil;
end;

procedure TFormMain.ContasCorrente1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContas, FormContas);
  FormContas.ShowModal;
  FormContas.Free;
  FormContas:=nil;
end;

procedure TFormMain.Processos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProcessos, FormProcessos);
  FormProcessos.ShowModal;
  FormProcessos.Free;
  FormProcessos:=nil;
end;

procedure TFormMain.Produtos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormMain.TabelaCST1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCst, FormCst);
  FormCst.ShowModal;
  FormCst.Free;
  FormCst:=nil;
end;

procedure TFormMain.TabelaDePrecos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutosTabPreco, FormProdutosTabPreco);
  FormProdutosTabPreco.ShowModal;
  FormProdutosTabPreco.Free;
  FormProdutosTabPreco:=nil;
end;

procedure TFormMain.Taxas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTaxas, FormTaxas);
  FormTaxas.ShowModal;
  FormTaxas.Free;
  FormTaxas:=nil;
end;

procedure TFormMain.MovimentacaoEstoque1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEstoque, FormEstoque);
  FormEstoque.ShowModal;
  FormEstoque.Free;
  FormEstoque:=nil;
end;

procedure TFormMain.NaturezasDeOperacao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNaturezas, FormNaturezas);
  FormNaturezas.ShowModal;
  FormNaturezas.Free;
  FormNaturezas:=nil;
end;

procedure TFormMain.TeleVendas2Click(Sender: TObject);
begin
  Application.CreateForm(TFormTeleVendas, FormTeleVendas);
  FormTeleVendas.ShowModal;
  FormTeleVendas.Free;
  FormTeleVendas:=nil;
end;

procedure TFormMain.MovimentacaoDeContas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContasMov, FormContasMov);
  FormContasMov.ShowModal;
  FormContasMov.Free;
  FormContasMov:=nil;
end;

procedure TFormMain.PedidoDeVendas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendas, FormVendas);
  FormVendas.ShowModal;
  FormVendas.Free;
  FormVendas:=nil;
end;

procedure TFormMain.PedidoDeVendasConferencia1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasConferencia, FormVendasConferencia);
  FormVendasConferencia.ShowModal;
  FormVendasConferencia.Free;
  FormVendasConferencia:=nil;
end;

procedure TFormMain.PedidoDeVendasRapidas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasRapidas, FormVendasRapidas);
  FormVendasRapidas.ShowModal;
  FormVendasRapidas.Free;
  FormVendasRapidas:=nil;
end;

procedure TFormMain.PngBitBtn1Click(Sender: TObject);
var M: Widestring;
begin
  if Memo1.Lines.Text<>'' then
  begin
    DM2.TBMensagens.Insert;
    DM2.TBMensagensMEN_REMETENTE.Value:=DM.UsuarioLogado;
    DM2.TBMensagensMEN_DESTINATARIOS.Value:=DM2.TBContatosUSU_LOGIN.Value;
    M:=DateToStr(DM2.TBMensagensMEN_DATA.Value)+' '+TimeToStr(DM2.TBMensagensMEN_HORA.Value)+' '+DM.UsuarioNome+': ';
    M:=M+Memo1.Lines.Text;
    DM2.TBMensagensMEN_MENSAGEM.Value:=M;
    DM2.TBMensagens.Post;
    Memo2.Lines.Add(M);
    Memo1.Lines.Clear;
    Memo1.SetFocus;
  end;
end;

procedure TFormMain.PngSpeedButton1Click(Sender: TObject);
var MetaAtingida, TotalVendas: Extended;
begin
  QYVendas.Close;
  QYVendas.Open;

  QYMetas.Close;
  QYMetas.ParamByName('vendedor').AsInteger:=DM.TBUsuariosUSU_VENDEDOR.Value;
  QYMetas.Open;

  //totaliza as vendas finalizadas do vendedor.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add(
    'select coalesce(sum(VED_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(VED_VALORTOTAL),0) as TOTALVENDAS from VENDAS '+
    'where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' and VED_VENDEDOR=:vendedor and VED_DTEMISSAO between :datainicial and :datafinal');
  DM.QYAux.ParamByName('datainicial').AsDate:=QYMetasMET_DTINICIO.Value;
  DM.QYAux.ParamByName('datafinal').AsDate:=QYMetasMET_DTFIM.Value;
  DM.QYAux.ParamByName('vendedor').AsInteger:=QYMetasMET_VENDEDOR.Value;
  DM.QYAux.Open;
  TotalVendas:=DM.QYAux.FieldByName('TOTALVENDAS').AsExtended;
  DM.QYAux.Close;

  MetaAtingida:=0;
  if TotalVendas > 0 then
  MetaAtingida:=Decimais(((TotalVendas * 100) / QYMetasMET_METAVALOR.AsExtended),2);
  Label6.Caption:=MetaAtingida.ToString+'%';
end;

procedure TFormMain.PngSpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVendasLoc, FormVendasLoc);
  FormVendasLoc.QYVendas.Close;
  FormVendasLoc.QYVendas.SQL.Clear;
  FormVendasLoc.QYVendas.SQL.Add(
    'select '+VendasLoc.Campos+' from VENDAS '+
    'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
    'where VED_STATUS=''A'' and VED_VIAINTERNET='+QuotedStr('S')+' and VED_VIAINTERNETSTATUS='+QuotedStr('F')+' order by VED_DTEMISSAO desc, VED_CODIGO desc'
  );
  FormVendasLoc.QYVendas.Open;
  FormVendasLoc.ShowModal;
  if VendasLoc.Procurar then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=FormVendasLoc.QYVendasVED_CODIGO.Value;
    DM.TBVendas.Open;
  end;
  FormVendasLoc.Free;
  FormVendasLoc:=nil;

  if VendasLoc.Procurar then
  begin
    Application.CreateForm(TFormVendas, FormVendas);
    FormVendas.ShowModal;
    FormVendas.Free;
    FormVendas:=nil;
  end;
end;

procedure TFormMain.PngSpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TFormMetasMinhas, FormMetasMinhas);
  FormMetasMinhas.ShowModal;
  FormMetasMinhas.Free;
  FormMetasMinhas:=nil;
end;

procedure TFormMain.NomenclaturaBrasileiraDeServicos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNbs, FormNbs);
  FormNbs.ShowModal;
  FormNbs.Free;
  FormNbs:=nil;
end;

procedure TFormMain.NotasFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNotas, FormNotas);
  FormNotas.ShowModal;
  FormNotas.Free;
  FormNotas:=nil;
end;

procedure TFormMain.NotasFiscaisDeConsumidorEletronicas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfce, FormNfce);
  FormNfce.ShowModal;
  FormNfce.Free;
  FormNfce:=nil;
end;

procedure TFormMain.NotasFiscaisDeServicoEletronicas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfse, FormNfse);
  FormNfse.ShowModal;
  FormNfse.Free;
  FormNfse:=nil;
end;

procedure TFormMain.Comandas2Click(Sender: TObject);
begin
  Application.CreateForm(TFormComandasControle, FormComandasControle);
  FormComandasControle.ShowModal;
  FormComandasControle.Free;
  FormComandasControle:=nil;
end;

procedure TFormMain.CondicoesDePagamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCondicoes, FormCondicoes);
  FormCondicoes.ShowModal;
  FormCondicoes.Free;
  FormCondicoes:=nil;
end;

procedure TFormMain.Conhecimentos2Click(Sender: TObject);
begin
  Application.CreateForm(TFormConhecimentos, FormConhecimentos);
  FormConhecimentos.ShowModal;
  FormConhecimentos.Free;
  FormConhecimentos:=nil;
end;

procedure TFormMain.ConsultarPlacaVeicular1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultarPlaca, FormConsultarPlaca);
  FormConsultarPlaca.PngBitBtn1.Visible:=False; //botao cadastrar placa.
  FormConsultarPlaca.ShowModal;
  FormConsultarPlaca.Free;
  FormConsultarPlaca:=nil;
end;

procedure TFormMain.ConsultarCEP1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEnderecosBuscaCEP, FormEnderecosBuscaCEP);
  FormEnderecosBuscaCEP.ShowModal;
  FormEnderecosBuscaCEP.Free;
  FormEnderecosBuscaCEP:=nil;
end;

procedure TFormMain.Aliquotas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAliquotas, FormAliquotas);
  FormAliquotas.ShowModal;
  FormAliquotas.Free;
  FormAliquotas:=nil;
end;

procedure TFormMain.PedidoDeCompras1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCompras, FormCompras);
  FormCompras.ShowModal;
  FormCompras.Free;
  FormCompras:=nil;
end;

procedure TFormMain.EnvioDeEmails1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEmails, FormEmails);
  FormEmails.ShowModal;
  FormEmails.Free;
  FormEmails:=nil;
end;

procedure TFormMain.Equipamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEquipamentos, FormEquipamentos);
  FormEquipamentos.ShowModal;
  FormEquipamentos.Free;
  FormEquipamentos:=nil;
end;

procedure TFormMain.TrocarUsuario1Click(Sender: TObject);
var OldUser: Integer;
begin
  Timer2.Enabled:=False;

  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.UsuarioLogado;
  DM.TBUsuarios.Open;
  DM.TBUsuarios.Edit;
  DM.TBUsuariosUSU_LOGADO.Value:='N';
  DM.TBUsuarios.Post;
  OldUser:=DM.UsuarioLogado;

  FormMain.Hide;

  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.ShowModal;
  FormLogin.Free;
  FormLogin:=nil;
  if DM.UsuarioLogado=OldUser then //se cancelou o login, volta o logado=S.
  begin
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_LOGADO.Value:='S';
    DM.TBUsuarios.Post;
  end;
  FormMain.StatusBar1.Panels[0].Text:='Usuario: '+DM.UsuarioLogin;
  FormMain.HabilitarTodosControles(FormMain); //Habilita tudo.
  FormMain.ConfigurarModulos(FormMain); // Primeiro, desabilita os modulos.
  FormMain.DesabilitarControles(FormMain); // depois desabilita o que o usuario nao tem acesso.
  FormMain.EsconderBotoes; //esconde os botoes conforme parametros.ini.

  FormMainCreate;
  FormMain.Show;
end;

procedure TFormMain.OrdensDeServicos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormServicos, FormServicos);
  FormServicos.ShowModal;
  FormServicos.Free;
  FormServicos:=nil;
end;

procedure TFormMain.Ajuda1Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormMain.AjustarCamposdeTelefone1Click(Sender: TObject);
var S1, S2, S3, S4, S5: String;
begin
  if MessageDlg('Ajustar os campos de telefone?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Screen.Cursor:=crHourGlass;
    {$REGION 'Atualiza CLI_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CLIENTES SET CLI_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CLI_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CLI_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_FONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CLIENTES SET CLI_FONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CLI_FONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CLI_FONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_FONE3'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CLIENTES SET CLI_FONE3 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CLI_FONE3,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CLI_FONE3 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_MAEFONE'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CLIENTES SET CLI_MAEFONE = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CLI_MAEFONE,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CLI_MAEFONE '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_PAIFONE'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CLIENTES SET CLI_PAIFONE = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CLI_PAIFONE,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CLI_PAIFONE '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza COM_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE COMPRAS SET COM_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                COM_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    COM_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CON_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CONTAS SET CON_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CON_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CON_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CON_FONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CONTAS SET CON_FONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CON_FONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CON_FONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CTT_FONE'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE CONTATOS SET CTT_FONE = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                CTT_FONE,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    CTT_FONE '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE EMPRESA SET EMP_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                EMP_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    EMP_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_FONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE EMPRESA SET EMP_FONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                EMP_FONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    EMP_FONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_NOSSOFONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE EMPRESA SET EMP_NOSSOFONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                EMP_NOSSOFONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    EMP_NOSSOFONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_NOSSOFONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE EMPRESA SET EMP_NOSSOFONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                EMP_NOSSOFONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    EMP_NOSSOFONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE FORNECEDORES SET FOR_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                FOR_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    FOR_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE FORNECEDORES SET FOR_FONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                FOR_FONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    FOR_FONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE3'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE FORNECEDORES SET FOR_FONE3 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                FOR_FONE3,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    FOR_FONE3 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza VEN_FONE1'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE VENDEDORES SET VEN_FONE1 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                VEN_FONE1,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    VEN_FONE1 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza VEN_FONE2'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE VENDEDORES SET VEN_FONE2 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                VEN_FONE2,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    VEN_FONE2 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza VEN_FONE3'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'UPDATE VENDEDORES SET VEN_FONE3 = ( '+
      '  WITH TELEFONE AS ( '+
      '    SELECT '+
      '      CASE '+
      '        WHEN SUBSTRING(NUM FROM 1 FOR 1) = ''0'' '+
      '          THEN SUBSTRING(NUM FROM 2) ELSE NUM '+
      '      END AS NUM '+
      '    FROM ( '+
      '      SELECT '+
      '        REPLACE( '+
      '          REPLACE( '+
      '            REPLACE( '+
      '              REPLACE( '+
      '                VEN_FONE3,''('','''' '+
      '              ), '')'','''' '+
      '            ), ''-'','''' '+
      '          ), '' '','''' '+
      '        ) AS NUM '+
      '      FROM RDB$DATABASE '+
      '    ) '+
      '  ) '+
      'SELECT '+
      '  CASE '+
      '    WHEN CHAR_LENGTH(NUM) = 10 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 4) || ''-'' || '+
      '      SUBSTRING(NUM FROM 7 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) = 11 THEN '+
      '      ''('' || SUBSTRING(NUM FROM 1 FOR 2) || '') '' || '+
      '      SUBSTRING(NUM FROM 3 FOR 5) || ''-'' || '+
      '      SUBSTRING(NUM FROM 8 FOR 4) '+
      '    WHEN CHAR_LENGTH(NUM) < 10 THEN '+
      '      NUM ELSE '+
      '    VEN_FONE3 '+
      '  END '+
      'FROM TELEFONE);'
    );
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CLIENTES SET CLI_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(CLI_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_FONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CLIENTES SET CLI_FONE2 = NULL WHERE CHAR_LENGTH(TRIM(CLI_FONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_FONE3 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CLIENTES SET CLI_FONE3 = NULL WHERE CHAR_LENGTH(TRIM(CLI_FONE3)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_MAEFONE DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CLIENTES SET CLI_MAEFONE = NULL WHERE CHAR_LENGTH(TRIM(CLI_MAEFONE)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CLI_PAIFONE DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CLIENTES SET CLI_PAIFONE = NULL WHERE CHAR_LENGTH(TRIM(CLI_PAIFONE)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza COM_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE COMPRAS SET COM_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(COM_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CON_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CONTAS SET CON_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(CON_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CON_FONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CONTAS SET CON_FONE2 = NULL WHERE CHAR_LENGTH(TRIM(CON_FONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza CTT_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE CONTATOS SET CTT_FONE = NULL WHERE CHAR_LENGTH(TRIM(CTT_FONE)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE EMPRESA SET EMP_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(EMP_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_FONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE EMPRESA SET EMP_FONE2 = NULL WHERE CHAR_LENGTH(TRIM(EMP_FONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_NOSSOFONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE EMPRESA SET EMP_NOSSOFONE1 = NULL WHERE CHAR_LENGTH(TRIM(EMP_NOSSOFONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza EMP_NOSSOFONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE EMPRESA SET EMP_NOSSOFONE2 = NULL WHERE CHAR_LENGTH(TRIM(EMP_NOSSOFONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE FORNECEDORES SET FOR_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(FOR_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE FORNECEDORES SET FOR_FONE2 = NULL WHERE CHAR_LENGTH(TRIM(FOR_FONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE3 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE FORNECEDORES SET FOR_FONE3 = NULL WHERE CHAR_LENGTH(TRIM(FOR_FONE3)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza VEN_FONE1 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE VENDEDORES SET VEN_FONE1 = NULL WHERE CHAR_LENGTH(TRIM(VEN_FONE1)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE2 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE VENDEDORES SET VEN_FONE2 = NULL WHERE CHAR_LENGTH(TRIM(VEN_FONE2)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    {$REGION 'Atualiza FOR_FONE3 DDD'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('UPDATE VENDEDORES SET VEN_FONE3 = NULL WHERE CHAR_LENGTH(TRIM(VEN_FONE3)) = 2;');
    DM.QYAux.ExecSQL;
    {$ENDREGION}

    Screen.Cursor:=crDefault;
    MessageDlg('Atualização realizada com sucesso.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormMain.Almoxarifados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAlmoxarifados, FormAlmoxarifados);
  FormAlmoxarifados.ShowModal;
  FormAlmoxarifados.Free;
  FormAlmoxarifados:=nil;
end;

procedure TFormMain.CupomFiscal2Click(Sender: TObject);
//var PompomHandle: HWND;
begin
  Application.CreateForm(TFormCupom, FormCupom);
  FormCupom.ShowModal;
  FormCupom.Free;
  FormCupom:=nil;
{  if FileExists(ExtractFilePath(Application.ExeName)+'\CupomFiscal\Pompom.exe') then
  begin
    //procura se ja está sendo executado uma cópia do pompom.
    //se estiver, trás a janela pra frente.
    PompomHandle:=FindWindow(nil,PChar('Pompom - Emissor Cupom Fiscal'));
    if PompomHandle<>0 then
    SetForegroundWindow(PompomHandle) else
    WinExec(PAnsiChar(AnsiString(ExtractFilePath(Application.ExeName)+'\CupomFiscal\Pompom.exe')),sw_ShowNormal);
  end;}
end;

procedure TFormMain.Cursos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCursos, FormCursos);
  FormCursos.ShowModal;
  FormCursos.Free;
  FormCursos:=nil;
end;

procedure TFormMain.GeraoArquivosFCI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFci, FormFci);
  FormFci.ShowModal;
  FormFci.Free;
  FormFci:=nil;
end;

procedure TFormMain.GNREGuiaImpostosEstaduais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormGnre, FormGnre);
  FormGnre.ShowModal;
  FormGnre.Free;
  FormGnre:=nil;
end;

procedure TFormMain.LimparHistoricoDeConversa1Click(Sender: TObject);
begin
  AbortIf(DM2.TBContatos.IsEmpty,'Nenhum contato selecionado');

  if MessageDlg('Limpar Histórico?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from MENSAGENS where '+
                     '((MEN_REMETENTE=:contato) and (MEN_DESTINATARIOS=:usuario)) or '+
                     '((MEN_REMETENTE=:usuario) and (MEN_DESTINATARIOS=:contato))');
    DM.QYAux.ParamByName('usuario').AsInteger:=DM.UsuarioLogado;
    DM.QYAux.ParamByName('contato').AsInteger:=DM2.TBContatosUSU_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DBGrid1CellClick(nil);
  end;
end;

procedure TFormMain.IAsmin1Click(Sender: TObject);
begin
  TFormIasminConsulta.Abrir(DM.FDConnection1);
end;

procedure TFormMain.Image1DblClick(Sender: TObject);
begin
  if PedidodeVendas1.Enabled then
  PedidodeVendas1Click(Self);
end;

procedure TFormMain.Veiculos2Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculos, FormVeiculos);
  FormVeiculos.ShowModal;
  FormVeiculos.Free;
  FormVeiculos:=nil;
end;

procedure TFormMain.Opcionais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormOpcionais, FormOpcionais);
  FormOpcionais.ShowModal;
  FormOpcionais.Free;
  FormOpcionais:=nil;
end;

procedure TFormMain.Classificados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassificados, FormClassificados);
  FormClassificados.ShowModal;
  FormClassificados.Free;
  FormClassificados:=nil;
end;

procedure TFormMain.VeiculosAVenda1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosVenda, FormVeiculosVenda);
  FormVeiculosVenda.ShowModal;
  FormVeiculosVenda.Free;
  FormVeiculosVenda:=nil;
end;

procedure TFormMain.VeiculosDeClientes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormVeiculosCliente, FormVeiculosCliente);
  FormVeiculosCliente.ShowModal;
  FormVeiculosCliente.Free;
  FormVeiculosCliente:=nil;
end;

procedure TFormMain.Promissorias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPromissorias, FormPromissorias);
  FormPromissorias.ShowModal;
  FormPromissorias.Free;
  FormPromissorias:=nil;
end;

procedure TFormMain.Prontuarios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProntuarios, FormProntuarios);
  FormProntuarios.ShowModal;
  FormProntuarios.Free;
  FormProntuarios:=nil;
end;

procedure TFormMain.AgendamentoDeConsultas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConsultas, FormConsultas);
  FormConsultas.ShowModal;
  FormConsultas.Free;
  FormConsultas:=nil;
end;

procedure TFormMain.Agrupadores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAgrupadores, FormAgrupadores);
  FormAgrupadores.ShowModal;
  FormAgrupadores.Free;
  FormAgrupadores:=nil;
end;

procedure TFormMain.OrdemDeProducao1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProducao, FormProducao);
  FormProducao.ShowModal;
  FormProducao.Free;
  FormProducao:=nil;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if (not DM.AtualizarComponentes) and (not DM.AtualizarUsuariosAcessos) then
  begin
    if DM.TBParametrosPAR_EXIBIRTELARESUMO.Value='S' then
    begin
      Application.ProcessMessages;
      Timer1.Enabled:=False;
      Resumo1.Click;
    end;
  end;
  Timer1.Enabled:=False;
end;

procedure TFormMain.Timer2Timer(Sender: TObject);
var BK: TBookMark;
begin
  //Verifica as mensagens novas recebidas de outros remetentes.
  DM2.QYMensagensNovas.SQL.Clear;
  DM2.QYMensagensNovas.SQL.Add(
    'select count(*) as QTDE, MEN_REMETENTE from MENSAGENS where '+
    'MEN_REMETENTE<>:remetente and MEN_LIDA=''N'' '+
    'and :remetente in (MEN_DESTINATARIOS) group by MEN_REMETENTE order by MEN_REMETENTE'
  );
  DM2.QYMensagensNovas.ParamByName('remetente').AsInteger:=DM.UsuarioLogado;
  DM2.QYMensagensNovas.Open;
  DM.ContatosChange:=False; //evita disparar o evento. veja evento datachange em dm2.tbcontatos.
  BK:=DM2.TBContatos.GetBookmark;
  while not DM2.QYMensagensNovas.Eof do
  begin
    DM2.TBContatos.Locate('USU_CODIGO',DM2.QYMensagensNovas.FieldByName('MEN_REMETENTE').AsString,[]);
    DM2.TBContatos.Edit;
    DM2.TBContatosUSU_LIDAS.Value:=DM2.QYMensagensNovas.FieldByName('QTDE').AsInteger;
    DM2.TBContatos.Post;
    DM2.QYMensagensNovas.Next;
  end;
  DM2.QYMensagensNovas.Close;
  DM2.TBContatos.GotoBookmark(BK);
  DM.ContatosChange:=True;

  if DM2.TBContatosUSU_LIDAS.Value>0 then
  begin
    //DM2.DSContatosDataChange(Self,nil); //dispara o evento para atualizar a conversa.
    DM2.QYMensagensNovas.SQL.Clear;
    DM2.QYMensagensNovas.SQL.Add('update MENSAGENS set MEN_LIDA=''S'' where MEN_REMETENTE=:contato');
    DM2.QYMensagensNovas.ParamByName('contato').AsInteger:=DM2.TBContatosUSU_CODIGO.Value;
    DM2.QYMensagensNovas.ExecSQL;

    DM2.TBContatos.Edit;
    DM2.TBContatosUSU_LIDAS.Value:=0;
    DM2.TBContatos.Post;
  end;

  //faz um scroll caret no memo de mensagens.
  if not Memo2.Focused then
  Memo2.Perform(EM_SCROLLCARET,0,0);
end;

procedure TFormMain.Timer3Timer(Sender: TObject);
begin
  QYVendas.Close;
  QYVendas.Open;
end;

procedure TFormMain.TiposDeAcoes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAcoes, FormAcoes);
  FormAcoes.ShowModal;
  FormAcoes.Free;
  FormAcoes:=nil;
end;

procedure TFormMain.TiposDeExames1Click(Sender: TObject);
begin
  Application.CreateForm(TFormExamesTipos, FormExamesTipos);
  FormExamesTipos.ShowModal;
  FormExamesTipos.Free;
  FormExamesTipos:=nil;
end;

procedure TFormMain.TiposDeImoveis1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveisTipos, FormImoveisTipos);
  FormImoveisTipos.ShowModal;
  FormImoveisTipos.Free;
  FormImoveisTipos:=nil;
end;

procedure TFormMain.TiposDeProjetos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetosTipos, FormProjetosTipos);
  FormProjetosTipos.ShowModal;
  FormProjetosTipos.Free;
  FormProjetosTipos:=nil;
end;

procedure TFormMain.TiposDeSeguros1Click(Sender: TObject);
begin
  Application.CreateForm(TFormSegurosTipos, FormSegurosTipos);
  FormSegurosTipos.ShowModal;
  FormSegurosTipos.Free;
  FormSegurosTipos:=nil;
end;

procedure TFormMain.Projetos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProjetos, FormProjetos);
  FormProjetos.ShowModal;
  FormProjetos.Free;
  FormProjetos:=nil;
end;

procedure TFormMain.ProjetosDmProducao1Click(Sender: TObject);
begin
  ShowMessage('Ainda não disponível.');
end;

//############################################################################//
// Faz a rolagem de registros nos DBGrids funcionar                           //
//############################################################################//
procedure TFormMain.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
var I: SmallInt;
begin
{  if (Msg.message=WM_MOUSEWHEEL) and (Screen.ActiveControl.ClassName='TDBGrid') then
  begin
    Msg.message:=WM_KEYDOWN;
    Msg.lParam:=0;
    i:=HiWord(Msg.wParam);
    if i>0 then
    Msg.wParam:=VK_UP else
    Msg.wParam:=VK_DOWN;
    Handled:=False;
  end;}
end;

procedure TFormMain.Assuntos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAssuntos, FormAssuntos);
  FormAssuntos.ShowModal;
  FormAssuntos.Free;
  FormAssuntos:=nil;
end;

procedure TFormMain.Mailings1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMailings, FormMailings);
  FormMailings.ShowModal;
  FormMailings.Free;
  FormMailings:=nil;
end;

procedure TFormMain.ManifestacoesDoDestinatario1Click(Sender: TObject);
begin
  Application.CreateForm(TFormManifestacoes, FormManifestacoes);
  FormManifestacoes.ShowModal;
  FormManifestacoes.Free;
  FormManifestacoes:=nil;
end;

procedure TFormMain.Manifestos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMdfe, FormMdfe);
  FormMdfe.ShowModal;
  FormMdfe.Free;
  FormMdfe:=nil;
end;

procedure TFormMain.Fases1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFases, FormFases);
  FormFases.ShowModal;
  FormFases.Free;
  FormFases:=nil;
end;

procedure TFormMain.Bancos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBancos, FormBancos);
  FormBancos.ShowModal;
  FormBancos.Free;
  FormBancos:=nil;
end;

procedure TFormMain.BenefciosFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBeneficios, FormBeneficios);
  FormBeneficios.ShowModal;
  FormBeneficios.Free;
  FormBeneficios:=nil;
end;

procedure TFormMain.Boletos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormBoletos, FormBoletos);
  FormBoletos.ShowModal;
  FormBoletos.Free;
  FormBoletos:=nil;
end;

procedure TFormMain.Checklists1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChecklists, FormChecklists);
  FormChecklists.ShowModal;
  FormChecklists.Free;
  FormChecklists:=nil;
end;

procedure TFormMain.Cheques1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCheques, FormCheques);
  FormCheques.ShowModal;
  FormCheques.Free;
  FormCheques:=nil;
end;

procedure TFormMain.NotasFiscaisEletronicas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfe, FormNfe);
  FormNfe.ShowModal;
  FormNfe.Free;
  FormNfe:=nil;
end;

procedure TFormMain.ImpostoICMS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIcms, FormIcms);
  FormIcms.ShowModal;
  FormIcms.Free;
  FormIcms:=nil;
end;

procedure TFormMain.ImpostoIPI1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIpi, FormIpi);
  FormIpi.ShowModal;
  FormIpi.Free;
  FormIpi:=nil;
end;

procedure TFormMain.ImpostoPISCOFINS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPiscofins, FormPiscofins);
  FormPiscofins.ShowModal;
  FormPiscofins.Free;
  FormPiscofins:=nil;
end;

procedure TFormMain.ImpressorasECF1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEcf, FormEcf);
  FormEcf.ShowModal;
  FormEcf.Free;
  FormEcf:=nil;
end;

procedure TFormMain.InstalarCTEUTIL1Click(Sender: TObject);
var P: String;
begin
  if FileExists(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoCTEUtil) then
  begin
    P:='/components="DLL" /SAVEINF="'+GetTempDir+'cteutil.txt" /DIR="'+ExtractFilePath(Application.ExeName)+'"';
    //para instalação silenciosa: CTe_Util_2.02b /verysilent /components="DLL" /DIR=".\teste"
    ExecutarArquivo(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoCTEUtil,P);
  end else
  MessageDlg('O arquivo '+ArquivoCTEUtil+' não foi encontrado em '+DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\',mtError,[mbOk],0);
end;

procedure TFormMain.InstalarMDFEUTIL1Click(Sender: TObject);
var P: String;
begin
  if FileExists(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoMDFEUtil) then
  begin
    P:='/components="DLL" /SAVEINF="'+GetTempDir+'mdfeutil.txt" /DIR="'+ExtractFilePath(Application.ExeName)+'"';
    //para instalação silenciosa: MDFe_Util_2.02b /verysilent /components="DLL" /DIR=".\teste"
    ExecutarArquivo(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoMDFEUtil,P);
  end else
  MessageDlg('O arquivo '+ArquivoMDFEUtil+' não foi encontrado em '+DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\',mtError,[mbOk],0);
end;

procedure TFormMain.InstalarNFEUTIL1Click(Sender: TObject);
var P: String;
begin
  if FileExists(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoNFEUtil) then
  begin
    P:='/components="DLL" /SAVEINF="'+GetTempDir+'nfeutil.txt" /DIR="'+ExtractFilePath(Application.ExeName)+'"';
    //para instalação silenciosa: CTe_Util_2.02b /verysilent /components="DLL" /DIR=".\teste"
    ExecutarArquivo(DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\'+ArquivoNFEUtil,P);
  end else
  MessageDlg('O arquivo '+ArquivoNFEUtil+' não foi encontrado em '+DM.TBParametrosPAR_LOCALATUALIZACOES.Value+'\flexdocs\',mtError,[mbOk],0);
end;

procedure TFormMain.InstanciasWhatsApp1Click(Sender: TObject);
begin
  Application.CreateForm(TFormZapInstancias, FormZapInstancias);
  FormZapInstancias.ShowModal;
  FormZapInstancias.Free;
  FormZapInstancias:=nil;
end;

procedure TFormMain.Imoveis1Click(Sender: TObject);
begin
  Application.CreateForm(TFormImoveis, FormImoveis);
  FormImoveis.ShowModal;
  FormImoveis.Free;
  FormImoveis:=nil;
end;

procedure TFormMain.ClassificacoesFiscais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassFiscal, FormClassFiscal);
  FormClassFiscal.ShowModal;
  FormClassFiscal.Free;
  FormClassFiscal:=nil;
end;

procedure TFormMain.ClassificacoesTributarias1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClassTrib, FormClassTrib);
  FormClassTrib.ShowModal;
  FormClassTrib.Free;
  FormClassTrib:=nil;
end;

procedure TFormMain.ImpostoISS1Click(Sender: TObject);
begin
  Application.CreateForm(TFormIss, FormIss);
  FormIss.ShowModal;
  FormIss.Free;
  FormIss:=nil;
end;

procedure TFormMain.Marcas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarcas, FormMarcas);
  FormMarcas.ShowModal;
  FormMarcas.Free;
  FormMarcas:=nil;
end;

procedure TFormMain.Markups1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMarkups, FormMarkups);
  FormMarkups.ShowModal;
  FormMarkups.Free;
  FormMarkups:=nil;
end;

procedure TFormMain.Classes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormClasses, FormClasses);
  FormClasses.ShowModal;
  FormClasses.Free;
  FormClasses:=nil;
end;

procedure TFormMain.Objetos2Click(Sender: TObject);
begin
  Application.CreateForm(TFormObjetos, FormObjetos);
  FormObjetos.ShowModal;
  FormObjetos.Free;
  FormObjetos:=nil; 
end;

procedure TFormMain.Odontogramas1Click(Sender: TObject);
begin
  //DM2.TBOdontogramas.DataSource:=DM.DSClientes;
  Application.CreateForm(TFormOdontogramas, FormOdontogramas);
  FormOdontogramas.ShowModal;
  FormOdontogramas.Free;
  FormOdontogramas:=nil;
  //DM2.TBOdontogramas.DataSource:=nil;
end;

procedure TFormMain.LocacoesDeObjetos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocacoes, FormLocacoes);
  FormLocacoes.ShowModal;
  FormLocacoes.Free;
  FormLocacoes:=nil;
end;

procedure TFormMain.Resumo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormResumo, FormResumo);
  FormResumo.ShowModal;
  FormResumo.Free;
  FormResumo:=nil;
end;

procedure TFormMain.Turmas1Click(Sender: TObject);
begin
  //DM2.TBCalendarios.DataSource:=DM2.DSTurmas; //mestre-detalhe.
  Application.CreateForm(TFormTurmas, FormTurmas);
  FormTurmas.ShowModal;
  FormTurmas.Free;
  FormTurmas:=nil;
  //DM2.TBCalendarios.DataSource:=nil;
end;

procedure TFormMain.Matriculas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMatriculas, FormMatriculas);
  FormMatriculas.ShowModal;
  FormMatriculas.Free;
  FormMatriculas:=nil;
end;

procedure TFormMain.Medicamentos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicamentos, FormMedicamentos);
  FormMedicamentos.ShowModal;
  FormMedicamentos.Free;
  FormMedicamentos:=nil;
end;

procedure TFormMain.Medicoes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMedicoes, FormMedicoes);
  FormMedicoes.ShowModal;
  FormMedicoes.Free;
  FormMedicoes:=nil;
end;

procedure TFormMain.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    PngBitBtn1.Click;
  end;
end;

procedure TFormMain.Mensalidades1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMensalidades, FormMensalidades);
  FormMensalidades.ShowModal;
  FormMensalidades.Free;
  FormMensalidades:=nil;
end;

procedure TFormMain.Metas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMetas, FormMetas);
  FormMetas.ShowModal;
  FormMetas.Free;
  FormMetas:=nil;
end;

procedure TFormMain.Chamadas1Click(Sender: TObject);
begin
  Application.CreateForm(TFormChamadas, FormChamadas);
  FormChamadas.ShowModal;
  FormChamadas.Free;
  FormChamadas:=nil;
end;

procedure TFormMain.Conteudos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConteudos, FormConteudos);
  FormConteudos.ShowModal;
  FormConteudos.Free;
  FormConteudos:=nil;
end;

procedure TFormMain.Contratos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormContratos, FormContratos);
  FormContratos.ShowModal;
  FormContratos.Free;
  FormContratos:=nil;
end;

procedure TFormMain.Convenios1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConvenios, FormConvenios);
  FormConvenios.ShowModal;
  FormConvenios.Free;
  FormConvenios:=nil;
end;

procedure TFormMain.CreditoPresumido1Click(Sender: TObject);
begin
  Application.CreateForm(TFormCreditoPresumido, FormCreditoPresumido);
  FormCreditoPresumido.ShowModal;
  FormCreditoPresumido.Free;
  FormCreditoPresumido:=nil;
end;

procedure TFormMain.ProgramaDePontos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPontos, FormPontos);
  FormPontos.ShowModal;
  FormPontos.Free;
  FormPontos:=nil;
end;

procedure TFormMain.Motivos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormMotivos, FormMotivos);
  FormMotivos.ShowModal;
  FormMotivos.Free;
  FormMotivos:=nil;
end;

procedure TFormMain.Locais1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLocais, FormLocais);
  FormLocais.ShowModal;
  FormLocais.Free;
  FormLocais:=nil;
end;

procedure TFormMain.Logomarca1Click(Sender: TObject);
begin
  Application.CreateForm(TFormLogomarca, FormLogomarca);
  FormLogomarca.ShowModal;
  FormLogomarca.Free;
  FormLogomarca:=nil;
end;

procedure TFormMain.Feriados1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFeriados, FormFeriados);
  FormFeriados.ShowModal;
  FormFeriados.Free;
  FormFeriados:=nil;
end;

procedure TFormMain.Dashboard1Click(Sender: TObject);
begin
  Application.CreateForm(TFormDashboard, FormDashboard);
  FormDashboard.ShowModal;
  FormDashboard.Free;
  FormDashboard:=nil;
end;

procedure TFormMain.DBGrid1CellClick(Column: TColumn);
begin
  if DM2.TBContatos.IsEmpty then
  begin
    //MessageDlg('Nenhum contato selecionado.',mtError,[mbOk],0);
    Exit;
  end;
  Label1.Caption:=DM.UsuarioNome+' <-> '+DM2.TBContatosUSU_NOME.Value;
  Memo2.Lines.Clear;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(40) * from MENSAGENS where '+
                     '((MEN_REMETENTE=:contato) and (MEN_DESTINATARIOS=:usuario)) or '+
                     '((MEN_REMETENTE=:usuario) and (MEN_DESTINATARIOS=:contato)) order by MEN_CODIGO desc');
  DM.QYAux.ParamByName('usuario').AsInteger:=DM.UsuarioLogado;
  DM.QYAux.ParamByName('contato').AsInteger:=DM2.TBContatosUSU_CODIGO.Value;
  DM.QYAux.Open;
  DM.QYAux.Last;
  while not DM.QYAux.Bof do
  begin
    Memo2.Lines.Add(DM.QYAux.FieldByName('MEN_MENSAGEM').AsString);
    DM.QYAux.Prior;
  end;
  DM.QYAux.Close;
  Memo2.Perform(EM_SCROLLCARET,0,0);
end;

procedure TFormMain.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    DBGrid1CellClick(nil);
  end;
end;

procedure TFormMain.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  DBGrid1CellClick(nil);
end;

procedure TFormMain.Evolucoes1Click(Sender: TObject);
begin
  Application.CreateForm(TFormEvolucoes, FormEvolucoes);
  FormEvolucoes.ShowModal;
  FormEvolucoes.Free;
  FormEvolucoes:=nil;
end;

initialization
  RegisterClass(TFormMain);

finalization
  UnRegisterClass(TFormMain);

end.
