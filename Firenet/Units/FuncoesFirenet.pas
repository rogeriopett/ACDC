//Atualizacoes:
//2026.11.19 - CarregarLogoSVGFast: logo da empresa (EMP_LOGOSVG) nos relatorios do FastReport, registrada como funcao de script (so SVG, sem o logo_empresa_120x60.jpg).
unit FuncoesFirenet;

interface

uses
  Forms, Dialogs, Windows, SysUtils, IniFiles, System.UITypes, Messages, Controls,
  Graphics, Classes, Registry, Printers, DateUtils, StdCtrls, DBCtrls, Variants,
  Funcoes1, DataMod, DataMod2, SenhaPeriodica, Vendas, QRCtrls, frxClass,
  NFe_Util_2G_TLB, CTe_Util_TLB, MDFe_Util_TLB, DB, Vcl.Mask, FireDAC.Comp.Client,
  FireDAC.Stan.Option, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, Vcl.ExtCtrls;


function BrushStyleToStr(B: TBrushStyle): String;
function CalcularPrecoVendaComposto(ProdutoID: Integer): Currency;
function ChecarLimiteCliente(Codigo: Integer; Limite: Currency): Boolean;
function ChecarNovosUpdates(OldExe, NewExe, Atualizador: String): Boolean;
function CTeUtilAtualizada: Boolean;
function CTeUtilRegistrada: Boolean;
function GetUFCode(UF: String): Integer;
function GetRegistro(const Tabela, CampoChave: String; Codigo: Integer): TFDMemTable; overload;
function GetRegistro(const Tabela, CampoChave: String; Codigo: String): TFDMemTable; overload;

function MDFeUtilRegistrada: Boolean;
//function MontarChaveAcessoNFe_v110(UF: Integer; DTEmissao: TDateTime; CNPJ: String; Modelo, Serie, NumeroNF: Integer; Numerico: String): String;
function NFeUtilRegistrada: Boolean;
function NFeUtilAtualizada: Boolean;
function StrToBrushStyle(S: String): TBrushStyle;
function StrToBrushStyle2(S: String): String;
function VerificarSaldoEstoque(Tipo: String; Documento: Integer; var Mensagem: WideString): Boolean;
function VerificarSaldoEstoqueItem(Tipo: String; Produto, ProdutoReal, ItemCodigo: Integer; Quantidade, Conversao: Extended; var Mensagem: WideString): Boolean;

procedure MovimentarItensDelivery(Transacao: Char);
procedure MovimentarItensDeliveryCompostos(Item: Integer; Quantidade: Double; Transacao: Char);
procedure CarregarLogomarca(const Arquivo: String; Imagem: TImage);
procedure CarregarLogomarcaSVG(var Imagem: TImage);
procedure CarregarLogoSVGFast(Picture: TfrxPictureView);
procedure ChecarArquivos;
procedure ChecarBaseSomenteLeitura;
procedure ChecarContasEmAtraso(Codigo: Integer; var Qtde: Integer; var Valor: Currency);
procedure ChecarHash;
procedure ChecarLimiteUsuarios;
procedure ChecarValidade;
procedure ChecarValidadeCertificado;
procedure ComboBoxDiaPreferencial(var CB: TDBComboBox);
procedure EnviarMensagemParaTodos(Remetente: Integer; Mensagem: String);
procedure FormMainCreate;

procedure GerarBoletosFast(Boletos: String; ArquivoPDF: String);
procedure GerarFluxoCaixa(TipoDocto, NumDocto, Descricao, ES, Origem, ClienteNome, FornecedorNome: String; Vendedor, Conta, Cliente, Fornecedor: Integer; Data: TDate; Valor: Currency);
procedure GerarReceber(TipoDocto, NumDocto, Venda, Descricao, Status, Pagamento, TipoBaixa: String;
  Cliente, Vendedor, Representante, Receita, Conta, ParcelaNum, ParcelaQtde: Integer; Data, Vencimento: TDate; Valor, ValorSemDesconto: Currency);
procedure ImprimirComandaTermica;
procedure ImprimirCondicoesNFe;
procedure ImprimirCondicoesNotas;
procedure ImprimirCondicoesVendas;
procedure ImprimirControleVendas;
procedure ImprimirControleVendasEmail;
procedure ImprimirControleVendasTermica;
procedure ImprimirDeliveryTermica;
procedure ImprimirEtiquetasCodigoPedidoPPLB;
procedure ImprimirEtiquetasConferenciaPPLB;
procedure ImprimirEtiquetasEmbalagemPPLB;
procedure ImprimirEtiquetasEmbalagemPPLB_Novo;
procedure ImprimirEtiquetasPPLB;
procedure ImprimirEtiquetasPPLB_Novo;
procedure ImprimirListaProdutosPreco(CampoPreco: String);
procedure ImprimirNotasModelo01; //dental.
procedure ImprimirNotasModelo01Condensado; //dental.
procedure ImprimirNotasModelo02; //fases.
procedure ImprimirNotasModelo03; //gp.
//procedure ImprimirOrdemEntrega;
//procedure ImprimirOrdemProducao;
//procedure ImprimirPlanoProducao;
//procedure ImprimirServicosA;
//procedure ImprimirServicosF;
//procedure ImprimirServicosOrc;
procedure ImprimirTeste;
procedure LogoTipo(Form: TForm; Tamanho: Integer=1);
procedure RestaurarTamanhoForm(Formulario: TForm; Usuario: Integer);
procedure SalvarConsultaSQL(Formulario: String; Usuario: Integer; SQL: String);
procedure SalvarTamanhoForm(Formulario: String; Usuario, W,H,T,L: Integer);
procedure SetDataUltimaUtilizacao;

procedure LocAgrupadoresBotao(Codigo, Descricao: TEdit); overload;
procedure LocAgrupadoresBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocAgrupadoresExit(Codigo, Descricao: TEdit); overload;
procedure LocAgrupadoresExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocAlmoxarifadosBotao(Codigo, Descricao: TEdit); overload;
procedure LocAlmoxarifadosBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocAlmoxarifadosExit(Codigo, Descricao: TEdit); overload;
procedure LocAlmoxarifadosExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocAtividadesBotao(Codigo, Descricao: TEdit); overload;
procedure LocAtividadesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocAtividadesExit(Codigo, Descricao: TEdit); overload;
procedure LocAtividadesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocBancosBotao(Codigo, Nome: TEdit); overload;
procedure LocBancosBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocBancosExit(Codigo, Nome: TEdit); overload;
procedure LocBancosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocCidadesBotao(Codigo, Nome: TEdit); overload;
procedure LocCidadesBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocCidadesExit(Codigo, Nome: TEdit); overload;
procedure LocCidadesExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocClassFiscalBotao(Codigo, Descricao, Excecao: TEdit); overload;
procedure LocClassFiscalBotao(Codigo, Descricao, Excecao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocClassFiscalExit(Codigo, Descricao, Excecao: TEdit); overload;
procedure LocClassFiscalExit(Codigo, Descricao, Excecao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocClassTribBotao(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TEdit); overload;
procedure LocClassTribBotao(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TDBEdit; Tabela: TFDQuery); overload;
procedure LocClassTribExit(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TEdit); overload;
procedure LocClassTribExit(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TDBEdit; Tabela: TFDQuery); overload;

procedure LocClientesBotao(Codigo, Nome: TEdit); overload;
procedure LocClientesBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocClientesExit(Codigo, Nome: TEdit); overload;
procedure LocClientesExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocCondicoesBotao(Codigo, Descricao: TEdit); overload;
procedure LocCondicoesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocCondicoesExit(Codigo, Descricao: TEdit); overload;
procedure LocCondicoesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocContasBotao(Codigo, Nome: TEdit); overload;
procedure LocContasBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocContasExit(Codigo, Nome: TEdit); overload;
procedure LocContasExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocCreditoPresumidoBotao(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TEdit); overload;
procedure LocCreditoPresumidoBotao(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;
procedure LocCreditoPresumidoExit(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TEdit); overload;
procedure LocCreditoPresumidoExit(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;

procedure LocDespesasBotao(Codigo, Descricao: TEdit); overload;
procedure LocDespesasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocDespesasExit(Codigo, Descricao: TEdit); overload;
procedure LocDespesasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocEquipamentosBotao(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TEdit); overload;
procedure LocEquipamentosBotao(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TDBEdit; Tabela: TFDQuery); overload;
procedure LocEquipamentosExit(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TEdit); overload;
procedure LocEquipamentosExit(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TDBEdit; Tabela: TFDQuery); overload;

procedure LocEstadosBotao(Codigo, Nome: TEdit); overload;
procedure LocEstadosBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocEstadosExit(Codigo, Nome: TEdit); overload;
procedure LocEstadosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocFamiliasBotao(Codigo, Descricao: TEdit); overload;
procedure LocFamiliasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocFamiliasExit(Codigo, Descricao: TEdit); overload;
procedure LocFamiliasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocFornecedoresBotao(Codigo, Nome, CNPJ: TEdit); overload;
procedure LocFornecedoresBotao(Codigo, Nome, CNPJ: TDBEdit; Tabela: TFDQuery); overload;
procedure LocFornecedoresExit(Codigo, Nome, CNPJ: TEdit); overload;
procedure LocFornecedoresExit(Codigo, Nome, CNPJ: TDBEdit; Tabela: TFDQuery); overload;

procedure LocGruposBotao(Codigo, Descricao: TEdit); overload;
procedure LocGruposBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocGruposExit(Codigo, Descricao: TEdit); overload;
procedure LocGruposExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocIcmsBotao(Codigo, Descricao, CreditoSN: TEdit); overload;
procedure LocIcmsBotao(Codigo, Descricao, CreditoSN: TDBEdit; Tabela: TFDQuery); overload;
procedure LocIcmsExit(Codigo, Descricao, CreditoSN: TEdit); overload;
procedure LocIcmsExit(Codigo, Descricao, CreditoSN: TDBEdit; Tabela: TFDQuery); overload;

procedure LocIpiBotao(Codigo, Descricao: TEdit); overload;
procedure LocIpiBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocIpiExit(Codigo, Descricao: TEdit); overload;
procedure LocIpiExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocIssBotao(Codigo: TMaskEdit; Descricao, Aliquota: TEdit); overload;
procedure LocIssBotao(Codigo, Descricao, Aliquota: TDBEdit; Tabela: TFDQuery); overload;
procedure LocIssExit(Codigo: TMaskEdit; Descricao, Aliquota: TEdit); overload;
procedure LocIssExit(Codigo, Descricao, Aliquota: TDBEdit; Tabela: TFDQuery); overload;

procedure LocLocaisBotao(Codigo, Descricao: TEdit); overload;
procedure LocLocaisBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocLocaisExit(Codigo, Descricao: TEdit); overload;
procedure LocLocaisExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocLotesBotao(Codigo, Descricao: TEdit); overload;
procedure LocLotesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocLotesExit(Codigo, Descricao: TEdit); overload;
procedure LocLotesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocMarcasBotao(Codigo, Descricao: TEdit); overload;
procedure LocMarcasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocMarcasExit(Codigo, Descricao: TEdit); overload;
procedure LocMarcasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocMailingsBotao(Codigo, Descricao: TEdit); overload;
procedure LocMailingsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocMailingsExit(Codigo, Descricao: TEdit); overload;
procedure LocMailingsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocMotivosBotao(Codigo, Descricao: TEdit); overload;
procedure LocMotivosBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocMotivosExit(Codigo, Descricao: TEdit); overload;
procedure LocMotivosExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocNbsBotao(Codigo: TMaskEdit; Descricao: TEdit); overload;
procedure LocNbsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocNbsExit(Codigo: TMaskEdit; Descricao: TEdit); overload;
procedure LocNbsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocPiscofinsBotao(Codigo, Descricao: TEdit); overload;
procedure LocPiscofinsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocPiscofinsExit(Codigo, Descricao: TEdit); overload;
procedure LocPiscofinsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocProdutosBotao(Codigo, Nome: TEdit); overload;
procedure LocProdutosBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocProdutosExit(Codigo, Nome: TEdit); overload;
procedure LocProdutosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

procedure LocReceitasBotao(Codigo, Descricao: TEdit); overload;
procedure LocReceitasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocReceitasExit(Codigo, Descricao: TEdit); overload;
procedure LocReceitasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocRegrasFiscaisBotao(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TEdit); overload;
procedure LocRegrasFiscaisBotao(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;
procedure LocRegrasFiscaisExit(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TEdit); overload;
procedure LocRegrasFiscaisExit(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;

procedure LocTaxasBotao(Codigo, Descricao: TEdit); overload;
procedure LocTaxasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocTaxasExit(Codigo, Descricao: TEdit); overload;
procedure LocTaxasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocUnidadesBotao(Codigo, Descricao: TEdit); overload;
procedure LocUnidadesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocUnidadesExit(Codigo, Descricao: TEdit); overload;
procedure LocUnidadesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocVendedoresBotao(Codigo, Nome, Comissao: TEdit); overload;
procedure LocVendedoresBotao(Codigo, Nome, Comissao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocVendedoresExit(Codigo, Nome, Comissao: TEdit); overload;
procedure LocVendedoresExit(Codigo, Nome, Comissao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocVendedoresHistTiposBotao(Codigo, Descricao: TEdit); overload;
procedure LocVendedoresHistTiposBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocVendedoresHistTiposExit(Codigo, Descricao: TEdit); overload;
procedure LocVendedoresHistTiposExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocViasBotao(Codigo, Descricao: TEdit); overload;
procedure LocViasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
procedure LocViasExit(Codigo, Descricao: TEdit); overload;
procedure LocViasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;

procedure LocZapInstanciasBotao(Codigo, Nome: TEdit); overload;
procedure LocZapInstanciasBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
procedure LocZapInstanciasExit(Codigo, Nome: TEdit); overload;
procedure LocZapInstanciasExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;

implementation
uses Servicos, Notas, Nfe, Main, AtualizacoesBase, ProdutosEtiquetas, Producao,
  MD5, DataModSearch, AgrupadoresLoc, VendedoresLoc, FornecedoresLoc, DespesasLoc, ContasLoc, ClientesLoc, ReceitasLoc, BancosLoc, AtividadesLoc, CondicoesLoc,
  LocaisLoc, MailingsLoc, TaxasLoc, FamiliasLoc, EnderecosCidadesLoc, EnderecosEstadosLoc, GruposLoc, MarcasLoc, ProdutosLoc, AlmoxarifadosLoc, UnidadesLoc,
  IssLoc, IcmsLoc, ClassFiscalLoc, IpiLoc, PiscofinsLoc, EquipamentosLoc, MotivosLoc, ViasLoc, VendedoresHistTiposLoc,
  FireDAC.Comp.DataSet, ClassTribLoc, RegrasFiscaisLoc, CreditoPresumidoLoc, BoletosFast, NbsLoc, ZapInstanciasLoc,
  LotesLoc, fs_iinterpreter;

function GetRegistro(const Tabela, CampoChave: String; Codigo: Integer): TFDMemTable;
var
  Qry: TFDQuery;
  Mem: TFDMemTable;
begin
  Qry:=TFDQuery.Create(nil);
  Mem:=TFDMemTable.Create(nil);
  try
    Qry.Connection:=DM.FDConnection1; // Use sua conexão
    Qry.SQL.Text:=Format('SELECT * FROM %s WHERE %s = :CODIGO', [Tabela,CampoChave]);
    Qry.ParamByName('CODIGO').AsInteger:=Codigo;
    Qry.Open;
    Mem.CopyDataSet(Qry,[coStructure, coRestart, coAppend]); //Copia os dados para um TFDMemTable, para uso pós-fechamento da query
    Result:=Mem;
  finally
    Qry.Free;
    // NÃO libere o Mem aqui, ele será usado após o retorno!
  end;
end;

function GetRegistro(const Tabela, CampoChave: String; Codigo: String): TFDMemTable;
var
  Qry: TFDQuery;
  Mem: TFDMemTable;
begin
  Qry:=TFDQuery.Create(nil);
  Mem:=TFDMemTable.Create(nil);
  try
    Qry.Connection:=DM.FDConnection1; // Use sua conexão
    Qry.SQL.Text:=Format('SELECT * FROM %s WHERE %s = :CODIGO', [Tabela,CampoChave]);
    Qry.ParamByName('CODIGO').AsString:=Codigo;
    Qry.Open;
    Mem.CopyDataSet(Qry,[coStructure, coRestart, coAppend]); //Copia os dados para um TFDMemTable, para uso pós-fechamento da query
    Result:=Mem;
  finally
    Qry.Free;
    // NÃO libere o Mem aqui, ele será usado após o retorno!
  end;
end;

function BrushStyleToStr(B: TBrushStyle): String;
begin
  case B of
    bsSolid:      Result:='0';
    bsClear:      Result:='1';
    bsHorizontal: Result:='2';
    bsVertical:   Result:='3';
    bsFDiagonal:  Result:='4';
    bsBDiagonal:  Result:='5';
    bsCross:      Result:='6';
    bsDiagCross:  Result:='7';
  end;
end;

function StrToBrushStyle(S: String): TBrushStyle;
begin
  if S='0' then Result:=bsSolid;      //0
  if S='2' then Result:=bsHorizontal; //2
  if S='3' then Result:=bsVertical;   //3
  if S='4' then Result:=bsFDiagonal;  //4
  if S='5' then Result:=bsBDiagonal;  //5
  if S='6' then Result:=bsCross;      //6
  if S='7' then Result:=bsDiagCross;  //7
end;

function StrToBrushStyle2(S: String): String;
begin
  if S='SOLIDO'     then Result:='0';
  if S='HORIZONTAL' then Result:='2';
  if S='VERTICAL'   then Result:='3';
  if S='DIAGONAL D' then Result:='4';
  if S='DIAGONAL E' then Result:='5';
  if S='XADREZ'     then Result:='6';
  if S='XADREZ D'   then Result:='7';
end;

function VerificarSaldoEstoque(Tipo: String; Documento: Integer; var Mensagem: WideString): Boolean;
var Quantidade: Double;
begin
  Result:=True;
  Mensagem:='';

//  DM.QYAux2.Close;
//  DM.QYAux2.SQL.Clear;
//  DM.QYAux2.SQL.Add('select VED_CODIGO, VED_NFE, VED_STATUS from VENDAS where VED_CODIGO=:codigo');
//  DM.QYAux2.ParamByName('codigo').AsInteger:=Venda;
//  DM.QYAux2.Open;

  //verificação de estoque partindo da venda já montada.
  //vai produto por produto e verifica se o estoqueatual é suficiente para o pedido em questão.
  //tipo deve ser NFE ou VENDAS.

  //checa os produtos que não tem produto real.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  if Tipo='VENDAS' then
  DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE, VEI_PRODUTO as PRO_CODIGO from VENDASITENS where VEI_PRODUTOREAL=0 and VEI_VENDA=:codigo group by VEI_PRODUTO order by VEI_PRODUTO') else
  if Tipo='NFE' then
  DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE, NFI_PRODUTO as PRO_CODIGO from NFEITENS where NFI_PRODUTOREAL=0 and NFI_NOTA=:codigo group by NFI_PRODUTO order by NFI_PRODUTO');
  DM.QYAux.ParamByName('codigo').AsInteger:=Documento;
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_CODIGO').AsInteger;
    DM.TBProdutos.Open;
    if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value<DM.QYAux.FieldByName('QTDE').AsFloat) then
    Mensagem:=Mensagem+
      IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
      'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;

  //checa os produtos que tem produto real.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  if Tipo='VENDAS' then
  DM.QYAux.SQL.Add('select sum(VEI_QUANTIDADE) as QTDE, VEI_PRODUTOREAL as PRO_PRODUTOREAL, VEI_CONVERSAO as PRO_CONVERSAO from VENDASITENS where VEI_PRODUTOREAL<>0 and VEI_VENDA=:codigo group by VEI_PRODUTOREAL, VEI_CONVERSAO order by VEI_PRODUTOREAL') else
  if Tipo='NFE' then
  DM.QYAux.SQL.Add('select sum(NFI_QUANTIDADE) as QTDE, NFI_PRODUTOREAL as PRO_PRODUTOREAL, NFI_CONVERSAO as PRO_CONVERSAO from NFEITENS where NFI_PRODUTOREAL<>0 and NFI_NOTA=:codigo group by NFI_PRODUTOREAL, NFI_CONVERSAO order by NFI_PRODUTOREAL');
  DM.QYAux.ParamByName('codigo').AsInteger:=Documento;
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('PRO_PRODUTOREAL').AsInteger;
    DM.TBProdutos.Open;
    Quantidade:=DM.QYAux.FieldByName('QTDE').AsFloat * DM.QYAux.FieldByName('PRO_CONVERSAO').AsFloat;
    if (DM.TBProdutosPRO_ESTOQUEATUAL.Value<=0) or (DM.TBProdutosPRO_ESTOQUEATUAL.Value < Quantidade) then
    Mensagem:=Mensagem+
      IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
      'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;

  if Mensagem<>'' then
  begin
    Mensagem:='O(s) produto(s) abaixo não tem quantidade suficiente em estoque.'+#13#13+Mensagem;
    Result:=False;
  end;
end;

function VerificarSaldoEstoqueItem(Tipo: String; Produto, ProdutoReal, ItemCodigo: Integer; Quantidade, Conversao: Extended; var Mensagem: WideString): Boolean;
var QuantidadeEmPedidos: Extended;
begin
  Result:=True;
  Mensagem:='';
  QuantidadeEmPedidos:=0;
  //ItemCodigo pode ser o campo VEI_CODIGO ou NFI_CODIGO.
  //tipo deve ser VENDAS ou NFE.

  if ProdutoReal=0 then
  begin
    {$REGION 'Verifica produto normal'}
    //pega o total do produto nos pedidos de vendas em aberto.
    {$REGION 'Total do produto nos Pedidos em aberto.'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    //se tem VEI_CODIGO é pq já foi salvo o item no pedido anteriormente.
    //nesse caso soma-se tudo menos o proprio item da venda.
    //se NAO tem VEI_CODIGO é pq está sendo montado o pedido e nesse caso, soma-se tudo em aberto.
    if (ItemCodigo<>0) and (Tipo='VENDAS') then
    DM.QYAux.SQL.Add(
      'select sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
      'left join VENDAS on VEI_VENDA=VED_CODIGO '+
      'where VEI_CODIGO<>'+ItemCodigo.ToString+' and VEI_PRODUTO=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
      'group by VEI_PRODUTO order by VEI_PRODUTO'
    ) else
    DM.QYAux.SQL.Add(
      'select sum(VEI_QUANTIDADE) as QTDE from VENDASITENS '+
      'left join VENDAS on VEI_VENDA=VED_CODIGO '+
      'where VEI_PRODUTO=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
      'group by VEI_PRODUTO order by VEI_PRODUTO'
    );
    DM.QYAux.ParamByName('produto').AsInteger:=Produto;
    DM.QYAux.Open;
    {$ENDREGION}

    QuantidadeEmPedidos:=DM.QYAux.FieldByName('QTDE').AsExtended;

    {$REGION 'Total do produto nas NFE em aberto'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    //se tem VEI_CODIGO é pq já foi salvo o item no pedido anteriormente.
    //nesse caso soma-se tudo menos o proprio item da venda.
    //se NAO tem VEI_CODIGO é pq está sendo montado o pedido e nesse caso, soma-se tudo em aberto.
    if (ItemCodigo<>0) and (Tipo='NFE') then
    DM.QYAux.SQL.Add(
      'select sum(NFI_QUANTIDADE) as QTDE from NFEITENS '+
      'left join NFE on NFI_NOTA=NFE_CODIGO '+
      'where NFI_CODIGO<>'+ItemCodigo.ToString+' and NFI_PRODUTO=:produto and NFE_STATUS=''A'' and NFE_ENTRADASAIDA=''S'' and NFE_MOVIMENTAESTOQUE=''S'' '+
      'group by NFI_PRODUTO order by NFI_PRODUTO'
    ) else
    DM.QYAux.SQL.Add(
      'select sum(NFI_QUANTIDADE) as QTDE from NFEITENS '+
      'left join NFE on NFI_NOTA=NFE_CODIGO '+
      'where NFI_PRODUTO=:produto and NFE_STATUS=''A'' and NFE_ENTRADASAIDA=''S'' and NFE_MOVIMENTAESTOQUE=''S'' '+
      'group by NFI_PRODUTO order by NFI_PRODUTO'
    );
    DM.QYAux.ParamByName('produto').AsInteger:=Produto;
    DM.QYAux.Open;
    {$ENDREGION}

    QuantidadeEmPedidos:=QuantidadeEmPedidos + DM.QYAux.FieldByName('QTDE').AsExtended;

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Produto;
    DM.TBProdutos.Open;

    if (DM.TBProdutosPRO_ESTOQUEATUAL.Value <= 0) or
       (DM.TBProdutosPRO_ESTOQUEATUAL.Value < (QuantidadeEmPedidos + Quantidade)) then
    Mensagem:=
      IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
      'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10+
      'Quantidade: '+Quantidade.ToString+#13#10+
      'Quantidade em pedidos em aberto: '+FloatToStr(QuantidadeEmPedidos)+#13#10;
    DM.QYAux.Close;
    {$ENDREGION}
  end else

  if ProdutoReal<>0 then
  begin
    {$REGION 'Verifica produto real'}
    {$REGION 'Pega o total nos Pedidos em aberto.'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select sum(VEI_QUANTIDADE * VEI_CONVERSAO) as QTDE from VENDASITENS '+
      'left join VENDAS on VEI_VENDA=VED_CODIGO '+
      'where VEI_PRODUTOREAL=:produto and VED_STATUS=''A'' and VED_ENTRADASAIDA=''S'' and VED_MOVIMENTAESTOQUE=''S'' '+
      'group by VEI_PRODUTOREAL order by VEI_PRODUTOREAL'
    );
    DM.QYAux.ParamByName('produto').AsInteger:=ProdutoReal;
    DM.QYAux.Open;
    {$ENDREGION}

    QuantidadeEmPedidos:=DM.QYAux.FieldByName('QTDE').AsExtended;

    {$REGION 'Pega o total nas NFE em aberto.'}
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add(
      'select sum(NFI_QUANTIDADE * NFI_CONVERSAO) as QTDE from NFEITENS '+
      'left join NFE on NFI_NOTA=NFE_CODIGO '+
      'where NFI_PRODUTOREAL=:produto and NFE_STATUS=''A'' and NFE_ENTRADASAIDA=''S'' and NFE_MOVIMENTAESTOQUE=''S'' '+
      'group by NFI_PRODUTOREAL order by NFI_PRODUTOREAL'
    );
    DM.QYAux.ParamByName('produto').AsInteger:=ProdutoReal;
    DM.QYAux.Open;
    {$ENDREGION}

    QuantidadeEmPedidos:=QuantidadeEmPedidos + DM.QYAux.FieldByName('QTDE').AsExtended;

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=ProdutoReal;
    DM.TBProdutos.Open;

    if (DM.TBProdutosPRO_ESTOQUEATUAL.Value <= 0) or
       (DM.TBProdutosPRO_ESTOQUEATUAL.Value < (QuantidadeEmPedidos + (Quantidade * Conversao))) then
    Mensagem:=
      IntToStr(DM.TBProdutosPRO_CODIGO.Value)+'-'+DM.TBProdutosPRO_NOME.Value+#13#10+
      'Estoque atual: '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+#13#10+
      'Quantidade: '+Quantidade.ToString+' * '+Conversao.ToString+' = '+FloatToStr(Quantidade*Conversao)+#13#10+
      'Quantidade em pedidos em aberto: '+FloatToStr(QuantidadeEmPedidos)+#13#10;
    DM.QYAux.Close;
    {$ENDREGION}
  end;

  if Mensagem<>'' then
  begin
    Mensagem:='Este produto não tem quantidade suficiente em estoque.'+#13#13+Mensagem;
    Result:=False;
  end;
end;

procedure MovimentarItensDelivery(Transacao: Char);
begin
  DM2.TBDeliverysItens.DisableControls;
  DM2.TBDeliverysItens.First;
  while not DM2.TBDeliverysItens.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //só baixa se for produto, se for serviço não baixa.
    if DM.TBProdutosPRO_TIPO.Value='P' then
    begin
      if DM.TBProdutosPRO_COMPOSTO.Value='S' then
      MovimentarItensDeliveryCompostos(DM2.TBDeliverysItensDLI_PRODUTO.Value, DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended, Transacao) else
      begin
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=1;
        if Transacao='S' then
        DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA DELIVERY' else
        DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO DELIVERY';
        DM.TBEstoqueEST_NUMDOCTO.Value:='DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
        DM.TBEstoqueEST_PRODUTO.Value:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_TRANSACAO.Value:=Transacao;
        DM.TBEstoqueEST_VALORUNIT.Value:=DM2.TBDeliverysItensDLI_VALORUNIT.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM2.TBDeliverysDLV_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end;
    end;
    DM2.TBDeliverysItens.Next;
  end;
  DM2.TBDeliverysItens.EnableControls;
end;

procedure MovimentarItensDeliveryCompostos(Item: Integer; Quantidade: Double; Transacao: Char);
var Query: TFDQuery; Transaction: TFDTransaction;
begin
  Transaction:=TFDTransaction.Create(nil);
  Transaction.Connection:=DM.FDConnection1;
  Query:=TFDQuery.Create(nil);
  Query.Connection:=DM.FDConnection1;
  Query.Transaction:=Transaction;
  Query.SQL.Add('select PRC_CODIGO, PRC_ORDEM, PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, '+
                'PRO_COMPOSTO, PRO_NOME, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_UNIDADE from PRODUTOSCOMP '+
                'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO '+
                'where PRC_PRODUTO=:produto '+
                'order by PRC_ORDEM, PRO_NOME');
  Query.ParamByName('produto').AsInteger:=Item;
  Query.Open;
  Query.First;
  while not Query.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;
    //faz a saida do estoque nos itens que compõe o produto composto.
    DM.TBEstoque.Insert;
    if Transacao='S' then
    DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA DELIVERY' else
    DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO DELIVERY';
    DM.TBEstoqueEST_PRODUTO.Value:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value;
    DM.TBEstoqueEST_QUANTIDADE.Value:=Quantidade * Query.FieldByName('PRC_QUANTIDADE').AsExtended;
    DM.TBEstoqueEST_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor; //codigo do vendedor do usuario logado.
    DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
    DM.TBEstoqueEST_TRANSACAO.Value:=Transacao;
    DM.TBEstoque.Post;
    Query.Next;
  end;
end;

function ChecarLimiteCliente(Codigo: Integer; Limite: Currency): Boolean;
var Q: TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DM.FDConnection1;
  Q.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as TOTAL from RECEBER '+
            'where REE_STATUS=''A'' and REE_CLIENTE=:cliente');
  Q.ParamByName('cliente').DataType:=ftInteger;
  Q.ParamByName('cliente').AsInteger:=Codigo;
  Q.Open;
  if Q.FieldByName('TOTAL').AsExtended > Limite then
  Result:=True else
  Result:=False;
  Q.Destroy;
end;

function ChecarNovosUpdates(OldExe, NewExe, Atualizador: String): Boolean;
var vOld, vNew: AnsiString;
begin
  Result:=False;
  if (OldExe='') or (NewExe='') then Exit;
  if not FileExists(NewExe) then Exit;
  if not FileExists(OldExe) then Exit;
  vOld:=FileVersion(OldExe);
  vNew:=FileVersion(NewExe);
  Delete(vOld,1,Pos('.',vOld));
  Delete(vNew,1,Pos('.',vNew));
  if StrToInt(vOld)<StrToInt(vNew) then
  begin
    try
      if MessageDlg('Foi detectada uma nova versão do sistema.'+#13#13+'Deseja atualizar o sistema agora?',mtConfirmation,[mbOk,mbCancel],0)=mrCancel then
      Exit;
      AbortIf(not FileExists(Atualizador),'Não foi possível localizar o aplicativo atualizador.');

      Application.ShowMainForm:=False;
      Application.Terminate;
      WinExec(PAnsiChar(AnsiString(Atualizador+' '+OldExe+' '+NewExe)),SW_SHOWNORMAL);
      Result:=True;
      except
      MessageDlg('Não foi possível efetuar a atualização disponível.',mtError,[mbOk],0);
    end; //try.
  end;
end;

function CTeUtilAtualizada: Boolean;
var U: CTe_Util_Interface;
begin
  Result:=True;
  try
    U:=CTe_Util_TLB.CoUtil.Create;
    if U.Versao<>ArquivoCTEUtilVersao then
    Result:=False;
    U:=nil;
  except
    on Exception do
    Result:=False;
  end;
end;

function CTeUtilRegistrada: Boolean;
var U: CTe_Util_Interface;
begin
  Result:=True;
  try
    U:=CTe_Util_TLB.CoUtil.Create;
    U:=nil;
  except
    on Exception do
    Result:=False;
  end;
end;

function GetUFCode(UF: String): Integer;
var Query: TFDQuery; Transaction: TFDTransaction;
begin
  Transaction:=TFDTransaction.Create(nil);
  Transaction.Connection:=DM.FDConnection1;
  Query:=TFDQuery.Create(nil);
  Query.Connection:=DM.FDConnection1;
  Query.Transaction:=Transaction;
  Query.SQL.Add('select first(1) ESD_CODIGO from ESTADOS where ESD_SIGLA=:sigla');
  Query.ParamByName('sigla').AsString:=UF;
  Query.Open;
  Result:=Query.FieldByName('ESD_CODIGO').AsInteger;
  Query.Close;
  Query.Destroy;
  Transaction.Destroy;
end;

function MDFeUtilRegistrada: Boolean;
var U: MDFe_Util_Interface;
begin
  Result:=True;
  try
    U:=MDFe_Util_TLB.CoUtil.Create;
    U:=nil;
  except
    on Exception do
    Result:=False;
  end;
end;

function NFeUtilRegistrada: Boolean;
var U: NFe_Util_2G_Interface;
begin
  Result:=True;
  try
    U:=NFe_Util_2G_TLB.CoUtil.Create;
    U:=nil;
  except
    on Exception do
    Result:=False;
  end;
end;

function NFeUtilAtualizada: Boolean;
var U: NFe_Util_2G_Interface;
begin
  Result:=True;
  try
    U:=NFe_Util_2G_TLB.CoUtil.Create;
    if U.Versao<>ArquivoNFEUtilVersao then
    Result:=False;
    U:=nil;
  except
    on Exception do
    Result:=False;
  end;
end;

procedure CarregarLogomarcaSVG(var Imagem: TImage);
var Stream: TStringStream;
begin
  Imagem.Picture.Assign(nil);

  if not DM.TBEmpresa.Active or DM.TBEmpresaEMP_LOGOSVG.IsNull then
  Exit;

  Stream:=TStringStream.Create(DM.TBEmpresaEMP_LOGOSVG.Value, TEncoding.UTF8);
  try
    Imagem.Picture.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

procedure CarregarLogoSVGFast(Picture: TfrxPictureView);
// Logo da empresa no Picture dos relatorios do FastReport: SVG gravado em EMPRESA.EMP_LOGOSVG (sem SVG, fica sem logo).
// Nos scripts: CarregarLogoSVGFast(Picture1);
var Stream: TStringStream;
begin
  if not DM.TBEmpresa.Active or (Trim(DM.TBEmpresaEMP_LOGOSVG.AsString)='') then
  Exit;

  Stream:=TStringStream.Create(DM.TBEmpresaEMP_LOGOSVG.Value, TEncoding.UTF8);
  try
    Picture.LoadPictureFromStream(Stream);
  finally
    Stream.Free;
  end;
end;

type
  // Registra as funcoes do Firenet no FastScript, para todos os relatorios.
  TFuncoesFast = class(TfsRTTIModule)
  private
    function CallMethod(Instance: TObject; ClassType: TClass; const MethodName: String; Caller: TfsMethodHelper): Variant;
  public
    constructor Create(AScript: TfsScript); override;
  end;

constructor TFuncoesFast.Create(AScript: TfsScript);
begin
  inherited Create(AScript);
  AScript.AddMethod('procedure CarregarLogoSVGFast(Picture: TfrxPictureView)', CallMethod, 'Firenet', 'Carrega a logo da empresa (EMP_LOGOSVG)');
end;

function TFuncoesFast.CallMethod(Instance: TObject; ClassType: TClass; const MethodName: String; Caller: TfsMethodHelper): Variant;
begin
  if MethodName='CARREGARLOGOSVGFAST' then
  CarregarLogoSVGFast(TfrxPictureView(NativeInt(Caller.Params[0])));
end;

procedure CarregarLogomarca(const Arquivo: String; Imagem: TImage);
begin
  TThread.CreateAnonymousThread(
    procedure
    var
      Picture: TPicture;
    begin
      if FileExists(Arquivo) then
      begin
        Picture:=TPicture.Create;
        try
          Picture.LoadFromFile(Arquivo);

          // Atualiza o componente TImage na UI
          TThread.Synchronize(nil,
            procedure
            begin
              Imagem.Picture.Assign(Picture);
            end);
        finally
          Picture.Free;
        end;
      end;
    end).Start;
end;

procedure ChecarArquivos;
var S: String;
begin
  S:='';
  if not FileExists(ExtractFilePath(Application.ExeName)+'\logo_empresa_120x60.jpg') then S:=S+'Logo_Empresa_120x60.jpg'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\nfe_util_2g.dll') then S:=S+'Nfe_Util_2G.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\nfe_util_2g.tlb') then S:=S+'Nfe_Util_2G.tlb'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\cte_util.dll') then S:=S+'CTe_Util.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\cte_util.tlb') then S:=S+'CTe_Util.tlb'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\mdfe_util.dll') then S:=S+'MDFe_Util.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\mdfe_util.tlb') then S:=S+'MDFe_Util.tlb'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\picaview.dll') then S:=S+'Picaview.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\Print\print.bat') then S:=S+'Print\Print.bat'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\reports.dll') then S:=S+'Reports.dll'+#13;

  //DLLs do XMLSec
  if not FileExists(ExtractFilePath(Application.ExeName)+'\iconv.dll') then S:=S+'Iconv.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\libxml2.dll') then S:=S+'LibXML2.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\libxmlsec.dll') then S:=S+'LibXMLSec.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\libxmlsec-openssl.dll') then S:=S+'LibXMLSec-OpenSSL.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\libxslt.dll') then S:=S+'Libxslt.dll'+#13;
  if not FileExists(ExtractFilePath(Application.ExeName)+'\zlib1.dll') then S:=S+'ZLib1.dll'+#13;
  //...

  if not System.SysUtils.DirectoryExists(ExtractFilePath(Application.ExeName)+'\nfe_util') then S:=S+'NFe_Util'+#13;
  if not System.SysUtils.DirectoryExists(ExtractFilePath(Application.ExeName)+'\cte_util') then S:=S+'CTe_Util'+#13;
  if not System.SysUtils.DirectoryExists(ExtractFilePath(Application.ExeName)+'\mdfe_util') then S:=S+'MDFe_Util'+#13;
  if Trim(S)<>'' then
  MessageDlg('Os arquivos e/ou pastas listados abaixo não foram encontrados.'+#13#13+S,mtError,[mbOk],0);
end;

procedure ChecarBaseSomenteLeitura;
var I: Integer;
begin
  if SenhaDecode(DM.TBEmpresaEMP_LEITURA.Value,ChaveSenhaNEW)='S' then
  begin
    { TODO -oRogerio -cCampos : IGUALAR TABELAS }
    //Tabelas com X=Tabela de sistema.

    //X DM.TBAcessos.DeleteSQL.Clear;          DM.TBAcessos.InsertSQL.Clear;            DM.TBAcessos.ModifySQL.Clear;            DM.TBAcessos.RefreshSQL.Clear;
    DM2.TBAcoes.UpdateOptions.ReadOnly:=True;
    DM.TBAgrupadores.UpdateOptions.ReadOnly:=True;
    DM.TBAliquotas.UpdateOptions.ReadOnly:=True;
    DM.TBAlmoxarifados.UpdateOptions.ReadOnly:=True;
    DM2.TBAssuntos.UpdateOptions.ReadOnly:=True;
    DM2.TBAtendimentos.UpdateOptions.ReadOnly:=True;
    DM.TBAtividades.UpdateOptions.ReadOnly:=True;
    DM2.TBAvaliacoes.UpdateOptions.ReadOnly:=True;
    DM2.TBAvaliacoesTipo.UpdateOptions.ReadOnly:=True;
    DM.TBBairros.UpdateOptions.ReadOnly:=True;
    DM2.TBBancos.UpdateOptions.ReadOnly:=True;
    //DM2.TBBlocox.DeleteSQL.Clear;            DM2.TBBlocox.InsertSQL.Clear;            DM2.TBBlocox.ModifySQL.Clear;            DM2.TBBlocox.RefreshSQL.Clear;
    DM2.TBBoletos.UpdateOptions.ReadOnly:=True;
    DM2.TBBoletosItens.UpdateOptions.ReadOnly:=True;
    DM.TBCaixa.UpdateOptions.ReadOnly:=True;
    DM.TBCaixaSaldo.UpdateOptions.ReadOnly:=True;
    DM2.TBCalendarios.UpdateOptions.ReadOnly:=True;
    DM2.TBChamadas.UpdateOptions.ReadOnly:=True;
    DM.TBChecklists.UpdateOptions.ReadOnly:=True;
    DM.TBChecklistsItens.UpdateOptions.ReadOnly:=True;
    DM2.TBCheques.UpdateOptions.ReadOnly:=True;
    DM.TBCidades.UpdateOptions.ReadOnly:=True;
    DM2.TBClasses.UpdateOptions.ReadOnly:=True;
    DM.TBClassFiscal.UpdateOptions.ReadOnly:=True;
    DM2.TBClassificados.UpdateOptions.ReadOnly:=True;
    DM.TBClassTrib.UpdateOptions.ReadOnly:=True;
    DM.TBClientes.UpdateOptions.ReadOnly:=True;
    DM.TBCreditoPres.UpdateOptions.ReadOnly:=True;
    DM.TBCst.UpdateOptions.ReadOnly:=True;
    DM2.TBComandas.UpdateOptions.ReadOnly:=True;
    DM2.TBComandasItens.UpdateOptions.ReadOnly:=True;
    //X DM.TBComponentes.DeleteSQL.Clear;        DM.TBComponentes.InsertSQL.Clear;        DM.TBComponentes.ModifySQL.Clear;        DM.TBComponentes.RefreshSQL.Clear;
    DM.TBCompras.UpdateOptions.ReadOnly:=True;
    DM.TBComprasItens.UpdateOptions.ReadOnly:=True;
    DM.TBCondicoes.UpdateOptions.ReadOnly:=True;
    DM.TBCondicoesItens.UpdateOptions.ReadOnly:=True;
    DM2.TBConsultas.UpdateOptions.ReadOnly:=True;
    DM2.TBConsultasItens.UpdateOptions.ReadOnly:=True;
    DM.TBContas.UpdateOptions.ReadOnly:=True;
    DM.TBContasMov.UpdateOptions.ReadOnly:=True;
    DM2.TBConteudos.UpdateOptions.ReadOnly:=True;
    DM2.TBContratos.UpdateOptions.ReadOnly:=True;
    DM2.TBContratosPartes.UpdateOptions.ReadOnly:=True;
    DM.TBConvenios.UpdateOptions.ReadOnly:=True;
    DM2.TBCte.UpdateOptions.ReadOnly:=True;
    DM2.TBCteCampos.UpdateOptions.ReadOnly:=True;
    DM2.TBCteCarga.UpdateOptions.ReadOnly:=True;
    DM2.TBCteCce.UpdateOptions.ReadOnly:=True;
    DM2.TBCteCceItens.UpdateOptions.ReadOnly:=True;
    DM2.TBCteCodigo.UpdateOptions.ReadOnly:=True;
    DM2.TBCteInutilizados.UpdateOptions.ReadOnly:=True;
    DM2.TBCteNotas.UpdateOptions.ReadOnly:=True;
    DM2.TBCteVeiculos.UpdateOptions.ReadOnly:=True;
    DM.TBCupom.UpdateOptions.ReadOnly:=True;
    DM.TBCupomItens.UpdateOptions.ReadOnly:=True;
    DM2.TBCursos.UpdateOptions.ReadOnly:=True;
    DM2.TBDeliverys.UpdateOptions.ReadOnly:=True;
    DM2.TBDeliverysItens.UpdateOptions.ReadOnly:=True;
    DM.TBDespesas.UpdateOptions.ReadOnly:=True;
    DM.TBEcf.UpdateOptions.ReadOnly:=True;
    DM2.TBEmails.UpdateOptions.ReadOnly:=True;
    DM2.TBEmailsContas.UpdateOptions.ReadOnly:=True;
    //X DM.TBEmpresa.DeleteSQL.Clear;          DM.TBEmpresa.InsertSQL.Clear;            DM.TBEmpresa.ModifySQL.Clear;            DM.TBEmpresa.RefreshSQL.Clear;
    DM.TBEstados.UpdateOptions.ReadOnly:=True;
    DM.TBEstoque.UpdateOptions.ReadOnly:=True;
    DM.TBEtiquetas.UpdateOptions.ReadOnly:=True;
    DM2.TBEvolucoes.UpdateOptions.ReadOnly:=True;
    DM2.TBExamesTipos.UpdateOptions.ReadOnly:=True;
    DM2.TBExercicios.UpdateOptions.ReadOnly:=True;
    DM.TBFamilias.UpdateOptions.ReadOnly:=True;
    DM2.TBFases.UpdateOptions.ReadOnly:=True;
    DM2.TBFeriados.UpdateOptions.ReadOnly:=True;
    //X DM2.TBForms.DeleteSQL.Clear;             DM2.TBForms.InsertSQL.Clear;             DM2.TBForms.ModifySQL.Clear;             DM2.TBForms.RefreshSQL.Clear;
    DM.TBFornecedores.UpdateOptions.ReadOnly:=True;
    DM2.TBForos.UpdateOptions.ReadOnly:=True;
    DM2.TBFrotas.UpdateOptions.ReadOnly:=True;
    DM2.TBGnre.UpdateOptions.ReadOnly:=True;
    DM.TBGrupos.UpdateOptions.ReadOnly:=True;
    DM.TBHoras.UpdateOptions.ReadOnly:=True;
    DM.TBIcms.UpdateOptions.ReadOnly:=True;
    DM2.TBImoveis.UpdateOptions.ReadOnly:=True;
    DM2.TBImoveisTipos.UpdateOptions.ReadOnly:=True;
    DM.TBIpi.UpdateOptions.ReadOnly:=True;
    DM.TBIss.UpdateOptions.ReadOnly:=True;
    DM2.TBLocacoes.UpdateOptions.ReadOnly:=True;
    DM2.TBLocais.UpdateOptions.ReadOnly:=True;
    //X DM.TBLocs.DeleteSQL.Clear;               DM.TBLocs.InsertSQL.Clear;               DM.TBLocs.ModifySQL.Clear;               DM.TBLocs.RefreshSQL.Clear;
    DM.TBLotes.UpdateOptions.ReadOnly:=True;
    DM.TBMailings.UpdateOptions.ReadOnly:=True;
    DM2.TBMarcas.UpdateOptions.ReadOnly:=True;
    DM2.TBMarkups.UpdateOptions.ReadOnly:=True;
    DM2.TBMarkupsItens.UpdateOptions.ReadOnly:=True;
    DM2.TBMatriculas.UpdateOptions.ReadOnly:=True;
    DM2.TBMdfe.UpdateOptions.ReadOnly:=True;
    //DM2.TBMdfeCarga.DeleteSQL.Clear;         DM2.TBMdfeCarga.InsertSQL.Clear;         DM2.TBMdfeCarga.ModifySQL.Clear;         DM2.TBMdfeCarga.RefreshSQL.Clear;
    //DM2.TBMdfeDescarga.DeleteSQL.Clear;      DM2.TBMdfeDescarga.InsertSQL.Clear;      DM2.TBMdfeDescarga.ModifySQL.Clear;      DM2.TBMdfeDescarga.RefreshSQL.Clear;
    DM2.TBMdfeDocs.UpdateOptions.ReadOnly:=True;
    DM2.TBMdfeMotoristas.UpdateOptions.ReadOnly:=True;
    DM2.TBMdfePercursos.UpdateOptions.ReadOnly:=True;
    DM2.TBMedicamentos.UpdateOptions.ReadOnly:=True;
    DM2.TBMedicoes.UpdateOptions.ReadOnly:=True;
    DM2.TBMensagens.UpdateOptions.ReadOnly:=True;
    DM2.TBMensalidades.UpdateOptions.ReadOnly:=True;
    //X DM.TBModulos.DeleteSQL.Clear;            DM.TBModulos.InsertSQL.Clear;            DM.TBModulos.ModifySQL.Clear;            DM.TBModulos.RefreshSQL.Clear;
    DM2.TBMotivos.UpdateOptions.ReadOnly:=True;
    //DM2.TBMovimentos.DeleteSQL.Clear;        DM2.TBMovimentos.InsertSQL.Clear;        DM2.TBMovimentos.ModifySQL.Clear;        DM2.TBMovimentos.RefreshSQL.Clear;
    DM.TBNaturezas.UpdateOptions.ReadOnly:=True;
    DM.TBNfce.UpdateOptions.ReadOnly:=True;
    DM.TBNfceInutilizadas.UpdateOptions.ReadOnly:=True;
    DM.TBNfceItens.UpdateOptions.ReadOnly:=True;
    DM.TBNfcePagamentos.UpdateOptions.ReadOnly:=True;
    DM.TBNfe.UpdateOptions.ReadOnly:=True;
    DM.TBNfeCce.UpdateOptions.ReadOnly:=True;
    DM.TBNfeCodigo.UpdateOptions.ReadOnly:=True;
    DM.TBNfeInutilizadas.UpdateOptions.ReadOnly:=True;
    DM.TBNfeItens.UpdateOptions.ReadOnly:=True;
    DM.TBNfeItensAdicoes.UpdateOptions.ReadOnly:=True;
    DM.TBNfeRef.UpdateOptions.ReadOnly:=True;
    DM.TBNfse.UpdateOptions.ReadOnly:=True;
    DM.TBNfseCodigo.UpdateOptions.ReadOnly:=True;
    DM.TBNfseItens.UpdateOptions.ReadOnly:=True;
    DM.TBNotas.UpdateOptions.ReadOnly:=True;
    DM.TBNotasCodigo.UpdateOptions.ReadOnly:=True;
    DM.TBNotasItens.UpdateOptions.ReadOnly:=True;
    DM2.TBObjetos.UpdateOptions.ReadOnly:=True;
    DM2.TBOpcionais.UpdateOptions.ReadOnly:=True;
    DM.TBPagar.UpdateOptions.ReadOnly:=True;
    DM.TBPaises.UpdateOptions.ReadOnly:=True;
    //X DM.TBParametros.DeleteSQL.Clear;       DM.TBParametros.InsertSQL.Clear;         DM.TBParametros.ModifySQL.Clear;         DM.TBParametros.RefreshSQL.Clear;
    DM.TBPiscofins.UpdateOptions.ReadOnly:=True;
    DM2.TBPontos.UpdateOptions.ReadOnly:=True;
    DM2.TBProcessos.UpdateOptions.ReadOnly:=True;
    DM2.TBProcessosCustas.UpdateOptions.ReadOnly:=True;
    DM2.TBProcessosHistorico.UpdateOptions.ReadOnly:=True;
    DM2.TBProcessosPartes.UpdateOptions.ReadOnly:=True;
    DM.TBProducao.UpdateOptions.ReadOnly:=True;
    DM.TBProducaoItens.UpdateOptions.ReadOnly:=True;
    DM.TBProducaoItensComp.UpdateOptions.ReadOnly:=True;
    DM.TBProdutos.UpdateOptions.ReadOnly:=True;
    DM.TBProdutosCodigos.UpdateOptions.ReadOnly:=True;
    DM.TBProdutosComp.UpdateOptions.ReadOnly:=True;
    DM.TBProdutosQtde.UpdateOptions.ReadOnly:=True;
    DM2.TBProjetos.UpdateOptions.ReadOnly:=True;
    DM2.TBProjetosFases.UpdateOptions.ReadOnly:=True;
    DM2.TBProjetosHistorico.UpdateOptions.ReadOnly:=True;
    DM2.TBProjetosItens.UpdateOptions.ReadOnly:=True;
    DM2.TBProjetosTipos.UpdateOptions.ReadOnly:=True;
    DM2.TBPromissorias.UpdateOptions.ReadOnly:=True;
    DM2.TBProntuarios.UpdateOptions.ReadOnly:=True;
    DM.TBReceber.UpdateOptions.ReadOnly:=True;
    DM.TBReceberItens.UpdateOptions.ReadOnly:=True;
    DM.TBReceitas.UpdateOptions.ReadOnly:=True;
    DM2.TBReceituarios.UpdateOptions.ReadOnly:=True;
    DM2.TBRecibos.UpdateOptions.ReadOnly:=True;
    DM.TBRegrasFiscais.UpdateOptions.ReadOnly:=True;
    DM2.TBRemessas.UpdateOptions.ReadOnly:=True;
    DM2.TBRemessasItens.UpdateOptions.ReadOnly:=True;
    DM.TBRuas.UpdateOptions.ReadOnly:=True;
    DM2.TBSeguros.UpdateOptions.ReadOnly:=True;
    DM2.TBSegurosEndossos.UpdateOptions.ReadOnly:=True;
    DM2.TBSegurosParcelas.UpdateOptions.ReadOnly:=True;
    DM2.TBSegurosTipos.UpdateOptions.ReadOnly:=True;
    DM.TBServicos.UpdateOptions.ReadOnly:=True;
    DM.TBServicosHoras.UpdateOptions.ReadOnly:=True;
    DM.TBServicosItens.UpdateOptions.ReadOnly:=True;
    //DM2.TBSintegra60A.DeleteSQL.Clear;       DM2.TBSintegra60A.InsertSQL.Clear;       DM2.TBSintegra60A.ModifySQL.Clear;       DM2.TBSintegra60A.RefreshSQL.Clear;
    //DM2.TBSintegra60M.DeleteSQL.Clear;       DM2.TBSintegra60M.InsertSQL.Clear;       DM2.TBSintegra60M.ModifySQL.Clear;       DM2.TBSintegra60M.RefreshSQL.Clear;
    //X DM.TBSqls.DeleteSQL.Clear;             DM.TBSqls.InsertSQL.Clear;               DM.TBSqls.ModifySQL.Clear;               DM.TBSqls.RefreshSQL.Clear;
    DM.TBTabPreco.UpdateOptions.ReadOnly:=True;
    DM.TBTaxas.UpdateOptions.ReadOnly:=True;
    //X DM.TBTelas.DeleteSQL.Clear;            DM.TBTelas.InsertSQL.Clear;              DM.TBTelas.ModifySQL.Clear;              DM.TBTelas.RefreshSQL.Clear;
    DM2.TBTelevendas.UpdateOptions.ReadOnly:=True;
    DM2.TBTurmas.UpdateOptions.ReadOnly:=True;
    DM2.TBUnidades.UpdateOptions.ReadOnly:=True;
    DM.TBUsuarios.UpdateOptions.ReadOnly:=True;
    DM2.TBVeiculos.UpdateOptions.ReadOnly:=True;
    DM2.TBVeiculosCliente.UpdateOptions.ReadOnly:=True;
    DM2.TBVeiculosVenda.UpdateOptions.ReadOnly:=True;
    DM.TBVendas.UpdateOptions.ReadOnly:=True;
    DM.TBVendasItens.UpdateOptions.ReadOnly:=True;
    DM.TBVendedores.UpdateOptions.ReadOnly:=True;
    //X DM.TBVersao.DeleteSQL.Clear;           DM.TBVersao.InsertSQL.Clear;             DM.TBVersao.ModifySQL.Clear;             DM.TBVersao.RefreshSQL.Clear;
    DM.TBVias.UpdateOptions.ReadOnly:=True;
  end;
end;

procedure ChecarContasEmAtraso(Codigo: Integer; var Qtde: Integer; var Valor: Currency);
var Q: TFDQuery;
begin
  if DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value>0 then
  begin
    Q:=TFDQuery.Create(nil);
    Q.Connection:=DM.FDConnection1;
    Q.SQL.Add('select count(*) as QTDE, sum(REE_VALOR+REE_VALORACESSORIAS) as TOTAL from RECEBER '+
              'where REE_STATUS=''A'' and REE_CLIENTE=:cliente and (REE_DTVENCIMENTO+'+IntToStr(DM.TBParametrosPAR_BLOQUEARCLIENTEDIAS.Value)+')<=:dataatual');
    Q.ParamByName('cliente').AsInteger:=Codigo;
    Q.ParamByName('dataatual').AsDate:=DM.ServerDate;
    Q.Open;
    Qtde:=Q.FieldByName('QTDE').AsInteger;
    Valor:=Q.FieldByName('TOTAL').AsExtended;
    Q.Destroy;
  end;
end;

procedure ChecarLimiteUsuarios;
var Limite: Integer;
begin
  if not DM.TBEmpresa.Active then
  Exit;

  if Trim(DM.TBEmpresaEMP_LIMITEUSUARIOS.Value)<>'' then
  Limite:=StrToInt(SenhaDecode(AnsiString(DM.TBEmpresaEMP_LIMITEUSUARIOS.Value),ChaveSenhaNEW)) else
  Limite:=1;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from MON$ATTACHMENTS where MON$SYSTEM_FLAG=0');
  DM.QYAux.Open;

  if (DM.QYAux.FieldByName('QTDE').AsInteger > Limite) then
  begin
    DM.QYAux.Close;
    MessageDlg('Limite de USUÁRIOS excedido !!!'+#13#13+'Limite: '+IntToStr(Limite)+#13#13+'Entre em contato com seu suporte técnico para aquisição de licenças adicionais.',mtWarning,[mbOk],0);
    Application.Terminate;
  end;

  DM.QYAux.Close;
end;

procedure ChecarValidade;
var
  DataLiberacao, DataUlt: TDate;
  Dias: Integer;
  Liberado: String;
begin
  if not DM.TBEmpresa.Active then
  Exit;
  if Trim(DM.TBEmpresaEMP_DATALIBERACAO.Value)<>'' then
  DataLiberacao:=StrToDate(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATALIBERACAO.Value),ChaveSenhaNEW),FS) else
  DataLiberacao:=DM.ServerDate;
  if Trim(DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value)<>'' then
  DataUlt:=StrToDate(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value),ChaveSenhaNEW),FS) else
  DataUlt:=DM.ServerDate;
  if Trim(DM.TBEmpresaEMP_DIASLIBERACAO.Value)<>'' then
  Dias:=StrToInt(SenhaDecode(AnsiString(DM.TBEmpresaEMP_DIASLIBERACAO.Value),ChaveSenhaNEW)) else
  Dias:=0;
  Liberado:=SenhaDecode(AnsiString(DM.TBEmpresaEMP_LIBERADO.Value),ChaveSenhaNEW);

  //retirado o aviso de que vai expirar.
  //if (DaysBetween((DataLiberacao+Dias),Date)<=5) and (DaysBetween((DataLiberacao+Dias),Date)<>0) then
  //begin
  //  MessageDlg('O prazo de utilização do sistema irá expirar em '+IntToStr(DaysBetween((DataLiberacao+Dias),Date))+' dias.'+#13#13+
  //             'Entre em contato com seu suporte técnico e solicite a senha periódica para o dia '+DateToStr(DataLiberacao+Dias,FS),mtWarning,[mbOk],0);
  //end;
  if (Date>=(DataLiberacao+Dias)) or (Date<DataUlt) or (Liberado='N') then
  begin //data da ultima liberacao + dias para expirar.
    //muda para nao liberado.
    DM.TBEmpresa.Edit;
    DM.TBEmpresaEMP_LIBERADO.Value:=SenhaEncode(AnsiString('N'),ChaveSenhaNEW);
    DM.TBEmpresa.Post;
    Application.CreateForm(TFormSenhaPeriodica, FormSenhaPeriodica);
    FormSenhaPeriodica.ShowModal;
    FormSenhaPeriodica.Free;
    FormSenhaPeriodica:=nil;
  end;
