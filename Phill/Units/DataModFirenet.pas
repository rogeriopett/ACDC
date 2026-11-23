unit DataModFirenet;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDMFirenet = class(TDataModule)
    DSCondicoes: TDataSource;
    DSMarkups: TDataSource;
    DSConsultas: TDataSource;
    DSVendas: TDataSource;
    DSProdutos: TDataSource;
    DSNfe: TDataSource;
    FDConnection1: TFDConnection;
    Query1: TFDQuery;
    TRQuery1: TFDTransaction;
    Query2: TFDQuery;
    TRQuery2: TFDTransaction;
    Query3: TFDQuery;
    TRQuery3: TFDTransaction;
    TBAgrupadores: TFDQuery;
    TRAgrupadores: TFDTransaction;
    UPAgrupadores: TFDUpdateSQL;
    TBAgrupadoresAGR_CODIGO: TIntegerField;
    TBAgrupadoresAGR_DESCRICAO: TStringField;
    TBAgrupadoresAGR_DTATUALIZACAO: TDateField;
    TBAgrupadoresAGR_DTCADASTRO: TDateField;
    TBAgrupadoresAGR_HRATUALIZACAO: TTimeField;
    TBAgrupadoresAGR_HRCADASTRO: TTimeField;
    TBAgrupadoresAGR_USUARIO: TStringField;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDUpdateSQL1: TFDUpdateSQL;
    TBAliquotas: TFDQuery;
    TRAliquotas: TFDTransaction;
    UPAliquotas: TFDUpdateSQL;
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
    TRAlmoxarifados: TFDTransaction;
    UPAlmoxarifados: TFDUpdateSQL;
    TBAlmoxarifadosALM_CODIGO: TIntegerField;
    TBAlmoxarifadosALM_DESCRICAO: TStringField;
    TBAlmoxarifadosALM_DTATUALIZACAO: TDateField;
    TBAlmoxarifadosALM_DTCADASTRO: TDateField;
    TBAlmoxarifadosALM_HRATUALIZACAO: TTimeField;
    TBAlmoxarifadosALM_HRCADASTRO: TTimeField;
    TBAlmoxarifadosALM_STATUS: TStringField;
    TBAlmoxarifadosALM_USUARIO: TStringField;
    TBAtividades: TFDQuery;
    TRAtividades: TFDTransaction;
    UPAtividades: TFDUpdateSQL;
    TBAtividadesATI_CODIGO: TIntegerField;
    TBAtividadesATI_DESCRICAO: TStringField;
    TBAtividadesATI_DTATUALIZACAO: TDateField;
    TBAtividadesATI_DTCADASTRO: TDateField;
    TBAtividadesATI_HRATUALIZACAO: TTimeField;
    TBAtividadesATI_HRCADASTRO: TTimeField;
    TBAtividadesATI_USUARIO: TStringField;
    TBBancos: TFDQuery;
    TRBancos: TFDTransaction;
    UPBancos: TFDUpdateSQL;
    TBBancosBAN_CODIGO: TIntegerField;
    TBBancosBAN_DTATUALIZACAO: TDateField;
    TBBancosBAN_DTCADASTRO: TDateField;
    TBBancosBAN_HRATUALIZACAO: TTimeField;
    TBBancosBAN_HRCADASTRO: TTimeField;
    TBBancosBAN_NOME: TStringField;
    TBBancosBAN_STATUS: TStringField;
    TBBancosBAN_USUARIO: TStringField;
    TBBeneficios: TFDQuery;
    TRBeneficios: TFDTransaction;
    UPBeneficios: TFDUpdateSQL;
    TBBeneficiosBEN_CODIGO: TStringField;
    TBBeneficiosBEN_DESCRICAO: TMemoField;
    TBBeneficiosBEN_DTATUALIZACAO: TDateField;
    TBBeneficiosBEN_DTCADASTRO: TDateField;
    TBBeneficiosBEN_HRATUALIZACAO: TTimeField;
    TBBeneficiosBEN_HRCADASTRO: TTimeField;
    TBBeneficiosBEN_TIPO: TStringField;
    TBBeneficiosBEN_USUARIO: TStringField;
    TBCaixa: TFDQuery;
    TRCaixa: TFDTransaction;
    UPCaixa: TFDUpdateSQL;
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
    TBCaixaVEN_NOME: TStringField;
    TBClassFiscal: TFDQuery;
    TRClassFiscal: TFDTransaction;
    UPClassFiscal: TFDUpdateSQL;
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
    TBClientes: TFDQuery;
    TRClientes: TFDTransaction;
    UPClientes: TFDUpdateSQL;
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
    TBClientesCLI_DTATUALIZACAO: TDateField;
    TBClientesCLI_DTCADASTRO: TDateField;
    TBClientesCLI_DIACOBRANCA: TIntegerField;
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
    TBClientesCLI_LOCALTRABALHO: TIntegerField;
    TBClientesCLI_LOCALESTUDA: TIntegerField;
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
    TBClientesATI_DESCRICAO: TStringField;
    TBClientesCPG_DESCRICAO: TStringField;
    TBClientesFOR_NOME: TStringField;
    TBClientesMAI_DESCRICAO: TStringField;
    TBClientesVEN_NOME: TStringField;
    TBClientesVEN_NOME1: TStringField;
    TBClientesLCA_DESCRICAO: TStringField;
    TBClientesLCA_DESCRICAO1: TStringField;
    TBClientesTAX_DESCRICAO: TStringField;
    TBClientesTAX_TIPO: TStringField;
    TBClientesTAX_VALOR: TFMTBCDField;
    TBCondicoes: TFDQuery;
    TRCondicoes: TFDTransaction;
    UPCondicoes: TFDUpdateSQL;
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
    TBCondicoesCPG_STATUS: TStringField;
    TBCondicoesCPG_TIPOINTEGRACAO: TStringField;
    TBCondicoesCPG_TIPOPAGAMENTO: TStringField;
    TBCondicoesCPG_TOTALPARCELAS: TIntegerField;
    TBCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField;
    TBCondicoesCPG_USUARIO: TStringField;
    TBCondicoesCON_NOME: TStringField;
    TBCondicoesItens: TFDQuery;
    TRCondicoesItens: TFDTransaction;
    UPCondicoesItens: TFDUpdateSQL;
    TBCondicoesItensCPI_CODIGO: TIntegerField;
    TBCondicoesItensCPI_CONDICAO: TIntegerField;
    TBCondicoesItensCPI_DIAS: TIntegerField;
    TBCondicoesItensCPI_PORCENTAGEM: TFMTBCDField;
    TBConsultas: TFDQuery;
    TRConsultas: TFDTransaction;
    UPConsultas: TFDUpdateSQL;
    TBConsultasCOS_CLIENTE: TIntegerField;
    TBConsultasCOS_CODIGO: TIntegerField;
    TBConsultasCOS_CONVENIO: TIntegerField;
    TBConsultasCOS_DATAFIM: TDateField;
    TBConsultasCOS_DATAINICIO: TDateField;
    TBConsultasCOS_DTATUALIZACAO: TDateField;
    TBConsultasCOS_DTCADASTRO: TDateField;
    TBConsultasCOS_FIM: TSQLTimeStampField;
    TBConsultasCOS_HORAFIM: TTimeField;
    TBConsultasCOS_HORAINICIO: TTimeField;
    TBConsultasCOS_HRATUALIZACAO: TTimeField;
    TBConsultasCOS_HRCADASTRO: TTimeField;
    TBConsultasCOS_INICIO: TSQLTimeStampField;
    TBConsultasCOS_MEDICO: TIntegerField;
    TBConsultasCOS_SOLICITANTE: TIntegerField;
    TBConsultasCOS_STATUS: TStringField;
    TBConsultasCOS_USUARIO: TStringField;
    TBConsultasCOS_VALORTOTAL: TFMTBCDField;
    TBConsultasCLI_NOME: TStringField;
    TBConsultasCLI_SOLICITANTE: TStringField;
    TBConsultasCOV_DESCRICAO: TStringField;
    TBConsultasVEN_NOME: TStringField;
    TBConsultasItens: TFDQuery;
    TRConsultasItens: TFDTransaction;
    UPConsultasItens: TFDUpdateSQL;
    TBConsultasItensCSI_CODIGO: TIntegerField;
    TBConsultasItensCSI_CONSULTA: TIntegerField;
    TBConsultasItensCSI_DESCRICAO: TStringField;
    TBConsultasItensCSI_EXAME: TIntegerField;
    TBConsultasItensCSI_SIGLA: TStringField;
    TBConsultasItensCSI_VALOR: TFMTBCDField;
    TBContas: TFDQuery;
    TRContas: TFDTransaction;
    UPContas: TFDUpdateSQL;
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
    TBContasBAN_NOME: TStringField;
    TBContatos: TFDQuery;
    TRContatos: TFDTransaction;
    UPContatos: TFDUpdateSQL;
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
    TRConvenios: TFDTransaction;
    UPConvenios: TFDUpdateSQL;
    TBConveniosCOV_CODIGO: TIntegerField;
    TBConveniosCOV_DESCRICAO: TStringField;
    TBConveniosCOV_DTATUALIZACAO: TDateField;
    TBConveniosCOV_DTCADASTRO: TDateField;
    TBConveniosCOV_HRATUALIZACAO: TTimeField;
    TBConveniosCOV_HRCADASTRO: TTimeField;
    TBConveniosCOV_OBSERVACOES: TMemoField;
    TBConveniosCOV_STATUS: TStringField;
    TBConveniosCOV_USUARIO: TStringField;
    TBDespesas: TFDQuery;
    TRDespesas: TFDTransaction;
    UPDespesas: TFDUpdateSQL;
    TBDespesasDES_AGRUPADOR: TIntegerField;
    TBDespesasDES_CODIGO: TIntegerField;
    TBDespesasDES_DESCRICAO: TStringField;
    TBDespesasDES_DTATUALIZACAO: TDateField;
    TBDespesasDES_DTCADASTRO: TDateField;
    TBDespesasDES_HRATUALIZACAO: TTimeField;
    TBDespesasDES_HRCADASTRO: TTimeField;
    TBDespesasDES_USUARIO: TStringField;
    TBDespesasAGR_DESCRICAO: TStringField;
    TBEmailsContas: TFDQuery;
    TREmailsContas: TFDTransaction;
    UPEmailsContas: TFDUpdateSQL;
    TBEmailsContasEMC_ASSINATURA: TMemoField;
    TBEmailsContasEMC_CODIGO: TIntegerField;
    TBEmailsContasEMC_CONFIRMACAO: TStringField;
    TBEmailsContasEMC_DTATUALIZACAO: TDateField;
    TBEmailsContasEMC_DTCADASTRO: TDateField;
    TBEmailsContasEMC_EMAIL: TStringField;
    TBEmailsContasEMC_HRATUALIZACAO: TTimeField;
    TBEmailsContasEMC_HRCADASTRO: TTimeField;
    TBEmailsContasEMC_LOGIN: TStringField;
    TBEmailsContasEMC_NOME: TStringField;
    TBEmailsContasEMC_POP: TStringField;
    TBEmailsContasEMC_POPPORTA: TIntegerField;
    TBEmailsContasEMC_REPLYTO: TStringField;
    TBEmailsContasEMC_SENHA: TStringField;
    TBEmailsContasEMC_SMTP: TStringField;
    TBEmailsContasEMC_SMTPPORTA: TIntegerField;
    TBEmailsContasEMC_SSL: TStringField;
    TBEmailsContasEMC_STATUS: TStringField;
    TBEmailsContasEMC_TIMEOUT: TIntegerField;
    TBEmailsContasEMC_TLS: TStringField;
    TBEmailsContasEMC_USUARIO: TStringField;
    TBEmpresa: TFDQuery;
    TREmpresa: TFDTransaction;
    UPEmpresa: TFDUpdateSQL;
    TBEmpresaEMP_BAIRRO: TStringField;
    TBEmpresaEMP_CEP: TStringField;
    TBEmpresaEMP_CIDADE: TStringField;
    TBEmpresaEMP_CIDADECODIGO: TIntegerField;
    TBEmpresaEMP_CNAE: TStringField;
    TBEmpresaEMP_CNPJ: TStringField;
    TBEmpresaEMP_CNPJPREFEITURA: TStringField;
    TBEmpresaEMP_CODIGO: TIntegerField;
    TBEmpresaEMP_CONTABILIDADE: TIntegerField;
    TBEmpresaEMP_EMAIL: TStringField;
    TBEmpresaEMP_EMAILSUPORTE: TStringField;
    TBEmpresaEMP_ENDERECO: TStringField;
    TBEmpresaEMP_ENQUADRAMENTO: TStringField;
    TBEmpresaEMP_ENQUADRAMENTOISS: TStringField;
    TBEmpresaEMP_ESTADO: TStringField;
    TBEmpresaEMP_ESTADOCODIGO: TIntegerField;
    TBEmpresaEMP_FONE1: TStringField;
    TBEmpresaEMP_FONE2: TStringField;
    TBEmpresaEMP_HOMEPAGE: TStringField;
    TBEmpresaEMP_HRATUALIZACAO: TTimeField;
    TBEmpresaEMP_IE: TStringField;
    TBEmpresaEMP_IM: TStringField;
    TBEmpresaEMP_LOGO: TStringField;
    TBEmpresaEMP_NOME: TStringField;
    TBEmpresaEMP_NOMEFANTASIA: TStringField;
    TBEmpresaEMP_NUMERO: TStringField;
    TBEmpresaEMP_PAIS: TStringField;
    TBEmpresaEMP_PAISCODIGO: TIntegerField;
    TBEmpresaEMP_SUPERSENHA: TStringField;
    TBEstoque: TFDQuery;
    TREstoque: TFDTransaction;
    UPEstoque: TFDUpdateSQL;
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
    TBEstoqueALM_DESCRICAO: TStringField;
    TBEstoqueCLI_CODIGO: TIntegerField;
    TBEstoqueCLI_NOME: TStringField;
    TBEstoquePRO_CODIGO: TIntegerField;
    TBEstoquePRO_NOME: TStringField;
    TBEstoqueFOR_CODIGO: TIntegerField;
    TBEstoqueFOR_NOME: TStringField;
    TBEstoqueVEN_CODIGO: TIntegerField;
    TBEstoqueVEN_NOME: TStringField;
    TBExamesTipos: TFDQuery;
    TRExamesTipos: TFDTransaction;
    UPExamesTipos: TFDUpdateSQL;
    TBExamesTiposEXT_CODIGO: TIntegerField;
    TBExamesTiposEXT_CODIGO2: TStringField;
    TBExamesTiposEXT_DESCRICAO: TStringField;
    TBExamesTiposEXT_DTATUALIZACAO: TDateField;
    TBExamesTiposEXT_DTCADASTRO: TDateField;
    TBExamesTiposEXT_HRATUALIZACAO: TTimeField;
    TBExamesTiposEXT_HRCADASTRO: TTimeField;
    TBExamesTiposEXT_OBSERVACOES: TMemoField;
    TBExamesTiposEXT_SIGLA: TStringField;
    TBExamesTiposEXT_STATUS: TStringField;
    TBExamesTiposEXT_USUARIO: TStringField;
    TBExamesTiposEXT_VALOR: TFMTBCDField;
    TBFamilias: TFDQuery;
    TRFamilias: TFDTransaction;
    UPFamilias: TFDUpdateSQL;
    TBFamiliasFAM_CODIGO: TIntegerField;
    TBFamiliasFAM_DESCRICAO: TStringField;
    TBFamiliasFAM_DTATUALIZACAO: TDateField;
    TBFamiliasFAM_DTCADASTRO: TDateField;
    TBFamiliasFAM_HRATUALIZACAO: TTimeField;
    TBFamiliasFAM_HRCADASTRO: TTimeField;
    TBFamiliasFAM_INTERNET: TStringField;
    TBFamiliasFAM_USUARIO: TStringField;
    TBFornecedores: TFDQuery;
    TRFornecedores: TFDTransaction;
    UPFornecedores: TFDUpdateSQL;
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
    TBFornecedoresATI_DESCRICAO: TStringField;
    TBGrupos: TFDQuery;
    TRGrupos: TFDTransaction;
    UPGrupos: TFDUpdateSQL;
    TBGruposGRU_CODIGO: TIntegerField;
    TBGruposGRU_DESCRICAO: TStringField;
    TBGruposGRU_DTATUALIZACAO: TDateField;
    TBGruposGRU_DTCADASTRO: TDateField;
    TBGruposGRU_HRATUALIZACAO: TTimeField;
    TBGruposGRU_HRCADASTRO: TTimeField;
    TBGruposGRU_INTERNET: TStringField;
    TBGruposGRU_STATUS: TStringField;
    TBGruposGRU_USUARIO: TStringField;
    TBIcms: TFDQuery;
    TRIcms: TFDTransaction;
    UPIcms: TFDUpdateSQL;
    TBIcmsICM_CALCULACREDITOSN: TStringField;
    TBIcmsICM_CODIGO: TIntegerField;
    TBIcmsICM_DESCRICAO: TStringField;
    TBIcmsICM_DTATUALIZACAO: TDateField;
    TBIcmsICM_DTCADASTRO: TDateField;
    TBIcmsICM_HRATUALIZACAO: TTimeField;
    TBIcmsICM_HRCADASTRO: TTimeField;
    TBIcmsICM_USUARIO: TStringField;
    TBIpi: TFDQuery;
    TRIpi: TFDTransaction;
    UPIpi: TFDUpdateSQL;
    TBIpiIPI_CODIGO: TIntegerField;
    TBIpiIPI_DESCRICAO: TStringField;
    TBIpiIPI_DTATUALIZACAO: TDateField;
    TBIpiIPI_DTCADASTRO: TDateField;
    TBIpiIPI_HRATUALIZACAO: TTimeField;
    TBIpiIPI_HRCADASTRO: TTimeField;
    TBIpiIPI_USUARIO: TStringField;
    TBIss: TFDQuery;
    TRIss: TFDTransaction;
    UPIss: TFDUpdateSQL;
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
    TBLocais: TFDQuery;
    TRLocais: TFDTransaction;
    UPLocais: TFDUpdateSQL;
    TBLocaisLCA_CODIGO: TIntegerField;
    TBLocaisLCA_CONVENIADO: TStringField;
    TBLocaisLCA_DESCRICAO: TStringField;
    TBLocaisLCA_DTATUALIZACAO: TDateField;
    TBLocaisLCA_DTCADASTRO: TDateField;
    TBLocaisLCA_HRATUALIZACAO: TTimeField;
    TBLocaisLCA_HRCADASTRO: TTimeField;
    TBLocaisLCA_USUARIO: TStringField;
    TBMailings: TFDQuery;
    TRMailings: TFDTransaction;
    UPMailings: TFDUpdateSQL;
    TBMailingsMAI_CODIGO: TIntegerField;
    TBMailingsMAI_DESCRICAO: TStringField;
    TBMailingsMAI_DTATUALIZACAO: TDateField;
    TBMailingsMAI_DTCADASTRO: TDateField;
    TBMailingsMAI_HRATUALIZACAO: TTimeField;
    TBMailingsMAI_HRCADASTRO: TTimeField;
    TBMailingsMAI_USUARIO: TStringField;
    TBMarcas: TFDQuery;
    TRMarcas: TFDTransaction;
    UPMarcas: TFDUpdateSQL;
    TBMarcasMAR_CODIGO: TIntegerField;
    TBMarcasMAR_DESCRICAO: TStringField;
    TBMarcasMAR_DTATUALIZACAO: TDateField;
    TBMarcasMAR_DTCADASTRO: TDateField;
    TBMarcasMAR_HRATUALIZACAO: TTimeField;
    TBMarcasMAR_HRCADASTRO: TTimeField;
    TBMarcasMAR_USUARIO: TStringField;
    TBMarkups: TFDQuery;
    TRMarkups: TFDTransaction;
    UPMarkups: TFDUpdateSQL;
    TBMarkupsMKP_CODIGO: TIntegerField;
    TBMarkupsMKP_DESCRICAO: TStringField;
    TBMarkupsMKP_DTATUALIZACAO: TDateField;
    TBMarkupsMKP_DTCADASTRO: TDateField;
    TBMarkupsMKP_HRATUALIZACAO: TTimeField;
    TBMarkupsMKP_HRCADASTRO: TTimeField;
    TBMarkupsMKP_MARKUP: TFMTBCDField;
    TBMarkupsMKP_USUARIO: TStringField;
    TBMarkupsItens: TFDQuery;
    TRMarkupsItens: TFDTransaction;
    UPMarkupsItens: TFDUpdateSQL;
    TBMarkupsItensMKI_CODIGO: TIntegerField;
    TBMarkupsItensMKI_DESCRICAO: TStringField;
    TBMarkupsItensMKI_MARKUP: TIntegerField;
    TBMarkupsItensMKI_PORCENTAGEM: TFMTBCDField;
    TBMetas: TFDQuery;
    TRMetas: TFDTransaction;
    UPMetas: TFDUpdateSQL;
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
    TBMetasConfig: TFDQuery;
    TRMetasConfig: TFDTransaction;
    UPMetasConfig: TFDUpdateSQL;
    TBMetasConfigMTG_CODIGO: TIntegerField;
    TBMetasConfigMTG_FIM: TFMTBCDField;
    TBMetasConfigMTG_INICIO: TFMTBCDField;
    TBMetasConfigMTG_PORCENTAGEM: TFMTBCDField;
    TBMotivos: TFDQuery;
    TRMotivos: TFDTransaction;
    UPMotivos: TFDUpdateSQL;
    TBMotivosMOT_CODIGO: TIntegerField;
    TBMotivosMOT_DESCRICAO: TStringField;
    TBMotivosMOT_DTATUALIZACAO: TDateField;
    TBMotivosMOT_DTCADASTRO: TDateField;
    TBMotivosMOT_HRATUALIZACAO: TTimeField;
    TBMotivosMOT_HRCADASTRO: TTimeField;
    TBMotivosMOT_STATUS: TStringField;
    TBMotivosMOT_USUARIO: TStringField;
    TBNaturezas: TFDQuery;
    TRNaturezas: TFDTransaction;
    UPNaturezas: TFDUpdateSQL;
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
    TBNfe: TFDQuery;
    TRNfe: TFDTransaction;
    UPNfe: TFDUpdateSQL;
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
    TBNfeCLI_FANTASIA: TStringField;
    TBNfeCPG_DESCRICAO: TStringField;
    TBNfeCPG_MEIOPAGAMENTO: TStringField;
    TBNfeCPG_TIPOINTEGRACAO: TStringField;
    TBNfeCPG_TIPOPAGAMENTO: TStringField;
    TBNfeNAT_CALCULACOMISSAO: TStringField;
    TBNfeNAT_CALCULACREDITOSN: TStringField;
    TBNfeVEN_NOME: TStringField;
    TBNfeVEN_NOME1: TStringField;
    TBNfeItens: TFDQuery;
    TRNfeItens: TFDTransaction;
    UPNfeItens: TFDUpdateSQL;
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
    TBNfeItensNFI_CSTCOFINS: TIntegerField;
    TBNfeItensNFI_CSTIBSCBS: TStringField;
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
    TBNfeItensALM_DESCRICAO: TStringField;
    TBNfeItensCLF_DESCRICAO: TStringField;
    TBNfeItensICM_CALCULACREDITOSN: TStringField;
    TBNfeItensICM_DESCRICAO: TStringField;
    TBNfeItensIPI_DESCRICAO: TStringField;
    TBNfeItensISS_DESCRICAO: TStringField;
    TBNfeItensNAT_CALCULACOMISSAO: TStringField;
    TBNfeItensNAT_CALCULACREDITOSN: TStringField;
    TBNfeItensNAT_DESCRICAO: TStringField;
    TBNfeItensNAT_INFORMADIFAL: TStringField;
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
    TBNfeItensCLT_DESCRICAO: TStringField;
    TBNfeItensCLT_DESCRICAO1: TStringField;
    TBPagar: TFDQuery;
    TRPagar: TFDTransaction;
    UPPagar: TFDUpdateSQL;
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
    TBPagarCON_NOME: TStringField;
    TBPagarCON_SALDO: TFMTBCDField;
    TBPagarDES_DESCRICAO: TStringField;
    TBPagarFOR_NOME: TStringField;
    TBParametros: TFDQuery;
    TRParametros: TFDTransaction;
    UPParametros: TFDUpdateSQL;
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
    TBParametrosPAR_LOCALATUALIZACOES: TStringField;
    TBParametrosPAR_LOCALDENTES: TStringField;
    TBParametrosPAR_LOCALESTUDAPADRAO: TIntegerField;
    TBParametrosPAR_LOCALFOTOSIMOVEIS: TStringField;
    TBParametrosPAR_LOCALFOTOSPRODUTOS: TStringField;
    TBParametrosPAR_LOCALIMAGENSCONSULTAS: TStringField;
    TBParametrosPAR_LOCALLOGOMARCA: TStringField;
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
    TRPiscofins: TFDTransaction;
    UPPiscofins: TFDUpdateSQL;
    TBPiscofinsPIS_CODIGO: TIntegerField;
    TBPiscofinsPIS_DESCRICAO: TStringField;
    TBPiscofinsPIS_DTATUALIZACAO: TDateField;
    TBPiscofinsPIS_DTCADASTRO: TDateField;
    TBPiscofinsPIS_HRATUALIZACAO: TTimeField;
    TBPiscofinsPIS_HRCADASTRO: TTimeField;
    TBPiscofinsPIS_USUARIO: TStringField;
    TBProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
    UPProdutos: TFDUpdateSQL;
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
    TBProdutosPIS_DESCRICAO: TStringField;
    TBProdutosPIS_DESCRICAO1: TStringField;
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
    TBProdutosRGF_DESCRICAO: TStringField;
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
    TBProdutosNBS_DESCRICAO: TStringField;
    TBProdutosQtde: TFDQuery;
    TRProdutosQtde: TFDTransaction;
    UPProdutosQtde: TFDUpdateSQL;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
    TBProdutosQtdeALM_DESCRICAO: TStringField;
    TBReceber: TFDQuery;
    TRReceber: TFDTransaction;
    UPReceber: TFDUpdateSQL;
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
    TBReceberCLI_BAIRROCOB: TStringField;
    TBReceberCLI_CEPCOB: TStringField;
    TBReceberCLI_CIDADECOB: TStringField;
    TBReceberCLI_CIDADECODIGOCOB: TIntegerField;
    TBReceberCLI_CODIGO: TIntegerField;
    TBReceberCLI_CNPJCOB: TStringField;
    TBReceberCLI_CPF: TStringField;
    TBReceberCLI_ENDERECOCOB: TStringField;
    TBReceberCLI_ESTADOCOB: TStringField;
    TBReceberCLI_ESTADOCODIGOCOB: TIntegerField;
    TBReceberCLI_NOME: TStringField;
    TBReceberCLI_NUMEROCOB: TStringField;
    TBReceberCLI_TIPOPESSOA: TStringField;
    TBReceberCON_CODIGO: TIntegerField;
    TBReceberCON_NOME: TStringField;
    TBReceberCON_SALDO: TFMTBCDField;
    TBReceberREC_CODIGO: TIntegerField;
    TBReceberREC_DESCRICAO: TStringField;
    TBReceberVEN_CODIGO: TIntegerField;
    TBReceberVEN_NOME: TStringField;
    TBReceitas: TFDQuery;
    TRReceitas: TFDTransaction;
    UPReceitas: TFDUpdateSQL;
    TBReceitasREC_AGRUPADOR: TIntegerField;
    TBReceitasREC_CODIGO: TIntegerField;
    TBReceitasREC_DESCRICAO: TStringField;
    TBReceitasREC_DTATUALIZACAO: TDateField;
    TBReceitasREC_DTCADASTRO: TDateField;
    TBReceitasREC_HRATUALIZACAO: TTimeField;
    TBReceitasREC_HRCADASTRO: TTimeField;
    TBReceitasREC_USUARIO: TStringField;
    TBReceitasAGR_DESCRICAO: TStringField;
    TBRecibos: TFDQuery;
    TRRecibos: TFDTransaction;
    UPRecibos: TFDUpdateSQL;
    TBRecibosRCB_CBAIRRO: TStringField;
    TBRecibosRCB_CCEP: TStringField;
    TBRecibosRCB_CCIDADE: TStringField;
    TBRecibosRCB_CCNPJCPF: TStringField;
    TBRecibosRCB_CENDERECO: TStringField;
    TBRecibosRCB_CFONE1: TStringField;
    TBRecibosRCB_CNOME: TStringField;
    TBRecibosRCB_CNUMERO: TStringField;
    TBRecibosRCB_CODIGO: TIntegerField;
    TBRecibosRCB_DATA: TDateField;
    TBRecibosRCB_DTATUALIZACAO: TDateField;
    TBRecibosRCB_DTCADASTRO: TDateField;
    TBRecibosRCB_HRATUALIZACAO: TTimeField;
    TBRecibosRCB_HRCADASTRO: TTimeField;
    TBRecibosRCB_PROVENIENTE: TStringField;
    TBRecibosRCB_SBAIRRO: TStringField;
    TBRecibosRCB_SCEP: TStringField;
    TBRecibosRCB_SCIDADE: TStringField;
    TBRecibosRCB_SCNPJCPF: TStringField;
    TBRecibosRCB_SENDERECO: TStringField;
    TBRecibosRCB_SFONE1: TStringField;
    TBRecibosRCB_SNOME: TStringField;
    TBRecibosRCB_SNUMERO: TStringField;
    TBRecibosRCB_USUARIO: TStringField;
    TBRecibosRCB_VALOR: TFMTBCDField;
    TBRecibosRCB_VALOREXTENSO: TStringField;
    TBTabPreco: TFDQuery;
    TRTabPreco: TFDTransaction;
    UPTabPreco: TFDUpdateSQL;
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
    TRTaxas: TFDTransaction;
    UPTaxas: TFDUpdateSQL;
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
    TBUnidades: TFDQuery;
    TRUnidades: TFDTransaction;
    UPUnidades: TFDUpdateSQL;
    TBUnidadesUNI_ATUALIZAR: TStringField;
    TBUnidadesUNI_CODIGO: TStringField;
    TBUnidadesUNI_DESCRICAO: TStringField;
    TBUnidadesUNI_DTATUALIZACAO: TDateField;
    TBUnidadesUNI_DTCADASTRO: TDateField;
    TBUnidadesUNI_HRATUALIZACAO: TTimeField;
    TBUnidadesUNI_HRCADASTRO: TTimeField;
    TBUnidadesUNI_USUARIO: TStringField;
    TBUsuarios: TFDQuery;
    TRUsuarios: TFDTransaction;
    UPUsuarios: TFDUpdateSQL;
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
    TBVendas: TFDQuery;
    TRVendas: TFDTransaction;
    UPVendas: TFDUpdateSQL;
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
    TBVendasCLI_FANTASIA: TStringField;
    TBVendasCPG_DESCRICAO: TStringField;
    TBVendasCPG_MEIOPAGAMENTO: TStringField;
    TBVendasCPG_TIPOINTEGRACAO: TStringField;
    TBVendasCPG_TIPOPAGAMENTO: TStringField;
    TBVendasNAT_CALCULACOMISSAO: TStringField;
    TBVendasNAT_CALCULACREDITOSN: TStringField;
    TBVendasVEN_NOME: TStringField;
    TBVendasVEN_NOME1: TStringField;
    TBVendasItens: TFDQuery;
    TRVendasItens: TFDTransaction;
    UPVendasItens: TFDUpdateSQL;
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
    TBVendasItensALM_DESCRICAO: TStringField;
    TBVendasItensCLF_DESCRICAO: TStringField;
    TBVendasItensICM_CALCULACREDITOSN: TStringField;
    TBVendasItensICM_DESCRICAO: TStringField;
    TBVendasItensIPI_DESCRICAO: TStringField;
    TBVendasItensISS_DESCRICAO: TStringField;
    TBVendasItensNAT_CALCULACOMISSAO: TStringField;
    TBVendasItensNAT_CALCULACREDITOSN: TStringField;
    TBVendasItensNAT_DESCRICAO: TStringField;
    TBVendasItensNAT_CODIGO: TIntegerField;
    TBVendasItensPIS_DESCRICAO: TStringField;
    TBVendasItensPIS_DESCRICAO1: TStringField;
    TBVendasItensPRO_CLASSFISCAL: TStringField;
    TBVendasItensPRO_CSTICMS: TIntegerField;
    TBVendasItensPRO_NOME: TStringField;
    TBVendasItensPRO_PRECOVENDA: TFMTBCDField;
    TBVendasItensPRO_TIPO: TStringField;
    TBVendasItensPRO_UNIDADE: TStringField;
    TBVendasItensCLT_DESCRICAO: TStringField;
    TBVendasItensCLT_DESCRICAO1: TStringField;
    TBVendedores: TFDQuery;
    TRVendedores: TFDTransaction;
    UPVendedores: TFDUpdateSQL;
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
    TBVendedoresEMC_NOME: TStringField;
    TBVias: TFDQuery;
    TRVias: TFDTransaction;
    UPVias: TFDUpdateSQL;
    TBViasVIA_CODIGO: TIntegerField;
    TBViasVIA_DESCRICAO: TStringField;
    TBViasVIA_DTATUALIZACAO: TDateField;
    TBViasVIA_DTCADASTRO: TDateField;
    TBViasVIA_HRATUALIZACAO: TTimeField;
    TBViasVIA_HRCADASTRO: TTimeField;
    TBViasVIA_STATUS: TStringField;
    TBViasVIA_USUARIO: TStringField;
    TBVendasItensPRO_CODIGO: TIntegerField;
    TBVendasItensPRO_CODIGOBARRAS: TStringField;
    TBEmpresaEMP_CODIGOCLIENTE: TIntegerField;
    TBCidades: TFDQuery;
    TRCidades: TFDTransaction;
    UPCidades: TFDUpdateSQL;
    TBCidadesCID_CODIGO: TIntegerField;
    TBCidadesCID_DIMOB: TIntegerField;
    TBCidadesCID_ESTADO: TIntegerField;
    TBCidadesCID_NOME: TStringField;
    TBCidadesCID_PAIS: TIntegerField;
    TBPaises: TFDQuery;
    TRPaises: TFDTransaction;
    UPPaises: TFDUpdateSQL;
    TBPaisesPAI_CODIGO: TIntegerField;
    TBPaisesPAI_NOME: TStringField;
    TBPaisesPAI_SIGLA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TBVendasAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensBeforePost(DataSet: TDataSet);
  private
    procedure SimularCondicaoVenda;
    procedure CalcularTotaisVendaItens;
    { Private declarations }
  public
    { Public declarations }
    procedure CalcularTotaisVenda(DarPost: Boolean);
    procedure SetarBancoEmpresa(Empresa: String);
  end;

