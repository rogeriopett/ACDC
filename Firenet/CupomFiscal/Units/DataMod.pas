unit DataMod;

interface

uses
  SysUtils, Classes, DB, Forms, Dialogs, IBDatabase, IBQuery, IBCustomDataSet,
  IBDatabaseInfo, Controls, DateUtils, IB, ACBrBase, ACBrECF, ACBrDevice,
  ACBrPAF, ACBrCalculadora, ACBrTEFD, ACBrTEFDClass;

type
  TDM = class(TDataModule)
    TBCupomFiscal: TIBDataSet;
    TBCupomFiscalItens: TIBDataSet;
    DSCupomFiscal: TDataSource;
    DSCupomFiscalItens: TDataSource;
    TRCupomFiscal: TIBTransaction;
    TRCupomFiscalItens: TIBTransaction;
    QYCupomFiscalItens: TIBQuery;
    TBEmpresa: TIBDataSet;
    TBEmpresaEMP_NOME: TIBStringField;
    TBEmpresaEMP_NOMEFANTASIA: TIBStringField;
    TBEmpresaEMP_ENDERECO: TIBStringField;
    TBEmpresaEMP_CEP: TIBStringField;
    TBEmpresaEMP_BAIRRO: TIBStringField;
    TBEmpresaEMP_CIDADE: TIBStringField;
    TBEmpresaEMP_ESTADO: TIBStringField;
    TBEmpresaEMP_FONE1: TIBStringField;
    TBEmpresaEMP_FONE2: TIBStringField;
    TBEmpresaEMP_CNPJ: TIBStringField;
    TBEmpresaEMP_IE: TIBStringField;
    TBEmpresaEMP_HOMEPAGE: TIBStringField;
    TBEmpresaEMP_EMAIL: TIBStringField;
    TBEmpresaEMP_EMAILSUPORTE: TIBStringField;
    TBEmpresaEMP_NOSSONOME: TIBStringField;
    TBEmpresaEMP_NOSSOENDERECO: TIBStringField;
    TBEmpresaEMP_NOSSOCEP: TIBStringField;
    TBEmpresaEMP_NOSSOBAIRRO: TIBStringField;
    TBEmpresaEMP_NOSSOCIDADE: TIBStringField;
    TBEmpresaEMP_NOSSOESTADO: TIBStringField;
    TBEmpresaEMP_NOSSOFONE1: TIBStringField;
    TBEmpresaEMP_NOSSOFONE2: TIBStringField;
    TBEmpresaEMP_NOSSOSITE: TIBStringField;
    TBEmpresaEMP_NOSSOEMAIL: TIBStringField;
    TBEmpresaEMP_CODIGO: TIntegerField;
    TBEmpresaEMP_DATALIBERACAO: TIBStringField;
    TBEmpresaEMP_DIASLIBERACAO: TIBStringField;
    TBEmpresaEMP_LIBERADO: TIBStringField;
    TBEmpresaEMP_LIMITEUSUARIOS: TIBStringField;
    TBEmpresaEMP_DATAULTUTILIZACAO: TIBStringField;
    TBEmpresaEMP_NOSSOSITESENHA: TIBStringField;
    TBEmpresaEMP_CODIGOCLIENTE: TIntegerField;
    TBEmpresaEMP_CODIGOSISTEMA: TIntegerField;
    TBEmpresaEMP_SUPERSENHA: TIBStringField;
    TBEmpresaEMP_CIDADECODIGO: TIntegerField;
    TBEmpresaEMP_ESTADOCODIGO: TIntegerField;
    TBEmpresaEMP_ENQUADRAMENTO: TIBStringField;
    TBEmpresaEMP_IM: TIBStringField;
    TBEmpresaEMP_CNAE: TIBStringField;
    DSEmpresa: TDataSource;
    TREmpresa: TIBTransaction;
    TRParametros: TIBTransaction;
    DSParametros: TDataSource;
    TBParametros: TIBDataSet;
    TBClientes: TIBDataSet;
    DSClientes: TDataSource;
    TRClientes: TIBTransaction;
    TBGrupos: TIBDataSet;
    TBGruposGRU_CODIGO: TIntegerField;
    TBGruposGRU_DESCRICAO: TIBStringField;
    TBGruposGRU_DTCADASTRO: TDateField;
    TBGruposGRU_DTATUALIZACAO: TDateField;
    TBGruposGRU_USUARIO: TIBStringField;
    DSGrupos: TDataSource;
    TRGrupos: TIBTransaction;
    TBFamilias: TIBDataSet;
    TBFamiliasFAM_CODIGO: TIntegerField;
    TBFamiliasFAM_DESCRICAO: TIBStringField;
    TBFamiliasFAM_DTCADASTRO: TDateField;
    TBFamiliasFAM_DTATUALIZACAO: TDateField;
    TBFamiliasFAM_USUARIO: TIBStringField;
    DSFamilias: TDataSource;
    TRFamilias: TIBTransaction;
    TBProdutos: TIBDataSet;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_CODIGOFAB: TIBStringField;
    TBProdutosPRO_CODIGOBARRAS: TIBStringField;
    TBProdutosPRO_FAMILIA: TIntegerField;
    TBProdutosPRO_GRUPO: TIntegerField;
    TBProdutosPRO_NOME: TIBStringField;
    TBProdutosPRO_DESCRICAO: TMemoField;
    TBProdutosPRO_CORSABOR: TIBStringField;
    TBProdutosPRO_TAMANHO: TIBStringField;
    TBProdutosPRO_LOCALIZACAO: TIBStringField;
    TBProdutosPRO_UNIDADE: TIBStringField;
    TBProdutosPRO_ESTOQUEMIN: TIBBCDField;
    TBProdutosPRO_ESTOQUEMAX: TIBBCDField;
    TBProdutosPRO_ESTOQUEATUAL: TIBBCDField;
    TBProdutosPRO_ALIQICMS: TIBBCDField;
    TBProdutosPRO_ALIQICMSRED: TIBBCDField;
    TBProdutosPRO_ALIQIPI: TIBBCDField;
    TBProdutosPRO_ALIQISS: TIBBCDField;
    TBProdutosPRO_ALIQOUTROS: TIBBCDField;
    TBProdutosPRO_COMISSAO: TIBBCDField;
    TBProdutosPRO_PRECOCUSTO: TIBBCDField;
    TBProdutosPRO_PRECOCUSTOULT: TIBBCDField;
    TBProdutosPRO_PRECOCUSTOMEDIO: TIBBCDField;
    TBProdutosPRO_PRECOVENDA: TIBBCDField;
    TBProdutosPRO_PRECOVENDAULT: TIBBCDField;
    TBProdutosPRO_PRECOVENDAMEDIO: TIBBCDField;
    TBProdutosPRO_TABPRECO1: TIBStringField;
    TBProdutosPRO_MARGEM1: TIBBCDField;
    TBProdutosPRO_PRECO1: TIBBCDField;
    TBProdutosPRO_TABPRECO2: TIBStringField;
    TBProdutosPRO_MARGEM2: TIBBCDField;
    TBProdutosPRO_PRECO2: TIBBCDField;
    TBProdutosPRO_TABPRECO3: TIBStringField;
    TBProdutosPRO_MARGEM3: TIBBCDField;
    TBProdutosPRO_PRECO3: TIBBCDField;
    TBProdutosPRO_TABPRECO4: TIBStringField;
    TBProdutosPRO_MARGEM4: TIBBCDField;
    TBProdutosPRO_PRECO4: TIBBCDField;
    TBProdutosPRO_TABPRECO5: TIBStringField;
    TBProdutosPRO_MARGEM5: TIBBCDField;
    TBProdutosPRO_PRECO5: TIBBCDField;
    TBProdutosPRO_TABPRECO6: TIBStringField;
    TBProdutosPRO_MARGEM6: TIBBCDField;
    TBProdutosPRO_PRECO6: TIBBCDField;
    TBProdutosPRO_ATUALIZATABELA: TIBStringField;
    TBProdutosPRO_STATUS: TIBStringField;
    TBProdutosPRO_DTCADASTRO: TDateField;
    TBProdutosPRO_DTATUALIZACAO: TDateField;
    TBProdutosPRO_USUARIO: TIBStringField;
    TBProdutosFAM_CODIGO: TIntegerField;
    TBProdutosFAM_DESCRICAO: TIBStringField;
    TBProdutosGRU_CODIGO: TIntegerField;
    TBProdutosGRU_DESCRICAO: TIBStringField;
    TBProdutosPRO_TIPO: TIBStringField;
    TBProdutosPRO_PESO: TIBBCDField;
    TBProdutosPRO_MARGEM: TIBBCDField;
    TBProdutosPRO_REGISTROMS: TIBStringField;
    TBProdutosPRO_COMPOSTO: TIBStringField;
    TBProdutosPRO_DTULTCOMPRA: TDateField;
    TBProdutosPRO_DTULTVENDA: TDateField;
    TBProdutosPRO_INTERNET: TIBStringField;
    TBProdutosPRO_OFERTA: TIBStringField;
    TBProdutosPRO_ALIQPIS: TIBBCDField;
    TBProdutosPRO_ALIQCOFINS: TIBBCDField;
    TBProdutosPRO_CSTICMS: TIntegerField;
    TBProdutosPRO_CSTPIS: TIntegerField;
    TBProdutosPRO_CSTIPI: TIntegerField;
    TBProdutosPRO_CSTCOFINS: TIntegerField;
    TBProdutosPRO_ORIGEM: TIBStringField;
    TBProdutosPRO_MODICMS: TIBStringField;
    TBProdutosPRO_MODICMSST: TIBStringField;
    TBProdutosPRO_ALIQICMSST: TIBBCDField;
    TBProdutosICM_DESCRICAO: TIBStringField;
    TBProdutosPIS_DESCRICAO: TIBStringField;
    TBProdutosPIS_DESCRICAO1: TIBStringField;
    TBProdutosIPI_DESCRICAO: TIBStringField;
    TBProdutosPRO_CSTISS: TIntegerField;
    TBProdutosISS_DESCRICAO: TIBStringField;
    TBProdutosCLF_DESCRICAO: TIBStringField;
    TBProdutosPRO_CLASSFISCAL: TIntegerField;
    TBProdutosPRO_ALIQPISST: TIBBCDField;
    TBProdutosPRO_ALIQCOFINSST: TIBBCDField;
    TBProdutosPRO_ALIQICMSADICST: TIBBCDField;
    DSProdutos: TDataSource;
    TRProdutos: TIBTransaction;
    TBProdutosComp: TIBDataSet;
    TBProdutosCompPRC_CODIGO: TIntegerField;
    TBProdutosCompPRC_PRODUTO: TIntegerField;
    TBProdutosCompPRC_QUANTIDADE: TIBBCDField;
    TBProdutosCompPRO_NOME: TIBStringField;
    TBProdutosCompPRC_DTCADASTRO: TDateField;
    TBProdutosCompPRC_DTATUALIZACAO: TDateField;
    TBProdutosCompPRC_USUARIO: TIBStringField;
    TBProdutosCompPRC_PRODUTOCOMP: TIntegerField;
    TBProdutosCompPRO_UNIDADE: TIBStringField;
    DSProdutosComp: TDataSource;
    TRProdutosComp: TIBTransaction;
    TBAlmoxarifados: TIBDataSet;
    TBAlmoxarifadosALM_CODIGO: TIntegerField;
    TBAlmoxarifadosALM_DESCRICAO: TIBStringField;
    TBAlmoxarifadosALM_DTCADASTRO: TDateField;
    TBAlmoxarifadosALM_DTATUALIZACAO: TDateField;
    TBAlmoxarifadosALM_USUARIO: TIBStringField;
    TBAlmoxarifadosALM_STATUS: TIBStringField;
    DSAlmoxarifados: TDataSource;
    TRAlmoxarifados: TIBTransaction;
    TBProdutosQtde: TIBDataSet;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TIBBCDField;
    TBProdutosQtdeALM_CODIGO: TIntegerField;
    TBProdutosQtdeALM_DESCRICAO: TIBStringField;
    DSProdutosQtde: TDataSource;
    TRProdutosQtde: TIBTransaction;
    QYProdutosQtde: TIBQuery;
    IBDatabaseInfo1: TIBDatabaseInfo;
    TBProdutosPRO_MARCA: TIntegerField;
    TBProdutosPRO_PALAVRASCHAVE: TIBStringField;
    TBProdutosPRO_OBSERVACOES: TMemoField;
    TBProdutosPRO_COMPOEBASEICMS: TIBStringField;
    ACBrECF: TACBrECF;
    ACBrPAF: TACBrPAF;
    QYAux: TIBQuery;
    TRAux: TIBTransaction;
    TBReducoeszItens: TIBDataSet;
    DSReducoeszItens: TDataSource;
    TRReducoeszItens: TIBTransaction;
    TBReducoesz: TIBDataSet;
    TBSintegra60m: TIBDataSet;
    TBSintegra60a: TIBDataSet;
    TBReducoeszRDZ_CODIGO: TIntegerField;
    TBReducoeszRDZ_TERMINAL: TIntegerField;
    TBReducoeszRDZ_CRZ: TIntegerField;
    TBReducoeszRDZ_COO: TIntegerField;
    TBReducoeszRDZ_CRO: TIntegerField;
    TBReducoeszRDZ_DTMOVIMENTO: TDateField;
    TBReducoeszRDZ_DTEMISSAO: TDateField;
    TBReducoeszRDZ_HREMISSAO: TIBStringField;
    TBReducoeszRDZ_VENDABRUTA: TIBBCDField;
    TBReducoeszRDZ_GRANDETOTAL: TIBBCDField;
    TBReducoeszRDZ_SINCRONIZADO: TIBStringField;
    TBReducoeszRDZ_USUARIO: TIBStringField;
    DSReducoesz: TDataSource;
    TRReducoesz: TIBTransaction;
    TBReducoeszItensRZI_CODIGO: TIntegerField;
    TBReducoeszItensRZI_REDUCAOZ: TIntegerField;
    TBReducoeszItensRZI_TOTALIZADORPARCIAL: TIBStringField;
    TBReducoeszItensRZI_VALORACUMULADO: TIBBCDField;
    DSSintegra60m: TDataSource;
    TRSintegra60m: TIBTransaction;
    TRSintegra60a: TIBTransaction;
    DSSintegra60a: TDataSource;
    TBSintegra60mSIN_CODIGO: TIntegerField;
    TBSintegra60mSIN_DTEMISSAO: TDateField;
    TBSintegra60mSIN_ECFSERIAL: TIBStringField;
    TBSintegra60mSIN_ECFNUMERO: TIntegerField;
    TBSintegra60mSIN_MODELODOCTO: TIBStringField;
    TBSintegra60mSIN_COOINICIAL: TIntegerField;
    TBSintegra60mSIN_COOFINAL: TIntegerField;
    TBSintegra60mSIN_CRZ: TIntegerField;
    TBSintegra60mSIN_CRO: TIntegerField;
    TBSintegra60mSIN_VENDABRUTA: TIBBCDField;
    TBSintegra60mSIN_GRANTETOTAL: TIBBCDField;
    TBSintegra60mSIN_SINCRONIZADO: TIBStringField;
    TBSintegra60mSIN_USUARIO: TIBStringField;
    TBSintegra60aSII_CODIGO: TIntegerField;
    TBSintegra60aSII_SINTEGRA60M: TIntegerField;
    TBSintegra60aSII_SITUACAOTRIBUTARIA: TIBStringField;
    TBSintegra60aSII_VALOR: TIBBCDField;
    TBTerminais: TIBDataSet;
    DSTerminais: TDataSource;
    TRTerminais: TIBTransaction;
    TBTerminaisTER_CODIGO: TIntegerField;
    TBTerminaisTER_DESCRICAO: TIBStringField;
    TBTerminaisTER_DTCADASTRO: TDateField;
    TBTerminaisTER_PORTAECF: TIBStringField;
    TBTerminaisTER_PORTAPINPAD: TIBStringField;
    TBTerminaisTER_PORTABALANCA: TIBStringField;
    TBTerminaisTER_TEFTIPO: TIBStringField;
    TBTerminaisTER_TEFTIPOGP: TIntegerField;
    TBTerminaisTER_TEFTEMPOESPERA: TIntegerField;
    TBTerminaisTER_TEFTEMPOESPERASTS: TIntegerField;
    TBTerminaisTER_TEFNUMEROVIAS: TIntegerField;
    TBTerminaisTER_TEFIP: TIBStringField;
    TBTerminaisTER_ECFTIMEOUT: TIntegerField;
    TBTerminaisTER_ECFINTERVALO: TIntegerField;
    TBTerminaisTER_ECFSERIE: TIBStringField;
    TBTerminaisTER_ECFIDENTIFICACAO: TIBStringField;
    TBTerminaisTER_ECFMARCA: TIBStringField;
    TBTerminaisTER_ECFMODELO: TIBStringField;
    TBTerminaisTER_ECFMODELOACBR: TIBStringField;
    TBTerminaisTER_ECFVERSAO: TIBStringField;
    TBTerminaisTER_ECFTIPO: TIBStringField;
    TBTerminaisTER_ECFMC: TIBStringField;
    TBTerminaisTER_ECFMD: TIBStringField;
    TBTerminaisTER_ECFVR: TIBStringField;
    TBTerminaisTER_ECFLE: TIBStringField;
    TBTerminaisTER_ECFLEF: TIBStringField;
    TBTerminaisTER_ECFMFD: TIBStringField;
    TBTerminaisTER_ECFCRENAMFD: TIBStringField;
    TBTerminaisTER_ECFDOCTO: TIBStringField;
    TBTerminaisTER_DTATUALIZACAO: TDateField;
    TBTerminaisTER_USUARIO: TIBStringField;
    TBTerminaisTER_STATUS: TIBStringField;
    TBTerminaisTER_SINCRONIZADO: TIBStringField;
    TBTerminaisTER_INDICEDAV: TIntegerField;
    TBEmpresaEMP_CONTABILIDADE: TIntegerField;
    TBEmpresaEMP_NOSSOCNPJ: TIBStringField;
    TBEmpresaEMP_PAFVERSAO: TIBStringField;
    TBEmpresaEMP_PAFMD5: TIBStringField;
    TBEmpresaEMP_PAFNOME: TIBStringField;
    TBEmpresaEMP_NOSSOIE: TIBStringField;
    TBEmpresaEMP_NOSSOIM: TIBStringField;
    QYAux2: TIBQuery;
    TRAux2: TIBTransaction;
    TBEmpresaEMP_PAFLAUDO: TIntegerField;
    TBMovimentos: TIBDataSet;
    DSMovimentos: TDataSource;
    TRMovimentos: TIBTransaction;
    TBMovimentosMOV_CODIGO: TIntegerField;
    TBMovimentosMOV_TERMINAL: TIntegerField;
    TBMovimentosMOV_DTABERTURA: TDateField;
    TBMovimentosMOV_HRABERTURA: TIBStringField;
    TBMovimentosMOV_DTFECHAMENTO: TDateField;
    TBMovimentosMOV_HRFECHAMENTO: TIBStringField;
    TBMovimentosMOV_TOTALSUPRIMENTO: TIBBCDField;
    TBMovimentosMOV_TOTALSANGRIA: TIBBCDField;
    TBMovimentosMOV_TOTALNAOFISCAL: TIBBCDField;
    TBMovimentosMOV_TOTALVENDA: TIBBCDField;
    TBMovimentosMOV_TOTALDESCONTO: TIBBCDField;
    TBMovimentosMOV_TOTALACRESCIMO: TIBBCDField;
    TBMovimentosMOV_TOTALFINAL: TIBBCDField;
    TBMovimentosMOV_TOTALRECEBIDO: TIBBCDField;
    TBMovimentosMOV_TOTALTROCO: TIBBCDField;
    TBMovimentosMOV_TOTALCANCELADO: TIBBCDField;
    TBMovimentosMOV_STATUS: TIBStringField;
    TBMovimentosMOV_SINCRONIZADO: TIBStringField;
    TBMovimentosMOV_USUARIO: TIBStringField;
    TBMovimentosMOV_DTATUALIZACAO: TDateField;
    TBClientesCLI_CODIGO: TIntegerField;
    TBClientesCLI_ATIVIDADE: TIntegerField;
    TBClientesCLI_CONDICAO: TIntegerField;
    TBClientesCLI_LOCALTRABALHO: TIntegerField;
    TBClientesCLI_MAILING: TIntegerField;
    TBClientesCLI_TELEVENDA: TIntegerField;
    TBClientesCLI_VENDEDOR: TIntegerField;
    TBClientesCLI_AFE: TIBStringField;
    TBClientesCLI_ALVARA: TIBStringField;
    TBClientesCLI_ALVARASANITARIO: TIBStringField;
    TBClientesCLI_BAIRRO: TIBStringField;
    TBClientesCLI_BAIRROCOB: TIBStringField;
    TBClientesCLI_BLOQUEARVENDA: TIBStringField;
    TBClientesCLI_CEP: TIBStringField;
    TBClientesCLI_CEPCOB: TIBStringField;
    TBClientesCLI_CIDADE: TIBStringField;
    TBClientesCLI_CIDADECOB: TIBStringField;
    TBClientesCLI_CIDADECODIGO: TIntegerField;
    TBClientesCLI_CIDADECODIGOCOB: TIntegerField;
    TBClientesCLI_CNPJ: TIBStringField;
    TBClientesCLI_CNPJCOB: TIBStringField;
    TBClientesCLI_COMPLEMENTO: TIBStringField;
    TBClientesCLI_COMPLEMENTOCOB: TIBStringField;
    TBClientesCLI_CONTATO: TIBStringField;
    TBClientesCLI_CPF: TIBStringField;
    TBClientesCLI_DESCONTO: TIBBCDField;
    TBClientesCLI_DTATUALIZACAO: TDateField;
    TBClientesCLI_DTCADASTRO: TDateField;
    TBClientesCLI_DTNASC: TDateField;
    TBClientesCLI_EMAIL: TIBStringField;
    TBClientesCLI_EMAIL2: TIBStringField;
    TBClientesCLI_ENDERECO: TIBStringField;
    TBClientesCLI_ENDERECOCOB: TIBStringField;
    TBClientesCLI_ESTADO: TIBStringField;
    TBClientesCLI_ESTADOCIVIL: TIBStringField;
    TBClientesCLI_ESTADOCOB: TIBStringField;
    TBClientesCLI_ESTADOCODIGO: TIntegerField;
    TBClientesCLI_ESTADOCODIGOCOB: TIntegerField;
    TBClientesCLI_FANTASIA: TIBStringField;
    TBClientesCLI_FONE0800: TIBStringField;
    TBClientesCLI_FONE1: TIBStringField;
    TBClientesCLI_FONE2: TIBStringField;
    TBClientesCLI_FONE3: TIBStringField;
    TBClientesCLI_IE: TIBStringField;
    TBClientesCLI_IECOB: TIBStringField;
    TBClientesCLI_LIMITECREDITO: TIBBCDField;
    TBClientesCLI_MAE: TIBStringField;
    TBClientesCLI_MAEEMAIL: TIBStringField;
    TBClientesCLI_MAEFONE: TIBStringField;
    TBClientesCLI_MSN: TIBStringField;
    TBClientesCLI_NEXTEL: TIBStringField;
    TBClientesCLI_NOME: TIBStringField;
    TBClientesCLI_OBSERVACOES: TWideMemoField;
    TBClientesCLI_PAI: TIBStringField;
    TBClientesCLI_PAIEMAIL: TIBStringField;
    TBClientesCLI_PAIFONE: TIBStringField;
    TBClientesCLI_PONTOS: TIBBCDField;
    TBClientesCLI_REGPROFISSIONAL: TIBStringField;
    TBClientesCLI_RG: TIBStringField;
    TBClientesCLI_SETOR: TIntegerField;
    TBClientesCLI_SITE: TIBStringField;
    TBClientesCLI_STATUS: TIBStringField;
    TBClientesCLI_TABELAPRECO: TIBStringField;
    TBClientesCLI_TIPOCLIENTE: TIBStringField;
    TBClientesCLI_TIPOPESSOA: TIBStringField;
    TBClientesCLI_USUARIO: TIBStringField;
    TBClientesCLI_LOCALESTUDA: TIntegerField;
    TBClientesCLI_CLASSIFICACAO: TIBStringField;
    TBClientesCLI_MENSALISTA: TIBStringField;
    TBClientesCLI_DIACOBRANCA: TIntegerField;
    TBClientesCLI_ORIENTACAOCOBRANCA: TIBStringField;
    ACBrCalculadora1: TACBrCalculadora;
    TBUsuarios: TIBDataSet;
    DSUsuarios: TDataSource;
    TRUsuarios: TIBTransaction;
    TBUsuariosUSU_LOGIN: TIBStringField;
    TBUsuariosUSU_EMAIL: TIBStringField;
    TBUsuariosUSU_LOGADO: TIBStringField;
    TBUsuariosUSU_NOME: TIBStringField;
    TBUsuariosUSU_PASSWORD: TIBStringField;
    TBUsuariosUSU_SENHAEXPIRADA: TIBStringField;
    TBUsuariosUSU_VENDEDOR: TIntegerField;
    TBCupomFiscalCUP_CODIGO: TIntegerField;
    TBCupomFiscalCUP_MOVIMENTO: TIntegerField;
    TBCupomFiscalCUP_DAV: TIntegerField;
    TBCupomFiscalCUP_PREVENDA: TIntegerField;
    TBCupomFiscalCUP_VENDEDOR: TIntegerField;
    TBCupomFiscalCUP_CLIENTE: TIntegerField;
    TBCupomFiscalCUP_COO: TIntegerField;
    TBCupomFiscalCUP_CCF: TIntegerField;
    TBCupomFiscalCUP_DATA: TDateField;
    TBCupomFiscalCUP_HORA: TIBStringField;
    TBCupomFiscalCUP_DESCPORC: TIBBCDField;
    TBCupomFiscalCUP_DESCVALOR: TIBBCDField;
    TBCupomFiscalCUP_ACREPORC: TIBBCDField;
    TBCupomFiscalCUP_ACREVALOR: TIBBCDField;
    TBCupomFiscalCUP_VALORRECEBIDO: TIBBCDField;
    TBCupomFiscalCUP_VALORTROCO: TIBBCDField;
    TBCupomFiscalCUP_VALORCANCELADO: TIBBCDField;
    TBCupomFiscalCUP_BASEICMS: TIBBCDField;
    TBCupomFiscalCUP_TOTALICMS: TIBBCDField;
    TBCupomFiscalCUP_TOTALICMSOUTRAS: TIBBCDField;
    TBCupomFiscalCUP_TOTALISS: TIBBCDField;
    TBCupomFiscalCUP_TOTALPIS: TIBBCDField;
    TBCupomFiscalCUP_TOTALCOFINS: TIBBCDField;
    TBCupomFiscalCUP_NOME: TIBStringField;
    TBCupomFiscalCUP_DOCUMENTO: TIBStringField;
    TBCupomFiscalCUP_SINCRONIZADO: TIBStringField;
    TBCupomFiscalCUP_STATUS: TIBStringField;
    TBCupomFiscalItensCUI_CODIGO: TIntegerField;
    TBCupomFiscalItensCUI_CUPOMFISCAL: TIntegerField;
    TBCupomFiscalItensCUI_PRODUTO: TIntegerField;
    TBCupomFiscalItensCUI_ITEM: TIntegerField;
    TBCupomFiscalItensCUI_QUANTIDADE: TIBBCDField;
    TBCupomFiscalItensCUI_VALORUNITARIO: TIBBCDField;
    TBCupomFiscalItensCUI_VALORTOTAL: TIBBCDField;
    TBCupomFiscalItensCUI_BASEICMS: TIBBCDField;
    TBCupomFiscalItensCUI_ALIQICMS: TIBBCDField;
    TBCupomFiscalItensCUI_VALORICMS: TIBBCDField;
    TBCupomFiscalItensCUI_DESCVALOR: TIBBCDField;
    TBCupomFiscalItensCUI_DESCPORC: TIBBCDField;
    TBCupomFiscalItensCUI_ALIQISS: TIBBCDField;
    TBCupomFiscalItensCUI_VALORISS: TIBBCDField;
    TBCupomFiscalItensCUI_ALIQPIS: TIBBCDField;
    TBCupomFiscalItensCUI_VALORPIS: TIBBCDField;
    TBCupomFiscalItensCUI_ALIQCOFINS: TIBBCDField;
    TBCupomFiscalItensCUI_VALORCOFINS: TIBBCDField;
    TBCupomFiscalItensCUI_ACREPORC: TIBBCDField;
    TBCupomFiscalItensCUI_ACREVALOR: TIBBCDField;
    TBCupomFiscalItensCUI_TOTALIZADORPARCIAL: TIBStringField;
    TBCupomFiscalItensCUI_CANCELADO: TIBStringField;
    TBCupomFiscalItensCUI_MOVIMENTAESTOQUE: TIBStringField;
    TBCupomFiscalCUP_TABELAPRECO: TIBStringField;
    TBCupomFiscalItensCUI_ALMOXARIFADO: TIntegerField;
    TBTerminaisTER_ALMOXARIFADO: TIntegerField;
    TBCupomFiscalItensPRO_NOME: TIBStringField;
    TBCupomFiscalItensCUI_CFOP: TIBStringField;
    TBCupomFiscalItensCUI_CODIGOBARRAS: TIBStringField;
    TBCupomFiscalItensCUI_CSTICMS: TIBStringField;
    TBProdutosPRO_FORNECEDOR: TIntegerField;
    TBProdutosPRO_PRECOCUSTOCOMP: TIBBCDField;
    TBProdutosPRO_TIPOITEM: TIBStringField;
    TBProdutosPRO_SUBSTITUICAOTRIB: TIBStringField;
    TBProdutosPRO_ECFICMS: TIBStringField;
    TBProdutosPRO_TOTALIZADORPARCIAL: TIBStringField;
    TBCupomFiscalItensPRO_UNIDADE: TIBStringField;
    TBCupomFiscalCUP_DATAHORA: TDateTimeField;
    TBCupomFiscalCUP_CFOP: TIBStringField;
    TBVendedores: TIBDataSet;
    DSVendedores: TDataSource;
    TRVendedores: TIBTransaction;
    TBVendedoresVEN_CODIGO: TIntegerField;
    TBVendedoresVEN_NOME: TIBStringField;
    TBVendedoresVEN_COMISSAO: TIBBCDField;
    TBVendedoresVEN_STATUS: TIBStringField;
    ACBrTEFD: TACBrTEFD;
    TBSangrias: TIBDataSet;
    DSSangrias: TDataSource;
    TRSangrias: TIBTransaction;
    TBSangriasSAN_CODIGO: TIntegerField;
    TBSangriasSAN_MOVIMENTO: TIntegerField;
    TBSangriasSAN_DATA: TDateField;
    TBSangriasSAN_VALOR: TIBBCDField;
    TBSangriasSAN_USUARIO: TIBStringField;
    TBSuprimentos: TIBDataSet;
    DSSuprimentos: TDataSource;
    TRSuprimentos: TIBTransaction;
    TBSuprimentosSUP_CODIGO: TIntegerField;
    TBSuprimentosSUP_MOVIMENTO: TIntegerField;
    TBSuprimentosSUP_DATA: TDateField;
    TBSuprimentosSUP_VALOR: TIBBCDField;
    TBSuprimentosSUP_USUARIO: TIBStringField;
    TBCupomFiscalPagtos: TIBDataSet;
    DSCupomFiscalPagtos: TDataSource;
    TRCupomFiscalPagtos: TIBTransaction;
    TBCupomFiscalPagtosCFP_CODIGO: TIntegerField;
    TBCupomFiscalPagtosCFP_CUPOMFISCAL: TIntegerField;
    TBCupomFiscalPagtosCFP_FORMAPAGAMENTO: TIntegerField;
    TBCupomFiscalPagtosCFP_VALOR: TIBBCDField;
    TBCupomFiscalPagtosCFP_NSU: TLargeintField;
    TBCupomFiscalPagtosCFP_TEF: TIBStringField;
    TBCupomFiscalPagtosCFP_IMPRIMEVINCULADO: TIBStringField;
    TBCupomFiscalPagtosCFP_DESCRICAO: TIBStringField;
    TBCupomFiscalCUP_VALORTOTAL: TIBBCDField;
    TBCupomFiscalCUP_TOTALITENS: TIBBCDField;
    IBDatabase1: TIBDatabase;
    TBCupomFiscalPagtosCFP_CODIGOPAGAMENTO: TIBStringField;
    TBTerminaisALM_DESCRICAO: TIBStringField;
    TBEmpresaEMP_ENQUADRAMENTOISS: TIBStringField;
    TBEmpresaEMP_NOSSONUMERO: TIBStringField;
    TBEmpresaEMP_NUMERO: TIBStringField;
    TBParametrosPAR_ECFCFOP: TIntegerField;
    TBParametrosPAR_ECFCFOPNF2: TIntegerField;
    TBParametrosPAR_ECFDESCSANGRIA: TIBStringField;
    TBParametrosPAR_ECFDESCSUPRIMENTO: TIBStringField;
    TBParametrosPAR_ECFMENSAGEMCUPOM: TIBStringField;
    TBParametrosPAR_ECFTITULOTELA: TIBStringField;
    TBParametrosPAR_LOCPRODUTOSPRECOS: TIBStringField;
    TBParametrosPAR_DDDPADRAO: TIBStringField;
    TBParametrosPAR_LOCALFOTOSPRODUTOS: TIBStringField;
    TBClientesCLI_CONJUGE: TIBStringField;
    TBClientesCLI_CONJUGECPF: TIBStringField;
    TBClientesCLI_CONJUGEDTNASC: TDateField;
    TBClientesCLI_CONJUGERG: TIBStringField;
    TBClientesCLI_CONTRIBUINTEICMS: TIBStringField;
    TBClientesCLI_ENQUADRAMENTO: TIBStringField;
    TBClientesCLI_NATURALIDADE: TIBStringField;
    TBClientesCLI_NUMERO: TIBStringField;
    TBClientesCLI_NUMEROCOB: TIBStringField;
    TBClientesCLI_PASSWORD: TIBStringField;
    TBClientesCLI_PROFISSAO: TIBStringField;
    TBClientesCLI_RECEBEAVISOS: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TBCupomFiscalAfterDelete(DataSet: TDataSet);
    procedure TBCupomFiscalAfterEdit(DataSet: TDataSet);
    procedure TBCupomFiscalAfterInsert(DataSet: TDataSet);
    procedure TBCupomFiscalAfterPost(DataSet: TDataSet);
    procedure TBCupomFiscalBeforePost(DataSet: TDataSet);
    procedure TBCupomFiscalItensAfterDelete(DataSet: TDataSet);
    procedure TBCupomFiscalItensAfterInsert(DataSet: TDataSet);
    procedure TBCupomFiscalItensAfterPost(DataSet: TDataSet);
    procedure TBCupomFiscalItensBeforePost(DataSet: TDataSet);
    procedure TBMovimentosAfterInsert(DataSet: TDataSet);
    procedure TBMovimentosBeforePost(DataSet: TDataSet);
    procedure TBMovimentosAfterPost(DataSet: TDataSet);
    procedure ACBrECFBobinaAdicionaLinhas(const Linhas, Operacao: string);
    procedure TBSangriasAfterInsert(DataSet: TDataSet);
    procedure TBSangriasAfterPost(DataSet: TDataSet);
    procedure TBSangriasBeforePost(DataSet: TDataSet);
    procedure TBSuprimentosAfterInsert(DataSet: TDataSet);
    procedure TBSuprimentosAfterPost(DataSet: TDataSet);
    procedure TBSangriasAfterDelete(DataSet: TDataSet);
    procedure TBSuprimentosAfterDelete(DataSet: TDataSet);
    procedure TBSuprimentosBeforePost(DataSet: TDataSet);
    procedure TBCupomFiscalPagtosAfterDelete(DataSet: TDataSet);
    procedure TBCupomFiscalPagtosAfterInsert(DataSet: TDataSet);
    procedure TBCupomFiscalPagtosAfterPost(DataSet: TDataSet);
    procedure TBCupomFiscalPagtosBeforePost(DataSet: TDataSet);
    procedure ACBrTEFDInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
    procedure ACBrTEFDRestauraFocoAplicacao(var Tratado: Boolean);
    procedure ACBrTEFDExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
    procedure ACBrTEFDDepoisConfirmarTransacoes(
      RespostasPendentes: TACBrTEFDRespostasPendentes);
    procedure ACBrTEFDComandaECFPagamento(IndiceECF: string; Valor: Double;
      var RetornoECF: Integer);
    procedure ACBrTEFDComandaECFImprimeVia(
      TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
      ImagemComprovante: TStringList; var RetornoECF: Integer);
    procedure ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF: string;
      Valor: Double; var RetornoECF: Integer);
    procedure ACBrTEFDComandaECF(Operacao: TACBrTEFDOperacaoECF;
      Resp: TACBrTEFDResp; var RetornoECF: Integer);
    procedure ACBrTEFDBloqueiaMouseTeclado(Bloqueia: Boolean;
      var Tratado: Boolean);
    procedure ACBrTEFDAntesFinalizarRequisicao(Req: TACBrTEFDReq);
    procedure ACBrTEFDAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
    procedure ACBrTEFDAguardaResp(Arquivo: string; SegundosTimeOut: Integer;
      var Interromper: Boolean);
    procedure TBTerminaisAfterDelete(DataSet: TDataSet);
    procedure TBTerminaisAfterPost(DataSet: TDataSet);
    procedure TBTerminaisBeforePost(DataSet: TDataSet);
    procedure TBReducoeszAfterDelete(DataSet: TDataSet);
    procedure TBReducoeszAfterPost(DataSet: TDataSet);
    procedure TBReducoeszBeforePost(DataSet: TDataSet);
    procedure TBReducoeszAfterInsert(DataSet: TDataSet);
    procedure TBReducoeszItensAfterDelete(DataSet: TDataSet);
    procedure TBReducoeszItensAfterInsert(DataSet: TDataSet);
    procedure TBReducoeszItensAfterPost(DataSet: TDataSet);
    procedure TBReducoeszItensBeforePost(DataSet: TDataSet);
    procedure TBSintegra60mAfterDelete(DataSet: TDataSet);
    procedure TBSintegra60mAfterPost(DataSet: TDataSet);
    procedure TBSintegra60mBeforePost(DataSet: TDataSet);
    procedure TBSintegra60aAfterDelete(DataSet: TDataSet);
    procedure TBSintegra60aAfterInsert(DataSet: TDataSet);
    procedure TBSintegra60aAfterPost(DataSet: TDataSet);
    procedure TBSintegra60aBeforePost(DataSet: TDataSet);
    procedure TBSintegra60mAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure CalcularTotaisCupomFiscal(DarPost: Boolean);
  public
    { Public declarations }
    procedure Variaveis(Acao: String);
  end;