end;

procedure ChecarHash;
var S: String;
begin
  if not DM.TBEmpresa.Active then
  Exit;

  S:='RUNTIME_'+
     DM.TBEmpresaEMP_CNPJ.Value+
     IntToStr(DM.TBEmpresaEMP_CODIGOCLIENTE.Value)+
     IntToStr(DM.TBEmpresaEMP_CODIGOSISTEMA.Value)+
     DM.TBEmpresaEMP_DATALIBERACAO.Value+
     DM.TBEmpresaEMP_DIASLIBERACAO.Value+
     DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value+
     DM.TBEmpresaEMP_LIBERADO.Value+
     DM.TBEmpresaEMP_LEITURA.Value+
     DM.TBEmpresaEMP_LIMITEUSUARIOS.Value;

  //A checagem da senha diaria torna possivel o reset da hash caso alguma info seja adicionada ou removida.
  if (DM.TBEmpresaEMP_HASH.Value <> MD5Print(MD5String(S))) and (DM.TBEmpresaEMP_HASH.Value <> TodaysPassword) then
  begin
    MessageDlg('Erro na verificação do HASH!'+#13#10#13#10+
               'Entre em contato com o suporte técnico.'+#13#10#13#10+
               DM.TBEmpresaEMP_NOSSONOME.Value+#13#10+
               DM.TBEmpresaEMP_NOSSOFONE1.Value+#13#10+
               DM.TBEmpresaEMP_NOSSOEMAIL.Value,mtError,[mbOk],0);
    //Application.Terminate;
    Application.CreateForm(TFormSenhaPeriodica, FormSenhaPeriodica);
    FormSenhaPeriodica.ShowModal;
    FormSenhaPeriodica.Free;
    FormSenhaPeriodica:=nil;
  end;
end;