var
  DMFirenet: TDMFirenet;
  FS: TFormatSettings;
  CodigoMark: Integer;
  CodigoMarkStr: String;
  CalcularTotais: Boolean = True;

const
  ChaveSenhaNEW=12;

implementation
uses DataModAngus, DataSet.Serialize.Config, Main, Funcoes;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

//Ao atualizar os campos da tabela produtos, não esquecer de retirar da instrução UPDATE os campos abaixo.
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

procedure TDMFirenet.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := cndUpper; //campos no JSON em maiúsculas.
  TDataSetSerializeConfig.GetInstance.Import.DecimalSeparator := '.';
  FS:=TFormatSettings.Create;
  FS.DateSeparator  :='-';
  FS.TimeSeparator  :=':';
  FS.ShortDateFormat:='yyyy-mm-dd';
  FS.ShortTimeFormat:='hh:nn:ss';
end;

procedure TDMFirenet.SetarBancoEmpresa(Empresa: String);
var DM: TDMAngus;
begin
  try
    DM:=TDMAngus.Create(nil);

    DM.TBEmpresas.Close;
    DM.TBEmpresas.ParamByName('codigo').AsString:=Empresa;
    DM.TBEmpresas.Open;

    FDConnection1.Params.Clear;
    FDConnection1.Params.Add('User_Name='+DM.TBEmpresasEMP_DBUSER.Value);
    FDConnection1.Params.Add('Password='+SenhaDecode(DM.TBEmpresasEMP_DBPASS.Value, ChaveSenhaNew));
    FDConnection1.Params.Add('Database='+DM.TBEmpresasEMP_BASEDADOS.Value);
    FDConnection1.Params.Add('Server='+'localhost'); //BaseServidor); criar campo.
    FDConnection1.Params.Add('Port=3050');
    FDConnection1.Params.Add('Protocol=TCPIP');
    FDConnection1.Params.Add('DriverID=FB');
    FDConnection1.Connected:=True;
  finally
    FreeAndNil(DM);
  end;
