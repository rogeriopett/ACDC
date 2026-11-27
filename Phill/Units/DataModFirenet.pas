//Atualizacoes:
//2026.11.23 - Representante e comissao do representante (VED_/NFE_REPRESENTANTE, *_COMISSAOREP, *_TOTALCOMISSAOREP, *_VALORCOMISSAOREP) nas vendas e NF-e; CalcularTotaisVenda/VendaItens como no DataMod do Firenet (comissao do representante e credito SN pelo TBIcms).
//2026.11.23 - CalcularTotaisNFe, CalcularTotaisNFeItens (TBNfeItensBeforePost) e SimularCondicaoNfe trazidas do DataMod do Firenet; NFE_BASEIRRF/NFE_TOTALIRRF e CPG_SOMENTEDIASUTEIS no TBNfe/TBCondicoes e vencimento em dia util no SimularCondicaoVenda, como no Firenet.
//2026.11.23 - TBNfeAfterInsert e TBNfeItensAfterInsert trazidos do DataMod do Firenet; AbrirEmpresaParametros (EMPRESA e PARAMETROS codigo 1, como no Firenet) chamado nos calculos e nos AfterInsert.
//2026.11.23 - TBVendasAfterInsert e TBVendasItensAfterInsert atualizados pelo DataMod do Firenet (padroes e zeros da reforma tributaria, DAV, ente governamental, nota de debito/credito, campos NAT_ do join etc.).
//2026.11.23 - TBNfe traz o nome do representante (VEN_NOME2), como o TBVendas.
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
    DSConsultas: TDataSource;
    DSMarkups: TDataSource;
    DSNfe: TDataSource;
    DSProdutos: TDataSource;
    DSVendas: TDataSource;
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDUpdateSQL1: TFDUpdateSQL;
    Query1: TFDQuery;
    Query2: TFDQuery;
    Query3: TFDQuery;
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
    TBBancos: TFDQuery;
    TBBancosBAN_CODIGO: TIntegerField;
    TBBancosBAN_DTATUALIZACAO: TDateField;
    TBBancosBAN_DTCADASTRO: TDateField;
    TBBancosBAN_HRATUALIZACAO: TTimeField;
    TBBancosBAN_HRCADASTRO: TTimeField;
    TBBancosBAN_NOME: TStringField;
    TBBancosBAN_STATUS: TStringField;
    TBBancosBAN_USUARIO: TStringField;
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
    TBCaixaVEN_NOME: TStringField;
    TBCidades: TFDQuery;
    TBCidadesCID_CODIGO: TIntegerField;
    TBCidadesCID_DIMOB: TIntegerField;
    TBCidadesCID_ESTADO: TIntegerField;
    TBCidadesCID_NOME: TStringField;
    TBCidadesCID_PAIS: TIntegerField;
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
    TBConsultas: TFDQuery;
    TBConsultasCLI_NOME: TStringField;
    TBConsultasCLI_SOLICITANTE: TStringField;
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
    TBConsultasCOV_DESCRICAO: TStringField;
    TBConsultasItens: TFDQuery;
    TBConsultasItensCSI_CODIGO: TIntegerField;
    TBConsultasItensCSI_CONSULTA: TIntegerField;
    TBConsultasItensCSI_DESCRICAO: TStringField;
    TBConsultasItensCSI_EXAME: TIntegerField;
    TBConsultasItensCSI_SIGLA: TStringField;
    TBConsultasItensCSI_VALOR: TFMTBCDField;
    TBConsultasVEN_NOME: TStringField;
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
    TBEmailsContas: TFDQuery;
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
    TBEmpresaEMP_BAIRRO: TStringField;
    TBEmpresaEMP_CEP: TStringField;
    TBEmpresaEMP_CIDADE: TStringField;
    TBEmpresaEMP_CIDADECODIGO: TIntegerField;
    TBEmpresaEMP_CNAE: TStringField;
    TBEmpresaEMP_CNPJ: TStringField;
    TBEmpresaEMP_CNPJPREFEITURA: TStringField;
    TBEmpresaEMP_CODIGO: TIntegerField;
    TBEmpresaEMP_CODIGOCLIENTE: TIntegerField;
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
    TBEstoqueALM_DESCRICAO: TStringField;
    TBEstoqueCLI_CODIGO: TIntegerField;
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
    TBEstoqueFOR_CODIGO: TIntegerField;
    TBEstoqueFOR_NOME: TStringField;
    TBEstoquePRO_CODIGO: TIntegerField;
    TBEstoquePRO_NOME: TStringField;
    TBEstoqueVEN_CODIGO: TIntegerField;
    TBEstoqueVEN_NOME: TStringField;
    TBExamesTipos: TFDQuery;
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
    TBFamiliasFAM_CODIGO: TIntegerField;
    TBFamiliasFAM_DESCRICAO: TStringField;
    TBFamiliasFAM_DTATUALIZACAO: TDateField;
    TBFamiliasFAM_DTCADASTRO: TDateField;
    TBFamiliasFAM_HRATUALIZACAO: TTimeField;
    TBFamiliasFAM_HRCADASTRO: TTimeField;
    TBFamiliasFAM_INTERNET: TStringField;
    TBFamiliasFAM_USUARIO: TStringField;
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
    TBLocais: TFDQuery;
    TBLocaisLCA_CODIGO: TIntegerField;
    TBLocaisLCA_CONVENIADO: TStringField;
    TBLocaisLCA_DESCRICAO: TStringField;
    TBLocaisLCA_DTATUALIZACAO: TDateField;
    TBLocaisLCA_DTCADASTRO: TDateField;
    TBLocaisLCA_HRATUALIZACAO: TTimeField;
    TBLocaisLCA_HRCADASTRO: TTimeField;
    TBLocaisLCA_USUARIO: TStringField;
    TBMailings: TFDQuery;
    TBMailingsMAI_CODIGO: TIntegerField;
    TBMailingsMAI_DESCRICAO: TStringField;
    TBMailingsMAI_DTATUALIZACAO: TDateField;
    TBMailingsMAI_DTCADASTRO: TDateField;
    TBMailingsMAI_HRATUALIZACAO: TTimeField;
    TBMailingsMAI_HRCADASTRO: TTimeField;
    TBMailingsMAI_USUARIO: TStringField;
    TBMarcas: TFDQuery;
    TBMarcasMAR_CODIGO: TIntegerField;
    TBMarcasMAR_DESCRICAO: TStringField;
    TBMarcasMAR_DTATUALIZACAO: TDateField;
    TBMarcasMAR_DTCADASTRO: TDateField;
    TBMarcasMAR_HRATUALIZACAO: TTimeField;
    TBMarcasMAR_HRCADASTRO: TTimeField;
    TBMarcasMAR_USUARIO: TStringField;
    TBMarkups: TFDQuery;
    TBMarkupsItens: TFDQuery;
    TBMarkupsItensMKI_CODIGO: TIntegerField;
    TBMarkupsItensMKI_DESCRICAO: TStringField;
    TBMarkupsItensMKI_MARKUP: TIntegerField;
    TBMarkupsItensMKI_PORCENTAGEM: TFMTBCDField;
    TBMarkupsMKP_CODIGO: TIntegerField;
    TBMarkupsMKP_DESCRICAO: TStringField;
    TBMarkupsMKP_DTATUALIZACAO: TDateField;
    TBMarkupsMKP_DTCADASTRO: TDateField;
    TBMarkupsMKP_HRATUALIZACAO: TTimeField;
    TBMarkupsMKP_HRCADASTRO: TTimeField;
    TBMarkupsMKP_MARKUP: TFMTBCDField;
    TBMarkupsMKP_USUARIO: TStringField;
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
    TBMotivos: TFDQuery;
    TBMotivosMOT_CODIGO: TIntegerField;
    TBMotivosMOT_DESCRICAO: TStringField;
    TBMotivosMOT_DTATUALIZACAO: TDateField;
    TBMotivosMOT_DTCADASTRO: TDateField;
    TBMotivosMOT_HRATUALIZACAO: TTimeField;
    TBMotivosMOT_HRCADASTRO: TTimeField;
    TBMotivosMOT_STATUS: TStringField;
    TBMotivosMOT_USUARIO: TStringField;
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
    TBNfe: TFDQuery;
    TBNfeCLI_FANTASIA: TStringField;
    TBNfeCPG_DESCRICAO: TStringField;
    TBNfeCPG_MEIOPAGAMENTO: TStringField;
    TBNfeCPG_TIPOINTEGRACAO: TStringField;
    TBNfeCPG_TIPOPAGAMENTO: TStringField;
    TBNfeItens: TFDQuery;
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
    TBNfeItensNFI_COMISSAOREP: TFMTBCDField;
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
    TBNfeItensNFI_VALORCOMISSAOREP: TFMTBCDField;
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
    TBNfeNFE_BASEIRRF: TFMTBCDField;
    TBNfeNFE_COMISSAOREP: TFMTBCDField;
    TBNfeNFE_TOTALIRRF: TFMTBCDField;
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
    TBNfeNFE_REPRESENTANTE: TIntegerField;
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
    TBNfeNFE_TOTALCOMISSAOREP: TFMTBCDField;
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
    TBNfeVEN_NOME: TStringField;
    TBNfeVEN_NOME1: TStringField;
    TBNfeVEN_NOME2: TStringField;
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
    TBPiscofinsPIS_CODIGO: TIntegerField;
    TBPiscofinsPIS_DESCRICAO: TStringField;
    TBPiscofinsPIS_DTATUALIZACAO: TDateField;
    TBPiscofinsPIS_DTCADASTRO: TDateField;
    TBPiscofinsPIS_HRATUALIZACAO: TTimeField;
    TBPiscofinsPIS_HRCADASTRO: TTimeField;
    TBPiscofinsPIS_USUARIO: TStringField;
    TBProdutos: TFDQuery;
    TBProdutosCLF_DESCRICAO: TStringField;
    TBProdutosCLT_ALIQCBSRED_IC: TFMTBCDField;
    TBProdutosCLT_ALIQCBSRED_IS: TFMTBCDField;
    TBProdutosCLT_ALIQIBSRED_IC: TFMTBCDField;
    TBProdutosCLT_ALIQIBSRED_IS: TFMTBCDField;
    TBProdutosCLT_CREDITOPRESUMIDO_IC: TStringField;
    TBProdutosCLT_CREDITOPRESUMIDO_IS: TStringField;
    TBProdutosCLT_DESCRICAO_IC: TStringField;
    TBProdutosCLT_DESCRICAO_IS: TStringField;
    TBProdutosCLT_MONODIFERIMENTO_IC: TStringField;
    TBProdutosCLT_MONODIFERIMENTO_IS: TStringField;
    TBProdutosCLT_MONOFASICO_IC: TStringField;
    TBProdutosCLT_MONOFASICO_IS: TStringField;
    TBProdutosCLT_MONORETENCAO_IC: TStringField;
    TBProdutosCLT_MONORETENCAO_IS: TStringField;
    TBProdutosCLT_MONORETIDO_IC: TStringField;
    TBProdutosCLT_MONORETIDO_IS: TStringField;
    TBProdutosCLT_REDBASE_IC: TStringField;
    TBProdutosCLT_REDBASE_IS: TStringField;
    TBProdutosCLT_TRIBUTACAOREGULAR_IC: TStringField;
    TBProdutosCLT_TRIBUTACAOREGULAR_IS: TStringField;
    TBProdutosCPR_APROPRIADFE: TStringField;
    TBProdutosCPR_APROPRIAEVENTO: TStringField;
    TBProdutosCPR_CBS: TStringField;
    TBProdutosCPR_DEDUZTOTAL: TStringField;
    TBProdutosCPR_DESCRICAO: TStringField;
    TBProdutosCPR_IBS: TStringField;
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
    TBProdutosPRO_GENERO: TIntegerField;
    TBProdutosPRO_GRUPO: TIntegerField;
    TBProdutosPRO_HRATUALIZACAO: TTimeField;
    TBProdutosPRO_HRCADASTRO: TTimeField;
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
    TBProdutosQtde: TFDQuery;
    TBProdutosQtdeALM_DESCRICAO: TStringField;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
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
    TBProdutosUNI_DESCRICAO: TStringField;
    TBReceber: TFDQuery;
    TBReceberCLI_BAIRROCOB: TStringField;
    TBReceberCLI_CEPCOB: TStringField;
    TBReceberCLI_CIDADECOB: TStringField;
    TBReceberCLI_CIDADECODIGOCOB: TIntegerField;
    TBReceberCLI_CNPJCOB: TStringField;
    TBReceberCLI_CODIGO: TIntegerField;
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
    TBReceberVEN_CODIGO: TIntegerField;
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
    TBRecibos: TFDQuery;
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
    TBUnidades: TFDQuery;
    TBUnidadesUNI_ATUALIZAR: TStringField;
    TBUnidadesUNI_CODIGO: TStringField;
    TBUnidadesUNI_DESCRICAO: TStringField;
    TBUnidadesUNI_DTATUALIZACAO: TDateField;
    TBUnidadesUNI_DTCADASTRO: TDateField;
    TBUnidadesUNI_HRATUALIZACAO: TTimeField;
    TBUnidadesUNI_HRCADASTRO: TTimeField;
    TBUnidadesUNI_USUARIO: TStringField;
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
    TBVendas: TFDQuery;
    TBVendasCLI_FANTASIA: TStringField;
    TBVendasCPG_DESCRICAO: TStringField;
    TBVendasCPG_MEIOPAGAMENTO: TStringField;
    TBVendasCPG_TIPOINTEGRACAO: TStringField;
    TBVendasCPG_TIPOPAGAMENTO: TStringField;
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
    TBVendasItensVEI_COMISSAOREP: TFMTBCDField;
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
    TBVendasItensVEI_VALORCOMISSAOREP: TFMTBCDField;
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
    TBVendasVED_COMISSAOREP: TFMTBCDField;
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
    TBVendasVED_REPRESENTANTE: TIntegerField;
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
    TBVendasVED_TOTALCOMISSAOREP: TFMTBCDField;
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
    TBVendasVEN_NOME2: TStringField;
    TBVendedores: TFDQuery;
    TBVendedoresEMC_NOME: TStringField;
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
    TBVias: TFDQuery;
    TBViasVIA_CODIGO: TIntegerField;
    TBViasVIA_DESCRICAO: TStringField;
    TBViasVIA_DTATUALIZACAO: TDateField;
    TBViasVIA_DTCADASTRO: TDateField;
    TBViasVIA_HRATUALIZACAO: TTimeField;
    TBViasVIA_HRCADASTRO: TTimeField;
    TBViasVIA_STATUS: TStringField;
    TBViasVIA_USUARIO: TStringField;
    TRAgrupadores: TFDTransaction;
    TRAliquotas: TFDTransaction;
    TRAlmoxarifados: TFDTransaction;
    TRAtividades: TFDTransaction;
    TRBancos: TFDTransaction;
    TRBeneficios: TFDTransaction;
    TRCaixa: TFDTransaction;
    TRCidades: TFDTransaction;
    TRClassFiscal: TFDTransaction;
    TRClientes: TFDTransaction;
    TRCondicoes: TFDTransaction;
    TRCondicoesItens: TFDTransaction;
    TRConsultas: TFDTransaction;
    TRConsultasItens: TFDTransaction;
    TRContas: TFDTransaction;
    TRContatos: TFDTransaction;
    TRConvenios: TFDTransaction;
    TRDespesas: TFDTransaction;
    TREmailsContas: TFDTransaction;
    TREmpresa: TFDTransaction;
    TREstoque: TFDTransaction;
    TRExamesTipos: TFDTransaction;
    TRFamilias: TFDTransaction;
    TRFornecedores: TFDTransaction;
    TRGrupos: TFDTransaction;
    TRIcms: TFDTransaction;
    TRIpi: TFDTransaction;
    TRIss: TFDTransaction;
    TRLocais: TFDTransaction;
    TRMailings: TFDTransaction;
    TRMarcas: TFDTransaction;
    TRMarkups: TFDTransaction;
    TRMarkupsItens: TFDTransaction;
    TRMetas: TFDTransaction;
    TRMetasConfig: TFDTransaction;
    TRMotivos: TFDTransaction;
    TRNaturezas: TFDTransaction;
    TRNfe: TFDTransaction;
    TRNfeItens: TFDTransaction;
    TRPagar: TFDTransaction;
    TRPaises: TFDTransaction;
    TRParametros: TFDTransaction;
    TRPiscofins: TFDTransaction;
    TRProdutos: TFDTransaction;
    TRProdutosQtde: TFDTransaction;
    TRQuery1: TFDTransaction;
    TRQuery2: TFDTransaction;
    TRQuery3: TFDTransaction;
    TRReceber: TFDTransaction;
    TRReceitas: TFDTransaction;
    TRRecibos: TFDTransaction;
    TRTabPreco: TFDTransaction;
    TRTaxas: TFDTransaction;
    TRUnidades: TFDTransaction;
    TRUsuarios: TFDTransaction;
    TRVendas: TFDTransaction;
    TRVendasItens: TFDTransaction;
    TRVendedores: TFDTransaction;
    TRVias: TFDTransaction;
    UPAgrupadores: TFDUpdateSQL;
    UPAliquotas: TFDUpdateSQL;
    UPAlmoxarifados: TFDUpdateSQL;
    UPAtividades: TFDUpdateSQL;
    UPBancos: TFDUpdateSQL;
    UPBeneficios: TFDUpdateSQL;
    UPCaixa: TFDUpdateSQL;
    UPCidades: TFDUpdateSQL;
    UPClassFiscal: TFDUpdateSQL;
    UPClientes: TFDUpdateSQL;
    UPCondicoes: TFDUpdateSQL;
    UPCondicoesItens: TFDUpdateSQL;
    UPConsultas: TFDUpdateSQL;
    UPConsultasItens: TFDUpdateSQL;
    UPContas: TFDUpdateSQL;
    UPContatos: TFDUpdateSQL;
    UPConvenios: TFDUpdateSQL;
    UPDespesas: TFDUpdateSQL;
    UPEmailsContas: TFDUpdateSQL;
    UPEmpresa: TFDUpdateSQL;
    UPEstoque: TFDUpdateSQL;
    UPExamesTipos: TFDUpdateSQL;
    UPFamilias: TFDUpdateSQL;
    UPFornecedores: TFDUpdateSQL;
    UPGrupos: TFDUpdateSQL;
    UPIcms: TFDUpdateSQL;
    UPIpi: TFDUpdateSQL;
    UPIss: TFDUpdateSQL;
    UPLocais: TFDUpdateSQL;
    UPMailings: TFDUpdateSQL;
    UPMarcas: TFDUpdateSQL;
    UPMarkups: TFDUpdateSQL;
    UPMarkupsItens: TFDUpdateSQL;
    UPMetas: TFDUpdateSQL;
    UPMetasConfig: TFDUpdateSQL;
    UPMotivos: TFDUpdateSQL;
    UPNaturezas: TFDUpdateSQL;
    UPNfe: TFDUpdateSQL;
    UPNfeItens: TFDUpdateSQL;
    UPPagar: TFDUpdateSQL;
    UPPaises: TFDUpdateSQL;
    UPParametros: TFDUpdateSQL;
    UPPiscofins: TFDUpdateSQL;
    UPProdutos: TFDUpdateSQL;
    UPProdutosQtde: TFDUpdateSQL;
    UPReceber: TFDUpdateSQL;
    UPReceitas: TFDUpdateSQL;
    UPRecibos: TFDUpdateSQL;
    UPTabPreco: TFDUpdateSQL;
    UPTaxas: TFDUpdateSQL;
    UPUnidades: TFDUpdateSQL;
    UPUsuarios: TFDUpdateSQL;
    UPVendas: TFDUpdateSQL;
    UPVendasItens: TFDUpdateSQL;
    UPVendedores: TFDUpdateSQL;
    UPVias: TFDUpdateSQL;
    procedure DataModuleCreate(Sender: TObject);
    procedure TBVendasAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensBeforePost(DataSet: TDataSet);
    procedure TBNfeItensBeforePost(DataSet: TDataSet);
    procedure TBNfeAfterInsert(DataSet: TDataSet);
    procedure TBNfeItensAfterInsert(DataSet: TDataSet);
  private
    procedure SimularCondicaoVenda;
    procedure CalcularTotaisVendaItens;
    procedure SimularCondicaoNfe;
    procedure CalcularTotaisNFeItens;
    { Private declarations }
  public
    { Public declarations }
    procedure CalcularTotaisVenda(DarPost: Boolean);
    procedure CalcularTotaisNFe(DarPost: Boolean);
    procedure AbrirEmpresaParametros;
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
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
  TBVendas.Edit;
  if (TBVendasVED_MANUAL.IsNull) or (TBVendasVED_MANUAL.Value='N') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add(
      'select '+
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
//    '-- sum(VEI_VALORCBSMONO) as VALORCBSMONO, '+
//    '-- sum(VEI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
//    '-- sum(VEI_CBSMONORETIDO) as CBSMONORETIDO, '+
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
//    '-- sum(VEI_IBSMONO) as IBSMONO, '+
//    '-- sum(VEI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
//    '-- sum(VEI_IBSMONORETIDO) as IBSMONORETIDO, '+
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
    TBVendasVED_TOTALCOMISSAOREP.Value  :=Query1.FieldByName('VALORCOMISSAOREP').AsExtended;
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
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
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
  TBVendasVED_DTCADASTRO.Value:=Date;
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
  TBVendasVED_HRCADASTRO.Value:=Time;
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
  //no Phill a simulacao fica para o CalcularTotaisVenda, quando a venda ja tem cliente, condicao e itens.
  //if TBVendasVED_STATUS.Value='A' then
  //SimularCondicaoVenda;
end;

procedure TDMFirenet.TBVendasItensAfterInsert(DataSet: TDataSet);
begin
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
  //no Phill o TBAliquotas nao fica aberto: localiza a UF da venda para o FCP e o ICMS interestadual.
  TBAliquotas.Open;
  TBAliquotas.Locate('ALI_ESTADO',TBVendasVED_ESTADO.Value,[]);
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

  TBAliquotas.Close;
end;

procedure TDMFirenet.TBVendasItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisVendaItens;
end;

procedure TDMFirenet.CalcularTotaisNFe(DarPost: Boolean);
begin
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
  TBNfe.Edit;
  if (TBNfeNFE_MANUAL.IsNull) or (TBNfeNFE_MANUAL.Value='N') then
  begin
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('select '+
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
    Query1.ParamByName('nota').AsInteger:=TBNfeNFE_CODIGO.Value;
    Query1.Open;

    //atualiza totais na tabela NFE.
    TBNfeNFE_BASECOFINS.Value        :=Query1.FieldByName('BASECOFINS').AsExtended;
    TBNfeNFE_BASECOFINSST.Value      :=Query1.FieldByName('BASECOFINSST').AsExtended;
    TBNfeNFE_BASEICMS.Value          :=Query1.FieldByName('BASEICMS').AsExtended;
    TBNfeNFE_BASEICMSST.Value        :=Query1.FieldByName('BASEICMSST').AsExtended;
    TBNfeNFE_BASEII.Value            :=Query1.FieldByName('BASEII').AsExtended;
    TBNfeNFE_BASEIPI.Value           :=Query1.FieldByName('BASEIPI').AsExtended;
    TBNfeNFE_BASEISS.Value           :=Query1.FieldByName('BASEISS').AsExtended;
    TBNfeNFE_BASEPIS.Value           :=Query1.FieldByName('BASEPIS').AsExtended;
    TBNfeNFE_BASEPISST.Value         :=Query1.FieldByName('BASEPISST').AsExtended;
    TBNfeNFE_CUSTOTOTAL.Value        :=Query1.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBNfeNFE_DESCVALOR.Value         :=Query1.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBNfeNFE_PESOLIQ.Value           :=Query1.FieldByName('PESOTOTAL').AsFloat;
    TBNfeNFE_SEQUENCIAITEM.Value     :=Query1.FieldByName('SEQUENCIA').AsInteger;
    TBNfeNFE_TOTALADUANA.Value       :=Query1.FieldByName('VALORADUANA').AsExtended;
    TBNfeNFE_TOTALBRUTO.Value        :=Query1.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBNfeNFE_TOTALCOFINS.Value       :=Query1.FieldByName('VALORCOFINS').AsExtended;
    TBNfeNFE_TOTALCOFINSST.Value     :=Query1.FieldByName('VALORCOFINSST').AsExtended;
    TBNfeNFE_TOTALCOMISSAO.Value     :=Query1.FieldByName('VALORCOMISSAO').AsExtended;
    TBNfeNFE_TOTALCOMISSAOREP.Value  :=Query1.FieldByName('VALORCOMISSAOREP').AsExtended;
    TBNfeNFE_TOTALFCP.Value          :=Query1.FieldByName('VALORFCP').AsExtended;
    TBNfeNFE_TOTALFCPST.Value        :=Query1.FieldByName('VALORFCPST').AsExtended;
    TBNfeNFE_TOTALICMS.Value         :=Query1.FieldByName('VALORICMS').AsExtended;
    TBNfeNFE_TOTALICMSCREDSN.Value   :=Query1.FieldByName('VALORICMSCREDSN').AsExtended;
    TBNfeNFE_TOTALICMSST.Value       :=Query1.FieldByName('VALORICMSST').AsExtended;
    TBNfeNFE_TOTALICMSUFDEST.Value   :=Query1.FieldByName('VALORICMSUFDEST').AsExtended;
    TBNfeNFE_TOTALICMSUFREMET.Value  :=Query1.FieldByName('VALORICMSUFREMET').AsExtended;
    TBNfeNFE_TOTALII.Value           :=Query1.FieldByName('VALORII').AsExtended;
    TBNfeNFE_TOTALIOF.Value          :=Query1.FieldByName('VALORIOF').AsExtended;
    TBNfeNFE_TOTALIPI.Value          :=Query1.FieldByName('VALORIPI').AsExtended;
    TBNfeNFE_TOTALISS.Value          :=Query1.FieldByName('VALORISS').AsExtended;
    TBNfeNFE_TOTALISSDEDUCAO.Value   :=Query1.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBNfeNFE_TOTALISSDESCCOND.Value  :=Query1.FieldByName('VALORISSDESCCOND').AsExtended;
    TBNfeNFE_TOTALISSDESCINCOND.Value:=Query1.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBNfeNFE_TOTALISSOUTROS.Value    :=Query1.FieldByName('VALORISSOUTROS').AsExtended;
    TBNfeNFE_TOTALISSRETENCAO.Value  :=Query1.FieldByName('VALORISSRETENCAO').AsExtended;
    TBNfeNFE_TOTALITENS.Value        :=Query1.FieldByName('TOTALPRODUTOS').AsExtended+Query1.FieldByName('TOTALSERVICOS').AsExtended;
    TBNfeNFE_TOTALPIS.Value          :=Query1.FieldByName('VALORPIS').AsExtended;
    TBNfeNFE_TOTALPISST.Value        :=Query1.FieldByName('VALORPISST').AsExtended;
    TBNfeNFE_TOTALPRODUTOS.Value     :=Query1.FieldByName('TOTALPRODUTOS').AsExtended;
    TBNfeNFE_TOTALSERVICOS.Value     :=Query1.FieldByName('TOTALSERVICOS').AsExtended;
    TBNfeNFE_TOTALTRIBUTOS.Value     :=Decimais(Query1.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSEST.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSFED.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSIMP.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBNfeNFE_TOTALTRIBUTOSMUN.Value  :=Decimais(Query1.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBNfeNFE_VALORDESPACES.Value     :=Query1.FieldByName('VALORACESSORIAS').AsExtended;
    TBNfeNFE_VALORFRETE.Value        :=Query1.FieldByName('VALORFRETE').AsExtended;
    TBNfeNFE_VALORSEGURO.Value       :=Query1.FieldByName('VALORSEGURO').AsExtended;

    //reforma tributária.
    TBNfeNFE_BASEIBSCBS.Value            :=Query1.FieldByName('BASEIBSCBS').AsExtended;
    TBNfeNFE_BASEIS.Value                :=Query1.FieldByName('BASEIS').AsExtended;

    TBNfeNFE_CBSCREDPRES.Value           :=Query1.FieldByName('VALORCBSCREDPRES').AsExtended;
    TBNfeNFE_CBSCREDPRESSUS.AsExtended   :=Query1.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
    TBNfeNFE_CBSDEVOLUCAO.AsExtended     :=Query1.FieldByName('VALORCBSDEV').AsExtended;
    TBNfeNFE_CBSDIFERIMENTO.AsExtended   :=Query1.FieldByName('VALORCBSDIF').AsExtended;
    TBNfeNFE_CBSMONO.AsExtended          :=0; //Query1.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBNfeNFE_CBSMONORETENCAO.AsExtended  :=0; //Query1.FieldByName('VALORIBSMUN').AsExtended;
    TBNfeNFE_CBSMONORETIDO.AsExtended    :=0; //Query1.FieldByName('VALORIBS').AsExtended;
    TBNfeNFE_CBSVALOR.AsExtended         :=Query1.FieldByName('VALORCBS').AsExtended;

    TBNfeNFE_IBSUFDIFERIMENTO.Value      :=Query1.FieldByName('VALORIBSUFDIF').AsExtended;
    TBNfeNFE_IBSUFDEVOLUCAO.AsExtended   :=Query1.FieldByName('VALORIBSUFDEV').AsExtended;
    TBNfeNFE_IBSUFVALOR.AsExtended       :=Query1.FieldByName('VALORIBSUF').AsExtended;
    TBNfeNFE_IBSMUNDIFERIMENTO.AsExtended:=Query1.FieldByName('VALORIBSMUNDIF').AsExtended;
    TBNfeNFE_IBSMUNDEVOLUCAO.AsExtended  :=Query1.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBNfeNFE_IBSMUNVALOR.AsExtended      :=Query1.FieldByName('VALORIBSMUN').AsExtended;
    TBNfeNFE_IBSVALOR.AsExtended         :=Query1.FieldByName('VALORIBS').AsExtended;
    TBNfeNFE_IBSCREDPRES.AsExtended      :=Query1.FieldByName('VALORIBSCREDPRES').AsExtended;
    TBNfeNFE_IBSCREDPRESSUS.AsExtended   :=Query1.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

    TBNfeNFE_TOTALIS.Value               :=Query1.FieldByName('VALORIS').AsExtended;

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
      - Query1.FieldByName('VALORICMSDESONERADO').AsExtended
      + TBNfeNFE_TOTALICMSST.Value
      + TBNfeNFE_TOTALFCPST.Value
      + TBNfeNFE_VALORFRETE.Value
      + TBNfeNFE_VALORSEGURO.Value
      + TBNfeNFE_VALORDESPACES.Value
      + TBNfeNFE_TOTALII.Value
      + TBNfeNFE_TOTALIPI.Value
      //nao tenho esse campo. + TBNfeNFE_TOTALIPIDEV.Value
      + Query1.FieldByName('SOMAPISST').AsExtended
      + Query1.FieldByName('SOMACOFINSST').AsExtended;

    //calcula nova porcentagem de desconto.
    if TBNfeNFE_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBNfeNFE_DESCPORC.Value:=Decimais((100.0/(Query1.FieldByName('VALORTOTALBRUTO').AsExtended+
                                              Query1.FieldByName('VALORFRETE').AsExtended+
                                              Query1.FieldByName('VALORSEGURO').AsExtended+
                                              Query1.FieldByName('VALORACESSORIAS').AsExtended))*TBNfeNFE_DESCVALOR.AsExtended,8) else
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

  Query1.Close;
  if DarPost then TBNfe.Post;
end;

procedure TDMFirenet.SimularCondicaoNfe;
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  TextoCondicao: WideString;
begin
  //AbortIf(TBNfeNFE_STATUS.Value='F','Nota já finalizada.');
  //AbortIf(TBNfeNFE_STATUS.Value='C','Esta nota fiscal está cancelada.');
  //AbortIf(TBNfeNFE_STATUS.Value='I','Esta nota fiscal está inutilizada.');

  TBNfe.Edit;
  TBCondicoes.Close;
  TBCondicoes.ParamByName('codigo').AsInteger:=TBNfeNFE_CONDICAO.Value;
  TBCondicoes.Open;
  TBCondicoesItens.Open;

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

      TextoCondicao:=TextoCondicao+AT(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AT(Format('%m',[ValorParcela]),' ',15,taRight)+AT(Format('%8.2f',[TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+#13#10;
      TBCondicoesItens.Next;
    end;
  end else
  TextoCondicao:='ESTA CFOP NAO MOVIMENTA FINANCEIRO.';
  TBNfeNFE_CONDICAOMEMO.Value:=TextoCondicao;
end;

procedure TDMFirenet.CalcularTotaisNFeItens;
var BC, ICMS: Currency;
begin
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
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
    //no Phill o ICM_CALCULACREDITOSN vem do TBIcms pelo CST (o campo do join fica vazio nos itens novos), como no CalcularTotaisVendaItens.
    TBIcms.Close;
    TBIcms.ParamByName('codigo').AsInteger:=TBNfeItensNFI_CSTICMS.Value;
    TBIcms.Open;
    TBNfeItensNFI_VALORICMSCREDSN.Value:=0;
    //if (TBNfeItensICM_CALCULACREDITOSN.Value='S') and (TBNfeItensNAT_CALCULACREDITOSN.Value='S') then
    if (TBIcmsICM_CALCULACREDITOSN.Value='S') and (TBNfeItensNAT_CALCULACREDITOSN.Value='S') then
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

procedure TDMFirenet.TBNfeItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisNFeItens;
end;

procedure TDMFirenet.TBNfeAfterInsert(DataSet: TDataSet);
begin
  //no Phill a DLL NFe_Util e verificada nas rotas (GerarNfe), sem MessageDlg.
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.

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
  TBNfeNFE_DTCADASTRO.Value:=Date;
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
  TBNfeNFE_HRCADASTRO.Value:=Time;
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
  //como no TBVendasAfterInsert do Phill, a simulacao fica para o CalcularTotaisNFe, quando a nota ja tem cliente, condicao e itens.
  //if TBNfeNFE_STATUS.Value='A' then
  //SimularCondicaoNfe;
end;

procedure TDMFirenet.TBNfeItensAfterInsert(DataSet: TDataSet);
begin
  AbrirEmpresaParametros; //no Phill a empresa e os parametros nao ficam abertos como no Firenet.
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

procedure TDMFirenet.AbrirEmpresaParametros;
//O Firenet deixa a EMPRESA e os PARAMETROS (codigo 1) sempre abertos, e os calculos dependem deles (EMP_ESTADO, EMP_CIDADECODIGO, PAR_*).
//No Phill o DM e criado por requisicao, entao abre aqui o que estiver fechado.
begin
  if not TBEmpresa.Active then
  begin
    TBEmpresa.ParamByName('codigo').AsInteger:=1;
    TBEmpresa.Open;
  end;
  if not TBParametros.Active then
  begin
    TBParametros.ParamByName('codigo').AsInteger:=1;
    TBParametros.Open;
  end;
end;

end.