var
  DM: TDM;

  LocalBase: String;
  CodigoMark: Integer;
  CodigoMarkStr: String;
  SenhaSYSDBA: String;
  DefaultUser: String;
  UsuarioLogado: String;
  UsuarioNome: String;
  UsuarioVendedor: Integer;
  ChecarAtualizacoesIdx: Byte;
  CalcularTotais: Boolean = True;
const
  ParamFile='Parametros.ini';
  ChaveSenha=240;

implementation
uses IniFiles, FuncoesPomPom, Main;

{$R *.dfm}

procedure TDM.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASE DE DADOS','Principal',LocalBase);
    F.WriteInteger('ATUALIZACOES','Atualizar',ChecarAtualizacoesIdx);
    F.WriteString('USUARIOS','Default',DefaultUser);
    //nao salva a senha. apenas pelo form sysdba.
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    LocalBase:=            F.ReadString('BASE DE DADOS','Principal',LocalBase);
    ChecarAtualizacoesIdx:=F.ReadInteger('ATUALIZACOES','Atualizar',ChecarAtualizacoesIdx);
    SenhaSYSDBA:=          F.ReadString('BASE DE DADOS','Senha',SenhaSYSDBA);
    SenhaSYSDBA:=Senha(SenhaSYSDBA,ChaveSenha);
    DefaultUser:=          F.ReadString('USUARIOS','Default',DefaultUser);
  end;
  F.Free;