end;

procedure TDMFirenet.CalcularTotaisVenda(DarPost: Boolean);
begin
  TBVendas.Edit;
  if (TBVendasVED_MANUAL.IsNull) or (TBVendasVED_MANUAL.Value='N') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select '+
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
    Query1.ParamByName('venda').AsInteger:=TBVendasVED_CODIGO.Value;
    Query1.Open;

    //atualiza totais na tabela vendas.
    TBVendasVED_BASECOFINS.Value        :=Query1.FieldByName('BASECOFINS').AsExtended;
    TBVendasVED_BASECOFINSST.Value      :=Query1.FieldByName('BASECOFINSST').AsExtended;
    TBVendasVED_BASEICMS.Value          :=Query1.FieldByName('BASEICMS').AsExtended;
    TBVendasVED_BASEICMSST.Value        :=Query1.FieldByName('BASEICMSST').AsExtended;
    TBVendasVED_BASEII.Value            :=Query1.FieldByName('BASEII').AsExtended;
    TBVendasVED_BASEIPI.Value           :=Query1.FieldByName('BASEIPI').AsExtended;
    TBVendasVED_BASEISS.Value           :=Query1.FieldByName('BASEISS').AsExtended;
    TBVendasVED_BASEPIS.Value           :=Query1.FieldByName('BASEPIS').AsExtended;
    TBVendasVED_BASEPISST.Value         :=Query1.FieldByName('BASEPISST').AsExtended;
    TBVendasVED_CUSTOTOTAL.Value        :=Query1.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBVendasVED_DESCVALOR.Value         :=Query1.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBVendasVED_PESOLIQ.Value           :=Query1.FieldByName('PESOTOTAL').AsFloat;
    TBVendasVED_SEQUENCIAITEM.Value     :=Query1.FieldByName('SEQUENCIA').AsInteger;
    TBVendasVED_TOTALADUANA.Value       :=Query1.FieldByName('VALORADUANA').AsExtended;
    TBVendasVED_TOTALBRUTO.Value        :=Query1.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBVendasVED_TOTALCOFINS.Value       :=Query1.FieldByName('VALORCOFINS').AsExtended;
    TBVendasVED_TOTALCOFINSST.Value     :=Query1.FieldByName('VALORCOFINSST').AsExtended;
    TBVendasVED_TOTALCOMISSAO.Value     :=Query1.FieldByName('VALORCOMISSAO').AsExtended;
    TBVendasVED_TOTALFCP.Value          :=Query1.FieldByName('VALORFCP').AsExtended;
    TBVendasVED_TOTALFCPST.Value        :=Query1.FieldByName('VALORFCPST').AsExtended;
    TBVendasVED_TOTALICMS.Value         :=Query1.FieldByName('VALORICMS').AsExtended;
    TBVendasVED_TOTALICMSCREDSN.Value   :=Query1.FieldByName('VALORICMSCREDSN').AsExtended;
    TBVendasVED_TOTALICMSST.Value       :=Query1.FieldByName('VALORICMSST').AsExtended;
    TBVendasVED_TOTALICMSUFDEST.Value   :=Query1.FieldByName('VALORICMSUFDEST').AsExtended;
    TBVendasVED_TOTALICMSUFREMET.Value  :=Query1.FieldByName('VALORICMSUFREMET').AsExtended;
    TBVendasVED_TOTALII.Value           :=Query1.FieldByName('VALORII').AsExtended;
    TBVendasVED_TOTALIOF.Value          :=Query1.FieldByName('VALORIOF').AsExtended;
    TBVendasVED_TOTALIPI.Value          :=Query1.FieldByName('VALORIPI').AsExtended;
    TBVendasVED_TOTALISS.Value          :=Query1.FieldByName('VALORISS').AsExtended;
    TBVendasVED_TOTALISSDEDUCAO.Value   :=Query1.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBVendasVED_TOTALISSDESCCOND.Value  :=Query1.FieldByName('VALORISSDESCCOND').AsExtended;
    TBVendasVED_TOTALISSDESCINCOND.Value:=Query1.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBVendasVED_TOTALISSOUTROS.Value    :=Query1.FieldByName('VALORISSOUTROS').AsExtended;
    TBVendasVED_TOTALISSRETENCAO.Value  :=Query1.FieldByName('VALORISSRETENCAO').AsExtended;
    TBVendasVED_TOTALITENS.Value        :=Query1.FieldByName('TOTALPRODUTOS').AsExtended+Query1.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALPIS.Value          :=Query1.FieldByName('VALORPIS').AsExtended;
    TBVendasVED_TOTALPISST.Value        :=Query1.FieldByName('VALORPISST').AsExtended;
    TBVendasVED_TOTALPRODUTOS.Value     :=Query1.FieldByName('TOTALPRODUTOS').AsExtended;
    TBVendasVED_TOTALSERVICOS.Value     :=Query1.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALTRIBUTOS.Value     :=Decimais(Query1.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSEST.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSFED.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSIMP.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSMUN.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBVendasVED_VALORDESPACES.Value     :=Query1.FieldByName('VALORACESSORIAS').AsExtended;
    TBVendasVED_VALORFRETE.Value        :=Query1.FieldByName('VALORFRETE').AsExtended;
    TBVendasVED_VALORSEGURO.Value       :=Query1.FieldByName('VALORSEGURO').AsExtended;

    //reforma tributária.
    TBVendasVED_BASEIBSCBS.Value            :=Query1.FieldByName('BASEIBSCBS').AsExtended;
    TBVendasVED_BASEIS.Value                :=Query1.FieldByName('BASEIS').AsExtended;

    TBVendasVED_CBSCREDPRES.Value           :=Query1.FieldByName('VALORCBSCREDPRES').AsExtended;
    TBVendasVED_CBSCREDPRESSUS.AsExtended   :=Query1.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
    TBVendasVED_CBSDEVOLUCAO.AsExtended     :=Query1.FieldByName('VALORCBSDEV').AsExtended;
    TBVendasVED_CBSDIFERIMENTO.AsExtended   :=Query1.FieldByName('VALORCBSDIF').AsExtended;
    TBVendasVED_CBSMONO.AsExtended          :=0; //Query1.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_CBSMONORETENCAO.AsExtended  :=0; //Query1.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_CBSMONORETIDO.AsExtended    :=0; //Query1.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_CBSVALOR.AsExtended         :=Query1.FieldByName('VALORCBS').AsExtended;

    TBVendasVED_IBSUFDIFERIMENTO.Value      :=Query1.FieldByName('VALORIBSUFDIF').AsExtended;
    TBVendasVED_IBSUFDEVOLUCAO.AsExtended   :=Query1.FieldByName('VALORIBSUFDEV').AsExtended;
    TBVendasVED_IBSUFVALOR.AsExtended       :=Query1.FieldByName('VALORIBSUF').AsExtended;
    TBVendasVED_IBSMUNDIFERIMENTO.AsExtended:=Query1.FieldByName('VALORIBSMUNDIF').AsExtended;
    TBVendasVED_IBSMUNDEVOLUCAO.AsExtended  :=Query1.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_IBSMUNVALOR.AsExtended      :=Query1.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_IBSVALOR.AsExtended         :=Query1.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_IBSCREDPRES.AsExtended      :=Query1.FieldByName('VALORIBSCREDPRES').AsExtended;
    TBVendasVED_IBSCREDPRESSUS.AsExtended   :=Query1.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

    TBVendasVED_TOTALIS.Value               :=Query1.FieldByName('VALORIS').AsExtended;

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
                                  Query1.FieldByName('VALORICMSDESONERADO').AsExtended+
                                  TBVendasVED_TOTALICMSST.Value+
                                  TBVendasVED_TOTALFCPST.Value+
                                  TBVendasVED_VALORFRETE.Value+
                                  TBVendasVED_VALORSEGURO.Value+
                                  TBVendasVED_VALORDESPACES.Value+
                                  TBVendasVED_TOTALII.Value+
                                  TBVendasVED_TOTALIPI.Value+
                                  //nao tenho esse campo. TBNfeNFE_TOTALIPIDEV.Value+
                                  Query1.FieldByName('SOMAPISST').AsExtended+
                                  Query1.FieldByName('SOMACOFINSST').AsExtended;

    //calcula nova porcentagem de desconto.
    if TBVendasVED_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBVendasVED_DESCPORC.Value:=Decimais((100.0/(Query1.FieldByName('VALORTOTALBRUTO').AsExtended+
                                                 Query1.FieldByName('VALORFRETE').AsExtended+
                                                 Query1.FieldByName('VALORSEGURO').AsExtended+
                                                 Query1.FieldByName('VALORACESSORIAS').AsExtended))*TBVendasVED_DESCVALOR.AsExtended,8) else
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

  Query1.Close;
  if DarPost then
  begin
    TBVendas.Post;
    TBVendasItens.Close;
    TBVendasItens.Open;
  end;
end;

procedure TDMFirenet.SimularCondicaoVenda;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
//  if TBVendasVED_STATUS.Value='F' then
//  begin
//    MessageDlg('Este pedido de venda está finalizado.',mtError,[mbOk],0);
//    Exit;
//  end;
//  if TBVendasVED_STATUS.Value='C' then
//  begin
//    MessageDlg('Este pedido de venda está cancelado.',mtError,[mbOk],0);
//    Exit;
//  end;
//  if TBVendasVED_STATUS.Value='I' then
//  begin
//    MessageDlg('Este pedido de venda está inutilizado.',mtError,[mbOk],0);
//    Exit;
//  end;
  TBVendas.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBVendasVED_CONDICAO.Value;
  TBCondicoes.Open;
  TBCondicoesItens.Open;

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

      TextoCondicao:=TextoCondicao+AT(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AT(Format('%m',[ValorParcela]),' ',15,taRight)+AT(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBVendasVED_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDMFirenet.CalcularTotaisVendaItens;
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
    TBVendasItensVEI_VALORICMSCREDSN.Value:=0;
    if (TBVendasItensICM_CALCULACREDITOSN.Value='S') and (TBVendasItensNAT_CALCULACREDITOSN.Value='S') then
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

procedure TDMFirenet.TBVendasAfterInsert(DataSet: TDataSet);
begin
  TBParametros.Close;
  TBParametros.ParamByName('codigo').AsInteger:=1;
  TBParametros.Open;
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
  TBVendasVED_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBVendasVED_CFOPDESC.Value:=TBNaturezasNAT_DESCRICAO.Value;
  TBVendasVED_COMISSAOPOR.Value:=TBParametrosPAR_COMISSAOPOR.Value;
  TBVendasVED_CONFERIDO.Value:='N';
  TBVendasVED_CUSTOTOTAL.Value:=0;
  TBVendasVED_DESCPORCCLIENTE.Value:=0;
  TBVendasVED_DESCPORCCONDICAO.Value:=TBCondicoesCPG_DESCPORC.Value;
  TBVendasVED_DESTACARIMPOSTOS.Value:=TBNaturezasNAT_DESTACARIMPOSTOS.Value;
  TBVendasVED_DIAPREFERENCIAL.Value:=0;
  TBVendasVED_DTCADASTRO.Value:=Date;
  TBVendasVED_DTEMISSAO.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_DTPRESTSERVICO.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_DTSAIDA.Value:=TBVendasVED_DTCADASTRO.Value;
  TBVendasVED_ENTRADASAIDA.Value:=TBNaturezasNAT_ENTRADASAIDA.Value;
  TBVendasVED_ENTREGUE.Value:='N';
  TBVendasVED_ESPECIE.Value:=TBParametrosPAR_ESPECIEPADRAO.Value;
  TBVendasVED_FORMAPAGTO.Value:=TBCondicoesCPG_FORMAPAGTO.Value;
  TBVendasVED_FRETE.Value:=TBParametrosPAR_FRETEPORCONTA.Value;
  TBVendasVED_HRCADASTRO.Value:=Time;
  TBVendasVED_INFOADICFISCO.Value:=TBNaturezasNAT_OBSERVACOES.Value;
  TBVendasVED_LUCROPORC.Value:=0;
  TBVendasVED_LUCROVALOR.Value:=0;
  TBVendasVED_MANUAL.Value:='N';
  TBVendasVED_MARCA.Value:=TBParametrosPAR_MARCAPADRAO.Value;
  TBVendasVED_MOVIMENTAESTOQUE.Value:=TBNaturezasNAT_MOVIMENTAESTOQUE.Value;
  TBVendasVED_MOVIMENTAFINANCEIRO.Value:=TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value;
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
end;

procedure TDMFirenet.TBVendasItensAfterInsert(DataSet: TDataSet);
begin
  TBAliquotas.Open;
  TBAliquotas.Locate('ALI_ESTADO',TBVendasVED_ESTADO.Value,[]);
  TBVendasItensVEI_ALIQFCP.Value:=TBAliquotasALI_ALIQFCP.Value;
  TBVendasItensVEI_ALIQICMSINTER.Value:=TBAliquotasALI_ALIQICMSINTER.Value;
  TBVendasItensVEI_ALIQICMSINTERPART.Value:=TBAliquotasALI_ALIQICMSINTERPART.Value;
  TBAliquotas.Close;

  TBVendasItensVEI_ALIQICMSSTRET.Value:=0;
  TBVendasItensVEI_ALIQII.Value:=0;
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
  TBVendasItensVEI_COMPOETOTAL.Value:='S';
  TBVendasItensVEI_CONVERSAO.Value:=1;
  TBVendasItensVEI_DESCPORC.Value:=0; //ao selecionar o produto, preenche este campo conforme parametro.
  //1
  //2
  //3
  TBVendasItensVEI_DESCVALOR.Value:=0;
  TBVendasItensVEI_DESONERACAO.Value:='00 - NENHUM';
  TBVendasItensVEI_LUCROPORC.Value:=0;
  TBVendasItensVEI_LUCROVALOR.Value:=0;
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
  TBVendasItensVEI_VALORPIS.Value:=0;
  TBVendasItensVEI_VALORPISST.Value:=0;
  TBVendasItensVEI_VALORISS.Value:=0;
  TBVendasItensVEI_VALORISSDEDUCAO.Value:=0;
  TBVendasItensVEI_VALORISSDESCCOND.Value:=0;
  TBVendasItensVEI_VALORISSDESCINCOND.Value:=0;
  TBVendasItensVEI_VALORISSOUTROS.Value:=0;
  TBVendasItensVEI_VALORISSRETENCAO.Value:=0;
  TBVendasItensVEI_VALORSEGURO.Value:=0;
  TBVendasItensVEI_VALORTOTAL.Value:=0;
  TBVendasItensVEI_VALORTOTALBRUTO.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOS.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSEST.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSFED.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=0;
  TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=0;
  TBVendasItensVEI_VENDA.Value:=TBVendasVED_CODIGO.Value;
end;

procedure TDMFirenet.TBVendasItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisVendaItens;
end;

end.