procedure ChecarValidadeCertificado;
begin
  if not DM.TBParametrosPAR_VALFINALCERTIFICADO.IsNull then
  begin
    if Date <= DM.TBParametrosPAR_VALFINALCERTIFICADO.Value then
    begin
      if DaysBetween(Date,DM.TBParametrosPAR_VALFINALCERTIFICADO.Value) <= 5 then
        MessageDlg('O Certificado Digital vence dia '+DateToStr(DM.TBParametrosPAR_VALFINALCERTIFICADO.Value)+'.',mtWarning,[mbOk],0);
    end;
    if Date > DM.TBParametrosPAR_VALFINALCERTIFICADO.Value then
    MessageDlg('O Certificado Digital venceu dia '+DateToStr(DM.TBParametrosPAR_VALFINALCERTIFICADO.Value)+'. '+#13#10#13#10+'Instale outro e selecione-o em Parâmetros.',mtWarning,[mbOk],0);
  end;
end;

procedure ComboBoxDiaPreferencial(var CB: TDBComboBox);
begin
  CB.Items.Clear;
  CB.Items.Add('0');
  if DM.TBParametrosPAR_DIAPREFERENCIAL01.Value='S' then CB.Items.Add('1');
  if DM.TBParametrosPAR_DIAPREFERENCIAL02.Value='S' then CB.Items.Add('2');
  if DM.TBParametrosPAR_DIAPREFERENCIAL03.Value='S' then CB.Items.Add('3');
  if DM.TBParametrosPAR_DIAPREFERENCIAL04.Value='S' then CB.Items.Add('4');
  if DM.TBParametrosPAR_DIAPREFERENCIAL05.Value='S' then CB.Items.Add('5');
  if DM.TBParametrosPAR_DIAPREFERENCIAL06.Value='S' then CB.Items.Add('6');
  if DM.TBParametrosPAR_DIAPREFERENCIAL07.Value='S' then CB.Items.Add('7');
  if DM.TBParametrosPAR_DIAPREFERENCIAL08.Value='S' then CB.Items.Add('8');
  if DM.TBParametrosPAR_DIAPREFERENCIAL09.Value='S' then CB.Items.Add('9');
  if DM.TBParametrosPAR_DIAPREFERENCIAL10.Value='S' then CB.Items.Add('10');
  if DM.TBParametrosPAR_DIAPREFERENCIAL11.Value='S' then CB.Items.Add('11');
  if DM.TBParametrosPAR_DIAPREFERENCIAL12.Value='S' then CB.Items.Add('12');
  if DM.TBParametrosPAR_DIAPREFERENCIAL13.Value='S' then CB.Items.Add('13');
  if DM.TBParametrosPAR_DIAPREFERENCIAL14.Value='S' then CB.Items.Add('14');
  if DM.TBParametrosPAR_DIAPREFERENCIAL15.Value='S' then CB.Items.Add('15');
  if DM.TBParametrosPAR_DIAPREFERENCIAL16.Value='S' then CB.Items.Add('16');
  if DM.TBParametrosPAR_DIAPREFERENCIAL17.Value='S' then CB.Items.Add('17');
  if DM.TBParametrosPAR_DIAPREFERENCIAL18.Value='S' then CB.Items.Add('18');
  if DM.TBParametrosPAR_DIAPREFERENCIAL19.Value='S' then CB.Items.Add('19');
  if DM.TBParametrosPAR_DIAPREFERENCIAL20.Value='S' then CB.Items.Add('20');
  if DM.TBParametrosPAR_DIAPREFERENCIAL21.Value='S' then CB.Items.Add('21');
  if DM.TBParametrosPAR_DIAPREFERENCIAL22.Value='S' then CB.Items.Add('22');
  if DM.TBParametrosPAR_DIAPREFERENCIAL23.Value='S' then CB.Items.Add('23');
  if DM.TBParametrosPAR_DIAPREFERENCIAL24.Value='S' then CB.Items.Add('24');
  if DM.TBParametrosPAR_DIAPREFERENCIAL25.Value='S' then CB.Items.Add('25');
  if DM.TBParametrosPAR_DIAPREFERENCIAL26.Value='S' then CB.Items.Add('26');
  if DM.TBParametrosPAR_DIAPREFERENCIAL27.Value='S' then CB.Items.Add('27');
  if DM.TBParametrosPAR_DIAPREFERENCIAL28.Value='S' then CB.Items.Add('28');
end;

procedure EnviarMensagemParaTodos(Remetente: Integer; Mensagem: String);
var Q,M: TFDQuery;
  T: TFDTransaction;
begin
  T:=TFDTransaction.Create(nil);
  T.Connection:=DM.FDConnection1;
  T.Options.Isolation:=xiReadCommitted;

  M:=TFDQuery.Create(nil);
  M.Connection:=DM.FDConnection1;
  M.SQL.Add('insert into MENSAGENS (MEN_CODIGO, MEN_DATA, MEN_HORA, MEN_REMETENTE, MEN_DESTINATARIOS, MEN_MENSAGEM, MEN_LIDA, MEN_TIPO, MEN_ASSUNTO) values '+
                                  '(gen_id(GEN_MENSAGENS,1), :data, :hora, :remetente, :destinatarios, :mensagem, :lida, :tipo, :assunto)');
  M.Transaction:=T;

  Q:=TFDQuery.Create(nil);
  Q.Connection:=DM.FDConnection1;
  Q.SQL.Add('select * from USUARIOS where USU_LOGIN<>:remetente order by USU_LOGIN');
  Q.ParamByName('remetente').AsInteger:=Remetente;
  Q.Open;
  while not Q.Eof do
  begin
    M.ParamByName('data').AsDate:=DM.ServerDate;
    M.ParamByName('hora').AsTime:=DM.ServerTime;
    M.ParamByName('remetente').AsInteger:=Remetente;
    M.ParamByName('destinatarios').AsString:=Q.FieldByName('USU_LOGIN').AsString;
    M.ParamByName('mensagem').AsString:=DateToStr(Date)+' '+TimeToStr(Time)+' '+Remetente.ToString+': '+Mensagem;
    M.ParamByName('lida').AsString:='N';
    M.ParamByName('tipo').AsString:='';
    M.ParamByName('assunto').AsString:='';
    M.ExecSQL;
    Q.Next;
  end;
  Q.Destroy;
  M.Destroy;
  T.Destroy;
end;

procedure FormMainCreate;
var S: String;
begin
  if (not DM.AtualizandoAcessos) then
  begin
    Application.OnHint:=FormMain.MostrarHint;
    S:=FileVersion(Application.ExeName);
    FormMain.Caption:=Application.Title+' - Versão: '+S+' / '+DM.TBVersaoVER_VERSAOBASE.Value;
    if DM.TBParametrosPAR_IDENTIFICACAOSISTEMA.Value<>'' then
    FormMain.Caption:=FormMain.Caption+' - '+DM.TBParametrosPAR_IDENTIFICACAOSISTEMA.Value;
    FormMain.WindowState:=wsMaximized;
    FormMain.Label1.Caption:='';

    //troca o ícone.
    if DM.TBParametrosPAR_CORICONE.Value<>'VERMELHO' then //o vermelho é o padrão já compilado.
    begin
  //  ListBox1.Items.LoadFromStream(TResourceStream.Create(HInstance,'TXTuf',RT_RCDATA));
      if DM.TBParametrosPAR_CORICONE.Value='AMARELO' then Application.Icon.LoadFromResourceName(HInstance,'Icone_Amarelo') else
      if DM.TBParametrosPAR_CORICONE.Value='AZUL'    then Application.Icon.LoadFromResourceName(HInstance,'Icone_Azul') else
      if DM.TBParametrosPAR_CORICONE.Value='LARANJA' then Application.Icon.LoadFromResourceName(HInstance,'Icone_Laranja') else
      if DM.TBParametrosPAR_CORICONE.Value='PRETO'   then Application.Icon.LoadFromResourceName(HInstance,'Icone_Preto') else
      if DM.TBParametrosPAR_CORICONE.Value='VERDE'   then Application.Icon.LoadFromResourceName(HInstance,'Icone_Verde');
    end;
  end;
end;

procedure GerarBoletosFast(Boletos: String; ArquivoPDF: String);
begin
  Application.CreateForm(TFormBoletosFast, FormBoletosFast);
  FormBoletosFast.QY10.Close;
  FormBoletosFast.QY10.SQL.Clear;
  FormBoletosFast.QY10.SQL.Add(
    'select BOL_ACEITE, BOL_CARTEIRA, BOL_CARTEIRACOD, coalesce(BOL_CEP,'''')||'' - ''||coalesce(BOL_CIDADE,'''')||'' - ''||coalesce(BOL_ESTADO,'''') as CEPCIDADEUF, '+
    'BOL_CLIENTE, iif(BOL_TIPOPESSOA=''J'',BOL_CNPJ,BOL_CPF) as CNPJCPF, BOL_CODIGO, BOL_CODIGOBARRAS, BOL_DESCVALOR, '+
    'BOL_DTCADASTRO, BOL_DTVENCIMENTO, coalesce(BOL_ENDERECO,'''')||'', ''||coalesce(BOL_NUMERO,'''')||'' - ''||coalesce(BOL_COMPLEMENTO,'''')||'' - ''||coalesce(BOL_BAIRRO,'''') as ENDERECOBAIRRO, '+
    'BOL_ESPECIE, trim(substring(BOL_ESPECIEDOC from 6 for 3)) as BOL_ESPECIEDOC, BOL_ESTADO, BOL_INSTRUCAO1, BOL_INSTRUCAO2, BOL_INSTRUCAO3, BOL_INSTRUCAO4, BOL_LINHADIGITAVEL, '+
    'BOL_LOCALPAGTO, BOL_NOME, BOL_NOSSONUMERO, BOL_OBSERVACOES, BOL_QRCODEPIX, (BOL_VALORJUROS+BOL_VALORMULTA) as MULTAJUROS, BOL_VALORTOTAL, '+
    'CON_AGENCIA, CON_BANCO, CON_CONTA, CON_CONTADIGITO, CON_CEDENTE, CON_CEDENTEDIGITO, CON_CEDENTEDOC, CON_CEDENTENOME, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CEDENTE,'''')||''-''||coalesce(CON_CEDENTEDIGITO,'''') as AGENCIACEDENTE, '+
    'coalesce(CON_AGENCIA,'''')||''-''||coalesce(CON_AGENCIADIGITO,'''')||'' / ''||coalesce(CON_CONTA,'''')||''-''||coalesce(CON_CONTADIGITO,'''') as AGENCIACONTA, '+
    'current_date as DATAATUAL from BOLETOS '+
    'left join CONTAS on BOL_CONTA=CON_CODIGO '+
    'where BOL_CODIGO in ('+Boletos+')');
  FormBoletosFast.QY10.Open;
  FormBoletosFast.CarregarImagemBanco(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsInteger);
  FormBoletosFast.frxReport10.Variables['BANCO']:=QuotedStr(AlignText(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString,'0',3,taRight)+'-'+Modulo11(FormBoletosFast.QY10.FieldByName('CON_BANCO').AsString));
//  FormBoletosFast.frxReport10.Variables['NOSSONUMERO']:=QuotedStr(FormBoletosFast.FormatarNossoNumero(
//                                                                  FormBoletosFast.QY10.FieldByName('CON_BANCO').AsInteger,
//                                                                  FormBoletosFast.QY10.FieldByName('BOL_CARTEIRACOD').AsInteger,
//                                                                  FormBoletosFast.QY10.FieldByName('BOL_CARTEIRA').AsString,
//                                                                  FormBoletosFast.QY10.FieldByName('BOL_NOSSONUMERO').AsString));
//  FormBoletosFast.frxReport10.Variables['AGENCIACEDENTE']:=QuotedStr(FormBoletosFast.FormatarAgenciaCedente(
//                                                                     FormBoletosFast.QY10.FieldByName('CON_BANCO').AsInteger,
//                                                                     FormBoletosFast.QY10.FieldByName('AGENCIACONTA').AsString,
//                                                                     FormBoletosFast.QY10.FieldByName('AGENCIACEDENTE').AsString));
  FormBoletosFast.frxReport10.Variables['ENDERECOCEDENTE']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+
                                                                      DM.TBEmpresaEMP_NUMERO.Value+' - '+
                                                                      DM.TBEmpresaEMP_BAIRRO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CIDADE.Value+' - '+
                                                                      DM.TBEmpresaEMP_ESTADO.Value+' - '+
                                                                      DM.TBEmpresaEMP_CEP.Value);
  if DM.TBParametrosPAR_BOLETOPADRAO.Value='BOLETO PADRAO' then
  TfrxPageHeader(FormBoletosFast.frxReport10.FindObject('PageHeader1')).Visible:=False;
  if ArquivoPDF<>'' then
  begin
    FormBoletosFast.frxPDFExport1.FileName:=ArquivoPDF;
    FormBoletosFast.frxPDFExport1.ShowDialog:=False;
    FormBoletosFast.frxReport10.PrintOptions.ShowDialog:=False;
    FormBoletosFast.frxReport10.PrepareReport;
    FormBoletosFast.frxReport10.Export(FormBoletosFast.frxPDFExport1);
  end else
  FormBoletosFast.frxReport10.ShowReport;
  FormBoletosFast.Free;
  FormBoletosFast:=nil;
end;

procedure GerarFluxoCaixa(TipoDocto, NumDocto, Descricao, ES, Origem, ClienteNome, FornecedorNome: String; Vendedor, Conta, Cliente, Fornecedor: Integer; Data: TDate; Valor: Currency);
begin
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_DATA.Value:=Data;
  DM.TBCaixaCAI_TIPODOCTO.Value:=TipoDocto;
  DM.TBCaixaCAI_NUMDOCTO.Value:=NumDocto;
//  DM.TBCaixaCAI_SALDOANTERIOR.Value:=Cliente;
//  DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=Receita;
  DM.TBCaixaCAI_VALOR.Value:=Valor;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:=ES;
  DM.TBCaixaCAI_ORIGEM.Value:=Origem;
  DM.TBCaixaCAI_DESCRICAO.Value:=Descricao;
  DM.TBCaixaCAI_VENDEDOR.Value:=Vendedor;
  if Cliente<>0 then DM.TBCaixaCAI_CLIENTE.Value:=Cliente;
  DM.TBCaixaCAI_CLIENTENOME.Value:=ClienteNome;
  if Fornecedor<>0 then DM.TBCaixaCAI_FORNECEDOR.Value:=Fornecedor;
  DM.TBCaixaCAI_FORNECEDORNOME.Value:=FornecedorNome;
  DM.TBCaixaCAI_CONTA.Value:=Conta;
  DM.TBCaixa.Post;
end;

procedure GerarReceber(TipoDocto, NumDocto, Venda, Descricao, Status, Pagamento, TipoBaixa: String;
  Cliente, Vendedor, Representante, Receita, Conta, ParcelaNum, ParcelaQtde: Integer; Data, Vencimento: TDate; Valor, ValorSemDesconto: Currency);
begin
  DM.TBReceber.Insert;
  DM.TBReceberREE_CLIENTE.Value:=Cliente;
  DM.TBReceberREE_CONTA.Value:=Conta;
  DM.TBReceberREE_DESCRICAO.Value:=Descricao;
  DM.TBReceberREE_DTEMISSAO.Value:=Data;
  DM.TBReceberREE_DTJUROSAPOS.Value:=Vencimento+DM.TBParametrosPAR_REE_DTJUROSAPOS.Value; //data do vencimento + qtde dias = data juros após.
  DM.TBReceberREE_DTVENCIMENTO.Value:=Vencimento;
  DM.TBReceberREE_NUMDOCTO.Value:=NumDocto;
  DM.TBReceberREE_PARCELANUM.Value:=ParcelaNum;
  DM.TBReceberREE_PARCELAQTDE.Value:=ParcelaQtde;
  DM.TBReceberREE_RECEITA.Value:=Receita;
  DM.TBReceberREE_REPRESENTANTE.Value:=Representante;
  DM.TBReceberREE_STATUS.Value:=Status;
  DM.TBReceberREE_TIPOBAIXA.Value:=TipoBaixa;
  DM.TBReceberREE_TIPODOCTO.Value:=TipoDocto;
  DM.TBReceberREE_VALOR.Value:=Valor;
  DM.TBReceberREE_VALORSEMDESCONTO.Value:=ValorSemDesconto;
  if Venda<>'' then
  DM.TBReceberREE_VENDA.Value:=StrToInt(Venda);
  DM.TBReceberREE_VENDEDOR.Value:=Vendedor;
  if Status='B' then
  begin
    DM.TBReceberREE_VALORPAGO.Value:=Valor;
    DM.TBReceberREE_DTPAGAMENTO.Value:=StrToDate(Pagamento,FS);
    DM.TBReceberREE_BAIXADOPOR.Value:=DM.UsuarioLogin;
  end;
  DM.TBReceber.Post;
end;

procedure ImprimirComandaTermica;
var F: TextFile;
  I: Word;
begin
  try
    AssignFile(F,ExtractFilePath(Application.ExeName)+'\Print\Comandas.txt');
    Rewrite(F);
    except on exception do
    begin
      MessageDlg('Não foi possível criar arquivo temporário: Comandas.txt.',mtError,[mbOk],0);
      CloseFile(F);
      Exit;
    end;
  end; //try
  for I := 1 to DM.TBParametrosPAR_COMANDASLI.Value do
  begin //linhas iniciais.
    WriteLn(F,'');
  end;
  //#18: cancela modo condensado.
  //#27#120#0 seleciona modo rascunho. (draft) 0:rascunho 1:Near Letter Quality (NLQ)
  //#27#50 espaco entre linhas de  1/6"
  //#27#48 espaco de 1/8"
  //#27#49 espaco de 7/72".
  //#27#79 Cancela o salto pelo picote.
  //#14 Largura Dupla. Eh cancelado por retorno de carro (CR)
  //#27#69 Modo Enfatizado.
  //#27#70 Cancela Modo Enfatizado.
  //#27#52 Modo Itálico.
  //#27#53 Cancela Modo Itálico.
  //#27#45#1 Modo Sublinhado. 1:ligado 0:desligado
  //#27#71 Modo Negrito.
  //#27#72 Cancela Modo Negrito.
  WriteLn(F,#18#27#120#0+'=====================================');
  WriteLn(F,#27#79#27#69#27#52+DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,#27#70#27#53#27#45#0+'  '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
  WriteLn(F,'=====================================');
  WriteLn(F,'Comanda: '+AlignText(IntToStr(DM2.TBComandasCMD_CODIGO.Value),' ',6,taLeft)+AlignText(DateToStr(DM2.TBComandasCMD_DATA.Value),' ',21,taRight));
  WriteLn(F,'Cliente: '+IntToStr(DM2.TBComandasCMD_CLIENTE.Value)+' - '+DM2.TBComandasCLI_NOME.Value);
  WriteLn(F,'-------------------------------------');
  WriteLn(F,'ITEM  COD.  DESCRICAO                ');
  WriteLn(F,' QTDE    X  VLR UNITARIO        TOTAL');
  WriteLn(F,'-------------------------------------');
  DM2.TBComandasItens.First;
  while not DM2.TBComandasItens.Eof do
  begin
    WriteLn(F,AlignText(IntToStr(DM2.TBComandasItensCDI_ITEM.Value),' ',5,taLeft)+' '+
              AlignText(IntToStr(DM2.TBComandasItensCDI_PRODUTO.Value),' ',5,taLeft)+' '+
              AlignText(DM2.TBComandasItensCDI_DESCRICAO.Value,' ',25,taLeft));
    WriteLn(F,AlignText(DM2.TBComandasItensCDI_QUANTIDADE.AsString,' ',5,taRight)+'    X'+
              AlignText(Format('%m',[DM2.TBComandasItensCDI_VALORUNITARIO.AsExtended]),' ',14,taRight)+' '+
              AlignText(Format('%m',[DM2.TBComandasItensCDI_VALORTOTAL.AsExtended]),' ',12,taRight));
    DM2.TBComandasItens.Next;
  end;
  WriteLn(F,'-------------------------------------');
  WriteLn(F,'TOTAL: '+AlignText(Format('%m',[DM2.TBComandasCMD_VALORTOTAL.AsExtended]),' ',30,taRight));
  WriteLn(F,'=====================================');
  WriteLn(F,AlignText(DM.TBParametrosPAR_COMANDASRP.Value,' ',37,taCenter));
  for I := 1 to DM.TBParametrosPAR_COMANDASLF.Value do
  begin
    WriteLn(F,'');
  end;
  CloseFile(F);
//  PrintFile(DM.DebugPrint,DM.Commandcom,'Comandas.txt',ComandasPorta);
end;

procedure ImprimirCondicoesNfe;
var
  QtdeLinhas: Integer;
  ContaLin: Integer;
  ContaItem: Integer;
  I,X: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'================================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'================================================================================');
    WriteLn(F,'Cod Documento: '+AlignText(IntToStr(DM.TBNfeNFE_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBNfeNFE_DTEMISSAO.Value,FS)+'  Vendedor: '+IntToStr(DM.TBNfeNFE_VENDEDOR.Value)+'-'+DM.TBNfeVEN_NOME.Value);
    if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='N' then
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBNfeNFE_CLIENTE.Value)+'-'+DM.TBNfeNFE_NOME.Value+' / '+DM.TBNfeNFE_FONE1.Value,' ',65,taLeft)) else
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBNfeNFE_CLIENTE.Value)+'-'+DM.TBNfeCLI_FANTASIA.Value+' / '+DM.TBNfeNFE_FONE1.Value,' ',65,taLeft));
    WriteLn(F,'Forma Pagto..: '+AlignText(DM.TBNfeNFE_FORMAPAGTO.Value,' ',15,taLeft)+' Condicao Pagto: '+DM.TBNfeCPG_DESCRICAO.Value);
    WriteLn(F,'Resumo das condicoes de pagamento');
    WriteLn(F,'Parc----Vencimento----------Valor---------Perc.%--------------------------------');
  end;
begin
  QtdeLinhas:=FormNfe.DBMemo2.Lines.Count-1;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\NFeCondicoes.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  ContaItem:=1;
  ContaLin:=1;
  for X:=3 to FormNfe.DBMemo2.Lines.Count-1 do //sem as 3 primeiras linhas.
  begin
    WriteLn(F,FormNfe.DBMemo2.Lines[X]);
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_VENDASQL2.Value) and (ContaItem<QtdeLinhas) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'--------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
      for I:=1 to DM.TBParametrosPAR_VENDASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_VENDASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_VENDASQL2.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'--------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'NFeCondicoes.txt',DM.VendasPorta);
end;

procedure ImprimirCondicoesNotas;
var
  QtdeLinhas: Integer;
  ContaLin: Integer;
  ContaItem: Integer;
  I,X: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'================================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'================================================================================');
    WriteLn(F,'Cod Documento: '+AlignText(IntToStr(DM.TBNotasNOT_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS)+'  Vendedor: '+IntToStr(DM.TBNotasNOT_VENDEDOR.Value)+'-'+DM.TBNotasVEN_NOME.Value);
    if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='N' then
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBNotasNOT_CLIENTE.Value)+'-'+DM.TBNotasNOT_NOME.Value+' / '+DM.TBNotasNOT_FONE1.Value,' ',65,taLeft)) else
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBNotasNOT_CLIENTE.Value)+'-'+DM.TBNotasNOT_NOME.Value+' ('+DM.TBNotasCLI_FANTASIA.Value+') / '+DM.TBNotasNOT_FONE1.Value,' ',65,taLeft));
    WriteLn(F,'Forma Pagto..: '+AlignText(DM.TBNotasNOT_FORMAPAGTO.Value,' ',15,taLeft)+' Condicao Pagto: '+DM.TBNotasCPG_DESCRICAO.Value);
    WriteLn(F,'Resumo das condicoes de pagamento');
    WriteLn(F,'Parc----Vencimento----------Valor---------Perc.%--------------------------------');
  end;
begin
  QtdeLinhas:=FormVendas.DBMemo2.Lines.Count-1;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\NotasCondicoes.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  ContaItem:=1;
  ContaLin:=1;
  for X:=3 to FormNotas.DBMemo2.Lines.Count-1 do //sem as 3 primeiras linhas.
  begin
    WriteLn(F,FormNotas.DBMemo2.Lines[X]);
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_VENDASQL2.Value) and (ContaItem<QtdeLinhas) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'--------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
      for I:=1 to DM.TBParametrosPAR_VENDASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_VENDASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_VENDASQL2.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'--------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'NotasCondicoes.txt',DM.VendasPorta);
end;

procedure ImprimirCondicoesVendas;
var
  QtdeLinhas: Integer;
  ContaLin: Integer;
  ContaItem: Integer;
  I,X: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'================================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'================================================================================');
    WriteLn(F,'Cod Documento: '+AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBVendasVED_DTEMISSAO.Value,FS)+'  Vendedor: '+IntToStr(DM.TBVendasVED_VENDEDOR.Value)+'-'+DM.TBVendasVEN_NOME.Value);
    if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='N' then
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBVendasVED_CLIENTE.Value)+'-'+DM.TBVendasVED_NOME.Value+' / '+DM.TBVendasVED_FONE1.Value,' ',65,taLeft)) else
    WriteLn(F,'Cliente/Fone.: '+AlignText(IntToStr(DM.TBVendasVED_CLIENTE.Value)+'-'+DM.TBVendasCLI_FANTASIA.Value+' / '+DM.TBVendasVED_FONE1.Value,' ',65,taLeft));
    WriteLn(F,'Forma Pagto..: '+AlignText(DM.TBVendasVED_FORMAPAGTO.Value,' ',15,taLeft)+' Condicao Pagto: '+DM.TBVendasCPG_DESCRICAO.Value);
    WriteLn(F,'Resumo das condicoes de pagamento');
    WriteLn(F,'Parc----Vencimento----------Valor---------Perc.%--------------------------------');

  end;
begin
  QtdeLinhas:=FormVendas.DBMemo2.Lines.Count-1; //conta sem a primeira linha.
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\VendasCondicoes.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  ContaItem:=1;
  ContaLin:=1;
  for X:=3 to FormVendas.DBMemo2.Lines.Count-1 do //sem as 3 primeira linha.
  begin
    WriteLn(F,FormVendas.DBMemo2.Lines[X]);
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_VENDASQL2.Value) and (ContaItem<QtdeLinhas) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'--------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
      for I:=1 to DM.TBParametrosPAR_VENDASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_VENDASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_VENDASQL2.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'--------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',80,taCenter));
  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'VendasCondicoes.txt',DM.VendasPorta);
end;

procedure ImprimirControleVendas;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'================================================================================================================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'================================================================================================================================================================');
    WriteLn(F,'Cod Documento.....: '+AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBVendasVED_DTEMISSAO.Value,FS)+'     Vendedor: '+AlignText(IntToStr(DM.TBVendasVED_VENDEDOR.Value)+'-'+DM.TBVendasVEN_NOME.Value,' ',33,taLeft)+'     Expedido por: '+AlignText(IntToStr(DM.TBVendasVED_EXPEDIDOPOR.Value)+'-'+DM.TBVendasVEN_NOME1.Value,' ',33,taLeft));
    WriteLn(F,'Cliente...........: '+AlignText(IntToStr(DM.TBVendasVED_CLIENTE.Value)+'-'+DM.TBVendasVED_NOME.Value,' ',65,taLeft));
    WriteLn(F,'Endereco..........: '+AlignText(DM.TBVendasVED_ENDERECO.Value+', '+DM.TBVendasVED_NUMERO.Value+' - '+DM.TBVendasVED_BAIRRO.Value,' ',65,taLeft));
    WriteLn(F,'Cidade/UF/CEP/Fone: '+AlignText(DM.TBVendasVED_CIDADE.Value+' / '+DM.TBVendasVED_ESTADO.Value+' / '+DM.TBVendasVED_CEP.Value+' / '+DM.TBVendasVED_FONE1.Value,' ',65,taLeft));
    FormVendas.QYReceber.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    FormVendas.QYReceber.Open;

    if DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='N' then
    WriteLn(F,'') else
    WriteLn(F,'Saldo Acumulado...: '+Format('%m',[FormVendas.QYReceberVALOR.AsExtended]));

    FormVendas.QYReceber.Close;
    WriteLn(F,'Codigo------+Descricao---------------------------------------------------------------------------------+T+-Uni-+-------Qtde+-------Valor Unit+------------Total');
  end;
begin
  DM.TBVendasItens.FetchAll;
  QtdeItens:=DM.TBVendasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Vendas.txt');
  Rewrite(F);
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  DM.TBVendasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBVendasItens.Eof do //comeca a imprimir os itens do documento.
  begin
    if DM.TBVendasItensVEI_LOTE.Value='' then
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',17,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',17,taRight)) else
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value+' Lote: '+DM.TBVendasItensVEI_LOTE.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',17,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',17,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_VENDASQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'------------+------------------------------------------------------------------------------------------+-+-----+-----------+-----------------+-----------------');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',160,taCenter));
      for I:=1 to DM.TBParametrosPAR_VENDASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_VENDASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBVendasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_VENDASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'            |                                                                                          | |     |           |                 |                 ');
  WriteLn(F,'------------+------------------------------------------------------------------------------------------+-+-----+-----------+-----------------+-----------------');
  WriteLn(F,'Produtos: '+AlignText(Format('%m',[DM.TBVendasVED_TOTALPRODUTOS.AsExtended]),' ',16,taRight)+'                                                                                                        Total Bruto: '+AlignText(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended+DM.TBVendasVED_DESCVALOR.AsExtended]),' ',16,taRight));
  WriteLn(F,'Servicos: '+AlignText(Format('%m',[DM.TBVendasVED_TOTALSERVICOS.AsExtended]),' ',16,taRight)+'                                                                                                        Desconto...: '+AlignText(Format('%m',[DM.TBVendasVED_DESCVALOR.AsExtended]),' ',16,taRight));
  WriteLn(F,'Forma Pagto: '+AlignText(DM.TBVendasVED_FORMAPAGTO.Value,' ',15,taLeft)+' Condicao Pagto: '+AlignText(DM.TBVendasCPG_DESCRICAO.Value,' ',84,taLeft)+' TOTAL......: '+AlignText(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended]),' ',16,taRight));
  //retirado da impressao.... só casa do latoeiro que usa ainda essa impressao. WriteLn(F,FormVendas.DBMemo2.Lines[3]); //so a primeira linha das condicoes de pagamento.
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',160,taCenter));
  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Vendas.txt',DM.VendasPorta);
end;

procedure ImprimirControleVendasEmail;
var F: TextFile;
  I: Integer;
begin
  DM.TBVendasItens.FetchAll; //todos os registros.
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\VendasEmail.txt');
  Rewrite(F);
  WriteLn(F,'================================================================================================================================================================');
  WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
  WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
  WriteLn(F,'================================================================================================================================================================');
  WriteLn(F,'Cod Documento.....: '+AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBVendasVED_DTEMISSAO.Value,FS)+'     Vendedor: '+AlignText(IntToStr(DM.TBVendasVED_VENDEDOR.Value)+'-'+DM.TBVendasVEN_NOME.Value,' ',33,taLeft)+'     Expedido por: '+AlignText(IntToStr(DM.TBVendasVED_EXPEDIDOPOR.Value)+'-'+DM.TBVendasVEN_NOME1.Value,' ',33,taLeft));
  WriteLn(F,'Cliente...........: '+AlignText(IntToStr(DM.TBVendasVED_CLIENTE.Value)+'-'+DM.TBVendasVED_NOME.Value,' ',65,taLeft));
  WriteLn(F,'Endereco..........: '+AlignText(DM.TBVendasVED_ENDERECO.Value+', '+DM.TBVendasVED_NUMERO.Value+' - '+DM.TBVendasVED_BAIRRO.Value,' ',65,taLeft));
  WriteLn(F,'Cidade/UF/CEP/Fone: '+AlignText(DM.TBVendasVED_CIDADE.Value+' / '+DM.TBVendasVED_ESTADO.Value+' / '+DM.TBVendasVED_CEP.Value+' / '+DM.TBVendasVED_FONE1.Value,' ',65,taLeft));
  FormVendas.QYReceber.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  FormVendas.QYReceber.Open;

  if DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='N' then
  WriteLn(F,'') else
  WriteLn(F,'Saldo Acumulado...: '+Format('%m',[FormVendas.QYReceberVALOR.AsExtended]));

  FormVendas.QYReceber.Close;
  WriteLn(F,'Codigo------+Descricao---------------------------------------------------------------------------------+T+-Uni-+-------Qtde+-------Valor Unit+------------Total');
  DM.TBVendasItens.DisableControls;
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do //comeca a imprimir os itens do documento.
  begin
    if DM.TBVendasItensVEI_LOTE.Value='' then
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',17,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',17,taRight)) else
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value+' Lote: '+DM.TBVendasItensVEI_LOTE.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',17,taRight)+'|'+
              AlignText(Format('%m',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',17,taRight));
    DM.TBVendasItens.Next;
  end;
  DM.TBVendasItens.EnableControls;
  WriteLn(F,'------------+------------------------------------------------------------------------------------------+-+-----+-----------+-----------------+-----------------');
  WriteLn(F,'Produtos: '+AlignText(Format('%m',[DM.TBVendasVED_TOTALPRODUTOS.AsExtended]),' ',16,taRight)+'                                                                                                           Desconto: '+AlignText(Format('%m',[DM.TBVendasVED_DESCVALOR.AsExtended]),' ',16,taRight));
  WriteLn(F,'Servicos: '+AlignText(Format('%m',[DM.TBVendasVED_TOTALSERVICOS.AsExtended]),' ',16,taRight)+'                                                                                                           TOTAL...: '+AlignText(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended]),' ',16,taRight));
  WriteLn(F,'===============================================================================================================================================================');
  WriteLn(F,'Forma Pagto: '+AlignText(DM.TBVendasVED_FORMAPAGTO.Value,' ',15,taLeft)+' Condicao Pagto: '+DM.TBVendasCPG_DESCRICAO.Value);
  WriteLn(F,'Resumo das condicoes de pagamento');
  WriteLn(F,'Parc----Vencimento----------Valor---------Perc.%---------------------------------------------------------------------------------------------------------------');
  for I:=1 to FormVendas.DBMemo2.Lines.Count-1 do //da segunda linha em diante.
    WriteLn(F,FormVendas.DBMemo2.Lines[I]);
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',160,taCenter));
  CloseFile(F);
end;

procedure ImprimirControleVendasTermica;
var F: TextFile;
    I: Byte;
    SL: TStringList;
begin
  try
    AssignFile(F,ExtractFilePath(Application.ExeName)+'\Print\Vendas.txt');
    Rewrite(F);
    except on exception do
    begin
      MessageDlg('Não foi possível criar arquivo temporário: Vendas.txt.',mtError,[mbOk],0);
      CloseFile(F);
      Exit;
    end;
  end;

  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  begin //linhas iniciais
    WriteLn(F,'');
  end;
  //#27#116#2 4=PC858 multilingual 1 ou 3=PC437 5=PC852 latin2 6=PC860 portuguese.
  //#27#29#116#70 ...
  //#27#77 0,1,48,49 fonte A ou fonte B.
  //#27#97 0,48 1,49 2,50 alinhamento - left - center - right.
  //#29#86 1,49 corte parcial
  //corte de papel? #29,V,#66,#0;
  //WriteLn(F,#27#29#116#0+#27#77#49+'========================================================'); //56 colunas condensado... 42 colunas normal. - epson TM-T81.
  WriteLn(F,#27#77#49+'========================================================'); //56 colunas condensado... 42 colunas normal. - epson TM-T81.
  WriteLn(F,DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value);
  WriteLn(F,DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  WriteLn(F,'========================================================');
  WriteLn(F,'Venda..: '+AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',15,taLeft),'                Data: '+DateToStr(Date));
  WriteLn(F,'Cliente: '+DM.TBVendasVED_NOME.Value);
  WriteLn(F,'--------------------------------------------------------');
  WriteLn(F,'Produto         Qtde  V.Unitario    Desconto       Total');
  WriteLn(F,'--------------------------------------------------------');
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do
  begin
    WriteLn(F,DM.TBVendasItensVEI_DESCRICAO.Value);
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',10,taLeft),
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',10,taRight),
              AlignText(Format('%n',[DM.TBVendasItensVEI_VALORUNIT.AsExtended]),' ',12,taRight),
              AlignText(Format('%n',[DM.TBVendasItensVEI_DESCVALOR.AsExtended]),' ',12,taRight),
              AlignText(Format('%n',[DM.TBVendasItensVEI_VALORTOTAL.AsExtended]),' ',12,taRight));
    DM.TBVendasItens.Next;
  end;

  WriteLn(F,'--------------------------------------------------------');
  WriteLn(F,'                        TOTAIS: '+AlignText(Format('%m',[DM.TBVendasVED_DESCVALOR.AsExtended]),' ',12,taRight)+AlignText(Format('%m',[DM.TBVendasVED_VALORTOTAL.AsExtended]),' ',12,taRight));
  WriteLn(F,'========================================================');

  if DM.TBParametrosPAR_IMPRIMIRRECEBER.Value='S' then
  begin
    WriteLn(F,RemoveAcentos(DM.TBVendasVED_CONDICAOMEMO.Value));
    WriteLn(F,'--------------------------------------------------------');
  end;

  if DM.TBVendasVED_OBSERVACOES.Value<>'' then
  begin
    WriteLn(F,DM.TBVendasVED_OBSERVACOES.Value);
    WriteLn(F,'========================================================');
  end;
  WriteLn(F,'DOCUMENTO SEM VALOR FISCAL!');
  WriteLn(F,DM.TBParametrosPAR_VENDASRP.Value);

  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  begin
    WriteLn(F,'');
  end;

  //corte de papel... #29#86#1 formato de preenchimento do campo: 29,86,1 .
  SL:=TStringList.Create;
  SL.Clear;
  SL.Delimiter:=',';
  SL.DelimitedText:=DM.TBParametrosPAR_CORTEPAPEL.Value;
  for I := 0 to SL.Count-1 do
    Write(F,Chr(StrToInt(SL.Strings[I])));
  SL.Destroy;
  //...

  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Vendas.txt',DM.VendasPorta);
end;

procedure ImprimirEtiquetasCodigoPedidoPPLB;
var F : TextFile;
begin
  //fazer conforme etiqueta da fernanda
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\EtiquetasCodigoPedidoPPLB.txt');
  Rewrite(F);
  WriteLn(F,'N');
  WriteLn(F,'Q480,24'); //define comprimento da etiqueta e o "gap".
  WriteLn(F,'A60,40,0,4,1,2,R,"'+DM.TBEmpresaEMP_NOMEFANTASIA.Value+'"');

  WriteLn(F,'A60,100,0,3,1,1,N,"PEDIDO/NFE....: '+IntToStr(DM.TBVendasVED_CODIGO.Value)+'/'+IntToStr(DM.TBVendasVED_NFE.Value)+'"');
  WriteLn(F,'A60,130,0,3,1,1,N,"PESO BRUTO....: '+FloatToStr(DM.TBVendasVED_PESOBRUTO.AsExtended)+' KG"');
  WriteLn(F,'A60,160,0,3,1,1,N,"PESO LIQUIDO..: '+FloatToStr(DM.TBVendasVED_PESOLIQ.AsExtended)+' KG"');
  WriteLn(F,'A60,190,0,3,1,1,N,"TRANSPORTADORA: '+DM.TBVendasVED_TRANSPNOME.Value+'"');

  WriteLn(F,'A60,250,0,3,1,1,N,"CLIENTE....: '+DM.TBVendasVED_NOME.Value+'"');
  if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
  WriteLn(F,'A60,280,0,3,1,1,N,"CNPJ/CPF...: '+DM.TBVendasVED_CNPJ.Value+'"') else
  WriteLn(F,'A60,280,0,3,1,1,N,"CNPJ/CPF...: '+DM.TBVendasVED_CPF.Value+'"');
  WriteLn(F,'A60,310,0,3,1,1,N,"ENDERECO...: '+DM.TBVendasVED_ENDERECO.Value+', '+DM.TBVendasVED_NUMERO.Value+'"');
  WriteLn(F,'A60,330,0,3,1,1,N,"BAIRRO.....: '+DM.TBVendasVED_BAIRRO.Value+'"');
  WriteLn(F,'A60,360,0,3,1,1,N,"CIDADE/UF..: '+DM.TBVendasVED_CIDADE.Value+' - '+DM.TBVendasVED_ESTADO.Value+'"');
  WriteLn(F,'A60,390,0,3,1,1,N,"COMPLEMENTO: '+DM.TBVendasVED_COMPLEMENTO.Value+'"');
  WriteLn(F,'A60,420,0,3,1,1,N,"FONES......: '+DM.TBClientesCLI_FONE1.Value+' / '+DM.TBClientesCLI_FONE2.Value+'"');
  WriteLn(F,'P1');
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'EtiquetasEmbalagemPPLB.txt',DM.EtiquetasEmbalagemPorta);
end;

procedure ImprimirEtiquetasConferenciaPPLB;
var F : TextFile;
  S: WideString;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDEITENS, sum(VEI_QUANTIDADE) as QTDEPRODUTOS from VENDASITENS where VEI_VENDA=:venda');
  DM.QYAux.ParamByName('venda').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  DM.QYAux.Open;

  S:=DM.TBEtiquetasETQ_CONTEUDO.Value;
  S:=StringReplace(S,'|CLI_FONE1|',DM.TBClientesCLI_FONE1.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|CLI_FONE2|',DM.TBClientesCLI_FONE2.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|EMP_NOMEFANTASIA|',DM.TBEmpresaEMP_NOMEFANTASIA.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|EMP_FONE1|',DM.TBEmpresaEMP_FONE1.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_BAIRRO|',DM.TBVendasVED_BAIRRO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_CIDADE|',DM.TBVendasVED_CIDADE.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_CODIGO|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_COMPLEMENTO|',DM.TBVendasVED_COMPLEMENTO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_CONFERIDODATA|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_CONFERIDOPOR|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
  S:=StringReplace(S,'|VED_CNPJCPF|',DM.TBVendasVED_CNPJ.Value,[rfReplaceAll]) else
  S:=StringReplace(S,'|VED_CNPJCPF|',DM.TBVendasVED_CPF.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_ENDERECO|',DM.TBVendasVED_ENDERECO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_ESTADO|',DM.TBVendasVED_ESTADO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_NFE|',IntToStr(DM.TBVendasVED_NFE.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_NOME|',DM.TBVendasVED_NOME.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_NUMERO|',DM.TBVendasVED_NUMERO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_PESOBRUTO|',FloatToStr(DM.TBVendasVED_PESOBRUTO.AsExtended),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_PESOLIQ|',FloatToStr(DM.TBVendasVED_PESOLIQ.AsExtended),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_TRANSPNOME|',DM.TBVendasVED_TRANSPNOME.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|VED_VENDEDOR|',IntToStr(DM.TBVendasVED_VENDEDOR.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|VED_VOLUMES|',AlignText(IntToStr(DM.TBVendasVED_VOLUMES.Value),'0',3,taRight),[rfReplaceAll]);
  S:=StringReplace(S,'|VEN_NOME|',DM.TBVendasVEN_NOME.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|QTDEITENS|',AlignText(IntToStr(DM.QYAux.FieldByName('QTDEITENS').AsInteger),'0',3,taRight),[rfReplaceAll]);
  S:=StringReplace(S,'|QTDEPRODUTOS|',FloatToStr(DM.QYAux.FieldByName('QTDEPRODUTOS').AsExtended),[rfReplaceAll]);
  S:=StringReplace(S,'|DATA|',DateToStr(Date),[rfReplaceAll]);
  S:=StringReplace(S,'|HORA|',TimeToStr(Time),[rfReplaceAll]);
  DM.QYAux.Close;

  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas.txt');
  Rewrite(F);
  WriteLn(F,S);
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas.txt',DM.EtiquetasEmbalagemPorta);
end;

procedure ImprimirEtiquetasEmbalagemPPLB;
var F : TextFile;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas.txt');
  Rewrite(F);
  WriteLn(F,'N');
  WriteLn(F,'Q400,24'); //define comprimento da etiqueta e o "gap".
  WriteLn(F,'A5,20,0,4,1,2,R,"'+DM.TBEmpresaEMP_NOMEFANTASIA.Value+'"');

  WriteLn(F,'A5,80,0,3,1,1,N,"PEDIDO/NFE....: '+IntToStr(DM.TBVendasVED_CODIGO.Value)+'/'+IntToStr(DM.TBVendasVED_NFE.Value)+'"');
  WriteLn(F,'A5,105,0,3,1,1,N,"PESO BRUTO....: '+FloatToStr(DM.TBVendasVED_PESOBRUTO.AsExtended)+' KG"');
  WriteLn(F,'A5,130,0,3,1,1,N,"PESO LIQUIDO..: '+FloatToStr(DM.TBVendasVED_PESOLIQ.AsExtended)+' KG"');
  WriteLn(F,'A5,155,0,3,1,1,N,"TRANSPORTADORA: '+DM.TBVendasVED_TRANSPNOME.Value+'"');

  WriteLn(F,'A5,180,0,3,1,1,N,"CLIENTE....: '+DM.TBVendasVED_NOME.Value+'"');
  if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
  WriteLn(F,'A5,205,0,3,1,1,N,"CNPJ/CPF...: '+DM.TBVendasVED_CNPJ.Value+'"') else
  WriteLn(F,'A5,205,0,3,1,1,N,"CNPJ/CPF...: '+DM.TBVendasVED_CPF.Value+'"');
  WriteLn(F,'A5,230,0,3,1,1,N,"ENDERECO...: '+DM.TBVendasVED_ENDERECO.Value+', '+DM.TBVendasVED_NUMERO.Value+'"');
  WriteLn(F,'A5,255,0,3,1,1,N,"BAIRRO.....: '+DM.TBVendasVED_BAIRRO.Value+'"');
  WriteLn(F,'A5,280,0,3,1,1,N,"CIDADE/UF..: '+DM.TBVendasVED_CIDADE.Value+' - '+DM.TBVendasVED_ESTADO.Value+'"');
  WriteLn(F,'A5,305,0,3,1,1,N,"COMPLEMENTO: '+DM.TBVendasVED_COMPLEMENTO.Value+'"');
  WriteLn(F,'A5,330,0,3,1,1,N,"FONES......: '+DM.TBClientesCLI_FONE1.Value+' / '+DM.TBClientesCLI_FONE2.Value+'"');
  WriteLn(F,'P1');
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas.txt',DM.EtiquetasEmbalagemPorta);
end;

procedure ImprimirEtiquetasEmbalagemPPLB_Novo;
var F : TextFile;
  S: WideString;
  I: Word;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;

  for I:=1 to DM.TBVendasVED_VOLUMES.Value do
  begin
    S:=DM.TBEtiquetasETQ_CONTEUDO.Value;
    S:=StringReplace(S,'|EMP_BAIRRO|',DM.TBEmpresaEMP_BAIRRO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_CEP|',DM.TBEmpresaEMP_CEP.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_CIDADE|',DM.TBEmpresaEMP_CIDADE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_CNPJ|',DM.TBEmpresaEMP_CNPJ.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_EMAIL|',DM.TBEmpresaEMP_EMAIL.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_ENDERECO|',DM.TBEmpresaEMP_ENDERECO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_ESTADO|',DM.TBEmpresaEMP_ESTADO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_FONE1|',DM.TBEmpresaEMP_FONE1.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_FONE2|',DM.TBEmpresaEMP_FONE2.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_SITE|',DM.TBEmpresaEMP_HOMEPAGE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_NOMEFANTASIA|',DM.TBEmpresaEMP_NOMEFANTASIA.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|EMP_NUMERO|',DM.TBEmpresaEMP_NUMERO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_BAIRRO|',DM.TBVendasVED_BAIRRO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_CEP|',DM.TBVendasVED_CEP.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_CIDADE|',DM.TBVendasVED_CIDADE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_CODIGO|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
    S:=StringReplace(S,'|VED_COMPLEMENTO|',DM.TBVendasVED_COMPLEMENTO.Value,[rfReplaceAll]);
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    S:=StringReplace(S,'|VED_CNPJCPF|',DM.TBVendasVED_CNPJ.Value,[rfReplaceAll]) else
    S:=StringReplace(S,'|VED_CNPJCPF|',DM.TBVendasVED_CPF.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_ENDERECO|',DM.TBVendasVED_ENDERECO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_ESPECIE|',DM.TBVendasVED_ESPECIE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_ESTADO|',DM.TBVendasVED_ESTADO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_FRETE|',DM.TBVendasVED_FRETE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_NFE|',IntToStr(DM.TBVendasVED_NFE.Value),[rfReplaceAll]);
    S:=StringReplace(S,'|VED_NUMERO|',DM.TBVendasVED_NUMERO.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_PEDIDOCLIENTE|',DM.TBVendasVED_PEDIDOCLIENTE.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_PESOBRUTO|',FloatToStr(DM.TBVendasVED_PESOBRUTO.AsExtended),[rfReplaceAll]);
    S:=StringReplace(S,'|VED_PESOLIQ|',FloatToStr(DM.TBVendasVED_PESOLIQ.AsExtended),[rfReplaceAll]);
    S:=StringReplace(S,'|VED_TRANSPNOME|',DM.TBVendasVED_TRANSPNOME.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_NOME|',DM.TBVendasVED_NOME.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|VED_VOLUMENUMERO|',AlignText(IntToStr(I),'0',3,taRight),[rfReplaceAll]);
    S:=StringReplace(S,'|VED_VOLUMES|',AlignText(IntToStr(DM.TBVendasVED_VOLUMES.Value),'0',3,taRight),[rfReplaceAll]);
    S:=StringReplace(S,'|CLI_FONE1|',DM.TBClientesCLI_FONE1.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|CLI_FONE2|',DM.TBClientesCLI_FONE2.Value,[rfReplaceAll]);
    S:=StringReplace(S,'|DATA|',DateToStr(Date),[rfReplaceAll]);
    S:=StringReplace(S,'|HORA|',TimeToStr(Time),[rfReplaceAll]);

    AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas'+IntToStr(I)+'.txt');
    Rewrite(F);
    WriteLn(F,S);
    CloseFile(F);
    PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas'+IntToStr(I)+'.txt',DM.EtiquetasEmbalagemPorta);
  end;
end;

procedure ImprimirEtiquetasPPLB;
var F : TextFile;
  S,S1,S2: String;
begin
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas.txt');
  Rewrite(F);
  WriteLn(F,'N'); //limpa buffer.
//  WriteLn(F,'q900'); //define tamanho da etiqueta (width).
//  WriteLn(F,'Q1500,5'); //define comprimento da etiqueta e o "gap".
  WriteLn(F,'Q240,24'); //define comprimento da etiqueta e o "gap".
//  WriteLn(F,'JF'); //JF = avança um pouco a etiqueta -- JB = não avança nada.
//  WriteLn(F,'D9'); //temperadura 1-9.
//  WriteLn(F,'S2'); //velocidade 1-9.
  S:=FormProdutosEtiquetas.TBProdutos.FieldByName('Nome').AsString;
  S1:=Copy(S,0,32); //nome do produto em 2 linhas.
  S2:=Copy(S,33,Length(S));
  WriteLn(F,'A40,30,0,3,1,1,N,"'+DM.TBEmpresaEMP_NOMEFANTASIA.Value+'"');
  WriteLn(F,'A40,50,0,2,1,1,N,"Codigo: '+FormProdutosEtiquetas.TBProdutos.FieldByName('Código').AsString+'"');
  WriteLn(F,'A40,70,0,2,1,1,N,"'+S1+'"');
  WriteLn(F,'A40,90,0,2,1,1,N,"'+S2+'"');
  WriteLn(F,'B55,110,0,3,2,4,70,B,"'+FormProdutosEtiquetas.TBProdutos.FieldByName('Código Barras').AsString+'"');
  //etiqueta do lado.
  WriteLn(F,'A470,30,0,3,1,1,N,"'+DM.TBEmpresaEMP_NOMEFANTASIA.Value+'"');
  WriteLn(F,'A470,50,0,2,1,1,N,"Codigo: '+FormProdutosEtiquetas.TBProdutos.FieldByName('Código').AsString+'"');
  WriteLn(F,'A470,70,0,2,1,1,N,"'+S1+'"');
  WriteLn(F,'A470,90,0,2,1,1,N,"'+S2+'"');
  WriteLn(F,'B485,110,0,3,2,4,70,B,"'+FormProdutosEtiquetas.TBProdutos.FieldByName('Código Barras').AsString+'"');
//  WriteLn(F,'P1,'+FormProdutosEtiquetas.TBProdutos.FieldByName('Quantidade').AsString); //P1 = single copy.
  WriteLn(F,'P'+FormProdutosEtiquetas.TBProdutos.FieldByName('Quantidade').AsString);
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas.txt',DM.ProdutosEtiquetasPorta);
end;

procedure ImprimirEtiquetasPPLB_Novo;
var F : TextFile;
  S,S1,S2: WideString;
begin
  S:=FormProdutosEtiquetas.TBProdutosPRO_NOME.Value;
  S1:=Copy(S,0,StrToInt(FormProdutosEtiquetas.Edit1.Text)); //nome do produto em 2 linhas.
  S2:=Copy(S,StrToInt(FormProdutosEtiquetas.Edit1.Text)+1,Length(S));

  S:=DM.TBEtiquetasETQ_CONTEUDO.Value;
  S:=StringReplace(S,'|EMP_NOMEFANTASIA|',DM.TBEmpresaEMP_NOMEFANTASIA.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_CODIGO_SZ|',IntToStr(FormProdutosEtiquetas.TBProdutosPRO_CODIGO.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_CODIGO|',AlignText(IntToStr(FormProdutosEtiquetas.TBProdutosPRO_CODIGO.Value),'0',12,taRight),[rfReplaceAll]);
  //S:=StringReplace(S,'|PRO_CODIGO|',DVEAN13(AlignText(IntToStr(FormProdutosEtiquetas.TBProdutosPRO_CODIGO.Value),'0',12,taRight)),[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_CODIGOBARRAS|',FormProdutosEtiquetas.TBProdutosPRO_CODIGOBARRAS.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_CODIGOFAB|',FormProdutosEtiquetas.TBProdutosPRO_CODIGOFAB.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_LOCALIZACAO|',FormProdutosEtiquetas.TBProdutosPRO_LOCALIZACAO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_NOME1|',S1,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_NOME2|',S2,[rfReplaceAll]);
  S:=StringReplace(S,'|PRO_NOME|',FormProdutosEtiquetas.TBProdutosPRO_NOME.Value,[rfReplaceAll]); //caso o usuário queira em uma linha só.
  S:=StringReplace(S,'|PRO_PRECO|','R$ '+FloatToStr(Decimais(FormProdutosEtiquetas.TBProdutosPRO_PRECO.Value,2)),[rfReplaceAll]);
  S:=StringReplace(S,'|LOT_LOTE|',FormProdutosEtiquetas.TBProdutosLOT_LOTE.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|LOT_VALIDADE|',DateToStr(FormProdutosEtiquetas.TBProdutosLOT_VALIDADE.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|LOT_FABRICACAO|',DateToStr(FormProdutosEtiquetas.TBProdutosLOT_FABRICACAO.Value),[rfReplaceAll]);
  S:=StringReplace(S,'|MAR_DESCRICAO|',FormProdutosEtiquetas.TBProdutosMAR_DESCRICAO.Value,[rfReplaceAll]);
  S:=StringReplace(S,'|ETQ_QUANTIDADE|',IntToStr(FormProdutosEtiquetas.TBProdutosPRO_QUANTIDADE.Value),[rfReplaceAll]);

  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Etiquetas.txt');
  Rewrite(F);
  WriteLn(F,S);
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Etiquetas.txt',DM.ProdutosEtiquetasPorta);
end;

procedure ImprimirListaProdutosPreco(CampoPreco: String);
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'===============================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',80,taLeft));
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'===============================================================================');
    WriteLn(F,'CODIGO     DESCRICAO                                     ESTOQUE          PRECO');
    WriteLn(F,'===============================================================================');
  end;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from PRODUTOS order by PRO_NOME');
  DM.QYAux.Open;
  DM.QYAux.FetchAll;
  QtdeItens:=DM.QYAux.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Pauta.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  for I := 1 to DM.TBParametrosPAR_PRODUTOSLI.Value do
  WriteLn(F,'');
  Cabecalho;
  DM.QYAux.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.QYAux.Eof do //comeca a imprimir os itens do documento.
  begin
    if CampoPreco='VENDA' then
    WriteLn(F,AlignText(DM.QYAux.FieldByName('PRO_CODIGO').AsString,' ',10,taLeft)+'|'+AlignText(DM.QYAux.FieldByName('PRO_NOME').AsString,' ',40,taLeft)+'|'+
              AlignText(DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString,' ',12,taRight)+'|'+AlignText(Format('%m',[DM.QYAux.FieldByName('PRO_PRECOVENDA').AsFloat]),' ',14,taRight));
    if CampoPreco='CUSTO' then
    WriteLn(F,AlignText(DM.QYAux.FieldByName('PRO_CODIGO').AsString,' ',10,taLeft)+'|'+AlignText(DM.QYAux.FieldByName('PRO_NOME').AsString,' ',40,taLeft)+'|'+
              AlignText(DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsString,' ',12,taRight)+'|'+AlignText(Format('%m',[DM.QYAux.FieldByName('PRO_PRECOCUSTO').AsFloat]),' ',14,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_PRODUTOSQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'-------------------------------------------------------------------------------');
      for I:=1 to DM.TBParametrosPAR_PRODUTOSLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_PRODUTOSLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.QYAux.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_PRODUTOSQL.Value do //preenche as linhas restantes.
  WriteLn(F,'          |                                        |            |              ');
  WriteLn(F,'-------------------------------------------------------------------------------');
  for I := 1 to DM.TBParametrosPAR_PRODUTOSLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Pauta.txt',DM.ProdutosPorta);
  DM.QYAux.Close;
end;

procedure ImprimirNotasModelo01;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then
    WriteLn(F,AlignText('X',' ',86,taRight)) else
    WriteLn(F,AlignText('X',' ',99,taRight));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CFOPDESC.Value,' ',44,taLeft)+IntToStr(DM.TBNotasNOT_CFOP.Value));
    WriteLn(F,'');
    WriteLn(F,'');
    //localiza o cliente para verificar a tipo de pessoa.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    //...
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',85,taLeft)+AlignText(DM.TBNotasNOT_CNPJ.Value,' ',35,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft)) else
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',85,taLeft)+AlignText(DM.TBNotasNOT_CPF.Value,' ',35,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_ENDERECO.Value,' ',60,taLeft)+AlignText(DM.TBNotasNOT_BAIRRO.Value,' ',40,taLeft)+AlignText(DM.TBNotasNOT_CEP.Value,' ',20,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTSAIDA.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CIDADE.Value,' ',54,taLeft)+AlignText(DM.TBNotasNOT_FONE1.Value,' ',24,taLeft)+AlignText(DM.TBNotasNOT_ESTADO.Value,' ',5,taLeft)+AlignText(DM.TBNotasNOT_IE.Value,' ',37,taLeft)+AlignText(TimeToStr(Time),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
  end;
begin
  DM.TBNotasItens.FetchAll; //todos os registros.
  QtdeItens:=DM.TBNotasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Notas.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
  //linhas iniciais
  for I := 1 to DM.TBParametrosPAR_NOTASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  DM.TBNotasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBNotasItens.Eof do //comeca a imprimir os itens do documento.
  begin
    WriteLn(F,AlignText(IntToStr(DM.TBNotasItensNOI_PRODUTO.Value),' ',5,taLeft)+
              AlignText(DM.TBNotasItensNOI_DESCRICAO.Value,' ',57,taLeft)+
              AlignText(DM.TBNotasItensNOI_CLASSFISCAL.Value,' ',8,taLeft)+
              AlignText(IntToStr(DM.TBNotasItensNOI_CSTICMS.Value),' ',5,taLeft)+
              AlignText(DM.TBNotasItensNOI_UNIDADE.Value,' ',3,taLeft)+
              AlignText(DM.TBNotasItensNOI_QUANTIDADE.AsString,' ',14,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORUNIT.AsExtended]),' ',16,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORTOTAL.AsExtended]),' ',18,taRight)+
              AlignText(DM.TBNotasItensNOI_ALIQICMS.AsString,' ',12,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_NOTASQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      //pula linhas referente aos valores impostos e total nota.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');
      //pulas as linhas referente a transportadora.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');

      for I:=1 to DM.TBParametrosPAR_NOTASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_NOTASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBNotasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_NOTASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'');

  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_BASEICMS.AsExtended]),' ',22,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMS.AsExtended]),' ',30,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_BASEICMSST.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMSST.AsExtended]),' ',29,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALPRODUTOS.AsExtended]),' ',25,taRight));
  WriteLn(F,'');
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_VALORFRETE.AsExtended]),' ',22,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORSEGURO.AsExtended]),' ',30,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORDESPACES.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALIPI.AsExtended]),' ',29,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORTOTAL.AsExtended]),' ',25,taRight));

  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_TRANSPNOME.Value,' ',76,taLeft)+AlignText(DM.TBNotasNOT_FRETE.Value,' ',5,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACA.Value,' ',17,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACAUF.Value,' ',5,taLeft));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_PESOBRUTO.AsString,' ',113,taRight)+AlignText(DM.TBNotasNOT_PESOLIQ.AsString,' ',20,taRight));
  WriteLn(F,'');

  //6 linhas de observacoes
  for I := 0 to 5 do
  WriteLn(F,AlignText(FormNotas.DBMemo1.Lines[I],' ',62,taLeft));

  for I := 1 to DM.TBParametrosPAR_NOTASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Notas.txt',DM.NotasPorta);
end;

procedure ImprimirNotasModelo01Condensado;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then
    WriteLn(F,AlignText('X',' ',101,taRight)) else
    WriteLn(F,AlignText('X',' ',116,taRight));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CFOPDESC.Value,' ',50,taLeft)+IntToStr(DM.TBNotasNOT_CFOP.Value));
    WriteLn(F,'');
    WriteLn(F,'');
    //localiza o cliente para verificar a tipo de pessoa.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    //...
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',98,taLeft)+AlignText(DM.TBNotasNOT_CNPJ.Value,' ',43,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft)) else
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',98,taLeft)+AlignText(DM.TBNotasNOT_CPF.Value,' ',43,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_ENDERECO.Value,' ',70,taLeft)+AlignText(DM.TBNotasNOT_BAIRRO.Value,' ',46,taLeft)+AlignText(DM.TBNotasNOT_CEP.Value,' ',24,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTSAIDA.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CIDADE.Value,' ',64,taLeft)+AlignText(DM.TBNotasNOT_FONE1.Value,' ',29,taLeft)+AlignText(DM.TBNotasNOT_ESTADO.Value,' ',7,taLeft)+AlignText(DM.TBNotasNOT_IE.Value,' ',40,taLeft)+AlignText(TimeToStr(Time),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
  end;
begin
  DM.TBNotasItens.FetchAll; //todos os registros.
  QtdeItens:=DM.TBNotasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Notas.txt');
  Rewrite(F);
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL18+MROn+MCOn); //comandos.
  //linhas iniciais
  for I := 1 to DM.TBParametrosPAR_NOTASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  DM.TBNotasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBNotasItens.Eof do //comeca a imprimir os itens da nota.
  begin
    if DM.TBNotasItensNOI_LOTE.Value='' then //com lote ou sem lote?
    WriteLn(F,AlignText(IntToStr(DM.TBNotasItensNOI_PRODUTO.Value),' ',6,taLeft)+
              AlignText(DM.TBNotasItensNOI_DESCRICAO.Value,' ',63,taLeft)+
              AlignText(DM.TBNotasItensNOI_CLASSFISCAL.Value,' ',8,taLeft)+
              AlignText(IntToStr(DM.TBNotasItensNOI_CSTICMS.Value),' ',7,taLeft)+
              AlignText(DM.TBNotasItensNOI_UNIDADE.Value,' ',4,taRight)+
              AlignText(DM.TBNotasItensNOI_QUANTIDADE.AsString,' ',16,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORUNIT.AsExtended]),' ',17,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORTOTAL.AsExtended]),' ',22,taRight)+
              AlignText(DM.TBNotasItensNOI_ALIQICMS.AsString,' ',13,taRight)) else
    WriteLn(F,AlignText(IntToStr(DM.TBNotasItensNOI_PRODUTO.Value),' ',6,taLeft)+
              AlignText(DM.TBNotasItensNOI_DESCRICAO.Value+'Lote: '+DM.TBNotasItensNOI_LOTE.Value,' ',63,taLeft)+
              AlignText(DM.TBNotasItensNOI_CLASSFISCAL.Value,' ',8,taLeft)+
              AlignText(IntToStr(DM.TBNotasItensNOI_CSTICMS.Value),' ',7,taLeft)+
              AlignText(DM.TBNotasItensNOI_UNIDADE.Value,' ',4,taRight)+
              AlignText(DM.TBNotasItensNOI_QUANTIDADE.AsString,' ',16,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORUNIT.AsExtended]),' ',17,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORTOTAL.AsExtended]),' ',22,taRight)+
              AlignText(DM.TBNotasItensNOI_ALIQICMS.AsString,' ',13,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_NOTASQL.Value) and (ContaItem<QtdeItens) then //final da nota e ainda tem itens para imprimir?
    begin
      //pula linhas referente aos valores impostos e total nota.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');
      //pulas as linhas referente a transportadora.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');

      for I:=1 to DM.TBParametrosPAR_NOTASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_NOTASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBNotasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_NOTASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  //para a linha abaixo, deveria checar se empresa é simples nacional, não imprimir base icms, valor icms, base ipi, valor ipi.
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_BASEICMS.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMS.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_BASEICMSST.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMSST.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALPRODUTOS.AsExtended]),' ',30,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_VALORFRETE.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORSEGURO.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORDESPACES.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALIPI.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORTOTAL.AsExtended]),' ',30,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_TRANSPNOME.Value,' ',90,taLeft)+AlignText(DM.TBNotasNOT_FRETE.Value,' ',5,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACA.Value,' ',19,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACAUF.Value,' ',5,taLeft));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_PESOBRUTO.AsString,' ',132,taRight)+AlignText(DM.TBNotasNOT_PESOLIQ.AsString,' ',23,taRight));
  WriteLn(F,'');
  WriteLn(F,'');

  //6 linhas de observacoes.
  for I := 0 to 5 do
  WriteLn(F,AlignText(FormNotas.DBMemo1.Lines[I],' ',72,taLeft));

  for I := 1 to DM.TBParametrosPAR_NOTASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Notas.txt',DM.NotasPorta);
end;

procedure ImprimirNotasModelo02;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then
    WriteLn(F,AlignText('X',' ',106,taRight)) else
    WriteLn(F,AlignText('X',' ',119,taRight));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CFOPDESC.Value,' ',50,taLeft)+IntToStr(DM.TBNotasNOT_CFOP.Value));
    WriteLn(F,'');
    WriteLn(F,'');
    //localiza o cliente para verificar a tipo de pessoa.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    //...
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',92,taLeft)+AlignText(DM.TBNotasNOT_CNPJ.Value,' ',46,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft)) else
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',92,taLeft)+AlignText(DM.TBNotasNOT_CPF.Value,' ',46,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_ENDERECO.Value,' ',86,taLeft)+AlignText(DM.TBNotasNOT_BAIRRO.Value,' ',30,taLeft)+AlignText(DM.TBNotasNOT_CEP.Value,' ',22,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTSAIDA.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CIDADE.Value,' ',57,taLeft)+AlignText(DM.TBNotasNOT_FONE1.Value,' ',36,taLeft)+AlignText(DM.TBNotasNOT_ESTADO.Value,' ',6,taLeft)+AlignText(DM.TBNotasNOT_IE.Value,' ',39,taLeft)+AlignText(TimeToStr(Time),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
  end;
begin
  DM.TBNotasItens.FetchAll;
  QtdeItens:=DM.TBNotasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Notas.txt');
  Rewrite(F);
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL18+MROn+MCOn); //comandos.
  //linhas iniciais.
  for I := 1 to DM.TBParametrosPAR_NOTASLI.Value do
  begin
    WriteLn(F,' ');
  end;
  //...
  Cabecalho;
  DM.TBNotasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBNotasItens.Eof do //começa a imprimir os itens da nota.
  begin
    WriteLn(F,AlignText(IntToStr(DM.TBNotasItensNOI_PRODUTO.Value),' ',6,taLeft)+
              AlignText(DM.TBNotasItensNOI_DESCRICAO.Value,' ',54,taLeft)+
              AlignText(DM.TBNotasItensNOI_CLASSFISCAL.Value,' ',8,taLeft)+
              AlignText(IntToStr(DM.TBNotasItensNOI_CSTICMS.Value),' ',10,taLeft)+
              AlignText(DM.TBNotasItensNOI_UNIDADE.Value,' ',5,taRight)+
              AlignText(DM.TBNotasItensNOI_QUANTIDADE.AsString,' ',14,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORUNIT.AsExtended]),' ',21,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORTOTAL.AsExtended]),' ',27,taRight)+
              AlignText(DM.TBNotasItensNOI_ALIQICMS.AsString,' ',10,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_NOTASQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      //pula linhas referente aos valores impostos e total nota.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');
      //pulas as linhas referente a transportadora.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');

      for I:=1 to DM.TBParametrosPAR_NOTASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_NOTASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBNotasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_NOTASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  //para a linha abaixo, deveria checar se empresa é simples nacional, não imprimir base icms, valor icms, base ipi, valor ipi.
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_BASEICMS.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMS.AsExtended]),' ',31,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_BASEICMSST.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMSST.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALPRODUTOS.AsExtended]),' ',28,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_VALORFRETE.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORSEGURO.AsExtended]),' ',31,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORDESPACES.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALIPI.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORTOTAL.AsExtended]),' ',28,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_TRANSPNOME.Value,' ',96,taLeft)+AlignText(DM.TBNotasNOT_FRETE.Value,' ',5,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACA.Value,' ',22,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACAUF.Value,' ',5,taLeft));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_PESOBRUTO.AsString,' ',128,taRight)+AlignText(DM.TBNotasNOT_PESOLIQ.AsString,' ',20,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  //6 linhas de observacoes.
  for I := 0 to 5 do
  WriteLn(F,AlignText(FormNotas.DBMemo1.Lines[I],' ',82,taLeft));

  for I := 1 to DM.TBParametrosPAR_NOTASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Notas.txt',DM.NotasPorta);
end;

procedure ImprimirNotasModelo03;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then
    WriteLn(F,AlignText('X',' ',93,taRight)) else
    WriteLn(F,AlignText('X',' ',108,taRight));
//    WriteLn(F,'');
//    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CFOPDESC.Value,' ',50,taLeft)+IntToStr(DM.TBNotasNOT_CFOP.Value));
    WriteLn(F,'');
    WriteLn(F,'');
    //localiza o cliente para verificar a tipo de pessoa.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    //...
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',104,taLeft)+AlignText(DM.TBNotasNOT_CNPJ.Value,' ',39,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft)) else
    WriteLn(F,AlignText(DM.TBNotasNOT_NOME.Value,' ',104,taLeft)+AlignText(DM.TBNotasNOT_CPF.Value,' ',39,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTEMISSAO.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
//    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_ENDERECO.Value,' ',82,taLeft)+AlignText(DM.TBNotasNOT_BAIRRO.Value,' ',39,taLeft)+AlignText(DM.TBNotasNOT_CEP.Value,' ',22,taLeft)+AlignText(DateToStr(DM.TBNotasNOT_DTSAIDA.Value,FS),' ',12,taLeft));
    WriteLn(F,'');
//    WriteLn(F,'');
    WriteLn(F,AlignText(DM.TBNotasNOT_CIDADE.Value,' ',70,taLeft)+AlignText(DM.TBNotasNOT_FONE1.Value,' ',32,taLeft)+AlignText(DM.TBNotasNOT_ESTADO.Value,' ',6,taLeft)+AlignText(DM.TBNotasNOT_IE.Value,' ',35,taLeft)+AlignText(TimeToStr(Time),' ',12,taLeft));
    WriteLn(F,'');
    WriteLn(F,'');
    WriteLn(F,'');
//    WriteLn(F,'');
//    WriteLn(F,'');
  end;
begin
  DM.TBNotasItens.FetchAll;
  QtdeItens:=DM.TBNotasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Notas.txt');
  Rewrite(F);
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
  //linhas iniciais.
  for I := 1 to DM.TBParametrosPAR_NOTASLI.Value do
  begin
    WriteLn(F,' ');
  end;
  //...
  Cabecalho;
  DM.TBNotasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBNotasItens.Eof do //começa a imprimir os itens da nota.
  begin
    WriteLn(F,AlignText(IntToStr(DM.TBNotasItensNOI_PRODUTO.Value),' ',12,taLeft)+
              AlignText(DM.TBNotasItensNOI_DESCRICAO.Value,' ',59,taLeft)+
              AlignText(DM.TBNotasItensNOI_CLASSFISCAL.Value,' ',8,taLeft)+
              AlignText(IntToStr(DM.TBNotasItensNOI_CSTICMS.Value),' ',10,taLeft)+
              AlignText(DM.TBNotasItensNOI_UNIDADE.Value,' ',5,taRight)+
              AlignText(DM.TBNotasItensNOI_QUANTIDADE.AsString,' ',9,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORUNIT.AsExtended]),' ',20,taRight)+
              AlignText(Format('%m',[DM.TBNotasItensNOI_VALORTOTAL.AsExtended]),' ',22,taRight)+
              AlignText(DM.TBNotasItensNOI_ALIQICMS.AsString,' ',10,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_NOTASQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      //pula linhas referente aos valores impostos e total nota.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');
      //pulas as linhas referente a transportadora.
      WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,''); WriteLn(F,'');

      for I:=1 to DM.TBParametrosPAR_NOTASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_NOTASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBNotasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_NOTASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  Write(F,EL18); //faz pular menos de uma linha normal.
  WriteLn(F,'');
  Write(F,EL16);
  //para a linha abaixo, deveria checar se empresa é simples nacional, não imprimir base icms, valor icms, base ipi, valor ipi.
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_BASEICMS.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMS.AsExtended]),' ',31,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_BASEICMSST.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALICMSST.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALPRODUTOS.AsExtended]),' ',28,taRight));
  WriteLn(F,'');
//  WriteLn(F,'');
  WriteLn(F,AlignText(Format('%m',[DM.TBNotasNOT_VALORFRETE.AsExtended]),' ',27,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORSEGURO.AsExtended]),' ',31,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORDESPACES.AsExtended]),' ',34,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_TOTALIPI.AsExtended]),' ',32,taRight)+AlignText(Format('%m',[DM.TBNotasNOT_VALORTOTAL.AsExtended]),' ',28,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
//  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_TRANSPNOME.Value,' ',85,taLeft)+AlignText(DM.TBNotasNOT_FRETE.Value,' ',5,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACA.Value,' ',22,taLeft)+AlignText(DM.TBNotasNOT_VEICULOPLACAUF.Value,' ',5,taLeft));
  Write(F,EL18); //pula as linhas seguintes com espaçamento 1/8.
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  WriteLn(F,'');
  Write(F,EL16); //volta ao normal.
//  WriteLn(F,'');
  WriteLn(F,AlignText(DM.TBNotasNOT_PESOBRUTO.AsString,' ',128,taRight)+AlignText(DM.TBNotasNOT_PESOLIQ.AsString,' ',20,taRight));
  WriteLn(F,'');
  WriteLn(F,'');
//  WriteLn(F,'');
  Write(F,EL18); //para as observacoes ficarem mais juntas.
  //6 linhas de observacoes.
  for I := 0 to 5 do
  WriteLn(F,AlignText(FormNotas.DBMemo1.Lines[I],' ',76,taLeft));
  Write(F,EL16); //volta ao normal.

  for I := 1 to DM.TBParametrosPAR_NOTASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Notas.txt',DM.NotasPorta);
end;

procedure ImprimirTeste;
var F: TextFile;
begin
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Teste.txt');
  Rewrite(F);
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL18+MROn+MCOn); //comandos.
  WriteLn(F,'---------1---------2---------3---------4---------5---------6---------7---------8');
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL18+MROn+MCOn); //comandos.
  WriteLn(F,'---------1---------2---------3---------4---------5---------6---------7---------8');
  Write(F,CPI15+MNOff+MIOff+MSOff+MEOff+EL18+MROn+MCOn); //comandos.
  WriteLn(F,'---------1---------2---------3---------4---------5---------6---------7---------8');
  CloseFile(F);
  //PrintFile(DM.DebugPrint,DM.Commandcom,'Entrega.txt',EntregaPorta);
end;

{procedure ImprimirOrdemEntrega;
var
  QtdeItens: Integer;
  ContaItem: Integer;
  ContaLin: Integer;
  I: Integer;
  F: TextFile;
  procedure Cabecalho;
  begin
    WriteLn(F,'================================================================================================================================================================');
    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',140,taLeft)+MNOn+AlignText('ORDEM DE ENTREGA',' ',20,taRight)+MNOff);
    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
    WriteLn(F,'================================================================================================================================================================');
    WriteLn(F,'Cod Documento.....: '+AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',8,taLeft)+'Data: '+DateToStr(DM.TBVendasVED_DTEMISSAO.Value,FS)+'     Vendedor: '+AlignText(IntToStr(DM.TBVendasVED_VENDEDOR.Value)+'-'+DM.TBVendasVEN_NOME.Value,' ',33,taLeft)+'     Expedido por: '+AlignText(IntToStr(DM.TBVendasVED_EXPEDIDOPOR.Value)+'-'+DM.TBVendasVEN_NOME1.Value,' ',33,taLeft));
    WriteLn(F,'Cliente...........: '+AlignText(IntToStr(DM.TBVendasVED_CLIENTE.Value)+'-'+DM.TBVendasVED_NOME.Value,' ',65,taLeft));
    WriteLn(F,'Endereco..........: '+AlignText(DM.TBVendasVED_ENDERECO.Value+', '+DM.TBVendasVED_NUMERO.Value+' - '+DM.TBVendasVED_BAIRRO.Value,' ',65,taLeft));
    WriteLn(F,'Cidade/UF/CEP/Fone: '+AlignText(DM.TBVendasVED_CIDADE.Value+' / '+DM.TBVendasVED_ESTADO.Value+' / '+DM.TBVendasVED_CEP.Value+' / '+DM.TBVendasVED_FONE1.Value,' ',65,taLeft));
    WriteLn(F,'Codigo------+Descricao---------------------------------------------------------------------------------+T+-Uni-+-------Qtde+-------Localizacao+----------------');
  end;
begin
  DM.TBVendasItens.FetchAll;
  QtdeItens:=DM.TBVendasItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Entrega.txt');
  Rewrite(F);
  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  WriteLn(F,'');
  Cabecalho;
  DM.TBVendasItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBVendasItens.Eof do //comeca a imprimir os itens do documento.
  begin
    if DM.TBVendasItensVEI_LOTE.Value='' then
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_LOCALIZACAO.Value,' ',18,taRight)+'|') else
    WriteLn(F,AlignText(IntToStr(DM.TBVendasItensVEI_PRODUTO.Value),' ',12,taLeft)+'|'+
              AlignText(DM.TBVendasItensVEI_DESCRICAO.Value+' Lote: '+DM.TBVendasItensVEI_LOTE.Value,' ',90,taLeft)+'|'+
              DM.TBVendasItensVEI_TIPO.Value+'|'+
              AlignText(DM.TBVendasItensVEI_UNIDADE.Value,' ',5,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
              AlignText(DM.TBVendasItensVEI_LOCALIZACAO.Value,' ',18,taRight)+'|');
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_VENDASQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'------------+------------------------------------------------------------------------------------------+-+-----+-----------+------------------+----------------');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'');
      WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',160,taCenter));
      for I:=1 to DM.TBParametrosPAR_VENDASLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_VENDASLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      Cabecalho;
      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBVendasItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_VENDASQL.Value do //preenche as linhas restantes.
  WriteLn(F,'            |                                                                                          | |     |           |                  |                ');
  WriteLn(F,'------------+------------------------------------------------------------------------------------------+-+-----+-----------+------------------+----------------');
  WriteLn(F,FormVendas.DBMemo1.Lines[0]); //so a primeira linha das condicoes de pagamento.
  WriteLn(F,FormVendas.DBMemo1.Lines[1]); //so a primeira linha das condicoes de pagamento.
  WriteLn(F,FormVendas.DBMemo1.Lines[2]); //so a primeira linha das condicoes de pagamento.
  WriteLn(F,FormVendas.DBMemo1.Lines[3]); //so a primeira linha das condicoes de pagamento.
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_VENDASRP.Value,' ',160,taCenter));
  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Entrega.txt',EntregaPorta);
end;     }

//procedure ImprimirOrdemProducao;
//var
//  QtdeItens: Integer;
//  ContaItem: Integer;
//  ContaLin: Integer;
//  I: Integer;
//  F: TextFile;
//  procedure Cabecalho;
//  begin
//    WriteLn(F,'================================================================================================================================================================');
//    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
//    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
//    WriteLn(F,'================================================================================================================================================================');
//    WriteLn(F,'Ordem de Producao.: '+AlignText(IntToStr(DM.TBProducaoPRD_CODIGO.Value),' ',96,taLeft)+'Data: '+DateToStr(DM.TBProducaoPRD_DTCADASTRO.Value,FS)+'   Data Previsao: '+DateToStr(DM.TBProducaoPRD_DTPREVISAO.Value,FS));
//    WriteLn(F,'Cliente...........: '+AlignText(IntToStr(DM.TBProducaoPRD_CLIENTE.Value)+'-'+DM.TBProducaoCLI_NOME.Value,' ',65,taLeft));
//    WriteLn(F,'Endereco..........: '+AlignText(DM.TBProducaoCLI_ENDERECO.Value+', '+DM.TBProducaoCLI_NUMERO.Value+' - '+DM.TBProducaoCLI_BAIRRO.Value,' ',65,taLeft));
//    WriteLn(F,'Cidade/UF/CEP/Fone: '+AlignText(DM.TBProducaoCLI_CIDADE.Value+' / '+DM.TBProducaoCLI_ESTADO.Value+' / '+DM.TBProducaoCLI_CEP.Value+' / '+DM.TBProducaoCLI_FONE1.Value,' ',65,taLeft));
//    WriteLn(F,'Codigo------+Descricao-----------------------------------------------------------------------------------+-Uni-+-------Qtde+-----Almoxarifado+------------------');
//  end;
//begin
//  DM.TBProducaoItens.FetchAll;
//  QtdeItens:=DM.TBProducaoItens.RecordCount;
//  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\OrdemProducao.txt');
//  Rewrite(F);
//  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
//  for I := 1 to DM.TBParametrosPAR_PRODUCAOLI.Value do
//  WriteLn(F,'');
//  Cabecalho;
//  DM.TBProducaoItens.First;
//  ContaItem:=1;
//  ContaLin:=1;
//  while not DM.TBProducaoItens.Eof do //comeca a imprimir os itens da ordem de producao.
//  begin
//    WriteLn(F,AlignText(IntToStr(DM.TBProducaoItensPDI_PRODUTO.Value),' ',12,taLeft)+'|'+
//              AlignText(DM.TBProducaoItensPRO_NOME.Value,' ',92,taLeft)+'|'+
//              AlignText(DM.TBProducaoItensPRO_UNIDADE.Value,' ',4,taRight)+' |'+
//              AlignText(DM.TBProducaoItensPDI_QUANTIDADE.AsString,' ',11,taRight)+'|'+
//              AlignText(IntToStr(DM.TBProducaoItensPDI_ALMOXARIFADO.Value),' ',17,taRight)+'|');
//    ContaLin:=ContaLin+1;
//    if (ContaLin>DM.TBParametrosPAR_PRODUCAOQL.Value) and (ContaItem<QtdeItens) then
//    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
//      WriteLn(F,'------------+--------------------------------------------------------------------------------------------+-----+-----------+-----------------+------------------');
//      WriteLn(F,'OBSERVACOES: '+FormProducao.DBMemo1.Lines[0]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[1]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[2]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[3]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[4]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[5]);
//      WriteLn(F,''+FormProducao.DBMemo1.Lines[6]);
//      WriteLn(F,'----------------------------------------------------------------------------------------------------------------------------------------------------------------');
//      for I:=1 to DM.TBParametrosPAR_PRODUCAOLF.Value do
//      WriteLn(F,'');
//      for I:=1 to DM.TBParametrosPAR_PRODUCAOLI.Value do
//      WriteLn(F,''); //refaz o cabecalho todo.
//      Cabecalho;
//      ContaLin:=1; //zera o contador de linhas.
//    end;
//    DM.TBProducaoItens.Next;
//    ContaItem:=ContaItem+1;
//  end;
//  for I:=ContaLin to DM.TBParametrosPAR_PRODUCAOQL.Value do //preenche as linhas restantes.
//  WriteLn(F,'            |                                                                                            |     |           |                 |                  ');
//  WriteLn(F,'------------+--------------------------------------------------------------------------------------------+-----+-----------+-----------------+------------------');
//  WriteLn(F,'OBSERVACOES: '+FormProducao.DBMemo1.Lines[0]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[1]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[2]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[3]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[4]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[5]);
//  WriteLn(F,''+FormProducao.DBMemo1.Lines[6]);
//  WriteLn(F,'----------------------------------------------------------------------------------------------------------------------------------------------------------------');
//  for I := 1 to DM.TBParametrosPAR_PRODUCAOLF.Value do
//  WriteLn(F,'');
//  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
//  CloseFile(F);
//  PrintFile(DM.DebugPrint,DM.Commandcom,'OrdemProducao.txt',ProducaoPorta);
//end;

//procedure ImprimirPlanoProducao;
//var
//  QtdeItens: Integer;
//  ContaItem: Integer;
//  ContaLin: Integer;
//  I: Integer;
//  F: TextFile;
//  procedure Cabecalho;
//  begin
//    WriteLn(F,'================================================================================================================================================================');
//    WriteLn(F,AlignText(DM.TBEmpresaEMP_NOME.Value+' - '+DM.TBEmpresaEMP_ENDERECO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value,' ',160,taLeft));
//    WriteLn(F,DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
//    WriteLn(F,'================================================================================================================================================================');
//    WriteLn(F,'Ordem de Producao.: '+AlignText(IntToStr(DM.TBProducaoPRD_CODIGO.Value),' ',15,taLeft)+'Data: '+DateToStr(DM.TBProducaoPRD_DTCADASTRO.Value,FS)+'     Data Previsao: '+DateToStr(DM.TBProducaoPRD_DTPREVISAO.Value,FS)+'       Responsável.: ______________________________');
//    WriteLn(F,'Cliente...........: '+AlignText(IntToStr(DM.TBProducaoPRD_CLIENTE.Value)+'-'+DM.TBProducaoCLI_NOME.Value,' ',65,taLeft)+'   Pré Montagem: ______________________________');
//    WriteLn(F,'Produto...........: '+AlignText(IntToStr(FormProducaoQ06.FDQuery1PDI_PRODUTO.Value)+' - '+FormProducaoQ06.FDQuery1PRO_NOME.Value,' ',65,taLeft)+'   Montagem....: ______________________________');
//    WriteLn(F,'Quantidade........: '+AlignText(FormProducaoQ06.FDQuery1PDI_QUANTIDADE.AsString,' ',65,taLeft)+'   Conexões....: ______________________________');
//    WriteLn(F,'Almoxarifado......: '+AlignText(FormProducaoQ06.FDQuery1ALM_DESCRICAO.Value,' ',65,taLeft)+'   Inspeção....: ______________________________');
//    WriteLn(F,AlignText('OBS: '+FormProducao.DBMemo1.Lines[0],' ',85,taLeft)+'   Embalagem...: ______________________________');
//    WriteLn(F,AlignText(FormProducao.DBMemo1.Lines[1],' ',85,taLeft)+'   Arquivo.....: ______________________________');
//    WriteLn(F,'Codigo------+Descricao------------------------------------------------------------------------+-Uni-+-------Qtde+------Total+-------------Lote+---------Operador');
//  end;
//begin
//  FormProducaoQ06.FDQuery2.FetchAll;
//  QtdeItens:=DM.TBProducaoItens.RecordCount;
//  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\PlanoProducao.txt');
//  Rewrite(F);
//  Write(F,CPI12+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOn); //comandos.
//  for I := 1 to DM.TBParametrosPAR_PRODUCAOLI.Value do
//  WriteLn(F,'');
//  Cabecalho;
//  ContaItem:=1;
//  ContaLin:=1;
//  while not FormProducaoQ06.FDQuery2.Eof do
//  begin
//    WriteLn(F,AlignText(IntToStr(FormProducaoQ06.FDQuery2PRC_PRODUTOCOMP.Value),' ',12,taLeft)+'|'+
//              AlignText(FormProducaoQ06.FDQuery2PRO_NOME.Value,' ',81,taLeft)+'|'+
//              AlignText(FormProducaoQ06.FDQuery2PRO_UNIDADE.Value,' ',5,taLeft)+'|'+
//              AlignText(FormProducaoQ06.FDQuery2PRC_QUANTIDADE.AsString,' ',11,taRight)+'|'+
//              AlignText(FloatToStr(FormProducaoQ06.FDQuery2PRC_QUANTIDADE.AsExtended*FormProducaoQ06.FDQuery1PDI_QUANTIDADE.AsExtended),' ',11,taRight)+'|_________________|_________________');
//    ContaLin:=ContaLin+1;
//    if (ContaLin>DM.TBParametrosPAR_PRODUCAOQL.Value) and (ContaItem<QtdeItens) then
//    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
//      WriteLn(F,'------------+---------------------------------------------------------------------------------+-----+-----------+-----------+-----------------+-----------------');
//      for I:=1 to DM.TBParametrosPAR_PRODUCAOLF.Value do
//      WriteLn(F,'');
//      for I:=1 to DM.TBParametrosPAR_PRODUCAOLI.Value do
//      WriteLn(F,''); //refaz o cabecalho todo.
//      Cabecalho;
//      ContaLin:=1; //zera o contador de linhas.
//    end;
//    FormProducaoQ06.FDQuery2.Next;
//    ContaItem:=ContaItem+1;
//  end;
//  for I:=ContaLin to DM.TBParametrosPAR_PRODUCAOQL.Value do //preenche as linhas restantes.
//  WriteLn(F,'            |                                                                                 |     |           |           |                 |                 ');
//  WriteLn(F,'------------+---------------------------------------------------------------------------------+-----+-----------+-----------+-----------------+-----------------');
//  for I := 1 to DM.TBParametrosPAR_PRODUCAOLF.Value do
//  WriteLn(F,'');
//  Write(F,CPI10+MNOff+MIOff+MSOff+MEOff+EL16+MROn+MCOff); //comandos.
//  CloseFile(F);
//  PrintFile(DM.DebugPrint,DM.Commandcom,'PlanoProducao.txt',ProducaoPorta);
//end;

{procedure ImprimirServicosA;
var F : TextFile;
    I : Word;
begin
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\SERVICOS.TXT');
  Rewrite(F);
  for I := 1 to DM.TBParametrosPAR_SERVICOSLI.Value do
  WriteLn(F,'');
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBServicosSER_CLIENTE.Value;
  DM.TBClientes.Open;
  WriteLn(F,MROn+MCOn+CPI12+EL16+'===============================================================================================================================================================');
  WriteLn(F,LD+DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
  WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
  WriteLn(F,'===============================================================================================================================================================');
  WriteLn(F,LD+AlignText('...:::   O R D E M   D E   S E R V I C O   :::...',' ',80,taCenter));
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,'Cliente......: '+AlignText(IntToStr(DM.TBServicosSER_CLIENTE.Value)+' - '+DM.TBServicosCLI_NOME.Value,' ',160,taLeft));
  WriteLn(F,'Endereco.....: '+AlignText(DM.TBClientesCLI_ENDERECO.Value+' '+DM.TBClientesCLI_NUMERO.Value+' - '+DM.TBClientesCLI_CEP.value,' ',145,taLeft));
  WriteLn(F,'Bairro.......: '+AlignText(DM.TBClientesCLI_BAIRRO.Value,' ',55,taLeft)+'Cidade....: '+AlignText(DM.TBClientesCLI_CIDADE.Value+' - '+DM.TBClientesCLI_ESTADO.Value,' ',60,taLeft));
  WriteLn(F,'Codigo O.S...: '+MEOn+AlignText(IntToStr(DM.TBServicosSER_CODIGO.Value),' ',55,taLeft)+MEOff+'Produto...: '+AlignText(DM.TBServicosEQP_DESCRICAO.Value,' ',60,taLeft));
  WriteLn(F,'Marca........: '+AlignText(DM.TBServicosSER_MARCA.Value,' ',55,taLeft)+'Modelo....: '+AlignText(DM.TBServicosEQP_MODELO.Value,' ',60,taLeft));
  WriteLn(F,'Serial.......: '+AlignText(DM.TBServicosSER_SERIE.Value,' ',55,taLeft)+'Acessorios: '+AlignText(DM.TBServicosEQP_ACESSORIOS.Value,' ',60,taLeft));
  if DM.TBServicosSER_DTNOTAFISCAL.IsNull then //evita imprimir 31/12/1899.
  WriteLn(F,'Revendedor...: '+AlignText(DM.TBServicosSER_REVENDEDOR.Value,' ',55,taLeft)+'Num. NF...: '+AlignText(IntToStr(DM.TBServicosSER_NUMERONF.Value),' ',8,taLeft)+'Data NF.: ') else
  WriteLn(F,'Revendedor...: '+AlignText(DM.TBServicosSER_REVENDEDOR.Value,' ',55,taLeft)+'Num. NF...: '+AlignText(IntToStr(DM.TBServicosSER_NUMERONF.Value),' ',8,taLeft)+'Data NF.: '+DateToStr(DM.TBServicosSER_DTNOTAFISCAL.Value,FS));
  WriteLn(F,'Data de Ent..: '+AlignText(DateToStr(DM.TBServicosSER_DTENTRADA.Value,FS),' ',55,taleft)+'Data Prev.: '+DateToStr(DM.TBServicosSER_DTPREVISAO.Value,FS));
  WriteLn(F,'Senha Online.: '+DM.TBServicosSER_SENHAONLINE.Value+' - Consulte em: '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  WriteLn(F,'Defeito aleg.: '+AlignText(FormServicos.DBMemo1.Lines[0],' ',145,taLeft));
  for I := 1 to 4 do
  WriteLn(F,'               '+AlignText(FormServicos.DBMemo1.Lines[I],' ',145,taLeft));
  WriteLn(F,'===============================================================================================================================================================');
  WriteLn(F,'_______________________________________________________________________________________________________________________________________________________________');
  WriteLn(F,'');
  WriteLn(F,'_______________________________________________________________________________________________________________________________________________________________');
  WriteLn(F,'');
  WriteLn(F,'_______________________________________________________________________________________________________________________________________________________________');
  WriteLn(F,AlignText(DM.TBParametrosPAR_SERVICOSRPA.Value,' ',160,taCenter));
  for I := 1 to DM.TBParametrosPAR_SERVICOSLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MCOff); //volta o modo de impressao ao normal.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Servicos.txt',ServicosPorta);
end;  }

{procedure ImprimirServicosF;
var F : TextFile;
    I : Word;
begin
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\Servicos.txt'); //var PortaOS no form main.
  Rewrite(F);
  for I := 1 to DM.TBParametrosPAR_SERVICOSLI.Value do
  WriteLn(F,'');
  WriteLn(F,MROn+MCOn+CPI12+EL16+'===============================================================================================================================================================');
  WriteLn(F,LD+DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
  WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
  WriteLn(F,'===============================================================================================================================================================');
  WriteLn(F,LD+AlignText('...:::   O R D E M   D E   S E R V I C O   :::...',' ',80,taCenter));
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,'Cliente......: '+AlignText(IntToStr(DM.TBServicosSER_CLIENTE.Value)+'-'+DM.TBServicosCLI_NOME.Value,' ',145,taLeft));
  WriteLn(F,'Codigo O.S...: '+MEOn+AlignText(IntToStr(DM.TBServicosSER_CODIGO.Value),' ',55,taLeft)+MEOff+'Produto...: '+AlignText(DM.TBServicosSER_PRODUTO.Value,' ',60,taLeft));
  WriteLn(F,'Marca........: '+AlignText(DM.TBServicosSER_MARCA.Value,' ',55,taLeft)+'Modelo....: '+AlignText(DM.TBServicosSER_MODELO.Value,' ',60,taLeft));
  WriteLn(F,'Serial.......: '+AlignText(DM.TBServicosSER_SERIE.Value,' ',55,taLeft)+'Acessorios: '+AlignText(DM.TBServicosSER_ACESSORIOS.Value,' ',60,taLeft));
  if DM.TBServicosSER_DTNOTAFISCAL.IsNull then
  WriteLn(F,'Revendedor...: '+AlignText(DM.TBServicosSER_REVENDEDOR.Value,' ',55,taLeft)+'Num. NF...: '+AlignText(IntToStr(DM.TBServicosSER_NUMERONF.Value),' ',8,taLeft)+'Data NF.: ') else
  WriteLn(F,'Revendedor...: '+AlignText(DM.TBServicosSER_REVENDEDOR.Value,' ',55,taLeft)+'Num. NF...: '+AlignText(IntToStr(DM.TBServicosSER_NUMERONF.Value),' ',8,taLeft)+'Data NF.: '+DateToStr(DM.TBServicosSER_DTNOTAFISCAL.Value,FS));
  WriteLn(F,'Data de Ent..: '+AlignText(DateToStr(DM.TBServicosSER_DTENTRADA.Value,FS),' ',55,taLeft)+'Data Saida: '+DateToStr(DM.TBServicosSER_DTSAIDA.Value,FS));
  WriteLn(F,'Senha Online.: '+DM.TBServicosSER_SENHAONLINE.Value+' - Consulte em: '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  WriteLn(F,'Defeito aleg.: '+AlignText(FormServicos.DBMemo1.Lines[0],' ',145,taLeft));
  for I := 1 to 5 do
  WriteLn(F,'               '+AlignText(FormServicos.DBMemo1.Lines[I],' ',145,taLeft));
  WriteLn(F,'Servico Efet.: '+AlignText(FormServicos.DBMemo2.Lines[0],' ',145,taLeft));
  for I := 1 to 5 do
  WriteLn(F,'               '+AlignText(FormServicos.DBMemo2.Lines[I],' ',145,taLeft));
  WriteLn(F,'Valor Produtos: '+AlignText(Format('%m',[DM.TBServicosSER_TOTALPRODUTOS.AsExtended]),' ',15,taLeft)+' Valor Servicos: '+AlignText(Format('%m',[DM.TBServicosSER_TOTALSERVICOS.AsExtended]),' ',15,taLeft)+' Valor desconto: '+AlignText(Format('%m',[DM.TBServicosSER_DESCVALOR.AsExtended]),' ',15,taLeft)+' Valor Total: '+Format('%m',[DM.TBServicosSER_VALORTOTAL.AsExtended]));
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_SERVICOSRPF.Value,' ',160,taCenter));
  for I := 1 to DM.TBParametrosPAR_SERVICOSLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MCOff); //volta o modo de impressao ao normal.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Servicos.txt',ServicosPorta);
end; }

{procedure ImprimirServicosOrc;
var F : TextFile;
    I, ContaLin, ContaItem, QtdeItens : Word;
begin
  DM.TBServicosItens.FetchAll;
  QtdeItens:=DM.TBServicosItens.RecordCount;
  AssignFile(F,ExtractFilePath(Application.ExeName)+'PRINT\ServicosOrc.txt');
  Rewrite(F);
  for I := 1 to DM.TBParametrosPAR_SERVICOSORCLI.Value do
  WriteLn(F,'');
  WriteLn(F,MROn+MCOn+CPI12+EL16+'===============================================================================================================================================================');
  WriteLn(F,LD+DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
  WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
  WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
  WriteLn(F,'===============================================================================================================================================================');
  WriteLn(F,LD+AlignText('...:::   O R C A M E N T O   :::...',' ',160,taCenter));
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,'Cliente......: '+AlignText(IntToStr(DM.TBClientesCLI_CODIGO.Value)+'-'+DM.TBClientesCLI_NOME.Value,' ',65,taLeft));
  WriteLn(F,'Cod O.S......: '+AlignText(IntToStr(DM.TBServicosSER_CODIGO.Value)+' - '+DM.TBServicosSER_PRODUTO.Value,' ',49,taLeft)+'Data: '+DateToStr(Date,FS));
  WriteLn(F,'');
  WriteLn(F,'CODIGO--+-DESCRICAO-------------------------------------------------------------------------------------+P/S+-UN-+--QTDE--+--VALOR UNITARIO--+------TOTAL------');
  DM.TBServicosItens.First;
  ContaItem:=1;
  ContaLin:=1;
  while not DM.TBServicosItens.Eof do //comeca a imprimir os itens do orcamento.
  begin
    WriteLn(F,AlignText(IntToStr(DM.TBServicosItensSEI_PRODUTO.Value),' ',8,taLeft)+'|'+
              AlignText(DM.TBServicosItensSEI_DESCRICAO.Value,' ',95,taLeft)+'|'+
              AlignText(DM.TBServicosItensSEI_TIPO.Value,' ',3,taCenter)+'|'+
              AlignText(DM.TBServicosItensSEI_UNIDADE.Value,' ',4,taLeft)+'|'+
              AlignText(DM.TBServicosItensSEI_QUANTIDADE.AsString,' ',8,taRight)+'|'+
              AlignText(Format('%m',[DM.TBServicosItensSEI_VALORUNIT.AsExtended]),' ',18,taRight)+'|'+
              AlignText(Format('%m',[DM.TBServicosItensSEI_VALORTOTAL.AsExtended]),' ',17,taRight));
    ContaLin:=ContaLin+1;
    if (ContaLin>DM.TBParametrosPAR_SERVICOSORCQL.Value) and (ContaItem<QtdeItens) then
    begin //chegou no final da folha, pula as linhas do final e do comeco da proxima folha.
      WriteLn(F,'--------+-----------------------------------------------------------------------------------------------+---+----+--------+------------------+-----------------');
      WriteLn(F,'');
      WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
      WriteLn(F,AlignText(DM.TBParametrosPAR_SERVICOSORCRP.Value,' ',160,taCenter));
      for I:=1 to DM.TBParametrosPAR_SERVICOSORCLF.Value do
      WriteLn(F,'');
      for I:=1 to DM.TBParametrosPAR_SERVICOSORCLI.Value do
      WriteLn(F,''); //refaz o cabecalho todo.
      WriteLn(F,'===============================================================================================================================================================');
      WriteLn(F,LD+DM.TBEmpresaEMP_NOME.Value);
      WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value);
      WriteLn(F,DM.TBEmpresaEMP_BAIRRO.Value+' - '+DM.TBEmpresaEMP_CIDADE.Value+' - '+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_HOMEPAGE.Value);
      WriteLn(F,'Fones: '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_FONE2.Value);
      WriteLn(F,'===============================================================================================================================================================');
      WriteLn(F,LD+AlignText('...:::   O R C A M E N T O   :::...',' ',160,taCenter));
      WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
      WriteLn(F,'Cliente......: '+AlignText(IntToStr(DM.TBServicosSER_CLIENTE.Value)+' - '+DM.TBServicosCLI_NOME.Value,' ',65,taLeft));
      WriteLn(F,'Cod Orcamento: '+AlignText(IntToStr(DM.TBServicosSER_CODIGO.Value)+' - '+DM.TBServicosSER_PRODUTO.Value,' ',65,taLeft)+'Data: '+DateToStr(Date,FS));
      WriteLn(F,'');
      WriteLn(F,'CODIGO--+-DESCRICAO-------------------------------------------------------------------------------------+P/S+-UN-+--QTDE--+--VALOR UNITARIO--+------TOTAL------');

      ContaLin:=1; //zera o contador de linhas.
    end;
    DM.TBServicosItens.Next;
    ContaItem:=ContaItem+1;
  end;
  for I:=ContaLin to DM.TBParametrosPAR_SERVICOSORCQL.Value do //preenche as linhas restantes.
  WriteLn(F,'        |                                                                                               |   |    |        |                  |                 ');
  WriteLn(F,'--------+-----------------------------------------------------------------------------------------------+---+----+--------+------------------+-----------------');
  WriteLn(F,'Valor Produtos: '+AlignText(Format('%m',[DM.TBServicosSER_TOTALPRODUTOS.AsExtended]),' ',15,taLeft)+' Valor Servicos: '+AlignText(Format('%m',[DM.TBServicosSER_TOTALSERVICOS.AsExtended]),' ',15,taLeft)+' Valor Desconto: '+AlignText(Format('%m',[DM.TBServicosSER_DESCVALOR.AsExtended]),' ',15,taLeft)+' Valor Total: '+Format('%m',[DM.TBServicosSER_VALORTOTAL.AsExtended]));
  WriteLn(F,'---------------------------------------------------------------------------------------------------------------------------------------------------------------');
  WriteLn(F,AlignText(DM.TBParametrosPAR_SERVICOSORCRP.Value,' ',160,taCenter));
  for I := 1 to DM.TBParametrosPAR_SERVICOSORCLF.Value do
  WriteLn(F,'');
  Write(F,CPI10+MCOff); //volta o modo de impressao ao normal.
  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'ServicosOrc.txt',ServicosOrcPorta);
end; }

procedure LogoTipo(Form: TForm; Tamanho: Integer=1);
begin
  if DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value='N' then
  begin
    //O cabeçalho dos relatórios devem conter esses componentes abaixo.
    //Altura cabeçalho: 65.
    //Fonte Times tamanho 12 para o nome da empresa.
    //Fonte Arial tamanho 8 para email, cnpj, fone, data, página.
    //Fonte Arial Negrito e Italico tamanho 8 para a descrição do relatório.
    //O campo date time deve estar com o valor de left em 680 e 1009 para landscape.
    //O campo nosso_nome deve estar com o valor de left em 671. e 1001 para landscape.
    TQRDBText(Form.FindComponent('EMPRESA')).Left:=3;
    TQRDBText(Form.FindComponent('EMAIL')).Left:=3;
    TQRDBText(Form.FindComponent('CNPJ')).Left:=3;
    TQRDBText(Form.FindComponent('FONE1')).Left:=3;
    TQRImage(Form.FindComponent('IMAGEM')).Visible:=False;
  end else
  begin
    try
      if Tamanho=1 then
      TQRImage(Form.FindComponent('IMAGEM')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_120x60.jpg') else
      if Tamanho=2 then
      begin
        TQRImage(Form.FindComponent('IMAGEM')).Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Logo_Empresa_290x60.jpg');
        TQRImage(Form.FindComponent('IMAGEM')).Width:=290;
        TQRDBText(Form.FindComponent('EMPRESA')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('EMAIL')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('CNPJ')).Font.Color:=clWhite;
        TQRDBText(Form.FindComponent('FONE1')).Font.Color:=clWhite;
      end;
      except on exception do //nothing.
    end;
  end;
end;

procedure RestaurarTamanhoForm(Formulario: TForm; Usuario: Integer);
begin
  if DM2.TBForms.Locate('FMS_FORM;FMS_USUARIO',VarArrayOf([Formulario.Name,Usuario]),[]) then
  begin
    Formulario.Width:=DM2.TBFormsFMS_WIDTH.Value;
    Formulario.Height:=DM2.TBFormsFMS_HEIGHT.Value;
    Formulario.Top:=DM2.TBFormsFMS_TOP.Value;
    Formulario.Left:=DM2.TBFormsFMS_LEFT.Value;
  end;
end;

procedure SalvarConsultaSQL(Formulario: String; Usuario: Integer; SQL: String);
begin
  if DM2.TBSqls.Locate('SQL_FORM;SQL_USUARIO',VarArrayOf([Formulario,Usuario]),[]) then
  begin
    DM2.TBSqls.Edit;
    DM2.TBSqlsSQL_QUERY.Value:=SQL;
    DM2.TBSqls.Post;
  end else
  begin
    DM2.TBSqls.Insert;
    DM2.TBSqlsSQL_FORM.Value:=Formulario;
    DM2.TBSqlsSQL_USUARIO.Value:=Usuario;
    DM2.TBSqlsSQL_QUERY.Value:=SQL;
    DM2.TBSqls.Post;
  end;
end;

procedure SalvarTamanhoForm(Formulario: String; Usuario, W,H,T,L: Integer);
begin
  if DM2.TBForms.Locate('FMS_FORM;FMS_USUARIO',VarArrayOf([Formulario,Usuario]),[]) then
  begin
    DM2.TBForms.Edit;
    DM2.TBFormsFMS_WIDTH.Value:=W;
    DM2.TBFormsFMS_HEIGHT.Value:=H;
    DM2.TBFormsFMS_TOP.Value:=T;
    DM2.TBFormsFMS_LEFT.Value:=L;
    DM2.TBForms.Post;
  end else
  begin
    DM2.TBForms.Insert;
    DM2.TBFormsFMS_FORM.Value:=Formulario;
    DM2.TBFormsFMS_USUARIO.Value:=Usuario;
    DM2.TBFormsFMS_WIDTH.Value:=W;
    DM2.TBFormsFMS_HEIGHT.Value:=H;
    DM2.TBFormsFMS_TOP.Value:=T;
    DM2.TBFormsFMS_LEFT.Value:=L;
    DM2.TBForms.Post;
  end;
end;

procedure SetDataUltimaUtilizacao;
begin
  if not DM.TBEmpresa.Active then
  Exit;
  DM.TBEmpresa.Edit;
  DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value:=SenhaEncode(AnsiString(DateToStr(Date,FS)),ChaveSenhaNEW);
  DM.TBEmpresa.Post;
end;

procedure ImprimirDeliveryTermica;
var F: TextFile;
    I: Byte;
    SL: TStringList;
begin
  try
    AssignFile(F,ExtractFilePath(Application.ExeName)+'\Print\Delivery.txt');
    Rewrite(F);
    except on exception do
    begin
      MessageDlg('Não foi possível criar arquivo temporário: Delivery.txt.',mtError,[mbOk],0);
      CloseFile(F);
      Exit;
    end;
  end;

  for I := 1 to DM.TBParametrosPAR_VENDASLI.Value do
  begin //linhas iniciais
    WriteLn(F,'');
  end;
  //#27#116#2 4=PC858 multilingual 1 ou 3=PC437 5=PC852 latin2 6=PC860 portuguese.
  //#27#29#116#70 ...
  //#27#77 0,1,48,49 fonte A ou fonte B.
  //#27#97 0,48 1,49 2,50 alinhamento - left - center - right.
  //#29#86 1,49 corte parcial
  //corte de papel? #29,V,#66,#0;
  //WriteLn(F,#27#29#116#0+#27#77#49+'========================================================'); //56 colunas condensado... 42 colunas normal. - epson TM-T81.
  WriteLn(F,#27#77#49+#27#97#48+'========================================================'); //56 colunas condensado... 42 colunas normal. - epson TM-T81.
  WriteLn(F,DM.TBEmpresaEMP_NOME.Value);
  WriteLn(F,DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value);
  WriteLn(F,DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  WriteLn(F,'========================================================');
  WriteLn(F,'Venda..: '+AlignText(IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',15,taLeft),'                Data: '+DateToStr(Date));
  WriteLn(F,'Cliente: '+DM2.TBDeliverysCLI_NOME.Value);
  WriteLn(F,'Fone...: '+DM2.TBDeliverysDLV_FONE1.Value+' - '+DM2.TBDeliverysDLV_FONE2.Value);
  if DM2.TBDeliverysDLV_RETIRA.Value='N' then
  begin
    WriteLn(F,DM2.TBDeliverysDLV_ENDERECO.Value+', '+DM2.TBDeliverysDLV_NUMERO.Value);
    WriteLn(F,DM2.TBDeliverysDLV_BAIRRO.Value);
    WriteLn(F,DM2.TBDeliverysDLV_COMPLEMENTO.Value);
  end else
  WriteLn(F,'RETIRA NO LOCAL');
  WriteLn(F,'--------------------------------------------------------');
  WriteLn(F,'Qtde Produto                                       Total');
  //WriteLn(F,'--------------------------------------------------------');
  DM2.TBDeliverysItens.First;
  while not DM2.TBDeliverysItens.Eof do
  begin
    if (Copy(DM2.TBDeliverysItensDLI_NOME.Value,1,1)<>'+') and
       (Copy(DM2.TBDeliverysItensDLI_NOME.Value,1,1)<>'-') and
       (Copy(DM2.TBDeliverysItensDLI_NOME.Value,1,1)<>'*')
    then
    WriteLn(F,'--------------------------------------------------------');
    Write(F,AlignText(DM2.TBDeliverysItensDLI_QUANTIDADE.AsString,'0',4,taRight)+' ');
    Write(F,AlignText(DM2.TBDeliverysItensDLI_NOME.Value,' ',43,taLeft));
    WriteLn(F,AlignText(Format('%n',[DM2.TBDeliverysItensDLI_VALORTOTAL.AsExtended]),' ',8,taRight));
    if DM2.TBDeliverysItensDLI_COMPLEMENTO.Value<>'' then
    WriteLn(F,'     '+AlignText(DM2.TBDeliverysItensDLI_COMPLEMENTO.Value,' ',51,taLeft));

    DM2.TBDeliverysItens.Next;
  end;

  WriteLn(F,'--------------------------------------------------------');
  WriteLn(F,'TAXA......: '+AlignText(Format('%m',[DM2.TBDeliverysDLV_TOTALTAXA.AsExtended]),' ',12,taRight)+'       VALOR TOTAL: '+AlignText(Format('%m',[DM2.TBDeliverysDLV_VALORTOTAL.AsExtended]),' ',12,taRight));
  WriteLn(F,'DINHEIRO..: '+AlignText(Format('%m',[DM2.TBDeliverysDLV_DINHEIRO.AsExtended]),' ',12,taRight));
  WriteLn(F,'CARTAO....: '+AlignText(Format('%m',[0.00]),' ',12,taRight)+'       TROCO......: '+AlignText(Format('%m',[DM2.TBDeliverysDLV_TROCO.AsExtended]),' ',12,taRight));
  WriteLn(F,'========================================================');
  WriteLn(F,'Entregador: '+DM2.TBDeliverysVEN_NOMEENTREGADOR.Value);

  if DM2.TBDeliverysDLV_OBSERVACOES.Value<>'' then
  begin
    WriteLn(F,DM2.TBDeliverysDLV_OBSERVACOES.Value);
    WriteLn(F,'========================================================');
  end;
  WriteLn(F,'DOCUMENTO SEM VALOR FISCAL!');
  WriteLn(F,DM.TBParametrosPAR_VENDASRP.Value);

  for I := 1 to DM.TBParametrosPAR_VENDASLF.Value do
  begin
    WriteLn(F,'');
  end;

  //corte de papel... #29#86#1 formato de preenchimento do campo: 29,86,1 .
  SL:=TStringList.Create;
  SL.Clear;
  SL.Delimiter:=',';
  SL.DelimitedText:=DM.TBParametrosPAR_CORTEPAPEL.Value;
  for I := 0 to SL.Count-1 do
    Write(F,Chr(StrToInt(SL.Strings[I])));
  SL.Destroy;
  //...

  CloseFile(F);
  PrintFile(DM.DebugPrint,DM.Commandcom,'Delivery.txt',DM.VendasPorta);
end;

function CalcularPrecoVendaComposto(ProdutoID: Integer): Currency;
var QY: TFDQuery;
  CustoTotal: Currency;
begin
  CustoTotal:=0;
  QY:=TFDQuery.Create(nil);
  try
    QY.Connection:=DM.FDConnection1;
    // Buscamos os itens da composição e o status se o item é composto ou não
    QY.SQL.Add(
      'SELECT C.PRC_PRODUTOCOMP, C.PRC_QUANTIDADE, P.PRO_COMPOSTO, P.PRO_PRECOVENDA '+
      'FROM PRODUTOSCOMP C '+
      'LEFT JOIN PRODUTOS P ON C.PRC_PRODUTOCOMP = P.PRO_CODIGO '+
      'WHERE C.PRC_PRODUTO = :codigo'
    );
    QY.ParamByName('codigo').AsInteger:=ProdutoID;
    QY.Open;

    while not QY.Eof do
    begin
      if QY.FieldByName('PRO_COMPOSTO').AsString='S' then
      begin
        // Se o subitem também for composto, chama a função recursivamente
        CustoTotal:=CustoTotal+(CalcularPrecoVendaComposto(QY.FieldByName('PRC_PRODUTOCOMP').AsInteger) * QY.FieldByName('PRC_QUANTIDADE').AsFloat);
      end else
      begin
        // Se for item simples, usa o preço de venda
        CustoTotal:=CustoTotal+(QY.FieldByName('PRO_PRECOVENDA').AsCurrency * QY.FieldByName('PRC_QUANTIDADE').AsFloat);
      end;
      QY.Next;
    end;
  finally
    QY.Free;
  end;
  Result:=CustoTotal;
end;

//#################################################################################################
{$REGION 'Loc Agrupadores'}
procedure LocAgrupadoresBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormAgrupadoresLoc, FormAgrupadoresLoc);
  FormAgrupadoresLoc.ShowModal;
  if FormAgrupadoresLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormAgrupadoresLoc.QYAgrupadoresAGR_CODIGO.Value);
    Descricao.Text:=FormAgrupadoresLoc.QYAgrupadoresAGR_DESCRICAO.Value;
  end;
  FormAgrupadoresLoc.Free;
  FormAgrupadoresLoc:=nil;
end;

procedure LocAgrupadoresBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormAgrupadoresLoc, FormAgrupadoresLoc);
  FormAgrupadoresLoc.ShowModal;
  if FormAgrupadoresLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormAgrupadoresLoc.QYAgrupadoresAGR_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormAgrupadoresLoc.QYAgrupadoresAGR_DESCRICAO.Value;
  end;
  FormAgrupadoresLoc.Free;
  FormAgrupadoresLoc:=nil;
end;

procedure LocAgrupadoresExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYAgrupadores.Close;
    DMS.QYAgrupadores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAgrupadores.Open;
    if not DMS.QYAgrupadores.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYAgrupadoresAGR_CODIGO.Value);
      Descricao.Text:=DMS.QYAgrupadoresAGR_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Agrupador não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAgrupadores.Close;
  end;
end;

procedure LocAgrupadoresExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYAgrupadores.Close;
    DMS.QYAgrupadores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAgrupadores.Open;
    if not DMS.QYAgrupadores.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYAgrupadoresAGR_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYAgrupadoresAGR_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Agrupador não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAgrupadores.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Almoxarifados'}
procedure LocAlmoxarifadosBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormAlmoxarifadosLoc, FormAlmoxarifadosLoc);
  FormAlmoxarifadosLoc.ShowModal;
  if AlmoxarifadosLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormAlmoxarifadosLoc.QYAlmoxarifadosALM_CODIGO.Value);
    Descricao.Text:=FormAlmoxarifadosLoc.QYAlmoxarifadosALM_DESCRICAO.Value;
  end;
  FormAlmoxarifadosLoc.Free;
  FormAlmoxarifadosLoc:=nil;
end;

procedure LocAlmoxarifadosBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormAlmoxarifadosLoc, FormAlmoxarifadosLoc);
  FormAlmoxarifadosLoc.ShowModal;
  if AlmoxarifadosLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormAlmoxarifadosLoc.QYAlmoxarifadosALM_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormAlmoxarifadosLoc.QYAlmoxarifadosALM_DESCRICAO.Value;
  end;
  FormAlmoxarifadosLoc.Free;
  FormAlmoxarifadosLoc:=nil;
end;

procedure LocAlmoxarifadosExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYAlmoxarifados.Close;
    DMS.QYAlmoxarifados.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAlmoxarifados.Open;
    if not DMS.QYAlmoxarifados.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYAlmoxarifadosALM_CODIGO.Value);
      Descricao.Text:=DMS.QYAlmoxarifadosALM_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Almoxarifado não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAlmoxarifados.Close;
  end;
end;

procedure LocAlmoxarifadosExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYAlmoxarifados.Close;
    DMS.QYAlmoxarifados.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAlmoxarifados.Open;
    if not DMS.QYAlmoxarifados.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYAlmoxarifadosALM_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYAlmoxarifadosALM_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Almoxarifado não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAlmoxarifados.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Atividades'}
procedure LocAtividadesBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormAtividadesLoc, FormAtividadesLoc);
  FormAtividadesLoc.ShowModal;
  if AtividadesLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormAtividadesLoc.QYAtividadesATI_CODIGO.Value);
    Descricao.Text:=FormAtividadesLoc.QYAtividadesATI_DESCRICAO.Value;
  end;
  FormAtividadesLoc.Free;
  FormAtividadesLoc:=nil;
end;

procedure LocAtividadesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormAtividadesLoc, FormAtividadesLoc);
  FormAtividadesLoc.ShowModal;
  if AtividadesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormAtividadesLoc.QYAtividadesATI_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormAtividadesLoc.QYAtividadesATI_DESCRICAO.Value;
  end;
  FormAtividadesLoc.Free;
  FormAtividadesLoc:=nil;
end;

procedure LocAtividadesExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYAtividades.Close;
    DMS.QYAtividades.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAtividades.Open;
    if not DMS.QYAtividades.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYAtividadesATI_CODIGO.Value);
      Descricao.Text:=DMS.QYAtividadesATI_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Atividade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAtividades.Close;
  end;
end;

procedure LocAtividadesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYAtividades.Close;
    DMS.QYAtividades.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYAtividades.Open;
    if not DMS.QYAtividades.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYAtividadesATI_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYAtividadesATI_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Atividade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYAtividades.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Bancos'}
procedure LocBancosBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormBancosLoc, FormBancosLoc);
  FormBancosLoc.ShowModal;
  if BancosLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormBancosLoc.QYBancosBAN_CODIGO.Value);
    Nome.Text:=FormBancosLoc.QYBancosBAN_NOME.Value;
  end;
  FormBancosLoc.Free;
  FormBancosLoc:=nil;
end;

procedure LocBancosBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormBancosLoc, FormBancosLoc);
  FormBancosLoc.ShowModal;
  if BancosLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormBancosLoc.QYBancosBAN_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormBancosLoc.QYBancosBAN_NOME.Value;
  end;
  FormBancosLoc.Free;
  FormBancosLoc:=nil;
end;

procedure LocBancosExit(Codigo, Nome: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYBancos.Close;
    DMS.QYBancos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYBancos.Open;
    if not DMS.QYBancos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYBancosBAN_CODIGO.Value);
      Nome.Text:=DMS.QYBancosBAN_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Banco não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYBancos.Close;
  end;
end;

procedure LocBancosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYBancos.Close;
    DMS.QYBancos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYBancos.Open;
    if not DMS.QYBancos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYBancosBAN_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYBancosBAN_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Banco não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYBancos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Cidades'}
procedure LocCidadesBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value);
    Nome.Text:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure LocCidadesBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormEnderecosCidadesLoc, FormEnderecosCidadesLoc);
  FormEnderecosCidadesLoc.ShowModal;
  if EnderecosCidadesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormEnderecosCidadesLoc.QYCidadesCID_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormEnderecosCidadesLoc.QYCidadesCID_NOME.Value;
  end;
  FormEnderecosCidadesLoc.Free;
  FormEnderecosCidadesLoc:=nil;
end;

procedure LocCidadesExit(Codigo, Nome: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCidades.Open;
    if not DMS.QYCidades.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYCidadesCID_CODIGO.Value);
      Nome.Text:=DMS.QYCidadesCID_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Cidade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCidades.Close;
  end;
end;

procedure LocCidadesExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYCidades.Close;
    DMS.QYCidades.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCidades.Open;
    if not DMS.QYCidades.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYCidadesCID_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYCidadesCID_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Cidade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCidades.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc ClassFiscal'}
procedure LocClassFiscalBotao(Codigo, Descricao, Excecao: TEdit);
begin
  Application.CreateForm(TFormClassFiscalLoc, FormClassFiscalLoc);
  FormClassFiscalLoc.ShowModal;
  if ClassFiscalLoc.Procurar then
  begin
    Codigo.Text:=FormClassFiscalLoc.QYClassFiscalCLF_CODIGO.Value;
    Descricao.Text:=FormClassFiscalLoc.QYClassFiscalCLF_DESCRICAO.Value;
    Excecao.Text:=FormClassFiscalLoc.QYClassFiscalCLF_EXCECAO.Value.ToString;
  end;
  FormClassFiscalLoc.Free;
  FormClassFiscalLoc:=nil;
end;

procedure LocClassFiscalBotao(Codigo, Descricao, Excecao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormClassFiscalLoc, FormClassFiscalLoc);
  FormClassFiscalLoc.ShowModal;
  if ClassFiscalLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_DESCRICAO.Value;
    Tabela.FieldByName(Excecao.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_EXCECAO.Value;
  end;
  FormClassFiscalLoc.Free;
  FormClassFiscalLoc:=nil;
end;

procedure LocClassFiscalExit(Codigo, Descricao, Excecao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Excecao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYClassFiscal.Close;
    DMS.QYClassFiscal.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYClassFiscal.Open;
    DMS.QYClassFiscal.FetchAll;
    if not DMS.QYClassFiscal.IsEmpty then
    begin

      //se tiver mais de uma classificacao com o mesmo numero, abre a tela de localização de classificacoes já com a listagem das exceções.
      if DMS.QYClassFiscal.RecordCount>1 then
      begin
        Application.CreateForm(TFormClassFiscalLoc, FormClassFiscalLoc);
        FormClassFiscalLoc.QYClassFiscal.Close;
        FormClassFiscalLoc.QYClassFiscal.SQL.Clear;
        FormClassFiscalLoc.QYClassFiscal.SQL.Add('select CLF_CODIGO, CLF_DESCRICAO, CLF_EXCECAO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI from CLASSFISCAL where CLF_CODIGO like '+QuotedStr(Codigo.Text)+' order by CLF_CODIGO');
        FormClassFiscalLoc.QYClassFiscal.Open;
        FormClassFiscalLoc.ShowModal;
        if ClassFiscalLoc.Procurar then
        begin
          Codigo.Text:=FormClassFiscalLoc.QYClassFiscalCLF_CODIGO.Value;
          Descricao.Text:=FormClassFiscalLoc.QYClassFiscalCLF_DESCRICAO.Value;
          Excecao.Text:=FormClassFiscalLoc.QYClassFiscalCLF_EXCECAO.Value.ToString;
        end;
        FormClassFiscalLoc.Free;
        FormClassFiscalLoc:=nil;
      end else
      begin
        Codigo.Text:=DMS.QYClassFiscalCLF_CODIGO.Value;
        Descricao.Text:=DMS.QYClassFiscalCLF_DESCRICAO.Value;
        Excecao.Text:=DMS.QYClassFiscalCLF_EXCECAO.Value.ToString;
      end;

    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      Excecao.Clear;
      MessageDlg('Classificação Fiscal não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClassFiscal.Close;
  end;
end;

procedure LocClassFiscalExit(Codigo, Descricao, Excecao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Tabela.FieldByName(Excecao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYClassFiscal.Close;
    DMS.QYClassFiscal.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYClassFiscal.Open;
    DMS.QYClassFiscal.FetchAll;
    if not DMS.QYClassFiscal.IsEmpty then
    begin

      //se tiver mais de uma classificacao com o mesmo numero, abre a tela de localização de classificacoes já com a listagem das exceções.
      if DMS.QYClassFiscal.RecordCount>1 then
      begin
        Application.CreateForm(TFormClassFiscalLoc, FormClassFiscalLoc);
        FormClassFiscalLoc.QYClassFiscal.Close;
        FormClassFiscalLoc.QYClassFiscal.SQL.Clear;
        FormClassFiscalLoc.QYClassFiscal.SQL.Add('select CLF_CODIGO, CLF_DESCRICAO, CLF_EXCECAO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI from CLASSFISCAL where CLF_CODIGO like '+QuotedStr(Codigo.Text)+' order by CLF_CODIGO');
        FormClassFiscalLoc.QYClassFiscal.Open;
        FormClassFiscalLoc.ShowModal;
        if ClassFiscalLoc.Procurar then
        begin
          Tabela.FieldByName(Codigo.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_CODIGO.Value;
          Tabela.FieldByName(Descricao.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_DESCRICAO.Value;
          Tabela.FieldByName(Excecao.DataField).Value:=FormClassFiscalLoc.QYClassFiscalCLF_EXCECAO.Value;
        end;
        FormClassFiscalLoc.Free;
        FormClassFiscalLoc:=nil;
      end else
      begin
        Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYClassFiscalCLF_CODIGO.Value;
        Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYClassFiscalCLF_DESCRICAO.Value;
        Tabela.FieldByName(Excecao.DataField).Value:=DMS.QYClassFiscalCLF_EXCECAO.Value;
      end;

    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      Tabela.FieldByName(Excecao.DataField).Clear;
      MessageDlg('Classificação Fiscal não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClassFiscal.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc ClassTrib'}
procedure LocClassTribBotao(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TEdit);
begin
  Application.CreateForm(TFormClassTribLoc, FormClassTribLoc);
  FormClassTribLoc.ShowModal;
  if ClassTribLoc.Procurar then
  begin
    Codigo.Text:=FormClassTribLoc.QYClassTribCLT_CODIGO.Value;
    Descricao.Text:=FormClassTribLoc.QYClassTribCLT_DESCRICAO.Value;
    TributacaoRegular.Text:=FormClassTribLoc.QYClassTribCLT_TRIBUTACAOREGULAR.Value;
    ReducaoBase.Text:=FormClassTribLoc.QYClassTribCLT_REDBASE.Value;
    AliqIBSRed.Text:=FormClassTribLoc.QYClassTribCLT_ALIQIBSRED.AsString;
    AliqCBSRed.Text:=FormClassTribLoc.QYClassTribCLT_ALIQCBSRED.AsString;
    CreditoPresumido.Text:=FormClassTribLoc.QYClassTribCLT_CREDITOPRESUMIDO.Value;
    Monofasico.Text:=FormClassTribLoc.QYClassTribCLT_MONOFASICO.Value;
    MonoDiferimento.Text:=FormClassTribLoc.QYClassTribCLT_MONODIFERIMENTO.Value;
    MonoRetencao.Text:=FormClassTribLoc.QYClassTribCLT_MONORETENCAO.Value;
    MonoRetido.Text:=FormClassTribLoc.QYClassTribCLT_MONORETIDO.Value;
  end;
  FormClassTribLoc.Free;
  FormClassTribLoc:=nil;
end;

procedure LocClassTribBotao(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormClassTribLoc, FormClassTribLoc);
  FormClassTribLoc.ShowModal;
  if ClassTribLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormClassTribLoc.QYClassTribCLT_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormClassTribLoc.QYClassTribCLT_DESCRICAO.Value;
    Tabela.FieldByName(TributacaoRegular.DataField).Value:=FormClassTribLoc.QYClassTribCLT_TRIBUTACAOREGULAR.Value;
    Tabela.FieldByName(ReducaoBase.DataField).Value:=FormClassTribLoc.QYClassTribCLT_REDBASE.Value;
    Tabela.FieldByName(AliqIBSRed.DataField).Value:=FormClassTribLoc.QYClassTribCLT_ALIQIBSRED.AsString;
    Tabela.FieldByName(AliqCBSRed.DataField).Value:=FormClassTribLoc.QYClassTribCLT_ALIQCBSRED.AsString;
    Tabela.FieldByName(CreditoPresumido.DataField).Value:=FormClassTribLoc.QYClassTribCLT_CREDITOPRESUMIDO.Value;
    Tabela.FieldByName(Monofasico.DataField).Value:=FormClassTribLoc.QYClassTribCLT_MONOFASICO.Value;
    Tabela.FieldByName(MonoDiferimento.DataField).Value:=FormClassTribLoc.QYClassTribCLT_MONODIFERIMENTO.Value;
    Tabela.FieldByName(MonoRetencao.DataField).Value:=FormClassTribLoc.QYClassTribCLT_MONORETENCAO.Value;
    Tabela.FieldByName(MonoRetido.DataField).Value:=FormClassTribLoc.QYClassTribCLT_MONORETIDO.Value;
  end;
  FormClassTribLoc.Free;
  FormClassTribLoc:=nil;
end;

procedure LocClassTribExit(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    TributacaoRegular.Clear;
    ReducaoBase.Clear;
    AliqIBSRed.Clear;
    AliqCBSRed.Clear;
    CreditoPresumido.Clear;
    Monofasico.Clear;
    MonoDiferimento.Clear;
    MonoRetencao.Clear;
    MonoRetido.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYClassTrib.Close;
    DMS.QYClassTrib.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYClassTrib.Open;
    DMS.QYClassTrib.FetchAll;
    if not DMS.QYClassTrib.IsEmpty then
    begin
      Codigo.Text:=DMS.QYClassTribCLT_CODIGO.Value;
      Descricao.Text:=DMS.QYClassTribCLT_DESCRICAO.Value;
      TributacaoRegular.Text:=DMS.QYClassTribCLT_TRIBUTACAOREGULAR.Value;
      ReducaoBase.Text:=DMS.QYClassTribCLT_REDBASE.Value;
      AliqIBSRed.Text:=DMS.QYClassTribCLT_ALIQIBSRED.AsString;
      AliqCBSRed.Text:=DMS.QYClassTribCLT_ALIQCBSRED.AsString;
      CreditoPresumido.Text:=DMS.QYClassTribCLT_CREDITOPRESUMIDO.Value;
      Monofasico.Text:=DMS.QYClassTribCLT_MONOFASICO.Value;
      MonoDiferimento.Text:=DMS.QYClassTribCLT_MONODIFERIMENTO.Value;
      MonoRetencao.Text:=DMS.QYClassTribCLT_MONORETENCAO.Value;
      MonoRetido.Text:=DMS.QYClassTribCLT_MONORETIDO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      TributacaoRegular.Clear;
      ReducaoBase.Clear;
      AliqIBSRed.Clear;
      AliqCBSRed.Clear;
      CreditoPresumido.Clear;
      Monofasico.Clear;
      MonoDiferimento.Clear;
      MonoRetencao.Clear;
      MonoRetido.Clear;
      MessageDlg('Classificação Tributária não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClassTrib.Close;
  end;
end;

procedure LocClassTribExit(Codigo, Descricao, TributacaoRegular, ReducaoBase, AliqIBSRed, AliqCBSRed, CreditoPresumido, Monofasico, MonoDiferimento, MonoRetencao, MonoRetido: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Tabela.FieldByName(TributacaoRegular.DataField).Clear;
    Tabela.FieldByName(ReducaoBase.DataField).Clear;
    Tabela.FieldByName(AliqIBSRed.DataField).Clear;
    Tabela.FieldByName(AliqCBSRed.DataField).Clear;
    Tabela.FieldByName(CreditoPresumido.DataField).Clear;
    Tabela.FieldByName(Monofasico.DataField).Clear;
    Tabela.FieldByName(MonoDiferimento.DataField).Clear;
    Tabela.FieldByName(MonoRetencao.DataField).Clear;
    Tabela.FieldByName(MonoRetido.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYClassTrib.Close;
    DMS.QYClassTrib.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYClassTrib.Open;
    DMS.QYClassTrib.FetchAll;
    if not DMS.QYClassTrib.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYClassTribCLT_CODIGO.Value;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYClassTribCLT_DESCRICAO.Value;
      Tabela.FieldByName(TributacaoRegular.DataField).Value:=DMS.QYClassTribCLT_TRIBUTACAOREGULAR.Value;
      Tabela.FieldByName(ReducaoBase.DataField).Value:=DMS.QYClassTribCLT_REDBASE.Value;
      Tabela.FieldByName(AliqIBSRed.DataField).Value:=DMS.QYClassTribCLT_ALIQIBSRED.AsString;
      Tabela.FieldByName(AliqCBSRed.DataField).Value:=DMS.QYClassTribCLT_ALIQCBSRED.AsString;
      Tabela.FieldByName(CreditoPresumido.DataField).Value:=DMS.QYClassTribCLT_CREDITOPRESUMIDO.Value;
      Tabela.FieldByName(Monofasico.DataField).Value:=DMS.QYClassTribCLT_MONOFASICO.Value;
      Tabela.FieldByName(MonoDiferimento.DataField).Value:=DMS.QYClassTribCLT_MONODIFERIMENTO.Value;
      Tabela.FieldByName(MonoRetencao.DataField).Value:=DMS.QYClassTribCLT_MONORETENCAO.Value;
      Tabela.FieldByName(MonoRetido.DataField).Value:=DMS.QYClassTribCLT_MONORETIDO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      Tabela.FieldByName(TributacaoRegular.DataField).Clear;
      Tabela.FieldByName(ReducaoBase.DataField).Clear;
      Tabela.FieldByName(AliqIBSRed.DataField).Clear;
      Tabela.FieldByName(AliqCBSRed.DataField).Clear;
      Tabela.FieldByName(CreditoPresumido.DataField).Clear;
      Tabela.FieldByName(Monofasico.DataField).Clear;
      Tabela.FieldByName(MonoDiferimento.DataField).Clear;
      Tabela.FieldByName(MonoRetencao.DataField).Clear;
      Tabela.FieldByName(MonoRetido.DataField).Clear;
      MessageDlg('Classificação Tributária não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClassTrib.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Clientes'}
procedure LocClientesBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormClientesLoc.QYClientesCLI_CODIGO.Value);
    Nome.Text:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure LocClientesBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure LocClientesExit(Codigo, Nome: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYClientesCLI_CODIGO.Value);
      Nome.Text:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;

procedure LocClientesExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYClientes.Close;
    DMS.QYClientes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYClientes.Open;
    if not DMS.QYClientes.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYClientesCLI_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYClientesCLI_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Cliente não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYClientes.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Condicoes'}
procedure LocCondicoesBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value);
    Descricao.Text:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure LocCondicoesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormCondicoesLoc, FormCondicoesLoc);
  FormCondicoesLoc.ShowModal;
  if CondicoesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormCondicoesLoc.QYCondicoesCPG_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormCondicoesLoc.QYCondicoesCPG_DESCRICAO.Value;
  end;
  FormCondicoesLoc.Free;
  FormCondicoesLoc:=nil;
end;

procedure LocCondicoesExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYCondicoesCPG_CODIGO.Value);
      Descricao.Text:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Condição não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;

procedure LocCondicoesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYCondicoes.Close;
    DMS.QYCondicoes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCondicoes.Open;
    if not DMS.QYCondicoes.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYCondicoesCPG_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYCondicoesCPG_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Condição não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCondicoes.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Contas'}
procedure LocContasBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormContasLoc.QYContasCON_CODIGO.Value);
    Nome.Text:=FormContasLoc.QYContasCON_NOME.Value;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure LocContasBotao(Codigo,Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormContasLoc, FormContasLoc);
  FormContasLoc.ShowModal;
  if ContasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormContasLoc.QYContasCON_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormContasLoc.QYContasCON_NOME.Value;
  end;
  FormContasLoc.Free;
  FormContasLoc:=nil;
end;

procedure LocContasExit(Codigo, Nome: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYContas.Open;
    if not DMS.QYContas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYContasCON_CODIGO.Value);
      Nome.Text:=DMS.QYContasCON_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Conta não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYContas.Close;
  end;
end;

procedure LocContasExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYContas.Close;
    DMS.QYContas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYContas.Open;
    if not DMS.QYContas.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYContasCON_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYContasCON_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Conta não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYContas.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Credito Presumido'}
procedure LocCreditoPresumidoBotao(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TEdit);
begin
  Application.CreateForm(TFormCreditoPresumidoLoc, FormCreditoPresumidoLoc);
  FormCreditoPresumidoLoc.ShowModal;
  if CreditoPresumidoLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormCreditoPresumidoLoc.QYCreditoPresCPR_CODIGO.Value);
    Descricao.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_DESCRICAO.Value;
    CBS.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_CBS.Value;
    IBS.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_IBS.Value;
    ApropriaDFE.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_APROPRIADFE.Value;
    ApropriaEvento.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_APROPRIAEVENTO.Value;
    DeduzTotal.Text:=FormCreditoPresumidoLoc.QYCreditoPresCPR_DEDUZTOTAL.Value;
  end;
  FormCreditoPresumidoLoc.Free;
  FormCreditoPresumidoLoc:=nil;
end;

procedure LocCreditoPresumidoBotao(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormCreditoPresumidoLoc, FormCreditoPresumidoLoc);
  FormCreditoPresumidoLoc.ShowModal;
  if CreditoPresumidoLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_DESCRICAO.Value;
    Tabela.FieldByName(CBS.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_CBS.Value;
    Tabela.FieldByName(IBS.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_IBS.Value;
    Tabela.FieldByName(ApropriaDFE.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_APROPRIADFE.Value;
    Tabela.FieldByName(ApropriaEvento.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_APROPRIAEVENTO.Value;
    Tabela.FieldByName(DeduzTotal.DataField).Value:=FormCreditoPresumidoLoc.QYCreditoPresCPR_DEDUZTOTAL.Value;
  end;
  FormCreditoPresumidoLoc.Free;
  FormCreditoPresumidoLoc:=nil;
end;

procedure LocCreditoPresumidoExit(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYCreditoPres.Close;
    DMS.QYCreditoPres.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCreditoPres.Open;
    if not DMS.QYCreditoPres.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYCreditoPresCPR_CODIGO.Value);
      Descricao.Text:=DMS.QYCreditoPresCPR_DESCRICAO.Value;
      CBS.Text:=DMS.QYCreditoPresCPR_CBS.Value;
      IBS.Text:=DMS.QYCreditoPresCPR_IBS.Value;
      ApropriaDFE.Text:=DMS.QYCreditoPresCPR_APROPRIADFE.Value;
      ApropriaEvento.Text:=DMS.QYCreditoPresCPR_APROPRIAEVENTO.Value;
      DeduzTotal.Text:=DMS.QYCreditoPresCPR_DEDUZTOTAL.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      CBS.Clear;
      IBS.Clear;
      ApropriaDFE.Clear;
      ApropriaEvento.Clear;
      DeduzTotal.Clear;
      MessageDlg('Crédito Presumido não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCreditoPres.Close;
  end;
end;

procedure LocCreditoPresumidoExit(Codigo, Descricao, CBS, IBS, ApropriaDFE, ApropriaEvento, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYCreditoPres.Close;
    DMS.QYCreditoPres.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYCreditoPres.Open;
    if not DMS.QYCreditoPres.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYCreditoPresCPR_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYCreditoPresCPR_DESCRICAO.Value;
      Tabela.FieldByName(CBS.DataField).Value:=DMS.QYCreditoPresCPR_CBS.Value;
      Tabela.FieldByName(IBS.DataField).Value:=DMS.QYCreditoPresCPR_IBS.Value;
      Tabela.FieldByName(ApropriaDFE.DataField).Value:=DMS.QYCreditoPresCPR_APROPRIADFE.Value;
      Tabela.FieldByName(ApropriaEvento.DataField).Value:=DMS.QYCreditoPresCPR_APROPRIAEVENTO.Value;
      Tabela.FieldByName(DeduzTotal.DataField).Value:=DMS.QYCreditoPresCPR_DEDUZTOTAL.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      Tabela.FieldByName(CBS.DataField).Clear;
      Tabela.FieldByName(IBS.DataField).Clear;
      Tabela.FieldByName(ApropriaDFE.DataField).Clear;
      Tabela.FieldByName(ApropriaEvento.DataField).Clear;
      Tabela.FieldByName(DeduzTotal.DataField).Clear;
      MessageDlg('Crédito Presumido não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYCreditoPres.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Despesas'}
procedure LocDespesasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormDespesasLoc, FormDespesasLoc);
  FormDespesasLoc.ShowModal;
  if DespesasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormDespesasLoc.QYDespesasDES_CODIGO.Value);
    Descricao.Text:=FormDespesasLoc.QYDespesasDES_DESCRICAO.Value;
  end;
  FormDespesasLoc.Free;
  FormDespesasLoc:=nil;
end;

procedure LocDespesasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormDespesasLoc, FormDespesasLoc);
  FormDespesasLoc.ShowModal;
  if DespesasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormDespesasLoc.QYDespesasDES_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormDespesasLoc.QYDespesasDES_DESCRICAO.Value;
  end;
  FormDespesasLoc.Free;
  FormDespesasLoc:=nil;
end;

procedure LocDespesasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYDespesas.Close;
    DMS.QYDespesas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYDespesas.Open;
    if not DMS.QYDespesas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYDespesasDES_CODIGO.Value);
      Descricao.Text:=DMS.QYDespesasDES_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Despesa não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYDespesas.Close;
  end;
end;

procedure LocDespesasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYDespesas.Close;
    DMS.QYDespesas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYDespesas.Open;
    if not DMS.QYDespesas.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYDespesasDES_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYDespesasDES_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Despesa não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYDespesas.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Equipamentos'}
procedure LocEquipamentosBotao(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TEdit);
begin
  Application.CreateForm(TFormEquipamentosLoc, FormEquipamentosLoc);
  FormEquipamentosLoc.ShowModal;
  if EquipamentosLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormEquipamentosLoc.QYEquipamentosEQP_CODIGO.Value);
    Descricao.Text:=FormEquipamentosLoc.QYEquipamentosEQP_DESCRICAO.Value;
    if Marca      <>nil then Marca.Text:=FormEquipamentosLoc.QYEquipamentosEQP_MARCA.Value;
    if Modelo     <>nil then Modelo.Text:=FormEquipamentosLoc.QYEquipamentosEQP_MODELO.Value;
    if Serie      <>nil then Serie.Text:=FormEquipamentosLoc.QYEquipamentosEQP_SERIE.Value;
    if Acessorios <>nil then Acessorios.Text:=FormEquipamentosLoc.QYEquipamentosEQP_ACESSORIOS.Value;
    if Localizacao<>nil then Localizacao.Text:=FormEquipamentosLoc.QYEquipamentosEQP_LOCALIZACAO.Value;
    if Tamanho    <>nil then Tamanho.Text:=FormEquipamentosLoc.QYEquipamentosEQP_TAMANHO.Value;
    if Revendedor <>nil then Revendedor.Text:=FormEquipamentosLoc.QYEquipamentosEQP_REVENDEDOR.Value;
    if AnoFab     <>nil then AnoFab.Text:=FormEquipamentosLoc.QYEquipamentosEQP_ANOFAB.Value.ToString;
    if AnoMod     <>nil then AnoMod.Text:=FormEquipamentosLoc.QYEquipamentosEQP_ANOMOD.Value.ToString;
    if Combustivel<>nil then Combustivel.Text:=FormEquipamentosLoc.QYEquipamentosEQP_COMBUSTIVEL.Value;
    if Chassi     <>nil then Chassi.Text:=FormEquipamentosLoc.QYEquipamentosEQP_CHASSI.Value;
    if Cor        <>nil then Cor.Text:=FormEquipamentosLoc.QYEquipamentosEQP_COR.Value;
  end;
  FormEquipamentosLoc.Free;
  FormEquipamentosLoc:=nil;
end;

procedure LocEquipamentosBotao(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormEquipamentosLoc, FormEquipamentosLoc);
  FormEquipamentosLoc.ShowModal;
  if EquipamentosLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_DESCRICAO.Value;
    if Marca      <>nil then Tabela.FieldByName(Marca.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_MARCA.Value;
    if Modelo     <>nil then Tabela.FieldByName(Modelo.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_MODELO.Value;
    if Serie      <>nil then Tabela.FieldByName(Serie.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_SERIE.Value;
    if Acessorios <>nil then Tabela.FieldByName(Acessorios.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_ACESSORIOS.Value;
    if Localizacao<>nil then Tabela.FieldByName(Localizacao.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_LOCALIZACAO.Value;
    if Tamanho    <>nil then Tabela.FieldByName(Tamanho.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_TAMANHO.Value;
    if Revendedor <>nil then Tabela.FieldByName(Revendedor.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_REVENDEDOR.Value;
    if AnoFab     <>nil then Tabela.FieldByName(AnoFab.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_ANOFAB.Value;
    if AnoMod     <>nil then Tabela.FieldByName(AnoMod.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_ANOMOD.Value;
    if Combustivel<>nil then Tabela.FieldByName(Combustivel.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_COMBUSTIVEL.Value;
    if Chassi     <>nil then Tabela.FieldByName(Chassi.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_CHASSI.Value;
    if Cor        <>nil then Tabela.FieldByName(Cor.DataField).Value:=FormEquipamentosLoc.QYEquipamentosEQP_COR.Value;
  end;
  FormEquipamentosLoc.Free;
  FormEquipamentosLoc:=nil;
end;

procedure LocEquipamentosExit(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    if Marca      <>nil then Marca.Clear;
    if Modelo     <>nil then Modelo.Clear;
    if Serie      <>nil then Serie.Clear;
    if Acessorios <>nil then Acessorios.Clear;
    if Localizacao<>nil then Localizacao.Clear;
    if Tamanho    <>nil then Tamanho.Clear;
    if Revendedor <>nil then Revendedor.Clear;
    if AnoFab     <>nil then AnoFab.Clear;
    if AnoMod     <>nil then AnoMod.Clear;
    if Combustivel<>nil then Combustivel.Clear;
    if Chassi     <>nil then Chassi.Clear;
    if Cor        <>nil then Cor.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYEquipamentos.Close;
    DMS.QYEquipamentos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYEquipamentos.Open;
    if not DMS.QYEquipamentos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYEquipamentosEQP_CODIGO.Value);
      Descricao.Text:=DMS.QYEquipamentosEQP_DESCRICAO.Value;
      if Marca      <>nil then Marca.Text:=DMS.QYEquipamentosEQP_MARCA.Value;
      if Modelo     <>nil then Modelo.Text:=DMS.QYEquipamentosEQP_MODELO.Value;
      if Serie      <>nil then Serie.Text:=DMS.QYEquipamentosEQP_SERIE.Value;
      if Acessorios <>nil then Acessorios.Text:=DMS.QYEquipamentosEQP_ACESSORIOS.Value;
      if Localizacao<>nil then Localizacao.Text:=DMS.QYEquipamentosEQP_LOCALIZACAO.Value;
      if Tamanho    <>nil then Tamanho.Text:=DMS.QYEquipamentosEQP_TAMANHO.Value;
      if Revendedor <>nil then Revendedor.Text:=DMS.QYEquipamentosEQP_REVENDEDOR.Value;
      if AnoFab     <>nil then AnoFab.Text:=DMS.QYEquipamentosEQP_ANOFAB.Value.ToString;
      if AnoMod     <>nil then AnoMod.Text:=DMS.QYEquipamentosEQP_ANOMOD.Value.ToString;
      if Combustivel<>nil then Combustivel.Text:=DMS.QYEquipamentosEQP_COMBUSTIVEL.Value;
      if Chassi     <>nil then Chassi.Text:=DMS.QYEquipamentosEQP_CHASSI.Value;
      if Cor        <>nil then Cor.Text:=DMS.QYEquipamentosEQP_COR.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      if Marca      <>nil then Marca.Clear;
      if Modelo     <>nil then Modelo.Clear;
      if Marca      <>nil then Marca.Clear;
      if Modelo     <>nil then Modelo.Clear;
      if Serie      <>nil then Serie.Clear;
      if Acessorios <>nil then Acessorios.Clear;
      if Localizacao<>nil then Localizacao.Clear;
      if Tamanho    <>nil then Tamanho.Clear;
      if Revendedor <>nil then Revendedor.Clear;
      if AnoFab     <>nil then AnoFab.Clear;
      if AnoMod     <>nil then AnoMod.Clear;
      if Combustivel<>nil then Combustivel.Clear;
      if Chassi     <>nil then Chassi.Clear;
      if Cor        <>nil then Cor.Clear;
      MessageDlg('Equipamento não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYEquipamentos.Close;
  end;
end;

procedure LocEquipamentosExit(Codigo, Descricao, Marca, Modelo, Serie, Acessorios, Localizacao, Tamanho, Revendedor, AnoFab, AnoMod, Combustivel, Chassi, Cor: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    if Marca      <>nil then Tabela.FieldByName(Marca.DataField).Clear;
    if Modelo     <>nil then Tabela.FieldByName(Modelo.DataField).Clear;
    if Serie      <>nil then Tabela.FieldByName(Serie.DataField).Clear;
    if Acessorios <>nil then Tabela.FieldByName(Acessorios.DataField).Clear;
    if Localizacao<>nil then Tabela.FieldByName(Localizacao.DataField).Clear;
    if Tamanho    <>nil then Tabela.FieldByName(Tamanho.DataField).Clear;
    if Revendedor <>nil then Tabela.FieldByName(Revendedor.DataField).Clear;
    if AnoFab     <>nil then Tabela.FieldByName(AnoFab.DataField).Clear;
    if AnoMod     <>nil then Tabela.FieldByName(AnoMod.DataField).Clear;
    if Combustivel<>nil then Tabela.FieldByName(Combustivel.DataField).Clear;
    if Chassi     <>nil then Tabela.FieldByName(Chassi.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYEquipamentos.Close;
    DMS.QYEquipamentos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYEquipamentos.Open;
    if not DMS.QYEquipamentos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYEquipamentosEQP_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYEquipamentosEQP_DESCRICAO.Value;
      if Marca      <>nil then Tabela.FieldByName(Marca.DataField).Value:=DMS.QYEquipamentosEQP_MARCA.Value;
      if Modelo     <>nil then Tabela.FieldByName(Modelo.DataField).Value:=DMS.QYEquipamentosEQP_MODELO.Value;
      if Serie      <>nil then Tabela.FieldByName(Serie.DataField).Value:=DMS.QYEquipamentosEQP_SERIE.Value;
      if Acessorios <>nil then Tabela.FieldByName(Acessorios.DataField).Value:=DMS.QYEquipamentosEQP_ACESSORIOS.Value;
      if Localizacao<>nil then Tabela.FieldByName(Localizacao.DataField).Value:=DMS.QYEquipamentosEQP_LOCALIZACAO.Value;
      if Tamanho    <>nil then Tabela.FieldByName(Tamanho.DataField).Value:=DMS.QYEquipamentosEQP_TAMANHO.Value;
      if Revendedor <>nil then Tabela.FieldByName(Revendedor.DataField).Value:=DMS.QYEquipamentosEQP_REVENDEDOR.Value;
      if AnoFab     <>nil then Tabela.FieldByName(AnoFab.DataField).Value:=DMS.QYEquipamentosEQP_ANOFAB.Value;
      if AnoMod     <>nil then Tabela.FieldByName(AnoMod.DataField).Value:=DMS.QYEquipamentosEQP_ANOMOD.Value;
      if Combustivel<>nil then Tabela.FieldByName(Combustivel.DataField).Value:=DMS.QYEquipamentosEQP_COMBUSTIVEL.Value;
      if Chassi     <>nil then Tabela.FieldByName(Chassi.DataField).Value:=DMS.QYEquipamentosEQP_CHASSI.Value;
      if Cor        <>nil then Tabela.FieldByName(Cor.DataField).Value:=DMS.QYEquipamentosEQP_COR.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      if Marca      <>nil then Tabela.FieldByName(Marca.DataField).Clear;
      if Modelo     <>nil then Tabela.FieldByName(Modelo.DataField).Clear;
      if Serie      <>nil then Tabela.FieldByName(Serie.DataField).Clear;
      if Acessorios <>nil then Tabela.FieldByName(Acessorios.DataField).Clear;
      if Localizacao<>nil then Tabela.FieldByName(Localizacao.DataField).Clear;
      if Tamanho    <>nil then Tabela.FieldByName(Tamanho.DataField).Clear;
      if Revendedor <>nil then Tabela.FieldByName(Revendedor.DataField).Clear;
      if AnoFab     <>nil then Tabela.FieldByName(AnoFab.DataField).Clear;
      if AnoMod     <>nil then Tabela.FieldByName(AnoMod.DataField).Clear;
      if Combustivel<>nil then Tabela.FieldByName(Combustivel.DataField).Clear;
      if Chassi     <>nil then Tabela.FieldByName(Chassi.DataField).Clear;
      if Cor        <>nil then Tabela.FieldByName(Cor.DataField).Clear;
      MessageDlg('Equipamento não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYEquipamentos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'LocEstados'}
procedure LocEstadosBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormEnderecosEstadosLoc.QYEstadoSESD_CODIGO.Value);
    Nome.Text:=FormEnderecosEstadosLoc.QYEstadosESD_NOME.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure LocEstadosBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormEnderecosEstadosLoc, FormEnderecosEstadosLoc);
  FormEnderecosEstadosLoc.ShowModal;
  if EnderecosEstadosLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormEnderecosEstadosLoc.QYEstadosESD_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormEnderecosEstadosLoc.QYEstadosESD_NOME.Value;
  end;
  FormEnderecosEstadosLoc.Free;
  FormEnderecosEstadosLoc:=nil;
end;

procedure LocEstadosExit(Codigo, Nome: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYEstados.Close;
    DMS.QYEstados.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYEstados.Open;
    if not DMS.QYEstados.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYEstadosESD_CODIGO.Value);
      Nome.Text:=DMS.QYEstadosESD_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Estado não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYEstados.Close;
  end;
end;

procedure LocEstadosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYEstados.Close;
    DMS.QYEstados.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYEstados.Open;
    if not DMS.QYEstados.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYEstadosESD_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYEstadosESD_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Estado não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYEstados.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Familias'}
procedure LocFamiliasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormFamiliasLoc, FormFamiliasLoc);
  FormFamiliasLoc.ShowModal;
  if FamiliasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value);
    Descricao.Text:=FormFamiliasLoc.QYFamiliasFAM_DESCRICAO.Value;
  end;
  FormFamiliasLoc.Free;
  FormFamiliasLoc:=nil;
end;

procedure LocFamiliasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormFamiliasLoc, FormFamiliasLoc);
  FormFamiliasLoc.ShowModal;
  if FamiliasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormFamiliasLoc.QYFamiliasFAM_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormFamiliasLoc.QYFamiliasFAM_DESCRICAO.Value;
  end;
  FormFamiliasLoc.Free;
  FormFamiliasLoc:=nil;
end;

procedure LocFamiliasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYFamilias.Close;
    DMS.QYFamilias.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYFamilias.Open;
    if not DMS.QYFamilias.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYFamiliasFAM_CODIGO.Value);
      Descricao.Text:=DMS.QYFamiliasFAM_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Familia não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYFamilias.Close;
  end;
end;

procedure LocFamiliasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYFamilias.Close;
    DMS.QYFamilias.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYFamilias.Open;
    if not DMS.QYFamilias.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYFamiliasFAM_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYFamiliasFAM_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Família não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYFamilias.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Grupos'}
procedure LocGruposBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormGruposLoc, FormGruposLoc);
  FormGruposLoc.ShowModal;
  if GruposLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormGruposLoc.QYGruposGRU_CODIGO.Value);
    Descricao.Text:=FormGruposLoc.QYGruposGRU_DESCRICAO.Value;
  end;
  FormGruposLoc.Free;
  FormGruposLoc:=nil;
end;

procedure LocGruposBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormGruposLoc, FormGruposLoc);
  FormGruposLoc.ShowModal;
  if GruposLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormGruposLoc.QYGruposGRU_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormGruposLoc.QYGruposGRU_DESCRICAO.Value;
  end;
  FormGruposLoc.Free;
  FormGruposLoc:=nil;
end;

procedure LocGruposExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYGrupos.Close;
    DMS.QYGrupos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYGrupos.Open;
    if not DMS.QYGrupos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYGruposGRU_CODIGO.Value);
      Descricao.Text:=DMS.QYGruposGRU_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Grupo não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYGrupos.Close;
  end;
end;

procedure LocGruposExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYGrupos.Close;
    DMS.QYGrupos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYGrupos.Open;
    if not DMS.QYGrupos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYGruposGRU_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYGruposGRU_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Grupo não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYGrupos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Fornecedores'}
procedure LocFornecedoresBotao(Codigo, Nome, CNPJ: TEdit);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value);
    Nome.Text:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    if CNPJ<>nil then CNPJ.Text:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure LocFornecedoresBotao(Codigo, Nome, CNPJ: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormFornecedoresLoc, FormFornecedoresLoc);
  FormFornecedoresLoc.ShowModal;
  if FornecedoresLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormFornecedoresLoc.QYFornecedoresFOR_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormFornecedoresLoc.QYFornecedoresFOR_NOME.Value;
    if CNPJ<>nil then Tabela.FieldByName(CNPJ.DataField).Value:=FormFornecedoresLoc.QYFornecedoresFOR_CNPJ.Value;
  end;
  FormFornecedoresLoc.Free;
  FormFornecedoresLoc:=nil;
end;

procedure LocFornecedoresExit(Codigo, Nome, CNPJ: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    if CNPJ<>nil then CNPJ.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYFornecedoresFOR_CODIGO.Value);
      Nome.Text:=DMS.QYFornecedoresFOR_NOME.Value;
      if CNPJ<>nil then CNPJ.Text:=DMS.QYFornecedoresFOR_CNPJ.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      if CNPJ<>nil then CNPJ.Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;

procedure LocFornecedoresExit(Codigo, Nome, CNPJ: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    if CNPJ<>nil then Tabela.FieldByName(CNPJ.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYFornecedores.Close;
    DMS.QYFornecedores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYFornecedores.Open;
    if not DMS.QYFornecedores.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYFornecedoresFOR_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYFornecedoresFOR_NOME.Value;
      if CNPJ<>nil then Tabela.FieldByName(CNPJ.DataField).Value:=DMS.QYFornecedoresFOR_CNPJ.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      if CNPJ<>nil then Tabela.FieldByName(CNPJ.DataField).Clear;
      MessageDlg('Fornecedor não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYFornecedores.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc ICMS'}
procedure LocIcmsBotao(Codigo, Descricao, CreditoSN: TEdit);
begin
  Application.CreateForm(TFormIcmsLoc, FormIcmsLoc);
  FormIcmsLoc.ShowModal;
  if IcmsLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormIcmsLoc.QYIcmsICM_CODIGO.Value);
    Descricao.Text:=FormIcmsLoc.QYIcmsICM_DESCRICAO.Value;
    if CreditoSN<>nil then
    CreditoSN.Text:=FormIcmsLoc.QYIcmsICM_CALCULACREDITOSN.Value;
  end;
  FormIcmsLoc.Free;
  FormIcmsLoc:=nil;
end;

procedure LocIcmsBotao(Codigo,Descricao, CreditoSN: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormIcmsLoc, FormIcmsLoc);
  FormIcmsLoc.ShowModal;
  if IcmsLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormIcmsLoc.QYIcmsICM_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormIcmsLoc.QYIcmsICM_DESCRICAO.Value;
    if CreditoSN<>nil then
    Tabela.FieldByName(CreditoSN.DataField).Value:=FormIcmsLoc.QYIcmsICM_CALCULACREDITOSN.Value;
  end;
  FormIcmsLoc.Free;
  FormIcmsLoc:=nil;
end;

procedure LocIcmsExit(Codigo, Descricao, CreditoSN: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYIcms.Close;
    DMS.QYIcms.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYIcms.Open;
    if not DMS.QYIcms.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYIcmsICM_CODIGO.Value);
      Descricao.Text:=DMS.QYIcmsICM_DESCRICAO.Value;
      if CreditoSN<>nil then
      CreditoSN.Text:=DMS.QYIcmsICM_CALCULACREDITOSN.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      if CreditoSN<>nil then
      CreditoSN.Clear;
      MessageDlg('CST do ICMS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIcms.Close;
  end;
end;

procedure LocIcmsExit(Codigo, Descricao, CreditoSN: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYIcms.Close;
    DMS.QYIcms.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYIcms.Open;
    if not DMS.QYIcms.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYIcmsICM_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYIcmsICM_DESCRICAO.Value;
      if CreditoSN<>nil then
      Tabela.FieldByName(CreditoSN.DataField).Text:=DMS.QYIcmsICM_CALCULACREDITOSN.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      if CreditoSN<>nil then
      Tabela.FieldByName(CreditoSN.DataField).Clear;
      MessageDlg('CST do ICMS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIcms.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc IPI'}
procedure LocIpiBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormIpiLoc, FormIpiLoc);
  FormIpiLoc.ShowModal;
  if IpiLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormIpiLoc.QYIpiIPI_CODIGO.Value);
    Descricao.Text:=FormIpiLoc.QYIpiIPI_DESCRICAO.Value;
  end;
  FormIpiLoc.Free;
  FormIpiLoc:=nil;
end;

procedure LocIpiBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormIpiLoc, FormIpiLoc);
  FormIpiLoc.ShowModal;
  if IpiLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormIpiLoc.QYIpiIPI_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormIpiLoc.QYIpiIPI_DESCRICAO.Value;
  end;
  FormIpiLoc.Free;
  FormIpiLoc:=nil;
end;

procedure LocIpiExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYIpi.Close;
    DMS.QYIpi.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYIpi.Open;
    if not DMS.QYIpi.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYIpiIPI_CODIGO.Value);
      Descricao.Text:=DMS.QYIpiIPI_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('CST do IPI não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIpi.Close;
  end;
end;

procedure LocIpiExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYIpi.Close;
    DMS.QYIpi.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYIpi.Open;
    if not DMS.QYIpi.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYIpiIPI_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYIpiIPI_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('CST do IPI não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIpi.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Iss'}
procedure LocIssBotao(Codigo: TMaskEdit; Descricao, Aliquota: TEdit);
begin
  Application.CreateForm(TFormIssLoc, FormIssLoc);
  FormIssLoc.ShowModal;
  if IssLoc.Procurar then
  begin
    Codigo.Text:=FormIssLoc.QYIssISS_CODIGO.Value;
    Descricao.Text:=FormIssLoc.QYIssISS_DESCRICAO.Value;
    Aliquota.Text:=FormIssLoc.QYIssISS_ALIQUOTAMUNICIPAL.AsString;
  end;
  FormIssLoc.Free;
  FormIssLoc:=nil;
end;

procedure LocIssBotao(Codigo, Descricao, Aliquota: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormIssLoc, FormIssLoc);
  FormIssLoc.ShowModal;
  if IssLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormIssLoc.QYIssISS_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormIssLoc.QYIssISS_DESCRICAO.Value;
    Tabela.FieldByName(Aliquota.DataField).Value:=FormIssLoc.QYIssISS_ALIQUOTAMUNICIPAL.AsExtended;
  end;
  FormIssLoc.Free;
  FormIssLoc:=nil;
end;

procedure LocIssExit(Codigo: TMaskEdit; Descricao, Aliquota: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Aliquota.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYIss.Close;
    DMS.QYIss.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYIss.Open;
    if not DMS.QYIss.IsEmpty then
    begin
      Codigo.Text:=DMS.QYIssISS_CODIGO.Value;
      Descricao.Text:=DMS.QYIssISS_DESCRICAO.Value;
      Aliquota.Text:=DMS.QYIssISS_ALIQUOTAMUNICIPAL.AsString;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      Aliquota.Clear;
      MessageDlg('Tipo de serviço não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIss.Close;
  end;
end;

procedure LocIssExit(Codigo, Descricao, Aliquota: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Tabela.FieldByName(Aliquota.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYIss.Close;
    DMS.QYIss.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYIss.Open;
    if not DMS.QYIss.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYIssISS_CODIGO.Value;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYIssISS_DESCRICAO.Value;
      Tabela.FieldByName(Aliquota.DataField).Value:=DMS.QYIssISS_ALIQUOTAMUNICIPAL.AsExtended;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      Tabela.FieldByName(Aliquota.DataField).Clear;
      MessageDlg('Tipo de serviço não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYIss.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Locais'}
procedure LocLocaisBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormLocaisLoc, FormLocaisLoc);
  FormLocaisLoc.ShowModal;
  if LocaisLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormLocaisLoc.QYLocaisLCA_CODIGO.Value);
    Descricao.Text:=FormLocaisLoc.QYLocaisLCA_DESCRICAO.Value;
  end;
  FormLocaisLoc.Free;
  FormLocaisLoc:=nil;
end;

procedure LocLocaisBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormLocaisLoc, FormLocaisLoc);
  FormLocaisLoc.ShowModal;
  if LocaisLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormLocaisLoc.QYLocaisLCA_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormLocaisLoc.QYLocaisLCA_DESCRICAO.Value;
  end;
  FormLocaisLoc.Free;
  FormLocaisLoc:=nil;
end;

procedure LocLocaisExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYLocais.Close;
    DMS.QYLocais.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYLocais.Open;
    if not DMS.QYLocais.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYLocaisLCA_CODIGO.Value);
      Descricao.Text:=DMS.QYLocaisLCA_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Local não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYLocais.Close;
  end;
end;

procedure LocLocaisExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYLocais.Close;
    DMS.QYLocais.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYLocais.Open;
    if not DMS.QYLocais.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYLocaisLCA_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYLocaisLCA_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Local não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYLocais.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Lotes'}
procedure LocLotesBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormLotesLoc.QYLotesLOT_CODIGO.Value);
    Descricao.Text:=FormLotesLoc.QYLotesLOT_LOTE.Value;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure LocLotesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormLotesLoc, FormLotesLoc);
  FormLotesLoc.ShowModal;
  if LotesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormLotesLoc.QYLotesLOT_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormLotesLoc.QYLotesLOT_LOTE.Value;
  end;
  FormLotesLoc.Free;
  FormLotesLoc:=nil;
end;

procedure LocLotesExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYLotes.Close;
    DMS.QYLotes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYLotes.Open;
    if not DMS.QYLotes.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYLotesLOT_CODIGO.Value);
      Descricao.Text:=DMS.QYLotesLOT_LOTE.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Lote não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYLotes.Close;
  end;
end;

procedure LocLotesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYLotes.Close;
    DMS.QYLotes.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYLotes.Open;
    if not DMS.QYLotes.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYLotesLOT_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYLotesLOT_LOTE.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Lote não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYLocais.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Mailings'}
procedure LocMailingsBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormMailingsLoc, FormMailingsLoc);
  FormMailingsLoc.ShowModal;
  if MailingsLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormMailingsLoc.QYMailingsMAI_CODIGO.Value);
    Descricao.Text:=FormMailingsLoc.QYMailingsMAI_DESCRICAO.Value;
  end;
  FormMailingsLoc.Free;
  FormMailingsLoc:=nil;
end;

procedure LocMailingsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormMailingsLoc, FormMailingsLoc);
  FormMailingsLoc.ShowModal;
  if MailingsLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormMailingsLoc.QYMailingsMAI_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormMailingsLoc.QYMailingsMAI_DESCRICAO.Value;
  end;
  FormMailingsLoc.Free;
  FormMailingsLoc:=nil;
end;

procedure LocMailingsExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYMailings.Close;
    DMS.QYMailings.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMailings.Open;
    if not DMS.QYMailings.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYMailingsMAI_CODIGO.Value);
      Descricao.Text:=DMS.QYMailingsMAI_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Mailing não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMailings.Close;
  end;
end;

procedure LocMailingsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYMailings.Close;
    DMS.QYMailings.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMailings.Open;
    if not DMS.QYMailings.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYMailingsMAI_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYMailingsMAI_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Mailing não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMailings.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Motivos'}
procedure LocMotivosBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormMotivosLoc, FormMotivosLoc);
  FormMotivosLoc.ShowModal;
  if MotivosLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormMotivosLoc.QYMotivosMOT_CODIGO.Value);
    Descricao.Text:=FormMotivosLoc.QYMotivosMOT_DESCRICAO.Value;
  end;
  FormMotivosLoc.Free;
  FormMotivosLoc:=nil;
end;

procedure LocMotivosBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormMotivosLoc, FormMotivosLoc);
  FormMotivosLoc.ShowModal;
  if MotivosLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormMotivosLoc.QYMotivosMOT_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormMotivosLoc.QYMotivosMOT_DESCRICAO.Value;
  end;
  FormMotivosLoc.Free;
  FormMotivosLoc:=nil;
end;

procedure LocMotivosExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYMotivos.Close;
    DMS.QYMotivos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMotivos.Open;
    if not DMS.QYMotivos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYMotivosMOT_CODIGO.Value);
      Descricao.Text:=DMS.QYMotivosMOT_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Motivo não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMotivos.Close;
  end;
end;

procedure LocMotivosExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYMotivos.Close;
    DMS.QYMotivos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMotivos.Open;
    if not DMS.QYMotivos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYMotivosMOT_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYMotivosMOT_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Motivo não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMotivos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Marcas'}
procedure LocMarcasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormMarcasLoc, FormMarcasLoc);
  FormMarcasLoc.ShowModal;
  if MarcasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormMarcasLoc.QYMarcasMAR_CODIGO.Value);
    Descricao.Text:=FormMarcasLoc.QYMarcasMAR_DESCRICAO.Value;
  end;
  FormMarcasLoc.Free;
  FormMarcasLoc:=nil;
end;

procedure LocMarcasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormMarcasLoc, FormMarcasLoc);
  FormMarcasLoc.ShowModal;
  if MarcasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormMarcasLoc.QYMarcasMAR_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormMarcasLoc.QYMarcasMAR_DESCRICAO.Value;
  end;
  FormMarcasLoc.Free;
  FormMarcasLoc:=nil;
end;

procedure LocMarcasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYMarcas.Close;
    DMS.QYMarcas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMarcas.Open;
    if not DMS.QYMarcas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYMarcasMAR_CODIGO.Value);
      Descricao.Text:=DMS.QYMarcasMAR_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Marca não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMarcas.Close;
  end;
end;

procedure LocMarcasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYMarcas.Close;
    DMS.QYMarcas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYMarcas.Open;
    if not DMS.QYMarcas.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYMarcasMAR_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYMarcasMAR_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Marca não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYMarcas.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Nbs'}
procedure LocNbsBotao(Codigo: TMaskEdit; Descricao: TEdit);
begin
  Application.CreateForm(TFormNbsLoc, FormNbsLoc);
  FormNbsLoc.ShowModal;
  if NbsLoc.Procurar then
  begin
    Codigo.Text:=FormNbsLoc.QYNbsNBS_CODIGO.Value;
    Descricao.Text:=FormNbsLoc.QYNbsNBS_DESCRICAO.Value;
  end;
  FormNbsLoc.Free;
  FormNbsLoc:=nil;
end;

procedure LocNbsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormNbsLoc, FormNbsLoc);
  FormNbsLoc.ShowModal;
  if NbsLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormNbsLoc.QYNbsNBS_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormNbsLoc.QYNbsNBS_DESCRICAO.Value;
  end;
  FormNbsLoc.Free;
  FormNbsLoc:=nil;
end;

procedure LocNbsExit(Codigo: TMaskEdit; Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYNbs.Close;
    DMS.QYNbs.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYNbs.Open;
    if not DMS.QYNbs.IsEmpty then
    begin
      Codigo.Text:=DMS.QYNbsNBS_CODIGO.Value;
      Descricao.Text:=DMS.QYNbsNBS_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('NBS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYNbs.Close;
  end;
end;

procedure LocNbsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYNbs.Close;
    DMS.QYNbs.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYNbs.Open;
    if not DMS.QYNbs.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYNbsNBS_CODIGO.Value;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYNbsNBS_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('NBS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYNbs.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Pis/Cofins'}
procedure LocPiscofinsBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormPiscofinsLoc, FormPiscofinsLoc);
  FormPiscofinsLoc.ShowModal;
  if PiscofinsLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormPiscofinsLoc.QYPiscofinsPIS_CODIGO.Value);
    Descricao.Text:=FormPiscofinsLoc.QYPiscofinsPIS_DESCRICAO.Value;
  end;
  FormPiscofinsLoc.Free;
  FormPiscofinsLoc:=nil;
end;

procedure LocPiscofinsBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormPiscofinsLoc, FormPiscofinsLoc);
  FormPiscofinsLoc.ShowModal;
  if PiscofinsLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormPiscofinsLoc.QYPiscofinsPIS_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormPiscofinsLoc.QYPiscofinsPIS_DESCRICAO.Value;
  end;
  FormPiscofinsLoc.Free;
  FormPiscofinsLoc:=nil;
end;

procedure LocPiscofinsExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYPiscofins.Close;
    DMS.QYPiscofins.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYPiscofins.Open;
    if not DMS.QYPiscofins.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYPiscofinsPIS_CODIGO.Value);
      Descricao.Text:=DMS.QYPiscofinsPIS_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('CST do PIS/COFINS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYPiscofins.Close;
  end;
end;

procedure LocPiscofinsExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYPiscofins.Close;
    DMS.QYPiscofins.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYPiscofins.Open;
    if not DMS.QYPiscofins.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYPiscofinsPIS_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYPiscofinsPIS_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('CST do PIS/COFINS não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYPiscofins.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Produtos'}
procedure LocProdutosBotao(Codigo,Nome: TEdit);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      Codigo.Text:=IntToStr(FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value);
      Nome.Text:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
    end else
    begin
      Codigo.Text:=IntToStr(FormProdutosLoc.QYProdutosPRO_CODIGO.Value);
      Nome.Text:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure LocProdutosBotao(Codigo,Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar=True then
  begin
    if ProdutosLoc.CodigoNoFornecedor then
    begin
      Tabela.Edit;
      Tabela.FieldByName(Codigo.DataField).Value:=FormProdutosLoc.QYProdutosCodigosPRO_CODIGO.Value;
      Tabela.FieldByName(Nome.DataField).Value:=FormProdutosLoc.QYProdutosCodigosPRO_NOME.Value;
    end else
    begin
      Tabela.Edit;
      Tabela.FieldByName(Codigo.DataField).Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      Tabela.FieldByName(Nome.DataField).Value:=FormProdutosLoc.QYProdutosPRO_NOME.Value;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

procedure LocProdutosExit(Codigo, Nome: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYProdutosPRO_CODIGO.Value);
      Nome.Text:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;

procedure LocProdutosExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYProdutos.Close;
    DMS.QYProdutos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYProdutos.Open;
    if not DMS.QYProdutos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYProdutosPRO_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYProdutosPRO_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Produto não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYProdutos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Receitas'}
procedure LocReceitasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormReceitasLoc, FormReceitasLoc);
  FormReceitasLoc.ShowModal;
  if ReceitasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormReceitasLoc.QYReceitasREC_CODIGO.Value);
    Descricao.Text:=FormReceitasLoc.QYReceitasREC_DESCRICAO.Value;
  end;
  FormReceitasLoc.Free;
  FormReceitasLoc:=nil;
end;

procedure LocReceitasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormReceitasLoc, FormReceitasLoc);
  FormReceitasLoc.ShowModal;
  if ReceitasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormReceitasLoc.QYReceitasREC_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormReceitasLoc.QYReceitasREC_DESCRICAO.Value;
  end;
  FormReceitasLoc.Free;
  FormReceitasLoc:=nil;
end;

procedure LocReceitasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYReceitas.Close;
    DMS.QYReceitas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYReceitas.Open;
    if not DMS.QYReceitas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYReceitasREC_CODIGO.Value);
      Descricao.Text:=DMS.QYReceitasREC_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Receita não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYReceitas.Close;
  end;
end;

procedure LocReceitasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYReceitas.Close;
    DMS.QYReceitas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYReceitas.Open;
    if not DMS.QYReceitas.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYReceitasREC_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYReceitasREC_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Receita não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYReceitas.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Regras Fiscais'}
procedure LocRegrasFiscaisBotao(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TEdit);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value);
    Descricao.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_DESCRICAO.Value;
    ClassTribIBSCBS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    DescricaoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
    ClassTribIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CLASSTRIBIS.Value;
    DescricaoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
    CreditoPres.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CREDITOPRES.Value.ToString;
    DescricaoCPR.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_DESCRICAO.Value;
    AliqIBSMun.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQIBSMUN.AsString;
    AliqIBSUF.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQIBSUF.AsString;
    AliqCBS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQCBS.AsString;
    TributacaoRegularIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC.Value;
    ReducaoBaseIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_REDBASE_IC.Value;
    AliqIBSRedIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQIBSRED_IC.AsString;
    AliqCBSRedIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQCBSRED_IC.AsString;
    CreditoPresumidoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC.Value;
    MonofasicoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONOFASICO_IC.Value;
    MonoDiferimentoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONODIFERIMENTO_IC.Value;
    MonoRetencaoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETENCAO_IC.Value;
    MonoRetidoIC.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETIDO_IC.Value;
    TributacaoRegularIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS.Value;
    ReducaoBaseIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_REDBASE_IS.Value;
    AliqIBSRedIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQIBSRED_IS.AsString;
    AliqCBSRedIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQCBSRED_IS.AsString;
    CreditoPresumidoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS.Value;
    MonofasicoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONOFASICO_IS.Value;
    MonoDiferimentoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONODIFERIMENTO_IS.Value;
    MonoRetencaoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETENCAO_IS.Value;
    MonoRetidoIS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETIDO_IS.Value;
    ApropriaDFE.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_APROPRIADFE.Value;
    ApropriaEvento.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_APROPRIAEVENTO.Value;
    IBS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_IBS.Value;
    CBS.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_CBS.Value;
    DeduzTotal.Text:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_DEDUZTOTAL.Value;
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure LocRegrasFiscaisBotao(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormRegrasFiscaisLoc, FormRegrasFiscaisLoc);
  FormRegrasFiscaisLoc.ShowModal;
  if RegrasFiscaisLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_DESCRICAO.Value;
    Tabela.FieldByName(ClassTribIBSCBS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
    Tabela.FieldByName(DescricaoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
    Tabela.FieldByName(ClassTribIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CLASSTRIBIS.Value;
    Tabela.FieldByName(DescricaoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
    Tabela.FieldByName(CreditoPres.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_CREDITOPRES.Value;
    Tabela.FieldByName(DescricaoCPR.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_DESCRICAO.Value;
    Tabela.FieldByName(AliqIBSMun.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQIBSMUN.AsString;
    Tabela.FieldByName(AliqIBSUF.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQIBSUF.AsString;
    Tabela.FieldByName(AliqCBS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisRGF_ALIQCBS.AsString;
    Tabela.FieldByName(TributacaoRegularIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC.Value;
    Tabela.FieldByName(ReducaoBaseIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_REDBASE_IC.Value;
    Tabela.FieldByName(AliqIBSRedIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQIBSRED_IC.AsString;
    Tabela.FieldByName(AliqCBSRedIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQCBSRED_IC.AsString;
    Tabela.FieldByName(CreditoPresumidoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC.Value;
    Tabela.FieldByName(MonofasicoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONOFASICO_IC.Value;
    Tabela.FieldByName(MonoDiferimentoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONODIFERIMENTO_IC.Value;
    Tabela.FieldByName(MonoRetencaoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETENCAO_IC.Value;
    Tabela.FieldByName(MonoRetidoIC.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETIDO_IC.Value;
    Tabela.FieldByName(TributacaoRegularIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS.Value;
    Tabela.FieldByName(ReducaoBaseIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_REDBASE_IS.Value;
    Tabela.FieldByName(AliqIBSRedIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQIBSRED_IS.AsString;
    Tabela.FieldByName(AliqCBSRedIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_ALIQCBSRED_IS.AsString;
    Tabela.FieldByName(CreditoPresumidoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS.Value;
    Tabela.FieldByName(MonofasicoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONOFASICO_IS.Value;
    Tabela.FieldByName(MonoDiferimentoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONODIFERIMENTO_IS.Value;
    Tabela.FieldByName(MonoRetencaoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETENCAO_IS.Value;
    Tabela.FieldByName(MonoRetidoIS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCLT_MONORETIDO_IS.Value;
    Tabela.FieldByName(ApropriaDFE.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_APROPRIADFE.Value;
    Tabela.FieldByName(ApropriaEvento.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_APROPRIAEVENTO.Value;
    Tabela.FieldByName(IBS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_IBS.Value;
    Tabela.FieldByName(CBS.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_CBS.Value;
    Tabela.FieldByName(DeduzTotal.DataField).Value:=FormRegrasFiscaisLoc.QYRegrasFiscaisCPR_DEDUZTOTAL.Value;
  end;
  FormRegrasFiscaisLoc.Free;
  FormRegrasFiscaisLoc:=nil;
end;

procedure LocRegrasFiscaisExit(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    ClassTribIBSCBS.Clear;
    DescricaoIC.Clear;
    ClassTribIS.Clear;
    DescricaoIS.Clear;
    CreditoPres.Clear;
    DescricaoCPR.Clear;
    AliqIBSMun.Clear;
    AliqIBSUF.Clear;
    AliqCBS.Clear;
    TributacaoRegularIC.Clear;
    ReducaoBaseIC.Clear;
    AliqIBSRedIC.Clear;
    AliqCBSRedIC.Clear;
    CreditoPresumidoIC.Clear;
    MonofasicoIC.Clear;
    MonoDiferimentoIC.Clear;
    MonoRetencaoIC.Clear;
    MonoRetidoIC.Clear;
    TributacaoRegularIS.Clear;
    ReducaoBaseIS.Clear;
    AliqIBSRedIS.Clear;
    AliqCBSRedIS.Clear;
    CreditoPresumidoIS.Clear;
    MonofasicoIS.Clear;
    MonoDiferimentoIS.Clear;
    MonoRetencaoIS.Clear;
    MonoRetidoIS.Clear;
    ApropriaDFE.Clear;
    ApropriaEvento.Clear;
    IBS.Clear;
    CBS.Clear;
    DeduzTotal.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYRegrasFiscais.Close;
    DMS.QYRegrasFiscais.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYRegrasFiscais.Open;
    if not DMS.QYReceitas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYRegrasFiscaisRGF_CODIGO.Value);
      Descricao.Text:=DMS.QYRegrasFiscaisRGF_DESCRICAO.Value;
      ClassTribIBSCBS.Text:=DMS.QYRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
      DescricaoIC.Text:=DMS.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
      ClassTribIS.Text:=DMS.QYRegrasFiscaisRGF_CLASSTRIBIS.Value;
      DescricaoIS.Text:=DMS.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
      CreditoPres.Text:=DMS.QYRegrasFiscaisRGF_CREDITOPRES.Value.ToString;
      DescricaoCPR.Text:=DMS.QYRegrasFiscaisCPR_DESCRICAO.Value;
      AliqIBSMun.Text:=DMS.QYRegrasFiscaisRGF_ALIQIBSMUN.AsString;
      AliqIBSUF.Text:=DMS.QYRegrasFiscaisRGF_ALIQIBSUF.AsString;
      AliqCBS.Text:=DMS.QYRegrasFiscaisRGF_ALIQCBS.AsString;
      TributacaoRegularIC.Text:=DMS.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC.Value;
      ReducaoBaseIC.Text:=DMS.QYRegrasFiscaisCLT_REDBASE_IC.Value;
      AliqIBSRedIC.Text:=DMS.QYRegrasFiscaisCLT_ALIQIBSRED_IC.AsString;
      AliqCBSRedIC.Text:=DMS.QYRegrasFiscaisCLT_ALIQCBSRED_IC.AsString;
      CreditoPresumidoIC.Text:=DMS.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC.Value;
      MonofasicoIC.Text:=DMS.QYRegrasFiscaisCLT_MONOFASICO_IC.Value;
      MonoDiferimentoIC.Text:=DMS.QYRegrasFiscaisCLT_MONODIFERIMENTO_IC.Value;
      MonoRetencaoIC.Text:=DMS.QYRegrasFiscaisCLT_MONORETENCAO_IC.Value;
      MonoRetidoIC.Text:=DMS.QYRegrasFiscaisCLT_MONORETIDO_IC.Value;
      TributacaoRegularIS.Text:=DMS.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS.Value;
      ReducaoBaseIS.Text:=DMS.QYRegrasFiscaisCLT_REDBASE_IS.Value;
      AliqIBSRedIS.Text:=DMS.QYRegrasFiscaisCLT_ALIQIBSRED_IS.AsString;
      AliqCBSRedIS.Text:=DMS.QYRegrasFiscaisCLT_ALIQCBSRED_IS.AsString;
      CreditoPresumidoIS.Text:=DMS.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS.Value;
      MonofasicoIS.Text:=DMS.QYRegrasFiscaisCLT_MONOFASICO_IS.Value;
      MonoDiferimentoIS.Text:=DMS.QYRegrasFiscaisCLT_MONODIFERIMENTO_IS.Value;
      MonoRetencaoIS.Text:=DMS.QYRegrasFiscaisCLT_MONORETENCAO_IS.Value;
      MonoRetidoIS.Text:=DMS.QYRegrasFiscaisCLT_MONORETIDO_IS.Value;
      ApropriaDFE.Text:=DMS.QYRegrasFiscaisCPR_APROPRIADFE.Value;
      ApropriaEvento.Text:=DMS.QYRegrasFiscaisCPR_APROPRIAEVENTO.Value;
      IBS.Text:=DMS.QYRegrasFiscaisCPR_IBS.Value;
      CBS.Text:=DMS.QYRegrasFiscaisCPR_CBS.Value;
      DeduzTotal.Text:=DMS.QYRegrasFiscaisCPR_DEDUZTOTAL.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      ClassTribIBSCBS.Clear;
      DescricaoIC.Clear;
      ClassTribIS.Clear;
      DescricaoIS.Clear;
      CreditoPres.Clear;
      DescricaoCPR.Clear;
      AliqIBSMun.Clear;
      AliqIBSUF.Clear;
      AliqCBS.Clear;
      TributacaoRegularIC.Clear;
      ReducaoBaseIC.Clear;
      AliqIBSRedIC.Clear;
      AliqCBSRedIC.Clear;
      CreditoPresumidoIC.Clear;
      MonofasicoIC.Clear;
      MonoDiferimentoIC.Clear;
      MonoRetencaoIC.Clear;
      MonoRetidoIC.Clear;
      TributacaoRegularIS.Clear;
      ReducaoBaseIS.Clear;
      AliqIBSRedIS.Clear;
      AliqCBSRedIS.Clear;
      CreditoPresumidoIS.Clear;
      MonofasicoIS.Clear;
      MonoDiferimentoIS.Clear;
      MonoRetencaoIS.Clear;
      MonoRetidoIS.Clear;
      ApropriaDFE.Clear;
      ApropriaEvento.Clear;
      IBS.Clear;
      CBS.Clear;
      DeduzTotal.Clear;
      MessageDlg('Regra Fiscal não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYRegrasFiscais.Close;
  end;
end;

procedure LocRegrasFiscaisExit(Codigo, Descricao, ClassTribIBSCBS, DescricaoIC, ClassTribIS, DescricaoIS, CreditoPres, DescricaoCPR, AliqIBSMun, AliqIBSUF, AliqCBS,
  TributacaoRegularIC, ReducaoBaseIC, AliqIBSRedIC, AliqCBSRedIC, CreditoPresumidoIC, MonofasicoIC, MonoDiferimentoIC, MonoRetencaoIC, MonoRetidoIC,
  TributacaoRegularIS, ReducaoBaseIS, AliqIBSRedIS, AliqCBSRedIS, CreditoPresumidoIS, MonofasicoIS, MonoDiferimentoIS, MonoRetencaoIS, MonoRetidoIS,
  ApropriaDFE, ApropriaEvento, IBS, CBS, DeduzTotal: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Tabela.FieldByName(ClassTribIBSCBS.DataField).Clear;
    Tabela.FieldByName(DescricaoIC.DataField).Clear;
    Tabela.FieldByName(ClassTribIS.DataField).Clear;
    Tabela.FieldByName(DescricaoIS.DataField).Clear;
    Tabela.FieldByName(CreditoPres.DataField).Clear;
    Tabela.FieldByName(DescricaoCPR.DataField).Clear;
    Tabela.FieldByName(AliqIBSMun.DataField).Clear;
    Tabela.FieldByName(AliqIBSUF.DataField).Clear;
    Tabela.FieldByName(AliqCBS.DataField).Clear;
    Tabela.FieldByName(TributacaoRegularIC.DataField).Clear;
    Tabela.FieldByName(ReducaoBaseIC.DataField).Clear;
    Tabela.FieldByName(AliqIBSRedIC.DataField).Clear;
    Tabela.FieldByName(AliqCBSRedIC.DataField).Clear;
    Tabela.FieldByName(CreditoPresumidoIC.DataField).Clear;
    Tabela.FieldByName(MonofasicoIC.DataField).Clear;
    Tabela.FieldByName(MonoDiferimentoIC.DataField).Clear;
    Tabela.FieldByName(MonoRetencaoIC.DataField).Clear;
    Tabela.FieldByName(MonoRetidoIC.DataField).Clear;
    Tabela.FieldByName(TributacaoRegularIS.DataField).Clear;
    Tabela.FieldByName(ReducaoBaseIS.DataField).Clear;
    Tabela.FieldByName(AliqIBSRedIS.DataField).Clear;
    Tabela.FieldByName(AliqCBSRedIS.DataField).Clear;
    Tabela.FieldByName(CreditoPresumidoIS.DataField).Clear;
    Tabela.FieldByName(MonofasicoIS.DataField).Clear;
    Tabela.FieldByName(MonoDiferimentoIS.DataField).Clear;
    Tabela.FieldByName(MonoRetencaoIS.DataField).Clear;
    Tabela.FieldByName(MonoRetidoIS.DataField).Clear;
    Tabela.FieldByName(ApropriaDFE.DataField).Clear;
    Tabela.FieldByName(ApropriaEvento.DataField).Clear;
    Tabela.FieldByName(IBS.DataField).Clear;
    Tabela.FieldByName(CBS.DataField).Clear;
    Tabela.FieldByName(DeduzTotal.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYRegrasFiscais.Close;
    DMS.QYRegrasFiscais.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYRegrasFiscais.Open;
    if not DMS.QYRegrasFiscais.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYRegrasFiscaisRGF_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYRegrasFiscaisRGF_DESCRICAO.Value;
      Tabela.FieldByName(ClassTribIBSCBS.DataField).Value:=DMS.QYRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
      Tabela.FieldByName(DescricaoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
      Tabela.FieldByName(ClassTribIS.DataField).Value:=DMS.QYRegrasFiscaisRGF_CLASSTRIBIS.Value;
      Tabela.FieldByName(DescricaoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_DESCRICAO_IC.Value;
      Tabela.FieldByName(CreditoPres.DataField).Value:=DMS.QYRegrasFiscaisRGF_CREDITOPRES.Value;
      Tabela.FieldByName(DescricaoCPR.DataField).Value:=DMS.QYRegrasFiscaisCPR_DESCRICAO.Value;
      Tabela.FieldByName(AliqIBSMun.DataField).Value:=DMS.QYRegrasFiscaisRGF_ALIQIBSMUN.AsString;
      Tabela.FieldByName(AliqIBSUF.DataField).Value:=DMS.QYRegrasFiscaisRGF_ALIQIBSUF.AsString;
      Tabela.FieldByName(AliqCBS.DataField).Value:=DMS.QYRegrasFiscaisRGF_ALIQCBS.AsString;
      Tabela.FieldByName(TributacaoRegularIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC.Value;
      Tabela.FieldByName(ReducaoBaseIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_REDBASE_IC.Value;
      Tabela.FieldByName(AliqIBSRedIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_ALIQIBSRED_IC.AsString;
      Tabela.FieldByName(AliqCBSRedIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_ALIQCBSRED_IC.AsString;
      Tabela.FieldByName(CreditoPresumidoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IC.Value;
      Tabela.FieldByName(MonofasicoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONOFASICO_IC.Value;
      Tabela.FieldByName(MonoDiferimentoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONODIFERIMENTO_IC.Value;
      Tabela.FieldByName(MonoRetencaoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONORETENCAO_IC.Value;
      Tabela.FieldByName(MonoRetidoIC.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONORETIDO_IC.Value;
      Tabela.FieldByName(TributacaoRegularIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS.Value;
      Tabela.FieldByName(ReducaoBaseIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_REDBASE_IS.Value;
      Tabela.FieldByName(AliqIBSRedIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_ALIQIBSRED_IS.AsString;
      Tabela.FieldByName(AliqCBSRedIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_ALIQCBSRED_IS.AsString;
      Tabela.FieldByName(CreditoPresumidoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_CREDITOPRESUMIDO_IS.Value;
      Tabela.FieldByName(MonofasicoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONOFASICO_IS.Value;
      Tabela.FieldByName(MonoDiferimentoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONODIFERIMENTO_IS.Value;
      Tabela.FieldByName(MonoRetencaoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONORETENCAO_IS.Value;
      Tabela.FieldByName(MonoRetidoIS.DataField).Value:=DMS.QYRegrasFiscaisCLT_MONORETIDO_IS.Value;
      Tabela.FieldByName(ApropriaDFE.DataField).Value:=DMS.QYRegrasFiscaisCPR_APROPRIADFE.Value;
      Tabela.FieldByName(ApropriaEvento.DataField).Value:=DMS.QYRegrasFiscaisCPR_APROPRIAEVENTO.Value;
      Tabela.FieldByName(IBS.DataField).Value:=DMS.QYRegrasFiscaisCPR_IBS.Value;
      Tabela.FieldByName(CBS.DataField).Value:=DMS.QYRegrasFiscaisCPR_CBS.Value;
      Tabela.FieldByName(DeduzTotal.DataField).Value:=DMS.QYRegrasFiscaisCPR_DEDUZTOTAL.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      Tabela.FieldByName(ClassTribIBSCBS.DataField).Clear;
      Tabela.FieldByName(DescricaoIC.DataField).Clear;
      Tabela.FieldByName(ClassTribIS.DataField).Clear;
      Tabela.FieldByName(DescricaoIS.DataField).Clear;
      Tabela.FieldByName(CreditoPres.DataField).Clear;
      Tabela.FieldByName(DescricaoCPR.DataField).Clear;
      Tabela.FieldByName(AliqIBSMun.DataField).Clear;
      Tabela.FieldByName(AliqIBSUF.DataField).Clear;
      Tabela.FieldByName(AliqCBS.DataField).Clear;
      Tabela.FieldByName(TributacaoRegularIC.DataField).Clear;
      Tabela.FieldByName(ReducaoBaseIC.DataField).Clear;
      Tabela.FieldByName(AliqIBSRedIC.DataField).Clear;
      Tabela.FieldByName(AliqCBSRedIC.DataField).Clear;
      Tabela.FieldByName(CreditoPresumidoIC.DataField).Clear;
      Tabela.FieldByName(MonofasicoIC.DataField).Clear;
      Tabela.FieldByName(MonoDiferimentoIC.DataField).Clear;
      Tabela.FieldByName(MonoRetencaoIC.DataField).Clear;
      Tabela.FieldByName(MonoRetidoIC.DataField).Clear;
      Tabela.FieldByName(TributacaoRegularIS.DataField).Clear;
      Tabela.FieldByName(ReducaoBaseIS.DataField).Clear;
      Tabela.FieldByName(AliqIBSRedIS.DataField).Clear;
      Tabela.FieldByName(AliqCBSRedIS.DataField).Clear;
      Tabela.FieldByName(CreditoPresumidoIS.DataField).Clear;
      Tabela.FieldByName(MonofasicoIS.DataField).Clear;
      Tabela.FieldByName(MonoDiferimentoIS.DataField).Clear;
      Tabela.FieldByName(MonoRetencaoIS.DataField).Clear;
      Tabela.FieldByName(MonoRetidoIS.DataField).Clear;
      Tabela.FieldByName(ApropriaDFE.DataField).Clear;
      Tabela.FieldByName(ApropriaEvento.DataField).Clear;
      Tabela.FieldByName(IBS.DataField).Clear;
      Tabela.FieldByName(CBS.DataField).Clear;
      Tabela.FieldByName(DeduzTotal.DataField).Clear;
      MessageDlg('Regra fiscal não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYRegrasFiscais.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Taxas'}
procedure LocTaxasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormTaxasLoc, FormTaxasLoc);
  FormTaxasLoc.ShowModal;
  if TaxasLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormTaxasLoc.QYTaxasTAX_CODIGO.Value);
    Descricao.Text:=FormTaxasLoc.QYTaxasTAX_DESCRICAO.Value;
  end;
  FormTaxasLoc.Free;
  FormTaxasLoc:=nil;
end;

procedure LocTaxasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormTaxasLoc, FormTaxasLoc);
  FormTaxasLoc.ShowModal;
  if TaxasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormTaxasLoc.QYTaxasTAX_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormTaxasLoc.QYTaxasTAX_DESCRICAO.Value;
  end;
  FormTaxasLoc.Free;
  FormTaxasLoc:=nil;
end;

procedure LocTaxasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYTaxas.Close;
    DMS.QYTaxas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYTaxas.Open;
    if not DMS.QYTaxas.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYTaxasTAX_CODIGO.Value);
      Descricao.Text:=DMS.QYTaxasTAX_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Taxa não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYTaxas.Close;
  end;
end;

procedure LocTaxasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYTaxas.Close;
    DMS.QYTaxas.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYTaxas.Open;
    if not DMS.QYTaxas.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYTaxasTAX_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYTaxasTAX_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Taxa não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYTaxas.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Unidades'}
procedure LocUnidadesBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormUnidadesLoc, FormUnidadesLoc);
  FormUnidadesLoc.ShowModal;
  if UnidadesLoc.Procurar then
  begin
    Codigo.Text:=FormUnidadesLoc.QYUnidadesUNI_CODIGO.Value;
    Descricao.Text:=FormUnidadesLoc.QYUnidadesUNI_DESCRICAO.Value;
  end;
  FormUnidadesLoc.Free;
  FormUnidadesLoc:=nil;
end;

procedure LocUnidadesBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormUnidadesLoc, FormUnidadesLoc);
  FormUnidadesLoc.ShowModal;
  if UnidadesLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormUnidadesLoc.QYUnidadesUNI_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormUnidadesLoc.QYUnidadesUNI_DESCRICAO.Value;
  end;
  FormUnidadesLoc.Free;
  FormUnidadesLoc:=nil;
end;

procedure LocUnidadesExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYUnidades.Close;
    DMS.QYUnidades.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYUnidades.Open;
    if not DMS.QYUnidades.IsEmpty then
    begin
      Codigo.Text:=DMS.QYUnidadesUNI_CODIGO.Value;
      Descricao.Text:=DMS.QYUnidadesUNI_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Unidade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYUnidades.Close;
  end;
end;

procedure LocUnidadesExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYUnidades.Close;
    DMS.QYUnidades.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYUnidades.Open;
    if not DMS.QYUnidades.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYUnidadesUNI_CODIGO.Value;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYUnidadesUNI_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Unidade não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYUnidades.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Vendedores'}
procedure LocVendedoresBotao(Codigo, Nome, Comissao: TEdit);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar then
  begin
    Codigo.Text:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value.ToString;
    Nome.Text:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    Comissao.Text:=FloatToStr(FormVendedoresLoc.QYVendedoresVEN_COMISSAO.AsExtended);
    if Comissao<>nil then Comissao.Text:=FloatToStr(FormVendedoresLoc.QYVendedoresVEN_COMISSAO.AsExtended);
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure LocVendedoresBotao(Codigo, Nome, Comissao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormVendedoresLoc, FormVendedoresLoc);
  FormVendedoresLoc.ShowModal;
  if VendedoresLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormVendedoresLoc.QYVendedoresVEN_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormVendedoresLoc.QYVendedoresVEN_NOME.Value;
    if Comissao<>nil then Tabela.FieldByName(Comissao.DataField).Value:=FormVendedoresLoc.QYVendedoresVEN_COMISSAO.AsExtended;
  end;
  FormVendedoresLoc.Free;
  FormVendedoresLoc:=nil;
end;

procedure LocVendedoresExit(Codigo, Nome, Comissao: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    if Comissao<>nil then Comissao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      Codigo.Text:=DMS.QYVendedoresVEN_CODIGO.Value.ToString;
      Nome.Text:=DMS.QYVendedoresVEN_NOME.Value;
      if Comissao<>nil then Comissao.Text:=FloatToStr(DMS.QYVendedoresVEN_COMISSAO.AsExtended);
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      if Comissao<>nil then Comissao.Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;

procedure LocVendedoresExit(Codigo, Nome, Comissao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    if Comissao<>nil then Tabela.FieldByName(Comissao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYVendedores.Close;
    DMS.QYVendedores.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYVendedores.Open;
    if not DMS.QYVendedores.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYVendedoresVEN_CODIGO.Value.ToString;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYVendedoresVEN_NOME.Value;
      if Comissao<>nil then Tabela.FieldByName(Comissao.DataField).Value:=DMS.QYVendedoresVEN_COMISSAO.AsExtended;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      if Comissao<>nil then Tabela.FieldByName(Comissao.DataField).Clear;
      MessageDlg('Vendedor não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVendedores.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Vendedores Historico Tipos'}
procedure LocVendedoresHistTiposBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormVendedoresHistTiposLoc, FormVendedoresHistTiposLoc);
  FormVendedoresHistTiposLoc.ShowModal;
  if VendedoresHistTiposLoc.Procurar then
  begin
    Codigo.Text:=IntToStr(FormVendedoresHistTiposLoc.QYVendedoresHistTiposVHT_CODIGO.Value);
    Descricao.Text:=FormVendedoresHistTiposLoc.QYVendedoresHistTiposVHT_DESCRICAO.Value;
  end;
  FormVendedoresHistTiposLoc.Free;
  FormVendedoresHistTiposLoc:=nil;
end;

procedure LocVendedoresHistTiposBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormVendedoresHistTiposLoc, FormVendedoresHistTiposLoc);
  FormVendedoresHistTiposLoc.ShowModal;
  if VendedoresHistTiposLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormVendedoresHistTiposLoc.QYVendedoresHistTiposVHT_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormVendedoresHistTiposLoc.QYVendedoresHistTiposVHT_DESCRICAO.Value;
  end;
  FormVendedoresHistTiposLoc.Free;
  FormVendedoresHistTiposLoc:=nil;
end;

procedure LocVendedoresHistTiposExit(Codigo, Descricao: TEdit); overload;
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYVendedoresHistTipos.Close;
    DMS.QYVendedoresHistTipos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYVendedoresHistTipos.Open;
    if not DMS.QYVendedoresHistTipos.IsEmpty then
    begin
      Codigo.Text:=IntToStr(DMS.QYVendedoresHistTiposVHT_CODIGO.Value);
      Descricao.Text:=DMS.QYVendedoresHistTiposVHT_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Tipo de histórico não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVendedoresHistTipos.Close;
  end;
end;

procedure LocVendedoresHistTiposExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery); overload;
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYVendedoresHistTipos.Close;
    DMS.QYVendedoresHistTipos.ParamByName('codigo').AsInteger:=StrToInt(Codigo.Text);
    DMS.QYVendedoresHistTipos.Open;
    if not DMS.QYVendedoresHistTipos.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYVendedoresHistTiposVHT_CODIGO.Value.ToString;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYVendedoresHistTiposVHT_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Tipo de histórico não encontrado.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVendedoresHistTipos.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc Vias'}
procedure LocViasBotao(Codigo, Descricao: TEdit);
begin
  Application.CreateForm(TFormViasLoc, FormViasLoc);
  FormViasLoc.ShowModal;
  if ViasLoc.Procurar then
  begin
    Codigo.Text:=FormViasLoc.QYViasVIA_CODIGO.Value.ToString;
    Descricao.Text:=FormViasLoc.QYViasVIA_DESCRICAO.Value;
  end;
  FormViasLoc.Free;
  FormViasLoc:=nil;
end;

procedure LocViasBotao(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormViasLoc, FormViasLoc);
  FormViasLoc.ShowModal;
  if ViasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormViasLoc.QYViasVIA_CODIGO.Value;
    Tabela.FieldByName(Descricao.DataField).Value:=FormViasLoc.QYViasVIA_DESCRICAO.Value;
  end;
  FormViasLoc.Free;
  FormViasLoc:=nil;
end;

procedure LocViasExit(Codigo, Descricao: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Descricao.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYVias.Close;
    DMS.QYVias.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYVias.Open;
    if not DMS.QYVias.IsEmpty then
    begin
      Codigo.Text:=DMS.QYViasVIA_CODIGO.Value.ToString;
      Descricao.Text:=DMS.QYViasVIA_DESCRICAO.Value;
    end else
    begin
      Codigo.Clear;
      Descricao.Clear;
      MessageDlg('Via não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVias.Close;
  end;
end;

procedure LocViasExit(Codigo, Descricao: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Descricao.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYVias.Close;
    DMS.QYVias.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYVias.Open;
    if not DMS.QYVias.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYViasVIA_CODIGO.Value;
      Tabela.FieldByName(Descricao.DataField).Value:=DMS.QYViasVIA_DESCRICAO.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Descricao.DataField).Clear;
      MessageDlg('Via não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYVias.Close;
  end;
end;
{$ENDREGION}

//#################################################################################################
{$REGION 'Loc ZapInstancias'}
procedure LocZapInstanciasBotao(Codigo, Nome: TEdit);
begin
  Application.CreateForm(TFormZapInstanciasLoc, FormZapInstanciasLoc);
  FormZapInstanciasLoc.ShowModal;
  if ZapInstanciasLoc.Procurar then
  begin
    Codigo.Text:=FormZapInstanciasLoc.QYZapInstanciasZIN_CODIGO.Value.ToString;
    Nome.Text:=FormZapInstanciasLoc.QYZapInstanciasZIN_NOME.Value;
  end;
  FormZapInstanciasLoc.Free;
  FormZapInstanciasLoc:=nil;
end;

procedure LocZapInstanciasBotao(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  Application.CreateForm(TFormZapInstanciasLoc, FormZapInstanciasLoc);
  FormZapInstanciasLoc.ShowModal;
  if ZapInstanciasLoc.Procurar=True then
  begin
    Tabela.Edit;
    Tabela.FieldByName(Codigo.DataField).Value:=FormZapInstanciasLoc.QYZapInstanciasZIN_CODIGO.Value;
    Tabela.FieldByName(Nome.DataField).Value:=FormZapInstanciasLoc.QYZapInstanciasZIN_NOME.Value;
  end;
  FormZapInstanciasLoc.Free;
  FormZapInstanciasLoc:=nil;
end;

procedure LocZapInstanciasExit(Codigo, Nome: TEdit);
begin
  if Codigo.Text='' then
  begin
    Codigo.Clear;
    Nome.Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if Codigo.Text<>'' then
  begin
    DMS.QYZapInstancias.Close;
    DMS.QYZapInstancias.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYZapInstancias.Open;
    if not DMS.QYZapInstancias.IsEmpty then
    begin
      Codigo.Text:=DMS.QYZapInstanciasZIN_CODIGO.Value.ToString;
      Nome.Text:=DMS.QYZapInstanciasZIN_NOME.Value;
    end else
    begin
      Codigo.Clear;
      Nome.Clear;
      MessageDlg('Instância não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYZapInstancias.Close;
  end;
end;

procedure LocZapInstanciasExit(Codigo, Nome: TDBEdit; Tabela: TFDQuery);
begin
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text='') then
  begin
    Tabela.FieldByName(Codigo.DataField).Clear;
    Tabela.FieldByName(Nome.DataField).Clear;
    Exit;
  end;
  if DM.CodigosOld=Codigo.Text then
  Exit;
  if (Tabela.State in [dsInsert, dsEdit]) and (Codigo.Text<>'') then
  begin
    DMS.QYZapInstancias.Close;
    DMS.QYZapInstancias.ParamByName('codigo').AsString:=Codigo.Text;
    DMS.QYZapInstancias.Open;
    if not DMS.QYZapInstancias.IsEmpty then
    begin
      Tabela.FieldByName(Codigo.DataField).Value:=DMS.QYZapInstanciasZIN_CODIGO.Value;
      Tabela.FieldByName(Nome.DataField).Value:=DMS.QYZapInstanciasZIN_NOME.Value;
    end else
    begin
      Tabela.FieldByName(Codigo.DataField).Clear;
      Tabela.FieldByName(Nome.DataField).Clear;
      MessageDlg('Instância não encontrada.',mtInformation,[mbOk],0);
      Codigo.SetFocus;
    end;
    DMS.QYZapInstancias.Close;
  end;
end;
{$ENDREGION}

initialization
  fsRTTIModules.Add(TFuncoesFast);

end.
