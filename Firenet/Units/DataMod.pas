unit DataMod;

interface

uses
  Windows, DB, IdBaseComponent, IdMessage, Classes, SysUtils, Dialogs, DateUtils,
  Vcl.Forms, Graphics, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util,
  FireDAC.Comp.Script, ACBrNFe, ACBrBase, ACBrDFe, ACBrPAFNFCe, ACBrDFeSSL,
  pcnConversao, pcnConversaoNFe;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    DSAcessos: TDataSource;
    DSAgrupadores: TDataSource;
    DSAliquotas: TDataSource;
    DSAlmoxarifados: TDataSource;
    DSAtividades: TDataSource;
    DSAux: TDataSource;
    DSBairros: TDataSource;
    DSBeneficios: TDataSource;
    DSCaixa: TDataSource;
    DSCaixaSaldo: TDataSource;
    DSChecklists: TDataSource;
    DSChecklistsItens: TDataSource;
    DSCidades: TDataSource;
    DSClassFiscal: TDataSource;
    DSClassTrib: TDataSource;
    DSClientes: TDataSource;
    DSComponentes: TDataSource;
    DSCompras: TDataSource;
    DSComprasItens: TDataSource;
    DSCondicoes: TDataSource;
    DSCondicoesItens: TDataSource;
    DSContas: TDataSource;
    DSContasMov: TDataSource;
    DSContatos: TDataSource;
    DSConvenios: TDataSource;
    DSCreditoPres: TDataSource;
    DSCst: TDataSource;
    DSCupom: TDataSource;
    DSCupomItens: TDataSource;
    DSDespesas: TDataSource;
    DSEcf: TDataSource;
    DSEmpresa: TDataSource;
    DSEquipamentos: TDataSource;
    DSEstados: TDataSource;
    DSEstoque: TDataSource;
    DSEtapas: TDataSource;
    DSEtiquetas: TDataSource;
    DSFamilias: TDataSource;
    DSFci: TDataSource;
    DSFciItens: TDataSource;
    DSFornecedores: TDataSource;
    DSGrupos: TDataSource;
    DSHoras: TDataSource;
    DSIcms: TDataSource;
    DSIpi: TDataSource;
    DSIss: TDataSource;
    DSLocs: TDataSource;
    DSLotes: TDataSource;
    DSMailings: TDataSource;
    DSManifestacoes: TDataSource;
    DSMetas: TDataSource;
    DSMetasConfig: TDataSource;
    DSModulos: TDataSource;
    DSNaturezas: TDataSource;
    DSNbs: TDataSource;
    DSNfce: TDataSource;
    DSNfceInutilizadas: TDataSource;
    DSNfceItens: TDataSource;
    DSNfceLogs: TDataSource;
    DSNfcePagamentos: TDataSource;
    DSNfe: TDataSource;
    DSNfeCCe: TDataSource;
    DSNfeCodigo: TDataSource;
    DSNfeInutilizadas: TDataSource;
    DSNfeItens: TDataSource;
    DSNfeItensAdicoes: TDataSource;
    DSNfeRef: TDataSource;
    DSNfse: TDataSource;
    DSNfseCodigo: TDataSource;
    DSNfseItens: TDataSource;
    DSNotas: TDataSource;
    DSNotasCodigo: TDataSource;
    DSNotasItens: TDataSource;
    DSPagar: TDataSource;
    DSPaises: TDataSource;
    DSParametros: TDataSource;
    DSPiscofins: TDataSource;
    DSProducao: TDataSource;
    DSProducaoItens: TDataSource;
    DSProducaoItensComp: TDataSource;
    DSProdutos: TDataSource;
    DSProdutosCodigos: TDataSource;
    DSProdutosComp: TDataSource;
    DSProdutosEtapas: TDataSource;
    DSProdutosFotos: TDataSource;
    DSProdutosQtde: TDataSource;
    DSReceber: TDataSource;
    DSReceberItens: TDataSource;
    DSReceitas: TDataSource;
    DSRegrasFiscais: TDataSource;
    DSRuas: TDataSource;
    DSServicos: TDataSource;
    DSServicosCheck: TDataSource;
    DSServicosHoras: TDataSource;
    DSServicosItens: TDataSource;
    DSTabPreco: TDataSource;
    DSTaxas: TDataSource;
    DSTelas: TDataSource;
    DSTributos: TDataSource;
    DSUsuarios: TDataSource;
    DSVendas: TDataSource;
    DSVendasItens: TDataSource;
    DSVendedores: TDataSource;
    DSVendedoresHist: TDataSource;
    DSVendedoresHistTipos: TDataSource;
    DSVersao: TDataSource;
    DSVias: TDataSource;
    FDScript: TFDScript;
    IdMessage1: TIdMessage;
    QYAux: TFDQuery;
    QYAux2: TFDQuery;
    QYAux3: TFDQuery;
    QYAux4: TFDQuery;
    QYDateTime: TFDQuery;
    QYDateTimeDATA: TDateField;
    QYDateTimeHORA: TTimeField;
    TBAcessos: TFDQuery;
    TBAcessosACE_ACESSO: TStringField;
    TBAcessosACE_CODIGO: TIntegerField;
    TBAcessosACE_COMPONENTE: TStringField;
    TBAcessosACE_DESCRICAO: TStringField;
    TBAcessosACE_TELA: TStringField;
    TBAcessosACE_TIPO: TStringField;
    TBAcessosACE_USUARIO: TIntegerField;
    TBAgrupadores: TFDQuery;
    TBAgrupadoresAGR_CODIGO: TIntegerField;
    TBAgrupadoresAGR_DESCRICAO: TStringField;
    TBAgrupadoresAGR_DTATUALIZACAO: TDateField;
    TBAgrupadoresAGR_DTCADASTRO: TDateField;
    TBAgrupadoresAGR_HRATUALIZACAO: TTimeField;
    TBAgrupadoresAGR_HRCADASTRO: TTimeField;
    TBAgrupadoresAGR_USUARIO: TStringField;
    TBAliquotas: TFDQuery;
    TBAliquotasALI_ALIQCBS: TFMTBCDField;
    TBAliquotasALI_ALIQFCP: TFMTBCDField;
    TBAliquotasALI_ALIQFCPST: TFMTBCDField;
    TBAliquotasALI_ALIQIBSMUN: TFMTBCDField;
    TBAliquotasALI_ALIQIBSUF: TFMTBCDField;
    TBAliquotasALI_ALIQICMSADICST: TFMTBCDField;
    TBAliquotasALI_ALIQICMSINTER: TFMTBCDField;
    TBAliquotasALI_ALIQICMSINTERPART: TFMTBCDField;
    TBAliquotasALI_ALIQICMSRED: TFMTBCDField;
    TBAliquotasALI_ALIQICMSST: TFMTBCDField;
    TBAliquotasALI_ALIQUOTA: TFMTBCDField;
    TBAliquotasALI_ESTADO: TStringField;
    TBAliquotasALI_IEST: TStringField;
    TBAliquotasALI_NOMEESTADO: TStringField;
    TBAlmoxarifados: TFDQuery;
    TBAlmoxarifadosALM_CODIGO: TIntegerField;
    TBAlmoxarifadosALM_DESCRICAO: TStringField;
    TBAlmoxarifadosALM_DTATUALIZACAO: TDateField;
    TBAlmoxarifadosALM_DTCADASTRO: TDateField;
    TBAlmoxarifadosALM_HRATUALIZACAO: TTimeField;
    TBAlmoxarifadosALM_HRCADASTRO: TTimeField;
    TBAlmoxarifadosALM_STATUS: TStringField;
    TBAlmoxarifadosALM_USUARIO: TStringField;
    TBAtividades: TFDQuery;
    TBAtividadesATI_CODIGO: TIntegerField;
    TBAtividadesATI_DESCRICAO: TStringField;
    TBAtividadesATI_DTATUALIZACAO: TDateField;
    TBAtividadesATI_DTCADASTRO: TDateField;
    TBAtividadesATI_HRATUALIZACAO: TTimeField;
    TBAtividadesATI_HRCADASTRO: TTimeField;
    TBAtividadesATI_USUARIO: TStringField;
    TBBairros: TFDQuery;
    TBBairrosBAI_CIDADE: TIntegerField;
    TBBairrosBAI_CODIGO: TIntegerField;
    TBBairrosBAI_ESTADO: TIntegerField;
    TBBairrosBAI_NOME: TStringField;
    TBBairrosBAI_PAIS: TIntegerField;
    TBBairrosCID_NOME: TStringField;
    TBBairrosESD_NOME: TStringField;
    TBBairrosESD_SIGLA: TStringField;
    TBBairrosPAI_NOME: TStringField;
    TBBeneficios: TFDQuery;
    TBBeneficiosBEN_CODIGO: TStringField;
    TBBeneficiosBEN_DESCRICAO: TMemoField;
    TBBeneficiosBEN_DTATUALIZACAO: TDateField;
    TBBeneficiosBEN_DTCADASTRO: TDateField;
    TBBeneficiosBEN_HRATUALIZACAO: TTimeField;
    TBBeneficiosBEN_HRCADASTRO: TTimeField;
    TBBeneficiosBEN_TIPO: TStringField;
    TBBeneficiosBEN_USUARIO: TStringField;
    TBCaixa: TFDQuery;
    TBCaixaCAI_CLIENTE: TIntegerField;
    TBCaixaCAI_CLIENTENOME: TStringField;
    TBCaixaCAI_CODIGO: TIntegerField;
    TBCaixaCAI_CONTA: TIntegerField;
    TBCaixaCAI_DATA: TDateField;
    TBCaixaCAI_DESCRICAO: TStringField;
    TBCaixaCAI_DTATUALIZACAO: TDateField;
    TBCaixaCAI_DTCADASTRO: TDateField;
    TBCaixaCAI_ENTRADASAIDA: TStringField;
    TBCaixaCAI_FORNECEDOR: TIntegerField;
    TBCaixaCAI_FORNECEDORNOME: TStringField;
    TBCaixaCAI_HRATUALIZACAO: TTimeField;
    TBCaixaCAI_HRCADASTRO: TTimeField;
    TBCaixaCAI_NUMCHEQUE: TStringField;
    TBCaixaCAI_NUMDOCTO: TStringField;
    TBCaixaCAI_ORIGEM: TStringField;
    TBCaixaCAI_SALDOANTERIOR: TFMTBCDField;
    TBCaixaCAI_SALDOPOSTERIOR: TFMTBCDField;
    TBCaixaCAI_TIPODOCTO: TStringField;
    TBCaixaCAI_USUARIO: TStringField;
    TBCaixaCAI_VALOR: TFMTBCDField;
    TBCaixaCAI_VENDEDOR: TIntegerField;
    TBCaixaCON_NOME: TStringField;
    TBCaixaSaldo: TFDQuery;
    TBCaixaSaldoCAS_CODIGO: TIntegerField;
    TBCaixaSaldoCAS_SALDOATUAL: TFMTBCDField;
    TBCaixaVEN_NOME: TStringField;
    TBChecklists: TFDQuery;
    TBChecklistsCHK_CODIGO: TIntegerField;
    TBChecklistsCHK_DESCRICAO: TStringField;
    TBChecklistsCHK_DTATUALIZACAO: TDateField;
    TBChecklistsCHK_DTCADASTRO: TDateField;
    TBChecklistsCHK_HRATUALIZACAO: TTimeField;
    TBChecklistsCHK_HRCADASTRO: TTimeField;
    TBChecklistsCHK_STATUS: TStringField;
    TBChecklistsCHK_USUARIO: TStringField;
    TBChecklistsItens: TFDQuery;
    TBChecklistsItensCKI_CHECKLIST: TIntegerField;
    TBChecklistsItensCKI_CODIGO: TIntegerField;
    TBChecklistsItensCKI_DESCRICAO: TStringField;
    TBChecklistsItensCKI_STATUS: TStringField;
    TBCidades: TFDQuery;
    TBCidadesCID_CODIGO: TIntegerField;
    TBCidadesCID_DIMOB: TIntegerField;
    TBCidadesCID_ESTADO: TIntegerField;
    TBCidadesCID_NOME: TStringField;
    TBCidadesCID_PAIS: TIntegerField;
    TBCidadesESD_NOME: TStringField;
    TBCidadesESD_SIGLA: TStringField;
    TBCidadesPAI_NOME: TStringField;
    TBClassFiscal: TFDQuery;
    TBClassFiscalCLF_ALIQUOTAESTADUAL: TFMTBCDField;
    TBClassFiscalCLF_ALIQUOTAIMPORTACAO: TFMTBCDField;
    TBClassFiscalCLF_ALIQUOTAMUNICIPAL: TFMTBCDField;
    TBClassFiscalCLF_ALIQUOTANACIONAL: TFMTBCDField;
    TBClassFiscalCLF_CODIGO: TStringField;
    TBClassFiscalCLF_DESCRICAO: TStringField;
    TBClassFiscalCLF_DTATUALIZACAO: TDateField;
    TBClassFiscalCLF_DTCADASTRO: TDateField;
    TBClassFiscalCLF_EXCECAO: TIntegerField;
    TBClassFiscalCLF_HRATUALIZACAO: TTimeField;
    TBClassFiscalCLF_HRCADASTRO: TTimeField;
    TBClassFiscalCLF_USUARIO: TStringField;
    TBClassFiscalCLF_VERSAO: TStringField;
    TBClassFiscalCLF_VIGENCIAFIM: TDateField;
    TBClassFiscalCLF_VIGENCIAINI: TDateField;
    TBClassTrib: TFDQuery;
    TBClassTribCLT_ALIQCBSRED: TFMTBCDField;
    TBClassTribCLT_ALIQIBSRED: TFMTBCDField;
    TBClassTribCLT_CODIGO: TStringField;
    TBClassTribCLT_CREDITOPRESUMIDO: TStringField;
    TBClassTribCLT_DESCRICAO: TStringField;
    TBClassTribCLT_DOCBPE: TStringField;
    TBClassTribCLT_DOCBPETA: TStringField;
    TBClassTribCLT_DOCBPETM: TStringField;
    TBClassTribCLT_DOCCTE: TStringField;
    TBClassTribCLT_DOCCTEOS: TStringField;
    TBClassTribCLT_DOCDERE: TStringField;
    TBClassTribCLT_DOCDIR: TStringField;
    TBClassTribCLT_DOCDUIMP: TStringField;
    TBClassTribCLT_DOCNFAG: TStringField;
    TBClassTribCLT_DOCNFCE: TStringField;
    TBClassTribCLT_DOCNFCOM: TStringField;
    TBClassTribCLT_DOCNFE: TStringField;
    TBClassTribCLT_DOCNFEABI: TStringField;
    TBClassTribCLT_DOCNFGAS: TStringField;
    TBClassTribCLT_DOCNFSE: TStringField;
    TBClassTribCLT_DOCNFSEVIA: TStringField;
    TBClassTribCLT_DOCNF3E: TStringField;
    TBClassTribCLT_DTATUALIZACAO: TDateField;
    TBClassTribCLT_DTCADASTRO: TDateField;
    TBClassTribCLT_DTPUBLICACAO: TDateField;
    TBClassTribCLT_DTVIGENCIAFIM: TDateField;
    TBClassTribCLT_DTVIGENCIAINICIO: TDateField;
    TBClassTribCLT_ESTORNOCREDITO: TStringField;
    TBClassTribCLT_HRATUALIZACAO: TTimeField;
    TBClassTribCLT_HRCADASTRO: TTimeField;
    TBClassTribCLT_LINK: TStringField;
    TBClassTribCLT_MONODIFERIMENTO: TStringField;
    TBClassTribCLT_MONOFASICO: TStringField;
    TBClassTribCLT_MONORETENCAO: TStringField;
    TBClassTribCLT_MONORETIDO: TStringField;
    TBClassTribCLT_REDBASE: TStringField;
    TBClassTribCLT_TIPOALIQUOTA: TStringField;
    TBClassTribCLT_TIPORECEITA: TStringField;
    TBClassTribCLT_TRIBUTACAOREGULAR: TStringField;
    TBClassTribCLT_USUARIO: TStringField;
    TBClientes: TFDQuery;
    TBClientesATI_DESCRICAO: TStringField;
    TBClientesCLI_AFE: TStringField;
    TBClientesCLI_ALVARA: TStringField;
    TBClientesCLI_ALVARASANITARIO: TStringField;
    TBClientesCLI_ATIVIDADE: TIntegerField;
    TBClientesCLI_ATUALIZAR: TStringField;
    TBClientesCLI_BAIRRO: TStringField;
    TBClientesCLI_BAIRROCOB: TStringField;
    TBClientesCLI_BLOQUEARVENDA: TStringField;
    TBClientesCLI_CEP: TStringField;
    TBClientesCLI_CEPCOB: TStringField;
    TBClientesCLI_CIDADE: TStringField;
    TBClientesCLI_CIDADECOB: TStringField;
    TBClientesCLI_CIDADECODIGO: TIntegerField;
    TBClientesCLI_CIDADECODIGOCOB: TIntegerField;
    TBClientesCLI_CLASSIFICACAO: TStringField;
    TBClientesCLI_CNPJ: TStringField;
    TBClientesCLI_CNPJCOB: TStringField;
    TBClientesCLI_CNS: TStringField;
    TBClientesCLI_CODIGO: TIntegerField;
    TBClientesCLI_COMPLEMENTO: TStringField;
    TBClientesCLI_COMPLEMENTOCOB: TStringField;
    TBClientesCLI_CONDICAO: TIntegerField;
    TBClientesCLI_CONJUGE: TStringField;
    TBClientesCLI_CONJUGECPF: TStringField;
    TBClientesCLI_CONJUGEDTNASC: TDateField;
    TBClientesCLI_CONJUGERG: TStringField;
    TBClientesCLI_CONTATO: TStringField;
    TBClientesCLI_CONTRIBUINTEICMS: TStringField;
    TBClientesCLI_CPF: TStringField;
    TBClientesCLI_DESCONTO: TFMTBCDField;
    TBClientesCLI_DIACOBRANCA: TIntegerField;
    TBClientesCLI_DTATUALIZACAO: TDateField;
    TBClientesCLI_DTCADASTRO: TDateField;
    TBClientesCLI_DTNASC: TDateField;
    TBClientesCLI_DTOBITO: TDateField;
    TBClientesCLI_EMAIL: TStringField;
    TBClientesCLI_EMAIL2: TStringField;
    TBClientesCLI_ENDERECO: TStringField;
    TBClientesCLI_ENDERECOCOB: TStringField;
    TBClientesCLI_ENQUADRAMENTO: TStringField;
    TBClientesCLI_ESTADO: TStringField;
    TBClientesCLI_ESTADOCIVIL: TStringField;
    TBClientesCLI_ESTADOCOB: TStringField;
    TBClientesCLI_ESTADOCODIGO: TIntegerField;
    TBClientesCLI_ESTADOCODIGOCOB: TIntegerField;
    TBClientesCLI_FANTASIA: TStringField;
    TBClientesCLI_FONE0800: TStringField;
    TBClientesCLI_FONE1: TStringField;
    TBClientesCLI_FONE2: TStringField;
    TBClientesCLI_FONE3: TStringField;
    TBClientesCLI_FRETE: TStringField;
    TBClientesCLI_HRATUALIZACAO: TTimeField;
    TBClientesCLI_HRCADASTRO: TTimeField;
    TBClientesCLI_IDESTRANGEIRO: TStringField;
    TBClientesCLI_IE: TStringField;
    TBClientesCLI_IECOB: TStringField;
    TBClientesCLI_IM: TIntegerField;
    TBClientesCLI_LIMITECREDITO: TFMTBCDField;
    TBClientesCLI_LOCALESTUDA: TIntegerField;
    TBClientesCLI_LOCALTRABALHO: TIntegerField;
    TBClientesCLI_MAE: TStringField;
    TBClientesCLI_MAEEMAIL: TStringField;
    TBClientesCLI_MAEFONE: TStringField;
    TBClientesCLI_MAILING: TIntegerField;
    TBClientesCLI_MENSALISTA: TStringField;
    TBClientesCLI_MSN: TStringField;
    TBClientesCLI_NATURALIDADE: TStringField;
    TBClientesCLI_NEXTEL: TStringField;
    TBClientesCLI_NOME: TStringField;
    TBClientesCLI_NUMERO: TStringField;
    TBClientesCLI_NUMEROCOB: TStringField;
    TBClientesCLI_OBITO: TStringField;
    TBClientesCLI_OBSERVACOES: TMemoField;
    TBClientesCLI_ORIENTACAOCOBRANCA: TStringField;
    TBClientesCLI_PAI: TStringField;
    TBClientesCLI_PAIEMAIL: TStringField;
    TBClientesCLI_PAIFONE: TStringField;
    TBClientesCLI_PAIS: TStringField;
    TBClientesCLI_PAISCOB: TStringField;
    TBClientesCLI_PAISCODIGO: TIntegerField;
    TBClientesCLI_PAISCODIGOCOB: TIntegerField;
    TBClientesCLI_PASSWORD: TStringField;
    TBClientesCLI_PONTOS: TFMTBCDField;
    TBClientesCLI_PROFISSAO: TStringField;
    TBClientesCLI_RECEBEAVISOS: TStringField;
    TBClientesCLI_REGPROFISSIONAL: TStringField;
    TBClientesCLI_REPOSICOES: TIntegerField;
    TBClientesCLI_RG: TStringField;
    TBClientesCLI_SAME: TStringField;
    TBClientesCLI_SETOR: TIntegerField;
    TBClientesCLI_SEXO: TStringField;
    TBClientesCLI_SITE: TStringField;
    TBClientesCLI_STATUS: TStringField;
    TBClientesCLI_SUFRAMA: TStringField;
    TBClientesCLI_TABELAPRECO: TStringField;
    TBClientesCLI_TAXA: TIntegerField;
    TBClientesCLI_TELEVENDA: TIntegerField;
    TBClientesCLI_TIPOCLIENTE: TStringField;
    TBClientesCLI_TIPOCONSUMIDOR: TStringField;
    TBClientesCLI_TIPOPESSOA: TStringField;
    TBClientesCLI_TRANSPORTADORA: TIntegerField;
    TBClientesCLI_USUARIO: TStringField;
    TBClientesCLI_VENDEDOR: TIntegerField;
    TBClientesCPG_DESCRICAO: TStringField;
    TBClientesFOR_NOME: TStringField;
    TBClientesLCA_DESCRICAO: TStringField;
    TBClientesLCA_DESCRICAO1: TStringField;
    TBClientesMAI_DESCRICAO: TStringField;
    TBClientesTAX_DESCRICAO: TStringField;
    TBClientesTAX_TIPO: TStringField;
    TBClientesTAX_VALOR: TFMTBCDField;
    TBClientesVEN_NOME: TStringField;
    TBClientesVEN_NOME1: TStringField;
    TBComponentes: TFDQuery;
    TBComponentesCOM_COMPONENTE: TStringField;
    TBComponentesCOM_DESCRICAO: TStringField;
    TBComponentesCOM_TELA: TStringField;
    TBComponentesCOM_TIPO: TStringField;
    TBCompras: TFDQuery;
    TBComprasCOM_ALIQICMSCREDSN: TFMTBCDField;
    TBComprasCOM_BAIRRO: TStringField;
    TBComprasCOM_BAIXADATA: TDateField;
    TBComprasCOM_BAIXAPOR: TStringField;
    TBComprasCOM_BASECOFINS: TFMTBCDField;
    TBComprasCOM_BASECOFINSST: TFMTBCDField;
    TBComprasCOM_BASEICMS: TFMTBCDField;
    TBComprasCOM_BASEICMSST: TFMTBCDField;
    TBComprasCOM_BASEIPI: TFMTBCDField;
    TBComprasCOM_BASEISS: TFMTBCDField;
    TBComprasCOM_BASEPIS: TFMTBCDField;
    TBComprasCOM_BASEPISST: TFMTBCDField;
    TBComprasCOM_CALCULARTOTAIS: TStringField;
    TBComprasCOM_CEP: TStringField;
    TBComprasCOM_CFOP: TIntegerField;
    TBComprasCOM_CFOPDESC: TStringField;
    TBComprasCOM_CHAVEACESSO: TStringField;
    TBComprasCOM_CIDADE: TStringField;
    TBComprasCOM_CIDADECODIGO: TIntegerField;
    TBComprasCOM_CNPJ: TStringField;
    TBComprasCOM_CODIGO: TIntegerField;
    TBComprasCOM_COMPLEMENTO: TStringField;
    TBComprasCOM_CONDICAO: TIntegerField;
    TBComprasCOM_CONDICAOMEMO: TMemoField;
    TBComprasCOM_CONTATO: TStringField;
    TBComprasCOM_CPF: TStringField;
    TBComprasCOM_DESCPORC: TFMTBCDField;
    TBComprasCOM_DESCVALOR: TFMTBCDField;
    TBComprasCOM_DIAPREFERENCIAL: TIntegerField;
    TBComprasCOM_DTATUALIZACAO: TDateField;
    TBComprasCOM_DTCADASTRO: TDateField;
    TBComprasCOM_DTENTRADA: TDateField;
    TBComprasCOM_DTENTREGA: TDateField;
    TBComprasCOM_DTPRESTSERVICO: TDateField;
    TBComprasCOM_ENDERECO: TStringField;
    TBComprasCOM_ENTRADASAIDA: TStringField;
    TBComprasCOM_ESPECIE: TStringField;
    TBComprasCOM_ESTADO: TStringField;
    TBComprasCOM_ESTADOCODIGO: TIntegerField;
    TBComprasCOM_FONE1: TStringField;
    TBComprasCOM_FORMAPAGTO: TStringField;
    TBComprasCOM_FORNECEDOR: TIntegerField;
    TBComprasCOM_FRETE: TStringField;
    TBComprasCOM_HRATUALIZACAO: TTimeField;
    TBComprasCOM_HRCADASTRO: TTimeField;
    TBComprasCOM_IE: TStringField;
    TBComprasCOM_LACRES: TStringField;
    TBComprasCOM_MARCA: TStringField;
    TBComprasCOM_MODELO: TIntegerField;
    TBComprasCOM_MOVIMENTAESTOQUE: TStringField;
    TBComprasCOM_MOVIMENTAFINANCEIRO: TStringField;
    TBComprasCOM_NOME: TStringField;
    TBComprasCOM_NOTADATA: TDateField;
    TBComprasCOM_NOTANUMERO: TIntegerField;
    TBComprasCOM_NUMERO: TStringField;
    TBComprasCOM_OBSERVACOES: TMemoField;
    TBComprasCOM_PESOBRUTO: TFMTBCDField;
    TBComprasCOM_PESOLIQ: TFMTBCDField;
    TBComprasCOM_REBOQUEPLACA: TStringField;
    TBComprasCOM_REBOQUEPLACAUF: TStringField;
    TBComprasCOM_REBOQUERNTC: TStringField;
    TBComprasCOM_RG: TStringField;
    TBComprasCOM_SERIE: TIntegerField;
    TBComprasCOM_STATUS: TStringField;
    TBComprasCOM_TOTALCOFINS: TFMTBCDField;
    TBComprasCOM_TOTALCOFINSST: TFMTBCDField;
    TBComprasCOM_TOTALFCP: TFMTBCDField;
    TBComprasCOM_TOTALICMS: TFMTBCDField;
    TBComprasCOM_TOTALICMSCREDSN: TFMTBCDField;
    TBComprasCOM_TOTALICMSST: TFMTBCDField;
    TBComprasCOM_TOTALICMSUFDEST: TFMTBCDField;
    TBComprasCOM_TOTALICMSUFREMET: TFMTBCDField;
    TBComprasCOM_TOTALIPI: TFMTBCDField;
    TBComprasCOM_TOTALISS: TFMTBCDField;
    TBComprasCOM_TOTALISSDEDUCAO: TFMTBCDField;
    TBComprasCOM_TOTALISSDESCCOND: TFMTBCDField;
    TBComprasCOM_TOTALISSDESCINCOND: TFMTBCDField;
    TBComprasCOM_TOTALISSOUTROS: TFMTBCDField;
    TBComprasCOM_TOTALISSRETENCAO: TFMTBCDField;
    TBComprasCOM_TOTALITENS: TFMTBCDField;
    TBComprasCOM_TOTALPIS: TFMTBCDField;
    TBComprasCOM_TOTALPISST: TFMTBCDField;
    TBComprasCOM_TOTALPRODUTOS: TFMTBCDField;
    TBComprasCOM_TOTALSERVICOS: TFMTBCDField;
    TBComprasCOM_TOTALTRIBUTOS: TFMTBCDField;
    TBComprasCOM_TOTALTRIBUTOSEST: TFMTBCDField;
    TBComprasCOM_TOTALTRIBUTOSFED: TFMTBCDField;
    TBComprasCOM_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBComprasCOM_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBComprasCOM_TRANSPCIDADE: TStringField;
    TBComprasCOM_TRANSPCNPJ: TStringField;
    TBComprasCOM_TRANSPCPF: TStringField;
    TBComprasCOM_TRANSPENDERECO: TStringField;
    TBComprasCOM_TRANSPESTADO: TStringField;
    TBComprasCOM_TRANSPFONE: TStringField;
    TBComprasCOM_TRANSPIE: TStringField;
    TBComprasCOM_TRANSPNOME: TStringField;
    TBComprasCOM_TRANSPORTADORA: TIntegerField;
    TBComprasCOM_USUARIO: TStringField;
    TBComprasCOM_VALORDESPACES: TFMTBCDField;
    TBComprasCOM_VALORFRETE: TFMTBCDField;
    TBComprasCOM_VALORSEGURO: TFMTBCDField;
    TBComprasCOM_VALORTOTAL: TFMTBCDField;
    TBComprasCOM_VEICULOPLACA: TStringField;
    TBComprasCOM_VEICULOPLACAUF: TStringField;
    TBComprasCOM_VEICULORNTC: TStringField;
    TBComprasCOM_VOLUMES: TIntegerField;
    TBComprasCOM_VOLUMESNUM: TStringField;
    TBComprasCPG_DESCRICAO: TStringField;
    TBComprasItens: TFDQuery;
    TBComprasItensALM_DESCRICAO: TStringField;
    TBComprasItensCLF_DESCRICAO: TStringField;
    TBComprasItensCOI_ALIQCOFINS: TFMTBCDField;
    TBComprasItensCOI_ALIQCOFINSST: TFMTBCDField;
    TBComprasItensCOI_ALIQFCP: TFMTBCDField;
    TBComprasItensCOI_ALIQICMS: TFMTBCDField;
    TBComprasItensCOI_ALIQICMSADICST: TFMTBCDField;
    TBComprasItensCOI_ALIQICMSINTER: TFMTBCDField;
    TBComprasItensCOI_ALIQICMSINTERPART: TFMTBCDField;
    TBComprasItensCOI_ALIQICMSRED: TFMTBCDField;
    TBComprasItensCOI_ALIQICMSST: TFMTBCDField;
    TBComprasItensCOI_ALIQIPI: TFMTBCDField;
    TBComprasItensCOI_ALIQISS: TFMTBCDField;
    TBComprasItensCOI_ALIQPIS: TFMTBCDField;
    TBComprasItensCOI_ALIQPISST: TFMTBCDField;
    TBComprasItensCOI_ALMOXARIFADO: TIntegerField;
    TBComprasItensCOI_BASECOFINS: TFMTBCDField;
    TBComprasItensCOI_BASECOFINSST: TFMTBCDField;
    TBComprasItensCOI_BASEICMS: TFMTBCDField;
    TBComprasItensCOI_BASEICMSRED: TFMTBCDField;
    TBComprasItensCOI_BASEICMSST: TFMTBCDField;
    TBComprasItensCOI_BASEIPI: TFMTBCDField;
    TBComprasItensCOI_BASEISS: TFMTBCDField;
    TBComprasItensCOI_BASEPIS: TFMTBCDField;
    TBComprasItensCOI_BASEPISST: TFMTBCDField;
    TBComprasItensCOI_CEST: TStringField;
    TBComprasItensCOI_CFOP: TIntegerField;
    TBComprasItensCOI_CIDADEISS: TIntegerField;
    TBComprasItensCOI_CLASSFISCAL: TStringField;
    TBComprasItensCOI_CODIGO: TIntegerField;
    TBComprasItensCOI_CODIGOBARRAS: TStringField;
    TBComprasItensCOI_COMPLEMENTO: TStringField;
    TBComprasItensCOI_COMPOEBASEICMS: TStringField;
    TBComprasItensCOI_COMPOEBASEICMSST: TStringField;
    TBComprasItensCOI_COMPRA: TIntegerField;
    TBComprasItensCOI_CONVERSAO: TFMTBCDField;
    TBComprasItensCOI_CSTCOFINS: TIntegerField;
    TBComprasItensCOI_CSTICMS: TIntegerField;
    TBComprasItensCOI_CSTIPI: TIntegerField;
    TBComprasItensCOI_CSTPIS: TIntegerField;
    TBComprasItensCOI_DESCPORC: TFMTBCDField;
    TBComprasItensCOI_DESCRICAO: TStringField;
    TBComprasItensCOI_DESCVALOR: TFMTBCDField;
    TBComprasItensCOI_DTENTREGA: TDateField;
    TBComprasItensCOI_ENQUADRAMENTOIPI: TIntegerField;
    TBComprasItensCOI_EXCECAO: TIntegerField;
    TBComprasItensCOI_FCI: TStringField;
    TBComprasItensCOI_INCENTIVOISS: TStringField;
    TBComprasItensCOI_INDICADORISS: TStringField;
    TBComprasItensCOI_INFOADICIONAL: TMemoField;
    TBComprasItensCOI_MODICMS: TStringField;
    TBComprasItensCOI_MODICMSST: TStringField;
    TBComprasItensCOI_ORIGEM: TStringField;
    TBComprasItensCOI_PAISISS: TIntegerField;
    TBComprasItensCOI_PESO: TFMTBCDField;
    TBComprasItensCOI_PESOTOTAL: TFMTBCDField;
    TBComprasItensCOI_PROCESSOISS: TStringField;
    TBComprasItensCOI_PRODUTO: TIntegerField;
    TBComprasItensCOI_PRODUTOREAL: TIntegerField;
    TBComprasItensCOI_QUANTIDADE: TFMTBCDField;
    TBComprasItensCOI_SERVICOISS: TStringField;
    TBComprasItensCOI_TIPO: TStringField;
    TBComprasItensCOI_TIPOISS: TStringField;
    TBComprasItensCOI_UNIDADE: TStringField;
    TBComprasItensCOI_VALORACESSORIAS: TFMTBCDField;
    TBComprasItensCOI_VALORCOFINS: TFMTBCDField;
    TBComprasItensCOI_VALORCOFINSST: TFMTBCDField;
    TBComprasItensCOI_VALORFCP: TFMTBCDField;
    TBComprasItensCOI_VALORFRETE: TFMTBCDField;
    TBComprasItensCOI_VALORICMS: TFMTBCDField;
    TBComprasItensCOI_VALORICMSCREDSN: TFMTBCDField;
    TBComprasItensCOI_VALORICMSST: TFMTBCDField;
    TBComprasItensCOI_VALORICMSUFDEST: TFMTBCDField;
    TBComprasItensCOI_VALORICMSUFREMET: TFMTBCDField;
    TBComprasItensCOI_VALORIPI: TFMTBCDField;
    TBComprasItensCOI_VALORISS: TFMTBCDField;
    TBComprasItensCOI_VALORISSDEDUCAO: TFMTBCDField;
    TBComprasItensCOI_VALORISSDESCCOND: TFMTBCDField;
    TBComprasItensCOI_VALORISSDESCINCOND: TFMTBCDField;
    TBComprasItensCOI_VALORISSOUTROS: TFMTBCDField;
    TBComprasItensCOI_VALORISSRETENCAO: TFMTBCDField;
    TBComprasItensCOI_VALORPIS: TFMTBCDField;
    TBComprasItensCOI_VALORPISST: TFMTBCDField;
    TBComprasItensCOI_VALORSEGURO: TFMTBCDField;
    TBComprasItensCOI_VALORTOTAL: TFMTBCDField;
    TBComprasItensCOI_VALORTOTALBRUTO: TFMTBCDField;
    TBComprasItensCOI_VALORTRIBUTOS: TFMTBCDField;
    TBComprasItensCOI_VALORTRIBUTOSEST: TFMTBCDField;
    TBComprasItensCOI_VALORTRIBUTOSFED: TFMTBCDField;
    TBComprasItensCOI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBComprasItensCOI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBComprasItensCOI_VALORUNIT: TFMTBCDField;
    TBComprasItensICM_CALCULACREDITOSN: TStringField;
    TBComprasItensICM_DESCRICAO: TStringField;
    TBComprasItensIPI_DESCRICAO: TStringField;
    TBComprasItensISS_DESCRICAO: TStringField;
    TBComprasItensNAT_CALCULACREDITOSN: TStringField;
    TBComprasItensNAT_DESCRICAO: TStringField;
    TBComprasItensPIS_DESCRICAO: TStringField;
    TBComprasItensPIS_DESCRICAO1: TStringField;
    TBComprasItensPRO_NOME: TStringField;
    TBComprasNAT_CALCULACREDITOSN: TStringField;
    TBCondicoes: TFDQuery;
    TBCondicoesCON_NOME: TStringField;
    TBCondicoesCPG_ATUALIZAR: TStringField;
    TBCondicoesCPG_BAIXARPRIMEIRAPARC: TStringField;
    TBCondicoesCPG_CODIGO: TIntegerField;
    TBCondicoesCPG_CONTA: TIntegerField;
    TBCondicoesCPG_CUPOM: TStringField;
    TBCondicoesCPG_DESCPORC: TFMTBCDField;
    TBCondicoesCPG_DESCRICAO: TStringField;
    TBCondicoesCPG_DESCRICAOCUPOM: TStringField;
    TBCondicoesCPG_DTATUALIZACAO: TDateField;
    TBCondicoesCPG_DTCADASTRO: TDateField;
    TBCondicoesCPG_FORMAPAGTO: TStringField;
    TBCondicoesCPG_HRATUALIZACAO: TTimeField;
    TBCondicoesCPG_HRCADASTRO: TTimeField;
    TBCondicoesCPG_MEIOPAGAMENTO: TStringField;
    TBCondicoesCPG_MENSAL: TStringField;
    TBCondicoesCPG_MOBILE: TStringField;
    TBCondicoesCPG_PADRAO: TStringField;
    TBCondicoesCPG_PARCELASIGUAIS: TStringField;
    TBCondicoesCPG_SOMENTEDIASUTEIS: TStringField;
    TBCondicoesCPG_STATUS: TStringField;
    TBCondicoesCPG_TIPOINTEGRACAO: TStringField;
    TBCondicoesCPG_TIPOPAGAMENTO: TStringField;
    TBCondicoesCPG_TOTALPARCELAS: TIntegerField;
    TBCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField;
    TBCondicoesCPG_USUARIO: TStringField;
    TBCondicoesItens: TFDQuery;
    TBCondicoesItensCPI_CODIGO: TIntegerField;
    TBCondicoesItensCPI_CONDICAO: TIntegerField;
    TBCondicoesItensCPI_DIAS: TIntegerField;
    TBCondicoesItensCPI_PORCENTAGEM: TFMTBCDField;
    TBContas: TFDQuery;
    TBContasBAN_NOME: TStringField;
    TBContasCON_AGENCIA: TStringField;
    TBContasCON_AGENCIADIGITO: TIntegerField;
    TBContasCON_ATUALIZAR: TStringField;
    TBContasCON_BAIXACODIGO: TIntegerField;
    TBContasCON_BANCO: TIntegerField;
    TBContasCON_CARTEIRA: TStringField;
    TBContasCON_CARTEIRACOD: TIntegerField;
    TBContasCON_CEDENTE: TStringField;
    TBContasCON_CEDENTEDIGITO: TIntegerField;
    TBContasCON_CEDENTEDOC: TStringField;
    TBContasCON_CEDENTENOME: TStringField;
    TBContasCON_CHAVEPIX: TStringField;
    TBContasCON_CHAVEPIXTIPO: TStringField;
    TBContasCON_CLIENTID: TStringField;
    TBContasCON_CLIENTSECRET: TStringField;
    TBContasCON_CNPJ: TStringField;
    TBContasCON_CODIGO: TIntegerField;
    TBContasCON_CONTA: TStringField;
    TBContasCON_CONTADIGITO: TIntegerField;
    TBContasCON_CONTATO: TStringField;
    TBContasCON_CONVENIO: TStringField;
    TBContasCON_DESCONTOTIPO: TStringField;
    TBContasCON_DIASBAIXA: TIntegerField;
    TBContasCON_DIASPROTESTO: TIntegerField;
    TBContasCON_DTATUALIZACAO: TDateField;
    TBContasCON_DTCADASTRO: TDateField;
    TBContasCON_ESPECIE: TStringField;
    TBContasCON_ESPECIEDOC: TStringField;
    TBContasCON_FONE1: TStringField;
    TBContasCON_FONE2: TStringField;
    TBContasCON_HRATUALIZACAO: TTimeField;
    TBContasCON_HRCADASTRO: TTimeField;
    TBContasCON_INSTRUCAO1: TStringField;
    TBContasCON_INSTRUCAO2: TStringField;
    TBContasCON_INSTRUCAO3: TStringField;
    TBContasCON_INSTRUCAO4: TStringField;
    TBContasCON_INSTRUCAO5: TStringField;
    TBContasCON_KEYUSER: TStringField;
    TBContasCON_LAYOUT: TStringField;
    TBContasCON_LOCALPAGTO: TStringField;
    TBContasCON_MODALIDADE: TIntegerField;
    TBContasCON_MORACODIGO: TStringField;
    TBContasCON_MORAJUROS: TFMTBCDField;
    TBContasCON_MORATIPO: TStringField;
    TBContasCON_MULTA: TFMTBCDField;
    TBContasCON_MULTATIPO: TStringField;
    TBContasCON_NOME: TStringField;
    TBContasCON_NOSSONUMDIGITOS: TIntegerField;
    TBContasCON_NOSSONUMFORMATAR: TStringField;
    TBContasCON_PROTESTOCODIGO: TIntegerField;
    TBContasCON_PROTESTOTIPO: TStringField;
    TBContasCON_SALDO: TFMTBCDField;
    TBContasCON_STATUS: TStringField;
    TBContasCON_TIPOCOBRANCA: TStringField;
    TBContasCON_USUARIO: TStringField;
    TBContasCON_VALORBOLETO: TFMTBCDField;
    TBContasMov: TFDQuery;
    TBContasMovCMO_CODIGO: TIntegerField;
    TBContasMovCMO_CONTA: TIntegerField;
    TBContasMovCMO_DESCRICAO: TStringField;
    TBContasMovCMO_DTATUALIZACAO: TDateField;
    TBContasMovCMO_DTCADASTRO: TDateField;
    TBContasMovCMO_DTMOVIMENTO: TDateField;
    TBContasMovCMO_ENTRADASAIDA: TStringField;
    TBContasMovCMO_HRATUALIZACAO: TTimeField;
    TBContasMovCMO_HRCADASTRO: TTimeField;
    TBContasMovCMO_NUMDOCTO: TStringField;
    TBContasMovCMO_OBSERVACOES: TMemoField;
    TBContasMovCMO_ORIGEM: TStringField;
    TBContasMovCMO_SALDOANTERIOR: TFMTBCDField;
    TBContasMovCMO_SALDOPOSTERIOR: TFMTBCDField;
    TBContasMovCMO_TIPODOCTO: TStringField;
    TBContasMovCMO_USUARIO: TStringField;
    TBContasMovCMO_VALOR: TFMTBCDField;
    TBContasMovCON_NOME: TStringField;
    TBContatos: TFDQuery;
    TBContatosCTT_CLIENTE: TIntegerField;
    TBContatosCTT_CODIGO: TIntegerField;
    TBContatosCTT_DTATUALIZACAO: TDateField;
    TBContatosCTT_DTCADASTRO: TDateField;
    TBContatosCTT_EMAIL: TStringField;
    TBContatosCTT_FONE: TStringField;
    TBContatosCTT_HRATUALIZACAO: TTimeField;
    TBContatosCTT_HRCADASTRO: TTimeField;
    TBContatosCTT_NOME: TStringField;
    TBContatosCTT_USUARIO: TStringField;
    TBConvenios: TFDQuery;
    TBConveniosCOV_CODIGO: TIntegerField;
    TBConveniosCOV_DESCRICAO: TStringField;
    TBConveniosCOV_DTATUALIZACAO: TDateField;
    TBConveniosCOV_DTCADASTRO: TDateField;
    TBConveniosCOV_HRATUALIZACAO: TTimeField;
    TBConveniosCOV_HRCADASTRO: TTimeField;
    TBConveniosCOV_OBSERVACOES: TMemoField;
    TBConveniosCOV_STATUS: TStringField;
    TBConveniosCOV_USUARIO: TStringField;
    TBCreditoPres: TFDQuery;
    TBCreditoPresCPR_APROPRIADFE: TStringField;
    TBCreditoPresCPR_APROPRIAEVENTO: TStringField;
    TBCreditoPresCPR_CBS: TStringField;
    TBCreditoPresCPR_CODIGO: TIntegerField;
    TBCreditoPresCPR_DEDUZTOTAL: TStringField;
    TBCreditoPresCPR_DESCRICAO: TStringField;
    TBCreditoPresCPR_DTATUALIZACAO: TDateField;
    TBCreditoPresCPR_DTCADASTRO: TDateField;
    TBCreditoPresCPR_HRATUALIZACAO: TTimeField;
    TBCreditoPresCPR_HRCADASTRO: TTimeField;
    TBCreditoPresCPR_IBS: TStringField;
    TBCreditoPresCPR_USUARIO: TStringField;
    TBCst: TFDQuery;
    TBCstCST_AJUSTECREDITO: TStringField;
    TBCstCST_CREDPRESIBSZFM: TStringField;
    TBCstCST_CODIGO: TStringField;
    TBCstCST_DESCRICAO: TStringField;
    TBCstCST_DIFERIMENTO: TStringField;
    TBCstCST_DTATUALIZACAO: TDateField;
    TBCstCST_DTCADASTRO: TDateField;
    TBCstCST_EXIGETRIBUTACAO: TStringField;
    TBCstCST_HRATUALIZACAO: TTimeField;
    TBCstCST_HRCADASTRO: TTimeField;
    TBCstCST_MONOFASICA: TStringField;
    TBCstCST_REDALIQUOTA: TStringField;
    TBCstCST_REDBASE: TStringField;
    TBCstCST_TRANSFCREDITO: TStringField;
    TBCstCST_USUARIO: TStringField;
    TBCupom: TFDQuery;
    TBCupomCLI_NOME: TStringField;
    TBCupomCPG_DESCRICAO: TStringField;
    TBCupomCUP_ACREVALOR: TFMTBCDField;
    TBCupomCUP_CCF: TIntegerField;
    TBCupomCUP_CHAVEACESSO: TStringField;
    TBCupomCUP_CLIENTE: TIntegerField;
    TBCupomCUP_CODIGO: TIntegerField;
    TBCupomCUP_CONDICAO: TIntegerField;
    TBCupomCUP_COO: TIntegerField;
    TBCupomCUP_DESCVALOR: TFMTBCDField;
    TBCupomCUP_DTATUALIZACAO: TDateField;
    TBCupomCUP_DTCADASTRO: TDateField;
    TBCupomCUP_DTEMISSAO: TDateField;
    TBCupomCUP_ECF: TIntegerField;
    TBCupomCUP_HRATUALIZACAO: TTimeField;
    TBCupomCUP_HRCADASTRO: TTimeField;
    TBCupomCUP_MOTIVO: TStringField;
    TBCupomCUP_NFCE: TIntegerField;
    TBCupomCUP_PROTOCOLO: TStringField;
    TBCupomCUP_PROTOCOLODH: TStringField;
    TBCupomCUP_STATUS: TStringField;
    TBCupomCUP_TOTALITENS: TFMTBCDField;
    TBCupomCUP_USUARIO: TStringField;
    TBCupomCUP_VALORTOTAL: TFMTBCDField;
    TBCupomCUP_VENDA: TIntegerField;
    TBCupomCUP_VENDEDOR: TIntegerField;
    TBCupomECF_DESCRICAO: TStringField;
    TBCupomItens: TFDQuery;
    TBCupomItensCUI_ACREVALOR: TFMTBCDField;
    TBCupomItensCUI_CODIGO: TIntegerField;
    TBCupomItensCUI_CUPOM: TIntegerField;
    TBCupomItensCUI_DESCVALOR: TFMTBCDField;
    TBCupomItensCUI_ITEM: TIntegerField;
    TBCupomItensCUI_PRODUTO: TIntegerField;
    TBCupomItensCUI_QUANTIDADE: TFMTBCDField;
    TBCupomItensCUI_TRIBUTO: TStringField;
    TBCupomItensCUI_VALORTOTAL: TFMTBCDField;
    TBCupomItensCUI_VALORUNIT: TFMTBCDField;
    TBCupomItensPRO_NOME: TStringField;
    TBCupomVEN_NOME: TStringField;
    TBDespesas: TFDQuery;
    TBDespesasAGR_DESCRICAO: TStringField;
    TBDespesasDES_AGRUPADOR: TIntegerField;
    TBDespesasDES_CODIGO: TIntegerField;
    TBDespesasDES_DESCRICAO: TStringField;
    TBDespesasDES_DTATUALIZACAO: TDateField;
    TBDespesasDES_DTCADASTRO: TDateField;
    TBDespesasDES_HRATUALIZACAO: TTimeField;
    TBDespesasDES_HRCADASTRO: TTimeField;
    TBDespesasDES_USUARIO: TStringField;
    TBEcf: TFDQuery;
    TBEcfECF_CODIGO: TIntegerField;
    TBEcfECF_DESCRICAO: TStringField;
    TBEcfECF_DTATUALIZACAO: TDateField;
    TBEcfECF_DTCADASTRO: TDateField;
    TBEcfECF_HRATUALIZACAO: TTimeField;
    TBEcfECF_HRCADASTRO: TTimeField;
    TBEcfECF_MARCA: TStringField;
    TBEcfECF_MODELO: TStringField;
    TBEcfECF_SERIAL: TStringField;
    TBEcfECF_STATUS: TStringField;
    TBEcfECF_USUARIO: TStringField;
    TBEmpresa: TFDQuery;
    TBEmpresaEMP_BAIRRO: TStringField;
    TBEmpresaEMP_CEP: TStringField;
    TBEmpresaEMP_CIDADE: TStringField;
    TBEmpresaEMP_CIDADECODIGO: TIntegerField;
    TBEmpresaEMP_CNAE: TStringField;
    TBEmpresaEMP_CNPJ: TStringField;
    TBEmpresaEMP_CNPJPREFEITURA: TStringField;
    TBEmpresaEMP_CODIGO: TIntegerField;
    TBEmpresaEMP_CODIGOCLIENTE: TIntegerField;
    TBEmpresaEMP_CODIGOSISTEMA: TIntegerField;
    TBEmpresaEMP_CONTABILIDADE: TIntegerField;
    TBEmpresaEMP_DATALIBERACAO: TStringField;
    TBEmpresaEMP_DATAULTUTILIZACAO: TStringField;
    TBEmpresaEMP_DIASLIBERACAO: TStringField;
    TBEmpresaEMP_EMAIL: TStringField;
    TBEmpresaEMP_EMAILSUPORTE: TStringField;
    TBEmpresaEMP_ENDERECO: TStringField;
    TBEmpresaEMP_ENQUADRAMENTO: TStringField;
    TBEmpresaEMP_ENQUADRAMENTOISS: TStringField;
    TBEmpresaEMP_ENQUADRAMENTOISS2: TStringField;
    TBEmpresaEMP_ESTADO: TStringField;
    TBEmpresaEMP_ESTADOCODIGO: TIntegerField;
    TBEmpresaEMP_FONE1: TStringField;
    TBEmpresaEMP_FONE2: TStringField;
    TBEmpresaEMP_HASH: TStringField;
    TBEmpresaEMP_HOMEPAGE: TStringField;
    TBEmpresaEMP_HRATUALIZACAO: TTimeField;
    TBEmpresaEMP_IE: TStringField;
    TBEmpresaEMP_IM: TStringField;
    TBEmpresaEMP_IMINFORMAR: TStringField;
    TBEmpresaEMP_LEITURA: TStringField;
    TBEmpresaEMP_LIBERADO: TStringField;
    TBEmpresaEMP_LIMITEUSUARIOS: TStringField;
    TBEmpresaEMP_LOGO: TStringField;
    TBEmpresaEMP_NOME: TStringField;
    TBEmpresaEMP_NOMEFANTASIA: TStringField;
    TBEmpresaEMP_NOSSOBAIRRO: TStringField;
    TBEmpresaEMP_NOSSOCEP: TStringField;
    TBEmpresaEMP_NOSSOCIDADE: TStringField;
    TBEmpresaEMP_NOSSOCNPJ: TStringField;
    TBEmpresaEMP_NOSSOEMAIL: TStringField;
    TBEmpresaEMP_NOSSOENDERECO: TStringField;
    TBEmpresaEMP_NOSSOESTADO: TStringField;
    TBEmpresaEMP_NOSSOFONE1: TStringField;
    TBEmpresaEMP_NOSSOFONE2: TStringField;
    TBEmpresaEMP_NOSSOIE: TStringField;
    TBEmpresaEMP_NOSSOIM: TStringField;
    TBEmpresaEMP_NOSSONOME: TStringField;
    TBEmpresaEMP_NOSSONUMERO: TStringField;
    TBEmpresaEMP_NOSSOSITE: TStringField;
    TBEmpresaEMP_NOSSOSITESENHA: TStringField;
    TBEmpresaEMP_NUMERO: TStringField;
    TBEmpresaEMP_PAIS: TStringField;
    TBEmpresaEMP_PAISCODIGO: TIntegerField;
    TBEmpresaEMP_REGIMEAPURACAOISS: TStringField;
    TBEmpresaEMP_SUPERSENHA: TStringField;
    TBEmpresaFOR_CNPJ: TStringField;
    TBEmpresaFOR_NOME: TStringField;
    TBEquipamentos: TFDQuery;
    TBEquipamentosCLI_NOME: TStringField;
    TBEquipamentosEQP_ACESSORIOS: TStringField;
    TBEquipamentosEQP_ANOFAB: TIntegerField;
    TBEquipamentosEQP_ANOMOD: TIntegerField;
    TBEquipamentosEQP_CHASSI: TStringField;
    TBEquipamentosEQP_CLIENTE: TIntegerField;
    TBEquipamentosEQP_CODIGO: TIntegerField;
    TBEquipamentosEQP_COMBUSTIVEL: TStringField;
    TBEquipamentosEQP_COR: TStringField;
    TBEquipamentosEQP_DESCRICAO: TStringField;
    TBEquipamentosEQP_DTATUALIZACAO: TDateField;
    TBEquipamentosEQP_DTCADASTRO: TDateField;
    TBEquipamentosEQP_DTFILTRO: TDateField;
    TBEquipamentosEQP_DTGERAL: TDateField;
    TBEquipamentosEQP_DTLIMPEZA: TDateField;
    TBEquipamentosEQP_DTNOTA: TDateField;
    TBEquipamentosEQP_HASH: TStringField;
    TBEquipamentosEQP_HRATUALIZACAO: TTimeField;
    TBEquipamentosEQP_HRCADASTRO: TTimeField;
    TBEquipamentosEQP_LOCALIZACAO: TStringField;
    TBEquipamentosEQP_MARCA: TStringField;
    TBEquipamentosEQP_MODELO: TStringField;
    TBEquipamentosEQP_NOTA: TIntegerField;
    TBEquipamentosEQP_OBSERVACOES: TMemoField;
    TBEquipamentosEQP_REVENDEDOR: TStringField;
    TBEquipamentosEQP_SERIE: TStringField;
    TBEquipamentosEQP_STATUS: TStringField;
    TBEquipamentosEQP_TAMANHO: TStringField;
    TBEquipamentosEQP_TOTALFOTOS: TIntegerField;
    TBEquipamentosEQP_USUARIO: TStringField;
    TBEstados: TFDQuery;
    TBEstadosESD_CODIGO: TIntegerField;
    TBEstadosESD_NOME: TStringField;
    TBEstadosESD_PAIS: TIntegerField;
    TBEstadosESD_SIGLA: TStringField;
    TBEstadosPAI_NOME: TStringField;
    TBEstoque: TFDQuery;
    TBEstoqueALM_DESCRICAO: TStringField;
    TBEstoqueCLI_NOME: TStringField;
    TBEstoqueEST_ALMOXARIFADO: TIntegerField;
    TBEstoqueEST_CLIENTE: TIntegerField;
    TBEstoqueEST_CODIGO: TIntegerField;
    TBEstoqueEST_CONVERSAO: TFMTBCDField;
    TBEstoqueEST_DATA: TDateField;
    TBEstoqueEST_DESCRICAO: TStringField;
    TBEstoqueEST_DTATUALIZACAO: TDateField;
    TBEstoqueEST_DTCADASTRO: TDateField;
    TBEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField;
    TBEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField;
    TBEstoqueEST_FORNECEDOR: TIntegerField;
    TBEstoqueEST_HRATUALIZACAO: TTimeField;
    TBEstoqueEST_HRCADASTRO: TTimeField;
    TBEstoqueEST_NUMDOCTO: TStringField;
    TBEstoqueEST_OBSERVACOES: TMemoField;
    TBEstoqueEST_PRODUTO: TIntegerField;
    TBEstoqueEST_PRODUTOREAL: TIntegerField;
    TBEstoqueEST_QUANTIDADE: TFMTBCDField;
    TBEstoqueEST_QUANTIDADEREAL: TFMTBCDField;
    TBEstoqueEST_TIPODOCTO: TStringField;
    TBEstoqueEST_TRANSACAO: TStringField;
    TBEstoqueEST_USUARIO: TStringField;
    TBEstoqueEST_VALORUNIT: TFMTBCDField;
    TBEstoqueEST_VENDEDOR: TIntegerField;
    TBEstoqueFOR_NOME: TStringField;
    TBEstoquePRO_NOME: TStringField;
    TBEstoqueVEN_NOME: TStringField;
    TBEtapas: TFDQuery;
    TBEtapasETP_CODIGO: TIntegerField;
    TBEtapasETP_DESCRICAO: TStringField;
    TBEtapasETP_DTATUALIZACAO: TDateField;
    TBEtapasETP_DTCADASTRO: TDateField;
    TBEtapasETP_HRATUALIZACAO: TTimeField;
    TBEtapasETP_HRCADASTRO: TTimeField;
    TBEtapasETP_SIGLA: TStringField;
    TBEtapasETP_TEMPO: TStringField;
    TBEtapasETP_TEMPODEC: TFMTBCDField;
    TBEtapasETP_TEMPOMIN: TIntegerField;
    TBEtapasETP_USUARIO: TStringField;
    TBEtiquetas: TFDQuery;
    TBEtiquetasETQ_CODIGO: TIntegerField;
    TBEtiquetasETQ_CONTEUDO: TMemoField;
    TBEtiquetasETQ_DESCRICAO: TStringField;
    TBEtiquetasETQ_DTATUALIZACAO: TDateField;
    TBEtiquetasETQ_DTCADASTRO: TDateField;
    TBEtiquetasETQ_HRATUALIZACAO: TTimeField;
    TBEtiquetasETQ_HRCADASTRO: TTimeField;
    TBEtiquetasETQ_STATUS: TStringField;
    TBEtiquetasETQ_USUARIO: TStringField;
    TBFamilias: TFDQuery;
    TBFamiliasFAM_CODIGO: TIntegerField;
    TBFamiliasFAM_DESCRICAO: TStringField;
    TBFamiliasFAM_DTATUALIZACAO: TDateField;
    TBFamiliasFAM_DTCADASTRO: TDateField;
    TBFamiliasFAM_HRATUALIZACAO: TTimeField;
    TBFamiliasFAM_HRCADASTRO: TTimeField;
    TBFamiliasFAM_INTERNET: TStringField;
    TBFamiliasFAM_USUARIO: TStringField;
    TBFciItens: TFDQuery;
    TBFciItensFII_CLASSFISCAL: TStringField;
    TBFciItensFII_CODIGO: TIntegerField;
    TBFciItensFII_CODIGOBARRAS: TStringField;
    TBFciItensFII_CODIGOFCI: TStringField;
    TBFciItensFII_COEFICIENTE: TFMTBCDField;
    TBFciItensFII_FCI: TIntegerField;
    TBFciItensFII_NOME: TStringField;
    TBFciItensFII_PRODUTO: TIntegerField;
    TBFciItensFII_VALORPARCELA: TFMTBCDField;
    TBFciItensFII_VALORSAIDA: TFMTBCDField;
    TBFciItensFII_UNIDADE: TStringField;
    TBFciItensFII_UNIDADEFCI: TStringField;
    TBFci: TFDQuery;
    TBFciPFI_CODIGO: TIntegerField;
    TBFciPFI_DTATUALIZACAO: TDateField;
    TBFciPFI_DTCADASTRO: TDateField;
    TBFciPFI_DTENVIO: TDateField;
    TBFciPFI_HRATUALIZACAO: TTimeField;
    TBFciPFI_HRCADASTRO: TTimeField;
    TBFciPFI_HRENVIO: TTimeField;
    TBFciPFI_PROTOCOLO: TStringField;
    TBFciPFI_QUANTIDADEITENS: TIntegerField;
    TBFciPFI_STATUS: TStringField;
    TBFciPFI_USUARIO: TStringField;
    TBFornecedores: TFDQuery;
    TBFornecedoresATI_DESCRICAO: TStringField;
    TBFornecedoresFOR_AFE: TStringField;
    TBFornecedoresFOR_ALVARA: TStringField;
    TBFornecedoresFOR_ALVARASANITARIO: TStringField;
    TBFornecedoresFOR_ATIVIDADE: TIntegerField;
    TBFornecedoresFOR_BAIRRO: TStringField;
    TBFornecedoresFOR_CEP: TStringField;
    TBFornecedoresFOR_CIDADE: TStringField;
    TBFornecedoresFOR_CIDADECODIGO: TIntegerField;
    TBFornecedoresFOR_CNPJ: TStringField;
    TBFornecedoresFOR_CODIGO: TIntegerField;
    TBFornecedoresFOR_COMPLEMENTO: TStringField;
    TBFornecedoresFOR_CONTATO: TStringField;
    TBFornecedoresFOR_CPF: TStringField;
    TBFornecedoresFOR_DTATUALIZACAO: TDateField;
    TBFornecedoresFOR_DTCADASTRO: TDateField;
    TBFornecedoresFOR_DTNASC: TDateField;
    TBFornecedoresFOR_EMAIL: TStringField;
    TBFornecedoresFOR_EMAIL2: TStringField;
    TBFornecedoresFOR_ENDERECO: TStringField;
    TBFornecedoresFOR_ESTADO: TStringField;
    TBFornecedoresFOR_ESTADOCIVIL: TStringField;
    TBFornecedoresFOR_ESTADOCODIGO: TIntegerField;
    TBFornecedoresFOR_FANTASIA: TStringField;
    TBFornecedoresFOR_FONE0800: TStringField;
    TBFornecedoresFOR_FONE1: TStringField;
    TBFornecedoresFOR_FONE2: TStringField;
    TBFornecedoresFOR_FONE3: TStringField;
    TBFornecedoresFOR_HRATUALIZACAO: TTimeField;
    TBFornecedoresFOR_HRCADASTRO: TTimeField;
    TBFornecedoresFOR_IE: TStringField;
    TBFornecedoresFOR_MSN: TStringField;
    TBFornecedoresFOR_NEXTEL: TStringField;
    TBFornecedoresFOR_NOME: TStringField;
    TBFornecedoresFOR_NUMERO: TStringField;
    TBFornecedoresFOR_OBSERVACOES: TMemoField;
    TBFornecedoresFOR_PAIS: TStringField;
    TBFornecedoresFOR_PAISCODIGO: TIntegerField;
    TBFornecedoresFOR_REGPROFISSIONAL: TStringField;
    TBFornecedoresFOR_RG: TStringField;
    TBFornecedoresFOR_SITE: TStringField;
    TBFornecedoresFOR_STATUS: TStringField;
    TBFornecedoresFOR_TIPOPESSOA: TStringField;
    TBFornecedoresFOR_USUARIO: TStringField;
    TBGrupos: TFDQuery;
    TBGruposGRU_CODIGO: TIntegerField;
    TBGruposGRU_DESCRICAO: TStringField;
    TBGruposGRU_DTATUALIZACAO: TDateField;
    TBGruposGRU_DTCADASTRO: TDateField;
    TBGruposGRU_HRATUALIZACAO: TTimeField;
    TBGruposGRU_HRCADASTRO: TTimeField;
    TBGruposGRU_INTERNET: TStringField;
    TBGruposGRU_STATUS: TStringField;
    TBGruposGRU_USUARIO: TStringField;
    TBHoras: TFDQuery;
    TBHorasHOR_CODIGO: TIntegerField;
    TBHorasHOR_DESCRICAO: TStringField;
    TBHorasHOR_DTATUALIZACAO: TDateField;
    TBHorasHOR_DTCADASTRO: TDateField;
    TBHorasHOR_HRATUALIZACAO: TTimeField;
    TBHorasHOR_HRCADASTRO: TTimeField;
    TBHorasHOR_QUANTIDADE: TCurrencyField;
    TBHorasHOR_SALDOANTERIOR: TCurrencyField;
    TBHorasHOR_SALDOPOSTERIOR: TCurrencyField;
    TBHorasHOR_TRANSACAO: TStringField;
    TBHorasHOR_USUARIO: TStringField;
    TBHorasHOR_VENDEDOR: TIntegerField;
    TBHorasVEN_NOME: TStringField;
    TBIcms: TFDQuery;
    TBIcmsICM_CALCULACREDITOSN: TStringField;
    TBIcmsICM_CODIGO: TIntegerField;
    TBIcmsICM_DESCRICAO: TStringField;
    TBIcmsICM_DTATUALIZACAO: TDateField;
    TBIcmsICM_DTCADASTRO: TDateField;
    TBIcmsICM_HRATUALIZACAO: TTimeField;
    TBIcmsICM_HRCADASTRO: TTimeField;
    TBIcmsICM_USUARIO: TStringField;
    TBIpi: TFDQuery;
    TBIpiIPI_CODIGO: TIntegerField;
    TBIpiIPI_DESCRICAO: TStringField;
    TBIpiIPI_DTATUALIZACAO: TDateField;
    TBIpiIPI_DTCADASTRO: TDateField;
    TBIpiIPI_HRATUALIZACAO: TTimeField;
    TBIpiIPI_HRCADASTRO: TTimeField;
    TBIpiIPI_USUARIO: TStringField;
    TBIss: TFDQuery;
    TBIssISS_ALIQUOTAESTADUAL: TFMTBCDField;
    TBIssISS_ALIQUOTAIMPORTACAO: TFMTBCDField;
    TBIssISS_ALIQUOTAMUNICIPAL: TFMTBCDField;
    TBIssISS_ALIQUOTANACIONAL: TFMTBCDField;
    TBIssISS_CODIGO: TStringField;
    TBIssISS_DESCRICAO: TStringField;
    TBIssISS_DTATUALIZACAO: TDateField;
    TBIssISS_DTCADASTRO: TDateField;
    TBIssISS_HRATUALIZACAO: TTimeField;
    TBIssISS_HRCADASTRO: TTimeField;
    TBIssISS_USUARIO: TStringField;
    TBLocs: TFDQuery;
    TBLocsLOS_CAMPO: TStringField;
    TBLocsLOS_CODIGO: TIntegerField;
    TBLocsLOS_NOMEFORM: TStringField;
    TBLocsLOS_PICKLIST: TStringField;
    TBLocsLOS_TELA: TStringField;
    TBLocsTEL_NOMEFORM: TStringField;
    TBLocsTEL_STATUS: TStringField;
    TBLotes: TFDQuery;
    TBLotesCOM_NOTADATA: TDateField;
    TBLotesCOM_NOTANUMERO: TIntegerField;
    TBLotesLOT_CODIGO: TIntegerField;
    TBLotesLOT_COMPRA: TIntegerField;
    TBLotesLOT_DTATUALIZACAO: TDateField;
    TBLotesLOT_DTCADASTRO: TDateField;
    TBLotesLOT_FABRICACAO: TDateField;
    TBLotesLOT_HRATUALIZACAO: TTimeField;
    TBLotesLOT_HRCADASTRO: TTimeField;
    TBLotesLOT_LOTE: TStringField;
    TBLotesLOT_PRODUTO: TIntegerField;
    TBLotesLOT_PROPRIO: TStringField;
    TBLotesLOT_QUANTIDADE: TFMTBCDField;
    TBLotesLOT_STATUS: TStringField;
    TBLotesLOT_USUARIO: TStringField;
    TBLotesLOT_VALIDADE: TDateField;
    TBMailings: TFDQuery;
    TBMailingsMAI_CODIGO: TIntegerField;
    TBMailingsMAI_DESCRICAO: TStringField;
    TBMailingsMAI_DTATUALIZACAO: TDateField;
    TBMailingsMAI_DTCADASTRO: TDateField;
    TBMailingsMAI_HRATUALIZACAO: TTimeField;
    TBMailingsMAI_HRCADASTRO: TTimeField;
    TBMailingsMAI_USUARIO: TStringField;
    TBManifestacoes: TFDQuery;
    TBManifestacoesMAN_CHAVEACESSO: TStringField;
    TBManifestacoesMAN_CIENCIA: TStringField;
    TBManifestacoesMAN_CIENCIADH: TStringField;
    TBManifestacoesMAN_CIENCIAPROTOCOLO: TStringField;
    TBManifestacoesMAN_CIENCIAPROTOCOLODH: TStringField;
    TBManifestacoesMAN_CNPJ: TStringField;
    TBManifestacoesMAN_CODIGO: TIntegerField;
    TBManifestacoesMAN_CONCLUSAO: TStringField;
    TBManifestacoesMAN_CONCLUSAODH: TStringField;
    TBManifestacoesMAN_CONCLUSAOPROTOCOLO: TStringField;
    TBManifestacoesMAN_CONCLUSAOPROTOCOLODH: TStringField;
    TBManifestacoesMAN_DESCRICAO: TStringField;
    TBManifestacoesMAN_DHEMISSAO: TStringField;
    TBManifestacoesMAN_DHRECEBIMENTO: TStringField;
    TBManifestacoesMAN_DTATUALIZACAO: TDateField;
    TBManifestacoesMAN_DTCONSULTA: TDateField;
    TBManifestacoesMAN_HRATUALIZACAO: TTimeField;
    TBManifestacoesMAN_HRCONSULTA: TTimeField;
    TBManifestacoesMAN_IE: TStringField;
    TBManifestacoesMAN_JUSTIFICATIVA: TStringField;
    TBManifestacoesMAN_NOME: TStringField;
    TBManifestacoesMAN_NSU: TStringField;
    TBManifestacoesMAN_PROTOCOLO: TStringField;
    TBManifestacoesMAN_SCHEMA: TStringField;
    TBManifestacoesMAN_SEQUENCIAEVENTO: TIntegerField;
    TBManifestacoesMAN_STATUSNOTA: TIntegerField;
    TBManifestacoesMAN_TIPOEVENTO: TIntegerField;
    TBManifestacoesMAN_TIPONOTA: TIntegerField;
    TBManifestacoesMAN_USUARIO: TStringField;
    TBManifestacoesMAN_VALORNOTA: TFMTBCDField;
    TBManifestacoesMAN_XML: TMemoField;
    TBMetas: TFDQuery;
    TBMetasConfig: TFDQuery;
    TBMetasConfigMTG_CODIGO: TIntegerField;
    TBMetasConfigMTG_FIM: TFMTBCDField;
    TBMetasConfigMTG_INICIO: TFMTBCDField;
    TBMetasConfigMTG_PORCENTAGEM: TFMTBCDField;
    TBMetasMET_BONUSPORC: TFMTBCDField;
    TBMetasMET_BONUSVALOR: TFMTBCDField;
    TBMetasMET_CODIGO: TIntegerField;
    TBMetasMET_COMISSAO: TFMTBCDField;
    TBMetasMET_COMISSAOTIPO: TStringField;
    TBMetasMET_DTATUALIZACAO: TDateField;
    TBMetasMET_DTBAIXA: TDateField;
    TBMetasMET_DTCADASTRO: TDateField;
    TBMetasMET_DTFIM: TDateField;
    TBMetasMET_DTINICIO: TDateField;
    TBMetasMET_HRATUALIZACAO: TTimeField;
    TBMetasMET_HRCADASTRO: TTimeField;
    TBMetasMET_METAATINGIDA: TFMTBCDField;
    TBMetasMET_METAVALOR: TFMTBCDField;
    TBMetasMET_SALARIOBASE: TFMTBCDField;
    TBMetasMET_STATUS: TStringField;
    TBMetasMET_TOTALCOMISSAO: TFMTBCDField;
    TBMetasMET_TOTALLIQUIDADO: TFMTBCDField;
    TBMetasMET_TOTALVENDAS: TFMTBCDField;
    TBMetasMET_TOTALVENDASCOMISSIONADAS: TFMTBCDField;
    TBMetasMET_USUARIO: TStringField;
    TBMetasMET_VENDEDOR: TIntegerField;
    TBMetasVEN_NOME: TStringField;
    TBModulos: TFDQuery;
    TBModulosMOD_ACESSO: TStringField;
    TBModulosMOD_BOTAO: TStringField;
    TBModulosMOD_CODIGO: TIntegerField;
    TBModulosMOD_MENUITEM: TStringField;
    TBModulosMOD_NOME: TStringField;
    TBNaturezas: TFDQuery;
    TBNaturezasNAT_CALCULACOMISSAO: TStringField;
    TBNaturezasNAT_CALCULACREDITOSN: TStringField;
    TBNaturezasNAT_CODIGO: TIntegerField;
    TBNaturezasNAT_DESCRICAO: TStringField;
    TBNaturezasNAT_DESTACARIMPOSTOS: TStringField;
    TBNaturezasNAT_DEVOLUCAO: TStringField;
    TBNaturezasNAT_DTATUALIZACAO: TDateField;
    TBNaturezasNAT_DTCADASTRO: TDateField;
    TBNaturezasNAT_ENTRADASAIDA: TStringField;
    TBNaturezasNAT_HRATUALIZACAO: TTimeField;
    TBNaturezasNAT_HRCADASTRO: TTimeField;
    TBNaturezasNAT_INFORMADIFAL: TStringField;
    TBNaturezasNAT_MOVIMENTAESTOQUE: TStringField;
    TBNaturezasNAT_MOVIMENTAFINANCEIRO: TStringField;
    TBNaturezasNAT_OBSERVACOES: TMemoField;
    TBNaturezasNAT_USUARIO: TStringField;
    TBNbs: TFDQuery;
    TBNbsNBS_CODIGO: TStringField;
    TBNbsNBS_DESCRICAO: TStringField;
    TBNbsNBS_DTATUALIZACAO: TDateField;
    TBNbsNBS_DTCADASTRO: TDateField;
    TBNbsNBS_HRATUALIZACAO: TTimeField;
    TBNbsNBS_HRCADASTRO: TTimeField;
    TBNbsNBS_USUARIO: TStringField;
    TBNfce: TFDQuery;
    TBNfceInutilizadas: TFDQuery;
    TBNfceInutilizadasFCI_ANO: TStringField;
    TBNfceInutilizadasFCI_CODIGO: TIntegerField;
    TBNfceInutilizadasFCI_DTATUALIZACAO: TDateField;
    TBNfceInutilizadasFCI_DTCADASTRO: TDateField;
    TBNfceInutilizadasFCI_HRATUALIZACAO: TTimeField;
    TBNfceInutilizadasFCI_HRCADASTRO: TTimeField;
    TBNfceInutilizadasFCI_JUSTIFICATIVA: TStringField;
    TBNfceInutilizadasFCI_MODELO: TIntegerField;
    TBNfceInutilizadasFCI_NUMFINAL: TIntegerField;
    TBNfceInutilizadasFCI_NUMINICIAL: TIntegerField;
    TBNfceInutilizadasFCI_PROTOCOLO: TStringField;
    TBNfceInutilizadasFCI_PROTOCOLODH: TStringField;
    TBNfceInutilizadasFCI_SERIE: TIntegerField;
    TBNfceInutilizadasFCI_USUARIO: TStringField;
    TBNfceItens: TFDQuery;
    TBNfceItensALM_DESCRICAO: TStringField;
    TBNfceItensCLF_DESCRICAO: TStringField;
    TBNfceItensICM_CALCULACREDITOSN: TStringField;
    TBNfceItensICM_DESCRICAO: TStringField;
    TBNfceItensIPI_DESCRICAO: TStringField;
    TBNfceItensNAT_CALCULACOMISSAO: TStringField;
    TBNfceItensNAT_CALCULACREDITOSN: TStringField;
    TBNfceItensNAT_DESCRICAO: TStringField;
    TBNfceItensPIS_DESCRICAOPIS: TStringField;
    TBNfceItensPIS_DESCRICAOCOFINS: TStringField;
    TBNfceItensNCI_ALIQCBS: TFMTBCDField;
    TBNfceItensNCI_ALIQCBSCREDPRES: TFMTBCDField;
    TBNfceItensNCI_ALIQCBSDIF: TFMTBCDField;
    TBNfceItensNCI_ALIQCBSEFE: TFMTBCDField;
    TBNfceItensNCI_ALIQCBSRED: TFMTBCDField;
    TBNfceItensNCI_ALIQCOFINS: TFMTBCDField;
    TBNfceItensNCI_ALIQCOFINSST: TFMTBCDField;
    TBNfceItensNCI_ALIQFCP: TFMTBCDField;
    TBNfceItensNCI_ALIQFCPST: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSCREDPRES: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSMUN: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSMUNDIF: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSMUNEFE: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSMUNRED: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSUF: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSUFDIF: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSUFEFE: TFMTBCDField;
    TBNfceItensNCI_ALIQIBSUFRED: TFMTBCDField;
    TBNfceItensNCI_ALIQICMS: TFMTBCDField;
    TBNfceItensNCI_ALIQICMSADICST: TFMTBCDField;
    TBNfceItensNCI_ALIQICMSINTER: TFMTBCDField;
    TBNfceItensNCI_ALIQICMSINTERPART: TFMTBCDField;
    TBNfceItensNCI_ALIQICMSRED: TFMTBCDField;
    TBNfceItensNCI_ALIQICMSST: TFMTBCDField;
    TBNfceItensNCI_ALIQIPI: TFMTBCDField;
    TBNfceItensNCI_ALIQIS: TFMTBCDField;
    TBNfceItensNCI_ALIQISESP: TFMTBCDField;
    TBNfceItensNCI_ALIQPIS: TFMTBCDField;
    TBNfceItensNCI_ALIQPISST: TFMTBCDField;
    TBNfceItensNCI_ALMOXARIFADO: TIntegerField;
    TBNfceItensNCI_BASECOFINS: TFMTBCDField;
    TBNfceItensNCI_BASECOFINSST: TFMTBCDField;
    TBNfceItensNCI_BASEIBSCBS: TFMTBCDField;
    TBNfceItensNCI_BASEICMS: TFMTBCDField;
    TBNfceItensNCI_BASEICMSRED: TFMTBCDField;
    TBNfceItensNCI_BASEICMSST: TFMTBCDField;
    TBNfceItensNCI_BASEIPI: TFMTBCDField;
    TBNfceItensNCI_BASEIS: TFMTBCDField;
    TBNfceItensNCI_BASEPIS: TFMTBCDField;
    TBNfceItensNCI_BASEPISST: TFMTBCDField;
    TBNfceItensNCI_BENEFICIO: TStringField;
    TBNfceItensNCI_CBSCREDITOPRES: TIntegerField;
    TBNfceItensNCI_CEST: TStringField;
    TBNfceItensNCI_CFOP: TIntegerField;
    TBNfceItensNCI_CLASSFISCAL: TStringField;
    TBNfceItensNCI_CLASSTRIBIBSCBS: TStringField;
    TBNfceItensNCI_CLASSTRIBIS: TStringField;
    TBNfceItensNCI_CODIGO: TIntegerField;
    TBNfceItensNCI_CODIGOBARRAS: TStringField;
    TBNfceItensNCI_COMISSAO: TFMTBCDField;
    TBNfceItensNCI_COMPLEMENTO: TStringField;
    TBNfceItensNCI_COMPOEBASEICMS: TStringField;
    TBNfceItensNCI_COMPOEBASEICMSST: TStringField;
    TBNfceItensNCI_CONVERSAO: TFMTBCDField;
    TBNfceItensNCI_CSTCOFINS: TIntegerField;
    TBNfceItensNCI_CSTIBSCBS: TStringField;
    TBNfceItensNCI_CSTICMS: TIntegerField;
    TBNfceItensNCI_CSTIPI: TIntegerField;
    TBNfceItensNCI_CSTIS: TStringField;
    TBNfceItensNCI_CSTPIS: TIntegerField;
    TBNfceItensNCI_DESCPORC: TFMTBCDField;
    TBNfceItensNCI_DESCRICAO: TStringField;
    TBNfceItensNCI_DESCVALOR: TFMTBCDField;
    TBNfceItensNCI_EXCECAO: TIntegerField;
    TBNfceItensNCI_IBSCREDITOPRES: TIntegerField;
    TBNfceItensNCI_LUCROPORC: TFMTBCDField;
    TBNfceItensNCI_LUCROVALOR: TFMTBCDField;
    TBNfceItensNCI_MODICMS: TStringField;
    TBNfceItensNCI_MODICMSST: TStringField;
    TBNfceItensNCI_NOTA: TIntegerField;
    TBNfceItensNCI_ORIGEM: TStringField;
    TBNfceItensNCI_PESO: TFMTBCDField;
    TBNfceItensNCI_PESOTOTAL: TFMTBCDField;
    TBNfceItensNCI_PRECOCUSTO: TFMTBCDField;
    TBNfceItensNCI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBNfceItensNCI_PRODUTO: TIntegerField;
    TBNfceItensNCI_PRODUTOREAL: TIntegerField;
    TBNfceItensNCI_QUANTIDADE: TFMTBCDField;
    TBNfceItensNCI_SEQUENCIA: TIntegerField;
    TBNfceItensNCI_SOMACOFINSST: TStringField;
    TBNfceItensNCI_SOMAPISST: TStringField;
    TBNfceItensNCI_TIPO: TStringField;
    TBNfceItensNCI_UNIDADE: TStringField;
    TBNfceItensNCI_VALORACESSORIAS: TFMTBCDField;
    TBNfceItensNCI_VALORCBS: TFMTBCDField;
    TBNfceItensNCI_VALORCBSCREDPRES: TFMTBCDField;
    TBNfceItensNCI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBNfceItensNCI_VALORCBSDEV: TFMTBCDField;
    TBNfceItensNCI_VALORCBSDIF: TFMTBCDField;
    TBNfceItensNCI_VALORCOFINS: TFMTBCDField;
    TBNfceItensNCI_VALORCOFINSST: TFMTBCDField;
    TBNfceItensNCI_VALORCOMISSAO: TFMTBCDField;
    TBNfceItensNCI_VALORFCP: TFMTBCDField;
    TBNfceItensNCI_VALORFCPST: TFMTBCDField;
    TBNfceItensNCI_VALORFRETE: TFMTBCDField;
    TBNfceItensNCI_VALORIBS: TFMTBCDField;
    TBNfceItensNCI_VALORIBSCREDPRES: TFMTBCDField;
    TBNfceItensNCI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBNfceItensNCI_VALORIBSMUN: TFMTBCDField;
    TBNfceItensNCI_VALORIBSMUNDEV: TFMTBCDField;
    TBNfceItensNCI_VALORIBSMUNDIF: TFMTBCDField;
    TBNfceItensNCI_VALORIBSUF: TFMTBCDField;
    TBNfceItensNCI_VALORIBSUFDEV: TFMTBCDField;
    TBNfceItensNCI_VALORIBSUFDIF: TFMTBCDField;
    TBNfceItensNCI_VALORICMS: TFMTBCDField;
    TBNfceItensNCI_VALORICMSCREDSN: TFMTBCDField;
    TBNfceItensNCI_VALORICMSST: TFMTBCDField;
    TBNfceItensNCI_VALORICMSUFDEST: TFMTBCDField;
    TBNfceItensNCI_VALORICMSUFREMET: TFMTBCDField;
    TBNfceItensNCI_VALORIPI: TFMTBCDField;
    TBNfceItensNCI_VALORPIS: TFMTBCDField;
    TBNfceItensNCI_VALORIS: TFMTBCDField;
    TBNfceItensNCI_VALORPISST: TFMTBCDField;
    TBNfceItensNCI_VALORTOTAL: TFMTBCDField;
    TBNfceItensNCI_VALORTOTALBRUTO: TFMTBCDField;
    TBNfceItensNCI_VALORTRIBUTOS: TFMTBCDField;
    TBNfceItensNCI_VALORTRIBUTOSEST: TFMTBCDField;
    TBNfceItensNCI_VALORTRIBUTOSFED: TFMTBCDField;
    TBNfceItensNCI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBNfceItensNCI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBNfceItensNCI_VALORUNIT: TFMTBCDField;
    TBNfceLogs: TFDQuery;
    TBNfceLogsNCL_CODIGO: TIntegerField;
    TBNfceLogsNCL_DATA: TDateField;
    TBNfceLogsNCL_DESCRICAO: TMemoField;
    TBNfceLogsNCL_HORA: TTimeField;
    TBNfceLogsNCL_NFCE: TIntegerField;
    TBNfceLogsNCL_NOME: TStringField;
    TBNfceLogsNCL_USUARIO: TStringField;
    TBNfceNAT_CALCULACOMISSAO: TStringField;
    TBNfceNAT_CALCULACREDITOSN: TStringField;
    TBNfceNFC_ACREPORC: TFMTBCDField;
    TBNfceNFC_ACREVALOR: TFMTBCDField;
    TBNfceNFC_ALIQICMSCREDSN: TFMTBCDField;
    TBNfceNFC_BAIRRO: TStringField;
    TBNfceNFC_BASECOFINS: TFMTBCDField;
    TBNfceNFC_BASECOFINSST: TFMTBCDField;
    TBNfceNFC_BASEIBSCBS: TFMTBCDField;
    TBNfceNFC_BASEICMS: TFMTBCDField;
    TBNfceNFC_BASEICMSST: TFMTBCDField;
    TBNfceNFC_BASEIPI: TFMTBCDField;
    TBNfceNFC_BASEIS: TFMTBCDField;
    TBNfceNFC_BASEPIS: TFMTBCDField;
    TBNfceNFC_BASEPISST: TFMTBCDField;
    TBNfceNFC_CBSCREDPRES: TFMTBCDField;
    TBNfceNFC_CBSCREDPRESSUS: TFMTBCDField;
    TBNfceNFC_CBSDEVOLUCAO: TFMTBCDField;
    TBNfceNFC_CBSDIFERIMENTO: TFMTBCDField;
    TBNfceNFC_CBSMONO: TFMTBCDField;
    TBNfceNFC_CBSMONORETENCAO: TFMTBCDField;
    TBNfceNFC_CBSMONORETIDO: TFMTBCDField;
    TBNfceNFC_CBSVALOR: TFMTBCDField;
    TBNfceNFC_CEP: TStringField;
    TBNfceNFC_CFOP: TIntegerField;
    TBNfceNFC_CHAVEACESSO: TStringField;
    TBNfceNFC_CIDADE: TStringField;
    TBNfceNFC_CIDADECODIGO: TIntegerField;
    TBNfceNFC_CLIENTE: TIntegerField;
    TBNfceNFC_CNPJ: TStringField;
    TBNfceNFC_CODIGO: TIntegerField;
    TBNfceNFC_CODIGONFCE: TIntegerField;
    TBNfceNFC_CODIGONUMERICO: TStringField;
    TBNfceNFC_COMISSAO: TFMTBCDField;
    TBNfceNFC_COMISSAOPOR: TStringField;
    TBNfceNFC_COMPLEMENTO: TStringField;
    TBNfceNFC_CONDICAO: TIntegerField;
    TBNfceNFC_CONTATO: TStringField;
    TBNfceNFC_CONTINGENCIA: TStringField;
    TBNfceNFC_CPF: TStringField;
    TBNfceNFC_CUSTOTOTAL: TFMTBCDField;
    TBNfceNFC_DESCPORC: TFMTBCDField;
    TBNfceNFC_DESCVALOR: TFMTBCDField;
    TBNfceNFC_DTATUALIZACAO: TDateField;
    TBNfceNFC_DTCADASTRO: TDateField;
    TBNfceNFC_DTEMISSAO: TDateField;
    TBNfceNFC_ENDERECO: TStringField;
    TBNfceNFC_ESTADO: TStringField;
    TBNfceNFC_ESTADOCODIGO: TIntegerField;
    TBNfceNFC_FINALIDADE: TStringField;
    TBNfceNFC_FONE1: TStringField;
    TBNfceNFC_FORMAPAGTO: TStringField;
    TBNfceNFC_GOVERNAMENTAL: TStringField;
    TBNfceNFC_GOVERNAMENTALALIQRED: TFMTBCDField;
    TBNfceNFC_GOVERNAMENTALOP: TStringField;
    TBNfceNFC_HRATUALIZACAO: TTimeField;
    TBNfceNFC_HRCADASTRO: TTimeField;
    TBNfceNFC_IBSCREDPRES: TFMTBCDField;
    TBNfceNFC_IBSCREDPRESSUS: TFMTBCDField;
    TBNfceNFC_IBSMONO: TFMTBCDField;
    TBNfceNFC_IBSMONORETENCAO: TFMTBCDField;
    TBNfceNFC_IBSMONORETIDO: TFMTBCDField;
    TBNfceNFC_IBSMUNDEVOLUCAO: TFMTBCDField;
    TBNfceNFC_IBSMUNDIFERIMENTO: TFMTBCDField;
    TBNfceNFC_IBSMUNVALOR: TFMTBCDField;
    TBNfceNFC_IBSUFDEVOLUCAO: TFMTBCDField;
    TBNfceNFC_IBSUFDIFERIMENTO: TFMTBCDField;
    TBNfceNFC_IBSUFVALOR: TFMTBCDField;
    TBNfceNFC_IBSVALOR: TFMTBCDField;
    TBNfceNFC_IE: TStringField;
    TBNfceNFC_INFOADICFISCO: TMemoField;
    TBNfceNFC_LUCROPORC: TFMTBCDField;
    TBNfceNFC_LUCROVALOR: TFMTBCDField;
    TBNfceNFC_MODELO: TIntegerField;
    TBNfceNFC_MOTIVOCANCELAMENTO: TStringField;
    TBNfceNFC_MOTIVOINUTILIZACAO: TStringField;
    TBNfceNFC_MOVIMENTAESTOQUE: TStringField;
    TBNfceNFC_MOVIMENTAFINANCEIRO: TStringField;
    TBNfceNFC_NOME: TStringField;
    TBNfceNFC_NOTACREDITO: TStringField;
    TBNfceNFC_NOTADEBITO: TStringField;
    TBNfceNFC_NUMERO: TStringField;
    TBNfceNFC_OBSERVACOES: TMemoField;
    TBNfceNFC_PESOBRUTO: TFMTBCDField;
    TBNfceNFC_PESOLIQ: TFMTBCDField;
    TBNfceNFC_PROTOCOLO: TStringField;
    TBNfceNFC_PROTOCOLOCANC: TStringField;
    TBNfceNFC_PROTOCOLOCANCDH: TStringField;
    TBNfceNFC_PROTOCOLODH: TStringField;
    TBNfceNFC_PROTOCOLOINUT: TStringField;
    TBNfceNFC_PROTOCOLOINUTDH: TStringField;
    TBNfceNFC_QRCODE: TStringField;
    TBNfceNFC_SEQUENCIAITEM: TIntegerField;
    TBNfceNFC_SERIE: TIntegerField;
    TBNfceNFC_STATUS: TStringField;
    TBNfceNFC_TABELAPRECO: TStringField;
    TBNfceNFC_TIPOATENDIMENTO: TStringField;
    TBNfceNFC_TIPOCONSUMIDOR: TStringField;
    TBNfceNFC_TIPOEMISSAO: TStringField;
    TBNfceNFC_TIPOOPERACAO: TStringField;
    TBNfceNFC_TOTALCOFINS: TFMTBCDField;
    TBNfceNFC_TOTALCOFINSST: TFMTBCDField;
    TBNfceNFC_TOTALCOMISSAO: TFMTBCDField;
    TBNfceNFC_TOTALFCP: TFMTBCDField;
    TBNfceNFC_TOTALFCPST: TFMTBCDField;
    TBNfceNFC_TOTALICMS: TFMTBCDField;
    TBNfceNFC_TOTALICMSCREDSN: TFMTBCDField;
    TBNfceNFC_TOTALICMSST: TFMTBCDField;
    TBNfceNFC_TOTALICMSUFDEST: TFMTBCDField;
    TBNfceNFC_TOTALICMSUFREMET: TFMTBCDField;
    TBNfceNFC_TOTALIPI: TFMTBCDField;
    TBNfceNFC_TOTALIS: TFMTBCDField;
    TBNfceNFC_TOTALPIS: TFMTBCDField;
    TBNfceNFC_TOTALPISST: TFMTBCDField;
    TBNfceNFC_TOTALPRODUTOS: TFMTBCDField;
    TBNfceNFC_TOTALTRIBUTOS: TFMTBCDField;
    TBNfceNFC_TOTALTRIBUTOSEST: TFMTBCDField;
    TBNfceNFC_TOTALTRIBUTOSFED: TFMTBCDField;
    TBNfceNFC_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBNfceNFC_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBNfceNFC_USUARIO: TStringField;
    TBNfceNFC_VALORFRETE: TFMTBCDField;
    TBNfceNFC_VALORRECEBIDO: TFMTBCDField;
    TBNfceNFC_VALORTOTAL: TFMTBCDField;
    TBNfceNFC_VALORTOTALRTC: TFMTBCDField;
    TBNfceNFC_VALORTROCO: TFMTBCDField;
    TBNfceNFC_VENDA: TIntegerField;
    TBNfceNFC_VENDEDOR: TIntegerField;
    TBNfceCPG_DESCRICAO: TStringField;
    TBNfceNAT_DESCRICAO: TStringField;
    TBNfceVEN_NOME: TStringField;
    TBNfcePagamentos: TFDQuery;
    TBNfcePagamentosNCP_CODIGO: TIntegerField;
    TBNfcePagamentosNCP_CONDICAO: TIntegerField;
    TBNfcePagamentosNCP_NFCE: TIntegerField;
    TBNfcePagamentosNCP_VALOR: TFMTBCDField;
    TBNfcePagamentosCPG_DESCRICAO: TStringField;
    TBNfcePagamentosCPG_MEIOPAGAMENTO: TStringField;
    TBNfcePagamentosCPG_TIPOINTEGRACAO: TStringField;
    TBNfcePagamentosCPG_TOTALPARCELAS: TIntegerField;
    TBNfe: TFDQuery;
    TBNfeCce: TFDQuery;
    TBNfeCceNCC_CODIGO: TIntegerField;
    TBNfeCceNCC_DATA: TDateField;
    TBNfeCceNCC_DTATUALIZACAO: TDateField;
    TBNfeCceNCC_DTCADASTRO: TDateField;
    TBNfeCceNCC_HORA: TTimeField;
    TBNfeCceNCC_HRATUALIZACAO: TTimeField;
    TBNfeCceNCC_HRCADASTRO: TTimeField;
    TBNfeCceNCC_NFE: TIntegerField;
    TBNfeCceNCC_PROTOCOLO: TStringField;
    TBNfeCceNCC_PROTOCOLODH: TStringField;
    TBNfeCceNCC_SEQUENCIAL: TIntegerField;
    TBNfeCceNCC_TEXTO: TStringField;
    TBNfeCceNCC_USUARIO: TStringField;
    TBNfeCLI_FANTASIA: TStringField;
    TBNfeCodigo: TFDQuery;
    TBNfeCodigoNFE_CODIGO: TIntegerField;
    TBNfeCPG_DESCRICAO: TStringField;
    TBNfeCPG_MEIOPAGAMENTO: TStringField;
    TBNfeCPG_TIPOINTEGRACAO: TStringField;
    TBNfeCPG_TIPOPAGAMENTO: TStringField;
    TBNfeInutilizadas: TFDQuery;
    TBNfeInutilizadasNIN_ANO: TStringField;
    TBNfeInutilizadasNIN_CODIGO: TIntegerField;
    TBNfeInutilizadasNIN_DTATUALIZACAO: TDateField;
    TBNfeInutilizadasNIN_DTCADASTRO: TDateField;
    TBNfeInutilizadasNIN_HRATUALIZACAO: TTimeField;
    TBNfeInutilizadasNIN_HRCADASTRO: TTimeField;
    TBNfeInutilizadasNIN_JUSTIFICATIVA: TStringField;
    TBNfeInutilizadasNIN_MODELO: TIntegerField;
    TBNfeInutilizadasNIN_NUMFINAL: TIntegerField;
    TBNfeInutilizadasNIN_NUMINICIAL: TIntegerField;
    TBNfeInutilizadasNIN_PROTOCOLO: TStringField;
    TBNfeInutilizadasNIN_PROTOCOLODH: TStringField;
    TBNfeInutilizadasNIN_SERIE: TIntegerField;
    TBNfeInutilizadasNIN_USUARIO: TStringField;
    TBNfeItens: TFDQuery;
    TBNfeItensAdicoes: TFDQuery;
    TBNfeItensAdicoesNFA_CODIGO: TIntegerField;
    TBNfeItensAdicoesNFA_DESCONTODI: TFMTBCDField;
    TBNfeItensAdicoesNFA_DRAWBACK: TStringField;
    TBNfeItensAdicoesNFA_FABRICANTE: TStringField;
    TBNfeItensAdicoesNFA_NFEITEM: TIntegerField;
    TBNfeItensAdicoesNFA_NUMERO: TIntegerField;
    TBNfeItensAdicoesNFA_SEQUENCIA: TIntegerField;
    TBNfeItensALM_DESCRICAO: TStringField;
    TBNfeItensCLF_DESCRICAO: TStringField;
    TBNfeItensCLT_DESCRICAO: TStringField;
    TBNfeItensCLT_DESCRICAO1: TStringField;
    TBNfeItensICM_CALCULACREDITOSN: TStringField;
    TBNfeItensICM_DESCRICAO: TStringField;
    TBNfeItensIPI_DESCRICAO: TStringField;
    TBNfeItensISS_DESCRICAO: TStringField;
    TBNfeItensNAT_CALCULACOMISSAO: TStringField;
    TBNfeItensNAT_CALCULACREDITOSN: TStringField;
    TBNfeItensNAT_DESCRICAO: TStringField;
    TBNfeItensNAT_INFORMADIFAL: TStringField;
    TBNfeItensNFI_ALIQCBS: TFMTBCDField;
    TBNfeItensNFI_ALIQCBSCREDPRES: TFMTBCDField;
    TBNfeItensNFI_ALIQCBSDIF: TFMTBCDField;
    TBNfeItensNFI_ALIQCBSEFE: TFMTBCDField;
    TBNfeItensNFI_ALIQCBSRED: TFMTBCDField;
    TBNfeItensNFI_ALIQCOFINS: TFMTBCDField;
    TBNfeItensNFI_ALIQCOFINSST: TFMTBCDField;
    TBNfeItensNFI_ALIQFCP: TFMTBCDField;
    TBNfeItensNFI_ALIQFCPST: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSCREDPRES: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSMUN: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSMUNDIF: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSMUNEFE: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSMUNRED: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSUF: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSUFDIF: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSUFEFE: TFMTBCDField;
    TBNfeItensNFI_ALIQIBSUFRED: TFMTBCDField;
    TBNfeItensNFI_ALIQICMS: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSADICST: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSINTER: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSINTERPART: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSRED: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSST: TFMTBCDField;
    TBNfeItensNFI_ALIQICMSSTRET: TFMTBCDField;
    TBNfeItensNFI_ALIQII: TFMTBCDField;
    TBNfeItensNFI_ALIQIPI: TFMTBCDField;
    TBNfeItensNFI_ALIQIS: TFMTBCDField;
    TBNfeItensNFI_ALIQISESP: TFMTBCDField;
    TBNfeItensNFI_ALIQISS: TFMTBCDField;
    TBNfeItensNFI_ALIQPIS: TFMTBCDField;
    TBNfeItensNFI_ALIQPISST: TFMTBCDField;
    TBNfeItensNFI_ALMOXARIFADO: TIntegerField;
    TBNfeItensNFI_BASECOFINS: TFMTBCDField;
    TBNfeItensNFI_BASECOFINSST: TFMTBCDField;
    TBNfeItensNFI_BASEIBSCBS: TFMTBCDField;
    TBNfeItensNFI_BASEICMS: TFMTBCDField;
    TBNfeItensNFI_BASEICMSRED: TFMTBCDField;
    TBNfeItensNFI_BASEICMSST: TFMTBCDField;
    TBNfeItensNFI_BASEICMSSTRET: TFMTBCDField;
    TBNfeItensNFI_BASEII: TFMTBCDField;
    TBNfeItensNFI_BASEIPI: TFMTBCDField;
    TBNfeItensNFI_BASEIS: TFMTBCDField;
    TBNfeItensNFI_BASEISS: TFMTBCDField;
    TBNfeItensNFI_BASEPIS: TFMTBCDField;
    TBNfeItensNFI_BASEPISST: TFMTBCDField;
    TBNfeItensNFI_BENEFICIO: TStringField;
    TBNfeItensNFI_CBSCREDITOPRES: TIntegerField;
    TBNfeItensNFI_CEST: TStringField;
    TBNfeItensNFI_CFOP: TIntegerField;
    TBNfeItensNFI_CIDADEISS: TIntegerField;
    TBNfeItensNFI_CLASSFISCAL: TStringField;
    TBNfeItensNFI_CLASSTRIBIBSCBS: TStringField;
    TBNfeItensNFI_CLASSTRIBIS: TStringField;
    TBNfeItensNFI_CODIGO: TIntegerField;
    TBNfeItensNFI_CODIGOBARRAS: TStringField;
    TBNfeItensNFI_CODIGOFAB: TStringField;
    TBNfeItensNFI_COMISSAO: TFMTBCDField;
    TBNfeItensNFI_COMPLEMENTO: TStringField;
    TBNfeItensNFI_COMPOEBASEICMS: TStringField;
    TBNfeItensNFI_COMPOEBASEICMSST: TStringField;
    TBNfeItensNFI_COMPOETOTAL: TStringField;
    TBNfeItensNFI_CONVERSAO: TFMTBCDField;
    TBNfeItensNFI_CSTIBSCBS: TStringField;
    TBNfeItensNFI_CSTCOFINS: TIntegerField;
    TBNfeItensNFI_CSTICMS: TIntegerField;
    TBNfeItensNFI_CSTIPI: TIntegerField;
    TBNfeItensNFI_CSTIS: TStringField;
    TBNfeItensNFI_CSTPIS: TIntegerField;
    TBNfeItensNFI_DESCMAX: TFMTBCDField;
    TBNfeItensNFI_DESCPORC: TFMTBCDField;
    TBNfeItensNFI_DESCRICAO: TStringField;
    TBNfeItensNFI_DESCVALOR: TFMTBCDField;
    TBNfeItensNFI_DESONERACAO: TStringField;
    TBNfeItensNFI_DFEREF: TStringField;
    TBNfeItensNFI_DFEREFITEM: TIntegerField;
    TBNfeItensNFI_DICNPJ: TStringField;
    TBNfeItensNFI_DIDATA: TDateField;
    TBNfeItensNFI_DIDESEMBARACODATA: TDateField;
    TBNfeItensNFI_DIDESEMBARACOLOCAL: TStringField;
    TBNfeItensNFI_DIDESEMBARACOUF: TStringField;
    TBNfeItensNFI_DIEXPORTADORCOD: TStringField;
    TBNfeItensNFI_DIINTERMEDIO: TStringField;
    TBNfeItensNFI_DINUMERO: TStringField;
    TBNfeItensNFI_DITERCEIROUF: TStringField;
    TBNfeItensNFI_DITRANSPORTE: TStringField;
    TBNfeItensNFI_DIVALORAFRMM: TFMTBCDField;
    TBNfeItensNFI_ENQUADRAMENTOIPI: TIntegerField;
    TBNfeItensNFI_EXCECAO: TIntegerField;
    TBNfeItensNFI_EXCHAVEACESSO: TStringField;
    TBNfeItensNFI_EXDRAWBACK: TStringField;
    TBNfeItensNFI_EXQUANTIDADE: TFMTBCDField;
    TBNfeItensNFI_EXREGISTRO: TStringField;
    TBNfeItensNFI_FCI: TStringField;
    TBNfeItensNFI_IBSCREDITOPRES: TIntegerField;
    TBNfeItensNFI_INCENTIVOISS: TStringField;
    TBNfeItensNFI_INDICADORISS: TStringField;
    TBNfeItensNFI_INFOADICIONAL: TMemoField;
    TBNfeItensNFI_LOCALIZACAO: TStringField;
    TBNfeItensNFI_LOTE: TStringField;
    TBNfeItensNFI_LUCROPORC: TFMTBCDField;
    TBNfeItensNFI_LUCROVALOR: TFMTBCDField;
    TBNfeItensNFI_MODICMS: TStringField;
    TBNfeItensNFI_MODICMSST: TStringField;
    TBNfeItensNFI_NOTA: TIntegerField;
    TBNfeItensNFI_ORIGEM: TStringField;
    TBNfeItensNFI_PAISISS: TIntegerField;
    TBNfeItensNFI_PEDIDOCLIENTE: TStringField;
    TBNfeItensNFI_PEDIDOCLIENTEITEM: TIntegerField;
    TBNfeItensNFI_PESO: TFMTBCDField;
    TBNfeItensNFI_PESOTOTAL: TFMTBCDField;
    TBNfeItensNFI_PRECOCUSTO: TFMTBCDField;
    TBNfeItensNFI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBNfeItensNFI_PROCESSOISS: TStringField;
    TBNfeItensNFI_PRODUTO: TIntegerField;
    TBNfeItensNFI_PRODUTOREAL: TIntegerField;
    TBNfeItensNFI_QUANTIDADE: TFMTBCDField;
    TBNfeItensNFI_QUANTIDADETROCA: TFMTBCDField;
    TBNfeItensNFI_SEQUENCIA: TIntegerField;
    TBNfeItensNFI_SERVICOISS: TStringField;
    TBNfeItensNFI_SOMACOFINSST: TStringField;
    TBNfeItensNFI_SOMAPISST: TStringField;
    TBNfeItensNFI_TIPO: TStringField;
    TBNfeItensNFI_TIPOISS: TStringField;
    TBNfeItensNFI_UNIDADE: TStringField;
    TBNfeItensNFI_VALORACESSORIAS: TFMTBCDField;
    TBNfeItensNFI_VALORADUANA: TFMTBCDField;
    TBNfeItensNFI_VALORCBS: TFMTBCDField;
    TBNfeItensNFI_VALORCBSCREDPRES: TFMTBCDField;
    TBNfeItensNFI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBNfeItensNFI_VALORCBSDEV: TFMTBCDField;
    TBNfeItensNFI_VALORCBSDIF: TFMTBCDField;
    TBNfeItensNFI_VALORCOFINS: TFMTBCDField;
    TBNfeItensNFI_VALORCOFINSST: TFMTBCDField;
    TBNfeItensNFI_VALORCOMISSAO: TFMTBCDField;
    TBNfeItensNFI_VALORFCP: TFMTBCDField;
    TBNfeItensNFI_VALORFCPST: TFMTBCDField;
    TBNfeItensNFI_VALORFRETE: TFMTBCDField;
    TBNfeItensNFI_VALORIBS: TFMTBCDField;
    TBNfeItensNFI_VALORIBSCREDPRES: TFMTBCDField;
    TBNfeItensNFI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBNfeItensNFI_VALORIBSMUN: TFMTBCDField;
    TBNfeItensNFI_VALORIBSMUNDEV: TFMTBCDField;
    TBNfeItensNFI_VALORIBSMUNDIF: TFMTBCDField;
    TBNfeItensNFI_VALORIBSUF: TFMTBCDField;
    TBNfeItensNFI_VALORIBSUFDEV: TFMTBCDField;
    TBNfeItensNFI_VALORIBSUFDIF: TFMTBCDField;
    TBNfeItensNFI_VALORICMS: TFMTBCDField;
    TBNfeItensNFI_VALORICMSCREDSN: TFMTBCDField;
    TBNfeItensNFI_VALORICMSDESONERADO: TFMTBCDField;
    TBNfeItensNFI_VALORICMSST: TFMTBCDField;
    TBNfeItensNFI_VALORICMSSTRET: TFMTBCDField;
    TBNfeItensNFI_VALORICMSSUBSTITUTO: TFMTBCDField;
    TBNfeItensNFI_VALORICMSUFDEST: TFMTBCDField;
    TBNfeItensNFI_VALORICMSUFREMET: TFMTBCDField;
    TBNfeItensNFI_VALORII: TFMTBCDField;
    TBNfeItensNFI_VALORIOF: TFMTBCDField;
    TBNfeItensNFI_VALORIPI: TFMTBCDField;
    TBNfeItensNFI_VALORIS: TFMTBCDField;
    TBNfeItensNFI_VALORISS: TFMTBCDField;
    TBNfeItensNFI_VALORISSDEDUCAO: TFMTBCDField;
    TBNfeItensNFI_VALORISSDESCCOND: TFMTBCDField;
    TBNfeItensNFI_VALORISSDESCINCOND: TFMTBCDField;
    TBNfeItensNFI_VALORISSOUTROS: TFMTBCDField;
    TBNfeItensNFI_VALORISSRETENCAO: TFMTBCDField;
    TBNfeItensNFI_VALORPIS: TFMTBCDField;
    TBNfeItensNFI_VALORPISST: TFMTBCDField;
    TBNfeItensNFI_VALORSEGURO: TFMTBCDField;
    TBNfeItensNFI_VALORTOTAL: TFMTBCDField;
    TBNfeItensNFI_VALORTOTALBRUTO: TFMTBCDField;
    TBNfeItensNFI_VALORTRIBUTOS: TFMTBCDField;
    TBNfeItensNFI_VALORTRIBUTOSEST: TFMTBCDField;
    TBNfeItensNFI_VALORTRIBUTOSFED: TFMTBCDField;
    TBNfeItensNFI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBNfeItensNFI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBNfeItensNFI_VALORUNIT: TFMTBCDField;
    TBNfeItensPIS_DESCRICAO: TStringField;
    TBNfeItensPIS_DESCRICAO1: TStringField;
    TBNfeItensPRO_CLASSFISCAL: TStringField;
    TBNfeItensPRO_CODIGO: TIntegerField;
    TBNfeItensPRO_CODIGOBARRAS: TStringField;
    TBNfeItensPRO_CSTICMS: TIntegerField;
    TBNfeItensPRO_NOME: TStringField;
    TBNfeItensPRO_PRECOVENDA: TFMTBCDField;
    TBNfeItensPRO_TIPO: TStringField;
    TBNfeItensPRO_UNIDADE: TStringField;
    TBNfeNAT_CALCULACOMISSAO: TStringField;
    TBNfeNAT_CALCULACREDITOSN: TStringField;
    TBNfeNFE_ALIQICMSCREDSN: TFMTBCDField;
    TBNfeNFE_BAIRRO: TStringField;
    TBNfeNFE_BAIXADATA: TDateField;
    TBNfeNFE_BAIXAPOR: TStringField;
    TBNfeNFE_BASECOFINS: TFMTBCDField;
    TBNfeNFE_BASECOFINSST: TFMTBCDField;
    TBNfeNFE_BASEIBSCBS: TFMTBCDField;
    TBNfeNFE_BASEICMS: TFMTBCDField;
    TBNfeNFE_BASEICMSST: TFMTBCDField;
    TBNfeNFE_BASEII: TFMTBCDField;
    TBNfeNFE_BASEIPI: TFMTBCDField;
    TBNfeNFE_BASEIRRF: TFMTBCDField;
    TBNfeNFE_BASEIS: TFMTBCDField;
    TBNfeNFE_BASEISS: TFMTBCDField;
    TBNfeNFE_BASEPIS: TFMTBCDField;
    TBNfeNFE_BASEPISST: TFMTBCDField;
    TBNfeNFE_CBSCREDPRES: TFMTBCDField;
    TBNfeNFE_CBSCREDPRESSUS: TFMTBCDField;
    TBNfeNFE_CBSDEVOLUCAO: TFMTBCDField;
    TBNfeNFE_CBSDIFERIMENTO: TFMTBCDField;
    TBNfeNFE_CBSMONO: TFMTBCDField;
    TBNfeNFE_CBSMONORETENCAO: TFMTBCDField;
    TBNfeNFE_CBSMONORETIDO: TFMTBCDField;
    TBNfeNFE_CBSVALOR: TFMTBCDField;
    TBNfeNFE_CEP: TStringField;
    TBNfeNFE_CFOP: TIntegerField;
    TBNfeNFE_CFOPDESC: TStringField;
    TBNfeNFE_CHAVEACESSO: TStringField;
    TBNfeNFE_CIDADE: TStringField;
    TBNfeNFE_CIDADECODIGO: TIntegerField;
    TBNfeNFE_CLIENTE: TIntegerField;
    TBNfeNFE_CNPJ: TStringField;
    TBNfeNFE_CODIGO: TIntegerField;
    TBNfeNFE_CODIGONFE: TIntegerField;
    TBNfeNFE_CODIGONUMERICO: TStringField;
    TBNfeNFE_COMISSAO: TFMTBCDField;
    TBNfeNFE_COMISSAOPOR: TStringField;
    TBNfeNFE_COMPLEMENTO: TStringField;
    TBNfeNFE_CONDICAO: TIntegerField;
    TBNfeNFE_CONDICAOMEMO: TMemoField;
    TBNfeNFE_CONSULTADA: TStringField;
    TBNfeNFE_CONTATO: TStringField;
    TBNfeNFE_CPF: TStringField;
    TBNfeNFE_CUSTOTOTAL: TFMTBCDField;
    TBNfeNFE_DESCPORC: TFMTBCDField;
    TBNfeNFE_DESCPORCCLIENTE: TFMTBCDField;
    TBNfeNFE_DESCPORCCONDICAO: TFMTBCDField;
    TBNfeNFE_DESCVALOR: TFMTBCDField;
    TBNfeNFE_DESTACARIMPOSTOS: TStringField;
    TBNfeNFE_DIAPREFERENCIAL: TIntegerField;
    TBNfeNFE_DPEC: TStringField;
    TBNfeNFE_DPECDH: TStringField;
    TBNfeNFE_DTATUALIZACAO: TDateField;
    TBNfeNFE_DTCADASTRO: TDateField;
    TBNfeNFE_DTEMISSAO: TDateField;
    TBNfeNFE_DTPRESTSERVICO: TDateField;
    TBNfeNFE_DTSAIDA: TDateField;
    TBNfeNFE_ENDERECO: TStringField;
    TBNfeNFE_ENTRADASAIDA: TStringField;
    TBNfeNFE_ENVIADA: TStringField;
    TBNfeNFE_ESPECIE: TStringField;
    TBNfeNFE_ESTADO: TStringField;
    TBNfeNFE_ESTADOCODIGO: TIntegerField;
    TBNfeNFE_EXLOCAL: TStringField;
    TBNfeNFE_EXPEDIDOPOR: TIntegerField;
    TBNfeNFE_EXUFSAIDA: TStringField;
    TBNfeNFE_FINALIDADE: TStringField;
    TBNfeNFE_FONE1: TStringField;
    TBNfeNFE_FORMAPAGTO: TStringField;
    TBNfeNFE_FRETE: TStringField;
    TBNfeNFE_GOVERNAMENTAL: TStringField;
    TBNfeNFE_GOVERNAMENTALALIQRED: TFMTBCDField;
    TBNfeNFE_GOVERNAMENTALOP: TStringField;
    TBNfeNFE_HRATUALIZACAO: TTimeField;
    TBNfeNFE_HRCADASTRO: TTimeField;
    TBNfeNFE_IBSCREDPRES: TFMTBCDField;
    TBNfeNFE_IBSCREDPRESSUS: TFMTBCDField;
    TBNfeNFE_IBSMONO: TFMTBCDField;
    TBNfeNFE_IBSMONORETENCAO: TFMTBCDField;
    TBNfeNFE_IBSMONORETIDO: TFMTBCDField;
    TBNfeNFE_IBSMUNDEVOLUCAO: TFMTBCDField;
    TBNfeNFE_IBSMUNDIFERIMENTO: TFMTBCDField;
    TBNfeNFE_IBSMUNVALOR: TFMTBCDField;
    TBNfeNFE_IBSUFDEVOLUCAO: TFMTBCDField;
    TBNfeNFE_IBSUFDIFERIMENTO: TFMTBCDField;
    TBNfeNFE_IBSUFVALOR: TFMTBCDField;
    TBNfeNFE_IBSVALOR: TFMTBCDField;
    TBNfeNFE_IDESTRANGEIRO: TStringField;
    TBNfeNFE_IE: TStringField;
    TBNfeNFE_INFOADICFISCO: TMemoField;
    TBNfeNFE_INFOCOMPLEMENTAR: TMemoField;
    TBNfeNFE_INTERMEDIADOR: TStringField;
    TBNfeNFE_INTERMEDIADORCAD: TStringField;
    TBNfeNFE_INTERMEDIADORCNPJ: TStringField;
    TBNfeNFE_LACRES: TStringField;
    TBNfeNFE_LOTE: TStringField;
    TBNfeNFE_LUCROPORC: TFMTBCDField;
    TBNfeNFE_LUCROVALOR: TFMTBCDField;
    TBNfeNFE_MANUAL: TStringField;
    TBNfeNFE_MARCA: TStringField;
    TBNfeNFE_MODELO: TIntegerField;
    TBNfeNFE_MOTIVOCANCELAMENTO: TStringField;
    TBNfeNFE_MOTIVOINUTILIZACAO: TStringField;
    TBNfeNFE_MOVIMENTAESTOQUE: TStringField;
    TBNfeNFE_MOVIMENTAFINANCEIRO: TStringField;
    TBNfeNFE_NOME: TStringField;
    TBNfeNFE_NOTACREDITO: TStringField;
    TBNfeNFE_NOTADEBITO: TStringField;
    TBNfeNFE_NUMERO: TStringField;
    TBNfeNFE_OBSERVACOES: TMemoField;
    TBNfeNFE_PAIS: TStringField;
    TBNfeNFE_PAISCODIGO: TIntegerField;
    TBNfeNFE_PEDIDOCLIENTE: TStringField;
    TBNfeNFE_PESOBRUTO: TFMTBCDField;
    TBNfeNFE_PESOLIQ: TFMTBCDField;
    TBNfeNFE_PROTOCOLO: TStringField;
    TBNfeNFE_PROTOCOLOCANC: TStringField;
    TBNfeNFE_PROTOCOLOCANCDH: TStringField;
    TBNfeNFE_PROTOCOLODH: TStringField;
    TBNfeNFE_PROTOCOLOINUT: TStringField;
    TBNfeNFE_PROTOCOLOINUTDH: TStringField;
    TBNfeNFE_REBOQUEPLACA: TStringField;
    TBNfeNFE_REBOQUEPLACAUF: TStringField;
    TBNfeNFE_REBOQUERNTC: TStringField;
    TBNfeNFE_RECIBO: TStringField;
    TBNfeNFE_RECIBODH: TStringField;
    TBNfeNFE_RG: TStringField;
    TBNfeNFE_SEQUENCIAITEM: TIntegerField;
    TBNfeNFE_SERIE: TIntegerField;
    TBNfeNFE_STATUS: TStringField;
    TBNfeNFE_SUFRAMA: TStringField;
    TBNfeNFE_TABELAPRECO: TStringField;
    TBNfeNFE_TIPOATENDIMENTO: TStringField;
    TBNfeNFE_TIPOCONSUMIDOR: TStringField;
    TBNfeNFE_TIPOEMISSAO: TStringField;
    TBNfeNFE_TIPOOPERACAO: TStringField;
    TBNfeNFE_TOTALADUANA: TFMTBCDField;
    TBNfeNFE_TOTALBRUTO: TFMTBCDField;
    TBNfeNFE_TOTALCCE: TIntegerField;
    TBNfeNFE_TOTALCOFINS: TFMTBCDField;
    TBNfeNFE_TOTALCOFINSST: TFMTBCDField;
    TBNfeNFE_TOTALCOMISSAO: TFMTBCDField;
    TBNfeNFE_TOTALFCP: TFMTBCDField;
    TBNfeNFE_TOTALFCPST: TFMTBCDField;
    TBNfeNFE_TOTALICMS: TFMTBCDField;
    TBNfeNFE_TOTALICMSCREDSN: TFMTBCDField;
    TBNfeNFE_TOTALICMSST: TFMTBCDField;
    TBNfeNFE_TOTALICMSUFDEST: TFMTBCDField;
    TBNfeNFE_TOTALICMSUFREMET: TFMTBCDField;
    TBNfeNFE_TOTALII: TFMTBCDField;
    TBNfeNFE_TOTALIOF: TFMTBCDField;
    TBNfeNFE_TOTALIPI: TFMTBCDField;
    TBNfeNFE_TOTALIRRF: TFMTBCDField;
    TBNfeNFE_TOTALIS: TFMTBCDField;
    TBNfeNFE_TOTALISS: TFMTBCDField;
    TBNfeNFE_TOTALISSDEDUCAO: TFMTBCDField;
    TBNfeNFE_TOTALISSDESCCOND: TFMTBCDField;
    TBNfeNFE_TOTALISSDESCINCOND: TFMTBCDField;
    TBNfeNFE_TOTALISSOUTROS: TFMTBCDField;
    TBNfeNFE_TOTALISSRETENCAO: TFMTBCDField;
    TBNfeNFE_TOTALITENS: TFMTBCDField;
    TBNfeNFE_TOTALPIS: TFMTBCDField;
    TBNfeNFE_TOTALPISST: TFMTBCDField;
    TBNfeNFE_TOTALPRODUTOS: TFMTBCDField;
    TBNfeNFE_TOTALSERVICOS: TFMTBCDField;
    TBNfeNFE_TOTALTRIBUTOS: TFMTBCDField;
    TBNfeNFE_TOTALTRIBUTOSEST: TFMTBCDField;
    TBNfeNFE_TOTALTRIBUTOSFED: TFMTBCDField;
    TBNfeNFE_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBNfeNFE_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBNfeNFE_TRANSPCIDADE: TStringField;
    TBNfeNFE_TRANSPCNPJ: TStringField;
    TBNfeNFE_TRANSPCPF: TStringField;
    TBNfeNFE_TRANSPEMAIL: TStringField;
    TBNfeNFE_TRANSPENDERECO: TStringField;
    TBNfeNFE_TRANSPESTADO: TStringField;
    TBNfeNFE_TRANSPFONE: TStringField;
    TBNfeNFE_TRANSPIE: TStringField;
    TBNfeNFE_TRANSPNOME: TStringField;
    TBNfeNFE_TRANSPORTADORA: TIntegerField;
    TBNfeNFE_USUARIO: TStringField;
    TBNfeNFE_VALORDESPACES: TFMTBCDField;
    TBNfeNFE_VALORFRETE: TFMTBCDField;
    TBNfeNFE_VALORSEGURO: TFMTBCDField;
    TBNfeNFE_VALORTOTAL: TFMTBCDField;
    TBNfeNFE_VALORTOTALRTC: TFMTBCDField;
    TBNfeNFE_VEICULOPLACA: TStringField;
    TBNfeNFE_VEICULOPLACAUF: TStringField;
    TBNfeNFE_VEICULORNTC: TStringField;
    TBNfeNFE_VENDA: TIntegerField;
    TBNfeNFE_VENDEDOR: TIntegerField;
    TBNfeNFE_VOLUMES: TIntegerField;
    TBNfeNFE_VOLUMESNUM: TStringField;
    TBNfeRef: TFDQuery;
    TBNfeRefNFR_ANOMES: TStringField;
    TBNfeRefNFR_CHAVEACESSO: TStringField;
    TBNfeRefNFR_CNPJEMITENTE: TStringField;
    TBNfeRefNFR_CODIGO: TIntegerField;
    TBNfeRefNFR_COO: TIntegerField;
    TBNfeRefNFR_CPFEMITENTE: TStringField;
    TBNfeRefNFR_ESTADOCODIGO: TIntegerField;
    TBNfeRefNFR_IEEMITENTE: TStringField;
    TBNfeRefNFR_MODELO: TStringField;
    TBNfeRefNFR_NFE: TIntegerField;
    TBNfeRefNFR_NUMERO: TIntegerField;
    TBNfeRefNFR_SERIE: TIntegerField;
    TBNfeRefNFR_TIPO: TStringField;
    TBNfeVEN_NOME: TStringField;
    TBNfeVEN_NOME1: TStringField;
    TBNfse: TFDQuery;
    TBNfseCodigo: TFDQuery;
    TBNfseCodigoNFS_CODIGO: TIntegerField;
    TBNfseCPG_DESCRICAO: TStringField;
    TBNfseItens: TFDQuery;
    TBNfseItensISS_DESCRICAO: TStringField;
    TBNfseItensNBS_DESCRICAO: TStringField;
    TBNfseItensNSI_ALIQCBS: TFMTBCDField;
    TBNfseItensNSI_ALIQCBSCREDPRES: TFMTBCDField;
    TBNfseItensNSI_ALIQCBSDIF: TFMTBCDField;
    TBNfseItensNSI_ALIQCBSEFE: TFMTBCDField;
    TBNfseItensNSI_ALIQCBSRED: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSCREDPRES: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSMUN: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSMUNDIF: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSMUNEFE: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSMUNRED: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSUF: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSUFDIF: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSUFEFE: TFMTBCDField;
    TBNfseItensNSI_ALIQIBSUFRED: TFMTBCDField;
    TBNfseItensNSI_ALIQIS: TFMTBCDField;
    TBNfseItensNSI_ALIQISESP: TFMTBCDField;
    TBNfseItensNSI_IBSCREDITOPRES: TIntegerField;
    TBNfseItensNSI_ALIQUOTA: TFMTBCDField;
    TBNfseItensNSI_BASEIBSCBS: TFMTBCDField;
    TBNfseItensNSI_BASEIS: TFMTBCDField;
    TBNfseItensNSI_BASEISS: TFMTBCDField;
    TBNfseItensNSI_CBSCREDITOPRES: TIntegerField;
    TBNfseItensNSI_CIDADE: TStringField;
    TBNfseItensNSI_CIDADECODIGO: TIntegerField;
    TBNfseItensNSI_CLASSTRIBIBSCBS: TStringField;
    TBNfseItensNSI_CLASSTRIBIS: TStringField;
    TBNfseItensNSI_CODIGO: TIntegerField;
    TBNfseItensNSI_CSTIBSCBS: TStringField;
    TBNfseItensNSI_CSTIS: TStringField;
    TBNfseItensNSI_DESCRICAO: TMemoField;
    TBNfseItensNSI_NBS: TStringField;
    TBNfseItensNSI_NFSE: TIntegerField;
    TBNfseItensNSI_PAIS: TIntegerField;
    TBNfseItensNSI_PRESTADONOPAIS: TStringField;
    TBNfseItensNSI_PRODUTO: TIntegerField;
    TBNfseItensNSI_QUANTIDADE: TFMTBCDField;
    TBNfseItensNSI_SERVICO: TStringField;
    TBNfseItensNSI_VALORCBS: TFMTBCDField;
    TBNfseItensNSI_VALORCBSCREDPRES: TFMTBCDField;
    TBNfseItensNSI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBNfseItensNSI_VALORCBSDEV: TFMTBCDField;
    TBNfseItensNSI_VALORCBSDIF: TFMTBCDField;
    TBNfseItensNSI_VALORDEDUCOES: TFMTBCDField;
    TBNfseItensNSI_VALORDESCCOND: TFMTBCDField;
    TBNfseItensNSI_VALORDESCINCOND: TFMTBCDField;
    TBNfseItensNSI_VALORIBS: TFMTBCDField;
    TBNfseItensNSI_VALORIBSCREDPRES: TFMTBCDField;
    TBNfseItensNSI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBNfseItensNSI_VALORIBSMUN: TFMTBCDField;
    TBNfseItensNSI_VALORIBSMUNDEV: TFMTBCDField;
    TBNfseItensNSI_VALORIBSMUNDIF: TFMTBCDField;
    TBNfseItensNSI_VALORIBSUF: TFMTBCDField;
    TBNfseItensNSI_VALORIBSUFDEV: TFMTBCDField;
    TBNfseItensNSI_VALORIBSUFDIF: TFMTBCDField;
    TBNfseItensNSI_VALORIS: TFMTBCDField;
    TBNfseItensNSI_VALORISS: TFMTBCDField;
    TBNfseItensNSI_VALORTOTAL: TFMTBCDField;
    TBNfseItensNSI_VALORTRIBUTOS: TFMTBCDField;
    TBNfseItensNSI_VALORTRIBUTOSEST: TFMTBCDField;
    TBNfseItensNSI_VALORTRIBUTOSFED: TFMTBCDField;
    TBNfseItensNSI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBNfseItensNSI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBNfseItensNSI_VALORUNIT: TFMTBCDField;
    TBNfseItensPRO_NOME: TStringField;
    TBNfseNFS_BAIXADATA: TDateField;
    TBNfseNFS_BAIXAPOR: TStringField;
    TBNfseNFS_BASEIBSCBS: TFMTBCDField;
    TBNfseNFS_BASEIS: TFMTBCDField;
    TBNfseNFS_BASEISS: TFMTBCDField;
    TBNfseNFS_CANCELAMENTOCODIGO: TStringField;
    TBNfseNFS_CANCELAMENTODATA: TDateField;
    TBNfseNFS_CANCELAMENTOHORA: TTimeField;
    TBNfseNFS_CANCELAMENTOMOTIVO: TStringField;
    TBNfseNFS_CBSCREDPRES: TFMTBCDField;
    TBNfseNFS_CBSCREDPRESSUS: TFMTBCDField;
    TBNfseNFS_CBSDEVOLUCAO: TFMTBCDField;
    TBNfseNFS_CBSDIFERIMENTO: TFMTBCDField;
    TBNfseNFS_CBSMONO: TFMTBCDField;
    TBNfseNFS_CBSMONORETENCAO: TFMTBCDField;
    TBNfseNFS_CBSMONORETIDO: TFMTBCDField;
    TBNfseNFS_CBSVALOR: TFMTBCDField;
    TBNfseNFS_CHAVEACESSO: TStringField;
    TBNfseNFS_CLIENTE: TIntegerField;
    TBNfseNFS_CODIGO: TIntegerField;
    TBNfseNFS_CONDICAO: TIntegerField;
    TBNfseNFS_CONDICAOMEMO: TMemoField;
    TBNfseNFS_CONSULTADA: TStringField;
    TBNfseNFS_CSTISS: TStringField;
    TBNfseNFS_DIAPREFERENCIAL: TIntegerField;
    TBNfseNFS_DTATUALIZACAO: TDateField;
    TBNfseNFS_DTCADASTRO: TDateField;
    TBNfseNFS_DTEMISSAO: TDateField;
    TBNfseNFS_FINALIDADE: TStringField;
    TBNfseNFS_FORMAPAGTO: TStringField;
    TBNfseNFS_GOVERNAMENTAL: TStringField;
    TBNfseNFS_GOVERNAMENTALALIQRED: TFMTBCDField;
    TBNfseNFS_GOVERNAMENTALOP: TStringField;
    TBNfseNFS_HRATUALIZACAO: TTimeField;
    TBNfseNFS_HRCADASTRO: TTimeField;
    TBNfseNFS_IBSCREDPRES: TFMTBCDField;
    TBNfseNFS_IBSCREDPRESSUS: TFMTBCDField;
    TBNfseNFS_IBSMONO: TFMTBCDField;
    TBNfseNFS_IBSMONORETENCAO: TFMTBCDField;
    TBNfseNFS_IBSMONORETIDO: TFMTBCDField;
    TBNfseNFS_IBSMUNDEVOLUCAO: TFMTBCDField;
    TBNfseNFS_IBSMUNDIFERIMENTO: TFMTBCDField;
    TBNfseNFS_IBSMUNVALOR: TFMTBCDField;
    TBNfseNFS_IBSUFDEVOLUCAO: TFMTBCDField;
    TBNfseNFS_IBSUFDIFERIMENTO: TFMTBCDField;
    TBNfseNFS_IBSUFVALOR: TFMTBCDField;
    TBNfseNFS_IBSVALOR: TFMTBCDField;
    TBNfseNFS_IDDPS: TStringField;
    TBNfseNFS_INFOADICIONAIS: TMemoField;
    TBNfseNFS_INTERMEDIARIOCPFCNPJ: TStringField;
    TBNfseNFS_INTERMEDIARIOIM: TIntegerField;
    TBNfseNFS_INTERMEDIARIONOME: TStringField;
    TBNfseNFS_LINK: TStringField;
    TBNfseNFS_LOTE: TIntegerField;
    TBNfseNFS_MOVIMENTAFINANCEIRO: TStringField;
    TBNfseNFS_NUMERONOTA: TIntegerField;
    TBNfseNFS_OBRAART: TIntegerField;
    TBNfseNFS_OBRACODIGO: TIntegerField;
    TBNfseNFS_OBSERVACOES: TMemoField;
    TBNfseNFS_PROTOCOLO: TStringField;
    TBNfseNFS_PROTOCOLODH: TStringField;
    TBNfseNFS_RECIBO: TStringField;
    TBNfseNFS_RECIBODH: TStringField;
    TBNfseNFS_RETENCAO: TStringField;
    TBNfseNFS_RETENCAORESP: TStringField;
    TBNfseNFS_SERIE: TStringField;
    TBNfseNFS_SIMPLESNACIONAL: TStringField;
    TBNfseNFS_STATUS: TStringField;
    TBNfseNFS_TOMBAIRRO: TStringField;
    TBNfseNFS_TOMCEP: TStringField;
    TBNfseNFS_TOMCIDADE: TStringField;
    TBNfseNFS_TOMCIDADECODIGO: TIntegerField;
    TBNfseNFS_TOMCNPJ: TStringField;
    TBNfseNFS_TOMCOMPLEMENTO: TStringField;
    TBNfseNFS_TOMCONTATO: TStringField;
    TBNfseNFS_TOMCPF: TStringField;
    TBNfseNFS_TOMEMAIL: TStringField;
    TBNfseNFS_TOMENDERECO: TStringField;
    TBNfseNFS_TOMESTADO: TStringField;
    TBNfseNFS_TOMESTADOCODIGO: TIntegerField;
    TBNfseNFS_TOMFONE1: TStringField;
    TBNfseNFS_TOMFONE2: TStringField;
    TBNfseNFS_TOMIE: TStringField;
    TBNfseNFS_TOMIM: TIntegerField;
    TBNfseNFS_TOMNOME: TStringField;
    TBNfseNFS_TOMNUMERO: TStringField;
    TBNfseNFS_TOMPAIS: TStringField;
    TBNfseNFS_TOMPAISCODIGO: TIntegerField;
    TBNfseNFS_TOMSITE: TStringField;
    TBNfseNFS_TOMTIPOPESSOA: TStringField;
    TBNfseNFS_TOTALDEDUCOES: TFMTBCDField;
    TBNfseNFS_TOTALDESCCOND: TFMTBCDField;
    TBNfseNFS_TOTALDESCINCOND: TFMTBCDField;
    TBNfseNFS_TOTALIS: TFMTBCDField;
    TBNfseNFS_TOTALISS: TFMTBCDField;
    TBNfseNFS_TOTALSERVICOS: TFMTBCDField;
    TBNfseNFS_TOTALTRIBUTOS: TFMTBCDField;
    TBNfseNFS_TOTALTRIBUTOSEST: TFMTBCDField;
    TBNfseNFS_TOTALTRIBUTOSFED: TFMTBCDField;
    TBNfseNFS_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBNfseNFS_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBNfseNFS_USUARIO: TStringField;
    TBNfseNFS_VALORCOFINS: TFMTBCDField;
    TBNfseNFS_VALORCREDITO: TFMTBCDField;
    TBNfseNFS_VALORCSLL: TFMTBCDField;
    TBNfseNFS_VALORINSS: TFMTBCDField;
    TBNfseNFS_VALORIR: TFMTBCDField;
    TBNfseNFS_VALORISSRETIDO: TFMTBCDField;
    TBNfseNFS_VALORLIQUIDO: TFMTBCDField;
    TBNfseNFS_VALOROUTRASRET: TFMTBCDField;
    TBNfseNFS_VALORPIS: TFMTBCDField;
    TBNfseNFS_VALORTOTALRTC: TFMTBCDField;
    TBNfseNFS_VENDA: TIntegerField;
    TBNfseNFS_VENDEDOR: TIntegerField;
    TBNfseVEN_NOME: TStringField;
    TBNotas: TFDQuery;
    TBNotasCLI_FANTASIA: TStringField;
    TBNotasCodigo: TFDQuery;
    TBNotasCodigoNOT_CODIGO: TIntegerField;
    TBNotasCPG_DESCRICAO: TStringField;
    TBNotasItens: TFDQuery;
    TBNotasItensCLF_DESCRICAO: TStringField;
    TBNotasItensICM_CALCULACREDITOSN: TStringField;
    TBNotasItensICM_DESCRICAO: TStringField;
    TBNotasItensIPI_DESCRICAO: TStringField;
    TBNotasItensISS_DESCRICAO: TStringField;
    TBNotasItensNAT_CALCULACOMISSAO: TStringField;
    TBNotasItensNAT_CALCULACREDITOSN: TStringField;
    TBNotasItensNAT_DESCRICAO: TStringField;
    TBNotasItensNOI_ALIQCOFINS: TFMTBCDField;
    TBNotasItensNOI_ALIQCOFINSST: TFMTBCDField;
    TBNotasItensNOI_ALIQFCP: TFMTBCDField;
    TBNotasItensNOI_ALIQFCPST: TFMTBCDField;
    TBNotasItensNOI_ALIQICMS: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSADICST: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSINTER: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSINTERPART: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSRED: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSST: TFMTBCDField;
    TBNotasItensNOI_ALIQICMSSTRET: TFMTBCDField;
    TBNotasItensNOI_ALIQII: TFMTBCDField;
    TBNotasItensNOI_ALIQIPI: TFMTBCDField;
    TBNotasItensNOI_ALIQISS: TFMTBCDField;
    TBNotasItensNOI_ALIQPIS: TFMTBCDField;
    TBNotasItensNOI_ALIQPISST: TFMTBCDField;
    TBNotasItensNOI_ALMOXARIFADO: TIntegerField;
    TBNotasItensNOI_BASECOFINS: TFMTBCDField;
    TBNotasItensNOI_BASECOFINSST: TFMTBCDField;
    TBNotasItensNOI_BASEICMS: TFMTBCDField;
    TBNotasItensNOI_BASEICMSRED: TFMTBCDField;
    TBNotasItensNOI_BASEICMSST: TFMTBCDField;
    TBNotasItensNOI_BASEICMSSTRET: TFMTBCDField;
    TBNotasItensNOI_BASEII: TFMTBCDField;
    TBNotasItensNOI_BASEIPI: TFMTBCDField;
    TBNotasItensNOI_BASEISS: TFMTBCDField;
    TBNotasItensNOI_BASEPIS: TFMTBCDField;
    TBNotasItensNOI_BASEPISST: TFMTBCDField;
    TBNotasItensNOI_BENEFICIO: TStringField;
    TBNotasItensNOI_CEST: TStringField;
    TBNotasItensNOI_CFOP: TIntegerField;
    TBNotasItensNOI_CIDADEISS: TIntegerField;
    TBNotasItensNOI_CLASSFISCAL: TStringField;
    TBNotasItensNOI_CODIGO: TIntegerField;
    TBNotasItensNOI_CODIGOBARRAS: TStringField;
    TBNotasItensNOI_CODIGOFAB: TStringField;
    TBNotasItensNOI_COMISSAO: TFMTBCDField;
    TBNotasItensNOI_COMPLEMENTO: TStringField;
    TBNotasItensNOI_COMPOEBASEICMS: TStringField;
    TBNotasItensNOI_COMPOEBASEICMSST: TStringField;
    TBNotasItensNOI_COMPOETOTAL: TStringField;
    TBNotasItensNOI_CONVERSAO: TFMTBCDField;
    TBNotasItensNOI_CSTCOFINS: TIntegerField;
    TBNotasItensNOI_CSTICMS: TIntegerField;
    TBNotasItensNOI_CSTIPI: TIntegerField;
    TBNotasItensNOI_CSTPIS: TIntegerField;
    TBNotasItensNOI_DESCMAX: TFMTBCDField;
    TBNotasItensNOI_DESCPORC: TFMTBCDField;
    TBNotasItensNOI_DESCRICAO: TStringField;
    TBNotasItensNOI_DESCVALOR: TFMTBCDField;
    TBNotasItensNOI_DESONERACAO: TStringField;
    TBNotasItensNOI_DICNPJ: TStringField;
    TBNotasItensNOI_DIDATA: TDateField;
    TBNotasItensNOI_DIDESEMBARACODATA: TDateField;
    TBNotasItensNOI_DIDESEMBARACOLOCAL: TStringField;
    TBNotasItensNOI_DIDESEMBARACOUF: TStringField;
    TBNotasItensNOI_DIEXPORTADORCOD: TStringField;
    TBNotasItensNOI_DIINTERMEDIO: TStringField;
    TBNotasItensNOI_DINUMERO: TStringField;
    TBNotasItensNOI_DITERCEIROUF: TStringField;
    TBNotasItensNOI_DITRANSPORTE: TStringField;
    TBNotasItensNOI_DIVALORAFRMM: TFMTBCDField;
    TBNotasItensNOI_ENQUADRAMENTOIPI: TIntegerField;
    TBNotasItensNOI_EXCECAO: TIntegerField;
    TBNotasItensNOI_EXCHAVEACESSO: TStringField;
    TBNotasItensNOI_EXDRAWBACK: TStringField;
    TBNotasItensNOI_EXQUANTIDADE: TFMTBCDField;
    TBNotasItensNOI_EXREGISTRO: TStringField;
    TBNotasItensNOI_FCI: TStringField;
    TBNotasItensNOI_INCENTIVOISS: TStringField;
    TBNotasItensNOI_INDICADORISS: TStringField;
    TBNotasItensNOI_INFOADICIONAL: TMemoField;
    TBNotasItensNOI_LOCALIZACAO: TStringField;
    TBNotasItensNOI_LOTE: TStringField;
    TBNotasItensNOI_LUCROPORC: TFMTBCDField;
    TBNotasItensNOI_LUCROVALOR: TFMTBCDField;
    TBNotasItensNOI_MODICMS: TStringField;
    TBNotasItensNOI_MODICMSST: TStringField;
    TBNotasItensNOI_NOTA: TIntegerField;
    TBNotasItensNOI_ORIGEM: TStringField;
    TBNotasItensNOI_PAISISS: TIntegerField;
    TBNotasItensNOI_PEDIDOCLIENTE: TStringField;
    TBNotasItensNOI_PEDIDOCLIENTEITEM: TIntegerField;
    TBNotasItensNOI_PESO: TFMTBCDField;
    TBNotasItensNOI_PESOTOTAL: TFMTBCDField;
    TBNotasItensNOI_PRECOCUSTO: TFMTBCDField;
    TBNotasItensNOI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBNotasItensNOI_PROCESSOISS: TStringField;
    TBNotasItensNOI_PRODUTO: TIntegerField;
    TBNotasItensNOI_PRODUTOREAL: TIntegerField;
    TBNotasItensNOI_QUANTIDADE: TFMTBCDField;
    TBNotasItensNOI_QUANTIDADETROCA: TFMTBCDField;
    TBNotasItensNOI_SEQUENCIA: TIntegerField;
    TBNotasItensNOI_SERVICOISS: TStringField;
    TBNotasItensNOI_SOMACOFINSST: TStringField;
    TBNotasItensNOI_SOMAPISST: TStringField;
    TBNotasItensNOI_TIPO: TStringField;
    TBNotasItensNOI_TIPOISS: TStringField;
    TBNotasItensNOI_UNIDADE: TStringField;
    TBNotasItensNOI_VALORACESSORIAS: TFMTBCDField;
    TBNotasItensNOI_VALORADUANA: TFMTBCDField;
    TBNotasItensNOI_VALORCOFINS: TFMTBCDField;
    TBNotasItensNOI_VALORCOFINSST: TFMTBCDField;
    TBNotasItensNOI_VALORCOMISSAO: TFMTBCDField;
    TBNotasItensNOI_VALORFCP: TFMTBCDField;
    TBNotasItensNOI_VALORFCPST: TFMTBCDField;
    TBNotasItensNOI_VALORFRETE: TFMTBCDField;
    TBNotasItensNOI_VALORICMS: TFMTBCDField;
    TBNotasItensNOI_VALORICMSCREDSN: TFMTBCDField;
    TBNotasItensNOI_VALORICMSDESONERADO: TFMTBCDField;
    TBNotasItensNOI_VALORICMSST: TFMTBCDField;
    TBNotasItensNOI_VALORICMSSTRET: TFMTBCDField;
    TBNotasItensNOI_VALORICMSSUBSTITUTO: TFMTBCDField;
    TBNotasItensNOI_VALORICMSUFDEST: TFMTBCDField;
    TBNotasItensNOI_VALORICMSUFREMET: TFMTBCDField;
    TBNotasItensNOI_VALORII: TFMTBCDField;
    TBNotasItensNOI_VALORIOF: TFMTBCDField;
    TBNotasItensNOI_VALORIPI: TFMTBCDField;
    TBNotasItensNOI_VALORISS: TFMTBCDField;
    TBNotasItensNOI_VALORISSDEDUCAO: TFMTBCDField;
    TBNotasItensNOI_VALORISSDESCCOND: TFMTBCDField;
    TBNotasItensNOI_VALORISSDESCINCOND: TFMTBCDField;
    TBNotasItensNOI_VALORISSOUTROS: TFMTBCDField;
    TBNotasItensNOI_VALORISSRETENCAO: TFMTBCDField;
    TBNotasItensNOI_VALORPIS: TFMTBCDField;
    TBNotasItensNOI_VALORPISST: TFMTBCDField;
    TBNotasItensNOI_VALORSEGURO: TFMTBCDField;
    TBNotasItensNOI_VALORTOTAL: TFMTBCDField;
    TBNotasItensNOI_VALORTOTALBRUTO: TFMTBCDField;
    TBNotasItensNOI_VALORTRIBUTOS: TFMTBCDField;
    TBNotasItensNOI_VALORTRIBUTOSEST: TFMTBCDField;
    TBNotasItensNOI_VALORTRIBUTOSFED: TFMTBCDField;
    TBNotasItensNOI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBNotasItensNOI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBNotasItensNOI_VALORUNIT: TFMTBCDField;
    TBNotasItensPIS_DESCRICAO: TStringField;
    TBNotasItensPIS_DESCRICAO1: TStringField;
    TBNotasItensPRO_CLASSFISCAL: TStringField;
    TBNotasItensPRO_CODIGO: TIntegerField;
    TBNotasItensPRO_CSTICMS: TIntegerField;
    TBNotasItensPRO_NOME: TStringField;
    TBNotasItensPRO_PRECOVENDA: TFMTBCDField;
    TBNotasItensPRO_TIPO: TStringField;
    TBNotasItensPRO_UNIDADE: TStringField;
    TBNotasNAT_CALCULACOMISSAO: TStringField;
    TBNotasNAT_CALCULACREDITOSN: TStringField;
    TBNotasNAT_DESCRICAO: TStringField;
    TBNotasNOT_ALIQICMSCREDSN: TFMTBCDField;
    TBNotasNOT_BAIRRO: TStringField;
    TBNotasNOT_BAIXADATA: TDateField;
    TBNotasNOT_BAIXAPOR: TStringField;
    TBNotasNOT_BASECOFINS: TFMTBCDField;
    TBNotasNOT_BASECOFINSST: TFMTBCDField;
    TBNotasNOT_BASEICMS: TFMTBCDField;
    TBNotasNOT_BASEICMSST: TFMTBCDField;
    TBNotasNOT_BASEII: TFMTBCDField;
    TBNotasNOT_BASEIPI: TFMTBCDField;
    TBNotasNOT_BASEISS: TFMTBCDField;
    TBNotasNOT_BASEPIS: TFMTBCDField;
    TBNotasNOT_BASEPISST: TFMTBCDField;
    TBNotasNOT_CEP: TStringField;
    TBNotasNOT_CFOP: TIntegerField;
    TBNotasNOT_CFOPDESC: TStringField;
    TBNotasNOT_CIDADE: TStringField;
    TBNotasNOT_CIDADECODIGO: TIntegerField;
    TBNotasNOT_CLIENTE: TIntegerField;
    TBNotasNOT_CNPJ: TStringField;
    TBNotasNOT_CODIGO: TIntegerField;
    TBNotasNOT_COMISSAO: TFMTBCDField;
    TBNotasNOT_COMISSAOPOR: TStringField;
    TBNotasNOT_COMPLEMENTO: TStringField;
    TBNotasNOT_CONDICAO: TIntegerField;
    TBNotasNOT_CONDICAOMEMO: TMemoField;
    TBNotasNOT_CONTATO: TStringField;
    TBNotasNOT_CPF: TStringField;
    TBNotasNOT_CUSTOTOTAL: TFMTBCDField;
    TBNotasNOT_DESCPORC: TFMTBCDField;
    TBNotasNOT_DESCPORCCLIENTE: TFMTBCDField;
    TBNotasNOT_DESCPORCCONDICAO: TFMTBCDField;
    TBNotasNOT_DESCVALOR: TFMTBCDField;
    TBNotasNOT_DESTACARIMPOSTOS: TStringField;
    TBNotasNOT_DIAPREFERENCIAL: TIntegerField;
    TBNotasNOT_DTATUALIZACAO: TDateField;
    TBNotasNOT_DTCADASTRO: TDateField;
    TBNotasNOT_DTEMISSAO: TDateField;
    TBNotasNOT_DTPRESTSERVICO: TDateField;
    TBNotasNOT_DTSAIDA: TDateField;
    TBNotasNOT_ENDERECO: TStringField;
    TBNotasNOT_ENTRADASAIDA: TStringField;
    TBNotasNOT_ESPECIE: TStringField;
    TBNotasNOT_ESTADO: TStringField;
    TBNotasNOT_ESTADOCODIGO: TIntegerField;
    TBNotasNOT_EXLOCAL: TStringField;
    TBNotasNOT_EXPEDIDOPOR: TIntegerField;
    TBNotasNOT_EXUFSAIDA: TStringField;
    TBNotasNOT_FONE1: TStringField;
    TBNotasNOT_FORMAPAGTO: TStringField;
    TBNotasNOT_FRETE: TStringField;
    TBNotasNOT_HRATUALIZACAO: TTimeField;
    TBNotasNOT_HRCADASTRO: TTimeField;
    TBNotasNOT_IDESTRANGEIRO: TStringField;
    TBNotasNOT_IE: TStringField;
    TBNotasNOT_INFOADICFISCO: TMemoField;
    TBNotasNOT_INFOCOMPLEMENTAR: TMemoField;
    TBNotasNOT_LACRES: TStringField;
    TBNotasNOT_LUCROPORC: TFMTBCDField;
    TBNotasNOT_LUCROVALOR: TFMTBCDField;
    TBNotasNOT_MARCA: TStringField;
    TBNotasNOT_MOVIMENTAESTOQUE: TStringField;
    TBNotasNOT_MOVIMENTAFINANCEIRO: TStringField;
    TBNotasNOT_NOME: TStringField;
    TBNotasNOT_NUMERO: TStringField;
    TBNotasNOT_OBSERVACOES: TMemoField;
    TBNotasNOT_PAIS: TStringField;
    TBNotasNOT_PAISCODIGO: TIntegerField;
    TBNotasNOT_PEDIDOCLIENTE: TStringField;
    TBNotasNOT_PESOBRUTO: TFMTBCDField;
    TBNotasNOT_PESOLIQ: TFMTBCDField;
    TBNotasNOT_REBOQUEPLACA: TStringField;
    TBNotasNOT_REBOQUEPLACAUF: TStringField;
    TBNotasNOT_REBOQUERNTC: TStringField;
    TBNotasNOT_RG: TStringField;
    TBNotasNOT_SEQUENCIAITEM: TIntegerField;
    TBNotasNOT_STATUS: TStringField;
    TBNotasNOT_SUFRAMA: TStringField;
    TBNotasNOT_TABELAPRECO: TStringField;
    TBNotasNOT_TIPOATENDIMENTO: TStringField;
    TBNotasNOT_TIPOCONSUMIDOR: TStringField;
    TBNotasNOT_TIPOOPERACAO: TStringField;
    TBNotasNOT_TOTALADUANA: TFMTBCDField;
    TBNotasNOT_TOTALBRUTO: TFMTBCDField;
    TBNotasNOT_TOTALCOFINS: TFMTBCDField;
    TBNotasNOT_TOTALCOFINSST: TFMTBCDField;
    TBNotasNOT_TOTALCOMISSAO: TFMTBCDField;
    TBNotasNOT_TOTALFCP: TFMTBCDField;
    TBNotasNOT_TOTALFCPST: TFMTBCDField;
    TBNotasNOT_TOTALICMS: TFMTBCDField;
    TBNotasNOT_TOTALICMSCREDSN: TFMTBCDField;
    TBNotasNOT_TOTALICMSST: TFMTBCDField;
    TBNotasNOT_TOTALICMSUFDEST: TFMTBCDField;
    TBNotasNOT_TOTALICMSUFREMET: TFMTBCDField;
    TBNotasNOT_TOTALII: TFMTBCDField;
    TBNotasNOT_TOTALIOF: TFMTBCDField;
    TBNotasNOT_TOTALIPI: TFMTBCDField;
    TBNotasNOT_TOTALISS: TFMTBCDField;
    TBNotasNOT_TOTALISSDEDUCAO: TFMTBCDField;
    TBNotasNOT_TOTALISSDESCCOND: TFMTBCDField;
    TBNotasNOT_TOTALISSDESCINCOND: TFMTBCDField;
    TBNotasNOT_TOTALISSOUTROS: TFMTBCDField;
    TBNotasNOT_TOTALISSRETENCAO: TFMTBCDField;
    TBNotasNOT_TOTALITENS: TFMTBCDField;
    TBNotasNOT_TOTALPIS: TFMTBCDField;
    TBNotasNOT_TOTALPISST: TFMTBCDField;
    TBNotasNOT_TOTALPRODUTOS: TFMTBCDField;
    TBNotasNOT_TOTALSERVICOS: TFMTBCDField;
    TBNotasNOT_TOTALTRIBUTOS: TFMTBCDField;
    TBNotasNOT_TOTALTRIBUTOSEST: TFMTBCDField;
    TBNotasNOT_TOTALTRIBUTOSFED: TFMTBCDField;
    TBNotasNOT_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBNotasNOT_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBNotasNOT_TRANSPCIDADE: TStringField;
    TBNotasNOT_TRANSPCNPJ: TStringField;
    TBNotasNOT_TRANSPCPF: TStringField;
    TBNotasNOT_TRANSPEMAIL: TStringField;
    TBNotasNOT_TRANSPENDERECO: TStringField;
    TBNotasNOT_TRANSPESTADO: TStringField;
    TBNotasNOT_TRANSPFONE: TStringField;
    TBNotasNOT_TRANSPIE: TStringField;
    TBNotasNOT_TRANSPNOME: TStringField;
    TBNotasNOT_TRANSPORTADORA: TIntegerField;
    TBNotasNOT_USUARIO: TStringField;
    TBNotasNOT_VALORDESPACES: TFMTBCDField;
    TBNotasNOT_VALORFRETE: TFMTBCDField;
    TBNotasNOT_VALORSEGURO: TFMTBCDField;
    TBNotasNOT_VALORTOTAL: TFMTBCDField;
    TBNotasNOT_VEICULOPLACA: TStringField;
    TBNotasNOT_VEICULOPLACAUF: TStringField;
    TBNotasNOT_VEICULORNTC: TStringField;
    TBNotasNOT_VENDA: TIntegerField;
    TBNotasNOT_VENDEDOR: TIntegerField;
    TBNotasNOT_VOLUMES: TIntegerField;
    TBNotasNOT_VOLUMESNUM: TStringField;
    TBNotasVEN_NOME: TStringField;
    TBNotasVEN_NOME1: TStringField;
    TBPagar: TFDQuery;
    TBPagarCON_NOME: TStringField;
    TBPagarCON_SALDO: TFMTBCDField;
    TBPagarDES_DESCRICAO: TStringField;
    TBPagarFOR_NOME: TStringField;
    TBPagarPAG_BAIXADOPOR: TStringField;
    TBPagarPAG_CODIGO: TIntegerField;
    TBPagarPAG_CONTA: TIntegerField;
    TBPagarPAG_DESCPORC: TFMTBCDField;
    TBPagarPAG_DESCRICAO: TStringField;
    TBPagarPAG_DESCVALOR: TFMTBCDField;
    TBPagarPAG_DESPESA: TIntegerField;
    TBPagarPAG_DIASATRASO: TIntegerField;
    TBPagarPAG_DIASPRAZO: TIntegerField;
    TBPagarPAG_DTATUALIZACAO: TDateField;
    TBPagarPAG_DTCADASTRO: TDateField;
    TBPagarPAG_DTEMISSAO: TDateField;
    TBPagarPAG_DTJUROSAPOS: TDateField;
    TBPagarPAG_DTPAGAMENTO: TDateField;
    TBPagarPAG_DTVENCIMENTO: TDateField;
    TBPagarPAG_FORNECEDOR: TIntegerField;
    TBPagarPAG_HRATUALIZACAO: TTimeField;
    TBPagarPAG_HRCADASTRO: TTimeField;
    TBPagarPAG_JUROSPAGO: TFMTBCDField;
    TBPagarPAG_MULTAPAGO: TFMTBCDField;
    TBPagarPAG_NOVOCODIGO: TIntegerField;
    TBPagarPAG_NUMDOCTO: TStringField;
    TBPagarPAG_OBSERVACOES: TMemoField;
    TBPagarPAG_PARCELANUM: TIntegerField;
    TBPagarPAG_PARCELAQTDE: TIntegerField;
    TBPagarPAG_PORCJUROS: TFMTBCDField;
    TBPagarPAG_STATUS: TStringField;
    TBPagarPAG_TIPOBAIXA: TStringField;
    TBPagarPAG_TIPODOCTO: TStringField;
    TBPagarPAG_USUARIO: TStringField;
    TBPagarPAG_VALOR: TFMTBCDField;
    TBPagarPAG_VALORJUROS: TFMTBCDField;
    TBPagarPAG_VALORMULTA: TFMTBCDField;
    TBPagarPAG_VALORORIGINAL: TFMTBCDField;
    TBPagarPAG_VALORPAGO: TFMTBCDField;
    TBPaises: TFDQuery;
    TBPaisesPAI_CODIGO: TIntegerField;
    TBPaisesPAI_NOME: TStringField;
    TBPaisesPAI_SIGLA: TStringField;
    TBParametros: TFDQuery;
    TBParametrosPAR_ABRIRLOCPRODUTOS: TStringField;
    TBParametrosPAR_ACRESCIMOPOR: TStringField;
    TBParametrosPAR_ACRESCIMOPORC: TFMTBCDField;
    TBParametrosPAR_ACRESCIMOVALOR: TFMTBCDField;
    TBParametrosPAR_ALMOXARIFADOPADRAO: TIntegerField;
    TBParametrosPAR_APIBRASILDEVICETOKEN: TStringField;
    TBParametrosPAR_APIBRASILLOGIN: TStringField;
    TBParametrosPAR_APIBRASILPLACA: TStringField;
    TBParametrosPAR_APIBRASILSENHA: TStringField;
    TBParametrosPAR_ARQUIVOCERTIFICADO: TStringField;
    TBParametrosPAR_ATUALIZADOR: TStringField;
    TBParametrosPAR_AULASFERIADOS: TStringField;
    TBParametrosPAR_BAIRROPADRAO: TStringField;
    TBParametrosPAR_BLOQUEARCLIENTEDIAS: TIntegerField;
    TBParametrosPAR_BOLETOPADRAO: TStringField;
    TBParametrosPAR_BOLETOSEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_BOLETOSZAPASSUNTO: TIntegerField;
    TBParametrosPAR_CALCULARPESOLIQUIDO: TStringField;
    TBParametrosPAR_CALCULARPONTUACAO: TStringField;
    TBParametrosPAR_CFOPFORAPADRAO: TIntegerField;
    TBParametrosPAR_CFOPPADRAO: TIntegerField;
    TBParametrosPAR_CFOPPRODUTO: TStringField;
    TBParametrosPAR_CFOPSERVICOPADRAO: TIntegerField;
    TBParametrosPAR_CHATHABILITADO: TStringField;
    TBParametrosPAR_CHAVECNPJA: TStringField;
    TBParametrosPAR_CHECARSPED: TStringField;
    TBParametrosPAR_CIDADEPADRAO: TStringField;
    TBParametrosPAR_CLASSFISCALPADRAO: TIntegerField;
    TBParametrosPAR_CLI_ATIVIDADE: TIntegerField;
    TBParametrosPAR_CLI_BLOQUEARVENDA: TStringField;
    TBParametrosPAR_CLI_MAILING: TIntegerField;
    TBParametrosPAR_CLI_TELEVENDA: TIntegerField;
    TBParametrosPAR_CLI_VENDEDOR: TIntegerField;
    TBParametrosPAR_CLIENTESANEXOSEMAIL: TIntegerField;
    TBParametrosPAR_CLIENTESTODOS: TStringField;
    TBParametrosPAR_CNPJCERTIFICADO: TStringField;
    TBParametrosPAR_COBRARDESCONTO: TStringField;
    TBParametrosPAR_CODIGO: TIntegerField;
    TBParametrosPAR_COMANDASCLIENTE: TIntegerField;
    TBParametrosPAR_COMANDASLF: TIntegerField;
    TBParametrosPAR_COMANDASLI: TIntegerField;
    TBParametrosPAR_COMANDASQL: TIntegerField;
    TBParametrosPAR_COMANDASRP: TStringField;
    TBParametrosPAR_COMISSAOPOR: TStringField;
    TBParametrosPAR_COMPRAEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_COMPRASEMAILBCC: TStringField;
    TBParametrosPAR_CONCEITOAFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOAINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOAMINUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOAMINUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOAPLUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOAPLUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBMINUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBMINUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBPLUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOBPLUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCMINUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCMINUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCPLUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOCPLUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODMINUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODMINUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODPLUSFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITODPLUSINICIAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOEFINAL: TFMTBCDField;
    TBParametrosPAR_CONCEITOEINICIAL: TFMTBCDField;
    TBParametrosPAR_CONDICAOPADRAO: TIntegerField;
    TBParametrosPAR_CONSULTASANEXOSEMAIL: TIntegerField;
    TBParametrosPAR_CONTALOCALPADRAO: TIntegerField;
    TBParametrosPAR_CONTAPADRAO: TIntegerField;
    TBParametrosPAR_CORICONE: TStringField;
    TBParametrosPAR_CORTEPAPEL: TStringField;
    TBParametrosPAR_COTACAOPONTOS: TFMTBCDField;
    TBParametrosPAR_CREDITOICMSSN: TFMTBCDField;
    TBParametrosPAR_CSRT: TStringField;
    TBParametrosPAR_CSRTID: TIntegerField;
    TBParametrosPAR_CSTCOFINSPADRAO: TIntegerField;
    TBParametrosPAR_CSTICMSPADRAO: TIntegerField;
    TBParametrosPAR_CSTIPIPADRAO: TIntegerField;
    TBParametrosPAR_CSTPISPADRAO: TIntegerField;
    TBParametrosPAR_CTE_CSTICMS: TIntegerField;
    TBParametrosPAR_CTE_VEICULO: TIntegerField;
    TBParametrosPAR_CTEALIQTRIBUTOS: TFMTBCDField;
    TBParametrosPAR_CTECCEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_CTEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_CTEEMAILSISTEMA: TStringField;
    TBParametrosPAR_CTEMODELO: TIntegerField;
    TBParametrosPAR_CTESERIE: TIntegerField;
    TBParametrosPAR_CTEVISUALIZARDACTE: TStringField;
    TBParametrosPAR_DDDPADRAO: TStringField;
    TBParametrosPAR_DESCMAXPADRAO: TFMTBCDField;
    TBParametrosPAR_DESCONTOPORCLIENTE: TStringField;
    TBParametrosPAR_DESPESAPADRAO: TIntegerField;
    TBParametrosPAR_DIAPREFERENCIAL01: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL02: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL03: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL04: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL05: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL06: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL07: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL08: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL09: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL10: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL11: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL12: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL13: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL14: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL15: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL16: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL17: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL18: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL19: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL20: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL21: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL22: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL23: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL24: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL25: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL26: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL27: TStringField;
    TBParametrosPAR_DIAPREFERENCIAL28: TStringField;
    TBParametrosPAR_ENQUADRAMENTOIPI: TIntegerField;
    TBParametrosPAR_ESPECIEPADRAO: TStringField;
    TBParametrosPAR_ESTADOPADRAO: TStringField;
    TBParametrosPAR_ESTOQUEESPADRAO: TStringField;
    TBParametrosPAR_ETIQUETACONFERENCIA: TIntegerField;
    TBParametrosPAR_ETIQUETAEMBALAGEM: TIntegerField;
    TBParametrosPAR_ETIQUETAMODELO1: TIntegerField;
    TBParametrosPAR_EXIBIRTELARESUMO: TStringField;
    TBParametrosPAR_EXPEDIDOPORVENDEDOR: TStringField;
    TBParametrosPAR_EXPEDIDOR: TIntegerField;
    TBParametrosPAR_FAMILIACURSOS: TIntegerField;
    TBParametrosPAR_FAMILIAMATERIAIS: TIntegerField;
    TBParametrosPAR_FORNECEDORESANEXOSEMAIL: TIntegerField;
    TBParametrosPAR_FRETEPORCONTA: TStringField;
    TBParametrosPAR_FRETEPRIMEIRAPARCELA: TStringField;
    TBParametrosPAR_FUSOHORARIO: TStringField;
    TBParametrosPAR_GNRECONVENIO: TStringField;
    TBParametrosPAR_GNRERECEITA: TStringField;
    TBParametrosPAR_GNRESCHEMAS: TStringField;
    TBParametrosPAR_HIGHHEIGHT: TIntegerField;
    TBParametrosPAR_HIGHWIDTH: TIntegerField;
    TBParametrosPAR_HORAAULA: TStringField;
    TBParametrosPAR_HRCOMERCIALFIM: TTimeField;
    TBParametrosPAR_HRCOMERCIALINICIO: TTimeField;
    TBParametrosPAR_IDENTIFICACAOSISTEMA: TStringField;
    TBParametrosPAR_IMPRIMIRCANHOTOPEDIDO: TStringField;
    TBParametrosPAR_IMPRIMIRCONDICAO: TStringField;
    TBParametrosPAR_IMPRIMIRLOGOTIPO: TStringField;
    TBParametrosPAR_IMPRIMIRNOMEFANTASIA: TStringField;
    TBParametrosPAR_IMPRIMIRNUMPEDIDO: TStringField;
    TBParametrosPAR_IMPRIMIRRECEBER: TStringField;
    TBParametrosPAR_IMPRIMIRSALDOAC: TStringField;
    TBParametrosPAR_INFOCOBRANCAXML: TStringField;
    TBParametrosPAR_INTERMEDIADOR: TStringField;
    TBParametrosPAR_INTERMEDIADORCAD: TStringField;
    TBParametrosPAR_INTERMEDIADORCNPJ: TStringField;
    TBParametrosPAR_JURIDICOSITE1: TStringField;
    TBParametrosPAR_JURIDICOSITE2: TStringField;
    TBParametrosPAR_JURIDICOSITE3: TStringField;
    TBParametrosPAR_JUROSMENSAL: TFMTBCDField;
    TBParametrosPAR_LIBCRYPT: TStringField;
    TBParametrosPAR_LIBHTTP: TStringField;
    TBParametrosPAR_LIBSSL: TStringField;
    TBParametrosPAR_LIBXMLSIGN: TStringField;
    TBParametrosPAR_LICENCADLL: TStringField;
    TBParametrosPAR_LICENCADLLCTE: TStringField;
    TBParametrosPAR_LICENCADLLMDFE: TStringField;
    TBParametrosPAR_LIMITECREDITO: TFMTBCDField;
    TBParametrosPAR_LINHASFINALRECIBO: TIntegerField;
    TBParametrosPAR_LINHASINICIORECIBO: TIntegerField;
    TBParametrosPAR_LOCACOESDIAS: TIntegerField;
    TBParametrosPAR_LOCACOESHORALIMITE: TStringField;
    TBParametrosPAR_LOCALANEXOSCLIENTES: TStringField;
    TBParametrosPAR_LOCALANEXOSCONSULTAS: TStringField;
    TBParametrosPAR_LOCALANEXOSFORNECEDORES: TStringField;
    TBParametrosPAR_LOCALANEXOSPROCESSOS: TStringField;
    TBParametrosPAR_LOCALANEXOSPRODUTOS: TStringField;
    TBParametrosPAR_LOCALANEXOSSEGUROS: TStringField;
    TBParametrosPAR_LOCALANEXOSVENDEDORES: TStringField;
    TBParametrosPAR_LOCALATUALIZACOES: TStringField;
    TBParametrosPAR_LOCALDENTES: TStringField;
    TBParametrosPAR_LOCALESTUDAPADRAO: TIntegerField;
    TBParametrosPAR_LOCALFOTOSIMOVEIS: TStringField;
    TBParametrosPAR_LOCALFOTOSPRODUTOS: TStringField;
    TBParametrosPAR_LOCALIMAGENSCONSULTAS: TStringField;
    TBParametrosPAR_LOCALMODELOSDOC: TStringField;
    TBParametrosPAR_LOCALPADRAO: TIntegerField;
    TBParametrosPAR_LOCALPRONTUARIOS: TStringField;
    TBParametrosPAR_LOCPRODUTOSPRECOS: TStringField;
    TBParametrosPAR_LOWHEIGHT: TIntegerField;
    TBParametrosPAR_LOWWIDTH: TIntegerField;
    TBParametrosPAR_MALCOLMREQ: TStringField;
    TBParametrosPAR_MALCOLMRESP: TStringField;
    TBParametrosPAR_MARCAPADRAO: TStringField;
    TBParametrosPAR_MARGEMPADRAO: TFMTBCDField;
    TBParametrosPAR_MATRICULASEMMATERIAL: TStringField;
    TBParametrosPAR_MDFEMODELO: TIntegerField;
    TBParametrosPAR_MDFESERIE: TIntegerField;
    TBParametrosPAR_MULTAPORC: TFMTBCDField;
    TBParametrosPAR_MULTATIPO: TStringField;
    TBParametrosPAR_NFCECONTINGENCIADATA: TDateField;
    TBParametrosPAR_NFCECONTINGENCIAHORA: TTimeField;
    TBParametrosPAR_NFCECONTINGENCIAJUST: TStringField;
    TBParametrosPAR_NFCECSC: TStringField;
    TBParametrosPAR_NFCECSCHOMOLOGACAO: TStringField;
    TBParametrosPAR_NFCECSCID: TStringField;
    TBParametrosPAR_NFCECSCIDHOMOLOGACAO: TStringField;
    TBParametrosPAR_NFCEIMPRIMIR: TStringField;
    TBParametrosPAR_NFCEIMPRIMIRLOGO: TStringField;
    TBParametrosPAR_NFCEMODELO: TIntegerField;
    TBParametrosPAR_NFCESCHEMAS: TStringField;
    TBParametrosPAR_NFCESERIE: TIntegerField;
    TBParametrosPAR_NFCETEMPOMSG: TIntegerField;
    TBParametrosPAR_NFCETIMEOUT: TIntegerField;
    TBParametrosPAR_NFCETIPODANFCE: TStringField;
    TBParametrosPAR_NFCETIPOEMISSAO: TStringField;
    TBParametrosPAR_NFECCEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_NFECONTINGENCIADATA: TDateField;
    TBParametrosPAR_NFECONTINGENCIAHORA: TTimeField;
    TBParametrosPAR_NFECONTINGENCIAJUST: TStringField;
    TBParametrosPAR_NFEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_NFEEMAILAUTOMATICO: TStringField;
    TBParametrosPAR_NFEEMAILBCC: TStringField;
    TBParametrosPAR_NFEEMAILTRANSP: TStringField;
    TBParametrosPAR_NFEMODELO: TIntegerField;
    TBParametrosPAR_NFESERIE: TIntegerField;
    TBParametrosPAR_NFETIPOATENDIMENTO: TStringField;
    TBParametrosPAR_NFETIPOCONSUMIDOR: TStringField;
    TBParametrosPAR_NFETIPOEMISSAO: TStringField;
    TBParametrosPAR_NFEVISUALIZARDANFE: TStringField;
    TBParametrosPAR_NFEZAPASSUNTO: TIntegerField;
    TBParametrosPAR_NFSEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_NFSEEMAILAUTOMATICO: TStringField;
    TBParametrosPAR_NFSEINFOADICIONAIS: TMemoField;
    TBParametrosPAR_NFSEPROVEDOR: TStringField;
    TBParametrosPAR_NFSERETENCAO: TStringField;
    TBParametrosPAR_NFSERETENCAORESP: TStringField;
    TBParametrosPAR_NFSESCHEMAS: TStringField;
    TBParametrosPAR_NFSESERIE: TStringField;
    TBParametrosPAR_NFSESERVICO: TStringField;
    TBParametrosPAR_NFSETIMEOUT: TIntegerField;
    TBParametrosPAR_NFSEVERSAO: TStringField;
    TBParametrosPAR_NFSEZAPASSUNTO: TIntegerField;
    TBParametrosPAR_NOMECERTIFICADO: TMemoField;
    TBParametrosPAR_NOTASLF: TIntegerField;
    TBParametrosPAR_NOTASLI: TIntegerField;
    TBParametrosPAR_NOTASQL: TIntegerField;
    TBParametrosPAR_NOTASQLOBS: TIntegerField;
    TBParametrosPAR_PASTAHIGH: TStringField;
    TBParametrosPAR_PASTALOW: TStringField;
    TBParametrosPAR_PREVISUALIZARVENDA: TStringField;
    TBParametrosPAR_PRODUCAODTPREVISAO: TIntegerField;
    TBParametrosPAR_PRODUTOCODIGOLIVRE: TStringField;
    TBParametrosPAR_PRODUTOMAODEOBRA: TIntegerField;
    TBParametrosPAR_PRODUTOSANEXOSEMAIL: TIntegerField;
    TBParametrosPAR_PRODUTOSCODIGOFAB: TStringField;
    TBParametrosPAR_PRODUTOSLF: TIntegerField;
    TBParametrosPAR_PRODUTOSLI: TIntegerField;
    TBParametrosPAR_PRODUTOSQL: TIntegerField;
    TBParametrosPAR_PROFAMILIA: TIntegerField;
    TBParametrosPAR_PROFORNECEDOR: TIntegerField;
    TBParametrosPAR_PROGRUPO: TIntegerField;
    TBParametrosPAR_PROMARCA: TIntegerField;
    TBParametrosPAR_PROMISSORIASCODIGO: TStringField;
    TBParametrosPAR_PROUNIDADE: TStringField;
    TBParametrosPAR_PROXY: TStringField;
    TBParametrosPAR_PROXYENDERECO: TStringField;
    TBParametrosPAR_PROXYPASSWORD: TStringField;
    TBParametrosPAR_PROXYPORTA: TIntegerField;
    TBParametrosPAR_PROXYUSER: TStringField;
    TBParametrosPAR_QTDENIVEISCOMPOSTO: TIntegerField;
    TBParametrosPAR_RECEITAPADRAO: TIntegerField;
    TBParametrosPAR_RECIBOSEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_REE_DTJUROSAPOS: TIntegerField;
    TBParametrosPAR_REFORMATRIBUTARIA: TStringField;
    TBParametrosPAR_REGRAFISCALPADRAO: TIntegerField;
    TBParametrosPAR_REPOSITORIOBOLETOS: TStringField;
    TBParametrosPAR_REPOSITORIOCTE: TStringField;
    TBParametrosPAR_REPOSITORIOMDFE: TStringField;
    TBParametrosPAR_REPOSITORIONFCE: TStringField;
    TBParametrosPAR_REPOSITORIONFE: TStringField;
    TBParametrosPAR_REPOSITORIONFSE: TStringField;
    TBParametrosPAR_RNTRC: TStringField;
    TBParametrosPAR_SEGUROSANEXOSEMAIL: TIntegerField;
    TBParametrosPAR_SENHACERTIFICADO: TStringField;
    TBParametrosPAR_SERIALCERTIFICADO: TStringField;
    TBParametrosPAR_SERVICOSCLIENTEDIFERENTE: TStringField;
    TBParametrosPAR_SERVICOSDTPREVISAO: TIntegerField;
    TBParametrosPAR_SERVICOSEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_SERVICOSLF: TIntegerField;
    TBParametrosPAR_SERVICOSLI: TIntegerField;
    TBParametrosPAR_SERVICOSORCLF: TIntegerField;
    TBParametrosPAR_SERVICOSORCLI: TIntegerField;
    TBParametrosPAR_SERVICOSORCQL: TIntegerField;
    TBParametrosPAR_SERVICOSORCRP: TStringField;
    TBParametrosPAR_SERVICOSPRINTPADRAO: TStringField;
    TBParametrosPAR_SERVICOSPV: TStringField;
    TBParametrosPAR_SERVICOSRPA: TStringField;
    TBParametrosPAR_SERVICOSRPF: TStringField;
    TBParametrosPAR_SERVICOSSERIEMASK: TStringField;
    TBParametrosPAR_SERVICOSTIMBRADA: TStringField;
    TBParametrosPAR_SIGLAUF: TStringField;
    TBParametrosPAR_SIGLAUFCTE: TStringField;
    TBParametrosPAR_SIGLAUFMDFE: TStringField;
    TBParametrosPAR_SIGLAWS: TStringField;
    TBParametrosPAR_SIGLAWSCTE: TStringField;
    TBParametrosPAR_SIGLAWSGNRE: TStringField;
    TBParametrosPAR_SIGLAWSMDFE: TStringField;
    TBParametrosPAR_STPRIMEIRAPARCELA: TStringField;
    TBParametrosPAR_TABELAPRECO: TStringField;
    TBParametrosPAR_TAXAPADRAO: TIntegerField;
    TBParametrosPAR_TELEVENDAPROXCONTATO: TIntegerField;
    TBParametrosPAR_TEMPERATURA1: TIntegerField;
    TBParametrosPAR_TEMPERATURA2: TIntegerField;
    TBParametrosPAR_TEMPERATURA3: TIntegerField;
    TBParametrosPAR_TEMPERATURA4: TIntegerField;
    TBParametrosPAR_TEMPERATURA5: TIntegerField;
    TBParametrosPAR_TEMPOPADRAO: TIntegerField;
    TBParametrosPAR_TIPOAMBIENTE: TStringField;
    TBParametrosPAR_TIPOAMBIENTECTE: TStringField;
    TBParametrosPAR_TIPOAMBIENTEGNRE: TStringField;
    TBParametrosPAR_TIPOAMBIENTEMDFE: TStringField;
    TBParametrosPAR_TIPOAMBIENTENFCE: TStringField;
    TBParametrosPAR_TIPOAMBIENTENFSE: TStringField;
    TBParametrosPAR_TIPOCODIGOEXPRESSO: TStringField;
    TBParametrosPAR_TRANSPORTADORAPADRAO: TIntegerField;
    TBParametrosPAR_USARCODIGOFAB: TStringField;
    TBParametrosPAR_USARMARKUP: TStringField;
    TBParametrosPAR_VALFINALCERTIFICADO: TDateField;
    TBParametrosPAR_VALINICIALCERTIFICADO: TDateField;
    TBParametrosPAR_VALORBOLETO: TFMTBCDField;
    TBParametrosPAR_VALORMULTA: TFMTBCDField;
    TBParametrosPAR_VEICULOSPORCLUCRO: TIntegerField;
    TBParametrosPAR_VENDAEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_VENDASLF: TIntegerField;
    TBParametrosPAR_VENDASLF2: TIntegerField;
    TBParametrosPAR_VENDASLI: TIntegerField;
    TBParametrosPAR_VENDASQL: TIntegerField;
    TBParametrosPAR_VENDASQL2: TIntegerField;
    TBParametrosPAR_VENDASRP: TStringField;
    TBParametrosPAR_VENDAZAPASSUNTO: TIntegerField;
    TBParametrosPAR_VENDEESTOQUEZERO: TStringField;
    TBParametrosPAR_VENDERCOMPOSTO: TStringField;
    TBParametrosPAR_VERSAOXML: TStringField;
    TBParametrosPAR_VERSAOXMLCTE: TStringField;
    TBParametrosPAR_VERSAOXMLMDFE: TStringField;
    TBParametrosPAR_ZAPBASE: TStringField;
    TBParametrosPAR_ZAPSENHA: TStringField;
    TBParametrosPAR_ZAPSERVIDOR: TStringField;
    TBParametrosPAR_ZAPUSUARIO: TStringField;
    TBPiscofins: TFDQuery;
    TBPiscofinsPIS_CODIGO: TIntegerField;
    TBPiscofinsPIS_DESCRICAO: TStringField;
    TBPiscofinsPIS_DTATUALIZACAO: TDateField;
    TBPiscofinsPIS_DTCADASTRO: TDateField;
    TBPiscofinsPIS_HRATUALIZACAO: TTimeField;
    TBPiscofinsPIS_HRCADASTRO: TTimeField;
    TBPiscofinsPIS_USUARIO: TStringField;
    TBProducao: TFDQuery;
    TBProducaoCLI_BAIRRO: TStringField;
    TBProducaoCLI_CEP: TStringField;
    TBProducaoCLI_CIDADE: TStringField;
    TBProducaoCLI_ENDERECO: TStringField;
    TBProducaoCLI_ESTADO: TStringField;
    TBProducaoCLI_FONE1: TStringField;
    TBProducaoCLI_NOME: TStringField;
    TBProducaoCLI_NUMERO: TStringField;
    TBProducaoItens: TFDQuery;
    TBProducaoItensComp: TFDQuery;
    TBProducaoItensCompPDC_BAIXAR: TStringField;
    TBProducaoItensCompPDC_CODIGO: TIntegerField;
    TBProducaoItensCompPDC_COMPOSTO: TStringField;
    TBProducaoItensCompPDC_COR: TStringField;
    TBProducaoItensCompPDC_LOTE: TStringField;
    TBProducaoItensCompPDC_ORDEM: TIntegerField;
    TBProducaoItensCompPDC_PRODUCAOITEM: TIntegerField;
    TBProducaoItensCompPDC_PRODUTO: TIntegerField;
    TBProducaoItensCompPDC_QUANTIDADE: TFMTBCDField;
    TBProducaoItensCompPDC_QUANTIDADEUNITARIA: TFMTBCDField;
    TBProducaoItensCompPRO_ESTOQUEATUAL: TFMTBCDField;
    TBProducaoItensCompPRO_NOME: TStringField;
    TBProducaoItensCompPRO_UNIDADE: TStringField;
    TBProducaoItensPDI_ALMOXARIFADO: TIntegerField;
    TBProducaoItensPDI_CODIGO: TIntegerField;
    TBProducaoItensPDI_PRODUCAO: TIntegerField;
    TBProducaoItensPDI_PRODUTO: TIntegerField;
    TBProducaoItensPDI_QUANTIDADE: TFMTBCDField;
    TBProducaoItensPRO_NOME: TStringField;
    TBProducaoItensPRO_UNIDADE: TStringField;
    TBProducaoPRD_CLIENTE: TIntegerField;
    TBProducaoPRD_CODIGO: TIntegerField;
    TBProducaoPRD_DATABAIXA: TDateField;
    TBProducaoPRD_DTATUALIZACAO: TDateField;
    TBProducaoPRD_DTCADASTRO: TDateField;
    TBProducaoPRD_DTPREVISAO: TDateField;
    TBProducaoPRD_HRATUALIZACAO: TTimeField;
    TBProducaoPRD_HRCADASTRO: TTimeField;
    TBProducaoPRD_LOTECRIADO: TStringField;
    TBProducaoPRD_MPBAIXADA: TStringField;
    TBProducaoPRD_NOTACLIENTE: TIntegerField;
    TBProducaoPRD_OBSERVACOES: TMemoField;
    TBProducaoPRD_STATUS: TStringField;
    TBProducaoPRD_USUARIO: TStringField;
    TBProdutos: TFDQuery;
    TBProdutosPRO_ALIQCOFINS: TFMTBCDField;
    TBProdutosPRO_ALIQCOFINSST: TFMTBCDField;
    TBProdutosPRO_ALIQICMS: TFMTBCDField;
    TBProdutosPRO_ALIQICMSADICST: TFMTBCDField;
    TBProdutosPRO_ALIQICMSRED: TFMTBCDField;
    TBProdutosPRO_ALIQICMSST: TFMTBCDField;
    TBProdutosPRO_ALIQIPI: TFMTBCDField;
    TBProdutosPRO_ALIQISS: TFMTBCDField;
    TBProdutosPRO_ALIQOUTROS: TFMTBCDField;
    TBProdutosPRO_ALIQPIS: TFMTBCDField;
    TBProdutosPRO_ALIQPISST: TFMTBCDField;
    TBProdutosPRO_ALTURA: TIntegerField;
    TBProdutosPRO_ATUALIZAR: TStringField;
    TBProdutosPRO_ATUALIZATABELA: TStringField;
    TBProdutosPRO_BENEFICIO: TStringField;
    TBProdutosPRO_CEST: TStringField;
    TBProdutosPRO_CFOP: TIntegerField;
    TBProdutosPRO_CFOPFORA: TIntegerField;
    TBProdutosPRO_CLASSFISCAL: TStringField;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_CODIGOBARRAS: TStringField;
    TBProdutosPRO_CODIGOFAB: TStringField;
    TBProdutosPRO_COMISSAO: TFMTBCDField;
    TBProdutosPRO_COMPOEBASEICMS: TStringField;
    TBProdutosPRO_COMPOEBASEICMSST: TStringField;
    TBProdutosPRO_COMPOSTO: TStringField;
    TBProdutosPRO_CONVERSAO: TFMTBCDField;
    TBProdutosPRO_CORSABOR: TStringField;
    TBProdutosPRO_CSTCOFINS: TIntegerField;
    TBProdutosPRO_CSTICMS: TIntegerField;
    TBProdutosPRO_CSTIPI: TIntegerField;
    TBProdutosPRO_CSTPIS: TIntegerField;
    TBProdutosPRO_CUBICO: TIntegerField;
    TBProdutosPRO_DESCMAX: TFMTBCDField;
    TBProdutosPRO_DESCRICAO: TMemoField;
    TBProdutosPRO_DTATUALIZACAO: TDateField;
    TBProdutosPRO_DTCADASTRO: TDateField;
    TBProdutosPRO_DTULTCOMPRA: TDateField;
    TBProdutosPRO_DTULTVENDA: TDateField;
    TBProdutosPRO_ENQUADRAMENTOIPI: TIntegerField;
    TBProdutosPRO_ESTOQUEATUAL: TFMTBCDField;
    TBProdutosPRO_ESTOQUEMAX: TFMTBCDField;
    TBProdutosPRO_ESTOQUEMIN: TFMTBCDField;
    TBProdutosPRO_EXCECAO: TIntegerField;
    TBProdutosPRO_FAMILIA: TIntegerField;
    TBProdutosPRO_FCI: TStringField;
    TBProdutosPRO_FORNECEDOR: TIntegerField;
    TBProdutosPRO_HRATUALIZACAO: TTimeField;
    TBProdutosPRO_HRCADASTRO: TTimeField;
    TBProdutosPRO_GENERO: TIntegerField;
    TBProdutosPRO_GRUPO: TIntegerField;
    TBProdutosPRO_ICMSALIQUOTAPOR: TStringField;
    TBProdutosPRO_INCENTIVOISS: TStringField;
    TBProdutosPRO_INDICADORISS: TStringField;
    TBProdutosPRO_INTERNET: TStringField;
    TBProdutosPRO_LARGURA: TIntegerField;
    TBProdutosPRO_LOCALIZACAO: TStringField;
    TBProdutosPRO_MARCA: TIntegerField;
    TBProdutosPRO_MARGEM: TFMTBCDField;
    TBProdutosPRO_MARGEM1: TFMTBCDField;
    TBProdutosPRO_MARGEM2: TFMTBCDField;
    TBProdutosPRO_MARGEM3: TFMTBCDField;
    TBProdutosPRO_MARGEM4: TFMTBCDField;
    TBProdutosPRO_MARGEM5: TFMTBCDField;
    TBProdutosPRO_MARGEM6: TFMTBCDField;
    TBProdutosPRO_MARKUP: TFMTBCDField;
    TBProdutosPRO_MARKUPCODIGO: TIntegerField;
    TBProdutosPRO_MODICMS: TStringField;
    TBProdutosPRO_MODICMSST: TStringField;
    TBProdutosPRO_NBS: TStringField;
    TBProdutosPRO_NOME: TStringField;
    TBProdutosPRO_OBSERVACOES: TMemoField;
    TBProdutosPRO_OFERTA: TStringField;
    TBProdutosPRO_ORIGEM: TStringField;
    TBProdutosPRO_PALAVRASCHAVE: TStringField;
    TBProdutosPRO_PESAVEL: TStringField;
    TBProdutosPRO_PESO: TFMTBCDField;
    TBProdutosPRO_PRECO1: TFMTBCDField;
    TBProdutosPRO_PRECO2: TFMTBCDField;
    TBProdutosPRO_PRECO3: TFMTBCDField;
    TBProdutosPRO_PRECO4: TFMTBCDField;
    TBProdutosPRO_PRECO5: TFMTBCDField;
    TBProdutosPRO_PRECO6: TFMTBCDField;
    TBProdutosPRO_PRECOCUSTO: TFMTBCDField;
    TBProdutosPRO_PRECOCUSTOCOMP: TFMTBCDField;
    TBProdutosPRO_PRECOCUSTOMEDIO: TFMTBCDField;
    TBProdutosPRO_PRECOCUSTOULT: TFMTBCDField;
    TBProdutosPRO_PRECOVENDA: TFMTBCDField;
    TBProdutosPRO_PRECOVENDAMEDIO: TFMTBCDField;
    TBProdutosPRO_PRECOVENDAULT: TFMTBCDField;
    TBProdutosPRO_PRODUCAO: TStringField;
    TBProdutosPRO_PRODUTOREAL: TIntegerField;
    TBProdutosPRO_PROFUNDIDADE: TIntegerField;
    TBProdutosPRO_REGISTROMS: TStringField;
    TBProdutosPRO_REGRAFISCAL: TIntegerField;
    TBProdutosPRO_STATUS: TStringField;
    TBProdutosPRO_SUBSTITUICAOTRIB: TStringField;
    TBProdutosPRO_TABPRECO1: TStringField;
    TBProdutosPRO_TABPRECO2: TStringField;
    TBProdutosPRO_TABPRECO3: TStringField;
    TBProdutosPRO_TABPRECO4: TStringField;
    TBProdutosPRO_TABPRECO5: TStringField;
    TBProdutosPRO_TABPRECO6: TStringField;
    TBProdutosPRO_TAMANHO: TStringField;
    TBProdutosPRO_TIPO: TStringField;
    TBProdutosPRO_TIPOISS: TStringField;
    TBProdutosPRO_TIPOITEM: TStringField;
    TBProdutosPRO_TRIBUTO: TStringField;
    TBProdutosPRO_TROCA: TStringField;
    TBProdutosPRO_UNIDADE: TStringField;
    TBProdutosPRO_USUARIO: TStringField;
    TBProdutosCLF_DESCRICAO: TStringField;
    TBProdutosFAM_DESCRICAO: TStringField;
    TBProdutosFOR_NOME: TStringField;
    TBProdutosGRU_DESCRICAO: TStringField;
    TBProdutosICM_CALCULACREDITOSN: TStringField;
    TBProdutosICM_DESCRICAO: TStringField;
    TBProdutosIPI_DESCRICAO: TStringField;
    TBProdutosISS_DESCRICAO: TStringField;
    TBProdutosMAR_DESCRICAO: TStringField;
    TBProdutosNBS_DESCRICAO: TStringField;
    TBProdutosPIS_DESCRICAO: TStringField;
    TBProdutosPIS_DESCRICAO1: TStringField;
    TBProdutosRGF_DESCRICAO: TStringField;
    TBProdutosUNI_DESCRICAO: TStringField;
    TBProdutosRGF_ALIQCBS: TFMTBCDField;
    TBProdutosRGF_ALIQIBSMUN: TFMTBCDField;
    TBProdutosRGF_ALIQIBSUF: TFMTBCDField;
    TBProdutosRGF_ALIQIS: TFMTBCDField;
    TBProdutosRGF_CLASSTRIBIBSCBS: TStringField;
    TBProdutosRGF_CLASSTRIBIS: TStringField;
    TBProdutosRGF_CODIGO: TIntegerField;
    TBProdutosRGF_CREDITOPRES: TIntegerField;
    TBProdutosRGF_CSTIBSCBS: TStringField;
    TBProdutosRGF_CSTIS: TStringField;
    TBProdutosCPR_APROPRIADFE: TStringField;
    TBProdutosCPR_APROPRIAEVENTO: TStringField;
    TBProdutosCPR_CBS: TStringField;
    TBProdutosCPR_DEDUZTOTAL: TStringField;
    TBProdutosCPR_DESCRICAO: TStringField;
    TBProdutosCPR_IBS: TStringField;
    TBProdutosCLT_DESCRICAO_IC: TStringField;
    TBProdutosCLT_ALIQCBSRED_IC: TFMTBCDField;
    TBProdutosCLT_ALIQIBSRED_IC: TFMTBCDField;
    TBProdutosCLT_CREDITOPRESUMIDO_IC: TStringField;
    TBProdutosCLT_MONODIFERIMENTO_IC: TStringField;
    TBProdutosCLT_MONOFASICO_IC: TStringField;
    TBProdutosCLT_MONORETENCAO_IC: TStringField;
    TBProdutosCLT_MONORETIDO_IC: TStringField;
    TBProdutosCLT_REDBASE_IC: TStringField;
    TBProdutosCLT_TRIBUTACAOREGULAR_IC: TStringField;
    TBProdutosCLT_DESCRICAO_IS: TStringField;
    TBProdutosCLT_ALIQCBSRED_IS: TFMTBCDField;
    TBProdutosCLT_ALIQIBSRED_IS: TFMTBCDField;
    TBProdutosCLT_CREDITOPRESUMIDO_IS: TStringField;
    TBProdutosCLT_MONODIFERIMENTO_IS: TStringField;
    TBProdutosCLT_MONOFASICO_IS: TStringField;
    TBProdutosCLT_MONORETENCAO_IS: TStringField;
    TBProdutosCLT_MONORETIDO_IS: TStringField;
    TBProdutosCLT_REDBASE_IS: TStringField;
    TBProdutosCLT_TRIBUTACAOREGULAR_IS: TStringField;
    TBProdutosCodigos: TFDQuery;
    TBProdutosCodigosFOR_NOME: TStringField;
    TBProdutosCodigosPCO_CODIGO: TIntegerField;
    TBProdutosCodigosPCO_CODIGOFORNECEDOR: TStringField;
    TBProdutosCodigosPCO_DTATUALIZACAO: TDateField;
    TBProdutosCodigosPCO_DTCADASTRO: TDateField;
    TBProdutosCodigosPCO_FORNECEDOR: TIntegerField;
    TBProdutosCodigosPCO_HRATUALIZACAO: TTimeField;
    TBProdutosCodigosPCO_HRCADASTRO: TTimeField;
    TBProdutosCodigosPCO_PRODUTO: TIntegerField;
    TBProdutosCodigosPCO_USUARIO: TStringField;
    TBProdutosComp: TFDQuery;
    TBProdutosCompPRC_BAIXAR: TStringField;
    TBProdutosCompPRC_CODIGO: TIntegerField;
    TBProdutosCompPRC_DTATUALIZACAO: TDateField;
    TBProdutosCompPRC_DTCADASTRO: TDateField;
    TBProdutosCompPRC_HRATUALIZACAO: TTimeField;
    TBProdutosCompPRC_HRCADASTRO: TTimeField;
    TBProdutosCompPRC_ORDEM: TIntegerField;
    TBProdutosCompPRC_PRODUTO: TIntegerField;
    TBProdutosCompPRC_PRODUTOCOMP: TIntegerField;
    TBProdutosCompPRC_QUANTIDADE: TFMTBCDField;
    TBProdutosCompPRC_USUARIO: TStringField;
    TBProdutosCompPRO_COMPOSTO: TStringField;
    TBProdutosCompPRO_NOME: TStringField;
    TBProdutosCompPRO_PRECOCUSTO: TFMTBCDField;
    TBProdutosCompPRO_PRECOCUSTOCOMP: TFMTBCDField;
    TBProdutosCompPRO_UNIDADE: TStringField;
    TBProdutosEtapas: TFDQuery;
    TBProdutosEtapasETP_DESCRICAO: TStringField;
    TBProdutosEtapasETP_SIGLA: TStringField;
    TBProdutosEtapasETP_TEMPO: TStringField;
    TBProdutosEtapasPET_CODIGO: TIntegerField;
    TBProdutosEtapasPET_DTATUALIZACAO: TDateField;
    TBProdutosEtapasPET_DTCADASTRO: TDateField;
    TBProdutosEtapasPET_ETAPA: TIntegerField;
    TBProdutosEtapasPET_HRATUALIZACAO: TTimeField;
    TBProdutosEtapasPET_HRCADASTRO: TTimeField;
    TBProdutosEtapasPET_OBSERVACOES: TMemoField;
    TBProdutosEtapasPET_ORDEM: TIntegerField;
    TBProdutosEtapasPET_PRODUTO: TIntegerField;
    TBProdutosEtapasPET_USUARIO: TStringField;
    TBProdutosEtapasPRO_NOME: TStringField;
    TBProdutosFotos: TFDQuery;
    TBProdutosFotosPRF_ARQUIVO: TStringField;
    TBProdutosFotosPRF_CODIGO: TIntegerField;
    TBProdutosFotosPRF_DESCRICAO: TStringField;
    TBProdutosFotosPRF_DTATUALIZACAO: TDateField;
    TBProdutosFotosPRF_DTCADASTRO: TDateField;
    TBProdutosFotosPRF_HRATUALIZACAO: TTimeField;
    TBProdutosFotosPRF_HRCADASTRO: TTimeField;
    TBProdutosFotosPRF_PRINCIPAL: TStringField;
    TBProdutosFotosPRF_PRODUTO: TIntegerField;
    TBProdutosFotosPRF_USUARIO: TStringField;
    TBProdutosQtde: TFDQuery;
    TBProdutosQtdeALM_DESCRICAO: TStringField;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
    TBReceber: TFDQuery;
    TBReceberCLI_BAIRRO: TStringField;
    TBReceberCLI_CEP: TStringField;
    TBReceberCLI_CIDADE: TStringField;
    TBReceberCLI_CIDADECODIGO: TIntegerField;
    TBReceberCLI_CNPJ: TStringField;
    TBReceberCLI_CPF: TStringField;
    TBReceberCLI_ENDERECO: TStringField;
    TBReceberCLI_ESTADO: TStringField;
    TBReceberCLI_ESTADOCODIGO: TIntegerField;
    TBReceberCLI_NOME: TStringField;
    TBReceberCLI_NUMERO: TStringField;
    TBReceberCLI_TIPOPESSOA: TStringField;
    TBReceberCON_NOME: TStringField;
    TBReceberCON_SALDO: TFMTBCDField;
    TBReceberItens: TFDQuery;
    TBReceberItensREI_CODIGO: TIntegerField;
    TBReceberItensREI_DESCRICAO: TStringField;
    TBReceberItensREI_RECEBER: TIntegerField;
    TBReceberItensREI_VALOR: TFMTBCDField;
    TBReceberREC_DESCRICAO: TStringField;
    TBReceberREE_ACRESCIMOPORC: TFMTBCDField;
    TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALOR: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    TBReceberREE_BAIXADOPOR: TStringField;
    TBReceberREE_BOLETO: TIntegerField;
    TBReceberREE_CLIENTE: TIntegerField;
    TBReceberREE_CODIGO: TIntegerField;
    TBReceberREE_CONTA: TIntegerField;
    TBReceberREE_DESCPORC: TFMTBCDField;
    TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField;
    TBReceberREE_DESCRICAO: TStringField;
    TBReceberREE_DESCVALOR: TFMTBCDField;
    TBReceberREE_DIASATRASO: TIntegerField;
    TBReceberREE_DIASPRAZO: TIntegerField;
    TBReceberREE_DTATUALIZACAO: TDateField;
    TBReceberREE_DTCADASTRO: TDateField;
    TBReceberREE_DTEMISSAO: TDateField;
    TBReceberREE_DTJUROSAPOS: TDateField;
    TBReceberREE_DTPAGAMENTO: TDateField;
    TBReceberREE_DTVENCIMENTO: TDateField;
    TBReceberREE_HRATUALIZACAO: TTimeField;
    TBReceberREE_HRCADASTRO: TTimeField;
    TBReceberREE_JUROSPAGO: TFMTBCDField;
    TBReceberREE_MULTAPAGO: TFMTBCDField;
    TBReceberREE_NOVOCODIGO: TIntegerField;
    TBReceberREE_NUMDOCTO: TStringField;
    TBReceberREE_OBSERVACOES: TMemoField;
    TBReceberREE_PARCELANUM: TIntegerField;
    TBReceberREE_PARCELAQTDE: TIntegerField;
    TBReceberREE_PORCJUROS: TFMTBCDField;
    TBReceberREE_RECEITA: TIntegerField;
    TBReceberREE_STATUS: TStringField;
    TBReceberREE_TIPOBAIXA: TStringField;
    TBReceberREE_TIPODOCTO: TStringField;
    TBReceberREE_USUARIO: TStringField;
    TBReceberREE_VALOR: TFMTBCDField;
    TBReceberREE_VALORACESSORIAS: TFMTBCDField;
    TBReceberREE_VALORJUROS: TFMTBCDField;
    TBReceberREE_VALORMULTA: TFMTBCDField;
    TBReceberREE_VALORORIGINAL: TFMTBCDField;
    TBReceberREE_VALORPAGO: TFMTBCDField;
    TBReceberREE_VALORSEMDESCONTO: TFMTBCDField;
    TBReceberREE_VENDA: TIntegerField;
    TBReceberREE_VENDEDOR: TIntegerField;
    TBReceberVEN_NOME: TStringField;
    TBReceitas: TFDQuery;
    TBReceitasAGR_DESCRICAO: TStringField;
    TBReceitasREC_AGRUPADOR: TIntegerField;
    TBReceitasREC_CODIGO: TIntegerField;
    TBReceitasREC_DESCRICAO: TStringField;
    TBReceitasREC_DTATUALIZACAO: TDateField;
    TBReceitasREC_DTCADASTRO: TDateField;
    TBReceitasREC_HRATUALIZACAO: TTimeField;
    TBReceitasREC_HRCADASTRO: TTimeField;
    TBReceitasREC_USUARIO: TStringField;
    TBRegrasFiscais: TFDQuery;
    TBRegrasFiscaisCLT_DESCRICAO_IC: TStringField;
    TBRegrasFiscaisCLT_ALIQCBSRED_IC: TFMTBCDField;
    TBRegrasFiscaisCLT_ALIQIBSRED_IC: TFMTBCDField;
    TBRegrasFiscaisCLT_CREDITOPRESUMIDO_IC: TStringField;
    TBRegrasFiscaisCLT_MONODIFERIMENTO_IC: TStringField;
    TBRegrasFiscaisCLT_MONOFASICO_IC: TStringField;
    TBRegrasFiscaisCLT_MONORETENCAO_IC: TStringField;
    TBRegrasFiscaisCLT_MONORETIDO_IC: TStringField;
    TBRegrasFiscaisCLT_REDBASE_IC: TStringField;
    TBRegrasFiscaisCLT_TIPOALIQUOTA_IC: TStringField;
    TBRegrasFiscaisCLT_TRIBUTACAOREGULAR_IC: TStringField;
    TBRegrasFiscaisCLT_DESCRICAO_IS: TStringField;
    TBRegrasFiscaisCLT_ALIQCBSRED_IS: TFMTBCDField;
    TBRegrasFiscaisCLT_ALIQIBSRED_IS: TFMTBCDField;
    TBRegrasFiscaisCLT_CREDITOPRESUMIDO_IS: TStringField;
    TBRegrasFiscaisCLT_MONODIFERIMENTO_IS: TStringField;
    TBRegrasFiscaisCLT_MONOFASICO_IS: TStringField;
    TBRegrasFiscaisCLT_MONORETENCAO_IS: TStringField;
    TBRegrasFiscaisCLT_MONORETIDO_IS: TStringField;
    TBRegrasFiscaisCLT_REDBASE_IS: TStringField;
    TBRegrasFiscaisCLT_TIPOALIQUOTA_IS: TStringField;
    TBRegrasFiscaisCLT_TRIBUTACAOREGULAR_IS: TStringField;
    TBRegrasFiscaisRGF_ALIQCBS: TFMTBCDField;
    TBRegrasFiscaisRGF_ALIQIBSMUN: TFMTBCDField;
    TBRegrasFiscaisRGF_ALIQIBSUF: TFMTBCDField;
    TBRegrasFiscaisRGF_ALIQIS: TFMTBCDField;
    TBRegrasFiscaisRGF_CLASSTRIBIBSCBS: TStringField;
    TBRegrasFiscaisRGF_CLASSTRIBIS: TStringField;
    TBRegrasFiscaisRGF_CODIGO: TIntegerField;
    TBRegrasFiscaisRGF_CREDITOPRES: TIntegerField;
    TBRegrasFiscaisRGF_CSTIBSCBS: TStringField;
    TBRegrasFiscaisRGF_CSTIS: TStringField;
    TBRegrasFiscaisRGF_DESCRICAO: TStringField;
    TBRegrasFiscaisRGF_DTATUALIZACAO: TDateField;
    TBRegrasFiscaisRGF_DTCADASTRO: TDateField;
    TBRegrasFiscaisRGF_HRATUALIZACAO: TTimeField;
    TBRegrasFiscaisRGF_HRCADASTRO: TTimeField;
    TBRegrasFiscaisRGF_OBSERVACOES: TMemoField;
    TBRegrasFiscaisRGF_USUARIO: TStringField;
    TBRegrasFiscaisCPR_APROPRIADFE: TStringField;
    TBRegrasFiscaisCPR_APROPRIAEVENTO: TStringField;
    TBRegrasFiscaisCPR_CBS: TStringField;
    TBRegrasFiscaisCPR_DEDUZTOTAL: TStringField;
    TBRegrasFiscaisCPR_DESCRICAO: TStringField;
    TBRegrasFiscaisCPR_IBS: TStringField;
    TBRuas: TFDQuery;
    TBRuasBAI_NOME: TStringField;
    TBRuasCID_NOME: TStringField;
    TBRuasESD_NOME: TStringField;
    TBRuasESD_SIGLA: TStringField;
    TBRuasPAI_NOME: TStringField;
    TBRuasRUA_BAIRRO: TIntegerField;
    TBRuasRUA_CEP: TStringField;
    TBRuasRUA_CIDADE: TIntegerField;
    TBRuasRUA_CODIGO: TIntegerField;
    TBRuasRUA_ESTADO: TIntegerField;
    TBRuasRUA_NOME: TStringField;
    TBRuasRUA_PAIS: TIntegerField;
    TBServicos: TFDQuery;
    TBServicosCheck: TFDQuery;
    TBServicosCheckCKI_DESCRICAO: TStringField;
    TBServicosCheckSCK_CHECKLIST: TIntegerField;
    TBServicosCheckSCK_CHECKLISTITEM: TIntegerField;
    TBServicosCheckSCK_CODIGO: TIntegerField;
    TBServicosCheckSCK_OBSERVACOES: TMemoField;
    TBServicosCheckSCK_SERVICO: TIntegerField;
    TBServicosCheckSCK_STATUS: TStringField;
    TBServicosCheckTEMOBS: TStringField;
    TBServicosCLI_EMAIL: TStringField;
    TBServicosCLI_FONE1: TStringField;
    TBServicosCLI_FONE2: TStringField;
    TBServicosCLI_NOME: TStringField;
    TBServicosEQP_ACESSORIOS: TStringField;
    TBServicosEQP_ANOFAB: TIntegerField;
    TBServicosEQP_ANOMOD: TIntegerField;
    TBServicosEQP_CHASSI: TStringField;
    TBServicosEQP_COMBUSTIVEL: TStringField;
    TBServicosEQP_COR: TStringField;
    TBServicosEQP_DESCRICAO: TStringField;
    TBServicosEQP_LOCALIZACAO: TStringField;
    TBServicosEQP_MARCA: TStringField;
    TBServicosEQP_MODELO: TStringField;
    TBServicosEQP_REVENDEDOR: TStringField;
    TBServicosEQP_SERIE: TStringField;
    TBServicosEQP_TAMANHO: TStringField;
    TBServicosHoras: TFDQuery;
    TBServicosHorasSEH_CODIGO: TIntegerField;
    TBServicosHorasSEH_DATA: TDateField;
    TBServicosHorasSEH_DTATUALIZACAO: TDateField;
    TBServicosHorasSEH_DTCADASTRO: TDateField;
    TBServicosHorasSEH_FUNCIONARIO: TIntegerField;
    TBServicosHorasSEH_HORAFIM: TTimeField;
    TBServicosHorasSEH_HORAFIMMIN: TIntegerField;
    TBServicosHorasSEH_HORAINICIO: TTimeField;
    TBServicosHorasSEH_HORAINICIOMIN: TIntegerField;
    TBServicosHorasSEH_HRATUALIZACAO: TTimeField;
    TBServicosHorasSEH_HRCADASTRO: TTimeField;
    TBServicosHorasSEH_SERVICO: TIntegerField;
    TBServicosHorasSEH_TOTALHORAS: TStringField;
    TBServicosHorasSEH_TOTALHORASDEC: TFMTBCDField;
    TBServicosHorasSEH_TOTALHORASMIN: TIntegerField;
    TBServicosHorasSEH_USUARIO: TStringField;
    TBServicosHorasVEN_NOME: TStringField;
    TBServicosItens: TFDQuery;
    TBServicosItensALM_DESCRICAO: TStringField;
    TBServicosItensCLF_DESCRICAO: TStringField;
    TBServicosItensICM_CALCULACREDITOSN: TStringField;
    TBServicosItensICM_DESCRICAO: TStringField;
    TBServicosItensIPI_DESCRICAO: TStringField;
    TBServicosItensISS_DESCRICAO: TStringField;
    TBServicosItensNAT_CALCULACOMISSAO: TStringField;
    TBServicosItensNAT_CALCULACREDITOSN: TStringField;
    TBServicosItensNAT_DESCRICAO: TStringField;
    TBServicosItensPIS_DESCRICAO: TStringField;
    TBServicosItensPIS_DESCRICAO1: TStringField;
    TBServicosItensSEI_ALIQCBS: TFMTBCDField;
    TBServicosItensSEI_ALIQCBSCREDPRES: TFMTBCDField;
    TBServicosItensSEI_ALIQCBSDIF: TFMTBCDField;
    TBServicosItensSEI_ALIQCBSEFE: TFMTBCDField;
    TBServicosItensSEI_ALIQCBSRED: TFMTBCDField;
    TBServicosItensSEI_ALIQCOFINS: TFMTBCDField;
    TBServicosItensSEI_ALIQCOFINSST: TFMTBCDField;
    TBServicosItensSEI_ALIQFCP: TFMTBCDField;
    TBServicosItensSEI_ALIQFCPST: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSCREDPRES: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSMUN: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSMUNDIF: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSMUNEFE: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSMUNRED: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSUF: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSUFDIF: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSUFEFE: TFMTBCDField;
    TBServicosItensSEI_ALIQIBSUFRED: TFMTBCDField;
    TBServicosItensSEI_ALIQICMS: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSADICST: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSINTER: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSINTERPART: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSRED: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSST: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSSTRET: TFMTBCDField;
    TBServicosItensSEI_ALIQIPI: TFMTBCDField;
    TBServicosItensSEI_ALIQIS: TFMTBCDField;
    TBServicosItensSEI_ALIQISESP: TFMTBCDField;
    TBServicosItensSEI_ALIQISS: TFMTBCDField;
    TBServicosItensSEI_ALIQPIS: TFMTBCDField;
    TBServicosItensSEI_ALIQPISST: TFMTBCDField;
    TBServicosItensSEI_ALMOXARIFADO: TIntegerField;
    TBServicosItensSEI_BASECOFINS: TFMTBCDField;
    TBServicosItensSEI_BASECOFINSST: TFMTBCDField;
    TBServicosItensSEI_BASEIBSCBS: TFMTBCDField;
    TBServicosItensSEI_BASEICMS: TFMTBCDField;
    TBServicosItensSEI_BASEICMSRED: TFMTBCDField;
    TBServicosItensSEI_BASEICMSST: TFMTBCDField;
    TBServicosItensSEI_BASEIPI: TFMTBCDField;
    TBServicosItensSEI_BASEIS: TFMTBCDField;
    TBServicosItensSEI_BASEISS: TFMTBCDField;
    TBServicosItensSEI_BASEPIS: TFMTBCDField;
    TBServicosItensSEI_BASEPISST: TFMTBCDField;
    TBServicosItensSEI_BENEFICIO: TStringField;
    TBServicosItensSEI_CBSCREDITOPRES: TIntegerField;
    TBServicosItensSEI_CEST: TStringField;
    TBServicosItensSEI_CFOP: TIntegerField;
    TBServicosItensSEI_CIDADEISS: TIntegerField;
    TBServicosItensSEI_CLASSFISCAL: TStringField;
    TBServicosItensSEI_CLASSTRIBIBSCBS: TStringField;
    TBServicosItensSEI_CLASSTRIBIS: TStringField;
    TBServicosItensSEI_CODIGO: TIntegerField;
    TBServicosItensSEI_CODIGOBARRAS: TStringField;
    TBServicosItensSEI_CODIGOFAB: TStringField;
    TBServicosItensSEI_COMISSAO: TFMTBCDField;
    TBServicosItensSEI_COMPLEMENTO: TStringField;
    TBServicosItensSEI_COMPOEBASEICMS: TStringField;
    TBServicosItensSEI_COMPOEBASEICMSST: TStringField;
    TBServicosItensSEI_COMPOETOTAL: TStringField;
    TBServicosItensSEI_CONVERSAO: TFMTBCDField;
    TBServicosItensSEI_CSTIBSCBS: TStringField;
    TBServicosItensSEI_CSTCOFINS: TIntegerField;
    TBServicosItensSEI_CSTICMS: TIntegerField;
    TBServicosItensSEI_CSTIPI: TIntegerField;
    TBServicosItensSEI_CSTIS: TStringField;
    TBServicosItensSEI_CSTPIS: TIntegerField;
    TBServicosItensSEI_DESCMAX: TFMTBCDField;
    TBServicosItensSEI_DESCPORC: TFMTBCDField;
    TBServicosItensSEI_DESCRICAO: TStringField;
    TBServicosItensSEI_DESCVALOR: TFMTBCDField;
    TBServicosItensSEI_ENQUADRAMENTOIPI: TIntegerField;
    TBServicosItensSEI_EXCECAO: TIntegerField;
    TBServicosItensSEI_FCI: TStringField;
    TBServicosItensSEI_IBSCREDITOPRES: TIntegerField;
    TBServicosItensSEI_INCENTIVOISS: TStringField;
    TBServicosItensSEI_INDICADORISS: TStringField;
    TBServicosItensSEI_INFOADICIONAL: TMemoField;
    TBServicosItensSEI_LOCALIZACAO: TStringField;
    TBServicosItensSEI_LOTE: TStringField;
    TBServicosItensSEI_LUCROPORC: TFMTBCDField;
    TBServicosItensSEI_LUCROVALOR: TFMTBCDField;
    TBServicosItensSEI_MODICMS: TStringField;
    TBServicosItensSEI_MODICMSST: TStringField;
    TBServicosItensSEI_ORIGEM: TStringField;
    TBServicosItensSEI_PAISISS: TIntegerField;
    TBServicosItensSEI_PESO: TFMTBCDField;
    TBServicosItensSEI_PESOTOTAL: TFMTBCDField;
    TBServicosItensSEI_PRECOCUSTO: TFMTBCDField;
    TBServicosItensSEI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBServicosItensSEI_PROCESSOISS: TStringField;
    TBServicosItensSEI_PRODUTO: TIntegerField;
    TBServicosItensSEI_PRODUTOREAL: TIntegerField;
    TBServicosItensSEI_QUANTIDADE: TFMTBCDField;
    TBServicosItensSEI_QUANTIDADETROCA: TFMTBCDField;
    TBServicosItensSEI_SEQUENCIA: TIntegerField;
    TBServicosItensSEI_SERVICO: TIntegerField;
    TBServicosItensSEI_SERVICOISS: TStringField;
    TBServicosItensSEI_TIPO: TStringField;
    TBServicosItensSEI_TIPOISS: TStringField;
    TBServicosItensSEI_UNIDADE: TStringField;
    TBServicosItensSEI_VALORACESSORIAS: TFMTBCDField;
    TBServicosItensSEI_VALORCBS: TFMTBCDField;
    TBServicosItensSEI_VALORCBSCREDPRES: TFMTBCDField;
    TBServicosItensSEI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBServicosItensSEI_VALORCBSDEV: TFMTBCDField;
    TBServicosItensSEI_VALORCBSDIF: TFMTBCDField;
    TBServicosItensSEI_VALORCOFINS: TFMTBCDField;
    TBServicosItensSEI_VALORCOFINSST: TFMTBCDField;
    TBServicosItensSEI_VALORCOMISSAO: TFMTBCDField;
    TBServicosItensSEI_VALORFCP: TFMTBCDField;
    TBServicosItensSEI_VALORFCPST: TFMTBCDField;
    TBServicosItensSEI_VALORFRETE: TFMTBCDField;
    TBServicosItensSEI_VALORIBS: TFMTBCDField;
    TBServicosItensSEI_VALORIBSCREDPRES: TFMTBCDField;
    TBServicosItensSEI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBServicosItensSEI_VALORIBSMUN: TFMTBCDField;
    TBServicosItensSEI_VALORIBSMUNDEV: TFMTBCDField;
    TBServicosItensSEI_VALORIBSMUNDIF: TFMTBCDField;
    TBServicosItensSEI_VALORIBSUF: TFMTBCDField;
    TBServicosItensSEI_VALORIBSUFDEV: TFMTBCDField;
    TBServicosItensSEI_VALORIBSUFDIF: TFMTBCDField;
    TBServicosItensSEI_VALORICMS: TFMTBCDField;
    TBServicosItensSEI_VALORICMSCREDSN: TFMTBCDField;
    TBServicosItensSEI_VALORICMSST: TFMTBCDField;
    TBServicosItensSEI_VALORICMSUFDEST: TFMTBCDField;
    TBServicosItensSEI_VALORICMSUFREMET: TFMTBCDField;
    TBServicosItensSEI_VALORIPI: TFMTBCDField;
    TBServicosItensSEI_VALORIS: TFMTBCDField;
    TBServicosItensSEI_VALORISS: TFMTBCDField;
    TBServicosItensSEI_VALORISSDEDUCAO: TFMTBCDField;
    TBServicosItensSEI_VALORISSDESCCOND: TFMTBCDField;
    TBServicosItensSEI_VALORISSDESCINCOND: TFMTBCDField;
    TBServicosItensSEI_VALORISSOUTROS: TFMTBCDField;
    TBServicosItensSEI_VALORISSRETENCAO: TFMTBCDField;
    TBServicosItensSEI_VALORPIS: TFMTBCDField;
    TBServicosItensSEI_VALORPISST: TFMTBCDField;
    TBServicosItensSEI_VALORSEGURO: TFMTBCDField;
    TBServicosItensSEI_VALORTOTAL: TFMTBCDField;
    TBServicosItensSEI_VALORTOTALBRUTO: TFMTBCDField;
    TBServicosItensSEI_VALORTRIBUTOS: TFMTBCDField;
    TBServicosItensSEI_VALORTRIBUTOSEST: TFMTBCDField;
    TBServicosItensSEI_VALORTRIBUTOSFED: TFMTBCDField;
    TBServicosItensSEI_VALORTRIBUTOSIMP: TFMTBCDField;
    TBServicosItensSEI_VALORTRIBUTOSMUN: TFMTBCDField;
    TBServicosItensSEI_VALORUNIT: TFMTBCDField;
    TBServicosNAT_CALCULACOMISSAO: TStringField;
    TBServicosNAT_CALCULACREDITOSN: TStringField;
    TBServicosSER_ABERTOPOR: TStringField;
    TBServicosSER_ACESSORIOS: TStringField;
    TBServicosSER_ALIQICMSCREDSN: TFMTBCDField;
    TBServicosSER_ANDAMENTO: TStringField;
    TBServicosSER_BAIXADOPOR: TStringField;
    TBServicosSER_BASECOFINS: TFMTBCDField;
    TBServicosSER_BASECOFINSST: TFMTBCDField;
    TBServicosSER_BASEIBSCBS: TFMTBCDField;
    TBServicosSER_BASEICMS: TFMTBCDField;
    TBServicosSER_BASEICMSST: TFMTBCDField;
    TBServicosSER_BASEIPI: TFMTBCDField;
    TBServicosSER_BASEIS: TFMTBCDField;
    TBServicosSER_BASEISS: TFMTBCDField;
    TBServicosSER_BASEPIS: TFMTBCDField;
    TBServicosSER_BASEPISST: TFMTBCDField;
    TBServicosSER_CBSCREDPRES: TFMTBCDField;
    TBServicosSER_CBSCREDPRESSUS: TFMTBCDField;
    TBServicosSER_CBSDEVOLUCAO: TFMTBCDField;
    TBServicosSER_CBSDIFERIMENTO: TFMTBCDField;
    TBServicosSER_CBSMONO: TFMTBCDField;
    TBServicosSER_CBSMONORETENCAO: TFMTBCDField;
    TBServicosSER_CBSMONORETIDO: TFMTBCDField;
    TBServicosSER_CBSVALOR: TFMTBCDField;
    TBServicosSER_CFOP: TIntegerField;
    TBServicosSER_CFOPDESC: TStringField;
    TBServicosSER_CLIENTE: TIntegerField;
    TBServicosSER_CODIGO: TIntegerField;
    TBServicosSER_COMISSAO: TFMTBCDField;
    TBServicosSER_CONSERTO: TMemoField;
    TBServicosSER_CUSTOTOTAL: TFMTBCDField;
    TBServicosSER_DEFEITO: TMemoField;
    TBServicosSER_DESCPORC: TFMTBCDField;
    TBServicosSER_DESCVALOR: TFMTBCDField;
    TBServicosSER_DTATUALIZACAO: TDateField;
    TBServicosSER_DTCADASTRO: TDateField;
    TBServicosSER_DTENTRADA: TDateField;
    TBServicosSER_DTPREVISAO: TDateField;
    TBServicosSER_DTSAIDA: TDateField;
    TBServicosSER_DTTECNICO: TDateField;
    TBServicosSER_EQUIPAMENTO: TIntegerField;
    TBServicosSER_ESTADO: TStringField;
    TBServicosSER_FINALIZADOPOR: TStringField;
    TBServicosSER_HRATUALIZACAO: TTimeField;
    TBServicosSER_HRCADASTRO: TTimeField;
    TBServicosSER_IBSCREDPRES: TFMTBCDField;
    TBServicosSER_IBSCREDPRESSUS: TFMTBCDField;
    TBServicosSER_IBSMONO: TFMTBCDField;
    TBServicosSER_IBSMONORETENCAO: TFMTBCDField;
    TBServicosSER_IBSMONORETIDO: TFMTBCDField;
    TBServicosSER_IBSMUNDEVOLUCAO: TFMTBCDField;
    TBServicosSER_IBSMUNDIFERIMENTO: TFMTBCDField;
    TBServicosSER_IBSMUNVALOR: TFMTBCDField;
    TBServicosSER_IBSUFDEVOLUCAO: TFMTBCDField;
    TBServicosSER_IBSUFDIFERIMENTO: TFMTBCDField;
    TBServicosSER_IBSUFVALOR: TFMTBCDField;
    TBServicosSER_IBSVALOR: TFMTBCDField;
    TBServicosSER_KMATUAL: TIntegerField;
    TBServicosSER_LOCALIZACAO: TStringField;
    TBServicosSER_LUCROPORC: TFMTBCDField;
    TBServicosSER_LUCROVALOR: TFMTBCDField;
    TBServicosSER_OBSERVACOES: TMemoField;
    TBServicosSER_PESOLIQ: TFMTBCDField;
    TBServicosSER_SENHAONLINE: TStringField;
    TBServicosSER_SEQUENCIAITEM: TIntegerField;
    TBServicosSER_STATUS: TStringField;
    TBServicosSER_TABELAPRECO: TStringField;
    TBServicosSER_TECNICO: TIntegerField;
    TBServicosSER_TOTALBRUTO: TFMTBCDField;
    TBServicosSER_TOTALCOFINS: TFMTBCDField;
    TBServicosSER_TOTALCOFINSST: TFMTBCDField;
    TBServicosSER_TOTALCOMISSAO: TFMTBCDField;
    TBServicosSER_TOTALFCP: TFMTBCDField;
    TBServicosSER_TOTALFCPST: TFMTBCDField;
    TBServicosSER_TOTALHORAS: TStringField;
    TBServicosSER_TOTALHORASDEC: TFMTBCDField;
    TBServicosSER_TOTALICMS: TFMTBCDField;
    TBServicosSER_TOTALICMSCREDSN: TFMTBCDField;
    TBServicosSER_TOTALICMSST: TFMTBCDField;
    TBServicosSER_TOTALICMSUFDEST: TFMTBCDField;
    TBServicosSER_TOTALICMSUFREMET: TFMTBCDField;
    TBServicosSER_TOTALIPI: TFMTBCDField;
    TBServicosSER_TOTALIS: TFMTBCDField;
    TBServicosSER_TOTALISS: TFMTBCDField;
    TBServicosSER_TOTALISSDEDUCAO: TFMTBCDField;
    TBServicosSER_TOTALISSDESCCOND: TFMTBCDField;
    TBServicosSER_TOTALISSDESCINCOND: TFMTBCDField;
    TBServicosSER_TOTALISSOUTROS: TFMTBCDField;
    TBServicosSER_TOTALISSRETENCAO: TFMTBCDField;
    TBServicosSER_TOTALITENS: TFMTBCDField;
    TBServicosSER_TOTALPIS: TFMTBCDField;
    TBServicosSER_TOTALPISST: TFMTBCDField;
    TBServicosSER_TOTALPRODUTOS: TFMTBCDField;
    TBServicosSER_TOTALSERVICOS: TFMTBCDField;
    TBServicosSER_TOTALTRIBUTOS: TFMTBCDField;
    TBServicosSER_TOTALTRIBUTOSEST: TFMTBCDField;
    TBServicosSER_TOTALTRIBUTOSFED: TFMTBCDField;
    TBServicosSER_TOTALTRIBUTOSIMP: TFMTBCDField;
    TBServicosSER_TOTALTRIBUTOSMUN: TFMTBCDField;
    TBServicosSER_USUARIO: TStringField;
    TBServicosSER_VALOR: TFMTBCDField;
    TBServicosSER_VALORDESPACES: TFMTBCDField;
    TBServicosSER_VALORFRETE: TFMTBCDField;
    TBServicosSER_VALORSEGURO: TFMTBCDField;
    TBServicosSER_VALORTOTAL: TFMTBCDField;
    TBServicosSER_VALORTOTALRTC: TFMTBCDField;
    TBServicosVEN_NOME: TStringField;
    TBTabPreco: TFDQuery;
    TBTabPrecoTAB_CODIGO: TIntegerField;
    TBTabPrecoTAB_DESCRICAO1: TStringField;
    TBTabPrecoTAB_DESCRICAO2: TStringField;
    TBTabPrecoTAB_DESCRICAO3: TStringField;
    TBTabPrecoTAB_DESCRICAO4: TStringField;
    TBTabPrecoTAB_DESCRICAO5: TStringField;
    TBTabPrecoTAB_DESCRICAO6: TStringField;
    TBTabPrecoTAB_DTATUALIZACAO: TDateField;
    TBTabPrecoTAB_HRATUALIZACAO: TTimeField;
    TBTabPrecoTAB_MARGEM1: TFMTBCDField;
    TBTabPrecoTAB_MARGEM2: TFMTBCDField;
    TBTabPrecoTAB_MARGEM3: TFMTBCDField;
    TBTabPrecoTAB_MARGEM4: TFMTBCDField;
    TBTabPrecoTAB_MARGEM5: TFMTBCDField;
    TBTabPrecoTAB_MARGEM6: TFMTBCDField;
    TBTabPrecoTAB_USUARIO: TStringField;
    TBTaxas: TFDQuery;
    TBTaxasTAX_CODIGO: TIntegerField;
    TBTaxasTAX_DESCRICAO: TStringField;
    TBTaxasTAX_DTATUALIZACAO: TDateField;
    TBTaxasTAX_DTCADASTRO: TDateField;
    TBTaxasTAX_HRATUALIZACAO: TTimeField;
    TBTaxasTAX_HRCADASTRO: TTimeField;
    TBTaxasTAX_STATUS: TStringField;
    TBTaxasTAX_TIPO: TStringField;
    TBTaxasTAX_USUARIO: TStringField;
    TBTaxasTAX_VALOR: TFMTBCDField;
    TBTelas: TFDQuery;
    TBTelasMOD_NOME: TStringField;
    TBTelasTEL_DESCRICAO: TStringField;
    TBTelasTEL_MODULO: TIntegerField;
    TBTelasTEL_NOMEFORM: TStringField;
    TBTelasTEL_STATUS: TStringField;
    TBTributos: TFDQuery;
    TBTributosTRI_ALIQCOFINS: TFMTBCDField;
    TBTributosTRI_ALIQICMS: TFMTBCDField;
    TBTributosTRI_ALIQIPI: TFMTBCDField;
    TBTributosTRI_ALIQPIS: TFMTBCDField;
    TBTributosTRI_CODIGO: TIntegerField;
    TBTributosTRI_CSTPIS: TIntegerField;
    TBTributosTRI_SERVICO: TStringField;
    TBUsuarios: TFDQuery;
    TBUsuariosUSU_CODIGO: TIntegerField;
    TBUsuariosUSU_DTATUALIZACAO: TDateField;
    TBUsuariosUSU_DTCADASTRO: TDateField;
    TBUsuariosUSU_DTLOGIN: TDateField;
    TBUsuariosUSU_EMAIL: TStringField;
    TBUsuariosUSU_HRATUALIZACAO: TTimeField;
    TBUsuariosUSU_HRCADASTRO: TTimeField;
    TBUsuariosUSU_HRLOGIN: TTimeField;
    TBUsuariosUSU_LOGADO: TStringField;
    TBUsuariosUSU_LOGIN: TStringField;
    TBUsuariosUSU_NOME: TStringField;
    TBUsuariosUSU_PASSWORD: TStringField;
    TBUsuariosUSU_SENHAEXPIRADA: TStringField;
    TBUsuariosUSU_STATUS: TStringField;
    TBUsuariosUSU_TEMA: TStringField;
    TBUsuariosUSU_VENDEDOR: TIntegerField;
    TBUsuariosVEN_NOME: TStringField;
    TBVendas: TFDQuery;
    TBVendasCLI_FANTASIA: TStringField;
    TBVendasCPG_DESCRICAO: TStringField;
    TBVendasCPG_MEIOPAGAMENTO: TStringField;
    TBVendasCPG_TIPOINTEGRACAO: TStringField;
    TBVendasCPG_TIPOPAGAMENTO: TStringField;
    TBVendasNAT_CALCULACOMISSAO: TStringField;
    TBVendasNAT_CALCULACREDITOSN: TStringField;
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
    TBVendasVED_DTENTREGA: TDateField;
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
    TBVendasVED_PRODUCAO: TIntegerField;
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
    TBVendasVEN_NOME: TStringField;
    TBVendasVEN_NOME1: TStringField;
    TBVendasItens: TFDQuery;
    TBVendasItensALM_DESCRICAO: TStringField;
    TBVendasItensCLF_DESCRICAO: TStringField;
    TBVendasItensCLT_DESCRICAO: TStringField;
    TBVendasItensCLT_DESCRICAO1: TStringField;
    TBVendasItensICM_CALCULACREDITOSN: TStringField;
    TBVendasItensICM_DESCRICAO: TStringField;
    TBVendasItensIPI_DESCRICAO: TStringField;
    TBVendasItensISS_DESCRICAO: TStringField;
    TBVendasItensNAT_CALCULACOMISSAO: TStringField;
    TBVendasItensNAT_CALCULACREDITOSN: TStringField;
    TBVendasItensNAT_CODIGO: TIntegerField;
    TBVendasItensNAT_DESCRICAO: TStringField;
    TBVendasItensPIS_DESCRICAO: TStringField;
    TBVendasItensPIS_DESCRICAO1: TStringField;
    TBVendasItensPRO_CLASSFISCAL: TStringField;
    TBVendasItensPRO_CSTICMS: TIntegerField;
    TBVendasItensPRO_NOME: TStringField;
    TBVendasItensPRO_PRECOVENDA: TFMTBCDField;
    TBVendasItensPRO_TIPO: TStringField;
    TBVendasItensPRO_UNIDADE: TStringField;
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
    TBVendasItensVEI_DFEREF: TStringField;
    TBVendasItensVEI_DFEREFITEM: TIntegerField;
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
    TBVendasItensVEI_DTENTREGA: TDateField;
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
    TBVendedores: TFDQuery;
    TBVendedoresEMC_NOME: TStringField;
    TBVendedoresHist: TFDQuery;
    TBVendedoresHistTipos: TFDQuery;
    TBVendedoresHistTiposVHT_CODIGO: TIntegerField;
    TBVendedoresHistTiposVHT_DESCRICAO: TStringField;
    TBVendedoresHistTiposVHT_DTATUALIZACAO: TDateField;
    TBVendedoresHistTiposVHT_DTCADASTRO: TDateField;
    TBVendedoresHistTiposVHT_HRATUALIZACAO: TTimeField;
    TBVendedoresHistTiposVHT_HRCADASTRO: TTimeField;
    TBVendedoresHistTiposVHT_STATUS: TStringField;
    TBVendedoresHistTiposVHT_USUARIO: TStringField;
    TBVendedoresHistVEH_CODIGO: TIntegerField;
    TBVendedoresHistVEH_DATA: TDateField;
    TBVendedoresHistVEH_DESCRICAO: TStringField;
    TBVendedoresHistVEH_DTATUALIZACAO: TDateField;
    TBVendedoresHistVEH_DTCADASTRO: TDateField;
    TBVendedoresHistVEH_HRATUALIZACAO: TTimeField;
    TBVendedoresHistVEH_HRCADASTRO: TTimeField;
    TBVendedoresHistVEH_OBSERVACOES: TMemoField;
    TBVendedoresHistVEH_TIPO: TIntegerField;
    TBVendedoresHistVEH_USUARIO: TStringField;
    TBVendedoresHistVEH_VENDEDOR: TIntegerField;
    TBVendedoresHistVHT_DESCRICAO: TStringField;
    TBVendedoresVEN_ATUALIZAR: TStringField;
    TBVendedoresVEN_BAIRRO: TStringField;
    TBVendedoresVEN_CEP: TStringField;
    TBVendedoresVEN_CIDADE: TStringField;
    TBVendedoresVEN_CIDADECODIGO: TIntegerField;
    TBVendedoresVEN_CNPJ: TStringField;
    TBVendedoresVEN_CODIGO: TIntegerField;
    TBVendedoresVEN_COMISSAO: TFMTBCDField;
    TBVendedoresVEN_COMISSAOTIPO: TStringField;
    TBVendedoresVEN_COMPLEMENTO: TStringField;
    TBVendedoresVEN_CONTATO: TStringField;
    TBVendedoresVEN_COR: TStringField;
    TBVendedoresVEN_CPF: TStringField;
    TBVendedoresVEN_DTATUALIZACAO: TDateField;
    TBVendedoresVEN_DTCADASTRO: TDateField;
    TBVendedoresVEN_DTNASC: TDateField;
    TBVendedoresVEN_EMAIL: TStringField;
    TBVendedoresVEN_EMAILCONTA: TIntegerField;
    TBVendedoresVEN_ENDERECO: TStringField;
    TBVendedoresVEN_ESTADO: TStringField;
    TBVendedoresVEN_ESTADOCIVIL: TStringField;
    TBVendedoresVEN_FONE1: TStringField;
    TBVendedoresVEN_FONE2: TStringField;
    TBVendedoresVEN_FONE3: TStringField;
    TBVendedoresVEN_HRATUALIZACAO: TTimeField;
    TBVendedoresVEN_HRCADASTRO: TTimeField;
    TBVendedoresVEN_IE: TStringField;
    TBVendedoresVEN_MOSTRARAGENDA: TStringField;
    TBVendedoresVEN_NOME: TStringField;
    TBVendedoresVEN_NUMERO: TStringField;
    TBVendedoresVEN_OBSERVACOES: TMemoField;
    TBVendedoresVEN_REGPROFISSIONAL: TStringField;
    TBVendedoresVEN_RG: TStringField;
    TBVendedoresVEN_SALARIOBASE: TFMTBCDField;
    TBVendedoresVEN_SALDOATUAL: TFMTBCDField;
    TBVendedoresVEN_SALDOHORAS: TCurrencyField;
    TBVendedoresVEN_SITE: TStringField;
    TBVendedoresVEN_STATUS: TStringField;
    TBVendedoresVEN_TIPOPESSOA: TStringField;
    TBVendedoresVEN_USUARIO: TStringField;
    TBVendedoresVEN_ZAPINSTANCIA: TIntegerField;
    TBVendedoresZIN_NOME: TStringField;
    TBVersao: TFDQuery;
    TBVersaoVER_VERSAOBASE: TStringField;
    TBVias: TFDQuery;
    TBViasVIA_CODIGO: TIntegerField;
    TBViasVIA_DESCRICAO: TStringField;
    TBViasVIA_DTATUALIZACAO: TDateField;
    TBViasVIA_DTCADASTRO: TDateField;
    TBViasVIA_HRATUALIZACAO: TTimeField;
    TBViasVIA_HRCADASTRO: TTimeField;
    TBViasVIA_STATUS: TStringField;
    TBViasVIA_USUARIO: TStringField;
    TRAcessos: TFDTransaction;
    TRAgrupadores: TFDTransaction;
    TRAliquotas: TFDTransaction;
    TRAlmoxarifados: TFDTransaction;
    TRAtividades: TFDTransaction;
    TRAux: TFDTransaction;
    TRAux2: TFDTransaction;
    TRAux3: TFDTransaction;
    TRAux4: TFDTransaction;
    TRBairros: TFDTransaction;
    TRBeneficios: TFDTransaction;
    TRCaixa: TFDTransaction;
    TRCaixaSaldo: TFDTransaction;
    TRChecklists: TFDTransaction;
    TRChecklistsItens: TFDTransaction;
    TRCidades: TFDTransaction;
    TRClassFiscal: TFDTransaction;
    TRClassTrib: TFDTransaction;
    TRClientes: TFDTransaction;
    TRComponentes: TFDTransaction;
    TRCompras: TFDTransaction;
    TRComprasItens: TFDTransaction;
    TRCondicoes: TFDTransaction;
    TRCondicoesItens: TFDTransaction;
    TRContas: TFDTransaction;
    TRContasMov: TFDTransaction;
    TRContatos: TFDTransaction;
    TRConvenios: TFDTransaction;
    TRCreditoPres: TFDTransaction;
    TRCst: TFDTransaction;
    TRCupom: TFDTransaction;
    TRCupomItens: TFDTransaction;
    TRDateTime: TFDTransaction;
    TRDespesas: TFDTransaction;
    TREcf: TFDTransaction;
    TREmpresa: TFDTransaction;
    TREquipamentos: TFDTransaction;
    TREstados: TFDTransaction;
    TREstoque: TFDTransaction;
    TREtapas: TFDTransaction;
    TREtiquetas: TFDTransaction;
    TRFamilias: TFDTransaction;
    TRFci: TFDTransaction;
    TRFciItens: TFDTransaction;
    TRFornecedores: TFDTransaction;
    TRGrupos: TFDTransaction;
    TRHoras: TFDTransaction;
    TRIcms: TFDTransaction;
    TRIpi: TFDTransaction;
    TRIss: TFDTransaction;
    TRLocs: TFDTransaction;
    TRLotes: TFDTransaction;
    TRMailings: TFDTransaction;
    TRManifestacoes: TFDTransaction;
    TRMetas: TFDTransaction;
    TRMetasConfig: TFDTransaction;
    TRModulos: TFDTransaction;
    TRNaturezas: TFDTransaction;
    TRNbs: TFDTransaction;
    TRNfce: TFDTransaction;
    TRNfceInutilizadas: TFDTransaction;
    TRNfceItens: TFDTransaction;
    TRNfceLogs: TFDTransaction;
    TRNfcePagamentos: TFDTransaction;
    TRNfe: TFDTransaction;
    TRNfeCce: TFDTransaction;
    TRNfeCodigo: TFDTransaction;
    TRNfeInutilizadas: TFDTransaction;
    TRNfeItens: TFDTransaction;
    TRNfeItensAdicoes: TFDTransaction;
    TRNfeRef: TFDTransaction;
    TRNfse: TFDTransaction;
    TRNfseCodigo: TFDTransaction;
    TRNfseItens: TFDTransaction;
    TRNotas: TFDTransaction;
    TRNotasCodigo: TFDTransaction;
    TRNotasItens: TFDTransaction;
    TRPagar: TFDTransaction;
    TRPaises: TFDTransaction;
    TRParametros: TFDTransaction;
    TRPiscofins: TFDTransaction;
    TRProducao: TFDTransaction;
    TRProducaoItens: TFDTransaction;
    TRProducaoItensComp: TFDTransaction;
    TRProdutos: TFDTransaction;
    TRProdutosCodigos: TFDTransaction;
    TRProdutosComp: TFDTransaction;
    TRProdutosEtapas: TFDTransaction;
    TRProdutosFotos: TFDTransaction;
    TRProdutosQtde: TFDTransaction;
    TRReceber: TFDTransaction;
    TRReceberItens: TFDTransaction;
    TRReceitas: TFDTransaction;
    TRRegrasFiscais: TFDTransaction;
    TRRuas: TFDTransaction;
    TRScript: TFDTransaction;
    TRServicos: TFDTransaction;
    TRServicosCheck: TFDTransaction;
    TRServicosHoras: TFDTransaction;
    TRServicosItens: TFDTransaction;
    TRTabPreco: TFDTransaction;
    TRTaxas: TFDTransaction;
    TRTelas: TFDTransaction;
    TRTributos: TFDTransaction;
    TRUsuarios: TFDTransaction;
    TRVendas: TFDTransaction;
    TRVendasItens: TFDTransaction;
    TRVendedores: TFDTransaction;
    TRVendedoresHist: TFDTransaction;
    TRVendedoresHistTipos: TFDTransaction;
    TRVersao: TFDTransaction;
    TRVias: TFDTransaction;
    UPAcessos: TFDUpdateSQL;
    UPAgrupadores: TFDUpdateSQL;
    UPAliquotas: TFDUpdateSQL;
    UPAlmoxarifados: TFDUpdateSQL;
    UPAtividades: TFDUpdateSQL;
    UPBairros: TFDUpdateSQL;
    UPBeneficios: TFDUpdateSQL;
    UPCaixa: TFDUpdateSQL;
    UPCaixaSaldo: TFDUpdateSQL;
    UPChecklists: TFDUpdateSQL;
    UPChecklistsItens: TFDUpdateSQL;
    UPCidades: TFDUpdateSQL;
    UPClassFiscal: TFDUpdateSQL;
    UPClassTrib: TFDUpdateSQL;
    UPClientes: TFDUpdateSQL;
    UPComponentes: TFDUpdateSQL;
    UPCompras: TFDUpdateSQL;
    UPComprasItens: TFDUpdateSQL;
    UPCondicoes: TFDUpdateSQL;
    UPCondicoesItens: TFDUpdateSQL;
    UPContas: TFDUpdateSQL;
    UPContasMov: TFDUpdateSQL;
    UPContatos: TFDUpdateSQL;
    UPConvenios: TFDUpdateSQL;
    UPCreditoPres: TFDUpdateSQL;
    UPCst: TFDUpdateSQL;
    UPCupom: TFDUpdateSQL;
    UPCupomItens: TFDUpdateSQL;
    UPDespesas: TFDUpdateSQL;
    UPEcf: TFDUpdateSQL;
    UPEmpresa: TFDUpdateSQL;
    UPEquipamentos: TFDUpdateSQL;
    UPEstados: TFDUpdateSQL;
    UPEstoque: TFDUpdateSQL;
    UPEtapas: TFDUpdateSQL;
    UPEtiquetas: TFDUpdateSQL;
    UPFamilias: TFDUpdateSQL;
    UPFci: TFDUpdateSQL;
    UPFciItens: TFDUpdateSQL;
    UPFornecedores: TFDUpdateSQL;
    UPGrupos: TFDUpdateSQL;
    UPHoras: TFDUpdateSQL;
    UPIcms: TFDUpdateSQL;
    UPIpi: TFDUpdateSQL;
    UPIss: TFDUpdateSQL;
    UPLocs: TFDUpdateSQL;
    UPLotes: TFDUpdateSQL;
    UPMailings: TFDUpdateSQL;
    UPManifestacoes: TFDUpdateSQL;
    UPMetas: TFDUpdateSQL;
    UPMetasConfig: TFDUpdateSQL;
    UPModulos: TFDUpdateSQL;
    UPNaturezas: TFDUpdateSQL;
    UPNbs: TFDUpdateSQL;
    UPNfce: TFDUpdateSQL;
    UPNfceInutilizadas: TFDUpdateSQL;
    UPNfceItens: TFDUpdateSQL;
    UPNfceLogs: TFDUpdateSQL;
    UPNfcePagamentos: TFDUpdateSQL;
    UPNfe: TFDUpdateSQL;
    UPNfeCce: TFDUpdateSQL;
    UPNfeCodigo: TFDUpdateSQL;
    UPNfeInutilizadas: TFDUpdateSQL;
    UPNfeItens: TFDUpdateSQL;
    UPNfeItensAdicoes: TFDUpdateSQL;
    UPNfeRef: TFDUpdateSQL;
    UPNfse: TFDUpdateSQL;
    UPNfseCodigo: TFDUpdateSQL;
    UPNfseItens: TFDUpdateSQL;
    UPNotas: TFDUpdateSQL;
    UPNotasCodigo: TFDUpdateSQL;
    UPNotasItens: TFDUpdateSQL;
    UPPagar: TFDUpdateSQL;
    UPPaises: TFDUpdateSQL;
    UPParametros: TFDUpdateSQL;
    UPPiscofins: TFDUpdateSQL;
    UPProducao: TFDUpdateSQL;
    UPProducaoItens: TFDUpdateSQL;
    UPProducaoItensComp: TFDUpdateSQL;
    UPProdutos: TFDUpdateSQL;
    UPProdutosCodigos: TFDUpdateSQL;
    UPProdutosComp: TFDUpdateSQL;
    UPProdutosEtapas: TFDUpdateSQL;
    UPProdutosFotos: TFDUpdateSQL;
    UPProdutosQtde: TFDUpdateSQL;
    UPReceber: TFDUpdateSQL;
    UPReceberItens: TFDUpdateSQL;
    UPReceitas: TFDUpdateSQL;
    UPRegrasFiscais: TFDUpdateSQL;
    UPRuas: TFDUpdateSQL;
    UPServicos: TFDUpdateSQL;
    UPServicosCheck: TFDUpdateSQL;
    UPServicosHoras: TFDUpdateSQL;
    UPServicosItens: TFDUpdateSQL;
    UPTabPreco: TFDUpdateSQL;
    UPTaxas: TFDUpdateSQL;
    UPTelas: TFDUpdateSQL;
    UPTributos: TFDUpdateSQL;
    UPUsuarios: TFDUpdateSQL;
    UPVendas: TFDUpdateSQL;
    UPVendasItens: TFDUpdateSQL;
    UPVendedores: TFDUpdateSQL;
    UPVendedoresHist: TFDUpdateSQL;
    UPVendedoresHistTipos: TFDUpdateSQL;
    UPVersao: TFDUpdateSQL;
    UPVias: TFDUpdateSQL;
    ACBrPAFNFCe1: TACBrPAFNFCe;
    ACBrNFe1: TACBrNFe;
    TBVendasVED_REPRESENTANTE: TIntegerField;
    TBVendasVEN_NOME2: TStringField;
    TBNfeNFE_REPRESENTANTE: TIntegerField;
    TBNfeVEN_NOME2: TStringField;
    TBMetasMET_REPRESENTANTE: TStringField;
    TBVendasItensVEI_COMISSAOREP: TFMTBCDField;
    TBVendasItensVEI_VALORCOMISSAOREP: TFMTBCDField;
    TBVendasVED_COMISSAOREP: TFMTBCDField;
    TBVendasVED_TOTALCOMISSAOREP: TFMTBCDField;
    TBNfeNFE_COMISSAOREP: TFMTBCDField;
    TBNfeNFE_TOTALCOMISSAOREP: TFMTBCDField;
    TBNfeItensNFI_COMISSAOREP: TFMTBCDField;
    TBNfeItensNFI_VALORCOMISSAOREP: TFMTBCDField;
    TBReceberREE_REPRESENTANTE: TIntegerField;
    TBReceberVEN_NOME1: TStringField;
    TBEmpresaEMP_LOGOSVG: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure DSAcessosStateChange(Sender: TObject);
    procedure DSAgrupadoresStateChange(Sender: TObject);
    procedure DSAliquotasStateChange(Sender: TObject);
    procedure DSAlmoxarifadosStateChange(Sender: TObject);
    procedure DSAtividadesStateChange(Sender: TObject);
    procedure DSBairrosStateChange(Sender: TObject);
    procedure DSBeneficiosStateChange(Sender: TObject);
    procedure DSCaixaStateChange(Sender: TObject);
    procedure DSChecklistsStateChange(Sender: TObject);
    procedure DSCidadesStateChange(Sender: TObject);
    procedure DSClassFiscalStateChange(Sender: TObject);
    procedure DSClassTribStateChange(Sender: TObject);
    procedure DSClientesStateChange(Sender: TObject);
    procedure DSComprasStateChange(Sender: TObject);
    procedure DSCondicoesItensStateChange(Sender: TObject);
    procedure DSCondicoesStateChange(Sender: TObject);
    procedure DSContasMovDataChange(Sender: TObject; Field: TField);
    procedure DSContasMovStateChange(Sender: TObject);
    procedure DSContasStateChange(Sender: TObject);
    procedure DSContatosStateChange(Sender: TObject);
    procedure DSConveniosStateChange(Sender: TObject);
    procedure DSCreditoPresStateChange(Sender: TObject);
    procedure DSCstStateChange(Sender: TObject);
    procedure DSCupomStateChange(Sender: TObject);
    procedure DSDespesasStateChange(Sender: TObject);
    procedure DSEcfStateChange(Sender: TObject);
    procedure DSEquipamentosStateChange(Sender: TObject);
    procedure DSEstadosStateChange(Sender: TObject);
    procedure DSEstoqueStateChange(Sender: TObject);
    procedure DSEtapasStateChange(Sender: TObject);
    procedure DSEtiquetasStateChange(Sender: TObject);
    procedure DSFamiliasStateChange(Sender: TObject);
    procedure DSFciItensStateChange(Sender: TObject);
    procedure DSFciStateChange(Sender: TObject);
    procedure DSFornecedoresStateChange(Sender: TObject);
    procedure DSGruposStateChange(Sender: TObject);
    procedure DSHorasStateChange(Sender: TObject);
    procedure DSIcmsStateChange(Sender: TObject);
    procedure DSIpiStateChange(Sender: TObject);
    procedure DSIssStateChange(Sender: TObject);
    procedure DSLocsDataChange(Sender: TObject; Field: TField);
    procedure DSLotesDataChange(Sender: TObject; Field: TField);
    procedure DSLotesStateChange(Sender: TObject);
    procedure DSMailingsStateChange(Sender: TObject);
    procedure DSManifestacoesDataChange(Sender: TObject; Field: TField);
    procedure DSMetasConfigStateChange(Sender: TObject);
    procedure DSMetasStateChange(Sender: TObject);
    procedure DSModulosStateChange(Sender: TObject);
    procedure DSNaturezasStateChange(Sender: TObject);
    procedure DSNbsStateChange(Sender: TObject);
    procedure DSNfceStateChange(Sender: TObject);
    procedure DSNfeCCeStateChange(Sender: TObject);
    procedure DSNfeInutilizadasStateChange(Sender: TObject);
    procedure DSNfeItensAdicoesStateChange(Sender: TObject);
    procedure DSNfeStateChange(Sender: TObject);
    procedure DSNfseStateChange(Sender: TObject);
    procedure DSNotasStateChange(Sender: TObject);
    procedure DSPagarStateChange(Sender: TObject);
    procedure DSPaisesStateChange(Sender: TObject);
    procedure DSPiscofinsStateChange(Sender: TObject);
    procedure DSProducaoStateChange(Sender: TObject);
    procedure DSProdutosCodigosStateChange(Sender: TObject);
    procedure DSProdutosCompStateChange(Sender: TObject);
    procedure DSProdutosDataChange(Sender: TObject; Field: TField);
    procedure DSProdutosEtapasStateChange(Sender: TObject);
    procedure DSProdutosFotosDataChange(Sender: TObject; Field: TField);
    procedure DSProdutosFotosStateChange(Sender: TObject);
    procedure DSProdutosStateChange(Sender: TObject);
    procedure DSReceberItensStateChange(Sender: TObject);
    procedure DSReceberStateChange(Sender: TObject);
    procedure DSReceitasStateChange(Sender: TObject);
    procedure DSRegrasFiscaisStateChange(Sender: TObject);
    procedure DSRuasStateChange(Sender: TObject);
    procedure DSServicosCheckStateChange(Sender: TObject);
    procedure DSServicosHorasStateChange(Sender: TObject);
    procedure DSServicosStateChange(Sender: TObject);
    procedure DSTabPrecoStateChange(Sender: TObject);
    procedure DSTaxasStateChange(Sender: TObject);
    procedure DSTelasDataChange(Sender: TObject; Field: TField);
    procedure DSTelasStateChange(Sender: TObject);
    procedure DSUsuariosStateChange(Sender: TObject);
    procedure DSVendasStateChange(Sender: TObject);
    procedure DSVendedoresDataChange(Sender: TObject; Field: TField);
    procedure DSVendedoresHistStateChange(Sender: TObject);
    procedure DSVendedoresHistTiposStateChange(Sender: TObject);
    procedure DSVendedoresStateChange(Sender: TObject);
    procedure DSViasStateChange(Sender: TObject);
    procedure TBAcessosAfterInsert(DataSet: TDataSet);
    procedure TBAcessosAfterPost(DataSet: TDataSet);
    procedure TBAgrupadoresAfterInsert(DataSet: TDataSet);
    procedure TBAgrupadoresBeforeEdit(DataSet: TDataSet);
    procedure TBAgrupadoresBeforeInsert(DataSet: TDataSet);
    procedure TBAgrupadoresBeforePost(DataSet: TDataSet);
    procedure TBAliquotasBeforeEdit(DataSet: TDataSet);
    procedure TBAlmoxarifadosAfterDelete(DataSet: TDataSet);
    procedure TBAlmoxarifadosAfterInsert(DataSet: TDataSet);
    procedure TBAlmoxarifadosBeforeEdit(DataSet: TDataSet);
    procedure TBAlmoxarifadosBeforeInsert(DataSet: TDataSet);
    procedure TBAlmoxarifadosBeforePost(DataSet: TDataSet);
    procedure TBAtividadesAfterInsert(DataSet: TDataSet);
    procedure TBAtividadesBeforeEdit(DataSet: TDataSet);
    procedure TBAtividadesBeforeInsert(DataSet: TDataSet);
    procedure TBAtividadesBeforePost(DataSet: TDataSet);
    procedure TBBairrosBeforeEdit(DataSet: TDataSet);
    procedure TBBairrosBeforeInsert(DataSet: TDataSet);
    procedure TBBeneficiosAfterInsert(DataSet: TDataSet);
    procedure TBBeneficiosBeforeEdit(DataSet: TDataSet);
    procedure TBBeneficiosBeforeInsert(DataSet: TDataSet);
    procedure TBBeneficiosBeforePost(DataSet: TDataSet);
    procedure TBCaixaAfterEdit(DataSet: TDataSet);
    procedure TBCaixaAfterInsert(DataSet: TDataSet);
    procedure TBCaixaAfterPost(DataSet: TDataSet);
    procedure TBCaixaBeforeEdit(DataSet: TDataSet);
    procedure TBCaixaBeforeInsert(DataSet: TDataSet);
    procedure TBCaixaBeforePost(DataSet: TDataSet);
    procedure TBChecklistsAfterInsert(DataSet: TDataSet);
    procedure TBChecklistsBeforeEdit(DataSet: TDataSet);
    procedure TBChecklistsBeforeInsert(DataSet: TDataSet);
    procedure TBChecklistsBeforePost(DataSet: TDataSet);
    procedure TBChecklistsItensAfterInsert(DataSet: TDataSet);
    procedure TBCidadesBeforeEdit(DataSet: TDataSet);
    procedure TBCidadesBeforeInsert(DataSet: TDataSet);
    procedure TBClassFiscalAfterInsert(DataSet: TDataSet);
    procedure TBClassFiscalBeforeEdit(DataSet: TDataSet);
    procedure TBClassFiscalBeforeInsert(DataSet: TDataSet);
    procedure TBClassFiscalBeforePost(DataSet: TDataSet);
    procedure TBClientesAfterInsert(DataSet: TDataSet);
    procedure TBClientesBeforeEdit(DataSet: TDataSet);
    procedure TBClientesBeforeInsert(DataSet: TDataSet);
    procedure TBClientesBeforePost(DataSet: TDataSet);
    procedure TBComprasAfterEdit(DataSet: TDataSet);
    procedure TBComprasAfterInsert(DataSet: TDataSet);
    procedure TBComprasBeforeEdit(DataSet: TDataSet);
    procedure TBComprasBeforeInsert(DataSet: TDataSet);
    procedure TBComprasBeforePost(DataSet: TDataSet);
    procedure TBComprasItensAfterInsert(DataSet: TDataSet);
    procedure TBComprasItensAfterPost(DataSet: TDataSet);
    procedure TBComprasItensBeforePost(DataSet: TDataSet);
    procedure TBCondicoesAfterInsert(DataSet: TDataSet);
    procedure TBCondicoesBeforeEdit(DataSet: TDataSet);
    procedure TBCondicoesBeforeInsert(DataSet: TDataSet);
    procedure TBCondicoesBeforePost(DataSet: TDataSet);
    procedure TBCondicoesItensAfterDelete(DataSet: TDataSet);
    procedure TBCondicoesItensAfterInsert(DataSet: TDataSet);
    procedure TBCondicoesItensAfterPost(DataSet: TDataSet);
    procedure TBCondicoesItensBeforeEdit(DataSet: TDataSet);
    procedure TBCondicoesItensBeforeInsert(DataSet: TDataSet);
    procedure TBContasAfterInsert(DataSet: TDataSet);
    procedure TBContasBeforeEdit(DataSet: TDataSet);
    procedure TBContasBeforeInsert(DataSet: TDataSet);
    procedure TBContasBeforePost(DataSet: TDataSet);
    procedure TBContasMovAfterEdit(DataSet: TDataSet);
    procedure TBContasMovAfterInsert(DataSet: TDataSet);
    procedure TBContasMovAfterPost(DataSet: TDataSet);
    procedure TBContasMovBeforeEdit(DataSet: TDataSet);
    procedure TBContasMovBeforeInsert(DataSet: TDataSet);
    procedure TBContasMovBeforePost(DataSet: TDataSet);
    procedure TBContatosAfterInsert(DataSet: TDataSet);
    procedure TBContatosBeforeEdit(DataSet: TDataSet);
    procedure TBContatosBeforeInsert(DataSet: TDataSet);
    procedure TBContatosBeforePost(DataSet: TDataSet);
    procedure TBConveniosAfterInsert(DataSet: TDataSet);
    procedure TBConveniosBeforeEdit(DataSet: TDataSet);
    procedure TBConveniosBeforeInsert(DataSet: TDataSet);
    procedure TBConveniosBeforePost(DataSet: TDataSet);
    procedure TBCupomAfterInsert(DataSet: TDataSet);
    procedure TBCupomBeforeEdit(DataSet: TDataSet);
    procedure TBCupomBeforeInsert(DataSet: TDataSet);
    procedure TBCupomBeforePost(DataSet: TDataSet);
    procedure TBDespesasAfterInsert(DataSet: TDataSet);
    procedure TBDespesasBeforeEdit(DataSet: TDataSet);
    procedure TBDespesasBeforeInsert(DataSet: TDataSet);
    procedure TBDespesasBeforePost(DataSet: TDataSet);
    procedure TBEcfAfterInsert(DataSet: TDataSet);
    procedure TBEcfBeforeEdit(DataSet: TDataSet);
    procedure TBEcfBeforeInsert(DataSet: TDataSet);
    procedure TBEcfBeforePost(DataSet: TDataSet);
    procedure TBEmpresaBeforePost(DataSet: TDataSet);
    procedure TBEquipamentosAfterInsert(DataSet: TDataSet);
    procedure TBEquipamentosBeforeEdit(DataSet: TDataSet);
    procedure TBEquipamentosBeforeInsert(DataSet: TDataSet);
    procedure TBEquipamentosBeforeOpen(DataSet: TDataSet);
    procedure TBEquipamentosBeforePost(DataSet: TDataSet);
    procedure TBEstadosBeforeEdit(DataSet: TDataSet);
    procedure TBEstadosBeforeInsert(DataSet: TDataSet);
    procedure TBEstoqueAfterEdit(DataSet: TDataSet);
    procedure TBEstoqueAfterInsert(DataSet: TDataSet);
    procedure TBEstoqueAfterPost(DataSet: TDataSet);
    procedure TBEstoqueBeforeEdit(DataSet: TDataSet);
    procedure TBEstoqueBeforeInsert(DataSet: TDataSet);
    procedure TBEstoqueBeforePost(DataSet: TDataSet);
    procedure TBEtapasAfterInsert(DataSet: TDataSet);
    procedure TBEtapasBeforeEdit(DataSet: TDataSet);
    procedure TBEtapasBeforeInsert(DataSet: TDataSet);
    procedure TBEtapasBeforePost(DataSet: TDataSet);
    procedure TBEtiquetasAfterInsert(DataSet: TDataSet);
    procedure TBEtiquetasBeforeEdit(DataSet: TDataSet);
    procedure TBEtiquetasBeforeInsert(DataSet: TDataSet);
    procedure TBEtiquetasBeforePost(DataSet: TDataSet);
    procedure TBFamiliasAfterInsert(DataSet: TDataSet);
    procedure TBFamiliasBeforeEdit(DataSet: TDataSet);
    procedure TBFamiliasBeforeInsert(DataSet: TDataSet);
    procedure TBFamiliasBeforePost(DataSet: TDataSet);
    procedure TBFornecedoresAfterInsert(DataSet: TDataSet);
    procedure TBFornecedoresBeforeEdit(DataSet: TDataSet);
    procedure TBFornecedoresBeforeInsert(DataSet: TDataSet);
    procedure TBFornecedoresBeforePost(DataSet: TDataSet);
    procedure TBGruposAfterInsert(DataSet: TDataSet);
    procedure TBGruposBeforeEdit(DataSet: TDataSet);
    procedure TBGruposBeforeInsert(DataSet: TDataSet);
    procedure TBGruposBeforePost(DataSet: TDataSet);
    procedure TBHorasAfterEdit(DataSet: TDataSet);
    procedure TBHorasAfterInsert(DataSet: TDataSet);
    procedure TBHorasAfterPost(DataSet: TDataSet);
    procedure TBHorasBeforeEdit(DataSet: TDataSet);
    procedure TBHorasBeforeInsert(DataSet: TDataSet);
    procedure TBHorasBeforePost(DataSet: TDataSet);
    procedure TBIcmsAfterInsert(DataSet: TDataSet);
    procedure TBIcmsBeforeEdit(DataSet: TDataSet);
    procedure TBIcmsBeforeInsert(DataSet: TDataSet);
    procedure TBIcmsBeforePost(DataSet: TDataSet);
    procedure TBIpiAfterInsert(DataSet: TDataSet);
    procedure TBIpiBeforeEdit(DataSet: TDataSet);
    procedure TBIpiBeforeInsert(DataSet: TDataSet);
    procedure TBIpiBeforePost(DataSet: TDataSet);
    procedure TBIssAfterInsert(DataSet: TDataSet);
    procedure TBIssBeforeEdit(DataSet: TDataSet);
    procedure TBIssBeforeInsert(DataSet: TDataSet);
    procedure TBIssBeforePost(DataSet: TDataSet);
    procedure TBLocsAfterInsert(DataSet: TDataSet);
    procedure TBLocsBeforeInsert(DataSet: TDataSet);
    procedure TBLotesAfterInsert(DataSet: TDataSet);
    procedure TBLotesBeforeEdit(DataSet: TDataSet);
    procedure TBLotesBeforeInsert(DataSet: TDataSet);
    procedure TBLotesBeforePost(DataSet: TDataSet);
    procedure TBMailingsAfterInsert(DataSet: TDataSet);
    procedure TBMailingsBeforeEdit(DataSet: TDataSet);
    procedure TBMailingsBeforeInsert(DataSet: TDataSet);
    procedure TBMailingsBeforePost(DataSet: TDataSet);
    procedure TBManifestacoesAfterInsert(DataSet: TDataSet);
    procedure TBManifestacoesBeforeEdit(DataSet: TDataSet);
    procedure TBManifestacoesBeforeInsert(DataSet: TDataSet);
    procedure TBManifestacoesBeforePost(DataSet: TDataSet);
    procedure TBMetasAfterInsert(DataSet: TDataSet);
    procedure TBMetasBeforeEdit(DataSet: TDataSet);
    procedure TBMetasBeforeInsert(DataSet: TDataSet);
    procedure TBMetasBeforePost(DataSet: TDataSet);
    procedure TBMetasConfigBeforeEdit(DataSet: TDataSet);
    procedure TBMetasConfigBeforeInsert(DataSet: TDataSet);
    procedure TBModulosAfterInsert(DataSet: TDataSet);
    procedure TBModulosBeforeInsert(DataSet: TDataSet);
    procedure TBNaturezasAfterInsert(DataSet: TDataSet);
    procedure TBNaturezasBeforeEdit(DataSet: TDataSet);
    procedure TBNaturezasBeforeInsert(DataSet: TDataSet);
    procedure TBNaturezasBeforePost(DataSet: TDataSet);
    procedure TBNfceAfterInsert(DataSet: TDataSet);
    procedure TBNfceBeforePost(DataSet: TDataSet);
    procedure TBNfceItensAfterDelete(DataSet: TDataSet);
    procedure TBNfceItensAfterPost(DataSet: TDataSet);
    procedure TBNfceItensBeforePost(DataSet: TDataSet);
    procedure TBNfeAfterEdit(DataSet: TDataSet);
    procedure TBNfeAfterInsert(DataSet: TDataSet);
    procedure TBNfeAfterPost(DataSet: TDataSet);
    procedure TBNfeBeforeEdit(DataSet: TDataSet);
    procedure TBNfeBeforeInsert(DataSet: TDataSet);
    procedure TBNfeBeforePost(DataSet: TDataSet);
    procedure TBNfeCceAfterDelete(DataSet: TDataSet);
    procedure TBNfeCceAfterEdit(DataSet: TDataSet);
    procedure TBNfeCceAfterInsert(DataSet: TDataSet);
    procedure TBNfeCceAfterPost(DataSet: TDataSet);
    procedure TBNfeCceBeforeDelete(DataSet: TDataSet);
    procedure TBNfeCceBeforeEdit(DataSet: TDataSet);
    procedure TBNfeCceBeforeInsert(DataSet: TDataSet);
    procedure TBNfeCceBeforePost(DataSet: TDataSet);
    procedure TBNfeInutilizadasAfterDelete(DataSet: TDataSet);
    procedure TBNfeInutilizadasAfterEdit(DataSet: TDataSet);
    procedure TBNfeInutilizadasAfterInsert(DataSet: TDataSet);
    procedure TBNfeInutilizadasAfterPost(DataSet: TDataSet);
    procedure TBNfeInutilizadasBeforeDelete(DataSet: TDataSet);
    procedure TBNfeInutilizadasBeforeEdit(DataSet: TDataSet);
    procedure TBNfeInutilizadasBeforeInsert(DataSet: TDataSet);
    procedure TBNfeInutilizadasBeforePost(DataSet: TDataSet);
    procedure TBNfeItensAdicoesAfterInsert(DataSet: TDataSet);
    procedure TBNfeItensAdicoesBeforeInsert(DataSet: TDataSet);
    procedure TBNfeItensAfterInsert(DataSet: TDataSet);
    procedure TBNfeItensAfterPost(DataSet: TDataSet);
    procedure TBNfeItensBeforePost(DataSet: TDataSet);
    procedure TBNfeRefAfterInsert(DataSet: TDataSet);
    procedure TBNfseAfterEdit(DataSet: TDataSet);
    procedure TBNfseAfterInsert(DataSet: TDataSet);
    procedure TBNfseBeforeEdit(DataSet: TDataSet);
    procedure TBNfseBeforeInsert(DataSet: TDataSet);
    procedure TBNfseBeforePost(DataSet: TDataSet);
    procedure TBNfseItensAfterInsert(DataSet: TDataSet);
    procedure TBNfseItensAfterPost(DataSet: TDataSet);
    procedure TBNfseItensBeforePost(DataSet: TDataSet);
    procedure TBNotasAfterEdit(DataSet: TDataSet);
    procedure TBNotasAfterInsert(DataSet: TDataSet);
    procedure TBNotasAfterPost(DataSet: TDataSet);
    procedure TBNotasBeforeEdit(DataSet: TDataSet);
    procedure TBNotasBeforeInsert(DataSet: TDataSet);
    procedure TBNotasBeforePost(DataSet: TDataSet);
    procedure TBNotasItensAfterInsert(DataSet: TDataSet);
    procedure TBNotasItensAfterPost(DataSet: TDataSet);
    procedure TBNotasItensBeforePost(DataSet: TDataSet);
    procedure TBPagarAfterEdit(DataSet: TDataSet);
    procedure TBPagarAfterInsert(DataSet: TDataSet);
    procedure TBPagarBeforeEdit(DataSet: TDataSet);
    procedure TBPagarBeforeInsert(DataSet: TDataSet);
    procedure TBPagarBeforePost(DataSet: TDataSet);
    procedure TBPaisesBeforeEdit(DataSet: TDataSet);
    procedure TBPaisesBeforeInsert(DataSet: TDataSet);
    procedure TBPiscofinsAfterInsert(DataSet: TDataSet);
    procedure TBPiscofinsBeforeEdit(DataSet: TDataSet);
    procedure TBPiscofinsBeforeInsert(DataSet: TDataSet);
    procedure TBPiscofinsBeforePost(DataSet: TDataSet);
    procedure TBProducaoAfterEdit(DataSet: TDataSet);
    procedure TBProducaoAfterInsert(DataSet: TDataSet);
    procedure TBProducaoBeforeEdit(DataSet: TDataSet);
    procedure TBProducaoBeforeInsert(DataSet: TDataSet);
    procedure TBProducaoBeforePost(DataSet: TDataSet);
    procedure TBProducaoItensAfterInsert(DataSet: TDataSet);
    procedure TBProducaoItensCompAfterInsert(DataSet: TDataSet);
    procedure TBProdutosAfterDelete(DataSet: TDataSet);
    procedure TBProdutosAfterInsert(DataSet: TDataSet);
    procedure TBProdutosAfterPost(DataSet: TDataSet);
    procedure TBProdutosBeforeDelete(DataSet: TDataSet);
    procedure TBProdutosBeforeEdit(DataSet: TDataSet);
    procedure TBProdutosBeforeInsert(DataSet: TDataSet);
    procedure TBProdutosBeforePost(DataSet: TDataSet);
    procedure TBProdutosCodigosAfterInsert(DataSet: TDataSet);
    procedure TBProdutosCodigosBeforeEdit(DataSet: TDataSet);
    procedure TBProdutosCodigosBeforeInsert(DataSet: TDataSet);
    procedure TBProdutosCodigosBeforePost(DataSet: TDataSet);
    procedure TBProdutosCompAfterEdit(DataSet: TDataSet);
    procedure TBProdutosCompAfterInsert(DataSet: TDataSet);
    procedure TBProdutosCompBeforeEdit(DataSet: TDataSet);
    procedure TBProdutosCompBeforeInsert(DataSet: TDataSet);
    procedure TBProdutosCompBeforePost(DataSet: TDataSet);
    procedure TBProdutosEtapasAfterInsert(DataSet: TDataSet);
    procedure TBProdutosEtapasBeforeEdit(DataSet: TDataSet);
    procedure TBProdutosEtapasBeforeInsert(DataSet: TDataSet);
    procedure TBProdutosEtapasBeforePost(DataSet: TDataSet);
    procedure TBProdutosFotosAfterInsert(DataSet: TDataSet);
    procedure TBProdutosFotosBeforeEdit(DataSet: TDataSet);
    procedure TBProdutosFotosBeforeInsert(DataSet: TDataSet);
    procedure TBProdutosFotosBeforePost(DataSet: TDataSet);
    procedure TBReceberAfterEdit(DataSet: TDataSet);
    procedure TBReceberAfterInsert(DataSet: TDataSet);
    procedure TBReceberAfterPost(DataSet: TDataSet);
    procedure TBReceberBeforeEdit(DataSet: TDataSet);
    procedure TBReceberBeforeInsert(DataSet: TDataSet);
    procedure TBReceberBeforePost(DataSet: TDataSet);
    procedure TBReceberItensAfterInsert(DataSet: TDataSet);
    procedure TBReceberItensBeforeEdit(DataSet: TDataSet);
    procedure TBReceberItensBeforeInsert(DataSet: TDataSet);
    procedure TBReceitasAfterInsert(DataSet: TDataSet);
    procedure TBReceitasBeforeEdit(DataSet: TDataSet);
    procedure TBReceitasBeforeInsert(DataSet: TDataSet);
    procedure TBReceitasBeforePost(DataSet: TDataSet);
    procedure TBRuasBeforeEdit(DataSet: TDataSet);
    procedure TBRuasBeforeInsert(DataSet: TDataSet);
    procedure TBServicosAfterEdit(DataSet: TDataSet);
    procedure TBServicosAfterInsert(DataSet: TDataSet);
    procedure TBServicosBeforeEdit(DataSet: TDataSet);
    procedure TBServicosBeforeInsert(DataSet: TDataSet);
    procedure TBServicosBeforeOpen(DataSet: TDataSet);
    procedure TBServicosBeforePost(DataSet: TDataSet);
    procedure TBServicosCheckAfterInsert(DataSet: TDataSet);
    procedure TBServicosCheckBeforeEdit(DataSet: TDataSet);
    procedure TBServicosHorasAfterEdit(DataSet: TDataSet);
    procedure TBServicosHorasAfterInsert(DataSet: TDataSet);
    procedure TBServicosHorasAfterPost(DataSet: TDataSet);
    procedure TBServicosHorasBeforeEdit(DataSet: TDataSet);
    procedure TBServicosHorasBeforeInsert(DataSet: TDataSet);
    procedure TBServicosHorasBeforePost(DataSet: TDataSet);
    procedure TBServicosItensAfterEdit(DataSet: TDataSet);
    procedure TBServicosItensAfterInsert(DataSet: TDataSet);
    procedure TBServicosItensAfterPost(DataSet: TDataSet);
    procedure TBServicosItensBeforePost(DataSet: TDataSet);
    procedure TBTabPrecoBeforeEdit(DataSet: TDataSet);
    procedure TBTabPrecoBeforePost(DataSet: TDataSet);
    procedure TBTaxasAfterInsert(DataSet: TDataSet);
    procedure TBTaxasBeforeEdit(DataSet: TDataSet);
    procedure TBTaxasBeforeInsert(DataSet: TDataSet);
    procedure TBTaxasBeforePost(DataSet: TDataSet);
    procedure TBTelasAfterInsert(DataSet: TDataSet);
    procedure TBTelasBeforeInsert(DataSet: TDataSet);
    procedure TBUsuariosAfterInsert(DataSet: TDataSet);
    procedure TBUsuariosAfterPost(DataSet: TDataSet);
    procedure TBUsuariosBeforeEdit(DataSet: TDataSet);
    procedure TBUsuariosBeforeInsert(DataSet: TDataSet);
    procedure TBUsuariosBeforePost(DataSet: TDataSet);
    procedure TBVendasAfterEdit(DataSet: TDataSet);
    procedure TBVendasAfterInsert(DataSet: TDataSet);
    procedure TBVendasBeforeEdit(DataSet: TDataSet);
    procedure TBVendasBeforeInsert(DataSet: TDataSet);
    procedure TBVendasBeforePost(DataSet: TDataSet);
    procedure TBVendasItensAfterDelete(DataSet: TDataSet);
    procedure TBVendasItensAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensAfterPost(DataSet: TDataSet);
    procedure TBVendasItensBeforePost(DataSet: TDataSet);
    procedure TBVendedoresAfterInsert(DataSet: TDataSet);
    procedure TBVendedoresBeforeEdit(DataSet: TDataSet);
    procedure TBVendedoresBeforeInsert(DataSet: TDataSet);
    procedure TBVendedoresBeforePost(DataSet: TDataSet);
    procedure TBVendedoresHistAfterInsert(DataSet: TDataSet);
    procedure TBVendedoresHistBeforeEdit(DataSet: TDataSet);
    procedure TBVendedoresHistBeforeInsert(DataSet: TDataSet);
    procedure TBVendedoresHistBeforePost(DataSet: TDataSet);
    procedure TBVendedoresHistTiposAfterInsert(DataSet: TDataSet);
    procedure TBVendedoresHistTiposBeforeEdit(DataSet: TDataSet);
    procedure TBVendedoresHistTiposBeforeInsert(DataSet: TDataSet);
    procedure TBVendedoresHistTiposBeforePost(DataSet: TDataSet);
    procedure TBViasAfterInsert(DataSet: TDataSet);
    procedure TBViasBeforeEdit(DataSet: TDataSet);
    procedure TBViasBeforeInsert(DataSet: TDataSet);
    procedure TBViasBeforePost(DataSet: TDataSet);
    procedure TBNfcePagamentosAfterInsert(DataSet: TDataSet);
    procedure TBNfceLogsAfterInsert(DataSet: TDataSet);
    procedure TBNfcePagamentosAfterPost(DataSet: TDataSet);
    procedure TBNfcePagamentosBeforePost(DataSet: TDataSet);
    procedure TBNfceAfterPost(DataSet: TDataSet);
    procedure TBNfceItensAfterInsert(DataSet: TDataSet);
    procedure TBCstAfterInsert(DataSet: TDataSet);
    procedure TBCstBeforeEdit(DataSet: TDataSet);
    procedure TBCstBeforeInsert(DataSet: TDataSet);
    procedure TBCstBeforePost(DataSet: TDataSet);
    procedure TBClassTribAfterInsert(DataSet: TDataSet);
    procedure TBClassTribBeforeEdit(DataSet: TDataSet);
    procedure TBClassTribBeforeInsert(DataSet: TDataSet);
    procedure TBClassTribBeforePost(DataSet: TDataSet);
    procedure TBCreditoPresAfterInsert(DataSet: TDataSet);
    procedure TBCreditoPresBeforeEdit(DataSet: TDataSet);
    procedure TBCreditoPresBeforeInsert(DataSet: TDataSet);
    procedure TBCreditoPresBeforePost(DataSet: TDataSet);
    procedure TBRegrasFiscaisAfterInsert(DataSet: TDataSet);
    procedure TBRegrasFiscaisBeforeEdit(DataSet: TDataSet);
    procedure TBRegrasFiscaisBeforeInsert(DataSet: TDataSet);
    procedure TBRegrasFiscaisBeforePost(DataSet: TDataSet);
    procedure TBFciAfterInsert(DataSet: TDataSet);
    procedure TBFciBeforeEdit(DataSet: TDataSet);
    procedure TBFciBeforeInsert(DataSet: TDataSet);
    procedure TBFciBeforePost(DataSet: TDataSet);
    procedure TBFciItensAfterEdit(DataSet: TDataSet);
    procedure TBFciItensAfterInsert(DataSet: TDataSet);
    procedure TBFciItensBeforeEdit(DataSet: TDataSet);
    procedure TBFciItensBeforeInsert(DataSet: TDataSet);
    procedure TBFciItensBeforePost(DataSet: TDataSet);
    procedure TBFciItensAfterPost(DataSet: TDataSet);
    procedure TBFciItensAfterDelete(DataSet: TDataSet);
    procedure TBParametrosAfterOpen(DataSet: TDataSet);
    procedure TBNbsAfterInsert(DataSet: TDataSet);
    procedure TBNbsBeforeEdit(DataSet: TDataSet);
    procedure TBNbsBeforeInsert(DataSet: TDataSet);
    procedure TBNbsBeforePost(DataSet: TDataSet);
    procedure TBLotesAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    BaseBase: String;
    BaseDescricao: String;
    BaseSenha: String;
    BaseServidor: String;
    BaseUsuario: String;
    Commandcom: String;
    ConexoesBases: String;
    ConexoesDescricoes: String;
    ConexoesSenhas: String;
    ConexoesServidores: String;
    ConexoesUsuarios: String;
    DebugPrint: String;
    ComandasPorta: String;
    ComandasEstilo: String;
    DefaultUser: String;
    EntregaPorta: String;
    EntregaEstilo: String;
    EtiquetasEmbalagemPorta: String;
    ImpressoraNfce: String;
    NotasPorta: String;
    NotasModelo: String;
    ProdutosPorta: String;
    ProdutosEtiquetasPorta: String;
    ReciboPorta: String;
    ReciboEstilo: String;
    ServicosPorta: String;
    ServicosEstilo: String;
    ServicosOrcPorta: String;
    ServicosOrcEstilo: String;
    VendasPorta: String;
    VendasEstilo: String;

    //variaveis geral
    AtualizandoAcessos: Boolean;
    AtualizarClienteDataAtualizacaoUsuario: Boolean; //checado no before post da tabela de produtos. As rotinas de movimentação de pontos do cliente alteram essa variavel para não alterar os campos data atualizacao e usuario que fez a alteração.
    AtualizarComponentes: Boolean; //checado no formMain.
    AtualizarTotalRecebidoNfce: Boolean;
    AtualizarUsuariosAcessos: Boolean; //checado no formMain.
    CalcularTotais: Boolean;
    ChecarAtualizacoes: String[1];
    CodigoMark: Integer;
    CodigoMarkStr: String;
    CodigoMarkDate: TDateTime;
    CodigosOld: String; //usado quando entra em campos códigos. Guarda o código anterior para comparar se o usuário digitou outro código. Eventos OnEnter e OnExit checam essa variavel.
    ContatosChange: Boolean;
//    FS: TFormatSettings;
    InserindoNovoProduto: Boolean;
    InserindoNovoRegistroCaixa: Boolean;
    InserindoNovoRegistroContas: Boolean;
    InserindoNovoRegistroHoras: Boolean;
    InserindoNovoRegistroNF: Boolean;
    InserindoNovoRegistroNFe: Boolean;
    InserindoNovoRegistroCCe: Boolean;
    InserindoNovoRegistroCT: Boolean;
    InserindoNovoRegistroCTe: Boolean;
    InserindoNovoRegistroMDFe: Boolean;
    InserindoNovoRegistroComandasItens: Boolean;
    InserindoNovoRegistroMatriculas: Boolean;
    InserindoNovoRegistroPrevenda: Boolean;
    InserindoNovoRegistroProcessosCustas: Boolean;
    InserindoNovoUsuario: Boolean;
    NaoPodeExcluir: Boolean;
    UsuarioLogado: Integer;
    UsuarioLogin: String;
    UsuarioNome: String;
    UsuarioVendedor: Integer;

    procedure AbrirTabelas;
    procedure AtualizarFCIQuantidadeItens;
    procedure AtualizarSaldoConta(Conta: Integer; Valor: Currency; EntradaSaida: String);
    procedure AtualizarSaldoCaixa(Valor: Currency; EntradaSaida: String);
    procedure AtualizarSaldoVendedor(Valor: Currency; EntradaSaida: String);
    procedure AtualizarSaldoVendedorHoras(Valor: Extended; Transacao: String);
    procedure CalcularTotaisCondicoes(DarPost: Boolean);
    procedure CalcularTotaisVenda(DarPost: Boolean); //pedido de vendas.
    procedure CalcularTotaisVendaItens(DarPost: Boolean);
    procedure CalcularTotaisCompra(DarPost: Boolean);
    procedure CalcularTotaisCompraItens(DarPost: Boolean);
    procedure CalcularTotaisNota(DarPost: Boolean);
    procedure CalcularTotaisNotaItens(DarPost: Boolean);
    procedure CalcularTotaisNFCe(DarPost: Boolean);
    procedure CalcularTotaisNFCeItens(DarPost: Boolean);
    procedure CalcularTotaisNFe(DarPost: Boolean);
    procedure CalcularTotaisNFeItens(DarPost: Boolean);
    procedure CalcularTotaisNFSe(DarPost: Boolean);
    procedure CalcularTotaisNFSeItens(DarPost: Boolean);
    procedure CalcularTotaisServicos(DarPost: Boolean);
    procedure CalcularTotaisServicosItens(DarPost: Boolean);
    procedure CalcularTotaisServicosHoras(DarPost: Boolean);
    procedure ConfigurarACBrNFe;
    procedure LogNfce(Codigo: Integer; Nome, Descricao: String);
    //procedure RecriarSequencialItensCompra(Compra: Integer);
    procedure RecriarSequencialItensNfce(Nfce: Integer);
    procedure RecriarSequencialItensVenda(Pedido: Integer);
    procedure SimularCondicaoCompra();
    procedure SimularCondicaoNfe();
    procedure SimularCondicaoNfse();
    procedure SimularCondicaoNota();
    procedure SimularCondicaoVenda();
    procedure Variaveis(Acao: String);
    function EmissaoOnline: Boolean;
    function ServerDate: TDate;
    function ServerTime: TTime;
  end;

var
  DM: TDM;
  FS: TFormatSettings;

const
  ParamFile='Parametros.ini';
  ChaveSenha=240;
  ChaveSenhaNEW=12;
  VersaoBase=407;
  CodigoSegurancaNFE=2412;  //codigo de seguranca que vai compor a chave de acesso da NFe.
  CodigoSegurancaCTE=2412;  //codigo de seguranca que vai compor a chave de acesso da CTe.
  CodigoSegurancaMDFE=2412; //codigo de seguranca que vai compor a chave de acesso da MDFe.

  ArquivoNFEUtil='NFe_Util_2Gv5.05a.exe'; //último arquivo de instalação da NFE_UTIL.
  ArquivoNFEUtilVersao='NFe_Util 2G v5.0.5a beta 14-11-2026 - © 2008-2026 - www.flexdocs.com.br - Todos os direitos reservados';

  ArquivoCTEUtil='CTe_Util_v5.03.exe';   //último arquivo de instalação da CTE_UTIL.
  ArquivoCTEUtilVersao='CTe_Util v5.03 beta [5.0.3.0] 02-11-2026 - © 2009-2026 - www.flexdocs.com.br - Todos os direitos reservados';

  ArquivoMDFEUtil='MDFe_Util_v4.00a.exe'; //último arquivo de instalação da CTE_UTIL.
  ArquivoMDFEUtilVersao='MDFe_Util v4.00a [4.0.0.1] 18-06-2026 - © 2026 - www.flexdocs.com.br - Todos os direitos reservados';

implementation
uses DataMod2, DataModSearch, IB, Main, IniFiles, Funcoes1, FuncoesFirenet, MsHtml,
  AtualizacoesBase, Sysdba, Usuarios, UsuariosAcessos, Telas, MD5,
  Cadastro, Clientes, Atividades, Fornecedores, Despesas, Receitas, Grupos,
  Familias, Caixa, Pagar, Receber, Vendedores, Contas, Produtos,
  ProdutosTabPreco, Estoque, Naturezas, ClientesLoc, ContasMov,
  Vendas, Condicoes, Aliquotas, Compras, Servicos, ProdutosComp, Modulos,
  Almoxarifados, Notas, Agrupadores, Lotes, Producao, Mailings,
  Enderecos, Nfe, Icms, Ipi, Piscofins, ClassFiscal, ServicosHoras, Iss,
  Marcas, NFE_Util_2G_TLB, CondicoesItens, ComprasFinalizar, NfeCCe,
  VendasFinalizar, NotasFinalizar, NfeFinalizar, ReceberItens, Locs, Parametros,
  ProdutosCodigos, NfeInutilizadas, Ecf, Cupom, Nfse, Horas,
  NfeItensAdicoes, Etiquetas, Vias, Convenios, Taxas, NfeCancelar, ProdutosApresentacao,
  ProdutosFotos, Contatos, Etapas, ProdutosEtapas, Metas, MetasConfig, Beneficios,
  Manifestacoes, Equipamentos, Checklists, ServicosCheck, VendedoresHist,
  VendedoresHistTipos, Nfce, NfcePagamento, Cst, ClassTrib, CreditoPresumido,
  RegrasFiscais, Fci, FciItens, Nbs;

{$R *.DFM}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  AtualizarClienteDataAtualizacaoUsuario:=True;
  CalcularTotais:=True;
  ContatosChange:=True;
  FS:=TFormatSettings.Create;
  FS.ShortDateFormat:='dd/mm/yyyy';
  Variaveis('LOAD');
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  FDConnection1.Connected:=False;
end;

procedure TDM.AbrirTabelas;
begin
  TBAcessos.Open;
  TBAgrupadores.Open;
  TBAliquotas.Open;
  TBAlmoxarifados.Open;
  TBAtividades.Open;
  TBBairros.Open;
  TBBeneficios.Open;
  TBCaixa.Open;
  TBCaixaSaldo.Open;
  TBChecklists.Open;
  TBChecklistsItens.Open;
  TBCidades.Open;
  TBClassFiscal.Open;
  TBClassTrib.Open;
  TBClientes.Open;
  TBComponentes.Open;
  TBCompras.Open;
  TBComprasItens.Open;
  TBCondicoes.Open;
  TBCondicoesItens.Open;
  TBContas.Open;
  TBContasMov.Open;
  TBContatos.Open;
  TBConvenios.Open;
  TBCreditoPres.Open;
  TBCst.Open;
  TBCupom.Open;
  TBCupomItens.Open;
  TBDespesas.Open;
  TBEcf.Open;
  TBEmpresa.Open;
  TBEquipamentos.Open;
  TBEstados.Open;
  TBEstoque.Open;
  TBEtapas.Open;
  TBEtiquetas.Open;
  TBFamilias.Open;
  TBFci.Open;
  TBFciItens.Open;
  TBFornecedores.Open;
  TBGrupos.Open;
  TBHoras.Open;
  TBIcms.Open;
  TBIss.Open;
  TBIpi.Open;
  TBLocs.Open;
  TBLotes.Open;
  TBMailings.Open;
  TBManifestacoes.Open;
  TBMetas.Open;
  TBMetasConfig.Open;
  TBModulos.Open;
  TBNaturezas.Open;
  TBNbs.Open;
  TBNfce.Open;
  //TBNfceInutilizadas.Open;
  TBNfceItens.Open;
  TBNfceLogs.Open;
  TBNfcePagamentos.Open;
  TBNfe.Open;
  TBNfeCCe.Open;
  TBNfeCodigo.Open;
  TBNfeInutilizadas.Open;
  TBNfeItens.Open;
  //TBNfeItensAdicoes.Open; //só abrir quando fizer uma inserção. Disponível inicialmente somente na tela de NFe.
  TBNfeRef.Open;
  TBNfse.Open;
  TBNfseCodigo.Open;
  TBNfseItens.Open;
  TBNotas.Open;
  TBNotasCodigo.Open;
  TBNotasItens.Open;
  TBPagar.Open;
  TBPaises.Open;
  TBParametros.Open;
  TBPiscofins.Open;
  TBProducao.Open;
  TBProducaoItens.Open;
  TBProducaoItensComp.Open;
  TBProdutos.Open;
  TBProdutosCodigos.Open;
  TBProdutosComp.Open;
  TBProdutosEtapas.Open;
  TBProdutosFotos.Open;
  TBProdutosQtde.Open;
  TBReceber.Open;
  TBReceberItens.Open;
  TBReceitas.Open;
  TBRegrasFiscais.Open;
  TBRuas.Open;
  TBServicos.Open;
  TBServicosCheck.Open;
  TBServicosItens.Open;
  TBServicosHoras.Open;
  TBTabPreco.Open;
  TBTaxas.Open;
  TBTelas.Open;
  TBTributos.Open;
  TBUsuarios.Open;
  TBVendas.Open;
  TBVendasItens.Open;
  TBVendedores.Open;
  TBVendedoresHist.Open;
  TBVendedoresHistTipos.Open;
  TBVias.Open;

  //datamodule 2.
  DM2.TBAcoes.Open;
  DM2.TBAssuntos.Open;
  DM2.TBAtendimentos.Open;
  DM2.TBAvaliacoes.Open;
  DM2.TBAvaliacoesTipo.Open;
  DM2.TBBancos.Open;
  DM2.TBBoletos.Open;
  DM2.TBBoletosItens.Open;
  DM2.TBCalendarios.Open;
  DM2.TBChamadas.Open;
  DM2.TBCheques.Open;
  DM2.TBClasses.Open;
  DM2.TBClassificados.Open;
  DM2.TBComandas.Open;
  DM2.TBComandasItens.Open;
  DM2.TBCte.Open;
  //DM2.TBCteCampos.Open; //só abre ao acessar a tela.
  DM2.TBCteCarga.Open;
  DM2.TBCteCCe.Open;
  DM2.TBCteCCeItens.Open;
  DM2.TBCteCodigo.Open;
  DM2.TBCteInutilizados.Open;
  DM2.TBCteNotas.Open;
  DM2.TBCteVeiculos.Open;
  DM2.TBConteudos.Open;
  DM2.TBContratos.Open;
  DM2.TBConsultas.Open;
  DM2.TBConsultasItens.Open;
  DM2.TBCursos.Open;
  DM2.TBDeliverys.Open;
  DM2.TBDeliverysItens.Open;
  DM2.TBEmails.Open;
  DM2.TBEmailsContas.Open;
  DM2.TBEvolucoes.Open;
  DM2.TBExamesTipos.Open;
  DM2.TBExercicios.Open;
  DM2.TBFases.Open;
  DM2.TBFeriados.Open;
  DM2.TBForms.Open;
  DM2.TBForos.Open;
  DM2.TBFrotas.Open;
  DM2.TBGnre.Open;
  DM2.TBIasmin.Open;
  DM2.TBIasminLogs.Open;
  DM2.TBImoveis.Open;
  DM2.TBImoveisTipos.Open;
  DM2.TBLocacoes.Open;
  DM2.TBLocais.Open;
  DM2.TBMarcas.Open;
  DM2.TBMarkups.Open;
  DM2.TBMarkupsItens.Open;
  DM2.TBMatriculas.Open;
  DM2.TBMdfe.Open;
  DM2.TBMdfeCarrega.Open;
  DM2.TBMdfeDescarrega.Open;
  DM2.TBMdfeDocs.Open;
  DM2.TBMdfeMotoristas.Open;
  DM2.TBMdfePercursos.Open;
  DM2.TBMedicamentos.Open;
  DM2.TBMedicoes.Open;
  DM2.TBMensagens.Open;
  DM2.TBMensalidades.Open;
  DM2.TBMotivos.Open;
  DM2.TBObjetos.Open;
  DM2.TBOdontogramas.Open;
  DM2.TBOdontogramasOpcoes.Open;
  DM2.TBOpcionais.Open;
  DM2.TBPontos.Open;
  DM2.TBProcessos.Open;
  DM2.TBProcessosCustas.Open;
  DM2.TBProcessosHistorico.Open;
  DM2.TBProcessosPartes.Open;
  DM2.TBProjetos.Open;
  DM2.TBProjetosFases.Open;
  DM2.TBProjetosHistorico.Open;
  DM2.TBProjetosItens.Open;
  DM2.TBProjetosTipos.Open;
  DM2.TBPromissorias.Open;
  DM2.TBProntuarios.Open;
  DM2.TBReceituarios.Open;
  DM2.TBRecibos.Open;
  DM2.TBRemessas.Open;
  DM2.TBRemessasItens.Open;
  DM2.TBSeguros.Open;
  DM2.TBSegurosEndossos.Open;
  DM2.TBSegurosParcelas.Open;
  DM2.TBSegurosTipos.Open;
  DM2.TBSqls.Open;
  DM2.TBVeiculos.Open;
  DM2.TBVeiculosCliente.Open;
  DM2.TBVeiculosVenda.Open;
  DM2.TBTeleVendas.Open;
  DM2.TBTurmas.Open;
  DM2.TBUnidades.Open;
  DM2.TBZapInstancias.Open;
  DM2.TBZapMensagens.Open;
end;

procedure TDM.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASE DE DADOS','Base',BaseBase);
    F.WriteString('BASE DE DADOS','Descricao',BaseDescricao);
    F.WriteString('BASE DE DADOS','Servidor',BaseServidor);
    F.WriteString('BASE DE DADOS','Usuario',BaseUsuario);
    F.WriteString('BASE DE DADOS','Senha',SenhaEncode(BaseSenha,ChaveSenhaNEW));
    F.WriteString('ATUALIZACOES','Atualizar',ChecarAtualizacoes);
    F.WriteString('ATUALIZACOES','LocalAtualizacoes',TBParametrosPAR_LOCALATUALIZACOES.Value); //esse parametro e o de baixo, nao sao carregados pelo oncreate do datamodule.
    F.WriteString('ATUALIZACOES','Atualizador',TBParametrosPAR_ATUALIZADOR.Value);
    F.WriteString('COMANDAS','ComandasPorta',ComandasPorta);
    F.WriteString('COMANDAS','ComandasEstilo',ComandasEstilo);
    F.WriteString('DEBUGPRINT','Commandcom',Commandcom);
    F.WriteString('DEBUGPRINT','DebugPrint',DebugPrint);
    F.WriteString('VENDAS','EntregaPorta',EntregaPorta);
    F.WriteString('VENDAS','EntregaEstilo',EntregaEstilo);
    F.WriteString('VENDAS','EtiquetasEmbalagemPorta',EtiquetasEmbalagemPorta);
    F.WriteString('NOTAS','NotasPorta',NotasPorta);
    F.WriteString('NOTAS','NotasModelo',NotasModelo);
    F.WriteString('NFCE','ImpressoraNfce',ImpressoraNfce);
    F.WriteString('PRODUTOS','ProdutosPorta',ProdutosPorta);
    F.WriteString('PRODUTOS','ProdutosEtiquetasPorta',ProdutosEtiquetasPorta);
    F.WriteString('RECIBO','ReciboPorta',ReciboPorta);
    F.WriteString('RECIBO','ReciboEstilo',ReciboEstilo);
    F.WriteString('SERVICOS','ServicosPorta',ServicosPorta);
    F.WriteString('SERVICOS','ServicosEstilo',ServicosEstilo);
    F.WriteString('SERVICOS','ServicosOrcPorta',ServicosOrcPorta);
    F.WriteString('SERVICOS','ServicosOrcEstilo',ServicosOrcEstilo);
    F.WriteString('VENDAS','VendasPorta',VendasPorta);
    F.WriteString('VENDAS','VendasEstilo',VendasEstilo);
    F.WriteString('USUARIOS','Default',DefaultUser);

    { TODO -oRogerio -cCampos : RETIRAR NAS PROXIMAS ATUALIZACOES }
    F.DeleteKey('PRODUCAO','ProducaoPorta');
    F.DeleteKey('PRODUCAO','ProducaoEstilo');
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    BaseBase               :=F.ReadString('BASE DE DADOS','Base',BaseBase);
    BaseDescricao          :=F.ReadString('BASE DE DADOS','Descricao',BaseDescricao);
    BaseSenha              :=F.ReadString('BASE DE DADOS','Senha',BaseSenha);
    BaseSenha              :=SenhaDecode(BaseSenha,ChaveSenhaNEW);
    BaseServidor           :=F.ReadString('BASE DE DADOS','Servidor',BaseServidor);
    BaseUsuario            :=F.ReadString('BASE DE DADOS','Usuario',BaseUsuario);

    ChecarAtualizacoes     :=F.ReadString('ATUALIZACOES','Atualizar',ChecarAtualizacoes);
    ComandasPorta          :=F.ReadString('COMANDAS','ComandasPorta',ComandasPorta);
    ComandasEstilo         :=F.ReadString('COMANDAS','ComandasEstilo',ComandasEstilo);
    Commandcom             :=F.ReadString('DEBUGPRINT','Commandcom',Commandcom);
    ConexoesBases          :=F.ReadString('CONEXOES','Bases',ConexoesBases);
    ConexoesDescricoes     :=F.ReadString('CONEXOES','Descricoes',ConexoesDescricoes);
    ConexoesSenhas         :=F.ReadString('CONEXOES','Senhas',ConexoesSenhas);
    ConexoesServidores     :=F.ReadString('CONEXOES','Servidores',ConexoesServidores);
    ConexoesUsuarios       :=F.ReadString('CONEXOES','Usuarios',ConexoesUsuarios);
    DebugPrint             :=F.ReadString('DEBUGPRINT','DebugPrint',DebugPrint);
    DefaultUser            :=F.ReadString('USUARIOS','Default',DefaultUser);
    EntregaPorta           :=F.ReadString('VENDAS','EntregaPorta',EntregaPorta);
    EntregaEstilo          :=F.ReadString('VENDAS','EntregaEstilo',EntregaEstilo);
    EtiquetasEmbalagemPorta:=F.ReadString('VENDAS','EtiquetasEmbalagemPorta',EtiquetasEmbalagemPorta);
    ImpressoraNfce         :=F.ReadString('NFCE','ImpressoraNfce',ImpressoraNfce);
    NotasPorta             :=F.ReadString('NOTAS','NotasPorta',NotasPorta);
    NotasModelo            :=F.ReadString('NOTAS','NotasModelo',NotasModelo);
    ProdutosPorta          :=F.ReadString('PRODUTOS','ProdutosPorta',ProdutosPorta);
    ProdutosEtiquetasPorta :=F.ReadString('PRODUTOS','ProdutosEtiquetasPorta',ProdutosEtiquetasPorta);
    ReciboPorta            :=F.ReadString('RECIBO','ReciboPorta',ReciboPorta);
    ReciboEstilo           :=F.ReadString('RECIBO','ReciboEstilo',ReciboEstilo);
    ServicosPorta          :=F.ReadString('SERVICOS','ServicosPorta',ServicosPorta);
    ServicosEstilo         :=F.ReadString('SERVICOS','ServicosEstilo',ServicosEstilo);
    ServicosOrcPorta       :=F.ReadString('SERVICOS','ServicosOrcPorta',ServicosOrcPorta);
    ServicosOrcEstilo      :=F.ReadString('SERVICOS','ServicosOrcEstilo',ServicosOrcEstilo);
    VendasPorta            :=F.ReadString('VENDAS','VendasPorta',VendasPorta);
    VendasEstilo           :=F.ReadString('VENDAS','VendasEstilo',VendasEstilo);
  end;
  F.Free;
end;

function TDM.ServerDate: TDate;
begin
  QYDateTime.Open;
  Result:=QYDateTimeDATA.Value;
  QYDateTime.Close;
end;

function TDM.ServerTime: TTime;
begin
  QYDateTime.Open;
  Result:=QYDateTimeHORA.Value;
  QYDateTime.Close;
end;

procedure TDM.SimularCondicaoCompra;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(DM.TBComprasCOM_STATUS.Value='F','Compra já finalizada.');

  DM.TBCompras.Edit;
  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CONDICAO.Value;
  DM.TBCondicoes.Open;

  if TBComprasCOM_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(TBComprasCOM_CONDICAO.Value)+' - '+TBComprasCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    TBCondicoesItens.First;
    DiasPrimeiraParcela:=TBCondicoesItensCPI_DIAS.Value;
    ValorTotal:=DM.TBComprasCOM_VALORTOTAL.AsExtended;

    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=TBComprasCOM_NOTADATA.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(TBComprasCOM_NOTADATA.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(TBComprasCOM_NOTADATA.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=TBComprasCOM_NOTADATA.Value+TBCondicoesItensCPI_DIAS.Value;
      if (TBComprasCOM_DIAPREFERENCIAL.Value<>0) and (TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,TBComprasCOM_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(TBComprasCOM_VALORTOTAL.AsExtended / TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*TBCondicoesItensCPI_PORCENTAGEM.AsExtended;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > TBComprasCOM_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-TBComprasCOM_VALORTOTAL.AsExtended);
        if SomaParcelas < TBComprasCOM_VALORTOTAL.Value then ValorParcela:=ValorParcela+(TBComprasCOM_VALORTOTAL.AsExtended-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+
                     AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+
                     DateToStr(Vencimento,FS)+
                     AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+
                     AlignText(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBComprasCOM_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDM.SimularCondicaoNfe;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  AbortIf(TBNfeNFE_STATUS.Value='C','Esta nota fiscal está cancelada.');
  AbortIf(TBNfeNFE_STATUS.Value='I','Esta nota fiscal está inutilizada.');

  TBNfe.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBNfeNFE_CONDICAO.Value;
  TBCondicoes.Open;

  if TBNfeNFE_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(TBNfeNFE_CONDICAO.Value)+' - '+TBNfeCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    TBCondicoesItens.First;
    DiasPrimeiraParcela:=TBCondicoesItensCPI_DIAS.Value;

    ValorTotal:=TBNfeNFE_VALORTOTAL.AsExtended;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBNfeNFE_TOTALICMSST.AsExtended;

    //Se soma FRETE, mesmo caso acima.
    if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBNfeNFE_VALORFRETE.AsExtended;

    SomaParcelas:=0;
    while not TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=TBNfeNFE_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(TBNfeNFE_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(TBNfeNFE_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=TBNfeNFE_DTEMISSAO.Value+TBCondicoesItensCPI_DIAS.Value;
      if (TBNfeNFE_DIAPREFERENCIAL.Value<>0) and (TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,TBNfeNFE_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*TBCondicoesItensCPI_PORCENTAGEM.AsExtended;

      //se for a primeira parcela, verifica se soma a ST e o Frete.
      if ParcelaAtual=1 then
      begin
        if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBNfeNFE_TOTALICMSST.AsExtended;

        if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBNfeNFE_VALORFRETE.AsExtended;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > TBNfeNFE_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-TBNfeNFE_VALORTOTAL.AsExtended);
        if SomaParcelas < TBNfeNFE_VALORTOTAL.Value then ValorParcela:=ValorParcela+(TBNfeNFE_VALORTOTAL.AsExtended-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBNfeNFE_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDM.SimularCondicaoNfse;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(TBNfseNFS_STATUS.Value='F','Nota já finalizada.');
  AbortIf(TBNfseNFS_STATUS.Value='C','Esta nota fiscal está cancelada.');
  AbortIf(TBNfseNFS_STATUS.Value='I','Esta nota fiscal está inutilizada.');

  TBNfse.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBNfseNFS_CONDICAO.Value;
  TBCondicoes.Open;

  if TBNfseNFS_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(TBNfseNFS_CONDICAO.Value)+' - '+TBNfseCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    TBCondicoesItens.First;
    DiasPrimeiraParcela:=TBCondicoesItensCPI_DIAS.Value;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    ValorTotal:=TBNfseNFS_VALORLIQUIDO.AsExtended;
    SomaParcelas:=0;
    while not TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=TBNfseNFS_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(TBNfseNFS_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(TBNfseNFS_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=TBNfseNFS_DTEMISSAO.Value+TBCondicoesItensCPI_DIAS.Value;
      if (TBNfseNFS_DIAPREFERENCIAL.Value<>0) and (TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,TBNfseNFS_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

    //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > TBNfseNFS_VALORLIQUIDO.Value then ValorParcela:=ValorParcela-(SomaParcelas-TBNfseNFS_VALORLIQUIDO.AsExtended);
        if SomaParcelas < TBNfseNFS_VALORLIQUIDO.Value then ValorParcela:=ValorParcela+(TBNfseNFS_VALORLIQUIDO.AsExtended-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA NOTA NAO MOVIMENTA FINANCEIRO.';
  TBNfseNFS_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDM.SimularCondicaoNota;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(TBNotasNOT_STATUS.Value='F','Nota já finalizada.');
  AbortIf(TBNotasNOT_STATUS.Value='C','Esta nota fiscal está cancelada.');
  AbortIf(TBNotasNOT_STATUS.Value='I','Esta nota fiscal está inutilizada.');

  TBNotas.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBNotasNOT_CONDICAO.Value;
  TBCondicoes.Open;

  if TBNotasNOT_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(TBNotasNOT_CONDICAO.Value)+' - '+TBNotasCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    TBCondicoesItens.First;
    DiasPrimeiraParcela:=TBCondicoesItensCPI_DIAS.Value;

    ValorTotal:=TBNotasNOT_VALORTOTAL.AsExtended;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBNotasNOT_TOTALICMSST.AsExtended;

    //Se soma FRETE, mesmo caso acima.
    if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBNotasNOT_VALORFRETE.AsExtended;

    SomaParcelas:=0;
    while not TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=TBNotasNOT_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(TBNotasNOT_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(TBNotasNOT_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=TBNotasNOT_DTEMISSAO.Value+TBCondicoesItensCPI_DIAS.Value;
      if (TBNotasNOT_DIAPREFERENCIAL.Value<>0) and (TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,TBNotasNOT_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*TBCondicoesItensCPI_PORCENTAGEM.AsExtended;

      //se for a primeira parcela, verifica se soma a ST e o Frete.
      if ParcelaAtual=1 then
      begin
        if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBNotasNOT_TOTALICMSST.AsExtended;

        if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBNotasNOT_VALORFRETE.AsExtended;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > TBNotasNOT_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-TBNotasNOT_VALORTOTAL.AsExtended);
        if SomaParcelas < TBNotasNOT_VALORTOTAL.Value then ValorParcela:=ValorParcela+(TBNotasNOT_VALORTOTAL.AsExtended-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBNotasNOT_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDM.SimularCondicaoVenda;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  AbortIf(TBVendasVED_STATUS.Value='F','Este pedido de venda está finalizado.');
  AbortIf(TBVendasVED_STATUS.Value='C','Este pedido de venda está cancelado.');
  AbortIf(TBVendasVED_STATUS.Value='I','Este pedido de venda está inutilizado.');

  TBVendas.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBVendasVED_CONDICAO.Value;
  TBCondicoes.Open;

  if TBVendasVED_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    TextoCondicao:='Condição: '+IntToStr(TBVendasVED_CONDICAO.Value)+' - '+TBVendasCPG_DESCRICAO.Value+#13#10+
                   '=================================================='+#13#10+
                   'Parcela Vencimento          Valor              %  '+#13#10;
    ParcelaAtual:=0;
    TBCondicoesItens.First;
    DiasPrimeiraParcela:=TBCondicoesItensCPI_DIAS.Value;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    ValorTotal:=TBVendasVED_VALORTOTAL.AsExtended;

    if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBVendasVED_TOTALICMSST.AsExtended;

    //Se soma FRETE, mesmo caso acima.
    if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-TBVendasVED_VALORFRETE.AsExtended;

    SomaParcelas:=0;
    while not TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=TBVendasVED_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(TBVendasVED_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(TBVendasVED_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.

      end else
      Vencimento:=TBVendasVED_DTEMISSAO.Value+TBCondicoesItensCPI_DIAS.Value;

      if (TBVendasVED_DIAPREFERENCIAL.Value<>0) and (TBCondicoesItensCPI_DIAS.Value>0) then //0=entrada, não muda o dia.
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,TBVendasVED_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=ValorTotal / TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(ValorTotal/100.00)*TBCondicoesItensCPI_PORCENTAGEM.AsExtended;

      //se for a primeira parcela, verifica se soma a ST e o Frete.
      if ParcelaAtual=1 then
      begin
        if TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBVendasVED_TOTALICMSST.AsExtended;

        if TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
        ValorParcela:=ValorParcela+TBVendasVED_VALORFRETE.AsExtended;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-TBVendasVED_VALORTOTAL.AsExtended);
        if SomaParcelas < TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela+(TBVendasVED_VALORTOTAL.AsExtended-SomaParcelas);
      end;

      TextoCondicao:=TextoCondicao+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBVendasVED_CONDICAOMEMO.Value:=TextoCondicao;
end;

//##############################################################################
// ACESSOS                                                                    //
//##############################################################################
{$REGION 'TABELA ACESSOS'}
procedure TDM.TBAcessosAfterInsert(DataSet: TDataSet);
begin
  TBAcessosACE_ACESSO.Value:='S';
  TBAcessosACE_USUARIO.Value:=TBUsuariosUSU_CODIGO.Value;
end;

procedure TDM.TBAcessosAfterPost(DataSet: TDataSet);
begin
  if not AtualizandoAcessos then
  DSTelasDataChange(Self,nil); //só dispara evento se não estiver atualizando os acessos.
  TBAcessos.Locate('ACE_CODIGO',CodigoMark,[]);
end;

procedure TDM.DSAcessosStateChange(Sender: TObject);
begin
  if TBAcessos.State in [dsInsert, dsEdit] then
  begin
    if FormUsuariosAcessos<>nil then
    begin
      FormUsuariosAcessos.SpeedButton2.Enabled:=False;
      FormUsuariosAcessos.SpeedButton3.Enabled:=False;
      FormUsuariosAcessos.SpeedButton4.Enabled:=False;
      FormUsuariosAcessos.Relatorios1.Enabled:=False;
      FormUsuariosAcessos.Atualizarlistadecontrolesdeacesso1.Enabled:=False;
      FormUsuariosAcessos.DBGrid1.Enabled:=False;
      FormUsuariosAcessos.DBGrid2.Enabled:=False;
    end;
  end else
  begin
    if FormUsuariosAcessos<>nil then
    begin
      FormUsuariosAcessos.SpeedButton2.Enabled:=True;
      FormUsuariosAcessos.SpeedButton3.Enabled:=True;
      FormUsuariosAcessos.SpeedButton4.Enabled:=True;
      FormUsuariosAcessos.Relatorios1.Enabled:=True;
      FormUsuariosAcessos.Atualizarlistadecontrolesdeacesso1.Enabled:=True;
      FormUsuariosAcessos.DBGrid1.Enabled:=True;
      FormUsuariosAcessos.DBGrid2.Enabled:=True;
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// AGRUPADORES                                                                //
//##############################################################################
{$REGION 'TABELA AGRUPADORES'}
procedure TDM.TBAgrupadoresAfterInsert(DataSet: TDataSet);
begin
  TBAgrupadoresAGR_DTCADASTRO.Value:=ServerDate;
  TBAgrupadoresAGR_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBAgrupadoresBeforeEdit(DataSet: TDataSet);
begin
  if FormAgrupadores<>nil then
  FormMain.SetFields(FormAgrupadores,True);
end;

procedure TDM.TBAgrupadoresBeforeInsert(DataSet: TDataSet);
begin
  if FormAgrupadores<>nil then
  begin
    FormMain.SetFields(FormAgrupadores,True);
    FormAgrupadores.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBAgrupadoresBeforePost(DataSet: TDataSet);
begin
  TBAgrupadoresAGR_DTATUALIZACAO.Value:=ServerDate;
  TBAgrupadoresAGR_HRATUALIZACAO.Value:=ServerTime;
  TBAgrupadoresAGR_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSAgrupadoresStateChange(Sender: TObject);
begin
  if TBAgrupadores.State in [dsInsert, dsEdit] then
  begin
    if FormAgrupadores<>nil then
    begin
      FormAgrupadores.Agrupadores1.Enabled:=False;
      FormAgrupadores.AgrupadoresEReceitas1.Enabled:=False;
      FormAgrupadores.AgrupadoresEDespesas1.Enabled:=False;
      FormAgrupadores.Localizar1.Enabled:=False;
      FormAgrupadores.Localizar1Button.Enabled:=False;
      FormAgrupadores.Relatorios2.Enabled:=False;
      FormAgrupadores.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormAgrupadores<>nil then
    begin
      FormAgrupadores.Agrupadores1.Enabled:=True;
      FormAgrupadores.AgrupadoresEReceitas1.Enabled:=True;
      FormAgrupadores.AgrupadoresEDespesas1.Enabled:=True;
      FormAgrupadores.Localizar1.Enabled:=True;
      FormAgrupadores.Localizar1Button.Enabled:=True;
      FormAgrupadores.Relatorios2.Enabled:=True;
      FormAgrupadores.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAgrupadores);
      FormMain.SetFields(FormAgrupadores,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ALIQUOTAS - ALIQUOTAS DE ICMS DOS ESTADOS.                                 //
//##############################################################################
{$REGION 'TABELA ALIQUOTAS'}
procedure TDM.TBAliquotasBeforeEdit(DataSet: TDataSet);
begin
  if FormAliquotas<>nil then
  FormMain.SetFields(FormAliquotas,True);
end;

procedure TDM.DSAliquotasStateChange(Sender: TObject);
begin
  if TBAliquotas.State in [dsInsert, dsEdit] then
  begin
    if FormAliquotas<>nil then
    begin
      //nada.
    end;
  end else
  begin
    if FormAliquotas<>nil then
    begin
      FormMain.DesabilitarControles(FormAliquotas);
      FormMain.SetFields(FormAliquotas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ALMOXARIFADOS                                                              //
//##############################################################################
{$REGION 'TABELA ALMOXARIFADOS'}
procedure TDM.TBAlmoxarifadosAfterDelete(DataSet: TDataSet);
begin
  //elimina os registros na tabela PRODUTOSQTDE referente ao almoxarifado eliminado.
  { TODO -oRogerio : Criar chave estrangeira na tabela produtosqtde e eliminar o código abaixo. }
//  QYAux.Close;
//  QYAux.SQL.Clear;
//  QYAux.SQL.Add('delete from PRODUTOSQTDE where PRQ_ALMOXARIFADO=:codigo');
//  QYAux.ParamByName('codigo').AsInteger:=CodigoMark;
//  QYAux.ExecSQL;
//  TBProdutosQtde.Open;
end;

procedure TDM.TBAlmoxarifadosAfterInsert(DataSet: TDataSet);
begin
  TBAlmoxarifadosALM_DTCADASTRO.Value:=ServerDate;
  TBAlmoxarifadosALM_HRCADASTRO.Value:=ServerTime;
  TBAlmoxarifadosALM_STATUS.Value:='A';
end;

procedure TDM.TBAlmoxarifadosBeforeEdit(DataSet: TDataSet);
begin
  if FormAlmoxarifados<>nil then
  FormMain.SetFields(FormAlmoxarifados,True);
end;

procedure TDM.TBAlmoxarifadosBeforeInsert(DataSet: TDataSet);
begin
  if FormAlmoxarifados<>nil then
  begin
    FormMain.SetFields(FormAlmoxarifados,True);
    FormAlmoxarifados.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBAlmoxarifadosBeforePost(DataSet: TDataSet);
begin
  TBAlmoxarifadosALM_DTATUALIZACAO.Value:=ServerDate;
  TBAlmoxarifadosALM_HRATUALIZACAO.Value:=ServerTime;
  TBAlmoxarifadosALM_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSAlmoxarifadosStateChange(Sender: TObject);
begin
  if TBAlmoxarifados.State in [dsInsert, dsEdit] then
  begin
    if FormAlmoxarifados<>nil then
    begin
      FormAlmoxarifados.AtualizarAlmoxarifadosXProdutos1.Enabled:=False;
      FormAlmoxarifados.AtualizarAlmoxarifadosXProdutos1Button.Enabled:=False;
      FormAlmoxarifados.Localizar1.Enabled:=False;
      FormAlmoxarifados.Localizar1Button.Enabled:=False;
      FormAlmoxarifados.Relatorios2.Enabled:=False;
      FormAlmoxarifados.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormAlmoxarifados<>nil then
    begin
      FormAlmoxarifados.AtualizarAlmoxarifadosXProdutos1.Enabled:=True;
      FormAlmoxarifados.AtualizarAlmoxarifadosXProdutos1Button.Enabled:=True;
      FormAlmoxarifados.Localizar1.Enabled:=True;
      FormAlmoxarifados.Localizar1Button.Enabled:=True;
      FormAlmoxarifados.Relatorios2.Enabled:=True;
      FormAlmoxarifados.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAlmoxarifados);
      FormMain.SetFields(FormAlmoxarifados,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ATIVIDADES                                                                 //
//##############################################################################
{$REGION 'TABELA ATIVIDADES'}
procedure TDM.TBAtividadesAfterInsert(DataSet: TDataSet);
begin
  TBAtividadesATI_DTCADASTRO.Value:=ServerDate;
  TBAtividadesATI_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBAtividadesBeforeEdit(DataSet: TDataSet);
begin
  if FormAtividades<>nil then
  FormMain.SetFields(FormAtividades,True);
end;

procedure TDM.TBAtividadesBeforeInsert(DataSet: TDataSet);
begin
  if FormAtividades<>nil then
  begin
    FormMain.SetFields(FormAtividades,True);
    FormAtividades.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBAtividadesBeforePost(DataSet: TDataSet);
begin
  TBAtividadesATI_DTATUALIZACAO.Value:=ServerDate;
  TBAtividadesATI_HRATUALIZACAO.Value:=ServerTime;
  TBAtividadesATI_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSAtividadesStateChange(Sender: TObject);
begin
  if TBAtividades.State in [dsInsert, dsEdit] then
  begin
    if FormAtividades<>nil then
    begin
      FormAtividades.Localizar1.Enabled:=False;
      FormAtividades.Localizar1Button.Enabled:=False;
      FormAtividades.Relatorios2.Enabled:=False;
      FormAtividades.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormAtividades<>nil then
    begin
      FormAtividades.Localizar1.Enabled:=True;
      FormAtividades.Localizar1Button.Enabled:=True;
      FormAtividades.Relatorios2.Enabled:=True;
      FormAtividades.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAtividades);
      FormMain.SetFields(FormAtividades,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BAIRROS                                                                    //
//##############################################################################
{$REGION 'TABELA BAIRROS'}
procedure TDM.TBBairrosBeforeEdit(DataSet: TDataSet);
begin
  if FormEnderecos<>nil then
  FormMain.SetFields(FormEnderecos,True);
end;

procedure TDM.TBBairrosBeforeInsert(DataSet: TDataSet);
begin
  if (FormEnderecos<>nil) and (FormEnderecos.Active) then
  begin
    FormMain.SetFields(FormEnderecos,True);
    FormEnderecos.DBEdit13.SetFocus;
  end;
end;

procedure TDM.DSBairrosStateChange(Sender: TObject);
begin
  if TBBairros.State in [dsInsert, dsEdit] then
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=False;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=False;
      FormEnderecos.Localizar1.Enabled:=False;
      FormEnderecos.Localizar1Button.Enabled:=False;
      FormEnderecos.Relatorios1.Enabled:=False;
      FormEnderecos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=True;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=True;
      FormEnderecos.Localizar1.Enabled:=True;
      FormEnderecos.Localizar1Button.Enabled:=True;
      FormEnderecos.Relatorios1.Enabled:=True;
      FormEnderecos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEnderecos);
      FormMain.SetFields(FormEnderecos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BENEFICIOS                                                                 //
//##############################################################################
{$REGION 'TABELA BENEFICIOS'}
procedure TDM.TBBeneficiosAfterInsert(DataSet: TDataSet);
begin
  TBBeneficiosBEN_DTCADASTRO.Value:=ServerDate;
  TBBeneficiosBEN_HRCADASTRO.Value:=ServerTime;
  TBBeneficiosBEN_TIPO.Value:='ISENCAO';
end;

procedure TDM.TBBeneficiosBeforeEdit(DataSet: TDataSet);
begin
  if FormBeneficios<>nil then
  FormMain.SetFields(FormBeneficios,True);
end;

procedure TDM.TBBeneficiosBeforeInsert(DataSet: TDataSet);
begin
  if (FormBeneficios<>nil) and (FormBeneficios.Active) then
  begin
    FormMain.SetFields(FormBeneficios,True);
    FormBeneficios.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBBeneficiosBeforePost(DataSet: TDataSet);
begin
  TBBeneficiosBEN_DTATUALIZACAO.Value:=ServerDate;
  TBBeneficiosBEN_HRATUALIZACAO.Value:=ServerTime;
  TBBeneficiosBEN_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSBeneficiosStateChange(Sender: TObject);
begin
  if TBBeneficios.State in [dsInsert, dsEdit] then
  begin
    if FormBeneficios<>nil then
    begin
      FormBeneficios.Localizar1.Enabled:=False;
      FormBeneficios.Localizar1Button.Enabled:=False;
      FormBeneficios.Relatorios1.Enabled:=False;
      FormBeneficios.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormBeneficios<>nil then
    begin
      FormBeneficios.Localizar1.Enabled:=True;
      FormBeneficios.Localizar1Button.Enabled:=True;
      FormBeneficios.Relatorios1.Enabled:=True;
      FormBeneficios.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormBeneficios);
      FormMain.SetFields(FormBeneficios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CAIXA                                                                      //
//##############################################################################
{$REGION 'TABELA CAIXA'}
procedure TDM.AtualizarSaldoVendedor(Valor: Currency; EntradaSaida: String);
begin
  if TBVendedoresVEN_CODIGO.Value<>TBCaixaCAI_VENDEDOR.Value then
  begin
    TBVendedores.Close;
    TBVendedores.ParamByName('codigo').AsInteger:=TBCaixaCAI_VENDEDOR.Value;
    TBVendedores.Open;
  end;
  TBVendedores.Edit;
  if EntradaSaida='E' then TBVendedoresVEN_SALDOATUAL.Value:=TBVendedoresVEN_SALDOATUAL.Value+Valor else
  if EntradaSaida='S' then TBVendedoresVEN_SALDOATUAL.Value:=TBVendedoresVEN_SALDOATUAL.Value-Valor;
  TBVendedores.Post;
end;

procedure TDM.AtualizarSaldoVendedorHoras(Valor: Extended; Transacao: String);
begin
  if TBVendedoresVEN_CODIGO.Value<>TBHorasHOR_VENDEDOR.Value then
  begin
    TBVendedores.Close;
    TBVendedores.ParamByName('codigo').AsInteger:=TBHorasHOR_VENDEDOR.Value;
    TBVendedores.Open;
  end;
  TBVendedores.Edit;
  if Transacao='C' then TBVendedoresVEN_SALDOHORAS.Value:=TBVendedoresVEN_SALDOHORAS.Value+Valor else
  if Transacao='D' then TBVendedoresVEN_SALDOHORAS.Value:=TBVendedoresVEN_SALDOHORAS.Value-Valor;
  TBVendedores.Post;
end;

procedure TDM.TBCaixaAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBCaixa.Cancel;
end;

procedure TDM.TBCaixaAfterInsert(DataSet: TDataSet);
begin
  TBCaixaCAI_DATA.Value:=ServerDate;
  TBCaixaCAI_DTCADASTRO.Value:=ServerDate;
  TBCaixaCAI_HRCADASTRO.Value:=ServerTime;
  TBCaixaCAI_ENTRADASAIDA.Value:='E';
  TBCaixaCAI_ORIGEM.Value:='FLUXO DE CAIXA';
  TBCaixaCAI_TIPODOCTO.Value:='OUTROS';
  TBCaixaCAI_VALOR.Value:=0;
  TBCaixaCAI_VENDEDOR.Value:=UsuarioVendedor;
end;

procedure TDM.TBCaixaAfterPost(DataSet: TDataSet);
begin
  //só atualiza se for registro novo.
  if InserindoNovoRegistroCaixa then
  begin
    AtualizarSaldoVendedor(TBCaixaCAI_VALOR.AsExtended,TBCaixaCAI_ENTRADASAIDA.Value);
    AtualizarSaldoCaixa(TBCaixaCAI_VALOR.AsExtended,TBCaixaCAI_ENTRADASAIDA.Value);

    //faz lançamento na movimentação da conta.
    TBContasMov.Insert;
    TBContasMovCMO_CONTA.Value:=TBCaixaCAI_CONTA.Value;
    TBContasMovCMO_DESCRICAO.Value:=TBCaixaCAI_DESCRICAO.Value;
    TBContasMovCMO_DTMOVIMENTO.Value:=ServerDate;
    TBContasMovCMO_ENTRADASAIDA.Value:=TBCaixaCAI_ENTRADASAIDA.Value;
    TBContasMovCMO_NUMDOCTO.Value:=TBCaixaCAI_NUMDOCTO.Value;
    TBContasMovCMO_ORIGEM.Value:=TBCaixaCAI_ORIGEM.Value;
    TBContasMovCMO_TIPODOCTO.Value:=TBCaixaCAI_TIPODOCTO.Value;
    TBContasMovCMO_VALOR.Value:=TBCaixaCAI_VALOR.Value;
    TBContasMov.Post; //no after post é atualizado o saldo da conta na tabela TBContas.
    //...

    InserindoNovoRegistroCaixa:=False;
  end;
end;

procedure TDM.TBCaixaBeforeEdit(DataSet: TDataSet);
begin
  if FormCaixa<>nil then
  FormMain.SetFields(FormCaixa,True);
end;

procedure TDM.TBCaixaBeforeInsert(DataSet: TDataSet);
begin
  if FormCaixa<>nil then
  begin
    FormMain.SetFields(FormCaixa,True);
    FormCaixa.DBEdit10.SetFocus;
  end;
end;

procedure TDM.TBCaixaBeforePost(DataSet: TDataSet);
begin
  TBCaixaCAI_DTATUALIZACAO.Value:=ServerDate;
  TBCaixaCAI_HRATUALIZACAO.Value:=ServerTime;
  TBCaixaCAI_USUARIO.Value:=UsuarioLogin;
  //calcula dos saldos e atualiza o saldo na tabela caixasaldo. só calcula se for inserção de novo registro.
  if TBCaixa.State in [dsInsert] then
  begin
    TBVendedores.Close;
    TBVendedores.ParamByName('codigo').AsInteger:=TBCaixaCAI_VENDEDOR.Value;
    TBVendedores.Open;
    TBCaixaCAI_SALDOANTERIOR.Value:=TBVendedoresVEN_SALDOATUAL.Value;
    if TBCaixaCAI_ENTRADASAIDA.Value='E' then TBCaixaCAI_SALDOPOSTERIOR.Value:=TBVendedoresVEN_SALDOATUAL.Value+TBCaixaCAI_VALOR.Value else
    if TBCaixaCAI_ENTRADASAIDA.Value='S' then TBCaixaCAI_SALDOPOSTERIOR.Value:=TBVendedoresVEN_SALDOATUAL.Value-TBCaixaCAI_VALOR.Value;
    InserindoNovoRegistroCaixa:=True;
  end;
  //atualiza o saldo da conta no evento afterpost.
end;

procedure TDM.DSCaixaStateChange(Sender: TObject);
begin
  if TBCaixa.State in [dsInsert, dsEdit] then
  begin
    if FormCaixa<>nil then
    begin
      FormCaixa.Localizar1.Enabled:=False;
      FormCaixa.Localizar1Button.Enabled:=False;
      FormCaixa.MovimentacoesAnalitico1.Enabled:=False;
      FormCaixa.MovimentacoesPorContaAnalitico1.Enabled:=False;
      FormCaixa.MovimentacoesPorVendedorAnalitico1.Enabled:=False;
      FormCaixa.MovimentacoesPorVendedorSintetico1.Enabled:=False;
      FormCaixa.Relatorios2.Enabled:=False;
      FormCaixa.Relatorios2Button.Enabled:=False;
      FormCaixa.SaldosPorVendedor1.Enabled:=False;
      FormCaixa.TotaisPorTipoDeDocumento1.Enabled:=False;
      FormCaixa.TransferirSaldoDeUmVendedorParaOutro1.Enabled:=False;
      FormCaixa.TransferirSaldoDeUmVendedorParaOutro1Button.Enabled:=False;
    end;
  end else
  begin
    if FormCaixa<>nil then
    begin
      FormCaixa.Localizar1.Enabled:=True;
      FormCaixa.Localizar1Button.Enabled:=True;
      FormCaixa.MovimentacoesAnalitico1.Enabled:=True;
      FormCaixa.MovimentacoesPorContaAnalitico1.Enabled:=True;
      FormCaixa.MovimentacoesPorVendedorAnalitico1.Enabled:=True;
      FormCaixa.MovimentacoesPorVendedorSintetico1.Enabled:=True;
      FormCaixa.Relatorios2.Enabled:=True;
      FormCaixa.Relatorios2Button.Enabled:=True;
      FormCaixa.SaldosPorVendedor1.Enabled:=True;
      FormCaixa.TotaisPorTipoDeDocumento1.Enabled:=True;
      FormCaixa.TransferirSaldoDeUmVendedorParaOutro1.Enabled:=True;
      FormCaixa.TransferirSaldoDeUmVendedorParaOutro1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCaixa);
      FormMain.SetFields(FormCaixa,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CAIXA SALDO                                                                //
//##############################################################################
{$REGION 'TABELA CAIXASALDO'}
procedure TDM.AtualizarSaldoCaixa(Valor: Currency; EntradaSaida: String);
begin
  TBCaixaSaldo.Edit;
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(VEN_SALDOATUAL) as SALDO from VENDEDORES');
  QYAux.Open;
  TBCaixaSaldoCAS_SALDOATUAL.Value:=QYAux.FieldByName('SALDO').AsExtended;
  QYAux.Close;
  TBCaixaSaldo.Post;
end;
{$ENDREGION}

//##############################################################################
// CHECKLISTS                                                                 //
//##############################################################################
{$REGION 'TABELA CHECKLISTS'}
procedure TDM.TBChecklistsAfterInsert(DataSet: TDataSet);
begin
  TBChecklistsCHK_DTCADASTRO.Value:=ServerDate;
  TBChecklistsCHK_HRCADASTRO.Value:=ServerTime;
  TBChecklistsCHK_STATUS.Value:='A';
end;

procedure TDM.TBChecklistsBeforeEdit(DataSet: TDataSet);
begin
  if FormChecklists<>nil then
  FormMain.SetFields(FormChecklists,True);
end;

procedure TDM.TBChecklistsBeforeInsert(DataSet: TDataSet);
begin
  if (FormChecklists<>nil) and (FormChecklists.Active) then
  begin
    FormMain.SetFields(FormChecklists,True);
    FormChecklists.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBChecklistsBeforePost(DataSet: TDataSet);
begin
  TBChecklistsCHK_DTATUALIZACAO.Value:=ServerDate;
  TBChecklistsCHK_HRATUALIZACAO.Value:=ServerTime;
  TBChecklistsCHK_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSChecklistsStateChange(Sender: TObject);
begin
  if TBChecklists.State in [dsInsert, dsEdit] then
  begin
    if FormChecklists<>nil then
    begin
      FormChecklists.Localizar1.Enabled:=False;
      FormChecklists.Localizar1Button.Enabled:=False;
      FormChecklists.Relatorios2.Enabled:=False;
      FormChecklists.Relatorios2Button.Enabled:=False;
      FormChecklists.BitBtn1.Enabled:=False;
      FormChecklists.BitBtn2.Enabled:=False;
    end;
  end else
  begin
    if FormChecklists<>nil then
    begin
      FormChecklists.Localizar1.Enabled:=True;
      FormChecklists.Localizar1Button.Enabled:=True;
      FormChecklists.Relatorios2.Enabled:=True;
      FormChecklists.Relatorios2Button.Enabled:=True;
      FormChecklists.BitBtn1.Enabled:=True;
      FormChecklists.BitBtn2.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormChecklists);
      FormMain.SetFields(FormChecklists,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CHECKLISTS ITENS                                                           //
//##############################################################################
{$REGION 'TABELA CHECKLISTSITENS'}
procedure TDM.TBChecklistsItensAfterInsert(DataSet: TDataSet);
begin
  TBChecklistsItensCKI_CHECKLIST.Value:=TBChecklistsCHK_CODIGO.Value;
  TBChecklistsItensCKI_STATUS.Value:='A';
end;
{$ENDREGION}

//##############################################################################
// CIDADES                                                                    //
//##############################################################################
{$REGION 'TABELA CIDADES'}
procedure TDM.TBCidadesBeforeEdit(DataSet: TDataSet);
begin
  if FormEnderecos<>nil then
  FormMain.SetFields(FormEnderecos,True);
end;

procedure TDM.TBCidadesBeforeInsert(DataSet: TDataSet);
begin
  if (FormEnderecos<>nil) and (FormEnderecos.Active) then
  begin
    FormMain.SetFields(FormEnderecos,True);
    FormEnderecos.DBEdit30.SetFocus;
  end;
end;

procedure TDM.DSCidadesStateChange(Sender: TObject);
begin
  if TBCidades.State in [dsInsert, dsEdit] then
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=False;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=False;
      FormEnderecos.Localizar1.Enabled:=False;
      FormEnderecos.Localizar1Button.Enabled:=False;
      FormEnderecos.Relatorios1.Enabled:=False;
      FormEnderecos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=True;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=True;
      FormEnderecos.Localizar1.Enabled:=True;
      FormEnderecos.Localizar1Button.Enabled:=True;
      FormEnderecos.Relatorios1.Enabled:=True;
      FormEnderecos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEnderecos);
      FormMain.SetFields(FormEnderecos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TABELA DE CLASSIFICACOES FISCAIS                                           //
//##############################################################################
{$REGION 'TABELA CLASSFISCAL'}
procedure TDM.TBClassFiscalAfterInsert(DataSet: TDataSet);
begin
  TBClassFiscalCLF_ALIQUOTANACIONAL.Value:=0;
  TBClassFiscalCLF_ALIQUOTAIMPORTACAO.Value:=0;
  TBClassFiscalCLF_DTCADASTRO.Value:=ServerDate;
  TBClassFiscalCLF_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBClassFiscalBeforeEdit(DataSet: TDataSet);
begin
  if FormClassFiscal<>nil then
  FormMain.SetFields(FormClassFiscal,True);
end;

procedure TDM.TBClassFiscalBeforeInsert(DataSet: TDataSet);
begin
  if FormClassFiscal<>nil then
  begin
    FormMain.SetFields(FormClassFiscal,True);
    FormClassFiscal.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBClassFiscalBeforePost(DataSet: TDataSet);
begin
  TBClassFiscalCLF_DTATUALIZACAO.Value:=ServerDate;
  TBClassFiscalCLF_HRATUALIZACAO.Value:=ServerTime;
  TBClassFiscalCLF_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSClassFiscalStateChange(Sender: TObject);
begin
  if TBClassFiscal.State in [dsInsert, dsEdit] then
  begin
    if FormClassFiscal<>nil then
    begin
      FormClassFiscal.ImportarDadosDaPlanilhaDoIBPT1.Enabled:=False;
      FormClassFiscal.ImportarDadosDaPlanilhaDoIBPT1Button.Enabled:=False;
      FormClassFiscal.Localizar1.Enabled:=False;
      FormClassFiscal.Localizar1Button.Enabled:=False;
      FormClassFiscal.Relatorios2.Enabled:=False;
      FormClassFiscal.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormClassFiscal<>nil then
    begin
      FormClassFiscal.ImportarDadosDaPlanilhaDoIBPT1.Enabled:=True;
      FormClassFiscal.ImportarDadosDaPlanilhaDoIBPT1Button.Enabled:=True;
      FormClassFiscal.Localizar1.Enabled:=True;
      FormClassFiscal.Localizar1Button.Enabled:=True;
      FormClassFiscal.Relatorios2.Enabled:=True;
      FormClassFiscal.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormClassFiscal);
      FormMain.SetFields(FormClassFiscal,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CLASSTRIB                                                                  //
//##############################################################################
{$REGION 'TABELA CLASSTRIB'}
procedure TDM.TBClassTribAfterInsert(DataSet: TDataSet);
begin
  TBClassTribCLT_ALIQCBSRED.Value:=0;
  TBClassTribCLT_ALIQIBSRED.Value:=0;
  TBClassTribCLT_CREDITOPRESUMIDO.Value:='N';
  TBClassTribCLT_DOCBPE.Value:='N';
  TBClassTribCLT_DOCBPETA.Value:='N';
  TBClassTribCLT_DOCBPETM.Value:='N';
  TBClassTribCLT_DOCCTE.Value:='N';
  TBClassTribCLT_DOCCTEOS.Value:='N';
  TBClassTribCLT_DOCDERE.Value:='N';
  TBClassTribCLT_DOCNFAG.Value:='N';
  TBClassTribCLT_DOCNFCE.Value:='N';
  TBClassTribCLT_DOCNFCOM.Value:='N';
  TBClassTribCLT_DOCNFE.Value:='N';
  TBClassTribCLT_DOCNFEABI.Value:='N';
  TBClassTribCLT_DOCNFGAS.Value:='N';
  TBClassTribCLT_DOCNFSE.Value:='N';
  TBClassTribCLT_DOCNFSEVIA.Value:='N';
  TBClassTribCLT_DOCNF3E.Value:='N';
  TBClassTribCLT_DTCADASTRO.Value:=ServerDate;
  TBClassTribCLT_ESTORNOCREDITO.Value:='N';
  TBClassTribCLT_HRCADASTRO.Value:=ServerTime;
  TBClassTribCLT_MONODIFERIMENTO.Value:='N';
  TBClassTribCLT_MONOFASICO.Value:='N';
  TBClassTribCLT_MONORETENCAO.Value:='N';
  TBClassTribCLT_MONORETIDO.Value:='N';
  TBClassTribCLT_REDBASE.Value:='N';
  TBClassTribCLT_TRIBUTACAOREGULAR.Value:='N';
end;

procedure TDM.TBClassTribBeforeEdit(DataSet: TDataSet);
begin
  if FormClassTrib<>nil then
  FormMain.SetFields(FormClassTrib,True);
end;

procedure TDM.TBClassTribBeforeInsert(DataSet: TDataSet);
begin
  if FormClassTrib<>nil then
  begin
    FormMain.SetFields(FormClassTrib,True);
    FormClassTrib.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBClassTribBeforePost(DataSet: TDataSet);
begin
  TBClassTribCLT_DTATUALIZACAO.Value:=ServerDate;
  TBClassTribCLT_HRATUALIZACAO.Value:=ServerTime;
  TBClassTribCLT_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSClassTribStateChange(Sender: TObject);
begin
  if TBClassTrib.State in [dsInsert, dsEdit] then
  begin
    if FormClassTrib<>nil then
    begin
      FormClassTrib.AtualizarClassTribComARF1.Enabled:=False;
      FormClassTrib.AtualizarClassTribComARF1Button.Enabled:=False;
      FormClassTrib.Localizar1.Enabled:=False;
      FormClassTrib.Localizar1Button.Enabled:=False;
      FormClassTrib.Relatorios2.Enabled:=False;
      FormClassTrib.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormClassTrib<>nil then
    begin
      FormClassTrib.AtualizarClassTribComARF1.Enabled:=True;
      FormClassTrib.AtualizarClassTribComARF1Button.Enabled:=True;
      FormClassTrib.Localizar1.Enabled:=True;
      FormClassTrib.Localizar1Button.Enabled:=True;
      FormClassTrib.Relatorios2.Enabled:=True;
      FormClassTrib.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormClassTrib);
      FormMain.SetFields(FormClassTrib,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CLIENTES                                                                   //
//##############################################################################
{$REGION 'TABELA CLIENTES'}
procedure TDM.TBClientesAfterInsert(DataSet: TDataSet);
begin
  TBClientesCLI_ATIVIDADE.Value:=TBParametrosPAR_CLI_ATIVIDADE.Value;
  TBClientesCLI_ATUALIZAR.Value:='S';
  TBClientesCLI_BLOQUEARVENDA.Value:=TBParametrosPAR_CLI_BLOQUEARVENDA.Value;
  TBClientesCLI_CLASSIFICACAO.Value:='A';
  TBClientesCLI_CONDICAO.Value:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBClientesCLI_CONTRIBUINTEICMS.Value:='9 - NAO CONTRIBUINTE';
  TBClientesCLI_DESCONTO.Value:=0;
  TBClientesCLI_DIACOBRANCA.Value:=1;
  TBClientesCLI_DTCADASTRO.Value:=ServerDate;
  TBClientesCLI_ENQUADRAMENTO.Value:='SIMPLES NACIONAL';
  TBClientesCLI_ESTADOCIVIL.Value:='NAO TEM';
  TBClientesCLI_FONE1.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBClientesCLI_FONE2.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBClientesCLI_FONE3.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBClientesCLI_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value; // '0 - EMITENTE';
  TBClientesCLI_HRCADASTRO.Value:=ServerTime;
  TBClientesCLI_LIMITECREDITO.Value:=TBParametrosPAR_LIMITECREDITO.Value;
  TBClientesCLI_LOCALESTUDA.Value:=TBParametrosPAR_LOCALESTUDAPADRAO.Value;
  TBClientesCLI_LOCALTRABALHO.Value:=TBParametrosPAR_LOCALPADRAO.Value;
  TBClientesCLI_MAILING.Value:=TBParametrosPAR_CLI_MAILING.Value;
  TBClientesCLI_MENSALISTA.Value:='N';
  TBClientesCLI_PASSWORD.Value:=MD5Print(MD5String('RUNTIME'));
  TBClientesCLI_PONTOS.Value:=0;
  TBClientesCLI_RECEBEAVISOS.Value:='S';
  TBClientesCLI_REPOSICOES.Value:=0;
  TBClientesCLI_SEXO.Value:='-';
  TBClientesCLI_STATUS.Value:='A';
  TBClientesCLI_TABELAPRECO.Value:='V';
  TBClientesCLI_TAXA.Value:=TBParametrosPAR_TAXAPADRAO.Value;
  TBClientesCLI_TELEVENDA.Value:=TBParametrosPAR_CLI_TELEVENDA.Value;
  TBClientesCLI_TIPOCLIENTE.Value:='C';
  TBClientesCLI_TIPOCONSUMIDOR.Value:=TBParametrosPAR_NFETIPOCONSUMIDOR.Value;
  TBClientesCLI_TIPOPESSOA.Value:='F';
  TBClientesCLI_TRANSPORTADORA.Value:=TBParametrosPAR_TRANSPORTADORAPADRAO.Value;
  TBClientesCLI_VENDEDOR.Value:=TBParametrosPAR_CLI_VENDEDOR.Value;

  //campos derivados.
  TBClientesATI_DESCRICAO.Value :=GetRegistro('ATIVIDADES','ATI_CODIGO',TBParametrosPAR_CLI_ATIVIDADE.Value).FieldByName('ATI_DESCRICAO').Value;
  TBClientesCPG_DESCRICAO.Value :=GetRegistro('CONDICOES','CPG_CODIGO',TBParametrosPAR_CONDICAOPADRAO.Value).FieldByName('CPG_DESCRICAO').Value;
  TBClientesFOR_NOME.Value      :=GetRegistro('FORNECEDORES','FOR_CODIGO',TBParametrosPAR_TRANSPORTADORAPADRAO.Value).FieldByName('FOR_NOME').Value;
  TBClientesLCA_DESCRICAO.Value :=GetRegistro('LOCAIS','LCA_CODIGO',TBParametrosPAR_LOCALPADRAO.Value).FieldByName('LCA_DESCRICAO').Value;
  TBClientesLCA_DESCRICAO1.Value:=GetRegistro('LOCAIS','LCA_CODIGO',TBParametrosPAR_LOCALESTUDAPADRAO.Value).FieldByName('LCA_DESCRICAO').Value;
  TBClientesMAI_DESCRICAO.Value :=GetRegistro('MAILINGS','MAI_CODIGO',TBParametrosPAR_CLI_MAILING.Value).FieldByName('MAI_DESCRICAO').Value;
  TBClientesTAX_DESCRICAO.Value :=GetRegistro('TAXAS','TAX_CODIGO',TBParametrosPAR_TAXAPADRAO.Value).FieldByName('TAX_DESCRICAO').Value;
  TBClientesTAX_VALOR.Value     :=GetRegistro('TAXAS','TAX_CODIGO',TBParametrosPAR_TAXAPADRAO.Value).FieldByName('TAX_VALOR').AsBCD;
  TBClientesVEN_NOME.Value      :=GetRegistro('VENDEDORES','VEN_CODIGO',TBParametrosPAR_CLI_VENDEDOR.Value).FieldByName('VEN_NOME').Value;
  TBClientesVEN_NOME1.Value     :=GetRegistro('VENDEDORES','VEN_CODIGO',TBParametrosPAR_CLI_TELEVENDA.Value).FieldByName('VEN_NOME').Value;
end;

procedure TDM.TBClientesBeforeEdit(DataSet: TDataSet);
begin
  if FormClientes<>nil then
  FormMain.SetFields(FormClientes,True);
end;

procedure TDM.TBClientesBeforeInsert(DataSet: TDataSet);
begin
  if FormClientes<>nil then
  begin
    FormMain.SetFields(FormClientes,True);
    FormClientes.PageControl1.ActivePageIndex:=0;
    FormClientes.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBClientesBeforePost(DataSet: TDataSet);
begin
  TBClientesCLI_ATUALIZAR.Value:='S';
  if AtualizarClienteDataAtualizacaoUsuario=True then
  begin
    TBClientesCLI_DTATUALIZACAO.Value:=ServerDate;
    TBClientesCLI_HRATUALIZACAO.Value:=ServerTime;
    TBClientesCLI_USUARIO.Value:=UsuarioLogin;
  end else
  AtualizarClienteDataAtualizacaoUsuario:=True;
//  if TBClientesCLI_ENDERECOCOB.IsNull then //copia o endereco para o endereco de cobrança caso o de cobranca esteja vazio.
//  begin
//    TBClientesCLI_ENDERECOCOB.Value:=TBClientesCLI_ENDERECO.Value;
//    TBClientesCLI_NUMEROCOB.Value:=TBClientesCLI_NUMERO.Value;
//    TBClientesCLI_BAIRROCOB.Value:=TBClientesCLI_BAIRRO.Value;
//    TBClientesCLI_CIDADECOB.Value:=TBClientesCLI_CIDADE.Value;
//    TBClientesCLI_CIDADECODIGOCOB.Value:=TBClientesCLI_CIDADECODIGO.Value;
//    TBClientesCLI_ESTADOCOB.Value:=TBClientesCLI_ESTADO.Value;
//    TBClientesCLI_ESTADOCODIGOCOB.Value:=TBClientesCLI_ESTADOCODIGO.Value;
//    TBClientesCLI_CEPCOB.Value:=TBClientesCLI_CEP.Value;
//    TBClientesCLI_COMPLEMENTOCOB.Value:=TBClientesCLI_COMPLEMENTO.Value;
//    TBClientesCLI_PAISCOB.Value:=TBClientesCLI_PAIS.Value;
//    TBClientesCLI_PAISCODIGOCOB.Value:=TBClientesCLI_PAISCODIGO.Value;
//  end;

//  if LimparFormatacao(TBClientesCLI_CNPJCOB.Value)='' then
//  TBClientesCLI_CNPJCOB.Value:=TBClientesCLI_CNPJ.Value;

//  if (LimparFormatacao(TBClientesCLI_IECOB.Value)='') then
//  TBClientesCLI_IECOB.Value:=TBClientesCLI_IE.Value;

  //TBClientesCLI_TIPOPESSOA.Value:='F';
  if (LimparFormatacao(TBClientesCLI_CPF.Value)<>'') and (LimparFormatacao(TBClientesCLI_CNPJ.Value)='') then
  TBClientesCLI_TIPOPESSOA.Value:='F';

  if (LimparFormatacao(TBClientesCLI_CPF.Value)='') and (LimparFormatacao(TBClientesCLI_CNPJ.Value)<>'') then
  TBClientesCLI_TIPOPESSOA.Value:='J';

  if (TBClientesCLI_TIPOPESSOA.Value='J') and (TBClientesCLI_IE.Value<>'') then
  TBClientesCLI_CONTRIBUINTEICMS.Value:='1 - CONTRIBUINTE ICMS';

  TBClientesCLI_NOME.Value:=RemoveAcentos(Trim(TBClientesCLI_NOME.Value));

  if TBClientesCLI_MENSALISTA.Value='S' then
  begin
    TBCondicoes.Close;
    TBCondicoes.ParamByName('codigo').AsInteger:=TBClientesCLI_CONDICAO.Value;
    TBCondicoes.Open;

    if TBCondicoesCPG_TOTALPARCELAS.Value>1 then
    begin
      MessageDlg('A condição de pagamento padrão para este cliente possui mais de uma parcela.'+#13#10+
                 'Os clientes mensalistas só poderão ter uma condição com uma única parcela.',mtWarning,[mbOk],0);
      TBClientesCLI_CONDICAO.Clear;
      TBClientesCPG_DESCRICAO.Clear;
      Exit;
    end;

    if TBCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      MessageDlg('A condição de pagamento selecionada não está completamente configurada.'+#13#10+
        'Verifique a configuração das parcelas desta condição de pagamento.',mtWarning,[mbOk],0);
      TBClientesCLI_CODIGO.Clear;
      TBClientesCPG_DESCRICAO.Clear;
      Exit;
    end;
  end;
end;

procedure TDM.DSClientesStateChange(Sender: TObject);
begin
  if TBClientes.State in [dsInsert, dsEdit] then
  begin
    if FormClientes<>nil then
    begin
      FormClientes.AlterarBloquearVenda1.Enabled:=False;
      FormClientes.AlterarBloquearVenda1Button.Enabled:=False;
      FormClientes.AlterarLimiteDeCredito1.Enabled:=False;
      FormClientes.AlterarLimiteDeCredito1Button.Enabled:=False;
      FormClientes.AlterarSenhaDoCliente1.Enabled:=False;
      FormClientes.AlterarSenhaDoCliente1Button.Enabled:=False;
      FormClientes.AnexosDoCliente1.Enabled:=False;
      FormClientes.AnexosDoCliente1Button.Enabled:=False;
      FormClientes.BuscarDoCadastroDeFornecedores1.Enabled:=False;
      FormClientes.BuscarDoCadastroDeFornecedores1Button.Enabled:=False;
      FormClientes.ClientesAniversariantesPorVendedor1.Enabled:=False;
      FormClientes.ClientesDevedoresAcimaDoLimiteDeCredito1.Enabled:=False;
      FormClientes.ClientesDevedoresAMaisDeXDias1.Enabled:=False;
      FormClientes.ClientesPorCidade1.Enabled:=False;
      FormClientes.ClientesPorEstado1.Enabled:=False;
      FormClientes.ClientesPorLocalDeEstudo1.Enabled:=False;
      FormClientes.ClientesPorLocalDeTrabalho1.Enabled:=False;
      FormClientes.ClientesPorMailing1.Enabled:=False;
      FormClientes.ClientesPorRamoDeAtividade1.Enabled:=False;
      FormClientes.ClientesQueNuncaCompraram1.Enabled:=False;
      FormClientes.ClientesSemComprasEmUmPeriodo1.Enabled:=False;
      FormClientes.ContatosDoCliente1.Enabled:=False;
      FormClientes.ContatosDoCliente1Button.Enabled:=False;
      FormClientes.Contrato1.Enabled:=False;
      FormClientes.HistoricosDoCliente1.Enabled:=False;
      FormClientes.HistoricosDoCliente1Button.Enabled:=False;
      FormClientes.Localizar1.Enabled:=False;
      FormClientes.Localizar1Button.Enabled:=False;
      FormClientes.Relatorios2.Enabled:=False;
      FormClientes.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormClientes<>nil then
    begin
      FormClientes.AlterarBloquearVenda1.Enabled:=True;
      FormClientes.AlterarBloquearVenda1Button.Enabled:=True;
      FormClientes.AlterarLimiteDeCredito1.Enabled:=True;
      FormClientes.AlterarLimiteDeCredito1Button.Enabled:=True;
      FormClientes.AlterarSenhaDoCliente1.Enabled:=True;
      FormClientes.AlterarSenhaDoCliente1Button.Enabled:=True;
      FormClientes.AnexosDoCliente1.Enabled:=True;
      FormClientes.AnexosDoCliente1Button.Enabled:=True;
      FormClientes.BuscarDoCadastroDeFornecedores1.Enabled:=True;
      FormClientes.BuscarDoCadastroDeFornecedores1Button.Enabled:=True;
      FormClientes.ClientesAniversariantesPorVendedor1.Enabled:=True;
      FormClientes.ClientesDevedoresAcimaDoLimiteDeCredito1.Enabled:=True;
      FormClientes.ClientesDevedoresAMaisDeXDias1.Enabled:=True;
      FormClientes.ClientesPorCidade1.Enabled:=True;
      FormClientes.ClientesPorEstado1.Enabled:=True;
      FormClientes.ClientesPorLocalDeEstudo1.Enabled:=True;
      FormClientes.ClientesPorLocalDeTrabalho1.Enabled:=True;
      FormClientes.ClientesPorMailing1.Enabled:=True;
      FormClientes.ClientesPorRamoDeAtividade1.Enabled:=True;
      FormClientes.ClientesQueNuncaCompraram1.Enabled:=True;
      FormClientes.ClientesSemComprasEmUmPeriodo1.Enabled:=True;
      FormClientes.ContatosDoCliente1.Enabled:=True;
      FormClientes.ContatosDoCliente1Button.Enabled:=True;
      FormClientes.Contrato1.Enabled:=True;
      FormClientes.HistoricosDoCliente1.Enabled:=True;
      FormClientes.HistoricosDoCliente1Button.Enabled:=True;
      FormClientes.Localizar1.Enabled:=True;
      FormClientes.Localizar1Button.Enabled:=True;
      FormClientes.Relatorios2.Enabled:=True;
      FormClientes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormClientes);
      FormMain.SetFields(FormClientes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// COMPONENTES                                                                //
//##############################################################################
//nada.

//##############################################################################
// COMPRAS - CONTROLE INTERNO DE COMPRAS                                      //
//##############################################################################
{$REGION 'TABELA COMPRAS'}
procedure TDM.CalcularTotaisCompra(DarPost: Boolean);
begin
  if TBComprasCOM_CALCULARTOTAIS.Value='S' then
  begin
    TBCompras.Edit;
    //atualiza o total dos PRODUTOS na tabela compras.
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select sum(COI_VALORTOTAL) as TOTALPRODUTOS from COMPRASITENS where COI_TIPO=''P'' and COI_COMPRA=:compra');
    QYAux.ParamByName('compra').AsInteger:=TBComprasCOM_CODIGO.Value;
    QYAux.Open;
    TBComprasCOM_TOTALPRODUTOS.Value:=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;

    //atualiza o total dos SERVICOS na tabela compras.
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select sum(COI_VALORTOTAL) as TOTALSERVICOS from COMPRASITENS where COI_TIPO=''S'' and COI_COMPRA=:compra');
    QYAux.ParamByName('compra').AsInteger:=TBComprasCOM_CODIGO.Value;
    QYAux.Open;
    TBComprasCOM_TOTALSERVICOS.Value:=QYAux.FieldByName('TOTALSERVICOS').AsExtended;

    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select '+
                  'sum(COI_BASEICMS) as BASEICMS, '+  //icmsbase
                  'sum(COI_BASEICMSST) as BASEICMSST, '+ //icmsbasest
                  'sum(COI_BASEISS) as BASEISS, '+
                  'sum(COI_BASEIPI) as BASEIPI, '+
                  'sum(COI_BASEPIS) as BASEPIS, '+
                  'sum(COI_BASEPISST) as BASEPISST, '+
                  'sum(COI_BASECOFINS) as BASECOFINS, '+
                  'sum(COI_BASECOFINSST) as BASECOFINSST, '+
                  'sum(COI_DESCVALOR) as VALORDESCONTO, '+
                  'sum(COI_PESOTOTAL) as PESOTOTAL, '+ //totalpeso.
                  //nao tem esse campo em compras. 'sum(COI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
                  'sum(COI_VALORACESSORIAS) as VALORACESSORIAS, '+
                  'sum(COI_VALORICMS) as VALORICMS, '+ //totalicms
                  'sum(COI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
                  'sum(COI_VALORICMSST) as VALORICMSST, '+
                  'sum(COI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
                  'sum(COI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
                  'sum(COI_VALORIPI) as VALORIPI, '+  //totalipi
                  'sum(COI_VALORISS) as VALORISS, '+  //totaliss
                  'sum(COI_VALORISSDEDUCAO) as VALORISSDEDUCAO, '+
                  'sum(COI_VALORISSDESCCOND) as VALORISSDESCCOND, '+
                  'sum(COI_VALORISSDESCINCOND) as VALORISSDESCINCOND, '+
                  'sum(COI_VALORISSOUTROS) as VALORISSOUTROS, '+
                  'sum(COI_VALORISSRETENCAO) as VALORISSRETENCAO, '+
                  'sum(COI_VALORPIS) as VALORPIS, '+
                  'sum(COI_VALORPISST) as VALORPISST, '+
                  'sum(COI_VALORCOFINS) as VALORCOFINS, '+
                  'sum(COI_VALORCOFINSST) as VALORCOFINSST, '+
                  //nao tem esse campo em compras. 'sum(COI_VALORCOMISSAO) as VALORCOMISSAO, '+
                  'sum(COI_VALORFCP) as VALORFCP, '+
                  'sum(COI_VALORFRETE) as VALORFRETE, '+
                  'sum(COI_VALORSEGURO) as VALORSEGURO, '+
                  'sum(COI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
                  'sum(COI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
                  'sum(COI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
                  'sum(COI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
                  'sum(COI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
                  'sum(COI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN '+
                  'from COMPRASITENS where COI_COMPRA=:compra');
    QYAux.ParamByName('compra').AsInteger:=TBComprasCOM_CODIGO.Value;
    QYAux.Open;

    //atualiza totais na tabela Compras.
    TBComprasCOM_BASECOFINS.Value        :=QYAux.FieldByName('BASECOFINS').AsExtended;
    TBComprasCOM_BASECOFINSST.Value      :=QYAux.FieldByName('BASECOFINSST').AsExtended;
    TBComprasCOM_BASEICMS.Value          :=QYAux.FieldByName('BASEICMS').AsExtended;
    TBComprasCOM_BASEICMSST.Value        :=QYAux.FieldByName('BASEICMSST').AsExtended;
    TBComprasCOM_BASEIPI.Value           :=QYAux.FieldByName('BASEIPI').AsExtended;
    TBComprasCOM_BASEISS.Value           :=QYAux.FieldByName('BASEISS').AsExtended;
    TBComprasCOM_BASEPIS.Value           :=QYAux.FieldByName('BASEPIS').AsExtended;
    TBComprasCOM_BASEPISST.Value         :=QYAux.FieldByName('BASEPISST').AsExtended;
    //nao tem esse campo em compras. TBComprasCOM_CUSTOTOTAL.Value:=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBComprasCOM_DESCVALOR.Value         :=QYAux.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    TBComprasCOM_PESOLIQ.Value           :=QYAux.FieldByName('PESOTOTAL').AsFloat;
    //TBComprasCOM_TOTALBRUTO.Value      :=QYAux.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBComprasCOM_TOTALCOFINS.Value       :=QYAux.FieldByName('VALORCOFINS').AsExtended;
    TBComprasCOM_TOTALCOFINSST.Value     :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
    //total comissao.
    TBComprasCOM_TOTALFCP.Value          :=QYAux.FieldByName('VALORFCP').AsExtended;
    TBComprasCOM_TOTALICMS.Value         :=QYAux.FieldByName('VALORICMS').AsExtended;
    TBComprasCOM_TOTALICMSCREDSN.Value   :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
    TBComprasCOM_TOTALICMSST.Value       :=QYAux.FieldByName('VALORICMSST').AsExtended;
    TBComprasCOM_TOTALICMSUFDEST.Value   :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
    TBComprasCOM_TOTALICMSUFREMET.Value  :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
    TBComprasCOM_TOTALIPI.Value          :=QYAux.FieldByName('VALORIPI').AsExtended;
    TBComprasCOM_TOTALISS.Value          :=QYAux.FieldByName('VALORISS').AsExtended;
    TBComprasCOM_TOTALISSDEDUCAO.Value   :=QYAux.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBComprasCOM_TOTALISSDESCCOND.Value  :=QYAux.FieldByName('VALORISSDESCCOND').AsExtended;
    TBComprasCOM_TOTALISSDESCINCOND.Value:=QYAux.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBComprasCOM_TOTALISSOUTROS.Value    :=QYAux.FieldByName('VALORISSOUTROS').AsExtended;
    TBComprasCOM_TOTALISSRETENCAO.Value  :=QYAux.FieldByName('VALORISSRETENCAO').AsExtended;
    TBComprasCOM_TOTALITENS.Value        :=TBComprasCOM_TOTALPRODUTOS.Value+TBComprasCOM_TOTALSERVICOS.Value; //total produtos e total serviços é calculado quando se insere um item.
    TBComprasCOM_TOTALPIS.Value          :=QYAux.FieldByName('VALORPIS').AsExtended;
    TBComprasCOM_TOTALPISST.Value        :=QYAux.FieldByName('VALORPISST').AsExtended;
    TBComprasCOM_TOTALTRIBUTOS.Value     :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBComprasCOM_TOTALTRIBUTOSEST.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2); //verificar
    TBComprasCOM_TOTALTRIBUTOSFED.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBComprasCOM_TOTALTRIBUTOSIMP.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBComprasCOM_TOTALTRIBUTOSMUN.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBComprasCOM_VALORDESPACES.Value     :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;
    TBComprasCOM_VALORFRETE.Value        :=QYAux.FieldByName('VALORFRETE').AsExtended;
    TBComprasCOM_VALORSEGURO.Value       :=QYAux.FieldByName('VALORSEGURO').AsExtended;

    TBComprasCOM_VALORTOTAL.Value:=TBComprasCOM_TOTALITENS.Value+TBComprasCOM_VALORFRETE.Value+TBComprasCOM_VALORSEGURO.Value+TBComprasCOM_VALORDESPACES.Value;
    //calcula nova porcentagem de desconto.
    if TBComprasCOM_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
      TBComprasCOM_DESCPORC.Value:=Decimais((100.0/(QYAux.FieldByName('VALORTOTALBRUTO').AsExtended+
                                           QYAux.FieldByName('VALORFRETE').AsExtended+
                                           QYAux.FieldByName('VALORSEGURO').AsExtended+
                                           QYAux.FieldByName('VALORACESSORIAS').AsExtended))*TBComprasCOM_DESCVALOR.AsExtended,8) else
      TBComprasCOM_DESCPORC.Value:=0;

    //calcula o valor total da venda com o valor do IPI e o valor do ICMSST. (que é por fora).
    TBComprasCOM_VALORTOTAL.Value:=TBComprasCOM_VALORTOTAL.Value+TBComprasCOM_TOTALIPI.Value+TBComprasCOM_TOTALICMSST.Value;

    QYAux.Close;
    if DarPost then
    begin
      TBCompras.Post;
      TBComprasItens.Close;
      TBComprasItens.Open;
    end;
  end;
end;

procedure TDM.TBComprasAfterEdit(DataSet: TDataSet);
begin
  if TBComprasCOM_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma compra já finalizada.',mtWarning,[mbOk],0);
    TBCompras.Cancel;
  end;
end;

procedure TDM.TBComprasAfterInsert(DataSet: TDataSet);
begin
  //localiza a CFOP padrao.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...

  TBComprasCOM_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBComprasCOM_CALCULARTOTAIS.Value:='S';
  TBComprasCOM_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBComprasCOM_CFOPDESC.Value:=TBNaturezasNAT_DESCRICAO.Value;
  TBComprasCOM_CONDICAO.Value:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBComprasCOM_DESCPORC.Value:=0;
  TBComprasCOM_DESCVALOR.Value:=0;
  //criar esse campo? TBComprasCOM_DESTACARIMPOSTOS.Value:=TBNaturezasNAT_DESTACARIMPOSTOS.Value;
  TBComprasCOM_DIAPREFERENCIAL.Value:=0;
  TBComprasCOM_DTCADASTRO.Value:=ServerDate;
  TBComprasCOM_DTENTRADA.Value:=TBComprasCOM_DTCADASTRO.Value;
  TBComprasCOM_DTPRESTSERVICO.Value:=TBComprasCOM_DTCADASTRO.Value;
  TBComprasCOM_ENTRADASAIDA.Value:=TBNaturezasNAT_ENTRADASAIDA.Value;
  TBComprasCOM_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value;
  TBComprasCOM_FORMAPAGTO.Value:='DINHEIRO';
  TBComprasCOM_HRCADASTRO.Value:=ServerTime;
  TBComprasCOM_MODELO.Value:=TBParametrosPAR_NFEMODELO.Value; //mesmo da NFe?
  TBComprasCOM_SERIE.Value:=TBParametrosPAR_NFESERIE.Value;
  TBComprasCOM_MOVIMENTAESTOQUE.Value:='S';
  TBComprasCOM_MOVIMENTAFINANCEIRO.Value:='S';
  TBComprasCOM_NOTADATA.Value:=ServerDate;
  TBComprasCOM_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada.
  TBComprasCOM_VALORDESPACES.Value:=0;
  TBComprasCOM_VALORFRETE.Value:=0;
  TBComprasCOM_VALORSEGURO.Value:=0;

  //campos derivados
  TBComprasCPG_DESCRICAO.Value:=GetRegistro('CONDICOES','CPG_CODIGO',TBParametrosPAR_CONDICAOPADRAO.Value).FieldByName('CPG_DESCRICAO').AsString;

  //if (FormCompras<>nil) and (TBComprasCOM_STATUS.Value='A') then
  //FormCompras.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  if TBComprasCOM_STATUS.Value='A' then
  SimularCondicaoCompra;
end;

procedure TDM.TBComprasBeforeEdit(DataSet: TDataSet);
begin
  if FormCompras<>nil then
  FormMain.SetFields(FormCompras,True);
end;

procedure TDM.TBComprasBeforeInsert(DataSet: TDataSet);
begin
  if FormCompras<>nil then
  begin
    FormMain.SetFields(FormCompras,True);
    FormCompras.PageControl1.ActivePageIndex:=0;
    FormCompras.DBEdit3.SetFocus;
  end;
end;

procedure TDM.TBComprasBeforePost(DataSet: TDataSet);
begin
  TBComprasCOM_DTATUALIZACAO.Value:=ServerDate;
  TBComprasCOM_HRATUALIZACAO.Value:=ServerTime;
  TBComprasCOM_USUARIO.Value:=UsuarioLogin;

  if TBComprasCOM_STATUS.Value='A' then
  SimularCondicaoCompra;

  CalcularTotaisCompra(False);
end;

procedure TDM.DSComprasStateChange(Sender: TObject);
begin
  if TBCompras.State in [dsInsert, dsEdit] then
  begin
    if FormCompras<>nil then
    begin
      //botoes de edicao de alguns campos.
      FormCompras.PngSpeedButton4.Enabled:=True;
      FormCompras.PngSpeedButton5.Enabled:=True;
      FormCompras.PngSpeedButton6.Enabled:=True;
      FormCompras.PngSpeedButton7.Enabled:=True;
      FormCompras.PngSpeedButton8.Enabled:=True; //efeito contrário.
      //...
      FormCompras.AlterarCampoMovimentacaoEstoque1.Enabled:=False;
      FormCompras.AlterarCampoMovimentacaoFinanceiro1.Enabled:=False;
      FormCompras.CancelarCompra1.Enabled:=False;
      FormCompras.CancelarCompra1Button.Enabled:=False;
      FormCompras.ComprasNoPeriodoAnalitico1.Enabled:=False;
      FormCompras.ComprasNoPeriodoPorFornecedorAnalitico1.Enabled:=False;
      FormCompras.ComprasNoPeriodoPorFornecedorSintetico1.Enabled:=False;
      FormCompras.ComprasNoPeriodoPorProduto1.Enabled:=False;
      FormCompras.ComprasNoPeriodoSintetico1.Enabled:=False;
      FormCompras.DuplicarPedido1.Enabled:=False;
      FormCompras.DuplicarPedido1Button.Enabled:=False;
      FormCompras.EnviarPedidoPorEmail1.Enabled:=False;
      FormCompras.EnviarPedidoPorEmail1Button.Enabled:=False;
      FormCompras.FinalizarCompra1.Enabled:=False;
      FormCompras.FinalizarCompra1Button.Enabled:=False;
      FormCompras.FrequenciaDeCompras1.Enabled:=False;
      FormCompras.ImportarArquivoXMLDUIMP1.Enabled:=False;
      //FormCompras.ImportarArquivoXMLDUIMP1Button.Enabled:=False;
      FormCompras.ImportarArquivoXMLNFe1.Enabled:=False;
      FormCompras.ImportarArquivoXMLNFe1Button.Enabled:=False;
      FormCompras.ImprimirPedidoDeCompras1.Enabled:=False;
      FormCompras.ImprimirPedidoDeCompras1Button.Enabled:=False;
      FormCompras.InutilizarCompra1.Enabled:=False;
      FormCompras.InutilizarCompra1Button.Enabled:=False;
      FormCompras.Localizar1.Enabled:=False;
      FormCompras.Localizar1Button.Enabled:=False;
      FormCompras.LocalizarCompraNoContasAPagar1.Enabled:=False;
      FormCompras.LocalizarCompraNoContasAPagar1Button.Enabled:=False;
      FormCompras.Relatorios2.Enabled:=False;
      FormCompras.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCompras<>nil then
    begin
      //botoes de edicao de alguns campos.
      FormCompras.PngSpeedButton4.Enabled:=False;
      FormCompras.PngSpeedButton5.Enabled:=False;
      FormCompras.PngSpeedButton6.Enabled:=False;
      FormCompras.PngSpeedButton7.Enabled:=False;
      FormCompras.PngSpeedButton8.Enabled:=False; //efeito contrário.
      //...
      FormCompras.AlterarCampoMovimentacaoEstoque1.Enabled:=True;
      FormCompras.AlterarCampoMovimentacaoFinanceiro1.Enabled:=True;
      FormCompras.CancelarCompra1.Enabled:=True;
      FormCompras.CancelarCompra1Button.Enabled:=True;
      FormCompras.ComprasNoPeriodoAnalitico1.Enabled:=True;
      FormCompras.ComprasNoPeriodoPorFornecedorAnalitico1.Enabled:=True;
      FormCompras.ComprasNoPeriodoPorFornecedorSintetico1.Enabled:=True;
      FormCompras.ComprasNoPeriodoPorProduto1.Enabled:=True;
      FormCompras.ComprasNoPeriodoSintetico1.Enabled:=True;
      FormCompras.DuplicarPedido1.Enabled:=True;
      FormCompras.DuplicarPedido1Button.Enabled:=True;
      FormCompras.EnviarPedidoPorEmail1.Enabled:=True;
      FormCompras.EnviarPedidoPorEmail1Button.Enabled:=True;
      FormCompras.FinalizarCompra1.Enabled:=True;
      FormCompras.FinalizarCompra1Button.Enabled:=True;
      FormCompras.FrequenciaDeCompras1.Enabled:=True;
      FormCompras.ImportarArquivoXMLDUIMP1.Enabled:=True;
      //FormCompras.ImportarArquivoXMLDUIMP1Button.Enabled:=True;
      FormCompras.ImportarArquivoXMLNFe1.Enabled:=True;
      FormCompras.ImportarArquivoXMLNFe1Button.Enabled:=True;
      FormCompras.ImprimirPedidodeCompras1.Enabled:=True;
      FormCompras.ImprimirPedidoDeCompras1Button.Enabled:=True;
      FormCompras.InutilizarCompra1.Enabled:=True;
      FormCompras.InutilizarCompra1Button.Enabled:=True;
      FormCompras.Localizar1.Enabled:=True;
      FormCompras.Localizar1Button.Enabled:=True;
      FormCompras.LocalizarCompraNoContasAPagar1.Enabled:=True;
      FormCompras.LocalizarCompraNoContasAPagar1Button.Enabled:=True;
      FormCompras.Relatorios2.Enabled:=True;
      FormCompras.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCompras);
      FormMain.SetFields(FormCompras,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// COMPRASITENS - CONTROLE INTERNO DE COMPRAS - ITENS                         //
//##############################################################################
{$REGION 'TABELA COMPRASITENS'}
procedure TDM.CalcularTotaisCompraItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  if TBComprasCOM_CALCULARTOTAIS.Value='S' then
  begin
    //calcula o valor bruto.
    TBComprasItensCOI_VALORTOTALBRUTO.Value:=Decimais((TBComprasItensCOI_QUANTIDADE.AsExtended*TBComprasItensCOI_VALORUNIT.AsExtended),2);
    //calcula o valor total com desconto.
    TBComprasItensCOI_VALORTOTAL.Value:=Decimais((TBComprasItensCOI_QUANTIDADE.AsExtended*TBComprasItensCOI_VALORUNIT.AsExtended),2);
    TBComprasItensCOI_DESCVALOR.Value:=Decimais((TBComprasItensCOI_VALORTOTAL.AsExtended/100.00)*TBComprasItensCOI_DESCPORC.AsExtended,2);
    TBComprasItensCOI_VALORTOTAL.Value:=TBComprasItensCOI_VALORTOTAL.Value-TBComprasItensCOI_DESCVALOR.Value;

    //calcula o peso total do produto. quantidade * peso = pesototal (liquido).
    TBComprasItensCOI_PESOTOTAL.Value:=TBComprasItensCOI_QUANTIDADE.AsExtended*TBComprasItensCOI_PESO.Value;

    //calcula valor do IPI.
    if TBComprasItensCOI_ALIQIPI.Value>0 then
    begin
      TBComprasItensCOI_BASEIPI.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      TBComprasItensCOI_VALORIPI.Value:=Decimais((TBComprasItensCOI_BASEIPI.AsExtended/100.00)*TBComprasItensCOI_ALIQIPI.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASEIPI.Value:=0;
      TBComprasItensCOI_VALORIPI.Value:=0;
    end;

    //calcula valor do ICMS - base=total+frete+seguro+acessorias-desconto.
    if TBComprasItensCOI_COMPOEBASEICMS.Value='S' then
    begin
      TBComprasItensCOI_BASEICMS.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      if TBComprasItensCOI_ALIQICMSRED.Value>0 then
      TBComprasItensCOI_BASEICMS.Value:=Decimais(TBComprasItensCOI_BASEICMS.AsExtended-((TBComprasItensCOI_BASEICMS.AsExtended/100)*TBComprasItensCOI_ALIQICMSRED.AsExtended),2);
      TBComprasItensCOI_VALORICMS.Value:=Decimais(((TBComprasItensCOI_BASEICMS.AsExtended/100)*TBComprasItensCOI_ALIQICMS.AsExtended),2);

      //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
      //40% de (base calculo / 100 * (aliq icms - interestadual))
      //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
      if TBEmpresaEMP_ESTADO.Value<>TBComprasCOM_ESTADO.Value then
      begin
        ICMS:=(TBComprasItensCOI_BASEICMS.AsExtended/100.00) * (Abs(TBComprasItensCOI_ALIQICMS.AsExtended-TBComprasItensCOI_ALIQICMSINTER.AsExtended));
        TBComprasItensCOI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBComprasItensCOI_ALIQICMSINTERPART.AsExtended,2);

        //calcula o valor do ICMS na UF do remetente
        TBComprasItensCOI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBComprasItensCOI_ALIQICMSINTERPART.AsExtended),2);

        //calcula o valor do FCP.
        TBComprasItensCOI_VALORFCP.Value:=(TBComprasItensCOI_BASEICMS.Value/100.00) * TBComprasItensCOI_ALIQFCP.Value;
      end;
    end else
    begin
      TBComprasItensCOI_BASEICMS.Value:=0;
      TBComprasItensCOI_VALORICMS.Value:=0;
      TBComprasItensCOI_VALORICMSUFDEST.Value:=0;
      TBComprasItensCOI_VALORICMSUFREMET.Value:=0;
      TBComprasItensCOI_VALORFCP.Value:=0;
    end;

    //calcula valor do ICMS ST. - base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
    if (TBComprasItensCOI_COMPOEBASEICMSST.Value='S') and (TBComprasItensCOI_ALIQICMSST.Value>0) then
    begin
      BC:=TBComprasItensCOI_VALORTOTAL.AsExtended+TBComprasItensCOI_VALORFRETE.AsExtended;
      if TBComprasItensCOI_ALIQICMSRED.Value<>0 then
      BC:=Decimais(BC-((BC/100)*TBComprasItensCOI_ALIQICMSRED.AsExtended),2);
      ICMS:=Decimais(((BC/100)*TBComprasItensCOI_ALIQICMS.AsExtended),2);
      TBComprasItensCOI_BASEICMSST.Value:=Decimais(((TBComprasItensCOI_VALORTOTAL.AsExtended+TBComprasItensCOI_VALORIPI.AsExtended+TBComprasItensCOI_VALORFRETE.AsExtended)+
                                                   ((TBComprasItensCOI_VALORTOTAL.AsExtended+TBComprasItensCOI_VALORIPI.AsExtended+TBComprasItensCOI_VALORFRETE.AsExtended)/100) * TBComprasItensCOI_ALIQICMSADICST.AsExtended),2);
      TBComprasItensCOI_VALORICMSST.Value:=Decimais(((TBComprasItensCOI_BASEICMSST.AsExtended/100)*TBComprasItensCOI_ALIQICMSST.AsExtended)-ICMS,2);
    end else
    begin
      TBComprasItensCOI_BASEICMSST.Value:=0;
      TBComprasItensCOI_VALORICMSST.Value:=0;
    end;

    //calcula o valor do crédito do simples nacional.
    if (TBComprasItensICM_CALCULACREDITOSN.Value='S') and (TBComprasItensNAT_CALCULACREDITOSN.Value='S') then
    begin
      TBComprasItensCOI_VALORICMSCREDSN.Value:=Decimais((TBComprasItensCOI_VALORTOTAL.AsExtended/100)*TBComprasCOM_ALIQICMSCREDSN.AsExtended,2);
    end else
    TBComprasItensCOI_VALORICMSCREDSN.Value:=0;
    //calcula valor do ISS.
    if TBComprasItensCOI_ALIQISS.Value>0 then
    begin
      TBComprasItensCOI_BASEISS.Value:=TBComprasItensCOI_VALORTOTAL.Value;
      TBComprasItensCOI_VALORISS.Value:=Decimais((TBComprasItensCOI_BASEISS.AsExtended/100)*TBComprasItensCOI_ALIQISS.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASEISS.Value:=0;
      TBComprasItensCOI_VALORISS.Value:=0;
    end;
    //calcula valor do PIS.
    if TBComprasItensCOI_ALIQPIS.Value>0 then
    begin
      TBComprasItensCOI_BASEPIS.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      TBComprasItensCOI_VALORPIS.Value:=Decimais((TBComprasItensCOI_BASEPIS.AsExtended/100)*TBComprasItensCOI_ALIQPIS.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASEPIS.Value:=0;
      TBComprasItensCOI_VALORPIS.Value:=0;
    end;
    //calcula valor do PISST.
    if TBComprasItensCOI_ALIQPISST.Value>0 then
    begin
      TBComprasItensCOI_BASEPISST.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      TBComprasItensCOI_VALORPISST.Value:=Decimais((TBComprasItensCOI_BASEPISST.AsExtended/100)*TBComprasItensCOI_ALIQPISST.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASEPISST.Value:=0;
      TBComprasItensCOI_VALORPISST.Value:=0;
    end;
    //calcula valor do COFINS.
    if TBComprasItensCOI_ALIQCOFINS.Value>0 then
    begin
      TBComprasItensCOI_BASECOFINS.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      TBComprasItensCOI_VALORCOFINS.Value:=Decimais((TBComprasItensCOI_BASECOFINS.AsExtended/100)*TBComprasItensCOI_ALIQCOFINS.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASECOFINS.Value:=0;
      TBComprasItensCOI_VALORCOFINS.Value:=0;
    end;
    //calcula valor do COFINS ST.
    if TBComprasItensCOI_ALIQCOFINSST.Value>0 then
    begin
      TBComprasItensCOI_BASECOFINSST.Value:=TBComprasItensCOI_VALORTOTAL.Value+TBComprasItensCOI_VALORFRETE.Value;
      TBComprasItensCOI_VALORCOFINSST.Value:=Decimais((TBComprasItensCOI_BASECOFINSST.AsExtended/100)*TBComprasItensCOI_ALIQCOFINSST.AsExtended,2);
    end else
    begin
      TBComprasItensCOI_BASECOFINSST.Value:=0;
      TBComprasItensCOI_VALORCOFINSST.Value:=0;
    end;
    //calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.
    TBClassFiscal.Close;
    TBClassFiscal.ParamByName('codigo').AsString:=TBNfeItensNFI_CLASSFISCAL.Value;
    TBClassFiscal.ParamByName('excecao').AsInteger:=TBNfeItensNFI_EXCECAO.Value;
    TBClassFiscal.Open;
    if (Copy(TBComprasItensCOI_ORIGEM.Value,1,1)='0') or
       (Copy(TBComprasItensCOI_ORIGEM.Value,1,1)='3') or
       (Copy(TBComprasItensCOI_ORIGEM.Value,1,1)='4') or
       (Copy(TBComprasItensCOI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
    TBComprasItensCOI_VALORTRIBUTOS.Value:=Decimais((TBComprasItensCOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2) else
    TBComprasItensCOI_VALORTRIBUTOS.Value:=Decimais((TBComprasItensCOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
  end;
end;

//a tabela de compras ainda nao tem o campo COI_SEQUENCIA.
//procedure TDM.RecriarSequencialItensCompra(Compra: Integer);
//begin
//  QYAux.Close;
//  QYAux.SQL.Clear;
//  QYAux.SQL.Add(
//    'merge into COMPRASITENS COMPRASITENS_DESTINO '+
//    'using ( '+
//    '  select '+
//    '    RDB$DB_KEY as db_key, '+
//    '    COI_CODIGO, '+
//    '    COI_VENDA, '+
//    '    row_number() over(partition by COI_COMPRA order by COI_COMPRA, COI_CODIGO) as SEQ '+
//    'from COMPRASITENS where COI_COMPRA=:codigo order by COI_COMPRA, COI_CODIGO) COMPRASITENS_ORIGEM '+
//    'on COMPRASITENS_DESTINO.RDB$DB_KEY = COMPRASITENS_ORIGEM.db_key '+
//    'when matched then update set COMPRASITENS_DESTINO.COI_SEQUENCIA = COMPRASITENS_ORIGEM.SEQ'
//  );
//  QYAux.ParamByName('codigo').AsInteger:=Compra;
//  QYAux.ExecSQL;
//
//  //atualiza o total de itens.
//  QYAux.Close;
//  QYAux.SQL.Clear;
//  QYAux.SQL.Add(
//    'update COMPRAS set COM_SEQUENCIAITEM=(select max(COI_SEQUENCIA) as SEQ from COMPRASITENS where COI_COMPRA=COM_CODIGO) where COM_CODIGO=:codigo'
//  );
//  QYAux.ParamByName('codigo').AsInteger:=Compra;
//  QYAux.ExecSQL;
//end;

procedure TDM.TBComprasItensAfterInsert(DataSet: TDataSet);
begin
  TBComprasItensCOI_ALIQICMS.Value:=0;
  TBComprasItensCOI_ALIQICMSRED.Value:=0;
  TBComprasItensCOI_ALIQICMSST.Value:=0;
  TBComprasItensCOI_ALIQIPI.Value:=0;
  TBComprasItensCOI_ALIQISS.Value:=0;
  TBComprasItensCOI_ALMOXARIFADO.Value:=TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  TBComprasItensCOI_BASEICMS.Value:=0;
  TBComprasItensCOI_BASEICMSRED.Value:=0;
  TBComprasItensCOI_BASEICMSST.Value:=0;
  TBComprasItensCOI_COMPRA.Value:=TBComprasCOM_CODIGO.Value;
  TBComprasItensCOI_CFOP.Value:=TBComprasCOM_CFOP.Value;
  TBComprasItensCOI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBComprasItensCOI_CONVERSAO.Value:=1;
  TBComprasItensCOI_DESCPORC.Value:=0;
  TBComprasItensCOI_DESCVALOR.Value:=0;
  TBComprasItensCOI_PAISISS.Value:=1058; //brasil.
  TBComprasItensCOI_PESO.Value:=0;
  TBComprasItensCOI_PRODUTOREAL.Value:=0;
  TBComprasItensCOI_QUANTIDADE.Value:=1;
  TBComprasItensCOI_VALORACESSORIAS.Value:=0;
  TBComprasItensCOI_VALORCOFINS.Value:=0;
  TBComprasItensCOI_VALORCOFINSST.Value:=0;
  TBComprasItensCOI_VALORFRETE.Value:=0;
  TBComprasItensCOI_VALORICMS.Value:=0;
  TBComprasItensCOI_VALORICMSST.Value:=0;
  TBComprasItensCOI_VALORICMSCREDSN.Value:=0;
  TBComprasItensCOI_VALORIPI.Value:=0;
  TBComprasItensCOI_VALORISS.Value:=0;
  TBComprasItensCOI_VALORISSDEDUCAO.Value:=0;
  TBComprasItensCOI_VALORISSDESCCOND.Value:=0;
  TBComprasItensCOI_VALORISSDESCINCOND.Value:=0;
  TBComprasItensCOI_VALORISSOUTROS.Value:=0;
  TBComprasItensCOI_VALORISSRETENCAO.Value:=0;
  TBComprasItensCOI_VALORPIS.Value:=0;
  TBComprasItensCOI_VALORPISST.Value:=0;
  TBComprasItensCOI_VALORSEGURO.Value:=0;
  TBComprasItensCOI_VALORTOTAL.Value:=0;
  TBComprasItensCOI_VALORTOTALBRUTO.Value:=0;
  TBComprasItensCOI_VALORTRIBUTOS.Value:=0;
  TBComprasItensCOI_VALORUNIT.Value:=0;

  TBComprasItensNAT_DESCRICAO.Value:=TBComprasCOM_CFOPDESC.Value;
  TBComprasItensNAT_CALCULACREDITOSN.Value:=TBComprasNAT_CALCULACREDITOSN.Value;
end;

procedure TDM.TBComprasItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisCompra(True);
end;

procedure TDM.TBComprasItensBeforePost(DataSet: TDataSet);
begin
  if TBComprasItensCOI_CONVERSAO.Value<=0 then
  TBComprasItensCOI_CONVERSAO.Value:=1;
  CalcularTotaisCompraItens(False); //o parametro nao está sendo utilizado.
end;
{$ENDREGION}

//##############################################################################
// CONDICOES - CONDICOES DE PAGAMENTOS.                                       //
//##############################################################################
{$REGION 'TABELA CONDICOES'}
procedure TDM.CalcularTotaisCondicoes(DarPost: Boolean);
begin
  TBCondicoes.Edit;
  //atualiza o total de parcelas e porcentagem na tabela condicoes.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select count(CPI_CODIGO) as TOTALPARCELAS, sum(CPI_PORCENTAGEM) as TOTALPORCENTAGEM from CONDICOESITENS where CPI_CONDICAO=:condicao');
  QYAux.ParamByName('condicao').AsInteger:=TBCondicoesCPG_CODIGO.Value;
  QYAux.Open;
  TBCondicoesCPG_TOTALPARCELAS.Value:=QYAux.FieldByName('TOTALPARCELAS').AsInteger;
  TBCondicoesCPG_TOTALPORCENTAGEM.Value:=QYAux.FieldByName('TOTALPORCENTAGEM').AsExtended;
  QYAux.Close;
  if DarPost then TBCondicoes.Post;
end;

procedure TDM.TBCondicoesAfterInsert(DataSet: TDataSet);
begin
  TBCondicoesCPG_ATUALIZAR.Value:='S';
  TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value:='S';
  TBCondicoesCPG_CUPOM.Value:='N';
  TBCondicoesCPG_DESCPORC.Value:=0;
  TBCondicoesCPG_DTCADASTRO.Value:=ServerDate;
  TBCondicoesCPG_FORMAPAGTO.Value:='BOLETO';
  TBCondicoesCPG_HRCADASTRO.Value:=ServerTime;
  TBCondicoesCPG_MEIOPAGAMENTO.Value:='15 - BOLETO BANCARIO';
  TBCondicoesCPG_MENSAL.Value:='N';
  TBCondicoesCPG_MOBILE.Value:='N';
  TBCondicoesCPG_PADRAO.Value:='N';
  TBCondicoesCPG_PARCELASIGUAIS.Value:='S';
  TBCondicoesCPG_STATUS.Value:='A';
  TBCondicoesCPG_TIPOINTEGRACAO.Value:='2 - PAGAMENTO NAO INTEGRADO';
  TBCondicoesCPG_TIPOPAGAMENTO.Value:='0 - PAGAMENTO A VISTA';
end;

procedure TDM.TBCondicoesBeforeEdit(DataSet: TDataSet);
begin
  if FormCondicoes<>nil then
  FormMain.SetFields(FormCondicoes,True);
end;

procedure TDM.TBCondicoesBeforeInsert(DataSet: TDataSet);
begin
  if FormCondicoes<>nil then
  begin
    FormMain.SetFields(FormCondicoes,True);
    FormCondicoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBCondicoesBeforePost(DataSet: TDataSet);
begin
  TBCondicoesCPG_ATUALIZAR.Value:='S';
  TBCondicoesCPG_DTATUALIZACAO.Value:=ServerDate;
  TBCondicoesCPG_HRATUALIZACAO.Value:=ServerTime;
  TBCondicoesCPG_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisCondicoes(False);
end;

procedure TDM.DSCondicoesStateChange(Sender: TObject);
begin
  if TBCondicoes.State in [dsInsert, dsEdit] then
  begin
    if FormCondicoes<>nil then
    begin
      FormCondicoes.AlterarItem1Button.Enabled:=False;
      FormCondicoes.DefinirComoPadraoNaNFCe1.Enabled:=False;
      FormCondicoes.DefinirComoPadraoNaNFCe1Button.Enabled:=False;
      FormCondicoes.EliminarItem1Button.Enabled:=False;
      FormCondicoes.IncluirItem1Button.Enabled:=False;
      FormCondicoes.Localizar1.Enabled:=False;
      FormCondicoes.Localizar1Button.Enabled:=False;
      FormCondicoes.Relatorios2.Enabled:=False;
      FormCondicoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCondicoes<>nil then
    begin
      FormCondicoes.AlterarItem1Button.Enabled:=True;
      FormCondicoes.DefinirComoPadraoNaNFCe1.Enabled:=True;
      FormCondicoes.DefinirComoPadraoNaNFCe1Button.Enabled:=True;
      FormCondicoes.EliminarItem1Button.Enabled:=True;
      FormCondicoes.IncluirItem1Button.Enabled:=True;
      FormCondicoes.Localizar1.Enabled:=True;
      FormCondicoes.Localizar1Button.Enabled:=True;
      FormCondicoes.Relatorios2.Enabled:=True;
      FormCondicoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCondicoes);
      FormMain.SetFields(FormCondicoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONDICOES ITENS - DETALHAMENTO DAS PARCELAS.                               //
//##############################################################################
{$REGION 'TABELA CONDICOESITENS'}
procedure TDM.TBCondicoesItensAfterDelete(DataSet: TDataSet);
begin
  CalcularTotaisCondicoes(True);
end;

procedure TDM.TBCondicoesItensAfterInsert(DataSet: TDataSet);
begin
  TBCondicoesItensCPI_CONDICAO.Value:=TBCondicoesCPG_CODIGO.Value;
  TBCondicoesItensCPI_DIAS.Value:=0;
  TBCondicoesItensCPI_PORCENTAGEM.Value:=0;
end;

procedure TDM.TBCondicoesItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisCondicoes(True);
  TBCondicoesItens.Refresh;
end;

procedure TDM.TBCondicoesItensBeforeEdit(DataSet: TDataSet);
begin
  if FormCondicoes<>nil then
  FormMain.SetFields(FormCondicoes,True);
end;

procedure TDM.TBCondicoesItensBeforeInsert(DataSet: TDataSet);
begin
  if FormCondicoes<>nil then
  begin
    FormMain.SetFields(FormCondicoes,True);
    FormCondicoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM.DSCondicoesItensStateChange(Sender: TObject);
begin
  if TBCondicoesItens.State in [dsInsert, dsEdit] then
  begin
    if FormCondicoes<>nil then
    begin
      FormCondicoes.CondicoesDePagamentosAnalitico1.Enabled:=False;
      FormCondicoes.CondicoesDePagamentosSintetico1.Enabled:=False;
      FormCondicoes.Localizar1.Enabled:=False;
      FormCondicoes.Localizar1Button.Enabled:=False;
      FormCondicoes.Relatorios2.Enabled:=False;
      FormCondicoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCondicoes<>nil then
    begin
      FormCondicoes.CondicoesDePagamentosAnalitico1.Enabled:=True;
      FormCondicoes.CondicoesDePagamentosSintetico1.Enabled:=True;
      FormCondicoes.Localizar1.Enabled:=True;
      FormCondicoes.Localizar1Button.Enabled:=True;
      FormCondicoes.Relatorios2.Enabled:=True;
      FormCondicoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCondicoes);
      FormMain.SetFields(FormCondicoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONTAS - CONTAS BANCARIAS                                                  //
//##############################################################################
{$REGION 'TABELA CONTAS'}
procedure TDM.AtualizarSaldoConta(Conta: Integer; Valor: Currency; EntradaSaida: String);
begin
  TBContas.Close;
  TBContas.ParamByName('codigo').AsInteger:=Conta;
  TBContas.Open;
  TBContas.Edit;
  if EntradaSaida='E' then TBContasCON_SALDO.Value:=TBContasCON_SALDO.Value+Valor else
  if EntradaSaida='S' then TBContasCON_SALDO.Value:=TBContasCON_SALDO.Value-Valor;
  TBContas.Post;
end;

procedure TDM.TBContasAfterInsert(DataSet: TDataSet);
begin
  TBContasCON_ATUALIZAR.Value:='S';
  TBContasCON_CONVENIO.Value:='NENHUM';
  TBContasCON_DESCONTOTIPO.Value:='SEM DESCONTO';
  TBContasCON_DTCADASTRO.Value:=ServerDate;
  TBContasCON_HRCADASTRO.Value:=ServerTime;
  TBContasCON_LAYOUT.Value:='CNAB 240';
  TBContasCON_MORATIPO.Value:='VALOR DIA';
  TBContasCON_MULTATIPO.Value:='PERCENTUAL';
  TBContasCON_PROTESTOTIPO.Value:='NENHUM';
  TBContasCON_SALDO.Value:=0; //saldo inicial.
  TBContasCON_STATUS.Value:='A';
end;

procedure TDM.TBContasBeforeEdit(DataSet: TDataSet);
begin
  if FormContas<>nil then
  FormMain.SetFields(FormContas,True);
end;

procedure TDM.TBContasBeforeInsert(DataSet: TDataSet);
begin
  if FormContas<>nil then
  begin
    FormMain.SetFields(FormContas,True);
    FormContas.DBEdit3.SetFocus;
  end;
end;

procedure TDM.TBContasBeforePost(DataSet: TDataSet);
begin
  TBContasCON_ATUALIZAR.Value:='S';
  TBContasCON_DTATUALIZACAO.Value:=ServerDate;
  TBContasCON_HRATUALIZACAO.Value:=ServerTime;
  TBContasCON_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSContasStateChange(Sender: TObject);
begin
  if TBContas.State in [dsInsert, dsEdit] then
  begin
    if FormContas<>nil then
    begin
      FormContas.Localizar1.Enabled:=False;
      FormContas.Localizar1Button.Enabled:=False;
      FormContas.Relatorios2.Enabled:=False;
      FormContas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormContas<>nil then
    begin
      FormContas.Localizar1.Enabled:=True;
      FormContas.Localizar1Button.Enabled:=True;
      FormContas.Relatorios2.Enabled:=True;
      FormContas.Relatorios2Button.Enabled:=True;
      FormMain.DesabilitarControles(FormContas);
      FormMain.SetFields(FormContas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONTASMOV - MOVIMENTACAO CONTAS BANCARIAS                                  //
//##############################################################################
{$REGION 'TABELA CONTASMOV'}
procedure TDM.TBContasMovAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBContasMov.Cancel;
end;

procedure TDM.TBContasMovAfterInsert(DataSet: TDataSet);
begin
  TBContasMovCMO_DTCADASTRO.Value:=ServerDate;
  TBContasMovCMO_DTMOVIMENTO.Value:=ServerDate;
  TBContasMovCMO_ENTRADASAIDA.Value:='E';
  TBContasMovCMO_HRCADASTRO.Value:=ServerTime;
  TBContasMovCMO_VALOR.Value:=0;
end;

procedure TDM.TBContasMovAfterPost(DataSet: TDataSet);
begin
  //só atualiza saldo da conta se for registro novo.
  if InserindoNovoRegistroContas then
  begin
    AtualizarSaldoConta(TBContasMovCMO_CONTA.Value,TBContasMovCMO_Valor.AsExtended,TBContasMovCMO_ENTRADASAIDA.Value);
    InserindoNovoRegistroContas:=False;
  end;
end;

procedure TDM.TBContasMovBeforeEdit(DataSet: TDataSet);
begin
  if FormContasMov<>nil then
  FormMain.SetFields(FormContasMov,True);
end;

procedure TDM.TBContasMovBeforeInsert(DataSet: TDataSet);
begin
  if FormContasMov<>nil then
  begin
    FormMain.SetFields(FormContasMov,True);
    FormContasMov.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBContasMovBeforePost(DataSet: TDataSet);
begin
  TBContasMovCMO_DTATUALIZACAO.Value:=ServerDate;
  TBContasMovCMO_HRATUALIZACAO.Value:=ServerTime;
  TBContasMovCMO_USUARIO.Value:=UsuarioLogin;
  //calcula dos saldos e atualiza o saldo na tabela contas. só calcula se for inserção de novo registro.
  if TBContasMov.State in [dsInsert] then
  begin
    //localiza a conta.
    TBContas.Close;
    TBContas.ParamByName('codigo').AsInteger:=TBContasMovCMO_CONTA.Value;
    TBContas.Open;
    //...
    TBContasMovCMO_SALDOANTERIOR.Value:=TBContasCON_SALDO.Value;
    if TBContasMovCMO_ENTRADASAIDA.Value='E' then TBContasMovCMO_SALDOPOSTERIOR.Value:=TBContasCON_SALDO.Value+TBContasMovCMO_VALOR.Value else
    if TBContasMovCMO_ENTRADASAIDA.Value='S' then TBContasMovCMO_SALDOPOSTERIOR.Value:=TBContasCON_SALDO.Value-TBContasMovCMO_VALOR.Value;
    InserindoNovoRegistroContas:=True;
  end;
  //atualiza o saldo da conta no evento afterpost.
end;

procedure TDM.DSContasMovDataChange(Sender: TObject; Field: TField);
begin
  //localiza para mostrar o saldo atual da conta.
  TBContas.Close;
  TBContas.ParamByName('codigo').AsInteger:=TBContasMovCMO_CONTA.Value;
  TBContas.Open;
end;

procedure TDM.DSContasMovStateChange(Sender: TObject);
begin
  if TBContasMov.State in [dsInsert, dsEdit] then
  begin
    if FormContasMov<>nil then
    begin
      FormContasMov.Localizar1.Enabled:=False;
      FormContasMov.Localizar1Button.Enabled:=False;
      FormContasMov.MovimentacoesPorConta1.Enabled:=False;
      FormContasMov.Relatorios2.Enabled:=False;
      FormContasMov.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormContasMov<>nil then
    begin
      FormContasMov.Localizar1.Enabled:=True;
      FormContasMov.Localizar1Button.Enabled:=True;
      FormContasMov.MovimentacoesPorConta1.Enabled:=True;
      FormContasMov.Relatorios2.Enabled:=True;
      FormContasMov.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormContasMov);
      FormMain.SetFields(FormContasMov,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONTATOS                                                                   //
//##############################################################################
{$REGION 'TABELA CONTATOS'}
procedure TDM.TBContatosAfterInsert(DataSet: TDataSet);
begin
  TBContatosCTT_CLIENTE.Value:=TBClientesCLI_CODIGO.Value;
  TBContatosCTT_DTCADASTRO.Value:=ServerDate;
  TBContatosCTT_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBContatosBeforeEdit(DataSet: TDataSet);
begin
  if FormContatos<>nil then
  FormMain.SetFields(FormContatos,True);
end;

procedure TDM.TBContatosBeforeInsert(DataSet: TDataSet);
begin
  if (FormContatos<>nil) and (FormContatos.Active) then
  begin
    FormMain.SetFields(FormContatos,True);
    FormContatos.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBContatosBeforePost(DataSet: TDataSet);
begin

  TBContatosCTT_DTATUALIZACAO.Value:=ServerDate;
  TBContatosCTT_HRATUALIZACAO.Value:=ServerTime;
  TBContatosCTT_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSContatosStateChange(Sender: TObject);
begin
  if TBContatos.State in [dsInsert, dsEdit] then
  begin
    if FormContatos<>nil then
    begin
      //nada.
    end;
  end else
  begin
    if FormContatos<>nil then
    begin
      //...
      FormMain.DesabilitarControles(FormContatos);
      FormMain.SetFields(FormContatos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONVENIOS                                                                  //
//##############################################################################
{$REGION 'TABELA CONVENIOS'}
procedure TDM.TBConveniosAfterInsert(DataSet: TDataSet);
begin
  TBConveniosCOV_DTCADASTRO.Value:=ServerDate;
  TBConveniosCOV_HRCADASTRO.Value:=ServerTime;
  TBConveniosCOV_STATUS.Value:='A';
end;

procedure TDM.TBConveniosBeforeEdit(DataSet: TDataSet);
begin
  if FormConvenios<>nil then
  FormMain.SetFields(FormConvenios,True);
end;

procedure TDM.TBConveniosBeforeInsert(DataSet: TDataSet);
begin
  if FormConvenios<>nil then
  begin
    FormMain.SetFields(FormConvenios,True);
    FormConvenios.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBConveniosBeforePost(DataSet: TDataSet);
begin
  TBConveniosCOV_DTATUALIZACAO.Value:=ServerDate;
  TBConveniosCOV_HRATUALIZACAO.Value:=ServerTime;
  TBConveniosCOV_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSConveniosStateChange(Sender: TObject);
begin
  if TBConvenios.State in [dsInsert, dsEdit] then
  begin
    if FormConvenios<>nil then
    begin
      FormConvenios.Localizar1.Enabled:=False;
      FormConvenios.Localizar1Button.Enabled:=False;
      FormConvenios.Relatorios2.Enabled:=False;
      FormConvenios.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormConvenios<>nil then
    begin
      FormConvenios.Localizar1.Enabled:=True;
      FormConvenios.Localizar1Button.Enabled:=True;
      FormConvenios.Relatorios2.Enabled:=True;
      FormConvenios.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormConvenios);
      FormMain.SetFields(FormConvenios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CREDITOPRES                                                                //
//##############################################################################
{$REGION 'TABELA CREDITOPRES'}
procedure TDM.TBCreditoPresAfterInsert(DataSet: TDataSet);
begin
  TBCreditoPresCPR_APROPRIADFE.Value:='S';
  TBCreditoPresCPR_APROPRIAEVENTO.Value:='S';
  TBCreditoPresCPR_CBS.Value:='S';
  TBCreditoPresCPR_DEDUZTOTAL.Value:='S';
  TBCreditoPresCPR_DTCADASTRO.Value:=ServerDate;
  TBCreditoPresCPR_HRCADASTRO.Value:=ServerTime;
  TBCreditoPresCPR_IBS.Value:='S';
end;
procedure TDM.TBCreditoPresBeforeEdit(DataSet: TDataSet);
begin
  if FormCreditoPresumido<>nil then
  FormMain.SetFields(FormCreditoPresumido,True);
end;

procedure TDM.TBCreditoPresBeforeInsert(DataSet: TDataSet);
begin
  if FormCreditoPresumido<>nil then
  begin
    FormMain.SetFields(FormCreditoPresumido,True);
    FormCreditoPresumido.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBCreditoPresBeforePost(DataSet: TDataSet);
begin
  TBCreditoPresCPR_DTATUALIZACAO.Value:=ServerDate;
  TBCreditoPresCPR_HRATUALIZACAO.Value:=ServerTime;
  TBCreditoPresCPR_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSCreditoPresStateChange(Sender: TObject);
begin
  if TBCreditoPres.State in [dsInsert, dsEdit] then
  begin
    if FormCreditoPresumido<>nil then
    begin
      FormCreditoPresumido.Localizar1.Enabled:=False;
      FormCreditoPresumido.Localizar1Button.Enabled:=False;
      FormCreditoPresumido.Relatorios2.Enabled:=False;
      FormCreditoPresumido.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCreditoPresumido<>nil then
    begin
      FormCreditoPresumido.Localizar1.Enabled:=True;
      FormCreditoPresumido.Localizar1Button.Enabled:=True;
      FormCreditoPresumido.Relatorios2.Enabled:=True;
      FormCreditoPresumido.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCreditoPresumido);
      FormMain.SetFields(FormCreditoPresumido,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CST                                                                        //
//##############################################################################
{$REGION 'TABELA CST'}
procedure TDM.TBCstAfterInsert(DataSet: TDataSet);
begin
  TBCstCST_AJUSTECREDITO.Value:='N';
  TBCstCST_CREDPRESIBSZFM.Value:='N';
  TBCstCST_DIFERIMENTO.Value:='N';
  TBCstCST_DTCADASTRO.Value:=ServerDate;
  TBCstCST_EXIGETRIBUTACAO.Value:='N';
  TBCstCST_HRCADASTRO.Value:=ServerTime;
  TBCstCST_MONOFASICA.Value:='N';
  TBCstCST_REDALIQUOTA.Value:='N';
  TBCstCST_REDBASE.Value:='N';
  TBCstCST_TRANSFCREDITO.Value:='N';
end;

procedure TDM.TBCstBeforeEdit(DataSet: TDataSet);
begin
  if FormCst<>nil then
  FormMain.SetFields(FormCst,True);
end;

procedure TDM.TBCstBeforeInsert(DataSet: TDataSet);
begin
  if FormCst<>nil then
  begin
    FormMain.SetFields(FormCst,True);
    FormCst.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBCstBeforePost(DataSet: TDataSet);
begin
  TBCstCST_DTATUALIZACAO.Value:=ServerDate;
  TBCstCST_HRATUALIZACAO.Value:=ServerTime;
  TBCstCST_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSCstStateChange(Sender: TObject);
begin
  if TBCst.State in [dsInsert, dsEdit] then
  begin
    if FormCst<>nil then
    begin
      FormCst.Localizar1.Enabled:=False;
      FormCst.Localizar1Button.Enabled:=False;
      FormCst.Relatorios2.Enabled:=False;
      FormCst.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCst<>nil then
    begin
      FormCst.Localizar1.Enabled:=True;
      FormCst.Localizar1Button.Enabled:=True;
      FormCst.Relatorios2.Enabled:=True;
      FormCst.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCst);
      FormMain.SetFields(FormCst,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CUPOM FISCAL                                                               //
//##############################################################################
{$REGION 'TABELA CUPOM'}
procedure TDM.TBCupomAfterInsert(DataSet: TDataSet);
begin
  TBCupomCUP_DTCADASTRO.Value:=ServerDate;
  TBCupomCUP_DTEMISSAO.Value:=ServerDate;
  TBCupomCUP_HRCADASTRO.Value:=ServerTime;
  TBCupomCUP_STATUS.Value:='A';
end;

procedure TDM.TBCupomBeforeEdit(DataSet: TDataSet);
begin
  if FormCupom<>nil then
  FormMain.SetFields(FormCupom,True);
end;

procedure TDM.TBCupomBeforeInsert(DataSet: TDataSet);
begin
  if FormCupom<>nil then
  begin
    FormMain.SetFields(FormCupom,True);
    FormCupom.DBEdit3.SetFocus;
  end;
end;

procedure TDM.TBCupomBeforePost(DataSet: TDataSet);
begin
  TBCupomCUP_DTATUALIZACAO.Value:=ServerDate;
  TBCupomCUP_HRATUALIZACAO.Value:=ServerTime;
  TBCupomCUP_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSCupomStateChange(Sender: TObject);
begin
  if TBCupom.State in [dsInsert, dsEdit] then
  begin
    if FormCupom<>nil then
    begin
      FormCupom.Localizar1.Enabled:=False;
      FormCupom.Localizar1Button.Enabled:=False;
      FormCupom.LocalizarNoContasAReceber1.Enabled:=False;
      FormCupom.LocalizarNoContasAReceber1Button.Enabled:=False;
      FormCupom.Relatorios2.Enabled:=False;
      FormCupom.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCupom<>nil then
    begin
      FormCupom.Localizar1.Enabled:=True;
      FormCupom.Localizar1Button.Enabled:=True;
      FormCupom.LocalizarNoContasAReceber1.Enabled:=True;
      FormCupom.LocalizarNoContasAReceber1Button.Enabled:=True;
      FormCupom.Relatorios2.Enabled:=True;
      FormCupom.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCupom);
      FormMain.SetFields(FormCupom,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CUPOM FISCAL ITENS                                                         //
//##############################################################################
//nada

//##############################################################################
// DESPESAS                                                                   //
//##############################################################################
{$REGION 'TABELA DESPESAS'}
procedure TDM.TBDespesasAfterInsert(DataSet: TDataSet);
begin
  TBDespesasDES_DTCADASTRO.Value:=ServerDate;
  TBDespesasDES_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBDespesasBeforeEdit(DataSet: TDataSet);
begin
  if FormDespesas<>nil then
  FormMain.SetFields(FormDespesas,True);
end;

procedure TDM.TBDespesasBeforeInsert(DataSet: TDataSet);
begin
  if FormDespesas<>nil then
  begin
    FormMain.SetFields(FormDespesas,True);
    FormDespesas.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBDespesasBeforePost(DataSet: TDataSet);
begin
  TBDespesasDES_DTATUALIZACAO.Value:=ServerDate;
  TBDespesasDES_HRATUALIZACAO.Value:=ServerTime;
  TBDespesasDES_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSDespesasStateChange(Sender: TObject);
begin
  if TBDespesas.State in [dsInsert, dsEdit] then
  begin
    if FormDespesas<>nil then
    begin
      FormDespesas.Localizar1.Enabled:=False;
      FormDespesas.Localizar1Button.Enabled:=False;
      FormDespesas.Relatorios2.Enabled:=False;
      FormDespesas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormDespesas<>nil then
    begin
      FormDespesas.Localizar1.Enabled:=True;
      FormDespesas.Localizar1Button.Enabled:=True;
      FormDespesas.Relatorios2.Enabled:=True;
      FormDespesas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormDespesas);
      FormMain.SetFields(FormDespesas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ECF                                                                        //
//##############################################################################
{$REGION 'TABELA ECF'}
procedure TDM.TBEcfAfterInsert(DataSet: TDataSet);
begin
  TBEcfECF_DTCADASTRO.Value:=ServerDate;
  TBEcfECF_HRCADASTRO.Value:=ServerTime;
  TBEcfECF_STATUS.Value:='A';
end;

procedure TDM.TBEcfBeforeEdit(DataSet: TDataSet);
begin
  if FormEcf<>nil then
  FormMain.SetFields(FormEcf,True);
end;

procedure TDM.TBEcfBeforeInsert(DataSet: TDataSet);
begin
  if FormEcf<>nil then
  begin
    FormMain.SetFields(FormEcf,True);
    FormEcf.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBEcfBeforePost(DataSet: TDataSet);
begin
  TBEcfECF_DTATUALIZACAO.Value:=ServerDate;
  TBEcfECF_HRATUALIZACAO.Value:=ServerTime;
  TBEcfECF_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSEcfStateChange(Sender: TObject);
begin
  if TBEcf.State in [dsInsert, dsEdit] then
  begin
    if FormEcf<>nil then
    begin
      FormEcf.Localizar1.Enabled:=False;
      FormEcf.Localizar1Button.Enabled:=False;
      FormEcf.Relatorios1.Enabled:=False;
      FormEcf.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEcf<>nil then
    begin
      FormEcf.Localizar1.Enabled:=True;
      FormEcf.Localizar1Button.Enabled:=True;
      FormEcf.Relatorios1.Enabled:=True;
      FormEcf.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEcf);
      FormMain.SetFields(FormEcf,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// EMPRESA                                                                    //
//##############################################################################
{$REGION 'TABELA EMPRESA'}
procedure TDM.TBEmpresaBeforePost(DataSet: TDataSet);
var S: String;
begin
  TBEmpresaEMP_HRATUALIZACAO.Value:=ServerTime;
  //salva as informações de liberação criptografadas na base de dados.
  if FormCadastro<>nil then
  begin
    TBEmpresaEMP_DATALIBERACAO.Value:=SenhaEncode(AnsiString(FormCadastro.MaskEdit1.Text),ChaveSenhaNEW);
    TBEmpresaEMP_DIASLIBERACAO.Value:=SenhaEncode(AnsiString(FormCadastro.Edit2.Text),ChaveSenhaNEW);
    TBEmpresaEMP_LEITURA.Value:=SenhaEncode(AnsiString(FormCadastro.ComboBox2.Text),ChaveSenhaNEW);
    TBEmpresaEMP_LIBERADO.Value:=SenhaEncode(AnsiString(FormCadastro.ComboBox1.Text),ChaveSenhaNEW);
    TBEmpresaEMP_LIMITEUSUARIOS.Value:=SenhaEncode(AnsiString(FormCadastro.Edit3.Text),ChaveSenhaNEW);
  end;
  //Gera um hash da concatenação dos campos abaixo.
  S:='RUNTIME_'+
     TBEmpresaEMP_CNPJ.Value+
     IntToStr(TBEmpresaEMP_CODIGOCLIENTE.Value)+
     IntToStr(TBEmpresaEMP_CODIGOSISTEMA.Value)+
     TBEmpresaEMP_DATALIBERACAO.Value+
     TBEmpresaEMP_DIASLIBERACAO.Value+
     TBEmpresaEMP_DATAULTUTILIZACAO.Value+
     TBEmpresaEMP_LIBERADO.Value+
     TBEmpresaEMP_LEITURA.Value+
     TBEmpresaEMP_LIMITEUSUARIOS.Value;
  TBEmpresaEMP_HASH.Value:=MD5Print(MD5String(S));
end;
{$ENDREGION}

//##############################################################################
// EQUIPAMENTOS                                                               //
//##############################################################################
{$REGION 'TABELA EQUIPAMENTOS'}
procedure TDM.TBEquipamentosAfterInsert(DataSet: TDataSet);
begin
  TBEquipamentosEQP_DTCADASTRO.Value:=ServerDate;
  TBEquipamentosEQP_HRCADASTRO.Value:=ServerTime;
  TBEquipamentosEQP_STATUS.Value:='A';
  TBEquipamentosEQP_TOTALFOTOS.Value:=0;
end;

procedure TDM.TBEquipamentosBeforeEdit(DataSet: TDataSet);
begin
  if FormEquipamentos<>nil then
  FormMain.SetFields(FormEquipamentos,True);
end;

procedure TDM.TBEquipamentosBeforeInsert(DataSet: TDataSet);
begin
  if FormEquipamentos<>nil then
  begin
    FormMain.SetFields(FormEquipamentos,True);
    FormEquipamentos.DBEdit17.SetFocus;
  end;
end;

procedure TDM.TBEquipamentosBeforeOpen(DataSet: TDataSet);
begin
  TBEquipamentosEQP_SERIE.EditMask:=TBParametrosPAR_SERVICOSSERIEMASK.Value; // 'aaa\-9999;1;_';
end;

procedure TDM.TBEquipamentosBeforePost(DataSet: TDataSet);
begin
  TBEquipamentosEQP_DTATUALIZACAO.Value:=ServerDate;
  TBEquipamentosEQP_HRATUALIZACAO.Value:=ServerTime;
  TBEquipamentosEQP_HASH.Value:=MD5Print(MD5String('EQP_'+TBEquipamentosEQP_CODIGO.Value.ToString));
  TBEquipamentosEQP_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSEquipamentosStateChange(Sender: TObject);
begin
  if TBEquipamentos.State in [dsInsert, dsEdit] then
  begin
    if FormEquipamentos<>nil then
    begin
      FormEquipamentos.Localizar1.Enabled:=False;
      FormEquipamentos.Localizar1Button.Enabled:=False;
      FormEquipamentos.Relatorios2.Enabled:=False;
      FormEquipamentos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormEquipamentos<>nil then
    begin
      FormEquipamentos.Localizar1.Enabled:=True;
      FormEquipamentos.Localizar1Button.Enabled:=True;
      FormEquipamentos.Relatorios2.Enabled:=True;
      FormEquipamentos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEquipamentos);
      FormMain.SetFields(FormEquipamentos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ESTADOS                                                                    //
//##############################################################################
{$REGION 'TABELA ESTADOS'}
procedure TDM.TBEstadosBeforeEdit(DataSet: TDataSet);
begin
  if FormEnderecos<>nil then
  FormMain.SetFields(FormEnderecos,True);
end;

procedure TDM.TBEstadosBeforeInsert(DataSet: TDataSet);
begin
  if (FormEnderecos<>nil) and (FormEnderecos.Active) then
  begin
    FormMain.SetFields(FormEnderecos,True);
    FormEnderecos.DBEdit25.SetFocus;
  end;
end;

procedure TDM.DSEstadosStateChange(Sender: TObject);
begin
  if TBEstados.State in [dsInsert, dsEdit] then
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=False;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=False;
      FormEnderecos.Localizar1.Enabled:=False;
      FormEnderecos.Localizar1Button.Enabled:=False;
      FormEnderecos.Relatorios1.Enabled:=False;
      FormEnderecos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=True;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=True;
      FormEnderecos.Localizar1.Enabled:=True;
      FormEnderecos.Localizar1Button.Enabled:=True;
      FormEnderecos.Relatorios1.Enabled:=True;
      FormEnderecos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEnderecos);
      FormMain.SetFields(FormEnderecos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ESTOQUE - MOVIMENTACAO DO ESTOQUE                                          //
//##############################################################################
{$REGION 'TABELA ESTOQUE'}
procedure TDM.TBEstoqueAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBEstoque.Cancel;
end;

procedure TDM.TBEstoqueAfterInsert(DataSet: TDataSet);
begin
  TBEstoqueEST_ALMOXARIFADO.Value:=TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  TBEstoqueEST_CONVERSAO.Value:=1;
  TBEstoqueEST_DATA.Value:=ServerDate;
  TBEstoqueEST_DTCADASTRO.Value:=ServerDate;
  TBEstoqueEST_HRCADASTRO.Value:=ServerTime;
  TBEstoqueEST_PRODUTOREAL.Value:=0;
  TBEstoqueEST_QUANTIDADE.Value:=1;
  TBEstoqueEST_QUANTIDADEREAL.Value:=1;
  TBEstoqueEST_TIPODOCTO.Value:='OUTROS';
  TBEstoqueEST_TRANSACAO.Value:=TBParametrosPAR_ESTOQUEESPADRAO.Value;
  TBEstoqueEST_VALORUNIT.Value:=0;
  TBEstoqueEST_VENDEDOR.Value:=UsuarioVendedor;
end;

procedure TDM.TBEstoqueAfterPost(DataSet: TDataSet);
var Campos: String;
begin
  //atualiza o saldo no estoque utilizando o QYAux, pois o TBProdutos não atualiza esses campos.
  if TBEstoqueEST_TRANSACAO.Value='E' then
  begin
    Campos:='PRO_ESTOQUEATUAL=(PRO_ESTOQUEATUAL + :quantidade)';

    //se for gerado movimento pela finalização de compra, então atualiza a data da ultima compra.
    if FormComprasFinalizar<>nil then
    Campos:=Campos+', PRO_DTULTCOMPRA=:dtultcompra, PRO_PRECOCUSTOULT=:precocustoult, PRO_PRECOCUSTOMEDIO=(:valorunit + PRO_PRECOCUSTO)/2';

    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('update PRODUTOS set '+Campos+' where PRO_CODIGO=:codigo');
    QYAux.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    QYAux.ParamByName('quantidade').AsFloat:=TBEstoqueEST_QUANTIDADE.AsExtended;

    if FormComprasFinalizar<>nil then
    begin
      QYAux.ParamByName('dtultcompra').AsDate:=TBComprasCOM_DTENTRADA.Value;
      QYAux.ParamByName('precocustoult').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
      QYAux.ParamByName('valorunit').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
    end;
    QYAux.ExecSQL;

    //atualiza saldo no almoxarifado.
    if TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',TBEstoqueEST_ALMOXARIFADO.Value,[]) then
    begin
      TBProdutosQtde.Edit;
      TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value+TBEstoqueEST_QUANTIDADE.Value;
      TBProdutosQtde.Post;
    end;
  end;
  if TBEstoqueEST_TRANSACAO.Value='S' then
  begin
    Campos:='PRO_ESTOQUEATUAL=(PRO_ESTOQUEATUAL - :quantidade)';

    //saida pela venda, nota ou nfe, atualiza o campo ultima data de venda, ultimo preco de venda e preco de venda medio.
    if ((FormVendasFinalizar<>nil) or (FormNotasFinalizar<>nil) or (FormNfeFinalizar<>nil)) then
    Campos:=Campos+', PRO_DTULTVENDA=:dtultvenda, PRO_PRECOVENDAULT=:precovendault, PRO_PRECOVENDAMEDIO=(:valorunit + PRO_PRECOVENDA)/2';

    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('update PRODUTOS set '+Campos+' where PRO_CODIGO=:codigo');
    QYAux.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    QYAux.ParamByName('quantidade').AsFloat:=TBEstoqueEST_QUANTIDADE.AsExtended;

    //se for gerado movimento pela finalização de venda, nota ou nfe, então atualiza a data da ultima venda.
    if FormVendasFinalizar<>nil then
    begin
      QYAux.ParamByName('dtultvenda').AsDate:=TBVendasVED_DTEMISSAO.Value;
      QYAux.ParamByName('precovendault').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
      QYAux.ParamByName('valorunit').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
    end else

    if FormNotasFinalizar<>nil then
    begin
      QYAux.ParamByName('dtultvenda').AsDate:=TBNotasNOT_DTEMISSAO.Value;
      QYAux.ParamByName('precovendault').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
      QYAux.ParamByName('valorunit').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
    end else

    if FormNfeFinalizar<>nil then
    begin
      QYAux.ParamByName('dtultvenda').AsDate:=TBNfeNFE_DTEMISSAO.Value;
      QYAux.ParamByName('precovendault').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
      QYAux.ParamByName('valorunit').AsFMTBCD:=TBEstoqueEST_VALORUNIT.AsExtended;
    end;

    QYAux.ExecSQL;

    //atualiza saldo no almoxarifado.
    if TBProdutosQtde.Locate('PRQ_ALMOXARIFADO',TBEstoqueEST_ALMOXARIFADO.Value,[]) then
    begin
      TBProdutosQtde.Edit;
      TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value-TBEstoqueEST_QUANTIDADE.Value;
      TBProdutosQtde.Post;
    end;
  end;
  TBProdutos.Close;
  TBProdutos.Open;
end;

procedure TDM.TBEstoqueBeforeEdit(DataSet: TDataSet);
begin
  if FormEstoque<>nil then
  FormMain.SetFields(FormEstoque,True);
end;

procedure TDM.TBEstoqueBeforeInsert(DataSet: TDataSet);
begin
  if FormEstoque<>nil then
  begin
    FormMain.SetFields(FormEstoque,True);
    FormEstoque.DBEdit2.SetFocus;
    CodigosOld:='';
  end;
end;

procedure TDM.TBEstoqueBeforePost(DataSet: TDataSet);
begin
  TBEstoqueEST_DTATUALIZACAO.Value:=ServerDate;
  TBEstoqueEST_HRATUALIZACAO.Value:=ServerTime;
  TBEstoqueEST_USUARIO.Value:=UsuarioLogin;
  //localiza o produto para pegar a quantidade (saldo anterior).
  TBProdutos.Close;
  TBProdutos.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
  TBProdutos.Open;
  TBEstoqueEST_ESTOQUEANTERIOR.Value:=TBProdutosPRO_ESTOQUEATUAL.Value;
  //...
  if TBEstoqueEST_TRANSACAO.Value='E' then
  TBEstoqueEST_ESTOQUEPOSTERIOR.Value:=TBEstoqueEST_ESTOQUEANTERIOR.Value+TBEstoqueEST_QUANTIDADE.Value else
  if TBEstoqueEST_TRANSACAO.Value='S' then
  TBEstoqueEST_ESTOQUEPOSTERIOR.Value:=TBEstoqueEST_ESTOQUEANTERIOR.Value-TBEstoqueEST_QUANTIDADE.Value;
end;

procedure TDM.DSEstoqueStateChange(Sender: TObject);
begin
  if TBEstoque.State in [dsInsert, dsEdit] then
  begin
    if FormEstoque<>nil then
    begin
      FormEstoque.Localizar1.Enabled:=False;
      FormEstoque.Localizar1Button.Enabled:=False;
      FormEstoque.MovimentacaoNoPeriodoPorFamilia1.Enabled:=False;
      FormEstoque.MovimentacaoNoPeriodoPorGrupo1.Enabled:=False;
      FormEstoque.MovimentacaoNoPeriodoPorProduto1.Enabled:=False;
      FormEstoque.MovimentacaoPorNumeroDoDocumento1.Enabled:=False;
      FormEstoque.Relatorios2.Enabled:=False;
      FormEstoque.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormEstoque<>nil then
    begin
      FormEstoque.Localizar1.Enabled:=True;
      FormEstoque.Localizar1Button.Enabled:=True;
      FormEstoque.MovimentacaoNoPeriodoPorFamilia1.Enabled:=True;
      FormEstoque.MovimentacaoNoPeriodoPorGrupo1.Enabled:=True;
      FormEstoque.MovimentacaoNoPeriodoPorProduto1.Enabled:=True;
      FormEstoque.MovimentacaoPorNumeroDoDocumento1.Enabled:=True;
      FormEstoque.Relatorios2.Enabled:=True;
      FormEstoque.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEstoque);
      FormMain.SetFields(FormEstoque,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ETAPAS                                                                     //
//##############################################################################
{$REGION 'TABELA ETAPAS'}
procedure TDM.TBEtapasAfterInsert(DataSet: TDataSet);
begin
  TBEtapasETP_DTCADASTRO.Value:=ServerDate;
  TBEtapasETP_HRCADASTRO.Value:=ServerTime;
  TBEtapasETP_TEMPO.Value:='00:00:00';
  TBEtapasETP_TEMPODEC.Value:=0;
  TBEtapasETP_TEMPOMIN.Value:=0;
end;

procedure TDM.TBEtapasBeforeEdit(DataSet: TDataSet);
begin
  if FormEtapas<>nil then
  FormMain.SetFields(FormEtapas,True);
end;

procedure TDM.TBEtapasBeforeInsert(DataSet: TDataSet);
begin
  if FormEtapas<>nil then
  begin
    FormMain.SetFields(FormEtapas,True);
    FormEtapas.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBEtapasBeforePost(DataSet: TDataSet);
begin
  TBEtapasETP_DTATUALIZACAO.Value:=ServerDate;
  TBEtapasETP_HRATUALIZACAO.Value:=ServerTime;
  TBEtapasETP_TEMPOMIN.Value:=HourToMin(TBEtapasETP_TEMPO.Value);
  TBEtapasETP_TEMPODEC.Value:=MinToDec(TBEtapasETP_TEMPOMIN.Value);
  TBEtapasETP_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSEtapasStateChange(Sender: TObject);
begin
  if TBEtapas.State in [dsInsert, dsEdit] then
  begin
    if FormEtapas<>nil then
    begin
      FormEtapas.Localizar1.Enabled:=False;
      FormEtapas.Localizar1Button.Enabled:=False;
      FormEtapas.Relatorios2.Enabled:=False;
      FormEtapas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormEtapas<>nil then
    begin
      FormEtapas.Localizar1.Enabled:=True;
      FormEtapas.Localizar1Button.Enabled:=True;
      FormEtapas.Relatorios2.Enabled:=True;
      FormEtapas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEtapas);
      FormMain.SetFields(FormEtapas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ETIQUETAS                                                                  //
//##############################################################################
{$REGION 'TABELA ETIQUETAS'}
procedure TDM.TBEtiquetasAfterInsert(DataSet: TDataSet);
begin
  TBEtiquetasETQ_DTCADASTRO.Value:=ServerDate;
  TBEtiquetasETQ_HRCADASTRO.Value:=ServerTime;
  TBEtiquetasETQ_STATUS.Value:='A';
end;

procedure TDM.TBEtiquetasBeforeEdit(DataSet: TDataSet);
begin
  if FormEtiquetas<>nil then
  FormMain.SetFields(FormEtiquetas,True);
end;

procedure TDM.TBEtiquetasBeforeInsert(DataSet: TDataSet);
begin
  if FormEtiquetas<>nil then
  begin
    FormMain.SetFields(FormEtiquetas,True);
    FormEtiquetas.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBEtiquetasBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBEtiquetasETQ_CODIGO.Value;
  TBEtiquetasETQ_DTATUALIZACAO.Value:=ServerDate;
  TBEtiquetasETQ_HRATUALIZACAO.Value:=ServerTime;
  TBEtiquetasETQ_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSEtiquetasStateChange(Sender: TObject);
begin
  if TBEtiquetas.State in [dsInsert, dsEdit] then
  begin
    if FormEtiquetas<>nil then
    begin
      FormEtiquetas.Localizar1.Enabled:=False;
      FormEtiquetas.Localizar1Button.Enabled:=False;
      FormEtiquetas.Relatorios2.Enabled:=False;
      FormEtiquetas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormEtiquetas<>nil then
    begin
      FormEtiquetas.Localizar1.Enabled:=True;
      FormEtiquetas.Localizar1Button.Enabled:=True;
      FormEtiquetas.Relatorios2.Enabled:=True;
      FormEtiquetas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEtiquetas);
      FormMain.SetFields(FormEtiquetas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FAMILIAS                                                                   //
//##############################################################################
{$REGION 'TABELA FAMILIAS'}
procedure TDM.TBFamiliasAfterInsert(DataSet: TDataSet);
begin
  TBFamiliasFAM_DTCADASTRO.Value:=ServerDate;
  TBFamiliasFAM_HRCADASTRO.Value:=ServerTime;
  TBFamiliasFAM_INTERNET.Value:='S';
end;

procedure TDM.TBFamiliasBeforeEdit(DataSet: TDataSet);
begin
  FormMain.SetFields(FormFamilias,True);
end;

procedure TDM.TBFamiliasBeforeInsert(DataSet: TDataSet);
begin
  if FormFamilias<>nil then
  begin
    FormMain.SetFields(FormFamilias,True);
    FormFamilias.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBFamiliasBeforePost(DataSet: TDataSet);
begin
  TBFamiliasFAM_DTATUALIZACAO.Value:=ServerDate;
  TBFamiliasFAM_HRATUALIZACAO.Value:=ServerTime;
  TBFamiliasFAM_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSFamiliasStateChange(Sender: TObject);
begin
  if TBFamilias.State in [dsInsert, dsEdit] then
  begin
    if FormFamilias<>nil then
    begin
      FormFamilias.Localizar1.Enabled:=False;
      FormFamilias.Localizar1Button.Enabled:=False;
      FormFamilias.Relatorios2.Enabled:=False;
      FormFamilias.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormFamilias<>nil then
    begin
      FormFamilias.Localizar1.Enabled:=True;
      FormFamilias.Localizar1Button.Enabled:=True;
      FormFamilias.Relatorios2.Enabled:=True;
      FormFamilias.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFamilias);
      FormMain.SetFields(FormFamilias,False); //desabilita campos.
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FCI                                                                        //
//##############################################################################
{$REGION 'TABELA FCI'}
procedure TDM.TBFciAfterInsert(DataSet: TDataSet);
begin
  TBFciPFI_DTCADASTRO.Value:=ServerDate;
  TBFciPFI_HRCADASTRO.Value:=ServerTime;
  TBFciPFI_QUANTIDADEITENS.Value:=0;
  TBFciPFI_STATUS.Value:='A';
end;
procedure TDM.TBFciBeforeEdit(DataSet: TDataSet);
begin
  FormMain.SetFields(FormFci,True);
end;

procedure TDM.TBFciBeforeInsert(DataSet: TDataSet);
begin
  if FormFci<>nil then
  begin
    FormMain.SetFields(FormFci,True);
    FormFci.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBFciBeforePost(DataSet: TDataSet);
begin
  TBFciPFI_DTATUALIZACAO.Value:=ServerDate;
  TBFciPFI_HRATUALIZACAO.Value:=ServerTime;
  TBFciPFI_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSFciStateChange(Sender: TObject);
begin
  if TBFci.State in [dsInsert, dsEdit] then
  begin
    if FormFci<>nil then
    begin
      FormFci.AlterarItem1Button.Enabled:=False;
      FormFci.AtualizarProdutosComONumeroFCI1.Enabled:=False;
      FormFci.AtualizarProdutosComONumeroFCI1Button.Enabled:=False;
      FormFci.BaixarProcesso1.Enabled:=False;
      FormFci.BaixarProcesso1Button.Enabled:=False;
      FormFci.EliminarItem1Button.Enabled:=False;
      FormFci.Localizar1.Enabled:=False;
      FormFci.Localizar1Button.Enabled:=False;
      FormFci.GerarArquivo1.Enabled:=False;
      FormFci.GerarArquivo1Button.Enabled:=False;
      FormFci.IncluirItem1Button.Enabled:=False;
      FormFci.LerArquivoRetorno1.Enabled:=False;
      FormFci.LerArquivoRetorno1Button.Enabled:=False;
      FormFci.ReabrirProcesso1.Enabled:=False;
      FormFci.ReabrirProcesso1Button.Enabled:=False;
    end;
  end else
  begin
    if FormFci<>nil then
    begin
      FormFci.AlterarItem1Button.Enabled:=True;
      FormFci.AtualizarProdutosComONumeroFCI1.Enabled:=True;
      FormFci.AtualizarProdutosComONumeroFCI1Button.Enabled:=True;
      FormFci.BaixarProcesso1.Enabled:=True;
      FormFci.BaixarProcesso1Button.Enabled:=True;
      FormFci.EliminarItem1Button.Enabled:=True;
      FormFci.Localizar1.Enabled:=True;
      FormFci.Localizar1Button.Enabled:=True;
      FormFci.GerarArquivo1.Enabled:=True;
      FormFci.GerarArquivo1Button.Enabled:=True;
      FormFci.IncluirItem1Button.Enabled:=True;
      FormFci.LerArquivoRetorno1.Enabled:=True;
      FormFci.LerArquivoRetorno1Button.Enabled:=True;
      FormFci.ReabrirProcesso1.Enabled:=True;
      FormFci.ReabrirProcesso1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFci);
      FormMain.SetFields(FormFci,False); //desabilita campos.
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FCIITENS                                                                   //
//##############################################################################
{$REGION 'TABELA FCIITENS'}
procedure TDM.AtualizarFCIQuantidadeItens;
var Codigo: Integer;
begin
  Codigo:=TBFciPFI_CODIGO.Value;

  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('update FCI set PFI_QUANTIDADEITENS=(select count(*) from FCIITENS where FII_FCI=PFI_CODIGO) where PFI_CODIGO=:codigo');
  QYAux.ParamByName('codigo').AsInteger:=Codigo;
  QYAux.ExecSQL;

  TBFciItens.Close;
  TBFci.Close;
  TBFci.ParamByName('codigo').AsInteger:=Codigo;
  TBFci.Open;
  TBFciItens.Open;
end;

procedure TDM.TBFciItensAfterDelete(DataSet: TDataSet);
begin
  AtualizarFCIQuantidadeItens;
end;

procedure TDM.TBFciItensAfterEdit(DataSet: TDataSet);
begin
  if TBFciPFI_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar um processo já baixado.',mtWarning,[mbOk],0);
    TBFciItens.Cancel;
  end;
end;

procedure TDM.TBFciItensAfterInsert(DataSet: TDataSet);
begin
  TBFciItensFII_FCI.Value:=TBFciPFI_CODIGO.Value;
end;

procedure TDM.TBFciItensAfterPost(DataSet: TDataSet);
begin
  AtualizarFCIQuantidadeItens;
end;

procedure TDM.TBFciItensBeforeEdit(DataSet: TDataSet);
begin
  if FormFciItens<>nil then
  FormMain.SetFields(FormFciItens,True);
end;

procedure TDM.TBFciItensBeforeInsert(DataSet: TDataSet);
begin
  if FormFciItens<>nil then
  begin
    FormMain.SetFields(FormFciItens,True);
    FormFciItens.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBFciItensBeforePost(DataSet: TDataSet);
begin
  TBFciItensFII_COEFICIENTE.Value:=Decimais((TBFciItensFII_VALORPARCELA.AsExtended / TBFciItensFII_VALORSAIDA.AsExtended) * 100 ,2);
end;

procedure TDM.DSFciItensStateChange(Sender: TObject);
begin
  if TBFciItens.State in [dsInsert, dsEdit] then
  begin
    if FormFciItens<>nil then
    begin
      //FormServicosHoras.ImprimirRelatorioDeHoras1.Enabled:=False;
      //FormServicosHoras.ImprimirRelatorioDeHoras1Button.Enabled:=False;
    end;
  end else
  begin
    if FormFciItens<>nil then
    begin
      //FormServicosHoras.ImprimirRelatorioDeHoras1.Enabled:=True;
      //FormServicosHoras.ImprimirRelatorioDeHoras1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFciItens);
      FormMain.SetFields(FormFciItens,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FORNECEDORES                                                               //
//##############################################################################
{$REGION 'TABELA FORNECEDORES'}
procedure TDM.TBFornecedoresAfterInsert(DataSet: TDataSet);
begin
  TBFornecedoresFOR_ATIVIDADE.Value:=TBParametrosPAR_CLI_ATIVIDADE.Value; //mesmo parametro para o fornecedor.
  TBFornecedoresFOR_DTCADASTRO.Value:=ServerDate;
  TBFornecedoresFOR_ESTADOCIVIL.Value:='NAO TEM';
  TBFornecedoresFOR_FONE1.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBFornecedoresFOR_FONE2.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBFornecedoresFOR_FONE3.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBFornecedoresFOR_HRCADASTRO.Value:=ServerTime;
  TBFornecedoresFOR_STATUS.Value:='A';
  TBFornecedoresFOR_TIPOPESSOA.Value:='J';
  //campos derivados
  TBFornecedoresATI_DESCRICAO.Value:=GetRegistro('ATIVIDADES','ATI_CODIGO',TBParametrosPAR_CLI_ATIVIDADE.Value).FieldByName('ATI_DESCRICAO').AsString;
end;

procedure TDM.TBFornecedoresBeforeEdit(DataSet: TDataSet);
begin
  if FormFornecedores<>nil then
  FormMain.SetFields(FormFornecedores,True);
end;

procedure TDM.TBFornecedoresBeforeInsert(DataSet: TDataSet);
begin
  if FormFornecedores<>nil then
  begin
    FormMain.SetFields(FormFornecedores,True);
    FormFornecedores.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBFornecedoresBeforePost(DataSet: TDataSet);
begin
  TBFornecedoresFOR_DTATUALIZACAO.Value:=ServerDate;
  TBFornecedoresFOR_HRATUALIZACAO.Value:=ServerTime;
  TBFornecedoresFOR_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSFornecedoresStateChange(Sender: TObject);
begin
  if TBFornecedores.State in [dsInsert, dsEdit] then
  begin
    if FormFornecedores<>nil then
    begin
      FormFornecedores.AnexosDoFornecedor1.Enabled:=False;
      FormFornecedores.AnexosDoFornecedor1Button.Enabled:=False;
      FormFornecedores.BuscarDoCadastroDeClientes1.Enabled:=False;
      FormFornecedores.BuscarDoCadastroDeClientes1Button.Enabled:=False;
      FormFornecedores.Fornecedores1.Enabled:=False;
      FormFornecedores.FornecedoresPorAtividade1.Enabled:=False;
      FormFornecedores.HistoricosDoFornecedor1.Enabled:=False;
      FormFornecedores.HistoricosDoFornecedor1Button.Enabled:=False;
      FormFornecedores.Localizar1.Enabled:=False;
      FormFornecedores.Localizar1Button.Enabled:=False;
      FormFornecedores.Relatorios2.Enabled:=False;
      FormFornecedores.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormFornecedores<>nil then
    begin
      FormFornecedores.AnexosDoFornecedor1.Enabled:=True;
      FormFornecedores.AnexosDoFornecedor1Button.Enabled:=True;
      FormFornecedores.BuscarDoCadastroDeClientes1.Enabled:=True;
      FormFornecedores.BuscarDoCadastroDeClientes1Button.Enabled:=True;
      FormFornecedores.Fornecedores1.Enabled:=True;
      FormFornecedores.FornecedoresPorAtividade1.Enabled:=True;
      FormFornecedores.HistoricosDoFornecedor1.Enabled:=True;
      FormFornecedores.HistoricosDoFornecedor1Button.Enabled:=True;
      FormFornecedores.Localizar1.Enabled:=True;
      FormFornecedores.Localizar1Button.Enabled:=True;
      FormFornecedores.Relatorios2.Enabled:=True;
      FormFornecedores.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFornecedores);
      FormMain.SetFields(FormFornecedores,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// GRUPOS                                                                     //
//##############################################################################
{$REGION 'TABELA GRUPOS'}
procedure TDM.TBGruposAfterInsert(DataSet: TDataSet);
begin
  TBGruposGRU_DTCADASTRO.Value:=ServerDate;
  TBGruposGRU_HRCADASTRO.Value:=ServerTime;
  TBGruposGRU_STATUS.Value:='A';
  TBGruposGRU_INTERNET.Value:='S';
end;

procedure TDM.TBGruposBeforeEdit(DataSet: TDataSet);
begin
  if FormGrupos<>nil then
  FormMain.SetFields(FormGrupos,True);
end;

procedure TDM.TBGruposBeforeInsert(DataSet: TDataSet);
begin
  if FormGrupos<>nil then
  begin
    FormMain.SetFields(FormGrupos,True);
    FormGrupos.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBGruposBeforePost(DataSet: TDataSet);
begin
  TBGruposGRU_DTATUALIZACAO.Value:=ServerDate;
  TBGruposGRU_HRATUALIZACAO.Value:=ServerTime;
  TBGruposGRU_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSGruposStateChange(Sender: TObject);
begin
  if TBGrupos.State in [dsInsert, dsEdit] then
  begin
    if FormGrupos<>nil then
    begin
      FormGrupos.Localizar1.Enabled:=False;
      FormGrupos.Localizar1Button.Enabled:=False;
      FormGrupos.Relatorios2.Enabled:=False;
      FormGrupos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormGrupos<>nil then
    begin
      FormGrupos.Localizar1.Enabled:=True;
      FormGrupos.Localizar1Button.Enabled:=True;
      FormGrupos.Relatorios2.Enabled:=True;
      FormGrupos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormGrupos);
      FormMain.SetFields(FormGrupos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BANCO DE HORAS                                                             //
//##############################################################################
{$REGION 'TABELA HORAS'}
procedure TDM.TBHorasAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBHoras.Cancel;
end;

procedure TDM.TBHorasAfterInsert(DataSet: TDataSet);
begin
  TBHorasHOR_DTCADASTRO.Value:=ServerDate;
  TBHorasHOR_HRCADASTRO.Value:=ServerTime;
  TBHorasHOR_QUANTIDADE.Value:=0;
  TBHorasHOR_TRANSACAO.Value:='C';
end;

procedure TDM.TBHorasAfterPost(DataSet: TDataSet);
begin
  //só atualiza se for registro novo.
  if InserindoNovoRegistroHoras then
  begin
    AtualizarSaldoVendedorHoras(TBHorasHOR_QUANTIDADE.Value,TBHorasHOR_TRANSACAO.Value);
    InserindoNovoRegistroHoras:=False;
  end;
end;

procedure TDM.TBHorasBeforeEdit(DataSet: TDataSet);
begin
  if FormHoras<>nil then
  FormMain.SetFields(FormHoras,True);
end;

procedure TDM.TBHorasBeforeInsert(DataSet: TDataSet);
begin
  if FormHoras<>nil then
  begin
    FormMain.SetFields(FormHoras,True);
    FormHoras.DBEdit10.SetFocus;
  end;
end;

procedure TDM.TBHorasBeforePost(DataSet: TDataSet);
begin
  TBHorasHOR_DTATUALIZACAO.Value:=ServerDate;
  TBHorasHOR_HRATUALIZACAO.Value:=ServerTime;
  TBHorasHOR_USUARIO.Value:=UsuarioLogin;
  //calcula dos saldos e atualiza o saldo na tabela caixasaldo. só calcula se for inserção de novo registro.
  if TBHoras.State in [dsInsert] then
  begin
    TBVendedores.Close;
    TBVendedores.ParamByName('codigo').AsInteger:=TBHorasHOR_VENDEDOR.Value;
    TBVendedores.Open;
    TBHorasHOR_SALDOANTERIOR.Value:=TBVendedoresVEN_SALDOHORAS.Value;
    if TBHorasHOR_TRANSACAO.Value='C' then TBHorasHOR_SALDOPOSTERIOR.Value:=TBVendedoresVEN_SALDOHORAS.Value+TBHorasHOR_QUANTIDADE.Value else
    if TBHorasHOR_TRANSACAO.Value='D' then TBHorasHOR_SALDOPOSTERIOR.Value:=TBVendedoresVEN_SALDOHORAS.Value-TBHorasHOR_QUANTIDADE.Value;
    InserindoNovoRegistroHoras:=True;
  end;
end;

procedure TDM.DSHorasStateChange(Sender: TObject);
begin
  if TBHoras.State in [dsInsert, dsEdit] then
  begin
    if FormHoras<>nil then
    begin
      FormHoras.HistoricoDeHorasPorVendedor1.Enabled:=False;
      FormHoras.Localizar1.Enabled:=False;
      FormHoras.Localizar1Button.Enabled:=False;
      FormHoras.Relatorios2.Enabled:=False;
      FormHoras.Relatorios2Button.Enabled:=False;
      FormHoras.SaldoDeHorasPorVendedor1.Enabled:=False;
    end;
  end else
  begin
    if FormHoras<>nil then
    begin
      FormHoras.HistoricoDeHorasPorVendedor1.Enabled:=True;
      FormHoras.Localizar1.Enabled:=True;
      FormHoras.Localizar1Button.Enabled:=True;
      FormHoras.Relatorios2.Enabled:=True;
      FormHoras.Relatorios2Button.Enabled:=True;
      FormHoras.SaldoDeHorasPorVendedor1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormHoras);
      FormMain.SetFields(FormHoras,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TABELA DE CODIGOS DO ICMS                                                  //
//##############################################################################
{$REGION 'TABELA ICMS'}
procedure TDM.TBIcmsAfterInsert(DataSet: TDataSet);
begin
  TBIcmsICM_DTCADASTRO.Value:=ServerDate;
  TBIcmsICM_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBIcmsBeforeEdit(DataSet: TDataSet);
begin
  if FormIcms<>nil then
  FormMain.SetFields(FormIcms,True);
end;

procedure TDM.TBIcmsBeforeInsert(DataSet: TDataSet);
begin
  if FormIcms<>nil then
  begin
    FormMain.SetFields(FormIcms,True);
    FormIcms.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBIcmsBeforePost(DataSet: TDataSet);
begin
  TBIcmsICM_DTATUALIZACAO.Value:=ServerDate;
  TBIcmsICM_HRATUALIZACAO.Value:=ServerTime;
  TBIcmsICM_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSIcmsStateChange(Sender: TObject);
begin
  if TBIcms.State in [dsInsert, dsEdit] then
  begin
    if FormIcms<>nil then
    begin
      FormIcms.Localizar1.Enabled:=False;
      FormIcms.Localizar1Button.Enabled:=False;
      FormIcms.Relatorios2.Enabled:=False;
      FormIcms.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormIcms<>nil then
    begin
      FormIcms.Localizar1.Enabled:=True;
      FormIcms.Localizar1Button.Enabled:=True;
      FormIcms.Relatorios2.Enabled:=True;
      FormIcms.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormIcms);
      FormMain.SetFields(FormIcms,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TABELA DE CODIGOS DO IPI                                                   //
//##############################################################################
{$REGION 'TABELA IPI'}
procedure TDM.TBIpiAfterInsert(DataSet: TDataSet);
begin
  TBIpiIPI_DTCADASTRO.Value:=ServerDate;
  TBIpiIPI_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBIpiBeforeEdit(DataSet: TDataSet);
begin
  if FormIpi<>nil then
  FormMain.SetFields(FormIpi,True);
end;

procedure TDM.TBIpiBeforeInsert(DataSet: TDataSet);
begin
  if FormIpi<>nil then
  begin
    FormMain.SetFields(FormIpi,True);
    FormIpi.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBIpiBeforePost(DataSet: TDataSet);
begin
  TBIpiIPI_DTATUALIZACAO.Value:=ServerDate;
  TBIpiIPI_HRATUALIZACAO.Value:=ServerTime;
  TBIpiIPI_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSIpiStateChange(Sender: TObject);
begin
  if TBIpi.State in [dsInsert, dsEdit] then
  begin
    if FormIpi<>nil then
    begin
      FormIpi.Localizar1.Enabled:=False;
      FormIpi.Localizar1Button.Enabled:=False;
      FormIpi.Relatorios2.Enabled:=False;
      FormIpi.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormIpi<>nil then
    begin
      FormIpi.Localizar1.Enabled:=True;
      FormIpi.Localizar1Button.Enabled:=True;
      FormIpi.Relatorios2.Enabled:=True;
      FormIpi.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormIpi);
      FormMain.SetFields(FormIpi,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TABELA DE CODIGOS DO ISSQN                                                 //
//##############################################################################
{$REGION 'TABELA ISS'}
procedure TDM.TBIssAfterInsert(DataSet: TDataSet);
begin
  TBIssISS_DTCADASTRO.Value:=ServerDate;
  TBIssISS_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBIssBeforeEdit(DataSet: TDataSet);
begin
  if FormIss<>nil then
  FormMain.SetFields(FormIss,True);
end;

procedure TDM.TBIssBeforeInsert(DataSet: TDataSet);
begin
  if FormIss<>nil then
  begin
    FormMain.SetFields(FormIss,True);
    FormIss.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBIssBeforePost(DataSet: TDataSet);
begin
  TBIssISS_DTATUALIZACAO.Value:=ServerDate;
  TBIssISS_HRATUALIZACAO.Value:=ServerTime;
  TBIssISS_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSIssStateChange(Sender: TObject);
begin
  if TBIss.State in [dsInsert, dsEdit] then
  begin
    if FormIss<>nil then
    begin
      FormIss.ImportarDadosDaPlanilhaDoIBPT1.Enabled:=False;
      FormIss.ImportarDadosDaPlanilhaDoIBPT1Button.Enabled:=False;
      FormIss.Localizar1.Enabled:=False;
      FormIss.Localizar1Button.Enabled:=False;
      FormIss.Relatorios2.Enabled:=False;
      FormIss.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormIss<>nil then
    begin
      FormIss.ImportarDadosDaPlanilhaDoIBPT1.Enabled:=True;
      FormIss.ImportarDadosDaPlanilhaDoIBPT1Button.Enabled:=True;
      FormIss.Localizar1.Enabled:=True;
      FormIss.Localizar1Button.Enabled:=True;
      FormIss.Relatorios2.Enabled:=True;
      FormIss.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormIss);
      FormMain.SetFields(FormIss,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// LOCS - CONFIGURAÇÃO DE CAMPOS DE LOCALIZAÇÃO.                              //
//##############################################################################
{$REGION 'TABELA LOCS'}
procedure TDM.TBLocsAfterInsert(DataSet: TDataSet);
begin
  if FormParametros<>nil then
  TBLocs.Cancel; //nao deixa entrar em inserção se a tela de parametros estiver aberta. - a manipulação é feita pelo DBGrid.
end;

procedure TDM.TBLocsBeforeInsert(DataSet: TDataSet);
begin
  if FormLocs<>nil then
  begin
    //nao precisa. FormMain.SetFields(FormLocs,True);
    FormLocs.DBEdit2.SetFocus;
  end;
end;

procedure TDM.DSLocsDataChange(Sender: TObject; Field: TField);
var S: String;
begin
  if FormParametros<>nil then
  begin
    FormParametros.DBGrid1.Columns[1].PickList.Clear;
    S:=TBLocsLOS_PICKLIST.Value;
    while Pos(';',S)>0 do
    begin
      FormParametros.DBGrid1.Columns[1].PickList.Add(Copy(S,1,Pos(';',S)-1));
      Delete(S,1,Pos(';',S));
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// LOTES - LOTES DE PRODUTOS                                                  //
//##############################################################################
{$REGION 'TABELA LOTES'}
procedure TDM.TBLotesAfterEdit(DataSet: TDataSet);
begin
  if TBLotesLOT_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar um lote baixado.',mtWarning,[mbOk],0);
    TBLotes.Cancel;
  end;
end;

procedure TDM.TBLotesAfterInsert(DataSet: TDataSet);
begin
  TBLotesLOT_DTCADASTRO.Value:=ServerDate;
  TBLotesLOT_HRCADASTRO.Value:=ServerTime;
  TBLotesLOT_STATUS.Value:='A';
  TBLotesLOT_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value;
  TBLotesLOT_PROPRIO.Value:='S';
end;

procedure TDM.TBLotesBeforeEdit(DataSet: TDataSet);
begin
  if FormLotes<>nil then
  FormMain.SetFields(FormLotes,True);
end;

procedure TDM.TBLotesBeforeInsert(DataSet: TDataSet);
begin
  if FormLotes<>nil then
  begin
    FormMain.SetFields(FormLotes,True);
    FormLotes.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBLotesBeforePost(DataSet: TDataSet);
begin
  TBLotesLOT_DTATUALIZACAO.Value:=ServerDate;
  TBLotesLOT_HRATUALIZACAO.Value:=ServerTime;
  TBLotesLOT_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSLotesDataChange(Sender: TObject; Field: TField);
begin
  if FormLotes<>nil then
  begin
    if TBLotes.State in [dsInsert, dsEdit] then
    begin
      if TBLotesLOT_PROPRIO.Value='S' then
      begin
        FormLotes.DBEdit5.ReadOnly:=False;
        FormLotes.DBEdit5.Color:=clWindow;
        FormLotes.PngSpeedButton1.Enabled:=False;
      end else
      begin
        FormLotes.DBEdit5.ReadOnly:=True;
        FormLotes.DBEdit5.Color:=clBtnFace;
        FormLotes.PngSpeedButton1.Enabled:=True;
      end;
    end;
  end;
end;

procedure TDM.DSLotesStateChange(Sender: TObject);
begin
  if TBLotes.State in [dsInsert, dsEdit] then
  begin
    if FormLotes<>nil then
    begin
      FormLotes.BaixarLote1.Enabled:=False;
      FormLotes.BaixarLote1Button.Enabled:=False;
      FormLotes.GerarLotes1.Enabled:=False;
      FormLotes.GerarLotes1Button.Enabled:=False;
      FormLotes.Localizar1.Enabled:=False;
      FormLotes.Localizar1Button.Enabled:=False;
      FormLotes.ReabrirLote1.Enabled:=False;
      FormLotes.ReabrirLote1Button.Enabled:=False;
      FormLotes.Relatorios2.Enabled:=False;
      FormLotes.Relatorios2Button.Enabled:=False;
      FormLotes.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormLotes<>nil then
    begin
      FormLotes.BaixarLote1.Enabled:=True;
      FormLotes.BaixarLote1Button.Enabled:=True;
      FormLotes.GerarLotes1.Enabled:=True;
      FormLotes.GerarLotes1Button.Enabled:=True;
      FormLotes.Localizar1.Enabled:=True;
      FormLotes.Localizar1Button.Enabled:=True;
      FormLotes.ReabrirLote1.Enabled:=True;
      FormLotes.ReabrirLote1Button.Enabled:=True;
      FormLotes.Relatorios2.Enabled:=True;
      FormLotes.Relatorios2Button.Enabled:=True;
      FormLotes.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormLotes);
      FormMain.SetFields(FormLotes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MAILINGS                                                                   //
//##############################################################################
{$REGION 'TABELA MAILINGS'}
procedure TDM.TBMailingsAfterInsert(DataSet: TDataSet);
begin
  TBMailingsMAI_DTCADASTRO.Value:=ServerDate;
  TBMailingsMAI_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBMailingsBeforeEdit(DataSet: TDataSet);
begin
  if FormMailings<>nil then
  FormMain.SetFields(FormMailings,True);
end;

procedure TDM.TBMailingsBeforeInsert(DataSet: TDataSet);
begin
  if FormMailings<>nil then
  begin
    FormMain.SetFields(FormMailings,True);
    FormMailings.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBMailingsBeforePost(DataSet: TDataSet);
begin
  TBMailingsMAI_DTATUALIZACAO.Value:=ServerDate;
  TBMailingsMAI_HRATUALIZACAO.Value:=ServerTime;
  TBMailingsMAI_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSMailingsStateChange(Sender: TObject);
begin
  if TBMailings.State in [dsInsert, dsEdit] then
  begin
    if FormMailings<>nil then
    begin
      FormMailings.Localizar1.Enabled:=False;
      FormMailings.Localizar1Button.Enabled:=False;
      FormMailings.Relatorios2.Enabled:=False;
      FormMailings.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMailings<>nil then
    begin
      FormMailings.Localizar1.Enabled:=True;
      FormMailings.Localizar1Button.Enabled:=True;
      FormMailings.Relatorios2.Enabled:=True;
      FormMailings.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMailings);
      FormMain.SetFields(FormMailings,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MANIFESTAÇÕES                                                              //
//##############################################################################
{$REGION 'TABELA MANIFESTACOES'}
procedure TDM.TBManifestacoesAfterInsert(DataSet: TDataSet);
begin
  TBManifestacoesMAN_DTCONSULTA.Value:=ServerDate;
  TBManifestacoesMAN_HRCONSULTA.Value:=ServerTime;
  TBManifestacoesMAN_CIENCIA.Value:='N';
end;

procedure TDM.TBManifestacoesBeforeEdit(DataSet: TDataSet);
begin
  if FormManifestacoes<>nil then
  FormMain.SetFields(FormManifestacoes,True);
end;

procedure TDM.TBManifestacoesBeforeInsert(DataSet: TDataSet);
begin
  if FormManifestacoes<>nil then
  begin
    FormMain.SetFields(FormManifestacoes,True);
//    FormManifestacoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBManifestacoesBeforePost(DataSet: TDataSet);
begin
  TBManifestacoesMAN_DTATUALIZACAO.Value:=ServerDate;
  TBManifestacoesMAN_HRATUALIZACAO.Value:=ServerTime;
  TBManifestacoesMAN_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSManifestacoesDataChange(Sender: TObject; Field: TField);
begin
  if (TBManifestacoes.State in [dsBrowse]) and (not TBManifestacoes.IsEmpty) and (FormManifestacoes<>nil) then
  begin
    FormManifestacoes.XMLDocument1.LoadFromXML(TBManifestacoesMAN_XML.Value);
    FormManifestacoes.XMLDocument1.Active:=True;
    FormManifestacoes.TreeView1.Items.Clear;
    FormManifestacoes.GenerateTree(FormManifestacoes.XMLDocument1.DocumentElement, nil);
    FormManifestacoes.TreeView1.FullExpand;
    FormManifestacoes.TreeView1.Items[0].Selected:=True;
  end;
end;
{$ENDREGION}

//##############################################################################
// METAS                                                                      //
//##############################################################################
{$REGION 'TABELA METAS'}
procedure TDM.TBMetasAfterInsert(DataSet: TDataSet);
begin
  TBMetasMET_DTCADASTRO.Value:=ServerDate;
  TBMetasMET_HRCADASTRO.Value:=ServerTime;
  TBMetasMET_REPRESENTANTE.Value:='N';
  TBMetasMET_STATUS.Value:='A';
end;

procedure TDM.TBMetasBeforeEdit(DataSet: TDataSet);
begin
  if FormMetas<>nil then
  FormMain.SetFields(FormMetas,True);
end;

procedure TDM.TBMetasBeforeInsert(DataSet: TDataSet);
begin
  if FormMetas<>nil then
  begin
    FormMain.SetFields(FormMetas,True);
    FormMetas.DBEdit3.SetFocus;
  end;
end;

procedure TDM.TBMetasBeforePost(DataSet: TDataSet);
begin
  TBMetasMET_DTATUALIZACAO.Value:=ServerDate;
  TBMetasMET_HRATUALIZACAO.Value:=ServerTime;
  TBMetasMET_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSMetasStateChange(Sender: TObject);
begin
  if TBMetas.State in [dsInsert, dsEdit] then
  begin
    if FormMetas<>nil then
    begin
      FormMetas.AtualizarMeta1.Enabled:=False;
      FormMetas.AtualizarMeta1Button.Enabled:=False;
      FormMetas.BaixarMeta1.Enabled:=False;
      FormMetas.BaixarMeta1Button.Enabled:=False;
      FormMetas.ConfiguracaoDasMetas1.Enabled:=False;
      FormMetas.ConfiguracaoDasMetas1Button.Enabled:=False;
      FormMetas.Localizar1.Enabled:=False;
      FormMetas.Localizar1Button.Enabled:=False;
      FormMetas.ReabrirMeta1.Enabled:=False;
      FormMetas.ReabrirMeta1Button.Enabled:=False;
      FormMetas.Relatorios2.Enabled:=False;
      FormMetas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMetas<>nil then
    begin
      FormMetas.AtualizarMeta1.Enabled:=True;
      FormMetas.AtualizarMeta1Button.Enabled:=True;
      FormMetas.BaixarMeta1.Enabled:=True;
      FormMetas.BaixarMeta1Button.Enabled:=True;
      FormMetas.ConfiguracaoDasMetas1.Enabled:=True;
      FormMetas.ConfiguracaoDasMetas1Button.Enabled:=True;
      FormMetas.Localizar1.Enabled:=True;
      FormMetas.Localizar1Button.Enabled:=True;
      FormMetas.ReabrirMeta1.Enabled:=True;
      FormMetas.ReabrirMeta1Button.Enabled:=True;
      FormMetas.Relatorios2.Enabled:=True;
      FormMetas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMetas);
      FormMain.SetFields(FormMetas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// METAS CONFIG                                                               //
//##############################################################################
{$REGION 'TABELA METASCONFIG'}
procedure TDM.TBMetasConfigBeforeEdit(DataSet: TDataSet);
begin
  if FormMetasConfig<>nil then
  FormMain.SetFields(FormMetasConfig,True);
end;

procedure TDM.TBMetasConfigBeforeInsert(DataSet: TDataSet);
begin
  if FormMetasConfig<>nil then
  begin
    FormMain.SetFields(FormMetasConfig,True);
    FormMetasConfig.DBEdit2.SetFocus;
  end;
end;

procedure TDM.DSMetasConfigStateChange(Sender: TObject);
begin
  if TBMetasConfig.State in [dsInsert, dsEdit] then
  begin
    if FormMetasConfig<>nil then
    begin
      FormMetasConfig.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormMetasConfig<>nil then
    begin
      FormMetasConfig.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMetasConfig);
      FormMain.SetFields(FormMetasConfig,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MODULOS DO SISTEMA                                                         //
//##############################################################################
{$REGION 'TABELA MODULOS'}
procedure TDM.TBModulosAfterInsert(DataSet: TDataSet);
begin
  TBModulosMOD_ACESSO.Value:='S';
end;

procedure TDM.TBModulosBeforeInsert(DataSet: TDataSet);
begin
  if FormModulos<>nil then
  FormModulos.DBEdit2.SetFocus;
end;

procedure TDM.DSModulosStateChange(Sender: TObject);
begin
  if TBModulos.State in [dsInsert, dsEdit] then
  begin
    if FormModulos<>nil then
    begin
      FormModulos.DBGrid1.Enabled:=False;
      FormModulos.SpeedButton1.Enabled:=False;
      FormModulos.Relatorios1.Enabled:=False;
    end;
  end else
  begin
    if FormModulos<>nil then
    begin
      FormModulos.DBGrid1.Enabled:=True;
      FormModulos.SpeedButton1.Enabled:=True;
      FormModulos.Relatorios1.Enabled:=True;
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NATUREZAS - CFOP - NATUREZAS DE OPERACAO.                                  //
//##############################################################################
{$REGION 'TABELA NATUREZAS'}
procedure TDM.TBNaturezasAfterInsert(DataSet: TDataSet);
begin
  TBNaturezasNAT_CALCULACOMISSAO.Value:='S';
  TBNaturezasNAT_CALCULACREDITOSN.Value:='N';
  TBNaturezasNAT_DESTACARIMPOSTOS.Value:='N';
  TBNaturezasNAT_DTCADASTRO.Value:=ServerDate;
  TBNaturezasNAT_HRCADASTRO.Value:=ServerTime;
  TBNaturezasNAT_ENTRADASAIDA.Value:='S';
  TBNaturezasNAT_INFORMADIFAL.Value:='N';
  TBNaturezasNAT_MOVIMENTAESTOQUE.Value:='S';
  TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value:='S';
end;

procedure TDM.TBNaturezasBeforeEdit(DataSet: TDataSet);
begin
  if FormNaturezas<>nil then
  FormMain.SetFields(FormNaturezas,True);
end;

procedure TDM.TBNaturezasBeforeInsert(DataSet: TDataSet);
begin
  if FormNaturezas<>nil then
  begin
    FormMain.SetFields(FormNaturezas,True);
    FormNaturezas.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBNaturezasBeforePost(DataSet: TDataSet);
begin
  TBNaturezasNAT_DTATUALIZACAO.Value:=ServerDate;
  TBNaturezasNAT_HRATUALIZACAO.Value:=ServerTime;
  TBNaturezasNAT_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSNaturezasStateChange(Sender: TObject);
begin
  if TBNaturezas.State in [dsInsert, dsEdit] then
  begin
    if FormNaturezas<>nil then
    begin
      FormNaturezas.Localizar1.Enabled:=False;
      FormNaturezas.Localizar1Button.Enabled:=False;
      FormNaturezas.NaturezasEmOrdemAlfabetica1.Enabled:=False;
      FormNaturezas.NaturezasEmOrdemNumerica1.Enabled:=False;
      FormNaturezas.NaturezasEmOrdemNumerica1Button.Enabled:=False;
    end;
  end else
  begin
    if FormNaturezas<>nil then
    begin
      FormNaturezas.Localizar1.Enabled:=True;
      FormNaturezas.Localizar1Button.Enabled:=True;
      FormNaturezas.NaturezasEmOrdemAlfabetica1.Enabled:=True;
      FormNaturezas.NaturezasEmOrdemNumerica1.Enabled:=True;
      FormNaturezas.NaturezasEmOrdemNumerica1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNaturezas);
      FormMain.SetFields(FormNaturezas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NBS - NOMENCLATURA BRASILEIRA DE SERVICOS                                  //
//##############################################################################
{$REGION 'TABELA NBS'}
procedure TDM.TBNbsAfterInsert(DataSet: TDataSet);
begin
  TBNbsNBS_DTCADASTRO.Value:=ServerDate;
  TBNbsNBS_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBNbsBeforeEdit(DataSet: TDataSet);
begin
  if FormNbs<>nil then
  FormMain.SetFields(FormNbs,True);
end;

procedure TDM.TBNbsBeforeInsert(DataSet: TDataSet);
begin
  if FormNbs<>nil then
  begin
    FormMain.SetFields(FormNbs,True);
    FormNbs.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBNbsBeforePost(DataSet: TDataSet);
begin
  TBNbsNBS_DTATUALIZACAO.Value:=ServerDate;
  TBNbsNBS_HRATUALIZACAO.Value:=ServerTime;
  TBNbsNBS_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSNbsStateChange(Sender: TObject);
begin
  if TBNbs.State in [dsInsert, dsEdit] then
  begin
    if FormNbs<>nil then
    begin
      FormNbs.Localizar1.Enabled:=False;
      FormNbs.Localizar1Button.Enabled:=False;
      FormNbs.ImportarDados1.Enabled:=False;
      FormNbs.ImportarDados1Button.Enabled:=False;
      FormNbs.Relatorios2.Enabled:=False;
      FormNbs.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormNbs<>nil then
    begin
      FormNbs.Localizar1.Enabled:=True;
      FormNbs.Localizar1Button.Enabled:=True;
      FormNbs.ImportarDados1.Enabled:=True;
      FormNbs.ImportarDados1Button.Enabled:=True;
      FormNbs.Relatorios2.Enabled:=True;
      FormNbs.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNbs);
      FormMain.SetFields(FormNbs,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NOTAS FISCAIS DE CONSUMIDOR ELETRONICAS                                    //
//##############################################################################
{$REGION 'TABELA NFCE'}
function TDM.EmissaoOnline: Boolean;
begin
  if TBParametrosPAR_NFCETIPOEMISSAO.Value='1 - NORMAL' then
  Result:=True else
  Result:=False;
end;

procedure TDM.ConfigurarACBrNFe;
var OK: Boolean;
begin
  DM.TBParametros.Close;
  DM.TBParametros.Open;

  ACBrNFe1.Configuracoes.Certificados.URLPFX      :=TBParametrosPAR_NOMECERTIFICADO.Value; //??
  ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  :=TBParametrosPAR_ARQUIVOCERTIFICADO.Value;
  ACBrNFe1.Configuracoes.Certificados.Senha       :=TBParametrosPAR_SENHACERTIFICADO.Value;
  ACBrNFe1.Configuracoes.Certificados.NumeroSerie :=''; //TBParametrosPAR_SERIALCERTIFICADO.Value;

  //se usar arquivo pfx com openssl, nao precisa preencher o numero serial.
  //dá o erro: CarregarCertificadoDeNumeroSerie" não suportado em: TDFeOpenSSL.
  ACBrNFe1.SSL.DescarregarCertificado; //o que faz?

  ACBrNFe1.Configuracoes.Arquivos.AdicionarLiteral:=False; //True;
  ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe  :=True;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorCNPJ  :=False;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorIE    :=False;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorModelo:=False;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorAno   :=True;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorMes   :=True;
  ACBrNFe1.Configuracoes.Arquivos.SepararPorDia   :=False;

  ACBrNFe1.Configuracoes.Arquivos.PathSalvar      :=TBParametrosPAR_REPOSITORIONFCE.Value;
  ACBrNFe1.Configuracoes.Arquivos.PathNFe         :=TBParametrosPAR_REPOSITORIONFCE.Value;
  ACBrNFe1.Configuracoes.Arquivos.PathSchemas     :=ExtractFilePath(Application.ExeName)+'\'+TBParametrosPAR_NFCESCHEMAS.Value;
  ACBrNFe1.Configuracoes.Arquivos.Salvar          :=False; //True;
  ACBrNFe1.Configuracoes.Arquivos.SalvarApenasNFeProcessadas:=False; //True;

  ACBrNFe1.Configuracoes.Geral.Salvar             :=False;
  ACBrNFe1.Configuracoes.Geral.FormaEmissao       :=teNormal; //teOffline.

  if DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='1' then //producao
  begin
    ACBrNFe1.Configuracoes.Geral.CSC                :=TBParametrosPAR_NFCECSC.Value;
    ACBrNFe1.Configuracoes.Geral.IdCSC              :=TBParametrosPAR_NFCECSCID.Value;
  end else
  if DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2' then //homologacao.
  begin
    ACBrNFe1.Configuracoes.Geral.CSC                :=TBParametrosPAR_NFCECSCHOMOLOGACAO.Value;
    ACBrNFe1.Configuracoes.Geral.IdCSC              :=TBParametrosPAR_NFCECSCIDHOMOLOGACAO.Value;
  end;

  ACBrNFe1.Configuracoes.Geral.ExibirErroSchema   :=True;
  ACBrNFe1.Configuracoes.Geral.RetirarAcentos     :=True;
  //ACBrNFe1.Configuracoes.Geral.FormatoAlerta.     := edtFormatoAlerta.Text;
  ACBrNFe1.Configuracoes.Geral.ModeloDF           :=moNFCe; //TpcnModeloDF(cbModeloDF.ItemIndex);
  ACBrNFe1.Configuracoes.Geral.VersaoDF           :=ve400; //TpcnVersaoDF(cbVersaoDF.ItemIndex);
  ACBrNFe1.Configuracoes.Geral.VersaoQRCode       :=veqr200;

  {$REGION 'Configuracao do SSL'}
  if TBParametrosPAR_LIBSSL.Value='libNone'              then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(0) else
  if TBParametrosPAR_LIBSSL.Value='libOpenSSL'           then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(1) else
  if TBParametrosPAR_LIBSSL.Value='libCapicom'           then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(2) else
  if TBParametrosPAR_LIBSSL.Value='libCapicomDelphiSoap' then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(3) else
  if TBParametrosPAR_LIBSSL.Value='libWinCrypt'          then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(4) else
  if TBParametrosPAR_LIBSSL.Value='libCustom'            then ACBrNFe1.Configuracoes.Geral.SSLLib:=TSSLLib(5);

  if TBParametrosPAR_LIBCRYPT.Value='cryNone'            then ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(0) else
  if TBParametrosPAR_LIBCRYPT.Value='cryOpenSSL'         then ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(1) else
  if TBParametrosPAR_LIBCRYPT.Value='cryCapicom'         then ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(2) else
  if TBParametrosPAR_LIBCRYPT.Value='cryWinCrypt'        then ACBrNFe1.Configuracoes.Geral.SSLCryptLib:=TSSLCryptLib(3);

  if TBParametrosPAR_LIBHTTP.Value='httpNone'            then ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(0) else
  if TBParametrosPAR_LIBHTTP.Value='httpWinINet'         then ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(1) else
  if TBParametrosPAR_LIBHTTP.Value='httpWinHttp'         then ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(2) else
  if TBParametrosPAR_LIBHTTP.Value='httpOpenSSL'         then ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(3) else
  if TBParametrosPAR_LIBHTTP.Value='httpIndy'            then ACBrNFe1.Configuracoes.Geral.SSLHttpLib:=TSSLHttpLib(4);

  if TBParametrosPAR_LIBXMLSIGN.Value='xsNone'           then ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(0) else
  if TBParametrosPAR_LIBXMLSIGN.Value='xsXmlSec'         then ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(1) else
  if TBParametrosPAR_LIBXMLSIGN.Value='xsMsXml'          then ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(2) else
  if TBParametrosPAR_LIBXMLSIGN.Value='xsMsXmlCapicom'   then ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(3) else
  if TBParametrosPAR_LIBXMLSIGN.Value='xsLiXml2'         then ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib:=TSSLXmlSignLib(4);
  {$ENDREGION}

  ACBrNFe1.Configuracoes.WebServices.Salvar    :=False;
  ACBrNFe1.Configuracoes.WebServices.Ambiente  :=StrToTpAmb(OK,TBParametrosPAR_TIPOAMBIENTENFCE.Value); //tpcntipoambiente taHomologacao=2; //taProducao=1 //StrToTpAmb(Ok, IntToStr(rgTipoAmb.ItemIndex+1));
  ACBrNFe1.Configuracoes.WebServices.Visualizar:=False;
  ACBrNFe1.Configuracoes.WebServices.UF        :=TBEmpresaEMP_ESTADO.Value;
  ACBrNFe1.Configuracoes.WebServices.TimeOut   :=TBParametrosPAR_NFCETIMEOUT.Value;

  if DM.TBParametrosPAR_PROXY.Value='S' then
  begin
    ACBrNFe1.Configuracoes.WebServices.ProxyHost:=TBParametrosPAR_PROXYENDERECO.Value;
    ACBrNFe1.Configuracoes.WebServices.ProxyPort:=IntToStr(TBParametrosPAR_PROXYPORTA.Value);
    ACBrNFe1.Configuracoes.WebServices.ProxyUser:=TBParametrosPAR_PROXYUSER.Value;
    ACBrNFe1.Configuracoes.WebServices.ProxyPass:=TBParametrosPAR_PROXYPASSWORD.Value;
  end;
end;

procedure TDM.RecriarSequencialItensNfce(Nfce: Integer);
begin
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add(
    'merge into NFCEITENS NFCEITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    NCI_CODIGO, '+
    '    NCI_NOTA, '+
    '    row_number() over(partition by NCI_NOTA order by NCI_NOTA, NCI_CODIGO) as SEQ '+
    'from NFCEITENS where NCI_NOTA=:codigo order by NCI_NOTA, NCI_CODIGO) NFCEITENS_ORIGEM '+
    'on NFCEITENS_DESTINO.RDB$DB_KEY = NFCEITENS_ORIGEM.db_key '+
    'when matched then update set NFCEITENS_DESTINO.NCI_SEQUENCIA = NFCEITENS_ORIGEM.SEQ'
  );
  QYAux.ParamByName('codigo').AsInteger:=Nfce;
  QYAux.ExecSQL;

  //atualiza o total de itens.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add(
    'update NFCE set NFC_SEQUENCIAITEM=(select max(NCI_SEQUENCIA) as SEQ from NFCEITENS where NCI_NOTA=NFC_CODIGO) where NFC_CODIGO=:codigo'
  );
  QYAux.ParamByName('codigo').AsInteger:=Nfce;
  QYAux.ExecSQL;
end;

procedure TDM.CalcularTotaisNFCe(DarPost: Boolean);
begin
  TBNfce.Edit;

  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select '+
    'count(*) as QTDEITENS, '+
    'sum(NCI_BASECOFINS) as BASECOFINS, '+
    'sum(NCI_BASECOFINSST) as BASECOFINSST, '+
    'sum(NCI_BASEIBSCBS) as BASEIBSCBS, '+
    'sum(NCI_BASEICMS) as BASEICMS, '+
    'sum(NCI_BASEICMSST) as BASEICMSST, '+
    'sum(NCI_BASEIPI) as BASEIPI, '+
    'sum(NCI_BASEIS) as BASEIS, '+
    'sum(NCI_BASEPIS) as BASEPIS, '+
    'sum(NCI_BASEPISST) as BASEPISST, '+
    'sum(NCI_DESCPORC) as PORCDESCONTO, '+
    'sum(NCI_DESCVALOR) as VALORDESCONTO, '+
    'sum(NCI_PESOTOTAL) as PESOTOTAL, '+
    'sum(NCI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
    'max(NCI_SEQUENCIA) as SEQUENCIA, '+
    'sum(NCI_VALORACESSORIAS) as VALORACESSORIAS, '+
    'sum(NCI_VALORCBSCREDPRES) as VALORCBSCREDPRES, '+
    'sum(NCI_VALORCBSCREDPRESSUS) as VALORCBSCREDPRESSUS, '+
    'sum(NCI_VALORCBSDIF) as VALORCBSDIF, '+
    'sum(NCI_VALORCBSDEV) as VALORCBSDEV, '+
    //'-- sum(NCI_VALORCBSMONO) as VALORCBSMONO, '+
    //'-- sum(NCI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
    //'-- sum(NCI_CBSMONORETIDO) as CBSMONORETIDO, '+
    'sum(NCI_VALORCBS) as VALORCBS, '+
    'sum(NCI_VALORCOFINS) as VALORCOFINS, '+
    'sum(NCI_VALORCOFINSST) as VALORCOFINSST, '+
    'sum(NCI_VALORCOMISSAO) as VALORCOMISSAO, '+
    'sum(NCI_VALORFCP) as VALORFCP, '+
    'sum(NCI_VALORFCPST) as VALORFCPST, '+
    'sum(NCI_VALORFRETE) as VALORFRETE, '+
    'sum(NCI_VALORIBSCREDPRES) as VALORIBSCREDPRES, '+
    'sum(NCI_VALORIBSCREDPRESSUS) as VALORIBSCREDPRESSUS, '+
    //'-- sum(NCI_IBSMONO) as IBSMONO, '+
    //'-- sum(NCI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
    //'-- sum(NCI_IBSMONORETIDO) as IBSMONORETIDO, '+
    'sum(NCI_VALORIBSMUNDIF) as VALORIBSMUNDIF, '+
    'sum(NCI_VALORIBSMUNDEV) as VALORIBSMUNDEV, '+
    'sum(NCI_VALORIBSMUN) as VALORIBSMUN, '+
    'sum(NCI_VALORIBSUFDIF) as VALORIBSUFDIF, '+
    'sum(NCI_VALORIBSUFDEV) as VALORIBSUFDEV, '+
    'sum(NCI_VALORIBSUF) as VALORIBSUF, '+
    'sum(NCI_VALORIBS) as VALORIBS, '+
    'sum(NCI_VALORICMS) as VALORICMS, '+
    'sum(NCI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
    'sum(NCI_VALORICMSST) as VALORICMSST, '+
    'sum(NCI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
    'sum(NCI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
    'sum(NCI_VALORIPI) as VALORIPI, '+
    'sum(NCI_VALORIS) as VALORIS, '+
    'sum(NCI_VALORPIS) as VALORPIS, '+
    'sum(NCI_VALORPISST) as VALORPISST, '+
    'sum(NCI_VALORTOTAL) as TOTALPRODUTOS, '+
    'sum(NCI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
    'sum(NCI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
    'sum(NCI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
    'sum(NCI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
    'sum(NCI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
    'sum(NCI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN '+
    //'sum(iif(NCI_SOMACOFINSST=''S'',NCI_VALORCOFINSST,0)) as SOMACOFINSST, '+
    //'sum(iif(NCI_SOMAPISST=''S'',NCI_VALORPISST,0)) as SOMAPISST '+
    'from NFCEITENS where NCI_NOTA=:nota'); // and NCI_COMPOETOTAL=''S''');
  QYAux.ParamByName('nota').AsInteger:=TBNfceNFC_CODIGO.Value;
  QYAux.Open;

  //atualiza totais na tabela NFCE.
  TBNfceNFC_ACREPORC.Value              :=0;
  if QYAux.FieldByName('VALORACESSORIAS').AsExtended > 0 then
  TBNfceNFC_ACREPORC.Value              :=Decimais((QYAux.FieldByName('VALORACESSORIAS').AsExtended * 100) / QYAux.FieldByName('TOTALPRODUTOS').AsExtended, 8);
  TBNfceNFC_ACREVALOR.Value             :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;
  TBNfceNFC_BASECOFINS.Value            :=QYAux.FieldByName('BASECOFINS').AsExtended;
  TBNfceNFC_BASECOFINSST.Value          :=QYAux.FieldByName('BASECOFINSST').AsExtended;
  TBNfceNFC_BASEICMS.Value              :=QYAux.FieldByName('BASEICMS').AsExtended;
  TBNfceNFC_BASEICMSST.Value            :=QYAux.FieldByName('BASEICMSST').AsExtended;
  TBNfceNFC_BASEIPI.Value               :=QYAux.FieldByName('BASEIPI').AsExtended;
  TBNfceNFC_BASEPIS.Value               :=QYAux.FieldByName('BASEPIS').AsExtended;
  TBNfceNFC_BASEPISST.Value             :=QYAux.FieldByName('BASEPISST').AsExtended;
  TBNfceNFC_CUSTOTOTAL.Value            :=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
  TBNfceNFC_DESCVALOR.Value             :=Decimais(QYAux.FieldByName('VALORDESCONTO').AsExtended,2); //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBNfceNFC_PESOLIQ.Value               :=QYAux.FieldByName('PESOTOTAL').AsFloat;
  TBNfceNFC_SEQUENCIAITEM.Value         :=QYAux.FieldByName('SEQUENCIA').AsInteger;
  TBNfceNFC_TOTALCOFINS.Value           :=QYAux.FieldByName('VALORCOFINS').AsExtended;
  TBNfceNFC_TOTALCOFINSST.Value         :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
  TBNfceNFC_TOTALCOMISSAO.Value         :=QYAux.FieldByName('VALORCOMISSAO').AsExtended;
  TBNfceNFC_TOTALFCP.Value              :=QYAux.FieldByName('VALORFCP').AsExtended;
  TBNfceNFC_TOTALFCPST.Value            :=QYAux.FieldByName('VALORFCPST').AsExtended;
  TBNfceNFC_TOTALICMS.Value             :=QYAux.FieldByName('VALORICMS').AsExtended;
  TBNfceNFC_TOTALICMSCREDSN.Value       :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
  TBNfceNFC_TOTALICMSST.Value           :=QYAux.FieldByName('VALORICMSST').AsExtended;
  TBNfceNFC_TOTALICMSUFDEST.Value       :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
  TBNfceNFC_TOTALICMSUFREMET.Value      :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
  TBNfceNFC_TOTALIPI.Value              :=0; //nfce nao tem IPI. QYAux.FieldByName('VALORIPI').AsExtended;
  TBNfceNFC_TOTALPIS.Value              :=QYAux.FieldByName('VALORPIS').AsExtended;
  TBNfceNFC_TOTALPISST.Value            :=QYAux.FieldByName('VALORPISST').AsExtended;
  TBNfceNFC_TOTALPRODUTOS.Value         :=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;
  TBNfceNFC_TOTALTRIBUTOS.Value         :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
  TBNfceNFC_TOTALTRIBUTOSEST.Value      :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
  TBNfceNFC_TOTALTRIBUTOSFED.Value      :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
  TBNfceNFC_TOTALTRIBUTOSIMP.Value      :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
  TBNfceNFC_TOTALTRIBUTOSMUN.Value      :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
  TBNfceNFC_VALORFRETE.Value            :=QYAux.FieldByName('VALORFRETE').AsExtended;

  //reforma tributária.
  TBNfceNFC_BASEIBSCBS.Value            :=QYAux.FieldByName('BASEIBSCBS').AsExtended;
  TBNfceNFC_BASEIS.Value                :=QYAux.FieldByName('BASEIS').AsExtended;

  TBNfceNFC_CBSCREDPRES.Value           :=QYAux.FieldByName('VALORCBSCREDPRES').AsExtended;
  TBNfceNFC_CBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
  TBNfceNFC_CBSDEVOLUCAO.AsExtended     :=QYAux.FieldByName('VALORCBSDEV').AsExtended;
  TBNfceNFC_CBSDIFERIMENTO.AsExtended   :=QYAux.FieldByName('VALORCBSDIF').AsExtended;
  TBNfceNFC_CBSMONO.AsExtended          :=0; //QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
  TBNfceNFC_CBSMONORETENCAO.AsExtended  :=0; //QYAux.FieldByName('VALORIBSMUN').AsExtended;
  TBNfceNFC_CBSMONORETIDO.AsExtended    :=0; //QYAux.FieldByName('VALORIBS').AsExtended;
  TBNfceNFC_CBSVALOR.AsExtended         :=QYAux.FieldByName('VALORCBS').AsExtended;

  TBNfceNFC_IBSUFDIFERIMENTO.Value      :=QYAux.FieldByName('VALORIBSUFDIF').AsExtended;
  TBNfceNFC_IBSUFDEVOLUCAO.AsExtended   :=QYAux.FieldByName('VALORIBSUFDEV').AsExtended;
  TBNfceNFC_IBSUFVALOR.AsExtended       :=QYAux.FieldByName('VALORIBSUF').AsExtended;
  TBNfceNFC_IBSMUNDIFERIMENTO.AsExtended:=QYAux.FieldByName('VALORIBSMUNDIF').AsExtended;
  TBNfceNFC_IBSMUNDEVOLUCAO.AsExtended  :=QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
  TBNfceNFC_IBSMUNVALOR.AsExtended      :=QYAux.FieldByName('VALORIBSMUN').AsExtended;
  TBNfceNFC_IBSVALOR.AsExtended         :=QYAux.FieldByName('VALORIBS').AsExtended;
  TBNfceNFC_IBSCREDPRES.AsExtended      :=QYAux.FieldByName('VALORIBSCREDPRES').AsExtended;
  TBNfceNFC_IBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

  TBNfceNFC_TOTALIS.Value               :=QYAux.FieldByName('VALORIS').AsExtended;

  TBNfceNFC_VALORTOTALRTC.Value:=
      TBNfceNFC_TOTALPRODUTOS.Value //na nfe é totalbruto.
    - TBNfceNFC_DESCVALOR.Value
    - TBNfceNFC_VALORFRETE.Value
    //+ TBNfceNFC_VALORSEGURO.Value
    //+ TBNfceNFC_VALORDESPACES.Value
    + TBNfceNFC_IBSVALOR.Value
    + TBNfceNFC_CBSVALOR.Value;

  //calcula o valor total da venda.
  //(+) vProd (id:W07)
  //(-) vDesc (id:W10)
  //(-) vICMSDeson (id:W04a)
  //(+) vST (id:W06) = imcsst
  //(+) vFCPST (id:W06a)
  //(+) vFrete (id:W08)
  //(+) vSeg (id:W09)
  //(+) vOutro (id:W15) = acrevalor
  //(+) vII (id:W11)
  //(+) vIPI (id:W12)
  //(+) vIPIDevol (id: W12a)
  //(+) vServ (id:W18) (*3) (NT 2011/005)
  //(+) vPISST                   //
  //(+) vCofinsST                //
  TBNfceNFC_VALORTOTAL.Value:=Decimais(TBNfceNFC_TOTALPRODUTOS.AsExtended
    + TBNfceNFC_VALORFRETE.AsExtended
    + TBNfceNFC_TOTALICMSST.AsExtended
    + TBNfceNFC_TOTALIPI.AsExtended
    + TBNfceNFC_ACREVALOR.AsExtended
    - TBNfceNFC_DESCVALOR.AsExtended,2);
  //QYAux.FieldByName('SOMAPISST').AsExtended+
  //QYAux.FieldByName('SOMACOFINSST').AsExtended;

  //calcula nova porcentagem de desconto.
  //if TBNfceNFC_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
  //TBNfceNFC_DESCPORC.Value:=Decimais((100.0/QYAux.FieldByName('VALORTOTALBRUTO').AsExtended)*TBNfceNFC_DESCVALOR.AsExtended,8) else
  //TBNfceNFC_DESCPORC.Value:=0;

  //TBNfceNFC_DESCPORC.Value:=QYAux.FieldByName('PORCDESCONTO').AsExtended; //errado... nao somar os descontos os itens.

  //a porcentagem de desconto é sempre pelo total do cupom, então podemos totalizar e dividir pela quantidade de itens para pegar o valor correto informado no total.
  if QYAux.FieldByName('QTDEITENS').AsInteger > 0 then
  TBNfceNFC_DESCPORC.Value:=Decimais(QYAux.FieldByName('PORCDESCONTO').AsExtended / QYAux.FieldByName('QTDEITENS').AsInteger, 8) else
  TBNfceNFC_DESCPORC.Value:=0;

  //calcula o lucro da venda.
  TBNfceNFC_LUCROVALOR.Value:=TBNfceNFC_VALORTOTAL.Value-TBNfceNFC_CUSTOTOTAL.Value;
  if TBNfceNFC_LUCROVALOR.Value<>0 then
  begin
    if TBNfceNFC_VALORTOTAL.Value=0 then
    TBNfceNFC_LUCROPORC.Value:=(-100.0) else
    TBNfceNFC_LUCROPORC.Value:=(TBNfceNFC_LUCROVALOR.Value/TBNfceNFC_VALORTOTAL.Value)*100.0;
  end;

  //valor do troco.
  TBNfceNFC_VALORTROCO.Value:=0;
  if TBNfceNFC_VALORRECEBIDO.Value > TBNfceNFC_VALORTOTAL.Value then
  TBNfceNFC_VALORTROCO.Value:=TBNfceNFC_VALORRECEBIDO.Value - TBNfceNFC_VALORTOTAL.Value;

  QYAux.Close;
  if DarPost then TBNfce.Post;
end;

procedure TDM.TBNfceAfterInsert(DataSet: TDataSet);
var Emissao: String;
  QY: TFDQuery;
begin
  //localiza a condicao de pagamento para pegar a porcentagem de desconto.
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCondicoes.Open;
  //localiza a CFOP padrao.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  TBNfceNFC_ACREPORC.Value:=0;
  TBNfceNFC_ACREVALOR.Value:=0;
  TBNfceNFC_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBNfceNFC_BASEIBSCBS.Value:=0;
  TBNfceNFC_BASEIS.Value:=0;
  TBNfceNFC_CBSCREDPRES.Value:=0;
  TBNfceNFC_CBSCREDPRESSUS.Value:=0;
  TBNfceNFC_CBSDEVOLUCAO.Value:=0;
  TBNfceNFC_CBSDIFERIMENTO.Value:=0;
  TBNfceNFC_CBSMONO.Value:=0;
  TBNfceNFC_CBSMONORETENCAO.Value:=0;
  TBNfceNFC_CBSMONORETIDO.Value:=0;
  TBNfceNFC_CBSVALOR.Value:=0;
  TBNfceNFC_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNfceNFC_CODIGONUMERICO.Value:=GerarSenha(8,False,False);
  TBNfceNFC_COMISSAOPOR.Value:=TBParametrosPAR_COMISSAOPOR.Value;
  TBNfceNFC_CONDICAO.Value:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBNfceNFC_CONTINGENCIA.Value:='N';
  if TBParametrosPAR_NFCETIPOEMISSAO.Value<>'1 - NORMAL' then
  TBNfceNFC_CONTINGENCIA.Value:='S';
  TBNfceNFC_CUSTOTOTAL.Value:=0;
  TBNfceNFC_DESCPORC.Value:=0;
  TBNfceNFC_DESCVALOR.Value:=0;
  TBNfceNFC_DTCADASTRO.Value:=ServerDate;
  TBNfceNFC_DTEMISSAO.Value:=TBNfceNFC_DTCADASTRO.Value;
  TBNfceNFC_FINALIDADE.Value:='1 - NFE NORMAL';
  TBNfceNFC_GOVERNAMENTAL.Value:='0 - NENHUM';
  TBNfceNFC_GOVERNAMENTALALIQRED.Value:=0;
  TBNfceNFC_GOVERNAMENTALOP.Value:='0 - NENHUM';
  TBNfceNFC_HRCADASTRO.Value:=ServerTime;
  TBNfceNFC_IBSCREDPRES.Value:=0;
  TBNfceNFC_IBSCREDPRESSUS.Value:=0;
  TBNfceNFC_IBSMONO.Value:=0;
  TBNfceNFC_IBSMONORETENCAO.Value:=0;
  TBNfceNFC_IBSMONORETIDO.Value:=0;
  TBNfceNFC_IBSMUNDEVOLUCAO.Value:=0;
  TBNfceNFC_IBSMUNDIFERIMENTO.Value:=0;
  TBNfceNFC_IBSMUNVALOR.Value:=0;
  TBNfceNFC_IBSUFDEVOLUCAO.Value:=0;
  TBNfceNFC_IBSUFDIFERIMENTO.Value:=0;
  TBNfceNFC_IBSUFVALOR.Value:=0;
  TBNfceNFC_IBSVALOR.Value:=0;
  TBNfceNFC_INFOADICFISCO.Value:=TBNaturezasNAT_OBSERVACOES.Value;
  TBNfceNFC_LUCROPORC.Value:=0;
  TBNfceNFC_LUCROVALOR.Value:=0;
  TBNfceNFC_MODELO.Value:=TBParametrosPAR_NFCEMODELO.Value;
  TBNfceNFC_MOVIMENTAESTOQUE.Value:=TBNaturezasNAT_MOVIMENTAESTOQUE.Value;
  TBNfceNFC_MOVIMENTAFINANCEIRO.Value:=TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  TBNfceNFC_NOTACREDITO.Value:='00 - NENHUM';
  TBNfceNFC_NOTADEBITO.Value:='00 - NENHUM';
  TBNfceNFC_SEQUENCIAITEM.Value:=0;
  TBNfceNFC_SERIE.Value:=TBParametrosPAR_NFCESERIE.Value;
  TBNfceNFC_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada.
  TBNfceNFC_TABELAPRECO.Value:=TBParametrosPAR_TABELAPRECO.Value;
  TBNfceNFC_TIPOATENDIMENTO.Value:=TBParametrosPAR_NFETIPOATENDIMENTO.Value;
  TBNfceNFC_TIPOCONSUMIDOR.Value:=TBParametrosPAR_NFETIPOCONSUMIDOR.Value;
  TBNfceNFC_TIPOEMISSAO.Value:=TBParametrosPAR_NFETIPOEMISSAO.Value;
  TBNfceNFC_TIPOOPERACAO.Value:='1 - OPERACAO INTERNA';
  TBNfceNFC_TOTALCOFINS.Value:=0;
  TBNfceNFC_TOTALCOFINSST.Value:=0;
  TBNfceNFC_TOTALCOMISSAO.Value:=0;
  TBNfceNFC_TOTALFCP.Value:=0;
  TBNfceNFC_TOTALFCPST.Value:=0;
  TBNfceNFC_TOTALICMS.Value:=0;
  TBNfceNFC_TOTALICMSCREDSN.Value:=0;
  TBNfceNFC_TOTALICMSST.Value:=0;
  TBNfceNFC_TOTALICMSUFDEST.Value:=0;
  TBNfceNFC_TOTALICMSUFREMET.Value:=0;
  TBNfceNFC_TOTALIPI.Value:=0;
  TBNfceNFC_TOTALIS.Value:=0;
  TBNfceNFC_TOTALPIS.Value:=0;
  TBNfceNFC_TOTALPISST.Value:=0;
  TBNfceNFC_TOTALPRODUTOS.Value:=0;
  TBNfceNFC_TOTALTRIBUTOS.Value:=0;
  TBNfceNFC_TOTALTRIBUTOSEST.Value:=0;
  TBNfceNFC_TOTALTRIBUTOSFED.Value:=0;
  TBNfceNFC_TOTALTRIBUTOSIMP.Value:=0;
  TBNfceNFC_TOTALTRIBUTOSMUN.Value:=0;
  TBNfceNFC_VALORRECEBIDO.Value:=0;
  TBNfceNFC_VALORTOTAL.Value:=0;
  TBNfceNFC_VALORTOTALRTC.Value:=0;
  TBNfceNFC_VALORTROCO.Value:=0;

  QY:=TFDQuery.Create(Self);
  QY.Connection:=FDConnection1;
  QY.SQL.Clear;
  QY.SQL.Add('select gen_id(GEN_NFCE,0) as CODIGO from RDB$DATABASE');
  QY.Open;

  Emissao:=FormatDateTime('DD/MM/YY',TBNfceNFC_DTEMISSAO.Value);
  TBNfceNFC_CHAVEACESSO.Value:=CriarChaveAcesso(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    Copy(Emissao,7,2),
    Copy(Emissao,4,2),
    LimparFormatacao(TBEmpresaEMP_CNPJ.Value),
    TBNfceNFC_MODELO.Value,
    TBNfceNFC_SERIE.Value,
    QY.FieldByName('CODIGO').AsInteger+1,
    StrToInt(Copy(TBNfceNFC_TIPOEMISSAO.Value,1,1)),
    TBNfceNFC_CODIGONUMERICO.Value
  );
  QY.Destroy;
end;

procedure TDM.TBNfceAfterPost(DataSet: TDataSet);
var Emissao, S: String;
begin
  if InserindoNovoRegistroNFe then
  begin
    InserindoNovoRegistroNFe:=False;
    Emissao:=FormatDateTime('DD/MM/YY',TBNfceNFC_DTEMISSAO.Value);
    S:=CriarChaveAcesso(
      DM.TBEmpresaEMP_ESTADOCODIGO.Value,
      Copy(Emissao,7,2),
      Copy(Emissao,4,2),
      LimparFormatacao(TBEmpresaEMP_CNPJ.Value),
      TBNfceNFC_MODELO.Value,
      TBNfceNFC_SERIE.Value,
      TBNfceNFC_CODIGO.Value,
      StrToInt(Copy(TBNfceNFC_TIPOEMISSAO.Value,1,1)),
      TBNfceNFC_CODIGONUMERICO.Value
    );
    if S <> TBNfceNFC_CHAVEACESSO.Value then
    begin
      TBNfce.Edit;
      TBNfceNFC_CHAVEACESSO.Value:=S;
      TBNfce.Post;
    end;
  end;
end;

procedure TDM.TBNfceBeforePost(DataSet: TDataSet);
begin
  TBNfceNFC_DTATUALIZACAO.Value:=ServerDate;
  TBNfceNFC_HRATUALIZACAO.Value:=ServerTime;
  TBNfceNFC_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisNFCe(False);

  if TBNfce.State in [dsInsert] then
  InserindoNovoRegistroNFe:=True;
end;

procedure TDM.DSNfceStateChange(Sender: TObject);
begin
  if TBNfce.State in [dsInsert, dsEdit] then
  begin
    if FormNfce<>nil then
    begin
      FormNfce.ArquivosXMLdaNFCe1.Enabled:=False;
      FormNfce.ArquivosXMLdaNFCe1Button.Enabled:=False;
      FormNfce.AssociarArquivoXMLBaixado1.Enabled:=False;
      FormNfce.AtualizarANFCeComBaseNoXML1.Enabled:=False;
      FormNfce.ConsultarNFCeNoPortal1.Enabled:=False;
      FormNfce.ConsultarNFCePelaChaveDeAcesso1.Enabled:=False;
      FormNfce.ConsultarNFCePelaChaveDeAcesso1Button.Enabled:=False;
      FormNfce.DANFCE1.Enabled:=False;
      FormNfce.GerenciamentoDeContingencias1.Enabled:=False;
      FormNfce.GerenciamentoDeContingencias1Button.Enabled:=False;
      FormNfce.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=False;
      FormNfce.InutilizacoesNoPeriodo1.Enabled:=False;
      FormNfce.Localizar1.Enabled:=False;
      FormNfce.Localizar1Button.Enabled:=False;
      FormNfce.LocalizarNotaNaMovimentacaoDoEstoque1.Enabled:=False;
      FormNfce.LocalizarNotaNaMovimentacaoDoEstoque1Button.Enabled:=False;
      FormNfce.LocalizarNotanoContasaReceber1.Enabled:=False;
      FormNfce.LocalizarNotanoContasaReceber1Button.Enabled:=False;
      FormNfce.NFCeComItens1.Enabled:=False;
      FormNfce.NFCeOrdenadoPorCodigo1.Enabled:=False;
      FormNfce.NFCePorCFOP1.Enabled:=False;
      FormNfce.NFCePorCFOPDosItens1.Enabled:=False;
      FormNfce.NFCePorStatus1.Enabled:=False;
      FormNfce.Relatorios2.Enabled:=False;
      FormNfce.Relatorios2Button.Enabled:=False;
      FormNfce.SalvarPDFDANFCEComo1.Enabled:=False;
      FormNfce.SalvarPDFDANFCEComo1Button.Enabled:=False;
      FormNfce.SalvarZIPXMLsComo1.Enabled:=False;
      FormNfce.VerificacaoDeNumeracao1.Enabled:=False;
      FormNfce.ZiparArquivosXML1.Enabled:=False;
      FormNfce.ZiparArquivosXML1Button.Enabled:=False;
    end;
  end else
  begin
    if FormNfce<>nil then
    begin
      FormNfce.ArquivosXMLdaNFCe1.Enabled:=True;
      FormNfce.ArquivosXMLdaNFCe1Button.Enabled:=True;
      FormNfce.AssociarArquivoXMLBaixado1.Enabled:=True;
      FormNfce.AtualizarANFCeComBaseNoXML1.Enabled:=True;
      FormNfce.ConsultarNFCeNoPortal1.Enabled:=True;
      FormNfce.ConsultarNFCePelaChaveDeAcesso1.Enabled:=True;
      FormNfce.ConsultarNFCePelaChaveDeAcesso1Button.Enabled:=True;
      FormNfce.DANFCE1.Enabled:=True;
      FormNfce.GerenciamentoDeContingencias1.Enabled:=True;
      FormNfce.GerenciamentoDeContingencias1Button.Enabled:=True;
      FormNfce.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=True;
      FormNfce.InutilizacoesNoPeriodo1.Enabled:=True;
      FormNfce.Localizar1.Enabled:=True;
      FormNfce.Localizar1Button.Enabled:=True;
      FormNfce.LocalizarNotaNaMovimentacaoDoEstoque1.Enabled:=True;
      FormNfce.LocalizarNotaNaMovimentacaoDoEstoque1Button.Enabled:=True;
      FormNfce.LocalizarNotaNoContasaReceber1.Enabled:=True;
      FormNfce.LocalizarNotaNoContasaReceber1Button.Enabled:=True;
      FormNfce.NFCeComItens1.Enabled:=True;
      FormNfce.NFCeOrdenadoPorCodigo1.Enabled:=True;
      FormNfce.NFCePorCFOP1.Enabled:=True;
      FormNfce.NFCePorCFOPDosItens1.Enabled:=True;
      FormNfce.NFCePorStatus1.Enabled:=True;
      FormNfce.Relatorios2.Enabled:=True;
      FormNfce.Relatorios2Button.Enabled:=True;
      FormNfce.SalvarPDFDANFCEComo1.Enabled:=True;
      FormNfce.SalvarPDFDANFCEComo1Button.Enabled:=True;
      FormNfce.SalvarZIPXMLsComo1.Enabled:=True;
      FormNfce.VerificacaoDeNumeracao1.Enabled:=True;
      FormNfce.ZiparArquivosXML1.Enabled:=True;
      FormNfce.ZiparArquivosXML1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNfce);
      FormMain.SetFields(FormNfce,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NFCECODIGO                                                                 //
//##############################################################################
//nada

//##############################################################################
// NFCEINUTILIZADAS                                                           //
//##############################################################################
//nada

//##############################################################################
// NFCE ITENS.                                                                //
//##############################################################################
{$REGION 'TABELA NFCEITENS'}
procedure TDM.CalcularTotaisNFCeItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  //calcula o valor bruto.
  TBNfceItensNCI_VALORTOTALBRUTO.Value:=Decimais((TBNfceItensNCI_QUANTIDADE.AsExtended*TBNfceItensNCI_VALORUNIT.AsExtended),2);

  //TBNfceItensNCI_DESCVALOR.Value:=Decimais((TBNfceItensNCI_VALORTOTALBRUTO.AsExtended/100.00)*TBNfceItensNCI_DESCPORC.AsExtended,2);

  {$REGION 'calcula o valor total com desconto.'}
  TBNfceItensNCI_VALORTOTAL.Value:=Decimais((TBNfceItensNCI_QUANTIDADE.AsExtended*TBNfceItensNCI_VALORUNIT.AsExtended),2);
  //conferir se está correto -> TBNfceItensNCI_VALORTOTAL.Value:=TBNfceItensNCI_VALORTOTAL.Value-TBNfceItensNCI_DESCVALOR.Value+TBNfceItensNCI_VALORACESSORIAS.Value;
  {$ENDREGION}

  {$REGION 'calcula o peso total do produto.'}
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBNfceItensNCI_PESOTOTAL.Value:=TBNfceItensNCI_QUANTIDADE.AsExtended*TBNfceItensNCI_PESO.Value;
  {$ENDREGION}

  {$REGION 'calcula valor do IPI.'}
  TBNfceItensNCI_BASEIPI.Value:=0;
  TBNfceItensNCI_VALORIPI.Value:=0;
  {nfce nao tem IPI... if TBNfceItensNCI_ALIQIPI.Value > 0 then
  begin
    TBNfceItensNCI_BASEIPI.Value:=TBNfceItensNCI_VALORTOTAL.Value;
    TBNfceItensNCI_VALORIPI.Value:=Decimais((TBNfceItensNCI_BASEIPI.AsExtended/100.00)*TBNfceItensNCI_ALIQIPI.AsExtended,2);
  end;}
  {$ENDREGION}

  {$REGION 'calcula valor do ICMS'}
  //base = total + frete + seguro + acessorias - desconto.
  TBNfceItensNCI_BASEICMS.Value:=0;
  TBNfceItensNCI_VALORICMS.Value:=0;
  TBNfceItensNCI_VALORICMSUFDEST.Value:=0;
  TBNfceItensNCI_VALORICMSUFREMET.Value:=0;
  TBNfceItensNCI_VALORFCP.Value:=0;
  if TBNfceItensNCI_COMPOEBASEICMS.Value='S' then
  begin
    TBNfceItensNCI_BASEICMS.Value:=TBNfceItensNCI_VALORTOTAL.Value;

    //24-11-2020
    if TBNfceNFC_TIPOCONSUMIDOR.Value='1 - CONSUMIDOR FINAL' then
    TBNfceItensNCI_BASEICMS.Value:=TBNfceItensNCI_BASEICMS.Value+TBNfceItensNCI_VALORIPI.Value;

    if TBNfceItensNCI_ALIQICMSRED.Value<>0 then
    TBNfceItensNCI_BASEICMS.Value:=Decimais(TBNfceItensNCI_BASEICMS.AsExtended-((TBNfceItensNCI_BASEICMS.AsExtended/100)*TBNfceItensNCI_ALIQICMSRED.AsExtended),2);
    TBNfceItensNCI_VALORICMS.Value:=Decimais(((TBNfceItensNCI_BASEICMS.AsExtended/100.00)*TBNfceItensNCI_ALIQICMS.AsExtended),2);

    //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
    //40% de (base calculo / 100 * (aliq icms - interestadual))
    //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
    if TBEmpresaEMP_ESTADO.Value<>TBNfceNFC_ESTADO.Value then
    begin
      ICMS:=(TBNfceItensNCI_BASEICMS.AsExtended/100.00) * (Abs(TBNfceItensNCI_ALIQICMS.AsExtended-TBNfceItensNCI_ALIQICMSINTER.AsExtended));
      TBNfceItensNCI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBNfceItensNCI_ALIQICMSINTERPART.AsExtended,2);

      //calcula o valor do ICMS na UF do remetente
      TBNfceItensNCI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBNfceItensNCI_ALIQICMSINTERPART.AsExtended),2);

      //calcula o valor do FCP.
      TBNfceItensNCI_VALORFCP.Value:=(TBNfceItensNCI_BASEICMS.Value/100.00) * TBNfceItensNCI_ALIQFCP.Value;
    end;
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do ICMS ST.'}
  //base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
  TBNfceItensNCI_BASEICMSST.Value:=0;
  TBNfceItensNCI_VALORICMSST.Value:=0;
  TBNfceItensNCI_VALORFCPST.Value:=0;
  if (TBNfceItensNCI_COMPOEBASEICMSST.Value='S') and (TBNfceItensNCI_ALIQICMSST.Value>0) then
  begin
    BC:=TBNfceItensNCI_VALORTOTAL.AsExtended+TBNfceItensNCI_VALORIPI.AsExtended;
        //TBNfceItensNCI_VALORFRETE.AsExtended+TBNfceItensNCI_VALORSEGURO.AsExtended+TBNfceItensNCI_VALORACESSORIAS.AsExtended;

    if TBNfceItensNCI_ALIQICMSRED.Value<>0 then
    BC:=Decimais(BC-((BC/100)*TBNfceItensNCI_ALIQICMSRED.AsExtended),2);
    ICMS:=Decimais(((BC/100)*TBNfceItensNCI_ALIQICMS.AsExtended),2);

    TBNfceItensNCI_BASEICMSST.Value:=Decimais(((TBNfceItensNCI_VALORTOTAL.AsExtended+TBNfceItensNCI_VALORIPI.AsExtended)+
                                              ((TBNfceItensNCI_VALORTOTAL.AsExtended+TBNfceItensNCI_VALORIPI.AsExtended)/100) *
                                                TBNfceItensNCI_ALIQICMSADICST.AsExtended),2);
    TBNfceItensNCI_VALORICMSST.Value:=Decimais(((TBNfceItensNCI_BASEICMSST.AsExtended/100)*TBNfceItensNCI_ALIQICMSST.AsExtended)-ICMS,2);
    TBNfceItensNCI_VALORFCPST.Value:=(TBNfceItensNCI_BASEICMSST.Value/100.00) * TBNfceItensNCI_ALIQFCPST.Value;
  end;
  {$ENDREGION}

  {$REGION 'calcula o valor do crédito do simples nacional.'}
  TBNfceItensNCI_VALORICMSCREDSN.Value:=0;
  if (TBNfceItensICM_CALCULACREDITOSN.Value='S') and (TBNfceItensNAT_CALCULACREDITOSN.Value='S') then
  begin
    TBNfceItensNCI_VALORICMSCREDSN.Value:=Decimais((TBNfceItensNCI_VALORTOTAL.AsExtended/100)*TBNfceNFC_ALIQICMSCREDSN.AsExtended,2);
  end;
  {$ENDREGION}

  //calcula valor do II. - NFCE NAO TEM.

  //calcula valor do ISS. - NFCE NAO TEM.

  {$REGION 'calcula valor do PIS.'}
  TBNfceItensNCI_BASEPIS.Value:=0;
  TBNfceItensNCI_VALORPIS.Value:=0;
  if TBNfceItensNCI_ALIQPIS.Value>0 then
  begin
    TBNfceItensNCI_BASEPIS.Value:=TBNfceItensNCI_VALORTOTAL.Value;
    TBNfceItensNCI_VALORPIS.Value:=Decimais((TBNfceItensNCI_BASEPIS.AsExtended/100)*TBNfceItensNCI_ALIQPIS.AsExtended,2);
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do PISST.'}
  TBNfceItensNCI_BASEPISST.Value:=0;
  TBNfceItensNCI_VALORPISST.Value:=0;
  if TBNfceItensNCI_ALIQPISST.Value>0 then
  begin
    TBNfceItensNCI_BASEPISST.Value:=TBNfceItensNCI_VALORTOTAL.Value;
    TBNfceItensNCI_VALORPISST.Value:=Decimais((TBNfceItensNCI_BASEPISST.AsExtended/100)*TBNfceItensNCI_ALIQPISST.AsExtended,2);
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do COFINS.'}
  TBNfceItensNCI_BASECOFINS.Value:=0;
  TBNfceItensNCI_VALORCOFINS.Value:=0;
  if TBNfceItensNCI_ALIQCOFINS.Value>0 then
  begin
    TBNfceItensNCI_BASECOFINS.Value:=TBNfceItensNCI_VALORTOTAL.Value;
    TBNfceItensNCI_VALORCOFINS.Value:=Decimais((TBNfceItensNCI_BASECOFINS.AsExtended/100)*TBNfceItensNCI_ALIQCOFINS.AsExtended,2);
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do COFINS ST.'}
  TBNfceItensNCI_BASECOFINSST.Value:=0;
  TBNfceItensNCI_VALORCOFINSST.Value:=0;
  if TBNfceItensNCI_ALIQCOFINSST.Value>0 then
  begin
    TBNfceItensNCI_BASECOFINSST.Value:=TBNfceItensNCI_VALORTOTAL.Value;
    TBNfceItensNCI_VALORCOFINSST.Value:=Decimais((TBNfceItensNCI_BASECOFINSST.AsExtended/100)*TBNfceItensNCI_ALIQCOFINSST.AsExtended,2);
  end;
  {$ENDREGION}

  {$REGION 'calcula a comissão do vendedor sobre o item. (por produto).'}
  //valor total - IPI - ICMSST / 100 * %comissao.
  if TBNfceItensNAT_CALCULACOMISSAO.Value='S' then
  TBNfceItensNCI_VALORCOMISSAO.Value:=Decimais((((TBNfceItensNCI_VALORTOTAL.AsExtended-TBNfceItensNCI_VALORIPI.AsExtended-TBNfceItensNCI_VALORICMSST.AsExtended)/100.0)*TBNfceItensNCI_COMISSAO.AsExtended),2) else
  TBNfceItensNCI_VALORCOMISSAO.Value:=0;
  {$ENDREGION}

  {$REGION 'calcula o lucro no item.'}
  TBNfceItensNCI_PRECOCUSTOTOTAL.Value:=TBNfceItensNCI_PRECOCUSTO.Value*TBNfceItensNCI_QUANTIDADE.Value;
  TBNfceItensNCI_LUCROVALOR.Value:=TBNfceItensNCI_VALORTOTAL.Value-TBNfceItensNCI_PRECOCUSTOTOTAL.Value;
  if TBNfceItensNCI_LUCROVALOR.Value<>0 then
  begin
    if TBNfceItensNCI_VALORTOTAL.Value=0 then
    TBNfceItensNCI_LUCROPORC.Value:=(-100.0) else
    TBNfceItensNCI_LUCROPORC.Value:=(TBNfceItensNCI_LUCROVALOR.Value/TBNfceItensNCI_VALORTOTAL.Value)*100.0;
  end;
  {$ENDREGION}

  {$REGION 'calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.'}
  TBClassFiscal.Close;
  TBClassFiscal.ParamByName('codigo').AsString:=TBNfceItensNCI_CLASSFISCAL.Value;
  TBClassFiscal.ParamByName('excecao').AsInteger:=TBNfceItensNCI_EXCECAO.Value;
  TBClassFiscal.Open;
  if (Copy(TBNfceItensNCI_ORIGEM.Value,1,1)='0') or
     (Copy(TBNfceItensNCI_ORIGEM.Value,1,1)='3') or
     (Copy(TBNfceItensNCI_ORIGEM.Value,1,1)='4') or
     (Copy(TBNfceItensNCI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
  begin
    TBNfceItensNCI_VALORTRIBUTOSEST.Value:=Decimais((TBNfceItensNCI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAESTADUAL.AsExtended,2);
    TBNfceItensNCI_VALORTRIBUTOSFED.Value:=Decimais((TBNfceItensNCI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2);
    TBNfceItensNCI_VALORTRIBUTOSMUN.Value:=Decimais((TBNfceItensNCI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAMUNICIPAL.AsExtended,2);
    TBNfceItensNCI_VALORTRIBUTOSIMP.Value:=0;
    TBNfceItensNCI_VALORTRIBUTOS.Value:=TBNfceItensNCI_VALORTRIBUTOSEST.Value+TBNfceItensNCI_VALORTRIBUTOSFED.Value+TBNfceItensNCI_VALORTRIBUTOSMUN.Value;
  end else
  begin
    TBNfceItensNCI_VALORTRIBUTOSEST.Value:=0;
    TBNfceItensNCI_VALORTRIBUTOSFED.Value:=0;
    TBNfceItensNCI_VALORTRIBUTOSMUN.Value:=0;
    TBNfceItensNCI_VALORTRIBUTOSIMP.Value:=Decimais((TBNfceItensNCI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
    TBNfceItensNCI_VALORTRIBUTOS.Value:=TBNfceItensNCI_VALORTRIBUTOSIMP.Value;
  end;
  {$ENDREGION}

  //calculos da reforma tributária.
  {$REGION 'calcula valor do IS.'}
  TBNfceItensNCI_BASEIS.Value:=0;
  TBNfceItensNCI_VALORIS.Value:=0;
  if TBNfceItensNCI_ALIQIS.Value>0 then
  begin
    //base de calculo do IS
    //      (+) vProd
    //      (+) vServ
    //      (+) vFrete
    //      (+) vSeg
    //      (+) vOutro
    //      (+) vII
    //      (-) vDesc
    //      (-) vPIS
    //      (-) vCOFINS
    //      (-) vICMS
    //      (-) vICMSUFDest
    //      (-) vFCP
    //      (-) vFCPUFDest
    //      (-) vICMSMono
    TBNfceItensNCI_BASEIS.Value:=Decimais(
        TBNfceItensNCI_VALORTOTALBRUTO.AsExtended
      + TBNfceItensNCI_VALORFRETE.AsExtended
      //+ TBNfceItensNCI_VALORSEGURO.AsExtended
      + TBNfceItensNCI_VALORACESSORIAS.AsExtended
      //+ TBNfceItensNCI_VALORII.AsExtended
      - TBNfceItensNCI_DESCVALOR.AsExtended
      - TBNfceItensNCI_VALORPIS.AsExtended
      - TBNfceItensNCI_VALORCOFINS.AsExtended
      - TBNfceItensNCI_VALORICMS.AsExtended
      - TBNfceItensNCI_VALORICMSUFDEST.AsExtended
      - TBNfceItensNCI_VALORFCP.AsExtended
      //- TBNfceItensNCI_VALORISS.AsExtended
      , 2
    );
    TBNfceItensNCI_VALORIS.Value:=Decimais((TBNfceItensNCI_BASEIS.AsExtended/100)*TBNfceItensNCI_ALIQIS.AsExtended,2);
  end;
  if TBNfceItensNCI_ALIQISESP.Value>0 then
  TBNfceItensNCI_VALORIS.Value:=TBNfceItensNCI_VALORIS.Value + Decimais((TBNfceItensNCI_QUANTIDADE.AsExtended/100)*TBNfceItensNCI_ALIQISESP.AsExtended,2);
  {$ENDREGION}

  {$REGION 'composicao da base de calculo IBSCBS'}
  //composicao da base
  //    (+) vProd
  //    (+) vServ
  //    (+) vFrete
  //    (+) vSeg
  //    (+) vOutro
  //    (+) vII
  //    (-) vDesc
  //    (-) vPIS
  //    (-) vCOFINS
  //    (-) vICMS
  //    (-) vICMSUFDest
  //    (-) vFCP
  //    (-) vFCPUFDest
  //    (-) vICMSMono
  //    (-) vISSQN
  //    (+) vIS
  TBNfceItensNCI_BASEIBSCBS.Value:=Decimais(
      TBNfceItensNCI_VALORTOTALBRUTO.AsExtended //qtde * valorunit
    + TBNfceItensNCI_VALORFRETE.AsExtended
    //+ TBNfceItensNCI_VALORSEGURO.AsExtended
    + TBNFceItensNCI_VALORACESSORIAS.AsExtended
    //+ TBNfceItensNCI_VALORII.AsExtended
    - TBNfceItensNCI_DESCVALOR.AsExtended
    - TBNfceItensNCI_VALORPIS.AsExtended
    - TBNfceItensNCI_VALORPISST.AsExtended
    - TBNfceItensNCI_VALORCOFINS.AsExtended
    - TBNfceItensNCI_VALORCOFINSST.AsExtended
    - TBNfceItensNCI_VALORICMS.AsExtended
    - TBNfceItensNCI_VALORICMSUFDEST.AsExtended
    - TBNfceItensNCI_VALORFCP.AsExtended
    //- TBNfceItensNCI_VALORISS.AsExtended
    + TBNfceItensNCI_VALORIS.AsExtended, 2
  );
  if TBNfceItensNCI_SOMACOFINSST.Value='N' then TBNfceItensNCI_BASEIBSCBS.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended + TBNfceItensNCI_VALORCOFINSST.AsExtended,2);
  if TBNfceItensNCI_SOMAPISST.Value='N' then TBNfceItensNCI_BASEIBSCBS.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended + TBNfceItensNCI_VALORPISST.AsExtended,2);
  {$ENDREGION}

  {$REGION 'calcula aliquota efetiva IBS'}
  //pAliqEfet = pIBSUF × (1 - pRedAliq / 100).
  TBNfceItensNCI_ALIQIBSMUNEFE.Value:=0;
  if TBNfceItensNCI_ALIQIBSMUNRED.Value > 0 then
  TBNfceItensNCI_ALIQIBSMUNEFE.Value:=Decimais(TBNfceItensNCI_ALIQIBSMUN.AsExtended * (1-TBNfceItensNCI_ALIQIBSMUNRED.AsExtended/100), 4);
  if TBNfceNFC_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfceItensNCI_ALIQIBSMUNEFE.Value:=Decimais(TBNfceItensNCI_ALIQIBSMUN.AsExtended * (1-TBNfceItensNCI_ALIQIBSMUNRED.AsExtended/100) * (1-TBNfceNFC_GOVERNAMENTALALIQRED.AsExtended/100), 4);

  TBNfceItensNCI_ALIQIBSUFEFE.Value:=0;
  if TBNfceItensNCI_ALIQIBSUFRED.Value > 0 then
  TBNfceItensNCI_ALIQIBSUFEFE.Value:=Decimais(TBNfceItensNCI_ALIQIBSUF.AsExtended * (1-TBNfceItensNCI_ALIQIBSUFRED.AsExtended/100), 4);
  if TBNfceNFC_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfceItensNCI_ALIQIBSUFEFE.Value:=Decimais(TBNfceItensNCI_ALIQIBSUF.AsExtended * (1-TBNfceItensNCI_ALIQIBSUFRED.AsExtended/100) * (1-TBNfceNFC_GOVERNAMENTALALIQRED.AsExtended/100), 4);
  {$ENDREGION}

  {$REGION 'calcula aliquota efetiva CBS'}
  //pAliqEfet = pCBS × (1 - pRedAliq / 100)
  //...OU...
  //pAliqEfet = pCBS × (1 - pRedAliq / 100) × (1 - gCompraGov/pRedutor / 100)
  //Alíquota efetiva, após aplicação da redução de alíquota, incluindo o gCompraGov/pRedutor, se houver.
  //    Exemplo: Redução de 40% na alíquota:
  //    Alíquota vigente (A): 10%
  //    Redução na alíquota (R): 40%
  //    Redutor de compras governamentais (RG): 5%
  //    Alíquota Efetiva (E): E = A * (1 - R)*(1- RG)
  //    E = 10 * (1 - 0,4) *(1 - 0,05) = 5,7
  //    Observação: O cálculo da pAliqEfet deve considerar 4 casas decimais com arredondamento na ultima casa decimal.
  TBNfceItensNCI_ALIQCBSEFE.Value:=0;
  if TBNfceItensNCI_ALIQCBSRED.Value > 0 then
  TBNfceItensNCI_ALIQCBSEFE.Value:=Decimais(TBNfceItensNCI_ALIQCBS.AsExtended * (1-TBNfceItensNCI_ALIQCBSRED.AsExtended/100), 4);
  if TBNfceNFC_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfceItensNCI_ALIQCBSEFE.Value:=Decimais(TBNfceItensNCI_ALIQCBS.AsExtended * (1-TBNfceItensNCI_ALIQCBSRED.AsExtended/100) * (1-TBNfceNFC_GOVERNAMENTALALIQRED.AsExtended/100), 4);
  {$ENDREGION}

  {$REGION 'calcula diferimento IBSCBS'}
  //IBS mun diferimento.
  if TBNfceItensNCI_ALIQIBSMUNDIF.Value>0 then
  begin
    TBNfceItensNCI_VALORIBSMUNDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQIBSMUN.AsExtended/100) * (TBNfceItensNCI_ALIQIBSMUNDIF.AsExtended/100),2);
    if TBNfceItensNCI_ALIQIBSMUNEFE.Value>0 then
    TBNfceItensNCI_VALORIBSMUNDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQIBSMUNEFE.AsExtended/100) * (TBNfceItensNCI_ALIQIBSMUNDIF.AsExtended/100),2);
  end;

  //IBS uf diferimento.
  if TBNfceItensNCI_ALIQIBSUFDIF.Value>0 then
  begin
    TBNfceItensNCI_VALORIBSUFDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQIBSUF.AsExtended/100) * (TBNfceItensNCI_ALIQIBSUFDIF.AsExtended/100) ,2);
    if TBNfceItensNCI_ALIQIBSUFEFE.Value>0 then
    TBNfceItensNCI_VALORIBSUFDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQIBSUFEFE.AsExtended/100) * (TBNfceItensNCI_ALIQIBSUFDIF.AsExtended/100) ,2);
  end;

  //CBS diferimento
  if TBNfceItensNCI_ALIQCBSDIF.Value>0 then
  begin
    TBNfceItensNCI_VALORCBSDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQCBS.AsExtended/100) * (TBNfceItensNCI_ALIQCBSDIF.AsExtended/100), 2);
    if TBNfceItensNCI_ALIQCBSEFE.Value>0 then
    TBNfceItensNCI_VALORCBSDIF.Value:=Decimais(TBNfceItensNCI_BASEIBSCBS.AsExtended * (TBNfceItensNCI_ALIQCBSEFE.AsExtended/100) * (TBNfceItensNCI_ALIQCBSDIF.AsExtended/100), 2);
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do IBSCBS'}
  //vIBSUF = (gIBSCBS/vBC x (pIBSUF / 100)) - vDif - vDevTrib
  //...OU...
  //vIBSUF = (gIBSCBS/vBC x (pAliqEfet / 100)) - vDif - vDevTrib
  if TBNfceItensNCI_ALIQIBSMUN.Value>0 then
  TBNfceItensNCI_VALORIBSMUN.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQIBSMUN.AsExtended/100)
    - TBNfceItensNCI_VALORIBSMUNDIF.AsExtended
    - TBNfceItensNCI_VALORIBSMUNDEV.AsExtended,2
  );
  if ((TBNfceItensNCI_ALIQIBSMUNEFE.Value>0) or (TBNfceItensNCI_ALIQIBSMUNRED.Value=100)) then
  TBNfceItensNCI_VALORIBSMUN.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQIBSMUNEFE.AsExtended/100)
    - TBNfceItensNCI_VALORIBSMUNDIF.AsExtended
    - TBNfceItensNCI_VALORIBSMUNDEV.AsExtended,2
  );

  if TBNfceItensNCI_ALIQIBSUF.Value>0 then
  TBNfceItensNCI_VALORIBSUF.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQIBSUF.AsExtended/100)
    - TBNfceItensNCI_VALORIBSUFDIF.AsExtended
    - TBNfceItensNCI_VALORIBSUFDEV.AsExtended, 2
  );
  if ((TBNfceItensNCI_ALIQIBSUFEFE.Value>0) or (TBNfceItensNCI_ALIQIBSUFRED.Value=100)) then
  TBNfceItensNCI_VALORIBSUF.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQIBSUFEFE.AsExtended/100)
    - TBNfceItensNCI_VALORIBSUFDIF.AsExtended
    - TBNfceItensNCI_VALORIBSUFDEV.AsExtended ,2
  );
  TBNfceItensNCI_VALORIBS.Value:=Decimais(TBNfceItensNCI_VALORIBSMUN.AsExtended + TBNfceItensNCI_VALORIBSUF.AsExtended,2);

  //vCBS = (gIBSCBS/vBC x (pCBS / 100)) - vDif – vDevTrib
  TBNfceItensNCI_VALORCBS.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQCBS.AsExtended/100)
    - TBNfceItensNCI_VALORCBSDIF.AsExtended
    - TBNfceItensNCI_VALORCBSDEV.AsExtended, 2
  );
  if ((TBNfceItensNCI_ALIQCBSEFE.Value>0) or (TBNfceItensNCI_ALIQCBSRED.Value=100)) then
  TBNfceItensNCI_VALORCBS.Value:=Decimais(
      TBNfceItensNCI_BASEIBSCBS.AsExtended
    * (TBNfceItensNCI_ALIQCBSEFE.AsExtended/100)
    - TBNfceItensNCI_VALORCBSDIF.AsExtended
    - TBNfceItensNCI_VALORCBSDEV.AsExtended, 2
  );
  {$ENDREGION}
end;

procedure TDM.TBNfceItensAfterDelete(DataSet: TDataSet);
begin
  CodigoMark:=TBNfceNFC_CODIGO.Value;
  RecriarSequencialItensNfce(TBNfceNFC_CODIGO.Value);

  //fecha e abre para trazer o campo NFC_SEQUENCIAITEM atualizado.
  TBNfceItens.Close;
  TBNfce.Close;
  TBNfce.ParamByName('codigo').AsInteger:=CodigoMark;
  TBNfce.Open;
  TBNfceItens.Open;

  CalcularTotaisNFCe(True);
end;

procedure TDM.TBNfceItensAfterInsert(DataSet: TDataSet);
begin
  TBNfceItensNCI_ALIQCOFINS.Value:=0;
  TBNfceItensNCI_ALIQCOFINSST.Value:=0;
  TBNfceItensNCI_ALIQFCP.Value:=0;
  TBNfceItensNCI_ALIQFCPST.Value:=0;
  TBNfceItensNCI_ALIQICMS.Value:=0;
  TBNfceItensNCI_ALIQICMSADICST.Value:=0;
  TBNfceItensNCI_ALIQICMSINTER.Value:=0;
  TBNfceItensNCI_ALIQICMSINTERPART.Value:=0;
  TBNfceItensNCI_ALIQICMSRED.Value:=0;
  TBNfceItensNCI_ALIQICMSST.Value:=0;
  TBNfceItensNCI_ALIQIPI.Value:=0;
  TBNfceItensNCI_ALIQPIS.Value:=0;
  TBNfceItensNCI_ALIQPISST.Value:=0;
  TBNfceItensNCI_BASECOFINS.Value:=0;
  TBNfceItensNCI_BASECOFINSST.Value:=0;
  TBNfceItensNCI_BASEICMS.Value:=0;
  TBNfceItensNCI_BASEICMSRED.Value:=0;
  TBNfceItensNCI_BASEICMSST.Value:=0;
  TBNfceItensNCI_BASEIPI.Value:=0;
  TBNfceItensNCI_BASEPIS.Value:=0;
  TBNfceItensNCI_BASEPISST.Value:=0;
  TBNfceItensNCI_CFOP.Value:=TBNfceNFC_CFOP.Value;
  TBNfceItensNCI_COMISSAO.Value:=0;
  TBNfceItensNCI_COMPOEBASEICMS.Value:='N';
  TBNfceItensNCI_COMPOEBASEICMSST.Value:='N';
  TBNfceItensNCI_CONVERSAO.Value:=1;
  TBNfceItensNCI_DESCPORC.Value:=0;
  TBNfceItensNCI_DESCVALOR.Value:=0;
  TBNfceItensNCI_EXCECAO.Value:=0;
  TBNfceItensNCI_LUCROPORC.Value:=0;
  TBNfceItensNCI_LUCROVALOR.Value:=0;
  TBNfceItensNCI_MODICMS.Value:='3 - VALOR DA OPERACAO';
  TBNfceItensNCI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
  TBNfceItensNCI_NOTA.Value:=TBNfceNFC_CODIGO.Value;
  TBNfceItensNCI_ORIGEM.Value:='0 - NACIONAL';
  TBNfceItensNCI_PRECOCUSTO.Value:=0;
  TBNfceItensNCI_PRECOCUSTOTOTAL.Value:=0;
  TBNfceItensNCI_PRODUTOREAL.Value:=0;
  TBNfceItensNCI_QUANTIDADE.Value:=1;
  TBNfceItensNCI_SEQUENCIA.Value:=TBNfceNFC_SEQUENCIAITEM.Value+1;
  TBNfceItensNCI_SOMACOFINSST.Value:='N';
  TBNfceItensNCI_SOMAPISST.Value:='N';
  TBNfceItensNCI_VALORACESSORIAS.Value:=0;
  TBNfceItensNCI_VALORCOFINS.Value:=0;
  TBNfceItensNCI_VALORCOFINSST.Value:=0;
  TBNfceItensNCI_VALORCOMISSAO.Value:=0;
  TBNfceItensNCI_VALORFCP.Value:=0;
  TBNfceItensNCI_VALORFCPST.Value:=0;
  TBNfceItensNCI_VALORFRETE.Value:=0;
  TBNfceItensNCI_VALORICMS.Value:=0;
  TBNfceItensNCI_VALORICMSCREDSN.Value:=0;
  TBNfceItensNCI_VALORICMSST.Value:=0;
  TBNfceItensNCI_VALORICMSUFDEST.Value:=0;
  TBNfceItensNCI_VALORICMSUFREMET.Value:=0;
  TBNfceItensNCI_VALORTOTAL.Value:=0;
  TBNfceItensNCI_VALORTOTALBRUTO.Value:=0;
end;

procedure TDM.TBNfceItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisNFCe(True);
end;

procedure TDM.TBNfceItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisNFCeItens(False); //o parametro nao está sendo utilizado.
end;
{$ENDREGION}

//##############################################################################
// NFCELOGS                                                                   //
//##############################################################################
{$REGION 'TABELA NFCELOGS'}
procedure TDM.LogNfce(Codigo: Integer; Nome, Descricao: String);
begin
  TBNfceLogs.Insert;
  TBNfceLogsNCL_NFCE.Value:=Codigo;
  TBNfceLogsNCL_NOME.Value:=Nome;
  TBNfceLogsNCL_DESCRICAO.Value:=Descricao;
  TBNfceLogs.Post;
end;

procedure TDM.TBNfceLogsAfterInsert(DataSet: TDataSet);
begin
  TBNfceLogsNCL_DATA.Value:=ServerDate;
  TBNfceLogsNCL_HORA.Value:=ServerTime;
  TBNfceLogsNCL_USUARIO.Value:=UsuarioLogin;
end;
{$ENDREGION}

//##############################################################################
// NFCEPAGAMENTOS                                                             //
//##############################################################################
{$REGION 'TABELA NFCEPAGAMENTOS'}
procedure TDM.TBNfcePagamentosAfterInsert(DataSet: TDataSet);
begin
  if (FormNfcePagamento<>nil) and (FormNfcePagamento.NaoPodeInserirPagamentos) then
  begin
    TBNfcePagamentos.Cancel;
    Exit;
  end;

  TBNfcePagamentosNCP_NFCE.Value:=TBNfceNFC_CODIGO.Value;
end;

procedure TDM.TBNfcePagamentosAfterPost(DataSet: TDataSet);
//var Codigo: Integer;
//  Total: Extended;
begin
  if AtualizarTotalRecebidoNfce then
  begin
    QYAux3.Close;
    QYAux3.SQL.Clear;
    QYAux3.SQL.Add('select sum(NCP_VALOR) as TOTAL from NFCEPAGAMENTOS where NCP_NFCE=:nota');
    QYAux3.ParamByName('nota').AsInteger:=TBNfceNFC_CODIGO.Value;
    QYAux3.Open;
//    Codigo:=TBNfcePagamentosNCP_CODIGO.Value;
//    TBNfcePagamentos.DisableControls;
//    TBNfcePagamentos.First;
//    Total:=0;
//    while not TBNfcePagamentos.Eof do
//    begin
//      Total:=Total+TBNfcePagamentosNCP_VALOR.AsExtended;
//      TBNfcePagamentos.Next;
//    end;
//    TBNfcePagamentos.EnableControls;
//    TBNfcePagamentos.Locate('NCP_CODIGO',Codigo,[]);
    TBNfce.Edit;
    TBNfceNFC_VALORRECEBIDO.Value:=QYAux3.FieldByName('TOTAL').AsExtended;
    TBNfce.Post;
    QYAux3.Close;
  end;
end;

procedure TDM.TBNfcePagamentosBeforePost(DataSet: TDataSet);
begin
  if TBNfcePagamentosCPG_MEIOPAGAMENTO.Value<>'01 - DINHEIRO' then
  begin
    if TBNfcePagamentosNCP_VALOR.Value > DM.TBNfceNFC_VALORTOTAL.Value then
    begin
      MessageDlg('O valor nesta forma de pagamento não pode ser maior que o total da venda.'
        +#13#10+'Valor Total: '+DM.TBNfceNFC_VALORTOTAL.AsString
        +#13#10+'Valor na forma de pagamento: '+TBNfcePagamentosNCP_VALOR.AsString,mtError,[mbOk],0);
      TBNfcePagamentosNCP_VALOR.Value:=0;
    end;
  end;
end;

{$ENDREGION}

//##############################################################################
// NFCE                                                                       //
//##############################################################################
{$REGION 'TABELA NFE'}
procedure TDM.CalcularTotaisNFe(DarPost: Boolean);
begin
  TBNfe.Edit;
  if (TBNfeNFE_MANUAL.IsNull) or (TBNfeNFE_MANUAL.Value='N') then
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select '+
      'sum(iif(NFI_TIPO=''S'',NFI_VALORTOTAL,0)) as TOTALSERVICOS, '+
      'sum(iif(NFI_TIPO=''P'',NFI_VALORTOTAL,0)) as TOTALPRODUTOS, '+
      'sum(NFI_BASEIBSCBS) as BASEIBSCBS, '+
      'sum(NFI_BASEICMS) as BASEICMS, '+
      'sum(NFI_BASEICMSST) as BASEICMSST, '+
      'sum(NFI_BASEII) as BASEII, '+
      'sum(NFI_BASEIPI) as BASEIPI, '+
      'sum(NFI_BASEIS) as BASEIS, '+
      'sum(NFI_BASEISS) as BASEISS, '+
      'sum(NFI_BASEPIS) as BASEPIS, '+
      'sum(NFI_BASEPISST) as BASEPISST, '+
      'sum(NFI_BASECOFINS) as BASECOFINS, '+
      'sum(NFI_BASECOFINSST) as BASECOFINSST, '+
      'sum(NFI_DESCVALOR) as VALORDESCONTO, '+
      'sum(NFI_PESOTOTAL) as PESOTOTAL, '+
      'sum(NFI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
      'max(NFI_SEQUENCIA) as SEQUENCIA, '+
      'sum(NFI_VALORACESSORIAS) as VALORACESSORIAS, '+
      'sum(NFI_VALORADUANA) as VALORADUANA, '+
      'sum(NFI_VALORCBSCREDPRES) as VALORCBSCREDPRES, '+
      'sum(NFI_VALORCBSCREDPRESSUS) as VALORCBSCREDPRESSUS, '+
      'sum(NFI_VALORCBSDIF) as VALORCBSDIF, '+
      'sum(NFI_VALORCBSDEV) as VALORCBSDEV, '+
      //'-- sum(NFI_VALORCBSMONO) as VALORCBSMONO, '+
      //'-- sum(NFI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
      //'-- sum(NFI_CBSMONORETIDO) as CBSMONORETIDO, '+
      'sum(NFI_VALORCBS) as VALORCBS, '+
      'sum(NFI_VALORCOFINS) as VALORCOFINS, '+
      'sum(NFI_VALORCOFINSST) as VALORCOFINSST, '+
      'sum(NFI_VALORCOMISSAO) as VALORCOMISSAO, '+
      'sum(NFI_VALORCOMISSAOREP) as VALORCOMISSAOREP, '+
      'sum(NFI_VALORFCP) as VALORFCP, '+
      'sum(NFI_VALORFCPST) as VALORFCPST, '+
      'sum(NFI_VALORFRETE) as VALORFRETE, '+
      'sum(NFI_VALORIBSCREDPRES) as VALORIBSCREDPRES, '+
      'sum(NFI_VALORIBSCREDPRESSUS) as VALORIBSCREDPRESSUS, '+
      //'-- sum(NFI_IBSMONO) as IBSMONO, '+
      //'-- sum(NFI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
      //'-- sum(NFI_IBSMONORETIDO) as IBSMONORETIDO, '+
      'sum(NFI_VALORIBSMUNDIF) as VALORIBSMUNDIF, '+
      'sum(NFI_VALORIBSMUNDEV) as VALORIBSMUNDEV, '+
      'sum(NFI_VALORIBSMUN) as VALORIBSMUN, '+
      'sum(NFI_VALORIBSUFDIF) as VALORIBSUFDIF, '+
      'sum(NFI_VALORIBSUFDEV) as VALORIBSUFDEV, '+
      'sum(NFI_VALORIBSUF) as VALORIBSUF, '+
      'sum(NFI_VALORIBS) as VALORIBS, '+
      'sum(NFI_VALORICMS) as VALORICMS, '+
      'sum(NFI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
      'sum(NFI_VALORICMSDESONERADO) as VALORICMSDESONERADO, '+
      'sum(NFI_VALORICMSST) as VALORICMSST, '+
      'sum(NFI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
      'sum(NFI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
      'sum(NFI_VALORII) as VALORII, '+
      'sum(NFI_VALORIOF) as VALORIOF, '+
      'sum(NFI_VALORIPI) as VALORIPI, '+
      'sum(NFI_VALORIS) as VALORIS, '+
      'sum(NFI_VALORISS) as VALORISS, '+
      'sum(NFI_VALORISSDEDUCAO) as VALORISSDEDUCAO, '+
      'sum(NFI_VALORISSDESCCOND) as VALORISSDESCCOND, '+
      'sum(NFI_VALORISSDESCINCOND) as VALORISSDESCINCOND, '+
      'sum(NFI_VALORISSOUTROS) as VALORISSOUTROS, '+
      'sum(NFI_VALORISSRETENCAO) as VALORISSRETENCAO, '+
      'sum(NFI_VALORPIS) as VALORPIS, '+
      'sum(NFI_VALORPISST) as VALORPISST, '+
      'sum(NFI_VALORSEGURO) as VALORSEGURO, '+
      'sum(NFI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
      'sum(NFI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
      'sum(NFI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
      'sum(NFI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
      'sum(NFI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
      'sum(NFI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN, '+
      'sum(iif(NFI_SOMACOFINSST=''S'',NFI_VALORCOFINSST,0)) as SOMACOFINSST, '+
      'sum(iif(NFI_SOMAPISST=''S'',NFI_VALORPISST,0)) as SOMAPISST '+
      'from NFEITENS where NFI_NOTA=:nota and NFI_COMPOETOTAL=''S'''
    );
    QYAux.ParamByName('nota').AsInteger:=TBNfeNFE_CODIGO.Value;
    QYAux.Open;

    //atualiza totais na tabela NFE.
    TBNfeNFE_BASECOFINS.Value        :=QYAux.FieldByName('BASECOFINS').AsExtended;
    TBNfeNFE_BASECOFINSST.Value      :=QYAux.FieldByName('BASECOFINSST').AsExtended;
    TBNfeNFE_BASEICMS.Value          :=QYAux.FieldByName('BASEICMS').AsExtended;
    TBNfeNFE_BASEICMSST.Value        :=QYAux.FieldByName('BASEICMSST').AsExtended;
    TBNfeNFE_BASEII.Value            :=QYAux.FieldByName('BASEII').AsExtended;
    TBNfeNFE_BASEIPI.Value           :=QYAux.FieldByName('BASEIPI').AsExtended;
    TBNfeNFE_BASEISS.Value           :=QYAux.FieldByName('BASEISS').AsExtended;
    TBNfeNFE_BASEPIS.Value           :=QYAux.FieldByName('BASEPIS').AsExtended;
    TBNfeNFE_BASEPISST.Value         :=QYAux.FieldByName('BASEPISST').AsExtended;
    TBNfeNFE_CUSTOTOTAL.Value        :=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBNfeNFE_DESCVALOR.Value         :=QYAux.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBNfeNFE_PESOLIQ.Value           :=QYAux.FieldByName('PESOTOTAL').AsFloat;
    TBNfeNFE_SEQUENCIAITEM.Value     :=QYAux.FieldByName('SEQUENCIA').AsInteger;
    TBNfeNFE_TOTALADUANA.Value       :=QYAux.FieldByName('VALORADUANA').AsExtended;
    TBNfeNFE_TOTALBRUTO.Value        :=QYAux.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBNfeNFE_TOTALCOFINS.Value       :=QYAux.FieldByName('VALORCOFINS').AsExtended;
    TBNfeNFE_TOTALCOFINSST.Value     :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
    TBNfeNFE_TOTALCOMISSAO.Value     :=QYAux.FieldByName('VALORCOMISSAO').AsExtended;
    TBNfeNFE_TOTALCOMISSAOREP.Value  :=QYAux.FieldByName('VALORCOMISSAOREP').AsExtended;
    TBNfeNFE_TOTALFCP.Value          :=QYAux.FieldByName('VALORFCP').AsExtended;
    TBNfeNFE_TOTALFCPST.Value        :=QYAux.FieldByName('VALORFCPST').AsExtended;
    TBNfeNFE_TOTALICMS.Value         :=QYAux.FieldByName('VALORICMS').AsExtended;
    TBNfeNFE_TOTALICMSCREDSN.Value   :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
    TBNfeNFE_TOTALICMSST.Value       :=QYAux.FieldByName('VALORICMSST').AsExtended;
    TBNfeNFE_TOTALICMSUFDEST.Value   :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
    TBNfeNFE_TOTALICMSUFREMET.Value  :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
    TBNfeNFE_TOTALII.Value           :=QYAux.FieldByName('VALORII').AsExtended;
    TBNfeNFE_TOTALIOF.Value          :=QYAux.FieldByName('VALORIOF').AsExtended;
    TBNfeNFE_TOTALIPI.Value          :=QYAux.FieldByName('VALORIPI').AsExtended;
    TBNfeNFE_TOTALISS.Value          :=QYAux.FieldByName('VALORISS').AsExtended;
    TBNfeNFE_TOTALISSDEDUCAO.Value   :=QYAux.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBNfeNFE_TOTALISSDESCCOND.Value  :=QYAux.FieldByName('VALORISSDESCCOND').AsExtended;
    TBNfeNFE_TOTALISSDESCINCOND.Value:=QYAux.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBNfeNFE_TOTALISSOUTROS.Value    :=QYAux.FieldByName('VALORISSOUTROS').AsExtended;
    TBNfeNFE_TOTALISSRETENCAO.Value  :=QYAux.FieldByName('VALORISSRETENCAO').AsExtended;
    TBNfeNFE_TOTALITENS.Value        :=QYAux.FieldByName('TOTALPRODUTOS').AsExtended+QYAux.FieldByName('TOTALSERVICOS').AsExtended;
    TBNfeNFE_TOTALPIS.Value          :=QYAux.FieldByName('VALORPIS').AsExtended;
    TBNfeNFE_TOTALPISST.Value        :=QYAux.FieldByName('VALORPISST').AsExtended;
    TBNfeNFE_TOTALPRODUTOS.Value     :=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;
    TBNfeNFE_TOTALSERVICOS.Value     :=QYAux.FieldByName('TOTALSERVICOS').AsExtended;
    TBNfeNFE_TOTALTRIBUTOS.Value     :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSEST.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSFED.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSIMP.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSMUN.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBNfeNFE_VALORDESPACES.Value     :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;
    TBNfeNFE_VALORFRETE.Value        :=QYAux.FieldByName('VALORFRETE').AsExtended;
    TBNfeNFE_VALORSEGURO.Value       :=QYAux.FieldByName('VALORSEGURO').AsExtended;

    //reforma tributária.
    TBNfeNFE_BASEIBSCBS.Value            :=QYAux.FieldByName('BASEIBSCBS').AsExtended;
    TBNfeNFE_BASEIS.Value                :=QYAux.FieldByName('BASEIS').AsExtended;

    TBNfeNFE_CBSCREDPRES.Value           :=QYAux.FieldByName('VALORCBSCREDPRES').AsExtended;
    TBNfeNFE_CBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
    TBNfeNFE_CBSDEVOLUCAO.AsExtended     :=QYAux.FieldByName('VALORCBSDEV').AsExtended;
    TBNfeNFE_CBSDIFERIMENTO.AsExtended   :=QYAux.FieldByName('VALORCBSDIF').AsExtended;
    TBNfeNFE_CBSMONO.AsExtended          :=0; //QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBNfeNFE_CBSMONORETENCAO.AsExtended  :=0; //QYAux.FieldByName('VALORIBSMUN').AsExtended;
    TBNfeNFE_CBSMONORETIDO.AsExtended    :=0; //QYAux.FieldByName('VALORIBS').AsExtended;
    TBNfeNFE_CBSVALOR.AsExtended         :=QYAux.FieldByName('VALORCBS').AsExtended;

    TBNfeNFE_IBSUFDIFERIMENTO.Value      :=QYAux.FieldByName('VALORIBSUFDIF').AsExtended;
    TBNfeNFE_IBSUFDEVOLUCAO.AsExtended   :=QYAux.FieldByName('VALORIBSUFDEV').AsExtended;
    TBNfeNFE_IBSUFVALOR.AsExtended       :=QYAux.FieldByName('VALORIBSUF').AsExtended;
    TBNfeNFE_IBSMUNDIFERIMENTO.AsExtended:=QYAux.FieldByName('VALORIBSMUNDIF').AsExtended;
    TBNfeNFE_IBSMUNDEVOLUCAO.AsExtended  :=QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBNfeNFE_IBSMUNVALOR.AsExtended      :=QYAux.FieldByName('VALORIBSMUN').AsExtended;
    TBNfeNFE_IBSVALOR.AsExtended         :=QYAux.FieldByName('VALORIBS').AsExtended;
    TBNfeNFE_IBSCREDPRES.AsExtended      :=QYAux.FieldByName('VALORIBSCREDPRES').AsExtended;
    TBNfeNFE_IBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

    TBNfeNFE_TOTALIS.Value               :=QYAux.FieldByName('VALORIS').AsExtended;

    TBNfeNFE_VALORTOTALRTC.Value:=
        TBNfeNFE_TOTALBRUTO.Value
      - TBNfeNFE_DESCVALOR.Value
      - TBNfeNFE_VALORFRETE.Value
      + TBNfeNFE_VALORSEGURO.Value
      + TBNfeNFE_VALORDESPACES.Value
      + TBNfeNFE_IBSVALOR.Value
      + TBNfeNFE_CBSVALOR.Value;

    //calcula o valor total da venda.
    //(+) vProd                    //
    //(-) vDesc                    //
    //(-) vICMSDeson               //
    //(+) vST                      //
    //(+) vFCPST                   //
    //(+) vFrete                   //
    //(+) vSeg                     //
    //(+) vOutro                   //
    //(+) vII                      //
    //(+) vIPI                     //
    //(+) vIPIDevol                //
    //(+) vServ                    //
    //(+) vPISST                   //
    //(+) vCofinsST                //
    TBNfeNFE_VALORTOTAL.Value:=
        TBNfeNFE_TOTALBRUTO.Value //totalbruto já contem produtos e serviços.
      - TBNfeNFE_DESCVALOR.Value
      - QYAux.FieldByName('VALORICMSDESONERADO').AsExtended
      + TBNfeNFE_TOTALICMSST.Value
      + TBNfeNFE_TOTALFCPST.Value
      + TBNfeNFE_VALORFRETE.Value
      + TBNfeNFE_VALORSEGURO.Value
      + TBNfeNFE_VALORDESPACES.Value
      + TBNfeNFE_TOTALII.Value
      + TBNfeNFE_TOTALIPI.Value
      //nao tenho esse campo. + TBNfeNFE_TOTALIPIDEV.Value
      + QYAux.FieldByName('SOMAPISST').AsExtended
      + QYAux.FieldByName('SOMACOFINSST').AsExtended;

    //calcula nova porcentagem de desconto.
    if TBNfeNFE_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBNfeNFE_DESCPORC.Value:=Decimais((100.0/(QYAux.FieldByName('VALORTOTALBRUTO').AsExtended+
                                              QYAux.FieldByName('VALORFRETE').AsExtended+
                                              QYAux.FieldByName('VALORSEGURO').AsExtended+
                                              QYAux.FieldByName('VALORACESSORIAS').AsExtended))*TBNfeNFE_DESCVALOR.AsExtended,8) else
    TBNfeNFE_DESCPORC.Value:=0;

    //calcula o lucro da venda.
    TBNfeNFE_LUCROVALOR.Value:=TBNfeNFE_VALORTOTAL.Value-TBNfeNFE_CUSTOTOTAL.Value;
    if TBNfeNFE_LUCROVALOR.Value<>0 then
    begin
      if TBNfeNFE_VALORTOTAL.Value=0 then
      TBNfeNFE_LUCROPORC.Value:=(-100.0) else
      TBNfeNFE_LUCROPORC.Value:=(TBNfeNFE_LUCROVALOR.Value/TBNfeNFE_VALORTOTAL.Value)*100.0;
    end;
  end;

  //if (FormNfe<>nil) and (TBNfeNFE_STATUS.Value='A') then
  //begin
  //  FormNfe.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  //end;

  //o abaixo substitui o comentado acima.
  if TBNfeNFE_STATUS.Value='A' then
  SimularCondicaoNfe;

  QYAux.Close;
  if DarPost then TBNfe.Post;
end;

procedure TDM.TBNfeAfterEdit(DataSet: TDataSet);
begin
  if TBNfeNFE_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma nota já finalizada.',mtWarning,[mbOk],0);
    TBNfe.Cancel;
  end;
  if TBNfeNFE_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar uma nota cancelada.',mtWarning,[mbOk],0);
    TBNfe.Cancel;
  end;
  if TBNfeNFE_STATUS.Value='I' then
  begin
    MessageDlg('Não é possível alterar uma nota inutilizada.',mtWarning,[mbOk],0);
    TBNfe.Cancel;
  end;
  if (TBNfeNFE_STATUS.Value='A') and (TBNfeNFE_PROTOCOLO.Value<>'') then
  begin
    MessageDlg('Esta NF-e já foi autorizada para uso. Proceda com a finalização.',mtWarning,[mbOk],0);
    TBNfe.Cancel;
  end;
end;

procedure TDM.TBNfeAfterInsert(DataSet: TDataSet);
begin
  if NFeUtilRegistrada=False then
  begin
    MessageDlg('Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.'+#13#10+#13#10+
               'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL, na tela da NFe.'+#13#10+#13#10+
               'Para obter mais ajuda sobre a DLL acesse o menu Ferramentas -> Saiba mais sobre a DLL NFe_Util, na tela da NFe.',mtError,[mbOk],0);
    TBNfe.Cancel;
    Exit;
  end;

  //localiza a condicao de pagamento para pegar a porcentagem de desconto.
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCondicoes.Open;
  //localiza a CFOP padrao.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  TBNfeNFE_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBNfeNFE_BASEIBSCBS.Value:=0;
  TBNfeNFE_BASEIRRF.Value:=0;
  TBNfeNFE_BASEIS.Value:=0;
  TBNfeNFE_CBSCREDPRES.Value:=0;
  TBNfeNFE_CBSCREDPRESSUS.Value:=0;
  TBNfeNFE_CBSDEVOLUCAO.Value:=0;
  TBNfeNFE_CBSDIFERIMENTO.Value:=0;
  TBNfeNFE_CBSMONO.Value:=0;
  TBNfeNFE_CBSMONORETENCAO.Value:=0;
  TBNfeNFE_CBSMONORETIDO.Value:=0;
  TBNfeNFE_CBSVALOR.Value:=0;
  TBNfeNFE_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNfeNFE_CFOPDESC.Value:=TBNaturezasNAT_DESCRICAO.Value;
  TBNfeNFE_COMISSAOPOR.Value:=TBParametrosPAR_COMISSAOPOR.Value;
  TBNfeNFE_CONDICAO.Value:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBNfeNFE_CONSULTADA.Value:='N';
  TBNfeNFE_CUSTOTOTAL.Value:=0;
  TBNfeNFE_DESCPORCCLIENTE.Value:=0;
  TBNfeNFE_DESCPORCCONDICAO.Value:=TBCondicoesCPG_DESCPORC.Value;
  TBNfeNFE_DESTACARIMPOSTOS.Value:=TBNaturezasNAT_DESTACARIMPOSTOS.Value;
  TBNfeNFE_DIAPREFERENCIAL.Value:=0;
  TBNfeNFE_DTCADASTRO.Value:=ServerDate;
  TBNfeNFE_DTEMISSAO.Value:=TBNfeNFE_DTCADASTRO.Value;
  TBNfeNFE_DTPRESTSERVICO.Value:=TBNfeNFE_DTCADASTRO.Value;
  TBNfeNFE_DTSAIDA.Value:=TBNfeNFE_DTCADASTRO.Value;
  TBNfeNFE_ENTRADASAIDA.Value:=TBNaturezasNAT_ENTRADASAIDA.Value;
  TBNfeNFE_ENVIADA.Value:='N';
  TBNfeNFE_FINALIDADE.Value:='1 - NFE NORMAL';
  TBNfeNFE_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value;
  TBNfeNFE_GOVERNAMENTAL.Value:='0 - NENHUM';
  TBNfeNFE_GOVERNAMENTALALIQRED.Value:=0;
  TBNfeNFE_GOVERNAMENTALOP.Value:='0 - NENHUM';
  TBNfeNFE_HRCADASTRO.Value:=ServerTime;
  TBNfeNFE_IBSCREDPRES.Value:=0;
  TBNfeNFE_IBSCREDPRESSUS.Value:=0;
  TBNfeNFE_IBSMONO.Value:=0;
  TBNfeNFE_IBSMONORETENCAO.Value:=0;
  TBNfeNFE_IBSMONORETIDO.Value:=0;
  TBNfeNFE_IBSMUNDEVOLUCAO.Value:=0;
  TBNfeNFE_IBSMUNDIFERIMENTO.Value:=0;
  TBNfeNFE_IBSMUNVALOR.Value:=0;
  TBNfeNFE_IBSUFDEVOLUCAO.Value:=0;
  TBNfeNFE_IBSUFDIFERIMENTO.Value:=0;
  TBNfeNFE_IBSUFVALOR.Value:=0;
  TBNfeNFE_IBSVALOR.Value:=0;
  TBNfeNFE_INFOADICFISCO.Value:=TBNaturezasNAT_OBSERVACOES.Value;
  TBNfeNFE_INTERMEDIADOR.Value:=TBParametrosPAR_INTERMEDIADOR.Value;
  TBNfeNFE_INTERMEDIADORCAD.Value:=TBParametrosPAR_INTERMEDIADORCAD.Value;
  TBNfeNFE_INTERMEDIADORCNPJ.Value:=TBParametrosPAR_INTERMEDIADORCNPJ.Value;
  TBNfeNFE_LUCROPORC.Value:=0;
  TBNfeNFE_LUCROVALOR.Value:=0;
  TBNfeNFE_MANUAL.Value:='N';
  TBNfeNFE_MODELO.Value:=TBParametrosPAR_NFEMODELO.Value;
  TBNfeNFE_MOVIMENTAESTOQUE.Value:=TBNaturezasNAT_MOVIMENTAESTOQUE.Value;
  TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  TBNfeNFE_NOTACREDITO.Value:='00 - NENHUM';
  TBNfeNFE_NOTADEBITO.Value:='00 - NENHUM';
  TBNfeNFE_SEQUENCIAITEM.Value:=0;
  TBNfeNFE_SERIE.Value:=TBParametrosPAR_NFESERIE.Value;
  TBNfeNFE_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada.
  TBNfeNFE_TABELAPRECO.Value:=TBParametrosPAR_TABELAPRECO.Value;
  TBNfeNFE_TIPOATENDIMENTO.Value:=TBParametrosPAR_NFETIPOATENDIMENTO.Value;
  TBNfeNFE_TIPOCONSUMIDOR.Value:=TBParametrosPAR_NFETIPOCONSUMIDOR.Value;
  TBNfeNFE_TIPOEMISSAO.Value:=TBParametrosPAR_NFETIPOEMISSAO.Value;
  TBNfeNFE_TIPOOPERACAO.Value:='1 - OPERACAO INTERNA';
  TBNfeNFE_TOTALADUANA.Value:=0;
  TBNfeNFE_TOTALBRUTO.Value:=0;
  TBNfeNFE_TOTALCCE.Value:=0;
  TBNfeNFE_TOTALCOFINS.Value:=0;
  TBNfeNFE_TOTALCOFINSST.Value:=0;
  TBNfeNFE_TOTALCOMISSAO.Value:=0;
  TBNfeNFE_TOTALCOMISSAOREP.Value:=0;
  TBNfeNFE_TOTALFCP.Value:=0;
  TBNfeNFE_TOTALFCPST.Value:=0;
  TBNfeNFE_TOTALICMS.Value:=0;
  TBNfeNFE_TOTALICMSCREDSN.Value:=0;
  TBNfeNFE_TOTALICMSST.Value:=0;
  TBNfeNFE_TOTALICMSUFDEST.Value:=0;
  TBNfeNFE_TOTALICMSUFREMET.Value:=0;
  TBNfeNFE_TOTALII.Value:=0;
  TBNfeNFE_TOTALIOF.Value:=0;
  TBNfeNFE_TOTALIPI.Value:=0;
  TBNfeNFE_TOTALIRRF.Value:=0;
  TBNfeNFE_TOTALIS.Value:=0;
  TBNfeNFE_TOTALISS.Value:=0;
  TBNfeNFE_TOTALISSDEDUCAO.Value:=0;
  TBNfeNFE_TOTALISSDESCCOND.Value:=0;
  TBNfeNFE_TOTALISSDESCINCOND.Value:=0;
  TBNfeNFE_TOTALISSOUTROS.Value:=0;
  TBNfeNFE_TOTALISSRETENCAO.Value:=0;
  TBNfeNFE_TOTALITENS.Value:=0;
  TBNfeNFE_TOTALPIS.Value:=0;
  TBNfeNFE_TOTALPISST.Value:=0;
  TBNfeNFE_TOTALPRODUTOS.Value:=0;
  TBNfeNFE_TOTALSERVICOS.Value:=0;
  TBNfeNFE_TOTALTRIBUTOS.Value:=0;
  TBNfeNFE_TOTALTRIBUTOSEST.Value:=0;
  TBNfeNFE_TOTALTRIBUTOSFED.Value:=0;
  TBNfeNFE_TOTALTRIBUTOSIMP.Value:=0;
  TBNfeNFE_TOTALTRIBUTOSMUN.Value:=0;
  TBNfeNFE_VALORDESPACES.Value:=0;
  TBNfeNFE_VALORFRETE.Value:=0;
  TBNfeNFE_VALORSEGURO.Value:=0;
  TBNfeNFE_VALORTOTAL.Value:=0;
  TBNfeNFE_VALORTOTALRTC.Value:=0;
  TBNfeNFE_VOLUMES.Value:=1;

  //if (FormNfe<>nil) and (TBNfeNFE_STATUS.Value='A') then
  //FormNfe.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  if TBNfeNFE_STATUS.Value='A' then
  SimularCondicaoNfe;
end;

procedure TDM.TBNfeAfterPost(DataSet: TDataSet);
var U: NFe_Util_2G_Interface;
  MsgResultado, cNF, cDV, ChaveNFe: Widestring;
  Emissao: String[10];
  I: Integer;
begin
  //se salvou uma nota nova, entao gera o novo NSU.
  if InserindoNovoRegistroNFe then
  begin
    InserindoNovoRegistroNFe:=False;
    //incrementa Codigo;
    TBNfeCodigo.Close;
    TBNfeCodigo.Open;
    TBNfeCodigo.Edit;
    TBNfeCodigoNFE_CODIGO.Value:=TBNfeCodigoNFE_CODIGO.Value+1;
    TBNfeCodigo.Post;
    //associa novo CODIGO e a CHAVE DE ACESSO a nota atual.
    TBNfe.Edit;
    TBNfeNFE_CODIGO.Value:=TBNfeCodigoNFE_CODIGO.Value;
    Emissao:=FormatDateTime('DD/MM/YY',TBNfeNFE_DTEMISSAO.Value);
    U:=CoUtil.Create;
    I:=U.CriaChaveNFe2G(IntToStr(TBEmpresaEMP_ESTADOCODIGO.Value),
                        Copy(Emissao,7,2), //ano.
                        Copy(Emissao,4,2), //mes.
                        LimparFormatacao(TBEmpresaEMP_CNPJ.Value),
                        IntToStr(TBNfeNFE_MODELO.Value),
                        IntToStr(TBNfeNFE_SERIE.Value),
                        IntToStr(TBNfeNFE_CODIGO.Value),
                        Copy(TBNfeNFE_TIPOEMISSAO.Value,1,1),
                        IntToStr(CodigoSegurancaNFE),
                        msgResultado,
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
      TBNfeNFE_CHAVEACESSO.Value:=ChaveNFe;
      TBNfeNFE_CODIGONUMERICO.Value:=cNF;
    end;
    U:=nil;
    TBNfe.Post;
    //...
  end;
end;

procedure TDM.TBNfeBeforeEdit(DataSet: TDataSet);
begin
  if FormNfe<>nil then
  FormMain.SetFields(FormNfe,True);
end;

procedure TDM.TBNfeBeforeInsert(DataSet: TDataSet);
begin
  if FormNfe<>nil then
  begin
    FormMain.SetFields(FormNfe,True);
    FormNfe.PageControl1.ActivePageIndex:=0;
    FormNfe.DBEdit4.SetFocus;
  end;
end;

procedure TDM.TBNfeBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBNfeNFE_CODIGO.Value;
  TBNfeNFE_DTATUALIZACAO.Value:=ServerDate;
  TBNfeNFE_HRATUALIZACAO.Value:=ServerTime;
  TBNfeNFE_USUARIO.Value:=UsuarioLogin;

  if (TBNfeNFE_ESTADO.Value='') then
  MessageDlg('O cliente selecionado não possui estado cadastrado no seu endereço.'+#13#10+'O cálculo do ICMS pode ficar incorreto.',mtWarning,[mbOk],0);

  //seta variavel pra gerar o NSU só quando é uma nota nova.
  if TBNfe.State in [dsInsert] then
  begin
    InserindoNovoRegistroNFe:=True;
  end;

  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBNfeNFE_CFOP.Value;
  TBNaturezas.Open;

  if TBNaturezasNAT_DEVOLUCAO.Value='S' then
  TBNfeNFE_FINALIDADE.Value:='4 - DEVOLUCAO DE MERCADORIA';

  if TBNfeNFE_FINALIDADE.Value='5 - NOTA DE CREDITO' then
  DM.TBNfeNFE_ENTRADASAIDA.Value:='E';

  if TBNfeNFE_FINALIDADE.Value='6 - NOTA DE DEBITO' then
  DM.TBNfeNFE_ENTRADASAIDA.Value:='S';

  if TBNfeNFE_FINALIDADE.Value<>'2 - NFE COMPLEMENTAR' then
  CalcularTotaisNFe(False);
end;

procedure TDM.DSNfeStateChange(Sender: TObject);
begin
  if TBNfe.State in [dsInsert, dsEdit] then
  begin
    if FormNfe<>nil then
    begin
      FormNfe.AlterarCampoMovimentacaoEstoque1.Enabled:=False;
      FormNfe.AlterarCampoMovimentacaoFinanceiro1.Enabled:=False;
      FormNfe.AlterarCalculosParaManualOuAutomatico1.Enabled:=False;
      FormNfe.AlterarItem1.Enabled:=False;
      FormNfe.AlterarItem1Button.Enabled:=False;
      FormNfe.ArquivosXMLdaNFe1.Enabled:=False;
      FormNfe.ArquivosXMLdaNFe1Button.Enabled:=False;
      FormNfe.AtualizarItens1.Enabled:=False;
      FormNfe.AtualizarItens1Button.Enabled:=False;
      FormNfe.BuscarNFe1.Enabled:=False;
      FormNfe.CancelarNota1.Enabled:=False;
      FormNfe.CancelarNota1Button.Enabled:=False;
      FormNfe.CartasDeCorrecao1.Enabled:=False;
      FormNfe.CartasDeCorrecao1Button.Enabled:=False;
      FormNfe.ConsultarNFenoPortalNacional1.Enabled:=False;
      FormNfe.DANFE1.Enabled:=False;
      FormNfe.DANFE1Button.Enabled:=False;
      FormNfe.DownloadDaNFeNoPortalNacional1.Enabled:=False;
      FormNfe.EliminarItem1.Enabled:=False;
      FormNfe.EliminarItem1Button.Enabled:=False;
      FormNfe.EliminarTodos1.Enabled:=False;
      FormNfe.EliminarTodos1Button.Enabled:=False;
      FormNfe.EnviarNFe1.Enabled:=False;
      FormNfe.EnviarNFePorEmail1.Enabled:=False;
      FormNfe.EnviarNFePorEmail1Button.Enabled:=False;
      FormNfe.EnviarNFeSincrono1.Enabled:=False;
      FormNfe.EnviarNFeSincrono1Button.Enabled:=False;
      FormNfe.EtiquetaParaEmbalagem1.Enabled:=False;
      FormNfe.FinalizarNota1.Enabled:=False;
      FormNfe.FinalizarNota1Button.Enabled:=False;
      FormNfe.GerarArquivoNFe1.Enabled:=False;
      FormNfe.GerarBoletos1.Enabled:=False;
      FormNfe.GerarBoletos1Button.Enabled:=False;
      FormNfe.GerarGuiaGNRE1.Enabled:=False;
      FormNfe.GerarLote1.Enabled:=False;
      FormNfe.IncluirItem1.Enabled:=False;
      FormNfe.IncluirItem1Button.Enabled:=False;
      FormNfe.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=False;
      FormNfe.InutilizacaoDeFaixaDeNFe1.Enabled:=False;
      FormNfe.InutilizacoesNoPeriodo1.Enabled:=False;
      FormNfe.InutilizarNFe1.Enabled:=False;
      FormNfe.InutilizarNFe1Button.Enabled:=False;
      FormNfe.Localizar1.Enabled:=False;
      FormNfe.Localizar1Button.Enabled:=False;
      FormNfe.LocalizarNotaNaMovimentacaoDoEstoque1.Enabled:=False;
      FormNfe.LocalizarNotaNaMovimentacaoDoEstoque1Button.Enabled:=False;
      FormNfe.LocalizarNotanoContasaReceber1.Enabled:=False;
      FormNfe.LocalizarNotanoContasaReceber1Button.Enabled:=False;
      FormNfe.NfeComItens1.Enabled:=False;
      FormNfe.NFeOrdenadoPorCodigo1.Enabled:=False;
      FormNfe.NFePorCFOP1.Enabled:=False;
      FormNfe.NFePorStatus1.Enabled:=False;
      FormNfe.PngSpeedButton4.Enabled:=True; //efeito contrário.
      FormNfe.PngSpeedButton5.Enabled:=True; //efeito contrário.
      FormNfe.PngSpeedButton6.Enabled:=True; //efeito contrário.
      FormNfe.PngSpeedButton7.Enabled:=True; //efeito contrário.
      FormNfe.PngSpeedButton8.Enabled:=True; //efeito contrário.
      FormNfe.RecibosDeNFe1.Enabled:=False;
      FormNfe.RecriarArquivoXMLprocNFe1.Enabled:=False;
      FormNfe.RecriarChavedeAcesso1.Enabled:=False;
      FormNfe.RecriarChavedeAcesso1Button.Enabled:=False;
      FormNfe.Reordenar1.Enabled:=False;
      FormNfe.Reordenar1Button.Enabled:=False;
      FormNfe.Relatorios2.Enabled:=False;
      FormNfe.Relatorios2Button.Enabled:=False;
      FormNfe.SalvarPDFDANFEComo1.Enabled:=False;
      FormNfe.SalvarZIPXMLsComo1.Enabled:=False;
      FormNfe.TotalQuantidade1.Enabled:=False;
      FormNfe.TotalQuantidade1Button.Enabled:=False;
      FormNfe.ValidarArquivoNFe1.Enabled:=False;
      FormNfe.VerificacaoDeNumeracao1.Enabled:=False;
      if TBNfeNFE_FINALIDADE.Value='2 - NFE COMPLEMENTAR' then
      begin
        FormNfe.DBEdit13.ReadOnly:=False; //campos BC e total icms e icms st.
        FormNfe.DBEdit14.ReadOnly:=False;
        FormNfe.DBEdit15.ReadOnly:=False;
        FormNfe.DBEdit16.ReadOnly:=False;
      end else
      begin
        FormNfe.DBEdit13.ReadOnly:=True;
        FormNfe.DBEdit14.ReadOnly:=True;
        FormNfe.DBEdit15.ReadOnly:=True;
        FormNfe.DBEdit16.ReadOnly:=True;
      end;

      if TBNfeNFE_MANUAL.Value='S' then //a procedure chamada tb inclui os DBEdits acima... retirar o caso acima?!.
      FormNfe.ReadOnlyCamposNfe(False) else
      FormNfe.ReadOnlyCamposNfe(True);
    end;
  end else
  begin
    if FormNfe<>nil then
    begin
      FormNfe.AlterarCampoMovimentacaoEstoque1.Enabled:=True;
      FormNfe.AlterarCampoMovimentacaoFinanceiro1.Enabled:=True;
      FormNfe.AlterarCalculosParaManualOuAutomatico1.Enabled:=True;
      FormNfe.AlterarItem1.Enabled:=True;
      FormNfe.AlterarItem1Button.Enabled:=True;
      FormNfe.ArquivosXMLdaNFe1.Enabled:=True;
      FormNfe.ArquivosXMLdaNFe1Button.Enabled:=True;
      FormNfe.AtualizarItens1.Enabled:=True;
      FormNfe.AtualizarItens1Button.Enabled:=True;
      FormNfe.BuscarNFe1.Enabled:=True;
      FormNfe.CancelarNota1.Enabled:=True;
      FormNfe.CancelarNota1Button.Enabled:=True;
      FormNfe.CartasDeCorrecao1.Enabled:=True;
      FormNfe.CartasDeCorrecao1Button.Enabled:=True;
      FormNfe.ConsultarNFenoPortalNacional1.Enabled:=True;
      FormNfe.DANFE1.Enabled:=True;
      FormNfe.DANFE1Button.Enabled:=True;
      FormNfe.DownloadDaNFeNoPortalNacional1.Enabled:=True;
      FormNfe.EliminarItem1.Enabled:=True;
      FormNfe.EliminarItem1Button.Enabled:=True;
      FormNfe.EliminarTodos1.Enabled:=True;
      FormNfe.EliminarTodos1Button.Enabled:=True;
      FormNfe.EnviarNFe1.Enabled:=True;
      FormNfe.EnviarNFePorEmail1.Enabled:=True;
      FormNfe.EnviarNFePorEmail1Button.Enabled:=True;
      FormNfe.EnviarNFeSincrono1.Enabled:=True;
      FormNfe.EnviarNFeSincrono1Button.Enabled:=True;
      FormNfe.EtiquetaParaEmbalagem1.Enabled:=True;
      FormNfe.FinalizarNota1.Enabled:=True;
      FormNfe.FinalizarNota1Button.Enabled:=True;
      FormNfe.GerarArquivoNFe1.Enabled:=True;
      FormNfe.GerarBoletos1.Enabled:=True;
      FormNfe.GerarBoletos1Button.Enabled:=True;
      FormNfe.GerarGuiaGNRE1.Enabled:=True;
      FormNfe.GerarLote1.Enabled:=True;
      FormNfe.IncluirItem1.Enabled:=True;
      FormNfe.IncluirItem1Button.Enabled:=True;
      FormNfe.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=True;
      FormNfe.InutilizacaoDeFaixaDeNFe1.Enabled:=True;
      FormNfe.InutilizacoesNoPeriodo1.Enabled:=True;
      FormNfe.InutilizarNFe1.Enabled:=True;
      FormNfe.InutilizarNFe1Button.Enabled:=True;
      FormNfe.Localizar1.Enabled:=True;
      FormNfe.Localizar1Button.Enabled:=True;
      FormNfe.LocalizarNotaNaMovimentacaoDoEstoque1.Enabled:=True;
      FormNfe.LocalizarNotaNaMovimentacaoDoEstoque1Button.Enabled:=True;
      FormNfe.LocalizarNotaNoContasaReceber1.Enabled:=True;
      FormNfe.LocalizarNotaNoContasaReceber1Button.Enabled:=True;
      FormNfe.NfeComItens1.Enabled:=True;
      FormNfe.NFeOrdenadoPorCodigo1.Enabled:=True;
      FormNfe.NFePorCFOP1.Enabled:=True;
      FormNfe.NFePorStatus1.Enabled:=True;
      FormNfe.PngSpeedButton4.Enabled:=False; //efeito contrário.
      FormNfe.PngSpeedButton5.Enabled:=False; //efeito contrário.
      FormNfe.PngSpeedButton6.Enabled:=False; //efeito contrário.
      FormNfe.PngSpeedButton7.Enabled:=False; //efeito contrário.
      FormNfe.PngSpeedButton8.Enabled:=False; //efeito contrário.
      FormNfe.RecriarArquivoXMLprocNFe1.Enabled:=True;
      FormNfe.RecriarChavedeAcesso1.Enabled:=True;
      FormNfe.RecriarChavedeAcesso1Button.Enabled:=True;
      FormNfe.RecibosDeNFe1.Enabled:=True;
      FormNfe.Reordenar1.Enabled:=True;
      FormNfe.Reordenar1Button.Enabled:=True;
      FormNfe.Relatorios2.Enabled:=True;
      FormNfe.Relatorios2Button.Enabled:=True;
      FormNfe.SalvarPDFDANFEComo1.Enabled:=True;
      FormNfe.SalvarZIPXMLsComo1.Enabled:=True;
      FormNfe.TotalQuantidade1.Enabled:=True;
      FormNfe.TotalQuantidade1Button.Enabled:=True;
      FormNfe.ValidarArquivoNFe1.Enabled:=True;
      FormNfe.VerificacaoDeNumeracao1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNfe);
      FormMain.SetFields(FormNfe,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NFECCE - CARTA DE CORRECAO ELETRONICAS.                                    //
//##############################################################################
{$REGION 'TABELA NFECCE'}
procedure TDM.TBNfeCceAfterDelete(DataSet: TDataSet);
begin
  if NaoPodeExcluir then
  begin
    TRNfeCCe.Rollback;
    NaoPodeExcluir:=False;
    MessageDlg('Não é possível eliminar uma CCe já protocolada.',mtWarning,[mbOk],0);
  end else

  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select max(NCC_SEQUENCIAL) as QTDE from NFECCE where NCC_NFE=:nota');
  QYAux.ParamByName('nota').AsInteger:=TBNfeNFE_CODIGO.Value;
  QYAux.Open;

  //atualiza a qtde na tabela NFE.
  CodigoMark:=TBNfeNFE_CODIGO.Value;
  QYAux2.Close;
  QYAux2.SQL.Clear;
  QYAux2.SQL.Add('update NFE set NFE_TOTALCCE=:qtde where NFE_CODIGO=:codigo');
  QYAux2.ParamByName('qtde').AsInteger:=QYAux.FieldByName('QTDE').AsInteger;
  QYAux2.ParamByName('codigo').AsInteger:=TBNfeNFE_CODIGO.Value;
  QYAux2.ExecSQL;

  QYAux.Close;

  //atualiza dados na tela para o usuário.
  TBNfe.Close;
  TBNfe.ParamByName('codigo').AsInteger:=CodigoMark;
  TBNfe.Open;
end;

procedure TDM.TBNfeCceAfterEdit(DataSet: TDataSet);
begin
  if TBNfeCCeNCC_PROTOCOLO.Value<>'' then
  begin
    MessageDlg('Não é possível alterar uma CCe já protocolada.',mtWarning,[mbOk],0);
    TBNfeCCe.Cancel;
  end;
end;

procedure TDM.TBNfeCceAfterInsert(DataSet: TDataSet);
begin
  if TBNfeNFE_TOTALCCE.Value>=20 then
  begin
    MessageDlg('Não é possível realizar mais do que 20 cartas de correção para uma NFe.',mtError,[mbOk],0);
    TBNfeCCe.Cancel;
    Exit;
  end;
  TBNfeCCeNCC_DATA.Value:=ServerDate;
  TBNfeCCeNCC_DTCADASTRO.Value:=ServerDate;
  TBNfeCCeNCC_HORA.Value:=ServerTime;
  TBNfeCCeNCC_HRCADASTRO.Value:=ServerTime;
  TBNfeCCeNCC_NFE.Value:=TBNfeNFE_CODIGO.Value;
  TBNfeCCeNCC_SEQUENCIAL.Value:=TBNfeNFE_TOTALCCE.Value+1;
end;

procedure TDM.TBNfeCceAfterPost(DataSet: TDataSet);
begin
  if InserindoNovoRegistroCCe then
  begin
    //descobre qual é o sequencial máximo.
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select max(NCC_SEQUENCIAL) as QTDE from NFECCE where NCC_NFE=:nota');
    QYAux.ParamByName('nota').AsInteger:=TBNfeNFE_CODIGO.Value;
    QYAux.Open;

    //atualiza a qtde na tabela NFE.
    CodigoMark:=TBNfeNFE_CODIGO.Value;
    QYAux2.Close;
    QYAux2.SQL.Clear;
    QYAux2.SQL.Add('update NFE set NFE_TOTALCCE=:qtde where NFE_CODIGO=:codigo');
    QYAux2.ParamByName('qtde').AsInteger:=QYAux.FieldByName('QTDE').AsInteger;
    QYAux2.ParamByName('codigo').AsInteger:=TBNfeNFE_CODIGO.Value;
    QYAux2.ExecSQL;

    QYAux.Close;

    //atualiza dados na tela para o usuário.
    TBNfe.Close;
    TBNfe.ParamByName('codigo').AsInteger:=CodigoMark;
    TBNfe.Open;

    InserindoNovoRegistroCCe:=False;
  end;
end;

procedure TDM.TBNfeCceBeforeDelete(DataSet: TDataSet);
begin
  if TBNfeCCeNCC_PROTOCOLO.Value<>'' then
  NaoPodeExcluir:=True;
end;

procedure TDM.TBNfeCceBeforeEdit(DataSet: TDataSet);
begin
  if FormNfeCCe<>nil then
  FormMain.SetFields(FormNfeCCe,True);
end;

procedure TDM.TBNfeCceBeforeInsert(DataSet: TDataSet);
begin
  if FormNfeCCe<>nil then
  begin
    FormMain.SetFields(FormNfeCCe,True);
    FormNfeCCe.DBEdit7.SetFocus;
  end;
end;

procedure TDM.TBNfeCceBeforePost(DataSet: TDataSet);
begin
  TBNfeCCeNCC_DTATUALIZACAO.Value:=ServerDate;
  TBNfeCCeNCC_HRATUALIZACAO.Value:=ServerTime;
  //seta a variavel para true para ser checada no
  //evento after post que atualiza do total de cartas na tabela de NFe.
  if TBNfeCCe.State in [dsInsert] then
  InserindoNovoRegistroCCe:=True;
end;

procedure TDM.DSNfeCCeStateChange(Sender: TObject);
begin
  if TBNfeCCe.State in [dsInsert, dsEdit] then
  begin
    if FormNfeCCe<>nil then
    begin
      FormNfeCCe.EnviarCCe1.Enabled:=False;
      FormNfeCCe.EnviarCCe1Button.Enabled:=False;
      FormNfeCCe.EnviarCCePorEmail1.Enabled:=False;
      FormNfeCCe.EnviarCCePorEmail1Button.Enabled:=False;
      FormNfeCCe.Imprimir1.Enabled:=False;
      FormNfeCCe.Imprimir1Button.Enabled:=False;
    end;
  end else
  begin
    if FormNfeCCe<>nil then
    begin
      FormNfeCCe.EnviarCCe1.Enabled:=True;
      FormNfeCCe.EnviarCCe1Button.Enabled:=True;
      FormNfeCCe.EnviarCCePorEmail1.Enabled:=True;
      FormNfeCCe.EnviarCCePorEmail1Button.Enabled:=True;
      FormNfeCCe.Imprimir1.Enabled:=True;
      FormNfeCCe.Imprimir1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNfeCCe);
      FormMain.SetFields(FormNfeCCe,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NOTAS FISCAIS ELETRONICAS - NSU                                            //
//##############################################################################
//nada

//##############################################################################
// NFEINUTILIZADAS - INUTILIZACAO DE FAIXAS DE NFE                            //
//##############################################################################
{$REGION 'TABELA NFEINUTILIZADAS'}
procedure TDM.TBNfeInutilizadasAfterDelete(DataSet: TDataSet);
begin
  if NaoPodeExcluir then
  begin
    TRNfeInutilizadas.Rollback;
    NaoPodeExcluir:=False;
    MessageDlg('Não é possível eliminar uma inutilização já protocolada.',mtWarning,[mbOk],0);
  end else
  TRNfeInutilizadas.Commit;
  TBNfeInutilizadas.Open;
end;

procedure TDM.TBNfeInutilizadasAfterEdit(DataSet: TDataSet);
begin
  if TBNfeInutilizadasNIN_PROTOCOLO.Value<>'' then
  begin
    MessageDlg('Não é possível alterar uma inutilização já protocolada.',mtError,[mbOk],0);
    TBNfeInutilizadas.Cancel;
  end;
end;

procedure TDM.TBNfeInutilizadasAfterInsert(DataSet: TDataSet);
var A,M,D: Word;
begin
  DecodeDate(Date,A,M,D);
  TBNfeInutilizadasNIN_ANO.Value:=IntToStr(A);
  TBNfeInutilizadasNIN_DTCADASTRO.Value:=ServerDate;
  TBNfeInutilizadasNIN_HRCADASTRO.Value:=ServerTime;
  TBNfeInutilizadasNIN_MODELO.Value:=55;
  TBNfeInutilizadasNIN_PROTOCOLO.Value:='';
  TBNfeInutilizadasNIN_PROTOCOLODH.Value:='';
  TBNfeInutilizadasNIN_SERIE.Value:=1;
end;

procedure TDM.TBNfeInutilizadasAfterPost(DataSet: TDataSet);
begin
  if TBNfeInutilizadasNIN_NUMFINAL.Value<TBNfeInutilizadasNIN_NUMINICIAL.Value then
  begin
    MessageDlg('O número final não pode ser menor que o número inicial.',mtError,[mbOk],0);
    TBNfeInutilizadas.Edit; //volta a colocar em edição.
  end;
  if (TBNfeInutilizadasNIN_NUMFINAL.Value-TBNfeInutilizadasNIN_NUMINICIAL.Value)>1000 then
  begin
    MessageDlg('A faixa de inutilização não pode ultrapassar 2000 números. ('+IntToStr(TBNfeInutilizadasNIN_NUMFINAL.Value-TBNfeInutilizadasNIN_NUMINICIAL.Value)+')',mtError,[mbOk],0);
    TBNfeInutilizadas.Edit;
  end;
  if Length(TBNfeInutilizadasNIN_JUSTIFICATIVA.Value)<15 then
  begin
    MessageDlg('A justificativa deve ter no mínimo 15 caracteres. ('+IntToStr(Length(TBNfeInutilizadasNIN_JUSTIFICATIVA.Value))+')',mtError,[mbOk],0);
    TBNfeInutilizadas.Edit; //volta a colocar em edição.
  end;
end;

procedure TDM.TBNfeInutilizadasBeforeDelete(DataSet: TDataSet);
begin
  if TBNfeInutilizadasNIN_PROTOCOLO.Value<>'' then
  NaoPodeExcluir:=True;
end;

procedure TDM.TBNfeInutilizadasBeforeEdit(DataSet: TDataSet);
begin
  if FormNfeInutilizadas<>nil then
  FormMain.SetFields(FormNfeInutilizadas,True);
end;

procedure TDM.TBNfeInutilizadasBeforeInsert(DataSet: TDataSet);
begin
  if FormNfeInutilizadas<>nil then
  begin
    FormMain.SetFields(FormNfeInutilizadas,True);
    FormNfeInutilizadas.DBEdit4.SetFocus;
  end;
end;

procedure TDM.TBNfeInutilizadasBeforePost(DataSet: TDataSet);
begin
  TBNfeInutilizadasNIN_DTATUALIZACAO.Value:=ServerDate;
  TBNfeInutilizadasNIN_HRATUALIZACAO.Value:=ServerTime;
end;

procedure TDM.DSNfeInutilizadasStateChange(Sender: TObject);
begin
  if TBNfeInutilizadas.State in [dsInsert, dsEdit] then
  begin
    if FormNfeInutilizadas<>nil then
    begin
      FormNfeInutilizadas.SpeedButton2.Enabled:=False;
      FormNfeInutilizadas.PngSpeedButton1.Enabled:=False;
      FormNfeInutilizadas.Localizar1.Enabled:=False;
      FormNfeInutilizadas.InutilizarNFe1.Enabled:=False;
    end;
  end else
  begin
    if FormNfeInutilizadas<>nil then
    begin
      FormNfeInutilizadas.SpeedButton2.Enabled:=True;
      FormNfeInutilizadas.PngSpeedButton1.Enabled:=True;
      FormNfeInutilizadas.Localizar1.Enabled:=True;
      FormNfeInutilizadas.InutilizarNFe1.Enabled:=True;
      FormMain.DesabilitarControles(FormNfeInutilizadas);
      FormMain.SetFields(FormNfeInutilizadas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NFEITENS - ITENS DA NFE                                                    //
//##############################################################################
{$REGION 'TABELA NFEITENS'}
procedure TDM.CalcularTotaisNFeItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  if (TBNfeNFE_MANUAL.IsNull) or (TBNfeNFE_MANUAL.Value='N') then
  begin
    //calcula o valor bruto.
    TBNfeItensNFI_VALORTOTALBRUTO.Value:=Decimais((TBNfeItensNFI_QUANTIDADE.AsExtended*TBNfeItensNFI_VALORUNIT.AsExtended),2);

    {$REGION 'calcula o valor total com desconto.'}
    TBNfeItensNFI_VALORTOTAL.Value:=Decimais((TBNfeItensNFI_QUANTIDADE.AsExtended*TBNfeItensNFI_VALORUNIT.AsExtended),2);
    if TBNfeItensNFI_QUANTIDADETROCA.Value < 0 then TBNfeItensNFI_QUANTIDADETROCA.Value:=0;
    if TBNfeItensNFI_QUANTIDADETROCA.Value > 0 then
    begin
      if TBNfeItensNFI_QUANTIDADETROCA.Value > (TBNfeItensNFI_QUANTIDADE.Value * TBNfeItensNFI_CONVERSAO.Value) then
      TBNfeItensNFI_QUANTIDADETROCA.Value:=TBNfeItensNFI_QUANTIDADE.Value * TBNfeItensNFI_CONVERSAO.Value;
      //TBNfeItensNFI_DESCVALOR.Value:=Decimais((TBNfeItensNFI_QUANTIDADETROCA.Value*TBNfeItensNFI_VALORUNIT.Value),2);
      //(bruto divido pela (quantidade*conversao)=valor unitário.) * quantidade de troca.
      TBNfeItensNFI_DESCVALOR.Value:=Decimais(TBNfeItensNFI_QUANTIDADETROCA.AsExtended * (TBNfeItensNFI_VALORTOTALBRUTO.AsExtended / (TBNfeItensNFI_QUANTIDADE.AsExtended*TBNfeItensNFI_CONVERSAO.AsExtended)),2);
      TBNfeItensNFI_DESCPORC.Value:=Decimais((100.0/((TBNfeItensNFI_QUANTIDADE.AsExtended*TBNfeItensNFI_VALORUNIT.AsExtended)+
                                             TBNfeItensNFI_VALORFRETE.AsExtended+
                                             TBNfeItensNFI_VALORSEGURO.AsExtended+
                                             TBNfeItensNFI_VALORACESSORIAS.AsExtended))*TBNfeItensNFI_DESCVALOR.AsExtended,8);
    end else
    TBNfeItensNFI_DESCVALOR.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100.00)*TBNfeItensNFI_DESCPORC.AsExtended,2);

    if (TBNfeItensNFI_COMPOETOTAL.Value='S') or (TBNfeItensNFI_COMPOETOTAL.IsNull) then
    TBNfeItensNFI_VALORTOTAL.Value:=TBNfeItensNFI_VALORTOTAL.Value-TBNfeItensNFI_DESCVALOR.Value else
    TBNfeItensNFI_VALORTOTAL.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula o peso total do produto.'}
    //quantidade * peso = pesototal (liquido).
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBNfeItensNFI_PESOTOTAL.Value:=TBNfeItensNFI_QUANTIDADE.AsExtended*TBNfeItensNFI_PESO.Value;
    {$ENDREGION}

    {$REGION 'calcula valor do IPI.'}
    TBNfeItensNFI_BASEIPI.Value:=0;
    TBNfeItensNFI_VALORIPI.Value:=0;
    if TBNfeItensNFI_ALIQIPI.Value>0 then
    begin
      TBNfeItensNFI_BASEIPI.Value:=TBNfeItensNFI_VALORTOTAL.Value+TBNfeItensNFI_VALORFRETE.Value;
      TBNfeItensNFI_VALORIPI.Value:=Decimais((TBNfeItensNFI_BASEIPI.AsExtended/100.00)*TBNfeItensNFI_ALIQIPI.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ICMS'}
    //base = total + frete + seguro + acessorias - desconto.
    TBNfeItensNFI_BASEICMS.Value:=0;
    TBNfeItensNFI_VALORICMS.Value:=0;
    TBNfeItensNFI_VALORICMSUFDEST.Value:=0;
    TBNfeItensNFI_VALORICMSUFREMET.Value:=0;
    TBNfeItensNFI_VALORFCP.Value:=0;
    if TBNfeItensNFI_COMPOEBASEICMS.Value='S' then
    begin
      TBNfeItensNFI_BASEICMS.Value:=TBNfeItensNFI_VALORTOTAL.Value+
                                    TBNfeItensNFI_VALORFRETE.Value+
                                    TBNfeItensNFI_VALORSEGURO.Value+
                                    TBNfeItensNFI_VALORACESSORIAS.Value;

      //24-11-2020
      if TBNfeNFE_TIPOCONSUMIDOR.Value='1 - CONSUMIDOR FINAL' then
      TBNfeItensNFI_BASEICMS.Value:=TBNfeItensNFI_BASEICMS.Value+TBNfeItensNFI_VALORIPI.Value;

      if TBNfeItensNFI_ALIQICMSRED.Value<>0 then
      TBNfeItensNFI_BASEICMS.Value:=Decimais(TBNfeItensNFI_BASEICMS.AsExtended-((TBNfeItensNFI_BASEICMS.AsExtended/100)*TBNfeItensNFI_ALIQICMSRED.AsExtended),2);
      TBNfeItensNFI_VALORICMS.Value:=Decimais(((TBNfeItensNFI_BASEICMS.AsExtended/100.00)*TBNfeItensNFI_ALIQICMS.AsExtended),2);

      //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
      //40% de (base calculo / 100 * (aliq icms - interestadual))
      //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
      if TBEmpresaEMP_ESTADO.Value<>TBNfeNFE_ESTADO.Value then
      begin
        ICMS:=(TBNfeItensNFI_BASEICMS.AsExtended/100.00) * (Abs(TBNfeItensNFI_ALIQICMS.AsExtended-TBNfeItensNFI_ALIQICMSINTER.AsExtended));
        TBNfeItensNFI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBNfeItensNFI_ALIQICMSINTERPART.AsExtended,2);

        //calcula o valor do ICMS na UF do remetente
        TBNfeItensNFI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBNfeItensNFI_ALIQICMSINTERPART.AsExtended),2);

        //calcula o valor do FCP.
        TBNfeItensNFI_VALORFCP.Value:=(TBNfeItensNFI_BASEICMS.Value/100.00) * TBNfeItensNFI_ALIQFCP.Value;
      end;
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ICMS ST.'}
    //base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
    TBNfeItensNFI_BASEICMSST.Value:=0;
    TBNfeItensNFI_VALORICMSST.Value:=0;
    TBNfeItensNFI_VALORFCPST.Value:=0;
    if (TBNfeItensNFI_COMPOEBASEICMSST.Value='S') and (TBNfeItensNFI_ALIQICMSST.Value>0) then
    begin
      BC:=TBNfeItensNFI_VALORTOTAL.AsExtended+
          TBNfeItensNFI_VALORIPI.AsExtended+
          TBNfeItensNFI_VALORFRETE.AsExtended+
          TBNfeItensNFI_VALORSEGURO.AsExtended+
          TBNfeItensNFI_VALORACESSORIAS.AsExtended;

      if TBNfeItensNFI_ALIQICMSRED.Value<>0 then
      BC:=Decimais(BC-((BC/100)*TBNfeItensNFI_ALIQICMSRED.AsExtended),2);
      ICMS:=Decimais(((BC/100)*TBNfeItensNFI_ALIQICMS.AsExtended),2);

      TBNfeItensNFI_BASEICMSST.Value:=Decimais(((TBNfeItensNFI_VALORTOTAL.AsExtended+
                                                 TBNfeItensNFI_VALORIPI.AsExtended+
                                                 TBNfeItensNFI_VALORFRETE.AsExtended+
                                                 TBNfeItensNFI_VALORSEGURO.AsExtended+
                                                 TBNfeItensNFI_VALORACESSORIAS.AsExtended)+
                                               ((TBNfeItensNFI_VALORTOTAL.AsExtended+
                                                 TBNfeItensNFI_VALORIPI.AsExtended+
                                                 TBNfeItensNFI_VALORFRETE.AsExtended+
                                                 TBNfeItensNFI_VALORSEGURO.AsExtended+
                                                 TBNfeItensNFI_VALORACESSORIAS.AsExtended)/100) *
                                                 TBNfeItensNFI_ALIQICMSADICST.AsExtended),2);
      TBNfeItensNFI_VALORICMSST.Value:=Decimais(((TBNfeItensNFI_BASEICMSST.AsExtended/100)*TBNfeItensNFI_ALIQICMSST.AsExtended)-ICMS,2);
      TBNfeItensNFI_VALORFCPST.Value:=(TBNfeItensNFI_BASEICMSST.Value/100.00) * TBNfeItensNFI_ALIQFCPST.Value;
    end;
    {$ENDREGION}

    {$REGION 'calcula o valor do crédito do simples nacional.'}
    TBNfeItensNFI_VALORICMSCREDSN.Value:=0;
    if (TBNfeItensICM_CALCULACREDITOSN.Value='S') and (TBNfeItensNAT_CALCULACREDITOSN.Value='S') then
    begin
      TBNfeItensNFI_VALORICMSCREDSN.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100)*TBNfeNFE_ALIQICMSCREDSN.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do II.'}
    TBNfeItensNFI_BASEII.Value:=0;
    TBNfeItensNFI_VALORII.Value:=0;
    if TBNfeItensNFI_ALIQII.Value>0 then
    begin
      TBNfeItensNFI_BASEII.Value:=TBNfeItensNFI_VALORTOTAL.Value;
      TBNfeItensNFI_VALORII.Value:=Decimais((TBNfeItensNFI_BASEII.AsExtended/100)*TBNfeItensNFI_ALIQII.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ISS.'}
    TBNfeItensNFI_BASEISS.Value:=0;
    TBNfeItensNFI_VALORISS.Value:=0;
    if TBNfeItensNFI_ALIQISS.Value>0 then
    begin
      TBNfeItensNFI_BASEISS.Value:=TBNfeItensNFI_VALORTOTAL.Value;
      TBNfeItensNFI_VALORISS.Value:=Decimais((TBNfeItensNFI_BASEISS.AsExtended/100)*TBNfeItensNFI_ALIQISS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do PIS.'}
    TBNfeItensNFI_BASEPIS.Value:=0;
    TBNfeItensNFI_VALORPIS.Value:=0;
    if TBNfeItensNFI_ALIQPIS.Value>0 then
    begin
      TBNfeItensNFI_BASEPIS.Value:=TBNfeItensNFI_VALORTOTAL.Value+TBNfeItensNFI_VALORFRETE.Value;
      TBNfeItensNFI_VALORPIS.Value:=Decimais((TBNfeItensNFI_BASEPIS.AsExtended/100)*TBNfeItensNFI_ALIQPIS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do PISST.'}
    TBNfeItensNFI_BASEPISST.Value:=0;
    TBNfeItensNFI_VALORPISST.Value:=0;
    if TBNfeItensNFI_ALIQPISST.Value>0 then
    begin
      TBNfeItensNFI_BASEPISST.Value:=TBNfeItensNFI_VALORTOTAL.Value+TBNfeItensNFI_VALORFRETE.Value;
      TBNfeItensNFI_VALORPISST.Value:=Decimais((TBNfeItensNFI_BASEPISST.AsExtended/100)*TBNfeItensNFI_ALIQPISST.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do COFINS.'}
    TBNfeItensNFI_BASECOFINS.Value:=0;
    TBNfeItensNFI_VALORCOFINS.Value:=0;
    if TBNfeItensNFI_ALIQCOFINS.Value>0 then
    begin
      TBNfeItensNFI_BASECOFINS.Value:=TBNfeItensNFI_VALORTOTAL.Value+TBNfeItensNFI_VALORFRETE.Value;
      TBNfeItensNFI_VALORCOFINS.Value:=Decimais((TBNfeItensNFI_BASECOFINS.AsExtended/100)*TBNfeItensNFI_ALIQCOFINS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do COFINS ST.'}
    TBNfeItensNFI_BASECOFINSST.Value:=0;
    TBNfeItensNFI_VALORCOFINSST.Value:=0;
    if TBNfeItensNFI_ALIQCOFINSST.Value>0 then
    begin
      TBNfeItensNFI_BASECOFINSST.Value:=TBNfeItensNFI_VALORTOTAL.Value+TBNfeItensNFI_VALORFRETE.Value;
      TBNfeItensNFI_VALORCOFINSST.Value:=Decimais((TBNfeItensNFI_BASECOFINSST.AsExtended/100)*TBNfeItensNFI_ALIQCOFINSST.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula a comissão do vendedor sobre o item. (por produto).'}
    //valor total - IPI - ICMSST / 100 * %comissao.
    if TBNfeItensNAT_CALCULACOMISSAO.Value='S' then
    TBNfeItensNFI_VALORCOMISSAO.Value:=Decimais((((TBNfeItensNFI_VALORTOTAL.AsExtended-TBNfeItensNFI_VALORIPI.AsExtended-TBNfeItensNFI_VALORICMSST.AsExtended)/100.0)*TBNfeItensNFI_COMISSAO.AsExtended),2) else
    TBNfeItensNFI_VALORCOMISSAO.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula a comissão do representante sobre o item. (por produto).'}
    //valor total - IPI - ICMSST / 100 * %comissao.
    if TBNfeItensNAT_CALCULACOMISSAO.Value='S' then
    TBNfeItensNFI_VALORCOMISSAOREP.Value:=Decimais((((TBNfeItensNFI_VALORTOTAL.AsExtended-TBNfeItensNFI_VALORIPI.AsExtended-TBNfeItensNFI_VALORICMSST.AsExtended)/100.0)*TBNfeItensNFI_COMISSAOREP.AsExtended),2) else
    TBNfeItensNFI_VALORCOMISSAOREP.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula o lucro no item.'}
    TBNfeItensNFI_PRECOCUSTOTOTAL.Value:=TBNfeItensNFI_PRECOCUSTO.Value*TBNfeItensNFI_QUANTIDADE.Value;
    TBNfeItensNFI_LUCROVALOR.Value:=TBNfeItensNFI_VALORTOTAL.Value-TBNfeItensNFI_PRECOCUSTOTOTAL.Value;
    if TBNfeItensNFI_LUCROVALOR.Value<>0 then
    begin
      if TBNfeItensNFI_VALORTOTAL.Value=0 then
      TBNfeItensNFI_LUCROPORC.Value:=(-100.0) else
      TBNfeItensNFI_LUCROPORC.Value:=(TBNfeItensNFI_LUCROVALOR.Value/TBNfeItensNFI_VALORTOTAL.Value)*100.0;
    end;
    {$ENDREGION}

    {$REGION 'calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.'}
    TBClassFiscal.Close;
    TBClassFiscal.ParamByName('codigo').AsString:=TBNfeItensNFI_CLASSFISCAL.Value;
    TBClassFiscal.ParamByName('excecao').AsInteger:=TBNfeItensNFI_EXCECAO.Value;
    TBClassFiscal.Open;
    if (Copy(TBNfeItensNFI_ORIGEM.Value,1,1)='0') or
       (Copy(TBNfeItensNFI_ORIGEM.Value,1,1)='3') or
       (Copy(TBNfeItensNFI_ORIGEM.Value,1,1)='4') or
       (Copy(TBNfeItensNFI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
    begin
      TBNfeItensNFI_VALORTRIBUTOSEST.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAESTADUAL.AsExtended,2);
      TBNfeItensNFI_VALORTRIBUTOSFED.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2);
      TBNfeItensNFI_VALORTRIBUTOSMUN.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAMUNICIPAL.AsExtended,2);
      TBNfeItensNFI_VALORTRIBUTOSIMP.Value:=0;
      TBNfeItensNFI_VALORTRIBUTOS.Value:=TBNfeItensNFI_VALORTRIBUTOSEST.Value+TBNfeItensNFI_VALORTRIBUTOSFED.Value+TBNfeItensNFI_VALORTRIBUTOSMUN.Value;
    end else
    begin
      TBNfeItensNFI_VALORTRIBUTOSEST.Value:=0;
      TBNfeItensNFI_VALORTRIBUTOSFED.Value:=0;
      TBNfeItensNFI_VALORTRIBUTOSMUN.Value:=0;
      TBNfeItensNFI_VALORTRIBUTOSIMP.Value:=Decimais((TBNfeItensNFI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
      TBNfeItensNFI_VALORTRIBUTOS.Value:=TBNfeItensNFI_VALORTRIBUTOSIMP.Value;
    end;
    {$ENDREGION}

    //calculos da reforma tributária.
    {$REGION 'calcula valor do IS.'}
    TBNfeItensNFI_BASEIS.Value:=0;
    TBNfeItensNFI_VALORIS.Value:=0;
    if TBNfeItensNFI_ALIQIS.Value>0 then
    begin
      //base de calculo do IS
      //      (+) vProd
      //      (+) vServ
      //      (+) vFrete
      //      (+) vSeg
      //      (+) vOutro
      //      (+) vII
      //      (-) vDesc
      //      (-) vPIS
      //      (-) vCOFINS
      //      (-) vICMS
      //      (-) vICMSUFDest
      //      (-) vFCP
      //      (-) vFCPUFDest
      //      (-) vICMSMono
      TBNfeItensNFI_BASEIS.Value:=Decimais(
          TBNfeItensNFI_VALORTOTALBRUTO.AsExtended
        + TBNfeItensNFI_VALORFRETE.AsExtended
        + TBNfeItensNFI_VALORSEGURO.AsExtended
        + TBNfeItensNFI_VALORACESSORIAS.AsExtended
        + TBNfeItensNFI_VALORII.AsExtended
        - TBNfeItensNFI_DESCVALOR.AsExtended
        - TBNfeItensNFI_VALORPIS.AsExtended
        - TBNfeItensNFI_VALORCOFINS.AsExtended
        - TBNfeItensNFI_VALORICMS.AsExtended
        - TBNfeItensNFI_VALORICMSUFDEST.AsExtended
        - TBNfeItensNFI_VALORFCP.AsExtended
        - TBNfeItensNFI_VALORISS.AsExtended, 2
      );
      TBNfeItensNFI_VALORIS.Value:=Decimais((TBNfeItensNFI_BASEIS.AsExtended/100)*TBNfeItensNFI_ALIQIS.AsExtended,2);
    end;
    if TBNfeItensNFI_ALIQISESP.Value>0 then
    TBNfeItensNFI_VALORIS.Value:=TBNfeItensNFI_VALORIS.Value + Decimais((TBNfeItensNFI_QUANTIDADE.AsExtended/100)*TBNfeItensNFI_ALIQISESP.AsExtended,2);
    {$ENDREGION}

    {$REGION 'composicao da base de calculo IBSCBS'}
    //composicao da base
    //    (+) vProd
    //    (+) vServ
    //    (+) vFrete
    //    (+) vSeg
    //    (+) vOutro
    //    (+) vII
    //    (-) vDesc
    //    (-) vPIS
    //    (-) vCOFINS
    //    (-) vICMS
    //    (-) vICMSUFDest
    //    (-) vFCP
    //    (-) vFCPUFDest
    //    (-) vICMSMono
    //    (-) vISSQN
    //    (+) vIS
    TBNfeItensNFI_BASEIBSCBS.Value:=Decimais(
        TBNfeItensNFI_VALORTOTALBRUTO.AsExtended //qtde * valorunit
      + TBNfeItensNFI_VALORFRETE.AsExtended
      + TBNfeItensNFI_VALORSEGURO.AsExtended
      + TBNFeItensNFI_VALORACESSORIAS.AsExtended
      + TBNfeItensNFI_VALORII.AsExtended
      - TBNfeItensNFI_DESCVALOR.AsExtended
      - TBNfeItensNFI_VALORPIS.AsExtended
      - TBNfeItensNFI_VALORPISST.AsExtended
      - TBNfeItensNFI_VALORCOFINS.AsExtended
      - TBNfeItensNFI_VALORCOFINSST.AsExtended
      - TBNfeItensNFI_VALORICMS.AsExtended
      - TBNfeItensNFI_VALORICMSUFDEST.AsExtended
      - TBNfeItensNFI_VALORFCP.AsExtended
      - TBNfeItensNFI_VALORISS.AsExtended
      + TBNfeItensNFI_VALORIS.AsExtended, 2
    );
    if TBNfeItensNFI_SOMACOFINSST.Value='N' then TBNfeItensNFI_BASEIBSCBS.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended + TBNfeItensNFI_VALORCOFINSST.AsExtended,2);
    if TBNfeItensNFI_SOMAPISST.Value='N' then TBNfeItensNFI_BASEIBSCBS.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended + TBNfeItensNFI_VALORPISST.AsExtended,2);
    {$ENDREGION}

    {$REGION 'calcula aliquota efetiva IBS'}
    //pAliqEfet = pIBSUF × (1 - pRedAliq / 100).
    TBNfeItensNFI_ALIQIBSMUNEFE.Value:=0;
    if TBNfeItensNFI_ALIQIBSMUNRED.Value > 0 then
    TBNfeItensNFI_ALIQIBSMUNEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSMUN.AsExtended * (1-TBNfeItensNFI_ALIQIBSMUNRED.AsExtended/100), 4);
    if TBNfeNFE_GOVERNAMENTALALIQRED.Value > 0 then
    TBNfeItensNFI_ALIQIBSMUNEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSMUN.AsExtended * (1-TBNfeItensNFI_ALIQIBSMUNRED.AsExtended/100) * (1-TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended/100), 4);

    TBNfeItensNFI_ALIQIBSUFEFE.Value:=0;
    if TBNfeItensNFI_ALIQIBSUFRED.Value > 0 then
    TBNfeItensNFI_ALIQIBSUFEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSUF.AsExtended * (1-TBNfeItensNFI_ALIQIBSUFRED.AsExtended/100), 4);
    if TBNfeNFE_GOVERNAMENTALALIQRED.Value > 0 then
    TBNfeItensNFI_ALIQIBSUFEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSUF.AsExtended * (1-TBNfeItensNFI_ALIQIBSUFRED.AsExtended/100) * (1-TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended/100), 4);
    {$ENDREGION}

    {$REGION 'calcula aliquota efetiva CBS'}
    //pAliqEfet = pCBS × (1 - pRedAliq / 100)
    //...OU...
    //pAliqEfet = pCBS × (1 - pRedAliq / 100) × (1 - gCompraGov/pRedutor / 100)
    //Alíquota efetiva, após aplicação da redução de alíquota, incluindo o gCompraGov/pRedutor, se houver.
    //    Exemplo: Redução de 40% na alíquota:
    //    Alíquota vigente (A): 10%
    //    Redução na alíquota (R): 40%
    //    Redutor de compras governamentais (RG): 5%
    //    Alíquota Efetiva (E): E = A * (1 - R)*(1- RG)
    //    E = 10 * (1 - 0,4) *(1 - 0,05) = 5,7
    //    Observação: O cálculo da pAliqEfet deve considerar 4 casas decimais com arredondamento na ultima casa decimal.
    TBNfeItensNFI_ALIQCBSEFE.Value:=0;
    if TBNfeItensNFI_ALIQCBSRED.Value > 0 then
    TBNfeItensNFI_ALIQCBSEFE.Value:=Decimais(TBNfeItensNFI_ALIQCBS.AsExtended * (1-TBNfeItensNFI_ALIQCBSRED.AsExtended/100), 4);
    if TBNfeNFE_GOVERNAMENTALALIQRED.Value > 0 then
    TBNfeItensNFI_ALIQCBSEFE.Value:=Decimais(TBNfeItensNFI_ALIQCBS.AsExtended * (1-TBNfeItensNFI_ALIQCBSRED.AsExtended/100) * (1-TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended/100), 4);
    {$ENDREGION}

    {$REGION 'calcula diferimento IBSCBS'}
    //IBS mun diferimento.
    if TBNfeItensNFI_ALIQIBSMUNDIF.Value>0 then
    begin
      TBNfeItensNFI_VALORIBSMUNDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQIBSMUN.AsExtended/100) * (TBNfeItensNFI_ALIQIBSMUNDIF.AsExtended/100),2);
      if TBNfeItensNFI_ALIQIBSMUNEFE.Value>0 then
      TBNfeItensNFI_VALORIBSMUNDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQIBSMUNEFE.AsExtended/100) * (TBNfeItensNFI_ALIQIBSMUNDIF.AsExtended/100),2);
    end;

    //IBS uf diferimento.
    if TBNfeItensNFI_ALIQIBSUFDIF.Value>0 then
    begin
      TBNfeItensNFI_VALORIBSUFDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQIBSUF.AsExtended/100) * (TBNfeItensNFI_ALIQIBSUFDIF.AsExtended/100) ,2);
      if TBNfeItensNFI_ALIQIBSUFEFE.Value>0 then
      TBNfeItensNFI_VALORIBSUFDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQIBSUFEFE.AsExtended/100) * (TBNfeItensNFI_ALIQIBSUFDIF.AsExtended/100) ,2);
    end;

    //CBS diferimento
    if TBNfeItensNFI_ALIQCBSDIF.Value>0 then
    begin
      TBNfeItensNFI_VALORCBSDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQCBS.AsExtended/100) * (TBNfeItensNFI_ALIQCBSDIF.AsExtended/100), 2);
      if TBNfeItensNFI_ALIQCBSEFE.Value>0 then
      TBNfeItensNFI_VALORCBSDIF.Value:=Decimais(TBNfeItensNFI_BASEIBSCBS.AsExtended * (TBNfeItensNFI_ALIQCBSEFE.AsExtended/100) * (TBNfeItensNFI_ALIQCBSDIF.AsExtended/100), 2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do IBSCBS'}
    //vIBSUF = (gIBSCBS/vBC x (pIBSUF / 100)) - vDif - vDevTrib
    //...OU...
    //vIBSUF = (gIBSCBS/vBC x (pAliqEfet / 100)) - vDif - vDevTrib
    if TBNfeItensNFI_ALIQIBSMUN.Value>0 then
    TBNfeItensNFI_VALORIBSMUN.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQIBSMUN.AsExtended/100)
      - TBNfeItensNFI_VALORIBSMUNDIF.AsExtended
      - TBNfeItensNFI_VALORIBSMUNDEV.AsExtended,2
    );
    if ((TBNfeItensNFI_ALIQIBSMUNEFE.Value>0) or (TBNfeItensNFI_ALIQIBSMUNRED.Value=100)) then
    TBNfeItensNFI_VALORIBSMUN.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQIBSMUNEFE.AsExtended/100)
      - TBNfeItensNFI_VALORIBSMUNDIF.AsExtended
      - TBNfeItensNFI_VALORIBSMUNDEV.AsExtended,2
    );

    if TBNfeItensNFI_ALIQIBSUF.Value>0 then
    TBNfeItensNFI_VALORIBSUF.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQIBSUF.AsExtended/100)
      - TBNfeItensNFI_VALORIBSUFDIF.AsExtended
      - TBNfeItensNFI_VALORIBSUFDEV.AsExtended, 2
    );
    if ((TBNfeItensNFI_ALIQIBSUFEFE.Value>0) or (TBNfeItensNFI_ALIQIBSUFRED.Value=100)) then
    TBNfeItensNFI_VALORIBSUF.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQIBSUFEFE.AsExtended/100)
      - TBNfeItensNFI_VALORIBSUFDIF.AsExtended
      - TBNfeItensNFI_VALORIBSUFDEV.AsExtended ,2
    );
    TBNfeItensNFI_VALORIBS.Value:=Decimais(TBNfeItensNFI_VALORIBSMUN.AsExtended + TBNfeItensNFI_VALORIBSUF.AsExtended,2);

    //vCBS = (gIBSCBS/vBC x (pCBS / 100)) - vDif – vDevTrib
    TBNfeItensNFI_VALORCBS.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQCBS.AsExtended/100)
      - TBNfeItensNFI_VALORCBSDIF.AsExtended
      - TBNfeItensNFI_VALORCBSDEV.AsExtended, 2
    );
    if ((TBNfeItensNFI_ALIQCBSEFE.Value>0) or (TBNfeItensNFI_ALIQCBSRED.Value=100)) then
    TBNfeItensNFI_VALORCBS.Value:=Decimais(
        TBNfeItensNFI_BASEIBSCBS.AsExtended
      * (TBNfeItensNFI_ALIQCBSEFE.AsExtended/100)
      - TBNfeItensNFI_VALORCBSDIF.AsExtended
      - TBNfeItensNFI_VALORCBSDEV.AsExtended, 2
    );
    {$ENDREGION}
  end;
end;

procedure TDM.TBNfeItensAfterInsert(DataSet: TDataSet);
begin
  TBNfeItensNFI_ALIQCBS.Value:=0;
  TBNfeItensNFI_ALIQCBSCREDPRES.Value:=0;
  TBNfeItensNFI_ALIQCBSDIF.Value:=0;
  TBNfeItensNFI_ALIQCBSEFE.Value:=0;
  TBNfeItensNFI_ALIQCBSRED.Value:=0;
  TBNfeItensNFI_ALIQCOFINS.Value:=0;
  TBNfeItensNFI_ALIQCOFINSST.Value:=0;
  TBNfeItensNFI_ALIQFCP.Value:=0;
  TBNfeItensNFI_ALIQFCPST.Value:=0;
  TBNfeItensNFI_ALIQIBSCREDPRES.Value:=0;
  TBNfeItensNFI_ALIQIBSMUN.Value:=0;
  TBNfeItensNFI_ALIQIBSMUNDIF.Value:=0;
  TBNfeItensNFI_ALIQIBSMUNEFE.Value:=0;
  TBNfeItensNFI_ALIQIBSMUNRED.Value:=0;
  TBNfeItensNFI_ALIQIBSUF.Value:=0;
  TBNfeItensNFI_ALIQIBSUFDIF.Value:=0;
  TBNfeItensNFI_ALIQIBSUFEFE.Value:=0;
  TBNfeItensNFI_ALIQIBSUFRED.Value:=0;
  TBNfeItensNFI_ALIQICMS.Value:=0;
  TBNfeItensNFI_ALIQICMSADICST.Value:=0;
  TBNfeItensNFI_ALIQICMSINTER.Value:=0;
  TBNfeItensNFI_ALIQICMSINTERPART.Value:=0;
  TBNfeItensNFI_ALIQICMSRED.Value:=0;
  TBNfeItensNFI_ALIQICMSST.Value:=0;
  TBNfeItensNFI_ALIQICMSSTRET.Value:=0;
  TBNfeItensNFI_ALIQII.Value:=0;
  TBNfeItensNFI_ALIQIPI.Value:=0;
  TBNfeItensNFI_ALIQIS.Value:=0;
  TBNfeItensNFI_ALIQISS.Value:=0;
  TBNfeItensNFI_ALIQPIS.Value:=0;
  TBNfeItensNFI_ALIQPISST.Value:=0;
  TBNfeItensNFI_ALMOXARIFADO.Value:=TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  TBNfeItensNFI_BASECOFINS.Value:=0;
  TBNfeItensNFI_BASECOFINSST.Value:=0;
  TBNfeItensNFI_BASEIBSCBS.Value:=0;
  TBNfeItensNFI_BASEICMS.Value:=0;
  TBNfeItensNFI_BASEICMSRED.Value:=0;
  TBNfeItensNFI_BASEICMSST.Value:=0;
  TBNfeItensNFI_BASEICMSSTRET.Value:=0;
  TBNfeItensNFI_BASEII.Value:=0;
  TBNfeItensNFI_BASEIPI.Value:=0;
  TBNfeItensNFI_BASEIS.Value:=0;
  TBNfeItensNFI_BASEISS.Value:=0;
  TBNfeItensNFI_BASEPIS.Value:=0;
  TBNfeItensNFI_BASEPISST.Value:=0;
  TBNfeItensNFI_CBSCREDITOPRES.Value:=0;
  TBNfeItensNFI_CFOP.Value:=TBNfeNFE_CFOP.Value;
  TBNfeItensNFI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBNfeItensNFI_COMISSAO.Value:=0;
  TBNfeItensNFI_COMISSAOREP.Value:=0;
  TBNfeItensNFI_COMPOEBASEICMS.Value:='N';
  TBNfeItensNFI_COMPOEBASEICMSST.Value:='N';
  TBNfeItensNFI_COMPOETOTAL.Value:='S';
  TBNfeItensNFI_CONVERSAO.Value:=1;
  TBNfeItensNFI_DESCPORC.Value:=0;
  TBNfeItensNFI_DESCVALOR.Value:=0;
  TBNfeItensNFI_DESONERACAO.Value:='00 - NENHUM';
  TBNfeItensNFI_EXCECAO.Value:=0;
  TBNfeItensNFI_IBSCREDITOPRES.Value:=0;
  TBNfeItensNFI_INDICADORISS.Value:='2 - NAO INCIDENCIA';
  TBNfeItensNFI_INCENTIVOISS.Value:='N';
  TBNfeItensNFI_LUCROPORC.Value:=0;
  TBNfeItensNFI_LUCROVALOR.Value:=0;
  TBNfeItensNFI_MODICMS.Value:='3 - VALOR DA OPERACAO';
  TBNfeItensNFI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
  TBNfeItensNFI_NOTA.Value:=TBNfeNFE_CODIGO.Value;
  TBNfeItensNFI_ORIGEM.Value:='0 - NACIONAL';
  TBNfeItensNFI_PAISISS.Value:=1058;
  TBNfeItensNFI_PEDIDOCLIENTE.Value:=TBNfeNFE_PEDIDOCLIENTE.Value;
  TBNfeItensNFI_PRECOCUSTO.Value:=0;
  TBNfeItensNFI_PRECOCUSTOTOTAL.Value:=0;
  TBNfeItensNFI_PRODUTOREAL.Value:=0;
  TBNfeItensNFI_QUANTIDADE.Value:=1;
  TBNfeItensNFI_QUANTIDADETROCA.Value:=0;
  TBNfeItensNFI_SEQUENCIA.Value:=TBNfeNFE_SEQUENCIAITEM.Value+1;
  TBNfeItensNFI_SOMACOFINSST.Value:='N';
  TBNfeItensNFI_SOMAPISST.Value:='N';
  TBNfeItensNFI_VALORACESSORIAS.Value:=0;
  TBNfeItensNFI_VALORADUANA.Value:=0;
  TBNfeItensNFI_VALORCBS.Value:=0;
  TBNfeItensNFI_VALORCBSCREDPRES.Value:=0;
  TBNfeItensNFI_VALORCBSCREDPRESSUS.Value:=0;
  TBNfeItensNFI_VALORCBSDEV.Value:=0;
  TBNfeItensNFI_VALORCBSDIF.Value:=0;
  TBNfeItensNFI_VALORCOFINS.Value:=0;
  TBNfeItensNFI_VALORCOFINSST.Value:=0;
  TBNfeItensNFI_VALORCOMISSAO.Value:=0;
  TBNfeItensNFI_VALORCOMISSAOREP.Value:=0;
  TBNfeItensNFI_VALORFCP.Value:=0;
  TBNfeItensNFI_VALORFCPST.Value:=0;
  TBNfeItensNFI_VALORFRETE.Value:=0;
  TBNfeItensNFI_VALORIBS.Value:=0;
  TBNfeItensNFI_VALORIBSCREDPRES.Value:=0;
  TBNfeItensNFI_VALORIBSCREDPRESSUS.Value:=0;
  TBNfeItensNFI_VALORIBSMUN.Value:=0;
  TBNfeItensNFI_VALORIBSMUNDEV.Value:=0;
  TBNfeItensNFI_VALORIBSMUNDIF.Value:=0;
  TBNfeItensNFI_VALORIBSUF.Value:=0;
  TBNfeItensNFI_VALORIBSUFDEV.Value:=0;
  TBNfeItensNFI_VALORIBSUFDIF.Value:=0;
  TBNfeItensNFI_VALORICMS.Value:=0;
  TBNfeItensNFI_VALORICMSCREDSN.Value:=0;
  TBNfeItensNFI_VALORICMSDESONERADO.Value:=0;
  TBNfeItensNFI_VALORICMSST.Value:=0;
  TBNfeItensNFI_VALORICMSSTRET.Value:=0;
  TBNfeItensNFI_VALORICMSSUBSTITUTO.Value:=0;
  TBNfeItensNFI_VALORICMSUFDEST.Value:=0;
  TBNfeItensNFI_VALORICMSUFREMET.Value:=0;
  TBNfeItensNFI_VALORII.Value:=0;
  TBNfeItensNFI_VALORIOF.Value:=0;
  TBNfeItensNFI_VALORIS.Value:=0;
  TBNfeItensNFI_VALORISS.Value:=0;
  TBNfeItensNFI_VALORISSDEDUCAO.Value:=0;
  TBNfeItensNFI_VALORISSDESCCOND.Value:=0;
  TBNfeItensNFI_VALORISSDESCINCOND.Value:=0;
  TBNfeItensNFI_VALORISSOUTROS.Value:=0;
  TBNfeItensNFI_VALORISSRETENCAO.Value:=0;
  TBNfeItensNFI_VALORSEGURO.Value:=0;
  TBNfeItensNFI_VALORTOTAL.Value:=0;
  TBNfeItensNFI_VALORTOTALBRUTO.Value:=0;

  //TBNfeItensALM_DESCRICAO.Value:=
  TBNfeItensNAT_DESCRICAO.Value:=TBNfeNFE_CFOPDESC.Value;
  TBNfeItensNAT_CALCULACOMISSAO.Value:=TBNfeNAT_CALCULACOMISSAO.Value;
  TBNfeItensNAT_CALCULACREDITOSN.Value:=TBNfeNAT_CALCULACREDITOSN.Value;
end;

procedure TDM.TBNfeItensAfterPost(DataSet: TDataSet);
begin
  if (CalcularTotais) and (TBNfeNFE_FINALIDADE.Value<>'2 - NFE COMPLEMENTAR') then //verificar futuramente a variavel calculartotais.
  CalcularTotaisNFe(True);
end;

procedure TDM.TBNfeItensBeforePost(DataSet: TDataSet);
begin
  if TBNfeNFE_FINALIDADE.Value<>'2 - NFE COMPLEMENTAR' then
  CalcularTotaisNFeItens(False); //o parametro nao está sendo utilizado.
end;
{$ENDREGION}

//##############################################################################
// NFEITENSADICOES - INFO SOBRE ADICOES DA DI.                                //
//##############################################################################
{$REGION 'TABELA NFEITENSADICOES'}
procedure TDM.TBNfeItensAdicoesAfterInsert(DataSet: TDataSet);
begin
  TBNfeItensAdicoesNFA_NFEITEM.Value:=TBNfeItensNFI_CODIGO.Value;
  TBNfeItensAdicoesNFA_DESCONTODI.Value:=0;
end;

procedure TDM.TBNfeItensAdicoesBeforeInsert(DataSet: TDataSet);
begin
  if FormNfeItensAdicoes<>nil then
  begin
    FormMain.SetFields(FormNfeItensAdicoes,True);
    FormNfeItensAdicoes.DBEdit9.SetFocus;
  end;
end;

procedure TDM.DSNfeItensAdicoesStateChange(Sender: TObject);
begin
  if TBNfeItensAdicoes.State in [dsInsert, dsEdit] then
  begin
    if FormNfeItensAdicoes<>nil then
    begin
      //FormNfeItensAdicoes.algumacoisa.Enabled:=False;
    end;
  end else
  begin
    if FormNfeItensAdicoes<>nil then
    begin
      //FormNfeItensAdicoes.algumacoisa.Enabled:=True;
      //...
      //nada a desabilitar - FormMain.DesabilitarControles(FormNfeItensAdicoes);
      FormMain.SetFields(FormNfeItensAdicoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NFEREF - NOTAS FISCAIS REFERENCIADAS.                                      //
//##############################################################################
{$REGION 'TABELA NFEREF'}
procedure TDM.TBNfeRefAfterInsert(DataSet: TDataSet);
begin
  TBNfeRefNFR_NFE.Value:=TBNfeNFE_CODIGO.Value;
  TBNfeRefNFR_TIPO.Value:='NFE';
end;
{$ENDREGION}

//##############################################################################
// NFSE - NOTAS FISCAIS DE SERVICO ELETRONICAS                                //
//##############################################################################
{$REGION 'TABELA NFSE'}
procedure TDM.CalcularTotaisNFSe(DarPost: Boolean);
begin
  TBNfse.Edit;
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select '+
    'sum(NSI_BASEIBSCBS) as BASEIBSCBS, '+
    'sum(NSI_BASEIS) as BASEIS, '+
    'sum(NSI_BASEISS) as BASEISS, '+
    'sum(NSI_VALORCBSCREDPRES) as VALORCBSCREDPRES, '+
    'sum(NSI_VALORCBSCREDPRESSUS) as VALORCBSCREDPRESSUS, '+
    'sum(NSI_VALORCBSDIF) as VALORCBSDIF, '+
    'sum(NSI_VALORCBSDEV) as VALORCBSDEV, '+
    //'-- sum(NSI_VALORCBSMONO) as VALORCBSMONO, '+
    //'-- sum(NSI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
    //'-- sum(NSI_CBSMONORETIDO) as CBSMONORETIDO, '+
    'sum(NSI_VALORCBS) as VALORCBS, '+
    'sum(NSI_VALORDEDUCOES) as VALORDEDUCOES, '+
    'sum(NSI_VALORDESCCOND) as VALORDESCCOND, '+
    'sum(NSI_VALORDESCINCOND) as VALORDESCINCOND, '+
    'sum(NSI_VALORIBSCREDPRES) as VALORIBSCREDPRES, '+
    'sum(NSI_VALORIBSCREDPRESSUS) as VALORIBSCREDPRESSUS, '+
    //'-- sum(NSI_IBSMONO) as IBSMONO, '+
    //'-- sum(NSI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
    //'-- sum(NSI_IBSMONORETIDO) as IBSMONORETIDO, '+
    'sum(NSI_VALORIBSMUNDIF) as VALORIBSMUNDIF, '+
    'sum(NSI_VALORIBSMUNDEV) as VALORIBSMUNDEV, '+
    'sum(NSI_VALORIBSMUN) as VALORIBSMUN, '+
    'sum(NSI_VALORIBSUFDIF) as VALORIBSUFDIF, '+
    'sum(NSI_VALORIBSUFDEV) as VALORIBSUFDEV, '+
    'sum(NSI_VALORIBSUF) as VALORIBSUF, '+
    'sum(NSI_VALORIBS) as VALORIBS, '+
    'sum(NSI_VALORIS) as VALORIS, '+
    'sum(NSI_VALORISS) as VALORISS, '+
    'sum(NSI_VALORTOTAL) as TOTALSERVICOS, '+
    'sum(NSI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
    'sum(NSI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
    'sum(NSI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
    'sum(NSI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
    'sum(NSI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN '+
    'from NFSEITENS where NSI_NFSE=:nota'
  );
  QYAux.ParamByName('nota').AsInteger:=TBNfseNFS_CODIGO.Value;
  QYAux.Open;

  //atualiza totais na tabela NFSE.
  TBNfseNFS_BASEISS.Value         :=QYAux.FieldByName('BASEISS').AsExtended;
  TBNfseNFS_TOTALDEDUCOES.Value   :=QYAux.FieldByName('VALORDEDUCOES').AsExtended;
  TBNfseNFS_TOTALDESCCOND.Value   :=QYAux.FieldByName('VALORDESCCOND').AsExtended;
  TBNfseNFS_TOTALDESCINCOND.Value :=QYAux.FieldByName('VALORDESCINCOND').AsExtended;
  TBNfseNFS_TOTALISS.Value        :=QYAux.FieldByName('VALORISS').AsExtended;
  TBNfseNFS_TOTALSERVICOS.Value   :=QYAux.FieldByName('TOTALSERVICOS').AsExtended;
  TBNfseNFS_TOTALTRIBUTOS.Value   :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
  TBNfseNFS_TOTALTRIBUTOSEST.Value:=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
  TBNfseNFS_TOTALTRIBUTOSFED.Value:=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
  TBNfseNFS_TOTALTRIBUTOSIMP.Value:=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
  TBNfseNFS_TOTALTRIBUTOSMUN.Value:=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
  if (TBNfseNFS_RETENCAO.Value='R - RETENCAO') or (TBNfseNFS_RETENCAO.Value='S - SUBSTITUICAO TRIBUTARIA') then
  TBNfseNFS_VALORISSRETIDO.Value  :=TBNfseNFS_TOTALISS.Value else
  TBNfseNFS_VALORISSRETIDO.Value  :=0;

  TBNfseNFS_VALORLIQUIDO.Value:=
      TBNfseNFS_TOTALSERVICOS.Value
    - TBNfseNFS_VALORCOFINS.Value
    - TBNfseNFS_VALORCSLL.Value
    - TBNfseNFS_VALORINSS.Value
    - TBNfseNFS_VALORIR.Value
    - TBNfseNFS_VALORISSRETIDO.Value
    - TBNfseNFS_VALOROUTRASRET.Value
    - TBNfseNFS_VALORPIS.Value
    - TBNfseNFS_TOTALDESCCOND.Value
    - TBNfseNFS_TOTALDESCINCOND.Value;

  {$REGION 'Reforma tributária'}
  TBNfseNFS_BASEIBSCBS.Value            :=QYAux.FieldByName('BASEIBSCBS').AsExtended;
  TBNfseNFS_BASEIS.Value                :=QYAux.FieldByName('BASEIS').AsExtended;

  TBNfseNFS_CBSCREDPRES.Value           :=QYAux.FieldByName('VALORCBSCREDPRES').AsExtended;
  TBNfseNFS_CBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
  TBNfseNFS_CBSDEVOLUCAO.AsExtended     :=QYAux.FieldByName('VALORCBSDEV').AsExtended;
  TBNfseNFS_CBSDIFERIMENTO.AsExtended   :=QYAux.FieldByName('VALORCBSDIF').AsExtended;
  TBNfseNFS_CBSMONO.AsExtended          :=0; //QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
  TBNfseNFS_CBSMONORETENCAO.AsExtended  :=0; //QYAux.FieldByName('VALORIBSMUN').AsExtended;
  TBNfseNFS_CBSMONORETIDO.AsExtended    :=0; //QYAux.FieldByName('VALORIBS').AsExtended;
  TBNfseNFS_CBSVALOR.AsExtended         :=QYAux.FieldByName('VALORCBS').AsExtended;

  TBNfseNFS_IBSUFDIFERIMENTO.Value      :=QYAux.FieldByName('VALORIBSUFDIF').AsExtended;
  TBNfseNFS_IBSUFDEVOLUCAO.AsExtended   :=QYAux.FieldByName('VALORIBSUFDEV').AsExtended;
  TBNfseNFS_IBSUFVALOR.AsExtended       :=QYAux.FieldByName('VALORIBSUF').AsExtended;
  TBNfseNFS_IBSMUNDIFERIMENTO.AsExtended:=QYAux.FieldByName('VALORIBSMUNDIF').AsExtended;
  TBNfseNFS_IBSMUNDEVOLUCAO.AsExtended  :=QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
  TBNfseNFS_IBSMUNVALOR.AsExtended      :=QYAux.FieldByName('VALORIBSMUN').AsExtended;
  TBNfseNFS_IBSVALOR.AsExtended         :=QYAux.FieldByName('VALORIBS').AsExtended;
  TBNfseNFS_IBSCREDPRES.AsExtended      :=QYAux.FieldByName('VALORIBSCREDPRES').AsExtended;
  TBNfseNFS_IBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

  TBNfseNFS_TOTALIS.Value               :=QYAux.FieldByName('VALORIS').AsExtended;

  TBNfseNFS_VALORTOTALRTC.Value:=
      TBNfseNFS_VALORLIQUIDO.Value //tá certo???
    //  TBNfseNFS_TOTALBRUTO.Value //nao tem esses campos abaixo... na nfe, nao tem o campo valorliquido.
    //- TBNfseNFS_DESCVALOR.Value
    //- TBNfseNFS_VALORFRETE.Value
    //+ TBNfseNFS_VALORSEGURO.Value
    //+ TBNfseNFS_VALORDESPACES.Value
    + TBNfseNFS_IBSVALOR.Value
    + TBNfseNFS_CBSVALOR.Value;
  {$ENDREGION}

  //calcula o valor total do serviço
  //TBNfeNFE_VALORTOTAL.Value:=TBNfeNFE_VALORTOTAL.Value+TBNfeNFE_TOTALIPI.Value+TBNfeNFE_TOTALICMSST.Value;

  //if (FormNfse<>nil) and (TBNfseNFS_STATUS.Value='A') then
  //begin
  //  FormNfse.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  //end;

  //o abaixo substitui o comentado acima.
  if TBNfseNFS_STATUS.Value='A' then
  SimularCondicaoNfse;

  QYAux.Close;
  if DarPost then TBNfse.Post;
end;

procedure TDM.TBNfseAfterEdit(DataSet: TDataSet);
begin
  if TBNfseNFS_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma nota já finalizada.',mtWarning,[mbOk],0);
    TBNfse.Cancel;
  end;
  if TBNfseNFS_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar uma nota cancelada.',mtWarning,[mbOk],0);
    TBNfe.Cancel;
  end;
  if TBNfseNFS_STATUS.Value='I' then
  begin
    MessageDlg('Não é possível alterar uma nota inutilizada.',mtWarning,[mbOk],0);
    TBNfse.Cancel;
  end;
  if (TBNfseNFS_STATUS.Value='A') and (TBNfseNFS_PROTOCOLO.Value<>'') then
  begin
    MessageDlg('Esta NF-e já foi autorizada para uso. Proceda com a finalização.',mtWarning,[mbOk],0);
    TBNfse.Cancel;
  end;
end;

procedure TDM.TBNfseAfterInsert(DataSet: TDataSet);
begin
  //localiza a condicao de pagamento para pegar a porcentagem de desconto.
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCondicoes.Open;
  //...
  TBNfseNFS_BASEIBSCBS.Value:=0;
  TBNfseNFS_BASEIS.Value:=0;
  TBNfseNFS_BASEISS.Value:=0;
  TBNfseNFS_CBSCREDPRES.Value:=0;
  TBNfseNFS_CBSCREDPRESSUS.Value:=0;
  TBNfseNFS_CBSDEVOLUCAO.Value:=0;
  TBNfseNFS_CBSDIFERIMENTO.Value:=0;
  TBNfseNFS_CBSMONO.Value:=0;
  TBNfseNFS_CBSMONORETENCAO.Value:=0;
  TBNfseNFS_CBSMONORETIDO.Value:=0;
  TBNfseNFS_CBSVALOR.Value:=0;
  TBNfseNFS_CSTISS.Value:='1 - TRIBUTACAO NO MUNICIPIO';
  TBNfseNFS_CONSULTADA.Value:='N';
  TBNfseNFS_DIAPREFERENCIAL.Value:=0;
  TBNfseNFS_DTCADASTRO.Value:=ServerDate;
  TBNfseNFS_DTEMISSAO.Value:=ServerDate;
  TBNfseNFS_GOVERNAMENTAL.Value:='0 - NENHUM';
  TBNfseNFS_GOVERNAMENTALALIQRED.Value:=0;
  TBNfseNFS_GOVERNAMENTALOP.Value:='0 - NENHUM';
  TBNfseNFS_FINALIDADE.Value:='0 - NFS-E REGULAR';
  TBNfseNFS_HRCADASTRO.Value:=ServerTime;
  TBNfseNFS_IBSCREDPRES.Value:=0;
  TBNfseNFS_IBSCREDPRESSUS.Value:=0;
  TBNfseNFS_IBSMONO.Value:=0;
  TBNfseNFS_IBSMONORETENCAO.Value:=0;
  TBNfseNFS_IBSMONORETIDO.Value:=0;
  TBNfseNFS_IBSMUNDEVOLUCAO.Value:=0;
  TBNfseNFS_IBSMUNDIFERIMENTO.Value:=0;
  TBNfseNFS_IBSMUNVALOR.Value:=0;
  TBNfseNFS_IBSUFDEVOLUCAO.Value:=0;
  TBNfseNFS_IBSUFDIFERIMENTO.Value:=0;
  TBNfseNFS_IBSUFVALOR.Value:=0;
  TBNfseNFS_IBSVALOR.Value:=0;
  TBNfseNFS_INFOADICIONAIS.Value:=TBParametrosPAR_NFSEINFOADICIONAIS.Value;
  TBNfseNFS_RETENCAO.Value:=TBParametrosPAR_NFSERETENCAO.Value;
  TBNfseNFS_RETENCAORESP.Value:=TBParametrosPAR_NFSERETENCAORESP.Value;
  TBNfseNFS_MOVIMENTAFINANCEIRO.Value:='S';
  TBNfseNFS_SERIE.Value:=TBParametrosPAR_NFSESERIE.Value;
  if TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  TBNfseNFS_SIMPLESNACIONAL.Value:='S' else
  TBNfseNFS_SIMPLESNACIONAL.Value:='N';
  TBNfseNFS_STATUS.Value:='A';
  TBNfseNFS_TOTALDEDUCOES.Value:=0;
  TBNfseNFS_TOTALDESCCOND.Value:=0;
  TBNfseNFS_TOTALDESCINCOND.Value:=0;
  TBNfseNFS_TOTALIS.Value:=0;
  TBNfseNFS_TOTALISS.Value:=0;
  TBNfseNFS_TOTALSERVICOS.Value:=0;
  TBNfseNFS_VALORCOFINS.Value:=0;
  TBNfseNFS_VALORCSLL.Value:=0;
  TBNfseNFS_VALORINSS.Value:=0;
  TBNfseNFS_VALORIR.Value:=0;
  TBNfseNFS_VALORISSRETIDO.Value:=0;
  TBNfseNFS_VALORLIQUIDO.Value:=0;
  TBNfseNFS_VALOROUTRASRET.Value:=0;
  TBNfseNFS_VALORPIS.Value:=0;
  TBNfseNFS_VALORTOTALRTC.Value:=0;
  TBNfseNFS_VENDEDOR.Value:=UsuarioVendedor;
end;

procedure TDM.TBNfseBeforeEdit(DataSet: TDataSet);
begin
  if FormNfse<>nil then
  FormMain.SetFields(FormNfse,True);
end;

procedure TDM.TBNfseBeforeInsert(DataSet: TDataSet);
begin
  if FormNfse<>nil then
  begin
    FormMain.SetFields(FormNfse,True);
    FormNfse.PageControl1.ActivePageIndex:=0;
    FormNfse.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBNfseBeforePost(DataSet: TDataSet);
begin
  //cria um novo lote e associa o valor somente quando é inserido um registro na tabela nfse.
  if TBNfse.State in [dsInsert] then
  begin
    TBNfseCodigo.Edit;
    TBNfseCodigoNFS_CODIGO.Value:=TBNfseCodigoNFS_CODIGO.Value+1;
    TBNfseCodigo.Post;
    TBNfseNFS_LOTE.Value:=TBNfseCodigoNFS_CODIGO.Value;
  end;
  //...

  CodigoMark:=TBNfseNFS_CODIGO.Value;
  TBNfseNFS_DTATUALIZACAO.Value:=ServerDate;
  TBNfseNFS_HRATUALIZACAO.Value:=ServerTime;
  TBNfseNFS_USUARIO.Value:=UsuarioLogin;

  TBNfseNFS_IDDPS.Value:=CriarChaveDPS(TBEmpresaEMP_CIDADECODIGO.Value.ToString,TBEmpresaEMP_CNPJ.Value,TBNfseNFS_SERIE.Value,TBNfseNFS_LOTE.Value.ToString);

  CalcularTotaisNFSe(False); //dentro da rotina atualiza o memo.
end;

procedure TDM.DSNfseStateChange(Sender: TObject);
begin
  if TBNfse.State in [dsInsert, dsEdit] then
  begin
    if FormNfse<>nil then
    begin
      FormNfse.AlterarCampoMovimentacaoFinanceiro1.Enabled:=False;
      FormNfse.ArquivosXMLdaNFSe1.Enabled:=False;
      FormNfse.ArquivosXMLdaNFSe1Button.Enabled:=False;
      FormNfse.AssociarArquivoXMLBaixado1.Enabled:=False;
      FormNfse.AtribuirNovoLote1.Enabled:=False;
      FormNfse.BuscarNFSe1.Enabled:=False;
      FormNfse.BuscarNFSe1Button.Enabled:=False;
      FormNfse.CancelarNota1.Enabled:=False;
      FormNfse.CancelarNota1Button.Enabled:=False;
      FormNfse.DANFSE1.Enabled:=False;
      FormNfse.DANFSE1Button.Enabled:=False;
      FormNfse.DuplicarNota1.Enabled:=False;
      FormNfse.DuplicarNota1Button.Enabled:=False;
      FormNfse.EnviarNFSe1.Enabled:=False;
      FormNfse.EnviarNFSe1Button.Enabled:=False;
      FormNfse.EnviarNFSePorEmail1.Enabled:=False;
      FormNfse.EnviarNFSePorEmail1Button.Enabled:=False;
      FormNfse.EnviarNFSePorEmailAutomatico1.Enabled:=False;
      FormNfse.FinalizarNota1.Enabled:=False;
      FormNfse.FinalizarNota1Button.Enabled:=False;
      FormNfse.GerarBoletos1.Enabled:=False;
      FormNfse.GerarBoletos1Button.Enabled:=False;
      FormNfse.GerarLote1.Enabled:=False;
      FormNfse.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=False;
      FormNfse.InutilizarNota1.Enabled:=False;
      FormNfse.InutilizarNota1Button.Enabled:=False;
      FormNfse.Localizar1.Enabled:=False;
      FormNfse.Localizar1Button.Enabled:=False;
      FormNfse.LocalizarNotaNoContasAReceber1.Enabled:=False;
      FormNfse.LocalizarNotaNoContasAReceber1Button.Enabled:=False;
      FormNfse.NotasFiscaisNoPeriodo1.Enabled:=False;
      FormNfse.Relatorios2.Enabled:=False;
      FormNfse.Relatorios2Button.Enabled:=False;
      FormNfse.SalvarPDFDANFSEComo1.Enabled:=False;
      FormNfse.SalvarZIPXMLsComo1.Enabled:=False;
      FormNfse.ZiparArquivosXML1.Enabled:=False;
    end;
  end else
  begin
    if FormNfse<>nil then
    begin
      FormNfse.AlterarCampoMovimentacaoFinanceiro1.Enabled:=True;
      FormNfse.ArquivosXMLdaNFSe1.Enabled:=True;
      FormNfse.ArquivosXMLdaNFSe1Button.Enabled:=True;
      FormNfse.AssociarArquivoXMLBaixado1.Enabled:=True;
      FormNfse.AtribuirNovoLote1.Enabled:=True;
      FormNfse.BuscarNFSe1.Enabled:=True;
      FormNfse.BuscarNFSe1Button.Enabled:=True;
      FormNfse.CancelarNota1.Enabled:=True;
      FormNfse.CancelarNota1Button.Enabled:=True;
      FormNfse.DANFSE1.Enabled:=True;
      FormNfse.DANFSE1Button.Enabled:=True;
      FormNfse.DuplicarNota1.Enabled:=True;
      FormNfse.DuplicarNota1Button.Enabled:=True;
      FormNfse.EnviarNFSe1.Enabled:=True;
      FormNfse.EnviarNFSe1Button.Enabled:=True;
      FormNfse.EnviarNFSePorEmail1.Enabled:=True;
      FormNfse.EnviarNFSePorEmail1Button.Enabled:=True;
      FormNfse.EnviarNFSePorEmailAutomatico1.Enabled:=True;
      FormNfse.FinalizarNota1.Enabled:=True;
      FormNfse.FinalizarNota1Button.Enabled:=True;
      FormNfse.GerarBoletos1.Enabled:=True;
      FormNfse.GerarBoletos1Button.Enabled:=True;
      FormNfse.GerarLote1.Enabled:=True;
      FormNfse.InformarProtocoloDataEHoraDeAutorizacao1.Enabled:=True;
      FormNfse.InutilizarNota1.Enabled:=True;
      FormNfse.InutilizarNota1Button.Enabled:=True;
      FormNfse.Localizar1.Enabled:=True;
      FormNfse.Localizar1Button.Enabled:=True;
      FormNfse.LocalizarNotaNoContasAReceber1.Enabled:=True;
      FormNfse.LocalizarNotaNoContasAReceber1Button.Enabled:=True;
      FormNfse.NotasFiscaisNoPeriodo1.Enabled:=True;
      FormNfse.Relatorios2.Enabled:=True;
      FormNfse.Relatorios2Button.Enabled:=True;
      FormNfse.SalvarPDFDANFSEComo1.Enabled:=True;
      FormNfse.SalvarZIPXMLsComo1.Enabled:=True;
      FormNfse.ZiparArquivosXML1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNfse);
      FormMain.SetFields(FormNfse,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ITENS DA NFSE                                                              //
//##############################################################################
{$REGION 'TABELA NFSEITENS'}
procedure TDM.CalcularTotaisNFSeItens(DarPost: Boolean);
begin
  //calcula o valor bruto.
  TBNfseItensNSI_VALORTOTAL.Value:=Decimais((TBNfseItensNSI_QUANTIDADE.AsExtended*TBNfseItensNSI_VALORUNIT.AsExtended),2);

  {$REGION 'Calcula valor do ISS'}
  if TBNfseItensNSI_ALIQUOTA.Value>0 then
  begin
    TBNfseItensNSI_BASEISS.Value:=TBNfseItensNSI_VALORTOTAL.Value - TBNfseItensNSI_VALORDEDUCOES.Value - TBNfseItensNSI_VALORDESCINCOND.Value;
    TBNfseItensNSI_VALORISS.Value:=Decimais((TBNfseItensNSI_BASEISS.AsExtended/100)*TBNfseItensNSI_ALIQUOTA.AsExtended,2);
  end else
  begin
    TBNfseItensNSI_BASEISS.Value:=0;
    TBNfseItensNSI_VALORISS.Value:=0;
  end;
  {$ENDREGION}

  {$REGION 'Calcula o total aproximado dos tributos'}
  TBIss.Close;
  TBIss.ParamByName('codigo').AsString:=TBNfseItensNSI_SERVICO.Value;
  TBIss.Open;
  TBNfseItensNSI_VALORTRIBUTOSEST.Value:=Decimais((TBNfseItensNSI_VALORTOTAL.AsExtended/100)*TBIssISS_ALIQUOTAESTADUAL.AsExtended,2);
  TBNfseItensNSI_VALORTRIBUTOSFED.Value:=Decimais((TBNfseItensNSI_VALORTOTAL.AsExtended/100)*TBIssISS_ALIQUOTANACIONAL.AsExtended,2);
  TBNfseItensNSI_VALORTRIBUTOSMUN.Value:=Decimais((TBNfseItensNSI_VALORTOTAL.AsExtended/100)*TBIssISS_ALIQUOTAMUNICIPAL.AsExtended,2);
  TBNfseItensNSI_VALORTRIBUTOSIMP.Value:=Decimais((TBNfseItensNSI_VALORTOTAL.AsExtended/100)*TBIssISS_ALIQUOTAIMPORTACAO.AsExtended,2);
  TBNfseItensNSI_VALORTRIBUTOS.Value:=TBNfseItensNSI_VALORTRIBUTOSEST.Value+TBNfseItensNSI_VALORTRIBUTOSFED.Value+TBNfseItensNSI_VALORTRIBUTOSMUN.Value+TBNfseItensNSI_VALORTRIBUTOSIMP.Value;
  {$ENDREGION}

  //calculos da reforma tributária.
  {$REGION 'calcula valor do IS.'}
  TBNfseItensNSI_BASEIS.Value:=0;
  TBNfseItensNSI_VALORIS.Value:=0;
  if TBNfseItensNSI_ALIQIS.Value>0 then
  begin
    //base de calculo do IS
    //      (+) vProd
    //      (+) vServ
    //      (+) vFrete
    //      (+) vSeg
    //      (+) vOutro
    //      (+) vII
    //      (-) vDesc
    //      (-) vPIS
    //      (-) vCOFINS
    //      (-) vICMS
    //      (-) vICMSUFDest
    //      (-) vFCP
    //      (-) vFCPUFDest
    //      (-) vICMSMono
    TBNfseItensNSI_BASEIS.Value:=Decimais(
      //  TBNfseItensNSI_VALORTOTALBRUTO.AsExtended
        TBNfseItensNSI_VALORTOTAL.AsExtended
      //+ TBNfseItensNSI_VALORFRETE.AsExtended
      //+ TBNfseItensNSI_VALORSEGURO.AsExtended
      //+ TBNfseItensNSI_VALORACESSORIAS.AsExtended
      //+ TBNfseItensNSI_VALORII.AsExtended
      //- TBNfseItensNSI_DESCVALOR.AsExtended
      //- TBNfseItensNSI_VALORPIS.AsExtended
      //- TBNfseItensNSI_VALORCOFINS.AsExtended
      //- TBNfseItensNSI_VALORICMS.AsExtended
      //- TBNfseItensNSI_VALORICMSUFDEST.AsExtended
      //- TBNfseItensNSI_VALORFCP.AsExtended
      - TBNfseItensNSI_VALORISS.AsExtended, 2
    );
    TBNfseItensNSI_VALORIS.Value:=Decimais((TBNfseItensNSI_BASEIS.AsExtended/100)*TBNfseItensNSI_ALIQIS.AsExtended,2);
  end;
  if TBNfseItensNSI_ALIQISESP.Value>0 then
  TBNfseItensNSI_VALORIS.Value:=TBNfseItensNSI_VALORIS.Value + Decimais((TBNfseItensNSI_QUANTIDADE.AsExtended/100)*TBNfseItensNSI_ALIQISESP.AsExtended,2);
  {$ENDREGION}

  {$REGION 'composicao da base de calculo IBSCBS'}
  //composicao da base
  //    (+) vProd
  //    (+) vServ
  //    (+) vFrete
  //    (+) vSeg
  //    (+) vOutro
  //    (+) vII
  //    (-) vDesc
  //    (-) vPIS
  //    (-) vCOFINS
  //    (-) vICMS
  //    (-) vICMSUFDest
  //    (-) vFCP
  //    (-) vFCPUFDest
  //    (-) vICMSMono
  //    (-) vISSQN
  //    (+) vIS
  TBNfseItensNSI_BASEIBSCBS.Value:=Decimais(
    //  TBNfseItensNSI_VALORTOTALBRUTO.AsExtended //qtde * valorunit
      TBNfseItensNSI_VALORTOTAL.AsExtended
    //+ TBNfseItensNSI_VALORFRETE.AsExtended
    //+ TBNfseItensNSI_VALORSEGURO.AsExtended
    //+ TBNFseItensNSI_VALORACESSORIAS.AsExtended
    //+ TBNfseItensNSI_VALORII.AsExtended
    //- TBNfseItensNSI_DESCVALOR.AsExtended
    //- TBNfseItensNSI_VALORPIS.AsExtended
    //- TBNfseItensNSI_VALORPISST.AsExtended
    //- TBNfseItensNSI_VALORCOFINS.AsExtended
    //- TBNfseItensNSI_VALORCOFINSST.AsExtended
    //- TBNfseItensNSI_VALORICMS.AsExtended
    //- TBNfseItensNSI_VALORICMSUFDEST.AsExtended
    //- TBNfseItensNSI_VALORFCP.AsExtended
    - TBNfseItensNSI_VALORISS.AsExtended
    + TBNfseItensNSI_VALORIS.AsExtended, 2
  );
  //if TBNfseItensNSI_SOMACOFINSST.Value='N' then TBNfseItensNSI_BASEIBSCBS.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended + TBNfseItensNSI_VALORCOFINSST.AsExtended,2);
  //if TBNfseItensNSI_SOMAPISST.Value='N' then TBNfseItensNSI_BASEIBSCBS.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended + TBNfseItensNSI_VALORPISST.AsExtended,2);
  {$ENDREGION}

  {$REGION 'calcula aliquota efetiva IBS'}
  //pAliqEfet = pIBSUF × (1 - pRedAliq / 100).
  TBNfseItensNSI_ALIQIBSMUNEFE.Value:=0;
  if TBNfseItensNSI_ALIQIBSMUNRED.Value > 0 then
  TBNfseItensNSI_ALIQIBSMUNEFE.Value:=Decimais(TBNfseItensNSI_ALIQIBSMUN.AsExtended * (1-TBNfseItensNSI_ALIQIBSMUNRED.AsExtended/100), 4);
  if TBNfseNFS_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfseItensNSI_ALIQIBSMUNEFE.Value:=Decimais(TBNfseItensNSI_ALIQIBSMUN.AsExtended * (1-TBNfseItensNSI_ALIQIBSMUNRED.AsExtended/100) * (1-TBNfseNFS_GOVERNAMENTALALIQRED.AsExtended/100), 4);

  TBNfseItensNSI_ALIQIBSUFEFE.Value:=0;
  if TBNfseItensNSI_ALIQIBSUFRED.Value > 0 then
  TBNfseItensNSI_ALIQIBSUFEFE.Value:=Decimais(TBNfseItensNSI_ALIQIBSUF.AsExtended * (1-TBNfseItensNSI_ALIQIBSUFRED.AsExtended/100), 4);
  if TBNfseNFS_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfseItensNSI_ALIQIBSUFEFE.Value:=Decimais(TBNfseItensNSI_ALIQIBSUF.AsExtended * (1-TBNfseItensNSI_ALIQIBSUFRED.AsExtended/100) * (1-TBNfseNFS_GOVERNAMENTALALIQRED.AsExtended/100), 4);
  {$ENDREGION}

  {$REGION 'calcula aliquota efetiva CBS'}
  //pAliqEfet = pCBS × (1 - pRedAliq / 100)
  //...OU...
  //pAliqEfet = pCBS × (1 - pRedAliq / 100) × (1 - gCompraGov/pRedutor / 100)
  //Alíquota efetiva, após aplicação da redução de alíquota, incluindo o gCompraGov/pRedutor, se houver.
  //    Exemplo: Redução de 40% na alíquota:
  //    Alíquota vigente (A): 10%
  //    Redução na alíquota (R): 40%
  //    Redutor de compras governamentais (RG): 5%
  //    Alíquota Efetiva (E): E = A * (1 - R)*(1- RG)
  //    E = 10 * (1 - 0,4) *(1 - 0,05) = 5,7
  //    Observação: O cálculo da pAliqEfet deve considerar 4 casas decimais com arredondamento na ultima casa decimal.
  TBNfseItensNSI_ALIQCBSEFE.Value:=0;
  if TBNfseItensNSI_ALIQCBSRED.Value > 0 then
  TBNfseItensNSI_ALIQCBSEFE.Value:=Decimais(TBNfseItensNSI_ALIQCBS.AsExtended * (1-TBNfseItensNSI_ALIQCBSRED.AsExtended/100), 4);
  if TBNfseNFS_GOVERNAMENTALALIQRED.Value > 0 then
  TBNfseItensNSI_ALIQCBSEFE.Value:=Decimais(TBNfseItensNSI_ALIQCBS.AsExtended * (1-TBNfseItensNSI_ALIQCBSRED.AsExtended/100) * (1-TBNfseNFS_GOVERNAMENTALALIQRED.AsExtended/100), 4);
  {$ENDREGION}

  {$REGION 'calcula diferimento IBSCBS'}
  //IBS mun diferimento.
  if TBNfseItensNSI_ALIQIBSMUNDIF.Value>0 then
  begin
    TBNfseItensNSI_VALORIBSMUNDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQIBSMUN.AsExtended/100) * (TBNfseItensNSI_ALIQIBSMUNDIF.AsExtended/100),2);
    if TBNfseItensNSI_ALIQIBSMUNEFE.Value>0 then
    TBNfseItensNSI_VALORIBSMUNDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQIBSMUNEFE.AsExtended/100) * (TBNfseItensNSI_ALIQIBSMUNDIF.AsExtended/100),2);
  end;

  //IBS uf diferimento.
  if TBNfseItensNSI_ALIQIBSUFDIF.Value>0 then
  begin
    TBNfseItensNSI_VALORIBSUFDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQIBSUF.AsExtended/100) * (TBNfseItensNSI_ALIQIBSUFDIF.AsExtended/100) ,2);
    if TBNfseItensNSI_ALIQIBSUFEFE.Value>0 then
    TBNfseItensNSI_VALORIBSUFDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQIBSUFEFE.AsExtended/100) * (TBNfseItensNSI_ALIQIBSUFDIF.AsExtended/100) ,2);
  end;

  //CBS diferimento
  if TBNfseItensNSI_ALIQCBSDIF.Value>0 then
  begin
    TBNfseItensNSI_VALORCBSDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQCBS.AsExtended/100) * (TBNfseItensNSI_ALIQCBSDIF.AsExtended/100), 2);
    if TBNfseItensNSI_ALIQCBSEFE.Value>0 then
    TBNfseItensNSI_VALORCBSDIF.Value:=Decimais(TBNfseItensNSI_BASEIBSCBS.AsExtended * (TBNfseItensNSI_ALIQCBSEFE.AsExtended/100) * (TBNfseItensNSI_ALIQCBSDIF.AsExtended/100), 2);
  end;
  {$ENDREGION}

  {$REGION 'calcula valor do IBSCBS'}
  //vIBSUF = (gIBSCBS/vBC x (pIBSUF / 100)) - vDif - vDevTrib
  //...OU...
  //vIBSUF = (gIBSCBS/vBC x (pAliqEfet / 100)) - vDif - vDevTrib
  if TBNfseItensNSI_ALIQIBSMUN.Value>0 then
  TBNfseItensNSI_VALORIBSMUN.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQIBSMUN.AsExtended/100)
    - TBNfseItensNSI_VALORIBSMUNDIF.AsExtended
    - TBNfseItensNSI_VALORIBSMUNDEV.AsExtended,2
  );
  if ((TBNfseItensNSI_ALIQIBSMUNEFE.Value>0) or (TBNfseItensNSI_ALIQIBSMUNRED.Value=100)) then
  TBNfseItensNSI_VALORIBSMUN.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQIBSMUNEFE.AsExtended/100)
    - TBNfseItensNSI_VALORIBSMUNDIF.AsExtended
    - TBNfseItensNSI_VALORIBSMUNDEV.AsExtended,2
  );

  if TBNfseItensNSI_ALIQIBSUF.Value>0 then
  TBNfseItensNSI_VALORIBSUF.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQIBSUF.AsExtended/100)
    - TBNfseItensNSI_VALORIBSUFDIF.AsExtended
    - TBNfseItensNSI_VALORIBSUFDEV.AsExtended, 2
  );
  if ((TBNfseItensNSI_ALIQIBSUFEFE.Value>0) or (TBNfseItensNSI_ALIQIBSUFRED.Value=100)) then
  TBNfseItensNSI_VALORIBSUF.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQIBSUFEFE.AsExtended/100)
    - TBNfseItensNSI_VALORIBSUFDIF.AsExtended
    - TBNfseItensNSI_VALORIBSUFDEV.AsExtended ,2
  );
  TBNfseItensNSI_VALORIBS.Value:=Decimais(TBNfseItensNSI_VALORIBSMUN.AsExtended + TBNfseItensNSI_VALORIBSUF.AsExtended,2);

  //vCBS = (gIBSCBS/vBC x (pCBS / 100)) - vDif – vDevTrib
  TBNfseItensNSI_VALORCBS.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQCBS.AsExtended/100)
    - TBNfseItensNSI_VALORCBSDIF.AsExtended
    - TBNfseItensNSI_VALORCBSDEV.AsExtended, 2
  );
  if ((TBNfseItensNSI_ALIQCBSEFE.Value>0) or (TBNfseItensNSI_ALIQCBSRED.Value=100)) then
  TBNfseItensNSI_VALORCBS.Value:=Decimais(
      TBNfseItensNSI_BASEIBSCBS.AsExtended
    * (TBNfseItensNSI_ALIQCBSEFE.AsExtended/100)
    - TBNfseItensNSI_VALORCBSDIF.AsExtended
    - TBNfseItensNSI_VALORCBSDEV.AsExtended, 2
  );
  {$ENDREGION}

end;

procedure TDM.TBNfseItensAfterInsert(DataSet: TDataSet);
begin
  TBIss.Close;
  TBIss.ParamByName('codigo').AsString:=TBParametrosPAR_NFSESERVICO.Value;
  TBIss.Open;
  TBNfseItensNSI_NFSE.Value:=TBNfseNFS_CODIGO.Value;
  TBNfseItensNSI_ALIQCBS.Value:=0;
  TBNfseItensNSI_ALIQCBSCREDPRES.Value:=0;
  TBNfseItensNSI_ALIQCBSDIF.Value:=0;
  TBNfseItensNSI_ALIQCBSEFE.Value:=0;
  TBNfseItensNSI_ALIQCBSRED.Value:=0;
  TBNfseItensNSI_ALIQIBSCREDPRES.Value:=0;
  TBNfseItensNSI_ALIQIBSMUN.Value:=0;
  TBNfseItensNSI_ALIQIBSMUNDIF.Value:=0;
  TBNfseItensNSI_ALIQIBSMUNEFE.Value:=0;
  TBNfseItensNSI_ALIQIBSMUNRED.Value:=0;
  TBNfseItensNSI_ALIQIBSUF.Value:=0;
  TBNfseItensNSI_ALIQIBSUFDIF.Value:=0;
  TBNfseItensNSI_ALIQIBSUFEFE.Value:=0;
  TBNfseItensNSI_ALIQIBSUFRED.Value:=0;
  TBNfseItensNSI_ALIQIS.Value:=0;
  TBNfseItensNSI_ALIQUOTA.Value:=TBIssISS_ALIQUOTAMUNICIPAL.Value;
  TBNfseItensNSI_BASEIBSCBS.Value:=0;
  TBNfseItensNSI_BASEIS.Value:=0;
  TBNfseItensNSI_BASEISS.Value:=0;
  TBNfseItensNSI_CBSCREDITOPRES.Value:=0;
  TBNfseItensNSI_CIDADE.Value:=TBEmpresaEMP_CIDADE.Value;
  TBNfseItensNSI_CIDADECODIGO.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBNfseItensNSI_IBSCREDITOPRES.Value:=0;
  TBNfseItensNSI_PAIS.Value:=1058; //Brasil.
  TBNfseItensNSI_PRESTADONOPAIS.Value:='S';
  TBNfseItensNSI_QUANTIDADE.Value:=1;
  TBNfseItensNSI_SERVICO.Value:=TBIssISS_CODIGO.Value;
  TBNfseItensNSI_VALORCBS.Value:=0;
  TBNfseItensNSI_VALORCBSCREDPRES.Value:=0;
  TBNfseItensNSI_VALORCBSCREDPRESSUS.Value:=0;
  TBNfseItensNSI_VALORCBSDEV.Value:=0;
  TBNfseItensNSI_VALORCBSDIF.Value:=0;
  TBNfseItensNSI_VALORDEDUCOES.Value:=0;
  TBNfseItensNSI_VALORDESCCOND.Value:=0;
  TBNfseItensNSI_VALORDESCINCOND.Value:=0;
  TBNfseItensNSI_VALORIBS.Value:=0;
  TBNfseItensNSI_VALORIBSCREDPRES.Value:=0;
  TBNfseItensNSI_VALORIBSCREDPRESSUS.Value:=0;
  TBNfseItensNSI_VALORIBSMUN.Value:=0;
  TBNfseItensNSI_VALORIBSMUNDEV.Value:=0;
  TBNfseItensNSI_VALORIBSMUNDIF.Value:=0;
  TBNfseItensNSI_VALORIBSUF.Value:=0;
  TBNfseItensNSI_VALORIBSUFDEV.Value:=0;
  TBNfseItensNSI_VALORIBSUFDIF.Value:=0;
  TBNfseItensNSI_VALORIS.Value:=0;
  TBNfseItensNSI_VALORUNIT.Value:=0;
  TBNfseItensNSI_VALORTOTAL.Value:=0;
  TBNfseItensISS_DESCRICAO.Value:=TBIssISS_DESCRICAO.Value;
end;

procedure TDM.TBNfseItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisNFSe(True);
end;

procedure TDM.TBNfseItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisNFSeItens(False); //o parametro nao está sendo utilizado.
end;
{$ENDREGION}

//##############################################################################
// NOTAS - MODELO ANTIGO                                                      //
//##############################################################################
{$REGION 'TABELA NOTAS'}
procedure TDM.CalcularTotaisNota(DarPost: Boolean);
begin
  TBNotas.Edit;
  //atualiza o total dos PRODUTOS na tabela Notas.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(NOI_VALORTOTAL) as TOTALPRODUTOS from NOTASITENS where NOI_TIPO=''P'' and NOI_NOTA=:nota');
  QYAux.ParamByName('nota').AsInteger:=TBNotasNOT_CODIGO.Value;
  QYAux.Open;
  TBNotasNOT_TOTALPRODUTOS.Value:=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;

  //atualiza o total dos SERVICOS na tabela Notas.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(NOI_VALORTOTAL) as TOTALSERVICOS from NOTASITENS where NOI_TIPO=''S'' and NOI_NOTA=:nota');
  QYAux.ParamByName('nota').AsInteger:=TBNotasNOT_CODIGO.Value;
  QYAux.Open;
  TBNotasNOT_TOTALSERVICOS.Value:=QYAux.FieldByName('TOTALSERVICOS').AsExtended;

  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select '+
                'sum(NOI_BASEICMS) as BASEICMS, '+
                'sum(NOI_BASEICMSST) as BASEICMSST, '+
                'sum(NOI_BASEII) as BASEII, '+
                'sum(NOI_BASEISS) as BASEISS, '+
                'sum(NOI_BASEIPI) as BASEIPI, '+
                'sum(NOI_BASEPIS) as BASEPIS, '+
                'sum(NOI_BASEPISST) as BASEPISST, '+
                'sum(NOI_BASECOFINS) as BASECOFINS, '+
                'sum(NOI_BASECOFINSST) as BASECOFINSST, '+
                'sum(NOI_DESCVALOR) as VALORDESCONTO, '+
                'sum(NOI_PESOTOTAL) as PESOTOTAL, '+
                'sum(NOI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
                'max(NOI_SEQUENCIA) as SEQUENCIA, '+
                'sum(NOI_VALORACESSORIAS) as VALORACESSORIAS, '+
                'sum(NOI_VALORADUANA) as VALORADUANA, '+
                'sum(NOI_VALORCOFINS) as VALORCOFINS, '+
                'sum(NOI_VALORCOFINSST) as VALORCOFINSST, '+
                'sum(NOI_VALORCOMISSAO) as VALORCOMISSAO, '+
                'sum(NOI_VALORFCP) as VALORFCP, '+
                'sum(NOI_VALORFCPST) as VALORFCPST, '+
                'sum(NOI_VALORFRETE) as VALORFRETE, '+
                'sum(NOI_VALORICMS) as VALORICMS, '+
                'sum(NOI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
                'sum(NOI_VALORICMSDESONERADO) as VALORICMSDESONERADO, '+
                'sum(NOI_VALORICMSST) as VALORICMSST, '+
                'sum(NOI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
                'sum(NOI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
                'sum(NOI_VALORII) as VALORII, '+
                'sum(NOI_VALORIOF) as VALORIOF, '+
                'sum(NOI_VALORIPI) as VALORIPI, '+
                'sum(NOI_VALORISS) as VALORISS, '+
                'sum(NOI_VALORISSDEDUCAO) as VALORISSDEDUCAO, '+
                'sum(NOI_VALORISSDESCCOND) as VALORISSDESCCOND, '+
                'sum(NOI_VALORISSDESCINCOND) as VALORISSDESCINCOND, '+
                'sum(NOI_VALORISSOUTROS) as VALORISSOUTROS, '+
                'sum(NOI_VALORISSRETENCAO) as VALORISSRETENCAO, '+
                'sum(NOI_VALORPIS) as VALORPIS, '+
                'sum(NOI_VALORPISST) as VALORPISST, '+
                'sum(NOI_VALORSEGURO) as VALORSEGURO, '+
                'sum(NOI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
                'sum(NOI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
                'sum(NOI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
                'sum(NOI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
                'sum(NOI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
                'sum(NOI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN, '+
                'sum(iif(NOI_SOMACOFINSST=''S'',NOI_VALORCOFINSST,0)) as SOMACOFINSST, '+
                'sum(iif(NOI_SOMAPISST=''S'',NOI_VALORPISST,0)) as SOMAPISST '+
                'from NOTASITENS where NOI_NOTA=:nota'); // and NOI_COMPOETOTAL=''S''
  QYAux.ParamByName('nota').AsInteger:=TBNotasNOT_CODIGO.Value;
  QYAux.Open;

  //atualiza totais na tabela Notas.
  TBNotasNOT_BASECOFINS.Value        :=QYAux.FieldByName('BASECOFINS').AsExtended;
  TBNotasNOT_BASECOFINSST.Value      :=QYAux.FieldByName('BASECOFINSST').AsExtended;
  TBNotasNOT_BASEICMS.Value          :=QYAux.FieldByName('BASEICMS').AsExtended;
  TBNotasNOT_BASEICMSST.Value        :=QYAux.FieldByName('BASEICMSST').AsExtended;
  TBNotasNOT_BASEII.Value            :=QYAux.FieldByName('BASEII').AsExtended;
  TBNotasNOT_BASEIPI.Value           :=QYAux.FieldByName('BASEIPI').AsExtended;
  TBNotasNOT_BASEISS.Value           :=QYAux.FieldByName('BASEISS').AsExtended;
  TBNotasNOT_BASEPIS.Value           :=QYAux.FieldByName('BASEPIS').AsExtended;
  TBNotasNOT_BASEPISST.Value         :=QYAux.FieldByName('BASEPISST').AsExtended;
  TBNotasNOT_CUSTOTOTAL.Value        :=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
  TBNotasNOT_DESCVALOR.Value         :=QYAux.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBNotasNOT_PESOLIQ.Value           :=QYAux.FieldByName('PESOTOTAL').AsFloat;
  TBNotasNOT_SEQUENCIAITEM.Value     :=QYAux.FieldByName('SEQUENCIA').AsInteger;
  TBNotasNOT_TOTALADUANA.Value       :=QYAux.FieldByName('VALORADUANA').AsExtended;
  TBNotasNOT_TOTALBRUTO.Value        :=QYAux.FieldByName('VALORTOTALBRUTO').AsExtended;
  TBNotasNOT_TOTALCOFINS.Value       :=QYAux.FieldByName('VALORCOFINS').AsExtended;
  TBNotasNOT_TOTALCOFINSST.Value     :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
  TBNotasNOT_TOTALCOMISSAO.Value     :=QYAux.FieldByName('VALORCOMISSAO').AsExtended;
  TBNotasNOT_TOTALFCP.Value          :=QYAux.FieldByName('VALORFCP').AsExtended;
  TBNotasNOT_TOTALFCPST.Value        :=QYAux.FieldByName('VALORFCPST').AsExtended;
  TBNotasNOT_TOTALICMS.Value         :=QYAux.FieldByName('VALORICMS').AsExtended;
  TBNotasNOT_TOTALICMSCREDSN.Value   :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
  TBNotasNOT_TOTALICMSST.Value       :=QYAux.FieldByName('VALORICMSST').AsExtended;
  TBNotasNOT_TOTALICMSUFDEST.Value   :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
  TBNotasNOT_TOTALICMSUFREMET.Value  :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
  TBNotasNOT_TOTALII.Value           :=QYAux.FieldByName('VALORII').AsExtended;
  TBNotasNOT_TOTALIOF.Value          :=QYAux.FieldByName('VALORIOF').AsExtended;
  TBNotasNOT_TOTALIPI.Value          :=QYAux.FieldByName('VALORIPI').AsExtended;
  TBNotasNOT_TOTALISS.Value          :=QYAux.FieldByName('VALORISS').AsExtended;
  TBNotasNOT_TOTALISSDEDUCAO.Value   :=QYAux.FieldByName('VALORISSDEDUCAO').AsExtended;
  TBNotasNOT_TOTALISSDESCCOND.Value  :=QYAux.FieldByName('VALORISSDESCCOND').AsExtended;
  TBNotasNOT_TOTALISSDESCINCOND.Value:=QYAux.FieldByName('VALORISSDESCINCOND').AsExtended;
  TBNotasNOT_TOTALISSOUTROS.Value    :=QYAux.FieldByName('VALORISSOUTROS').AsExtended;
  TBNotasNOT_TOTALISSRETENCAO.Value  :=QYAux.FieldByName('VALORISSRETENCAO').AsExtended;
  TBNotasNOT_TOTALITENS.Value        :=TBNotasNOT_TOTALPRODUTOS.Value+TBNotasNOT_TOTALSERVICOS.Value; //total produtos e total serviços é calculado quando se insere um item.
  TBNotasNOT_TOTALPIS.Value          :=QYAux.FieldByName('VALORPIS').AsExtended;
  TBNotasNOT_TOTALPISST.Value        :=QYAux.FieldByName('VALORPISST').AsExtended;
  TBNotasNOT_TOTALTRIBUTOS.Value     :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
  TBNotasNOT_TOTALTRIBUTOSEST.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
  TBNotasNOT_TOTALTRIBUTOSFED.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
  TBNotasNOT_TOTALTRIBUTOSIMP.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
  TBNotasNOT_TOTALTRIBUTOSMUN.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
  TBNotasNOT_VALORDESPACES.Value     :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;
  TBNotasNOT_VALORFRETE.Value        :=QYAux.FieldByName('VALORFRETE').AsExtended;
  TBNotasNOT_VALORSEGURO.Value       :=QYAux.FieldByName('VALORSEGURO').AsExtended;

  //calcula o valor total da venda.
  //(+) vProd                    //
  //(-) vDesc                    //
  //(-) vICMSDeson               //
  //(+) vST                      //
  //(+) vFCPST                   //
  //(+) vFrete                   //
  //(+) vSeg                     //
  //(+) vOutro                   //
  //(+) vII                      //
  //(+) vIPI                     //
  //(+) vIPIDevol                //
  //(+) vServ                    //
  //(+) vPISST                   //
  //(+) vCofinsST                //
  TBNotasNOT_VALORTOTAL.Value:=TBNotasNOT_TOTALBRUTO.Value- //totalitens já contem produtos e serviços.
                               TBNotasNOT_DESCVALOR.Value-
                               QYAux.FieldByName('VALORICMSDESONERADO').AsExtended+
                               TBNotasNOT_TOTALICMSST.Value+
                               TBNotasNOT_TOTALFCPST.Value+
                               TBNotasNOT_VALORFRETE.Value+
                               TBNotasNOT_VALORSEGURO.Value+
                               TBNotasNOT_VALORDESPACES.Value+
                               TBNotasNOT_TOTALII.Value+
                               TBNotasNOT_TOTALIPI.Value+
                               //nao tenho esse campo. TBNfeNFE_TOTALIPIDEV.Value+
                               QYAux.FieldByName('SOMAPISST').AsExtended+
                               QYAux.FieldByName('SOMACOFINSST').AsExtended;

  //calcula nova porcentagem de desconto.
  if TBNotasNOT_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
  TBNotasNOT_DESCPORC.Value:=Decimais((100.0/(QYAux.FieldByName('VALORTOTALBRUTO').AsExtended+
                                              QYAux.FieldByName('VALORFRETE').AsExtended+
                                              QYAux.FieldByName('VALORSEGURO').AsExtended+
                                              QYAux.FieldByName('VALORACESSORIAS').AsExtended))*TBNotasNOT_DESCVALOR.AsExtended,8) else
  TBNotasNOT_DESCPORC.Value:=0;

  //calcula o lucro da venda.
  TBNotasNOT_LUCROVALOR.Value:=TBNotasNOT_VALORTOTAL.Value-TBNotasNOT_CUSTOTOTAL.Value;
  if TBNotasNOT_LUCROVALOR.Value<>0 then
  begin
    if TBNotasNOT_VALORTOTAL.Value=0 then
    TBNotasNOT_LUCROPORC.Value:=(-100.0) else
    TBNotasNOT_LUCROPORC.Value:=(TBNotasNOT_LUCROVALOR.Value/TBNotasNOT_VALORTOTAL.Value)*100.0;
  end;

  //if (FormNotas<>nil) and (TBNotasNOT_STATUS.Value='A') then
  //begin
  //  FormNotas.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  //end;

  //o abaixo substitui o comentado acima.
  if TBNotasNOT_STATUS.Value='A' then
  SimularCondicaoNota;

  QYAux.Close;
  if DarPost then TBNotas.Post;
end;

procedure TDM.TBNotasAfterEdit(DataSet: TDataSet);
begin
  if TBNotasNOT_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma nota já finalizada.',mtWarning,[mbOk],0);
    TBNotas.Cancel;
  end;
  if TBNotasNOT_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar uma nota cancelada.',mtWarning,[mbOk],0);
    TBNotas.Cancel;
  end;
end;

procedure TDM.TBNotasAfterInsert(DataSet: TDataSet);
begin
  //localiza a condicao de pagamento para pegar a porcentagem de desconto.
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCondicoes.Open;
  //localiza a CFOP padrao.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  TBNotasNOT_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBNotasNOT_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNotasNOT_CFOPDESC.Value:=TBNaturezasNAT_DESCRICAO.Value;
  TBNotasNOT_COMISSAOPOR.Value:=TBParametrosPAR_COMISSAOPOR.Value;
  TBNotasNOT_CUSTOTOTAL.Value:=0;
  TBNotasNOT_DESCPORCCLIENTE.Value:=0;
  TBNotasNOT_DESCPORCCONDICAO.Value:=TBCondicoesCPG_DESCPORC.Value;
  TBNotasNOT_DESTACARIMPOSTOS.Value:=TBNaturezasNAT_DESTACARIMPOSTOS.Value;
  TBNotasNOT_DIAPREFERENCIAL.Value:=0;
  TBNotasNOT_DTCADASTRO.Value:=ServerDate;
  TBNotasNOT_DTEMISSAO.Value:=TBNotasNOT_DTCADASTRO.Value;
  TBNotasNOT_DTPRESTSERVICO.Value:=TBNotasNOT_DTCADASTRO.Value;
//  TBNotasNOT_entregue//nao tem
  TBNotasNOT_ENTRADASAIDA.Value:=TBNaturezasNAT_ENTRADASAIDA.Value;
  TBNotasNOT_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value;
  TBNotasNOT_HRCADASTRO.Value:=ServerTime;
  TBNotasNOT_INFOADICFISCO.Value:=TBNaturezasNAT_OBSERVACOES.Value;
  TBNotasNOT_LUCROPORC.Value:=0;
  TBNotasNOT_LUCROVALOR.Value:=0;
  TBNotasNOT_MOVIMENTAESTOQUE.Value:=TBNaturezasNAT_MOVIMENTAESTOQUE.Value;
  TBNotasNOT_MOVIMENTAFINANCEIRO.Value:=TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  TBNotasNOT_SEQUENCIAITEM.Value:=0;
  TBNotasNOT_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada.
  TBNotasNOT_TABELAPRECO.Value:=TBParametrosPAR_TABELAPRECO.Value;
  TBNotasNOT_TIPOATENDIMENTO.Value:=TBParametrosPAR_NFETIPOATENDIMENTO.Value; //mesmo da NFE.
  TBNotasNOT_TIPOCONSUMIDOR.Value:=TBParametrosPAR_NFETIPOCONSUMIDOR.Value;
  TBNotasNOT_TIPOOPERACAO.Value:='1 - OPERACAO INTERNA';
  TBNotasNOT_VALORFRETE.Value:=0;
  TBNotasNOT_VALORSEGURO.Value:=0;
  TBNotasNOT_VALORDESPACES.Value:=0;
  TBNotasNOT_VOLUMES.Value:=1;

  //if (FormNotas<>nil) and (TBNotasNOT_STATUS.Value='A') then
  //FormNotas.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  if TBNotasNOT_STATUS.Value='A' then
  SimularCondicaoNota;
end;

procedure TDM.TBNotasAfterPost(DataSet: TDataSet);
begin
  //se salvou uma nota nova, entao gera o novo NSU.
  if InserindoNovoRegistroNF then
  begin
    InserindoNovoRegistroNF:=False;
    //incrementa NSU;
    TBNotasCodigo.Close; //dá um close e open novamente pra assegurar um codigo atualizado e único.
    TBNotasCodigo.Open;
    TBNotasCodigo.Edit;
    TBNotasCodigoNOT_CODIGO.Value:=TBNotasCodigoNOT_CODIGO.Value+1;
    TBNotasCodigo.Post;
    //associa novo CODIGO a nota atual.
    TBNotas.Edit;
    TBNotasNOT_CODIGO.Value:=TBNotasCodigoNOT_CODIGO.Value;
    TBNotas.Post;
    //...
  end;
end;

procedure TDM.TBNotasBeforeEdit(DataSet: TDataSet);
begin
  if FormNotas<>nil then
  FormMain.SetFields(FormNotas,True);
end;

procedure TDM.TBNotasBeforeInsert(DataSet: TDataSet);
begin
  if FormNotas<>nil then
  begin
    FormMain.SetFields(FormNotas,True);
    FormNotas.PageControl1.ActivePageIndex:=0;
    FormNotas.DBEdit4.SetFocus;
  end;
end;

procedure TDM.TBNotasBeforePost(DataSet: TDataSet);
begin
  TBNotasNOT_DTATUALIZACAO.Value:=ServerDate;
  TBNotasNOT_HRATUALIZACAO.Value:=ServerTime;
  TBNotasNOT_USUARIO.Value:=UsuarioLogin;

  if (TBNotasNOT_ESTADO.Value='') then
   MessageDlg('O cliente selecionado não possui estado cadastrado no seu endereço.'+#13#10+'O cálculo do ICMS pode ficar incorreto.',mtWarning,[mbOk],0);

  //seta variavel pra gerar o NSU só quando é uma nota nova.
  if TBNotas.State in [dsInsert] then
  begin
    InserindoNovoRegistroNF:=True;
  end;
  CalcularTotaisNota(False);  //dentro da rotina atualiza o memo.
end;

procedure TDM.DSNotasStateChange(Sender: TObject);
begin
  if TBNotas.State in [dsInsert, dsEdit] then
  begin
    if FormNotas<>nil then
    begin
      FormNotas.CancelarNota1.Enabled:=False;
      FormNotas.CancelarNota1Button.Enabled:=False;
      FormNotas.FinalizarNota1.Enabled:=False;
      FormNotas.FinalizarNota1Button.Enabled:=False;
      FormNotas.GerarBoletos1.Enabled:=False;
      FormNotas.GerarBoletos1Button.Enabled:=False;
      FormNotas.ImprimirNota1.Enabled:=False;
      FormNotas.ImprimirNota1Button.Enabled:=False;
      FormNotas.Localizar1.Enabled:=False;
      FormNotas.Localizar1Button.Enabled:=False;
      FormNotas.LocalizarNotaNoContasAReceber1.Enabled:=False;
      FormNotas.LocalizarNotaNoContasAReceber1Button.Enabled:=False;
      FormNotas.PngSpeedButton4.Enabled:=True; //efeito contrário.
      FormNotas.PngSpeedButton5.Enabled:=True; //efeito contrário.
      FormNotas.PngSpeedButton6.Enabled:=True; //efeito contrário.
      FormNotas.PngSpeedButton7.Enabled:=True; //efeito contrário.
      FormNotas.PngSpeedButton8.Enabled:=True; //efeito contrário.
      FormNotas.Relatorios2.Enabled:=False;
      FormNotas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormNotas<>nil then
    begin
      FormNotas.CancelarNota1.Enabled:=True;
      FormNotas.CancelarNota1Button.Enabled:=True;
      FormNotas.FinalizarNota1.Enabled:=True;
      FormNotas.FinalizarNota1Button.Enabled:=True;
      FormNotas.GerarBoletos1.Enabled:=True;
      FormNotas.GerarBoletos1Button.Enabled:=True;
      FormNotas.ImprimirNota1.Enabled:=True;
      FormNotas.ImprimirNota1Button.Enabled:=True;
      FormNotas.Localizar1.Enabled:=True;
      FormNotas.Localizar1Button.Enabled:=True;
      FormNotas.LocalizarNotaNoContasAReceber1.Enabled:=True;
      FormNotas.LocalizarNotaNoContasAReceber1Button.Enabled:=True;
      FormNotas.PngSpeedButton4.Enabled:=False; //efeito contrário.
      FormNotas.PngSpeedButton5.Enabled:=False; //efeito contrário.
      FormNotas.PngSpeedButton6.Enabled:=False; //efeito contrário.
      FormNotas.PngSpeedButton7.Enabled:=False; //efeito contrário.
      FormNotas.PngSpeedButton8.Enabled:=False; //efeito contrário.
      FormNotas.Relatorios2.Enabled:=True;
      FormNotas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormNotas);
      FormMain.SetFields(FormNotas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NOTAS FISCAIS - NSU                                                        //
//##############################################################################
//nada

//##############################################################################
// NOTASITENS - ITENS DAS NOTAS                                               //
//##############################################################################
{$REGION 'TABELA NOTASITENS'}
procedure TDM.CalcularTotaisNotaItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  //calcula o valor bruto.
  TBNotasItensNOI_VALORTOTALBRUTO.Value:=Decimais(TBNotasItensNOI_QUANTIDADE.AsExtended*TBNotasItensNOI_VALORUNIT.AsExtended,2);

  //calcula o valor total com desconto.
  TBNotasItensNOI_VALORTOTAL.Value:=Decimais((TBNotasItensNOI_QUANTIDADE.AsExtended*TBNotasItensNOI_VALORUNIT.AsExtended),2);
  if TBNotasItensNOI_QUANTIDADETROCA.Value < 0 then TBNotasItensNOI_QUANTIDADETROCA.Value:=0;
  if TBNotasItensNOI_QUANTIDADETROCA.Value > 0 then
  begin
    if TBNotasItensNOI_QUANTIDADETROCA.Value > (TBNotasItensNOI_QUANTIDADE.Value * TBNotasItensNOI_CONVERSAO.Value) then
    TBNotasItensNOI_QUANTIDADETROCA.Value:=TBNotasItensNOI_QUANTIDADE.Value * TBNotasItensNOI_CONVERSAO.Value;
    //TBNotasItensNOI_DESCVALOR.Value:=Decimais((TBNotasItensNOI_QUANTIDADETROCA.Value*TBNotasItensNOI_VALORUNIT.Value),2);
    //(bruto divido pela (quantidade*conversao)=valor unitário.) * quantidade de troca.
    TBNotasItensNOI_DESCVALOR.Value:=Decimais(TBNotasItensNOI_QUANTIDADETROCA.AsExtended * (TBNotasItensNOI_VALORTOTALBRUTO.AsExtended / (TBNotasItensNOI_QUANTIDADE.AsExtended*TBNotasItensNOI_CONVERSAO.AsExtended)),2);
    TBNotasItensNOI_DESCPORC.Value:=Decimais((100.0/((TBNotasItensNOI_QUANTIDADE.AsExtended*TBNotasItensNOI_VALORUNIT.AsExtended)+
                                             TBNotasItensNOI_VALORFRETE.AsExtended+
                                             TBNotasItensNOI_VALORSEGURO.AsExtended+
                                             TBNotasItensNOI_VALORACESSORIAS.AsExtended))*TBNotasItensNOI_DESCVALOR.AsExtended,8);
  end else
  TBNotasItensNOI_DESCVALOR.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100.00)*TBNotasItensNOI_DESCPORC.AsExtended,2);

  if (TBNfeItensNFI_COMPOETOTAL.Value='S') or (TBNfeItensNFI_COMPOETOTAL.IsNull) then
  TBNotasItensNOI_VALORTOTAL.Value:=TBNotasItensNOI_VALORTOTAL.Value-TBNotasItensNOI_DESCVALOR.Value else
  TBNotasItensNOI_VALORTOTAL.Value:=0;

  //calcula o peso total do produto. quantidade * peso = pesototal (liquido).
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBNotasItensNOI_PESOTOTAL.Value:=TBNotasItensNOI_QUANTIDADE.AsExtended*TBNotasItensNOI_PESO.Value;

  //calcula valor do IPI.
  TBNotasItensNOI_BASEIPI.Value:=0;
  TBNotasItensNOI_VALORIPI.Value:=0;
  if TBNotasItensNOI_ALIQIPI.Value>0 then
  begin
    TBNotasItensNOI_BASEIPI.Value:=TBNotasItensNOI_VALORTOTAL.Value+TBNotasItensNOI_VALORFRETE.Value;
    TBNotasItensNOI_VALORIPI.Value:=Decimais((TBNotasItensNOI_BASEIPI.AsExtended/100.00)*TBNotasItensNOI_ALIQIPI.AsExtended,2);
  end;

  //calcula valor do ICMS - base=total+frete+seguro+acessorias-desconto.
  TBNotasItensNOI_BASEICMS.Value:=0;
  TBNotasItensNOI_VALORICMS.Value:=0;
  TBNotasItensNOI_VALORICMSUFDEST.Value:=0;
  TBNotasItensNOI_VALORICMSUFREMET.Value:=0;
  TBNotasItensNOI_VALORFCP.Value:=0;
  if TBNotasItensNOI_COMPOEBASEICMS.Value='S' then
  begin
    TBNotasItensNOI_BASEICMS.Value:=TBNotasItensNOI_VALORTOTAL.Value+
                                    TBNotasItensNOI_VALORFRETE.Value+
                                    TBNotasItensNOI_VALORSEGURO.Value+
                                    TBNotasItensNOI_VALORACESSORIAS.Value;

    //24-11-2020
    if TBNotasNOT_TIPOCONSUMIDOR.Value='1 - CONSUMIDOR FINAL' then
    TBNotasItensNOI_BASEICMS.Value:=TBNotasItensNOI_BASEICMS.Value+TBNotasItensNOI_VALORIPI.Value;

    if TBNotasItensNOI_ALIQICMSRED.Value<>0 then
    TBNotasItensNOI_BASEICMS.Value:=Decimais(TBNotasItensNOI_BASEICMS.AsExtended-((TBNotasItensNOI_BASEICMS.AsExtended/100)*TBNotasItensNOI_ALIQICMSRED.AsExtended),2);
    TBNotasItensNOI_VALORICMS.Value:=Decimais(((TBNotasItensNOI_BASEICMS.AsExtended/100.00)*TBNotasItensNOI_ALIQICMS.AsExtended),2);

    //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
    //40% de (base calculo / 100 * (aliq icms - interestadual))
    //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
    if TBEmpresaEMP_ESTADO.Value<>TBNotasNOT_ESTADO.Value then
    begin
      ICMS:=(TBNotasItensNOI_BASEICMS.AsExtended/100.00) * (Abs(TBNotasItensNOI_ALIQICMS.AsExtended-TBNotasItensNOI_ALIQICMSINTER.AsExtended));
      TBNotasItensNOI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBNotasItensNOI_ALIQICMSINTERPART.AsExtended,2);

      //calcula o valor do ICMS na UF do remetente
      TBNotasItensNOI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBNotasItensNOI_ALIQICMSINTERPART.AsExtended),2);

      //calcula o valor do FCP.
      TBNotasItensNOI_VALORFCP.Value:=(TBNotasItensNOI_BASEICMS.Value/100.00) * TBNotasItensNOI_ALIQFCP.Value;
    end;
  end;

  //calcula valor do ICMS ST. - base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
  TBNotasItensNOI_BASEICMSST.Value:=0;
  TBNotasItensNOI_VALORICMSST.Value:=0;
  TBNotasItensNOI_VALORFCPST.Value:=0;
  if (TBNotasItensNOI_COMPOEBASEICMSST.Value='S') and (TBNotasItensNOI_ALIQICMSST.Value>0) then
  begin
    BC:=TBNotasItensNOI_VALORTOTAL.AsExtended+
        TBNotasItensNOI_VALORIPI.AsExtended+
        TBNotasItensNOI_VALORFRETE.AsExtended+
        TBNotasItensNOI_VALORSEGURO.AsExtended+
        TBNotasItensNOI_VALORACESSORIAS.AsExtended;
    if TBNotasItensNOI_ALIQICMSRED.Value<>0 then
    BC:=Decimais(BC-((BC/100)*TBNotasItensNOI_ALIQICMSRED.AsExtended),2);
    ICMS:=Decimais(((BC/100)*TBNotasItensNOI_ALIQICMS.AsExtended),2);

    TBNotasItensNOI_BASEICMSST.Value:=Decimais(((TBNotasItensNOI_VALORTOTAL.AsExtended+
                                                 TBNotasItensNOI_VALORIPI.AsExtended+
                                                 TBNotasItensNOI_VALORFRETE.AsExtended+
                                                 TBNotasItensNOI_VALORSEGURO.AsExtended+
                                                 TBNotasItensNOI_VALORACESSORIAS.AsExtended)+
                                               ((TBNotasItensNOI_VALORTOTAL.AsExtended+
                                                 TBNotasItensNOI_VALORIPI.AsExtended+
                                                 TBNotasItensNOI_VALORFRETE.AsExtended+
                                                 TBNotasItensNOI_VALORSEGURO.AsExtended+
                                                 TBNotasItensNOI_VALORACESSORIAS.AsExtended)/100) *
                                                 TBNotasItensNOI_ALIQICMSADICST.AsExtended),2);
    TBNotasItensNOI_VALORICMSST.Value:=Decimais(((TBNotasItensNOI_BASEICMSST.AsExtended/100)*TBNotasItensNOI_ALIQICMSST.AsExtended)-ICMS,2);

    TBNotasItensNOI_VALORFCPST.Value:=(TBNotasItensNOI_BASEICMSST.Value/100.00) * TBNotasItensNOI_ALIQFCPST.Value;
  end;

  //calcula o valor do crédito do simples nacional.
  TBNotasItensNOI_VALORICMSCREDSN.Value:=0;
  if (TBNotasItensICM_CALCULACREDITOSN.Value='S') and (TBNotasItensNAT_CALCULACREDITOSN.Value='S') then
  begin
    TBNotasItensNOI_VALORICMSCREDSN.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100)*TBNotasNOT_ALIQICMSCREDSN.AsExtended,2);
  end;

  //calcula valor do II.
  TBNotasItensNOI_BASEII.Value:=0;
  TBNotasItensNOI_VALORII.Value:=0;
  if TBNotasItensNOI_ALIQII.Value>0 then
  begin
    TBNotasItensNOI_BASEII.Value:=TBNotasItensNOI_VALORTOTAL.Value;
    TBNotasItensNOI_VALORII.Value:=Decimais((TBNotasItensNOI_BASEII.AsExtended/100)*TBNotasItensNOI_ALIQII.AsExtended,2);
  end;

  //calcula valor do ISS.
  TBNotasItensNOI_BASEISS.Value:=0;
  TBNotasItensNOI_VALORISS.Value:=0;
  if TBNotasItensNOI_ALIQISS.Value>0 then
  begin
    TBNotasItensNOI_BASEISS.Value:=TBNotasItensNOI_VALORTOTAL.Value;
    TBNotasItensNOI_VALORISS.Value:=Decimais((TBNotasItensNOI_BASEISS.AsExtended/100)*TBNotasItensNOI_ALIQISS.AsExtended,2);
  end;

  //calcula valor do PIS.
  TBNotasItensNOI_BASEPIS.Value:=0;
  TBNotasItensNOI_VALORPIS.Value:=0;
  if TBNotasItensNOI_ALIQPIS.Value>0 then
  begin
    TBNotasItensNOI_BASEPIS.Value:=TBNotasItensNOI_VALORTOTAL.Value+TBNotasItensNOI_VALORFRETE.Value;
    TBNotasItensNOI_VALORPIS.Value:=Decimais((TBNotasItensNOI_BASEPIS.AsExtended/100)*TBNotasItensNOI_ALIQPIS.AsExtended,2);
  end;

  //calcula valor do PISST.
  TBNotasItensNOI_BASEPISST.Value:=0;
  TBNotasItensNOI_VALORPISST.Value:=0;
  if TBNotasItensNOI_ALIQPISST.Value>0 then
  begin
    TBNotasItensNOI_BASEPISST.Value:=TBNotasItensNOI_VALORTOTAL.Value+TBNotasItensNOI_VALORFRETE.Value;
    TBNotasItensNOI_VALORPISST.Value:=Decimais((TBNotasItensNOI_BASEPISST.AsExtended/100)*TBNotasItensNOI_ALIQPISST.AsExtended,2);
  end;

  //calcula valor do COFINS.
  TBNotasItensNOI_BASECOFINS.Value:=0;
  TBNotasItensNOI_VALORCOFINS.Value:=0;
  if TBNotasItensNOI_ALIQCOFINS.Value>0 then
  begin
    TBNotasItensNOI_BASECOFINS.Value:=TBNotasItensNOI_VALORTOTAL.Value+TBNotasItensNOI_VALORFRETE.Value;
    TBNotasItensNOI_VALORCOFINS.Value:=Decimais((TBNotasItensNOI_BASECOFINS.AsExtended/100)*TBNotasItensNOI_ALIQCOFINS.AsExtended,2);
  end;

  //calcula valor do COFINS ST.
  TBNotasItensNOI_BASECOFINSST.Value:=0;
  TBNotasItensNOI_VALORCOFINSST.Value:=0;
  if TBNotasItensNOI_ALIQCOFINSST.Value>0 then
  begin
    TBNotasItensNOI_BASECOFINSST.Value:=TBNotasItensNOI_VALORTOTAL.Value+TBNotasItensNOI_VALORFRETE.Value;
    TBNotasItensNOI_VALORCOFINSST.Value:=Decimais((TBNotasItensNOI_BASECOFINSST.AsExtended/100)*TBNotasItensNOI_ALIQCOFINSST.AsExtended,2);
  end;

  //calcula a comissão do vendedor sobre o item. (por produto).
  //valor total - IPI - ICMSST / 100 * %comissao.
  if TBNotasItensNAT_CALCULACOMISSAO.Value='S' then
  TBNotasItensNOI_VALORCOMISSAO.Value:=Decimais((((TBNotasItensNOI_VALORTOTAL.AsExtended-TBNotasItensNOI_VALORIPI.AsExtended-TBNotasItensNOI_VALORICMSST.AsExtended)/100.0)*TBNotasItensNOI_COMISSAO.AsExtended),2) else
  TBNotasItensNOI_VALORCOMISSAO.Value:=0;

  //calcula o lucro no item.
  TBNotasItensNOI_PRECOCUSTOTOTAL.Value:=TBNotasItensNOI_PRECOCUSTO.Value*TBNotasItensNOI_QUANTIDADE.Value;
  TBNotasItensNOI_LUCROVALOR.Value:=TBNotasItensNOI_VALORTOTAL.Value-TBNotasItensNOI_PRECOCUSTOTOTAL.Value;
  if TBNotasItensNOI_LUCROVALOR.Value<>0 then
  begin
    if TBNotasItensNOI_VALORTOTAL.Value=0 then
    TBNotasItensNOI_LUCROPORC.Value:=(-100.0) else
    TBNotasItensNOI_LUCROPORC.Value:=(TBNotasItensNOI_LUCROVALOR.Value/TBNotasItensNOI_VALORTOTAL.Value)*100.0;
  end;

  //calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.
  TBClassFiscal.Close;
  TBClassFiscal.ParamByName('codigo').AsString:=TBNotasItensNOI_CLASSFISCAL.Value;
  TBClassFiscal.ParamByName('excecao').AsInteger:=TBNotasItensNOI_EXCECAO.Value;
  TBClassFiscal.Open;
  if (Copy(TBNotasItensNOI_ORIGEM.Value,1,1)='0') or
     (Copy(TBNotasItensNOI_ORIGEM.Value,1,1)='3') or
     (Copy(TBNotasItensNOI_ORIGEM.Value,1,1)='4') or
     (Copy(TBNotasItensNOI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
  begin
    TBNotasItensNOI_VALORTRIBUTOSEST.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAESTADUAL.AsExtended,2);
    TBNotasItensNOI_VALORTRIBUTOSFED.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2);
    TBNotasItensNOI_VALORTRIBUTOSMUN.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAMUNICIPAL.AsExtended,2);
    TBNotasItensNOI_VALORTRIBUTOSIMP.Value:=0;
    TBNotasItensNOI_VALORTRIBUTOS.Value:=TBNotasItensNOI_VALORTRIBUTOSEST.Value+TBNotasItensNOI_VALORTRIBUTOSFED.Value+TBNotasItensNOI_VALORTRIBUTOSMUN.Value;
  end else
  begin
    TBNotasItensNOI_VALORTRIBUTOSEST.Value:=0;
    TBNotasItensNOI_VALORTRIBUTOSFED.Value:=0;
    TBNotasItensNOI_VALORTRIBUTOSMUN.Value:=0;
    TBNotasItensNOI_VALORTRIBUTOSIMP.Value:=Decimais((TBNotasItensNOI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
    TBNotasItensNOI_VALORTRIBUTOS.Value:=TBNotasItensNOI_VALORTRIBUTOSIMP.Value;
  end;
end;

procedure TDM.TBNotasItensAfterInsert(DataSet: TDataSet);
begin
  TBNotasItensNOI_ALIQICMSSTRET.Value:=0;
  TBNotasItensNOI_BASEICMS.Value:=0;
  TBNotasItensNOI_BASEICMSST.Value:=0;
  TBNotasItensNOI_BASEICMSSTRET.Value:=0;
  TBNotasItensNOI_CFOP.Value:=TBNotasNOT_CFOP.Value;
  TBNotasItensNOI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBNotasItensNOI_COMPOETOTAL.Value:='S';
  TBNotasItensNOI_CONVERSAO.Value:=0;
  TBNotasItensNOI_DESCPORC.Value:=0;
  TBNotasItensNOI_DESCVALOR.Value:=0;
  TBNotasItensNOI_DESONERACAO.Value:='0 - NENHUM';
  TBNotasItensNOI_LUCROPORC.Value:=0;
  TBNotasItensNOI_LUCROVALOR.Value:=0;
  TBNotasItensNOI_NOTA.Value:=TBNotasNOT_CODIGO.Value;
  TBNotasItensNOI_PAISISS.Value:=1058; //brasil.
  TBNotasItensNOI_PEDIDOCLIENTE.Value:=TBNotasNOT_PEDIDOCLIENTE.Value;
  TBNotasItensNOI_PRECOCUSTO.Value:=0;
  TBNotasItensNOI_PRECOCUSTOTOTAL.Value:=0;
  TBNotasItensNOI_PRODUTOREAL.Value:=0;
  TBNotasItensNOI_QUANTIDADE.Value:=1;
  TBNotasItensNOI_QUANTIDADETROCA.Value:=0;
  TBNotasItensNOI_SEQUENCIA.Value:=TBNotasNOT_SEQUENCIAITEM.Value+1;
  TBNotasItensNOI_SOMACOFINSST.Value:='N';
  TBNotasItensNOI_SOMAPISST.Value:='N';
  TBNotasItensNOI_VALORACESSORIAS.Value:=0;
  TBNotasItensNOI_VALORCOMISSAO.Value:=0;
  TBNotasItensNOI_VALORFCP.Value:=0;
  TBNotasItensNOI_VALORFRETE.Value:=0;
  TBNotasItensNOI_VALORICMS.Value:=0;
  TBNotasItensNOI_VALORICMSCREDSN.Value:=0;
  TBNotasItensNOI_VALORICMSDESONERADO.Value:=0;
  TBNotasItensNOI_VALORICMSST.Value:=0;
  TBNotasItensNOI_VALORICMSSTRET.Value:=0;
  TBNotasItensNOI_VALORICMSSUBSTITUTO.Value:=0;
  TBNotasItensNOI_VALORICMSUFDEST.Value:=0;
  TBNotasItensNOI_VALORICMSUFREMET.Value:=0;
  TBNotasItensNOI_VALORISS.Value:=0;
  TBNotasItensNOI_VALORISSDEDUCAO.Value:=0;
  TBNotasItensNOI_VALORISSDESCCOND.Value:=0;
  TBNotasItensNOI_VALORISSDESCINCOND.Value:=0;
  TBNotasItensNOI_VALORISSOUTROS.Value:=0;
  TBNotasItensNOI_VALORISSRETENCAO.Value:=0;
  TBNotasItensNOI_VALORSEGURO.Value:=0;
  TBNotasItensNOI_VALORTOTAL.Value:=0;
  TBNotasItensNOI_VALORTOTALBRUTO.Value:=0;

  TBNotasItensNAT_DESCRICAO.Value:=TBNotasNOT_CFOPDESC.Value;
  TBNotasItensNAT_CALCULACOMISSAO.Value:=TBNotasNAT_CALCULACOMISSAO.Value;
  TBNotasItensNAT_CALCULACREDITOSN.Value:=TBNotasNAT_CALCULACREDITOSN.Value;
end;

procedure TDM.TBNotasItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisNota(True);
end;

procedure TDM.TBNotasItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisNotaItens(False); //o parametro não está sendo usado.
end;
{$ENDREGION}

//##############################################################################
// PAGAR - CONTAS A PAGAR                                                     //
//##############################################################################
{$REGION 'TABELA PAGAR'}
procedure TDM.TBPagarAfterEdit(DataSet: TDataSet);
begin
  if TBPagarPAG_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma conta já baixada.',mtWarning,[mbOk],0);
    TBPagar.Cancel;
  end;
end;

procedure TDM.TBPagarAfterInsert(DataSet: TDataSet);
begin
  TBPagarPAG_CONTA.Value:=TBParametrosPAR_CONTAPADRAO.Value;
  TBPagarPAG_DTCADASTRO.Value:=ServerDate;
  TBPagarPAG_DTEMISSAO.Value:=ServerDate;
  TBPagarPAG_HRCADASTRO.Value:=ServerTime;
  TBPagarPAG_PARCELANUM.Value:=1;
  TBPagarPAG_PARCELAQTDE.Value:=1;
  TBPagarPAG_STATUS.Value:='A';
  TBPagarPAG_VALOR.Value:=0;
end;

procedure TDM.TBPagarBeforeEdit(DataSet: TDataSet);
begin
  if FormPagar<>nil then
  FormMain.SetFields(FormPagar,True);
end;

procedure TDM.TBPagarBeforeInsert(DataSet: TDataSet);
begin
  if FormPagar<>nil then
  begin
    FormMain.SetFields(FormPagar,True);
    FormPagar.DBComboBox1.SetFocus;
  end;
end;

procedure TDM.TBPagarBeforePost(DataSet: TDataSet);
begin
  TBPagarPAG_DTATUALIZACAO.Value:=ServerDate;
  TBPagarPAG_HRATUALIZACAO.Value:=ServerTime;
  TBPagarPAG_USUARIO.Value:=UsuarioLogin;
  if not TBPagarPAG_DTVENCIMENTO.IsNull then
  begin
    if TBPagarPAG_DTVENCIMENTO.Value<TBPagarPAG_DTEMISSAO.Value then
    TBPagarPAG_DIASPRAZO.Value:=0 else
    TBPagarPAG_DIASPRAZO.Value:=DaysBetween(TBPagarPAG_DTVENCIMENTO.Value,TBPagarPAG_DTEMISSAO.Value);
  end;
  if not TBPagarPAG_DTPAGAMENTO.IsNull then
  begin
    if TBPagarPAG_DTPAGAMENTO.Value<TBPagarPAG_DTVENCIMENTO.Value then
    TBPagarPAG_DIASATRASO.Value:=0 else
    TBPagarPAG_DIASATRASO.Value:=DaysBetween(TBPagarPAG_DTVENCIMENTO.Value,TBPagarPAG_DTPAGAMENTO.Value);
  end;
end;

procedure TDM.DSPagarStateChange(Sender: TObject);
begin
  if TBPagar.State in [dsInsert, dsEdit] then
  begin
    if FormPagar<>nil then
    begin
      FormPagar.BaixaColetiva1.Enabled:=False;
      FormPagar.BaixaColetiva1Button.Enabled:=False;
      FormPagar.BaixaParcial1.Enabled:=False;
      FormPagar.BaixaParcial1Button.Enabled:=False;
      FormPagar.BaixaTotal1.Enabled:=False;
      FormPagar.BaixaTotal1Button.Enabled:=False;
      FormPagar.CancelarContaAPagar1.Enabled:=False;
      FormPagar.CancelarContaAPagar1Button.Enabled:=False;
      FormPagar.ContasAPagarPorData1.Enabled:=False;
      FormPagar.ContasAPagarPorDataSintetico1.Enabled:=False;
      FormPagar.ContasAPagarPorDespesaAnalitico1.Enabled:=False;
      FormPagar.ContasAPagarPorDespesaSintetico1.Enabled:=False;
      FormPagar.ContasAPagarPorFornecedor1.Enabled:=False;
      FormPagar.ContasAPagarPorTipoDeDocumentoSintetico1.Enabled:=False;
      FormPagar.EstornarBaixa1.Enabled:=False;
      FormPagar.EstornarBaixa1Button.Enabled:=False;
      FormPagar.FluxoDeCaixa1.Enabled:=False;
      FormPagar.FluxoDeCaixa1Button.Enabled:=False;
      FormPagar.Localizar1.Enabled:=False;
      FormPagar.Localizar1Button.Enabled:=False;
      FormPagar.MultiplicarContaAPagar1.Enabled:=False;
      FormPagar.MultiplicarContaAPagar1Button.Enabled:=False;
      FormPagar.ReciboDePagamento1via1.Enabled:=False;
      FormPagar.ReciboDePagamento2vias1.Enabled:=False;
      FormPagar.Relatorios2.Enabled:=False;
      FormPagar.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormPagar<>nil then
    begin
      FormPagar.BaixaColetiva1.Enabled:=True;
      FormPagar.BaixaColetiva1Button.Enabled:=True;
      FormPagar.BaixaParcial1.Enabled:=True;
      FormPagar.BaixaParcial1Button.Enabled:=True;
      FormPagar.BaixaTotal1.Enabled:=True;
      FormPagar.BaixaTotal1Button.Enabled:=True;
      FormPagar.CancelarContaAPagar1.Enabled:=True;
      FormPagar.CancelarContaAPagar1Button.Enabled:=True;
      FormPagar.ContasAPagarPorData1.Enabled:=True;
      FormPagar.ContasAPagarPorDataSintetico1.Enabled:=True;
      FormPagar.ContasAPagarPorDespesaAnalitico1.Enabled:=True;
      FormPagar.ContasAPagarPorDespesaSintetico1.Enabled:=True;
      FormPagar.ContasAPagarPorFornecedor1.Enabled:=True;
      FormPagar.ContasAPagarPorTipoDeDocumentoSintetico1.Enabled:=True;
      FormPagar.EstornarBaixa1.Enabled:=True;
      FormPagar.EstornarBaixa1Button.Enabled:=True;
      FormPagar.FluxoDeCaixa1.Enabled:=True;
      FormPagar.FluxoDeCaixa1Button.Enabled:=True;
      FormPagar.Localizar1.Enabled:=True;
      FormPagar.Localizar1Button.Enabled:=True;
      FormPagar.MultiplicarContaAPagar1.Enabled:=True;
      FormPagar.MultiplicarContaAPagar1Button.Enabled:=True;
      FormPagar.ReciboDePagamento1via1.Enabled:=True;
      FormPagar.ReciboDePagamento2vias1.Enabled:=True;
      FormPagar.Relatorios2.Enabled:=True;
      FormPagar.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormPagar);
      FormMain.SetFields(FormPagar,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PAISES                                                                     //
//##############################################################################
{$REGION 'TABELA PAISES'}
procedure TDM.TBPaisesBeforeEdit(DataSet: TDataSet);
begin
  if FormEnderecos<>nil then
  FormMain.SetFields(FormEnderecos,True);
end;

procedure TDM.TBPaisesBeforeInsert(DataSet: TDataSet);
begin
  if (FormEnderecos<>nil) and (FormEnderecos.Active) then
  begin
    FormMain.SetFields(FormEnderecos,True);
    FormEnderecos.DBEdit22.SetFocus;
  end;
end;

procedure TDM.DSPaisesStateChange(Sender: TObject);
begin
  if TBPaises.State in [dsInsert, dsEdit] then
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=False;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=False;
      FormEnderecos.Localizar1.Enabled:=False;
      FormEnderecos.Localizar1Button.Enabled:=False;
      FormEnderecos.Relatorios1.Enabled:=False;
      FormEnderecos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=True;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=True;
      FormEnderecos.Localizar1.Enabled:=True;
      FormEnderecos.Localizar1Button.Enabled:=True;
      FormEnderecos.Relatorios1.Enabled:=True;
      FormEnderecos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEnderecos);
      FormMain.SetFields(FormEnderecos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PARAMETROS                                                                 //
//##############################################################################
procedure TDM.TBParametrosAfterOpen(DataSet: TDataSet);
begin
  if FormNfe<>nil then
  FormNfe.GerarXMLConformeAReformaTributaria1.Checked:=TBParametrosPAR_REFORMATRIBUTARIA.Value='S';
end;

//##############################################################################
// TABELA DE CODIGOS DO PIS / COFINS                                          //
//##############################################################################
{$REGION 'TABELA PISCOFINS'}
procedure TDM.TBPiscofinsAfterInsert(DataSet: TDataSet);
begin
  TBPiscofinsPIS_DTCADASTRO.Value:=ServerDate;
  TBPiscofinsPIS_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBPiscofinsBeforeEdit(DataSet: TDataSet);
begin
  if FormPiscofins<>nil then
  FormMain.SetFields(FormPiscofins,True);
end;

procedure TDM.TBPiscofinsBeforeInsert(DataSet: TDataSet);
begin
  if FormPiscofins<>nil then
  begin
    FormMain.SetFields(FormPiscofins,True);
    FormPiscofins.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBPiscofinsBeforePost(DataSet: TDataSet);
begin
  TBPiscofinsPIS_DTATUALIZACAO.Value:=ServerDate;
  TBPiscofinsPIS_HRATUALIZACAO.Value:=ServerTime;
  TBPiscofinsPIS_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSPiscofinsStateChange(Sender: TObject);
begin
  if TBPiscofins.State in [dsInsert, dsEdit] then
  begin
    if FormPiscofins<>nil then
    begin
      FormPiscofins.Localizar1.Enabled:=False;
      FormPiscofins.Localizar1Button.Enabled:=False;
      FormPiscofins.Relatorios2.Enabled:=False;
      FormPiscofins.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormPiscofins<>nil then
    begin
      FormPiscofins.Localizar1.Enabled:=True;
      FormPiscofins.Localizar1Button.Enabled:=True;
      FormPiscofins.Relatorios2.Enabled:=True;
      FormPiscofins.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormPiscofins);
      FormMain.SetFields(FormPiscofins,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ORDEM DE PRODUCAO                                                          //
//##############################################################################
{$REGION 'TABELA PRODUCAO'}
procedure TDM.TBProducaoAfterEdit(DataSet: TDataSet);
begin
  if TBProducaoPRD_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma ordem de produção já baixada.',mtWarning,[mbOk],0);
    TBProducao.Cancel;
  end;
end;

procedure TDM.TBProducaoAfterInsert(DataSet: TDataSet);
begin
  TBProducaoPRD_DTCADASTRO.Value:=ServerDate;
  TBProducaoPRD_HRCADASTRO.Value:=ServerTime;
  TBProducaoPRD_DTPREVISAO.Value:=ServerDate+TBParametrosPAR_PRODUCAODTPREVISAO.Value;
  TBProducaoPRD_STATUS.Value:='A';
  TBProducaoPRD_LOTECRIADO.Value:='N';
  TBProducaoPRD_MPBAIXADA.Value:='N';
end;

procedure TDM.TBProducaoBeforeEdit(DataSet: TDataSet);
begin
  if FormProducao<>nil then
  FormMain.SetFields(FormProducao,True);
end;

procedure TDM.TBProducaoBeforeInsert(DataSet: TDataSet);
begin
  if FormProducao<>nil then
  begin
    FormMain.SetFields(FormProducao,True);
    FormProducao.DBEdit17.SetFocus;
  end;
end;

procedure TDM.TBProducaoBeforePost(DataSet: TDataSet);
begin
  TBProducaoPRD_DTATUALIZACAO.Value:=ServerDate;
  TBProducaoPRD_HRATUALIZACAO.Value:=ServerTime;
  TBProducaoPRD_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSProducaoStateChange(Sender: TObject);
begin
  if TBProducao.State in [dsInsert, dsEdit] then
  begin
    if FormProducao<>nil then
    begin
      FormProducao.AlterarCor1.Enabled:=False;
      FormProducao.AlterarCor1Button.Enabled:=False;
      FormProducao.BaixarMateriaPrima1.Enabled:=False;
      FormProducao.BaixarMateriaPrima1Button.Enabled:=False;
      FormProducao.BaixarOrdemDeProducao1.Enabled:=False;
      FormProducao.BaixarOrdemDeProducao1Button.Enabled:=False;
      FormProducao.ChecarEstoque1.Enabled:=False;
      FormProducao.ChecarEstoque1Button.Enabled:=False;
      FormProducao.CriarLoteParaOsItensProduzidos1.Enabled:=False;
      FormProducao.CriarLoteParaOsItensProduzidos1Button.Enabled:=False;
      FormProducao.DisponibilidadeDeEstoqueAnalitico1.Enabled:=False;
      FormProducao.DisponibilidadeDeEstoqueSintetico1.Enabled:=False;
      FormProducao.DuplicarOrdemDeProducao1.Enabled:=False;
      FormProducao.DuplicarOrdemDeProducao1Button.Enabled:=False;
      FormProducao.EliminarItem1.Enabled:=False;
      FormProducao.EliminarItem1Button.Enabled:=False;
      FormProducao.EstornarMateriaPrima1.Enabled:=False;
      FormProducao.EstornarMateriaPrima1Button.Enabled:=False;
      FormProducao.EstornarOrdemDeProducao1.Enabled:=False;
      FormProducao.EstornarOrdemDeProducao1Button.Enabled:=False;
      FormProducao.ExcluirItem1.Enabled:=False;
      FormProducao.ExcluirItem1Button.Enabled:=False;
      FormProducao.IncluirItem1.Enabled:=False;
      FormProducao.IncluirItem1Button.Enabled:=False;
      FormProducao.InformarLotesUtilizadosNaComposicaoDosItens1.Enabled:=False;
      FormProducao.InformarLotesUtilizadosNaComposicaoDosItens1Button.Enabled:=False;
      FormProducao.InutilizarOrdemDeProducao1.Enabled:=False;
      FormProducao.InutilizarOrdemDeProducao1Button.Enabled:=False;
      FormProducao.Localizar1.Enabled:=False;
      FormProducao.Localizar1Button.Enabled:=False;
      FormProducao.MarcarItemParaBaixa1.Enabled:=False;
      FormProducao.MarcarItemParaBaixa1Button.Enabled:=False;
      FormProducao.OrdemDeProducao1.Enabled:=False;
      FormProducao.OrdensDeProducaoPorCliente1.Enabled:=False;
      FormProducao.OrdensDeProducaoPorClienteComItens1.Enabled:=False;
      FormProducao.PlanoDeProducaoModelo011.Enabled:=False;
      FormProducao.PlanoDeProducaoModelo021.Enabled:=False;
      FormProducao.RecriarLoteParaOsItensProduzidos1.Enabled:=False;
      FormProducao.Relatorios2.Enabled:=False;
      FormProducao.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProducao<>nil then
    begin
      FormProducao.AlterarCor1.Enabled:=True;
      FormProducao.AlterarCor1Button.Enabled:=True;
      FormProducao.BaixarMateriaPrima1.Enabled:=True;
      FormProducao.BaixarMateriaPrima1Button.Enabled:=True;
      FormProducao.BaixarOrdemDeProducao1.Enabled:=True;
      FormProducao.BaixarOrdemDeProducao1Button.Enabled:=True;
      FormProducao.ChecarEstoque1.Enabled:=True;
      FormProducao.ChecarEstoque1Button.Enabled:=True;
      FormProducao.CriarLoteParaOsItensProduzidos1.Enabled:=True;
      FormProducao.CriarLoteParaOsItensProduzidos1Button.Enabled:=True;
      FormProducao.DisponibilidadeDeEstoqueAnalitico1.Enabled:=True;
      FormProducao.DisponibilidadeDeEstoqueSintetico1.Enabled:=True;
      FormProducao.DuplicarOrdemDeProducao1.Enabled:=True;
      FormProducao.DuplicarOrdemDeProducao1Button.Enabled:=True;
      FormProducao.EliminarItem1.Enabled:=True;
      FormProducao.EliminarItem1Button.Enabled:=True;
      FormProducao.EstornarMateriaPrima1.Enabled:=True;
      FormProducao.EstornarMateriaPrima1Button.Enabled:=True;
      FormProducao.EstornarOrdemDeProducao1.Enabled:=True;
      FormProducao.EstornarOrdemDeProducao1Button.Enabled:=True;
      FormProducao.ExcluirItem1.Enabled:=True;
      FormProducao.ExcluirItem1Button.Enabled:=True;
      FormProducao.IncluirItem1.Enabled:=True;
      FormProducao.IncluirItem1Button.Enabled:=True;
      FormProducao.InformarLotesUtilizadosNaComposicaoDosItens1.Enabled:=True;
      FormProducao.InformarLotesUtilizadosNaComposicaoDosItens1Button.Enabled:=True;
      FormProducao.InutilizarOrdemDeProducao1.Enabled:=True;
      FormProducao.InutilizarOrdemDeProducao1Button.Enabled:=True;
      FormProducao.Localizar1.Enabled:=True;
      FormProducao.Localizar1Button.Enabled:=True;
      FormProducao.MarcarItemParaBaixa1.Enabled:=True;
      FormProducao.MarcarItemParaBaixa1Button.Enabled:=True;
      FormProducao.OrdemDeProducao1.Enabled:=True;
      FormProducao.OrdensDeProducaoPorCliente1.Enabled:=True;
      FormProducao.OrdensDeProducaoPorClienteComItens1.Enabled:=True;
      FormProducao.PlanoDeProducaoModelo011.Enabled:=True;
      FormProducao.PlanoDeProducaoModelo021.Enabled:=True;
      FormProducao.RecriarLoteParaOsItensProduzidos1.Enabled:=True;
      FormProducao.Relatorios2.Enabled:=True;
      FormProducao.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProducao);
      FormMain.SetFields(FormProducao,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ORDEM DE PRODUCAO - ITENS                                                  //
//##############################################################################
{$REGION 'TABELA PRODUCAOITENS'}
procedure TDM.TBProducaoItensAfterInsert(DataSet: TDataSet);
begin
  TBProducaoItensPDI_PRODUCAO.Value:=TBProducaoPRD_CODIGO.Value;
  TBProducaoItensPDI_QUANTIDADE.Value:=1;
end;
{$ENDREGION}

//##############################################################################
// ORDEM DE PRODUCAO - ITENS - COMPOSICAO DO ITEM.                            //
//##############################################################################
{$REGION 'TABELA PRODUCAOITENSCOMP'}
procedure TDM.TBProducaoItensCompAfterInsert(DataSet: TDataSet);
begin
  TBProducaoItensCompPDC_PRODUCAOITEM.Value:=TBProducaoItensPDI_CODIGO.Value;
  TBProducaoItensCompPDC_QUANTIDADE.Value:=0;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS                                                                   //
//##############################################################################
{$REGION 'TABELA PRODUTOS'}
//Ao atualizar os campos desta tabela, não esquecer de retirar da instrução UPDATE os campos abaixo.
//  PRO_COMPOSTO = :PRO_COMPOSTO,
//  PRO_DTULTCOMPRA = :PRO_DTULTCOMPRA,
//  PRO_DTULTVENDA = :PRO_DTULTVENDA,
//  PRO_ESTOQUEATUAL = :PRO_ESTOQUEATUAL,
//  PRO_MARGEM = :PRO_MARGEM,
//  PRO_MARGEM1 = :PRO_MARGEM1,
//  PRO_MARGEM2 = :PRO_MARGEM2,
//  PRO_MARGEM3 = :PRO_MARGEM3,
//  PRO_MARGEM4 = :PRO_MARGEM4,
//  PRO_MARGEM5 = :PRO_MARGEM5,
//  PRO_MARGEM6 = :PRO_MARGEM6,
//  PRO_MARKUP = :PRO_MARKUP,
//  PRO_MARKUPCODIGO = :PRO_MARKUPCODIGO,
//  PRO_PRECOCUSTO = :PRO_PRECOCUSTO,
//  PRO_PRECOCUSTOCOMP = :PRO_PRECOCUSTOCOMP,
//  PRO_PRECOCUSTOMEDIO = :PRO_PRECOCUSTOMEDIO,
//  PRO_PRECOCUSTOULT = :PRO_PRECOCUSTOULT,
//  PRO_PRECOVENDA = :PRO_PRECOVENDA,
//  PRO_PRECOVENDAMEDIO = :PRO_PRECOVENDAMEDIO,
//  PRO_PRECOVENDAULT = :PRO_PRECOVENDAULT,
//  PRO_TABPRECO1 = :PRO_TABPRECO1,
//  PRO_TABPRECO2 = :PRO_TABPRECO2,
//  PRO_TABPRECO3 = :PRO_TABPRECO3,
//  PRO_TABPRECO4 = :PRO_TABPRECO4,
//  PRO_TABPRECO5 = :PRO_TABPRECO5,
//  PRO_TABPRECO6 = :PRO_TABPRECO6,
//...
procedure TDM.TBProdutosAfterDelete(DataSet: TDataSet);
begin
  //elimina as quantidades do produto nos almoxarifados.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('delete from PRODUTOSQTDE where PRQ_PRODUTO=:codigo');
  QYAux.ParamByName('codigo').AsInteger:=CodigoMark;
  QYAux.ExecSQL;

  TBProdutosQtde.Close;
  TBProdutosQtde.Open;
end;

procedure TDM.TBProdutosAfterInsert(DataSet: TDataSet);
begin
  TBProdutosPRO_ALIQCOFINS.Value:=0;
  TBProdutosPRO_ALIQCOFINSST.Value:=0;
  TBProdutosPRO_ALIQICMS.Value:=0;
  TBProdutosPRO_ALIQICMSADICST.Value:=0;
  TBProdutosPRO_ALIQICMSST.Value:=0;
  TBProdutosPRO_ALIQICMSRED.Value:=0;
  TBProdutosPRO_ALIQIPI.Value:=0;
  TBProdutosPRO_ALIQISS.Value:=0;
  TBProdutosPRO_ALIQPIS.Value:=0;
  TBProdutosPRO_ALIQPISST.Value:=0;
  TBProdutosPRO_ALIQOUTROS.Value:=0;
  TBProdutosPRO_ALTURA.Value:=0;
  TBProdutosPRO_ATUALIZAR.Value:='S';
  TBProdutosPRO_ATUALIZATABELA.Value:='S';
  TBProdutosPRO_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBProdutosPRO_CFOPFORA.Value:=TBParametrosPAR_CFOPFORAPADRAO.Value;
  TBProdutosPRO_CLASSFISCAL.Value:=IntToStr(TBParametrosPAR_CLASSFISCALPADRAO.Value);
  TBProdutosPRO_COMISSAO.Value:=0;
  TBProdutosPRO_COMPOEBASEICMS.Value:='N'; //simples nacional é sempre NAO.
  TBProdutosPRO_COMPOEBASEICMSST.Value:='N';
  TBProdutosPRO_COMPOSTO.Value:='N';
  TBProdutosPRO_CONVERSAO.Value:=1;
  TBProdutosPRO_CSTCOFINS.Value:=TBParametrosPAR_CSTCOFINSPADRAO.Value;
  TBProdutosPRO_CSTICMS.Value:=TBParametrosPAR_CSTICMSPADRAO.Value;
  TBProdutosPRO_CSTIPI.Value:=TBParametrosPAR_CSTIPIPADRAO.Value;
  TBProdutosPRO_CSTPIS.Value:=TBParametrosPAR_CSTPISPADRAO.Value;
  TBProdutosPRO_CUBICO.Value:=0;
  TBProdutosPRO_DESCMAX.Value:=TBParametrosPAR_DESCMAXPADRAO.Value;
  TBProdutosPRO_DTCADASTRO.Value:=ServerDate;
  TBProdutosPRO_ENQUADRAMENTOIPI.Value:=TBParametrosPAR_ENQUADRAMENTOIPI.Value;
  TBProdutosPRO_ESTOQUEMIN.Value:=0;
  TBProdutosPRO_ESTOQUEMAX.Value:=0;
  TBProdutosPRO_ESTOQUEATUAL.Value:=0; //quantidade inicial.
  TBProdutosPRO_EXCECAO.Value:=0;
  TBProdutosPRO_FAMILIA.Value:=TBParametrosPAR_PROFAMILIA.Value;
  TBProdutosPRO_FORNECEDOR.Value:=TBParametrosPAR_PROFORNECEDOR.Value;
  TBProdutosPRO_GENERO.Value:=96;
  TBProdutosPRO_GRUPO.Value:=TBParametrosPAR_PROGRUPO.Value;
  TBProdutosPRO_ICMSALIQUOTAPOR.Value:='E';
  TBProdutosPRO_INCENTIVOISS.Value:='N';
  TBProdutosPRO_INDICADORISS.Value:='2 - NAO INCIDENCIA';
  TBProdutosPRO_INTERNET.Value:='S';
  TBProdutosPRO_LARGURA.Value:=0;
  TBProdutosPRO_MARCA.Value:=TBParametrosPAR_PROMARCA.Value;
  TBProdutosPRO_MARGEM.Value:=TBParametrosPAR_MARGEMPADRAO.Value;
  TBProdutosPRO_MARGEM1.Value:=TBTabPrecoTAB_MARGEM1.Value;
  TBProdutosPRO_MARGEM2.Value:=TBTabPrecoTAB_MARGEM2.Value;
  TBProdutosPRO_MARGEM3.Value:=TBTabPrecoTAB_MARGEM3.Value;
  TBProdutosPRO_MARGEM4.Value:=TBTabPrecoTAB_MARGEM4.Value;
  TBProdutosPRO_MARGEM5.Value:=TBTabPrecoTAB_MARGEM5.Value;
  TBProdutosPRO_MARGEM6.Value:=TBTabPrecoTAB_MARGEM6.Value;
  TBProdutosPRO_MARKUP.Value:=1;
  TBProdutosPRO_MARKUPCODIGO.Value:=0;
  TBProdutosPRO_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
  TBProdutosPRO_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
  TBProdutosPRO_OFERTA.Value:='N';
  TBProdutosPRO_ORIGEM.Value:='0 - NACIONAL';
  TBProdutosPRO_PESAVEL.Value:='N';
  TBProdutosPRO_PESO.Value:=0;
  TBProdutosPRO_PRECOCUSTO.Value:=0;
  TBProdutosPRO_PRECOCUSTOCOMP.Value:=0;
  TBProdutosPRO_PRECOVENDA.Value:=0;
  TBProdutosPRO_PRODUCAO.Value:='T';
  TBProdutosPRO_PRODUTOREAL.Value:=0;
  TBProdutosPRO_PROFUNDIDADE.Value:=0;
  TBProdutosPRO_REGRAFISCAL.Value:=TBParametrosPAR_REGRAFISCALPADRAO.Value;
  TBProdutosPRO_STATUS.Value:='A';
  TBProdutosPRO_SUBSTITUICAOTRIB.Value:='N';
  TBProdutosPRO_TABPRECO1.Value:=TBTabPrecoTAB_DESCRICAO1.Value;
  TBProdutosPRO_TABPRECO2.Value:=TBTabPrecoTAB_DESCRICAO2.Value;
  TBProdutosPRO_TABPRECO3.Value:=TBTabPrecoTAB_DESCRICAO3.Value;
  TBProdutosPRO_TABPRECO4.Value:=TBTabPrecoTAB_DESCRICAO4.Value;
  TBProdutosPRO_TABPRECO5.Value:=TBTabPrecoTAB_DESCRICAO5.Value;
  TBProdutosPRO_TABPRECO6.Value:=TBTabPrecoTAB_DESCRICAO6.Value;
  TBProdutosPRO_TIPO.Value:='P';
  TBProdutosPRO_TIPOITEM.Value:='00 - MERCADORIA PARA REVENDA';
  TBProdutosPRO_TROCA.Value:='N';
  TBProdutosPRO_TRIBUTO.Value:='II';
  TBProdutosPRO_UNIDADE.Value:=TBParametrosPAR_PROUNIDADE.Value;

  //campos derivados.
  //tem 2 campos como chave.... TBProdutosCLF_DESCRICAO.Value:= GetRegistro('CLASSFISCAL','FAM_CODIGO',TBParametrosPAR_PROFAMILIA.Value).FieldByName('FAM_DESCRICAO').Value;
  TBProdutosFAM_DESCRICAO.Value:=GetRegistro('FAMILIAS','FAM_CODIGO',TBParametrosPAR_PROFAMILIA.Value).FieldByName('FAM_DESCRICAO').AsString;
  TBProdutosFOR_NOME.Value:=GetRegistro('FORNECEDORES','FOR_CODIGO',TBParametrosPAR_PROFORNECEDOR.Value).FieldByName('FOR_NOME').AsString;
  TBProdutosGRU_DESCRICAO.Value:=GetRegistro('GRUPOS','GRU_CODIGO',TBParametrosPAR_PROGRUPO.Value).FieldByName('GRU_DESCRICAO').AsString;
  TBProdutosICM_CALCULACREDITOSN.Value:=GetRegistro('ICMS','ICM_CODIGO',TBParametrosPAR_CSTICMSPADRAO.Value).FieldByName('ICM_CALCULACREDITOSN').AsString;
  TBProdutosICM_DESCRICAO.Value:=GetRegistro('ICMS','ICM_CODIGO',TBParametrosPAR_CSTICMSPADRAO.Value).FieldByName('ICM_DESCRICAO').AsString;
  TBProdutosIPI_DESCRICAO.Value:=GetRegistro('IPI','IPI_CODIGO',TBParametrosPAR_CSTIPIPADRAO.Value).FieldByName('IPI_DESCRICAO').AsString;
  ///TBProdutosISS_DESCRICAO.Value:=
  TBProdutosMAR_DESCRICAO.Value:=GetRegistro('MARCAS','MAR_CODIGO',TBParametrosPAR_PROMARCA.Value).FieldByName('MAR_DESCRICAO').AsString;
  TBProdutosPIS_DESCRICAO.Value:=GetRegistro('PISCOFINS','PIS_CODIGO',TBParametrosPAR_CSTPISPADRAO.Value).FieldByName('PIS_DESCRICAO').AsString;
  TBProdutosPIS_DESCRICAO1.Value:=GetRegistro('PISCOFINS','PIS_CODIGO',TBParametrosPAR_CSTCOFINSPADRAO.Value).FieldByName('PIS_DESCRICAO').AsString;
  TBProdutosUNI_DESCRICAO.Value:=GetRegistro('UNIDADES','UNI_CODIGO',TBParametrosPAR_PROUNIDADE.Value).FieldByName('UNI_DESCRICAO').AsString;
end;

procedure TDM.TBProdutosAfterPost(DataSet: TDataSet);
begin
  TBProdutosQtde.Close; //necessário para quando troca o codigo do produto.
  TBProdutosQtde.Open;
  //cria os registros de almoxarifados para o novo produto.
  //insere na tabela produtosqtde. No afterdelete, elimina.
  if InserindoNovoProduto then
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select * from ALMOXARIFADOS order by ALM_CODIGO');
    QYAux.Open;
    QYAux.DisableControls;
    QYAux.First;
    while not QYAux.Eof do
    begin
      QYAux2.Close;
      QYAux2.SQL.Clear;
      QYAux2.SQL.Add('insert into PRODUTOSQTDE (PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE) values (:almoxarifado, :produto, :quantidade)');
      QYAux2.ParamByName('almoxarifado').AsInteger:=QYAux.FieldByName('ALM_CODIGO').AsInteger;
      QYAux2.ParamByName('produto').AsInteger:=TBProdutosPRO_CODIGO.Value;
      QYAux2.ParamByName('quantidade').AsInteger:=0;
      QYAux2.ExecSQL;
      TBProdutosQtde.Close;
      TBProdutosQtde.Open;
      QYAux.Next;
    end;
    QYAux.Close;
    QYAux.EnableControls;
  end;
end;

procedure TDM.TBProdutosBeforeDelete(DataSet: TDataSet);
begin
  CodigoMark:=TBProdutosPRO_CODIGO.Value; //guarda o codigo para eliminar as referencias em produtosqtde.
end;

procedure TDM.TBProdutosBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutos<>nil then
  FormMain.SetFields(FormProdutos,True);
end;

procedure TDM.TBProdutosBeforeInsert(DataSet: TDataSet);
begin
  if FormProdutos<>nil then
  begin
    FormMain.SetFields(FormProdutos,True);
    FormProdutos.PageControl1.ActivePageIndex:=0;
    FormProdutos.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBProdutosBeforePost(DataSet: TDataSet);
var Doc: IHtmlDocument2;
begin
  TBProdutosPRO_ATUALIZAR.Value:='S';
  if TBProdutosPRO_CONVERSAO.Value<=0 then
  TBProdutosPRO_CONVERSAO.Value:=1;
  TBProdutosPRO_CUBICO.Value:=TBProdutosPRO_ALTURA.Value * TBProdutosPRO_LARGURA.Value * TBProdutosPRO_PROFUNDIDADE.Value;
  TBProdutosPRO_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosPRO_HRATUALIZACAO.Value:=ServerTime;
  TBProdutosPRO_USUARIO.Value:=UsuarioLogin;

  TBProdutosPRO_NOME.Value:=Trim(TBProdutosPRO_NOME.Value);

  if TBProdutos.State in [dsInsert] then //para checar se deve ser criado os almoxarifados para o produto.
  InserindoNovoProduto:=True else
  InserindoNovoProduto:=False;

  //antes de salvar, atualiza o texto do campo blob com o novo HTML.
  if FormProdutosApresentacao<>nil then
  begin
    Doc:=FormProdutosApresentacao.FrameHtmlEditor1.WebBrowser1.Document as IHtmlDocument2;
    TBProdutosPRO_DESCRICAO.Value:=Doc.body.innerHTML;
  end;
end;

procedure TDM.DSProdutosDataChange(Sender: TObject; Field: TField);
begin
  if FormProdutosApresentacao<>nil then
  begin
    FormProdutosApresentacao.FrameHtmlEditor1.CarregarCodigoHTML(TBProdutosPRO_DESCRICAO.Value);
  end;
end;

procedure TDM.DSProdutosStateChange(Sender: TObject);
begin
  if TBProdutos.State in [dsInsert, dsEdit] then
  begin
    if FormProdutos<>nil then
    begin
      FormProdutos.AlterarComposicaoDoProduto1.Enabled:=False;
      FormProdutos.AnexosDoProduto1.Enabled:=False;
      FormProdutos.AnexosDoProduto1Button.Enabled:=False;
      FormProdutos.AtualizarCustoComposicao1.Enabled:=False;
      FormProdutos.AtualizarCustoComposicaoDosProdutosCompostos1.Enabled:=False;
      FormProdutos.AtualizarDescontoMaximo1.Enabled:=False;
      FormProdutos.AtualizarEstoqueAtual1.Enabled:=False;
      FormProdutos.AtualizarEstoqueAtualComASomaDosAlmoxarifados1.Enabled:=False;
      FormProdutos.AtualizarEstoqueMinimoEMaximo1.Enabled:=False;
      FormProdutos.AtualizarPrecoCustoComOCustoComposicao1.Enabled:=False;
      FormProdutos.AtualizarPrecoDeVenda1.Enabled:=False;
      FormProdutos.AtualizarPrecoDeVenda1Button.Enabled:=False;
      FormProdutos.AtualizarPrecoDeVenda2Button.Enabled:=False;
      FormProdutos.AtualizarPrecoDeVendaReajuste1.Enabled:=False;
      FormProdutos.AtualizarTabeladePrecos1.Enabled:=False;
      FormProdutos.CadastroDeLotes1.Enabled:=False;
      FormProdutos.CadastroDeLotes1Button.Enabled:=False;
      FormProdutos.CodigoDoProdutoNosFornecedores1.Enabled:=False;
      FormProdutos.CodigoDoProdutoNosFornecedores1Button.Enabled:=False;
      FormProdutos.ComposicaoDoProduto1.Enabled:=False;
      FormProdutos.ComposicaoDoProduto1Button.Enabled:=False;
      FormProdutos.DescricaoDoProdutoParaWebsite1.Enabled:=False;
      FormProdutos.DuplicarProduto1.Enabled:=False;
      FormProdutos.DuplicarProduto1Button.Enabled:=False;
      FormProdutos.Exportar1.Enabled:=False;
      FormProdutos.Exportar1Button.Enabled:=False;
      FormProdutos.FichaTecnica1.Enabled:=False;
      FormProdutos.FotosDoProduto1.Enabled:=False;
      FormProdutos.FotosDoProduto1Button.Enabled:=False;
      FormProdutos.Importar1.Enabled:=False;
      FormProdutos.Importar1Button.Enabled:=False;
      FormProdutos.ImpressaoDeEtiquetas1.Enabled:=False;
      FormProdutos.ImpressaoDeEtiquetas1Button.Enabled:=False;
      FormProdutos.Localizar1.Enabled:=False;
      FormProdutos.Localizar1Button.Enabled:=False;
      FormProdutos.ListagemDeProdutosEstiloDOS1.Enabled:=False;
      FormProdutos.ListagemDeProdutosEstiloDOSCusto1.Enabled:=False;
      FormProdutos.PosicaoAtualDoEstoque1.Enabled:=False;
      FormProdutos.PosicaoAtualDoEstoquePorAlmoxarifado1.Enabled:=False;
      FormProdutos.PosicaoAtualDoEstoquePorAlmoxarifadoSemValores1.Enabled:=False;
      FormProdutos.PosicaoAtualDoEstoqueSemValores1.Enabled:=False;
      FormProdutos.PrecoDeCustoMenorQueOPrecoDeCustoDaComposicao1.Enabled:=False;
      FormProdutos.Produtos1.Enabled:=False;
      FormProdutos.ProdutosComCodigosDeFornecedores1.Enabled:=False;
      FormProdutos.ProdutosCompostosAnalitico1.Enabled:=False;
      FormProdutos.ProdutosCompostosDeUmProduto1.Enabled:=False;
      FormProdutos.ProdutosCompostosSintetico1.Enabled:=False;
      FormProdutos.ProdutosComPrecoDeCustoZeradoOuNegativo1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMaximo1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMinimo1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeAcimaDoEstoqueMaximo1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeDiferenteDeZero1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeDiferenteDoTotalDosAlmoxarifados1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeNegativa1.Enabled:=False;
      FormProdutos.ProdutosComQuantidadeNegativaOuZerada1.Enabled:=False;
      FormProdutos.ProdutosPorUnidadeDeMedida1.Enabled:=False;
      FormProdutos.ProdutosVsProdutosReais1.Enabled:=False;
      FormProdutos.RecalcularCampoMargem1.Enabled:=False;
      FormProdutos.Relatorios2.Enabled:=False;
      FormProdutos.Relatorios2Button.Enabled:=False;
      FormProdutos.TabelaDePrecos1.Enabled:=False;
      FormProdutos.TabelaDePrecos1Button.Enabled:=False;
      FormProdutos.TabelaDePrecos2.Enabled:=False;
      FormProdutos.TabelaDePrecosSemAgrupamento1.Enabled:=False;
      FormProdutos.TransferirEstoqueEntreAlmoxarifados1Button.Enabled:=False;
      FormProdutos.TransformarEmProdutoComposto1.Enabled:=False;
      FormProdutos.TransformarEmProdutoSimples1.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormProdutos<>nil then
    begin
      FormProdutos.AlterarComposicaoDoProduto1.Enabled:=True;
      FormProdutos.AnexosDoProduto1.Enabled:=True;
      FormProdutos.AnexosDoProduto1Button.Enabled:=True;
      FormProdutos.AtualizarCustoComposicao1.Enabled:=True;
      FormProdutos.AtualizarCustoComposicaoDosProdutosCompostos1.Enabled:=True;
      FormProdutos.AtualizarDescontoMaximo1.Enabled:=True;
      FormProdutos.AtualizarEstoqueAtual1.Enabled:=True;
      FormProdutos.AtualizarEstoqueAtualComASomaDosAlmoxarifados1.Enabled:=True;
      FormProdutos.AtualizarEstoqueMinimoEMaximo1.Enabled:=True;
      FormProdutos.AtualizarPrecoCustoComOCustoComposicao1.Enabled:=True;
      FormProdutos.AtualizarPrecoDeVenda1.Enabled:=True;
      FormProdutos.AtualizarPrecoDeVenda1Button.Enabled:=True;
      FormProdutos.AtualizarPrecoDeVenda2Button.Enabled:=True;
      FormProdutos.AtualizarPrecoDeVendaReajuste1.Enabled:=True;
      FormProdutos.AtualizarTabeladePrecos1.Enabled:=True;
      FormProdutos.CadastroDeLotes1.Enabled:=True;
      FormProdutos.CadastroDeLotes1Button.Enabled:=True;
      FormProdutos.CodigoDoProdutoNosFornecedores1.Enabled:=True;
      FormProdutos.CodigoDoProdutoNosFornecedores1Button.Enabled:=True;
      FormProdutos.ComposicaoDoProduto1.Enabled:=True;
      FormProdutos.ComposicaoDoProduto1Button.Enabled:=True;
      FormProdutos.DescricaoDoProdutoParaWebsite1.Enabled:=True;
      FormProdutos.DuplicarProduto1.Enabled:=True;
      FormProdutos.DuplicarProduto1Button.Enabled:=True;
      FormProdutos.Exportar1.Enabled:=True;
      FormProdutos.Exportar1Button.Enabled:=True;
      FormProdutos.FichaTecnica1.Enabled:=True;
      FormProdutos.FotosDoProduto1.Enabled:=True;
      FormProdutos.FotosDoProduto1Button.Enabled:=True;
      FormProdutos.Importar1.Enabled:=True;
      FormProdutos.Importar1Button.Enabled:=True;
      FormProdutos.ImpressaoDeEtiquetas1.Enabled:=True;
      FormProdutos.ImpressaoDeEtiquetas1Button.Enabled:=True;
      FormProdutos.Localizar1.Enabled:=True;
      FormProdutos.Localizar1Button.Enabled:=True;
      FormProdutos.ListagemDeProdutosEstiloDOS1.Enabled:=True;
      FormProdutos.ListagemDeProdutosEstiloDOSCusto1.Enabled:=True;
      FormProdutos.PosicaoAtualDoEstoque1.Enabled:=True;
      FormProdutos.PosicaoAtualDoEstoquePorAlmoxarifado1.Enabled:=True;
      FormProdutos.PosicaoAtualDoEstoquePorAlmoxarifadoSemValores1.Enabled:=True;
      FormProdutos.PosicaoAtualDoEstoqueSemValores1.Enabled:=True;
      FormProdutos.PrecoDeCustoMenorQueOPrecoDeCustoDaComposicao1.Enabled:=True;
      FormProdutos.Produtos1.Enabled:=True;
      FormProdutos.ProdutosComCodigosDeFornecedores1.Enabled:=True;
      FormProdutos.ProdutosCompostosAnalitico1.Enabled:=True;
      FormProdutos.ProdutosCompostosDeUmProduto1.Enabled:=True;
      FormProdutos.ProdutosCompostosSintetico1.Enabled:=True;
      FormProdutos.ProdutosComPrecoDeCustoZeradoOuNegativo1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMaximo1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeAbaixoDoEstoqueMinimo1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeAcimaDoEstoqueMaximo1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeDiferenteDeZero1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeDiferenteDoTotalDosAlmoxarifados1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeNegativa1.Enabled:=True;
      FormProdutos.ProdutosComQuantidadeNegativaOuZerada1.Enabled:=True;
      FormProdutos.ProdutosPorUnidadeDeMedida1.Enabled:=True;
      FormProdutos.ProdutosVsProdutosReais1.Enabled:=True;
      FormProdutos.RecalcularCampoMargem1.Enabled:=True;
      FormProdutos.Relatorios2.Enabled:=True;
      FormProdutos.Relatorios2Button.Enabled:=True;
      FormProdutos.TabelaDePrecos1.Enabled:=True;
      FormProdutos.TabelaDePrecos1Button.Enabled:=True;
      FormProdutos.TabelaDePrecos2.Enabled:=True;
      FormProdutos.TabelaDePrecosSemAgrupamento1.Enabled:=True;
      FormProdutos.TransferirEstoqueEntreAlmoxarifados1Button.Enabled:=True;
      FormProdutos.TransformarEmProdutoComposto1.Enabled:=True;
      FormProdutos.TransformarEmProdutoSimples1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProdutos);
      FormMain.SetFields(FormProdutos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS CODIGOS - CODIGOS DOS FORNECEDORES PARA O PRODUTO                 //
//##############################################################################
{$REGION 'TABELA PRODUTOSCODIGOS'}
procedure TDM.TBProdutosCodigosAfterInsert(DataSet: TDataSet);
begin
  TBProdutosCodigosPCO_DTCADASTRO.Value:=ServerDate;
  TBProdutosCodigosPCO_HRCADASTRO.Value:=ServerTime;
  TBProdutosCodigosPCO_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value; //relacionamento.
end;

procedure TDM.TBProdutosCodigosBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutosCodigos<>nil then
  FormMain.SetFields(FormProdutosCodigos,True);
end;

procedure TDM.TBProdutosCodigosBeforeInsert(DataSet: TDataSet);
begin
  if FormProdutosCodigos<>nil then
  begin
    FormMain.SetFields(FormProdutosCodigos,True);
    FormProdutosCodigos.DBEdit5.SetFocus;
  end;
end;

procedure TDM.TBProdutosCodigosBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBProdutosCodigosPCO_CODIGO.Value;
  TBProdutosCodigosPCO_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosCodigosPCO_HRATUALIZACAO.Value:=ServerTime;
  TBProdutosCodigosPCO_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSProdutosCodigosStateChange(Sender: TObject);
begin
  if TBProdutosCodigos.State in [dsInsert, dsEdit] then
  begin
    if FormProdutosCodigos<>nil then
    begin
      FormProdutosCodigos.Localizar1.Enabled:=False;
      FormProdutosCodigos.Localizar1Button.Enabled:=False;
      FormProdutosCodigos.Relatorios2.Enabled:=False;
      FormProdutosCodigos.Relatorios2Button.Enabled:=False;
      FormProdutosCodigos.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormProdutosCodigos<>nil then
    begin
      FormProdutosCodigos.Localizar1.Enabled:=True;
      FormProdutosCodigos.Localizar1Button.Enabled:=True;
      FormProdutosCodigos.Relatorios2.Enabled:=True;
      FormProdutosCodigos.Relatorios2Button.Enabled:=True;
      FormProdutosCodigos.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProdutosCodigos);
      FormMain.SetFields(FormProdutosCodigos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS COMPONENTES - DO QUE É FORMADO O PRODUTO                          //
//##############################################################################
{$REGION 'TABELA PRODUTOSCOMP'}
procedure TDM.TBProdutosCompAfterEdit(DataSet: TDataSet);
begin
  if FormProdutosComp<>nil then
  begin
    FormProdutosComp.DBEdit5.Enabled:=False;
    FormProdutosComp.DBEdit5.ReadOnly:=True;
    FormProdutosComp.DBEdit5.Color:=clBtnFace;
    FormProdutosComp.SpeedButton9.Enabled:=False;
  end;
end;

procedure TDM.TBProdutosCompAfterInsert(DataSet: TDataSet);
begin
  TBProdutosCompPRC_BAIXAR.Value:='S';
  TBProdutosCompPRC_DTCADASTRO.Value:=ServerDate;
  TBProdutosCompPRC_HRCADASTRO.Value:=ServerTime;
  TBProdutosCompPRC_QUANTIDADE.Value:=1;
  TBProdutosCompPRC_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value; //relacionamento.
end;

procedure TDM.TBProdutosCompBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutosComp<>nil then
  FormMain.SetFields(FormProdutosComp,True);
end;

procedure TDM.TBProdutosCompBeforeInsert(DataSet: TDataSet);
begin
  if FormProdutosComp<>nil then
  begin
    FormProdutosComp.DBEdit5.Enabled:=True;
    FormProdutosComp.DBEdit5.ReadOnly:=False;
    FormProdutosComp.DBEdit5.Color:=clWindow;
    FormProdutosComp.SpeedButton9.Enabled:=True;
    FormMain.SetFields(FormProdutosComp,True);
    FormProdutosComp.DBEdit5.SetFocus;
  end;
end;

procedure TDM.TBProdutosCompBeforePost(DataSet: TDataSet);
begin
  TBProdutosCompPRC_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosCompPRC_HRATUALIZACAO.Value:=ServerTime;
  TBProdutosCompPRC_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSProdutosCompStateChange(Sender: TObject);
begin
  if TBProdutosComp.State in [dsInsert, dsEdit] then
  begin
    if FormProdutosComp<>nil then
    begin
      FormProdutosComp.ComposicaoDoProduto1.Enabled:=False;
      FormProdutosComp.ComposicaoDoProduto1Button.Enabled:=False;
      FormProdutosComp.PrecoDeVendaDaComposicao1.Enabled:=False;
      FormProdutosComp.PrecoDeVendaDaComposicao1Button.Enabled:=False;
      FormProdutosComp.SugerirOrdenacao1.Enabled:=False;
      FormProdutosComp.SugerirOrdenacao1Button.Enabled:=False;
      FormProdutosComp.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormProdutosComp<>nil then
    begin
      FormProdutosComp.ComposicaoDoProduto1.Enabled:=True;
      FormProdutosComp.ComposicaoDoProduto1Button.Enabled:=True;
      FormProdutosComp.PrecoDeVendaDaComposicao1.Enabled:=True;
      FormProdutosComp.PrecoDeVendaDaComposicao1Button.Enabled:=True;
      FormProdutosComp.SugerirOrdenacao1.Enabled:=True;
      FormProdutosComp.SugerirOrdenacao1Button.Enabled:=True;
      FormProdutosComp.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProdutosComp);
      FormMain.SetFields(FormProdutosComp,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS ETAPAS DE PRODUCAO                                                //
//##############################################################################
{$REGION 'TABELA PRODUTOSETAPAS'}
procedure TDM.TBProdutosEtapasAfterInsert(DataSet: TDataSet);
begin
  TBProdutosEtapasPET_DTCADASTRO.Value:=ServerDate;
  TBProdutosEtapasPET_HRCADASTRO.Value:=ServerDate;
  TBProdutosEtapasPET_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value; //relacionamento.
end;

procedure TDM.TBProdutosEtapasBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutosEtapas<>nil then
  FormMain.SetFields(FormProdutosEtapas,True);
end;

procedure TDM.TBProdutosEtapasBeforeInsert(DataSet: TDataSet);
begin
  if FormProdutosEtapas<>nil then
  begin
    FormMain.SetFields(FormProdutosEtapas,True);
    FormProdutosEtapas.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBProdutosEtapasBeforePost(DataSet: TDataSet);
begin
  TBProdutosEtapasPET_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosEtapasPET_HRATUALIZACAO.Value:=ServerTime;
  TBProdutosEtapasPET_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSProdutosEtapasStateChange(Sender: TObject);
begin
  if TBProdutosEtapas.State in [dsInsert, dsEdit] then
  begin
    if FormProdutosEtapas<>nil then
    begin
      FormProdutosEtapas.InserirRegistro1.Enabled:=False;
      FormProdutosEtapas.InserirRegistro1Button.Enabled:=False;
      FormProdutosEtapas.EliminarRegistro1.Enabled:=False;
      FormProdutosEtapas.EliminarRegistro1Button.Enabled:=False;
      FormProdutosEtapas.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormProdutosEtapas<>nil then
    begin
      FormProdutosEtapas.InserirRegistro1.Enabled:=True;
      FormProdutosEtapas.InserirRegistro1Button.Enabled:=True;
      FormProdutosEtapas.EliminarRegistro1.Enabled:=True;
      FormProdutosEtapas.EliminarRegistro1Button.Enabled:=True;
      FormProdutosEtapas.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProdutosEtapas);
      FormMain.SetFields(FormProdutosEtapas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS FOTOS                                                             //
//##############################################################################
{$REGION 'TABELA PRODUTOSFOTOS'}
procedure TDM.TBProdutosFotosAfterInsert(DataSet: TDataSet);
begin
  TBProdutosFotosPRF_DTCADASTRO.Value:=ServerDate;
  TBProdutosFotosPRF_HRCADASTRO.Value:=ServerTime;
  TBProdutosFotosPRF_PRINCIPAL.Value:='N';
  TBProdutosFotosPRF_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value; //relacionamento.
end;

procedure TDM.TBProdutosFotosBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutosFotos<>nil then
  FormMain.SetFields(FormProdutosFotos,True);
end;

procedure TDM.TBProdutosFotosBeforeInsert(DataSet: TDataSet);
begin
  if FormProdutosFotos<>nil then
  begin
    FormMain.SetFields(FormProdutosFotos,True);
    FormProdutosFotos.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBProdutosFotosBeforePost(DataSet: TDataSet);
begin
  TBProdutosFotosPRF_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosFotosPRF_HRATUALIZACAO.Value:=ServerTime;
  TBProdutosFotosPRF_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSProdutosFotosDataChange(Sender: TObject; Field: TField);
begin
  if FormProdutosFotos<>nil then
  begin
    FormProdutosFotos.Image1.Picture.LoadFromFile(
      TBParametrosPAR_LOCALFOTOSPRODUTOS.Value+'\'+
      AlignText(TBProdutosPRO_CODIGO.Value.ToString,'0',8,taRight)+'\'+TBParametrosPAR_PASTAHIGH.Value+'\'+
      TBProdutosFotosPRF_ARQUIVO.Value
    );
  end;
end;

procedure TDM.DSProdutosFotosStateChange(Sender: TObject);
begin
  if TBProdutosFotos.State in [dsInsert, dsEdit] then
  begin
    if FormProdutosFotos<>nil then
    begin
      FormProdutosFotos.InserirRegistro1.Enabled:=False;
      FormProdutosFotos.InserirRegistro1Button.Enabled:=False;
      FormProdutosFotos.EliminarRegistro1.Enabled:=False;
      FormProdutosFotos.EliminarRegistro1Button.Enabled:=False;
      FormProdutosFotos.EnviarImagensPorEmail1.Enabled:=False;
      FormProdutosFotos.EnviarImagensPorEmail1Button.Enabled:=False;
      FormProdutosFotos.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormProdutosFotos<>nil then
    begin
      FormProdutosFotos.InserirRegistro1.Enabled:=True;
      FormProdutosFotos.InserirRegistro1Button.Enabled:=True;
      FormProdutosFotos.EliminarRegistro1.Enabled:=True;
      FormProdutosFotos.EliminarRegistro1Button.Enabled:=True;
      FormProdutosFotos.EnviarImagensPorEmail1.Enabled:=True;
      FormProdutosFotos.EnviarImagensPorEmail1Button.Enabled:=True;
      FormProdutosFotos.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProdutosFotos);
      FormMain.SetFields(FormProdutosFotos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRODUTOS X ALMOXARIFADOS - QTDE EM CADA ALMOXARIFADO.                      //
//##############################################################################
//nada

//##############################################################################
// RECEBER - CONTAS A RECEBER                                                 //
//##############################################################################
{$REGION 'TABELA RECEBER'}
procedure TDM.TBReceberAfterEdit(DataSet: TDataSet);
begin
  if TBReceberREE_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma conta já baixada.',mtWarning,[mbOk],0);
    TBReceber.Cancel;
  end;
  if TBReceberREE_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar uma conta já cancelada.',mtWarning,[mbOk],0);
    TBReceber.Cancel;
  end;
end;

procedure TDM.TBReceberAfterInsert(DataSet: TDataSet);
begin
  TBReceberREE_ACRESCIMOPORC.Value:=0;
  TBReceberREE_ACRESCIMOVALOR.Value:=0;
  TBReceberREE_CONTA.Value:=TBParametrosPAR_CONTAPADRAO.Value;
  TBReceberREE_DESCPORCVENCIMENTO.Value:=0;
  TBReceberREE_DTCADASTRO.Value:=ServerDate;
  TBReceberREE_DTEMISSAO.Value:=TBReceberREE_DTCADASTRO.Value;
  TBReceberREE_HRCADASTRO.Value:=ServerTime;
  TBReceberREE_PARCELANUM.Value:=1;
  TBReceberREE_PARCELAQTDE.Value:=1;
  TBReceberREE_PORCJUROS.Value:=TBParametrosPAR_JUROSMENSAL.Value;
  TBReceberREE_STATUS.Value:='A';
  TBReceberREE_VALOR.Value:=0;
  TBReceberREE_VALORACESSORIAS.Value:=0;
end;

procedure TDM.TBReceberAfterPost(DataSet: TDataSet);
begin
  //se tiver um boleto associado e este ainda estiver em aberto, edita e salva para recalcular a linha digitável e código de barras.
  if not TBReceberREE_BOLETO.IsNull then
  begin
    DM2.TBBoletos.Close;
    DM2.TBBoletos.ParamByName('codigo').AsInteger:=TBReceberREE_BOLETO.Value;
    DM2.TBBoletos.Open;
    if DM2.TBBoletosBOL_STATUS.Value='A' then
    begin
      DM2.TBBoletos.Edit;
      DM2.TBBoletos.Post;
    end;
  end;
end;

procedure TDM.TBReceberBeforeEdit(DataSet: TDataSet);
begin
  if FormReceber<>nil then
  FormMain.SetFields(FormReceber,True);
end;

procedure TDM.TBReceberBeforeInsert(DataSet: TDataSet);
begin
  if FormReceber<>nil then
  begin
    FormMain.SetFields(FormReceber,True);
    FormReceber.DBComboBox1.SetFocus;
  end;
end;

procedure TDM.TBReceberBeforePost(DataSet: TDataSet);
begin
  TBReceberREE_DTATUALIZACAO.Value:=ServerDate;
  TBReceberREE_HRATUALIZACAO.Value:=ServerTime;
  TBReceberREE_USUARIO.Value:=UsuarioLogin;
  if not TBReceberREE_DTVENCIMENTO.IsNull then
  begin
    if TBReceberREE_DTVENCIMENTO.Value<TBReceberREE_DTEMISSAO.Value then
    TBReceberREE_DIASPRAZO.Value:=0 else
    TBReceberREE_DIASPRAZO.Value:=DaysBetween(TBReceberREE_DTVENCIMENTO.Value,TBReceberREE_DTEMISSAO.Value);
  end;
  if not TBReceberREE_DTPAGAMENTO.IsNull then
  begin
    if TBReceberREE_DTPAGAMENTO.Value<TBReceberREE_DTVENCIMENTO.Value then
    TBReceberREE_DIASATRASO.Value:=0 else
    TBReceberREE_DIASATRASO.Value:=DaysBetween(TBReceberREE_DTVENCIMENTO.Value,TBReceberREE_DTPAGAMENTO.Value);
  end;
end;

procedure TDM.DSReceberStateChange(Sender: TObject);
begin
  if TBReceber.State in [dsInsert, dsEdit] then
  begin
    if FormReceber<>nil then
    begin
      FormReceber.BaixaColetiva1.Enabled:=False;
      FormReceber.BaixaColetiva1Button.Enabled:=False;
      FormReceber.BaixaParcial1.Enabled:=False;
      FormReceber.BaixaParcial1Button.Enabled:=False;
      FormReceber.BaixaTotal1.Enabled:=False;
      FormReceber.BaixaTotal1Button.Enabled:=False;
      FormReceber.CadastroDeBoletos1.Enabled:=False;
      FormReceber.CadastroDeBoletos1Button.Enabled:=False;
      FormReceber.CancelarContaAReceber1.Enabled:=False;
      FormReceber.CancelarContaAReceber1Button.Enabled:=False;
      FormReceber.CarneDePagamentos1.Enabled:=False;
      FormReceber.ComposicaoDoValorAcessorias1.Enabled:=False;
      FormReceber.ComposicaoDoValorAcessorias1Button.Enabled:=False;
      FormReceber.ContasAReceberPorClienteRetrato1.Enabled:=False;
      FormReceber.ContasAReceberPorClientePaisagem1.Enabled:=False;
      FormReceber.ContasAReceberPorData1.Enabled:=False;
      FormReceber.ContasAReceberPorDataSintetico1.Enabled:=False;
      FormReceber.ContasAReceberPorReceitaAnalitico1.Enabled:=False;
      FormReceber.ContasAReceberPorReceitaSintetico1.Enabled:=False;
      FormReceber.ContasAReceberPorTipoDeDocumentoSintetico1.Enabled:=False;
      FormReceber.ContasAReceberPorVendedor1.Enabled:=False;
      FormReceber.ContasAReceberPorVendedorSintetico1.Enabled:=False;
      FormReceber.EstornarBaixa1.Enabled:=False;
      FormReceber.EstornarBaixa1Button.Enabled:=False;
      FormReceber.FluxoDeCaixa1.Enabled:=False;
      FormReceber.FluxoDeCaixa1Button.Enabled:=False;
      FormReceber.GerarBoleto1.Enabled:=False;
      FormReceber.GerarBoleto1Button.Enabled:=False;
      FormReceber.Localizar1.Enabled:=False;
      FormReceber.Localizar1Button.Enabled:=False;
      FormReceber.MultiplicarContaAReceber1.Enabled:=False;
      FormReceber.MultiplicarContaAReceber1Button.Enabled:=False;
      FormReceber.PreBaixa1.Enabled:=False;
      FormReceber.PreBaixa1Button.Enabled:=False;
      FormReceber.ReciboDePagamento1Via1.Enabled:=False;
      FormReceber.ReciboDePagamento2Vias1.Enabled:=False;
      FormReceber.Relatorios2.Enabled:=False;
      FormReceber.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormReceber<>nil then
    begin
      FormReceber.BaixaColetiva1.Enabled:=True;
      FormReceber.BaixaColetiva1Button.Enabled:=True;
      FormReceber.BaixaParcial1.Enabled:=True;
      FormReceber.BaixaParcial1Button.Enabled:=True;
      FormReceber.BaixaTotal1.Enabled:=True;
      FormReceber.BaixaTotal1Button.Enabled:=True;
      FormReceber.CadastroDeBoletos1.Enabled:=True;
      FormReceber.CadastroDeBoletos1Button.Enabled:=True;
      FormReceber.CancelarContaAReceber1.Enabled:=True;
      FormReceber.CancelarContaAReceber1Button.Enabled:=True;
      FormReceber.CarneDePagamentos1.Enabled:=True;
      FormReceber.ComposicaoDoValorAcessorias1.Enabled:=True;
      FormReceber.ComposicaoDoValorAcessorias1Button.Enabled:=True;
      FormReceber.ContasAReceberPorClienteRetrato1.Enabled:=True;
      FormReceber.ContasAReceberPorClientePaisagem1.Enabled:=True;
      FormReceber.ContasAReceberPorData1.Enabled:=True;
      FormReceber.ContasAReceberPorDataSintetico1.Enabled:=True;
      FormReceber.ContasAReceberPorReceitaAnalitico1.Enabled:=True;
      FormReceber.ContasAReceberPorReceitaSintetico1.Enabled:=True;
      FormReceber.ContasAReceberPorTipoDeDocumentoSintetico1.Enabled:=True;
      FormReceber.ContasAReceberPorVendedor1.Enabled:=True;
      FormReceber.ContasAReceberPorVendedorSintetico1.Enabled:=True;
      FormReceber.EstornarBaixa1.Enabled:=True;
      FormReceber.EstornarBaixa1Button.Enabled:=True;
      FormReceber.FluxoDeCaixa1.Enabled:=True;
      FormReceber.FluxoDeCaixa1Button.Enabled:=True;
      FormReceber.GerarBoleto1.Enabled:=True;
      FormReceber.GerarBoleto1Button.Enabled:=True;
      FormReceber.Localizar1.Enabled:=True;
      FormReceber.Localizar1Button.Enabled:=True;
      FormReceber.MultiplicarContaAReceber1.Enabled:=True;
      FormReceber.MultiplicarContaAReceber1Button.Enabled:=True;
      FormReceber.PreBaixa1.Enabled:=True;
      FormReceber.PreBaixa1Button.Enabled:=True;
      FormReceber.ReciboDePagamento1Via1.Enabled:=True;
      FormReceber.ReciboDePagamento2Vias1.Enabled:=True;
      FormReceber.Relatorios2.Enabled:=True;
      FormReceber.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormReceber);
      FormMain.SetFields(FormReceber,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// RECEBER - COMPOSIÇÃO DO VALOR ACESSÓRIAS                                   //
//##############################################################################
{$REGION 'TABELA RECEBERITENS'}
procedure TDM.TBReceberItensAfterInsert(DataSet: TDataSet);
begin
  TBReceberItensREI_RECEBER.Value:=TBReceberREE_CODIGO.Value;
  TBReceberItensREI_VALOR.Value:=0;
end;

procedure TDM.TBReceberItensBeforeEdit(DataSet: TDataSet);
begin
  if FormReceberItens<>nil then
  FormMain.SetFields(FormReceberItens,True);
end;

procedure TDM.TBReceberItensBeforeInsert(DataSet: TDataSet);
begin
  if FormReceberItens<>nil then
  begin
    FormMain.SetFields(FormReceberItens,True);
    FormReceberItens.DBEdit8.SetFocus;
  end;
end;

procedure TDM.DSReceberItensStateChange(Sender: TObject);
begin
  if TBReceberItens.State in [dsInsert, dsEdit] then
  begin
    if FormReceberItens<>nil then
    begin
      //Relatórios.
      //...
    end;
  end else
  begin
    if FormReceberItens<>nil then
    begin
      FormMain.DesabilitarControles(FormReceberItens);
      FormMain.SetFields(FormReceberItens,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// RECEITAS                                                                   //
//##############################################################################
{$REGION 'TABELA RECEITAS'}
procedure TDM.TBReceitasAfterInsert(DataSet: TDataSet);
begin
  TBReceitasREC_DTCADASTRO.Value:=ServerDate;
  TBReceitasREC_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBReceitasBeforeEdit(DataSet: TDataSet);
begin
  if FormReceitas<>nil then
  FormMain.SetFields(FormReceitas,True);
end;

procedure TDM.TBReceitasBeforeInsert(DataSet: TDataSet);
begin
  if FormReceitas<>nil then
  begin
    FormMain.SetFields(FormReceitas,True);
    FormReceitas.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBReceitasBeforePost(DataSet: TDataSet);
begin
  TBReceitasREC_DTATUALIZACAO.Value:=ServerDate;
  TBReceitasREC_HRATUALIZACAO.Value:=ServerTime;
  TBReceitasREC_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSReceitasStateChange(Sender: TObject);
begin
  if TBReceitas.State in [dsInsert, dsEdit] then
  begin
    if FormReceitas<>nil then
    begin
      FormReceitas.Localizar1.Enabled:=False;
      FormReceitas.Localizar1Button.Enabled:=False;
      FormReceitas.Relatorios2.Enabled:=False;
      FormReceitas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormReceitas<>nil then
    begin
      FormReceitas.Localizar1.Enabled:=True;
      FormReceitas.Localizar1Button.Enabled:=True;
      FormReceitas.Relatorios2.Enabled:=True;
      FormReceitas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormReceitas);
      FormMain.SetFields(FormReceitas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// REGRAS FISCAIS                                                             //
//##############################################################################
{$REGION 'TABELA REGRASFISCAIS'}
procedure TDM.TBRegrasFiscaisAfterInsert(DataSet: TDataSet);
begin
  TBRegrasFiscaisRGF_DTCADASTRO.Value:=ServerDate;
  TBRegrasFiscaisRGF_HRCADASTRO.Value:=ServerTime;
end;

procedure TDM.TBRegrasFiscaisBeforeEdit(DataSet: TDataSet);
begin
  if FormRegrasFiscais<>nil then
  FormMain.SetFields(FormRegrasFiscais,True);
end;

procedure TDM.TBRegrasFiscaisBeforeInsert(DataSet: TDataSet);
begin
  if FormRegrasFiscais<>nil then
  begin
    FormMain.SetFields(FormRegrasFiscais,True);
    FormRegrasFiscais.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBRegrasFiscaisBeforePost(DataSet: TDataSet);
begin
  TBRegrasFiscaisRGF_CSTIBSCBS.Value:=Copy(TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
  TBRegrasFiscaisRGF_CSTIS.Value:=Copy(TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
  TBRegrasFiscaisRGF_DTATUALIZACAO.Value:=ServerDate;
  TBRegrasFiscaisRGF_HRATUALIZACAO.Value:=ServerTime;
  TBRegrasFiscaisRGF_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSRegrasFiscaisStateChange(Sender: TObject);
begin
  if TBRegrasFiscais.State in [dsInsert, dsEdit] then
  begin
    if FormRegrasFiscais<>nil then
    begin
      FormRegrasFiscais.Localizar1.Enabled:=False;
      FormRegrasFiscais.Localizar1Button.Enabled:=False;
      FormRegrasFiscais.Relatorios2.Enabled:=False;
      FormRegrasFiscais.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormRegrasFiscais<>nil then
    begin
      FormRegrasFiscais.Localizar1.Enabled:=True;
      FormRegrasFiscais.Localizar1Button.Enabled:=True;
      FormRegrasFiscais.Relatorios2.Enabled:=True;
      FormRegrasFiscais.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormRegrasFiscais);
      FormMain.SetFields(FormRegrasFiscais,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// RUAS                                                                       //
//##############################################################################
{$REGION 'TABELA RUAS'}
procedure TDM.TBRuasBeforeEdit(DataSet: TDataSet);
begin
  if FormEnderecos<>nil then
  FormMain.SetFields(FormEnderecos,True);
end;

procedure TDM.TBRuasBeforeInsert(DataSet: TDataSet);
begin
  if (FormEnderecos<>nil) and (FormEnderecos.Active) then
  begin
    FormMain.SetFields(FormEnderecos,True);
    FormEnderecos.DBEdit19.SetFocus;
  end;
end;

procedure TDM.DSRuasStateChange(Sender: TObject);
begin
  if TBRuas.State in [dsInsert, dsEdit] then
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=False;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=False;
      FormEnderecos.Localizar1.Enabled:=False;
      FormEnderecos.Localizar1Button.Enabled:=False;
      FormEnderecos.Relatorios1.Enabled:=False;
      FormEnderecos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormEnderecos<>nil then
    begin
      FormEnderecos.ConsultarCEPNosCorreios1.Enabled:=True;
      FormEnderecos.ConsultarCEPNosCorreios1Button.Enabled:=True;
      FormEnderecos.Localizar1.Enabled:=True;
      FormEnderecos.Localizar1Button.Enabled:=True;
      FormEnderecos.Relatorios1.Enabled:=True;
      FormEnderecos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEnderecos);
      FormMain.SetFields(FormEnderecos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ORDENS DE SERVICOS                                                         //
//##############################################################################
{$REGION 'TABELA SERVICOS'}
procedure TDM.CalcularTotaisServicos(DarPost: Boolean);
begin
  TBServicos.Edit;
  //atualiza o total dos PRODUTOS na tabela servicos.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(SEI_VALORTOTAL) as TOTALPRODUTOS from SERVICOSITENS where SEI_TIPO=''P'' and SEI_SERVICO=:servico');
  QYAux.ParamByName('servico').AsInteger:=TBServicosSER_CODIGO.Value;
  QYAux.Open;
  TBServicosSER_TOTALPRODUTOS.Value:=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;

  //atualiza o total dos SERVICOS na tabela servicos.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(SEI_VALORTOTAL) as TOTALSERVICOS from SERVICOSITENS where SEI_TIPO=''S'' and SEI_SERVICO=:servico');
  QYAux.ParamByName('servico').AsInteger:=TBServicosSER_CODIGO.Value;
  QYAux.Open;
  TBServicosSER_TOTALSERVICOS.Value:=QYAux.FieldByName('TOTALSERVICOS').AsExtended;

  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select '+
                'sum(SEI_BASEICMS) as BASEICMS, '+
                'sum(SEI_BASEICMSST) as BASEICMSST, '+
                //'sum(SEI_BASEII) as BASEII, '+
                'sum(SEI_BASEISS) as BASEISS, '+
                'sum(SEI_BASEIPI) as BASEIPI, '+
                'sum(SEI_BASEPIS) as BASEPIS, '+
                'sum(SEI_BASEPISST) as BASEPISST, '+
                'sum(SEI_BASECOFINS) as BASECOFINS, '+
                'sum(SEI_BASECOFINSST) as BASECOFINSST, '+
                'sum(SEI_DESCVALOR) as VALORDESCONTO, '+
                'sum(SEI_PESOTOTAL) as PESOTOTAL, '+
                'sum(SEI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
                'max(SEI_SEQUENCIA) as SEQUENCIA, '+
                'sum(SEI_VALORACESSORIAS) as VALORACESSORIAS, '+
                //'sum(SEI_VALORADUANA) as VALORADUANA, '+
                'sum(SEI_VALORCOFINS) as VALORCOFINS, '+
                'sum(SEI_VALORCOFINSST) as VALORCOFINSST, '+
                'sum(SEI_VALORCOMISSAO) as VALORCOMISSAO, '+
                'sum(SEI_VALORFCP) as VALORFCP, '+
                'sum(SEI_VALORFCPST) as VALORFCPST, '+
                'sum(SEI_VALORFRETE) as VALORFRETE, '+
                'sum(SEI_VALORICMS) as VALORICMS, '+
                'sum(SEI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
                'sum(SEI_VALORICMSST) as VALORICMSST, '+
                'sum(SEI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
                'sum(SEI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
                //'sum(SEI_VALORII) as VALORII, '+
                //'sum(SEI_VALORIOF) as VALORIOF, '+
                'sum(SEI_VALORIPI) as VALORIPI, '+
                'sum(SEI_VALORISS) as VALORISS, '+
                'sum(SEI_VALORISSDEDUCAO) as VALORISSDEDUCAO, '+
                'sum(SEI_VALORISSDESCCOND) as VALORISSDESCCOND, '+
                'sum(SEI_VALORISSDESCINCOND) as VALORISSDESCINCOND, '+
                'sum(SEI_VALORISSOUTROS) as VALORISSOUTROS, '+
                'sum(SEI_VALORISSRETENCAO) as VALORISSRETENCAO, '+
                'sum(SEI_VALORPIS) as VALORPIS, '+
                'sum(SEI_VALORPISST) as VALORPISST, '+
                'sum(SEI_VALORSEGURO) as VALORSEGURO, '+
                'sum(SEI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
                'sum(SEI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
                'sum(SEI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
                'sum(SEI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
                'sum(SEI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
                'sum(SEI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN '+
                'from SERVICOSITENS where SEI_SERVICO=:servico and SEI_COMPOETOTAL=''S''');
  QYAux.ParamByName('servico').AsInteger:=TBServicosSER_CODIGO.Value;
  QYAux.Open;

  //atualiza totais na tabela servicos.
  TBServicosSER_BASECOFINS.Value        :=QYAux.FieldByName('BASECOFINS').AsExtended;
  TBServicosSER_BASECOFINSST.Value      :=QYAux.FieldByName('BASECOFINSST').AsExtended;
  TBServicosSER_BASEICMS.Value          :=QYAux.FieldByName('BASEICMS').AsExtended;
  TBServicosSER_BASEICMSST.Value        :=QYAux.FieldByName('BASEICMSST').AsExtended;
  //TBServicosSER_BASEII.Value            :=QYAux.FieldByName('BASEII').AsExtended;
  TBServicosSER_BASEIPI.Value           :=QYAux.FieldByName('BASEIPI').AsExtended;
  TBServicosSER_BASEISS.Value           :=QYAux.FieldByName('BASEISS').AsExtended;
  TBServicosSER_BASEPIS.Value           :=QYAux.FieldByName('BASEPIS').AsExtended;
  TBServicosSER_BASEPISST.Value         :=QYAux.FieldByName('BASEPISST').AsExtended;
  TBServicosSER_CUSTOTOTAL.Value        :=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
  TBServicosSER_DESCVALOR.Value         :=QYAux.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBServicosSER_PESOLIQ.Value           :=QYAux.FieldByName('PESOTOTAL').AsFloat;
  TBServicosSER_SEQUENCIAITEM.Value     :=QYAux.FieldByName('SEQUENCIA').AsInteger;
  //TBServicosSER_TOTALADUANA.Value       :=QYAux.FieldByName('VALORADUANA').AsExtended;
  TBServicosSER_TOTALBRUTO.Value        :=QYAux.FieldByName('VALORTOTALBRUTO').AsExtended;
  TBServicosSER_TOTALCOFINS.Value       :=QYAux.FieldByName('VALORCOFINS').AsExtended;
  TBServicosSER_TOTALCOFINSST.Value     :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
  TBServicosSER_TOTALCOMISSAO.Value     :=QYAux.FieldByName('VALORCOMISSAO').AsExtended;
  TBServicosSER_TOTALFCP.Value          :=QYAux.FieldByName('VALORFCP').AsExtended;
  TBServicosSER_TOTALFCPST.Value        :=QYAux.FieldByName('VALORFCPST').AsExtended;
  TBServicosSER_TOTALICMS.Value         :=QYAux.FieldByName('VALORICMS').AsExtended;
  TBServicosSER_TOTALICMSCREDSN.Value   :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
  TBServicosSER_TOTALICMSST.Value       :=QYAux.FieldByName('VALORICMSST').AsExtended;
  TBServicosSER_TOTALICMSUFDEST.Value   :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
  TBServicosSER_TOTALICMSUFREMET.Value  :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
  //TBServicosSER_TOTALII.Value           :=QYAux.FieldByName('VALORII').AsExtended;
  //TBServicosSER_TOTALIOF.Value          :=QYAux.FieldByName('VALORIOF').AsExtended;
  TBServicosSER_TOTALIPI.Value          :=QYAux.FieldByName('VALORIPI').AsExtended;
  TBServicosSER_TOTALISS.Value          :=QYAux.FieldByName('VALORISS').AsExtended;
  TBServicosSER_TOTALISSDEDUCAO.Value   :=QYAux.FieldByName('VALORISSDEDUCAO').AsExtended;
  TBServicosSER_TOTALISSDESCCOND.Value  :=QYAux.FieldByName('VALORISSDESCCOND').AsExtended;
  TBServicosSER_TOTALISSDESCINCOND.Value:=QYAux.FieldByName('VALORISSDESCINCOND').AsExtended;
  TBServicosSER_TOTALISSOUTROS.Value    :=QYAux.FieldByName('VALORISSOUTROS').AsExtended;
  TBServicosSER_TOTALISSRETENCAO.Value  :=QYAux.FieldByName('VALORISSRETENCAO').AsExtended;
  TBServicosSER_TOTALITENS.Value        :=TBServicosSER_TOTALPRODUTOS.Value+TBServicosSER_TOTALSERVICOS.Value; //total produtos e total serviços é calculado quando se insere um item.
  TBServicosSER_TOTALPIS.Value          :=QYAux.FieldByName('VALORPIS').AsExtended;
  TBServicosSER_TOTALPISST.Value        :=QYAux.FieldByName('VALORPISST').AsExtended;
  TBServicosSER_TOTALTRIBUTOS.Value     :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
  TBServicosSER_TOTALTRIBUTOSEST.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
  TBServicosSER_TOTALTRIBUTOSFED.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
  TBServicosSER_TOTALTRIBUTOSIMP.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
  TBServicosSER_TOTALTRIBUTOSMUN.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
  TBServicosSER_VALORFRETE.Value        :=QYAux.FieldByName('VALORFRETE').AsExtended;
  TBServicosSER_VALORSEGURO.Value       :=QYAux.FieldByName('VALORSEGURO').AsExtended;
  TBServicosSER_VALORDESPACES.Value     :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;

  //calcula o valor total da venda.
  //(+) vProd                    //
  //(-) vDesc                    //
  //(-) vICMSDeson               //
  //(+) vST                      //
  //(+) vFCPST                   //
  //(+) vFrete                   //
  //(+) vSeg                     //
  //(+) vOutro                   //
  //(+) vII                      //
  //(+) vIPI                     //
  //(+) vIPIDevol                //
  //(+) vServ                    //
  //(+) vPISST                   //
  //(+) vCofinsST                //
  TBServicosSER_VALORTOTAL.Value:=TBServicosSER_TOTALBRUTO.Value- //totalitens já contem produtos e serviços.
                                  TBServicosSER_DESCVALOR.Value-
                                  //QYAux.FieldByName('VALORICMSDESONERADO').AsExtended+
                                  TBServicosSER_TOTALICMSST.Value+
                                  TBServicosSER_TOTALFCPST.Value+
                                  TBServicosSER_VALORFRETE.Value+
                                  TBServicosSER_VALORSEGURO.Value+
                                  TBServicosSER_VALORDESPACES.Value+
                                  //TBServicosSER_TOTALII.Value+
                                  TBServicosSER_TOTALIPI.Value; //+
                                  //nao tenho esse campo. TBNfeNFE_TOTALIPIDEV.Value+
                                  //QYAux.FieldByName('SOMAPISST').AsExtended+
                                  //QYAux.FieldByName('SOMACOFINSST').AsExtended;

  //calcula nova porcentagem de desconto.
  if TBServicosSER_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
  TBServicosSER_DESCPORC.Value:=Decimais((100.0/(QYAux.FieldByName('VALORTOTALBRUTO').AsExtended+
                                                 QYAux.FieldByName('VALORFRETE').AsExtended+
                                                 QYAux.FieldByName('VALORSEGURO').AsExtended+
                                                 QYAux.FieldByName('VALORACESSORIAS').AsExtended))*TBServicosSER_DESCVALOR.AsExtended,8) else
  TBServicosSER_DESCPORC.Value:=0;

  //calcula o lucro da venda.
  TBServicosSER_LUCROVALOR.Value:=TBServicosSER_VALORTOTAL.Value-TBServicosSER_CUSTOTOTAL.Value;
  if TBServicosSER_LUCROVALOR.Value<>0 then
  begin
    if TBServicosSER_VALORTOTAL.Value=0 then
    TBServicosSER_LUCROPORC.Value:=(-100.0) else
    TBServicosSER_LUCROPORC.Value:=(TBServicosSER_LUCROVALOR.Value/TBServicosSER_VALORTOTAL.Value)*100.0;
  end;

  //nao tem... if (FormNfe<>nil) and (TBNfeNFE_STATUS.Value='A') then
  //begin
  //  FormNfe.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  //end;

  QYAux.Close;
  if DarPost then TBServicos.Post;
end;

procedure TDM.TBServicosBeforeEdit(DataSet: TDataSet);
begin
  if FormServicos<>nil then
  FormMain.SetFields(FormServicos,True);
end;

procedure TDM.TBServicosBeforeInsert(DataSet: TDataSet);
begin
  if FormServicos<>nil then
  begin
    FormMain.SetFields(FormServicos,True);
    FormServicos.PageControl1.ActivePageIndex:=0;
    FormServicos.DBEdit17.Enabled:=True;
    FormServicos.DBEdit17.SetFocus;
  end;
end;

procedure TDM.TBServicosBeforeOpen(DataSet: TDataSet);
begin
  // fazer isso na tabela equipamentos.  TBServicosSER_SERIE.EditMask:=TBParametrosPAR_SERVICOSSERIEMASK.Value; // 'aaa\-9999;1;_';
end;

procedure TDM.TBServicosBeforePost(DataSet: TDataSet);
begin
  TBServicosSER_DTATUALIZACAO.Value:=ServerDate;
  TBServicosSER_HRATUALIZACAO.Value:=ServerTime;
  TBServicosSER_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisServicos(False);

  if DM.TBParametrosPAR_SERVICOSCLIENTEDIFERENTE.Value='N' then
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select EQP_CLIENTE from EQUIPAMENTOS where EQP_CODIGO=:codigo');
    QYAux.ParamByName('codigo').AsInteger:=TBServicosSER_EQUIPAMENTO.Value;
    QYAux.Open;
    if QYAux.FieldByName('EQP_CLIENTE').AsInteger <> TBServicosSER_CLIENTE.Value then
    begin
      MessageDlg('O equipamento selecionado não pertence ao cliente selecionado.',mtInformation,[mbOk],0);
      TBServicosSER_EQUIPAMENTO.Clear;
      TBServicosEQP_ACESSORIOS.Clear;
      TBServicosEQP_DESCRICAO.Clear;
      TBServicosEQP_LOCALIZACAO.Clear;
      TBServicosEQP_MARCA.Clear;
      TBServicosEQP_MODELO.Clear;
      TBServicosEQP_REVENDEDOR.Clear;
      TBServicosEQP_SERIE.Clear;
      TBServicosEQP_TAMANHO.Clear;
    end;
  end;
end;

procedure TDM.TBServicosAfterEdit(DataSet: TDataSet);
begin
  if TBServicosSER_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma ordem de serviço baixada.',mtWarning,[mbOk],0);
    TBServicos.Cancel;
  end;
end;

procedure TDM.TBServicosAfterInsert(DataSet: TDataSet);
var I: Integer;
begin
  //localiza a CFOP.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  TBServicosSER_ABERTOPOR.Value:=UsuarioLogin;
  TBServicosSER_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBServicosSER_ANDAMENTO.Value:='AGUARDANDO INICIO';
  TBServicosSER_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value; //verificar se o campo PAR_CFOPSERVICOPADRAO pode ser eliminado. TBParametrosPAR_CFOPSERVICOPADRAO.Value;
  TBServicosSER_CUSTOTOTAL.Value:=0;
  TBServicosSER_DESCPORC.Value:=0;
  TBServicosSER_DESCVALOR.Value:=0;
  TBServicosSER_DTCADASTRO.Value:=ServerDate;
  TBServicosSER_DTENTRADA.Value:=ServerDate; //data cadastro.
  TBServicosSER_DTPREVISAO.Value:=Date+TBParametrosPAR_SERVICOSDTPREVISAO.Value;
  TBServicosSER_HRCADASTRO.Value:=ServerTime;
  TBServicosSER_LUCROPORC.Value:=0;
  TBServicosSER_LUCROVALOR.Value:=0;
  TBServicosSER_SEQUENCIAITEM.Value:=0;
  TBServicosSER_STATUS.Value:='A';
  TBServicosSER_TABELAPRECO.Value:=TBParametrosPAR_TABELAPRECO.Value;
  TBServicosSER_TOTALPRODUTOS.Value:=0;
  TBServicosSER_TOTALSERVICOS.Value:=0;
  TBServicosSER_TOTALITENS.Value:=0;
  TBServicosSER_TOTALIPI.Value:=0;
  TBServicosSER_TOTALISS.Value:=0;
  TBServicosSER_TOTALICMS.Value:=0;
  TBServicosSER_TOTALHORAS.Value:='';
  TBServicosSER_VALORTOTAL.Value:=0;

  Randomize;
  I:=Random(99999999); //gera um número randômico para a senha online;
  TBServicosSER_SENHAONLINE.Value:=IntToStr(I);
  if not TBClientes.IsEmpty then
  begin
    TBServicosSER_CLIENTE.Value:=TBClientesCLI_CODIGO.Value;
    TBServicosCLI_NOME.Value:=TBClientesCLI_NOME.Value;
    TBServicosCLI_FONE1.Value:=TBClientesCLI_FONE1.Value;
    TBServicosCLI_FONE2.Value:=TBClientesCLI_FONE2.Value;
    TBServicosCLI_EMAIL.Value:=TBClientesCLI_EMAIL.Value;
  end;
end;

procedure TDM.DSServicosStateChange(Sender: TObject);
begin
  if TBServicos.State in [dsInsert, dsEdit] then
  begin
    if FormServicos<>nil then
    begin
      FormServicos.BaixarOrdemDeServico1.Enabled:=False;
      FormServicos.BaixarOrdemDeServico1Button.Enabled:=False;
      FormServicos.CadastroDeChecklists1.Enabled:=False;
      FormServicos.CadastroDeChecklists1Button.Enabled:=False;
      FormServicos.CadastroDeHoras1.Enabled:=False;
      FormServicos.CadastroDeHoras1Button.Enabled:=False;
      FormServicos.Checklist1.Enabled:=False;
      FormServicos.Checklist1Button.Enabled:=False;
      FormServicos.EnviarOrdemDeServicoPorEmail1.Enabled:=False;
      FormServicos.EnviarOrdemDeServicoPorEmail1Button.Enabled:=False;
      FormServicos.FinalizarOrdemDeServico1.Enabled:=False;
      FormServicos.FinalizarOrdemDeServico1Button.Enabled:=False;
      FormServicos.ImprimirOrdemDeServico1Button.Enabled:=False;
      FormServicos.ImprimirOrdemDeServicoA5Retrato1.Enabled:=False;
      FormServicos.ImprimirOrdemDeServicoA5Paisagem1.Enabled:=False;
      FormServicos.ImprimirOrdemDeServicoA41.Enabled:=False;
      FormServicos.Localizar1.Enabled:=False;
      FormServicos.Localizar1Button.Enabled:=False;
      FormServicos.OrdensDeServicoPorCliente1.Enabled:=False;
      FormServicos.OrdensDeServicoPorProduto1.Enabled:=False;
      FormServicos.OrdensDeServicoPorTecnico1.Enabled:=False;
      FormServicos.OrdensDeServicoPorTecnicoComValor1.Enabled:=False;
      FormServicos.ReabrirOrdemDeServico1.Enabled:=False;
      FormServicos.ReabrirOrdemDeServico1Button.Enabled:=False;
      FormServicos.Relatorios2.Enabled:=False;
      FormServicos.Relatorios2Button.Enabled:=False;
      FormServicos.TransferirParaOutroCliente1.Enabled:=False;
      FormServicos.TransferirParaOutroCliente1Button.Enabled:=False;
    end;
  end else
  begin
    if FormServicos<>nil then
    begin
      FormServicos.BaixarOrdemDeServico1.Enabled:=True;
      FormServicos.BaixarOrdemDeServico1Button.Enabled:=True;
      FormServicos.CadastroDeChecklists1.Enabled:=True;
      FormServicos.CadastroDeChecklists1Button.Enabled:=True;
      FormServicos.CadastroDeHoras1.Enabled:=True;
      FormServicos.CadastroDeHoras1Button.Enabled:=True;
      FormServicos.Checklist1.Enabled:=True;
      FormServicos.Checklist1Button.Enabled:=True;
      FormServicos.EnviarOrdemDeServicoPorEmail1.Enabled:=True;
      FormServicos.EnviarOrdemDeServicoPorEmail1Button.Enabled:=True;
      FormServicos.FinalizarOrdemDeServico1.Enabled:=True;
      FormServicos.FinalizarOrdemDeServico1Button.Enabled:=True;
      FormServicos.ImprimirOrdemDeServico1Button.Enabled:=True;
      FormServicos.ImprimirOrdemDeServicoA5Retrato1.Enabled:=True;
      FormServicos.ImprimirOrdemDeServicoA5Paisagem1.Enabled:=True;
      FormServicos.ImprimirOrdemDeServicoA41.Enabled:=True;
      FormServicos.Localizar1.Enabled:=True;
      FormServicos.Localizar1Button.Enabled:=True;
      FormServicos.OrdensDeServicoPorCliente1.Enabled:=True;
      FormServicos.OrdensDeServicoPorProduto1.Enabled:=True;
      FormServicos.OrdensDeServicoPorTecnico1.Enabled:=True;
      FormServicos.OrdensDeServicoPorTecnicoComValor1.Enabled:=True;
      FormServicos.ReabrirOrdemDeServico1.Enabled:=True;
      FormServicos.ReabrirOrdemDeServico1Button.Enabled:=True;
      FormServicos.Relatorios2.Enabled:=True;
      FormServicos.Relatorios2Button.Enabled:=True;
      FormServicos.TransferirParaOutroCliente1.Enabled:=True;
      FormServicos.TransferirParaOutroCliente1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormServicos);
      FormMain.SetFields(FormServicos,False);
    end;
  end;
  //nao permite alterar o cliente de uma OS.
  if TBServicos.State in [dsEdit, dsBrowse] then
    if FormServicos<>nil then
    begin
      FormServicos.DBEdit17.Enabled:=False;
      FormServicos.SpeedButton3.Enabled:=False;
    end;
end;
{$ENDREGION}

//##############################################################################
// ORDENS DE SERVICOS CHECK LIST                                              //
//##############################################################################
{$REGION 'TABELA SERVICOSCHECK'}
procedure TDM.TBServicosCheckAfterInsert(DataSet: TDataSet);
begin
  TBServicosCheckSCK_SERVICO.Value:=TBServicosSER_CODIGO.Value;
end;

procedure TDM.TBServicosCheckBeforeEdit(DataSet: TDataSet);
begin
  if FormServicosCheck<>nil then
  FormMain.SetFields(FormServicosCheck,True);
end;

procedure TDM.DSServicosCheckStateChange(Sender: TObject);
begin
  if TBServicosCheck.State in [dsInsert, dsEdit] then
  begin
    if FormServicosCheck<>nil then
    begin
      FormServicosCheck.CadastroDeChecklists1.Enabled:=False;
      FormServicosCheck.CadastroDeChecklists1Button.Enabled:=False;
      FormServicosCheck.CriarChecklist1.Enabled:=False;
      FormServicosCheck.CriarChecklist1Button.Enabled:=False;
      FormServicosCheck.ExcluirChecklist1.Enabled:=False;
      FormServicosCheck.ExcluirChecklist1Button.Enabled:=False;
      FormServicosCheck.Relatorios2.Enabled:=False;
      FormServicosCheck.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormServicosCheck<>nil then
    begin
      FormServicosCheck.CadastroDeChecklists1.Enabled:=True;
      FormServicosCheck.CadastroDeChecklists1Button.Enabled:=True;
      FormServicosCheck.CriarChecklist1.Enabled:=True;
      FormServicosCheck.CriarChecklist1Button.Enabled:=True;
      FormServicosCheck.ExcluirChecklist1.Enabled:=True;
      FormServicosCheck.ExcluirChecklist1Button.Enabled:=True;
      FormServicosCheck.Relatorios2.Enabled:=True;
      FormServicosCheck.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormServicosCheck);
      FormMain.SetFields(FormServicosCheck,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ORDENS DE SERVICOS HORAS                                                   //
//##############################################################################
{$REGION 'TABELA SERVICOSHORAS'}
procedure TDM.CalcularTotaisServicosHoras(DarPost: Boolean);
begin
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select sum(SEH_TOTALHORASMIN) as TOTALHORAS from SERVICOSHORAS where SEH_SERVICO=:servico');
  QYAux.ParamByName('servico').AsInteger:=TBServicosSER_CODIGO.Value;
  QYAux.Open;
  TBServicos.Edit;
  TBServicosSER_TOTALHORAS.Value:=MinToHour(QYAux.FieldByName('TOTALHORAS').AsFloat);
  TBServicosSER_TOTALHORASDEC.Value:=StrToFloat(MinToDec(QYAux.FieldByName('TOTALHORAS').AsFloat));
  if DarPost then
  TBServicos.Post;
end;

procedure TDM.TBServicosHorasAfterEdit(DataSet: TDataSet);
begin
  if TBServicosSER_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma ordem de serviço baixada.',mtWarning,[mbOk],0);
    TBServicosHoras.Cancel;
  end;
end;

procedure TDM.TBServicosHorasAfterInsert(DataSet: TDataSet);
begin
  TBServicosHorasSEH_DATA.Value:=ServerDate;
  TBServicosHorasSEH_DTCADASTRO.Value:=TBServicosHorasSEH_DATA.Value;
  TBServicosHorasSEH_HRCADASTRO.Value:=ServerTime;
  TBServicosHorasSEH_SERVICO.Value:=TBServicosSER_CODIGO.Value;
end;

procedure TDM.TBServicosHorasAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisServicosHoras(True);
  //Atualiza o total dos itens na tabela de serviços.
//  QYServicosItens.Close;
//  QYServicosItens.ParamByName('codigo').AsInteger:=TBServicosSER_CODIGO.Value;
//  QYServicosItens.Open;
//  TBServicos.Edit;
//  TBServicosSER_TOTALITENS.Value:=QYServicosItensTOTALITENS.Value;
//  TBServicos.Post;
end;

procedure TDM.TBServicosHorasBeforeEdit(DataSet: TDataSet);
begin
  if FormServicosHoras<>nil then
  FormMain.SetFields(FormServicosHoras,True);
end;

procedure TDM.TBServicosHorasBeforeInsert(DataSet: TDataSet);
begin
  if FormServicosHoras<>nil then
  begin
    FormMain.SetFields(FormServicosHoras,True);
    FormServicosHoras.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBServicosHorasBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBServicosHorasSEH_CODIGO.Value;
  TBServicosHorasSEH_DTATUALIZACAO.Value:=ServerDate;
  TBServicosHorasSEH_HRATUALIZACAO.Value:=ServerTime;
  TBServicosHorasSEH_HORAINICIOMIN.Value:=HourToMin(TimeToStr(TBServicosHorasSEH_HORAINICIO.Value));
  TBServicosHorasSEH_HORAFIMMIN.Value:=HourToMin(TimeToStr(TBServicosHorasSEH_HORAFIM.Value));
  if TBServicosHorasSEH_HORAFIMMIN.Value<TBServicosHorasSEH_HORAINICIOMIN.Value then
  begin
    MessageDlg('Hora fim não pode ser menor que hora início.',mtError,[mbOk],0);
    TBServicosHorasSEH_HORAFIM.Value:=TBServicosHorasSEH_HORAINICIO.Value;
    TBServicosHorasSEH_HORAFIMMIN.Value:=TBServicosHorasSEH_HORAINICIOMIN.Value;
  end;
  TBServicosHorasSEH_TOTALHORAS.Value:=MinToHour(TBServicosHorasSEH_HORAFIMMIN.Value-TBServicosHorasSEH_HORAINICIOMIN.Value);
  TBServicosHorasSEH_TOTALHORASMIN.Value:=HourToMin(TBServicosHorasSEH_TOTALHORAS.Value);
  TBServicosHorasSEH_TOTALHORASDEC.Value:=StrToFloat(MinToDec(TBServicosHorasSEH_TOTALHORASMIN.Value));
end;

procedure TDM.DSServicosHorasStateChange(Sender: TObject);
begin
  if TBServicosHoras.State in [dsInsert, dsEdit] then
  begin
    if FormServicosHoras<>nil then
    begin
      //FormServicosHoras.ImprimirRelatorioDeHoras1.Enabled:=False;
      //FormServicosHoras.ImprimirRelatorioDeHoras1Button.Enabled:=False;
    end;
  end else
  begin
    if FormServicosHoras<>nil then
    begin
      //FormServicosHoras.ImprimirRelatorioDeHoras1.Enabled:=True;
      //FormServicosHoras.ImprimirRelatorioDeHoras1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormServicosHoras);
      FormMain.SetFields(FormServicosHoras,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ORDENS DE SERVICOS ITENS                                                   //
//##############################################################################
{$REGION 'TABELA SERVICOSITENS'}
procedure TDM.CalcularTotaisServicosItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  //calcula o valor bruto.
  TBServicosItensSEI_VALORTOTALBRUTO.Value:=Decimais(TBServicosItensSEI_QUANTIDADE.AsExtended*TBServicosItensSEI_VALORUNIT.AsExtended,2);

  //calcula o valor total com desconto.
  TBServicosItensSEI_VALORTOTAL.Value:=Decimais((TBServicosItensSEI_QUANTIDADE.AsExtended*TBServicosItensSEI_VALORUNIT.AsExtended),2);
  if TBServicosItensSEI_QUANTIDADETROCA.Value < 0 then TBServicosItensSEI_QUANTIDADETROCA.Value:=0;
  if TBServicosItensSEI_QUANTIDADETROCA.Value > 0 then
  begin
    if TBServicosItensSEI_QUANTIDADETROCA.Value > (TBServicosItensSEI_QUANTIDADE.Value * TBServicosItensSEI_CONVERSAO.Value) then
    TBServicosItensSEI_QUANTIDADETROCA.Value:=TBServicosItensSEI_QUANTIDADE.Value * TBServicosItensSEI_CONVERSAO.Value;
    //TBServicosItensSEI_DESCVALOR.Value:=Decimais((TBServicosItensSEI_QUANTIDADETROCA.Value*TBServicosItensSEI_VALORUNIT.Value),2);
    //(bruto divido pela (quantidade*conversao)=valor unitário.) * quantidade de troca.
    TBServicosItensSEI_DESCVALOR.Value:=Decimais(TBServicosItensSEI_QUANTIDADETROCA.AsExtended * (TBServicosItensSEI_VALORTOTALBRUTO.AsExtended / (TBServicosItensSEI_QUANTIDADE.AsExtended*TBServicosItensSEI_CONVERSAO.AsExtended)),2);
    TBServicosItensSEI_DESCPORC.Value:=Decimais((100.0/((TBServicosItensSEI_QUANTIDADE.AsExtended*TBServicosItensSEI_VALORUNIT.AsExtended)+
                                                TBServicosItensSEI_VALORFRETE.AsExtended+
                                                TBServicosItensSEI_VALORSEGURO.AsExtended+
                                                TBServicosItensSEI_VALORACESSORIAS.AsExtended))*TBServicosItensSEI_DESCVALOR.AsExtended,8);
  end else
  TBServicosItensSEI_DESCVALOR.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100.00)*TBServicosItensSEI_DESCPORC.AsExtended,2);

  if (TBServicosItensSEI_COMPOETOTAL.Value='S') or (TBServicosItensSEI_COMPOETOTAL.IsNull) then
  TBServicosItensSEI_VALORTOTAL.Value:=TBServicosItensSEI_VALORTOTAL.Value-TBServicosItensSEI_DESCVALOR.Value else
  TBServicosItensSEI_VALORTOTAL.Value:=0;

  //calcula o peso total do produto. quantidade * peso = pesototal (liquido).
  if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
  TBServicosItensSEI_PESOTOTAL.Value:=TBServicosItensSEI_QUANTIDADE.AsExtended*TBServicosItensSEI_PESO.Value;

  //calcula valor do IPI.
  TBServicosItensSEI_BASEIPI.Value:=0;
  TBServicosItensSEI_VALORIPI.Value:=0;
  if TBServicosItensSEI_ALIQIPI.Value>0 then
  begin
    TBServicosItensSEI_BASEIPI.Value:=TBServicosItensSEI_VALORTOTAL.Value+TBServicosItensSEI_VALORFRETE.Value;
    TBServicosItensSEI_VALORIPI.Value:=Decimais((TBServicosItensSEI_BASEIPI.AsExtended/100.00)*TBServicosItensSEI_ALIQIPI.AsExtended,2);
  end;

  //calcula valor do ICMS - base=total+frete+seguro+acessorias-desconto.
  TBServicosItensSEI_BASEICMS.Value:=0;
  TBServicosItensSEI_VALORICMS.Value:=0;
  TBServicosItensSEI_VALORICMSUFDEST.Value:=0;
  TBServicosItensSEI_VALORICMSUFREMET.Value:=0;
  TBServicosItensSEI_VALORFCP.Value:=0;
  if TBServicosItensSEI_COMPOEBASEICMS.Value='S' then
  begin
    TBServicosItensSEI_BASEICMS.Value:=TBServicosItensSEI_VALORTOTAL.Value+
                                       TBServicosItensSEI_VALORFRETE.Value+
                                       TBServicosItensSEI_VALORSEGURO.Value+
                                       TBServicosItensSEI_VALORACESSORIAS.Value;
    if TBServicosItensSEI_ALIQICMSRED.Value<>0 then
    TBServicosItensSEI_BASEICMS.Value:=Decimais(TBServicosItensSEI_BASEICMS.AsExtended-((TBServicosItensSEI_BASEICMS.AsExtended/100)*TBServicosItensSEI_ALIQICMSRED.AsExtended),2);
    TBServicosItensSEI_VALORICMS.Value:=Decimais(((TBServicosItensSEI_BASEICMS.AsExtended/100)*TBServicosItensSEI_ALIQICMS.AsExtended),2);

    //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
    //40% de (base calculo / 100 * (aliq icms - interestadual))
    //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
    if TBEmpresaEMP_ESTADO.Value<>TBServicosSER_ESTADO.Value then
    begin
      ICMS:=(TBServicosItensSEI_BASEICMS.AsExtended/100.00) * (Abs(TBServicosItensSEI_ALIQICMS.AsExtended-TBServicosItensSEI_ALIQICMSINTER.AsExtended));
      TBServicosItensSEI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBServicosItensSEI_ALIQICMSINTERPART.AsExtended,2);

      //calcula o valor do ICMS na UF do remetente
      TBServicosItensSEI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBServicosItensSEI_ALIQICMSINTERPART.AsExtended),2);

      //calcula o valor do FCP.
      TBServicosItensSEI_VALORFCP.Value:=(TBServicosItensSEI_BASEICMS.Value/100.00) * TBServicosItensSEI_ALIQFCP.Value;
    end;
  end;

  //calcula valor do ICMS ST. - base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
  TBServicosItensSEI_BASEICMSST.Value:=0;
  TBServicosItensSEI_VALORICMSST.Value:=0;
  TBServicosItensSEI_VALORFCPST.Value:=0;
  if (TBServicosItensSEI_COMPOEBASEICMSST.Value='S') and (TBServicosItensSEI_ALIQICMSST.Value>0) then
  begin
    BC:=TBServicosItensSEI_VALORTOTAL.AsExtended+
        TBServicosItensSEI_VALORFRETE.AsExtended+
        TBServicosItensSEI_VALORSEGURO.AsExtended+
        TBServicosItensSEI_VALORACESSORIAS.AsExtended;
    if TBServicosItensSEI_ALIQICMSRED.Value<>0 then
    BC:=Decimais(BC-((BC/100)*TBServicosItensSEI_ALIQICMSRED.AsExtended),2);
    ICMS:=Decimais(((BC/100)*TBServicosItensSEI_ALIQICMS.AsExtended),2);

    TBServicosItensSEI_BASEICMSST.Value:=Decimais(((TBServicosItensSEI_VALORTOTAL.AsExtended+
                                                    TBServicosItensSEI_VALORIPI.AsExtended+
                                                    TBServicosItensSEI_VALORFRETE.AsExtended+
                                                    TBServicosItensSEI_VALORSEGURO.AsExtended+
                                                    TBServicosItensSEI_VALORACESSORIAS.AsExtended)+
                                                  ((TBServicosItensSEI_VALORTOTAL.AsExtended+
                                                    TBServicosItensSEI_VALORIPI.AsExtended+
                                                    TBServicosItensSEI_VALORFRETE.AsExtended+
                                                    TBServicosItensSEI_VALORSEGURO.AsExtended+
                                                    TBServicosItensSEI_VALORACESSORIAS.AsExtended)/100) *
                                                    TBServicosItensSEI_ALIQICMSADICST.AsExtended),2);
    TBServicosItensSEI_VALORICMSST.Value:=Decimais(((TBServicosItensSEI_BASEICMSST.AsExtended/100)*TBServicosItensSEI_ALIQICMSST.AsExtended)-ICMS,2);

    TBServicosItensSEI_VALORFCPST.Value:=(TBServicosItensSEI_BASEICMSST.Value/100.00) * TBServicosItensSEI_ALIQFCPST.Value;
  end;

  //calcula o valor do crédito do simples nacional.
  TBServicosItensSEI_VALORICMSCREDSN.Value:=0;
  if (TBServicosItensICM_CALCULACREDITOSN.Value='S') and (TBServicosItensNAT_CALCULACREDITOSN.Value='S') then
  begin
    TBServicosItensSEI_VALORICMSCREDSN.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100)*TBServicosSER_ALIQICMSCREDSN.AsExtended,2);
  end;

  //calcula valor do II. nao tem na tabela servicos.
  {TBServicosItensSEI_BASEII.Value:=0;
  TBServicosItensSEI_VALORII.Value:=0;
  if TBServicosItensSEI_ALIQII.Value>0 then
  begin
    TBServicosItensSEI_BASEII.Value:=TBServicosItensSEI_VALORTOTAL.Value;
    TBServicosItensSEI_VALORII.Value:=Decimais((TBServicosItensSEI_BASEII.Value/100)*TBServicosItensSEI_ALIQII.Value,2);
  end;}

  //calcula valor do ISS.
  TBServicosItensSEI_BASEISS.Value:=0;
  TBServicosItensSEI_VALORISS.Value:=0;
  if TBServicosItensSEI_ALIQISS.Value>0 then
  begin
    TBServicosItensSEI_BASEISS.Value:=TBServicosItensSEI_VALORTOTAL.Value;
    TBServicosItensSEI_VALORISS.Value:=Decimais((TBServicosItensSEI_BASEISS.AsExtended/100)*TBServicosItensSEI_ALIQISS.AsExtended,2);
  end;

  //calcula valor do PIS.
  TBServicosItensSEI_BASEPIS.Value:=0;
  TBServicosItensSEI_VALORPIS.Value:=0;
  if TBServicosItensSEI_ALIQPIS.Value>0 then
  begin
    TBServicosItensSEI_BASEPIS.Value:=TBServicosItensSEI_VALORTOTAL.Value+TBServicosItensSEI_VALORFRETE.Value;
    TBServicosItensSEI_VALORPIS.Value:=Decimais((TBServicosItensSEI_BASEPIS.AsExtended/100)*TBServicosItensSEI_ALIQPIS.AsExtended,2);
  end;

  //calcula valor do PISST.
  TBServicosItensSEI_BASEPISST.Value:=0;
  TBServicosItensSEI_VALORPISST.Value:=0;
  if TBServicosItensSEI_ALIQPISST.Value>0 then
  begin
    TBServicosItensSEI_BASEPISST.Value:=TBServicosItensSEI_VALORTOTAL.Value+TBServicosItensSEI_VALORFRETE.Value;
    TBServicosItensSEI_VALORPISST.Value:=Decimais((TBServicosItensSEI_BASEPISST.AsExtended/100)*TBServicosItensSEI_ALIQPISST.AsExtended,2);
  end;

  //calcula valor do COFINS.
  TBServicosItensSEI_BASECOFINS.Value:=0;
  TBServicosItensSEI_VALORCOFINS.Value:=0;
  if TBServicosItensSEI_ALIQCOFINS.Value>0 then
  begin
    TBServicosItensSEI_BASECOFINS.Value:=TBServicosItensSEI_VALORTOTAL.Value+TBServicosItensSEI_VALORFRETE.Value;
    TBServicosItensSEI_VALORCOFINS.Value:=Decimais((TBServicosItensSEI_BASECOFINS.AsExtended/100)*TBServicosItensSEI_ALIQCOFINS.AsExtended,2);
  end;

  //calcula valor do COFINS ST.
  TBServicosItensSEI_BASECOFINSST.Value:=0;
  TBServicosItensSEI_VALORCOFINSST.Value:=0;
  if TBServicosItensSEI_ALIQCOFINSST.Value>0 then
  begin
    TBServicosItensSEI_BASECOFINSST.Value:=TBServicosItensSEI_VALORTOTAL.Value+TBServicosItensSEI_VALORFRETE.Value;
    TBServicosItensSEI_VALORCOFINSST.Value:=Decimais((TBServicosItensSEI_BASECOFINSST.AsExtended/100)*TBServicosItensSEI_ALIQCOFINSST.AsExtended,2);
  end;

  //calcula a comissão do vendedor sobre o item. (por produto).
  //valor total - IPI - ICMSST / 100 * %comissao.
  if TBServicosItensNAT_CALCULACOMISSAO.Value='S' then
  TBServicosItensSEI_VALORCOMISSAO.Value:=Decimais((((TBServicosItensSEI_VALORTOTAL.AsExtended-TBServicosItensSEI_VALORIPI.AsExtended-TBServicosItensSEI_VALORICMSST.AsExtended)/100.0)*TBServicosItensSEI_COMISSAO.AsExtended),2) else
  TBServicosItensSEI_VALORCOMISSAO.Value:=0;

  //calcula o lucro no item.
  TBServicosItensSEI_PRECOCUSTOTOTAL.Value:=TBServicosItensSEI_PRECOCUSTO.Value*TBServicosItensSEI_QUANTIDADE.Value;
  TBServicosItensSEI_LUCROVALOR.Value:=TBServicosItensSEI_VALORTOTAL.Value-TBServicosItensSEI_PRECOCUSTOTOTAL.Value;
  if TBServicosItensSEI_LUCROVALOR.Value<>0 then
  begin
    if TBServicosItensSEI_VALORTOTAL.Value=0 then
    TBServicosItensSEI_LUCROPORC.Value:=(-100.0) else
    TBServicosItensSEI_LUCROPORC.Value:=(TBServicosItensSEI_LUCROVALOR.Value/TBServicosItensSEI_VALORTOTAL.Value)*100.0;
  end;

  //calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.
  TBClassFiscal.Close;
  TBClassFiscal.ParamByName('codigo').AsString:=TBServicosItensSEI_CLASSFISCAL.Value;
  TBClassFiscal.ParamByName('excecao').AsInteger:=TBServicosItensSEI_EXCECAO.Value;
  TBClassFiscal.Open;
  if (Copy(TBServicosItensSEI_ORIGEM.Value,1,1)='0') or
     (Copy(TBServicosItensSEI_ORIGEM.Value,1,1)='3') or
     (Copy(TBServicosItensSEI_ORIGEM.Value,1,1)='4') or
     (Copy(TBServicosItensSEI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
  begin
    TBServicosItensSEI_VALORTRIBUTOSEST.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAESTADUAL.AsExtended,2);
    TBServicosItensSEI_VALORTRIBUTOSFED.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2);
    TBServicosItensSEI_VALORTRIBUTOSMUN.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAMUNICIPAL.AsExtended,2);
    TBServicosItensSEI_VALORTRIBUTOSIMP.Value:=0;
    TBServicosItensSEI_VALORTRIBUTOS.Value:=TBServicosItensSEI_VALORTRIBUTOSEST.Value+TBServicosItensSEI_VALORTRIBUTOSFED.Value+TBServicosItensSEI_VALORTRIBUTOSMUN.Value;
  end else
  begin
    TBServicosItensSEI_VALORTRIBUTOSEST.Value:=0;
    TBServicosItensSEI_VALORTRIBUTOSFED.Value:=0;
    TBServicosItensSEI_VALORTRIBUTOSMUN.Value:=0;
    TBServicosItensSEI_VALORTRIBUTOSIMP.Value:=Decimais((TBServicosItensSEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
    TBServicosItensSEI_VALORTRIBUTOS.Value:=TBServicosItensSEI_VALORTRIBUTOSIMP.Value;
  end;
end;

procedure TDM.TBServicosItensAfterEdit(DataSet: TDataSet);
begin
  if TBServicosSER_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma ordem de serviço baixada.',mtWarning,[mbOk],0);
    TBServicosItens.Cancel;
  end;
end;

procedure TDM.TBServicosItensAfterInsert(DataSet: TDataSet);
begin
  TBServicosItensSEI_ALIQCOFINS.Value:=0;
  TBServicosItensSEI_ALIQCOFINSST.Value:=0;
  TBServicosItensSEI_ALIQFCP.Value:=TBAliquotasALI_ALIQFCP.Value;
  TBServicosItensSEI_ALIQFCPST.Value:=0;
  TBServicosItensSEI_ALIQICMS.Value:=0;
  TBServicosItensSEI_ALIQICMSADICST.Value:=0;
  TBServicosItensSEI_ALIQICMSINTER.Value:=TBAliquotasALI_ALIQICMSINTER.Value;
  TBServicosItensSEI_ALIQICMSINTERPART.Value:=TBAliquotasALI_ALIQICMSINTERPART.Value;
  TBServicosItensSEI_ALIQICMSRED.Value:=0;
  TBServicosItensSEI_ALIQICMSST.Value:=0;
  TBServicosItensSEI_ALIQICMSSTRET.Value:=0;
  //nao tem TBServicosItensSEI_ALIQII.Value:=0;
  TBServicosItensSEI_ALIQIPI.Value:=0;
  TBServicosItensSEI_ALIQISS.Value:=0;
  TBServicosItensSEI_ALIQPIS.Value:=0;
  TBServicosItensSEI_ALIQPISST.Value:=0;
  TBServicosItensSEI_BASECOFINS.Value:=0;
  TBServicosItensSEI_BASECOFINSST.Value:=0;
  TBServicosItensSEI_BASEICMS.Value:=0;
  TBServicosItensSEI_BASEICMSRED.Value:=0;
  TBServicosItensSEI_BASEICMSST.Value:=0;
  //nao tem TBServicosItensSEI_BASEICMSSTRET.Value:=0;
  //nao tem TBServicosItensSEI_BASEII.Value:=0;
  TBServicosItensSEI_BASEIPI.Value:=0;
  TBServicosItensSEI_BASEISS.Value:=0;
  TBServicosItensSEI_BASEPIS.Value:=0;
  TBServicosItensSEI_BASEPISST.Value:=0;
  TBServicosItensSEI_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBServicosItensSEI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBServicosItensSEI_COMPOEBASEICMS.Value:='N';
  TBServicosItensSEI_COMPOEBASEICMSST.Value:='N';
  TBServicosItensSEI_COMPOETOTAL.Value:='S';
  TBServicosItensSEI_CONVERSAO.Value:=1;
  TBServicosItensSEI_DESCPORC.Value:=0;
  //1
  //2
  //3
  TBServicosItensSEI_DESCVALOR.Value:=0;
  //nao tem TBServicosItensSEI_DESONERACAO.Value:='00 - NENHUM';
  TBServicosItensSEI_EXCECAO.Value:=0;
  TBServicosItensSEI_INDICADORISS.Value:='2 - NAO INCIDENCIA';
  TBServicosItensSEI_INCENTIVOISS.Value:='N';
  TBServicosItensSEI_LUCROPORC.Value:=0;
  TBServicosItensSEI_LUCROVALOR.Value:=0;
  TBServicosItensSEI_MODICMS.Value:='3 - VALOR DA OPERACAO';
  TBServicosItensSEI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
  TBServicosItensSEI_ORIGEM.Value:='0 - NACIONAL';
  TBServicosItensSEI_PAISISS.Value:=1058; //BRASIL.
  //nao tem TBServicosItensSEI_PEDIDOCLIENTE.Value:=TBServicosSER_PEDIDOCLIENTE.Value;
  TBServicosItensSEI_PRECOCUSTO.Value:=0;
  TBServicosItensSEI_PRECOCUSTOTOTAL.Value:=0;
  TBServicosItensSEI_PRODUTOREAL.Value:=0;
  TBServicosItensSEI_QUANTIDADE.Value:=1;
  TBServicosItensSEI_QUANTIDADETROCA.Value:=0;
  TBServicosItensSEI_SEQUENCIA.Value:=TBServicosSER_SEQUENCIAITEM.Value+1;
  //nao tem TBServicosItensSEI_SOMACOFINSST.Value:='N';
  //nao tem TBServicosItensSEI_SOMAPISST.Value:='N';
  TBServicosItensSEI_SERVICO.Value:=TBServicosSER_CODIGO.Value;
  TBServicosItensSEI_VALORACESSORIAS.Value:=0;
  //nao tem TBServicosItensSEI_VALORADUANA.Value:=0;
  TBServicosItensSEI_VALORCOFINS.Value:=0;
  TBServicosItensSEI_VALORCOFINSST.Value:=0;
  TBServicosItensSEI_VALORCOMISSAO.Value:=0;
  TBServicosItensSEI_VALORFCP.Value:=0;
  TBServicosItensSEI_VALORFCPST.Value:=0;
  TBServicosItensSEI_VALORFRETE.Value:=0;
  TBServicosItensSEI_VALORICMS.Value:=0;
  TBServicosItensSEI_VALORICMSCREDSN.Value:=0;
  //nao tem TBServicosItensSEI_VALORICMSDESONERADO.Value:=0;
  TBServicosItensSEI_VALORICMSST.Value:=0;
  //nao tem TBServicosItensSEI_VALORICMSSTRET.Value:=0;
  //nao tem TBServicosItensSEI_VALORICMSSUBSTITUTO.Value:=0;
  TBServicosItensSEI_VALORICMSUFDEST.Value:=0;
  TBServicosItensSEI_VALORICMSUFREMET.Value:=0;
  //nao tem TBServicosItensSEI_VALORII.Value:=0;
  TBServicosItensSEI_VALORIPI.Value:=0;
  //nao tem TBServicosItensSEI_VALORIOF.Value:=0;
  TBServicosItensSEI_VALORISS.Value:=0;
  TBServicosItensSEI_VALORISSDEDUCAO.Value:=0;
  TBServicosItensSEI_VALORISSDESCCOND.Value:=0;
  TBServicosItensSEI_VALORISSDESCINCOND.Value:=0;
  TBServicosItensSEI_VALORISSOUTROS.Value:=0;
  TBServicosItensSEI_VALORISSRETENCAO.Value:=0;
  TBServicosItensSEI_VALORPIS.Value:=0;
  TBServicosItensSEI_VALORPISST.Value:=0;
  TBServicosItensSEI_VALORSEGURO.Value:=0;
  TBServicosItensSEI_VALORTOTAL.Value:=0;
  TBServicosItensSEI_VALORTOTALBRUTO.Value:=0;
  TBServicosItensSEI_VALORTRIBUTOS.Value:=0;
  TBServicosItensSEI_VALORTRIBUTOSEST.Value:=0;
  TBServicosItensSEI_VALORTRIBUTOSFED.Value:=0;
  TBServicosItensSEI_VALORTRIBUTOSIMP.Value:=0;
  TBServicosItensSEI_VALORTRIBUTOSMUN.Value:=0;

  //campos da reforma tributaria
  TBServicosItensSEI_ALIQCBS.Value:=0;
  TBServicosItensSEI_ALIQCBSCREDPRES.Value:=0;
  TBServicosItensSEI_ALIQCBSDIF.Value:=0;
  TBServicosItensSEI_ALIQCBSEFE.Value:=0;
  TBServicosItensSEI_ALIQCBSRED.Value:=0;
  TBServicosItensSEI_ALIQIBSCREDPRES.Value:=0;
  TBServicosItensSEI_ALIQIBSMUN.Value:=0;
  TBServicosItensSEI_ALIQIBSMUNDIF.Value:=0;
  TBServicosItensSEI_ALIQIBSMUNEFE.Value:=0;
  TBServicosItensSEI_ALIQIBSMUNRED.Value:=0;
  TBServicosItensSEI_ALIQIBSUF.Value:=0;
  TBServicosItensSEI_ALIQIBSUFDIF.Value:=0;
  TBServicosItensSEI_ALIQIBSUFEFE.Value:=0;
  TBServicosItensSEI_ALIQIBSUFRED.Value:=0;
  TBServicosItensSEI_ALIQIS.Value:=0;
  TBServicosItensSEI_ALIQISESP.Value:=0;
  TBServicosItensSEI_BASEIBSCBS.Value:=0;
  TBServicosItensSEI_BASEIS.Value:=0;
//  TBServicosItensSEI_CBSCREDITOPRES.Value:=
//  TBServicosItensSEI_CLASSTRIBIBSCBS.Value:=
//  TBServicosItensSEI_CLASSTRIBIS.Value:=
//  TBServicosItensSEI_CSTIBSCBS.Value:=
//  TBServicosItensSEI_CSTIS.Value:=
//  TBServicosItensSEI_IBSCREDITOPRES.Value:=
  TBServicosItensSEI_VALORCBS.Value:=0;
  TBServicosItensSEI_VALORCBSCREDPRES.Value:=0;
  TBServicosItensSEI_VALORCBSCREDPRESSUS.Value:=0;
  TBServicosItensSEI_VALORCBSDEV.Value:=0;
  TBServicosItensSEI_VALORCBSDIF.Value:=0;
  TBServicosItensSEI_VALORIBS.Value:=0;
  TBServicosItensSEI_VALORIBSCREDPRES.Value:=0;
  TBServicosItensSEI_VALORIBSCREDPRESSUS.Value:=0;
  TBServicosItensSEI_VALORIBSMUN.Value:=0;
  TBServicosItensSEI_VALORIBSMUNDEV.Value:=0;
  TBServicosItensSEI_VALORIBSMUNDIF.Value:=0;
  TBServicosItensSEI_VALORIBSUF.Value:=0;
  TBServicosItensSEI_VALORIBSUFDEV.Value:=0;
  TBServicosItensSEI_VALORIBSUFDIF.Value:=0;
  TBServicosItensSEI_VALORIS.Value:=0;

  TBServicosItensNAT_DESCRICAO.Value:=TBServicosSER_CFOPDESC.Value;
  TBServicosItensNAT_CALCULACOMISSAO.Value:=TBServicosNAT_CALCULACOMISSAO.Value;
  TBServicosItensNAT_CALCULACREDITOSN.Value:=TBServicosNAT_CALCULACREDITOSN.Value;
end;

procedure TDM.TBServicosItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisServicos(True);
end;

procedure TDM.TBServicosItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisServicosItens(False); //parametro sem uso.
end;
{$ENDREGION}

//##############################################################################
// TABPRECO - TABELA DE PRECOS PADRAO.                                        //
//##############################################################################
{$REGION 'TABELA TABPRECO'}
procedure TDM.TBTabPrecoBeforeEdit(DataSet: TDataSet);
begin
  if FormProdutosTabPreco<>nil then
  FormMain.SetFields(FormProdutosTabPreco,True);
end;

procedure TDM.TBTabPrecoBeforePost(DataSet: TDataSet);
begin
  TBTabPrecoTAB_DTATUALIZACAO.Value:=ServerDate;
  TBTabPrecoTAB_HRATUALIZACAO.Value:=ServerTime;
  TBTabPrecoTAB_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSTabPrecoStateChange(Sender: TObject);
begin
  if TBTabPreco.State in [dsInsert, dsEdit] then
  begin
    if FormProdutosTabPreco<>nil then
    begin
      FormProdutosTabPreco.SpeedButton1.Enabled:=False;
      FormProdutosTabPreco.AtualizarProdutos1.Enabled:=False;
    end;
  end else
  begin
    if FormProdutosTabPreco<>nil then
    begin
      FormProdutosTabPreco.SpeedButton1.Enabled:=True;
      FormProdutosTabPreco.AtualizarProdutos1.Enabled:=True;
      FormMain.DesabilitarControles(FormProdutosTabPreco);
      FormMain.SetFields(FormProdutosTabPreco,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TAXAS                                                                      //
//##############################################################################
{$REGION 'TABELA TAXAS'}
procedure TDM.TBTaxasAfterInsert(DataSet: TDataSet);
begin
  TBTaxasTAX_DTCADASTRO.Value:=ServerDate;
  TBTaxasTAX_HRCADASTRO.Value:=ServerTime;
  TBTaxasTAX_STATUS.Value:='A';
  TBTaxasTAX_TIPO.Value:='V';
end;

procedure TDM.TBTaxasBeforeEdit(DataSet: TDataSet);
begin
  FormMain.SetFields(FormTaxas,True);
end;

procedure TDM.TBTaxasBeforeInsert(DataSet: TDataSet);
begin
  if FormTaxas<>nil then
  begin
    FormMain.SetFields(FormTaxas,True);
    FormTaxas.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBTaxasBeforePost(DataSet: TDataSet);
begin
  TBTaxasTAX_DTATUALIZACAO.Value:=ServerDate;
  TBTaxasTAX_HRATUALIZACAO.Value:=ServerTime;
  TBTaxasTAX_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSTaxasStateChange(Sender: TObject);
begin
  if TBTaxas.State in [dsInsert, dsEdit] then
  begin
    if FormTaxas<>nil then
    begin
      FormTaxas.Localizar1.Enabled:=False;
      FormTaxas.Localizar1Button.Enabled:=False;
      FormTaxas.Relatorios2.Enabled:=False;
      FormTaxas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormTaxas<>nil then
    begin
      FormTaxas.Localizar1.Enabled:=True;
      FormTaxas.Localizar1Button.Enabled:=True;
      FormTaxas.Relatorios2.Enabled:=True;
      FormTaxas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormTaxas);
      FormMain.SetFields(FormTaxas,False); //desabilita campos.
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TELAS                                                                      //
//##############################################################################
{$REGION 'TABELA TELAS'}
procedure TDM.TBTelasAfterInsert(DataSet: TDataSet);
begin
  TBTelasTEL_STATUS.Value:='A';
end;

procedure TDM.TBTelasBeforeInsert(DataSet: TDataSet);
begin
  if FormTelas<>nil then
  FormTelas.DBEdit2.SetFocus;
end;

procedure TDM.DSTelasDataChange(Sender: TObject; Field: TField);
begin
  TBAcessos.Close;
  //TBAcessos.SQL.Clear;
  //TBAcessos.SQL.Add('select * from ACESSOS where ACE_USUARIO=:USU_CODIGO and ACE_TELA=:tela order by ACE_DESCRICAO, ACE_CODIGO');
  TBAcessos.ParamByName('tela').AsString:=TBTelasTEL_NOMEFORM.Value;
  TBAcessos.Open;
end;

procedure TDM.DSTelasStateChange(Sender: TObject);
begin
  if TBTelas.State in [dsInsert, dsEdit] then
  begin
    if FormTelas<>nil then
    begin
      FormTelas.DBGrid1.Enabled:=False;
      FormTelas.SpeedButton1.Enabled:=False;
      FormTelas.SpeedButton2.Enabled:=False;
      FormTelas.Listagemdetelaspornome1.Enabled:=False;
      FormTelas.Listagemdetelaspormoduloenome1.Enabled:=False;
      FormTelas.ObterListadeComponentes1.Enabled:=False;
    end;
  end else
  begin
    if FormTelas<>nil then
    begin
      FormTelas.DBGrid1.Enabled:=True;
      FormTelas.SpeedButton1.Enabled:=True;
      FormTelas.SpeedButton2.Enabled:=True;
      FormTelas.Listagemdetelaspornome1.Enabled:=True;
      FormTelas.Listagemdetelaspormoduloenome1.Enabled:=True;
      FormTelas.ObterListadeComponentes1.Enabled:=True;
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TRIBUTOS                                                                   //
//##############################################################################
//nada

//##############################################################################
// USUARIOS                                                                   //
//##############################################################################
{$REGION 'TABELA USUARIOS'}
procedure TDM.TBUsuariosAfterInsert(DataSet: TDataSet);
begin
  TBUsuariosUSU_DTCADASTRO.Value:=ServerDate;
  TBUsuariosUSU_HRCADASTRO.Value:=ServerTime;
  TBUsuariosUSU_LOGADO.Value:='N';
  TBUsuariosUSU_SENHAEXPIRADA.Value:='S';
  TBUsuariosUSU_STATUS.Value:='A';
  TBUsuariosUSU_TEMA.Value:='00 - Windows';
end;

procedure TDM.TBUsuariosAfterPost(DataSet: TDataSet);
begin
  if InserindoNovoUsuario then //configura os acessos do usuario.
  begin
    //TBAcessos.DataSource:=DSUsuarios; //tinha esquecido disso.
    Application.CreateForm(TFormUsuariosAcessos, FormUsuariosAcessos);
    FormUsuariosAcessos.ShowModal;
    FormUsuariosAcessos.Free;
    FormUsuariosAcessos:=nil;
    //TBAcessos.DataSource:=nil;
    InserindoNovoUsuario:=False;
  end;
end;

procedure TDM.TBUsuariosBeforeEdit(DataSet: TDataSet);
begin
  if FormUsuarios<>nil then
  FormMain.SetFields(FormUsuarios,True);
end;

procedure TDM.TBUsuariosBeforeInsert(DataSet: TDataSet);
begin
  if FormUsuarios<>nil then
  begin
    FormMain.SetFields(FormUsuarios,True);
    FormUsuarios.DBEdit1.SetFocus;
  end;
end;

procedure TDM.TBUsuariosBeforePost(DataSet: TDataSet);
begin
  TBUsuariosUSU_DTATUALIZACAO.Value:=ServerDate;
  TBUsuariosUSU_HRATUALIZACAO.Value:=ServerTime;
  //para poder configurar os acessos do usuario.
  //é checado no after post e o onShow do FormUsuariosAcessos.
  if TBUsuarios.State in [dsInsert] then
  begin
    InserindoNovoUsuario:=True;
    TBUsuariosUSU_PASSWORD.Value:=MD5Print(MD5String(TBUsuariosUSU_LOGIN.Value)); //metodo antigo -> Senha(AnsiString(TBUsuariosUSU_LOGIN.Value),ChaveSenha); //senha padrao = login
  end else
  InserindoNovoUsuario:=False;
end;

procedure TDM.DSUsuariosStateChange(Sender: TObject);
begin
  if TBUsuarios.State in [dsInsert, dsEdit] then
  begin
    if FormUsuarios<>nil then
    begin
      FormUsuarios.ControleDeAcessos1.Enabled:=False;
      FormUsuarios.ControleDeAcessos1Button.Enabled:=False;
      FormUsuarios.Localizar1.Enabled:=False;
      FormUsuarios.Localizar1Button.Enabled:=False;
      FormUsuarios.Relatorios1.Enabled:=False;
      FormUsuarios.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormUsuarios<>nil then
    begin
      FormUsuarios.ControleDeAcessos1.Enabled:=True;
      FormUsuarios.ControleDeAcessos1Button.Enabled:=True;
      FormUsuarios.Localizar1.Enabled:=True;
      FormUsuarios.Localizar1Button.Enabled:=True;
      FormUsuarios.Relatorios1.Enabled:=True;
      FormUsuarios.Relatorios1Button.Enabled:=True;
      //...
      //FormMain.DesabilitarControles(FormUsuarios); //pq estava comentado?
      FormMain.SetFields(FormUsuarios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PEDIDO DE VENDAS                                                           //
//##############################################################################
{$REGION 'TABELA VENDAS'}
procedure TDM.CalcularTotaisVenda(DarPost: Boolean);
begin
  TBVendas.Edit;
  if (TBVendasVED_MANUAL.IsNull) or (TBVendasVED_MANUAL.Value='N') then
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('select '+
                  'sum(iif(VEI_TIPO=''S'',VEI_VALORTOTAL,0)) as TOTALSERVICOS, '+
                  'sum(iif(VEI_TIPO=''P'',VEI_VALORTOTAL,0)) as TOTALPRODUTOS, '+
                  'sum(VEI_BASEIBSCBS) as BASEIBSCBS, '+
                  'sum(VEI_BASEICMS) as BASEICMS, '+
                  'sum(VEI_BASEICMSST) as BASEICMSST, '+
                  'sum(VEI_BASEII) as BASEII, '+
                  'sum(VEI_BASEIPI) as BASEIPI, '+
                  'sum(VEI_BASEIS) as BASEIS, '+
                  'sum(VEI_BASEISS) as BASEISS, '+
                  'sum(VEI_BASEPIS) as BASEPIS, '+
                  'sum(VEI_BASEPISST) as BASEPISST, '+
                  'sum(VEI_BASECOFINS) as BASECOFINS, '+
                  'sum(VEI_BASECOFINSST) as BASECOFINSST, '+
                  'sum(VEI_DESCVALOR) as VALORDESCONTO, '+
                  'sum(VEI_PESOTOTAL) as PESOTOTAL, '+
                  'sum(VEI_PRECOCUSTOTOTAL) as PRECOCUSTOTOTAL, '+
                  'max(VEI_SEQUENCIA) as SEQUENCIA, '+
                  'sum(VEI_VALORACESSORIAS) as VALORACESSORIAS, '+
                  'sum(VEI_VALORADUANA) as VALORADUANA, '+
                  'sum(VEI_VALORCBSCREDPRES) as VALORCBSCREDPRES, '+
                  'sum(VEI_VALORCBSCREDPRESSUS) as VALORCBSCREDPRESSUS, '+
                  'sum(VEI_VALORCBSDIF) as VALORCBSDIF, '+
                  'sum(VEI_VALORCBSDEV) as VALORCBSDEV, '+
//                  '-- sum(VEI_VALORCBSMONO) as VALORCBSMONO, '+
//                  '-- sum(VEI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
//                  '-- sum(VEI_CBSMONORETIDO) as CBSMONORETIDO, '+
                  'sum(VEI_VALORCBS) as VALORCBS, '+
                  'sum(VEI_VALORCOFINS) as VALORCOFINS, '+
                  'sum(VEI_VALORCOFINSST) as VALORCOFINSST, '+
                  'sum(VEI_VALORCOMISSAO) as VALORCOMISSAO, '+
                  'sum(VEI_VALORCOMISSAOREP) as VALORCOMISSAOREP, '+
                  'sum(VEI_VALORFCP) as VALORFCP, '+
                  'sum(VEI_VALORFCPST) as VALORFCPST, '+
                  'sum(VEI_VALORFRETE) as VALORFRETE, '+
                  'sum(VEI_VALORIBSCREDPRES) as VALORIBSCREDPRES, '+
                  'sum(VEI_VALORIBSCREDPRESSUS) as VALORIBSCREDPRESSUS, '+
//                  '-- sum(VEI_IBSMONO) as IBSMONO, '+
//                  '-- sum(VEI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
//                  '-- sum(VEI_IBSMONORETIDO) as IBSMONORETIDO, '+
                  'sum(VEI_VALORIBSMUNDIF) as VALORIBSMUNDIF, '+
                  'sum(VEI_VALORIBSMUNDEV) as VALORIBSMUNDEV, '+
                  'sum(VEI_VALORIBSMUN) as VALORIBSMUN, '+
                  'sum(VEI_VALORIBSUFDIF) as VALORIBSUFDIF, '+
                  'sum(VEI_VALORIBSUFDEV) as VALORIBSUFDEV, '+
                  'sum(VEI_VALORIBSUF) as VALORIBSUF, '+
                  'sum(VEI_VALORIBS) as VALORIBS, '+
                  'sum(VEI_VALORICMS) as VALORICMS, '+
                  'sum(VEI_VALORICMSCREDSN) as VALORICMSCREDSN, '+
                  'sum(VEI_VALORICMSDESONERADO) as VALORICMSDESONERADO, '+
                  'sum(VEI_VALORICMSST) as VALORICMSST, '+
                  'sum(VEI_VALORICMSUFDEST) as VALORICMSUFDEST, '+
                  'sum(VEI_VALORICMSUFREMET) as VALORICMSUFREMET, '+
                  'sum(VEI_VALORII) as VALORII, '+
                  'sum(VEI_VALORIOF) as VALORIOF, '+
                  'sum(VEI_VALORIPI) as VALORIPI, '+
                  'sum(VEI_VALORIS) as VALORIS, '+
                  'sum(VEI_VALORISS) as VALORISS, '+
                  'sum(VEI_VALORISSDEDUCAO) as VALORISSDEDUCAO, '+
                  'sum(VEI_VALORISSDESCCOND) as VALORISSDESCCOND, '+
                  'sum(VEI_VALORISSDESCINCOND) as VALORISSDESCINCOND, '+
                  'sum(VEI_VALORISSOUTROS) as VALORISSOUTROS, '+
                  'sum(VEI_VALORISSRETENCAO) as VALORISSRETENCAO, '+
                  'sum(VEI_VALORPIS) as VALORPIS, '+
                  'sum(VEI_VALORPISST) as VALORPISST, '+
                  'sum(VEI_VALORSEGURO) as VALORSEGURO, '+
                  'sum(VEI_VALORTOTALBRUTO) as VALORTOTALBRUTO, '+
                  'sum(VEI_VALORTRIBUTOS) as VALORTRIBUTOS, '+
                  'sum(VEI_VALORTRIBUTOSEST) as VALORTRIBUTOSEST, '+
                  'sum(VEI_VALORTRIBUTOSFED) as VALORTRIBUTOSFED, '+
                  'sum(VEI_VALORTRIBUTOSIMP) as VALORTRIBUTOSIMP, '+
                  'sum(VEI_VALORTRIBUTOSMUN) as VALORTRIBUTOSMUN, '+
                  'sum(iif(VEI_SOMACOFINSST=''S'',VEI_VALORCOFINSST,0)) as SOMACOFINSST, '+
                  'sum(iif(VEI_SOMAPISST=''S'',VEI_VALORPISST,0)) as SOMAPISST '+
                  'from VENDASITENS where VEI_VENDA=:venda and VEI_COMPOETOTAL=''S''');
    QYAux.ParamByName('venda').AsInteger:=TBVendasVED_CODIGO.Value;
    QYAux.Open;

    //atualiza totais na tabela vendas.
    TBVendasVED_BASECOFINS.Value        :=QYAux.FieldByName('BASECOFINS').AsExtended;
    TBVendasVED_BASECOFINSST.Value      :=QYAux.FieldByName('BASECOFINSST').AsExtended;
    TBVendasVED_BASEICMS.Value          :=QYAux.FieldByName('BASEICMS').AsExtended;
    TBVendasVED_BASEICMSST.Value        :=QYAux.FieldByName('BASEICMSST').AsExtended;
    TBVendasVED_BASEII.Value            :=QYAux.FieldByName('BASEII').AsExtended;
    TBVendasVED_BASEIPI.Value           :=QYAux.FieldByName('BASEIPI').AsExtended;
    TBVendasVED_BASEISS.Value           :=QYAux.FieldByName('BASEISS').AsExtended;
    TBVendasVED_BASEPIS.Value           :=QYAux.FieldByName('BASEPIS').AsExtended;
    TBVendasVED_BASEPISST.Value         :=QYAux.FieldByName('BASEPISST').AsExtended;
    TBVendasVED_CUSTOTOTAL.Value        :=QYAux.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBVendasVED_DESCVALOR.Value         :=QYAux.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBVendasVED_PESOLIQ.Value           :=QYAux.FieldByName('PESOTOTAL').AsFloat;
    TBVendasVED_SEQUENCIAITEM.Value     :=QYAux.FieldByName('SEQUENCIA').AsInteger;
    TBVendasVED_TOTALADUANA.Value       :=QYAux.FieldByName('VALORADUANA').AsExtended;
    TBVendasVED_TOTALBRUTO.Value        :=QYAux.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBVendasVED_TOTALCOFINS.Value       :=QYAux.FieldByName('VALORCOFINS').AsExtended;
    TBVendasVED_TOTALCOFINSST.Value     :=QYAux.FieldByName('VALORCOFINSST').AsExtended;
    TBVendasVED_TOTALCOMISSAO.Value     :=QYAux.FieldByName('VALORCOMISSAO').AsExtended;
    TBVendasVED_TOTALCOMISSAOREP.Value  :=QYAux.FieldByName('VALORCOMISSAOREP').AsExtended;
    TBVendasVED_TOTALFCP.Value          :=QYAux.FieldByName('VALORFCP').AsExtended;
    TBVendasVED_TOTALFCPST.Value        :=QYAux.FieldByName('VALORFCPST').AsExtended;
    TBVendasVED_TOTALICMS.Value         :=QYAux.FieldByName('VALORICMS').AsExtended;
    TBVendasVED_TOTALICMSCREDSN.Value   :=QYAux.FieldByName('VALORICMSCREDSN').AsExtended;
    TBVendasVED_TOTALICMSST.Value       :=QYAux.FieldByName('VALORICMSST').AsExtended;
    TBVendasVED_TOTALICMSUFDEST.Value   :=QYAux.FieldByName('VALORICMSUFDEST').AsExtended;
    TBVendasVED_TOTALICMSUFREMET.Value  :=QYAux.FieldByName('VALORICMSUFREMET').AsExtended;
    TBVendasVED_TOTALII.Value           :=QYAux.FieldByName('VALORII').AsExtended;
    TBVendasVED_TOTALIOF.Value          :=QYAux.FieldByName('VALORIOF').AsExtended;
    TBVendasVED_TOTALIPI.Value          :=QYAux.FieldByName('VALORIPI').AsExtended;
    TBVendasVED_TOTALISS.Value          :=QYAux.FieldByName('VALORISS').AsExtended;
    TBVendasVED_TOTALISSDEDUCAO.Value   :=QYAux.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBVendasVED_TOTALISSDESCCOND.Value  :=QYAux.FieldByName('VALORISSDESCCOND').AsExtended;
    TBVendasVED_TOTALISSDESCINCOND.Value:=QYAux.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBVendasVED_TOTALISSOUTROS.Value    :=QYAux.FieldByName('VALORISSOUTROS').AsExtended;
    TBVendasVED_TOTALISSRETENCAO.Value  :=QYAux.FieldByName('VALORISSRETENCAO').AsExtended;
    TBVendasVED_TOTALITENS.Value        :=QYAux.FieldByName('TOTALPRODUTOS').AsExtended+QYAux.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALPIS.Value          :=QYAux.FieldByName('VALORPIS').AsExtended;
    TBVendasVED_TOTALPISST.Value        :=QYAux.FieldByName('VALORPISST').AsExtended;
    TBVendasVED_TOTALPRODUTOS.Value     :=QYAux.FieldByName('TOTALPRODUTOS').AsExtended;
    TBVendasVED_TOTALSERVICOS.Value     :=QYAux.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALTRIBUTOS.Value     :=Decimais(QYAux.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSEST.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSFED.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSIMP.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSMUN.Value  :=Decimais(QYAux.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBVendasVED_VALORDESPACES.Value     :=QYAux.FieldByName('VALORACESSORIAS').AsExtended;
    TBVendasVED_VALORFRETE.Value        :=QYAux.FieldByName('VALORFRETE').AsExtended;
    TBVendasVED_VALORSEGURO.Value       :=QYAux.FieldByName('VALORSEGURO').AsExtended;

    //reforma tributária.
    TBVendasVED_BASEIBSCBS.Value            :=QYAux.FieldByName('BASEIBSCBS').AsExtended;
    TBVendasVED_BASEIS.Value                :=QYAux.FieldByName('BASEIS').AsExtended;

    TBVendasVED_CBSCREDPRES.Value           :=QYAux.FieldByName('VALORCBSCREDPRES').AsExtended;
    TBVendasVED_CBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
    TBVendasVED_CBSDEVOLUCAO.AsExtended     :=QYAux.FieldByName('VALORCBSDEV').AsExtended;
    TBVendasVED_CBSDIFERIMENTO.AsExtended   :=QYAux.FieldByName('VALORCBSDIF').AsExtended;
    TBVendasVED_CBSMONO.AsExtended          :=0; //QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_CBSMONORETENCAO.AsExtended  :=0; //QYAux.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_CBSMONORETIDO.AsExtended    :=0; //QYAux.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_CBSVALOR.AsExtended         :=QYAux.FieldByName('VALORCBS').AsExtended;

    TBVendasVED_IBSUFDIFERIMENTO.Value      :=QYAux.FieldByName('VALORIBSUFDIF').AsExtended;
    TBVendasVED_IBSUFDEVOLUCAO.AsExtended   :=QYAux.FieldByName('VALORIBSUFDEV').AsExtended;
    TBVendasVED_IBSUFVALOR.AsExtended       :=QYAux.FieldByName('VALORIBSUF').AsExtended;
    TBVendasVED_IBSMUNDIFERIMENTO.AsExtended:=QYAux.FieldByName('VALORIBSMUNDIF').AsExtended;
    TBVendasVED_IBSMUNDEVOLUCAO.AsExtended  :=QYAux.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_IBSMUNVALOR.AsExtended      :=QYAux.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_IBSVALOR.AsExtended         :=QYAux.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_IBSCREDPRES.AsExtended      :=QYAux.FieldByName('VALORIBSCREDPRES').AsExtended;
    TBVendasVED_IBSCREDPRESSUS.AsExtended   :=QYAux.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

    TBVendasVED_TOTALIS.Value               :=QYAux.FieldByName('VALORIS').AsExtended;

    TBVendasVED_VALORTOTALRTC.Value:=TBVendasVED_TOTALBRUTO.Value- //totalbruto já contem produtos e serviços.
                                     TBVendasVED_DESCVALOR.Value-
                                     TBVendasVED_VALORFRETE.Value+
                                     TBVendasVED_VALORSEGURO.Value+
                                     TBVendasVED_VALORDESPACES.Value+
                                     TBVendasVED_IBSVALOR.Value+
                                     TBVendasVED_CBSVALOR.Value;

    //calcula o valor total da venda.
    //(+) vProd                    //
    //(-) vDesc                    //
    //(-) vICMSDeson               //
    //(+) vST                      //
    //(+) vFCPST                   //
    //(+) vFrete                   //
    //(+) vSeg                     //
    //(+) vOutro                   //
    //(+) vII                      //
    //(+) vIPI                     //
    //(+) vIPIDevol                //
    //(+) vServ                    //
    //(+) vPISST                   //
    //(+) vCofinsST                //
    TBVendasVED_VALORTOTAL.Value:=TBVendasVED_TOTALBRUTO.Value- //totalbruto já contem produtos e serviços.
                                  TBVendasVED_DESCVALOR.Value-
                                  QYAux.FieldByName('VALORICMSDESONERADO').AsExtended+
                                  TBVendasVED_TOTALICMSST.Value+
                                  TBVendasVED_TOTALFCPST.Value+
                                  TBVendasVED_VALORFRETE.Value+
                                  TBVendasVED_VALORSEGURO.Value+
                                  TBVendasVED_VALORDESPACES.Value+
                                  TBVendasVED_TOTALII.Value+
                                  TBVendasVED_TOTALIPI.Value+
                                  //nao tenho esse campo. TBNfeNFE_TOTALIPIDEV.Value+
                                  QYAux.FieldByName('SOMAPISST').AsExtended+
                                  QYAux.FieldByName('SOMACOFINSST').AsExtended;

    //calcula nova porcentagem de desconto.
    if TBVendasVED_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBVendasVED_DESCPORC.Value:=Decimais((100.0/(QYAux.FieldByName('VALORTOTALBRUTO').AsExtended+
                                                 QYAux.FieldByName('VALORFRETE').AsExtended+
                                                 QYAux.FieldByName('VALORSEGURO').AsExtended+
                                                 QYAux.FieldByName('VALORACESSORIAS').AsExtended))*TBVendasVED_DESCVALOR.AsExtended,8) else
    TBVendasVED_DESCPORC.Value:=0;

    //calcula o lucro da venda.
    TBVendasVED_LUCROVALOR.Value:=TBVendasVED_VALORTOTAL.Value-TBVendasVED_CUSTOTOTAL.Value;
    if TBVendasVED_LUCROVALOR.Value<>0 then
    begin
      if TBVendasVED_VALORTOTAL.Value=0 then
      TBVendasVED_LUCROPORC.Value:=(-100.0) else
      TBVendasVED_LUCROPORC.Value:=(TBVendasVED_LUCROVALOR.Value/TBVendasVED_VALORTOTAL.Value)*100.0;
    end;
  end;

  //if (FormVendas<>nil) and (TBVendasVED_STATUS.Value='A') then
  //begin
  //  FormVendas.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  //end;

  //o abaixo substitui o comentado acima.
  if TBVendasVED_STATUS.Value='A' then
  SimularCondicaoVenda;

  QYAux.Close;
  if DarPost then
  begin
    TBVendas.Post;
    TBVendasItens.Close;
    TBVendasItens.Open;
  end;
end;

procedure TDM.TBVendasAfterEdit(DataSet: TDataSet);
begin
  if TBVendasVED_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda finalizado.',mtWarning,[mbOk],0);
    TBVendas.Cancel;
  end;
  if TBVendasVED_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda cancelado.',mtWarning,[mbOk],0);
    TBVendas.Cancel;
  end;
  if TBVendasVED_STATUS.Value='I' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda inutilizado.',mtWarning,[mbOk],0);
    TBVendas.Cancel;
  end;
end;

procedure TDM.TBVendasAfterInsert(DataSet: TDataSet);
begin
  //localiza a condicao de pagamento para pegar a porcentagem de desconto.
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCondicoes.Open;
  //localiza a CFOP padrao.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  TBVendasVED_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBVendasVED_BASEIBSCBS.Value:=0;
  TBVendasVED_BASEIS.Value:=0;
  TBVendasVED_CBSCREDPRES.Value:=0;
  TBVendasVED_CBSCREDPRESSUS.Value:=0;
  TBVendasVED_CBSDEVOLUCAO.Value:=0;
  TBVendasVED_CBSDIFERIMENTO.Value:=0;
  TBVendasVED_CBSMONO.Value:=0;
  TBVendasVED_CBSMONORETENCAO.Value:=0;
  TBVendasVED_CBSMONORETIDO.Value:=0;
  TBVendasVED_CBSVALOR.Value:=0;
  TBVendasVED_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBVendasVED_CFOPDESC.Value:=TBNaturezasNAT_DESCRICAO.Value;
  TBVendasVED_COMISSAOPOR.Value:=TBParametrosPAR_COMISSAOPOR.Value;
  TBVendasVED_CONFERIDO.Value:='N';
  TBVendasVED_CUSTOTOTAL.Value:=0;
  TBVendasVED_DAV.Value:='N';
  TBVendasVED_DESCPORCCLIENTE.Value:=0;
  TBVendasVED_DESCPORCCONDICAO.Value:=TBCondicoesCPG_DESCPORC.Value;
  TBVendasVED_DESTACARIMPOSTOS.Value:=TBNaturezasNAT_DESTACARIMPOSTOS.Value;
  TBVendasVED_DIAPREFERENCIAL.Value:=0;
  TBVendasVED_DTCADASTRO.Value:=ServerDate;
  TBVendasVED_DTEMISSAO.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_DTPRESTSERVICO.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_DTSAIDA.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_ENTRADASAIDA.Value:=TBNaturezasNAT_ENTRADASAIDA.Value;
  TBVendasVED_ENTREGUE.Value:='N';
  TBVendasVED_ESPECIE.Value:=TBParametrosPAR_ESPECIEPADRAO.Value;
  TBVendasVED_FORMAPAGTO.Value:=TBCondicoesCPG_FORMAPAGTO.Value;
  TBVendasVED_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value;
  TBVendasVED_GOVERNAMENTAL.Value:='0 - NENHUM';
  TBVendasVED_GOVERNAMENTALALIQRED.Value:=0;
  TBVendasVED_GOVERNAMENTALOP.Value:='0 - NENHUM';
  TBVendasVED_HRCADASTRO.Value:=ServerTime;
  TBVendasVED_IBSCREDPRES.Value:=0;
  TBVendasVED_IBSCREDPRESSUS.Value:=0;
  TBVendasVED_IBSMONO.Value:=0;
  TBVendasVED_IBSMONORETENCAO.Value:=0;
  TBVendasVED_IBSMONORETIDO.Value:=0;
  TBVendasVED_IBSMUNDEVOLUCAO.Value:=0;
  TBVendasVED_IBSMUNDIFERIMENTO.Value:=0;
  TBVendasVED_IBSMUNVALOR.Value:=0;
  TBVendasVED_IBSUFDEVOLUCAO.Value:=0;
  TBVendasVED_IBSUFDIFERIMENTO.Value:=0;
  TBVendasVED_IBSUFVALOR.Value:=0;
  TBVendasVED_IBSVALOR.Value:=0;
  TBVendasVED_INFOADICFISCO.Value:=TBNaturezasNAT_OBSERVACOES.Value;
  TBVendasVED_LUCROPORC.Value:=0;
  TBVendasVED_LUCROVALOR.Value:=0;
  TBVendasVED_MANUAL.Value:='N';
  TBVendasVED_MARCA.Value:=TBParametrosPAR_MARCAPADRAO.Value;
  TBVendasVED_MOVIMENTAESTOQUE.Value:=TBNaturezasNAT_MOVIMENTAESTOQUE.Value;
  TBVendasVED_MOVIMENTAFINANCEIRO.Value:=TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
  TBVendasVED_NOTACREDITO.Value:='00 - NENHUM';
  TBVendasVED_NOTADEBITO.Value:='00 - NENHUM';
  TBVendasVED_SEQUENCIAITEM.Value:=0;
  TBVendasVED_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada, I=Inutilizada.
  TBVendasVED_TABELAPRECO.Value:=TBParametrosPAR_TABELAPRECO.Value;
  TBVendasVED_TIPOATENDIMENTO.Value:=TBParametrosPAR_NFETIPOATENDIMENTO.Value; //mesmo da NFE.
  TBVendasVED_TIPOCONSUMIDOR.Value:=TBParametrosPAR_NFETIPOCONSUMIDOR.Value;
  TBVendasVED_TIPOOPERACAO.Value:='1 - OPERACAO INTERNA';
  TBVendasVED_TOTALADUANA.Value:=0;
  TBVendasVED_TOTALBRUTO.Value:=0;
  TBVendasVED_TOTALCOFINS.Value:=0;
  TBVendasVED_TOTALCOFINSST.Value:=0;
  TBVendasVED_TOTALCOMISSAO.Value:=0;
  TBVendasVED_TOTALCOMISSAOREP.Value:=0;
  TBVendasVED_TOTALFCP.Value:=0;
  TBVendasVED_TOTALFCPST.Value:=0;
  TBVendasVED_TOTALICMS.Value:=0;
  TBVendasVED_TOTALICMSCREDSN.Value:=0;
  TBVendasVED_TOTALICMSST.Value:=0;
  TBVendasVED_TOTALICMSUFDEST.Value:=0;
  TBVendasVED_TOTALICMSUFREMET.Value:=0;
  TBVendasVED_TOTALII.Value:=0;
  TBVendasVED_TOTALIOF.Value:=0;
  TBVendasVED_TOTALIPI.Value:=0;
  TBVendasVED_TOTALIS.Value:=0;
  TBVendasVED_TOTALISS.Value:=0;
  TBVendasVED_TOTALISSDEDUCAO.Value:=0;
  TBVendasVED_TOTALISSDESCCOND.Value:=0;
  TBVendasVED_TOTALISSDESCINCOND.Value:=0;
  TBVendasVED_TOTALISSOUTROS.Value:=0;
  TBVendasVED_TOTALISSRETENCAO.Value:=0;
  TBVendasVED_TOTALITENS.Value:=0;
  TBVendasVED_TOTALPIS.Value:=0;
  TBVendasVED_TOTALPISST.Value:=0;
  TBVendasVED_TOTALPRODUTOS.Value:=0;
  TBVendasVED_TOTALSERVICOS.Value:=0;
  TBVendasVED_TOTALTRIBUTOS.Value:=0;
  TBVendasVED_TOTALTRIBUTOSEST.Value:=0;
  TBVendasVED_TOTALTRIBUTOSFED.Value:=0;
  TBVendasVED_TOTALTRIBUTOSIMP.Value:=0;
  TBVendasVED_TOTALTRIBUTOSMUN.Value:=0;
  TBVendasVED_VALORDESPACES.Value:=0;
  TBVendasVED_VALORFRETE.Value:=0;
  TBVendasVED_VALORSEGURO.Value:=0;
  TBVendasVED_VALORTOTAL.Value:=0;
  TBVendasVED_VIAINTERNET.Value:='N';
  TBVendasVED_VIAINTERNETSTATUS.Value:='F';
  TBVendasVED_VOLUMES.Value:=1;

  //if (FormVendas<>nil) and (TBVendasVED_STATUS.Value='A') then
  //FormVendas.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  if TBVendasVED_STATUS.Value='A' then
  SimularCondicaoVenda;
end;

procedure TDM.TBVendasBeforeEdit(DataSet: TDataSet);
begin
  if FormVendas<>nil then
  FormMain.SetFields(FormVendas,True);
end;

procedure TDM.TBVendasBeforeInsert(DataSet: TDataSet);
begin
  if FormVendas<>nil then
  begin
    FormMain.SetFields(FormVendas,True);
    FormVendas.PageControl1.ActivePageIndex:=0;
    FormVendas.DBEdit4.SetFocus;
    CodigosOld:='';
  end;
end;

procedure TDM.TBVendasBeforePost(DataSet: TDataSet);
begin
  TBVendasVED_DTATUALIZACAO.Value:=ServerDate;
  TBVendasVED_HRATUALIZACAO.Value:=ServerTime;
  TBVendasVED_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisVenda(False);
end;

procedure TDM.DSVendasStateChange(Sender: TObject);
begin
  if TBVendas.State in [dsInsert, dsEdit] then
  begin
    if FormVendas<>nil then
    begin
      FormVendas.PngSpeedButton4.Enabled:=True;
      FormVendas.PngSpeedButton4.Enabled:=True;
      FormVendas.PngSpeedButton5.Enabled:=True;
      FormVendas.PngSpeedButton6.Enabled:=True;
      FormVendas.PngSpeedButton7.Enabled:=True;
      FormVendas.PngSpeedButton8.Enabled:=True; //efeito contrário.
      //menus...
      FormVendas.AlterarCampoMovimentacaoEstoque1.Enabled:=False;
      FormVendas.AlterarCampoMovimentacaoFinanceiro1.Enabled:=False;
      FormVendas.AlterarTipoDeReceita1.Enabled:=False;
      FormVendas.AnaliseValorDeVendaVsTabelaPreco1.Enabled:=False;
      FormVendas.AtualizarOValorUnitarioDosItens1.Enabled:=False;
      FormVendas.CadastroDeNotasFiscais1.Enabled:=False;
      FormVendas.CadastroDeNotasFiscais1Button.Enabled:=False;
      FormVendas.CadastroDeNotasFiscaisEletronicas1.Enabled:=False;
      FormVendas.CadastroDeNotasFiscaisEletronicas1Button.Enabled:=False;
      FormVendas.CancelarPedido1.Enabled:=False;
      FormVendas.ComissoesPorVendedorAnalitico1.Enabled:=False;
      FormVendas.ComissoesPorVendedorSintetico1.Enabled:=False;
      FormVendas.ConferenciaDoPedido1.Enabled:=False;
      FormVendas.CurvaABCProdutos1.Enabled:=False;
      FormVendas.CurvaABCClientes1.Enabled:=False;
      FormVendas.DuplicarPedido1.Enabled:=False;
      FormVendas.DuplicarPedido1Button.Enabled:=False;
      FormVendas.EnviarPedidoPorEmail1.Enabled:=False;
      FormVendas.EnviarPedidoPorEmail1Button.Enabled:=False;
      FormVendas.EnviarPedidoPorWhatsApp1.Enabled:=False;
      FormVendas.EnviarPedidoPorWhatsApp1Button.Enabled:=False;
      FormVendas.EtiquetaParaConferencia1.Enabled:=False;
      FormVendas.EtiquetaParaEmbalagem1.Enabled:=False;
      FormVendas.EtiquetaParaEmbalagemModelo21.Enabled:=False;
      FormVendas.FinalizarPedido1.Enabled:=False;
      FormVendas.FrequenciaDeVendasMensalPorVendedor1.Enabled:=False;
      FormVendas.FrequenciaDeVendasPorVendedor1.Enabled:=False;
      FormVendas.FrequenciaDeVendasSemAgrupamento1.Enabled:=False;
      FormVendas.GerarDAV1.Enabled:=False;
      FormVendas.GerarDAV1Button.Enabled:=False;
      FormVendas.GerarNFe1.Enabled:=False;
      FormVendas.GerarNFe1Button.Enabled:=False;
      FormVendas.GerarNota1.Enabled:=False;
      FormVendas.GerarNota1Button.Enabled:=False;
      FormVendas.GerarPedidoUnificado1.Enabled:=False;
      FormVendas.ImportarArquivoXML1.Enabled:=False;
      FormVendas.InutilizarPedido1.Enabled:=False;
      FormVendas.InutilizarPedido1Button.Enabled:=False;
      FormVendas.Localizar1.Enabled:=False;
      FormVendas.Localizar1Button.Enabled:=False;
      FormVendas.LocalizarVendaNoContasAReceber1.Enabled:=False;
      FormVendas.LocalizarVendaNoContasAReceber1Button.Enabled:=False;
      FormVendas.MarcarPedidoComoEntregue1.Enabled:=False;
      FormVendas.MarcarPedidoComoEntregue1Button.Enabled:=False;
      FormVendas.MargemBruta1.Enabled:=False;
      FormVendas.MelhoresClientesPorItemVendido1.Enabled:=False;
      FormVendas.OrdemDeEntrega1.Enabled:=False;
      FormVendas.OrdemDeSeparacao1.Enabled:=False;
      FormVendas.OrdemDeSeparacaoSelecionarNFs.Enabled:=False;
      FormVendas.PedidoDeVendasComoOrcamento1.Enabled:=False;
      FormVendas.PedidoDeVendas1.Enabled:=False;
      FormVendas.PedidoDeVendas1Button.Enabled:=False;
      FormVendas.PedidoDeVendasA51.Enabled:=False;
      FormVendas.PedidoDeVendasComOrdemDeProducao1.Enabled:=False;
      FormVendas.ProdutosVendidosPorCliente1.Enabled:=False;
      FormVendas.ProdutosVendidosPorVendedor1.Enabled:=False;
      FormVendas.ProtocoloDeEntregaATransportadora1.Enabled:=False;
      FormVendas.RastreamentoDeLotes1.Enabled:=False;
      FormVendas.Relatorios2.Enabled:=False;
      FormVendas.Relatorios2Button.Enabled:=False;
      FormVendas.TrocasPorVendedor1.Enabled:=False;
      FormVendas.VendasPorCliente1.Enabled:=False;
      FormVendas.VendasPorClienteComItens1.Enabled:=False;
      FormVendas.VendasPorClienteComItensEDataDeEntrega1.Enabled:=False;
      FormVendas.VendasPorCondicaoDePagamentoAnalitico1.Enabled:=False;
      FormVendas.VendasPorCondicaoDePagamentoSintetico1.Enabled:=False;
      FormVendas.VendasPorFamilia1.Enabled:=False;
      FormVendas.VendasPorGrupo1.Enabled:=False;
      FormVendas.VendasPorMarca1.Enabled:=False;
      FormVendas.VendasPorProduto1.Enabled:=False;
      FormVendas.VendasPorRamoDeAtividade1.Enabled:=False;
      FormVendas.VendasPorVendedorAnalitico1.Enabled:=False;
      FormVendas.VendasPorVendedorECidade1.Enabled:=False;
      FormVendas.VendasPorVendedorEEstado1.Enabled:=False;
      FormVendas.VendasPorVendedorETipoDeFrete1.Enabled:=False;
      FormVendas.VendasPorVendedorSintetico1.Enabled:=False;
    end;
  end else
  begin
    if FormVendas<>nil then
    begin
      FormVendas.PngSpeedButton4.Enabled:=False;
      FormVendas.PngSpeedButton5.Enabled:=False;
      FormVendas.PngSpeedButton6.Enabled:=False;
      FormVendas.PngSpeedButton7.Enabled:=False;
      FormVendas.PngSpeedButton8.Enabled:=False; //efeito contrário.
      //menus...
      FormVendas.AlterarCampoMovimentacaoEstoque1.Enabled:=True;
      FormVendas.AlterarCampoMovimentacaoFinanceiro1.Enabled:=True;
      FormVendas.AlterarTipoDeReceita1.Enabled:=True;
      FormVendas.AnaliseValorDeVendaVsTabelaPreco1.Enabled:=True;
      FormVendas.AtualizarOValorUnitarioDosItens1.Enabled:=True;
      FormVendas.CadastroDeNotasFiscais1.Enabled:=True;
      FormVendas.CadastroDeNotasFiscais1Button.Enabled:=True;
      FormVendas.CadastroDeNotasFiscaisEletronicas1.Enabled:=True;
      FormVendas.CadastroDeNotasFiscaisEletronicas1Button.Enabled:=True;
      FormVendas.CancelarPedido1.Enabled:=True;
      FormVendas.ComissoesPorVendedorAnalitico1.Enabled:=True;
      FormVendas.ComissoesPorVendedorSintetico1.Enabled:=True;
      FormVendas.ConferenciaDoPedido1.Enabled:=True;
      FormVendas.CurvaABCClientes1.Enabled:=True;
      FormVendas.CurvaABCProdutos1.Enabled:=True;
      FormVendas.DuplicarPedido1.Enabled:=True;
      FormVendas.DuplicarPedido1Button.Enabled:=True;
      FormVendas.EnviarPedidoPorEmail1.Enabled:=True;
      FormVendas.EnviarPedidoPorEmail1Button.Enabled:=True;
      FormVendas.EnviarPedidoPorWhatsApp1.Enabled:=True;
      FormVendas.EnviarPedidoPorWhatsApp1Button.Enabled:=True;
      FormVendas.EtiquetaParaConferencia1.Enabled:=True;
      FormVendas.EtiquetaParaEmbalagem1.Enabled:=True;
      FormVendas.EtiquetaParaEmbalagemModelo21.Enabled:=True;
      FormVendas.FinalizarPedido1.Enabled:=True;
      FormVendas.FrequenciaDeVendasMensalPorVendedor1.Enabled:=True;
      FormVendas.FrequenciaDeVendasPorVendedor1.Enabled:=True;
      FormVendas.FrequenciaDeVendasSemAgrupamento1.Enabled:=True;
      FormVendas.GerarDAV1.Enabled:=True;
      FormVendas.GerarDAV1Button.Enabled:=True;
      FormVendas.GerarNFe1.Enabled:=True;
      FormVendas.GerarNFe1Button.Enabled:=True;
      FormVendas.GerarNota1.Enabled:=True;
      FormVendas.GerarNota1Button.Enabled:=True;
      FormVendas.GerarPedidoUnificado1.Enabled:=True;
      FormVendas.ImportarArquivoXML1.Enabled:=True;
      FormVendas.InutilizarPedido1.Enabled:=True;
      FormVendas.InutilizarPedido1Button.Enabled:=True;
      FormVendas.Localizar1.Enabled:=True;
      FormVendas.Localizar1Button.Enabled:=True;
      FormVendas.LocalizarVendaNoContasAReceber1.Enabled:=True;
      FormVendas.LocalizarVendaNoContasAReceber1Button.Enabled:=True;
      FormVendas.MarcarPedidoComoEntregue1.Enabled:=True;
      FormVendas.MarcarPedidoComoEntregue1Button.Enabled:=True;
      FormVendas.MargemBruta1.Enabled:=True;
      FormVendas.MelhoresClientesPorItemVendido1.Enabled:=True;
      FormVendas.OrdemDeEntrega1.Enabled:=True;
      FormVendas.OrdemDeSeparacao1.Enabled:=True;
      FormVendas.OrdemDeSeparacaoSelecionarNFs.Enabled:=True;
      FormVendas.PedidoDeVendasComoOrcamento1.Enabled:=True;
      FormVendas.PedidoDeVendas1.Enabled:=True;
      FormVendas.PedidoDeVendas1Button.Enabled:=True;
      FormVendas.PedidoDeVendasA51.Enabled:=True;
      FormVendas.PedidoDeVendasComOrdemDeProducao1.Enabled:=True;
      FormVendas.ProdutosVendidosPorCliente1.Enabled:=True;
      FormVendas.ProdutosVendidosPorVendedor1.Enabled:=True;
      FormVendas.ProtocoloDeEntregaATransportadora1.Enabled:=True;
      FormVendas.RastreamentoDeLotes1.Enabled:=True;
      FormVendas.Relatorios2.Enabled:=True;
      FormVendas.Relatorios2Button.Enabled:=True;
      FormVendas.TrocasPorVendedor1.Enabled:=False;
      FormVendas.VendasPorCliente1.Enabled:=True;
      FormVendas.VendasPorClienteComItens1.Enabled:=True;
      FormVendas.VendasPorClienteComItensEDataDeEntrega1.Enabled:=True;
      FormVendas.VendasPorCondicaoDePagamentoAnalitico1.Enabled:=True;
      FormVendas.VendasPorCondicaoDePagamentoSintetico1.Enabled:=True;
      FormVendas.VendasPorFamilia1.Enabled:=True;
      FormVendas.VendasPorGrupo1.Enabled:=True;
      FormVendas.VendasPorMarca1.Enabled:=True;
      FormVendas.VendasPorProduto1.Enabled:=True;
      FormVendas.VendasPorRamoDeAtividade1.Enabled:=True;
      FormVendas.VendasPorVendedorAnalitico1.Enabled:=True;
      FormVendas.VendasPorVendedorECidade1.Enabled:=True;
      FormVendas.VendasPorVendedorEEstado1.Enabled:=True;
      FormVendas.VendasPorVendedorETipoDeFrete1.Enabled:=True;
      FormVendas.VendasPorVendedorSintetico1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVendas);
      FormMain.SetFields(FormVendas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PEDIDO DE VENDAS - ITENS                                                   //
//##############################################################################
{$REGION 'TABELA VENDASITENS'}
procedure TDM.CalcularTotaisVendaItens(DarPost: Boolean);
var BC, ICMS: Currency;
begin
  if (TBVendasVED_MANUAL.IsNull) or (TBVendasVED_MANUAL.Value='N') then
  begin
    //calcula o valor bruto.
    TBVendasItensVEI_VALORTOTALBRUTO.Value:=Decimais((TBVendasItensVEI_QUANTIDADE.AsExtended*TBVendasItensVEI_VALORUNIT.AsExtended),2);

    {$REGION 'calcula o valor total com desconto.'}
    TBVendasItensVEI_VALORTOTAL.Value:=Decimais((TBVendasItensVEI_QUANTIDADE.AsExtended*TBVendasItensVEI_VALORUNIT.AsExtended),2);
    if TBVendasItensVEI_QUANTIDADETROCA.Value < 0 then TBVendasItensVEI_QUANTIDADETROCA.Value:=0;
    if TBVendasItensVEI_QUANTIDADETROCA.Value > 0 then
    begin
      if TBVendasItensVEI_QUANTIDADETROCA.Value > (TBVendasItensVEI_QUANTIDADE.Value * TBVendasItensVEI_CONVERSAO.Value) then
      TBVendasItensVEI_QUANTIDADETROCA.Value:=TBVendasItensVEI_QUANTIDADE.Value * TBVendasItensVEI_CONVERSAO.Value;
      //TBVendasItensVEI_DESCVALOR.Value:=Decimais((TBVendasItensVEI_QUANTIDADETROCA.Value*TBVendasItensVEI_VALORUNIT.Value),2);
      //(bruto divido pela (quantidade*conversao)=valor unitário.) * quantidade de troca.
      TBVendasItensVEI_DESCVALOR.Value:=Decimais(TBVendasItensVEI_QUANTIDADETROCA.AsExtended * (TBVendasItensVEI_VALORTOTALBRUTO.AsExtended / (TBVendasItensVEI_QUANTIDADE.AsExtended*TBVendasItensVEI_CONVERSAO.AsExtended)),2);
      TBVendasItensVEI_DESCPORC.Value:=Decimais((100.0/((TBVendasItensVEI_QUANTIDADE.AsExtended*TBVendasItensVEI_VALORUNIT.AsExtended)+
                                                TBVendasItensVEI_VALORFRETE.AsExtended+
                                                TBVendasItensVEI_VALORSEGURO.AsExtended+
                                                TBVendasItensVEI_VALORACESSORIAS.AsExtended))*TBVendasItensVEI_DESCVALOR.AsExtended,8);
    end else
    TBVendasItensVEI_DESCVALOR.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100.00)*TBVendasItensVEI_DESCPORC.AsExtended,2);

    if (TBVendasItensVEI_COMPOETOTAL.Value='S') or (TBVendasItensVEI_COMPOETOTAL.IsNull) then
    TBVendasItensVEI_VALORTOTAL.Value:=TBVendasItensVEI_VALORTOTAL.Value-TBVendasItensVEI_DESCVALOR.Value else
    TBVendasItensVEI_VALORTOTAL.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula o peso total do produto.'}
    //quantidade * peso = pesototal (liquido).
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBVendasItensVEI_PESOTOTAL.Value:=TBVendasItensVEI_QUANTIDADE.AsExtended*TBVendasItensVEI_PESO.Value;
    {$ENDREGION}

    {$REGION 'calcula valor do IPI.'}
    TBVendasItensVEI_BASEIPI.Value:=0;
    TBVendasItensVEI_VALORIPI.Value:=0;
    if TBVendasItensVEI_ALIQIPI.Value>0 then
    begin
      TBVendasItensVEI_BASEIPI.Value:=TBVendasItensVEI_VALORTOTAL.Value+TBVendasItensVEI_VALORFRETE.Value;
      TBVendasItensVEI_VALORIPI.Value:=Decimais((TBVendasItensVEI_BASEIPI.AsExtended/100.00)*TBVendasItensVEI_ALIQIPI.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ICMS'}
    //base=total+frete+seguro+acessorias-desconto.
    TBVendasItensVEI_BASEICMS.Value:=0;
    TBVendasItensVEI_VALORICMS.Value:=0;
    TBVendasItensVEI_VALORICMSUFDEST.Value:=0;
    TBVendasItensVEI_VALORICMSUFREMET.Value:=0;
    TBVendasItensVEI_VALORFCP.Value:=0;
    if TBVendasItensVEI_COMPOEBASEICMS.Value='S' then
    begin
      TBVendasItensVEI_BASEICMS.Value:=TBVendasItensVEI_VALORTOTAL.Value+
                                       TBVendasItensVEI_VALORFRETE.Value+
                                       TBVendasItensVEI_VALORSEGURO.Value+
                                       TBVendasItensVEI_VALORACESSORIAS.Value;

      //24-11-2020
      if TBVendasVED_TIPOCONSUMIDOR.Value='1 - CONSUMIDOR FINAL' then
      TBVendasItensVEI_BASEICMS.Value:=TBVendasItensVEI_BASEICMS.Value+TBVendasItensVEI_VALORIPI.Value;

      if TBVendasItensVEI_ALIQICMSRED.Value<>0 then
      TBVendasItensVEI_BASEICMS.Value:=Decimais(TBVendasItensVEI_BASEICMS.AsExtended-((TBVendasItensVEI_BASEICMS.AsExtended/100.00)*TBVendasItensVEI_ALIQICMSRED.AsExtended),2);
      TBVendasItensVEI_VALORICMS.Value:=Decimais(((TBVendasItensVEI_BASEICMS.AsExtended/100.00)*TBVendasItensVEI_ALIQICMS.AsExtended),2);

      //calcula o valor do ICMS na UF do destinatário - 40% em 2016, 60% em 2017, 80% em 2018, 100% a partir de 2019.
      //40% de (base calculo / 100 * (aliq icms - interestadual))
      //a soma do valor dest e remet deve ser igual a (base calculo / 100 * (aliq icms - interestadual))
      if TBEmpresaEMP_ESTADO.Value<>TBVendasVED_ESTADO.Value then
      begin
        ICMS:=(TBVendasItensVEI_BASEICMS.AsExtended/100.00) * (Abs(TBVendasItensVEI_ALIQICMS.AsExtended-TBVendasItensVEI_ALIQICMSINTER.AsExtended));
        TBVendasItensVEI_VALORICMSUFDEST.Value:=Decimais((ICMS/100.00) * TBVendasItensVEI_ALIQICMSINTERPART.AsExtended,2);

        //calcula o valor do ICMS na UF do remetente
        TBVendasItensVEI_VALORICMSUFREMET.Value:=Decimais((ICMS/100.00) * (100-TBVendasItensVEI_ALIQICMSINTERPART.AsExtended),2);

        //calcula o valor do FCP.
        TBVendasItensVEI_VALORFCP.Value:=(TBVendasItensVEI_BASEICMS.Value/100.00) * TBVendasItensVEI_ALIQFCP.Value;
      end;
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ICMS ST.'}
    //base=total+frete+seguro+acessorias+mva * aliq uf emitente - icmsnormal.
    TBVendasItensVEI_BASEICMSST.Value:=0;
    TBVendasItensVEI_VALORICMSST.Value:=0;
    TBVendasItensVEI_VALORFCPST.Value:=0;
    if (TBVendasItensVEI_COMPOEBASEICMSST.Value='S') and (TBVendasItensVEI_ALIQICMSST.Value>0) then
    begin
      BC:=TBVendasItensVEI_VALORTOTAL.AsExtended+
          TBVendasItensVEI_VALORIPI.AsExtended+
          TBVendasItensVEI_VALORFRETE.AsExtended+
          TBVendasItensVEI_VALORSEGURO.AsExtended+
          TBVendasItensVEI_VALORACESSORIAS.AsExtended;
      if TBVendasItensVEI_ALIQICMSRED.Value<>0 then
      BC:=Decimais(BC-((BC/100)*TBVendasItensVEI_ALIQICMSRED.AsExtended),2);
      ICMS:=Decimais(((BC/100)*TBVendasItensVEI_ALIQICMS.AsExtended),2);

      TBVendasItensVEI_BASEICMSST.Value:=Decimais(((TBVendasItensVEI_VALORTOTAL.AsExtended+
                                                    TBVendasItensVEI_VALORIPI.AsExtended+
                                                    TBVendasItensVEI_VALORFRETE.AsExtended+
                                                    TBVendasItensVEI_VALORSEGURO.AsExtended+
                                                    TBVendasItensVEI_VALORACESSORIAS.AsExtended)+
                                                  ((TBVendasItensVEI_VALORTOTAL.AsExtended+
                                                    TBVendasItensVEI_VALORIPI.AsExtended+
                                                    TBVendasItensVEI_VALORFRETE.AsExtended+
                                                    TBVendasItensVEI_VALORSEGURO.AsExtended+
                                                    TBVendasItensVEI_VALORACESSORIAS.AsExtended)/100) *
                                                    TBVendasItensVEI_ALIQICMSADICST.AsExtended),2);
      TBVendasItensVEI_VALORICMSST.Value:=Decimais(((TBVendasItensVEI_BASEICMSST.AsExtended/100)*TBVendasItensVEI_ALIQICMSST.AsExtended)-ICMS,2);

      TBVendasItensVEI_VALORFCPST.Value:=(TBVendasItensVEI_BASEICMSST.Value/100.00) * TBVendasItensVEI_ALIQFCPST.Value;
    end;
    {$ENDREGION}

    {$REGION 'calcula o valor do crédito do simples nacional.'}
    TBIcms.Close;
    TBIcms.ParamByName('codigo').AsInteger:=TBVendasItensVEI_CSTICMS.Value;
    TBIcms.Open;
    TBVendasItensVEI_VALORICMSCREDSN.Value:=0;
    //if (TBVendasItensICM_CALCULACREDITOSN.Value='S') and (TBVendasItensNAT_CALCULACREDITOSN.Value='S') then
    if (TBIcmsICM_CALCULACREDITOSN.Value='S') and (TBVendasItensNAT_CALCULACREDITOSN.Value='S') then
    begin
      TBVendasItensVEI_VALORICMSCREDSN.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100)*TBVendasVED_ALIQICMSCREDSN.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do II.'}
    TBVendasItensVEI_BASEII.Value:=0;
    TBVendasItensVEI_VALORII.Value:=0;
    if TBVendasItensVEI_ALIQII.Value>0 then
    begin
      TBVendasItensVEI_BASEII.Value:=TBVendasItensVEI_VALORTOTAL.Value;
      TBVendasItensVEI_VALORII.Value:=Decimais((TBVendasItensVEI_BASEII.AsExtended/100)*TBVendasItensVEI_ALIQII.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do ISS.'}
    TBVendasItensVEI_BASEISS.Value:=0;
    TBVendasItensVEI_VALORISS.Value:=0;
    if TBVendasItensVEI_ALIQISS.Value>0 then
    begin
      TBVendasItensVEI_BASEISS.Value:=TBVendasItensVEI_VALORTOTAL.Value;
      TBVendasItensVEI_VALORISS.Value:=Decimais((TBVendasItensVEI_BASEISS.AsExtended/100)*TBVendasItensVEI_ALIQISS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do PIS.'}
    TBVendasItensVEI_BASEPIS.Value:=0;
    TBVendasItensVEI_VALORPIS.Value:=0;
    if TBVendasItensVEI_ALIQPIS.Value>0 then
    begin
      TBVendasItensVEI_BASEPIS.Value:=TBVendasItensVEI_VALORTOTAL.Value+TBVendasItensVEI_VALORFRETE.Value;
      TBVendasItensVEI_VALORPIS.Value:=Decimais((TBVendasItensVEI_BASEPIS.AsExtended/100)*TBVendasItensVEI_ALIQPIS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do PISST.'}
    TBVendasItensVEI_BASEPISST.Value:=0;
    TBVendasItensVEI_VALORPISST.Value:=0;
    if TBVendasItensVEI_ALIQPISST.Value>0 then
    begin
      TBVendasItensVEI_BASEPISST.Value:=TBVendasItensVEI_VALORTOTAL.Value+TBVendasItensVEI_VALORFRETE.Value;
      TBVendasItensVEI_VALORPISST.Value:=Decimais((TBVendasItensVEI_BASEPISST.AsExtended/100)*TBVendasItensVEI_ALIQPISST.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do COFINS.'}
    TBVendasItensVEI_BASECOFINS.Value:=0;
    TBVendasItensVEI_VALORCOFINS.Value:=0;
    if TBVendasItensVEI_ALIQCOFINS.Value>0 then
    begin
      TBVendasItensVEI_BASECOFINS.Value:=TBVendasItensVEI_VALORTOTAL.Value+TBVendasItensVEI_VALORFRETE.Value;
      TBVendasItensVEI_VALORCOFINS.Value:=Decimais((TBVendasItensVEI_BASECOFINS.AsExtended/100)*TBVendasItensVEI_ALIQCOFINS.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do COFINS ST.'}
    TBVendasItensVEI_BASECOFINSST.Value:=0;
    TBVendasItensVEI_VALORCOFINSST.Value:=0;
    if TBVendasItensVEI_ALIQCOFINSST.Value>0 then
    begin
      TBVendasItensVEI_BASECOFINSST.Value:=TBVendasItensVEI_VALORTOTAL.Value+TBVendasItensVEI_VALORFRETE.Value;
      TBVendasItensVEI_VALORCOFINSST.Value:=Decimais((TBVendasItensVEI_BASECOFINSST.AsExtended/100)*TBVendasItensVEI_ALIQCOFINSST.AsExtended,2);
    end;
    {$ENDREGION}

    {$REGION 'calcula a comissão do vendedor sobre o item. (por produto).'}
    //valor total - IPI - ICMSST / 100 * %comissao.
    if TBVendasItensNAT_CALCULACOMISSAO.Value='S' then
    TBVendasItensVEI_VALORCOMISSAO.Value:=Decimais((((TBVendasItensVEI_VALORTOTAL.AsExtended-TBVendasItensVEI_VALORIPI.AsExtended-TBVendasItensVEI_VALORICMSST.AsExtended)/100.0)*TBVendasItensVEI_COMISSAO.AsExtended),2) else
    TBVendasItensVEI_VALORCOMISSAO.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula a comissão do representante sobre o item. (por produto).'}
    //valor total - IPI - ICMSST / 100 * %comissao.
    if TBVendasItensNAT_CALCULACOMISSAO.Value='S' then
    TBVendasItensVEI_VALORCOMISSAOREP.Value:=Decimais((((TBVendasItensVEI_VALORTOTAL.AsExtended-TBVendasItensVEI_VALORIPI.AsExtended-TBVendasItensVEI_VALORICMSST.AsExtended)/100.0)*TBVendasItensVEI_COMISSAOREP.AsExtended),2) else
    TBVendasItensVEI_VALORCOMISSAOREP.Value:=0;
    {$ENDREGION}

    {$REGION 'calcula o lucro no item.'}
    TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=TBVendasItensVEI_PRECOCUSTO.Value*TBVendasItensVEI_QUANTIDADE.Value;
    TBVendasItensVEI_LUCROVALOR.Value:=TBVendasItensVEI_VALORTOTAL.Value-TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
    if TBVendasItensVEI_LUCROVALOR.Value<>0 then
    begin
      if TBVendasItensVEI_VALORTOTAL.Value=0 then
      TBVendasItensVEI_LUCROPORC.Value:=(-100.0) else
      TBVendasItensVEI_LUCROPORC.Value:=(TBVendasItensVEI_LUCROVALOR.Value/TBVendasItensVEI_VALORTOTAL.Value)*100.0;
    end;
    {$ENDREGION}

    {$REGION 'calcula o total aproximado dos tributos. - LEI DA TRANSPARENCIA.'}
    TBClassFiscal.Close;
    TBClassFiscal.ParamByName('codigo').AsString:=TBVendasItensVEI_CLASSFISCAL.Value;
    TBClassFiscal.ParamByName('excecao').AsInteger:=TBVendasItensVEI_EXCECAO.Value;
    TBClassFiscal.Open;
    if (Copy(TBVendasItensVEI_ORIGEM.Value,1,1)='0') or
       (Copy(TBVendasItensVEI_ORIGEM.Value,1,1)='3') or
       (Copy(TBVendasItensVEI_ORIGEM.Value,1,1)='4') or
       (Copy(TBVendasItensVEI_ORIGEM.Value,1,1)='5') then //0,3,4,5 = produtos nacionais
    begin
      TBVendasItensVEI_VALORTRIBUTOSEST.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAESTADUAL.AsExtended,2);
      TBVendasItensVEI_VALORTRIBUTOSFED.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTANACIONAL.AsExtended,2);
      TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAMUNICIPAL.AsExtended,2);
      TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=0;
      TBVendasItensVEI_VALORTRIBUTOS.Value:=TBVendasItensVEI_VALORTRIBUTOSEST.Value+TBVendasItensVEI_VALORTRIBUTOSFED.Value+TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
    end else
    begin
      TBVendasItensVEI_VALORTRIBUTOSEST.Value:=0;
      TBVendasItensVEI_VALORTRIBUTOSFED.Value:=0;
      TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=0;
      TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=Decimais((TBVendasItensVEI_VALORTOTAL.AsExtended/100)*TBClassFiscalCLF_ALIQUOTAIMPORTACAO.AsExtended,2);
      TBVendasItensVEI_VALORTRIBUTOS.Value:=TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
    end;
    {$ENDREGION}

    //calculos da reforma tributária.
    {$REGION 'calcula valor do IS.'}
    TBVendasItensVEI_BASEIS.Value:=0;
    TBVendasItensVEI_VALORIS.Value:=0;
    if TBVendasItensVEI_ALIQIS.Value>0 then
    begin
      //base de calculo do IS
      //      (+) vProd
      //      (+) vServ
      //      (+) vFrete
      //      (+) vSeg
      //      (+) vOutro
      //      (+) vII
      //      (-) vDesc
      //      (-) vPIS
      //      (-) vCOFINS
      //      (-) vICMS
      //      (-) vICMSUFDest
      //      (-) vFCP
      //      (-) vFCPUFDest
      //      (-) vICMSMono
      TBVendasItensVEI_BASEIS.Value:=Decimais(
          TBVendasItensVEI_VALORTOTALBRUTO.AsExtended
        + TBVendasItensVEI_VALORFRETE.AsExtended
        + TBVendasItensVEI_VALORSEGURO.AsExtended
        + TBVendasItensVEI_VALORACESSORIAS.AsExtended
        + TBVendasItensVEI_VALORII.AsExtended
        - TBVendasItensVEI_DESCVALOR.AsExtended
        - TBVendasItensVEI_VALORPIS.AsExtended
        - TBVendasItensVEI_VALORCOFINS.AsExtended
        - TBVendasItensVEI_VALORICMS.AsExtended
        - TBVendasItensVEI_VALORICMSUFDEST.AsExtended
        - TBVendasItensVEI_VALORFCP.AsExtended
        - TBVendasItensVEI_VALORISS.AsExtended, 2
      );
      TBVendasItensVEI_VALORIS.Value:=Decimais((TBVendasItensVEI_BASEIS.AsExtended/100)*TBVendasItensVEI_ALIQIS.AsExtended,2);
    end;
    if TBVendasItensVEI_ALIQISESP.Value>0 then
    TBVendasItensVEI_VALORIS.Value:=TBVendasItensVEI_VALORIS.Value + Decimais((TBVendasItensVEI_QUANTIDADE.AsExtended/100)*TBVendasItensVEI_ALIQISESP.AsExtended,2);
    {$ENDREGION}

    {$REGION 'composicao da base de calculo IBSCBS'}
    //composicao da base
    //    (+) vProd
    //    (+) vServ
    //    (+) vFrete
    //    (+) vSeg
    //    (+) vOutro
    //    (+) vII
    //    (-) vDesc
    //    (-) vPIS
    //    (-) vCOFINS
    //    (-) vICMS
    //    (-) vICMSUFDest
    //    (-) vFCP
    //    (-) vFCPUFDest
    //    (-) vICMSMono
    //    (-) vISSQN
    //    (+) vIS
    TBVendasItensVEI_BASEIBSCBS.Value:=Decimais(
        TBVendasItensVEI_VALORTOTALBRUTO.AsExtended //qtde * valorunit
      + TBVendasItensVEI_VALORFRETE.AsExtended
      + TBVendasItensVEI_VALORSEGURO.AsExtended
      + TBVendasItensVEI_VALORACESSORIAS.AsExtended
      + TBVendasItensVEI_VALORII.AsExtended
      - TBVendasItensVEI_DESCVALOR.AsExtended
      - TBVendasItensVEI_VALORPIS.AsExtended
      - TBVendasItensVEI_VALORPISST.AsExtended
      - TBVendasItensVEI_VALORCOFINS.AsExtended
      - TBVendasItensVEI_VALORCOFINSST.AsExtended
      - TBVendasItensVEI_VALORICMS.AsExtended
      - TBVendasItensVEI_VALORICMSUFDEST.AsExtended
      - TBVendasItensVEI_VALORFCP.AsExtended
      - TBVendasItensVEI_VALORISS.AsExtended
      + TBVendasItensVEI_VALORIS.AsExtended, 2
    );
    if TBVendasItensVEI_SOMACOFINSST.Value='N' then TBVendasItensVEI_BASEIBSCBS.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended + TBVendasItensVEI_VALORCOFINSST.AsExtended,2);
    if TBVendasItensVEI_SOMAPISST.Value='N' then TBVendasItensVEI_BASEIBSCBS.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended + TBVendasItensVEI_VALORPISST.AsExtended,2);
    {$ENDREGION}

    {$REGION 'calcula aliquota efetiva IBS'}
    //pAliqEfet = pIBSUF × (1 - pRedAliq / 100).
//      TBNfeItensNFI_ALIQIBSMUNEFE.Value:=0;
//    if TBNfeItensNFI_ALIQIBSMUNRED.Value > 0 then
//    TBNfeItensNFI_ALIQIBSMUNEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSMUN.AsExtended * (1-TBNfeItensNFI_ALIQIBSMUNRED.AsExtended/100), 4);
//    if TBNfeNFE_GOVERNAMENTALALIQRED.Value > 0 then
//    TBNfeItensNFI_ALIQIBSMUNEFE.Value:=Decimais(TBNfeItensNFI_ALIQIBSMUN.AsExtended * (1-TBNfeItensNFI_ALIQIBSMUNRED.AsExtended/100) * (1-TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended/100), 4);


    TBVendasItensVEI_ALIQIBSMUNEFE.Value:=0;
    if TBVendasItensVEI_ALIQIBSMUNRED.Value > 0 then
    TBVendasItensVEI_ALIQIBSMUNEFE.Value:=Decimais(TBVendasItensVEI_ALIQIBSMUN.AsExtended * (1-TBVendasItensVEI_ALIQIBSMUNRED.AsExtended/100), 4);
    if TBVendasVED_GOVERNAMENTALALIQRED.Value > 0 then
    TBVendasItensVEI_ALIQIBSMUNEFE.Value:=Decimais(TBVendasItensVEI_ALIQIBSMUN.AsExtended * (1-TBVendasItensVEI_ALIQIBSMUNRED.AsExtended/100) * (1-TBVendasVED_GOVERNAMENTALALIQRED.AsExtended/100), 4);

    TBVendasItensVEI_ALIQIBSUFEFE.Value:=0;
    if TBVendasItensVEI_ALIQIBSUFRED.Value > 0 then
    TBVendasItensVEI_ALIQIBSUFEFE.Value:=Decimais(TBVendasItensVEI_ALIQIBSUF.AsExtended * (1-TBVendasItensVEI_ALIQIBSUFRED.AsExtended/100), 4);
    if TBVendasVED_GOVERNAMENTALALIQRED.Value > 0 then
    TBVendasItensVEI_ALIQIBSUFEFE.Value:=Decimais(TBVendasItensVEI_ALIQIBSUF.AsExtended * (1-TBVendasItensVEI_ALIQIBSUFRED.AsExtended/100) * (1-TBVendasVED_GOVERNAMENTALALIQRED.AsExtended/100), 4);

    {$ENDREGION}

    {$REGION 'calcula aliquota efetiva CBS'}
    //pAliqEfet = pCBS × (1 - pRedAliq / 100)
    //...OU...
    //pAliqEfet = pCBS × (1 - pRedAliq / 100) × (1 - gCompraGov/pRedutor / 100)
    //Alíquota efetiva, após aplicação da redução de alíquota, incluindo o gCompraGov/pRedutor, se houver.
    //    Exemplo: Redução de 40% na alíquota:
    //    Alíquota vigente (A): 10%
    //    Redução na alíquota (R): 40%
    //    Redutor de compras governamentais (RG): 5%
    //    Alíquota Efetiva (E): E = A * (1 - R)*(1- RG)
    //    E = 10 * (1 - 0,4) *(1 - 0,05) = 5,7
    //    Observação: O cálculo da pAliqEfet deve considerar 4 casas decimais com arredondamento na ultima casa decimal.
    TBVendasItensVEI_ALIQCBSEFE.Value:=0;
    if TBVendasItensVEI_ALIQCBSRED.Value > 0 then
    TBVendasItensVEI_ALIQCBSEFE.Value:=Decimais(TBVendasItensVEI_ALIQCBS.AsExtended * (1-TBVendasItensVEI_ALIQCBSRED.AsExtended/100), 4);
    if  TBVendasVED_GOVERNAMENTALALIQRED.Value > 0 then
    TBVendasItensVEI_ALIQCBSEFE.Value:=Decimais(TBVendasItensVEI_ALIQCBS.AsExtended * (1-TBVendasItensVEI_ALIQCBSRED.AsExtended/100) * (1-TBVendasVED_GOVERNAMENTALALIQRED.AsExtended/100), 4);
    {$ENDREGION}

    {$REGION 'calcula diferimento IBSCBS'}
    //IBS mun diferimento.
    if TBVendasItensVEI_ALIQIBSMUNDIF.Value>0 then
    begin
      TBVendasItensVEI_VALORIBSMUNDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQIBSMUN.AsExtended/100) * (TBVendasItensVEI_ALIQIBSMUNDIF.AsExtended/100), 2);
      if TBVendasItensVEI_ALIQIBSMUNEFE.Value>0 then
      TBVendasItensVEI_VALORIBSMUNDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQIBSMUNEFE.AsExtended/100) * (TBVendasItensVEI_ALIQIBSMUNDIF.AsExtended/100), 2);
    end;

    //IBS uf diferimento.
    if TBVendasItensVEI_ALIQIBSUFDIF.Value>0 then
    begin
      TBVendasItensVEI_VALORIBSUFDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQIBSUF.AsExtended/100) * (TBVendasItensVEI_ALIQIBSUFDIF.AsExtended/100), 2);
      if TBVendasItensVEI_ALIQIBSUFEFE.Value>0 then
      TBVendasItensVEI_VALORIBSUFDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQIBSUFEFE.AsExtended/100) * (TBVendasItensVEI_ALIQIBSUFDIF.AsExtended/100), 2);
    end;

    //CBS diferimento
    if TBVendasItensVEI_ALIQCBSDIF.Value>0 then
    begin
      TBVendasItensVEI_VALORCBSDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQCBS.AsExtended/100) * (TBVendasItensVEI_ALIQCBSDIF.AsExtended/100), 2);
      if TBVendasItensVEI_ALIQCBSEFE.Value>0 then
      TBVendasItensVEI_VALORCBSDIF.Value:=Decimais(TBVendasItensVEI_BASEIBSCBS.AsExtended * (TBVendasItensVEI_ALIQCBSEFE.AsExtended/100) * (TBVendasItensVEI_ALIQCBSDIF.AsExtended/100), 2);
    end;
    {$ENDREGION}

    {$REGION 'calcula valor do IBS'}
    //vIBSUF = (gIBSCBS/vBC x (pIBSUF / 100)) - vDif - vDevTrib
    //...OU...
    //vIBSUF = (gIBSCBS/vBC x (pAliqEfet / 100)) - vDif - vDevTrib
    if TBVendasItensVEI_ALIQIBSMUN.Value>0 then
    TBVendasItensVEI_VALORIBSMUN.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQIBSMUN.AsExtended/100)
      - TBVendasItensVEI_VALORIBSMUNDIF.AsExtended
      - TBVendasItensVEI_VALORIBSMUNDEV.AsExtended,2
    );
    if ((TBVendasItensVEI_ALIQIBSMUNEFE.Value>0) or (TBVendasItensVEI_ALIQIBSMUNRED.Value=100)) then
    TBVendasItensVEI_VALORIBSMUN.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQIBSMUNEFE.AsExtended/100)
      - TBVendasItensVEI_VALORIBSMUNDIF.AsExtended
      - TBVendasItensVEI_VALORIBSMUNDEV.AsExtended,2
    );

    if TBVendasItensVEI_ALIQIBSUF.Value>0 then
    TBVendasItensVEI_VALORIBSUF.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQIBSUF.AsExtended/100)
      - TBVendasItensVEI_VALORIBSUFDIF.AsExtended
      - TBVendasItensVEI_VALORIBSUFDEV.AsExtended, 2
    );
    if ((TBVendasItensVEI_ALIQIBSUFEFE.Value>0) or (TBVendasItensVEI_ALIQIBSUFRED.Value=100)) then
    TBVendasItensVEI_VALORIBSUF.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQIBSUFEFE.AsExtended/100)
      - TBVendasItensVEI_VALORIBSUFDIF.AsExtended
      - TBVendasItensVEI_VALORIBSUFDEV.AsExtended ,2
    );
    TBVendasItensVEI_VALORIBS.Value:=Decimais(TBVendasItensVEI_VALORIBSMUN.AsExtended + TBVendasItensVEI_VALORIBSUF.AsExtended,2);

    //vCBS = (gIBSCBS/vBC x (pCBS / 100)) - vDif – vDevTrib
    TBVendasItensVEI_VALORCBS.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQCBS.AsExtended/100)
      - TBVendasItensVEI_VALORCBSDIF.AsExtended
      - TBVendasItensVEI_VALORCBSDEV.AsExtended, 2
    );
    if ((TBVendasItensVEI_ALIQCBSEFE.Value>0) or (TBVendasItensVEI_ALIQCBSRED.Value=100)) then
    TBVendasItensVEI_VALORCBS.Value:=Decimais(
        TBVendasItensVEI_BASEIBSCBS.AsExtended
      * (TBVendasItensVEI_ALIQCBSEFE.AsExtended/100)
      - TBVendasItensVEI_VALORCBSDIF.AsExtended
      - TBVendasItensVEI_VALORCBSDEV.AsExtended, 2
    );
    {$ENDREGION}
  end;
end;

procedure TDM.RecriarSequencialItensVenda(Pedido: Integer);
begin
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add(
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
  QYAux.ParamByName('codigo').AsInteger:=Pedido;
  QYAux.ExecSQL;

  //atualiza o total de itens.
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add(
    'update VENDAS set VED_SEQUENCIAITEM=(select max(VEI_SEQUENCIA) as SEQ from VENDASITENS where VEI_VENDA=VED_CODIGO) where VED_CODIGO=:codigo'
  );
  QYAux.ParamByName('codigo').AsInteger:=Pedido;
  QYAux.ExecSQL;
end;

procedure TDM.TBVendasItensAfterDelete(DataSet: TDataSet);
begin
  RecriarSequencialItensVenda(TBVendasVED_CODIGO.Value);
end;

procedure TDM.TBVendasItensAfterInsert(DataSet: TDataSet);
begin
  TBVendasItensVEI_ALIQCOFINS.Value:=0;
  TBVendasItensVEI_ALIQCOFINSST.Value:=0;
  TBVendasItensVEI_ALIQFCP.Value:=TBAliquotasALI_ALIQFCP.Value;
  TBVendasItensVEI_ALIQFCPST.Value:=0;
  TBVendasItensVEI_ALIQICMS.Value:=0;
  TBVendasItensVEI_ALIQICMSADICST.Value:=0;
  TBVendasItensVEI_ALIQICMSINTER.Value:=TBAliquotasALI_ALIQICMSINTER.Value;
  TBVendasItensVEI_ALIQICMSINTERPART.Value:=TBAliquotasALI_ALIQICMSINTERPART.Value;
  TBVendasItensVEI_ALIQICMSRED.Value:=0;
  TBVendasItensVEI_ALIQICMSST.Value:=0;
  TBVendasItensVEI_ALIQICMSSTRET.Value:=0;
  TBVendasItensVEI_ALIQII.Value:=0;
  TBVendasItensVEI_ALIQIPI.Value:=0;
  TBVendasItensVEI_ALIQISS.Value:=0;
  TBVendasItensVEI_ALIQPIS.Value:=0;
  TBVendasItensVEI_ALIQPISST.Value:=0;
  TBVendasItensVEI_ALMOXARIFADO.Value:=TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  TBVendasItensVEI_BASECOFINS.Value:=0;
  TBVendasItensVEI_BASECOFINSST.Value:=0;
  TBVendasItensVEI_BASEICMS.Value:=0;
  TBVendasItensVEI_BASEICMSRED.Value:=0;
  TBVendasItensVEI_BASEICMSST.Value:=0;
  TBVendasItensVEI_BASEICMSSTRET.Value:=0;
  TBVendasItensVEI_BASEII.Value:=0;
  TBVendasItensVEI_BASEIPI.Value:=0;
  TBVendasItensVEI_BASEISS.Value:=0;
  TBVendasItensVEI_BASEPIS.Value:=0;
  TBVendasItensVEI_BASEPISST.Value:=0;
  TBVendasItensVEI_CFOP.Value:=TBVendasVED_CFOP.Value; //pode ser alterado ao selecionar o produto se parametro PAR_CFOPPRODUTO='S'.
  TBVendasItensVEI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBVendasItensVEI_COMISSAO.Value:=0;
  TBVendasItensVEI_COMISSAOREP.Value:=0;
  TBVendasItensVEI_COMPOEBASEICMS.Value:='N';
  TBVendasItensVEI_COMPOEBASEICMSST.Value:='N';
  TBVendasItensVEI_COMPOETOTAL.Value:='S';
  TBVendasItensVEI_CONVERSAO.Value:=1;
  TBVendasItensVEI_DESCPORC.Value:=0; //ao selecionar o produto, preenche este campo conforme parametro.
  //1
  //2
  //3
  TBVendasItensVEI_DESCVALOR.Value:=0;
  TBVendasItensVEI_DESONERACAO.Value:='00 - NENHUM';
  TBVendasItensVEI_DTENTREGA.Value:=TBVendasVED_DTENTREGA.Value;
  TBVendasItensVEI_EXCECAO.Value:=0;
  TBVendasItensVEI_INDICADORISS.Value:='2 - NAO INCIDENCIA';
  TBVendasItensVEI_INCENTIVOISS.Value:='N';
  TBVendasItensVEI_LUCROPORC.Value:=0;
  TBVendasItensVEI_LUCROVALOR.Value:=0;
  TBVendasItensVEI_MODICMS.Value:='3 - VALOR DA OPERACAO';
  TBVendasItensVEI_MODICMSST.Value:='6 - VALOR DA OPERACAO';
  TBVendasItensVEI_ORIGEM.Value:='0 - NACIONAL';
  TBVendasItensVEI_PAISISS.Value:=1058; //brasil.
  TBVendasItensVEI_PEDIDOCLIENTE.Value:=TBVendasVED_PEDIDOCLIENTE.Value;
  TBVendasItensVEI_PRECOCUSTO.Value:=0;
  TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=0;
  TBVendasItensVEI_PRODUTOREAL.Value:=0;
  TBVendasItensVEI_QUANTIDADE.Value:=1;
  TBVendasItensVEI_QUANTIDADETROCA.Value:=0;
  TBVendasItensVEI_SEQUENCIA.Value:=TBVendasVED_SEQUENCIAITEM.Value+1;
  TBVendasItensVEI_SOMACOFINSST.Value:='N';
  TBVendasItensVEI_SOMAPISST.Value:='N';
  TBVendasItensVEI_VALORACESSORIAS.Value:=0;
  TBVendasItensVEI_VALORADUANA.Value:=0;
  TBVendasItensVEI_VALORCOFINS.Value:=0;
  TBVendasItensVEI_VALORCOFINSST.Value:=0;
  TBVendasItensVEI_VALORCOMISSAO.Value:=0;
  TBVendasItensVEI_VALORCOMISSAOREP.Value:=0;
  TBVendasItensVEI_VALORFCP.Value:=0;
  TBVendasItensVEI_VALORFCPST.Value:=0;
  TBVendasItensVEI_VALORFRETE.Value:=0;
  TBVendasItensVEI_VALORICMS.Value:=0;
  TBVendasItensVEI_VALORICMSCREDSN.Value:=0;
  TBVendasItensVEI_VALORICMSDESONERADO.Value:=0;
  TBVendasItensVEI_VALORICMSST.Value:=0;
  TBVendasItensVEI_VALORICMSSTRET.Value:=0;
  TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=0;
  TBVendasItensVEI_VALORICMSUFDEST.Value:=0;
  TBVendasItensVEI_VALORICMSUFREMET.Value:=0;
  TBVendasItensVEI_VALORII.Value:=0;
  TBVendasItensVEI_VALORIPI.Value:=0;
  TBVendasItensVEI_VALORIOF.Value:=0;
  TBVendasItensVEI_VALORISS.Value:=0;
  TBVendasItensVEI_VALORISSDEDUCAO.Value:=0;
  TBVendasItensVEI_VALORISSDESCCOND.Value:=0;
  TBVendasItensVEI_VALORISSDESCINCOND.Value:=0;
  TBVendasItensVEI_VALORISSOUTROS.Value:=0;
  TBVendasItensVEI_VALORISSRETENCAO.Value:=0;
  TBVendasItensVEI_VALORPIS.Value:=0;
  TBVendasItensVEI_VALORPISST.Value:=0;
  TBVendasItensVEI_VALORSEGURO.Value:=0;
  TBVendasItensVEI_VALORTOTAL.Value:=0;
  TBVendasItensVEI_VALORTOTALBRUTO.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOS.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSEST.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSFED.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=0;
  TBVendasItensVEI_VENDA.Value:=TBVendasVED_CODIGO.Value;

  //campos da reforma tributaria
  TBVendasItensVEI_ALIQCBS.Value:=0;
  TBVendasItensVEI_ALIQCBSCREDPRES.Value:=0;
  TBVendasItensVEI_ALIQCBSDIF.Value:=0;
  TBVendasItensVEI_ALIQCBSEFE.Value:=0;
  TBVendasItensVEI_ALIQCBSRED.Value:=0;
  TBVendasItensVEI_ALIQIBSCREDPRES.Value:=0;
  TBVendasItensVEI_ALIQIBSMUN.Value:=0;
  TBVendasItensVEI_ALIQIBSMUNDIF.Value:=0;
  TBVendasItensVEI_ALIQIBSMUNEFE.Value:=0;
  TBVendasItensVEI_ALIQIBSMUNRED.Value:=0;
  TBVendasItensVEI_ALIQIBSUF.Value:=0;
  TBVendasItensVEI_ALIQIBSUFDIF.Value:=0;
  TBVendasItensVEI_ALIQIBSUFEFE.Value:=0;
  TBVendasItensVEI_ALIQIBSUFRED.Value:=0;
  TBVendasItensVEI_ALIQIS.Value:=0;
  TBVendasItensVEI_ALIQISESP.Value:=0;
  TBVendasItensVEI_BASEIBSCBS.Value:=0;
  TBVendasItensVEI_BASEIS.Value:=0;
//  TBVendasItensVEI_CBSCREDITOPRES.Value:=
//  TBVendasItensVEI_CLASSTRIBIBSCBS.Value:=
//  TBVendasItensVEI_CLASSTRIBIS.Value:=
//  TBVendasItensVEI_CSTIBSCBS.Value:=
//  TBVendasItensVEI_CSTIS.Value:=
//  TBVendasItensVEI_IBSCREDITOPRES.Value:=
  TBVendasItensVEI_VALORCBS.Value:=0;
  TBVendasItensVEI_VALORCBSCREDPRES.Value:=0;
  TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=0;
  TBVendasItensVEI_VALORCBSDEV.Value:=0;
  TBVendasItensVEI_VALORCBSDIF.Value:=0;
  TBVendasItensVEI_VALORIBS.Value:=0;
  TBVendasItensVEI_VALORIBSCREDPRES.Value:=0;
  TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=0;
  TBVendasItensVEI_VALORIBSMUN.Value:=0;
  TBVendasItensVEI_VALORIBSMUNDEV.Value:=0;
  TBVendasItensVEI_VALORIBSMUNDIF.Value:=0;
  TBVendasItensVEI_VALORIBSUF.Value:=0;
  TBVendasItensVEI_VALORIBSUFDEV.Value:=0;
  TBVendasItensVEI_VALORIBSUFDIF.Value:=0;
  TBVendasItensVEI_VALORIS.Value:=0;

  //campos derivados.
  //TBVendasItensALM_DESCRICAO.Value:=
  TBVendasItensNAT_DESCRICAO.Value:=TBVendasVED_CFOPDESC.Value;
  TBVendasItensNAT_CALCULACOMISSAO.Value:=TBVendasNAT_CALCULACOMISSAO.Value;
  TBVendasItensNAT_CALCULACREDITOSN.Value:=TBVendasNAT_CALCULACREDITOSN.Value;
end;

procedure TDM.TBVendasItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisVenda(True);
end;

procedure TDM.TBVendasItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisVendaItens(False);
end;
{$ENDREGION}

//##############################################################################
// VENDEDORES                                                                 //
//##############################################################################
{$REGION 'TABELA VENDEDORES'}
procedure TDM.TBVendedoresAfterInsert(DataSet: TDataSet);
begin
  TBVendedoresVEN_ATUALIZAR.Value:='S';
  TBVendedoresVEN_COMISSAO.Value:=0;
  TBVendedoresVEN_COMISSAOTIPO.Value:='FATURAMENTO';
  TBVendedoresVEN_COR.Value:='4313360'; //tom de verde.
  TBVendedoresVEN_DTCADASTRO.Value:=ServerDate;
  TBVendedoresVEN_EMAILCONTA.Value:=1;
  TBVendedoresVEN_ESTADOCIVIL.Value:='SOLTEIRO';
  TBVendedoresVEN_FONE1.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBVendedoresVEN_FONE2.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBVendedoresVEN_FONE3.Value:=TBParametrosPAR_DDDPADRAO.Value;
  TBVendedoresVEN_HRCADASTRO.Value:=ServerTime;
  TBVendedoresVEN_MOSTRARAGENDA.Value:='S';
  TBVendedoresVEN_SALARIOBASE.Value:=0;
  TBVendedoresVEN_SALDOATUAL.Value:=0;
  TBVendedoresVEN_STATUS.Value:='A';
  TBVendedoresVEN_TIPOPESSOA.Value:='F';
  TBVendedoresVEN_ZAPINSTANCIA.Value:=1;
  //campos derivados.
  TBVendedoresEMC_NOME.Value:=GetRegistro('EMAILSCONTAS','EMC_CODIGO',1).FieldByName('EMC_NOME').AsString;
  TBVendedoresZIN_NOME.Value:=GetRegistro('ZAPINSTANCIAS','ZIN_CODIGO',1).FieldByName('ZIN_NOME').AsString;
end;

procedure TDM.TBVendedoresBeforeEdit(DataSet: TDataSet);
begin
  if FormVendedores<>nil then
  FormMain.SetFields(FormVendedores,True);
end;

procedure TDM.TBVendedoresBeforeInsert(DataSet: TDataSet);
begin
  if FormVendedores<>nil then
  begin
    FormMain.SetFields(FormVendedores,True);
    FormVendedores.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBVendedoresBeforePost(DataSet: TDataSet);
begin
  TBVendedoresVEN_ATUALIZAR.Value:='S';
  TBVendedoresVEN_DTATUALIZACAO.Value:=ServerDate;
  TBVendedoresVEN_HRATUALIZACAO.Value:=ServerTime;
  TBVendedoresVEN_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSVendedoresDataChange(Sender: TObject; Field: TField);
begin
  if FormVendedores<>nil then
  begin
    if TBVendedoresVEN_COR.Value<>'' then
    FormVendedores.DBEdit16.Color:=StrToInt(TBVendedoresVEN_COR.Value) else
    FormVendedores.DBEdit16.Color:=clRed;
  end;
end;

procedure TDM.DSVendedoresStateChange(Sender: TObject);
begin
  if TBVendedores.State in [dsInsert, dsEdit] then
  begin
    if FormVendedores<>nil then
    begin
      FormVendedores.BancoDeHoras1.Enabled:=False;
      FormVendedores.BancoDeHoras1Button.Enabled:=False;
      FormVendedores.Historicos1.Enabled:=False;
      FormVendedores.Historicos1Button.Enabled:=False;
      FormVendedores.Localizar1.Enabled:=False;
      FormVendedores.Localizar1Button.Enabled:=False;
      FormVendedores.Relatorios2.Enabled:=False;
      FormVendedores.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormVendedores<>nil then
    begin
      FormVendedores.BancoDeHoras1.Enabled:=True;
      FormVendedores.BancoDeHoras1Button.Enabled:=True;
      FormVendedores.Historicos1.Enabled:=True;
      FormVendedores.Historicos1Button.Enabled:=True;
      FormVendedores.Localizar1.Enabled:=True;
      FormVendedores.Localizar1Button.Enabled:=True;
      FormVendedores.Relatorios2.Enabled:=True;
      FormVendedores.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVendedores);
      FormMain.SetFields(FormVendedores,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VENDEDORES HISTORICO                                                       //
//##############################################################################
{$REGION 'TABELA VENDEDORESHIST'}
procedure TDM.TBVendedoresHistAfterInsert(DataSet: TDataSet);
begin
  TBVendedoresHistVEH_DTCADASTRO.Value:=ServerDate;
  TBVendedoresHistVEH_HRCADASTRO.Value:=ServerTime;
  TBVendedoresHistVEH_VENDEDOR.Value:=TBVendedoresVEN_CODIGO.Value;
end;

procedure TDM.TBVendedoresHistBeforeEdit(DataSet: TDataSet);
begin
  if FormVendedoresHist<>nil then
  FormMain.SetFields(FormVendedoresHist,True);
end;

procedure TDM.TBVendedoresHistBeforeInsert(DataSet: TDataSet);
begin
  if FormVendedoresHist<>nil then
  begin
    FormMain.SetFields(FormVendedoresHist,True);
    FormVendedoresHist.DBEdit3.SetFocus;
  end;
end;

procedure TDM.TBVendedoresHistBeforePost(DataSet: TDataSet);
begin
  TBVendedoresHistVEH_DTATUALIZACAO.Value:=ServerDate;
  TBVendedoresHistVEH_HRATUALIZACAO.Value:=ServerTime;
  TBVendedoresHistVEH_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSVendedoresHistStateChange(Sender: TObject);
begin
  if TBVendedoresHist.State in [dsInsert, dsEdit] then
  begin
    if FormVendedoresHist<>nil then
    begin
      FormVendedoresHist.Relatorios2.Enabled:=False;
      FormVendedoresHist.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormVendedoresHist<>nil then
    begin
      FormVendedoresHist.Relatorios2.Enabled:=True;
      FormVendedoresHist.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVendedoresHist);
      FormMain.SetFields(FormVendedoresHist,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VENDEDORES HISTORICO TIPO                                                  //
//##############################################################################
{$REGION 'TABELA VENDEDORESHISTTIPOS'}
procedure TDM.TBVendedoresHistTiposAfterInsert(DataSet: TDataSet);
begin
  TBVendedoresHistTiposVHT_DTCADASTRO.Value:=ServerDate;
  TBVendedoresHistTiposVHT_HRCADASTRO.Value:=ServerTime;
  TBVendedoresHistTiposVHT_STATUS.Value:='A';
end;

procedure TDM.TBVendedoresHistTiposBeforeEdit(DataSet: TDataSet);
begin
  if FormVendedoresHistTipos<>nil then
  FormMain.SetFields(FormVendedoresHistTipos,True);
end;

procedure TDM.TBVendedoresHistTiposBeforeInsert(DataSet: TDataSet);
begin
  if (FormVendedoresHistTipos<>nil) and (FormVendedoresHistTipos.Active) then
  begin
    FormMain.SetFields(FormVendedoresHistTipos,True);
    FormVendedoresHistTipos.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBVendedoresHistTiposBeforePost(DataSet: TDataSet);
begin
  TBVendedoresHistTiposVHT_DTATUALIZACAO.Value:=ServerDate;
  TBVendedoresHistTiposVHT_HRATUALIZACAO.Value:=ServerTime;
  TBVendedoresHistTiposVHT_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSVendedoresHistTiposStateChange(Sender: TObject);
begin
  if TBVendedoresHistTipos.State in [dsInsert, dsEdit] then
  begin
    if FormVendedoresHistTipos<>nil then
    begin
      FormVendedoresHistTipos.Localizar1.Enabled:=False;
      FormVendedoresHistTipos.Localizar1Button.Enabled:=False;
      FormVendedoresHistTipos.Relatorios1.Enabled:=False;
      FormVendedoresHistTipos.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormVendedoresHistTipos<>nil then
    begin
      FormVendedoresHistTipos.Localizar1.Enabled:=True;
      FormVendedoresHistTipos.Localizar1Button.Enabled:=True;
      FormVendedoresHistTipos.Relatorios1.Enabled:=True;
      FormVendedoresHistTipos.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVendedoresHistTipos);
      FormMain.SetFields(FormVendedoresHistTipos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VERSAO DA BASE                                                             //
//##############################################################################
//nada

//##############################################################################
// VIAS                                                                       //
//##############################################################################
{$REGION 'TABELA VIAS'}
procedure TDM.TBViasAfterInsert(DataSet: TDataSet);
begin
  TBViasVIA_DTCADASTRO.Value:=ServerDate;
  TBViasVIA_HRCADASTRO.Value:=ServerTime;
  TBViasVIA_STATUS.Value:='A';
end;

procedure TDM.TBViasBeforeEdit(DataSet: TDataSet);
begin
  if FormVias<>nil then
  FormMain.SetFields(FormVias,True);
end;

procedure TDM.TBViasBeforeInsert(DataSet: TDataSet);
begin
  if (FormVias<>nil) and (FormVias.Active) then
  begin
    FormMain.SetFields(FormVias,True);
    FormVias.DBEdit2.SetFocus;
  end;
end;

procedure TDM.TBViasBeforePost(DataSet: TDataSet);
begin
  TBViasVIA_DTATUALIZACAO.Value:=ServerDate;
  TBViasVIA_HRATUALIZACAO.Value:=ServerTime;
  TBViasVIA_USUARIO.Value:=UsuarioLogin;
end;

procedure TDM.DSViasStateChange(Sender: TObject);
begin
  if TBVias.State in [dsInsert, dsEdit] then
  begin
    if FormVias<>nil then
    begin
      FormVias.Localizar1.Enabled:=False;
      FormVias.Localizar1Button.Enabled:=False;
      FormVias.Relatorios1.Enabled:=False;
      FormVias.Relatorios1Button.Enabled:=False;
    end;
  end else
  begin
    if FormVias<>nil then
    begin
      FormVias.Localizar1.Enabled:=True;
      FormVias.Localizar1Button.Enabled:=True;
      FormVias.Relatorios1.Enabled:=True;
      FormVias.Relatorios1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVias);
      FormMain.SetFields(FormVias,False);
    end;
  end;
end;
{$ENDREGION}

end.