end;

procedure TDM.ACBrECFBobinaAdicionaLinhas(const Linhas, Operacao: string);
begin
  FormMain.WB_LoadHTML(FormMain.BobinaWeb,FormMain.BobinaMemo.Text);
  Application.ProcessMessages;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  if not FileExists(ExtractFilePath(Application.ExeName)+ParamFile) then
  begin
    MessageDlg('Arquivo "'+ParamFile+'" não encontrado!!!.'+#13#13+'Contate seu suporte técnico!',mtError,[mbOk],0);
    Application.ShowMainForm:=False;
    Application.Terminate;
    Exit;
  end;
  ACBrPAF.Path:=ExtractFilePath(Application.ExeName)+'\';
  Variaveis('LOAD');
  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name=sysdba');
  IBDatabase1.Params.Add('password=borland'); //'+SenhaSYSDBA);
  IBDatabase1.DatabaseName:=LocalBase;
  if not IBDatabase1.Connected then
  begin
    try
      IBDatabase1.Connected:=True;

      TBEmpresa.Open;
      TBParametros.Open;
      TBClientes.Open;
      TBCupomFiscal.Open;
      TBCupomFiscalItens.Open;
      TBCupomFiscalPagtos.Open;
      TBProdutos.Open;
      TBProdutosQtde.Open;
      TBMovimentos.Open;
      TBReducoesz.Open;
      TBReducoeszItens.Open;
      TBSangrias.Open;
      TBSintegra60a.Open;
      TBSintegra60m.Open;
      TBSuprimentos.Open;
      TBTerminais.Open;

      except on E:EIBInterBaseError do //ainda nao sei o por que do E:
      begin
        Beep;
        if UpperCase(E.Message)='UNAVAILABLE DATABASE' then
        ShowMessage('Banco de dados não disponível! Verifique se o Interbase está rodando.') else
        if UpperCase(E.Message)='CANNOT ATTACH TO SERVICES MANAGER' then
        ShowMessage('Não foi possível acessar o gerenciador de serviços.') else
        if UpperCase(E.Message)='YOUR USER NAME AND PASSWORD ARE NOT DEFINED. ASK YOUR DATABASE ADMINISTRATOR TO SET UP AN INTERBASE LOGIN' then
        ShowMessage('Nome de usuário e senha inválidos. Entre em contato com seu suporte técnico.') else
        if UpperCase(E.Message)='UNABLE TO PERFORM OPERATION.  YOU MUST BE EITHER SYSDBA OR OWNER OF THE DATABASE' then
        ShowMessage('Não foi possível realizar a operação. Você não tem permissão para realizar a operação.') else
        ShowMessage(E.Message);
        ShowMessage('Não foi possível abrir a base de dados!!!'+#13#13+'Verifique se a base de dados está corrompida e se sua localização no arquivo "PARAMETROS.INI" está correta.');
        Application.Terminate;
      end;
    end; //try.
  end;
end;

//############################################################################//
// CUPOM FISCAL                                                               //
//############################################################################//
procedure TDM.TBCupomFiscalAfterDelete(DataSet: TDataSet);
begin
  TRCupomFiscal.Commit;
  TBCupomFiscal.Open;
end;

procedure TDM.TBCupomFiscalAfterEdit(DataSet: TDataSet);
begin
  if TBCupomFiscalCUP_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um cupom já finalizado.',mtWarning,[mbOk],0);
    TBCupomFiscal.Cancel;
  end;
  if TBCupomFiscalCUP_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um cupom cancelado.',mtWarning,[mbOk],0);
    TBCupomFiscal.Cancel;
  end;
end;

procedure TDM.TBCupomFiscalAfterInsert(DataSet: TDataSet);
begin
  TBCupomFiscalCUP_DATA.Value:=Date;
  TBCupomFiscalCUP_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada.
  TBCupomFiscalCUP_MOVIMENTO.Value:=TBMovimentosMOV_CODIGO.Value;
  TBCupomFiscalCUP_VENDEDOR.Value:=TBVendedoresVEN_CODIGO.Value;
end;

procedure TDM.TBCupomFiscalAfterPost(DataSet: TDataSet);
begin
  TRCupomFiscal.Commit;
  TBCupomFiscal.ParamByName('codigo').AsInteger:=CodigoMark;
  TBCupomFiscal.Open;
end;

procedure TDM.TBCupomFiscalBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBCupomFiscalCUP_CODIGO.Value;
end;

procedure TDM.CalcularTotaisCupomFiscal(DarPost: Boolean);
begin
  TBCupomFiscal.Edit;
  //atualiza o total dos PRODUTOS na tabela vendas.
  QYCupomFiscalItens.Close;
  QYCupomFiscalItens.SQL.Clear;
  QYCupomFiscalItens.SQL.Add('select sum(CUI_VALORTOTAL) as TOTALITENS from CUPOMFISCALITENS where CUI_CANCELADO=''N'' and CUI_CUPOMFISCAL=:cupom');
  QYCupomFiscalItens.ParamByName('cupom').AsInteger:=TBCupomFiscalCUP_CODIGO.Value;
  QYCupomFiscalItens.Open;
  TBCupomFiscalCUP_TOTALITENS.Value:=QYCupomFiscalItens.FieldByName('TOTALITENS').AsCurrency;

  QYCupomFiscalItens.Close;
  QYCupomFiscalItens.SQL.Clear;
  QYCupomFiscalItens.SQL.Add('select '+
                             'sum(CUI_BASEICMS) as BASEICMS, '+
                             'sum(CUI_VALORCOFINS) as VALORCOFINS, '+
                             'sum(CUI_VALORICMS) as VALORICMS, '+
                             'sum(CUI_VALORISS) as VALORISS, '+
                             'sum(CUI_VALORPIS) as VALORPIS, '+
                             'sum(CUI_ACREVALOR) as VALORACRESCIMO, '+
                             'sum(CUI_DESCVALOR) as VALORDESCONTO '+
                             'from CUPOMFISCALITENS where CUI_CUPOMFISCAL=:cupom');
  QYCupomFiscalItens.ParamByName('cupom').AsInteger:=TBCupomFiscalCUP_CODIGO.Value;
  QYCupomFiscalItens.Open;

  TBCupomFiscalCUP_BASEICMS.Value:=QYCupomFiscalItens.FieldByName('BASEICMS').AsCurrency;
  TBCupomFiscalCUP_TOTALCOFINS.Value:=QYCupomFiscalItens.FieldByName('VALORCOFINS').AsCurrency;
  TBCupomFiscalCUP_TOTALICMS.Value:=QYCupomFiscalItens.FieldByName('VALORICMS').AsCurrency;
  TBCupomFiscalCUP_TOTALISS.Value:=QYCupomFiscalItens.FieldByName('VALORISS').AsCurrency;
  TBCupomFiscalCUP_TOTALPIS.Value:=QYCupomFiscalItens.FieldByName('VALORPIS').AsCurrency;
  TBCupomFiscalCUP_ACREVALOR.Value:=QYCupomFiscalItens.FieldByName('VALORACRESCIMO').AsCurrency;
  TBCupomFiscalCUP_DESCVALOR.Value:=QYCupomFiscalItens.FieldByName('VALORDESCONTO').AsCurrency;

  TBCupomFiscalCUP_VALORTOTAL.Value:=(TBCupomFiscalCUP_TOTALITENS.Value+TBCupomFiscalCUP_ACREVALOR.Value)-TBCupomFiscalCUP_DESCVALOR.Value;

  QYCupomFiscalItens.Close;
  if DarPost then TBCupomFiscal.Post;
end;

//############################################################################//
// CUPOM FISCAL ITENS                                                         //
//############################################################################//
procedure TDM.TBCupomFiscalItensAfterDelete(DataSet: TDataSet);
begin
  TRCupomFiscalItens.Commit;
  TBCupomFiscalItens.Open;
end;

procedure TDM.TBCupomFiscalItensAfterInsert(DataSet: TDataSet);
begin
  TBCupomFiscalItensCUI_CUPOMFISCAL.Value:=TBCupomFiscalCUP_CODIGO.Value;
  TBCupomFiscalItensCUI_CANCELADO.Value:='N';
  TBCupomFiscalItensCUI_DESCVALOR.Value:=0;
  TBCupomFiscalItensCUI_DESCPORC.Value:=0;
  TBCupomFiscalItensCUI_ACREVALOR.Value:=0;
  TBCupomFiscalItensCUI_ACREPORC.Value:=0;
  TBCupomFiscalItensCUI_VALORICMS.Value:=0;
  TBCupomFiscalItensCUI_VALORISS.Value:=0;
  TBCupomFiscalItensCUI_VALORPIS.Value:=0;
  TBCupomFiscalItensCUI_VALORCOFINS.Value:=0;
  TBCupomFiscalItensCUI_ALMOXARIFADO.Value:=TBTerminaisTER_ALMOXARIFADO.Value;
  TBCupomFiscalItensCUI_MOVIMENTAESTOQUE.Value:='S';
  TBCupomFiscalItensCUI_CFOP.Value:=IntToStr(TBParametrosPAR_ECFCFOP.Value);
end;

procedure TDM.TBCupomFiscalItensAfterPost(DataSet: TDataSet);
begin
  TRCupomFiscalItens.Commit;
  TBCupomFiscalItens.Open;
  TBCupomFiscalItens.Locate('CUI_CODIGO',CodigoMark,[]);
//  if CalcularTotais then
  CalcularTotaisCupomFiscal(True);
end;

procedure TDM.TBCupomFiscalItensBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBCupomFiscalItensCUI_CODIGO.Value;
  TBCupomFiscalItensCUI_VALORTOTAL.Value:=TBCupomFiscalItensCUI_QUANTIDADE.Value*Decimais(TBCupomFiscalItensCUI_VALORUNITARIO.Value,2);
  TBCupomFiscalItensCUI_BASEICMS.Value:=DM.TBCupomFiscalItensCUI_VALORTOTAL.Value;
//  CalcularTotaisCupomFiscal(False);
end;

//############################################################################//
// MOVIMENTOS                                                                 //
//############################################################################//
procedure TDM.TBMovimentosAfterInsert(DataSet: TDataSet);
begin
  TBMovimentosMOV_STATUS.Value:='A';
  TBMovimentosMOV_SINCRONIZADO.Value:='N';
  TBMovimentosMOV_DTABERTURA.Value:=Date;
  TBMovimentosMOV_HRABERTURA.Value:=TimeToStr(Time);
  TBMovimentosMOV_TOTALSUPRIMENTO.Value:=0;
  TBMovimentosMOV_TOTALSANGRIA.Value:=0;
  TBMovimentosMOV_TOTALNAOFISCAL.Value:=0;
  TBMovimentosMOV_TOTALVENDA.Value:=0;
  TBMovimentosMOV_TOTALDESCONTO.Value:=0;
  TBMovimentosMOV_TOTALACRESCIMO.Value:=0;
  TBMovimentosMOV_TOTALFINAL.Value:=0;
  TBMovimentosMOV_TOTALRECEBIDO.Value:=0;
  TBMovimentosMOV_TOTALTROCO.Value:=0;
  TBMovimentosMOV_TOTALCANCELADO.Value:=0;
end;

procedure TDM.TBMovimentosAfterPost(DataSet: TDataSet);
begin
  TRMovimentos.Commit;
  TBMovimentos.ParamByName('codigo').AsInteger:=CodigoMark;
  TBMovimentos.Open;
end;

procedure TDM.TBMovimentosBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBMovimentosMOV_CODIGO.Value;
  TBMovimentosMOV_USUARIO.Value:=UsuarioLogado;
  TBMovimentosMOV_DTATUALIZACAO.Value:=Date;
end;

//############################################################################//
// SANGRIAS                                                                   //
//############################################################################//
procedure TDM.TBSangriasAfterDelete(DataSet: TDataSet);
begin
  TRSangrias.Commit;
  TBSangrias.Open;
end;

procedure TDM.TBSangriasAfterInsert(DataSet: TDataSet);
begin
  TBSangriasSAN_MOVIMENTO.Value:=TBMovimentosMOV_CODIGO.Value;
  TBSangriasSAN_DATA.Value:=Date;
  TBSangriasSAN_VALOR.Value:=0;
  TBSangriasSAN_USUARIO.Value:=UsuarioLogado;
end;

procedure TDM.TBSangriasAfterPost(DataSet: TDataSet);
begin
  TRSangrias.Commit;
  TBSangrias.Open;
  TBSangrias.Locate('SAN_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBSangriasBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBSangriasSAN_CODIGO.Value;
end;

//############################################################################//
// SUPRIMENTOS                                                                //
//############################################################################//
procedure TDM.TBSuprimentosAfterDelete(DataSet: TDataSet);
begin
  TRSuprimentos.Commit;
  TBSuprimentos.Open;
end;

procedure TDM.TBSuprimentosAfterInsert(DataSet: TDataSet);
begin
  TBSuprimentosSUP_MOVIMENTO.Value:=TBMovimentosMOV_CODIGO.Value;
  TBSuprimentosSUP_DATA.Value:=Date;
  TBSuprimentosSUP_VALOR.Value:=0;
  TBSuprimentosSUP_USUARIO.Value:=UsuarioLogado;
end;

procedure TDM.TBSuprimentosAfterPost(DataSet: TDataSet);
begin
  TRSuprimentos.Commit;
  TBSuprimentos.Open;
  TBSuprimentos.Locate('SUP_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBSuprimentosBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBSuprimentosSUP_CODIGO.Value;
end;

//############################################################################//
// CUPOM FISCAL PAGAMENTOS                                                    //
//############################################################################//
procedure TDM.TBCupomFiscalPagtosAfterDelete(DataSet: TDataSet);
begin
  TRCupomFiscalPagtos.Commit;
  TBCupomFiscalPagtos.Open;
end;

procedure TDM.TBCupomFiscalPagtosAfterInsert(DataSet: TDataSet);
begin
  TBCupomFiscalPagtosCFP_CUPOMFISCAL.Value:=TBCupomFiscalCUP_CODIGO.Value;
  TBCupomFiscalPagtosCFP_VALOR.Value:=0;
end;

procedure TDM.TBCupomFiscalPagtosAfterPost(DataSet: TDataSet);
begin
  TRCupomFiscalPagtos.Commit;
  TBCupomFiscalPagtos.Open;
  TBCupomFiscalPagtos.Locate('CFP_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBCupomFiscalPagtosBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBCupomFiscalPagtosCFP_CODIGO.Value;
end;

//############################################################################//
// EVENTOS ACBR TEF                                                           //
//############################################################################//
procedure TDM.ACBrTEFDAguardaResp(Arquivo: string; SegundosTimeOut: Integer; var Interromper: Boolean);
var Msg: String;
begin
  Msg:='';
  if (ACBrTEFD.GPAtual in [gpCliSiTef, gpVeSPague]) then //É TEF dedicado?
  begin
    if Arquivo='23' then  //Está aguardando Pin-Pad ?
    begin
      if ACBrTEFD.TecladoBloqueado then
      begin
        ACBrTEFD.BloquearMouseTeclado(False);  //Desbloqueia o Teclado
      end;
      Msg:='Tecle "ESC" para cancelar.';
    end;
  end else
  Msg:='Aguardando: '+Arquivo+' '+IntToStr(SegundosTimeOut);
  if Msg<>'' then
  FormMain.LabelMensagens.Caption:=Msg;
  Application.ProcessMessages;
end;

procedure TDM.ACBrTEFDAntesCancelarTransacao(RespostaPendente: TACBrTEFDResp);
var Estados: TACBrECFEstado;
begin
  Estados:=ACBrECF.Estado;
  case Estados of
    estVenda,
    estPagamento: ACBrECF.CancelaCupom;
    estRelatorio: ACBrECF.FechaRelatorio;
  else
  if not (Estados in [estLivre, estDesconhecido, estNaoInicializada]) then
  ACBrECF.CorrigeEstadoErro(False);
  end;
end;

procedure TDM.ACBrTEFDAntesFinalizarRequisicao(Req: TACBrTEFDReq);
begin
  if Req.Header='CRT' then
  Req.GravaInformacao(777,777,'REDECARD');
end;

procedure TDM.ACBrTEFDBloqueiaMouseTeclado(Bloqueia: Boolean;
  var Tratado: Boolean);
begin
  FormMain.Enabled:=not Bloqueia;
  Tratado:=False;  { Deixa executar o código de Bloqueio do ACBrTEFD }
end;

procedure TDM.ACBrTEFDComandaECF(Operacao: TACBrTEFDOperacaoECF; Resp: TACBrTEFDResp; var RetornoECF: Integer);
var Mensagem: String;
begin
  Mensagem:='';
  if TBCupomFiscalCUP_PREVENDA.Value>0 then
  Mensagem:='PV'+AlignText(IntToStr(TBCupomFiscalCUP_PREVENDA.Value),'0',10,taRight);
  if TBCupomFiscalCUP_DAV.Value>0 then
  Mensagem:=Mensagem+'DAV'+AlignText(IntToStr(TBCupomFiscalCUP_DAV.Value),'0',10,taRight);
  try
    case Operacao of
      opeAbreGerencial:    ACBrECF.AbreRelatorioGerencial;
      opeCancelaCupom:     ACBrECF.CancelaCupom;
      opeFechaCupom:       if Mensagem='' then
                           ACBrECF.FechaCupom(Main.StringMD5+#13+#10+TBParametrosPAR_ECFMENSAGEMCUPOM.Value) else
                           ACBrECF.FechaCupom(Mensagem);
      opeSubTotalizaCupom: ACBrECF.SubtotalizaCupom(0);
      opeFechaGerencial,
      opeFechaVinculado:   ACBrECF.FechaRelatorio;
      opePulaLinhas:       begin
                             ACBrECF.PulaLinhas(ACBrECF.LinhasEntreCupons);
                             ACBrECF.CortaPapel(True);
                             Sleep(200);
                           end;
    end;
    RetornoECF:=1;
  except
    RetornoECF:=0;
  end;
end;

procedure TDM.ACBrTEFDComandaECFAbreVinculado(COO, IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  try
    ACBrECF.AbreCupomVinculado(COO,IndiceECF,Valor);
    RetornoECF:=1;
  except
    RetornoECF:=0;
  end;
end;

procedure TDM.ACBrTEFDComandaECFImprimeVia(
  TipoRelatorio: TACBrTEFDTipoRelatorio; Via: Integer;
  ImagemComprovante: TStringList; var RetornoECF: Integer);
begin
  { *** Se estiver usando ACBrECF... Lembre-se de configurar ***
    ACBrECF1.MaxLinhasBuffer   := 3; // Os homologadores permitem no máximo
                                     // Impressao de 3 em 3 linhas
    ACBrECF1.LinhasEntreCupons := 7; // (ajuste conforme o seu ECF)
    NOTA: ACBrECF nao possui comando para imprimir a 2a via do CCD }
  try
    case TipoRelatorio of
     trGerencial: ACBrECF.LinhaRelatorioGerencial(ImagemComprovante.Text);
     trVinculado: ACBrECF.LinhaCupomVinculado(ImagemComprovante.Text);
    end;
    RetornoECF:=1;
  except
    RetornoECF:=0;
  end;
end;

procedure TDM.ACBrTEFDComandaECFPagamento(IndiceECF: string; Valor: Double; var RetornoECF: Integer);
begin
  try
    ACBrECF.EfetuaPagamento(IndiceECF,Valor);
    RetornoECF:=1;
  except
    RetornoECF:=0;
  end;
end;

procedure TDM.ACBrTEFDDepoisConfirmarTransacoes(RespostasPendentes: TACBrTEFDRespostasPendentes);
var I: Integer;
begin
  I:=-1; //I - servirá para pegar os dados do pagamento em RespostasPendentes.
  TBCupomFiscalPagtos.First;
  while not TBCupomFiscalPagtos.Eof do
  begin
    if TBCupomFiscalPagtosCFP_TEF.Value='S' then
    begin
      Inc(I);
      DM.TBCupomFiscalPagtos.Edit;
      DM.TBCupomFiscalPagtosCFP_NSU.Value:=StrToInt(RespostasPendentes[I].NSU);
      DM.TBCupomFiscalPagtos.Post; //no afterpost é reposicionado o cursor na tabela.
    end;
    TBCupomFiscalPagtos.Next;
  end;
end;

procedure TDM.ACBrTEFDExibeMsg(Operacao: TACBrTEFDOperacaoMensagem; Mensagem: string; var AModalResult: TModalResult);
var
  Fim: TDateTime;
  OldMensagem: String;
begin
  case Operacao of
    opmOK:                 AModalResult:=MessageDlg(PChar(Mensagem),mtConfirmation,[mbOk],0);
    opmYesNo:              AModalResult:=MessageDlg(PChar(Mensagem),mtConfirmation,[mbYes,mbNo],0);
    opmExibirMsgOperador,
    opmRemoverMsgOperador: FormMain.LabelMensagens.Caption:=Mensagem;
    opmExibirMsgCliente,
    opmRemoverMsgCliente:  FormMain.LabelMensagens.Caption:=Mensagem;
    opmDestaqueVia:        begin
                             OldMensagem:=FormMain.LabelMensagens.Caption;
                             try
                               FormMain.LabelMensagens.Caption:=Mensagem;
                               { Aguardando 3 segundos }
                               Fim:=IncSecond(Now,3);
                               repeat
                                 Sleep(200) ;
                                 FormMain.LabelMensagens.Caption:=Mensagem+' '+IntToStr(SecondsBetween(Fim,Now));
                                 Application.ProcessMessages;
                               until (Now > Fim);
                             finally
                                FormMain.LabelMensagens.Caption:=OldMensagem;
                             end;
                           end;
  end;
  Application.ProcessMessages;
end;

procedure TDM.ACBrTEFDInfoECF(Operacao: TACBrTEFDInfoECF; var RetornoECF: string);
begin
  case Operacao of
    ineSubTotal:  RetornoECF:=FloatToStr(ACBrECF.Subtotal-ACBrECF.TotalPago);
    ineEstadoECF: begin
                    case ACBrECF.Estado of
                      estLivre    : RetornoECF:='L';
                      estVenda    : RetornoECF:='V';
                      estPagamento: RetornoECF:='P';
                      estRelatorio: RetornoECF:='R';
                    else
                      RetornoECF:='O';
                    end;
                  end;
  end;
end;

procedure TDM.ACBrTEFDRestauraFocoAplicacao(var Tratado: Boolean);
begin
  Application.BringToFront;
  Tratado:=False;  { Deixa executar o código de Foco do ACBrTEFD }
end;

//############################################################################//
// TERMINAIS                                                                  //
//############################################################################//
procedure TDM.TBTerminaisAfterDelete(DataSet: TDataSet);
begin
  TRTerminais.Commit;
  TBTerminais.Open;
end;

procedure TDM.TBTerminaisAfterPost(DataSet: TDataSet);
begin
  TRTerminais.Commit;
  TBTerminais.ParamByName('codigo').AsInteger:=CodigoMark;
  TBTerminais.Open;
end;

procedure TDM.TBTerminaisBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBTerminaisTER_CODIGO.Value;
  if TBTerminaisTER_ECFMODELO.Value='BEMATECH'   then TBTerminaisTER_ECFMODELOACBR.Value:='ecfBematech'  else
  if TBTerminaisTER_ECFMODELO.Value='DARUMA'     then TBTerminaisTER_ECFMODELOACBR.Value:='ecfDaruma'    else
  if TBTerminaisTER_ECFMODELO.Value='DATA REGIS' then TBTerminaisTER_ECFMODELOACBR.Value:='ecfDataRegis' else
  if TBTerminaisTER_ECFMODELO.Value='EPSON'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfEpson'     else
  if TBTerminaisTER_ECFMODELO.Value='FISCNET'    then TBTerminaisTER_ECFMODELOACBR.Value:='ecfFiscNET'   else
  if TBTerminaisTER_ECFMODELO.Value='ICASH'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfICash'     else
  if TBTerminaisTER_ECFMODELO.Value='MECAF'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfMecaf'     else
  if TBTerminaisTER_ECFMODELO.Value='NAO FISCAL' then TBTerminaisTER_ECFMODELOACBR.Value:='ecfNaoFiscal' else
  if TBTerminaisTER_ECFMODELO.Value='NCR'        then TBTerminaisTER_ECFMODELOACBR.Value:='ecfNCR'       else
  if TBTerminaisTER_ECFMODELO.Value='QUATTRO'    then TBTerminaisTER_ECFMODELOACBR.Value:='ecfQuattro'   else
  if TBTerminaisTER_ECFMODELO.Value='SCHALTER'   then TBTerminaisTER_ECFMODELOACBR.Value:='ecfSchalter'  else
  if TBTerminaisTER_ECFMODELO.Value='SWEDA'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfSweda'     else
  if TBTerminaisTER_ECFMODELO.Value='SWEDA STX'  then TBTerminaisTER_ECFMODELOACBR.Value:='ecfSwedaSTX'  else
  if TBTerminaisTER_ECFMODELO.Value='URANO'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfUrano'     else
  if TBTerminaisTER_ECFMODELO.Value='YANCO'      then TBTerminaisTER_ECFMODELOACBR.Value:='ecfYanco';
end;

//############################################################################//
// REDUCOES Z                                                                 //
//############################################################################//
procedure TDM.TBReducoeszAfterDelete(DataSet: TDataSet);
begin
  TRReducoesz.Commit;
  TBReducoesz.Open;
end;

procedure TDM.TBReducoeszAfterInsert(DataSet: TDataSet);
begin
  TBReducoeszRDZ_TERMINAL.Value:=TBTerminaisTER_CODIGO.Value;
  TBReducoeszRDZ_DTEMISSAO.Value:=Date;
  TBReducoeszRDZ_HREMISSAO.Value:=TimeToStr(Time);
  TBReducoeszRDZ_SINCRONIZADO.Value:='N'; //sincronia com banco de dados central.
end;

procedure TDM.TBReducoeszAfterPost(DataSet: TDataSet);
begin
  TRReducoesz.Commit;
  TBReducoesz.ParamByName('codigo').AsInteger:=CodigoMark;
  TBReducoesz.Open;
end;

procedure TDM.TBReducoeszBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBReducoeszRDZ_CODIGO.Value;
  TBReducoeszRDZ_USUARIO.Value:=UsuarioLogado;
end;

//############################################################################//
// REDUCOES Z ITENS                                                           //
//############################################################################//
procedure TDM.TBReducoeszItensAfterDelete(DataSet: TDataSet);
begin
  TRReducoeszItens.Commit;
  TBReducoeszItens.Open;
end;

procedure TDM.TBReducoeszItensAfterInsert(DataSet: TDataSet);
begin
  TBReducoeszItensRZI_REDUCAOZ.Value:=TBReducoeszRDZ_CODIGO.Value;
end;

procedure TDM.TBReducoeszItensAfterPost(DataSet: TDataSet);
begin
  TRReducoeszItens.Commit;
  TBReducoeszItens.Open;
  TBReducoeszItens.Locate('RZI_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBReducoeszItensBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBReducoeszItensRZI_CODIGO.Value;
end;

//############################################################################//
// SINTEGRA 60M                                                               //
//############################################################################//
procedure TDM.TBSintegra60mAfterDelete(DataSet: TDataSet);
begin
  TRSintegra60m.Commit;
  TBSintegra60m.Open;
end;

procedure TDM.TBSintegra60mAfterInsert(DataSet: TDataSet);
begin
  TBSintegra60mSIN_SINCRONIZADO.Value:='N';
end;

procedure TDM.TBSintegra60mAfterPost(DataSet: TDataSet);
begin
  TRSintegra60m.Commit;
  TBSintegra60m.ParamByName('codigo').AsInteger:=CodigoMark;
  TBSintegra60m.Open;
end;

procedure TDM.TBSintegra60mBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBSintegra60mSIN_CODIGO.Value;
  TBSintegra60mSIN_USUARIO.Value:=UsuarioLogado;
end;

//############################################################################//
// SINTEGRA 60A                                                               //
//############################################################################//
procedure TDM.TBSintegra60aAfterDelete(DataSet: TDataSet);
begin
  TRSintegra60a.Commit;
  TBSintegra60a.Open;
end;

procedure TDM.TBSintegra60aAfterInsert(DataSet: TDataSet);
begin
  TBSintegra60aSII_SINTEGRA60M.Value:=TBSintegra60mSIN_CODIGO.Value;
end;

procedure TDM.TBSintegra60aAfterPost(DataSet: TDataSet);
begin
  TRSintegra60a.Commit;
  TBSintegra60a.Open;
  TBSintegra60a.Locate('SII_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBSintegra60aBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBSintegra60aSII_CODIGO.Value;
end;

end.
