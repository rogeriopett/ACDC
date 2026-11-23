unit DataMod2;

interface

uses
  Forms, Windows, Dialogs, Controls, SysUtils, Classes, Messages, DB, DateUtils,
  DBClient, System.UITypes, Vcl.Graphics, System.StrUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM2 = class(TDataModule)
    DSAcoes: TDataSource;
    DSAssuntos: TDataSource;
    DSAtendimentos: TDataSource;
    DSAvaliacoes: TDataSource;
    DSAvaliacoesTipo: TDataSource;
    DSBancos: TDataSource;
    DSBoletos: TDataSource;
    DSBoletosItens: TDataSource;
    DSCalendarios: TDataSource;
    DSChamadas: TDataSource;
    DSCheques: TDataSource;
    DSClasses: TDataSource;
    DSClassificados: TDataSource;
    DSComandas: TDataSource;
    DSComandasItens: TDataSource;
    DSContatos: TDataSource;
    DSConteudos: TDataSource;
    DSContratos: TDataSource;
    DSContratosPartes: TDataSource;
    DSCte: TDataSource;
    DSCteCampos: TDataSource;
    DSCteCarga: TDataSource;
    DSCteCCe: TDataSource;
    DSCteCCeItens: TDataSource;
    DSCteCodigo: TDataSource;
    DSCteInutilizados: TDataSource;
    DSCteNotas: TDataSource;
    DSCteVeiculos: TDataSource;
    DSCursos: TDataSource;
    DSEmails: TDataSource;
    DSEmailsContas: TDataSource;
    DSEvolucoes: TDataSource;
    DSExercicios: TDataSource;
    DSFases: TDataSource;
    DSFeriados: TDataSource;
    DSForms: TDataSource;
    DSForos: TDataSource;
    DSFrotas: TDataSource;
    DSGnre: TDataSource;
    DSIasmin: TDataSource;
    DSIasminLogs: TDataSource;
    DSImoveis: TDataSource;
    DSImoveisTipos: TDataSource;
    DSLocacoes: TDataSource;
    DSLocais: TDataSource;
    DSMarcas: TDataSource;
    DSMarkups: TDataSource;
    DSMarkupsItens: TDataSource;
    DSMatriculas: TDataSource;
    DSMdfe: TDataSource;
    DSMdfeCarrega: TDataSource;
    DSMdfeDescarrega: TDataSource;
    DSMdfeDocs: TDataSource;
    DSMdfeMotoristas: TDataSource;
    DSMdfePercursos: TDataSource;
    DSMedicamentos: TDataSource;
    DSMedicoes: TDataSource;
    DSMensagens: TDataSource;
    DSMensalidades: TDataSource;
    DSMotivos: TDataSource;
    DSObjetos: TDataSource;
    DSOpcionais: TDataSource;
    DSPontos: TDataSource;
    DSProcessos: TDataSource;
    DSProcessosCustas: TDataSource;
    DSProcessosHistorico: TDataSource;
    DSProcessosPartes: TDataSource;
    DSProjetos: TDataSource;
    DSProjetosFases: TDataSource;
    DSProjetosHistorico: TDataSource;
    DSProjetosItens: TDataSource;
    DSProjetosTipos: TDataSource;
    DSPromissorias: TDataSource;
    DSReceituarios: TDataSource;
    DSRecibos: TDataSource;
    DSRemessas: TDataSource;
    DSRemessasItens: TDataSource;
    DSSqls: TDataSource;
    DSTeleVendas: TDataSource;
    DSTurmas: TDataSource;
    DSUnidades: TDataSource;
    DSVeiculos: TDataSource;
    DSVeiculosCliente: TDataSource;
    DSVeiculosVenda: TDataSource;
    DSProntuarios: TDataSource;
    DSExamesTipos: TDataSource;
    DSConsultas: TDataSource;
    DSConsultasItens: TDataSource;
    DSDeliverys: TDataSource;
    DSDeliverysItens: TDataSource;
    DSSegurosTipos: TDataSource;
    DSSeguros: TDataSource;
    DSSegurosParcelas: TDataSource;
    DSSegurosEndossos: TDataSource;
    DSOdontogramas: TDataSource;
    DSOdontogramasOpcoes: TDataSource;
    DSZapInstancias: TDataSource;
    DSZapMensagens: TDataSource;
    QYMensagensNovas: TFDQuery;
    TBAcoes: TFDQuery;
    TBAcoesACO_CODIGO: TIntegerField;
    TBAcoesACO_DESCRICAO: TStringField;
    TBAcoesACO_DTATUALIZACAO: TDateField;
    TBAcoesACO_DTCADASTRO: TDateField;
    TBAcoesACO_HRATUALIZACAO: TTimeField;
    TBAcoesACO_HRCADASTRO: TTimeField;
    TBAcoesACO_STATUS: TStringField;
    TBAcoesACO_USUARIO: TStringField;
    TBAssuntos: TFDQuery;
    TBAssuntosASS_CODIGO: TIntegerField;
    TBAssuntosASS_DESCRICAO: TStringField;
    TBAssuntosASS_DTATUALIZACAO: TDateField;
    TBAssuntosASS_DTCADASTRO: TDateField;
    TBAssuntosASS_HRATUALIZACAO: TTimeField;
    TBAssuntosASS_HRCADASTRO: TTimeField;
    TBAssuntosASS_HTML: TStringField;
    TBAssuntosASS_STATUS: TStringField;
    TBAssuntosASS_TEXTO: TMemoField;
    TBAssuntosASS_USUARIO: TStringField;
    TBAtendimentos: TFDQuery;
    TBAtendimentosATE_AULA: TStringField;
    TBAtendimentosATE_AULADATA: TDateField;
    TBAtendimentosATE_AULAHORA: TTimeField;
    TBAtendimentosATE_CLIENTE: TIntegerField;
    TBAtendimentosATE_CODIGO: TIntegerField;
    TBAtendimentosATE_CURSO: TIntegerField;
    TBAtendimentosATE_DTATUALIZACAO: TDateField;
    TBAtendimentosATE_DTCADASTRO: TDateField;
    TBAtendimentosATE_HRATUALIZACAO: TTimeField;
    TBAtendimentosATE_HRCADASTRO: TTimeField;
    TBAtendimentosATE_MAILING: TIntegerField;
    TBAtendimentosATE_NIVELESCRITO: TStringField;
    TBAtendimentosATE_NIVELORAL: TStringField;
    TBAtendimentosATE_OBSERVACOES: TMemoField;
    TBAtendimentosATE_TESTEESCRITO: TStringField;
    TBAtendimentosATE_TESTEESCRITODATA: TDateField;
    TBAtendimentosATE_TESTEESCRITOHORA: TTimeField;
    TBAtendimentosATE_TESTEORAL: TStringField;
    TBAtendimentosATE_TESTEORALDATA: TDateField;
    TBAtendimentosATE_TESTEORALHORA: TTimeField;
    TBAtendimentosATE_USUARIO: TStringField;
    TBAtendimentosATE_VENDEDOR: TIntegerField;
    TBAtendimentosCLI_NOME: TStringField;
    TBAtendimentosCUR_DESCRICAO: TStringField;
    TBAtendimentosMAI_DESCRICAO: TStringField;
    TBAtendimentosVEN_NOME: TStringField;
    TBAvaliacoes: TFDQuery;
    TBAvaliacoesAVA_CODIGO: TIntegerField;
    TBAvaliacoesAVA_CONTAMEDIA: TStringField;
    TBAvaliacoesAVA_DTATUALIZACAO: TDateField;
    TBAvaliacoesAVA_DTCADASTRO: TDateField;
    TBAvaliacoesAVA_HRATUALIZACAO: TTimeField;
    TBAvaliacoesAVA_HRCADASTRO: TTimeField;
    TBAvaliacoesAVA_MATRICULA: TIntegerField;
    TBAvaliacoesAVA_NOTA: TFMTBCDField;
    TBAvaliacoesAVA_TIPO: TIntegerField;
    TBAvaliacoesAVA_USUARIO: TStringField;
    TBAvaliacoesAVT_DESCRICAO: TStringField;
    TBAvaliacoesCLI_NOME: TStringField;
    TBAvaliacoesTipo: TFDQuery;
    TBAvaliacoesTipoAVT_CODIGO: TIntegerField;
    TBAvaliacoesTipoAVT_DESCRICAO: TStringField;
    TBAvaliacoesTipoAVT_DTATUALIZACAO: TDateField;
    TBAvaliacoesTipoAVT_DTCADASTRO: TDateField;
    TBAvaliacoesTipoAVT_HRATUALIZACAO: TTimeField;
    TBAvaliacoesTipoAVT_HRCADASTRO: TTimeField;
    TBAvaliacoesTipoAVT_USUARIO: TStringField;
    TBBancos: TFDQuery;
    TBBancosBAN_CODIGO: TIntegerField;
    TBBancosBAN_DTATUALIZACAO: TDateField;
    TBBancosBAN_DTCADASTRO: TDateField;
    TBBancosBAN_HRATUALIZACAO: TTimeField;
    TBBancosBAN_HRCADASTRO: TTimeField;
    TBBancosBAN_NOME: TStringField;
    TBBancosBAN_STATUS: TStringField;
    TBBancosBAN_USUARIO: TStringField;
    TBBoletos: TFDQuery;
    TBBoletosBAN_NOME: TStringField;
    TBBoletosBOL_ACEITE: TStringField;
    TBBoletosBOL_BAIRRO: TStringField;
    TBBoletosBOL_BAIXACODIGO: TIntegerField;
    TBBoletosBOL_BAIXADOPOR: TStringField;
    TBBoletosBOL_CARTEIRA: TStringField;
    TBBoletosBOL_CARTEIRACOD: TIntegerField;
    TBBoletosBOL_CEP: TStringField;
    TBBoletosBOL_CIDADE: TStringField;
    TBBoletosBOL_CLIENTE: TIntegerField;
    TBBoletosBOL_CNPJ: TStringField;
    TBBoletosBOL_CODIGO: TIntegerField;
    TBBoletosBOL_CODIGOBARRAS: TStringField;
    TBBoletosBOL_CODIGOSOLICITACAO: TStringField;
    TBBoletosBOL_COMPLEMENTO: TStringField;
    TBBoletosBOL_CONTA: TIntegerField;
    TBBoletosBOL_CONVENIO: TStringField;
    TBBoletosBOL_CPF: TStringField;
    TBBoletosBOL_DESCONTOTIPO: TStringField;
    TBBoletosBOL_DESCPORC: TFMTBCDField;
    TBBoletosBOL_DESCTIPO: TStringField;
    TBBoletosBOL_DESCVALOR: TFMTBCDField;
    TBBoletosBOL_DIASBAIXA: TIntegerField;
    TBBoletosBOL_DIASPROTESTO: TIntegerField;
    TBBoletosBOL_DTATUALIZACAO: TDateField;
    TBBoletosBOL_DTBAIXABANCO: TDateField;
    TBBoletosBOL_DTCADASTRO: TDateField;
    TBBoletosBOL_DTDESCONTO: TDateField;
    TBBoletosBOL_DTJUROSAPOS: TDateField;
    TBBoletosBOL_DTPAGAMENTO: TDateField;
    TBBoletosBOL_DTPROTESTO: TDateField;
    TBBoletosBOL_DTVENCIMENTO: TDateField;
    TBBoletosBOL_ENDERECO: TStringField;
    TBBoletosBOL_ESPECIE: TStringField;
    TBBoletosBOL_ESPECIEDOC: TStringField;
    TBBoletosBOL_ESTADO: TStringField;
    TBBoletosBOL_GEROUREMESSA: TStringField;
    TBBoletosBOL_HRATUALIZACAO: TTimeField;
    TBBoletosBOL_HRCADASTRO: TTimeField;
    TBBoletosBOL_INSTRUCAO1: TStringField;
    TBBoletosBOL_INSTRUCAO2: TStringField;
    TBBoletosBOL_INSTRUCAO3: TStringField;
    TBBoletosBOL_INSTRUCAO4: TStringField;
    TBBoletosBOL_INSTRUCAO5: TStringField;
    TBBoletosBOL_LINHADIGITAVEL: TStringField;
    TBBoletosBOL_LOCALPAGTO: TStringField;
    TBBoletosBOL_MODALIDADE: TIntegerField;
    TBBoletosBOL_MORACODIGO: TStringField;
    TBBoletosBOL_MORAJUROS: TFMTBCDField;
    TBBoletosBOL_MORATIPO: TStringField;
    TBBoletosBOL_MULTA: TFMTBCDField;
    TBBoletosBOL_MULTATIPO: TStringField;
    TBBoletosBOL_NOME: TStringField;
    TBBoletosBOL_NOSSONUMERO: TStringField;
    TBBoletosBOL_NUMERO: TStringField;
    TBBoletosBOL_OBSERVACOES: TMemoField;
    TBBoletosBOL_PROTESTOCODIGO: TIntegerField;
    TBBoletosBOL_PROTESTOTIPO: TStringField;
    TBBoletosBOL_QRCODEPIX: TStringField;
    TBBoletosBOL_STATUS: TStringField;
    TBBoletosBOL_TIPOPESSOA: TStringField;
    TBBoletosBOL_USUARIO: TStringField;
    TBBoletosBOL_VALORBOLETO: TFMTBCDField;
    TBBoletosBOL_VALORITENS: TFMTBCDField;
    TBBoletosBOL_VALORJUROS: TFMTBCDField;
    TBBoletosBOL_VALORMULTA: TFMTBCDField;
    TBBoletosBOL_VALORPAGO: TFMTBCDField;
    TBBoletosBOL_VALORTOTAL: TFMTBCDField;
    TBBoletosCON_AGENCIA: TStringField;
    TBBoletosCON_AGENCIADIGITO: TIntegerField;
    TBBoletosCON_BANCO: TIntegerField;
    TBBoletosCON_CEDENTE: TStringField;
    TBBoletosCON_CEDENTEDIGITO: TIntegerField;
    TBBoletosCON_CEDENTENOME: TStringField;
    TBBoletosCON_CHAVEPIX: TStringField;
    TBBoletosCON_CLIENTID: TStringField;
    TBBoletosCON_CLIENTSECRET: TStringField;
    TBBoletosCON_CONTA: TStringField;
    TBBoletosCON_CONTADIGITO: TIntegerField;
    TBBoletosCON_KEYUSER: TStringField;
    TBBoletosCON_NOME: TStringField;
    TBBoletosCON_NOSSONUMDIGITOS: TIntegerField;
    TBBoletosCON_NOSSONUMFORMATAR: TStringField;
    TBBoletosCON_TIPOCOBRANCA: TStringField;
    TBBoletosCON_VALORBOLETO: TFMTBCDField;
    TBBoletosItens: TFDQuery;
    TBBoletosItensBOI_BOLETO: TIntegerField;
    TBBoletosItensBOI_CODIGO: TIntegerField;
    TBBoletosItensBOI_RECEBER: TIntegerField;
    TBBoletosItensREE_CLIENTE: TIntegerField;
    TBBoletosItensREE_CONTA: TIntegerField;
    TBBoletosItensREE_DTEMISSAO: TDateField;
    TBBoletosItensREE_DTPAGAMENTO: TDateField;
    TBBoletosItensREE_DTVENCIMENTO: TDateField;
    TBBoletosItensREE_NUMDOCTO: TStringField;
    TBBoletosItensREE_PARCELANUM: TIntegerField;
    TBBoletosItensREE_PARCELAQTDE: TIntegerField;
    TBBoletosItensREE_STATUS: TStringField;
    TBBoletosItensREE_TIPODOCTO: TStringField;
    TBBoletosItensREE_VALOR: TFMTBCDField;
    TBBoletosItensREE_VALORPAGO: TFMTBCDField;
    TBBoletosItensREE_VENDEDOR: TIntegerField;
    TBCalendarios: TFDQuery;
    TBCalendariosCAL_CODIGO: TIntegerField;
    TBCalendariosCAL_CONTADOR: TIntegerField;
    TBCalendariosCAL_DATA: TDateField;
    TBCalendariosCAL_STATUSCHAMADA: TStringField;
    TBCalendariosCAL_TIPO: TStringField;
    TBCalendariosCAL_TURMA: TIntegerField;
    TBChamadas: TFDQuery;
    TBChamadasCAL_DATA: TDateField;
    TBChamadasCHA_CALENDARIO: TIntegerField;
    TBChamadasCHA_CLIENTE: TIntegerField;
    TBChamadasCHA_CODIGO: TIntegerField;
    TBChamadasCHA_MATRICULA: TIntegerField;
    TBChamadasCHA_PRESENCA: TStringField;
    TBChamadasCLI_NOME: TStringField;
    TBChamadasMAT_STATUS: TStringField;
    TBCheques: TFDQuery;
    TBChequesBAN_NOME: TStringField;
    TBChequesCHE_AGENCIA: TStringField;
    TBChequesCHE_BANCO: TIntegerField;
    TBChequesCHE_BOMPARA: TDateField;
    TBChequesCHE_CLIENTE: TIntegerField;
    TBChequesCHE_CODIGO: TIntegerField;
    TBChequesCHE_CONTA: TStringField;
    TBChequesCHE_DTATUALIZACAO: TDateField;
    TBChequesCHE_DTCADASTRO: TDateField;
    TBChequesCHE_ESPECIAL: TStringField;
    TBChequesCHE_HRATUALIZACAO: TTimeField;
    TBChequesCHE_HRCADASTRO: TTimeField;
    TBChequesCHE_NOME: TStringField;
    TBChequesCHE_NUMERO: TIntegerField;
    TBChequesCHE_OBSERVACOES: TMemoField;
    TBChequesCHE_PREDATADO: TStringField;
    TBChequesCHE_STATUS: TStringField;
    TBChequesCHE_USUARIO: TStringField;
    TBChequesCHE_VALOR: TFMTBCDField;
    TBChequesCLI_NOME: TStringField;
    TBClasses: TFDQuery;
    TBClassesCLS_CODIGO: TIntegerField;
    TBClassesCLS_DESCRICAO: TStringField;
    TBClassesCLS_DTATUALIZACAO: TDateField;
    TBClassesCLS_DTCADASTRO: TDateField;
    TBClassesCLS_HRATUALIZACAO: TTimeField;
    TBClassesCLS_HRCADASTRO: TTimeField;
    TBClassesCLS_USUARIO: TStringField;
    TBClassificados: TFDQuery;
    TBClassificadosCLA_ANOFAB: TStringField;
    TBClassificadosCLA_ANOMOD: TStringField;
    TBClassificadosCLA_CATEGORIA: TStringField;
    TBClassificadosCLA_CLIENTE: TIntegerField;
    TBClassificadosCLA_CODIGO: TIntegerField;
    TBClassificadosCLA_COR: TStringField;
    TBClassificadosCLA_DTATUALIZACAO: TDateField;
    TBClassificadosCLA_DTCADASTRO: TDateField;
    TBClassificadosCLA_FONE1: TStringField;
    TBClassificadosCLA_FONE2: TStringField;
    TBClassificadosCLA_HRATUALIZACAO: TTimeField;
    TBClassificadosCLA_HRCADASTRO: TTimeField;
    TBClassificadosCLA_NOME: TStringField;
    TBClassificadosCLA_OBJETIVO: TStringField;
    TBClassificadosCLA_OBSERVACOES: TMemoField;
    TBClassificadosCLA_USUARIO: TStringField;
    TBClassificadosCLA_VEICULO: TIntegerField;
    TBClassificadosVEL_DESCRICAO: TStringField;
    TBComandas: TFDQuery;
    TBComandasCLI_NOME: TStringField;
    TBComandasCMD_CLIENTE: TIntegerField;
    TBComandasCMD_CODIGO: TIntegerField;
    TBComandasCMD_COMANDA: TIntegerField;
    TBComandasCMD_COMISSAO: TFMTBCDField;
    TBComandasCMD_DATA: TDateField;
    TBComandasCMD_DATABAIXA: TDateField;
    TBComandasCMD_DESCPORC: TFMTBCDField;
    TBComandasCMD_DESCVALOR: TFMTBCDField;
    TBComandasCMD_DINHEIRO: TFMTBCDField;
    TBComandasCMD_DTATUALIZACAO: TDateField;
    TBComandasCMD_DTCADASTRO: TDateField;
    TBComandasCMD_HORAFIM: TTimeField;
    TBComandasCMD_HORAFIMMIN: TIntegerField;
    TBComandasCMD_HORAINICIO: TTimeField;
    TBComandasCMD_HORAINICIOMIN: TIntegerField;
    TBComandasCMD_HRATUALIZACAO: TTimeField;
    TBComandasCMD_HRCADASTRO: TTimeField;
    TBComandasCMD_OBSERVACOES: TMemoField;
    TBComandasCMD_SEQUENCIAITEM: TIntegerField;
    TBComandasCMD_STATUS: TStringField;
    TBComandasCMD_TEMPOTOTAL: TStringField;
    TBComandasCMD_TEMPOTOTALDEC: TFMTBCDField;
    TBComandasCMD_TEMPOTOTALMIN: TIntegerField;
    TBComandasCMD_TOTALITENS: TFMTBCDField;
    TBComandasCMD_TROCO: TFMTBCDField;
    TBComandasCMD_USUARIO: TStringField;
    TBComandasCMD_VALORCOMISSAO: TFMTBCDField;
    TBComandasCMD_VALORPAGAR: TFMTBCDField;
    TBComandasCMD_VALORPAGO: TFMTBCDField;
    TBComandasCMD_VALORTOTAL: TFMTBCDField;
    TBComandasCMD_VENDEDOR: TIntegerField;
    TBComandasItens: TFDQuery;
    TBComandasItensCDI_CODIGO: TIntegerField;
    TBComandasItensCDI_COMANDA: TIntegerField;
    TBComandasItensCDI_DESCRICAO: TStringField;
    TBComandasItensCDI_ITEM: TIntegerField;
    TBComandasItensCDI_OBSERVACOES: TStringField;
    TBComandasItensCDI_PAGO: TStringField;
    TBComandasItensCDI_PRODUTO: TIntegerField;
    TBComandasItensCDI_QUANTIDADE: TFMTBCDField;
    TBComandasItensCDI_TIPO: TStringField;
    TBComandasItensCDI_VALORTOTAL: TFMTBCDField;
    TBComandasItensCDI_VALORUNITARIO: TFMTBCDField;
    TBComandasVEN_NOME: TStringField;
    TBConsultas: TFDQuery;
    TBConsultasCLI_DTNASC: TDateField;
    TBConsultasCLI_FONE1: TStringField;
    TBConsultasCLI_NOME: TStringField;
    TBConsultasCLI_NOMESOLICITANTE: TStringField;
    TBConsultasCLI_REGPROFISSIONAL: TStringField;
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
    TBContatos: TClientDataSet;
    TBContatosUSU_CODIGO: TIntegerField;
    TBContatosUSU_LIDAS: TIntegerField;
    TBContatosUSU_LOGIN: TStringField;
    TBContatosUSU_NOME: TStringField;
    TBConteudos: TFDQuery;
    TBConteudosCTO_CALENDARIO: TIntegerField;
    TBConteudosCTO_CODIGO: TIntegerField;
    TBConteudosCTO_CONTEUDO: TMemoField;
    TBConteudosCTO_DTATUALIZACAO: TDateField;
    TBConteudosCTO_DTCADASTRO: TDateField;
    TBConteudosCTO_HRATUALIZACAO: TTimeField;
    TBConteudosCTO_HRCADASTRO: TTimeField;
    TBConteudosCTO_USUARIO: TStringField;
    TBContratos: TFDQuery;
    TBContratosCTI_AVALISTA1: TStringField;
    TBContratosCTI_AVALISTA1CPF: TStringField;
    TBContratosCTI_AVALISTA2: TStringField;
    TBContratosCTI_AVALISTA2CPF: TStringField;
    TBContratosCTI_CODIGO: TIntegerField;
    TBContratosCTI_DESCPARCELAPORC: TFMTBCDField;
    TBContratosCTI_DESCPARCELAQTDE: TIntegerField;
    TBContratosCTI_DESCPARCELAVALOR: TFMTBCDField;
    TBContratosCTI_DESCPORCVECTO: TFMTBCDField;
    TBContratosCTI_DIAVENCIMENTO: TIntegerField;
    TBContratosCTI_DTATUALIZACAO: TDateField;
    TBContratosCTI_DTCADASTRO: TDateField;
    TBContratosCTI_FINALIDADE: TStringField;
    TBContratosCTI_HRATUALIZACAO: TTimeField;
    TBContratosCTI_HRCADASTRO: TTimeField;
    TBContratosCTI_IMOVEL: TIntegerField;
    TBContratosCTI_LOCADOR: TIntegerField;
    TBContratosCTI_LOCADORBAIRRO: TStringField;
    TBContratosCTI_LOCADORCEP: TStringField;
    TBContratosCTI_LOCADORCIDADE: TStringField;
    TBContratosCTI_LOCADORCIDADECODIGO: TIntegerField;
    TBContratosCTI_LOCADORCNPJ: TStringField;
    TBContratosCTI_LOCADORCOMPLEMENTO: TStringField;
    TBContratosCTI_LOCADORCPF: TStringField;
    TBContratosCTI_LOCADORENDERECO: TStringField;
    TBContratosCTI_LOCADORESTADO: TStringField;
    TBContratosCTI_LOCADORESTADOCIVIL: TStringField;
    TBContratosCTI_LOCADORNOME: TStringField;
    TBContratosCTI_LOCADORNUMERO: TStringField;
    TBContratosCTI_LOCADORTIPOPESSOA: TStringField;
    TBContratosCTI_MEMOPAGAR: TMemoField;
    TBContratosCTI_MEMORECEBER: TMemoField;
    TBContratosCTI_STATUS: TStringField;
    TBContratosCTI_TESTEMUNHA1: TStringField;
    TBContratosCTI_TESTEMUNHA1CPF: TStringField;
    TBContratosCTI_TESTEMUNHA2: TStringField;
    TBContratosCTI_TESTEMUNHA2CPF: TStringField;
    TBContratosCTI_USUARIO: TStringField;
    TBContratosCTI_VALORALUGUEL: TFMTBCDField;
    TBContratosCTI_VALORALUGUELVECTO: TFMTBCDField;
    TBContratosCTI_VIGENCIAFIM: TDateField;
    TBContratosCTI_VIGENCIAINICIO: TDateField;
    TBContratosCTI_VIGENCIATOTAL: TIntegerField;
    TBContratosIMO_AREALOCALIZACAO: TStringField;
    TBContratosIMO_BAIRRO: TStringField;
    TBContratosIMO_CEP: TStringField;
    TBContratosIMO_CIDADE: TStringField;
    TBContratosIMO_CIDADECODIGO: TIntegerField;
    TBContratosIMO_CIDADECODIGODIMOB: TIntegerField;
    TBContratosIMO_CLIENTE: TIntegerField;
    TBContratosIMO_COMISSAO: TFMTBCDField;
    TBContratosIMO_COMPLEMENTO: TStringField;
    TBContratosIMO_DESCQTDE: TIntegerField;
    TBContratosIMO_DESCRICAO: TStringField;
    TBContratosIMO_DESCVALOR: TFMTBCDField;
    TBContratosIMO_DIAPAGAMENTO: TIntegerField;
    TBContratosIMO_ENDERECO: TStringField;
    TBContratosIMO_ESTADO: TStringField;
    TBContratosIMO_FINALIDADE: TStringField;
    TBContratosIMO_NUMERO: TStringField;
    TBContratosIMO_TIPOIMOVEL: TIntegerField;
    TBContratosIMO_TIPONEGOCIO: TStringField;
    TBContratosIMO_TIPOPAGAMENTO: TStringField;
    TBContratosIMO_VALORALUGUEL: TFMTBCDField;
    TBContratosIMT_DESCRICAO: TStringField;
    TBContratosPartes: TFDQuery;
    TBContratosPartesCTP_BAIRRO: TStringField;
    TBContratosPartesCTP_CEP: TStringField;
    TBContratosPartesCTP_CIDADE: TStringField;
    TBContratosPartesCTP_CIDADECODIGO: TIntegerField;
    TBContratosPartesCTP_CLIENTE: TIntegerField;
    TBContratosPartesCTP_CNPJ: TStringField;
    TBContratosPartesCTP_CODIGO: TIntegerField;
    TBContratosPartesCTP_COMPLEMENTO: TStringField;
    TBContratosPartesCTP_CONJUGE: TStringField;
    TBContratosPartesCTP_CONJUGECPF: TStringField;
    TBContratosPartesCTP_CONTRATO: TIntegerField;
    TBContratosPartesCTP_CPF: TStringField;
    TBContratosPartesCTP_ENDERECO: TStringField;
    TBContratosPartesCTP_ESTADO: TStringField;
    TBContratosPartesCTP_ESTADOCIVIL: TStringField;
    TBContratosPartesCTP_ESTADOCODIGO: TIntegerField;
    TBContratosPartesCTP_FONE1: TStringField;
    TBContratosPartesCTP_NOME: TStringField;
    TBContratosPartesCTP_NUMERO: TStringField;
    TBContratosPartesCTP_PROFISSAO: TStringField;
    TBContratosPartesCTP_TIPO: TStringField;
    TBContratosPartesCTP_TIPOPESSOA: TStringField;
    TBCte: TFDQuery;
    TBCteCampos: TFDQuery;
    TBCteCamposCTF_ALTERAVEL: TStringField;
    TBCteCamposCTF_CAMPO: TStringField;
    TBCteCamposCTF_CODIGO: TIntegerField;
    TBCteCamposCTF_DESCRICAO: TStringField;
    TBCteCamposCTF_GRUPO: TStringField;
    TBCteCamposCTF_NIVEL: TIntegerField;
    TBCteCamposCTF_PAI: TIntegerField;
    TBCteCamposCTF_TIPO: TStringField;
    TBCteCarga: TFDQuery;
    TBCteCargaCCG_CODIGO: TIntegerField;
    TBCteCargaCCG_CTE: TIntegerField;
    TBCteCargaCCG_QUANTIDADE: TFMTBCDField;
    TBCteCargaCCG_TIPOMEDIDA: TStringField;
    TBCteCargaCCG_UNIDADEMEDIDA: TStringField;
    TBCtecce: TFDQuery;
    TBCtecceCTC_CODIGO: TIntegerField;
    TBCtecceCTC_CTE: TIntegerField;
    TBCtecceCTC_DATA: TDateField;
    TBCtecceCTC_DTATUALIZACAO: TDateField;
    TBCtecceCTC_HORA: TTimeField;
    TBCtecceCTC_HRATUALIZACAO: TTimeField;
    TBCtecceCTC_PROTOCOLO: TStringField;
    TBCtecceCTC_PROTOCOLODH: TStringField;
    TBCtecceCTC_SEQUENCIAL: TIntegerField;
    TBCtecceCTC_USUARIO: TStringField;
    TBCtecceItens: TFDQuery;
    TBCtecceItensCTX_CAMPO: TStringField;
    TBCtecceItensCTX_CCE: TIntegerField;
    TBCtecceItensCTX_CODIGO: TIntegerField;
    TBCtecceItensCTX_GRUPO: TStringField;
    TBCtecceItensCTX_NUMITEM: TIntegerField;
    TBCtecceItensCTX_VALOR: TStringField;
    TBCteCodigo: TFDQuery;
    TBCteCodigoCTE_CODIGO: TIntegerField;
    TBCteCPG_DESCRICAO: TStringField;
    TBCteCTE_AEREODIMENSAO: TStringField;
    TBCteCTE_AEREODTPREVISTA: TDateField;
    TBCteCTE_AEREOIATA: TStringField;
    TBCteCTE_AEREOIMP: TStringField;
    TBCteCTE_AEREOMINUTA: TIntegerField;
    TBCteCTE_AEREONOMEFILIAL: TStringField;
    TBCteCTE_AEREOOCA: TStringField;
    TBCteCTE_AEREOTARIFACLASSE: TStringField;
    TBCteCTE_AEREOTARIFACODIGO: TIntegerField;
    TBCteCTE_AEREOTARIFAVALOR: TFMTBCDField;
    TBCteCTE_ALIQFCP: TFMTBCDField;
    TBCteCTE_ALIQICMS: TFMTBCDField;
    TBCteCTE_ALIQICMSINTER: TFMTBCDField;
    TBCteCTE_ALIQICMSINTERPART: TFMTBCDField;
    TBCteCTE_ALIQICMSRED: TFMTBCDField;
    TBCteCTE_ALIQICMSST: TFMTBCDField;
    TBCteCTE_ALIQICMSUFFIM: TFMTBCDField;
    TBCteCTE_ALIQTRIBUTOS: TFMTBCDField;
    TBCteCTE_BAIXADATA: TDateField;
    TBCteCTE_BAIXAPOR: TStringField;
    TBCteCTE_BASEICMS: TFMTBCDField;
    TBCteCTE_BASEICMSRED: TFMTBCDField;
    TBCteCTE_BASEICMSST: TFMTBCDField;
    TBCteCTE_CARGAOUTRASCARAC: TStringField;
    TBCteCTE_CFOP: TIntegerField;
    TBCteCTE_CFOPDESC: TStringField;
    TBCteCTE_CHAVEACESSO: TStringField;
    TBCteCTE_CIOT: TStringField;
    TBCteCTE_CODIGO: TIntegerField;
    TBCteCTE_CODIGONUMERICO: TStringField;
    TBCteCTE_COMISSAO: TFMTBCDField;
    TBCteCTE_CONDICAO: TIntegerField;
    TBCteCTE_CONDICAOMEMO: TMemoField;
    TBCteCTE_CONSULTADA: TStringField;
    TBCteCTE_CSTICMS: TIntegerField;
    TBCteCTE_CTEREFERENCIADO: TStringField;
    TBCteCTE_DATAHORA: TStringField;
    TBCteCTE_DATAHORACONTINGENCIA: TStringField;
    TBCteCTE_DESBAIRRO: TStringField;
    TBCteCTE_DESCEP: TStringField;
    TBCteCTE_DESCIDADE: TStringField;
    TBCteCTE_DESCIDADECODIGO: TIntegerField;
    TBCteCTE_DESCNPJ: TStringField;
    TBCteCTE_DESCOMPLEMENTO: TStringField;
    TBCteCTE_DESCONTATO: TStringField;
    TBCteCTE_DESCPF: TStringField;
    TBCteCTE_DESCPORC: TFMTBCDField;
    TBCteCTE_DESCVALOR: TFMTBCDField;
    TBCteCTE_DESENDERECO: TStringField;
    TBCteCTE_DESESTADO: TStringField;
    TBCteCTE_DESESTADOCODIGO: TIntegerField;
    TBCteCTE_DESFONE: TStringField;
    TBCteCTE_DESIE: TStringField;
    TBCteCTE_DESNOME: TStringField;
    TBCteCTE_DESNUMERO: TStringField;
    TBCteCTE_DESPAIS: TStringField;
    TBCteCTE_DESPAISCODIGO: TIntegerField;
    TBCteCTE_DESTINATARIO: TIntegerField;
    TBCteCTE_DIAPREFERENCIAL: TIntegerField;
    TBCteCTE_DTATUALIZACAO: TDateField;
    TBCteCTE_DTCADASTRO: TDateField;
    TBCteCTE_DTEMISSAO: TDateField;
    TBCteCTE_ENTREGADATA: TStringField;
    TBCteCTE_ENTREGADATAFINAL: TDateField;
    TBCteCTE_ENTREGADATAINICIAL: TDateField;
    TBCteCTE_ENTREGAHORA: TStringField;
    TBCteCTE_ENTREGAHORAFINAL: TTimeField;
    TBCteCTE_ENTREGAHORAINICIAL: TTimeField;
    TBCteCTE_ENVIADO: TStringField;
    TBCteCTE_EXPBAIRRO: TStringField;
    TBCteCTE_EXPCEP: TStringField;
    TBCteCTE_EXPCIDADE: TStringField;
    TBCteCTE_EXPCIDADECODIGO: TIntegerField;
    TBCteCTE_EXPCNPJ: TStringField;
    TBCteCTE_EXPCOMPLEMENTO: TStringField;
    TBCteCTE_EXPCONTATO: TStringField;
    TBCteCTE_EXPCPF: TStringField;
    TBCteCTE_EXPEDIDOR: TIntegerField;
    TBCteCTE_EXPENDERECO: TStringField;
    TBCteCTE_EXPESTADO: TStringField;
    TBCteCTE_EXPESTADOCODIGO: TIntegerField;
    TBCteCTE_EXPFONE: TStringField;
    TBCteCTE_EXPIE: TStringField;
    TBCteCTE_EXPNOME: TStringField;
    TBCteCTE_EXPNUMERO: TStringField;
    TBCteCTE_EXPPAIS: TStringField;
    TBCteCTE_EXPPAISCODIGO: TIntegerField;
    TBCteCTE_FINALIDADE: TStringField;
    TBCteCTE_FORMAPAGTO: TStringField;
    TBCteCTE_FORMAPAGTOSERVICO: TStringField;
    TBCteCTE_HRATUALIZACAO: TTimeField;
    TBCteCTE_HRCADASTRO: TTimeField;
    TBCteCTE_ICMSALIQUOTAUF: TFMTBCDField;
    TBCteCTE_ICMSPOR: TStringField;
    TBCteCTE_INFOADICFISCO: TMemoField;
    TBCteCTE_LOTACAO: TStringField;
    TBCteCTE_LOTE: TStringField;
    TBCteCTE_MODAL: TStringField;
    TBCteCTE_MODELO: TIntegerField;
    TBCteCTE_MOTIVOCANCELAMENTO: TStringField;
    TBCteCTE_MOTIVOCONTINGENCIA: TStringField;
    TBCteCTE_MOTIVOINUTILIZACAO: TStringField;
    TBCteCTE_MOTORISTA: TStringField;
    TBCteCTE_MOTORISTACPF: TStringField;
    TBCteCTE_MOVIMENTAFINANCEIRO: TStringField;
    TBCteCTE_OBSERVACOES: TMemoField;
    TBCteCTE_PAGOPOR: TStringField;
    TBCteCTE_PESOTOTAL: TFMTBCDField;
    TBCteCTE_PRODUTOPREDOM: TStringField;
    TBCteCTE_PROTOCOLO: TStringField;
    TBCteCTE_PROTOCOLOCANC: TStringField;
    TBCteCTE_PROTOCOLOCANCDH: TStringField;
    TBCteCTE_PROTOCOLODH: TStringField;
    TBCteCTE_PROTOCOLOINUT: TStringField;
    TBCteCTE_PROTOCOLOINUTDH: TStringField;
    TBCteCTE_RECBAIRRO: TStringField;
    TBCteCTE_RECCEP: TStringField;
    TBCteCTE_RECCIDADE: TStringField;
    TBCteCTE_RECCIDADECODIGO: TIntegerField;
    TBCteCTE_RECCNPJ: TStringField;
    TBCteCTE_RECCOMPLEMENTO: TStringField;
    TBCteCTE_RECCONTATO: TStringField;
    TBCteCTE_RECCPF: TStringField;
    TBCteCTE_RECEBEDOR: TIntegerField;
    TBCteCTE_RECEBIDODATA: TDateField;
    TBCteCTE_RECEBIDOPOR: TStringField;
    TBCteCTE_RECENDERECO: TStringField;
    TBCteCTE_RECESTADO: TStringField;
    TBCteCTE_RECESTADOCODIGO: TIntegerField;
    TBCteCTE_RECFONE: TStringField;
    TBCteCTE_RECIBO: TStringField;
    TBCteCTE_RECIBODH: TStringField;
    TBCteCTE_RECIE: TStringField;
    TBCteCTE_RECNOME: TStringField;
    TBCteCTE_RECNUMERO: TStringField;
    TBCteCTE_RECPAIS: TStringField;
    TBCteCTE_RECPAISCODIGO: TIntegerField;
    TBCteCTE_REFERENCIA: TStringField;
    TBCteCTE_REMBAIRRO: TStringField;
    TBCteCTE_REMCEP: TStringField;
    TBCteCTE_REMCIDADE: TStringField;
    TBCteCTE_REMCIDADECODIGO: TIntegerField;
    TBCteCTE_REMCNPJ: TStringField;
    TBCteCTE_REMCOMPLEMENTO: TStringField;
    TBCteCTE_REMCONTATO: TStringField;
    TBCteCTE_REMCPF: TStringField;
    TBCteCTE_REMENDERECO: TStringField;
    TBCteCTE_REMESTADO: TStringField;
    TBCteCTE_REMESTADOCODIGO: TIntegerField;
    TBCteCTE_REMETENTE: TIntegerField;
    TBCteCTE_REMFONE: TStringField;
    TBCteCTE_REMIE: TStringField;
    TBCteCTE_REMNOME: TStringField;
    TBCteCTE_REMNUMERO: TStringField;
    TBCteCTE_REMPAIS: TStringField;
    TBCteCTE_REMPAISCODIGO: TIntegerField;
    TBCteCTE_RETIRA: TStringField;
    TBCteCTE_RETIRADETALHES: TStringField;
    TBCteCTE_SEGURO: TStringField;
    TBCteCTE_SEGUROAPOLICE: TStringField;
    TBCteCTE_SEGUROAVERBACAO: TStringField;
    TBCteCTE_SEGURONOME: TStringField;
    TBCteCTE_SEGUROVALOR: TFMTBCDField;
    TBCteCTE_SERIE: TIntegerField;
    TBCteCTE_STATUS: TStringField;
    TBCteCTE_TIPOCTE: TStringField;
    TBCteCTE_TIPOEMISSAO: TStringField;
    TBCteCTE_TIPOSERVICO: TStringField;
    TBCteCTE_TOMADOR: TStringField;
    TBCteCTE_TOMADORBAIRRO: TStringField;
    TBCteCTE_TOMADORCEP: TStringField;
    TBCteCTE_TOMADORCIDADE: TStringField;
    TBCteCTE_TOMADORCIDADECODIGO: TIntegerField;
    TBCteCTE_TOMADORCNPJ: TStringField;
    TBCteCTE_TOMADORCODIGO: TIntegerField;
    TBCteCTE_TOMADORCOMPLEMENTO: TStringField;
    TBCteCTE_TOMADORCONTATO: TStringField;
    TBCteCTE_TOMADORCPF: TStringField;
    TBCteCTE_TOMADORENDERECO: TStringField;
    TBCteCTE_TOMADORESTADO: TStringField;
    TBCteCTE_TOMADORESTADOCODIGO: TIntegerField;
    TBCteCTE_TOMADORFONE: TStringField;
    TBCteCTE_TOMADORIE: TStringField;
    TBCteCTE_TOMADORNOME: TStringField;
    TBCteCTE_TOMADORNUMERO: TStringField;
    TBCteCTE_TOMADORPAIS: TStringField;
    TBCteCTE_TOMADORPAISCODIGO: TIntegerField;
    TBCteCTE_TOTALCCE: TIntegerField;
    TBCteCTE_TOTALCOMISSAO: TFMTBCDField;
    TBCteCTE_TOTALFCP: TFMTBCDField;
    TBCteCTE_TOTALICMS: TFMTBCDField;
    TBCteCTE_TOTALICMSST: TFMTBCDField;
    TBCteCTE_TOTALICMSUFFIM: TFMTBCDField;
    TBCteCTE_TOTALICMSUFINI: TFMTBCDField;
    TBCteCTE_TOTALTRIBUTOS: TFMTBCDField;
    TBCteCTE_USUARIO: TStringField;
    TBCteCTE_VALORCREDITOICMS: TFMTBCDField;
    TBCteCTE_VALORFRETE: TFMTBCDField;
    TBCteCTE_VALORNOTAS: TFMTBCDField;
    TBCteCTE_VALOROUTROS: TFMTBCDField;
    TBCteCTE_VALORSEGURO: TFMTBCDField;
    TBCteCTE_VALORTOTAL: TFMTBCDField;
    TBCteCTE_VENDEDOR: TIntegerField;
    TBCteICM_DESCRICAO: TStringField;
    TBCteInutilizados: TFDQuery;
    TBCteInutilizadosCIN_ANO: TStringField;
    TBCteInutilizadosCIN_CODIGO: TIntegerField;
    TBCteInutilizadosCIN_DTATUALIZACAO: TDateField;
    TBCteInutilizadosCIN_DTCADASTRO: TDateField;
    TBCteInutilizadosCIN_HRATUALIZACAO: TTimeField;
    TBCteInutilizadosCIN_HRCADASTRO: TTimeField;
    TBCteInutilizadosCIN_JUSTIFICATIVA: TStringField;
    TBCteInutilizadosCIN_MODELO: TIntegerField;
    TBCteInutilizadosCIN_NUMFINAL: TIntegerField;
    TBCteInutilizadosCIN_NUMINICIAL: TIntegerField;
    TBCteInutilizadosCIN_PROTOCOLO: TStringField;
    TBCteInutilizadosCIN_PROTOCOLODH: TStringField;
    TBCteInutilizadosCIN_SERIE: TIntegerField;
    TBCteInutilizadosCIN_USUARIO: TStringField;
    TBCteNotas: TFDQuery;
    TBCteNotasCTN_ALIQICMS: TFMTBCDField;
    TBCteNotasCTN_ALIQICMSST: TFMTBCDField;
    TBCteNotasCTN_BASEICMS: TFMTBCDField;
    TBCteNotasCTN_BASEICMSST: TFMTBCDField;
    TBCteNotasCTN_CFOP: TStringField;
    TBCteNotasCTN_CHAVEACESSO: TStringField;
    TBCteNotasCTN_CNPJREMETENTE: TStringField;
    TBCteNotasCTN_CODIGO: TIntegerField;
    TBCteNotasCTN_CTE: TIntegerField;
    TBCteNotasCTN_DESCRICAODOC: TStringField;
    TBCteNotasCTN_DTEMISSAO: TDateField;
    TBCteNotasCTN_MODELO: TIntegerField;
    TBCteNotasCTN_NUMERO: TIntegerField;
    TBCteNotasCTN_PESO: TFMTBCDField;
    TBCteNotasCTN_SERIE: TIntegerField;
    TBCteNotasCTN_SUFRAMA: TStringField;
    TBCteNotasCTN_TIPONOTA: TStringField;
    TBCteNotasCTN_TIPOOUTROS: TStringField;
    TBCteNotasCTN_TOTALICMS: TFMTBCDField;
    TBCteNotasCTN_TOTALICMSST: TFMTBCDField;
    TBCteNotasCTN_TOTALPRODUTOS: TFMTBCDField;
    TBCteNotasCTN_VALORTOTAL: TFMTBCDField;
    TBCteVeiculos: TFDQuery;
    TBCteVeiculosCTV_CAPACIDADEKG: TFMTBCDField;
    TBCteVeiculosCTV_CAPACIDADEM3: TFMTBCDField;
    TBCteVeiculosCTV_CNPJ: TStringField;
    TBCteVeiculosCTV_CODIGO: TIntegerField;
    TBCteVeiculosCTV_CPF: TStringField;
    TBCteVeiculosCTV_CTE: TIntegerField;
    TBCteVeiculosCTV_ESTADO: TStringField;
    TBCteVeiculosCTV_ESTADOPROPRIETARIO: TStringField;
    TBCteVeiculosCTV_IE: TStringField;
    TBCteVeiculosCTV_NOME: TStringField;
    TBCteVeiculosCTV_PLACA: TStringField;
    TBCteVeiculosCTV_RENAVAM: TStringField;
    TBCteVeiculosCTV_RNTRC: TStringField;
    TBCteVeiculosCTV_TARA: TFMTBCDField;
    TBCteVeiculosCTV_TIPOCARROCERIA: TStringField;
    TBCteVeiculosCTV_TIPOPROPRIEDADE: TStringField;
    TBCteVeiculosCTV_TIPOPROPRIETARIO: TStringField;
    TBCteVeiculosCTV_TIPORODADO: TStringField;
    TBCteVeiculosCTV_TIPOVEICULO: TStringField;
    TBCteVeiculosCTV_VEICULO: TIntegerField;
    TBCteVEN_NOME: TStringField;
    TBCursos: TFDQuery;
    TBCursosCUR_CODIGO: TIntegerField;
    TBCursosCUR_DESCRICAO: TStringField;
    TBCursosCUR_DTATUALIZACAO: TDateField;
    TBCursosCUR_DTCADASTRO: TDateField;
    TBCursosCUR_HRATUALIZACAO: TTimeField;
    TBCursosCUR_HRCADASTRO: TTimeField;
    TBCursosCUR_STATUS: TStringField;
    TBCursosCUR_USUARIO: TStringField;
    TBDeliverys: TFDQuery;
    TBDeliverysCLI_NOME: TStringField;
    TBDeliverysDLV_BAIRRO: TStringField;
    TBDeliverysDLV_CARTAO: TFMTBCDField;
    TBDeliverysDLV_CEP: TStringField;
    TBDeliverysDLV_CIDADE: TStringField;
    TBDeliverysDLV_CIDADECODIGO: TIntegerField;
    TBDeliverysDLV_CLIENTE: TIntegerField;
    TBDeliverysDLV_CODIGO: TIntegerField;
    TBDeliverysDLV_COMPLEMENTO: TStringField;
    TBDeliverysDLV_DESCPORC: TFMTBCDField;
    TBDeliverysDLV_DESCVALOR: TFMTBCDField;
    TBDeliverysDLV_DINHEIRO: TFMTBCDField;
    TBDeliverysDLV_DTATUALIZACAO: TDateField;
    TBDeliverysDLV_DTCADASTRO: TDateField;
    TBDeliverysDLV_ENDERECO: TStringField;
    TBDeliverysDLV_ENTREGADOR: TIntegerField;
    TBDeliverysDLV_ESTADO: TStringField;
    TBDeliverysDLV_ESTADOCODIGO: TIntegerField;
    TBDeliverysDLV_FONE1: TStringField;
    TBDeliverysDLV_FONE2: TStringField;
    TBDeliverysDLV_HRATUALIZACAO: TTimeField;
    TBDeliverysDLV_HRCADASTRO: TTimeField;
    TBDeliverysDLV_MOTIVOCANCELAMENTO: TStringField;
    TBDeliverysDLV_MOTIVOINUTILIZACAO: TStringField;
    TBDeliverysDLV_NUMERO: TStringField;
    TBDeliverysDLV_OBSERVACOES: TMemoField;
    TBDeliverysDLV_RETIRA: TStringField;
    TBDeliverysDLV_SEQUENCIAITEM: TIntegerField;
    TBDeliverysDLV_STATUS: TStringField;
    TBDeliverysDLV_TAXA: TFMTBCDField;
    TBDeliverysDLV_TAXATIPO: TStringField;
    TBDeliverysDLV_TAXAVALOR: TFMTBCDField;
    TBDeliverysDLV_TOTALITENS: TFMTBCDField;
    TBDeliverysDLV_TOTALTAXA: TFMTBCDField;
    TBDeliverysDLV_TROCO: TFMTBCDField;
    TBDeliverysDLV_USUARIO: TStringField;
    TBDeliverysDLV_VALORTOTAL: TFMTBCDField;
    TBDeliverysDLV_VENDEDOR: TIntegerField;
    TBDeliverysDLV_VIAAPP: TStringField;
    TBDeliverysItens: TFDQuery;
    TBDeliverysItensDLI_ALMOXARIFADO: TIntegerField;
    TBDeliverysItensDLI_CODIGO: TIntegerField;
    TBDeliverysItensDLI_COMPLEMENTO: TStringField;
    TBDeliverysItensDLI_DELIVERY: TIntegerField;
    TBDeliverysItensDLI_DESCPORC: TFMTBCDField;
    TBDeliverysItensDLI_DESCVALOR: TFMTBCDField;
    TBDeliverysItensDLI_NOME: TStringField;
    TBDeliverysItensDLI_PRODUTO: TIntegerField;
    TBDeliverysItensDLI_QUANTIDADE: TFMTBCDField;
    TBDeliverysItensDLI_SEQUENCIA: TIntegerField;
    TBDeliverysItensDLI_VALORTOTAL: TFMTBCDField;
    TBDeliverysItensDLI_VALORUNIT: TFMTBCDField;
    TBDeliverysTAX_DESCRICAO: TStringField;
    TBDeliverysVEN_NOME: TStringField;
    TBDeliverysVEN_NOMEENTREGADOR: TStringField;
    TBEmails: TFDQuery;
    TBEmailsASS_DESCRICAO: TStringField;
    TBEmailsCLI_NOME: TStringField;
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
    TBEmailsEMA_ANEXO: TStringField;
    TBEmailsEMA_ANEXO2: TStringField;
    TBEmailsEMA_ANEXO3: TStringField;
    TBEmailsEMA_ASSINATURA: TMemoField;
    TBEmailsEMA_ASSUNTO: TIntegerField;
    TBEmailsEMA_CLIENTE: TIntegerField;
    TBEmailsEMA_CODIGO: TIntegerField;
    TBEmailsEMA_CONFIRMACAO: TStringField;
    TBEmailsEMA_COPIAOCULTA: TStringField;
    TBEmailsEMA_DESTINATARIOS: TStringField;
    TBEmailsEMA_DTATUALIZACAO: TDateField;
    TBEmailsEMA_DTCADASTRO: TDateField;
    TBEmailsEMA_DTULTENVIO: TDateField;
    TBEmailsEMA_EMAILCONTA: TIntegerField;
    TBEmailsEMA_ENVIADO: TStringField;
    TBEmailsEMA_HRATUALIZACAO: TTimeField;
    TBEmailsEMA_HRCADASTRO: TTimeField;
    TBEmailsEMA_HTML: TStringField;
    TBEmailsEMA_MENSAGEM: TMemoField;
    TBEmailsEMA_USUARIO: TStringField;
    TBEmailsEMA_VENDEDOR: TIntegerField;
    TBEmailsEMC_ASSINATURA: TMemoField;
    TBEmailsEMC_CONFIRMACAO: TStringField;
    TBEmailsEMC_EMAIL: TStringField;
    TBEmailsEMC_LOGIN: TStringField;
    TBEmailsEMC_NOME: TStringField;
    TBEmailsEMC_POP: TStringField;
    TBEmailsEMC_POPPORTA: TIntegerField;
    TBEmailsEMC_REPLYTO: TStringField;
    TBEmailsEMC_SENHA: TStringField;
    TBEmailsEMC_SMTP: TStringField;
    TBEmailsEMC_SMTPPORTA: TIntegerField;
    TBEmailsEMC_SSL: TStringField;
    TBEmailsEMC_TLS: TStringField;
    TBEmailsVEN_NOME: TStringField;
    TBEvolucoes: TFDQuery;
    TBEvolucoesCLI_NOME: TStringField;
    TBEvolucoesEVO_CLIENTE: TIntegerField;
    TBEvolucoesEVO_CODIGO: TIntegerField;
    TBEvolucoesEVO_DATA: TDateField;
    TBEvolucoesEVO_DESCRICAO: TMemoField;
    TBEvolucoesEVO_DTATUALIZACAO: TDateField;
    TBEvolucoesEVO_DTCADASTRO: TDateField;
    TBEvolucoesEVO_HORA: TTimeField;
    TBEvolucoesEVO_HRATUALIZACAO: TTimeField;
    TBEvolucoesEVO_HRCADASTRO: TTimeField;
    TBEvolucoesEVO_STATUS: TStringField;
    TBEvolucoesEVO_USUARIO: TStringField;
    TBEvolucoesEVO_VENDEDOR: TIntegerField;
    TBEvolucoesVEN_NOME: TStringField;
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
    TBExercicios: TFDQuery;
    TBExerciciosCLI_NOME: TStringField;
    TBExerciciosEXE_CODIGO: TIntegerField;
    TBExerciciosEXE_DESCRICAO: TStringField;
    TBExerciciosEXE_DTATUALIZACAO: TDateField;
    TBExerciciosEXE_DTCADASTRO: TDateField;
    TBExerciciosEXE_HRATUALIZACAO: TTimeField;
    TBExerciciosEXE_HRCADASTRO: TTimeField;
    TBExerciciosEXE_MATRICULA: TIntegerField;
    TBExerciciosEXE_NOTA: TFMTBCDField;
    TBExerciciosEXE_NOTAREVISAO: TFMTBCDField;
    TBExerciciosEXE_USUARIO: TStringField;
    TBFases: TFDQuery;
    TBFasesFAS_CODIGO: TIntegerField;
    TBFasesFAS_DESCRICAO: TStringField;
    TBFasesFAS_DTATUALIZACAO: TDateField;
    TBFasesFAS_DTCADASTRO: TDateField;
    TBFasesFAS_HRATUALIZACAO: TTimeField;
    TBFasesFAS_HRCADASTRO: TTimeField;
    TBFasesFAS_STATUS: TStringField;
    TBFasesFAS_USUARIO: TStringField;
    TBFeriados: TFDQuery;
    TBFeriadosFRD_DATA: TDateField;
    TBFeriadosFRD_DESCRICAO: TStringField;
    TBFeriadosFRD_DTATUALIZACAO: TDateField;
    TBFeriadosFRD_DTCADASTRO: TDateField;
    TBFeriadosFRD_HRATUALIZACAO: TTimeField;
    TBFeriadosFRD_HRCADASTRO: TTimeField;
    TBFeriadosFRD_USUARIO: TStringField;
    TBForms: TFDQuery;
    TBFormsFMS_CODIGO: TIntegerField;
    TBFormsFMS_FORM: TStringField;
    TBFormsFMS_HEIGHT: TIntegerField;
    TBFormsFMS_LEFT: TIntegerField;
    TBFormsFMS_TOP: TIntegerField;
    TBFormsFMS_USUARIO: TIntegerField;
    TBFormsFMS_WIDTH: TIntegerField;
    TBForos: TFDQuery;
    TBForosFRS_BAIRRO: TStringField;
    TBForosFRS_CEP: TStringField;
    TBForosFRS_CIDADE: TStringField;
    TBForosFRS_CIDADECODIGO: TIntegerField;
    TBForosFRS_CODIGO: TIntegerField;
    TBForosFRS_COMPLEMENTO: TStringField;
    TBForosFRS_DTATUALIZACAO: TDateField;
    TBForosFRS_DTCADASTRO: TDateField;
    TBForosFRS_ENDERECO: TStringField;
    TBForosFRS_ESTADO: TStringField;
    TBForosFRS_ESTADOCODIGO: TIntegerField;
    TBForosFRS_HRATUALIZACAO: TTimeField;
    TBForosFRS_HRCADASTRO: TTimeField;
    TBForosFRS_NOME: TStringField;
    TBForosFRS_NUMERO: TStringField;
    TBForosFRS_SIGLA: TStringField;
    TBForosFRS_USUARIO: TStringField;
    TBFrotas: TFDQuery;
    TBFrotasFRO_ANOFAB: TStringField;
    TBFrotasFRO_ANOMOD: TStringField;
    TBFrotasFRO_CAPACIDADEKG: TFMTBCDField;
    TBFrotasFRO_CAPACIDADEM3: TFMTBCDField;
    TBFrotasFRO_CIDADE: TStringField;
    TBFrotasFRO_CNPJ: TStringField;
    TBFrotasFRO_CODIGO: TIntegerField;
    TBFrotasFRO_CPF: TStringField;
    TBFrotasFRO_DESCRICAO: TStringField;
    TBFrotasFRO_DTATUALIZACAO: TDateField;
    TBFrotasFRO_DTCADASTRO: TDateField;
    TBFrotasFRO_ESTADO: TStringField;
    TBFrotasFRO_ESTADOPROPRIETARIO: TStringField;
    TBFrotasFRO_HRATUALIZACAO: TTimeField;
    TBFrotasFRO_HRCADASTRO: TTimeField;
    TBFrotasFRO_IE: TStringField;
    TBFrotasFRO_MARCA: TStringField;
    TBFrotasFRO_MODELO: TStringField;
    TBFrotasFRO_NOME: TStringField;
    TBFrotasFRO_PLACA: TStringField;
    TBFrotasFRO_RENAVAM: TStringField;
    TBFrotasFRO_RNTRC: TStringField;
    TBFrotasFRO_STATUS: TStringField;
    TBFrotasFRO_TARA: TFMTBCDField;
    TBFrotasFRO_TIPOCARROCERIA: TStringField;
    TBFrotasFRO_TIPOPROPRIEDADE: TStringField;
    TBFrotasFRO_TIPOPROPRIETARIO: TStringField;
    TBFrotasFRO_TIPORODADO: TStringField;
    TBFrotasFRO_TIPOVEICULO: TStringField;
    TBFrotasFRO_USUARIO: TStringField;
    TBGnre: TFDQuery;
    TBGnreGNR_CHAVEACESSO: TStringField;
    TBGnreGNR_CODIGO: TIntegerField;
    TBGnreGNR_CODIGOBARRAS: TStringField;
    TBGnreGNR_CONTROLE: TStringField;
    TBGnreGNR_CONVENIO: TStringField;
    TBGnreGNR_DESTCIDADE: TStringField;
    TBGnreGNR_DESTCIDADECODIGO: TIntegerField;
    TBGnreGNR_DESTDOCUMENTO: TStringField;
    TBGnreGNR_DESTDOCUMENTOTIPO: TStringField;
    TBGnreGNR_DESTNOME: TStringField;
    TBGnreGNR_DTATUALIZACAO: TDateField;
    TBGnreGNR_DTCADASTRO: TDateField;
    TBGnreGNR_DTLIMITE: TDateField;
    TBGnreGNR_DTPAGAMENTO: TDateField;
    TBGnreGNR_DTVENCIMENTO: TDateField;
    TBGnreGNR_EMITCEP: TStringField;
    TBGnreGNR_EMITCIDADECODIGO: TIntegerField;
    TBGnreGNR_EMITDOCUMENTO: TStringField;
    TBGnreGNR_EMITDOCUMENTOTIPO: TStringField;
    TBGnreGNR_EMITENDERECO: TStringField;
    TBGnreGNR_EMITESTADO: TStringField;
    TBGnreGNR_EMITFONE: TStringField;
    TBGnreGNR_EMITIENAUFFAVORECIDA: TStringField;
    TBGnreGNR_EMITRAZAO: TStringField;
    TBGnreGNR_ESTADOFAVORECIDO: TStringField;
    TBGnreGNR_HRATUALIZACAO: TTimeField;
    TBGnreGNR_HRCADASTRO: TTimeField;
    TBGnreGNR_INFOCOMPLEMENTAR: TStringField;
    TBGnreGNR_MESANOREFERENCIA: TStringField;
    TBGnreGNR_NUMDOCTO: TIntegerField;
    TBGnreGNR_PARCELA: TIntegerField;
    TBGnreGNR_PERIODOREFERENCIA: TStringField;
    TBGnreGNR_PRODUTO: TStringField;
    TBGnreGNR_PROTOCOLO: TStringField;
    TBGnreGNR_RECEITA: TStringField;
    TBGnreGNR_RECIBO: TStringField;
    TBGnreGNR_REPNUMERICA: TStringField;
    TBGnreGNR_STATUS: TStringField;
    TBGnreGNR_TIPODOCTOORIGEM: TStringField;
    TBGnreGNR_USUARIO: TStringField;
    TBGnreGNR_VALORATUALIZACAO: TFMTBCDField;
    TBGnreGNR_VALORJUROS: TFMTBCDField;
    TBGnreGNR_VALORMULTA: TFMTBCDField;
    TBGnreGNR_VALORPRINCIPAL: TFMTBCDField;
    TBGnreGNR_VALORTOTAL: TFMTBCDField;
    TBIasmin: TFDQuery;
    TBIasminIAS_CHAVEAPI: TStringField;
    TBIasminIAS_CODIGO: TIntegerField;
    TBIasminIAS_CONTEXTO: TStringField;
    TBIasminIAS_DTATUALIZACAO: TDateField;
    TBIasminIAS_ESFORCO: TStringField;
    TBIasminIAS_HRATUALIZACAO: TTimeField;
    TBIasminIAS_MAXLINHAS: TIntegerField;
    TBIasminIAS_MODELO: TStringField;
    TBIasminIAS_PASSWORD: TStringField;
    TBIasminIAS_PASTACONTEXTO: TStringField;
    TBIasminIAS_PROVEDOR: TStringField;
    TBIasminIAS_TEMPOLIMITECONSULTA: TIntegerField;
    TBIasminIAS_TEMPOLIMITEIA: TIntegerField;
    TBIasminIAS_URLBASE: TStringField;
    TBIasminIAS_USER: TStringField;
    TBIasminIAS_USUARIO: TStringField;
    TBIasminLogs: TFDQuery;
    TBIasminLogsIAL_CACHE: TIntegerField;
    TBIasminLogsIAL_CODIGO: TIntegerField;
    TBIasminLogsIAL_DTCADASTRO: TDateField;
    TBIasminLogsIAL_ENTRADA: TIntegerField;
    TBIasminLogsIAL_ERRO: TMemoField;
    TBIasminLogsIAL_ETAPA: TStringField;
    TBIasminLogsIAL_HRCADASTRO: TTimeField;
    TBIasminLogsIAL_MODELO: TStringField;
    TBIasminLogsIAL_PERGUNTA: TMemoField;
    TBIasminLogsIAL_SAIDA: TIntegerField;
    TBIasminLogsIAL_SQL: TMemoField;
    TBIasminLogsIAL_USUARIO: TStringField;
    TBImoveis: TFDQuery;
    TBImoveisCLI_NOME: TStringField;
    TBImoveisIMO_AREALOCALIZACAO: TStringField;
    TBImoveisIMO_BAIRRO: TStringField;
    TBImoveisIMO_CEP: TStringField;
    TBImoveisIMO_CIDADE: TStringField;
    TBImoveisIMO_CIDADECODIGO: TIntegerField;
    TBImoveisIMO_CIDADECODIGODIMOB: TIntegerField;
    TBImoveisIMO_CLIENTE: TIntegerField;
    TBImoveisIMO_CODIGO: TIntegerField;
    TBImoveisIMO_COMISSAO: TFMTBCDField;
    TBImoveisIMO_COMPLEMENTO: TStringField;
    TBImoveisIMO_CONTRATO: TIntegerField;
    TBImoveisIMO_DESCQTDE: TIntegerField;
    TBImoveisIMO_DESCRICAO: TStringField;
    TBImoveisIMO_DESCVALOR: TFMTBCDField;
    TBImoveisIMO_DIAPAGAMENTO: TIntegerField;
    TBImoveisIMO_DTATUALIZACAO: TDateField;
    TBImoveisIMO_DTCADASTRO: TDateField;
    TBImoveisIMO_ENDERECO: TStringField;
    TBImoveisIMO_ESTADO: TStringField;
    TBImoveisIMO_FINALIDADE: TStringField;
    TBImoveisIMO_HRATUALIZACAO: TTimeField;
    TBImoveisIMO_HRCADASTRO: TTimeField;
    TBImoveisIMO_NUMERO: TStringField;
    TBImoveisIMO_OBSERVACOES: TMemoField;
    TBImoveisIMO_RESERVADO: TStringField;
    TBImoveisIMO_STATUS: TStringField;
    TBImoveisIMO_TIPOIMOVEL: TIntegerField;
    TBImoveisIMO_TIPONEGOCIO: TStringField;
    TBImoveisIMO_TIPOPAGAMENTO: TStringField;
    TBImoveisIMO_USUARIO: TStringField;
    TBImoveisIMO_VALORALUGUEL: TFMTBCDField;
    TBImoveisIMT_DESCRICAO: TStringField;
    TBImoveisTipos: TFDQuery;
    TBImoveisTiposIMT_CODIGO: TIntegerField;
    TBImoveisTiposIMT_DESCRICAO: TStringField;
    TBImoveisTiposIMT_DTATUALIZACAO: TDateField;
    TBImoveisTiposIMT_DTCADASTRO: TDateField;
    TBImoveisTiposIMT_HRATUALIZACAO: TTimeField;
    TBImoveisTiposIMT_HRCADASTRO: TTimeField;
    TBImoveisTiposIMT_STATUS: TStringField;
    TBImoveisTiposIMT_USUARIO: TStringField;
    TBLocacoes: TFDQuery;
    TBLocacoesCLI_NOME: TStringField;
    TBLocacoesLOC_ABERTOPOR: TStringField;
    TBLocacoesLOC_BAIXADOPOR: TStringField;
    TBLocacoesLOC_CLIENTE: TIntegerField;
    TBLocacoesLOC_CODIGO: TIntegerField;
    TBLocacoesLOC_DATA: TDateField;
    TBLocacoesLOC_DATADEVOLUCAO: TDateField;
    TBLocacoesLOC_DATAPREVISAO: TDateField;
    TBLocacoesLOC_DTATUALIZACAO: TDateField;
    TBLocacoesLOC_DTCADASTRO: TDateField;
    TBLocacoesLOC_HORA: TStringField;
    TBLocacoesLOC_HORADEVOLUCAO: TStringField;
    TBLocacoesLOC_HRATUALIZACAO: TTimeField;
    TBLocacoesLOC_HRCADASTRO: TTimeField;
    TBLocacoesLOC_OBJETO: TIntegerField;
    TBLocacoesLOC_PAGO: TStringField;
    TBLocacoesLOC_STATUS: TStringField;
    TBLocacoesLOC_USUARIO: TStringField;
    TBLocacoesLOC_VALORLOCACAO: TFMTBCDField;
    TBLocacoesLOC_VALOROBJETO: TFMTBCDField;
    TBLocacoesLOC_VALORPAGO: TFMTBCDField;
    TBLocacoesLOC_VALORTOTAL: TFMTBCDField;
    TBLocacoesOBJ_DESCRICAO: TStringField;
    TBLocacoesOBJ_SERIAL: TStringField;
    TBLocais: TFDQuery;
    TBLocaisLCA_CODIGO: TIntegerField;
    TBLocaisLCA_CONVENIADO: TStringField;
    TBLocaisLCA_DESCRICAO: TStringField;
    TBLocaisLCA_DTATUALIZACAO: TDateField;
    TBLocaisLCA_DTCADASTRO: TDateField;
    TBLocaisLCA_HRATUALIZACAO: TTimeField;
    TBLocaisLCA_HRCADASTRO: TTimeField;
    TBLocaisLCA_USUARIO: TStringField;
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
    TBMatriculas: TFDQuery;
    TBMatriculasCLI_NOME: TStringField;
    TBMatriculasMAT_APROVADO: TStringField;
    TBMatriculasMAT_CLIENTE: TIntegerField;
    TBMatriculasMAT_CODIGO: TIntegerField;
    TBMatriculasMAT_CONCEITODISCURSO: TStringField;
    TBMatriculasMAT_CONCEITOEXERCICIOS: TStringField;
    TBMatriculasMAT_CONCEITOGERAL: TStringField;
    TBMatriculasMAT_CONCEITOLITERATURA: TStringField;
    TBMatriculasMAT_CONTABILIZAR: TStringField;
    TBMatriculasMAT_DESISTENCIA: TIntegerField;
    TBMatriculasMAT_DTATUALIZACAO: TDateField;
    TBMatriculasMAT_DTCADASTRO: TDateField;
    TBMatriculasMAT_HRATUALIZACAO: TTimeField;
    TBMatriculasMAT_HRCADASTRO: TTimeField;
    TBMatriculasMAT_MEDIAEXERCICIOS: TFMTBCDField;
    TBMatriculasMAT_MEDIAFINAL: TFMTBCDField;
    TBMatriculasMAT_OBSERVACOES: TMemoField;
    TBMatriculasMAT_STATUS: TStringField;
    TBMatriculasMAT_TIPO: TStringField;
    TBMatriculasMAT_TIPOMATRICULA: TStringField;
    TBMatriculasMAT_TURMA: TIntegerField;
    TBMatriculasMAT_USUARIO: TStringField;
    TBMatriculasMAT_VENDA: TIntegerField;
    TBMatriculasMAT_VENDAMATERIAL: TIntegerField;
    TBMatriculasMAT_VENDEDOR: TIntegerField;
    TBMatriculasMOT_DESCRICAO: TStringField;
    TBMatriculasTUR_DESCRICAO: TStringField;
    TBMatriculasVEN_NOME: TStringField;
    TBMdfe: TFDQuery;
    TBMdfeCarrega: TFDQuery;
    TBMdfeCarregaMDC_CIDADE: TStringField;
    TBMdfeCarregaMDC_CIDADECODIGO: TIntegerField;
    TBMdfeCarregaMDC_CODIGO: TIntegerField;
    TBMdfeCarregaMDC_MDFE: TIntegerField;
    TBMdfeDescarrega: TFDQuery;
    TBMdfeDescarregaMDD_CIDADE: TStringField;
    TBMdfeDescarregaMDD_CIDADECODIGO: TIntegerField;
    TBMdfeDescarregaMDD_CODIGO: TIntegerField;
    TBMdfeDescarregaMDD_MDFE: TIntegerField;
    TBMdfeDocs: TFDQuery;
    TBMdfeDocsMDD_CIDADE: TStringField;
    TBMdfeDocsMFD_CHAVEACESSO: TStringField;
    TBMdfeDocsMFD_CODIGO: TIntegerField;
    TBMdfeDocsMFD_CODIGOBARRAS: TStringField;
    TBMdfeDocsMFD_MDFE: TIntegerField;
    TBMdfeDocsMFD_MDFEDESCARREGA: TIntegerField;
    TBMdfeDocsMFD_TIPODOC: TStringField;
    TBMdfeMDF_AERONAVEMAT: TStringField;
    TBMdfeMDF_AERONAVENAC: TStringField;
    TBMdfeMDF_AEROPORTODES: TStringField;
    TBMdfeMDF_AEROPORTOEMB: TStringField;
    TBMdfeMDF_CHAVEACESSO: TStringField;
    TBMdfeMDF_CIDADEENC: TStringField;
    TBMdfeMDF_CIDADEENCCODIGO: TIntegerField;
    TBMdfeMDF_CIOT: TStringField;
    TBMdfeMDF_CLASSFISCAL: TStringField;
    TBMdfeMDF_CLIENTE: TIntegerField;
    TBMdfeMDF_CNPJ: TStringField;
    TBMdfeMDF_CODIGO: TIntegerField;
    TBMdfeMDF_CODIGOBARRAS: TStringField;
    TBMdfeMDF_CODIGONUMERICO: TIntegerField;
    TBMdfeMDF_CONSULTADA: TStringField;
    TBMdfeMDF_CPF: TStringField;
    TBMdfeMDF_DTATUALIZACAO: TDateField;
    TBMdfeMDF_DTCADASTRO: TDateField;
    TBMdfeMDF_DTEMISSAO: TDateField;
    TBMdfeMDF_DTENC: TDateField;
    TBMdfeMDF_ESTADOENC: TStringField;
    TBMdfeMDF_ESTADOENCCODIGO: TIntegerField;
    TBMdfeMDF_ESTADOFIM: TStringField;
    TBMdfeMDF_ESTADOINI: TStringField;
    TBMdfeMDF_HRATUALIZACAO: TTimeField;
    TBMdfeMDF_HRCADASTRO: TTimeField;
    TBMdfeMDF_HREMISSAO: TTimeField;
    TBMdfeMDF_INFOADICFISCO: TMemoField;
    TBMdfeMDF_LOCALCARREGACEP: TStringField;
    TBMdfeMDF_LOCALCARREGALAT: TSingleField;
    TBMdfeMDF_LOCALCARREGALON: TSingleField;
    TBMdfeMDF_LOCALDESCARREGACEP: TStringField;
    TBMdfeMDF_LOCALDESCARREGALAT: TSingleField;
    TBMdfeMDF_LOCALDESCARREGALON: TSingleField;
    TBMdfeMDF_MODAL: TStringField;
    TBMdfeMDF_MODELO: TIntegerField;
    TBMdfeMDF_MOTIVOCANCELAMENTO: TStringField;
    TBMdfeMDF_NOME: TStringField;
    TBMdfeMDF_OBSERVACOES: TMemoField;
    TBMdfeMDF_PESOBRUTO: TFMTBCDField;
    TBMdfeMDF_PRODUTOPREDOM: TStringField;
    TBMdfeMDF_PROTOCOLO: TStringField;
    TBMdfeMDF_PROTOCOLOCANC: TStringField;
    TBMdfeMDF_PROTOCOLOCANCDH: TStringField;
    TBMdfeMDF_PROTOCOLODH: TStringField;
    TBMdfeMDF_PROTOCOLOENC: TStringField;
    TBMdfeMDF_PROTOCOLOENCDH: TStringField;
    TBMdfeMDF_QTDECTE: TIntegerField;
    TBMdfeMDF_QTDEMDFE: TIntegerField;
    TBMdfeMDF_QTDENFE: TIntegerField;
    TBMdfeMDF_RCAPACIDADEKG: TFMTBCDField;
    TBMdfeMDF_RCAPACIDADEM3: TFMTBCDField;
    TBMdfeMDF_RCNPJ: TStringField;
    TBMdfeMDF_RCODIGO: TIntegerField;
    TBMdfeMDF_RCPF: TStringField;
    TBMdfeMDF_RECIBO: TStringField;
    TBMdfeMDF_RECIBODH: TStringField;
    TBMdfeMDF_RESTADO: TStringField;
    TBMdfeMDF_RESTADOPROPRIETARIO: TStringField;
    TBMdfeMDF_RIE: TStringField;
    TBMdfeMDF_RNOME: TStringField;
    TBMdfeMDF_RNTRC: TStringField;
    TBMdfeMDF_RPLACA: TStringField;
    TBMdfeMDF_RRENAVAM: TStringField;
    TBMdfeMDF_RRNTRC: TStringField;
    TBMdfeMDF_RTARA: TFMTBCDField;
    TBMdfeMDF_RTIPOCARROCERIA: TStringField;
    TBMdfeMDF_RTIPOPROPRIETARIO: TStringField;
    TBMdfeMDF_SEGURADORA: TIntegerField;
    TBMdfeMDF_SEGURADORACNPJ: TStringField;
    TBMdfeMDF_SEGURADORANOME: TStringField;
    TBMdfeMDF_SEGURO: TStringField;
    TBMdfeMDF_SEGUROAPOLICE: TStringField;
    TBMdfeMDF_SEGUROAVERBACAO: TStringField;
    TBMdfeMDF_SEGUROCNPJ: TStringField;
    TBMdfeMDF_SEGUROCPF: TStringField;
    TBMdfeMDF_SERIE: TIntegerField;
    TBMdfeMDF_STATUS: TStringField;
    TBMdfeMDF_TCAPACIDADEKG: TFMTBCDField;
    TBMdfeMDF_TCAPACIDADEM3: TFMTBCDField;
    TBMdfeMDF_TCNPJ: TStringField;
    TBMdfeMDF_TCODIGO: TIntegerField;
    TBMdfeMDF_TCPF: TStringField;
    TBMdfeMDF_TESTADO: TStringField;
    TBMdfeMDF_TESTADOPROPRIETARIO: TStringField;
    TBMdfeMDF_TIE: TStringField;
    TBMdfeMDF_TIPOCARGA: TStringField;
    TBMdfeMDF_TIPOEMISSAO: TStringField;
    TBMdfeMDF_TIPOEMITENTE: TStringField;
    TBMdfeMDF_TIPOMEDIDA: TStringField;
    TBMdfeMDF_TIPOTRANSPORTADOR: TStringField;
    TBMdfeMDF_TNOME: TStringField;
    TBMdfeMDF_TPLACA: TStringField;
    TBMdfeMDF_TRENAVAM: TStringField;
    TBMdfeMDF_TRNTRC: TStringField;
    TBMdfeMDF_TTARA: TFMTBCDField;
    TBMdfeMDF_TTIPOCARROCERIA: TStringField;
    TBMdfeMDF_TTIPOPROPRIETARIO: TStringField;
    TBMdfeMDF_TTIPORODADO: TStringField;
    TBMdfeMDF_USUARIO: TStringField;
    TBMdfeMDF_VALORCARGA: TFMTBCDField;
    TBMdfeMDF_VOODATA: TDateField;
    TBMdfeMDF_VOONUMERO: TStringField;
    TBMdfeMotoristas: TFDQuery;
    TBMdfeMotoristasMDM_CODIGO: TIntegerField;
    TBMdfeMotoristasMDM_CPF: TStringField;
    TBMdfeMotoristasMDM_MDFE: TIntegerField;
    TBMdfeMotoristasMDM_NOME: TStringField;
    TBMdfePercursos: TFDQuery;
    TBMdfePercursosMDP_CODIGO: TIntegerField;
    TBMdfePercursosMDP_ESTADO: TStringField;
    TBMdfePercursosMDP_MDFE: TIntegerField;
    TBMedicamentos: TFDQuery;
    TBMedicamentosMTO_CODIGO: TIntegerField;
    TBMedicamentosMTO_DTATUALIZACAO: TDateField;
    TBMedicamentosMTO_DTCADASTRO: TDateField;
    TBMedicamentosMTO_HRATUALIZACAO: TTimeField;
    TBMedicamentosMTO_HRCADASTRO: TTimeField;
    TBMedicamentosMTO_NOME: TStringField;
    TBMedicamentosMTO_STATUS: TStringField;
    TBMedicamentosMTO_USUARIO: TStringField;
    TBMedicoes: TFDQuery;
    TBMedicoesCLI_NOME: TStringField;
    TBMedicoesMED_BATIMENTOS: TIntegerField;
    TBMedicoesMED_CLIENTE: TIntegerField;
    TBMedicoesMED_CODIGO: TIntegerField;
    TBMedicoesMED_DTATUALIZACAO: TDateField;
    TBMedicoesMED_DTCADASTRO: TDateField;
    TBMedicoesMED_GLICEMIA: TIntegerField;
    TBMedicoesMED_HRATUALIZACAO: TTimeField;
    TBMedicoesMED_HRCADASTRO: TTimeField;
    TBMedicoesMED_PERIODO: TStringField;
    TBMedicoesMED_PESO: TFMTBCDField;
    TBMedicoesMED_PRESSAO: TStringField;
    TBMedicoesMED_SATURACAO: TIntegerField;
    TBMedicoesMED_TEMPERATURA: TCurrencyField;
    TBMedicoesMED_USUARIO: TStringField;
    TBMensagens: TFDQuery;
    TBMensagensMEN_ASSUNTO: TStringField;
    TBMensagensMEN_CODIGO: TIntegerField;
    TBMensagensMEN_DATA: TDateField;
    TBMensagensMEN_DESTINATARIOS: TStringField;
    TBMensagensMEN_HORA: TTimeField;
    TBMensagensMEN_LIDA: TStringField;
    TBMensagensMEN_MENSAGEM: TMemoField;
    TBMensagensMEN_REMETENTE: TIntegerField;
    TBMensagensMEN_TIPO: TStringField;
    TBMensalidades: TFDQuery;
    TBMensalidadesCLI_NOME: TStringField;
    TBMensalidadesCON_NOME: TStringField;
    TBMensalidadesMNS_CLIENTE: TIntegerField;
    TBMensalidadesMNS_CODIGO: TIntegerField;
    TBMensalidadesMNS_CONTA: TIntegerField;
    TBMensalidadesMNS_DESCRICAO: TStringField;
    TBMensalidadesMNS_DTATUALIZACAO: TDateField;
    TBMensalidadesMNS_DTCADASTRO: TDateField;
    TBMensalidadesMNS_HRATUALIZACAO: TTimeField;
    TBMensalidadesMNS_HRCADASTRO: TTimeField;
    TBMensalidadesMNS_PERIODO: TStringField;
    TBMensalidadesMNS_RECEITA: TIntegerField;
    TBMensalidadesMNS_STATUS: TStringField;
    TBMensalidadesMNS_TIPODOCTO: TStringField;
    TBMensalidadesMNS_USUARIO: TStringField;
    TBMensalidadesMNS_VALOR: TFMTBCDField;
    TBMensalidadesMNS_VENCIMENTO: TIntegerField;
    TBMensalidadesREC_DESCRICAO: TStringField;
    TBMotivos: TFDQuery;
    TBMotivosMOT_CODIGO: TIntegerField;
    TBMotivosMOT_DESCRICAO: TStringField;
    TBMotivosMOT_DTATUALIZACAO: TDateField;
    TBMotivosMOT_DTCADASTRO: TDateField;
    TBMotivosMOT_HRATUALIZACAO: TTimeField;
    TBMotivosMOT_HRCADASTRO: TTimeField;
    TBMotivosMOT_STATUS: TStringField;
    TBMotivosMOT_USUARIO: TStringField;
    TBObjetos: TFDQuery;
    TBObjetosCLS_DESCRICAO: TStringField;
    TBObjetosLOC_DATA: TDateField;
    TBObjetosLOC_DATADEVOLUCAO: TDateField;
    TBObjetosLOC_DATAPREVISAO: TDateField;
    TBObjetosMAR_DESCRICAO: TStringField;
    TBObjetosOBJ_CAPACIDADE: TFMTBCDField;
    TBObjetosOBJ_CLASSE: TIntegerField;
    TBObjetosOBJ_CODIGO: TIntegerField;
    TBObjetosOBJ_DESCRICAO: TStringField;
    TBObjetosOBJ_DTATUALIZACAO: TDateField;
    TBObjetosOBJ_DTCADASTRO: TDateField;
    TBObjetosOBJ_HRATUALIZACAO: TTimeField;
    TBObjetosOBJ_HRCADASTRO: TTimeField;
    TBObjetosOBJ_LOCACAO: TIntegerField;
    TBObjetosOBJ_LOCADO: TStringField;
    TBObjetosOBJ_MARCA: TIntegerField;
    TBObjetosOBJ_MODELO: TStringField;
    TBObjetosOBJ_OBSERVACOES: TMemoField;
    TBObjetosOBJ_SERIAL: TStringField;
    TBObjetosOBJ_STATUS: TStringField;
    TBObjetosOBJ_UNIDADE: TStringField;
    TBObjetosOBJ_USUARIO: TStringField;
    TBObjetosOBJ_VALOR: TFMTBCDField;
    TBObjetosOBJ_VALORLOCACAO: TFMTBCDField;
    TBObjetosUNI_DESCRICAO: TStringField;
    TBOdontogramas: TFDQuery;
    TBOdontogramasODO_CLIENTE: TIntegerField;
    TBOdontogramasODO_CODIGO: TIntegerField;
    TBOdontogramasODO_D11: TStringField;
    TBOdontogramasODO_D11A: TIntegerField;
    TBOdontogramasODO_D11B: TIntegerField;
    TBOdontogramasODO_D11C: TIntegerField;
    TBOdontogramasODO_D11D: TIntegerField;
    TBOdontogramasODO_D11E: TIntegerField;
    TBOdontogramasODO_D12: TStringField;
    TBOdontogramasODO_D12A: TIntegerField;
    TBOdontogramasODO_D12B: TIntegerField;
    TBOdontogramasODO_D12C: TIntegerField;
    TBOdontogramasODO_D12D: TIntegerField;
    TBOdontogramasODO_D12E: TIntegerField;
    TBOdontogramasODO_D13: TStringField;
    TBOdontogramasODO_D13A: TIntegerField;
    TBOdontogramasODO_D13B: TIntegerField;
    TBOdontogramasODO_D13C: TIntegerField;
    TBOdontogramasODO_D13D: TIntegerField;
    TBOdontogramasODO_D13E: TIntegerField;
    TBOdontogramasODO_D14: TStringField;
    TBOdontogramasODO_D14A: TIntegerField;
    TBOdontogramasODO_D14B: TIntegerField;
    TBOdontogramasODO_D14C: TIntegerField;
    TBOdontogramasODO_D14D: TIntegerField;
    TBOdontogramasODO_D14E: TIntegerField;
    TBOdontogramasODO_D15: TStringField;
    TBOdontogramasODO_D15A: TIntegerField;
    TBOdontogramasODO_D15B: TIntegerField;
    TBOdontogramasODO_D15C: TIntegerField;
    TBOdontogramasODO_D15D: TIntegerField;
    TBOdontogramasODO_D15E: TIntegerField;
    TBOdontogramasODO_D16: TStringField;
    TBOdontogramasODO_D16A: TIntegerField;
    TBOdontogramasODO_D16B: TIntegerField;
    TBOdontogramasODO_D16C: TIntegerField;
    TBOdontogramasODO_D16D: TIntegerField;
    TBOdontogramasODO_D16E: TIntegerField;
    TBOdontogramasODO_D17: TStringField;
    TBOdontogramasODO_D17A: TIntegerField;
    TBOdontogramasODO_D17B: TIntegerField;
    TBOdontogramasODO_D17C: TIntegerField;
    TBOdontogramasODO_D17D: TIntegerField;
    TBOdontogramasODO_D17E: TIntegerField;
    TBOdontogramasODO_D18: TStringField;
    TBOdontogramasODO_D18A: TIntegerField;
    TBOdontogramasODO_D18B: TIntegerField;
    TBOdontogramasODO_D18C: TIntegerField;
    TBOdontogramasODO_D18D: TIntegerField;
    TBOdontogramasODO_D18E: TIntegerField;
    TBOdontogramasODO_D21: TStringField;
    TBOdontogramasODO_D21A: TIntegerField;
    TBOdontogramasODO_D21B: TIntegerField;
    TBOdontogramasODO_D21C: TIntegerField;
    TBOdontogramasODO_D21D: TIntegerField;
    TBOdontogramasODO_D21E: TIntegerField;
    TBOdontogramasODO_D22: TStringField;
    TBOdontogramasODO_D22A: TIntegerField;
    TBOdontogramasODO_D22B: TIntegerField;
    TBOdontogramasODO_D22C: TIntegerField;
    TBOdontogramasODO_D22D: TIntegerField;
    TBOdontogramasODO_D22E: TIntegerField;
    TBOdontogramasODO_D23: TStringField;
    TBOdontogramasODO_D23A: TIntegerField;
    TBOdontogramasODO_D23B: TIntegerField;
    TBOdontogramasODO_D23C: TIntegerField;
    TBOdontogramasODO_D23D: TIntegerField;
    TBOdontogramasODO_D23E: TIntegerField;
    TBOdontogramasODO_D24: TStringField;
    TBOdontogramasODO_D24A: TIntegerField;
    TBOdontogramasODO_D24B: TIntegerField;
    TBOdontogramasODO_D24C: TIntegerField;
    TBOdontogramasODO_D24D: TIntegerField;
    TBOdontogramasODO_D24E: TIntegerField;
    TBOdontogramasODO_D25: TStringField;
    TBOdontogramasODO_D25A: TIntegerField;
    TBOdontogramasODO_D25B: TIntegerField;
    TBOdontogramasODO_D25C: TIntegerField;
    TBOdontogramasODO_D25D: TIntegerField;
    TBOdontogramasODO_D25E: TIntegerField;
    TBOdontogramasODO_D26: TStringField;
    TBOdontogramasODO_D26A: TIntegerField;
    TBOdontogramasODO_D26B: TIntegerField;
    TBOdontogramasODO_D26C: TIntegerField;
    TBOdontogramasODO_D26D: TIntegerField;
    TBOdontogramasODO_D26E: TIntegerField;
    TBOdontogramasODO_D27: TStringField;
    TBOdontogramasODO_D27A: TIntegerField;
    TBOdontogramasODO_D27B: TIntegerField;
    TBOdontogramasODO_D27C: TIntegerField;
    TBOdontogramasODO_D27D: TIntegerField;
    TBOdontogramasODO_D27E: TIntegerField;
    TBOdontogramasODO_D28: TStringField;
    TBOdontogramasODO_D28A: TIntegerField;
    TBOdontogramasODO_D28B: TIntegerField;
    TBOdontogramasODO_D28C: TIntegerField;
    TBOdontogramasODO_D28D: TIntegerField;
    TBOdontogramasODO_D28E: TIntegerField;
    TBOdontogramasODO_D31: TStringField;
    TBOdontogramasODO_D31A: TIntegerField;
    TBOdontogramasODO_D31B: TIntegerField;
    TBOdontogramasODO_D31C: TIntegerField;
    TBOdontogramasODO_D31D: TIntegerField;
    TBOdontogramasODO_D31E: TIntegerField;
    TBOdontogramasODO_D32: TStringField;
    TBOdontogramasODO_D32A: TIntegerField;
    TBOdontogramasODO_D32B: TIntegerField;
    TBOdontogramasODO_D32C: TIntegerField;
    TBOdontogramasODO_D32D: TIntegerField;
    TBOdontogramasODO_D32E: TIntegerField;
    TBOdontogramasODO_D33: TStringField;
    TBOdontogramasODO_D33A: TIntegerField;
    TBOdontogramasODO_D33B: TIntegerField;
    TBOdontogramasODO_D33C: TIntegerField;
    TBOdontogramasODO_D33D: TIntegerField;
    TBOdontogramasODO_D33E: TIntegerField;
    TBOdontogramasODO_D34: TStringField;
    TBOdontogramasODO_D34A: TIntegerField;
    TBOdontogramasODO_D34B: TIntegerField;
    TBOdontogramasODO_D34C: TIntegerField;
    TBOdontogramasODO_D34D: TIntegerField;
    TBOdontogramasODO_D34E: TIntegerField;
    TBOdontogramasODO_D35: TStringField;
    TBOdontogramasODO_D35A: TIntegerField;
    TBOdontogramasODO_D35B: TIntegerField;
    TBOdontogramasODO_D35C: TIntegerField;
    TBOdontogramasODO_D35D: TIntegerField;
    TBOdontogramasODO_D35E: TIntegerField;
    TBOdontogramasODO_D36: TStringField;
    TBOdontogramasODO_D36A: TIntegerField;
    TBOdontogramasODO_D36B: TIntegerField;
    TBOdontogramasODO_D36C: TIntegerField;
    TBOdontogramasODO_D36D: TIntegerField;
    TBOdontogramasODO_D36E: TIntegerField;
    TBOdontogramasODO_D37: TStringField;
    TBOdontogramasODO_D37A: TIntegerField;
    TBOdontogramasODO_D37B: TIntegerField;
    TBOdontogramasODO_D37C: TIntegerField;
    TBOdontogramasODO_D37D: TIntegerField;
    TBOdontogramasODO_D37E: TIntegerField;
    TBOdontogramasODO_D38: TStringField;
    TBOdontogramasODO_D38A: TIntegerField;
    TBOdontogramasODO_D38B: TIntegerField;
    TBOdontogramasODO_D38C: TIntegerField;
    TBOdontogramasODO_D38D: TIntegerField;
    TBOdontogramasODO_D38E: TIntegerField;
    TBOdontogramasODO_D41: TStringField;
    TBOdontogramasODO_D41A: TIntegerField;
    TBOdontogramasODO_D41B: TIntegerField;
    TBOdontogramasODO_D41C: TIntegerField;
    TBOdontogramasODO_D41D: TIntegerField;
    TBOdontogramasODO_D41E: TIntegerField;
    TBOdontogramasODO_D42: TStringField;
    TBOdontogramasODO_D42A: TIntegerField;
    TBOdontogramasODO_D42B: TIntegerField;
    TBOdontogramasODO_D42C: TIntegerField;
    TBOdontogramasODO_D42D: TIntegerField;
    TBOdontogramasODO_D42E: TIntegerField;
    TBOdontogramasODO_D43: TStringField;
    TBOdontogramasODO_D43A: TIntegerField;
    TBOdontogramasODO_D43B: TIntegerField;
    TBOdontogramasODO_D43C: TIntegerField;
    TBOdontogramasODO_D43D: TIntegerField;
    TBOdontogramasODO_D43E: TIntegerField;
    TBOdontogramasODO_D44: TStringField;
    TBOdontogramasODO_D44A: TIntegerField;
    TBOdontogramasODO_D44B: TIntegerField;
    TBOdontogramasODO_D44C: TIntegerField;
    TBOdontogramasODO_D44D: TIntegerField;
    TBOdontogramasODO_D44E: TIntegerField;
    TBOdontogramasODO_D45: TStringField;
    TBOdontogramasODO_D45A: TIntegerField;
    TBOdontogramasODO_D45B: TIntegerField;
    TBOdontogramasODO_D45C: TIntegerField;
    TBOdontogramasODO_D45D: TIntegerField;
    TBOdontogramasODO_D45E: TIntegerField;
    TBOdontogramasODO_D46: TStringField;
    TBOdontogramasODO_D46A: TIntegerField;
    TBOdontogramasODO_D46B: TIntegerField;
    TBOdontogramasODO_D46C: TIntegerField;
    TBOdontogramasODO_D46D: TIntegerField;
    TBOdontogramasODO_D46E: TIntegerField;
    TBOdontogramasODO_D47: TStringField;
    TBOdontogramasODO_D47A: TIntegerField;
    TBOdontogramasODO_D47B: TIntegerField;
    TBOdontogramasODO_D47C: TIntegerField;
    TBOdontogramasODO_D47D: TIntegerField;
    TBOdontogramasODO_D47E: TIntegerField;
    TBOdontogramasODO_D48: TStringField;
    TBOdontogramasODO_D48A: TIntegerField;
    TBOdontogramasODO_D48B: TIntegerField;
    TBOdontogramasODO_D48C: TIntegerField;
    TBOdontogramasODO_D48D: TIntegerField;
    TBOdontogramasODO_D48E: TIntegerField;
    TBOdontogramasODO_D51: TStringField;
    TBOdontogramasODO_D51A: TIntegerField;
    TBOdontogramasODO_D51B: TIntegerField;
    TBOdontogramasODO_D51C: TIntegerField;
    TBOdontogramasODO_D51D: TIntegerField;
    TBOdontogramasODO_D51E: TIntegerField;
    TBOdontogramasODO_D52: TStringField;
    TBOdontogramasODO_D52A: TIntegerField;
    TBOdontogramasODO_D52B: TIntegerField;
    TBOdontogramasODO_D52C: TIntegerField;
    TBOdontogramasODO_D52D: TIntegerField;
    TBOdontogramasODO_D52E: TIntegerField;
    TBOdontogramasODO_D53: TStringField;
    TBOdontogramasODO_D53A: TIntegerField;
    TBOdontogramasODO_D53B: TIntegerField;
    TBOdontogramasODO_D53C: TIntegerField;
    TBOdontogramasODO_D53D: TIntegerField;
    TBOdontogramasODO_D53E: TIntegerField;
    TBOdontogramasODO_D54: TStringField;
    TBOdontogramasODO_D54A: TIntegerField;
    TBOdontogramasODO_D54B: TIntegerField;
    TBOdontogramasODO_D54C: TIntegerField;
    TBOdontogramasODO_D54D: TIntegerField;
    TBOdontogramasODO_D54E: TIntegerField;
    TBOdontogramasODO_D55: TStringField;
    TBOdontogramasODO_D55A: TIntegerField;
    TBOdontogramasODO_D55B: TIntegerField;
    TBOdontogramasODO_D55C: TIntegerField;
    TBOdontogramasODO_D55D: TIntegerField;
    TBOdontogramasODO_D55E: TIntegerField;
    TBOdontogramasODO_D61: TStringField;
    TBOdontogramasODO_D61A: TIntegerField;
    TBOdontogramasODO_D61B: TIntegerField;
    TBOdontogramasODO_D61C: TIntegerField;
    TBOdontogramasODO_D61D: TIntegerField;
    TBOdontogramasODO_D61E: TIntegerField;
    TBOdontogramasODO_D62: TStringField;
    TBOdontogramasODO_D62A: TIntegerField;
    TBOdontogramasODO_D62B: TIntegerField;
    TBOdontogramasODO_D62C: TIntegerField;
    TBOdontogramasODO_D62D: TIntegerField;
    TBOdontogramasODO_D62E: TIntegerField;
    TBOdontogramasODO_D63: TStringField;
    TBOdontogramasODO_D63A: TIntegerField;
    TBOdontogramasODO_D63B: TIntegerField;
    TBOdontogramasODO_D63C: TIntegerField;
    TBOdontogramasODO_D63D: TIntegerField;
    TBOdontogramasODO_D63E: TIntegerField;
    TBOdontogramasODO_D64: TStringField;
    TBOdontogramasODO_D64A: TIntegerField;
    TBOdontogramasODO_D64B: TIntegerField;
    TBOdontogramasODO_D64C: TIntegerField;
    TBOdontogramasODO_D64D: TIntegerField;
    TBOdontogramasODO_D64E: TIntegerField;
    TBOdontogramasODO_D65: TStringField;
    TBOdontogramasODO_D65A: TIntegerField;
    TBOdontogramasODO_D65B: TIntegerField;
    TBOdontogramasODO_D65C: TIntegerField;
    TBOdontogramasODO_D65D: TIntegerField;
    TBOdontogramasODO_D65E: TIntegerField;
    TBOdontogramasODO_D71: TStringField;
    TBOdontogramasODO_D71A: TIntegerField;
    TBOdontogramasODO_D71B: TIntegerField;
    TBOdontogramasODO_D71C: TIntegerField;
    TBOdontogramasODO_D71D: TIntegerField;
    TBOdontogramasODO_D71E: TIntegerField;
    TBOdontogramasODO_D72: TStringField;
    TBOdontogramasODO_D72A: TIntegerField;
    TBOdontogramasODO_D72B: TIntegerField;
    TBOdontogramasODO_D72C: TIntegerField;
    TBOdontogramasODO_D72D: TIntegerField;
    TBOdontogramasODO_D72E: TIntegerField;
    TBOdontogramasODO_D73: TStringField;
    TBOdontogramasODO_D73A: TIntegerField;
    TBOdontogramasODO_D73B: TIntegerField;
    TBOdontogramasODO_D73C: TIntegerField;
    TBOdontogramasODO_D73D: TIntegerField;
    TBOdontogramasODO_D73E: TIntegerField;
    TBOdontogramasODO_D74: TStringField;
    TBOdontogramasODO_D74A: TIntegerField;
    TBOdontogramasODO_D74B: TIntegerField;
    TBOdontogramasODO_D74C: TIntegerField;
    TBOdontogramasODO_D74D: TIntegerField;
    TBOdontogramasODO_D74E: TIntegerField;
    TBOdontogramasODO_D75: TStringField;
    TBOdontogramasODO_D75A: TIntegerField;
    TBOdontogramasODO_D75B: TIntegerField;
    TBOdontogramasODO_D75C: TIntegerField;
    TBOdontogramasODO_D75D: TIntegerField;
    TBOdontogramasODO_D75E: TIntegerField;
    TBOdontogramasODO_D81: TStringField;
    TBOdontogramasODO_D81A: TIntegerField;
    TBOdontogramasODO_D81B: TIntegerField;
    TBOdontogramasODO_D81C: TIntegerField;
    TBOdontogramasODO_D81D: TIntegerField;
    TBOdontogramasODO_D81E: TIntegerField;
    TBOdontogramasODO_D82: TStringField;
    TBOdontogramasODO_D82A: TIntegerField;
    TBOdontogramasODO_D82B: TIntegerField;
    TBOdontogramasODO_D82C: TIntegerField;
    TBOdontogramasODO_D82D: TIntegerField;
    TBOdontogramasODO_D82E: TIntegerField;
    TBOdontogramasODO_D83: TStringField;
    TBOdontogramasODO_D83A: TIntegerField;
    TBOdontogramasODO_D83B: TIntegerField;
    TBOdontogramasODO_D83C: TIntegerField;
    TBOdontogramasODO_D83D: TIntegerField;
    TBOdontogramasODO_D83E: TIntegerField;
    TBOdontogramasODO_D84: TStringField;
    TBOdontogramasODO_D84A: TIntegerField;
    TBOdontogramasODO_D84B: TIntegerField;
    TBOdontogramasODO_D84C: TIntegerField;
    TBOdontogramasODO_D84D: TIntegerField;
    TBOdontogramasODO_D84E: TIntegerField;
    TBOdontogramasODO_D85: TStringField;
    TBOdontogramasODO_D85A: TIntegerField;
    TBOdontogramasODO_D85B: TIntegerField;
    TBOdontogramasODO_D85C: TIntegerField;
    TBOdontogramasODO_D85D: TIntegerField;
    TBOdontogramasODO_D85E: TIntegerField;
    TBOdontogramasODO_DATA: TDateField;
    TBOdontogramasODO_DTATUALIZACAO: TDateField;
    TBOdontogramasODO_DTCADASTRO: TDateField;
    TBOdontogramasODO_ESTILOS: TStringField;
    TBOdontogramasODO_HRATUALIZACAO: TTimeField;
    TBOdontogramasODO_HRCADASTRO: TTimeField;
    TBOdontogramasODO_OBSERVACOES: TMemoField;
    TBOdontogramasODO_USUARIO: TStringField;
    TBOdontogramasOpcoes: TFDQuery;
    TBOdontogramasOpcoesODP_CODIGO: TIntegerField;
    TBOdontogramasOpcoesODP_COR: TIntegerField;
    TBOdontogramasOpcoesODP_D11: TStringField;
    TBOdontogramasOpcoesODP_D12: TStringField;
    TBOdontogramasOpcoesODP_D13: TStringField;
    TBOdontogramasOpcoesODP_D14: TStringField;
    TBOdontogramasOpcoesODP_D15: TStringField;
    TBOdontogramasOpcoesODP_D16: TStringField;
    TBOdontogramasOpcoesODP_D17: TStringField;
    TBOdontogramasOpcoesODP_D18: TStringField;
    TBOdontogramasOpcoesODP_D21: TStringField;
    TBOdontogramasOpcoesODP_D22: TStringField;
    TBOdontogramasOpcoesODP_D23: TStringField;
    TBOdontogramasOpcoesODP_D24: TStringField;
    TBOdontogramasOpcoesODP_D25: TStringField;
    TBOdontogramasOpcoesODP_D26: TStringField;
    TBOdontogramasOpcoesODP_D27: TStringField;
    TBOdontogramasOpcoesODP_D28: TStringField;
    TBOdontogramasOpcoesODP_D31: TStringField;
    TBOdontogramasOpcoesODP_D32: TStringField;
    TBOdontogramasOpcoesODP_D33: TStringField;
    TBOdontogramasOpcoesODP_D34: TStringField;
    TBOdontogramasOpcoesODP_D35: TStringField;
    TBOdontogramasOpcoesODP_D36: TStringField;
    TBOdontogramasOpcoesODP_D37: TStringField;
    TBOdontogramasOpcoesODP_D38: TStringField;
    TBOdontogramasOpcoesODP_D41: TStringField;
    TBOdontogramasOpcoesODP_D42: TStringField;
    TBOdontogramasOpcoesODP_D43: TStringField;
    TBOdontogramasOpcoesODP_D44: TStringField;
    TBOdontogramasOpcoesODP_D45: TStringField;
    TBOdontogramasOpcoesODP_D46: TStringField;
    TBOdontogramasOpcoesODP_D47: TStringField;
    TBOdontogramasOpcoesODP_D48: TStringField;
    TBOdontogramasOpcoesODP_D51: TStringField;
    TBOdontogramasOpcoesODP_D52: TStringField;
    TBOdontogramasOpcoesODP_D53: TStringField;
    TBOdontogramasOpcoesODP_D54: TStringField;
    TBOdontogramasOpcoesODP_D55: TStringField;
    TBOdontogramasOpcoesODP_D61: TStringField;
    TBOdontogramasOpcoesODP_D62: TStringField;
    TBOdontogramasOpcoesODP_D63: TStringField;
    TBOdontogramasOpcoesODP_D64: TStringField;
    TBOdontogramasOpcoesODP_D65: TStringField;
    TBOdontogramasOpcoesODP_D71: TStringField;
    TBOdontogramasOpcoesODP_D72: TStringField;
    TBOdontogramasOpcoesODP_D73: TStringField;
    TBOdontogramasOpcoesODP_D74: TStringField;
    TBOdontogramasOpcoesODP_D75: TStringField;
    TBOdontogramasOpcoesODP_D81: TStringField;
    TBOdontogramasOpcoesODP_D82: TStringField;
    TBOdontogramasOpcoesODP_D83: TStringField;
    TBOdontogramasOpcoesODP_D84: TStringField;
    TBOdontogramasOpcoesODP_D85: TStringField;
    TBOdontogramasOpcoesODP_DESCRICAO: TStringField;
    TBOdontogramasOpcoesODP_DTATUALIZACAO: TDateField;
    TBOdontogramasOpcoesODP_DTCADASTRO: TDateField;
    TBOdontogramasOpcoesODP_ESTILO: TStringField;
    TBOdontogramasOpcoesODP_HRATUALIZACAO: TTimeField;
    TBOdontogramasOpcoesODP_HRCADASTRO: TTimeField;
    TBOdontogramasOpcoesODP_PADRAO: TStringField;
    TBOdontogramasOpcoesODP_USUARIO: TStringField;
    TBOpcionais: TFDQuery;
    TBOpcionaisOPC_CODIGO: TIntegerField;
    TBOpcionaisOPC_DESCRICAO: TStringField;
    TBOpcionaisOPC_DTATUALIZACAO: TDateField;
    TBOpcionaisOPC_DTCADASTRO: TDateField;
    TBOpcionaisOPC_HRATUALIZACAO: TTimeField;
    TBOpcionaisOPC_HRCADASTRO: TTimeField;
    TBOpcionaisOPC_USUARIO: TStringField;
    TBPontos: TFDQuery;
    TBPontosCLI_NOME: TStringField;
    TBPontosCLI_PONTOS: TFMTBCDField;
    TBPontosPTS_CLIENTE: TIntegerField;
    TBPontosPTS_CODIGO: TIntegerField;
    TBPontosPTS_COTACAO: TFMTBCDField;
    TBPontosPTS_DESCRICAO: TStringField;
    TBPontosPTS_DTATUALIZACAO: TDateField;
    TBPontosPTS_DTCADASTRO: TDateField;
    TBPontosPTS_ENTRADASAIDA: TStringField;
    TBPontosPTS_HRATUALIZACAO: TTimeField;
    TBPontosPTS_HRCADASTRO: TTimeField;
    TBPontosPTS_NUMDOCTO: TStringField;
    TBPontosPTS_PONTOS: TFMTBCDField;
    TBPontosPTS_SALDOANTERIOR: TFMTBCDField;
    TBPontosPTS_SALDOPOSTERIOR: TFMTBCDField;
    TBPontosPTS_USUARIO: TStringField;
    TBPontosPTS_VALOR: TFMTBCDField;
    TBProcessos: TFDQuery;
    TBProcessosACO_DESCRICAO: TStringField;
    TBProcessosCustas: TFDQuery;
    TBProcessosCustasPSC_CODIGO: TIntegerField;
    TBProcessosCustasPSC_DATA: TDateField;
    TBProcessosCustasPSC_DESCRICAO: TStringField;
    TBProcessosCustasPSC_DTATUALIZACAO: TDateField;
    TBProcessosCustasPSC_DTCADASTRO: TDateField;
    TBProcessosCustasPSC_ENTRADASAIDA: TStringField;
    TBProcessosCustasPSC_HRATUALIZACAO: TTimeField;
    TBProcessosCustasPSC_HRCADASTRO: TTimeField;
    TBProcessosCustasPSC_PROCESSO: TIntegerField;
    TBProcessosCustasPSC_USUARIO: TStringField;
    TBProcessosCustasPSC_VALOR: TFMTBCDField;
    TBProcessosCustasPSC_VALORANTERIOR: TFMTBCDField;
    TBProcessosCustasPSC_VALORPOSTERIOR: TFMTBCDField;
    TBProcessosFRS_NOME: TStringField;
    TBProcessosHistorico: TFDQuery;
    TBProcessosHistoricoPSH_CODIGO: TIntegerField;
    TBProcessosHistoricoPSH_DATA: TDateField;
    TBProcessosHistoricoPSH_DESCRICAO: TStringField;
    TBProcessosHistoricoPSH_DTATUALIZACAO: TDateField;
    TBProcessosHistoricoPSH_DTCADASTRO: TDateField;
    TBProcessosHistoricoPSH_HRATUALIZACAO: TTimeField;
    TBProcessosHistoricoPSH_HRCADASTRO: TTimeField;
    TBProcessosHistoricoPSH_OBSERVACOES: TMemoField;
    TBProcessosHistoricoPSH_PROCESSO: TIntegerField;
    TBProcessosHistoricoPSH_USUARIO: TStringField;
    TBProcessosPartes: TFDQuery;
    TBProcessosPartesADVOGADO: TStringField;
    TBProcessosPartesPARTE: TStringField;
    TBProcessosPartesPSP_ADVOGADO: TIntegerField;
    TBProcessosPartesPSP_CLIENTE: TIntegerField;
    TBProcessosPartesPSP_CODIGO: TIntegerField;
    TBProcessosPartesPSP_CONDICAO: TStringField;
    TBProcessosPartesPSP_PROCESSO: TIntegerField;
    TBProcessosPCS_ACAO: TIntegerField;
    TBProcessosPCS_ADVOGADO: TIntegerField;
    TBProcessosPCS_CHAVE: TStringField;
    TBProcessosPCS_CODIGO: TIntegerField;
    TBProcessosPCS_DESCRICAO: TStringField;
    TBProcessosPCS_DTARQUIVO: TDateField;
    TBProcessosPCS_DTATUALIZACAO: TDateField;
    TBProcessosPCS_DTCADASTRO: TDateField;
    TBProcessosPCS_FORO: TIntegerField;
    TBProcessosPCS_HRATUALIZACAO: TTimeField;
    TBProcessosPCS_HRCADASTRO: TTimeField;
    TBProcessosPCS_LOCALFISICO: TStringField;
    TBProcessosPCS_NUMEROANTIGO: TStringField;
    TBProcessosPCS_NUMEROUNIFICADO: TStringField;
    TBProcessosPCS_NUMEROUNIFICADOFED: TStringField;
    TBProcessosPCS_STATUS: TStringField;
    TBProcessosPCS_TOTALLANCAMENTOS: TFMTBCDField;
    TBProcessosPCS_USUARIO: TStringField;
    TBProcessosVEN_NOME: TStringField;
    TBProjetos: TFDQuery;
    TBProjetosCLI_NOME: TStringField;
    TBProjetosFases: TFDQuery;
    TBProjetosFasesFAS_DESCRICAO: TStringField;
    TBProjetosFasesPJF_BAIXADOPOR: TStringField;
    TBProjetosFasesPJF_CODIGO: TIntegerField;
    TBProjetosFasesPJF_DTATUALIZACAO: TDateField;
    TBProjetosFasesPJF_DTCADASTRO: TDateField;
    TBProjetosFasesPJF_DTFIM: TDateField;
    TBProjetosFasesPJF_DTINICIO: TDateField;
    TBProjetosFasesPJF_DTPREVISAO: TDateField;
    TBProjetosFasesPJF_FASE: TIntegerField;
    TBProjetosFasesPJF_HRATUALIZACAO: TTimeField;
    TBProjetosFasesPJF_HRCADASTRO: TTimeField;
    TBProjetosFasesPJF_PROJETO: TIntegerField;
    TBProjetosFasesPJF_STATUS: TStringField;
    TBProjetosFasesPJF_USUARIO: TStringField;
    TBProjetosHistorico: TFDQuery;
    TBProjetosHistoricoPJH_CODIGO: TIntegerField;
    TBProjetosHistoricoPJH_DATA: TDateField;
    TBProjetosHistoricoPJH_DESCRICAO: TStringField;
    TBProjetosHistoricoPJH_DTATUALIZACAO: TDateField;
    TBProjetosHistoricoPJH_DTCADASTRO: TDateField;
    TBProjetosHistoricoPJH_HRATUALIZACAO: TTimeField;
    TBProjetosHistoricoPJH_HRCADASTRO: TTimeField;
    TBProjetosHistoricoPJH_PROJETO: TIntegerField;
    TBProjetosHistoricoPJH_USUARIO: TStringField;
    TBProjetosItens: TFDQuery;
    TBProjetosItensPJI_CODIGO: TIntegerField;
    TBProjetosItensPJI_DESCRICAO: TStringField;
    TBProjetosItensPJI_PRECOCUSTO: TFMTBCDField;
    TBProjetosItensPJI_PRECOCUSTOTOTAL: TFMTBCDField;
    TBProjetosItensPJI_PRODUTO: TIntegerField;
    TBProjetosItensPJI_PROJETO: TIntegerField;
    TBProjetosItensPJI_QUANTIDADE: TFMTBCDField;
    TBProjetosItensPJI_TIPO: TStringField;
    TBProjetosItensPJI_UNIDADE: TStringField;
    TBProjetosItensPJI_VALORTOTAL: TFMTBCDField;
    TBProjetosItensPJI_VALORUNIT: TFMTBCDField;
    TBProjetosItensPRO_NOME: TStringField;
    TBProjetosPJT_DESCRICAO: TStringField;
    TBProjetosPRJ_ARQUITETO: TIntegerField;
    TBProjetosPRJ_CLIENTE: TIntegerField;
    TBProjetosPRJ_CODIGO: TIntegerField;
    TBProjetosPRJ_DTAPRESENTACAO: TDateField;
    TBProjetosPRJ_DTAPRESENTACAOPREVISTA: TDateField;
    TBProjetosPRJ_DTATUALIZACAO: TDateField;
    TBProjetosPRJ_DTCADASTRO: TDateField;
    TBProjetosPRJ_DTENTREGA: TDateField;
    TBProjetosPRJ_DTENTREGAPREVISTA: TDateField;
    TBProjetosPRJ_DTORCAMENTO: TDateField;
    TBProjetosPRJ_DTORCAMENTOPREVISTO: TDateField;
    TBProjetosPRJ_DTPRIMEIROCONTATO: TDateField;
    TBProjetosPRJ_DTPROJETOCAD: TDateField;
    TBProjetosPRJ_DTPROJETOCADPREVISTO: TDateField;
    TBProjetosPRJ_DTVISITA: TDateField;
    TBProjetosPRJ_DTVISITAPREVISTA: TDateField;
    TBProjetosPRJ_HRATUALIZACAO: TTimeField;
    TBProjetosPRJ_HRCADASTRO: TTimeField;
    TBProjetosPRJ_NOME: TStringField;
    TBProjetosPRJ_OBSERVACOES: TMemoField;
    TBProjetosPRJ_STATUSAPRESENTACAO: TStringField;
    TBProjetosPRJ_STATUSORCAMENTO: TStringField;
    TBProjetosPRJ_STATUSPRODUCAO: TStringField;
    TBProjetosPRJ_STATUSPROJETO: TStringField;
    TBProjetosPRJ_STATUSPROJETOCAD: TStringField;
    TBProjetosPRJ_STATUSVISITA: TStringField;
    TBProjetosPRJ_TABELAPRECO: TStringField;
    TBProjetosPRJ_TIPO: TIntegerField;
    TBProjetosPRJ_TOTALPRODUTOS: TFMTBCDField;
    TBProjetosPRJ_TOTALSERVICOS: TFMTBCDField;
    TBProjetosPRJ_USUARIO: TStringField;
    TBProjetosPRJ_VALORTOTAL: TFMTBCDField;
    TBProjetosPRJ_VALORTOTALCUSTO: TFMTBCDField;
    TBProjetosPRJ_VALORTOTALUP: TFMTBCDField;
    TBProjetosPRJ_VENDA: TIntegerField;
    TBProjetosTipos: TFDQuery;
    TBProjetosTiposPJT_CODIGO: TIntegerField;
    TBProjetosTiposPJT_DESCRICAO: TStringField;
    TBProjetosTiposPJT_DTATUALIZACAO: TDateField;
    TBProjetosTiposPJT_DTCADASTRO: TDateField;
    TBProjetosTiposPJT_HRATUALIZACAO: TTimeField;
    TBProjetosTiposPJT_HRCADASTRO: TTimeField;
    TBProjetosTiposPJT_USUARIO: TStringField;
    TBProjetosVEN_NOME: TStringField;
    TBPromissorias: TFDQuery;
    TBPromissoriasPRM_AVALISTA1: TStringField;
    TBPromissoriasPRM_AVALISTA1CPF: TStringField;
    TBPromissoriasPRM_AVALISTA2: TStringField;
    TBPromissoriasPRM_AVALISTA2CPF: TStringField;
    TBPromissoriasPRM_CEDENTE: TStringField;
    TBPromissoriasPRM_CEDENTEBAIRRO: TStringField;
    TBPromissoriasPRM_CEDENTECEP: TStringField;
    TBPromissoriasPRM_CEDENTECNPJ: TStringField;
    TBPromissoriasPRM_CEDENTEENDERECO: TStringField;
    TBPromissoriasPRM_CEDENTEFONE: TStringField;
    TBPromissoriasPRM_CEDENTENUMERO: TStringField;
    TBPromissoriasPRM_CODIGO: TIntegerField;
    TBPromissoriasPRM_DTATUALIZACAO: TDateField;
    TBPromissoriasPRM_DTCADASTRO: TDateField;
    TBPromissoriasPRM_DTVENCIMENTO: TDateField;
    TBPromissoriasPRM_HRATUALIZACAO: TTimeField;
    TBPromissoriasPRM_HRCADASTRO: TTimeField;
    TBPromissoriasPRM_MATRIZ: TStringField;
    TBPromissoriasPRM_MULTIPLICADO: TStringField;
    TBPromissoriasPRM_PARCELA: TIntegerField;
    TBPromissoriasPRM_PARCELATOTAL: TIntegerField;
    TBPromissoriasPRM_SACADO: TStringField;
    TBPromissoriasPRM_SACADOBAIRRO: TStringField;
    TBPromissoriasPRM_SACADOCEP: TStringField;
    TBPromissoriasPRM_SACADOCNPJ: TStringField;
    TBPromissoriasPRM_SACADOENDERECO: TStringField;
    TBPromissoriasPRM_SACADOFONE: TStringField;
    TBPromissoriasPRM_SACADONUMERO: TStringField;
    TBPromissoriasPRM_STATUS: TStringField;
    TBPromissoriasPRM_USUARIO: TStringField;
    TBPromissoriasPRM_VALOR: TFMTBCDField;
    TBPromissoriasPRM_VALORBAIXADO: TFMTBCDField;
    TBProntuarios: TFDQuery;
    TBProntuariosCLI_CNS: TStringField;
    TBProntuariosCLI_NOME: TStringField;
    TBProntuariosCLI_SAME: TStringField;
    TBProntuariosPEP_ATENDIMENTO: TIntegerField;
    TBProntuariosPEP_CLIENTE: TIntegerField;
    TBProntuariosPEP_CODIGO: TIntegerField;
    TBProntuariosPEP_DTATENDIMENTO: TDateField;
    TBProntuariosPEP_DTATUALIZACAO: TDateField;
    TBProntuariosPEP_DTCADASTRO: TDateField;
    TBProntuariosPEP_HRATUALIZACAO: TTimeField;
    TBProntuariosPEP_HRCADASTRO: TTimeField;
    TBProntuariosPEP_OBITO: TStringField;
    TBProntuariosPEP_STATUS: TStringField;
    TBProntuariosPEP_USUARIO: TStringField;
    TBReceituarios: TFDQuery;
    TBReceituariosCLI_NOME: TStringField;
    TBReceituariosMTO_NOME: TStringField;
    TBReceituariosRCT_CLIENTE: TIntegerField;
    TBReceituariosRCT_CODIGO: TIntegerField;
    TBReceituariosRCT_DIA01: TStringField;
    TBReceituariosRCT_DIA02: TStringField;
    TBReceituariosRCT_DIA03: TStringField;
    TBReceituariosRCT_DIA04: TStringField;
    TBReceituariosRCT_DIA05: TStringField;
    TBReceituariosRCT_DIA06: TStringField;
    TBReceituariosRCT_DIA07: TStringField;
    TBReceituariosRCT_DIA08: TStringField;
    TBReceituariosRCT_DIA09: TStringField;
    TBReceituariosRCT_DIA10: TStringField;
    TBReceituariosRCT_DIA11: TStringField;
    TBReceituariosRCT_DIA12: TStringField;
    TBReceituariosRCT_DIA13: TStringField;
    TBReceituariosRCT_DIA14: TStringField;
    TBReceituariosRCT_DIA15: TStringField;
    TBReceituariosRCT_DIA16: TStringField;
    TBReceituariosRCT_DIA17: TStringField;
    TBReceituariosRCT_DIA18: TStringField;
    TBReceituariosRCT_DIA19: TStringField;
    TBReceituariosRCT_DIA20: TStringField;
    TBReceituariosRCT_DIA21: TStringField;
    TBReceituariosRCT_DIA22: TStringField;
    TBReceituariosRCT_DIA23: TStringField;
    TBReceituariosRCT_DIA24: TStringField;
    TBReceituariosRCT_DIA25: TStringField;
    TBReceituariosRCT_DIA26: TStringField;
    TBReceituariosRCT_DIA27: TStringField;
    TBReceituariosRCT_DIA28: TStringField;
    TBReceituariosRCT_DIA29: TStringField;
    TBReceituariosRCT_DIA30: TStringField;
    TBReceituariosRCT_DIA31: TStringField;
    TBReceituariosRCT_DOSAGEM: TStringField;
    TBReceituariosRCT_DTATUALIZACAO: TDateField;
    TBReceituariosRCT_DTCADASTRO: TDateField;
    TBReceituariosRCT_HRATUALIZACAO: TTimeField;
    TBReceituariosRCT_HRCADASTRO: TTimeField;
    TBReceituariosRCT_MEDICAMENTO: TIntegerField;
    TBReceituariosRCT_ORDEM: TIntegerField;
    TBReceituariosRCT_USUARIO: TStringField;
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
    TBRemessas: TFDQuery;
    TBRemessasCON_NOME: TStringField;
    TBRemessasItens: TFDQuery;
    TBRemessasItensRMI_BOLETO: TIntegerField;
    TBRemessasItensRMI_CODIGO: TIntegerField;
    TBRemessasItensRMI_REMESSA: TIntegerField;
    TBRemessasREM_ARQUIVO: TStringField;
    TBRemessasREM_CODIGO: TIntegerField;
    TBRemessasREM_CONTA: TIntegerField;
    TBRemessasREM_DATA: TDateField;
    TBRemessasREM_LAYOUT: TStringField;
    TBRemessasREM_USUARIO: TStringField;
    TBSeguros: TFDQuery;
    TBSegurosCLI_NOME: TStringField;
    TBSegurosCPG_DESCRICAO: TStringField;
    TBSegurosEndossos: TFDQuery;
    TBSegurosEndossosSEG_STATUS: TStringField;
    TBSegurosEndossosSGE_CODIGO: TIntegerField;
    TBSegurosEndossosSGE_ENDOSSO: TIntegerField;
    TBSegurosEndossosSGE_NUMERO: TStringField;
    TBSegurosEndossosSGE_SEGURO: TIntegerField;
    TBSegurosFOR_NOME: TStringField;
    TBSegurosParcelas: TFDQuery;
    TBSegurosParcelasSGP_CODIGO: TIntegerField;
    TBSegurosParcelasSGP_COMISSAO: TFMTBCDField;
    TBSegurosParcelasSGP_COMISSAOVENDEDOR: TFMTBCDField;
    TBSegurosParcelasSGP_DTATUALIZACAO: TDateField;
    TBSegurosParcelasSGP_DTCADASTRO: TDateField;
    TBSegurosParcelasSGP_DTPAGAMENTO: TDateField;
    TBSegurosParcelasSGP_DTRECEBIMENTO: TDateField;
    TBSegurosParcelasSGP_DTVENCIMENTO: TDateField;
    TBSegurosParcelasSGP_HRATUALIZACAO: TTimeField;
    TBSegurosParcelasSGP_HRCADASTRO: TTimeField;
    TBSegurosParcelasSGP_PARCELA: TIntegerField;
    TBSegurosParcelasSGP_SEGURO: TIntegerField;
    TBSegurosParcelasSGP_STATUS: TStringField;
    TBSegurosParcelasSGP_USUARIO: TStringField;
    TBSegurosParcelasSGP_VALOR: TFMTBCDField;
    TBSegurosSEG_APOLICE: TStringField;
    TBSegurosSEG_CLIENTE: TIntegerField;
    TBSegurosSEG_CODIGO: TIntegerField;
    TBSegurosSEG_COMISSAO: TFMTBCDField;
    TBSegurosSEG_COMISSAOVENDEDOR: TFMTBCDField;
    TBSegurosSEG_CONDICAO: TIntegerField;
    TBSegurosSEG_DESCRICAOAPOLICE: TMemoField;
    TBSegurosSEG_DESCRICAOCANCELAMENTO: TMemoField;
    TBSegurosSEG_DESCRICAOPERDA: TMemoField;
    TBSegurosSEG_DIAPREFERENCIAL: TIntegerField;
    TBSegurosSEG_DTATUALIZACAO: TDateField;
    TBSegurosSEG_DTCADASTRO: TDateField;
    TBSegurosSEG_DTCANCELAMENTO: TDateField;
    TBSegurosSEG_DTEMISSAO: TDateField;
    TBSegurosSEG_DTINICIO: TDateField;
    TBSegurosSEG_DTLEMBRETE: TDateField;
    TBSegurosSEG_DTTERMINO: TDateField;
    TBSegurosSEG_ENDOSSO: TStringField;
    TBSegurosSEG_HRATUALIZACAO: TTimeField;
    TBSegurosSEG_HRCADASTRO: TTimeField;
    TBSegurosSEG_ORIGEM: TStringField;
    TBSegurosSEG_ORIGINAL: TIntegerField;
    TBSegurosSEG_PROPOSTA: TStringField;
    TBSegurosSEG_SEGURADORA: TIntegerField;
    TBSegurosSEG_SEGUROTIPO: TIntegerField;
    TBSegurosSEG_STATUS: TStringField;
    TBSegurosSEG_USUARIO: TStringField;
    TBSegurosSEG_VALORADICIONAL: TFMTBCDField;
    TBSegurosSEG_VALORCOMISSAO: TFMTBCDField;
    TBSegurosSEG_VALORCOMISSAOVENDEDOR: TFMTBCDField;
    TBSegurosSEG_VALORFRANQUIA: TFMTBCDField;
    TBSegurosSEG_VALORIOF: TFMTBCDField;
    TBSegurosSEG_VALORIOFPORC: TFMTBCDField;
    TBSegurosSEG_VALORPREMIO: TFMTBCDField;
    TBSegurosSEG_VALORTOTAL: TFMTBCDField;
    TBSegurosSEG_VENDEDOR: TIntegerField;
    TBSegurosSGT_DESCRICAO: TStringField;
    TBSegurosTipos: TFDQuery;
    TBSegurosTiposSGT_CODIGO: TIntegerField;
    TBSegurosTiposSGT_DESCRICAO: TStringField;
    TBSegurosTiposSGT_DTATUALIZACAO: TDateField;
    TBSegurosTiposSGT_DTCADASTRO: TDateField;
    TBSegurosTiposSGT_HRATUALIZACAO: TTimeField;
    TBSegurosTiposSGT_HRCADASTRO: TTimeField;
    TBSegurosTiposSGT_STATUS: TStringField;
    TBSegurosTiposSGT_USUARIO: TStringField;
    TBSegurosVEN_NOME: TStringField;
    TBSqls: TFDQuery;
    TBSqlsSQL_CODIGO: TIntegerField;
    TBSqlsSQL_FORM: TStringField;
    TBSqlsSQL_QUERY: TMemoField;
    TBSqlsSQL_USUARIO: TIntegerField;
    TBTelevendas: TFDQuery;
    TBTelevendasCLI_NOME: TStringField;
    TBTelevendasMOT_DESCRICAO: TStringField;
    TBTelevendasTEV_BAIXADOPOR: TStringField;
    TBTelevendasTEV_CLIENTE: TIntegerField;
    TBTelevendasTEV_CODIGO: TIntegerField;
    TBTelevendasTEV_DATA: TDateField;
    TBTelevendasTEV_DATABAIXA: TDateField;
    TBTelevendasTEV_DATAPROX: TDateField;
    TBTelevendasTEV_DEMODATA: TDateField;
    TBTelevendasTEV_DEMOHORA: TTimeField;
    TBTelevendasTEV_DESCRICAO: TStringField;
    TBTelevendasTEV_DTATUALIZACAO: TDateField;
    TBTelevendasTEV_DTCADASTRO: TDateField;
    TBTelevendasTEV_FIXA: TStringField;
    TBTelevendasTEV_HORAPROX: TTimeField;
    TBTelevendasTEV_HRATUALIZACAO: TTimeField;
    TBTelevendasTEV_HRCADASTRO: TTimeField;
    TBTelevendasTEV_MOTIVO: TIntegerField;
    TBTelevendasTEV_OBSERVACOES: TMemoField;
    TBTelevendasTEV_REAGENDADO: TStringField;
    TBTelevendasTEV_STATUS: TStringField;
    TBTelevendasTEV_TEMPERATURA: TStringField;
    TBTelevendasTEV_TEMPERATURADATA: TDateField;
    TBTelevendasTEV_USUARIO: TStringField;
    TBTelevendasTEV_VENDA: TIntegerField;
    TBTelevendasTEV_VENDEDOR: TIntegerField;
    TBTelevendasTEV_VIA: TIntegerField;
    TBTelevendasVEN_NOME: TStringField;
    TBTelevendasVIA_DESCRICAO: TStringField;
    TBTurmas: TFDQuery;
    TBTurmasCUR_DESCRICAO: TStringField;
    TBTurmasTUR_ANO: TStringField;
    TBTurmasTUR_CARGAHORARIA: TStringField;
    TBTurmasTUR_CODIGO: TIntegerField;
    TBTurmasTUR_CURSO: TIntegerField;
    TBTurmasTUR_DESCRICAO: TStringField;
    TBTurmasTUR_DOMINGO: TStringField;
    TBTurmasTUR_DOMINGOVEZES: TIntegerField;
    TBTurmasTUR_DTATUALIZACAO: TDateField;
    TBTurmasTUR_DTCADASTRO: TDateField;
    TBTurmasTUR_DTINICIO: TDateField;
    TBTurmasTUR_DTTERMINO: TDateField;
    TBTurmasTUR_ENCONTROS: TIntegerField;
    TBTurmasTUR_FERIASINICIO: TDateField;
    TBTurmasTUR_FERIASTERMINO: TDateField;
    TBTurmasTUR_HORAAULA: TTimeField;
    TBTurmasTUR_HORAAULAMIN: TIntegerField;
    TBTurmasTUR_HORARIO: TStringField;
    TBTurmasTUR_HRATUALIZACAO: TTimeField;
    TBTurmasTUR_HRCADASTRO: TTimeField;
    TBTurmasTUR_MEDIAMINIMA: TFMTBCDField;
    TBTurmasTUR_OBSERVACOES: TMemoField;
    TBTurmasTUR_PERIODO: TIntegerField;
    TBTurmasTUR_PROFESSOR: TIntegerField;
    TBTurmasTUR_QUARTA: TStringField;
    TBTurmasTUR_QUARTAVEZES: TIntegerField;
    TBTurmasTUR_QUINTA: TStringField;
    TBTurmasTUR_QUINTAVEZES: TIntegerField;
    TBTurmasTUR_SABADO: TStringField;
    TBTurmasTUR_SABADOVEZES: TIntegerField;
    TBTurmasTUR_SALA: TStringField;
    TBTurmasTUR_SEGUNDA: TStringField;
    TBTurmasTUR_SEGUNDAVEZES: TIntegerField;
    TBTurmasTUR_SEXTA: TStringField;
    TBTurmasTUR_SEXTAVEZES: TIntegerField;
    TBTurmasTUR_STATUS: TStringField;
    TBTurmasTUR_TERCA: TStringField;
    TBTurmasTUR_TERCAVEZES: TIntegerField;
    TBTurmasTUR_USUARIO: TStringField;
    TBTurmasVEN_NOME: TStringField;
    TBUnidades: TFDQuery;
    TBUnidadesUNI_ATUALIZAR: TStringField;
    TBUnidadesUNI_CODIGO: TStringField;
    TBUnidadesUNI_DESCRICAO: TStringField;
    TBUnidadesUNI_DTATUALIZACAO: TDateField;
    TBUnidadesUNI_DTCADASTRO: TDateField;
    TBUnidadesUNI_HRATUALIZACAO: TTimeField;
    TBUnidadesUNI_HRCADASTRO: TTimeField;
    TBUnidadesUNI_USUARIO: TStringField;
    TBVeiculos: TFDQuery;
    TBVeiculosCliente: TFDQuery;
    TBVeiculosClienteVEC_ANOFAB: TStringField;
    TBVeiculosClienteVEC_ANOMOD: TStringField;
    TBVeiculosClienteVEC_CATEGORIA: TStringField;
    TBVeiculosClienteVEC_CLIENTE: TIntegerField;
    TBVeiculosClienteVEC_CODIGO: TIntegerField;
    TBVeiculosClienteVEC_COMBUSTIVEL: TStringField;
    TBVeiculosClienteVEC_COR: TStringField;
    TBVeiculosClienteVEC_DTATUALIZACAO: TDateField;
    TBVeiculosClienteVEC_DTCADASTRO: TDateField;
    TBVeiculosClienteVEC_DTVENDA: TDateField;
    TBVeiculosClienteVEC_EXPROPRIETARIO: TStringField;
    TBVeiculosClienteVEC_HRATUALIZACAO: TTimeField;
    TBVeiculosClienteVEC_HRCADASTRO: TTimeField;
    TBVeiculosClienteVEC_KM: TIntegerField;
    TBVeiculosClienteVEC_MESA: TStringField;
    TBVeiculosClienteVEC_OBSERVACOES: TMemoField;
    TBVeiculosClienteVEC_OPCIONAIS: TMemoField;
    TBVeiculosClienteVEC_PLACA: TStringField;
    TBVeiculosClienteVEC_RENAVAN: TStringField;
    TBVeiculosClienteVEC_TIPO: TStringField;
    TBVeiculosClienteVEC_USUARIO: TStringField;
    TBVeiculosClienteVEC_VALORVENDA: TFMTBCDField;
    TBVeiculosClienteVEC_VEICULO: TIntegerField;
    TBVeiculosClienteVEL_DESCRICAO: TStringField;
    TBVeiculosVEL_CODIGO: TIntegerField;
    TBVeiculosVEL_DESCRICAO: TStringField;
    TBVeiculosVEL_DTATUALIZACAO: TDateField;
    TBVeiculosVEL_DTCADASTRO: TDateField;
    TBVeiculosVEL_HRATUALIZACAO: TTimeField;
    TBVeiculosVEL_HRCADASTRO: TTimeField;
    TBVeiculosVEL_STATUS: TStringField;
    TBVeiculosVEL_USUARIO: TStringField;
    TBVeiculosVenda: TFDQuery;
    TBVeiculosVendaCLI_NOME: TStringField;
    TBVeiculosVendaVEL_CODIGO: TIntegerField;
    TBVeiculosVendaVEL_DESCRICAO: TStringField;
    TBVeiculosVendaVEN_NOME: TStringField;
    TBVeiculosVendaVEV_ANOFAB: TStringField;
    TBVeiculosVendaVEV_ANOMOD: TStringField;
    TBVeiculosVendaVEV_CATEGORIA: TStringField;
    TBVeiculosVendaVEV_CLIENTE: TIntegerField;
    TBVeiculosVendaVEV_CODIGO: TIntegerField;
    TBVeiculosVendaVEV_COMBUSTIVEL: TStringField;
    TBVeiculosVendaVEV_CONDICOES: TMemoField;
    TBVeiculosVendaVEV_COR: TStringField;
    TBVeiculosVendaVEV_DESPESAS: TFMTBCDField;
    TBVeiculosVendaVEV_DTATUALIZACAO: TDateField;
    TBVeiculosVendaVEV_DTCADASTRO: TDateField;
    TBVeiculosVendaVEV_DTENTRADA: TDateField;
    TBVeiculosVendaVEV_DTVENDA: TDateField;
    TBVeiculosVendaVEV_EXPROPRIETARIO: TStringField;
    TBVeiculosVendaVEV_HRATUALIZACAO: TTimeField;
    TBVeiculosVendaVEV_HRCADASTRO: TTimeField;
    TBVeiculosVendaVEV_KM: TIntegerField;
    TBVeiculosVendaVEV_MESA: TStringField;
    TBVeiculosVendaVEV_OPCIONAIS: TMemoField;
    TBVeiculosVendaVEV_PLACA: TStringField;
    TBVeiculosVendaVEV_RENAVAN: TStringField;
    TBVeiculosVendaVEV_STATUS: TStringField;
    TBVeiculosVendaVEV_TIPO: TStringField;
    TBVeiculosVendaVEV_USUARIO: TStringField;
    TBVeiculosVendaVEV_VALORCOMPRA: TFMTBCDField;
    TBVeiculosVendaVEV_VALORSUGERIDO: TFMTBCDField;
    TBVeiculosVendaVEV_VALORVENDA: TFMTBCDField;
    TBVeiculosVendaVEV_VALORVENDIDO: TFMTBCDField;
    TBVeiculosVendaVEV_VEICULO: TIntegerField;
    TBVeiculosVendaVEV_VENDEDOR: TIntegerField;
    TBZapInstancias: TFDQuery;
    TBZapInstanciasZIN_CLIENTTOKEN: TStringField;
    TBZapInstanciasZIN_CODIGO: TIntegerField;
    TBZapInstanciasZIN_DTATUALIZACAO: TDateField;
    TBZapInstanciasZIN_DTCADASTRO: TDateField;
    TBZapInstanciasZIN_HRATUALIZACAO: TTimeField;
    TBZapInstanciasZIN_HRCADASTRO: TTimeField;
    TBZapInstanciasZIN_INSTANCIAID: TStringField;
    TBZapInstanciasZIN_INSTANCIATOKEN: TStringField;
    TBZapInstanciasZIN_NOME: TStringField;
    TBZapInstanciasZIN_NUMERO: TStringField;
    TBZapInstanciasZIN_STATUS: TStringField;
    TBZapInstanciasZIN_USUARIO: TStringField;
    TBZapInstanciasZIN_WEBHOOKTOKEN: TStringField;
    TBZapMensagens: TFDQuery;
    TBZapMensagensVEN_NOME: TStringField;
    TBZapMensagensZAM_ARQUIVO: TBlobField;
    TBZapMensagensZAM_ARQUIVONOME: TStringField;
    TBZapMensagensZAM_CODIGO: TIntegerField;
    TBZapMensagensZAM_CONTEUDO: TStringField;
    TBZapMensagensZAM_DESTINO: TStringField;
    TBZapMensagensZAM_DTATUALIZACAO: TDateField;
    TBZapMensagensZAM_DTCADASTRO: TDateField;
    TBZapMensagensZAM_DTENVIO: TDateField;
    TBZapMensagensZAM_DTSTATUSWPP: TDateField;
    TBZapMensagensZAM_HRATUALIZACAO: TTimeField;
    TBZapMensagensZAM_HRCADASTRO: TTimeField;
    TBZapMensagensZAM_HRENVIO: TTimeField;
    TBZapMensagensZAM_HRSTATUSWPP: TTimeField;
    TBZapMensagensZAM_MESSAGEID: TStringField;
    TBZapMensagensZAM_STATUS: TStringField;
    TBZapMensagensZAM_STATUSWPP: TStringField;
    TBZapMensagensZAM_USUARIO: TStringField;
    TBZapMensagensZAM_VENDEDOR: TIntegerField;
    TBZapMensagensZAM_ZAAPID: TStringField;
    TBZapMensagensZAM_ZAPINSTANCIA: TIntegerField;
    TBZapMensagensZIN_NOME: TStringField;
    TRAcoes: TFDTransaction;
    TRAssuntos: TFDTransaction;
    TRAtendimentos: TFDTransaction;
    TRAvaliacoes: TFDTransaction;
    TRAvaliacoesTipo: TFDTransaction;
    TRBancos: TFDTransaction;
    TRBoletos: TFDTransaction;
    TRBoletosItens: TFDTransaction;
    TRCalendarios: TFDTransaction;
    TRChamadas: TFDTransaction;
    TRCheques: TFDTransaction;
    TRClasses: TFDTransaction;
    TRClassificados: TFDTransaction;
    TRComandas: TFDTransaction;
    TRComandasItens: TFDTransaction;
    TRConsultas: TFDTransaction;
    TRConsultasItens: TFDTransaction;
    TRConteudos: TFDTransaction;
    TRContratos: TFDTransaction;
    TRContratosPartes: TFDTransaction;
    TRCte: TFDTransaction;
    TRCteCampos: TFDTransaction;
    TRCteCarga: TFDTransaction;
    TRCtecce: TFDTransaction;
    TRCtecceItens: TFDTransaction;
    TRCteCodigo: TFDTransaction;
    TRCteInutilizados: TFDTransaction;
    TRCteNotas: TFDTransaction;
    TRCteVeiculos: TFDTransaction;
    TRCursos: TFDTransaction;
    TRDeliverys: TFDTransaction;
    TRDeliverysItens: TFDTransaction;
    TREmails: TFDTransaction;
    TREmailsContas: TFDTransaction;
    TREvolucoes: TFDTransaction;
    TRExamesTipos: TFDTransaction;
    TRExercicios: TFDTransaction;
    TRFases: TFDTransaction;
    TRFeriados: TFDTransaction;
    TRForms: TFDTransaction;
    TRForos: TFDTransaction;
    TRFrotas: TFDTransaction;
    TRGnre: TFDTransaction;
    TRIasmin: TFDTransaction;
    TRIasminLogs: TFDTransaction;
    TRImoveis: TFDTransaction;
    TRImoveisTipos: TFDTransaction;
    TRLocacoes: TFDTransaction;
    TRLocais: TFDTransaction;
    TRMarcas: TFDTransaction;
    TRMarkups: TFDTransaction;
    TRMarkupsItens: TFDTransaction;
    TRMatriculas: TFDTransaction;
    TRMdfe: TFDTransaction;
    TRMdfeCarrega: TFDTransaction;
    TRMdfeDescarrega: TFDTransaction;
    TRMdfeDocs: TFDTransaction;
    TRMdfeMotoristas: TFDTransaction;
    TRMdfePercursos: TFDTransaction;
    TRMedicamentos: TFDTransaction;
    TRMedicoes: TFDTransaction;
    TRMensagens: TFDTransaction;
    TRMensagensNovas: TFDTransaction;
    TRMensalidades: TFDTransaction;
    TRMotivos: TFDTransaction;
    TRObjetos: TFDTransaction;
    TROdontogramas: TFDTransaction;
    TROdontogramasOpcoes: TFDTransaction;
    TROpcionais: TFDTransaction;
    TRPontos: TFDTransaction;
    TRProcessos: TFDTransaction;
    TRProcessosCustas: TFDTransaction;
    TRProcessosHistorico: TFDTransaction;
    TRProcessosPartes: TFDTransaction;
    TRProjetos: TFDTransaction;
    TRProjetosFases: TFDTransaction;
    TRProjetosHistorico: TFDTransaction;
    TRProjetosItens: TFDTransaction;
    TRProjetosTipos: TFDTransaction;
    TRPromissorias: TFDTransaction;
    TRProntuarios: TFDTransaction;
    TRReceituarios: TFDTransaction;
    TRRecibos: TFDTransaction;
    TRRemessas: TFDTransaction;
    TRRemessasItens: TFDTransaction;
    TRSeguros: TFDTransaction;
    TRSegurosEndossos: TFDTransaction;
    TRSegurosParcelas: TFDTransaction;
    TRSegurosTipos: TFDTransaction;
    TRSqls: TFDTransaction;
    TRTelevendas: TFDTransaction;
    TRTurmas: TFDTransaction;
    TRUnidades: TFDTransaction;
    TRVeiculos: TFDTransaction;
    TRVeiculosCliente: TFDTransaction;
    TRVeiculosVenda: TFDTransaction;
    TRZapInstancias: TFDTransaction;
    TRZapMensagens: TFDTransaction;
    UPAcoes: TFDUpdateSQL;
    UPAssuntos: TFDUpdateSQL;
    UPAtendimentos: TFDUpdateSQL;
    UPAvaliacoes: TFDUpdateSQL;
    UPAvaliacoesTipo: TFDUpdateSQL;
    UPBancos: TFDUpdateSQL;
    UPBoletos: TFDUpdateSQL;
    UPBoletosItens: TFDUpdateSQL;
    UPCalendarios: TFDUpdateSQL;
    UPChamadas: TFDUpdateSQL;
    UPCheques: TFDUpdateSQL;
    UPClasses: TFDUpdateSQL;
    UPClassificados: TFDUpdateSQL;
    UPComandas: TFDUpdateSQL;
    UPComandasItens: TFDUpdateSQL;
    UPConsultas: TFDUpdateSQL;
    UPConsultasItens: TFDUpdateSQL;
    UPConteudos: TFDUpdateSQL;
    UPContratos: TFDUpdateSQL;
    UPContratosPartes: TFDUpdateSQL;
    UPCte: TFDUpdateSQL;
    UPCteCampos: TFDUpdateSQL;
    UPCteCarga: TFDUpdateSQL;
    UPCtecce: TFDUpdateSQL;
    UPCtecceItens: TFDUpdateSQL;
    UPCteCodigo: TFDUpdateSQL;
    UPCteInutilizados: TFDUpdateSQL;
    UPCteNotas: TFDUpdateSQL;
    UPCteVeiculos: TFDUpdateSQL;
    UPCursos: TFDUpdateSQL;
    UPDeliverys: TFDUpdateSQL;
    UPDeliverysItens: TFDUpdateSQL;
    UPEmails: TFDUpdateSQL;
    UPEmailsContas: TFDUpdateSQL;
    UPEvolucoes: TFDUpdateSQL;
    UPExamesTipos: TFDUpdateSQL;
    UPExercicios: TFDUpdateSQL;
    UPFases: TFDUpdateSQL;
    UPFeriados: TFDUpdateSQL;
    UPForms: TFDUpdateSQL;
    UPForos: TFDUpdateSQL;
    UPFrotas: TFDUpdateSQL;
    UPGnre: TFDUpdateSQL;
    UPIasmin: TFDUpdateSQL;
    UPIasminLogs: TFDUpdateSQL;
    UPImoveis: TFDUpdateSQL;
    UPImoveisTipos: TFDUpdateSQL;
    UPLocacoes: TFDUpdateSQL;
    UPLocais: TFDUpdateSQL;
    UPMarcas: TFDUpdateSQL;
    UPMarkups: TFDUpdateSQL;
    UPMarkupsItens: TFDUpdateSQL;
    UPMatriculas: TFDUpdateSQL;
    UPMdfe: TFDUpdateSQL;
    UPMdfeCarrega: TFDUpdateSQL;
    UPMdfeDescarrega: TFDUpdateSQL;
    UPMdfeDocs: TFDUpdateSQL;
    UPMdfeMotoristas: TFDUpdateSQL;
    UPMdfePercursos: TFDUpdateSQL;
    UPMedicamentos: TFDUpdateSQL;
    UPMedicoes: TFDUpdateSQL;
    UPMensagens: TFDUpdateSQL;
    UPMensalidades: TFDUpdateSQL;
    UPMotivos: TFDUpdateSQL;
    UPObjetos: TFDUpdateSQL;
    UPOdontogramas: TFDUpdateSQL;
    UPOdontogramasOpcoes: TFDUpdateSQL;
    UPOpcionais: TFDUpdateSQL;
    UPPontos: TFDUpdateSQL;
    UPProcessos: TFDUpdateSQL;
    UPProcessosCustas: TFDUpdateSQL;
    UPProcessosHistorico: TFDUpdateSQL;
    UPProcessosPartes: TFDUpdateSQL;
    UPProjetos: TFDUpdateSQL;
    UPProjetosFases: TFDUpdateSQL;
    UPProjetosHistorico: TFDUpdateSQL;
    UPProjetosItens: TFDUpdateSQL;
    UPProjetosTipos: TFDUpdateSQL;
    UPPromissorias: TFDUpdateSQL;
    UPProntuarios: TFDUpdateSQL;
    UPReceituarios: TFDUpdateSQL;
    UPRecibos: TFDUpdateSQL;
    UPRemessas: TFDUpdateSQL;
    UPRemessasItens: TFDUpdateSQL;
    UPSeguros: TFDUpdateSQL;
    UPSegurosEndossos: TFDUpdateSQL;
    UPSegurosParcelas: TFDUpdateSQL;
    UPSegurosTipos: TFDUpdateSQL;
    UPSqls: TFDUpdateSQL;
    UPTelevendas: TFDUpdateSQL;
    UPTurmas: TFDUpdateSQL;
    UPUnidades: TFDUpdateSQL;
    UPVeiculos: TFDUpdateSQL;
    UPVeiculosCliente: TFDUpdateSQL;
    UPVeiculosVenda: TFDUpdateSQL;
    UPZapInstancias: TFDUpdateSQL;
    UPZapMensagens: TFDUpdateSQL;
    TBIasminLogsIAL_EXPLICACAO: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSAcoesStateChange(Sender: TObject);
    procedure DSAssuntosDataChange(Sender: TObject; Field: TField);
    procedure DSAssuntosStateChange(Sender: TObject);
    procedure DSAtendimentosDataChange(Sender: TObject; Field: TField);
    procedure DSAtendimentosStateChange(Sender: TObject);
    procedure DSAvaliacoesStateChange(Sender: TObject);
    procedure DSAvaliacoesTipoStateChange(Sender: TObject);
    procedure DSBancosStateChange(Sender: TObject);
    procedure DSBoletosStateChange(Sender: TObject);
    procedure DSChequesStateChange(Sender: TObject);
    procedure DSClassesStateChange(Sender: TObject);
    procedure DSClassificadosStateChange(Sender: TObject);
    procedure DSComandasStateChange(Sender: TObject);
    procedure DSConteudosStateChange(Sender: TObject);
    procedure DSContratosStateChange(Sender: TObject);
    procedure DSCteCamposStateChange(Sender: TObject);
    procedure DSCteCCeStateChange(Sender: TObject);
    procedure DSCteInutilizadosStateChange(Sender: TObject);
    procedure DSCteStateChange(Sender: TObject);
    procedure DSCursosStateChange(Sender: TObject);
    procedure DSEmailsContasStateChange(Sender: TObject);
    procedure DSEmailsDataChange(Sender: TObject; Field: TField);
    procedure DSEmailsStateChange(Sender: TObject);
    procedure DSEvolucoesStateChange(Sender: TObject);
    procedure DSExerciciosStateChange(Sender: TObject);
    procedure DSFasesStateChange(Sender: TObject);
    procedure DSFeriadosStateChange(Sender: TObject);
    procedure DSForosStateChange(Sender: TObject);
    procedure DSFrotasStateChange(Sender: TObject);
    procedure DSGnreStateChange(Sender: TObject);
    procedure DSImoveisStateChange(Sender: TObject);
    procedure DSImoveisTiposStateChange(Sender: TObject);
    procedure DSLocacoesDataChange(Sender: TObject; Field: TField);
    procedure DSLocacoesStateChange(Sender: TObject);
    procedure DSLocaisStateChange(Sender: TObject);
    procedure DSMarcasStateChange(Sender: TObject);
    procedure DSMarkupsStateChange(Sender: TObject);
    procedure DSMatriculasStateChange(Sender: TObject);
    procedure DSMdfeStateChange(Sender: TObject);
    procedure DSMedicamentosStateChange(Sender: TObject);
    procedure DSMedicoesStateChange(Sender: TObject);
    procedure DSMensalidadesStateChange(Sender: TObject);
    procedure DSMotivosStateChange(Sender: TObject);
    procedure DSObjetosStateChange(Sender: TObject);
    procedure DSOpcionaisStateChange(Sender: TObject);
    procedure DSPontosStateChange(Sender: TObject);
    procedure DSProcessosCustasStateChange(Sender: TObject);
    procedure DSProcessosHistoricoStateChange(Sender: TObject);
    procedure DSProcessosPartesStateChange(Sender: TObject);
    procedure DSProcessosStateChange(Sender: TObject);
    procedure DSProjetosFasesStateChange(Sender: TObject);
    procedure DSProjetosHistoricoStateChange(Sender: TObject);
    procedure DSProjetosStateChange(Sender: TObject);
    procedure DSProjetosTiposStateChange(Sender: TObject);
    procedure DSPromissoriasStateChange(Sender: TObject);
    procedure DSReceituariosStateChange(Sender: TObject);
    procedure DSRecibosStateChange(Sender: TObject);
    procedure DSTeleVendasDataChange(Sender: TObject; Field: TField);
    procedure DSTeleVendasStateChange(Sender: TObject);
    procedure DSTurmasStateChange(Sender: TObject);
    procedure DSUnidadesStateChange(Sender: TObject);
    procedure DSVeiculosClienteStateChange(Sender: TObject);
    procedure DSVeiculosStateChange(Sender: TObject);
    procedure DSVeiculosVendaStateChange(Sender: TObject);
    procedure DSProntuariosStateChange(Sender: TObject);
    procedure DSExamesTiposStateChange(Sender: TObject);
    procedure DSConsultasStateChange(Sender: TObject);
    procedure DSConsultasDataChange(Sender: TObject; Field: TField);
    procedure DSDeliverysStateChange(Sender: TObject);
    procedure DSSegurosTiposStateChange(Sender: TObject);
    procedure DSSegurosStateChange(Sender: TObject);
    procedure DSOdontogramasOpcoesStateChange(Sender: TObject);
    procedure DSOdontogramasOpcoesDataChange(Sender: TObject; Field: TField);
    procedure DSOdontogramasStateChange(Sender: TObject);
    procedure DSOdontogramasDataChange(Sender: TObject; Field: TField);
    procedure TBAcoesAfterInsert(DataSet: TDataSet);
    procedure TBAcoesBeforeEdit(DataSet: TDataSet);
    procedure TBAcoesBeforeInsert(DataSet: TDataSet);
    procedure TBAcoesBeforePost(DataSet: TDataSet);
    procedure TBAssuntosAfterInsert(DataSet: TDataSet);
    procedure TBAssuntosBeforeEdit(DataSet: TDataSet);
    procedure TBAssuntosBeforeInsert(DataSet: TDataSet);
    procedure TBAssuntosBeforePost(DataSet: TDataSet);
    procedure TBAtendimentosAfterInsert(DataSet: TDataSet);
    procedure TBAtendimentosBeforeEdit(DataSet: TDataSet);
    procedure TBAtendimentosBeforeInsert(DataSet: TDataSet);
    procedure TBAtendimentosBeforePost(DataSet: TDataSet);
    procedure TBAvaliacoesAfterDelete(DataSet: TDataSet);
    procedure TBAvaliacoesAfterInsert(DataSet: TDataSet);
    procedure TBAvaliacoesAfterPost(DataSet: TDataSet);
    procedure TBAvaliacoesBeforeEdit(DataSet: TDataSet);
    procedure TBAvaliacoesBeforeInsert(DataSet: TDataSet);
    procedure TBAvaliacoesBeforePost(DataSet: TDataSet);
    procedure TBAvaliacoesTipoAfterInsert(DataSet: TDataSet);
    procedure TBAvaliacoesTipoBeforeEdit(DataSet: TDataSet);
    procedure TBAvaliacoesTipoBeforeInsert(DataSet: TDataSet);
    procedure TBAvaliacoesTipoBeforePost(DataSet: TDataSet);
    procedure TBBancosAfterInsert(DataSet: TDataSet);
    procedure TBBancosBeforeEdit(DataSet: TDataSet);
    procedure TBBancosBeforeInsert(DataSet: TDataSet);
    procedure TBBancosBeforePost(DataSet: TDataSet);
    procedure TBBoletosAfterEdit(DataSet: TDataSet);
    procedure TBBoletosAfterInsert(DataSet: TDataSet);
    procedure TBBoletosBeforeEdit(DataSet: TDataSet);
    procedure TBBoletosBeforeInsert(DataSet: TDataSet);
    procedure TBBoletosBeforePost(DataSet: TDataSet);
    procedure TBBoletosItensAfterInsert(DataSet: TDataSet);
    procedure TBBoletosItensAfterPost(DataSet: TDataSet);
    procedure TBCalendariosAfterInsert(DataSet: TDataSet);
    procedure TBChamadasAfterInsert(DataSet: TDataSet);
    procedure TBChequesAfterInsert(DataSet: TDataSet);
    procedure TBChequesBeforeEdit(DataSet: TDataSet);
    procedure TBChequesBeforeInsert(DataSet: TDataSet);
    procedure TBChequesBeforePost(DataSet: TDataSet);
    procedure TBClassesAfterInsert(DataSet: TDataSet);
    procedure TBClassesBeforeEdit(DataSet: TDataSet);
    procedure TBClassesBeforeInsert(DataSet: TDataSet);
    procedure TBClassesBeforePost(DataSet: TDataSet);
    procedure TBClassificadosAfterInsert(DataSet: TDataSet);
    procedure TBClassificadosBeforeEdit(DataSet: TDataSet);
    procedure TBClassificadosBeforeInsert(DataSet: TDataSet);
    procedure TBClassificadosBeforePost(DataSet: TDataSet);
    procedure TBComandasAfterEdit(DataSet: TDataSet);
    procedure TBComandasAfterInsert(DataSet: TDataSet);
    procedure TBComandasBeforeEdit(DataSet: TDataSet);
    procedure TBComandasBeforeInsert(DataSet: TDataSet);
    procedure TBComandasBeforePost(DataSet: TDataSet);
    procedure TBComandasItensAfterInsert(DataSet: TDataSet);
    procedure TBComandasItensAfterPost(DataSet: TDataSet);
    procedure TBComandasItensBeforePost(DataSet: TDataSet);
    procedure TBConsultasAfterInsert(DataSet: TDataSet);
    procedure TBConsultasBeforeEdit(DataSet: TDataSet);
    procedure TBConsultasBeforeInsert(DataSet: TDataSet);
    procedure TBConsultasBeforePost(DataSet: TDataSet);
    procedure TBConsultasItensAfterInsert(DataSet: TDataSet);
    procedure TBConsultasItensAfterPost(DataSet: TDataSet);
    procedure TBConteudosAfterInsert(DataSet: TDataSet);
    procedure TBConteudosBeforeEdit(DataSet: TDataSet);
    procedure TBConteudosBeforeInsert(DataSet: TDataSet);
    procedure TBConteudosBeforePost(DataSet: TDataSet);
    procedure TBContratosAfterEdit(DataSet: TDataSet);
    procedure TBContratosAfterInsert(DataSet: TDataSet);
    procedure TBContratosBeforeEdit(DataSet: TDataSet);
    procedure TBContratosBeforeInsert(DataSet: TDataSet);
    procedure TBContratosBeforePost(DataSet: TDataSet);
    procedure TBContratosPartesAfterInsert(DataSet: TDataSet);
    procedure TBCteAfterEdit(DataSet: TDataSet);
    procedure TBCteAfterInsert(DataSet: TDataSet);
    procedure TBCteAfterPost(DataSet: TDataSet);
    procedure TBCteBeforeEdit(DataSet: TDataSet);
    procedure TBCteBeforeInsert(DataSet: TDataSet);
    procedure TBCteBeforePost(DataSet: TDataSet);
    procedure TBCteCamposAfterInsert(DataSet: TDataSet);
    procedure TBCteCamposBeforeInsert(DataSet: TDataSet);
    procedure TBCteCargaAfterInsert(DataSet: TDataSet);
    procedure TBCtecceAfterDelete(DataSet: TDataSet);
    procedure TBCtecceAfterEdit(DataSet: TDataSet);
    procedure TBCtecceAfterInsert(DataSet: TDataSet);
    procedure TBCtecceAfterPost(DataSet: TDataSet);
    procedure TBCtecceBeforeDelete(DataSet: TDataSet);
    procedure TBCtecceBeforeEdit(DataSet: TDataSet);
    procedure TBCtecceBeforeInsert(DataSet: TDataSet);
    procedure TBCtecceBeforePost(DataSet: TDataSet);
    procedure TBCtecceItensAfterInsert(DataSet: TDataSet);
    procedure TBCteInutilizadosAfterDelete(DataSet: TDataSet);
    procedure TBCteInutilizadosAfterEdit(DataSet: TDataSet);
    procedure TBCteInutilizadosAfterInsert(DataSet: TDataSet);
    procedure TBCteInutilizadosAfterPost(DataSet: TDataSet);
    procedure TBCteInutilizadosBeforeDelete(DataSet: TDataSet);
    procedure TBCteInutilizadosBeforeEdit(DataSet: TDataSet);
    procedure TBCteInutilizadosBeforeInsert(DataSet: TDataSet);
    procedure TBCteInutilizadosBeforePost(DataSet: TDataSet);
    procedure TBCteNotasAfterInsert(DataSet: TDataSet);
    procedure TBCteNotasAfterPost(DataSet: TDataSet);
    procedure TBCteNotasBeforePost(DataSet: TDataSet);
    procedure TBCteVeiculosAfterInsert(DataSet: TDataSet);
    procedure TBCursosAfterInsert(DataSet: TDataSet);
    procedure TBCursosBeforeEdit(DataSet: TDataSet);
    procedure TBCursosBeforeInsert(DataSet: TDataSet);
    procedure TBCursosBeforePost(DataSet: TDataSet);
    procedure TBDeliverysAfterEdit(DataSet: TDataSet);
    procedure TBDeliverysAfterInsert(DataSet: TDataSet);
    procedure TBDeliverysBeforeCancel(DataSet: TDataSet);
    procedure TBDeliverysBeforeEdit(DataSet: TDataSet);
    procedure TBDeliverysBeforePost(DataSet: TDataSet);
    procedure TBDeliverysItensAfterInsert(DataSet: TDataSet);
    procedure TBDeliverysItensAfterPost(DataSet: TDataSet);
    procedure TBDeliverysItensBeforePost(DataSet: TDataSet);
    procedure TBEmailsAfterInsert(DataSet: TDataSet);
    procedure TBEmailsBeforeEdit(DataSet: TDataSet);
    procedure TBEmailsBeforeInsert(DataSet: TDataSet);
    procedure TBEmailsBeforePost(DataSet: TDataSet);
    procedure TBEmailsContasAfterInsert(DataSet: TDataSet);
    procedure TBEmailsContasBeforeEdit(DataSet: TDataSet);
    procedure TBEmailsContasBeforeInsert(DataSet: TDataSet);
    procedure TBEmailsContasBeforePost(DataSet: TDataSet);
    procedure TBEvolucoesAfterEdit(DataSet: TDataSet);
    procedure TBEvolucoesAfterInsert(DataSet: TDataSet);
    procedure TBEvolucoesBeforeEdit(DataSet: TDataSet);
    procedure TBEvolucoesBeforeInsert(DataSet: TDataSet);
    procedure TBEvolucoesBeforePost(DataSet: TDataSet);
    procedure TBExamesTiposAfterInsert(DataSet: TDataSet);
    procedure TBExamesTiposBeforeEdit(DataSet: TDataSet);
    procedure TBExamesTiposBeforeInsert(DataSet: TDataSet);
    procedure TBExamesTiposBeforePost(DataSet: TDataSet);
    procedure TBExerciciosAfterDelete(DataSet: TDataSet);
    procedure TBExerciciosAfterInsert(DataSet: TDataSet);
    procedure TBExerciciosAfterPost(DataSet: TDataSet);
    procedure TBExerciciosBeforeEdit(DataSet: TDataSet);
    procedure TBExerciciosBeforeInsert(DataSet: TDataSet);
    procedure TBExerciciosBeforePost(DataSet: TDataSet);
    procedure TBFasesAfterInsert(DataSet: TDataSet);
    procedure TBFasesBeforeEdit(DataSet: TDataSet);
    procedure TBFasesBeforeInsert(DataSet: TDataSet);
    procedure TBFasesBeforePost(DataSet: TDataSet);
    procedure TBFeriadosAfterInsert(DataSet: TDataSet);
    procedure TBFeriadosBeforeEdit(DataSet: TDataSet);
    procedure TBFeriadosBeforeInsert(DataSet: TDataSet);
    procedure TBFeriadosBeforePost(DataSet: TDataSet);
    procedure TBForosAfterInsert(DataSet: TDataSet);
    procedure TBForosBeforeEdit(DataSet: TDataSet);
    procedure TBForosBeforeInsert(DataSet: TDataSet);
    procedure TBForosBeforePost(DataSet: TDataSet);
    procedure TBFrotasAfterInsert(DataSet: TDataSet);
    procedure TBFrotasBeforeEdit(DataSet: TDataSet);
    procedure TBFrotasBeforeInsert(DataSet: TDataSet);
    procedure TBFrotasBeforePost(DataSet: TDataSet);
    procedure TBGnreAfterEdit(DataSet: TDataSet);
    procedure TBGnreAfterInsert(DataSet: TDataSet);
    procedure TBGnreBeforeEdit(DataSet: TDataSet);
    procedure TBGnreBeforeInsert(DataSet: TDataSet);
    procedure TBGnreBeforePost(DataSet: TDataSet);
    procedure TBImoveisAfterInsert(DataSet: TDataSet);
    procedure TBImoveisBeforeEdit(DataSet: TDataSet);
    procedure TBImoveisBeforeInsert(DataSet: TDataSet);
    procedure TBImoveisBeforePost(DataSet: TDataSet);
    procedure TBImoveisTiposAfterInsert(DataSet: TDataSet);
    procedure TBImoveisTiposBeforeEdit(DataSet: TDataSet);
    procedure TBImoveisTiposBeforeInsert(DataSet: TDataSet);
    procedure TBImoveisTiposBeforePost(DataSet: TDataSet);
    procedure TBLocacoesAfterInsert(DataSet: TDataSet);
    procedure TBLocacoesAfterPost(DataSet: TDataSet);
    procedure TBLocacoesBeforeEdit(DataSet: TDataSet);
    procedure TBLocacoesBeforeInsert(DataSet: TDataSet);
    procedure TBLocacoesBeforePost(DataSet: TDataSet);
    procedure TBLocaisAfterInsert(DataSet: TDataSet);
    procedure TBLocaisBeforeEdit(DataSet: TDataSet);
    procedure TBLocaisBeforeInsert(DataSet: TDataSet);
    procedure TBLocaisBeforePost(DataSet: TDataSet);
    procedure TBMarcasAfterInsert(DataSet: TDataSet);
    procedure TBMarcasBeforeEdit(DataSet: TDataSet);
    procedure TBMarcasBeforeInsert(DataSet: TDataSet);
    procedure TBMarcasBeforePost(DataSet: TDataSet);
    procedure TBMarkupsAfterInsert(DataSet: TDataSet);
    procedure TBMarkupsBeforeEdit(DataSet: TDataSet);
    procedure TBMarkupsBeforeInsert(DataSet: TDataSet);
    procedure TBMarkupsBeforePost(DataSet: TDataSet);
    procedure TBMarkupsItensAfterDelete(DataSet: TDataSet);
    procedure TBMarkupsItensAfterInsert(DataSet: TDataSet);
    procedure TBMarkupsItensAfterPost(DataSet: TDataSet);
    procedure TBMatriculasAfterInsert(DataSet: TDataSet);
    procedure TBMatriculasAfterPost(DataSet: TDataSet);
    procedure TBMatriculasBeforeEdit(DataSet: TDataSet);
    procedure TBMatriculasBeforeInsert(DataSet: TDataSet);
    procedure TBMatriculasBeforePost(DataSet: TDataSet);
    procedure TBMdfeAfterEdit(DataSet: TDataSet);
    procedure TBMdfeAfterInsert(DataSet: TDataSet);
    procedure TBMdfeAfterPost(DataSet: TDataSet);
    procedure TBMdfeBeforeEdit(DataSet: TDataSet);
    procedure TBMdfeBeforeInsert(DataSet: TDataSet);
    procedure TBMdfeBeforePost(DataSet: TDataSet);
    procedure TBMdfeCarregaAfterInsert(DataSet: TDataSet);
    procedure TBMdfeDescarregaAfterDelete(DataSet: TDataSet);
    procedure TBMdfeDescarregaAfterInsert(DataSet: TDataSet);
    procedure TBMdfeDocsAfterDelete(DataSet: TDataSet);
    procedure TBMdfeDocsAfterInsert(DataSet: TDataSet);
    procedure TBMdfeDocsAfterPost(DataSet: TDataSet);
    procedure TBMdfeMotoristasAfterInsert(DataSet: TDataSet);
    procedure TBMdfePercursosAfterInsert(DataSet: TDataSet);
    procedure TBMedicamentosAfterInsert(DataSet: TDataSet);
    procedure TBMedicamentosBeforeEdit(DataSet: TDataSet);
    procedure TBMedicamentosBeforeInsert(DataSet: TDataSet);
    procedure TBMedicamentosBeforePost(DataSet: TDataSet);
    procedure TBMedicoesAfterInsert(DataSet: TDataSet);
    procedure TBMedicoesBeforeEdit(DataSet: TDataSet);
    procedure TBMedicoesBeforeInsert(DataSet: TDataSet);
    procedure TBMedicoesBeforePost(DataSet: TDataSet);
    procedure TBMensagensAfterInsert(DataSet: TDataSet);
    procedure TBMensalidadesAfterInsert(DataSet: TDataSet);
    procedure TBMensalidadesBeforeEdit(DataSet: TDataSet);
    procedure TBMensalidadesBeforeInsert(DataSet: TDataSet);
    procedure TBMensalidadesBeforePost(DataSet: TDataSet);
    procedure TBMotivosAfterInsert(DataSet: TDataSet);
    procedure TBMotivosBeforeEdit(DataSet: TDataSet);
    procedure TBMotivosBeforeInsert(DataSet: TDataSet);
    procedure TBMotivosBeforePost(DataSet: TDataSet);
    procedure TBObjetosAfterInsert(DataSet: TDataSet);
    procedure TBObjetosBeforeEdit(DataSet: TDataSet);
    procedure TBObjetosBeforeInsert(DataSet: TDataSet);
    procedure TBObjetosBeforePost(DataSet: TDataSet);
    procedure TBOdontogramasAfterInsert(DataSet: TDataSet);
    procedure TBOdontogramasBeforeEdit(DataSet: TDataSet);
    procedure TBOdontogramasBeforeInsert(DataSet: TDataSet);
    procedure TBOdontogramasBeforePost(DataSet: TDataSet);
    procedure TBOdontogramasOpcoesAfterInsert(DataSet: TDataSet);
    procedure TBOdontogramasOpcoesBeforeEdit(DataSet: TDataSet);
    procedure TBOdontogramasOpcoesBeforeInsert(DataSet: TDataSet);
    procedure TBOdontogramasOpcoesBeforePost(DataSet: TDataSet);
    procedure TBOpcionaisAfterInsert(DataSet: TDataSet);
    procedure TBOpcionaisBeforeEdit(DataSet: TDataSet);
    procedure TBOpcionaisBeforeInsert(DataSet: TDataSet);
    procedure TBOpcionaisBeforePost(DataSet: TDataSet);
    procedure TBPontosAfterEdit(DataSet: TDataSet);
    procedure TBPontosAfterInsert(DataSet: TDataSet);
    procedure TBPontosAfterPost(DataSet: TDataSet);
    procedure TBPontosBeforeEdit(DataSet: TDataSet);
    procedure TBPontosBeforeInsert(DataSet: TDataSet);
    procedure TBPontosBeforePost(DataSet: TDataSet);
    procedure TBProcessosAfterInsert(DataSet: TDataSet);
    procedure TBProcessosBeforeEdit(DataSet: TDataSet);
    procedure TBProcessosBeforeInsert(DataSet: TDataSet);
    procedure TBProcessosBeforePost(DataSet: TDataSet);
    procedure TBProcessosCustasAfterEdit(DataSet: TDataSet);
    procedure TBProcessosCustasAfterInsert(DataSet: TDataSet);
    procedure TBProcessosCustasAfterPost(DataSet: TDataSet);
    procedure TBProcessosCustasBeforeEdit(DataSet: TDataSet);
    procedure TBProcessosCustasBeforeInsert(DataSet: TDataSet);
    procedure TBProcessosCustasBeforePost(DataSet: TDataSet);
    procedure TBProcessosHistoricoAfterInsert(DataSet: TDataSet);
    procedure TBProcessosHistoricoBeforeEdit(DataSet: TDataSet);
    procedure TBProcessosHistoricoBeforeInsert(DataSet: TDataSet);
    procedure TBProcessosHistoricoBeforePost(DataSet: TDataSet);
    procedure TBProcessosPartesAfterInsert(DataSet: TDataSet);
    procedure TBProcessosPartesBeforeEdit(DataSet: TDataSet);
    procedure TBProcessosPartesBeforeInsert(DataSet: TDataSet);
    procedure TBProjetosAfterInsert(DataSet: TDataSet);
    procedure TBProjetosBeforeEdit(DataSet: TDataSet);
    procedure TBProjetosBeforeInsert(DataSet: TDataSet);
    procedure TBProjetosBeforePost(DataSet: TDataSet);
    procedure TBProjetosFasesAfterInsert(DataSet: TDataSet);
    procedure TBProjetosFasesBeforePost(DataSet: TDataSet);
    procedure TBProjetosHistoricoAfterInsert(DataSet: TDataSet);
    procedure TBProjetosHistoricoBeforeEdit(DataSet: TDataSet);
    procedure TBProjetosHistoricoBeforeInsert(DataSet: TDataSet);
    procedure TBProjetosHistoricoBeforePost(DataSet: TDataSet);
    procedure TBProjetosItensAfterInsert(DataSet: TDataSet);
    procedure TBProjetosItensAfterPost(DataSet: TDataSet);
    procedure TBProjetosItensBeforePost(DataSet: TDataSet);
    procedure TBProjetosTiposAfterInsert(DataSet: TDataSet);
    procedure TBProjetosTiposBeforeEdit(DataSet: TDataSet);
    procedure TBProjetosTiposBeforeInsert(DataSet: TDataSet);
    procedure TBProjetosTiposBeforePost(DataSet: TDataSet);
    procedure TBPromissoriasAfterInsert(DataSet: TDataSet);
    procedure TBPromissoriasBeforeEdit(DataSet: TDataSet);
    procedure TBPromissoriasBeforeInsert(DataSet: TDataSet);
    procedure TBPromissoriasBeforePost(DataSet: TDataSet);
    procedure TBProntuariosAfterInsert(DataSet: TDataSet);
    procedure TBProntuariosBeforeEdit(DataSet: TDataSet);
    procedure TBProntuariosBeforeInsert(DataSet: TDataSet);
    procedure TBProntuariosBeforePost(DataSet: TDataSet);
    procedure TBReceituariosAfterInsert(DataSet: TDataSet);
    procedure TBReceituariosBeforeEdit(DataSet: TDataSet);
    procedure TBReceituariosBeforeInsert(DataSet: TDataSet);
    procedure TBReceituariosBeforePost(DataSet: TDataSet);
    procedure TBRecibosAfterInsert(DataSet: TDataSet);
    procedure TBRecibosBeforeEdit(DataSet: TDataSet);
    procedure TBRecibosBeforeInsert(DataSet: TDataSet);
    procedure TBRecibosBeforePost(DataSet: TDataSet);
    procedure TBRemessasAfterInsert(DataSet: TDataSet);
    procedure TBRemessasItensAfterInsert(DataSet: TDataSet);
    procedure TBSegurosAfterInsert(DataSet: TDataSet);
    procedure TBSegurosBeforeEdit(DataSet: TDataSet);
    procedure TBSegurosBeforeInsert(DataSet: TDataSet);
    procedure TBSegurosBeforePost(DataSet: TDataSet);
    procedure TBSegurosEndossosAfterInsert(DataSet: TDataSet);
    procedure TBSegurosParcelasAfterInsert(DataSet: TDataSet);
    procedure TBSegurosParcelasBeforePost(DataSet: TDataSet);
    procedure TBSegurosTiposAfterInsert(DataSet: TDataSet);
    procedure TBSegurosTiposBeforeEdit(DataSet: TDataSet);
    procedure TBSegurosTiposBeforeInsert(DataSet: TDataSet);
    procedure TBSegurosTiposBeforePost(DataSet: TDataSet);
    procedure TBTelevendasAfterEdit(DataSet: TDataSet);
    procedure TBTelevendasAfterInsert(DataSet: TDataSet);
    procedure TBTelevendasBeforeEdit(DataSet: TDataSet);
    procedure TBTelevendasBeforeInsert(DataSet: TDataSet);
    procedure TBTelevendasBeforePost(DataSet: TDataSet);
    procedure TBTurmasAfterInsert(DataSet: TDataSet);
    procedure TBTurmasBeforeEdit(DataSet: TDataSet);
    procedure TBTurmasBeforeInsert(DataSet: TDataSet);
    procedure TBTurmasBeforePost(DataSet: TDataSet);
    procedure TBUnidadesAfterInsert(DataSet: TDataSet);
    procedure TBUnidadesBeforeEdit(DataSet: TDataSet);
    procedure TBUnidadesBeforeInsert(DataSet: TDataSet);
    procedure TBUnidadesBeforePost(DataSet: TDataSet);
    procedure TBVeiculosAfterInsert(DataSet: TDataSet);
    procedure TBVeiculosBeforeEdit(DataSet: TDataSet);
    procedure TBVeiculosBeforeInsert(DataSet: TDataSet);
    procedure TBVeiculosBeforePost(DataSet: TDataSet);
    procedure TBVeiculosClienteAfterInsert(DataSet: TDataSet);
    procedure TBVeiculosClienteBeforeEdit(DataSet: TDataSet);
    procedure TBVeiculosClienteBeforeInsert(DataSet: TDataSet);
    procedure TBVeiculosClienteBeforePost(DataSet: TDataSet);
    procedure TBVeiculosVendaAfterEdit(DataSet: TDataSet);
    procedure TBVeiculosVendaAfterInsert(DataSet: TDataSet);
    procedure TBVeiculosVendaBeforeEdit(DataSet: TDataSet);
    procedure TBVeiculosVendaBeforeInsert(DataSet: TDataSet);
    procedure TBVeiculosVendaBeforePost(DataSet: TDataSet);
    procedure TBConsultasAfterPost(DataSet: TDataSet);
    procedure TBMdfeDescarregaAfterPost(DataSet: TDataSet);
    procedure TBZapInstanciasAfterInsert(DataSet: TDataSet);
    procedure TBZapInstanciasBeforeEdit(DataSet: TDataSet);
    procedure TBZapInstanciasBeforeInsert(DataSet: TDataSet);
    procedure TBZapInstanciasBeforePost(DataSet: TDataSet);
    procedure DSZapInstanciasStateChange(Sender: TObject);
    procedure DSZapMensagensStateChange(Sender: TObject);
    procedure TBZapMensagensAfterInsert(DataSet: TDataSet);
    procedure TBZapMensagensBeforeEdit(DataSet: TDataSet);
    procedure TBZapMensagensBeforeInsert(DataSet: TDataSet);
    procedure TBZapMensagensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    AtualizarSaldoReposicoes: Boolean;
  public
    { Public declarations }
    function CalcularValorTotalLocacao(DataPrevisao: TDate; HoraLimite: TTime; ValorUnitario: Currency): Currency;
    procedure CalcularTotaisProjeto(DarPost: Boolean);
    procedure CalcularTotaisCTe(DarPost: Boolean);
    procedure CalcularTotaisCTeNotas(DarPost: Boolean);
    procedure CalcularTotaisMDFe(DarPost: Boolean);
    procedure CalcularTotaisBoleto(DarPost: Boolean);
    procedure CalcularTotaisComanda(DarPost: Boolean);
    procedure CalcularTotaisComandaItens(DarPost: Boolean);
    procedure CalcularTotaisConsulta(DarPost: Boolean);
    procedure CalcularTotaisMarkup(DarPost: Boolean);
    procedure CalcularTotaisDelivery(DarPost: Boolean);
    procedure CalcularTotaisDeliveryItens(DarPost: Boolean);
    procedure IncluirAlunoChamada(Matricula, Aluno, Turma: Integer);
    procedure AtualizarMediaExercicios;
    procedure AtualizarMediaAvaliacoes;
    procedure AtualizarSaldoProcesso(Valor: Currency; EntradaSaida: String);
  end;

var
  DM2: TDM2;
  CalcularTotais: Boolean = True;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, CTe_Util_TLB, MDFe_Util_TLB, Classeso, Main,
  Objetos, ClientesLoc, Locacoes, Fases, ProjetosTipos, Projetos, ProjetosHistorico,
  Promissorias, Cheques, Bancos, TeleVendas, Veiculos, Opcionais, Classificados,
  VeiculosVenda, VeiculosCliente, Turmas, Matriculas, Conteudos, Exercicios,
  AvaliacoesTipo, Avaliacoes, Math, Recibos, Pontos, Motivos, Locais, Feriados,
  Marcas, Frotas, Conhecimentos,  Unidades, Boletos, BoletosRemessas,
  Atendimentos, ImoveisTipos, Imoveis, Comandas, Contratos, Cursos, Assuntos,
  EmailsContas, Emails, ConhecimentosInutilizados, Foros, Acoes, Processos,
  ProcessosHistorico, ProcessosPartes, ProcessosCustas, EmailsEnviar, HtmlEditor,
  MsHtml, Mdfe, Gnre, CTeCampos, CTeCCe, Markups, Medicoes, Evolucoes, Medicamentos,
  Receituarios, Mensalidades, Prontuarios, ExamesTipos, Consultas, DeliveryDetalhes,
  SegurosTipos, Seguros, OdontogramasOpcoes, Odontogramas, Data.SqlTimSt,
  ZapInstancias, ZapMensagens;
{$R *.dfm}

procedure TDM2.DataModuleCreate(Sender: TObject);
begin
  //Adicionar tabelas na procedure AbrirTabelas no DM.
end;

//##############################################################################
// ACOES                                                                      //
//##############################################################################
{$REGION 'TABELA ACOES'}
procedure TDM2.TBAcoesAfterInsert(DataSet: TDataSet);
begin
  TBAcoesACO_DTCADASTRO.Value:=DM.ServerDate;
  TBAcoesACO_HRCADASTRO.Value:=DM.ServerTime;
  TBAcoesACO_STATUS.Value:='A';
end;

procedure TDM2.TBAcoesBeforeEdit(DataSet: TDataSet);
begin
  if FormAcoes<>nil then
  FormMain.SetFields(FormAcoes,True);
end;

procedure TDM2.TBAcoesBeforeInsert(DataSet: TDataSet);
begin
  if FormAcoes<>nil then
  begin
    FormMain.SetFields(FormAcoes,True);
    FormAcoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBAcoesBeforePost(DataSet: TDataSet);
begin
  TBAcoesACO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBAcoesACO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBAcoesACO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSAcoesStateChange(Sender: TObject);
begin
  if TBAcoes.State in [dsInsert, dsEdit] then
  begin
    if FormAcoes<>nil then
    begin
      FormAcoes.Localizar1.Enabled:=False;
      FormAcoes.Localizar1Button.Enabled:=False;
      FormAcoes.Relatorios2.Enabled:=False;
      FormAcoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormAcoes<>nil then
    begin
      FormAcoes.Localizar1.Enabled:=True;
      FormAcoes.Localizar1Button.Enabled:=True;
      FormAcoes.Relatorios2.Enabled:=True;
      FormAcoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAcoes);
      FormMain.SetFields(FormAcoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ASSUNTOS                                                                   //
//##############################################################################
{$REGION 'TABELA ASSUNTOS'}
procedure TDM2.TBAssuntosAfterInsert(DataSet: TDataSet);
begin
  TBAssuntosASS_DTCADASTRO.Value:=DM.ServerDate;
  TBAssuntosASS_HRCADASTRO.Value:=DM.ServerTime;
  TBAssuntosASS_STATUS.Value:='A';
  TBAssuntosASS_HTML.Value:='S';
end;

procedure TDM2.TBAssuntosBeforeEdit(DataSet: TDataSet);
begin
  if FormAssuntos<>nil then
  FormMain.SetFields(FormAssuntos,True);
end;

procedure TDM2.TBAssuntosBeforeInsert(DataSet: TDataSet);
begin
  if FormAssuntos<>nil then
  begin
    FormMain.SetFields(FormAssuntos,True);
    FormAssuntos.DBEdit4.SetFocus;
  end;
end;

procedure TDM2.TBAssuntosBeforePost(DataSet: TDataSet);
var Doc: IHtmlDocument2;
begin
  TBAssuntosASS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBAssuntosASS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBAssuntosASS_USUARIO.Value:=DM.UsuarioLogin;

  //antes de salvar, atualiza o texto do campo blob com o novo HTML.
  if FormAssuntos<>nil then
  begin
    if TBAssuntosASS_HTML.Value='S' then
    begin
      Doc:=FormAssuntos.FrameHtmlEditor1.WebBrowser1.Document as IHtmlDocument2;
      TBAssuntosASS_TEXTO.Value:=Doc.body.innerHTML;
    end;
  end;
end;

procedure TDM2.DSAssuntosDataChange(Sender: TObject; Field: TField);
begin
  if FormAssuntos<>nil then
  begin
    if TBAssuntosASS_HTML.Value='S' then
    begin
      FormAssuntos.TabSheet2.TabVisible:=True;
      FormAssuntos.PageControl1.ActivePageIndex:=1;
    end else
    FormAssuntos.TabSheet2.TabVisible:=False;

    FormAssuntos.FrameHtmlEditor1.CarregarCodigoHTML(TBAssuntosASS_TEXTO.Value);
  end;
end;

procedure TDM2.DSAssuntosStateChange(Sender: TObject);
begin
  if TBAssuntos.State in [dsInsert, dsEdit] then
  begin
    if FormAssuntos<>nil then
    begin
      FormAssuntos.Localizar1.Enabled:=False;
      FormAssuntos.Localizar1Button.Enabled:=False;
      FormAssuntos.Relatorios2.Enabled:=False;
      FormAssuntos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormAssuntos<>nil then
    begin
      FormAssuntos.Localizar1.Enabled:=True;
      FormAssuntos.Localizar1Button.Enabled:=True;
      FormAssuntos.Relatorios2.Enabled:=True;
      FormAssuntos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAssuntos);
      FormMain.SetFields(FormAssuntos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ATENDIMENTOS                                                               //
//##############################################################################
{$REGION 'TABELA ATENDIMENTOS'}
procedure TDM2.TBAtendimentosAfterInsert(DataSet: TDataSet);
begin
  TBAtendimentosATE_DTCADASTRO.Value:=DM.ServerDate;
  TBAtendimentosATE_HRCADASTRO.Value:=DM.ServerTime;
  TBAtendimentosATE_AULA.Value:='N';
  TBAtendimentosATE_TESTEESCRITO.Value:='N';
  TBAtendimentosATE_TESTEORAL.Value:='N';
end;

procedure TDM2.TBAtendimentosBeforeEdit(DataSet: TDataSet);
begin
  if FormAtendimentos<>nil then
  FormMain.SetFields(FormAtendimentos,True);
end;

procedure TDM2.TBAtendimentosBeforeInsert(DataSet: TDataSet);
begin
  if FormAtendimentos<>nil then
  begin
    FormMain.SetFields(FormAtendimentos,True);
    FormAtendimentos.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBAtendimentosBeforePost(DataSet: TDataSet);
begin
  TBAtendimentosATE_DTATUALIZACAO.Value:=DM.ServerDate;
  TBAtendimentosATE_HRATUALIZACAO.Value:=DM.ServerTime;
  TBAtendimentosATE_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSAtendimentosDataChange(Sender: TObject; Field: TField);
begin
  if not TBAtendimentosATE_CLIENTE.IsNull then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) MAT_CODIGO from MATRICULAS where MAT_CLIENTE=:cliente and MAT_STATUS=''A'' order by MAT_CODIGO desc');
    DM.QYAux.ParamByName('cliente').AsInteger:=TBAtendimentosATE_CLIENTE.Value;
    DM.QYAux.Open;
    if not DM.QYAux.IsEmpty then
    begin
      if FormAtendimentos<>nil then
      FormAtendimentos.Label3.Caption:='SIM';
    end else
    begin
      if FormAtendimentos<>nil then
      FormAtendimentos.Label3.Caption:='NÃO';
    end;
  end else
  begin
    if FormAtendimentos<>nil then
    FormAtendimentos.Label3.Caption:='';
  end;
end;

procedure TDM2.DSAtendimentosStateChange(Sender: TObject);
begin
  if TBAtendimentos.State in [dsInsert, dsEdit] then
  begin
    if FormAtendimentos<>nil then
    begin
      FormAtendimentos.AulasDemoAgendadasNoPeriodo1.Enabled:=False;
      FormAtendimentos.AtendimentosNoPeriodoPorVendedor1.Enabled:=False;
      FormAtendimentos.Localizar1.Enabled:=False;
      FormAtendimentos.Localizar1Button.Enabled:=False;
      FormAtendimentos.Relatorios2.Enabled:=False;
      FormAtendimentos.Relatorios2Button.Enabled:=False;
      FormAtendimentos.TestesEscritosAgendadosNoPeriodo1.Enabled:=False;
      FormAtendimentos.TestesOraisAgendadosNoPeriodo1.Enabled:=False;
    end;
  end else
  begin
    if FormAtendimentos<>nil then
    begin
      FormAtendimentos.AulasDemoAgendadasNoPeriodo1.Enabled:=True;
      FormAtendimentos.AtendimentosNoPeriodoPorVendedor1.Enabled:=True;
      FormAtendimentos.Localizar1.Enabled:=True;
      FormAtendimentos.Localizar1Button.Enabled:=True;
      FormAtendimentos.Relatorios2.Enabled:=True;
      FormAtendimentos.Relatorios2Button.Enabled:=True;
      FormAtendimentos.TestesEscritosAgendadosNoPeriodo1.Enabled:=True;
      FormAtendimentos.TestesOraisAgendadosNoPeriodo1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAtendimentos);
      FormMain.SetFields(FormAtendimentos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// NOTAS DE AVALIACOES.                                                       //
//##############################################################################
{$REGION 'TABELA AVALIACOES'}
procedure TDM2.TBAvaliacoesAfterDelete(DataSet: TDataSet);
begin
  AtualizarMediaAvaliacoes;
end;

procedure TDM2.TBAvaliacoesAfterInsert(DataSet: TDataSet);
begin
  TBAvaliacoesAVA_DTCADASTRO.Value:=DM.ServerDate;
  TBAvaliacoesAVA_HRCADASTRO.Value:=DM.ServerTime;
  TBAvaliacoesAVA_CONTAMEDIA.Value:='S';
  TBAvaliacoesAVA_MATRICULA.Value:=TBMatriculasMAT_CODIGO.Value;
end;

procedure TDM2.TBAvaliacoesAfterPost(DataSet: TDataSet);
begin
  AtualizarMediaAvaliacoes;
end;

procedure TDM2.TBAvaliacoesBeforeEdit(DataSet: TDataSet);
begin
  if FormAvaliacoes<>nil then
  FormMain.SetFields(FormAvaliacoes,True);
end;

procedure TDM2.TBAvaliacoesBeforeInsert(DataSet: TDataSet);
begin
  if FormAvaliacoes<>nil then
  begin
    FormMain.SetFields(FormAvaliacoes,True);
    FormAvaliacoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBAvaliacoesBeforePost(DataSet: TDataSet);
begin
  TBAvaliacoesAVA_DTATUALIZACAO.Value:=DM.ServerDate;
  TBAvaliacoesAVA_HRATUALIZACAO.Value:=DM.ServerTime;
  TBAvaliacoesAVA_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.AtualizarMediaAvaliacoes;
var
  Qtde: Integer;
  Notas: Real;
  Media: Real;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from AVALIACOES where AVA_MATRICULA=:matricula and AVA_CONTAMEDIA=''S''');
  DM.QYAux.ParamByName('matricula').AsInteger:=TBMatriculasMAT_CODIGO.Value;
  DM.QYAux.Open;
  Qtde:=DM.QYAux.FieldByName('QTDE').AsInteger;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(AVA_NOTA) as NOTAS from AVALIACOES where AVA_MATRICULA=:matricula and AVA_CONTAMEDIA=''S''');
  DM.QYAux.ParamByName('matricula').AsInteger:=TBMatriculasMAT_CODIGO.Value;
  DM.QYAux.Open;
  Notas:=DM.QYAux.FieldByName('NOTAS').AsFloat;

  Media:=0;
  if Qtde<>0 then
  Media:=Notas/Qtde;
  TBMatriculas.Edit;
  TBMatriculasMAT_MEDIAFINAL.Value:=Decimais(Media,2);
  TBMatriculas.Post;
end;

procedure TDM2.DSAvaliacoesStateChange(Sender: TObject);
begin
  if TBAvaliacoes.State in [dsInsert, dsEdit] then
  begin
    if FormAvaliacoes<>nil then
    begin
      FormAvaliacoes.Localizar1.Enabled:=False;
      FormAvaliacoes.Localizar1Button.Enabled:=False;
      FormAvaliacoes.PreencherNotaComAMediaDosExercicios1.Enabled:=True;
    end;
  end else
  begin
    if FormAvaliacoes<>nil then
    begin
      FormAvaliacoes.Localizar1.Enabled:=True;
      FormAvaliacoes.Localizar1Button.Enabled:=True;
      FormAvaliacoes.PreencherNotaComAMediaDosExercicios1.Enabled:=False;
      //...
      FormMain.DesabilitarControles(FormAvaliacoes);
      FormMain.SetFields(FormAvaliacoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TIPO DE AVALIACOES.                                                        //
//##############################################################################
{$REGION 'TABELA AVALIACOESTIPO'}
procedure TDM2.TBAvaliacoesTipoAfterInsert(DataSet: TDataSet);
begin
  TBAvaliacoesTipoAVT_DTCADASTRO.Value:=DM.ServerDate;
  TBAvaliacoesTipoAVT_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBAvaliacoesTipoBeforeEdit(DataSet: TDataSet);
begin
  if FormAvaliacoesTipo<>nil then
  FormMain.SetFields(FormAvaliacoesTipo,True);
end;

procedure TDM2.TBAvaliacoesTipoBeforeInsert(DataSet: TDataSet);
begin
  if FormAvaliacoesTipo<>nil then
  begin
    FormMain.SetFields(FormAvaliacoesTipo,True);
    FormAvaliacoesTipo.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBAvaliacoesTipoBeforePost(DataSet: TDataSet);
begin
  TBAvaliacoesTipoAVT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBAvaliacoesTipoAVT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBAvaliacoesTipoAVT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSAvaliacoesTipoStateChange(Sender: TObject);
begin
  if TBAvaliacoesTipo.State in [dsInsert, dsEdit] then
  begin
    if FormAvaliacoesTipo<>nil then
    begin
      FormAvaliacoesTipo.Localizar1.Enabled:=False;
      FormAvaliacoesTipo.Localizar1Button.Enabled:=False;
      FormAvaliacoesTipo.Relatorios2.Enabled:=False;
      FormAvaliacoesTipo.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormAvaliacoesTipo<>nil then
    begin
      FormAvaliacoesTipo.Localizar1.Enabled:=True;
      FormAvaliacoesTipo.Localizar1Button.Enabled:=True;
      FormAvaliacoesTipo.Relatorios2.Enabled:=True;
      FormAvaliacoesTipo.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormAvaliacoesTipo);
      FormMain.SetFields(FormAvaliacoesTipo,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BANCOS                                                                     //
//##############################################################################
{$REGION 'TABELA BANCOS'}
procedure TDM2.TBBancosAfterInsert(DataSet: TDataSet);
begin
  TBBancosBAN_DTCADASTRO.Value:=DM.ServerDate;
  TBBancosBAN_HRCADASTRO.Value:=DM.ServerTime;
  TBBancosBAN_STATUS.Value:='A';
end;

procedure TDM2.TBBancosBeforeEdit(DataSet: TDataSet);
begin
  if FormBancos<>nil then
  FormMain.SetFields(FormBancos,True);
end;

procedure TDM2.TBBancosBeforeInsert(DataSet: TDataSet);
begin
  if FormBancos<>nil then
  begin
    FormMain.SetFields(FormBancos,True);
    FormBancos.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBBancosBeforePost(DataSet: TDataSet);
begin
  TBBancosBAN_DTATUALIZACAO.Value:=DM.ServerDate;
  TBBancosBAN_HRATUALIZACAO.Value:=DM.ServerTime;
  TBBancosBAN_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSBancosStateChange(Sender: TObject);
begin
  if TBBancos.State in [dsInsert, dsEdit] then
  begin
    if FormBancos<>nil then
    begin
      FormBancos.Localizar1.Enabled:=False;
      FormBancos.Localizar1Button.Enabled:=False;
      FormBancos.Relatorios2.Enabled:=False;
      FormBancos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormBancos<>nil then
    begin
      FormBancos.Localizar1.Enabled:=True;
      FormBancos.Localizar1Button.Enabled:=True;
      FormBancos.Relatorios2.Enabled:=True;
      FormBancos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormBancos);
      FormMain.SetFields(FormBancos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BOLETOS                                                                    //
//##############################################################################
{$REGION 'TABELA BOLETOS'}
procedure TDM2.CalcularTotaisBoleto(DarPost: Boolean);
begin
  TBBoletos.Edit;
  //atualiza o total do boleto.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(REE_VALOR+REE_VALORACESSORIAS) as VALOR from BOLETOSITENS left join RECEBER on BOI_RECEBER=REE_CODIGO where BOI_BOLETO=:boleto');
  DM.QYAux.ParamByName('boleto').AsInteger:=TBBoletosBOL_CODIGO.Value;
  DM.QYAux.Open;
  TBBoletosBOL_VALORITENS.Value:=DM.QYAux.FieldByName('VALOR').AsExtended;
  TBBoletosBOL_VALORTOTAL.Value:=TBBoletosBOL_VALORBOLETO.Value+TBBoletosBOL_VALORITENS.Value+TBBoletosBOL_VALORJUROS.Value+TBBoletosBOL_VALORMULTA.Value; //esse calculo repete no before post da tabela boletos.
  DM.QYAux.Close;

  if TBBoletosBOL_DESCPORC.Value<0 then TBBoletosBOL_DESCPORC.Value:=0;
  if TBBoletosBOL_DESCVALOR.Value<0 then TBBoletosBOL_DESCVALOR.Value:=0;
  if TBBoletosBOL_DESCPORC.Value>0 then
  TBBoletosBOL_DESCVALOR.Value:=Decimais((TBBoletosBOL_VALORTOTAL.AsExtended/100.00)*TBBoletosBOL_DESCPORC.AsExtended,2) else

  if TBBoletosBOL_VALORTOTAL.Value>0 then
  TBBoletosBOL_DESCPORC.Value:=((TBBoletosBOL_DESCVALOR.Value*100.00)/TBBoletosBOL_VALORTOTAL.Value);

  if DarPost then TBBoletos.Post;
end;

procedure TDM2.TBBoletosAfterEdit(DataSet: TDataSet);
begin
  if (TBBoletosBOL_STATUS.Value='B') or (TBBoletosBOL_STATUS.Value='C') then
  begin
    MessageDlg('Não é possível alterar um boleto já baixado ou cancelado.',mtWarning,[mbOk],0);
    TBBoletos.Cancel;
  end;
end;

procedure TDM2.TBBoletosAfterInsert(DataSet: TDataSet);
begin
  TBBoletosBOL_ACEITE.Value:='N';
  TBBoletosBOL_DESCPORC.Value:=0;
  TBBoletosBOL_DESCTIPO.Value:='0 - SEM DESCONTO';
  TBBoletosBOL_DESCVALOR.Value:=0;
  TBBoletosBOL_DIASBAIXA.Value:=0;
  TBBoletosBOL_DIASPROTESTO.Value:=0;
  TBBoletosBOL_DTCADASTRO.Value:=DM.ServerDate;
  TBBoletosBOL_HRCADASTRO.Value:=DM.ServerTime;
  //TBBoletosBOL_DTDESCONTO.Value:=TBBoletosBOL_DTCADASTRO.Value;
  TBBoletosBOL_DTVENCIMENTO.Value:=TBBoletosBOL_DTCADASTRO.Value;
  TBBoletosBOL_GEROUREMESSA.Value:='N';
  TBBoletosBOL_MORAJUROS.Value:=0;
  TBBoletosBOL_MULTA.Value:=0;
  TBBoletosBOL_STATUS.Value:='A';
  TBBoletosBOL_VALORBOLETO.Value:=0;
  TBBoletosBOL_VALORITENS.Value:=0;
  TBBoletosBOL_VALORJUROS.Value:=0;
  TBBoletosBOL_VALORMULTA.Value:=0;
  TBBoletosBOL_VALORPAGO.Value:=0;
  TBBoletosBOL_VALORTOTAL.Value:=0;
end;

procedure TDM2.TBBoletosBeforeEdit(DataSet: TDataSet);
begin
  if FormBoletos<>nil then
  FormMain.SetFields(FormBoletos,True);
end;

procedure TDM2.TBBoletosBeforeInsert(DataSet: TDataSet);
begin
  if FormBoletos<>nil then
  begin
    FormMain.SetFields(FormBoletos,True);
    FormBoletos.DBEdit15.SetFocus;
  end;
end;

procedure TDM2.TBBoletosBeforePost(DataSet: TDataSet);
var NossoNumero, Barras, Livre, Campo1, Campo2, Campo3, Campo4, Campo5, S: String;
  A,M,D: Word;
begin
  DecodeDate(TBBoletosBOL_DTCADASTRO.Value,A,M,D); //para gerar o nosso numero do sicredi.

  DM.CodigoMark:=TBBoletosBOL_CODIGO.Value;

  if TBBoletosBOL_DTJUROSAPOS.IsNull then
  TBBoletosBOL_DTJUROSAPOS.Value:=TBBoletosBOL_DTVENCIMENTO.Value;

  if ((TBBoletosBOL_DTDESCONTO.IsNull) or (TBBoletosBOL_DTDESCONTO.Value>TBBoletosBOL_DTVENCIMENTO.Value)) then
  TBBoletosBOL_DTDESCONTO.Value:=TBBoletosBOL_DTVENCIMENTO.Value;

  if TBBoletosBOL_DIASBAIXA.Value>0 then
  TBBoletosBOL_DTBAIXABANCO.Value:=TBBoletosBOL_DTVENCIMENTO.Value+TBBoletosBOL_DIASBAIXA.Value else
  TBBoletosBOL_DTBAIXABANCO.Clear;

  if TBBoletosBOL_DIASPROTESTO.Value>0 then
  TBBoletosBOL_DTPROTESTO.Value:=TBBoletosBOL_DTVENCIMENTO.Value+TBBoletosBOL_DIASPROTESTO.Value else
  TBBoletosBOL_DTPROTESTO.Clear;

  TBBoletosBOL_DTATUALIZACAO.Value:=DM.ServerDate;
  TBBoletosBOL_HRATUALIZACAO.Value:=DM.ServerTime;
  TBBoletosBOL_USUARIO.Value:=DM.UsuarioLogin;

  CalcularTotaisBoleto(False);

  NossoNumero:=IntToStr(TBBoletosBOL_CODIGO.Value);
  Barras:='';
  Livre:='';
  Campo1:='';
  Campo2:='';
  Campo3:='';
  Campo4:='';
  Campo5:='';

  {$REGION '001 - BANCO DO BRASIL'}
  if TBBoletosCON_BANCO.Value=001 then //nosso numero = CCCCCCCSSSSSSSSSS
  begin
    if Length(TBBoletosBOL_CONVENIO.Value)=7 then
    begin
      NossoNumero:=TBBoletosBOL_CONVENIO.Value+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',10,taRight);
      Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
      Barras:=Barras+'9';
      Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
      Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
      Barras:=Barras+'000000';
      Barras:=Barras+Copy(NossoNumero,1,17); //44444444444444444
      Barras:=Barras+Copy(TBBoletosBOL_CARTEIRA.Value,1,2); //55
      Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
    end else
    if Length(TBBoletosBOL_CONVENIO.Value)=4 then
    begin
      NossoNumero:=TBBoletosBOL_CONVENIO.Value+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',7,taRight);
      NossoNumero:=NossoNumero+Modulo11(NossoNumero,7); //base 7. ??
      Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
      Barras:=Barras+'9';
      Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
      Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
      Barras:=Barras+Copy(NossoNumero,1,11); //44444444444
      Barras:=Barras+TBBoletosCON_AGENCIA.Value; //5555
      Barras:=Barras+AlignText(TBBoletosCON_CONTA.Value,'0',8,taRight); //66666666
      Barras:=Barras+Copy(TBBoletosBOL_CARTEIRA.Value,1,2); //77
      Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
    end else
    if Length(TBBoletosBOL_CONVENIO.Value)=6 then
    begin
      NossoNumero:=TBBoletosBOL_CONVENIO.Value+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',5,taRight);
      NossoNumero:=NossoNumero+Modulo11(NossoNumero,7); //base 7. ??
      Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
      Barras:=Barras+'9';
      Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
      Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
      Barras:=Barras+Copy(NossoNumero,1,11); //44444444444
      Barras:=Barras+TBBoletosCON_AGENCIA.Value; //5555
      Barras:=Barras+AlignText(TBBoletosCON_CONTA.Value,'0',8,taRight); //66666666
      Barras:=Barras+Copy(TBBoletosBOL_CARTEIRA.Value,1,2); //77
      Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
    end;


    //341 9 X 1111 2222222222 333 444444444 5555 66666 7 888
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+Copy(Barras,20,5);
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,10);
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Barras,35,10);
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);         //fator vecto;
    Campo5:=Campo5+Copy(Barras,10,10);//valor boleto.


    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '033 - BANCO SANTANDER'}
  if TBBoletosCON_BANCO.Value=033 then
  begin
    //1111111 2
    NossoNumero:=AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',12,taRight);
    NossoNumero:=NossoNumero+Modulo11(NossoNumero);

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
    //campo livre.
    Barras:=Barras+'9';
    Barras:=Barras+AlignText(TBBoletosCON_CEDENTE.Value+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value),'0',7,taRight); //3333333
    Barras:=Barras+NossoNumero; //4444444444444
    Barras:=Barras+'0'; //IOF - Seguradoras (se 7% informar 7. Limitado a 9%)
    Barras:=Barras+AlignText(TBBoletosBOL_CARTEIRA.Value,'0',3,taRight); //101=cobrança rápida com registro. 555.
    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.

    //033 9 D 1111 2222222222 9 3333333 4444444444444 0 555
    //03399.xxxxD xxx41.915008 00008.000010 1 70090000018000
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+'9';               //fixo 9.
    Campo1:=Campo1+Copy(Barras,21,4); //código beneficiario padrao santander. tamanho 4.
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,3);        //restante do código do beneficiário.
    Campo2:=Campo2+Copy(NossoNumero,1,7);
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(NossoNumero,8,6);
    Campo3:=Campo3+'0';
    Campo3:=Campo3+Copy(Barras,42,3); //modalidade carteira. 101.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);
    Campo5:=Campo5+Copy(Barras,10,10);

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '077 - BANCO INTER'}
  if TBBoletosCON_BANCO.Value=077 then
  begin
    //07790.00116 12150.509391 05712.234557 1 13370000001000

    //linha digitável vem pelo retorno da API.
    //codigo de barras também.
//    //1111111 2
//    NossoNumero:=AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',12,taRight);
//    NossoNumero:=NossoNumero+Modulo11(NossoNumero);
//
//    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
//    Barras:=Barras+'9';
//    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
//    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
//    //campo livre.
//    Barras:=Barras+'9';
//    Barras:=Barras+AlignText(TBBoletosCON_CEDENTE.Value+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value),'0',7,taRight); //3333333
//    Barras:=Barras+NossoNumero; //4444444444444
//    Barras:=Barras+'0'; //IOF - Seguradoras (se 7% informar 7. Limitado a 9%)
//    Barras:=Barras+AlignText(TBBoletosBOL_CARTEIRA.Value,'0',3,taRight); //101=cobrança rápida com registro. 555.
//    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
//
//    //033 9 D 1111 2222222222 9 3333333 4444444444444 0 555
//    //03399.xxxxD xxx41.915008 00008.000010 1 70090000018000
//    Campo1:=Copy(Barras,1,3);         //banco.
//    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
//    Campo1:=Campo1+'9';               //fixo 9.
//    Campo1:=Campo1+Copy(Barras,21,4); //código beneficiario padrao santander. tamanho 4.
//    Campo1:=Campo1+Modulo10(Campo1);
//    Insert('.',Campo1,6);
//
//    Campo2:=Copy(Barras,25,3);        //restante do código do beneficiário.
//    Campo2:=Campo2+Copy(NossoNumero,1,7);
//    Campo2:=Campo2+Modulo10(Campo2);
//    Insert('.',Campo2,6);
//
//    Campo3:=Copy(NossoNumero,8,6);
//    Campo3:=Campo3+'0';
//    Campo3:=Campo3+Copy(Barras,42,3); //modalidade carteira. 101.
//    Campo3:=Campo3+Modulo10(Campo3);
//    Insert('.',Campo3,6);
//
//    Campo4:=Copy(Barras,5,1);         //DVGeral.
//
//    Campo5:=Copy(Barras,6,4);
//    Campo5:=Campo5+Copy(Barras,10,10);

    //TBBoletosBOL_NOSSONUMERO.Clear;
    //TBBoletosBOL_CODIGOBARRAS.Clear;
    //TBBoletosBOL_LINHADIGITAVEL.Clear;
  end;
  {$ENDREGION}

  {$REGION '104 - CAIXA SIGCB'}
  if (TBBoletosCON_BANCO.Value=104) and (TBBoletosCON_TIPOCOBRANCA.Value='SIGCB') then //caixa - 17 digitos. XYNNNNNNNNNNNNNNND.
  begin
    //gera campo nosso número.
    //X	Modalidade/Carteira de Cobrança (1-Registrada/2-Sem Registro)
    //Y	Emissão do boleto (4-Beneficiário)
    //NNNNNNNNNNNNNNN	Nosso Número (15 posições livres do Beneficiário)
    //D	*Dígito Verificador modulo 11 admite zero.
    NossoNumero:=IntToStr(TBBoletosBOL_CARTEIRACOD.Value)+'4'+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',15,taRight);
    NossoNumero:=NossoNumero+Modulo11(NossoNumero);

    Livre:=Livre+AlignText(TBBoletosCON_CEDENTE.Value,'0',6,taRight);
    Livre:=Livre+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value);
    Livre:=Livre+Copy(NossoNumero,3,3); //3a a 5a posicao do nosso numero.
    Livre:=Livre+Copy(NossoNumero,1,1); //modalidade carteira. 1a posicao nosso numero.
    Livre:=Livre+Copy(NossoNumero,6,3); //6a a 8a posicao do nosso numero.
    Livre:=Livre+Copy(NossoNumero,2,1); //identificador de emissao do boleto. 2a posicao do nosso numero.
    Livre:=Livre+Copy(NossoNumero,9,9); //9a a 17a posicao do nosso numero.

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value);
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight);
    Barras:=Barras+AlignText(TBBoletosCON_CEDENTE.Value,'0',6,taRight);
    Barras:=Barras+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value);
    Barras:=Barras+Copy(NossoNumero,3,3); //3a a 5a posicao do nosso numero.
    Barras:=Barras+Copy(NossoNumero,1,1); //modalidade carteira. 1a posicao nosso numero.
    Barras:=Barras+Copy(NossoNumero,6,3); //6a a 8a posicao do nosso numero.
    Barras:=Barras+Copy(NossoNumero,2,1); //identificador de emissao do boleto. 2a posicao do nosso numero.
    Barras:=Barras+Copy(NossoNumero,9,9); //9a a 17a posicao do nosso numero.
    Barras:=Barras+Modulo11(Livre);
    Insert(DVGeral(Barras),Barras,5);

    Campo1:=Copy(Barras,1,3);
    Campo1:=Campo1+Copy(Barras,4,1);
    Campo1:=Campo1+Copy(Barras,20,5);
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,10);
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Barras,35,10);
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);

    Campo5:=Copy(Barras,6,4);
    Campo5:=Campo5+Copy(Barras,10,10);

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '237 - BRADESCO'}
  if TBBoletosCON_BANCO.Value=237 then //BRADESCO - 11 dígitos + DV (modulo 11).
  begin
    //Obs.: Para o cálculo do dígito, será necessário acrescentar o número da carteira à esquerda antes do Nosso Número, e aplicar o módulo 11, com base 7.
    NossoNumero:=AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',11,taRight);
    NossoNumero:=NossoNumero+Modulo11(AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',2,taRight)+NossoNumero,7); //base 7.

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
    //campo livre.
    Barras:=Barras+AlignText(TBBoletosCON_AGENCIA.Value,'0',4,taRight); //3333
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',2,taRight); //44
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',11,taRight); //55555555555
    Barras:=Barras+AlignText(TBBoletosCON_CONTA.Value,'0',7,taRight); //6666666
    Barras:=Barras+'0'; //7

    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5. (X).
    //2379X111122222222223333445555555555566666667
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+Copy(Barras,20,5); //5 primeiras posicoes do campo livre.
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,10);       //posicoes 6 a 15 do campo livre.
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Barras,35,10);        //posicoes 16 a 25 do campo livre.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);         //fator vecto;
    Campo5:=Campo5+Copy(Barras,10,10);//valor boleto.

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '085 - CECRED - VIACRED - AILOS'}
  //testado OK.
  if TBBoletosCON_BANCO.Value=85 then //CECRED - 17 dígitos. 8 primeiros digitos Conta Corrente + DV (sempre fixo) 9 dígitos número do boleto.
  begin
    NossoNumero:=AlignText(TBBoletosCON_CONTA.Value+IntToStr(TBBoletosCON_CONTADIGITO.Value),'0',8,taRight);
    NossoNumero:=NossoNumero+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',9,taRight);

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //9999
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //9999999999
    Barras:=Barras+AlignText(TBBoletosCON_CEDENTE.Value+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value),'0',6,taRight); //111111
    Barras:=Barras+AlignText(TBBoletosCON_CONTA.Value+IntToStr(TBBoletosCON_CONTADIGITO.Value),'0',8,taRight); //22222222
    Barras:=Barras+Copy(NossoNumero,Length(NossoNumero)-8,9); // AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',9,taRight); //333333333
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',2,taRight); //44
    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
    //085 0 1 9999 9999999999 111111 22222222 333333333 44
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+Copy(Barras,20,5); //5 digitos do cedente. (convenio).
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,1);        //6o digito do cedente. (convenio).
    Campo2:=Campo2+Copy(Barras,26,8); //conta corrente.
    Campo2:=Campo2+Copy(Barras,34,1); //1o dígito codigo do boleto.
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Barras,35,8);        //restante do codigo do boleto.
    Campo3:=Campo3+Copy(Barras,43,2); //codigo da carteira.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);         //fator vecto;
    Campo5:=Campo5+Copy(Barras,10,10);//valor boleto.

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '341 - ITAU'}
  if TBBoletosCON_BANCO.Value=341 then //nosso numero = CCC/NNNNNNNN-D - carteira + número + dígito.
  begin
    if (TBBoletosBOL_CARTEIRACOD.Value<>126) and
       (TBBoletosBOL_CARTEIRACOD.Value<>131) and
       (TBBoletosBOL_CARTEIRACOD.Value<>146) and
       (TBBoletosBOL_CARTEIRACOD.Value<>150) and
       (TBBoletosBOL_CARTEIRACOD.Value<>168) then
    begin
      NossoNumero:=AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',8,taRight);
      NossoNumero:=NossoNumero+Modulo10(TBBoletosCON_AGENCIA.Value+TBBoletosCON_CONTA.Value+
                                        AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',3,taRight)+NossoNumero);
    end else
    begin
      NossoNumero:=AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',8,taRight);
      NossoNumero:=NossoNumero+Modulo10(AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',3,taRight)+NossoNumero);
    end;

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',3,taRight); //333
    Barras:=Barras+NossoNumero; //já com digito verificador. //444444444
    Barras:=Barras+TBBoletosCON_AGENCIA.Value; //5555
    Barras:=Barras+TBBoletosCON_CONTA.Value; //66666
    Barras:=Barras+IntToStr(TBBoletosCON_CONTADIGITO.Value); //7
    Barras:=Barras+'000'; //888
    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.

    //341 9 X 1111 2222222222 333 444444444 5555 66666 7 888
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+Copy(Barras,20,3); //3 digitos da carteira.
    Campo1:=Campo1+Copy(Barras,23,2); //2 primeiros digitos do nosso numero.
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,6);        //restante do nosso numero.
    Campo2:=Campo2+Copy(Barras,31,1); //digito nosso numero.
    Campo2:=Campo2+Copy(Barras,32,3); //3 primeiros digitos da agencia.
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Barras,35,1);        //restante da agencia.
    Campo3:=Campo3+Copy(Barras,36,6); //conta + digito
    Campo3:=Campo3+Copy(Barras,42,3); //3 zeros.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);         //fator vecto;
    Campo5:=Campo5+Copy(Barras,10,10);//valor boleto.

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '748 - SICRED'}
  if TBBoletosCON_BANCO.Value=748 then //AA/Bxxxxx-d Ano 2 digitos + '/' + byte (2 a 9) + codigo boleto com 5 digitos + dv.
  begin
    //DV = AAAA+PP+CCCCC+ (YY+B+XXXXX)  PP e CCCCC (posto e conta corrente) colocar no campo cedente.
    //O posto deve ser colocado no campo convenio.
    S:=ReverseString(IntToStr(TBBoletosBOL_CODIGO.Value));
    S:=ReverseString(Copy(S,1,5)); //pega os últimos 5 dígitos.
    //NossoNumero:=Copy(IntToStr(A),3,2)+'2'+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',5,taRight);
    NossoNumero:=Copy(IntToStr(A),3,2)+'2'+AlignText(S,'0',5,taRight);
    NossoNumero:=NossoNumero+Modulo11(AlignText(TBBoletosCON_AGENCIA.Value+TBBoletosBOL_CONVENIO.Value+TBBoletosCON_CEDENTE.Value,'0',11,taRight)+NossoNumero);

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //1111
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //2222222222

    //campo livre.
    Livre:='1'; //1=cobranca. (tipo de cobrança). //3
    Livre:=Livre+AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',1,taRight); //1=carteira simples. //4
    Livre:=Livre+AlignText(NossoNumero,'0',9,taRight); //555555555
    Livre:=Livre+AlignText(TBBoletosCON_AGENCIA.Value,'0',4,taRight); //6666
    Livre:=Livre+AlignText(TBBoletosBOL_CONVENIO.Value+TBBoletosCON_CEDENTE.Value,'0',7,taRight); //posto+cedente //7777777
    Livre:=Livre+'1'; //8
    Livre:=Livre+'0'; //9
    Livre:=Livre+Modulo11(Livre);

    Barras:=Barras+Livre; //0
    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.

    //748 9 1 1111 2222222222 3 4 555555555 6666 7777777 8 8 0
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    //tá no campo livre... manual errado? Campo1:=Campo1+'1';               //1=com registro.
    Campo1:=Campo1+Copy(Livre,1,5);   //5 primeiras posicoes do campo livre.
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Livre,6,10);         //6 a 15 posicoes do campo livre.
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(Livre,16,10);        //16 a 25 posicoes do campo livre.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);         //fator vencimento.
    Campo5:=Campo5+Copy(Barras,10,10);//valor.

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}

  {$REGION '756 - SICOOB'}
  //testado OK.
  if TBBoletosCON_BANCO.Value=756 then //SICOOB - 17 dígitos. 8 primeiros digitos Conta Corrente + DV (sempre fixo) 9 dígitos número do boleto.
  begin
    //1111 2222222222 3333333 4
    NossoNumero:=AlignText(TBBoletosCON_AGENCIA.Value,'0',4,taRight);
    NossoNumero:=NossoNumero+AlignText(TBBoletosCON_CEDENTE.Value+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value),'0',10,taRight);
    NossoNumero:=NossoNumero+AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',7,taRight);
    NossoNumero:=NossoNumero+DVNossoNumeroSicoob(NossoNumero);

    Barras:=AlignText(IntToStr(TBBoletosCON_BANCO.Value),'0',3,taRight);
    Barras:=Barras+'9';
    Barras:=Barras+FatorVecto(TBBoletosBOL_DTVENCIMENTO.Value); //9999
    Barras:=Barras+AlignText(LimparFormatacao(Decimais2(TBBoletosBOL_VALORTOTAL.AsExtended,2)),'0',10,taRight); //9999999999
    //campo livre.
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_CARTEIRACOD.Value),'0',1,taRight); //1
    Barras:=Barras+AlignText(TBBoletosCON_AGENCIA.Value,'0',4,taRight); //2222
    Barras:=Barras+AlignText(IntToStr(TBBoletosBOL_MODALIDADE.Value),'0',2,taRight); //'01'; //33 01=simples com registro. MODALIDADE.
    Barras:=Barras+AlignText(TBBoletosCON_CEDENTE.Value+IntToStr(TBBoletosCON_CEDENTEDIGITO.Value),'0',7,taRight); //4444444
    Barras:=Barras+Copy(NossoNumero,Length(NossoNumero)-7,8); //  AlignText(IntToStr(TBBoletosBOL_CODIGO.Value),'0',8,taRight); //55555555
    Barras:=Barras+'001'; //666  001=parcela única.

    Insert(DVGeral(Barras),Barras,5); //insere o DV na posicao 5.
    //756 9 1 9999 9999999999 1 2222 33 4444444 55555555 666
    //75691.30359 01041.915008 00008.000010 1 70090000018000
    Campo1:=Copy(Barras,1,3);         //banco.
    Campo1:=Campo1+Copy(Barras,4,1);  //moeda.
    Campo1:=Campo1+Copy(Barras,20,1); //carteira.
    Campo1:=Campo1+Copy(Barras,21,4); //agencia.
    Campo1:=Campo1+Modulo10(Campo1);
    Insert('.',Campo1,6);

    Campo2:=Copy(Barras,25,2);        //modalidade. 01=simples com registro.
    Campo2:=Campo2+Copy(Barras,27,7); //codigo cedente.
    Campo2:=Campo2+Copy(NossoNumero,15,1); //Copy(Barras,34,1); //1o dígito codigo do boleto. (nosso num).
    Campo2:=Campo2+Modulo10(Campo2);
    Insert('.',Campo2,6);

    Campo3:=Copy(NossoNumero,16,7);   //Copy(Barras,35,7);        //restante do codigo do boleto.
    Campo3:=Campo3+Copy(Barras,42,3); //numero parcela. 001=unica.
    Campo3:=Campo3+Modulo10(Campo3);
    Insert('.',Campo3,6);

    Campo4:=Copy(Barras,5,1);         //DVGeral.

    Campo5:=Copy(Barras,6,4);
    Campo5:=Campo5+Copy(Barras,10,10);

    TBBoletosBOL_NOSSONUMERO.Value:=NossoNumero;
    TBBoletosBOL_CODIGOBARRAS.Value:=Barras;
    TBBoletosBOL_LINHADIGITAVEL.Value:=Campo1+' '+Campo2+' '+Campo3+' '+Campo4+' '+Campo5;
  end;
  {$ENDREGION}
end;

procedure TDM2.DSBoletosStateChange(Sender: TObject);
begin
  if TBBoletos.State in [dsInsert, dsEdit] then
  begin
    if FormBoletos<>nil then
    begin
      FormBoletos.BaixarBoleto1.Enabled:=False;
      FormBoletos.BaixarBoleto1Button.Enabled:=False;
      FormBoletos.BitBtn1.Enabled:=False;
      FormBoletos.BitBtn2.Enabled:=False;
      FormBoletos.BitBtn7.Enabled:=False;
      FormBoletos.BoletosPorCliente1.Enabled:=False;
      FormBoletos.BoletosPorClienteComItens1.Enabled:=False;
      FormBoletos.BoletosPorConta1.Enabled:=False;
      FormBoletos.BoletosPorContaComItens1.Enabled:=False;
      FormBoletos.CancelarBoleto1.Enabled:=False;
      FormBoletos.CancelarBoleto1Button.Enabled:=False;
      FormBoletos.CalcularMultaEJuros1.Enabled:=False;
      FormBoletos.ConsultarBoletos1.Enabled:=False;
      FormBoletos.EstornarBaixa1.Enabled:=False;
      FormBoletos.EstornarBaixa1Button.Enabled:=False;
      FormBoletos.EnviarBoletoPorEmail1.Enabled:=False;
      FormBoletos.EnviarBoletoPorEmail1Button.Enabled:=False;
      FormBoletos.FluxoDeCaixa1.Enabled:=False;
      FormBoletos.FluxoDeCaixa1Button.Enabled:=False;
      FormBoletos.GerarArquivoEDIFiscal1.Enabled:=False;
      FormBoletos.ImprimirBoleto1.Enabled:=False;
      FormBoletos.ImprimirBoleto1Button.Enabled:=False;
      FormBoletos.ImprimirBoletoComReciboDeEntrega1.Enabled:=False;
      FormBoletos.ImprimirBoletoSemReciboDeEntrega1.Enabled:=False;
      FormBoletos.Localizar1.Enabled:=False;
      FormBoletos.Localizar1Button.Enabled:=False;
      FormBoletos.RegistrarBoletos1.Enabled:=False;
      FormBoletos.RegistrarBoletos1Button.Enabled:=False;
      FormBoletos.Remessas1.Enabled:=False;
      FormBoletos.Remessas1Button.Enabled:=False;
      FormBoletos.Retornos1.Enabled:=False;
      FormBoletos.Retornos1Button.Enabled:=False;
      FormBoletos.SalvarBoletoEmPDF1.Enabled:=False;
      FormBoletos.SelecionarBoletos1.Enabled:=False;
      FormBoletos.SelecionarBoletos1Button.Enabled:=False;
      FormBoletos.SalvarBoletoEmPDF1Button.Enabled:=False;
      FormBoletos.Relatorios2.Enabled:=False;
      FormBoletos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormBoletos<>nil then
    begin
      FormBoletos.BaixarBoleto1.Enabled:=True;
      FormBoletos.BaixarBoleto1Button.Enabled:=True;
      FormBoletos.BitBtn1.Enabled:=True;
      FormBoletos.BitBtn2.Enabled:=True;
      FormBoletos.BitBtn7.Enabled:=True;
      FormBoletos.BoletosPorCliente1.Enabled:=True;
      FormBoletos.BoletosPorClienteComItens1.Enabled:=True;
      FormBoletos.BoletosPorConta1.Enabled:=True;
      FormBoletos.BoletosPorContaComItens1.Enabled:=True;
      FormBoletos.CalcularMultaEJuros1.Enabled:=True;
      FormBoletos.CancelarBoleto1.Enabled:=True;
      FormBoletos.CancelarBoleto1Button.Enabled:=True;
      FormBoletos.ConsultarBoletos1.Enabled:=True;
      FormBoletos.EstornarBaixa1.Enabled:=True;
      FormBoletos.EstornarBaixa1Button.Enabled:=True;
      FormBoletos.EnviarBoletoPorEmail1.Enabled:=True;
      FormBoletos.EnviarBoletoPorEmail1Button.Enabled:=True;
      FormBoletos.FluxoDeCaixa1.Enabled:=True;
      FormBoletos.FluxoDeCaixa1Button.Enabled:=True;
      FormBoletos.GerarArquivoEDIFiscal1.Enabled:=True;
      FormBoletos.ImprimirBoleto1.Enabled:=True;
      FormBoletos.ImprimirBoleto1Button.Enabled:=True;
      FormBoletos.ImprimirBoletoComReciboDeEntrega1.Enabled:=True;
      FormBoletos.ImprimirBoletoSemReciboDeEntrega1.Enabled:=True;
      FormBoletos.Localizar1.Enabled:=True;
      FormBoletos.Localizar1Button.Enabled:=True;
      FormBoletos.RegistrarBoletos1.Enabled:=True;
      FormBoletos.RegistrarBoletos1Button.Enabled:=True;
      FormBoletos.Remessas1.Enabled:=True;
      FormBoletos.Remessas1Button.Enabled:=True;
      FormBoletos.Retornos1.Enabled:=True;
      FormBoletos.Retornos1Button.Enabled:=True;
      FormBoletos.SalvarBoletoEmPDF1.Enabled:=True;
      FormBoletos.SalvarBoletoEmPDF1Button.Enabled:=True;
      FormBoletos.SelecionarBoletos1.Enabled:=True;
      FormBoletos.SelecionarBoletos1Button.Enabled:=True;
      FormBoletos.Relatorios2.Enabled:=True;
      FormBoletos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormBoletos);
      FormMain.SetFields(FormBoletos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// BOLETOS ITENS                                                              //
//##############################################################################
{$REGION 'TABELA BOLETOSITENS'}
procedure TDM2.TBBoletosItensAfterInsert(DataSet: TDataSet);
begin
  TBBoletosItensBOI_BOLETO.Value:=TBBoletosBOL_CODIGO.Value;
end;

procedure TDM2.TBBoletosItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisBoleto(True);
end;
{$ENDREGION}

//##############################################################################
// CALENDARIOS                                                                //
//##############################################################################
{$REGION 'TABELA CALENDARIOS'}
procedure TDM2.TBCalendariosAfterInsert(DataSet: TDataSet);
begin
  TBCalendariosCAL_TURMA.Value:=TBTurmasTUR_CODIGO.Value;
  TBCalendariosCAL_STATUSCHAMADA.Value:='A';
  TBCalendariosCAL_TIPO.Value:='NORMAL';
end;
{$ENDREGION}

//##############################################################################
// CHAMADAS                                                                   //
//##############################################################################
{$REGION 'TABELA CHAMADAS'}
procedure TDM2.IncluirAlunoChamada(Matricula, Aluno, Turma: Integer);
begin
  //localiza a turma para a tabela de calendário mudar os dados.
  TBTurmas.Close;
  TBTurmas.ParamByName('codigo').AsInteger:=Turma;
  TBTurmas.Open;
  //para cada dia do calendário, inclui o nome do figura.
  TBCalendarios.First;
  while not TBCalendarios.Eof do
  begin
    TBChamadas.Insert;
    TBChamadasCHA_CALENDARIO.Value:=TBCalendariosCAL_CODIGO.Value;
    TBChamadasCHA_MATRICULA.Value:=Matricula;
    TBChamadasCHA_CLIENTE.Value:=Aluno;
    TBChamadas.Post;
    TBCalendarios.Next;
  end;
end;

procedure TDM2.TBChamadasAfterInsert(DataSet: TDataSet);
begin
  TBChamadasCHA_CALENDARIO.Value:=TBCalendariosCAL_CODIGO.Value;
  TBChamadasCHA_PRESENCA.Value:='X';
end;
{$ENDREGION}

//##############################################################################
// CHEQUES                                                                    //
//##############################################################################
{$REGION 'TABELA CHEQUES'}
procedure TDM2.TBChequesAfterInsert(DataSet: TDataSet);
begin
  TBChequesCHE_DTCADASTRO.Value:=DM.ServerDate;
  TBChequesCHE_HRCADASTRO.Value:=DM.ServerTime;
  TBChequesCHE_STATUS.Value:='A';
  TBChequesCHE_ESPECIAL.Value:='S';
  TBChequesCHE_PREDATADO.Value:='S';
end;

procedure TDM2.TBChequesBeforeEdit(DataSet: TDataSet);
begin
  if FormCheques<>nil then
  FormMain.SetFields(FormCheques,True);
end;

procedure TDM2.TBChequesBeforeInsert(DataSet: TDataSet);
begin
  if FormCheques<>nil then
  begin
    FormMain.SetFields(FormCheques,True);
    FormCheques.DBEdit52.SetFocus;
  end;
end;

procedure TDM2.TBChequesBeforePost(DataSet: TDataSet);
begin
  TBChequesCHE_DTATUALIZACAO.Value:=DM.ServerDate;
  TBChequesCHE_HRATUALIZACAO.Value:=DM.ServerTime;
  TBChequesCHE_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSChequesStateChange(Sender: TObject);
begin
  if TBCheques.State in [dsInsert, dsEdit] then
  begin
    if FormCheques<>nil then
    begin
      FormCheques.AlterarChequeParaAberto1.Enabled:=False;
      FormCheques.AlterarChequeParaAberto1Button.Enabled:=False;
      FormCheques.AlterarChequeParaCompensado1.Enabled:=False;
      FormCheques.AlterarChequeParaCompensado1Button.Enabled:=False;
      FormCheques.AlterarChequeParaDevolvido1.Enabled:=False;
      FormCheques.AlterarChequeParaDevolvido1Button.Enabled:=False;
      FormCheques.Localizar1.Enabled:=False;
      FormCheques.Localizar1Button.Enabled:=False;
      FormCheques.Relatorios2.Enabled:=False;
      FormCheques.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCheques<>nil then
    begin
      FormCheques.AlterarChequeParaAberto1.Enabled:=True;
      FormCheques.AlterarChequeParaAberto1Button.Enabled:=True;
      FormCheques.AlterarChequeParaCompensado1.Enabled:=True;
      FormCheques.AlterarChequeParaCompensado1Button.Enabled:=True;
      FormCheques.AlterarChequeParaDevolvido1.Enabled:=True;
      FormCheques.AlterarChequeParaDevolvido1Button.Enabled:=True;
      FormCheques.Localizar1.Enabled:=True;
      FormCheques.Localizar1Button.Enabled:=True;
      FormCheques.Relatorios2.Enabled:=True;
      FormCheques.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCheques);
      FormMain.SetFields(FormCheques,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CLASSES                                                                    //
//##############################################################################
{$REGION 'TABELA CLASSES'}
procedure TDM2.TBClassesAfterInsert(DataSet: TDataSet);
begin
  TBClassesCLS_DTCADASTRO.Value:=DM.ServerDate;
  TBClassesCLS_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBClassesBeforeEdit(DataSet: TDataSet);
begin
  if FormClasses<>nil then
  FormMain.SetFields(FormClasses,True);
end;

procedure TDM2.TBClassesBeforeInsert(DataSet: TDataSet);
begin
  if FormClasses<>nil then
  begin
    FormMain.SetFields(FormClasses,True);
    FormClasses.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBClassesBeforePost(DataSet: TDataSet);
begin
  TBClassesCLS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBClassesCLS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBClassesCLS_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSClassesStateChange(Sender: TObject);
begin
  if TBClasses.State in [dsInsert, dsEdit] then
  begin
    if FormClasses<>nil then
    begin
      FormClasses.Localizar1.Enabled:=False;
      FormClasses.Localizar1Button.Enabled:=False;
      FormClasses.Relatorios2.Enabled:=False;
      FormClasses.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormClasses<>nil then
    begin
      FormClasses.Localizar1.Enabled:=True;
      FormClasses.Localizar1Button.Enabled:=True;
      FormClasses.Relatorios2.Enabled:=True;
      FormClasses.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormClasses);
      FormMain.SetFields(FormClasses,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CLASSIFICADOS                                                              //
//##############################################################################
{$REGION 'TABELA CLASSIFICADOS'}
procedure TDM2.TBClassificadosAfterInsert(DataSet: TDataSet);
begin
  TBClassificadosCLA_DTCADASTRO.Value:=DM.ServerDate;
  TBClassificadosCLA_HRCADASTRO.Value:=DM.ServerTime;
  TBClassificadosCLA_OBJETIVO.Value:='T'; //trocar.
  TBClassificadosCLA_CATEGORIA.Value:='U'; //usado.
end;

procedure TDM2.TBClassificadosBeforeEdit(DataSet: TDataSet);
begin
  if FormClassificados<>nil then
  FormMain.SetFields(FormClassificados,True);
end;

procedure TDM2.TBClassificadosBeforeInsert(DataSet: TDataSet);
begin
  if FormClassificados<>nil then
  begin
    FormMain.SetFields(FormClassificados,True);
    FormClassificados.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBClassificadosBeforePost(DataSet: TDataSet);
begin
  TBClassificadosCLA_DTATUALIZACAO.Value:=DM.ServerDate;
  TBClassificadosCLA_HRATUALIZACAO.Value:=DM.ServerTime;
  TBClassificadosCLA_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSClassificadosStateChange(Sender: TObject);
begin
  if TBClassificados.State in [dsInsert, dsEdit] then
  begin
    if FormClassificados<>nil then
    begin
      FormClassificados.Localizar1.Enabled:=False;
      FormClassificados.Localizar1Button.Enabled:=False;
      FormClassificados.Relatorios2.Enabled:=False;
      FormClassificados.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormClassificados<>nil then
    begin
      FormClassificados.Localizar1.Enabled:=True;
      FormClassificados.Localizar1Button.Enabled:=True;
      FormClassificados.Relatorios2.Enabled:=True;
      FormClassificados.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormClassificados);
      FormMain.SetFields(FormClassificados,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// COMANDAS                                                                   //
//##############################################################################
{$REGION 'TABELA COMANDAS'}
procedure TDM2.CalcularTotaisComanda(DarPost: Boolean);
begin
  TBComandas.Edit;
  //total dos itens.
  DM.QYAux.Close; // era QYComandasItens.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(CDI_VALORTOTAL) as VALORTOTAL '+
                   'from COMANDASITENS where CDI_COMANDA=:comanda');
  DM.QYAux.ParamByName('comanda').AsInteger:=TBComandasCMD_CODIGO.Value;
  DM.QYAux.Open;
  TBComandasCMD_TOTALITENS.Value:=DM.QYAux.FieldByName('VALORTOTAL').AsExtended;

  //total dos itens pagos.
  if TBComandasCMD_STATUS.Value='A' then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(CDI_VALORTOTAL) as VALORPAGO '+
                     'from COMANDASITENS where CDI_COMANDA=:comanda and CDI_PAGO=''S''');
    DM.QYAux.ParamByName('comanda').AsInteger:=TBComandasCMD_CODIGO.Value;
    DM.QYAux.Open;
    TBComandasCMD_VALORPAGO.Value:=DM.QYAux.FieldByName('VALORPAGO').AsExtended;
    DM.QYAux.Close;
  end;

  //total dos itens - total dos itens pagos = total a pagar.
  TBComandasCMD_VALORCOMISSAO.Value:=(TBComandasCMD_TOTALITENS.Value/100.00)*TBComandasCMD_COMISSAO.Value;
  TBComandasCMD_VALORTOTAL.Value:=TBComandasCMD_TOTALITENS.Value+TBComandasCMD_VALORCOMISSAO.Value;
  if TBComandasCMD_STATUS.Value='A' then
  TBComandasCMD_VALORPAGAR.Value:=TBComandasCMD_VALORTOTAL.Value-TBComandasCMD_VALORPAGO.Value;

  if DarPost then TBComandas.Post;
end;

procedure TDM2.TBComandasAfterEdit(DataSet: TDataSet);
begin
  if TBComandasCMD_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar uma comanda já baixada.',mtWarning,[mbOk],0);
    TBComandas.Cancel;
  end;
  if TBComandasCMD_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar uma comanda cancelada.',mtWarning,[mbOk],0);
    TBComandas.Cancel;
  end;
end;

procedure TDM2.TBComandasAfterInsert(DataSet: TDataSet);
begin
  TBComandasCMD_CLIENTE.Value:=DM.TBParametrosPAR_COMANDASCLIENTE.Value;
  TBComandasCMD_DATA.Value:=DM.ServerDate;
  TBComandasCMD_DESCPORC.Value:=0;
  TBComandasCMD_DESCVALOR.Value:=0;
  TBComandasCMD_DTCADASTRO.Value:=DM.ServerDate;
  TBComandasCMD_HORAINICIO.Value:=DM.ServerTime;
  TBComandasCMD_HRCADASTRO.Value:=DM.ServerTime;
//  TBComandasCMD_HORAINICIOMIN.Value:=HourToMin(TimeToStr(TBComandasCMD_HORAINICIO.Value));
  TBComandasCMD_SEQUENCIAITEM.Value:=0;
  TBComandasCMD_STATUS.Value:='A'; //A=Aberto, B=Baixada, C=Cancelada.
  TBComandasCMD_VALORPAGAR.Value:=0;
  TBComandasCMD_VALORPAGO.Value:=0;
  TBComandasCMD_VALORTOTAL.Value:=0;
  TBComandasCMD_VENDEDOR.Value:=DM.UsuarioVendedor;
end;

procedure TDM2.TBComandasBeforeEdit(DataSet: TDataSet);
begin
  if FormComandas<>nil then
  FormMain.SetFields(FormComandas,True);
end;

procedure TDM2.TBComandasBeforeInsert(DataSet: TDataSet);
begin
  if FormComandas<>nil then
  begin
    FormMain.SetFields(FormComandas,True);
    FormComandas.DBEdit4.SetFocus;
  end;
end;

procedure TDM2.TBComandasBeforePost(DataSet: TDataSet);
begin
  TBComandasCMD_DTATUALIZACAO.Value:=DM.ServerDate;
  TBComandasCMD_HRATUALIZACAO.Value:=DM.ServerTime;
  TBComandasCMD_USUARIO.Value:=DM.UsuarioLogin;
  //verifica se tem mais de uma comanda em aberto com o mesmo número.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from COMANDAS where CMD_STATUS=''A'' and CMD_COMANDA=:comanda and CMD_CODIGO<>:codigo');
  DM.QYAux.ParamByName('comanda').AsInteger:=TBComandasCMD_COMANDA.Value;
  DM.QYAux.ParamByName('codigo').AsInteger:=TBComandasCMD_CODIGO.Value;
  DM.QYAux.Open;
  if DM.QYAux.FieldByName('QTDE').AsInteger > 0 then
  begin
    MessageDlg('Já existe uma comanda em aberto com o número '+IntToStr(TBComandasCMD_COMANDA.Value)+'.',mtError,[mbOk],0);
    TBComandasCMD_COMANDA.Clear;
  end;
  DM.QYAux.Close;
  //...
  TBComandasCMD_HORAINICIOMIN.Value:=HourToMin(TimeToStr(TBComandasCMD_HORAINICIO.Value));
  TBComandasCMD_HORAFIMMIN.Value:=HourToMin(TimeToStr(TBComandasCMD_HORAFIM.Value));
  if TBComandasCMD_HORAFIMMIN.Value<TBComandasCMD_HORAINICIOMIN.Value then
  begin
    MessageDlg('Hora fim não pode ser menor que hora início.',mtError,[mbOk],0);
    TBComandasCMD_HORAFIM.Value:=TBComandasCMD_HORAINICIO.Value;
    TBComandasCMD_HORAFIMMIN.Value:=TBComandasCMD_HORAINICIOMIN.Value;
  end;
  TBComandasCMD_TEMPOTOTAL.Value:=MinToHour(TBComandasCMD_HORAFIMMIN.Value-TBComandasCMD_HORAINICIOMIN.Value);
  TBComandasCMD_TEMPOTOTALMIN.Value:=HourToMin(TBComandasCMD_TEMPOTOTAL.Value);
  TBComandasCMD_TEMPOTOTALDEC.Value:=StrToFloat(MinToDec(TBComandasCMD_TEMPOTOTALMIN.Value));
  CalcularTotaisComanda(False);
end;

procedure TDM2.DSComandasStateChange(Sender: TObject);
begin
  if TBComandas.State in [dsInsert, dsEdit] then
  begin
    if FormComandas<>nil then
    begin
      FormComandas.BaixarComanda1.Enabled:=False;
      FormComandas.BaixarComanda1Button.Enabled:=False;
      FormComandas.CancelarComanda1.Enabled:=False;
      FormComandas.CancelarComanda1Button.Enabled:=False;
      FormComandas.EstornarComanda1.Enabled:=False;
      FormComandas.EstornarComanda1Button.Enabled:=False;
      FormComandas.ImprimirComanda1.Enabled:=False;
      FormComandas.ImprimirComanda1Button.Enabled:=False;
      FormComandas.IncluirMaoDeObra1.Enabled:=False;
      FormComandas.IncluirMaoDeObra1Button.Enabled:=False;
      FormComandas.Localizar1.Enabled:=False;
      FormComandas.Localizar1Button.Enabled:=False;
      FormComandas.Relatorios2.Enabled:=False;
      FormComandas.Relatorios2Button.Enabled:=False;
      FormComandas.UnirComanda1.Enabled:=False;
      FormComandas.UnirComanda1Button.Enabled:=False;
    end;
  end else
  begin
    if FormComandas<>nil then
    begin
      FormComandas.BaixarComanda1.Enabled:=True;
      FormComandas.BaixarComanda1Button.Enabled:=True;
      FormComandas.CancelarComanda1.Enabled:=True;
      FormComandas.CancelarComanda1Button.Enabled:=True;
      FormComandas.EstornarComanda1.Enabled:=True;
      FormComandas.EstornarComanda1Button.Enabled:=True;
      FormComandas.ImprimirComanda1.Enabled:=True;
      FormComandas.ImprimirComanda1Button.Enabled:=True;
      FormComandas.IncluirMaoDeObra1.Enabled:=True;
      FormComandas.IncluirMaoDeObra1Button.Enabled:=True;
      FormComandas.Localizar1.Enabled:=True;
      FormComandas.Localizar1Button.Enabled:=True;
      FormComandas.Relatorios2.Enabled:=True;
      FormComandas.Relatorios2Button.Enabled:=True;
      FormComandas.UnirComanda1.Enabled:=True;
      FormComandas.UnirComanda1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormComandas);
      FormMain.SetFields(FormComandas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// COMANDASITENS                                                              //
//##############################################################################
{$REGION 'TABELA COMANDASITENS'}
procedure TDM2.CalcularTotaisComandaItens(DarPost: Boolean);
begin
  //calcula o valor bruto.
  TBComandasItensCDI_VALORTOTAL.Value:=TBComandasItensCDI_QUANTIDADE.Value*TBComandasItensCDI_VALORUNITARIO.Value;
end;

procedure TDM2.TBComandasItensAfterInsert(DataSet: TDataSet);
begin
  TBComandasItensCDI_COMANDA.Value:=TBComandasCMD_CODIGO.Value;
  TBComandasItensCDI_ITEM.Value:=TBComandasCMD_SEQUENCIAITEM.Value+1;
  TBComandasItensCDI_QUANTIDADE.Value:=1;
  TBComandasItensCDI_VALORTOTAL.Value:=0;
  TBComandasItensCDI_PAGO.Value:='N';
end;

procedure TDM2.TBComandasItensAfterPost(DataSet: TDataSet);
begin
  if DM.InserindoNovoRegistroComandasItens then
  begin
    //descobre qual é o sequencial máximo.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select max(CDI_ITEM) as QTDE from COMANDASITENS where CDI_COMANDA=:comanda');
    DM.QYAux.ParamByName('comanda').AsInteger:=TBComandasCMD_CODIGO.Value;
    DM.QYAux.Open;

    //atualiza a qtde na tabela COMANDAS.
    DM.CodigoMark:=TBComandasCMD_CODIGO.Value;
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('update COMANDAS set CMD_SEQUENCIAITEM=:qtde where CMD_CODIGO=:codigo');
    DM.QYAux2.ParamByName('qtde').AsInteger:=DM.QYAux.FieldByName('QTDE').AsInteger;
    DM.QYAux2.ParamByName('codigo').AsInteger:=TBComandasCMD_CODIGO.Value;
    DM.QYAux2.ExecSQL;
    DM.QYAux.Close;

    //atualiza dados na tela para o usuário.
    TBComandas.Close;
    TBComandas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    TBComandas.Open;

    DM.InserindoNovoRegistroComandasItens:=False;
  end;
//  if CalcularTotais then //nao tem condicoes de pagamento... sempre calcular os totais da comanda depois do post dos itens.
  CalcularTotaisComanda(True);
end;

procedure TDM2.TBComandasItensBeforePost(DataSet: TDataSet);
begin
  if TBComandasItens.State in [dsInsert] then
  DM.InserindoNovoRegistroComandasItens:=True;

  CalcularTotaisComandaItens(False);
end;
{$ENDREGION}

//##############################################################################
// CONSULTAS                                                                  //
//##############################################################################
{$REGION 'TABELA CONSULTAS'}
procedure TDM2.TBConsultasAfterInsert(DataSet: TDataSet);
var HH,MM,SS,MS: Word;
begin
  DecodeTime(IncSecond(DM.ServerTime,60),HH,MM,SS,MS);
  TBConsultasCOS_DTCADASTRO.Value:=DM.ServerDate;
  TBConsultasCOS_DATAFIM.Value:=DM.ServerDate;
  TBConsultasCOS_DATAINICIO.Value:=DM.ServerDate;
  TBConsultasCOS_HORAINICIO.Value:=EncodeTime(HH,0,0,0);
  TBConsultasCOS_HRCADASTRO.Value:=DM.ServerTime;
  TBConsultasCOS_MEDICO.Value:=DM.TBParametrosPAR_EXPEDIDOR.Value;
  TBConsultasCOS_STATUS.Value:='A';
  TBConsultasCOS_VALORTOTAL.Value:=0;
end;

procedure TDM2.TBConsultasAfterPost(DataSet: TDataSet);
var TotalReposicoes: Integer;
begin
  if AtualizarSaldoReposicoes=True then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=TBConsultasCOS_CLIENTE.Value;
    DM.TBClientes.Open;
    TotalReposicoes:=DM.TBClientesCLI_REPOSICOES.Value-1;
    if TotalReposicoes>=0 then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_REPOSICOES.Value:=TotalReposicoes;
      DM.TBClientes.Post;
    end;
  end;
end;

procedure TDM2.TBConsultasBeforeEdit(DataSet: TDataSet);
begin
  if FormConsultas<>nil then
  FormMain.SetFields(FormConsultas,True);
end;

procedure TDM2.TBConsultasBeforeInsert(DataSet: TDataSet);
begin
  if FormConsultas<>nil then
  begin
    FormMain.SetFields(FormConsultas,True);
    FormConsultas.DBEdit3.SetFocus;
  end;
end;

procedure TDM2.TBConsultasBeforePost(DataSet: TDataSet);

begin
  TBConsultasCOS_DTATUALIZACAO.Value:=DM.ServerDate;

  if TBConsultasCOS_DATAINICIO.IsNull then
  TBConsultasCOS_DATAINICIO.Value:=DM.ServerDate;

  if TBConsultasCOS_HORAINICIO.IsNull then
  TBConsultasCOS_HORAINICIO.Value:=DM.ServerTime;

  if (TBConsultasCOS_DATAFIM.IsNull) or (TBConsultasCOS_DATAFIM.Value < TBConsultasCOS_DATAINICIO.Value) then
  TBConsultasCOS_DATAFIM.Value:=TBConsultasCOS_DATAINICIO.Value;

  if TBConsultasCOS_HORAFIM.IsNull then
  TBConsultasCOS_HORAFIM.Value:=IncMinute(TBConsultasCOS_HORAINICIO.Value,DM.TBParametrosPAR_TEMPOPADRAO.Value);

  TBConsultasCOS_HRATUALIZACAO.Value:=DM.ServerTime;

  TBConsultasCOS_FIM.Value:=DateTimeToSQLTimeStamp(StrToDateTime(DateToStr(TBConsultasCOS_DATAFIM.Value)+' '+TimeToStr(TBConsultasCOS_HORAFIM.Value)));
  TBConsultasCOS_INICIO.Value:=DateTimeToSQLTimeStamp(StrToDateTime(DateToStr(TBConsultasCOS_DATAINICIO.Value)+' '+TimeToStr(TBConsultasCOS_HORAINICIO.Value)));
  TBConsultasCOS_USUARIO.Value:=DM.UsuarioLogin;
  CalcularTotaisConsulta(False);

  if TBConsultas.State in [ dsInsert ]  then
  AtualizarSaldoReposicoes:=True else
  AtualizarSaldoReposicoes:=False;
end;

procedure TDM2.CalcularTotaisConsulta(DarPost: Boolean);
begin
  TBConsultas.Edit;
  //total dos itens.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(CSI_VALOR) as VALORTOTAL '+
                   'from CONSULTASITENS where CSI_CONSULTA=:consulta');
  DM.QYAux.ParamByName('consulta').AsInteger:=TBConsultasCOS_CODIGO.Value;
  DM.QYAux.Open;

  TBConsultasCOS_VALORTOTAL.Value:=DM.QYAux.FieldByName('VALORTOTAL').AsExtended;

  if DarPost then TBConsultas.Post;
end;

procedure TDM2.DSConsultasDataChange(Sender: TObject; Field: TField);
begin
  if FormConsultas<>nil then
  begin
    //if not TBConsultas.IsEmpty then
    //begin
      if (not TBConsultasCLI_DTNASC.IsNull) and (TBConsultasCLI_DTNASC.Value<>StrToDate('30/12/1899')) then
      FormConsultas.Label14.Caption:=DateToStr(TBConsultasCLI_DTNASC.Value)+' - '+IntToStr(DateUtils.YearsBetween(Now,TBConsultasCLI_DTNASC.Value))+' anos.' else
      FormConsultas.Label14.Caption:='---';
    //end;
  end;
end;

procedure TDM2.DSConsultasStateChange(Sender: TObject);
begin
  if TBConsultas.State in [dsInsert, dsEdit] then
  begin
    if FormConsultas<>nil then
    begin
      FormConsultas.Agenda1.Enabled:=False;
      FormConsultas.Agenda1Button.Enabled:=False;
      FormConsultas.Anexos1.Enabled:=False;
      FormConsultas.Anexos1Button.Enabled:=False;
      FormConsultas.BaixarConsulta1.Enabled:=False;
      FormConsultas.BaixarConsulta1Button.Enabled:=False;
      FormConsultas.CancelarConsulta1.Enabled:=False;
      FormConsultas.CancelarConsulta1Button.Enabled:=False;
      FormConsultas.DBGrid1.Enabled:=False;
      FormConsultas.Imagens1.Enabled:=False;
      FormConsultas.Imagens1Button.Enabled:=False;
      FormConsultas.Localizar1.Enabled:=False;
      FormConsultas.Localizar1Button.Enabled:=False;
      FormConsultas.MultiplicarConsulta1.Enabled:=False;
      FormConsultas.MultiplicarConsulta1Button.Enabled:=False;
      FormConsultas.PngBitBtn1.Enabled:=False;
      FormConsultas.PngBitBtn2.Enabled:=False;
      FormConsultas.PngBitBtn3.Enabled:=False;
      FormConsultas.ReabrirConsulta1.Enabled:=False;
      FormConsultas.ReabrirConsulta1Button.Enabled:=False;
      FormConsultas.ReagendarConsulta1.Enabled:=False;
      FormConsultas.ReagendarConsulta1Button.Enabled:=False;
      FormConsultas.Relatorios2.Enabled:=False;
      FormConsultas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormConsultas<>nil then
    begin
      FormConsultas.Agenda1.Enabled:=True;
      FormConsultas.Agenda1Button.Enabled:=True;
      FormConsultas.Anexos1.Enabled:=True;
      FormConsultas.Anexos1Button.Enabled:=True;
      FormConsultas.BaixarConsulta1.Enabled:=True;
      FormConsultas.BaixarConsulta1Button.Enabled:=True;
      FormConsultas.CancelarConsulta1.Enabled:=True;
      FormConsultas.CancelarConsulta1Button.Enabled:=True;
      FormConsultas.DBGrid1.Enabled:=True;
      FormConsultas.Imagens1.Enabled:=True;
      FormConsultas.Imagens1Button.Enabled:=True;
      FormConsultas.Localizar1.Enabled:=True;
      FormConsultas.Localizar1Button.Enabled:=True;
      FormConsultas.MultiplicarConsulta1.Enabled:=True;
      FormConsultas.MultiplicarConsulta1Button.Enabled:=True;
      FormConsultas.PngBitBtn1.Enabled:=True;
      FormConsultas.PngBitBtn2.Enabled:=True;
      FormConsultas.PngBitBtn3.Enabled:=True;
      FormConsultas.ReabrirConsulta1.Enabled:=True;
      FormConsultas.ReabrirConsulta1Button.Enabled:=True;
      FormConsultas.ReagendarConsulta1.Enabled:=True;
      FormConsultas.ReagendarConsulta1Button.Enabled:=True;
      FormConsultas.Relatorios2.Enabled:=True;
      FormConsultas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormConsultas);
      FormMain.SetFields(FormConsultas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONSULTAS ITENS                                                            //
//##############################################################################
{$REGION 'TABELA CONSULTASITENS'}
procedure TDM2.TBConsultasItensAfterInsert(DataSet: TDataSet);
begin
  TBConsultasItensCSI_CONSULTA.Value:=TBConsultasCOS_CODIGO.Value;
  TBConsultasItensCSI_VALOR.Value:=0;
end;

procedure TDM2.TBConsultasItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisConsulta(True);
end;
{$ENDREGION}

//##############################################################################
// CONTEUDOS DADOS                                                            //
//##############################################################################
{$REGION 'TABELA CONTEUDOS'}
procedure TDM2.TBConteudosAfterInsert(DataSet: TDataSet);
begin
  TBConteudosCTO_CALENDARIO.Value:=TBCalendariosCAL_CODIGO.Value;
  TBConteudosCTO_DTCADASTRO.Value:=DM.ServerDate;
  TBConteudosCTO_HRCADASTRO.Value:=DM.ServerTime;
  if TBTurmas.IsEmpty then
  begin
    MessageDlg('Nenhuma turma selecionada.',mtError,[mbOk],0);
    TBConteudos.Cancel;
    Exit;
  end;
  if TBCalendarios.IsEmpty then
  begin
    MessageDlg('Nenhuma data selecionada.',mtError,[mbOk],0);
    TBConteudos.Cancel;
    Exit;
  end;
end;

procedure TDM2.TBConteudosBeforeEdit(DataSet: TDataSet);
begin
//  if FormConteudos<>nil then
//  FormMain.SetFields(FormConteudos,True);
end;

procedure TDM2.TBConteudosBeforeInsert(DataSet: TDataSet);
begin
//  if FormConteudos<>nil then
//  begin
//    FormMain.SetFields(FormConteudos,True);
//    FormConteudos.DBMemo1.SetFocus;
//  end;
end;

procedure TDM2.TBConteudosBeforePost(DataSet: TDataSet);
begin
  TBConteudosCTO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBConteudosCTO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBConteudosCTO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSConteudosStateChange(Sender: TObject);
begin
  if TBConteudos.State in [dsInsert, dsEdit] then
  begin
    if FormConteudos<>nil then
    begin
      FormConteudos.Localizar1.Enabled:=False;
      FormConteudos.Localizar1Button.Enabled:=False;
      FormConteudos.DBGrid1.Enabled:=False
    end;
  end else
  begin
    if FormConteudos<>nil then
    begin
      FormConteudos.Localizar1.Enabled:=True;
      FormConteudos.Localizar1Button.Enabled:=True;
      FormConteudos.DBGrid1.Enabled:=True;
      FormMain.DesabilitarControles(FormConteudos);
      FormMain.SetFields(FormConteudos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONTRATOS DE IMÓVEIS.                                                      //
//##############################################################################
{$REGION 'TABELA CONTRATOS'}
procedure TDM2.TBContratosAfterEdit(DataSet: TDataSet);
begin
  if TBContratosCTI_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um contrato já finalizado.',mtWarning,[mbOk],0);
    TBContratos.Cancel;
  end;
  if TBContratosCTI_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um contrato cancelado.',mtWarning,[mbOk],0);
    TBContratos.Cancel;
  end;
end;

procedure TDM2.TBContratosAfterInsert(DataSet: TDataSet);
begin
  TBContratosCTI_DESCPORCVECTO.Value:=0;
  TBContratosCTI_DESCPARCELAQTDE.Value:=0;
  TBContratosCTI_DESCPARCELAPORC.Value:=0;
  TBContratosCTI_DESCPARCELAVALOR.Value:=0;
  TBContratosCTI_DTCADASTRO.Value:=DM.ServerDate;
  TBContratosCTI_HRCADASTRO.Value:=DM.ServerTime;
  TBContratosCTI_STATUS.Value:='A'; //A=Aberto, F=Fechado, C=Cancelado, B=Baixado.
  TBContratosCTI_FINALIDADE.Value:='C';
  TBContratosCTI_VALORALUGUEL.Value:=0;
  TBContratosCTI_VALORALUGUELVECTO.Value:=0;
  TBContratosCTI_VIGENCIAINICIO.Value:=DM.ServerDate;
  TBContratosCTI_VIGENCIAFIM.Value:=IncYear(Date); //padrão um ano.
end;

procedure TDM2.TBContratosBeforeEdit(DataSet: TDataSet);
begin
  if FormContratos<>nil then
  FormMain.SetFields(FormContratos,True);
end;

procedure TDM2.TBContratosBeforeInsert(DataSet: TDataSet);
begin
  if FormContratos<>nil then
  begin
    FormMain.SetFields(FormContratos,True);
    FormContratos.PageControl1.ActivePageIndex:=0;
    FormContratos.DBEdit14.SetFocus;
  end;
end;

procedure TDM2.TBContratosBeforePost(DataSet: TDataSet);
begin
  TBContratosCTI_DTATUALIZACAO.Value:=DM.ServerDate;
  TBContratosCTI_HRATUALIZACAO.Value:=DM.ServerTime;
  TBContratosCTI_USUARIO.Value:=DM.UsuarioLogin;
  if (not TBContratosCTI_VIGENCIAFIM.IsNull) and (not TBContratosCTI_VIGENCIAINICIO.IsNull) then
  TBContratosCTI_VIGENCIATOTAL.Value:=MonthsBetween(TBContratosCTI_VIGENCIAINICIO.Value,TBContratosCTI_VIGENCIAFIM.Value);

  TBContratosCTI_DESCPARCELAVALOR.Value:=(TBContratosCTI_VALORALUGUEL.Value/100.0)*TBContratosCTI_DESCPARCELAPORC.Value;
end;

procedure TDM2.DSContratosStateChange(Sender: TObject);
begin
  if TBContratos.State in [dsInsert, dsEdit] then
  begin
    if FormContratos<>nil then
    begin
      FormContratos.BaixarContrato1.Enabled:=False;
      FormContratos.BaixarContrato1Button.Enabled:=False;
      FormContratos.CancelarContrato1.Enabled:=False;
      FormContratos.CancelarContrato1Button.Enabled:=False;
      FormContratos.EstornarContrato1.Enabled:=False;
      FormContratos.EstornarContrato1Button.Enabled:=False;
      FormContratos.FecharContrato1.Enabled:=False;
      FormContratos.FecharContrato1Button.Enabled:=False;
      FormContratos.ImprimirContrato1.Enabled:=False;
      FormContratos.ImprimirContrato1Button.Enabled:=False;
      FormContratos.Localizar1.Enabled:=False;
      FormContratos.Localizar1Button.Enabled:=False;
      FormContratos.LocalizarContratoNoContasAPagar1.Enabled:=False;
      FormContratos.LocalizarContratoNoContasAPagar1Button.Enabled:=False;
      FormContratos.LocalizarContratoNoContasAReceber1.Enabled:=False;
      FormContratos.LocalizarContratoNoContasAReceber1Button.Enabled:=False;
      FormContratos.Relatorios2.Enabled:=False;
      FormContratos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormContratos<>nil then
    begin
      FormContratos.BaixarContrato1.Enabled:=True;
      FormContratos.BaixarContrato1Button.Enabled:=True;
      FormContratos.CancelarContrato1.Enabled:=True;
      FormContratos.CancelarContrato1Button.Enabled:=True;
      FormContratos.EstornarContrato1.Enabled:=True;
      FormContratos.EstornarContrato1Button.Enabled:=True;
      FormContratos.FecharContrato1.Enabled:=True;
      FormContratos.FecharContrato1Button.Enabled:=True;
      FormContratos.ImprimirContrato1.Enabled:=True;
      FormContratos.ImprimirContrato1Button.Enabled:=True;
      FormContratos.Localizar1.Enabled:=True;
      FormContratos.Localizar1Button.Enabled:=True;
      FormContratos.LocalizarContratoNoContasAPagar1.Enabled:=True;
      FormContratos.LocalizarContratoNoContasAPagar1Button.Enabled:=True;
      FormContratos.LocalizarContratoNoContasAReceber1.Enabled:=True;
      FormContratos.LocalizarContratoNoContasAReceber1Button.Enabled:=True;
      FormContratos.Relatorios2.Enabled:=True;
      FormContratos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormContratos);
      FormMain.SetFields(FormContratos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONTRATOS PARTES - LOCATARIOS E AVALISTAS.                                 //
//##############################################################################
{$REGION 'TABELA CONTRATOSPARTES'}
procedure TDM2.TBContratosPartesAfterInsert(DataSet: TDataSet);
begin
  TBContratosPartesCTP_CONTRATO.Value:=TBContratosCTI_CODIGO.Value;
  TBContratosPartesCTP_TIPO.Value:='L';
end;
{$ENDREGION}

//##############################################################################
// CONHECIMENTOS DE TRANSPORTE ELETRONICOS                                    //
//##############################################################################
{$REGION 'TABELA CTE'}
procedure TDM2.CalcularTotaisCTe(DarPost: Boolean);
var ICMS: Currency;
begin
  TBCte.Edit;
  //atualiza o total das NOTAS na tabela conhecimentos.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(CTN_VALORTOTAL) as VALORTOTAL, sum(CTN_PESO) as PESOTOTAL from CTENOTAS where CTN_CTE=:conhecimento');
  DM.QYAux.ParamByName('conhecimento').AsInteger:=TBCteCTE_CODIGO.Value;
  DM.QYAux.Open;
  TBCteCTE_VALORNOTAS.Value:=DM.QYAux.FieldByName('VALORTOTAL').AsExtended;
  TBCteCTE_PESOTOTAL.Value:=DM.QYAux.FieldByName('PESOTOTAL').AsFloat;

  //calcula o valor total sem o desconto.
  TBCteCTE_VALORTOTAL.Value:=TBCteCTE_VALORFRETE.Value+TBCteCTE_VALORSEGURO.Value+TBCteCTE_VALOROUTROS.Value;

  //calcula a porcentagem de desconto ou desconto em valor.
  if TBCteCTE_DESCPORC.Value>0 then
  TBCteCTE_DESCVALOR.Value:=((TBCteCTE_VALORTOTAL.Value/100)*TBCteCTE_DESCPORC.Value) else
  if TBCteCTE_DESCVALOR.Value>0 then
  TBCteCTE_DESCPORC.Value:=((TBCteCTE_DESCVALOR.Value*100)/TBCteCTE_VALORTOTAL.Value);

  //calcula o valor total com o desconto.
  TBCteCTE_VALORTOTAL.Value:=TBCteCTE_VALORTOTAL.Value-TBCteCTE_DESCVALOR.Value;

  //calcula o total de comissão.
  TBCteCTE_TOTALCOMISSAO.Value:=(TBCteCTE_VALORTOTAL.Value/100)*TBCteCTE_COMISSAO.Value;

  //calcula o total do ICMS.
  TBCteCTE_BASEICMS.Value:=TBCteCTE_VALORTOTAL.Value;
  if TBCteCTE_ALIQICMSRED.Value>0 then
  TBCteCTE_BASEICMS.Value:=TBCteCTE_BASEICMS.Value-((TBCteCTE_BASEICMS.Value/100)*TBCteCTE_ALIQICMSRED.Value);
  TBCteCTE_TOTALICMS.Value:=(TBCteCTE_BASEICMS.Value/100)*TBCteCTE_ALIQICMS.Value;

  //calcula a DIFAL.
  ICMS:=(TBCteCTE_BASEICMS.AsExtended/100.00) * (TBCteCTE_ALIQICMS.AsExtended-TBCteCTE_ALIQICMSINTER.AsExtended);
  TBCteCTE_TOTALICMSUFFIM.Value:=Decimais((ICMS/100.00) * TBCteCTE_ALIQICMSINTERPART.AsExtended,2);
  //calcula o valor do ICMS na UF do remetente
  TBCteCTE_TOTALICMSUFINI.Value:=Decimais((ICMS/100.00) * (100-TBCteCTE_ALIQICMSINTERPART.AsExtended),2);
  //calcula o valor do FCP.
  TBCteCTE_TOTALFCP.Value:=(TBCteCTE_BASEICMS.Value/100.00) * TBCteCTE_ALIQFCP.Value;


  //Calcula o total aproximado de tributos.
  TBCteCTE_TOTALTRIBUTOS.Value:=(TBCteCTE_VALORTOTAL.Value/100)*TBCteCTE_ALIQTRIBUTOS.Value;

  if (FormConhecimentos<>nil) and (TBCteCTE_STATUS.Value='A') then
  begin
    FormConhecimentos.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  end;

  DM.QYAux.Close;
  if DarPost=True then
  TBCte.Post;
end;

procedure TDM2.TBCteAfterEdit(DataSet: TDataSet);
begin
  if TBCteCTE_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um conhecimento já finalizado.',mtWarning,[mbOk],0);
    TBCte.Cancel;
  end;
  if TBCteCTE_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um conhecimento cancelado.',mtWarning,[mbOk],0);
    TBCte.Cancel;
  end;
  if TBCteCTE_STATUS.Value='I' then
  begin
    MessageDlg('Não é possível alterar um conhecimento inutilizado.',mtWarning,[mbOk],0);
    TBCte.Cancel;
  end;
  if (TBCteCTE_STATUS.Value='A') and (TBCteCTE_PROTOCOLO.Value<>'') then
  begin
    MessageDlg('Este CT-e já foi autorizado para uso. Proceda com a finalização.',mtWarning,[mbOk],0);
    TBCte.Cancel;
  end;
end;

procedure TDM2.TBCteAfterInsert(DataSet: TDataSet);
begin
  if CTeUtilRegistrada=False then
  begin
    MessageDlg('Um erro ocorreu ao tentar utilizar a DLL CTE_UTIL.'+#13#10+#13#10+
               'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL, na tela do CTe.'+#13#10+#13#10+
               'Para obter mais ajuda sobre a DLL acesse o menu Ferramentas -> Saiba mais sobre a DLL CTe_Util, na tela do CTe.',mtError,[mbOk],0);
    TBCte.Cancel;
    Exit;
  end;
  DM.TBNaturezas.Close;
  DM.TBNaturezas.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CFOPPADRAO.Value;
  DM.TBNaturezas.Open;
  TBCteCTE_ALIQTRIBUTOS.Value:=DM.TBParametrosPAR_CTEALIQTRIBUTOS.Value;
  TBCteCTE_AEREOIMP.Value:='NOR'; //normal. - http://www.sindicomis.com.br/Noticias%202013/C%C3%93DIGO%20DE%20NATUREZA%20DE%20CARGA%20A%C3%89REA%20-%20GRU.pdf
  TBCteCTE_AEREODIMENSAO.Value:='0000X0000X0000';
  TBCteCTE_AEREOTARIFACLASSE.Value:='M - TARIFA MINIMA';
  TBCteCTE_AEREOTARIFAVALOR.Value:=0;
  TBCteCTE_ALIQFCP.Value:=0;
  TBCteCTE_ALIQICMS.Value:=0;
  TBCteCTE_ALIQICMSINTER.Value:=0;
  TBCteCTE_ALIQICMSINTERPART.Value:=60; //2017=60, 2018=80, 2019=100%
  TBCteCTE_ALIQICMSRED.Value:=0;
  TBCteCTE_ALIQICMSUFFIM.Value:=0;
  TBCteCTE_BASEICMS.Value:=0;
  TBCteCTE_BASEICMSRED.Value:=0;
  TBCteCTE_CFOP.Value:=DM.TBParametrosPAR_CFOPPADRAO.Value;
  TBCteCTE_CFOPDESC.Value:=DM.TBNaturezasNAT_DESCRICAO.Value;
  TBCteCTE_CONDICAO.Value:=DM.TBParametrosPAR_CONDICAOPADRAO.Value;
  TBCteCTE_CONSULTADA.Value:='N';
  TBCteCTE_CSTICMS.Value:=DM.TBParametrosPAR_CTE_CSTICMS.Value;
  TBCteCTE_DATAHORA.Value:=FormatDateTime('yyyy-mm-dd',Date)+'T'+FormatDateTime('hh:nn:ss',Time);
  TBCteCTE_DESCPORC.Value:=0;
  TBCteCTE_DESCVALOR.Value:=0;
  TBCteCTE_DIAPREFERENCIAL.Value:=0;
  TBCteCTE_DTCADASTRO.Value:=DM.ServerDate;
  TBCteCTE_DTEMISSAO.Value:=TBCteCTE_DTCADASTRO.Value;
  TBCteCTE_ENTREGADATA.Value:='0 - SEM DATA DEFINIDA';
  TBCteCTE_ENTREGAHORA.Value:='0 - SEM HORA DEFINIDA';
  TBCteCTE_ENVIADO.Value:='N';
  TBCteCTE_FINALIDADE.Value:='0 - CTE NORMAL';
  TBCteCTE_FORMAPAGTOSERVICO.Value:='0 - PAGO';
  TBCteCTE_HRCADASTRO.Value:=DM.ServerTime;
  //TBCteCTE_ICMSPOR.Value:=DM.TBParametrosPAR_ICMSALIQUOTAPOR.Value;
  TBCteCTE_LOTACAO.Value:='1 - SIM';
  TBCteCTE_MODAL.Value:='01 - RODOVIARIO';
  TBCteCTE_MODELO.Value:=DM.TBParametrosPAR_CTEMODELO.Value;
  TBCteCTE_MOVIMENTAFINANCEIRO.Value:='S';
  TBCteCTE_PAGOPOR.Value:='R';
  TBCteCTE_PESOTOTAL.Value:=0;
  TBCteCTE_SEGURO.Value:='0 - REMETENTE';
  TBCteCTE_SERIE.Value:=DM.TBParametrosPAR_CTESERIE.Value;
  TBCteCTE_STATUS.Value:='A'; //A=Aberto, F=Finalizada, C=Cancelada/estornada I=Inutilizada.
  TBCteCTE_TIPOEMISSAO.Value:='1 - NORMAL';
  TBCteCTE_TIPOSERVICO.Value:='0 - NORMAL';
  TBCteCTE_TOMADOR.Value:='0 - REMETENTE';
  TBCteCTE_TOTALCCE.Value:=0;
  TBCteCTE_TOTALICMS.Value:=0;
  TBCteCTE_TOTALICMSST.Value:=0;
  TBCteCTE_TOTALICMSUFFIM.Value:=0;
  TBCteCTE_TOTALICMSUFINI.Value:=0;
  TBCteCTE_TOTALTRIBUTOS.Value:=0;
  TBCteCTE_VALORFRETE.Value:=0;
  TBCteCTE_VALORNOTAS.Value:=0;
  TBCteCTE_VALOROUTROS.Value:=0;
  TBCteCTE_VALORSEGURO.Value:=0;
  TBCteCTE_VENDEDOR.Value:=DM.UsuarioVendedor; //vendedor logado no sistema.
  if FormConhecimentos<>nil then
  begin
    FormConhecimentos.DBEdit30Exit(FormConhecimentos.DBEdit30);
    FormConhecimentos.BitBtn5.Click; //clica no botao para simular condições de pagamento.
  end;
end;

procedure TDM2.TBCteAfterPost(DataSet: TDataSet);
var U: CTe_Util_Interface;
  MsgResultado, cCT, cDV, ChaveCTe: Widestring;
  Emissao: String[10];
  I: Integer;
begin
  //se salvou um CTE novo, entao gera o novo NSU.
  if DM.InserindoNovoRegistroCTe then
  begin
    DM.InserindoNovoRegistroCTe:=False;
    //incrementa CODIGO;
    TBCteCodigo.Close; //dá um close e open novamente pra assegurar um codigo atualizado e único.
    TBCteCodigo.Open;
    TBCteCodigo.Edit;
    TBCteCodigoCTE_CODIGO.Value:=TBCteCodigoCTE_CODIGO.Value+1;
    TBCteCodigo.Post;
    //associa o novo CODIGO e a CHAVE DE ACESSO ao conhecimento atual.
    TBCte.Edit;
    TBCteCTE_CODIGO.Value:=TBCteCodigoCTE_CODIGO.Value;
    Emissao:=FormatDateTime('DD/MM/YY',TBCteCTE_DTEMISSAO.Value);
    U:=Cte_Util_TLB.CoUtil.Create;
    I:=U.CriaChaveCTeNovo(IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                          Copy(Emissao,7,2), //ano.
                          Copy(Emissao,4,2), //mes.
                          LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                          IntToStr(TBCteCTE_MODELO.Value),
                          IntToStr(TBCteCTE_SERIE.Value),
                          IntToStr(TBCteCTE_CODIGO.Value),
                          Copy(TBCteCTE_TIPOEMISSAO.Value,1,1),
                          IntToStr(CodigoSegurancaCTE),
                          msgResultado,
                          cCT,
                          cDV,
                          ChaveCTe);

    if I<>0 then
    begin
      MessageDlg('Erro na criação da chave de acesso da CTe. Verifique os parâmetros.'+#13#13+'A chave de acesso é composta por: '+#13+
                 'Codigo do estado do emitente'+#13+
                 'Ano'+#13+
                 'Mes'+#13+
                 'CNPJ do emitente'+#13+
                 'Modelo'+#13+
                 'Série'+#13+
                 'Código CTe'+#13+
                 'Código numérico'+#13#13+MsgResultado,mtError,[mbOk],0);
    end else
    begin
      TBCteCTE_CHAVEACESSO.Value:=ChaveCTe;
      TBCteCTE_CODIGONUMERICO.Value:=cCT;
    end;
    U:=nil;
    TBCte.Post;
    //...
  end;
end;

procedure TDM2.TBCteBeforeEdit(DataSet: TDataSet);
begin
  if FormConhecimentos<>nil then
  FormMain.SetFields(FormConhecimentos,True);
end;

procedure TDM2.TBCteBeforeInsert(DataSet: TDataSet);
begin
  if FormConhecimentos<>nil then
  begin
    FormMain.SetFields(FormConhecimentos,True);
    FormConhecimentos.PageControl1.ActivePageIndex:=0;
    FormConhecimentos.DBEdit42.SetFocus;
  end;
end;

procedure TDM2.TBCteBeforePost(DataSet: TDataSet);
begin
  TBCteCTE_DTATUALIZACAO.Value:=DM.ServerDate;
  TBCteCTE_HRATUALIZACAO.Value:=DM.ServerTime;
  TBCteCTE_USUARIO.Value:=DM.UsuarioLogin;
  //localiza o estado na tabela de aliquotas e grava a aliquota do estado do cliente.
  DM.TBAliquotas.Locate('ALI_ESTADO',TBCteCTE_REMESTADO.Value,[]);
  TBCteCTE_ICMSALIQUOTAUF.Value:=DM.TBAliquotasALI_ALIQUOTA.Value;
  //seta variavel pra gerar o NSU só quando é uma nota nova.
  if TBCte.State in [dsInsert] then
  begin
    DM.InserindoNovoRegistroCTe:=True;
  end;
  //copia dados do remetente se o expedidor estiver em branco.
  if TBCteCTE_EXPNOME.Value='' then
  begin
    DM2.TBCteCTE_EXPBAIRRO.Value:=       DM2.TBCteCTE_REMBAIRRO.Value;
    DM2.TBCteCTE_EXPCEP.Value:=          DM2.TBCteCTE_REMCEP.Value;
    DM2.TBCteCTE_EXPCIDADE.Value:=       DM2.TBCteCTE_REMCIDADE.Value;
    DM2.TBCteCTE_EXPCIDADECODIGO.Value:= DM2.TBCteCTE_REMCIDADECODIGO.Value;
    DM2.TBCteCTE_EXPCNPJ.Value:=         DM2.TBCteCTE_REMCNPJ.Value;
    DM2.TBCteCTE_EXPCOMPLEMENTO.Value:=  DM2.TBCteCTE_REMCOMPLEMENTO.Value;
    DM2.TBCteCTE_EXPCONTATO.Value:=      DM2.TBCteCTE_REMCONTATO.Value;
    DM2.TBCteCTE_EXPCPF.Value:=          DM2.TBCteCTE_REMCPF.Value;
    DM2.TBCteCTE_EXPEDIDOR.Value:=       DM2.TBCteCTE_REMETENTE.Value;
    DM2.TBCteCTE_EXPENDERECO.Value:=     DM2.TBCteCTE_REMENDERECO.Value;
    DM2.TBCteCTE_EXPESTADO.Value:=       DM2.TBCteCTE_REMESTADO.Value;
    DM2.TBCteCTE_EXPESTADOCODIGO.Value:= DM2.TBCteCTE_REMESTADOCODIGO.Value;
    DM2.TBCteCTE_EXPFONE.Value:=         DM2.TBCteCTE_REMFONE.Value;
    DM2.TBCteCTE_EXPIE.Value:=           DM2.TBCteCTE_REMIE.Value;
    DM2.TBCteCTE_EXPNOME.Value:=         DM2.TBCteCTE_REMNOME.Value;
    DM2.TBCteCTE_EXPNUMERO.Value:=       DM2.TBCteCTE_REMNUMERO.Value;
  end;
  //copia dados do destinatario se o recebedor estiver em branco.
  if TBCteCTE_RECNOME.Value='' then
  begin
    DM2.TBCteCTE_RECBAIRRO.Value:=       DM2.TBCteCTE_DESBAIRRO.Value;
    DM2.TBCteCTE_RECCEP.Value:=          DM2.TBCteCTE_DESCEP.Value;
    DM2.TBCteCTE_RECCIDADE.Value:=       DM2.TBCteCTE_DESCIDADE.Value;
    DM2.TBCteCTE_RECCIDADECODIGO.Value:= DM2.TBCteCTE_DESCIDADECODIGO.Value;
    DM2.TBCteCTE_RECCNPJ.Value:=         DM2.TBCteCTE_DESCNPJ.Value;
    DM2.TBCteCTE_RECCOMPLEMENTO.Value:=  DM2.TBCteCTE_DESCOMPLEMENTO.Value;
    DM2.TBCteCTE_RECCONTATO.Value:=      DM2.TBCteCTE_DESCONTATO.Value;
    DM2.TBCteCTE_RECCPF.Value:=          DM2.TBCteCTE_DESCPF.Value;
    DM2.TBCteCTE_RECEBEDOR.Value:=       DM2.TBCteCTE_DESTINATARIO.Value;
    DM2.TBCteCTE_RECENDERECO.Value:=     DM2.TBCteCTE_DESENDERECO.Value;
    DM2.TBCteCTE_RECESTADO.Value:=       DM2.TBCteCTE_DESESTADO.Value;
    DM2.TBCteCTE_RECESTADOCODIGO.Value:= DM2.TBCteCTE_DESESTADOCODIGO.Value;
    DM2.TBCteCTE_RECFONE.Value:=         DM2.TBCteCTE_DESFONE.Value;
    DM2.TBCteCTE_RECIE.Value:=           DM2.TBCteCTE_DESIE.Value;
    DM2.TBCteCTE_RECNOME.Value:=         DM2.TBCteCTE_DESNOME.Value;
    DM2.TBCteCTE_RECNUMERO.Value:=       DM2.TBCteCTE_DESNUMERO.Value;
  end;
  CalcularTotaisCTe(False);
  //garante o texto correto no memo.
  if FormConhecimentos<>nil then
  FormConhecimentos.BitBtn5.Click;
  //...
end;

procedure TDM2.DSCteStateChange(Sender: TObject);
begin
  if TBCte.State in [dsInsert, dsEdit] then
  begin
    if FormConhecimentos<>nil then
    begin
      FormConhecimentos.ArquivosXMLdoCTe1.Enabled:=False;
      FormConhecimentos.ArquivosXMLdoCTe1Button.Enabled:=False;
      FormConhecimentos.BuscarCTe1.Enabled:=False;
      FormConhecimentos.CancelarConhecimento1.Enabled:=False;
      FormConhecimentos.CancelarConhecimento1Button.Enabled:=False;
      FormConhecimentos.CartaDeCorrecao1.Enabled:=False;
      FormConhecimentos.CartaDeCorrecao1Button.Enabled:=False;
      FormConhecimentos.CTePorDestinatario1.Enabled:=False;
      FormConhecimentos.CTePorRemetente1.Enabled:=False;
      FormConhecimentos.CTePorStatus1.Enabled:=False;
      FormConhecimentos.CTePorStatusComICMS1.Enabled:=False;
      FormConhecimentos.DACTE1.Enabled:=False;
      FormConhecimentos.DACTE1Button.Enabled:=False;
      FormConhecimentos.EnviarCTe1.Enabled:=False;
      FormConhecimentos.EnviarCTe1Button.Enabled:=False;
      FormConhecimentos.EnviarCTePorEmail1.Enabled:=False;
      FormConhecimentos.EnviarCTePorEmail1Button.Enabled:=False;
      FormConhecimentos.FinalizarConhecimento1.Enabled:=False;
      FormConhecimentos.FinalizarConhecimento1Button.Enabled:=False;
      FormConhecimentos.GerarArquivoCTe1.Enabled:=False;
      FormConhecimentos.InformarDadosdeRecebimento1.Enabled:=False;
      FormConhecimentos.InutilizacaoDeFaixaDeCTe1.Enabled:=False;
      FormConhecimentos.InutilizacoesNoPeriodo1.Enabled:=False;
      FormConhecimentos.InutilizarCTe1.Enabled:=False;
      FormConhecimentos.InutilizarCTe1Button.Enabled:=False;
      FormConhecimentos.Localizar1.Enabled:=False;
      FormConhecimentos.Localizar1Button.Enabled:=False;
      FormConhecimentos.LocalizarConhecimentoNoContasAReceber1.Enabled:=False;
      FormConhecimentos.LocalizarConhecimentoNoContasAReceber1Button.Enabled:=False;
      FormConhecimentos.RecriarArquivoXMLprocCTe1.Enabled:=False;
      FormConhecimentos.RecriarArquivoXMLprocCancCTe1.Enabled:=False;
      FormConhecimentos.RecriarChavedeAcesso1.Enabled:=False;
      FormConhecimentos.Relatorios2.Enabled:=False;
      FormConhecimentos.Relatorios2Button.Enabled:=False;
      FormConhecimentos.ValidarArquivoCTe1.Enabled:=False;
      FormConhecimentos.VerificacaoDeNumeracao1.Enabled:=False;
    end;
  end else
  begin
    if FormConhecimentos<>nil then
    begin
      FormConhecimentos.ArquivosXMLdoCTe1.Enabled:=True;
      FormConhecimentos.ArquivosXMLdoCTe1Button.Enabled:=True;
      FormConhecimentos.BuscarCTe1.Enabled:=True;
      FormConhecimentos.CancelarConhecimento1.Enabled:=True;
      FormConhecimentos.CancelarConhecimento1Button.Enabled:=True;
      FormConhecimentos.CartaDeCorrecao1.Enabled:=True;
      FormConhecimentos.CartaDeCorrecao1Button.Enabled:=True;
      FormConhecimentos.CTePorDestinatario1.Enabled:=True;
      FormConhecimentos.CTePorRemetente1.Enabled:=True;
      FormConhecimentos.CTePorStatus1.Enabled:=True;
      FormConhecimentos.CTePorStatusComICMS1.Enabled:=True;
      FormConhecimentos.DACTE1.Enabled:=True;
      FormConhecimentos.DACTE1Button.Enabled:=True;
      FormConhecimentos.EnviarCTe1.Enabled:=True;
      FormConhecimentos.EnviarCTe1Button.Enabled:=True;
      FormConhecimentos.EnviarCTePorEmail1.Enabled:=True;
      FormConhecimentos.EnviarCTePorEmail1Button.Enabled:=True;
      FormConhecimentos.FinalizarConhecimento1.Enabled:=True;
      FormConhecimentos.FinalizarConhecimento1Button.Enabled:=True;
      FormConhecimentos.GerarArquivoCTe1.Enabled:=True;
      FormConhecimentos.InformarDadosdeRecebimento1.Enabled:=True;
      FormConhecimentos.InutilizacaoDeFaixaDeCTe1.Enabled:=True;
      FormConhecimentos.InutilizacoesNoPeriodo1.Enabled:=True;
      FormConhecimentos.InutilizarCTe1.Enabled:=True;
      FormConhecimentos.InutilizarCTe1Button.Enabled:=True;
      FormConhecimentos.Localizar1.Enabled:=True;
      FormConhecimentos.Localizar1Button.Enabled:=True;
      FormConhecimentos.LocalizarConhecimentoNoContasAReceber1.Enabled:=True;
      FormConhecimentos.LocalizarConhecimentoNoContasAReceber1Button.Enabled:=True;
      FormConhecimentos.RecriarArquivoXMLprocCTe1.Enabled:=True;
      FormConhecimentos.RecriarArquivoXMLprocCancCTe1.Enabled:=True;
      FormConhecimentos.RecriarChavedeAcesso1.Enabled:=True;
      FormConhecimentos.Relatorios2.Enabled:=True;
      FormConhecimentos.Relatorios2Button.Enabled:=True;
      FormConhecimentos.ValidarArquivoCTe1.Enabled:=True;
      FormConhecimentos.VerificacaoDeNumeracao1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormConhecimentos);
      FormMain.SetFields(FormConhecimentos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CAMPOS DO CTE                                                              //
//##############################################################################
{$REGION 'TABELA CTECAMPOS'}
procedure TDM2.TBCteCamposAfterInsert(DataSet: TDataSet);
begin
  TBCteCamposCTF_ALTERAVEL.Value:='S';
  TBCteCamposCTF_TIPO.Value:='C';
end;

procedure TDM2.TBCteCamposBeforeInsert(DataSet: TDataSet);
begin
  if FormCteCampos<>nil then
  FormCteCampos.DBEdit1.SetFocus;
end;

procedure TDM2.DSCteCamposStateChange(Sender: TObject);
begin
  if TBCteCampos.State in [dsInsert, dsEdit] then
  begin
    if FormCteCampos<>nil then
    begin
      FormCteCampos.Imprimir1.Enabled:=False;
      FormCteCampos.Localizar1.Enabled:=False;
      FormCteCampos.PngSpeedButton1.Enabled:=False;
      FormCteCampos.SpeedButton1.Enabled:=False;
    end;
  end else
  begin
    if FormCteCampos<>nil then
    begin
      FormCteCampos.Imprimir1.Enabled:=True;
      FormCteCampos.Localizar1.Enabled:=True;
      FormCteCampos.PngSpeedButton1.Enabled:=True;
      FormCteCampos.SpeedButton1.Enabled:=True;
      FormMain.DesabilitarControles(FormCteCampos);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONHECIMENTOS INFO CARGA                                                   //
//##############################################################################
{$REGION 'TABELA CTECARGA'}
procedure TDM2.TBCteCargaAfterInsert(DataSet: TDataSet);
begin
  TBCteCargaCCG_CTE.Value:=TBCteCTE_CODIGO.Value;
  TBCteCargaCCG_UNIDADEMEDIDA.Value:='01 - KG';
  TBCteCargaCCG_QUANTIDADE.Value:=0;
end;
{$ENDREGION}

//##############################################################################
// CTECCE - CARTA DE CORRECAO ELETRONICAS.                                    //
//##############################################################################
{$REGION 'TABELA CTECCE'}
procedure TDM2.TBCtecceAfterDelete(DataSet: TDataSet);
begin
  if DM.NaoPodeExcluir then
  begin
    TRCteCCe.Rollback;
    DM.NaoPodeExcluir:=False;
    MessageDlg('Não é possível eliminar uma CCe já protocolada.',mtWarning,[mbOk],0);
  end else
  TRCteCCe.Commit;
  TBCteCCe.Open;

  //descobre o valor máximo do sequencial... como no afterpost.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select max(CTC_SEQUENCIAL) as QTDE from CTECCE where CTC_CTE=:conhecimento');
  DM.QYAux.ParamByName('conhecimento').AsInteger:=TBCteCTE_CODIGO.Value;
  DM.QYAux.Open;

  //atualiza a qtde na tabela CTE.
  DM.CodigoMark:=TBCteCTE_CODIGO.Value;
  DM.QYAux2.Close;
  DM.QYAux2.SQL.Clear;
  DM.QYAux2.SQL.Add('update CTE set CTE_TOTALCCE=:qtde where CTE_CODIGO=:codigo');
  DM.QYAux2.ParamByName('qtde').AsInteger:=DM.QYAux.FieldByName('QTDE').AsInteger;
  DM.QYAux2.ParamByName('codigo').AsInteger:=TBCteCTE_CODIGO.Value;
  DM.QYAux2.ExecSQL;

  DM.QYAux.Close;

  //atualiza dados na tela para o usuário.
  TBCte.Close;
  TBCte.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  TBCte.Open;
end;

procedure TDM2.TBCtecceAfterEdit(DataSet: TDataSet);
begin
  if TBCteCCeCTC_PROTOCOLO.Value<>'' then
  begin
    MessageDlg('Não é possível alterar uma CCe já protocolada.',mtWarning,[mbOk],0);
    TBCteCCe.Cancel;
  end;
end;

procedure TDM2.TBCtecceAfterInsert(DataSet: TDataSet);
begin
  if TBCteCTE_TOTALCCE.Value>=20 then
  begin
    MessageDlg('Não é possível realizar mais do que 20 cartas de correção para uma CTe.',mtError,[mbOk],0);
    TBCteCCe.Cancel;
    Exit;
  end;
  TBCteCCeCTC_DATA.Value:=DM.ServerDate;
  TBCteCCeCTC_HORA.Value:=DM.ServerTime;
  TBCteCCeCTC_CTE.Value:=TBCteCTE_CODIGO.Value;
  TBCteCCeCTC_SEQUENCIAL.Value:=TBCteCTE_TOTALCCE.Value+1;
end;

procedure TDM2.TBCtecceAfterPost(DataSet: TDataSet);
begin
  if DM.InserindoNovoRegistroCCe then
  begin
    //descobre qual é o sequencial máximo.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select max(CTC_SEQUENCIAL) as QTDE from CTECCE where CTC_CTE=:conhecimento');
    DM.QYAux.ParamByName('conhecimento').AsInteger:=TBCteCTE_CODIGO.Value;
    DM.QYAux.Open;

    //atualiza a qtde na tabela CTE.
    DM.CodigoMark:=TBCteCTE_CODIGO.Value;
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('update CTE set CTE_TOTALCCE=:qtde where CTE_CODIGO=:codigo');
    DM.QYAux2.ParamByName('qtde').AsInteger:=DM.QYAux.FieldByName('QTDE').AsInteger;
    DM.QYAux2.ParamByName('codigo').AsInteger:=TBCteCTE_CODIGO.Value;
    DM.QYAux2.ExecSQL;

    DM.QYAux.Close;

    //atualiza dados na tela para o usuário.
    TBCte.Close;
    TBCte.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    TBCte.Open;

    DM.InserindoNovoRegistroCCe:=False;
  end;
end;

procedure TDM2.TBCtecceBeforeDelete(DataSet: TDataSet);
begin
  if TBCteCCeCTC_PROTOCOLO.Value<>'' then
  DM.NaoPodeExcluir:=True;
end;

procedure TDM2.TBCtecceBeforeEdit(DataSet: TDataSet);
begin
  if FormCteCCe<>nil then
  FormMain.SetFields(FormCteCCe,True);
end;

procedure TDM2.TBCtecceBeforeInsert(DataSet: TDataSet);
begin
  if FormCteCCe<>nil then
  begin
    FormMain.SetFields(FormCteCCe,True);
    //FormCteCCe.DBEdit7.SetFocus;
  end;
end;

procedure TDM2.TBCtecceBeforePost(DataSet: TDataSet);
begin
  TBCteCCeCTC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBCteCCeCTC_HRATUALIZACAO.Value:=DM.ServerTime;
  //seta a variavel para true para ser checada no
  //evento after post que atualiza do total de cartas na tabela de CTe.
  if TBCteCCe.State in [dsInsert] then
  DM.InserindoNovoRegistroCCe:=True;
end;

procedure TDM2.DSCteCCeStateChange(Sender: TObject);
begin
  if TBCteCCe.State in [dsInsert, dsEdit] then
  begin
    if FormCteCCe<>nil then
    begin
      FormCteCCe.SpeedButton28.Enabled:=False;
      FormCteCCe.SpeedButton14.Enabled:=False;
      FormCteCCe.PngSpeedButton2.Enabled:=False;
      FormCteCCe.EnviarCCe1.Enabled:=False;
      FormCteCCe.EnviarCCePorEmail1.Enabled:=False;
      FormCteCCe.Imprimir1.Enabled:=False;
    end;
  end else
  begin
    if FormCteCCe<>nil then
    begin
      FormCteCCe.SpeedButton28.Enabled:=True;
      FormCteCCe.SpeedButton14.Enabled:=True;
      FormCteCCe.PngSpeedButton2.Enabled:=True;
      FormCteCCe.EnviarCCe1.Enabled:=True;
      FormCteCCe.EnviarCCePorEmail1.Enabled:=True;
      FormCteCCe.Imprimir1.Enabled:=True;
      FormMain.DesabilitarControles(FormCteCCe);
      FormMain.SetFields(FormCteCCe,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CTECCEITENS - ITENS DA CCE                                                 //
//##############################################################################
{$REGION 'TABELA CTECCEITENS'}
procedure TDM2.TBCtecceItensAfterInsert(DataSet: TDataSet);
begin
  TBCteCCeItensCTX_CCE.Value:=TBCteCCeCTC_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// CONHECIMENTOS ELETRONICOS - NSU                                            //
//##############################################################################
//nada

//##############################################################################
// CONHECIMENTOS ELETRONICOS INUTILIZADOS                                     //
//##############################################################################
{$REGION 'TABELA CTEINUTILIZADOS'}
procedure TDM2.TBCteInutilizadosAfterDelete(DataSet: TDataSet);
begin
  if DM.NaoPodeExcluir then
  begin
    TRCteInutilizados.Rollback;
    DM.NaoPodeExcluir:=False;
    MessageDlg('Não é possível eliminar uma inutilização já protocolada.',mtWarning,[mbOk],0);
  end else
  TRCteInutilizados.Commit;
  TBCteInutilizados.Open;
end;

procedure TDM2.TBCteInutilizadosAfterEdit(DataSet: TDataSet);
begin
  if TBCteInutilizadosCIN_PROTOCOLO.Value<>'' then
  begin
    MessageDlg('Não é possível alterar uma inutilização já protocolada.',mtError,[mbOk],0);
    TBCteInutilizados.Cancel;
  end;
end;

procedure TDM2.TBCteInutilizadosAfterInsert(DataSet: TDataSet);
var A,M,D: Word;
begin
  DecodeDate(Date,A,M,D);
  TBCteInutilizadosCIN_ANO.Value:=IntToStr(A);
  TBCteInutilizadosCIN_DTCADASTRO.Value:=DM.ServerDate;
  TBCteInutilizadosCIN_HRCADASTRO.Value:=DM.ServerTime;
  TBCteInutilizadosCIN_MODELO.Value:=DM.TBParametrosPAR_CTEMODELO.Value;
  TBCteInutilizadosCIN_PROTOCOLO.Value:='';
  TBCteInutilizadosCIN_PROTOCOLODH.Value:='';
  TBCteInutilizadosCIN_SERIE.Value:=DM.TBParametrosPAR_CTESERIE.Value;
end;

procedure TDM2.TBCteInutilizadosAfterPost(DataSet: TDataSet);
begin
  if TBCteInutilizadosCIN_NUMFINAL.Value<TBCteInutilizadosCIN_NUMINICIAL.Value then
  begin
    MessageDlg('O número final não pode ser menor que o número inicial.',mtError,[mbOk],0);
    TBCteInutilizados.Edit; //volta a colocar em edição.
  end;
  if (TBCteInutilizadosCIN_NUMFINAL.Value-TBCteInutilizadosCIN_NUMINICIAL.Value)>1000 then
  begin
    MessageDlg('A faixa de inutilização não pode ultrapassar 2000 números. ('+IntToStr(TBCteInutilizadosCIN_NUMFINAL.Value-TBCteInutilizadosCIN_NUMINICIAL.Value)+')',mtError,[mbOk],0);
    TBCteInutilizados.Edit;
  end;
  if Length(TBCteInutilizadosCIN_JUSTIFICATIVA.Value)<15 then
  begin
    MessageDlg('A justificativa deve ter no mínimo 15 caracteres. ('+IntToStr(Length(TBCteInutilizadosCIN_JUSTIFICATIVA.Value))+')',mtError,[mbOk],0);
    TBCteInutilizados.Edit; //volta a colocar em edição.
  end;
end;

procedure TDM2.TBCteInutilizadosBeforeDelete(DataSet: TDataSet);
begin
  if TBCteInutilizadosCIN_PROTOCOLO.Value<>'' then
  DM.NaoPodeExcluir:=True;
end;

procedure TDM2.TBCteInutilizadosBeforeEdit(DataSet: TDataSet);
begin
  if FormConhecimentosInutilizados<>nil then
  FormMain.SetFields(FormConhecimentosInutilizados,True);
end;

procedure TDM2.TBCteInutilizadosBeforeInsert(DataSet: TDataSet);
begin
  if FormConhecimentosInutilizados<>nil then
  begin
    FormMain.SetFields(FormConhecimentosInutilizados,True);
    FormConhecimentosInutilizados.DBEdit4.SetFocus;
  end;
end;

procedure TDM2.TBCteInutilizadosBeforePost(DataSet: TDataSet);
begin
  TBCteInutilizadosCIN_DTATUALIZACAO.Value:=DM.ServerDate;
  TBCteInutilizadosCIN_HRATUALIZACAO.Value:=DM.ServerTime;
end;

procedure TDM2.DSCteInutilizadosStateChange(Sender: TObject);
begin
  if TBCteInutilizados.State in [dsInsert, dsEdit] then
  begin
    if FormConhecimentosInutilizados<>nil then
    begin
      FormConhecimentosInutilizados.SpeedButton2.Enabled:=False;
      FormConhecimentosInutilizados.PngSpeedButton1.Enabled:=False;
      FormConhecimentosInutilizados.Localizar1.Enabled:=False;
      FormConhecimentosInutilizados.InutilizarCTe1.Enabled:=False;
    end;
  end else
  begin
    if FormConhecimentosInutilizados<>nil then
    begin
      FormConhecimentosInutilizados.SpeedButton2.Enabled:=True;
      FormConhecimentosInutilizados.PngSpeedButton1.Enabled:=True;
      FormConhecimentosInutilizados.Localizar1.Enabled:=True;
      FormConhecimentosInutilizados.InutilizarCTe1.Enabled:=True;
      FormMain.DesabilitarControles(FormConhecimentosInutilizados);
      FormMain.SetFields(FormConhecimentosInutilizados,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// CONHECIMENTOS NOTAS                                                        //
//##############################################################################
{$REGION 'TABELA CTENOTAS'}
procedure TDM2.CalcularTotaisCTeNotas(DarPost: Boolean);
begin
  //nada para calcular...
end;

procedure TDM2.TBCteNotasAfterInsert(DataSet: TDataSet);
begin
  TBCteNotasCTN_BASEICMS.Value:=0;
  TBCteNotasCTN_BASEICMSST.Value:=0;
  TBCteNotasCTN_CTE.Value:=TBCteCTE_CODIGO.Value;
  TBCteNotasCTN_DTEMISSAO.Value:=DM.ServerDate;
  TBCteNotasCTN_MODELO.Value:=0;
  TBCteNotasCTN_PESO.Value:=0;
  TBCteNotasCTN_SERIE.Value:=0;
  TBCteNotasCTN_TIPONOTA.Value:='2 - NOTA FISCAL ELETRONICA';
  TBCteNotasCTN_TIPOOUTROS.Value:='00 - DECLARACAO';
  TBCteNotasCTN_TOTALICMS.Value:=0;
  TBCteNotasCTN_TOTALICMSST.Value:=0;
  TBCteNotasCTN_TOTALPRODUTOS.Value:=0;
  TBCteNotasCTN_VALORTOTAL.Value:=0;
end;

procedure TDM2.TBCteNotasAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisCTe(True);
  //isso não tá legal... vai ficar recalculando os totais toda hora.
  if (FormConhecimentos<>nil) and (TBCteCTE_STATUS.Value='A') then
  begin
    FormConhecimentos.BitBtn5.Click; //clica no botao para simular condições de pagamento.
    TBCte.Post;
  end;
end;

procedure TDM2.TBCteNotasBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisCTeNotas(False); //o parametro nao está sendo utilizado.
end;
{$ENDREGION}

//##############################################################################
// CONHECIMENTOS VEICULOS                                                     //
//##############################################################################
{$REGION 'TABELA CTEVEICULOS'}
procedure TDM2.TBCteVeiculosAfterInsert(DataSet: TDataSet);
begin
  TBCteVeiculosCTV_CTE.Value:=TBCteCTE_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// CURSOS                                                                     //
//##############################################################################
{$REGION 'TABELA CURSOS'}
procedure TDM2.TBCursosAfterInsert(DataSet: TDataSet);
begin
  TBCursosCUR_DTCADASTRO.Value:=DM.ServerDate;
  TBCursosCUR_HRCADASTRO.Value:=DM.ServerTime;
  TBCursosCUR_STATUS.Value:='A';
end;

procedure TDM2.TBCursosBeforeEdit(DataSet: TDataSet);
begin
  if FormCursos<>nil then
  FormMain.SetFields(FormCursos,True);
end;

procedure TDM2.TBCursosBeforeInsert(DataSet: TDataSet);
begin
  if FormCursos<>nil then
  begin
    FormMain.SetFields(FormCursos,True);
    FormCursos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBCursosBeforePost(DataSet: TDataSet);
begin
  TBCursosCUR_DTATUALIZACAO.Value:=DM.ServerDate;
  TBCursosCUR_HRATUALIZACAO.Value:=DM.ServerTime;
  TBCursosCUR_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSCursosStateChange(Sender: TObject);
begin
  if TBCursos.State in [dsInsert, dsEdit] then
  begin
    if FormCursos<>nil then
    begin
      FormCursos.Localizar1.Enabled:=False;
      FormCursos.Localizar1Button.Enabled:=False;
      FormCursos.Relatorios2.Enabled:=False;
      FormCursos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormCursos<>nil then
    begin
      FormCursos.Localizar1.Enabled:=True;
      FormCursos.Localizar1Button.Enabled:=True;
      FormCursos.Relatorios2.Enabled:=True;
      FormCursos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormCursos);
      FormMain.SetFields(FormCursos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// DELIVERYS                                                                  //
//##############################################################################
{$REGION 'TABELA DELIVERYS'}
procedure TDM2.TBDeliverysAfterEdit(DataSet: TDataSet);
begin
  if TBDeliverysDLV_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda finalizado.',mtWarning,[mbOk],0);
    TBDeliverys.Cancel;
  end;
  if TBDeliverysDLV_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda cancelado.',mtWarning,[mbOk],0);
    TBDeliverys.Cancel;
  end;
  if TBDeliverysDLV_STATUS.Value='I' then
  begin
    MessageDlg('Não é possível alterar um pedido de venda inutilizado.',mtWarning,[mbOk],0);
    TBDeliverys.Cancel;
  end;
end;

procedure TDM2.TBDeliverysAfterInsert(DataSet: TDataSet);
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=1;
  DM.TBClientes.Open;
  TBDeliverysDLV_CARTAO.Value:=0;
  TBDeliverysDLV_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBDeliverysDLV_DESCPORC.Value:=0;
  TBDeliverysDLV_DESCVALOR.Value:=0;
  TBDeliverysDLV_DINHEIRO.Value:=0;
  TBDeliverysDLV_DTCADASTRO.Value:=DM.ServerDate;
  TBDeliverysDLV_ENTREGADOR.Value:=DM.UsuarioVendedor;
  TBDeliverysDLV_HRCADASTRO.Value:=DM.ServerTime;
  TBDeliverysDLV_RETIRA.Value:='N';
  TBDeliverysDLV_SEQUENCIAITEM.Value:=0;
  TBDeliverysDLV_STATUS.Value:='A';
  TBDeliverysDLV_TAXA.Value:=DM.TBClientesTAX_VALOR.Value;
  TBDeliverysDLV_TAXATIPO.Value:=DM.TBClientesTAX_TIPO.Value;
  TBDeliverysDLV_TAXAVALOR.Value:=DM.TBClientesTAX_VALOR.Value;
  TBDeliverysDLV_TROCO.Value:=0;
  TBDeliverysDLV_TOTALITENS.Value:=0;
  TBDeliverysDLV_TOTALTAXA.Value:=0;
  TBDeliverysDLV_VALORTOTAL.Value:=0;
  TBDeliverysDLV_VENDEDOR.Value:=DM.UsuarioVendedor;
  TBDeliverysDLV_VIAAPP.Value:='N';

  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    TBDeliverysDLV_BAIRRO.Value:=FormClientesLoc.QYClientesCLI_BAIRRO.Value;
    TBDeliverysDLV_CEP.Value:=FormClientesLoc.QYClientesCLI_CEP.Value;
    TBDeliverysDLV_CIDADE.Value:=FormClientesLoc.QYClientesCLI_CIDADE.Value;
    TBDeliverysDLV_CIDADECODIGO.Value:=FormClientesLoc.QYClientesCLI_CIDADECODIGO.Value;
    TBDeliverysDLV_CLIENTE.Value:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    TBDeliverysDLV_COMPLEMENTO.Value:=FormClientesLoc.QYClientesCLI_COMPLEMENTO.Value;
    TBDeliverysDLV_ENDERECO.Value:=FormClientesLoc.QYClientesCLI_ENDERECO.Value;
    TBDeliverysDLV_ESTADO.Value:=FormClientesLoc.QYClientesCLI_ESTADO.Value;
    TBDeliverysDLV_ESTADOCODIGO.Value:=FormClientesLoc.QYClientesCLI_ESTADOCODIGO.Value;
    TBDeliverysDLV_FONE1.Value:=FormClientesLoc.QYClientesCLI_FONE1.Value;
    TBDeliverysDLV_FONE2.Value:=FormClientesLoc.QYClientesCLI_FONE2.Value;
    TBDeliverysDLV_NUMERO.Value:=FormClientesLoc.QYClientesCLI_NUMERO.Value;
    TBDeliverysDLV_TAXA.Value:=FormClientesLoc.QYClientesCLI_TAXA.Value;
    TBDeliverysDLV_TAXATIPO.Value:=FormClientesLoc.QYClientesTAX_TIPO.Value;
    TBDeliverysDLV_TAXAVALOR.Value:=FormClientesLoc.QYClientesTAX_VALOR.Value;
    TBDeliverysDLV_VENDEDOR.Value:=FormClientesLoc.QYClientesCLI_VENDEDOR.Value;
    TBDeliverysCLI_NOME.Value:=FormClientesLoc.QYClientesCLI_NOME.Value;
    TBDeliverysVEN_NOME.Value:=FormClientesLoc.QYClientesVEN_NOME.Value;
    TBDeliverysVEN_NOMEENTREGADOR.Value:=FormClientesLoc.QYClientesVEN_NOME.Value;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;

  TBDeliverys.Post;
end;

procedure TDM2.TBDeliverysBeforeCancel(DataSet: TDataSet);
begin
  if FormDeliveryDetalhes<>nil then
  FormDeliveryDetalhes.DBEdit4.SetFocus; //se tiver foco nos campos cartao ou dinheiro, faz disparar o calculo dos totais antes.
end;

procedure TDM2.TBDeliverysBeforeEdit(DataSet: TDataSet);
begin
  if FormDeliveryDetalhes<>nil then
  FormMain.SetFields(FormDeliveryDetalhes,True);
end;

procedure TDM2.TBDeliverysBeforePost(DataSet: TDataSet);
begin
  TBDeliverysDLV_DTATUALIZACAO.Value:=DM.ServerDate;
  TBDeliverysDLV_USUARIO.Value:=DM.UsuarioLogin;

  if FormDeliveryDetalhes<>nil then
  FormDeliveryDetalhes.DBEdit4.SetFocus; //se tiver foco nos campos cartao ou dinheiro, faz disparar o calculo dos totais antes.

  CalcularTotaisDelivery(False);
end;

procedure TDM2.DSDeliverysStateChange(Sender: TObject);
begin
  if TBDeliverys.State in [dsInsert, dsEdit] then
  begin
    if FormDeliveryDetalhes<>nil then
    begin
      FormDeliveryDetalhes.Localizar1.Enabled:=False;
      FormDeliveryDetalhes.Localizar1Button.Enabled:=False;
      {FormDeliveryDetalhes.PngSpeedButton5.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton6.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton7.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton8.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton9.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton10.Enabled:=True;
      FormDeliveryDetalhes.PngSpeedButton11.Enabled:=True;}
    end;
  end else
  begin
    if FormDeliveryDetalhes<>nil then
    begin
      FormDeliveryDetalhes.Localizar1.Enabled:=True;
      FormDeliveryDetalhes.Localizar1Button.Enabled:=True;
      {FormDeliveryDetalhes.PngSpeedButton5.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton6.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton7.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton8.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton9.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton10.Enabled:=False;
      FormDeliveryDetalhes.PngSpeedButton11.Enabled:=False;}
      //...
      FormMain.DesabilitarControles(FormDeliveryDetalhes);
      FormMain.SetFields(FormDeliveryDetalhes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// DELIVERYS ITENS                                                            //
//##############################################################################
{$REGION 'TABELA DELIVERYSITENS'}
procedure TDM2.CalcularTotaisDelivery(DarPost: Boolean);
begin
  TBDeliverys.Edit;

  //atualiza o total dos PRODUTOS na tabela vendas.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(DLI_VALORTOTAL) as TOTALITENS from DELIVERYSITENS where DLI_DELIVERY=:delivery');
  DM.QYAux.ParamByName('delivery').AsInteger:=TBDeliverysDLV_CODIGO.Value;
  DM.QYAux.Open;
  TBDeliverysDLV_TOTALITENS.Value:=DM.QYAux.FieldByName('TOTALITENS').AsExtended;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select '+
                   'sum(DLI_DESCVALOR) as VALORDESCONTO, '+
                   'max(DLI_SEQUENCIA) as SEQUENCIA, '+
                   'sum(DLI_VALORTOTAL) as VALORTOTAL '+
                   'from DELIVERYSITENS where DLI_DELIVERY=:delivery');
  DM.QYAux.ParamByName('delivery').AsInteger:=TBDeliverysDLV_CODIGO.Value;
  DM.QYAux.Open;

  //atualiza totais na tabela deliverys.
  TBDeliverysDLV_DESCVALOR.Value    :=DM.QYAux.FieldByName('VALORDESCONTO').AsExtended;
  TBDeliverysDLV_SEQUENCIAITEM.Value:=DM.QYAux.FieldByName('SEQUENCIA').AsInteger;

  //calcula a taxa.
  if TBDeliverysDLV_RETIRA.Value='N' then
  begin
    if TBDeliverysDLV_TAXATIPO.Value='V' then //V=Valor P=Porcentagem.
    TBDeliverysDLV_TOTALTAXA.Value:=TBDeliverysDLV_TAXAVALOR.AsExtended else
    TBDeliverysDLV_TOTALTAXA.Value:=TBDeliverysDLV_TOTALITENS.AsExtended + ((TBDeliverysDLV_TOTALITENS.AsExtended/100) * TBDeliverysDLV_TAXAVALOR.AsExtended);
  end else
  TBDeliverysDLV_TOTALTAXA.Value:=0;

  TBDeliverysDLV_VALORTOTAL.Value:=TBDeliverysDLV_TOTALITENS.AsExtended+
                                   TBDeliverysDLV_TOTALTAXA.AsExtended-
                                   TBDeliverysDLV_DESCVALOR.AsExtended;

  //calcula nova porcentagem de desconto.
  if TBDeliverysDLV_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBDeliverysDLV_DESCPORC.Value:=Decimais((100.0 / TBDeliverysDLV_VALORTOTAL.AsExtended) * TBDeliverysDLV_DESCVALOR.AsExtended,8) else
    TBDeliverysDLV_DESCPORC.Value:=0;

  if TBDeliverysDLV_DINHEIRO.Value > (TBDeliverysDLV_VALORTOTAL.AsExtended-TBDeliverysDLV_CARTAO.AsExtended) then
  TBDeliverysDLV_TROCO.Value:=Decimais((TBDeliverysDLV_VALORTOTAL.AsExtended-TBDeliverysDLV_CARTAO.AsExtended)-TBDeliverysDLV_DINHEIRO.AsExtended,2) else
  TBDeliverysDLV_TROCO.Value:=0;
  //if TBDeliverysDLV_TROCO.Value < 0 then
  //TBDeliverysDLV_TROCO.Value=0;


  DM.QYAux.Close;
  if DarPost then TBDeliverys.Post;
end;

procedure TDM2.CalcularTotaisDeliveryItens(DarPost: Boolean);
begin
  //calcula o valor total com desconto.
  TBDeliverysItensDLI_VALORTOTAL.Value:=Decimais((TBDeliverysItensDLI_QUANTIDADE.AsExtended * TBDeliverysItensDLI_VALORUNIT.AsExtended),2);
  TBDeliverysItensDLI_DESCVALOR.Value:=Decimais((TBDeliverysItensDLI_VALORTOTAL.AsExtended/100.00)*TBDeliverysItensDLI_DESCPORC.AsExtended,2);
  TBDeliverysItensDLI_VALORTOTAL.Value:=TBDeliverysItensDLI_VALORTOTAL.Value-TBDeliverysItensDLI_DESCVALOR.Value;
end;

procedure TDM2.TBDeliverysItensAfterInsert(DataSet: TDataSet);
begin
  TBDeliverysItensDLI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
  TBDeliverysItensDLI_DELIVERY.Value:=TBDeliverysDLV_CODIGO.Value;
  TBDeliverysItensDLI_DESCPORC.Value:=0;
  TBDeliverysItensDLI_DESCVALOR.Value:=0;
  TBDeliverysItensDLI_QUANTIDADE.Value:=1;
  TBDeliverysItensDLI_SEQUENCIA.Value:=TBDeliverysDLV_SEQUENCIAITEM.Value+1;
  TBDeliverysItensDLI_VALORUNIT.Value:=0;
  TBDeliverysItensDLI_VALORTOTAL.Value:=0;
end;

procedure TDM2.TBDeliverysItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisDelivery(True);
end;

procedure TDM2.TBDeliverysItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisDeliveryItens(False);
end;
{$ENDREGION}

//##############################################################################
// EMAILS ENVIADOS.                                                           //
//##############################################################################
{$REGION 'TABELA EMAILS'}
procedure TDM2.TBEmailsAfterInsert(DataSet: TDataSet);
begin
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  TBEmailsEMA_CONFIRMACAO.Value:='N';
  TBEmailsEMA_DTCADASTRO.Value:=DM.ServerDate;
  TBEmailsEMA_ENVIADO.Value:='N';
  TBEmailsEMA_HRCADASTRO.Value:=DM.ServerTime;
  TBEmailsEMA_HTML.Value:='S';
  TBEmailsEMA_VENDEDOR.Value:=DM.UsuarioVendedor;
  TBEmailsVEN_NOME.Value:=DM.TBVendedoresVEN_NOME.Value;
end;

procedure TDM2.TBEmailsBeforeEdit(DataSet: TDataSet);
begin
  if FormEmailsEnviar<>nil then
  FormMain.SetFields(FormEmailsEnviar,True);
end;

procedure TDM2.TBEmailsBeforeInsert(DataSet: TDataSet);
begin
  if FormEmailsEnviar<>nil then
  begin
    FormMain.SetFields(FormEmailsEnviar,True);
    FormEmailsEnviar.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBEmailsBeforePost(DataSet: TDataSet);
var Doc: IHtmlDocument2;
begin
  TBEmailsEMA_DTATUALIZACAO.Value:=DM.ServerDate;
  TBEmailsEMA_HRATUALIZACAO.Value:=DM.ServerTime;
  TBEmailsEMA_DTULTENVIO.Value:=TBEmailsEMA_DTATUALIZACAO.Value;
  TBEmailsEMA_USUARIO.Value:=DM.UsuarioLogin;

  //antes de salvar, atualiza o texto do campo blob com o novo HTML. (se o email for em HTML).
  if FormEmailsEnviar<>nil then
  begin
    if TBEmailsEMA_HTML.Value='S' then
    begin
      try
        Doc:=FormEmailsEnviar.FrameHtmlEditor1.WebBrowser1.Document as IHtmlDocument2;
        TBEmailsEMA_MENSAGEM.Value:=Doc.body.innerHTML;
      except on Exception do
        //nothing...
      end;
    end;
  end;
end;

procedure TDM2.DSEmailsDataChange(Sender: TObject; Field: TField);
begin
  if FormEmailsEnviar<>nil then
  begin
    if TBEmailsEMA_HTML.Value='S' then
    begin
      FormEmailsEnviar.TabSheet2.TabVisible:=True;
      FormEmailsEnviar.PageControl1.ActivePageIndex:=1;
    end else
    FormEmailsEnviar.TabSheet2.TabVisible:=False;

    FormEmailsEnviar.FrameHtmlEditor1.CarregarCodigoHTML(TBEmailsEMA_MENSAGEM.Value);
  end;
end;

procedure TDM2.DSEmailsStateChange(Sender: TObject);
begin
  if TBEmails.State in [dsInsert, dsEdit] then
  begin
    if FormEmailsEnviar<>nil then
    begin
      //...
    end;
  end else
  begin
    if FormEmailsEnviar<>nil then
    begin
      FormMain.DesabilitarControles(FormEmailsEnviar);
      FormMain.SetFields(FormEmailsEnviar,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// EMAILS CONTAS                                                              //
//##############################################################################
{$REGION 'TABELA EMAILSCONTAS'}
procedure TDM2.TBEmailsContasAfterInsert(DataSet: TDataSet);
begin
  TBEmailsContasEMC_CONFIRMACAO.Value:='N';
  TBEmailsContasEMC_DTCADASTRO.Value:=DM.ServerDate;
  TBEmailsContasEMC_HRCADASTRO.Value:=DM.ServerTime;
  TBEmailsContasEMC_SSL.Value:='S';
  TBEmailsContasEMC_STATUS.Value:='A';
  TBEmailsContasEMC_TIMEOUT.Value:=20000;
  TBEmailsContasEMC_TLS.Value:='S';
end;

procedure TDM2.TBEmailsContasBeforeEdit(DataSet: TDataSet);
begin
  if FormEmailsContas<>nil then
  FormMain.SetFields(FormEmailsContas,True);
end;

procedure TDM2.TBEmailsContasBeforeInsert(DataSet: TDataSet);
begin
  if FormEmailsContas<>nil then
  begin
    FormMain.SetFields(FormEmailsContas,True);
    FormEmailsContas.DBEdit4.SetFocus;
  end;
end;

procedure TDM2.TBEmailsContasBeforePost(DataSet: TDataSet);
begin
  TBEmailsContasEMC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBEmailsContasEMC_HRATUALIZACAO.Value:=DM.ServerTime;
  TBEmailsContasEMC_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSEmailsContasStateChange(Sender: TObject);
begin
  if TBEmailsContas.State in [dsInsert, dsEdit] then
  begin
    if FormEmailsContas<>nil then
    begin
      FormEmailsContas.EnviarEmailDeTeste1.Enabled:=False;
      FormEmailsContas.EnviarEmailDeTeste1Button.Enabled:=False;
      FormEmailsContas.Localizar1.Enabled:=False;
      FormEmailsContas.Localizar1Button.Enabled:=False;
      FormEmailsContas.Relatorios2.Enabled:=False;
      FormEmailsContas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormEmailsContas<>nil then
    begin
      FormEmailsContas.EnviarEmailDeTeste1.Enabled:=True;
      FormEmailsContas.EnviarEmailDeTeste1Button.Enabled:=True;
      FormEmailsContas.Localizar1.Enabled:=True;
      FormEmailsContas.Localizar1Button.Enabled:=True;
      FormEmailsContas.Relatorios2.Enabled:=True;
      FormEmailsContas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEmailsContas);
      FormMain.SetFields(FormEmailsContas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// EVOLUCOES.                                                                 //
//##############################################################################
{$REGION 'TABELA EVOLUCOES'}
procedure TDM2.TBEvolucoesAfterEdit(DataSet: TDataSet);
begin
  if TBEvolucoesEVO_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma evolução finalizada.',mtWarning,[mbOk],0);
    TBEvolucoes.Cancel;
  end;
end;

procedure TDM2.TBEvolucoesAfterInsert(DataSet: TDataSet);
begin
  TBEvolucoesEVO_DTCADASTRO.Value:=DM.ServerDate;
  TBEvolucoesEVO_HRCADASTRO.Value:=DM.ServerTime;
  TBEvolucoesEVO_STATUS.Value:='A';
  TBEvolucoesEVO_VENDEDOR.Value:=DM.UsuarioVendedor;
end;

procedure TDM2.TBEvolucoesBeforeEdit(DataSet: TDataSet);
begin
  if FormEvolucoes<>nil then
  FormMain.SetFields(FormEvolucoes,True);
end;

procedure TDM2.TBEvolucoesBeforeInsert(DataSet: TDataSet);
begin
  if FormEvolucoes<>nil then
  begin
    FormMain.SetFields(FormEvolucoes,True);
    FormEvolucoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBEvolucoesBeforePost(DataSet: TDataSet);
begin
  TBEvolucoesEVO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBEvolucoesEVO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBEvolucoesEVO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSEvolucoesStateChange(Sender: TObject);
begin
  if TBEvolucoes.State in [dsInsert, dsEdit] then
  begin
    if FormEvolucoes<>nil then
    begin
      FormEvolucoes.FinalizarEvolucao1.Enabled:=False;
      FormEvolucoes.FinalizarEvolucao1Button.Enabled:=False;
      FormEvolucoes.Localizar1.Enabled:=False;
      FormEvolucoes.Localizar1Button.Enabled:=False;
      FormEvolucoes.Relatorios2.Enabled:=False;
      FormEvolucoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormEvolucoes<>nil then
    begin
      FormEvolucoes.FinalizarEvolucao1.Enabled:=True;
      FormEvolucoes.FinalizarEvolucao1Button.Enabled:=True;
      FormEvolucoes.Localizar1.Enabled:=True;
      FormEvolucoes.Localizar1Button.Enabled:=True;
      FormEvolucoes.Relatorios2.Enabled:=True;
      FormEvolucoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormEvolucoes);
      FormMain.SetFields(FormEvolucoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// EXAMES TIPOS                                                               //
//##############################################################################
{$REGION 'TABELA EXAMESTIPOS'}
procedure TDM2.TBExamesTiposAfterInsert(DataSet: TDataSet);
begin
  TBExamesTiposEXT_DTCADASTRO.Value:=DM.ServerDate;
  TBExamesTiposEXT_HRCADASTRO.Value:=DM.ServerTime;
  TBExamesTiposEXT_STATUS.Value:='A';
end;

procedure TDM2.TBExamesTiposBeforeEdit(DataSet: TDataSet);
begin
  if FormExamesTipos<>nil then
  FormMain.SetFields(FormExamesTipos,True);
end;

procedure TDM2.TBExamesTiposBeforeInsert(DataSet: TDataSet);
begin
  if FormExamesTipos<>nil then
  begin
    FormMain.SetFields(FormExamesTipos,True);
    FormExamesTipos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBExamesTiposBeforePost(DataSet: TDataSet);
begin
  TBExamesTiposEXT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBExamesTiposEXT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBExamesTiposEXT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSExamesTiposStateChange(Sender: TObject);
begin
  if TBExamesTipos.State in [dsInsert, dsEdit] then
  begin
    if FormExamesTipos<>nil then
    begin
      FormExamesTipos.Localizar1.Enabled:=False;
      FormExamesTipos.Localizar1Button.Enabled:=False;
      FormExamesTipos.Relatorios2.Enabled:=False;
      FormExamesTipos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormExamesTipos<>nil then
    begin
      FormExamesTipos.Localizar1.Enabled:=True;
      FormExamesTipos.Localizar1Button.Enabled:=True;
      FormExamesTipos.Relatorios2.Enabled:=True;
      FormExamesTipos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormExamesTipos);
      FormMain.SetFields(FormExamesTipos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// EXERCICIOS DOS ALUNOS.                                                     //
//##############################################################################
{$REGION 'TABELA EXERCICIOS'}
procedure TDM2.AtualizarMediaExercicios;
var
  Qtde: Integer;
  Notas: Extended;
  Media: Extended;
begin
  DM.QYAux.Close; //era QYExercicios.SQL.Clear;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select count(*) as QTDE from EXERCICIOS where EXE_MATRICULA=:matricula');
  DM.QYAux.ParamByName('matricula').AsInteger:=TBMatriculasMAT_CODIGO.Value;
  DM.QYAux.Open;
  Qtde:=DM.QYAux.FieldByName('QTDE').AsInteger;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(EXE_NOTA) as NOTAS from EXERCICIOS where EXE_MATRICULA=:matricula');
  DM.QYAux.ParamByName('matricula').AsInteger:=TBMatriculasMAT_CODIGO.Value;
  DM.QYAux.Open;
  Notas:=DM.QYAux.FieldByName('NOTAS').AsFloat;

  Media:=Decimais(Notas/Qtde,2);
  TBMatriculas.Edit;
  TBMatriculasMAT_MEDIAEXERCICIOS.Value:=Decimais(Media,2);
  if (Media>=DM.TBParametrosPAR_CONCEITOAPLUSINICIAL.Value)  and (Media<=DM.TBParametrosPAR_CONCEITOAPLUSFINAL.Value)  then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='A+' else
  if (Media>=DM.TBParametrosPAR_CONCEITOAINICIAL.Value)      and (Media<=DM.TBParametrosPAR_CONCEITOAFINAL.Value)      then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='A'  else
  if (Media>=DM.TBParametrosPAR_CONCEITOAMINUSINICIAL.Value) and (Media<=DM.TBParametrosPAR_CONCEITOAMINUSFINAL.Value) then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='A-' else
  if (Media>=DM.TBParametrosPAR_CONCEITOBPLUSINICIAL.Value)  and (Media<=DM.TBParametrosPAR_CONCEITOBPLUSFINAL.Value)  then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='B+' else
  if (Media>=DM.TBParametrosPAR_CONCEITOBINICIAL.Value)      and (Media<=DM.TBParametrosPAR_CONCEITOBFINAL.Value)      then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='B'  else
  if (Media>=DM.TBParametrosPAR_CONCEITOBMINUSINICIAL.Value) and (Media<=DM.TBParametrosPAR_CONCEITOBMINUSFINAL.Value) then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='B-' else
  if (Media>=DM.TBParametrosPAR_CONCEITOCPLUSINICIAL.Value)  and (Media<=DM.TBParametrosPAR_CONCEITOCPLUSFINAL.Value)  then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='C+' else
  if (Media>=DM.TBParametrosPAR_CONCEITOCINICIAL.Value)      and (Media<=DM.TBParametrosPAR_CONCEITOCFINAL.Value)      then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='C'  else
  if (Media>=DM.TBParametrosPAR_CONCEITOCMINUSINICIAL.Value) and (Media<=DM.TBParametrosPAR_CONCEITOCMINUSFINAL.Value) then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='C-' else
  if (Media>=DM.TBParametrosPAR_CONCEITODPLUSINICIAL.Value)  and (Media<=DM.TBParametrosPAR_CONCEITODPLUSFINAL.Value)  then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='D+' else
  if (Media>=DM.TBParametrosPAR_CONCEITODINICIAL.Value)      and (Media<=DM.TBParametrosPAR_CONCEITODFINAL.Value)      then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='D'  else
  if (Media>=DM.TBParametrosPAR_CONCEITODMINUSINICIAL.Value) and (Media<=DM.TBParametrosPAR_CONCEITODMINUSFINAL.Value) then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='D-' else
  if (Media>=DM.TBParametrosPAR_CONCEITOEINICIAL.Value)      and (Media<=DM.TBParametrosPAR_CONCEITOEFINAL.Value)      then TBMatriculasMAT_CONCEITOEXERCICIOS.Value:='E';
  TBMatriculas.Post;
end;

procedure TDM2.TBExerciciosAfterDelete(DataSet: TDataSet);
begin
  AtualizarMediaExercicios;
end;

procedure TDM2.TBExerciciosAfterInsert(DataSet: TDataSet);
begin
  TBExerciciosEXE_MATRICULA.Value:=TBMatriculasMAT_CODIGO.Value;
  TBExerciciosEXE_DTCADASTRO.Value:=DM.ServerDate;
  TBExerciciosEXE_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBExerciciosAfterPost(DataSet: TDataSet);
begin
  AtualizarMediaExercicios;
end;

procedure TDM2.TBExerciciosBeforeEdit(DataSet: TDataSet);
begin
  if FormExercicios<>nil then
  FormMain.SetFields(FormExercicios,True);
end;

procedure TDM2.TBExerciciosBeforeInsert(DataSet: TDataSet);
begin
  if FormExercicios<>nil then
  begin
    FormMain.SetFields(FormExercicios,True);
    FormExercicios.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBExerciciosBeforePost(DataSet: TDataSet);
begin
  DM.CodigoMark:=TBExerciciosEXE_CODIGO.Value;
  TBExerciciosEXE_DTATUALIZACAO.Value:=DM.ServerDate;
  TBExerciciosEXE_HRATUALIZACAO.Value:=DM.ServerTime;
  TBExerciciosEXE_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSExerciciosStateChange(Sender: TObject);
begin
  if TBExercicios.State in [dsInsert, dsEdit] then
  begin
    if FormExercicios<>nil then
    begin
      FormExercicios.Localizar1.Enabled:=False;
      FormExercicios.Localizar1Button.Enabled:=False;
      FormExercicios.DBGrid1.Enabled:=False
    end;
  end else
  begin
    if FormExercicios<>nil then
    begin
      FormExercicios.Localizar1.Enabled:=True;
      FormExercicios.Localizar1Button.Enabled:=True;
      FormExercicios.DBGrid1.Enabled:=True;
      FormMain.DesabilitarControles(FormExercicios);
      FormMain.SetFields(FormExercicios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FASES DE PROJETOS.                                                         //
//##############################################################################
{$REGION 'TABELA FASES'}
procedure TDM2.TBFasesAfterInsert(DataSet: TDataSet);
begin
  TBFasesFAS_DTCADASTRO.Value:=DM.ServerDate;
  TBFasesFAS_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBFasesBeforeEdit(DataSet: TDataSet);
begin
  if FormFases<>nil then
  FormMain.SetFields(FormFases,True);
end;

procedure TDM2.TBFasesBeforeInsert(DataSet: TDataSet);
begin
  if FormFases<>nil then
  begin
    FormMain.SetFields(FormFases,True);
    FormFases.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBFasesBeforePost(DataSet: TDataSet);
begin
  TBFasesFAS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBFasesFAS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBFasesFAS_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSFasesStateChange(Sender: TObject);
begin
  if TBFases.State in [dsInsert, dsEdit] then
  begin
    if FormFases<>nil then
    begin
      FormFases.Localizar1.Enabled:=False;
      FormFases.Localizar1Button.Enabled:=False;
      FormFases.Relatorios2.Enabled:=False;
      FormFases.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormFases<>nil then
    begin
      FormFases.Localizar1.Enabled:=True;
      FormFases.Localizar1Button.Enabled:=True;
      FormFases.Relatorios2.Enabled:=True;
      FormFases.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFases);
      FormMain.SetFields(FormFases,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FERIADOS                                                                   //
//##############################################################################
{$REGION 'TABELA FERIADOS'}
procedure TDM2.TBFeriadosAfterInsert(DataSet: TDataSet);
begin
  TBFeriadosFRD_DATA.Value:=DM.ServerDate;
  TBFeriadosFRD_DTCADASTRO.Value:=TBFeriadosFRD_DATA.Value;
  TBFeriadosFRD_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBFeriadosBeforeEdit(DataSet: TDataSet);
begin
  if FormFeriados<>nil then
  FormMain.SetFields(FormFeriados,True);
end;

procedure TDM2.TBFeriadosBeforeInsert(DataSet: TDataSet);
begin
  if FormFeriados<>nil then
  begin
    FormMain.SetFields(FormFeriados,True);
    FormFeriados.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBFeriadosBeforePost(DataSet: TDataSet);
begin
  TBFeriadosFRD_DTATUALIZACAO.Value:=DM.ServerDate;
  TBFeriadosFRD_HRATUALIZACAO.Value:=DM.ServerTime;
  TBFeriadosFRD_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSFeriadosStateChange(Sender: TObject);
begin
  if TBFeriados.State in [dsInsert, dsEdit] then
  begin
    if FormFeriados<>nil then
    begin
      FormFeriados.Localizar1.Enabled:=False;
      FormFeriados.Localizar1Button.Enabled:=False;
      FormFeriados.Relatorios2.Enabled:=False;
      FormFeriados.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormFeriados<>nil then
    begin
      FormFeriados.Localizar1.Enabled:=True;
      FormFeriados.Localizar1Button.Enabled:=True;
      FormFeriados.Relatorios2.Enabled:=True;
      FormFeriados.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFeriados);
      FormMain.SetFields(FormFeriados,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FORMS                                                                      //
//##############################################################################
//nada

//##############################################################################
// FOROS                                                                       //
//##############################################################################
{$REGION 'TABELA FOROS'}
procedure TDM2.TBForosAfterInsert(DataSet: TDataSet);
begin
  TBForosFRS_DTCADASTRO.Value:=DM.ServerDate;
  TBForosFRS_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBForosBeforeEdit(DataSet: TDataSet);
begin
  if FormForos<>nil then
  FormMain.SetFields(FormForos,True);
end;

procedure TDM2.TBForosBeforeInsert(DataSet: TDataSet);
begin
  if FormForos<>nil then
  begin
    FormMain.SetFields(FormForos,True);
    FormForos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBForosBeforePost(DataSet: TDataSet);
begin
  TBForosFRS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBForosFRS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBForosFRS_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSForosStateChange(Sender: TObject);
begin
  if TBForos.State in [dsInsert, dsEdit] then
  begin
    if FormForos<>nil then
    begin
      FormForos.Localizar1.Enabled:=False;
      FormForos.Localizar1Button.Enabled:=False;
      FormForos.Relatorios2.Enabled:=False;
      FormForos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormForos<>nil then
    begin
      FormForos.Localizar1.Enabled:=True;
      FormForos.Localizar1Button.Enabled:=True;
      FormForos.Relatorios2.Enabled:=True;
      FormForos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormForos);
      FormMain.SetFields(FormForos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// FROTAS                                                                     //
//##############################################################################
{$REGION 'TABELA FROTAS'}
procedure TDM2.TBFrotasAfterInsert(DataSet: TDataSet);
begin
  TBFrotasFRO_CAPACIDADEKG.Value:=0;
  TBFrotasFRO_CAPACIDADEM3.Value:=0;
  TBFrotasFRO_DTCADASTRO.Value:=DM.ServerDate;
  TBFrotasFRO_HRCADASTRO.Value:=DM.ServerTime;
  TBFrotasFRO_STATUS.Value:='A';
  TBFrotasFRO_TARA.Value:=0;
  TBFrotasFRO_TIPOCARROCERIA.Value:='00 - NAO APLICAVEL';
  TBFrotasFRO_TIPOPROPRIEDADE.Value:='P - PROPRIO';
  TBFrotasFRO_TIPOPROPRIETARIO.Value:='0 - TAC AGREGADO';
  TBFrotasFRO_TIPORODADO.Value:='00 - NAO APLICAVEL';
  TBFrotasFRO_TIPOVEICULO.Value:='0 - TRACAO';
end;

procedure TDM2.TBFrotasBeforeEdit(DataSet: TDataSet);
begin
  if FormFrotas<>nil then
  FormMain.SetFields(FormFrotas,True);
end;

procedure TDM2.TBFrotasBeforeInsert(DataSet: TDataSet);
begin
  if FormFrotas<>nil then
  begin
    FormMain.SetFields(FormFrotas,True);
    FormFrotas.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBFrotasBeforePost(DataSet: TDataSet);
begin
  TBFrotasFRO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBFrotasFRO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBFrotasFRO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSFrotasStateChange(Sender: TObject);
begin
  if TBFrotas.State in [dsInsert, dsEdit] then
  begin
    if FormFrotas<>nil then
    begin
      FormFrotas.Localizar1.Enabled:=False;
      FormFrotas.Localizar1Button.Enabled:=False;
      FormFrotas.Relatorios2.Enabled:=False;
      FormFrotas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormFrotas<>nil then
    begin
      FormFrotas.Localizar1.Enabled:=True;
      FormFrotas.Localizar1Button.Enabled:=True;
      FormFrotas.Relatorios2.Enabled:=True;
      FormFrotas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormFrotas);
      FormMain.SetFields(FormFrotas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// GNRE                                                                       //
//##############################################################################
{$REGION 'TABELA GNRE'}
procedure TDM2.TBGnreAfterEdit(DataSet: TDataSet);
begin
  if TBGnreGNR_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar uma GNRE já processada.',mtError,[mbOk],0);
    TBGnre.Cancel;
  end;
end;

procedure TDM2.TBGnreAfterInsert(DataSet: TDataSet);
begin
  TBGnreGNR_CONVENIO.Value:=DM.TBParametrosPAR_GNRECONVENIO.Value;
  TBGnreGNR_DESTDOCUMENTOTIPO.Value:='1 - CNPJ';
  TBGnreGNR_DTCADASTRO.Value:=DM.ServerDate;
  TBGnreGNR_DTLIMITE.Value:=DM.ServerDate;
  TBGnreGNR_DTPAGAMENTO.Value:=DM.ServerDate;
  TBGnreGNR_DTVENCIMENTO.Value:=DM.ServerDate;
  TBGnreGNR_EMITCEP.Value:=DM.TBEmpresaEMP_CEP.Value;
  TBGnreGNR_EMITCIDADECODIGO.Value:=StrToInt(Copy(IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),3,5)); //copy as ultimas 5 posicoes. sem codigo da uf.
  TBGnreGNR_EMITDOCUMENTO.Value:=DM.TBEmpresaEMP_CNPJ.Value;
  TBGnreGNR_EMITDOCUMENTOTIPO.Value:='1 - CNPJ';
  TBGnreGNR_EMITENDERECO.Value:=DM.TBEmpresaEMP_ENDERECO.Value;
  TBGnreGNR_EMITESTADO.Value:=DM.TBEmpresaEMP_ESTADO.Value;
  TBGnreGNR_EMITFONE.Value:=DM.TBEmpresaEMP_FONE1.Value;
  TBGnreGNR_EMITRAZAO.Value:=DM.TBEmpresaEMP_NOME.Value;
  TBGnreGNR_HRCADASTRO.Value:=DM.ServerTime;
  TBGnreGNR_RECEITA.Value:=DM.TBParametrosPAR_GNRERECEITA.Value;
  TBGnreGNR_STATUS.Value:='A';
  TBGnreGNR_TIPODOCTOORIGEM.Value:='10 - NOTA FISCAL'; //criar parâmetro?!?
  TBGnreGNR_VALORPRINCIPAL.Value:=0;

  //se tiver alguma NFe selecionada e estiver finalizada, já associa à GNRE.
  if (not DM.TBNfe.IsEmpty) and (DM.TBNfeNFE_STATUS.Value='F') then
  begin
    TBGnreGNR_CHAVEACESSO.Value:=DM.TBNfeNFE_CHAVEACESSO.Value;
    TBGnreGNR_DESTCIDADE.Value:=DM.TBNfeNFE_CIDADE.Value;
    TBGnreGNR_DESTCIDADECODIGO.Value:=DM.TBNfeNFE_CIDADECODIGO.Value;
    TBGnreGNR_DESTNOME.Value:=DM.TBNfeNFE_NOME.Value;
    TBGnreGNR_ESTADOFAVORECIDO.Value:=DM.TBNfeNFE_ESTADO.Value;
    TBGnreGNR_NUMDOCTO.Value:=DM.TBNfeNFE_CODIGO.Value;
    TBGnreGNR_VALORPRINCIPAL.Value:=DM.TBNfeNFE_TOTALICMSST.Value;
    if not DM.TBNfeNFE_CNPJ.IsNull then
    begin
      TBGnreGNR_DESTDOCUMENTO.Value:=DM.TBNfeNFE_CNPJ.Value;
      TBGnreGNR_DESTDOCUMENTOTIPO.Value:='1 - CNPJ';
    end else
    begin
      TBGnreGNR_DESTDOCUMENTOTIPO.Value:='2 - CPF';
      TBGnreGNR_DESTDOCUMENTO.Value:=DM.TBNfeNFE_CPF.Value;
    end;
  end;
end;

procedure TDM2.TBGnreBeforeEdit(DataSet: TDataSet);
begin
  if FormGnre<>nil then
  FormMain.SetFields(FormGnre,True);
end;

procedure TDM2.TBGnreBeforeInsert(DataSet: TDataSet);
begin
  if FormGnre<>nil then
  begin
    FormMain.SetFields(FormGnre,True);
    FormGnre.DBEdit4.SetFocus;
  end;
end;

procedure TDM2.TBGnreBeforePost(DataSet: TDataSet);
begin
  DM.CodigoMark:=TBGnreGNR_CODIGO.Value;
  TBGnreGNR_DTATUALIZACAO.Value:=DM.ServerDate;
  TBGnreGNR_HRATUALIZACAO.Value:=DM.ServerTime;
  TBGnreGNR_USUARIO.Value:=DM.UsuarioLogin;
  TBGnreGNR_VALORTOTAL.Value:=TBGnreGNR_VALORPRINCIPAL.Value+
                              TBGnreGNR_VALORATUALIZACAO.Value+
                              TBGnreGNR_VALORMULTA.Value+
                              TBGnreGNR_VALORJUROS.Value;
end;

procedure TDM2.DSGnreStateChange(Sender: TObject);
begin
  if TBGnre.State in [dsInsert, dsEdit] then
  begin
    if FormGnre<>nil then
    begin
      FormGnre.ConsultarGNRE1.Enabled:=False;
      FormGnre.ConsultarGNRE1Button.Enabled:=False;
      FormGnre.EnviarGNRE1.Enabled:=False;
      FormGnre.EnviarGNRE1Button.Enabled:=False;
      FormGnre.ImprimirGNRE1.Enabled:=False;
      FormGnre.ImprimirGNRE1Button.Enabled:=False;
      FormGnre.Localizar1.Enabled:=False;
      FormGnre.Localizar1Button.Enabled:=False;
    end;
  end else
  begin
    if FormGnre<>nil then
    begin
      FormGnre.ConsultarGNRE1.Enabled:=True;
      FormGnre.ConsultarGNRE1Button.Enabled:=True;
      FormGnre.EnviarGNRE1.Enabled:=True;
      FormGnre.EnviarGNRE1Button.Enabled:=True;
      FormGnre.ImprimirGNRE1.Enabled:=True;
      FormGnre.ImprimirGNRE1Button.Enabled:=True;
      FormGnre.Localizar1.Enabled:=True;
      FormGnre.Localizar1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormGnre);
      FormMain.SetFields(FormGnre,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// IMOVEIS.                                                                   //
//##############################################################################
{$REGION 'TABELA IMOVEIS'}
procedure TDM2.TBImoveisAfterInsert(DataSet: TDataSet);
begin
  TBImoveisIMO_AREALOCALIZACAO.Value:='U';
  TBImoveisIMO_COMISSAO.Value:=0;
  TBImoveisIMO_DIAPAGAMENTO.Value:=1;
  TBImoveisIMO_DESCQTDE.Value:=0;
  TBImoveisIMO_DESCVALOR.Value:=0;
  TBImoveisIMO_DTCADASTRO.Value:=DM.ServerDate;
  TBImoveisIMO_FINALIDADE.Value:='C';
  TBImoveisIMO_HRCADASTRO.Value:=DM.ServerTime;
  TBImoveisIMO_STATUS.Value:='A';
  TBImoveisIMO_TIPONEGOCIO.Value:='A';
  TBImoveisIMO_TIPOPAGAMENTO.Value:='G';
  TBImoveisIMO_VALORALUGUEL.Value:=0;
end;

procedure TDM2.TBImoveisBeforeEdit(DataSet: TDataSet);
begin
  if FormImoveis<>nil then
  FormMain.SetFields(FormImoveis,True);
end;

procedure TDM2.TBImoveisBeforeInsert(DataSet: TDataSet);
begin
  if FormImoveis<>nil then
  begin
    FormMain.SetFields(FormImoveis,True);
    FormImoveis.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBImoveisBeforePost(DataSet: TDataSet);
begin
  TBImoveisIMO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBImoveisIMO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBImoveisIMO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSImoveisStateChange(Sender: TObject);
begin
  if TBImoveis.State in [dsInsert, dsEdit] then
  begin
    if FormImoveis<>nil then
    begin
      FormImoveis.FotosDoImovel1.Enabled:=False;
      FormImoveis.FotosDoImovel1Button.Enabled:=False;
      FormImoveis.Localizar1.Enabled:=False;
      FormImoveis.Localizar1Button.Enabled:=False;
      FormImoveis.Relatorios2.Enabled:=False;
      FormImoveis.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormImoveis<>nil then
    begin
      FormImoveis.FotosDoImovel1.Enabled:=True;
      FormImoveis.FotosDoImovel1Button.Enabled:=True;
      FormImoveis.Localizar1.Enabled:=True;
      FormImoveis.Localizar1Button.Enabled:=True;
      FormImoveis.Relatorios2.Enabled:=True;
      FormImoveis.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormImoveis);
      FormMain.SetFields(FormImoveis,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TIPOS DE IMOVEIS.                                                          //
//##############################################################################
{$REGION 'TABELA IMOVEISTIPOS'}
procedure TDM2.TBImoveisTiposAfterInsert(DataSet: TDataSet);
begin
  TBImoveisTiposIMT_DTCADASTRO.Value:=DM.ServerDate;
  TBImoveisTiposIMT_HRCADASTRO.Value:=DM.ServerTime;
  TBImoveisTiposIMT_STATUS.Value:='A';
end;

procedure TDM2.TBImoveisTiposBeforeEdit(DataSet: TDataSet);
begin
  if FormImoveisTipos<>nil then
  FormMain.SetFields(FormImoveisTipos,True);
end;

procedure TDM2.TBImoveisTiposBeforeInsert(DataSet: TDataSet);
begin
  if FormImoveisTipos<>nil then
  begin
    FormMain.SetFields(FormImoveisTipos,True);
    FormImoveisTipos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBImoveisTiposBeforePost(DataSet: TDataSet);
begin
  TBImoveisTiposIMT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBImoveisTiposIMT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBImoveisTiposIMT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSImoveisTiposStateChange(Sender: TObject);
begin
  if TBImoveisTipos.State in [dsInsert, dsEdit] then
  begin
    if FormImoveisTipos<>nil then
    begin
      FormImoveisTipos.Localizar1.Enabled:=False;
      FormImoveisTipos.Localizar1Button.Enabled:=False;
      FormImoveisTipos.Relatorios2.Enabled:=False;
      FormImoveisTipos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormImoveisTipos<>nil then
    begin
      FormImoveisTipos.Localizar1.Enabled:=True;
      FormImoveisTipos.Localizar1Button.Enabled:=True;
      FormImoveisTipos.Relatorios2.Enabled:=True;
      FormImoveisTipos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormImoveisTipos);
      FormMain.SetFields(FormImoveisTipos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// LOCACOES DE OBJETOS                                                        //
//##############################################################################
{$REGION 'TABELA LOCACOES'}
function TDM2.CalcularValorTotalLocacao(DataPrevisao: TDate; HoraLimite: TTime; ValorUnitario: Currency): Currency;
var Valor: Currency;
  Dias: Extended;
begin
  Valor:=0;
  //se ainda nao venceu a locação.
  if Date<DataPrevisao then
  Valor:=ValorUnitario else
  //se é o dia da devolução.
  if Date=DataPrevisao then
  begin
    if Time<HoraLimite then
    Valor:=ValorUnitario else
    Valor:=ValorUnitario*2; //uma diaria a mais.
  end else
  //se passou do dia da devolução.
  if Date>DataPrevisao then
  begin
    Dias:=Date-DataPrevisao;
    Dias:=Dias+1; //primeira locacao + os dias que passaram.
    if Time>HoraLimite then
    Dias:=Dias+1; //passou do dia e da hora limite.
    Valor:=ValorUnitario*Dias;
  end;
  Result:=Valor;
end;

procedure TDM2.TBLocacoesAfterInsert(DataSet: TDataSet);
begin
  if DM.TBClientes.IsEmpty then
  begin
    MessageDlg('Deve-se selecionar um cliente.',mtError,[mbOk],0);
    TBLocacoes.Cancel;
    Exit;
  end;
  TBLocacoesLOC_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBLocacoesLOC_ABERTOPOR.Value:=DM.UsuarioLogin;
  TBLocacoesLOC_HORA.Value:=TimeToStr(DM.ServerTime);
  TBLocacoesLOC_DATA.Value:=DM.ServerDate;
  TBLocacoesLOC_DTCADASTRO.Value:=DM.ServerDate;
  TBLocacoesLOC_DATAPREVISAO.Value:=Date+DM.TBParametrosPAR_LOCACOESDIAS.Value;
  TBLocacoesLOC_HRCADASTRO.Value:=DM.ServerTime;
  TBLocacoesLOC_STATUS.Value:='A';
  TBLocacoesLOC_PAGO.Value:='N';
  TBLocacoesLOC_VALORPAGO.Value:=0;
  TBLocacoesLOC_VALORTOTAL.Value:=0;
end;

procedure TDM2.TBLocacoesAfterPost(DataSet: TDataSet);
begin
  if TBLocacoesLOC_STATUS.Value='A' then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update OBJETOS set OBJ_LOCADO=''S'', OBJ_LOCACAO=:locacao where OBJ_CODIGO=:objeto');
    DM.QYAux.ParamByName('locacao').AsInteger:=TBLocacoesLOC_CODIGO.Value;
    DM.QYAux.ParamByName('objeto').AsInteger:=TBLocacoesLOC_OBJETO.Value;
    DM.QYAux.ExecSQL;

    TBObjetos.Close;
    TBObjetos.Open;
  end;
end;

procedure TDM2.TBLocacoesBeforeEdit(DataSet: TDataSet);
begin
  if FormLocacoes<>nil then
  FormMain.SetFields(FormLocacoes,True);
end;

procedure TDM2.TBLocacoesBeforeInsert(DataSet: TDataSet);
begin
  if FormLocacoes<>nil then
  begin
    FormMain.SetFields(FormLocacoes,True);
    FormLocacoes.PageControl1.ActivePageIndex:=0;
    FormLocacoes.DBEdit1.SetFocus;
  end;
  //localiza o cliente desejado antes de começar a inserção.
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TDM2.TBLocacoesBeforePost(DataSet: TDataSet);
begin
  TBLocacoesLOC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBLocacoesLOC_HRATUALIZACAO.Value:=DM.ServerTime;
  TBLocacoesLOC_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSLocacoesDataChange(Sender: TObject; Field: TField);
begin
  if FormLocacoes<>nil then
  begin
    if not TBLocacoes.IsEmpty then
    begin
      if TBLocacoesLOC_PAGO.Value='S' then
      FormLocacoes.Label14.Caption:=TBLocacoesLOC_VALORTOTAL.AsString else
      begin
        FormLocacoes.Label14.Caption:=Format('%m',[CalcularValorTotalLocacao(TBLocacoesLOC_DATAPREVISAO.Value,StrToTime(DM.TBParametrosPAR_LOCACOESHORALIMITE.Value),TBLocacoesLOC_VALORLOCACAO.AsExtended)]);
      end;
    end;
  end;
end;

procedure TDM2.DSLocacoesStateChange(Sender: TObject);
begin
  if TBLocacoes.State in [dsInsert, dsEdit] then
  begin
    if FormLocacoes<>nil then
    begin
      FormLocacoes.BaixarLocacao1.Enabled:=False;
      FormLocacoes.BaixarLocacao1Button.Enabled:=False;
      FormLocacoes.Localizar1.Enabled:=False;
      FormLocacoes.Localizar1Button.Enabled:=False;
      FormLocacoes.Relatorios2.Enabled:=False;
      FormLocacoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormLocacoes<>nil then
    begin
      FormLocacoes.BaixarLocacao1.Enabled:=True;
      FormLocacoes.BaixarLocacao1Button.Enabled:=True;
      FormLocacoes.Localizar1.Enabled:=True;
      FormLocacoes.Localizar1Button.Enabled:=True;
      FormLocacoes.Relatorios2.Enabled:=True;
      FormLocacoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormLocacoes);
      FormMain.SetFields(FormLocacoes,False);
    end;
  end;
  //nao permite alterar o campo LOC_PAGO.
  if TBLocacoes.State in [dsEdit, dsBrowse] then
  begin
    if FormLocacoes<>nil then
    FormLocacoes.DBComboBox1.Enabled:=False;
  end;
end;
{$ENDREGION}

//##############################################################################
// LOCAIS DE TRABALHO                                                         //
//##############################################################################
{$REGION 'TABELA LOCAIS'}
procedure TDM2.TBLocaisAfterInsert(DataSet: TDataSet);
begin
  TBLocaisLCA_DTCADASTRO.Value:=DM.ServerDate;
  TBLocaisLCA_HRCADASTRO.Value:=DM.ServerTime;
  TBLocaisLCA_CONVENIADO.Value:='N';
end;

procedure TDM2.TBLocaisBeforeEdit(DataSet: TDataSet);
begin
  if FormLocais<>nil then
  FormMain.SetFields(FormLocais,True);
end;

procedure TDM2.TBLocaisBeforeInsert(DataSet: TDataSet);
begin
  if FormLocais<>nil then
  begin
    FormMain.SetFields(FormLocais,True);
    FormLocais.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBLocaisBeforePost(DataSet: TDataSet);
begin
  TBLocaisLCA_DTATUALIZACAO.Value:=DM.ServerDate;
  TBLocaisLCA_HRATUALIZACAO.Value:=DM.ServerTime;
  TBLocaisLCA_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSLocaisStateChange(Sender: TObject);
begin
  if TBLocais.State in [dsInsert, dsEdit] then
  begin
    if FormLocais<>nil then
    begin
      FormLocais.Localizar1.Enabled:=False;
      FormLocais.Localizar1Button.Enabled:=False;
      FormLocais.Relatorios2.Enabled:=False;
      FormLocais.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormLocais<>nil then
    begin
      FormLocais.Localizar1.Enabled:=True;
      FormLocais.Localizar1Button.Enabled:=True;
      FormLocais.Relatorios2.Enabled:=True;
      FormLocais.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormLocais);
      FormMain.SetFields(FormLocais,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MARCAS                                                                     //
//##############################################################################
{$REGION 'TABELA MARCAS'}
procedure TDM2.TBMarcasAfterInsert(DataSet: TDataSet);
begin
  TBMarcasMAR_DTCADASTRO.Value:=DM.ServerDate;
  TBMarcasMAR_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBMarcasBeforeEdit(DataSet: TDataSet);
begin
  if FormMarcas<>nil then
  FormMain.SetFields(FormMarcas,True);
end;

procedure TDM2.TBMarcasBeforeInsert(DataSet: TDataSet);
begin
  if FormMarcas<>nil then
  begin
    FormMain.SetFields(FormMarcas,True);
    FormMarcas.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBMarcasBeforePost(DataSet: TDataSet);
begin
  TBMarcasMAR_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMarcasMAR_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMarcasMAR_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMarcasStateChange(Sender: TObject);
begin
  if TBMarcas.State in [dsInsert, dsEdit] then
  begin
    if FormMarcas<>nil then
    begin
      FormMarcas.Localizar1.Enabled:=False;
      FormMarcas.Localizar1Button.Enabled:=False;
      FormMarcas.Relatorios2.Enabled:=False;
      FormMarcas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMarcas<>nil then
    begin
      FormMarcas.Localizar1.Enabled:=True;
      FormMarcas.Localizar1Button.Enabled:=True;
      FormMarcas.Relatorios2.Enabled:=True;
      FormMarcas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMarcas);
      FormMain.SetFields(FormMarcas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MARKUPS                                                                    //
//##############################################################################
{$REGION 'TABELA MARKUPS'}
procedure TDM2.CalcularTotaisMarkup(DarPost: Boolean);
begin
  TBMarkups.Edit;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(MKI_PORCENTAGEM) as TOTAL from MARKUPSITENS where MKI_MARKUP=:markup');
  DM.QYAux.ParamByName('markup').AsInteger:=TBMarkupsMKP_CODIGO.Value;
  DM.QYAux.Open;
  TBMarkupsMKP_MARKUP.Value:=1-(DM.QYAux.FieldByName('TOTAL').AsFloat/100);
  DM.QYAux.Close;
  if DarPost then TBMarkups.Post;
end;

procedure TDM2.TBMarkupsAfterInsert(DataSet: TDataSet);
begin
  TBMarkupsMKP_DTCADASTRO.Value:=DM.ServerDate;
  TBMarkupsMKP_HRCADASTRO.Value:=DM.ServerTime;
  TBMarkupsMKP_MARKUP.Value:=1;
end;

procedure TDM2.TBMarkupsBeforeEdit(DataSet: TDataSet);
begin
  if FormMarkups<>nil then
  FormMain.SetFields(FormMarkups,True);
end;

procedure TDM2.TBMarkupsBeforeInsert(DataSet: TDataSet);
begin
  if FormMarkups<>nil then
  begin
    FormMain.SetFields(FormMarkups,True);
    FormMarkups.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBMarkupsBeforePost(DataSet: TDataSet);
begin
  TBMarkupsMKP_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMarkupsMKP_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMarkupsMKP_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMarkupsStateChange(Sender: TObject);
begin
  if TBMarkups.State in [dsInsert, dsEdit] then
  begin
    if FormMarkups<>nil then
    begin
      FormMarkups.AlterarItem1Button.Enabled:=False;
      FormMarkups.AtualizarOMarkupNosProdutos1.Enabled:=False;
      FormMarkups.AtualizarOMarkupNosProdutos1Button.Enabled:=False;
      FormMarkups.EliminarItem1Button.Enabled:=False;
      FormMarkups.IncluirItem1Button.Enabled:=False;
      FormMarkups.Localizar1.Enabled:=False;
      FormMarkups.Localizar1Button.Enabled:=False;
      FormMarkups.Relatorios2.Enabled:=False;
      FormMarkups.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMarkups<>nil then
    begin
      FormMarkups.AlterarItem1Button.Enabled:=True;
      FormMarkups.AtualizarOMarkupNosProdutos1.Enabled:=True;
      FormMarkups.AtualizarOMarkupNosProdutos1Button.Enabled:=True;
      FormMarkups.EliminarItem1Button.Enabled:=True;
      FormMarkups.IncluirItem1Button.Enabled:=True;
      FormMarkups.Localizar1.Enabled:=True;
      FormMarkups.Localizar1Button.Enabled:=True;
      FormMarkups.Relatorios2.Enabled:=True;
      FormMarkups.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMarkups);
      FormMain.SetFields(FormMarkups,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MARKUPS ITENS                                                              //
//##############################################################################
{$REGION 'TABELA MARKUPSITENS'}
procedure TDM2.TBMarkupsItensAfterDelete(DataSet: TDataSet);
begin
  CalcularTotaisMarkup(True);
end;

procedure TDM2.TBMarkupsItensAfterInsert(DataSet: TDataSet);
begin
  TBMarkupsItensMKI_MARKUP.Value:=TBMarkupsMKP_CODIGO.Value;
  TBMarkupsItensMKI_PORCENTAGEM.Value:=0;
end;

procedure TDM2.TBMarkupsItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisMarkup(True);
end;
{$ENDREGION}

//##############################################################################
// MATRICULAS                                                                 //
//##############################################################################
{$REGION 'TABELA MATRICULAS'}
procedure TDM2.TBMatriculasAfterInsert(DataSet: TDataSet);
begin
  TBMatriculasMAT_APROVADO.Value:='I';
  TBMatriculasMAT_CONTABILIZAR.Value:='I';
  TBMatriculasMAT_DTCADASTRO.Value:=DM.ServerDate;
  TBMatriculasMAT_HRCADASTRO.Value:=DM.ServerTime;
  TBMatriculasMAT_STATUS.Value:='A';
  TBMatriculasMAT_TIPO.Value:='A';
  TBMatriculasMAT_TIPOMATRICULA.Value:='M';
end;

procedure TDM2.TBMatriculasAfterPost(DataSet: TDataSet);
begin
  if DM.InserindoNovoRegistroMatriculas then
  begin
    DM.InserindoNovoRegistroMatriculas:=False;
    IncluirAlunoChamada(TBMatriculasMAT_CODIGO.Value,TBMatriculasMAT_CLIENTE.Value,TBMatriculasMAT_TURMA.Value);
  end;
end;

procedure TDM2.TBMatriculasBeforeEdit(DataSet: TDataSet);
begin
  if FormMatriculas<>nil then
  begin
    FormMain.SetFields(FormMatriculas,True);
    FormMatriculas.DBEdit7.SetFocus;
  end;
end;

procedure TDM2.TBMatriculasBeforeInsert(DataSet: TDataSet);
begin
  if FormMatriculas<>nil then
  begin
    FormMain.SetFields(FormMatriculas,True);
    FormMatriculas.DBEdit17.SetFocus;
    FormMatriculas.DBEdit2.Enabled:=True; //campo turma.
  end;
end;

procedure TDM2.TBMatriculasBeforePost(DataSet: TDataSet);
begin
  TBMatriculasMAT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMatriculasMAT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMatriculasMAT_USUARIO.Value:=DM.UsuarioLogin;
  if TBMatriculas.State in [dsInsert] then
  DM.InserindoNovoRegistroMatriculas:=True;

  //verifica codigo do pedido de venda do CURSO digitado.
  if not TBMatriculasMAT_VENDA.IsNull then
  begin
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=TBMatriculasMAT_VENDA.Value;
    DM.TBVendas.Open;
    {$REGION 'clientes diferentes?'}
    //clientes diferentes?
    if DM.TBVendasVED_CLIENTE.Value<>TBMatriculasMAT_CLIENTE.Value then
    begin
      MessageDlg('O código do pedido de venda não corresponde ao cliente selecionado na matrícula.',mtError,[mbOk],0);
      TBMatriculasMAT_VENDA.Clear;
      Exit;
    end;
    {$ENDREGION}
    {$REGION 'venda não finalizada?'}
    //venda nao finalizada?
    if DM.TBVendasVED_STATUS.Value<>'F' then
    begin
      MessageDlg('O pedido de venda selecionado ainda não foi finalizado.',mtError,[mbOk],0);
      TBMatriculasMAT_VENDA.Clear;
      Exit;
    end;
    {$ENDREGION}
    //o pedido de venda tem NF.
    if not DM.TBVendasVED_NOTA.IsNull then
    begin
      DM.TBNotas.Close;
      DM.TBNotas.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NOTA.Value;
      DM.TBNotas.Open;
      if not DM.TBNotas.IsEmpty then
      begin
        {$REGION 'NF nao finalizada?'}
        if DM.TBNotasNOT_STATUS.Value<>'F' then
        begin
          MessageDlg('A nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado ainda não foi finalizada.',mtError,[mbOk],0);
          TBMatriculasMAT_VENDA.Clear;
          Exit;
        end;
        {$ENDREGION}
        {$REGION 'mais de um item na NF? corresponde a familia cursos?}
        //verifica se a nota tem mais de um item e se o item vendido é da familia de cursos.
        DM.TBNotasItens.FetchAll;
        if DM.TBNotasItens.RecordCount>2 then //aumentado para de 1 para 2 em 10/09/2018.
        begin
          MessageDlg('A nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado possui mais de um item vendido.',mtInformation,[mbOk],0);
          TBMatriculasMAT_VENDA.Clear;
          Exit;
        end else
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value;
          DM.TBProdutos.Open;
          if DM.TBProdutosPRO_FAMILIA.Value<>DM.TBParametrosPAR_FAMILIACURSOS.Value then
          begin
            MessageDlg('O item vendido na nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado não corresponde a um curso.',mtInformation,[mbOk],0);
            TBMatriculasMAT_VENDA.Clear;
            Exit;
          end;
        end;
        {$ENDREGION}
      end;
    end else

    //o pedido de venda do CURSO tem NFE.
    if not DM.TBVendasVED_NFE.IsNull then
    begin
      DM.TBNfe.Close;
      DM.TBNfe.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NFE.Value;
      DM.TBNfe.Open;
      if not DM.TBNfe.IsEmpty then
      begin
        {$REGION 'NFE nao finalizada?}
        if DM.TBNfeNFE_STATUS.Value<>'F' then
        begin
          MessageDlg('A nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NFE.Value)+' do pedido de venda selecionado ainda não foi finalizada.',mtError,[mbOk],0);
          TBMatriculasMAT_VENDA.Clear;
          Exit;
        end;
        {$ENDREGION}
        {$REGION 'mais de um item na NFE? corresponde a familia cursos?}
        //verifica se a nota tem mais de um item e se o item vendido é da familia de cursos.
        DM.TBNfeItens.FetchAll;
        if DM.TBNfeItens.RecordCount>2 then //aumentado de 1 para 2 em 10/09/2018.
        begin
          MessageDlg('A nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado possui mais de um item vendido.',mtInformation,[mbOk],0);
          TBMatriculasMAT_VENDA.Clear;
          Exit;
        end else
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
          DM.TBProdutos.Open;
          if DM.TBProdutosPRO_FAMILIA.Value<>DM.TBParametrosPAR_FAMILIACURSOS.Value then
          begin
            MessageDlg('O item vendido na nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado não corresponde a um curso.',mtInformation,[mbOk],0);
            TBMatriculasMAT_VENDA.Clear;
            Exit;
          end;
        end;
        {$ENDREGION}
      end;
    end;
  end;
  //...

  //verifica codigo do pedido de venda do MATERIAL digitado.
  if not TBMatriculasMAT_VENDAMATERIAL.IsNull then
  begin
    //se permitir fazer a matricula sem a venda de material, sai da rotina.
    if DM.TBParametrosPAR_MATRICULASEMMATERIAL.Value='S' then Exit;

    {$REGION 'mesma da matricula?'}
    if TBMatriculasMAT_VENDAMATERIAL.Value=TBMatriculasMAT_VENDA.Value then
    begin
      MessageDlg('A venda do material não pode ser a mesma da matrícula.',mtError,[mbOk],0);
      TBMatriculasMAT_VENDAMATERIAL.Clear;
      Exit;
    end;
    {$ENDREGION}
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=TBMatriculasMAT_VENDAMATERIAL.Value;
    DM.TBVendas.Open;
    {$REGION 'clientes diferentes?'}
    if DM.TBVendasVED_CLIENTE.Value<>TBMatriculasMAT_CLIENTE.Value then
    begin
      MessageDlg('O código do pedido de venda do material não corresponde ao cliente selecionado na matrícula.',mtError,[mbOk],0);
      TBMatriculasMAT_VENDAMATERIAL.Clear;
      Exit;
    end;
    {$ENDREGION}
    {$REGION 'venda não finalizada?'}
    if DM.TBVendasVED_STATUS.Value<>'F' then
    begin
      MessageDlg('O pedido de venda do material selecionado ainda não foi finalizado.',mtError,[mbOk],0);
      TBMatriculasMAT_VENDAMATERIAL.Clear;
      Exit;
    end;
    {$ENDREGION}
    //o pedido de venda de MATERIAL tem NF.
    if not DM.TBVendasVED_NOTA.IsNull then
    begin
      DM.TBNotas.Close;
      DM.TBNotas.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NOTA.Value;
      DM.TBNotas.Open;
      if not DM.TBNotas.IsEmpty then
      begin
        {$REGION 'NF não finalizada?'}
        if DM.TBNotasNOT_STATUS.Value<>'F' then
        begin
          MessageDlg('A nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda do material selecionado ainda não foi finalizada.',mtError,[mbOk],0);
          TBMatriculasMAT_VENDAMATERIAL.Clear;
          Exit;
        end;
        {$ENDREGION}
        {$REGION 'mais de um item na NF? corresponde a famila materiais?'}
        //verifica se a nota tem mais de um item e se o item vendido é da familia de materiais.
        DM.TBNotasItens.FetchAll;
        if DM.TBNotasItens.RecordCount>1 then
        begin
          MessageDlg('A nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado possui mais de um item vendido.',mtInformation,[mbOk],0);
          TBMatriculasMAT_VENDAMATERIAL.Clear;
          Exit;
        end else
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value;
          DM.TBProdutos.Open;
          if DM.TBProdutosPRO_FAMILIA.Value<>DM.TBParametrosPAR_FAMILIAMATERIAIS.Value then
          begin
            MessageDlg('O item vendido na nota fiscal '+IntToStr(DM.TBVendasVED_NOTA.Value)+' do pedido de venda selecionado não corresponde a um curso.',mtInformation,[mbOk],0);
            TBMatriculasMAT_VENDAMATERIAL.Clear;
            Exit;
          end;
        end;
        {$ENDREGION}
      end;
    end else

    //o pedido de venda do MATERIAL tem NFE.
    if not DM.TBVendasVED_NFE.IsNull then
    begin
      DM.TBNfe.Close;
      DM.TBNfe.ParamByName('codigo').AsInteger:=DM.TBVendasVED_NFE.Value;
      DM.TBNfe.Open;
      if not DM.TBNfe.IsEmpty then
      begin
        {$REGION 'NFE nao finalizada'}
        if DM.TBNfeNFE_STATUS.Value<>'F' then
        begin
          MessageDlg('A nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NFE.Value)+' do pedido de venda do material selecionado ainda não foi finalizada.',mtError,[mbOk],0);
          TBMatriculasMAT_VENDAMATERIAL.Clear;
          Exit;
        end;
        {$ENDREGION}
        {$REGION 'mais de um item na NFE? corresponde a familia materiais'}
        //verifica se a nota tem mais de um item e se o item vendido é da familia de cursos.
        DM.TBNfeItens.FetchAll;
        if DM.TBNfeItens.RecordCount>1 then
        begin
          MessageDlg('A nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NFE.Value)+' do pedido de venda selecionado possui mais de um item vendido.',mtInformation,[mbOk],0);
          TBMatriculasMAT_VENDAMATERIAL.Clear;
          Exit;
        end else
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
          DM.TBProdutos.Open;
          if DM.TBProdutosPRO_FAMILIA.Value<>DM.TBParametrosPAR_FAMILIAMATERIAIS.Value then
          begin
            MessageDlg('O item vendido na nota fiscal eletrônica '+IntToStr(DM.TBVendasVED_NFE.Value)+' do pedido de venda selecionado não corresponde a um material didático.',mtInformation,[mbOk],0);
            TBMatriculasMAT_VENDAMATERIAL.Clear;
            Exit;
          end;
        end;
        {$ENDREGION}
      end;
    end;
  end;

end;

procedure TDM2.DSMatriculasStateChange(Sender: TObject);
begin
  if TBMatriculas.State in [dsInsert, dsEdit] then
  begin
    if FormMatriculas<>nil then
    begin
      FormMatriculas.AlunosAniversariantes1.Enabled:=False;
      FormMatriculas.AlunosComMaisDeUmaMatriculaAtiva1.Enabled:=False;
      FormMatriculas.BaixarMatricula1.Enabled:=False;
      FormMatriculas.BaixarMatricula1Button.Enabled:=False;
      FormMatriculas.CadastroDeNotasDeAvaliacoes1.Enabled:=False;
      FormMatriculas.CadastroDeNotasDeAvaliacoes1Button.Enabled:=False;
      FormMatriculas.CadastroDeNotasDeExercicios1.Enabled:=False;
      FormMatriculas.CadastroDeNotasDeExercicios1Button.Enabled:=False;
      FormMatriculas.CadastroDeTiposDeAvaliacoes1.Enabled:=False;
      FormMatriculas.CadastroDeTiposDeAvaliacoes1Button.Enabled:=False;
      FormMatriculas.CancelarMatricula1.Enabled:=False;
      FormMatriculas.CancelarMatricula1Button.Enabled:=False;
      FormMatriculas.Contrato1.Enabled:=False;
      FormMatriculas.EfetuarDesistencia1.Enabled:=False;
      FormMatriculas.EfetuarDesistencia1Button.Enabled:=False;
      FormMatriculas.EmailsDosAlunos1.Enabled:=False;
      FormMatriculas.HistoricoDoAluno1.Enabled:=False;
      FormMatriculas.Localizar1.Enabled:=False;
      FormMatriculas.Localizar1Button.Enabled:=False;
      FormMatriculas.MarcarComoPreMatricula1.Enabled:=False;
      FormMatriculas.MarcarComoPreMatricula1Button.Enabled:=False;
      FormMatriculas.MatriculasComContasAReceberAnaliticoSoVenda1.Enabled:=False;
      FormMatriculas.MatriculasComContasAReceberAnaliticoSoVendaMaterial1.Enabled:=False;
      FormMatriculas.MatriculasComTerminoNoPeriodo1.Enabled:=False;
      FormMatriculas.MatriculasComVendaDeMaterialNaoEntregue1.Enabled:=False;
      FormMatriculas.MatriculasComVendaDeMaterialNaoEntregueComVisto1.Enabled:=False;
      FormMatriculas.MatriculasComVendaNaoEntregue1.Enabled:=False;
      FormMatriculas.MatriculasDuplicadas1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorCondicaoDePagamento1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorConvenio1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorConvenio2.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorProfessor1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorMailing1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorMotivoDesistencia1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorLocalDeTrabalho1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorLocalOndeEstuda1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorTurma1.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorTurma2.Enabled:=False;
      FormMatriculas.MatriculasNoPeriodoPorVendedor1.Enabled:=False;
      FormMatriculas.MatriculasSemVendaDeMaterial1.Enabled:=False;
      FormMatriculas.PercentualDeDesconto1.Enabled:=False;
      FormMatriculas.ReabrirMatricula1.Enabled:=False;
      FormMatriculas.ReabrirMatricula1Button.Enabled:=False;
      FormMatriculas.Relatorios2.Enabled:=False;
      FormMatriculas.Relatorios2Button.Enabled:=False;
      FormMatriculas.TransferirAlunoParaOutraTurma1.Enabled:=False;
      FormMatriculas.TransferirAlunoParaOutraTurma1Button.Enabled:=False;
    end;
  end else
  begin
    if FormMatriculas<>nil then
    begin
      FormMatriculas.AlunosAniversariantes1.Enabled:=True;
      FormMatriculas.AlunosComMaisDeUmaMatriculaAtiva1.Enabled:=True;
      FormMatriculas.BaixarMatricula1.Enabled:=True;
      FormMatriculas.BaixarMatricula1Button.Enabled:=True;
      FormMatriculas.CadastroDeNotasDeAvaliacoes1.Enabled:=True;
      FormMatriculas.CadastroDeNotasDeAvaliacoes1Button.Enabled:=True;
      FormMatriculas.CadastroDeNotasDeExercicios1.Enabled:=True;
      FormMatriculas.CadastroDeNotasDeExercicios1Button.Enabled:=True;
      FormMatriculas.CadastroDeTiposDeAvaliacoes1.Enabled:=True;
      FormMatriculas.CadastroDeTiposDeAvaliacoes1Button.Enabled:=True;
      FormMatriculas.CancelarMatricula1.Enabled:=True;
      FormMatriculas.CancelarMatricula1Button.Enabled:=True;
      FormMatriculas.Contrato1.Enabled:=True;
      FormMatriculas.EfetuarDesistencia1.Enabled:=True;
      FormMatriculas.EfetuarDesistencia1Button.Enabled:=True;
      FormMatriculas.EmailsDosAlunos1.Enabled:=True;
      FormMatriculas.HistoricoDoAluno1.Enabled:=True;
      FormMatriculas.Localizar1.Enabled:=True;
      FormMatriculas.Localizar1Button.Enabled:=True;
      FormMatriculas.MarcarComoPreMatricula1.Enabled:=True;
      FormMatriculas.MarcarComoPreMatricula1Button.Enabled:=True;
      FormMatriculas.MatriculasComContasAReceberAnaliticoSoVenda1.Enabled:=True;
      FormMatriculas.MatriculasComContasAReceberAnaliticoSoVendaMaterial1.Enabled:=True;
      FormMatriculas.MatriculasComTerminoNoPeriodo1.Enabled:=True;
      FormMatriculas.MatriculasComVendaDeMaterialNaoEntregue1.Enabled:=True;
      FormMatriculas.MatriculasComVendaDeMaterialNaoEntregueComVisto1.Enabled:=True;
      FormMatriculas.MatriculasComVendaNaoEntregue1.Enabled:=True;
      FormMatriculas.MatriculasDuplicadas1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorCondicaoDePagamento1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorConvenio1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorConvenio2.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorProfessor1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorMailing1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorMotivoDesistencia1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorLocalDeTrabalho1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorLocalOndeEstuda1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorTurma1.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorTurma2.Enabled:=True;
      FormMatriculas.MatriculasNoPeriodoPorVendedor1.Enabled:=True;
      FormMatriculas.MatriculasSemVendaDeMaterial1.Enabled:=True;
      FormMatriculas.PercentualDeDesconto1.Enabled:=True;
      FormMatriculas.ReabrirMatricula1.Enabled:=True;
      FormMatriculas.ReabrirMatricula1Button.Enabled:=True;
      FormMatriculas.Relatorios2.Enabled:=True;
      FormMatriculas.Relatorios2Button.Enabled:=True;
      FormMatriculas.TransferirAlunoParaOutraTurma1.Enabled:=True;
      FormMatriculas.TransferirAlunoParaOutraTurma1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMatriculas);
      FormMain.SetFields(FormMatriculas,False);
    end;
  end;
  //nao permite alterar a turma de uma matrícula.
  if TBMatriculas.State in [dsEdit, dsBrowse] then
    if FormMatriculas<>nil then
    begin
      FormMatriculas.DBEdit2.Enabled:=False;
      FormMatriculas.SpeedButton7.Enabled:=False;
    end;
end;
{$ENDREGION}

//##############################################################################
// MDFE                                                                       //
//##############################################################################
{$REGION 'TABELA MDFE'}
procedure TDM2.CalcularTotaisMDFe(DarPost: Boolean);
begin
  TBMdfe.Edit;
  //atualiza o total de CTE, NFE e MDFE tabela Mdfe.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select '+
                   '  sum( '+
                   '    case MFD_TIPODOC '+
                   '      when ''CTE'' then 1 '+
                   '      when ''NFE'' then 0 '+
                   '      when ''MDFE'' then 0 '+
                   '    end '+
                   '  ) as CTE, '+
                   '  sum( '+
                   '    case MFD_TIPODOC '+
                   '      when ''CTE'' then 0 '+
                   '      when ''NFE'' then 1 '+
                   '      when ''MDFE'' then 0 '+
                   '    end '+
                   '  ) as NFE, '+
                   '  sum( '+
                   '    case MFD_TIPODOC '+
                   '      when ''CTE'' then 0 '+
                   '      when ''NFE'' then 0 '+
                   '      when ''MDFE'' then 1 '+
                   '    end '+
                   '  ) as MDFE '+
                   'from MDFEDOCS where MFD_MDFE=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=TBMdfeMDF_CODIGO.Value;
  DM.QYAux.Open;
  TBMdfeMDF_QTDECTE.Value:=DM.QYAux.FieldByName('CTE').AsInteger;
  TBMdfeMDF_QTDENFE.Value:=DM.QYAux.FieldByName('NFE').AsInteger;
  TBMdfeMDF_QTDEMDFE.Value:=DM.QYAux.FieldByName('MDFE').AsInteger;
  DM.QYAux.Close;

  if DarPost then
  TBMdfe.Post;
end;

procedure TDM2.TBMdfeAfterEdit(DataSet: TDataSet);
begin
  if TBMdfeMDF_STATUS.Value='F' then
  begin
    MessageDlg('Não é possível alterar um manifesto já finalizado.',mtWarning,[mbOk],0);
    TBMdfe.Cancel;
  end;
  if TBMdfeMDF_STATUS.Value='C' then
  begin
    MessageDlg('Não é possível alterar um conhecimento cancelado.',mtWarning,[mbOk],0);
    TBMdfe.Cancel;
  end;
  if TBMdfeMDF_STATUS.Value='V' then
  begin
    MessageDlg('Não é possível alterar um conhecimento em vigência.',mtWarning,[mbOk],0);
    TBMdfe.Cancel;
  end;
  if (TBMdfeMDF_STATUS.Value='A') and (TBMdfeMDF_PROTOCOLO.Value<>'') then
  begin
    MessageDlg('Este MDF-e já foi autorizado para uso. Proceda com a finalização.',mtWarning,[mbOk],0);
    TBMdfe.Cancel;
  end;
end;

procedure TDM2.TBMdfeAfterInsert(DataSet: TDataSet);
begin
  if CteUtilRegistrada=False then
  begin
    MessageDlg('Um erro ocorreu ao tentar utilizar a DLL MDFE_UTIL.'+#13#10+#13#10+
               'Verifique o registro da DLL no menu Ferramentas -> Registrar Classes DLL, na tela do MDFe.'+#13#10+#13#10+
               'Para obter mais ajuda sobre a DLL acesse o menu Ferramentas -> Saiba mais sobre a DLL MDFe_Util, na tela do MDFe.',mtError,[mbOk],0);
    TBMdfe.Cancel;
    Exit;
  end;
  TBMdfeMDF_DTCADASTRO.Value:=DM.ServerDate;
  TBMdfeMDF_DTEMISSAO.Value:=DM.ServerDate;
  TBMdfeMDF_ESTADOFIM.Value:=DM.TBEmpresaEMP_ESTADO.Value;
  TBMdfeMDF_ESTADOINI.Value:=DM.TBEmpresaEMP_ESTADO.Value;
  TBMdfeMDF_HRCADASTRO.Value:=DM.ServerTime;
  TBMdfeMDF_HREMISSAO.Value:=DM.ServerTime;
  TBMdfeMDF_MODAL.Value:='1 - RODOVIARIO';
  TBMdfeMDF_MODELO.Value:=DM.TBParametrosPAR_MDFEMODELO.Value;
  TBMdfeMDF_PESOBRUTO.Value:=0;
  TBMdfeMDF_QTDECTE.Value:=0;
  TBMdfeMDF_QTDEMDFE.Value:=0;
  TBMdfeMDF_QTDENFE.Value:=0;
  TBMdfeMDF_RNTRC.Value:=DM.TBParametrosPAR_RNTRC.Value;
  TBMdfeMDF_SEGURO.Value:='1 - EMITENTE';
  TBMdfeMDF_SERIE.Value:=DM.TBParametrosPAR_MDFESERIE.Value;
  TBMdfeMDF_STATUS.Value:='A'; //E=Execução (autorizado) - C=Cancelado - F=Finalizado.
  TBMdfeMDF_TIPOCARGA.Value:='05 - CARGA GERAL';
  TBMdfeMDF_TIPOEMISSAO.Value:='1 - NORMAL';
  TBMdfeMDF_TIPOEMITENTE.Value:='1 - PRESTADOR DE SERVICO DE TRANSPORTE';
  TBMdfeMDF_TIPOMEDIDA.Value:='01 - KG';
  TBMdfeMDF_TIPOTRANSPORTADOR.Value:='1 - ETC';
  TBMdfeMDF_VALORCARGA.Value:=0;
end;

procedure TDM2.TBMdfeAfterPost(DataSet: TDataSet);
var U: MDFe_Util_Interface;
  MsgResultado, cDF, cDV, ChaveMDFe: Widestring;
  Emissao: String[10];
  I: Integer;
begin
  //se salvou um CTE novo, entao gera o novo NSU.
  if DM.InserindoNovoRegistroMDFe then
  begin
    DM.InserindoNovoRegistroMDFe:=False;
    //associa a CHAVE DE ACESSO ao conhecimento atual.
    TBMdfe.Edit;
    Emissao:=FormatDateTime('DD/MM/YY',TBMdfeMDF_DTEMISSAO.Value);
    U:=CoUtil.Create;
    I:=U.CriaChaveDFe(IntToStr(DM.TBEmpresaEMP_ESTADOCODIGO.Value),
                      Copy(Emissao,7,2), //ano.
                      Copy(Emissao,4,2), //mes.
                      LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
                      IntToStr(TBMdfeMDF_MODELO.Value),
                      IntToStr(TBMdfeMDF_SERIE.Value),
                      IntToStr(TBMdfeMDF_CODIGO.Value),
                      Copy(TBMdfeMDF_TIPOEMISSAO.Value,1,1),
                      IntToStr(CodigoSegurancaMDFE),
                      msgResultado,
                      cDF,
                      cDV,
                      ChaveMDFe);
    if I<>5601 then
    begin
      MessageDlg('Erro na criação da chave de acesso da MDFe. Verifique os parâmetros.'+#13#13+'A chave de acesso é composta por: '+#13+
                 'Codigo do estado do emitente'+#13+
                 'Ano'+#13+
                 'Mes'+#13+
                 'CNPJ do emitente'+#13+
                 'Modelo'+#13+
                 'Série'+#13+
                 'Código MDFe'+#13+
                 'Tipo emissão'+#13+
                 'Código numérico'+#13+
                 'Código Segurança'+#13#13+MsgResultado,mtError,[mbOk],0);
    end else
    begin
      TBMdfeMDF_CHAVEACESSO.Value:=ChaveMDFe;
      TBMdfeMDF_CODIGONUMERICO.Value:=StrToInt(cDF);
    end;
    U:=nil;
    TBMdfe.Post;
    //...
  end;
end;

procedure TDM2.TBMdfeBeforeEdit(DataSet: TDataSet);
begin
  if FormMdfe<>nil then
  FormMain.SetFields(FormMdfe,True);
end;

procedure TDM2.TBMdfeBeforeInsert(DataSet: TDataSet);
begin
  if FormMdfe<>nil then
  begin
    FormMain.SetFields(FormMdfe,True);
    FormMdfe.PageControl1.ActivePageIndex:=0;
    FormMdfe.DBEdit22.SetFocus;
  end;
end;

procedure TDM2.TBMdfeBeforePost(DataSet: TDataSet);
begin
  TBMdfeMDF_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMdfeMDF_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMdfeMDF_USUARIO.Value:=DM.UsuarioLogin;
  //seta variavel pra gerar a chave de acesso.
  if TBMdfe.State in [dsInsert] then
  begin
    DM.InserindoNovoRegistroMdfe:=True;
  end;
  CalcularTotaisMDFe(False);
end;

procedure TDM2.DSMdfeStateChange(Sender: TObject);
begin
  if TBMdfe.State in [dsInsert, dsEdit] then
  begin
    if FormMdfe<>nil then
    begin
      FormMdfe.ArquivosXMLDoMDFe1.Enabled:=False;
      FormMdfe.ArquivosXMLDoMDFe1Button.Enabled:=False;
      FormMdfe.BitBtn1.Enabled:=False;
      FormMdfe.BitBtn2.Enabled:=False;
      FormMdfe.BitBtn4.Enabled:=False;
      FormMdfe.BuscarMDFe1.Enabled:=False;
      FormMdfe.BuscarMDFe1Button.Enabled:=False;
      FormMdfe.CancelarMDFe1.Enabled:=False;
      FormMdfe.CancelarMDFe1Button.Enabled:=False;
      FormMdfe.DAMDFE1.Enabled:=False;
      FormMdfe.DAMDFE1Button.Enabled:=False;
      FormMdfe.EnviarMDFe1.Enabled:=False;
      FormMdfe.EnviarMDFe1Button.Enabled:=False;
      FormMdfe.EnviarMDFePorEmail1.Enabled:=False;
      FormMdfe.EnviarMDFePorEmail1Button.Enabled:=False;
      FormMdfe.FinalizarMDFe1.Enabled:=False;
      FormMdfe.FinalizarMDFe1Button.Enabled:=False;
      FormMdfe.GerarArquivoMDFe1.Enabled:=False;
      FormMdfe.GerarArquivoMDFe1Button.Enabled:=False;
      FormMdfe.Localizar1.Enabled:=False;
      FormMdfe.Localizar1Button.Enabled:=False;
      FormMdfe.MDFeEmitidosNoPeriodo1.Enabled:=False;
      FormMdfe.PngBitBtn1.Enabled:=False;
      FormMdfe.PngBitBtn2.Enabled:=False;
      FormMdfe.PngBitBtn3.Enabled:=False;
      FormMdfe.PngBitBtn4.Enabled:=False;
      FormMdfe.PngBitBtn7.Enabled:=False;
      FormMdfe.PngBitBtn8.Enabled:=False;
      FormMdfe.PngBitBtn9.Enabled:=False;
      FormMdfe.PngBitBtn10.Enabled:=False;
      FormMdfe.Relatorios2.Enabled:=False;
      FormMdfe.Relatorios2Button.Enabled:=False;
      FormMdfe.SalvarPDFDAMDFEComo1.Enabled:=False;
      FormMdfe.SalvarZIPXMLsComo1.Enabled:=False;
      FormMdfe.RecriarChaveDeAcesso1.Enabled:=False;
      FormMdfe.ValidarArquivoMDFe1.Enabled:=False;
      FormMdfe.ValidarArquivoMDFe1Button.Enabled:=False;
    end;
  end else
  begin
    if FormMdfe<>nil then
    begin
      FormMdfe.ArquivosXMLDoMDFe1.Enabled:=True;
      FormMdfe.ArquivosXMLDoMDFe1Button.Enabled:=True;
      FormMdfe.BitBtn1.Enabled:=True;
      FormMdfe.BitBtn2.Enabled:=True;
      FormMdfe.BitBtn4.Enabled:=True;
      FormMdfe.BuscarMDFe1.Enabled:=True;
      FormMdfe.BuscarMDFe1Button.Enabled:=True;
      FormMdfe.CancelarMDFe1.Enabled:=True;
      FormMdfe.CancelarMDFe1Button.Enabled:=True;
      FormMdfe.DAMDFE1.Enabled:=True;
      FormMdfe.DAMDFE1Button.Enabled:=True;
      FormMdfe.EnviarMDFe1.Enabled:=True;
      FormMdfe.EnviarMDFe1Button.Enabled:=True;
      FormMdfe.EnviarMDFePorEmail1.Enabled:=True;
      FormMdfe.EnviarMDFePorEmail1Button.Enabled:=True;
      FormMdfe.FinalizarMDFe1.Enabled:=True;
      FormMdfe.FinalizarMDFe1Button.Enabled:=True;
      FormMdfe.GerarArquivoMDFe1.Enabled:=True;
      FormMdfe.GerarArquivoMDFe1Button.Enabled:=True;
      FormMdfe.Localizar1.Enabled:=True;
      FormMdfe.Localizar1Button.Enabled:=True;
      FormMdfe.MDFeEmitidosNoPeriodo1.Enabled:=True;
      FormMdfe.PngBitBtn1.Enabled:=True;
      FormMdfe.PngBitBtn2.Enabled:=True;
      FormMdfe.PngBitBtn3.Enabled:=True;
      FormMdfe.PngBitBtn4.Enabled:=True;
      FormMdfe.PngBitBtn7.Enabled:=True;
      FormMdfe.PngBitBtn8.Enabled:=True;
      FormMdfe.PngBitBtn9.Enabled:=True;
      FormMdfe.PngBitBtn10.Enabled:=True;
      FormMdfe.Relatorios2.Enabled:=True;
      FormMdfe.Relatorios2Button.Enabled:=True;
      FormMdfe.SalvarPDFDAMDFEComo1.Enabled:=True;
      FormMdfe.SalvarZIPXMLsComo1.Enabled:=True;
      FormMdfe.RecriarChaveDeAcesso1.Enabled:=True;
      FormMdfe.ValidarArquivoMDFe1.Enabled:=True;
      FormMdfe.ValidarArquivoMDFe1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMdfe);
      FormMain.SetFields(FormMdfe,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MDFE CARREGA                                                               //
//##############################################################################
{$REGION 'TABELA MDFECARREGA'}
procedure TDM2.TBMdfeCarregaAfterInsert(DataSet: TDataSet);
begin
  TBMdfeCarregaMDC_MDFE.Value:=TBMdfeMDF_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// MDFE DESCARREGA                                                            //
//##############################################################################
{$REGION 'TABELA MDFEDESCARREGA'}
procedure TDM2.TBMdfeDescarregaAfterDelete(DataSet: TDataSet);
begin
  CalcularTotaisMDFe(True);
end;

procedure TDM2.TBMdfeDescarregaAfterInsert(DataSet: TDataSet);
begin
  TBMdfeDescarregaMDD_MDFE.Value:=TBMdfeMDF_CODIGO.Value;
end;

procedure TDM2.TBMdfeDescarregaAfterPost(DataSet: TDataSet);
begin
  TBMdfeDocs.Close;
  TBMdfeDocs.Open;
end;

{$ENDREGION}

//##############################################################################
// MDFE DOCS                                                                  //
//##############################################################################
{$REGION 'TABELA MDFEDOCS'}
procedure TDM2.TBMdfeDocsAfterDelete(DataSet: TDataSet);
begin
  CalcularTotaisMDFe(True);
end;

procedure TDM2.TBMdfeDocsAfterInsert(DataSet: TDataSet);
begin
  TBMdfeDocsMFD_MDFE.Value:=TBMdfeMDF_CODIGO.Value;
  TBMdfeDocsMFD_MDFEDESCARREGA.Value:=TBMdfeDescarregaMDD_CODIGO.Value;
  TBMdfeDocsMFD_TIPODOC.Value:='CTE';
  TBMdfeDocsMDD_CIDADE.Value:=TBMdfeDescarregaMDD_CIDADE.Value;
end;

procedure TDM2.TBMdfeDocsAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisMDFe(True);
end;
{$ENDREGION}

//##############################################################################
// MDFE MOTORISTAS                                                            //
//##############################################################################
{$REGION 'TABELA MDFEMOTORISTAS'}
procedure TDM2.TBMdfeMotoristasAfterInsert(DataSet: TDataSet);
begin
  TBMdfeMotoristasMDM_MDFE.Value:=TBMdfeMDF_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// MDFE PERCURSOS                                                             //
//##############################################################################
{$REGION 'TABELA MDFEPERCURSOS'}
procedure TDM2.TBMdfePercursosAfterInsert(DataSet: TDataSet);
begin
  TBMdfePercursosMDP_MDFE.Value:=TBMdfeMDF_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// MEDICAMENTOS                                                               //
//##############################################################################
{$REGION 'TABELA MEDICAMENTOS'}
procedure TDM2.TBMedicamentosAfterInsert(DataSet: TDataSet);
begin
  TBMedicamentosMTO_DTCADASTRO.Value:=DM.ServerDate;
  TBMedicamentosMTO_HRCADASTRO.Value:=DM.ServerTime;
  TBMedicamentosMTO_STATUS.Value:='A';
end;

procedure TDM2.TBMedicamentosBeforeEdit(DataSet: TDataSet);
begin
  if FormMedicamentos<>nil then
  FormMain.SetFields(FormMedicamentos,True);
end;

procedure TDM2.TBMedicamentosBeforeInsert(DataSet: TDataSet);
begin
  if FormMedicamentos<>nil then
  begin
    FormMain.SetFields(FormMedicamentos,True);
    FormMedicamentos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBMedicamentosBeforePost(DataSet: TDataSet);
begin
  TBMedicamentosMTO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMedicamentosMTO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMedicamentosMTO_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMedicamentosStateChange(Sender: TObject);
begin
  if TBMedicamentos.State in [dsInsert, dsEdit] then
  begin
    if FormMedicamentos<>nil then
    begin
      FormMedicamentos.Localizar1.Enabled:=False;
      FormMedicamentos.Localizar1Button.Enabled:=False;
      FormMedicamentos.Relatorios2.Enabled:=False;
      FormMedicamentos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMedicamentos<>nil then
    begin
      FormMedicamentos.Localizar1.Enabled:=True;
      FormMedicamentos.Localizar1Button.Enabled:=True;
      FormMedicamentos.Relatorios2.Enabled:=True;
      FormMedicamentos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMedicamentos);
      FormMain.SetFields(FormMedicamentos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MEDICOES                                                                   //
//##############################################################################
{$REGION 'TABELA MEDICOES'}
procedure TDM2.TBMedicoesAfterInsert(DataSet: TDataSet);
var H,M,S,SS: Word;
begin
  TBMedicoesMED_DTCADASTRO.Value:=DM.ServerDate;
  TBMedicoesMED_HRCADASTRO.Value:=DM.ServerTime;
  DecodeTime(Time,H,M,S,SS);
  if (H >= 06) and (H <= 12) then TBMedicoesMED_PERIODO.Value:='MANHA';
  if (H >= 13) and (H <= 18) then TBMedicoesMED_PERIODO.Value:='TARDE';
  if (H >= 19) and (H <= 05) then TBMedicoesMED_PERIODO.Value:='NOITE';
end;

procedure TDM2.TBMedicoesBeforeEdit(DataSet: TDataSet);
begin
  if FormMedicoes<>nil then
  FormMain.SetFields(FormMedicoes,True);
end;

procedure TDM2.TBMedicoesBeforeInsert(DataSet: TDataSet);
begin
  if FormMedicoes<>nil then
  begin
    FormMain.SetFields(FormMedicoes,True);
    FormMedicoes.DBEdit31.SetFocus;
  end;
end;

procedure TDM2.TBMedicoesBeforePost(DataSet: TDataSet);
begin
  TBMedicoesMED_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMedicoesMED_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMedicoesMED_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMedicoesStateChange(Sender: TObject);
begin
  if TBMedicoes.State in [dsInsert, dsEdit] then
  begin
    if FormMedicoes<>nil then
    begin
      FormMedicoes.Localizar1.Enabled:=False;
      FormMedicoes.Localizar1Button.Enabled:=False;
      FormMedicoes.Relatorios2.Enabled:=False;
      FormMedicoes.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMedicoes<>nil then
    begin
      FormMedicoes.Localizar1.Enabled:=True;
      FormMedicoes.Localizar1Button.Enabled:=True;
      FormMedicoes.Relatorios2.Enabled:=True;
      FormMedicoes.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMedicoes);
      FormMain.SetFields(FormMedicoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MENSAGENS                                                                  //
//##############################################################################
{$REGION 'TABELA MENSAGENS'}
procedure TDM2.TBMensagensAfterInsert(DataSet: TDataSet);
begin
  TBMensagensMEN_DATA.Value:=DM.ServerDate;
  TBMensagensMEN_HORA.Value:=DM.ServerTime;
  TBMensagensMEN_LIDA.Value:='N';
end;
{$ENDREGION}

//##############################################################################
// MENSALIDADES                                                               //
//##############################################################################
{$REGION 'TABELA MENSALIDADES'}
procedure TDM2.TBMensalidadesAfterInsert(DataSet: TDataSet);
begin
  TBMensalidadesMNS_DTCADASTRO.Value:=DM.ServerDate;
  TBMensalidadesMNS_HRCADASTRO.Value:=DM.ServerTime;
  TBMensalidadesMNS_PERIODO.Value:='MENSAL';
  TBMensalidadesMNS_STATUS.Value:='A';
  TBMensalidadesMNS_TIPODOCTO.Value:='BOLETO';
  TBMensalidadesMNS_VALOR.Value:=0;
  TBMensalidadesMNS_VENCIMENTO.Value:=10;
end;

procedure TDM2.TBMensalidadesBeforeEdit(DataSet: TDataSet);
begin
  if FormMensalidades<>nil then
  FormMain.SetFields(FormMensalidades,True);
end;

procedure TDM2.TBMensalidadesBeforeInsert(DataSet: TDataSet);
begin
  if FormMensalidades<>nil then
  begin
    FormMain.SetFields(FormMensalidades,True);
    FormMensalidades.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBMensalidadesBeforePost(DataSet: TDataSet);
begin
  TBMensalidadesMNS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMensalidadesMNS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMensalidadesMNS_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMensalidadesStateChange(Sender: TObject);
begin
  if TBMensalidades.State in [dsInsert, dsEdit] then
  begin
    if FormMensalidades<>nil then
    begin
      FormMensalidades.GerarContasAReceber1.Enabled:=False;
      FormMensalidades.GerarContasAReceber1Button.Enabled:=False;
      FormMensalidades.Localizar1.Enabled:=False;
      FormMensalidades.Localizar1Button.Enabled:=False;
      FormMensalidades.Relatorios2.Enabled:=False;
      FormMensalidades.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMensalidades<>nil then
    begin
      FormMensalidades.GerarContasAReceber1.Enabled:=True;
      FormMensalidades.GerarContasAReceber1Button.Enabled:=True;
      FormMensalidades.Localizar1.Enabled:=True;
      FormMensalidades.Localizar1Button.Enabled:=True;
      FormMensalidades.Relatorios2.Enabled:=True;
      FormMensalidades.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMensalidades);
      FormMain.SetFields(FormMensalidades,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// MOTIVOS                                                                    //
//##############################################################################
{$REGION 'TABELA MOTIVOS'}
procedure TDM2.TBMotivosAfterInsert(DataSet: TDataSet);
begin
  TBMotivosMOT_DTCADASTRO.Value:=DM.ServerDate;
  TBMotivosMOT_HRCADASTRO.Value:=DM.ServerTime;
  TBMotivosMOT_STATUS.Value:='A';
end;

procedure TDM2.TBMotivosBeforeEdit(DataSet: TDataSet);
begin
  if FormMotivos<>nil then
  FormMain.SetFields(FormMotivos,True);
end;

procedure TDM2.TBMotivosBeforeInsert(DataSet: TDataSet);
begin
  if FormMotivos<>nil then
  begin
    FormMain.SetFields(FormMotivos,True);
    FormMotivos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBMotivosBeforePost(DataSet: TDataSet);
begin
  TBMotivosMOT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBMotivosMOT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBMotivosMOT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSMotivosStateChange(Sender: TObject);
begin
  if TBMotivos.State in [dsInsert, dsEdit] then
  begin
    if FormMotivos<>nil then
    begin
      FormMotivos.Localizar1.Enabled:=False;
      FormMotivos.Localizar1Button.Enabled:=False;
      FormMotivos.Relatorios2.Enabled:=False;
      FormMotivos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormMotivos<>nil then
    begin
      FormMotivos.Localizar1.Enabled:=True;
      FormMotivos.Localizar1Button.Enabled:=True;
      FormMotivos.Relatorios2.Enabled:=True;
      FormMotivos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormMotivos);
      FormMain.SetFields(FormMotivos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// OBJETOS                                                                    //
//##############################################################################
{$REGION 'TABELA OBJETOS'}
procedure TDM2.TBObjetosAfterInsert(DataSet: TDataSet);
begin
  TBObjetosOBJ_CAPACIDADE.Value:=0;
  TBObjetosOBJ_DTCADASTRO.Value:=DM.ServerDate;
  TBObjetosOBJ_HRCADASTRO.Value:=DM.ServerTime;
  TBObjetosOBJ_LOCADO.Value:='N';
  TBObjetosOBJ_MARCA.Value:=DM.TBParametrosPAR_PROMARCA.Value;
  TBObjetosOBJ_STATUS.Value:='A';
  TBObjetosOBJ_UNIDADE.Value:=DM.TBParametrosPAR_PROUNIDADE.Value;
  TBObjetosOBJ_VALOR.Value:=0;
end;

procedure TDM2.TBObjetosBeforeEdit(DataSet: TDataSet);
begin
  if FormObjetos<>nil then
  FormMain.SetFields(FormObjetos,True);
end;

procedure TDM2.TBObjetosBeforeInsert(DataSet: TDataSet);
begin
  if FormObjetos<>nil then
  begin
    FormMain.SetFields(FormObjetos,True);
    FormObjetos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBObjetosBeforePost(DataSet: TDataSet);
begin
  TBObjetosOBJ_DTATUALIZACAO.Value:=DM.ServerDate;
  TBObjetosOBJ_HRATUALIZACAO.Value:=DM.ServerTime;
  TBObjetosOBJ_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSObjetosStateChange(Sender: TObject);
begin
  if TBObjetos.State in [dsInsert, dsEdit] then
  begin
    if FormObjetos<>nil then
    begin
      FormObjetos.Localizar1.Enabled:=False;
      FormObjetos.Localizar1Button.Enabled:=False;
      FormObjetos.Relatorios2.Enabled:=False;
      FormObjetos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormObjetos<>nil then
    begin
      FormObjetos.Localizar1.Enabled:=True;
      FormObjetos.Localizar1Button.Enabled:=True;
      FormObjetos.Relatorios2.Enabled:=True;
      FormObjetos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormObjetos);
      FormMain.SetFields(FormObjetos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ODONTOGRAMAS                                                               //
//##############################################################################
{$REGION 'TABELA ODONTOGRAMAS'}
procedure TDM2.TBOdontogramasAfterInsert(DataSet: TDataSet);
var E: String;
  I: Word;
begin
  if DM.TBClientes.IsEmpty then
  begin
    MessageDlg('Selecione um cliente antes de iniciar um odontograma.',mtError,[mbOk],0);
    TBOdontogramas.Cancel;
    Exit;
  end;

  TBOdontogramasODO_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBOdontogramasODO_DATA.Value:=DM.ServerDate;
  TBOdontogramasODO_DTCADASTRO.Value:=DM.ServerDate;
  TBOdontogramasODO_HRCADASTRO.Value:=DM.ServerTime;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select first(1) * from ODONTOGRAMAS where ODO_CLIENTE=:cliente order by ODO_DATA desc, ODO_CODIGO desc');
  //DM.QYAux.SQL.Add('select first(1) ODO_CORES, ODO_DESCRICOES, ODO_ESTILOS from ODONTOGRAMAS where ODO_CLIENTE=:cliente order by ODO_CODIGO desc');
  DM.QYAux.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
  DM.QYAux.Open;
  if not DM.QYAux.IsEmpty then
  begin
    TBOdontogramasODO_ESTILOS.Value:=DM.QYAux.FieldByName('ODO_ESTILOS').AsString;
    {$REGION 'Dentes'}
    TBOdontogramasODO_D11.Value:=DM.QYAux.FieldByName('ODO_D11').AsString;
    TBOdontogramasODO_D12.Value:=DM.QYAux.FieldByName('ODO_D12').AsString;
    TBOdontogramasODO_D13.Value:=DM.QYAux.FieldByName('ODO_D13').AsString;
    TBOdontogramasODO_D14.Value:=DM.QYAux.FieldByName('ODO_D14').AsString;
    TBOdontogramasODO_D15.Value:=DM.QYAux.FieldByName('ODO_D15').AsString;
    TBOdontogramasODO_D16.Value:=DM.QYAux.FieldByName('ODO_D16').AsString;
    TBOdontogramasODO_D17.Value:=DM.QYAux.FieldByName('ODO_D17').AsString;
    TBOdontogramasODO_D18.Value:=DM.QYAux.FieldByName('ODO_D18').AsString;

    TBOdontogramasODO_D21.Value:=DM.QYAux.FieldByName('ODO_D21').AsString;
    TBOdontogramasODO_D22.Value:=DM.QYAux.FieldByName('ODO_D22').AsString;
    TBOdontogramasODO_D23.Value:=DM.QYAux.FieldByName('ODO_D23').AsString;
    TBOdontogramasODO_D24.Value:=DM.QYAux.FieldByName('ODO_D24').AsString;
    TBOdontogramasODO_D25.Value:=DM.QYAux.FieldByName('ODO_D25').AsString;
    TBOdontogramasODO_D26.Value:=DM.QYAux.FieldByName('ODO_D26').AsString;
    TBOdontogramasODO_D27.Value:=DM.QYAux.FieldByName('ODO_D27').AsString;
    TBOdontogramasODO_D28.Value:=DM.QYAux.FieldByName('ODO_D28').AsString;

    TBOdontogramasODO_D31.Value:=DM.QYAux.FieldByName('ODO_D31').AsString;
    TBOdontogramasODO_D32.Value:=DM.QYAux.FieldByName('ODO_D32').AsString;
    TBOdontogramasODO_D33.Value:=DM.QYAux.FieldByName('ODO_D33').AsString;
    TBOdontogramasODO_D34.Value:=DM.QYAux.FieldByName('ODO_D34').AsString;
    TBOdontogramasODO_D35.Value:=DM.QYAux.FieldByName('ODO_D35').AsString;
    TBOdontogramasODO_D36.Value:=DM.QYAux.FieldByName('ODO_D36').AsString;
    TBOdontogramasODO_D37.Value:=DM.QYAux.FieldByName('ODO_D37').AsString;
    TBOdontogramasODO_D38.Value:=DM.QYAux.FieldByName('ODO_D38').AsString;

    TBOdontogramasODO_D41.Value:=DM.QYAux.FieldByName('ODO_D41').AsString;
    TBOdontogramasODO_D42.Value:=DM.QYAux.FieldByName('ODO_D42').AsString;
    TBOdontogramasODO_D43.Value:=DM.QYAux.FieldByName('ODO_D43').AsString;
    TBOdontogramasODO_D44.Value:=DM.QYAux.FieldByName('ODO_D44').AsString;
    TBOdontogramasODO_D45.Value:=DM.QYAux.FieldByName('ODO_D45').AsString;
    TBOdontogramasODO_D46.Value:=DM.QYAux.FieldByName('ODO_D46').AsString;
    TBOdontogramasODO_D47.Value:=DM.QYAux.FieldByName('ODO_D47').AsString;
    TBOdontogramasODO_D48.Value:=DM.QYAux.FieldByName('ODO_D48').AsString;

    TBOdontogramasODO_D51.Value:=DM.QYAux.FieldByName('ODO_D51').AsString;
    TBOdontogramasODO_D52.Value:=DM.QYAux.FieldByName('ODO_D52').AsString;
    TBOdontogramasODO_D53.Value:=DM.QYAux.FieldByName('ODO_D53').AsString;
    TBOdontogramasODO_D54.Value:=DM.QYAux.FieldByName('ODO_D54').AsString;
    TBOdontogramasODO_D55.Value:=DM.QYAux.FieldByName('ODO_D55').AsString;

    TBOdontogramasODO_D61.Value:=DM.QYAux.FieldByName('ODO_D61').AsString;
    TBOdontogramasODO_D62.Value:=DM.QYAux.FieldByName('ODO_D62').AsString;
    TBOdontogramasODO_D63.Value:=DM.QYAux.FieldByName('ODO_D63').AsString;
    TBOdontogramasODO_D64.Value:=DM.QYAux.FieldByName('ODO_D64').AsString;
    TBOdontogramasODO_D65.Value:=DM.QYAux.FieldByName('ODO_D65').AsString;

    TBOdontogramasODO_D71.Value:=DM.QYAux.FieldByName('ODO_D71').AsString;
    TBOdontogramasODO_D72.Value:=DM.QYAux.FieldByName('ODO_D72').AsString;
    TBOdontogramasODO_D73.Value:=DM.QYAux.FieldByName('ODO_D73').AsString;
    TBOdontogramasODO_D74.Value:=DM.QYAux.FieldByName('ODO_D74').AsString;
    TBOdontogramasODO_D75.Value:=DM.QYAux.FieldByName('ODO_D75').AsString;

    TBOdontogramasODO_D81.Value:=DM.QYAux.FieldByName('ODO_D81').AsString;
    TBOdontogramasODO_D82.Value:=DM.QYAux.FieldByName('ODO_D82').AsString;
    TBOdontogramasODO_D83.Value:=DM.QYAux.FieldByName('ODO_D83').AsString;
    TBOdontogramasODO_D84.Value:=DM.QYAux.FieldByName('ODO_D84').AsString;
    TBOdontogramasODO_D85.Value:=DM.QYAux.FieldByName('ODO_D85').AsString;
    {$ENDREGION}

    {$REGION 'Cores 10'}
    TBOdontogramasODO_D11A.Value:=DM.QYAux.FieldByName('ODO_D11A').AsInteger;
    TBOdontogramasODO_D11B.Value:=DM.QYAux.FieldByName('ODO_D11B').AsInteger;
    TBOdontogramasODO_D11C.Value:=DM.QYAux.FieldByName('ODO_D11C').AsInteger;
    TBOdontogramasODO_D11D.Value:=DM.QYAux.FieldByName('ODO_D11D').AsInteger;
    TBOdontogramasODO_D11E.Value:=DM.QYAux.FieldByName('ODO_D11E').AsInteger;

    TBOdontogramasODO_D12A.Value:=DM.QYAux.FieldByName('ODO_D12A').AsInteger;
    TBOdontogramasODO_D12B.Value:=DM.QYAux.FieldByName('ODO_D12B').AsInteger;
    TBOdontogramasODO_D12C.Value:=DM.QYAux.FieldByName('ODO_D12C').AsInteger;
    TBOdontogramasODO_D12D.Value:=DM.QYAux.FieldByName('ODO_D12D').AsInteger;
    TBOdontogramasODO_D12E.Value:=DM.QYAux.FieldByName('ODO_D12E').AsInteger;

    TBOdontogramasODO_D13A.Value:=DM.QYAux.FieldByName('ODO_D13A').AsInteger;
    TBOdontogramasODO_D13B.Value:=DM.QYAux.FieldByName('ODO_D13B').AsInteger;
    TBOdontogramasODO_D13C.Value:=DM.QYAux.FieldByName('ODO_D13C').AsInteger;
    TBOdontogramasODO_D13D.Value:=DM.QYAux.FieldByName('ODO_D13D').AsInteger;
    TBOdontogramasODO_D13E.Value:=DM.QYAux.FieldByName('ODO_D13E').AsInteger;

    TBOdontogramasODO_D14A.Value:=DM.QYAux.FieldByName('ODO_D14A').AsInteger;
    TBOdontogramasODO_D14B.Value:=DM.QYAux.FieldByName('ODO_D14B').AsInteger;
    TBOdontogramasODO_D14C.Value:=DM.QYAux.FieldByName('ODO_D14C').AsInteger;
    TBOdontogramasODO_D14D.Value:=DM.QYAux.FieldByName('ODO_D14D').AsInteger;
    TBOdontogramasODO_D14E.Value:=DM.QYAux.FieldByName('ODO_D14E').AsInteger;

    TBOdontogramasODO_D15A.Value:=DM.QYAux.FieldByName('ODO_D15A').AsInteger;
    TBOdontogramasODO_D15B.Value:=DM.QYAux.FieldByName('ODO_D15B').AsInteger;
    TBOdontogramasODO_D15C.Value:=DM.QYAux.FieldByName('ODO_D15C').AsInteger;
    TBOdontogramasODO_D15D.Value:=DM.QYAux.FieldByName('ODO_D15D').AsInteger;
    TBOdontogramasODO_D15E.Value:=DM.QYAux.FieldByName('ODO_D15E').AsInteger;

    TBOdontogramasODO_D16A.Value:=DM.QYAux.FieldByName('ODO_D16A').AsInteger;
    TBOdontogramasODO_D16B.Value:=DM.QYAux.FieldByName('ODO_D16B').AsInteger;
    TBOdontogramasODO_D16C.Value:=DM.QYAux.FieldByName('ODO_D16C').AsInteger;
    TBOdontogramasODO_D16D.Value:=DM.QYAux.FieldByName('ODO_D16D').AsInteger;
    TBOdontogramasODO_D16E.Value:=DM.QYAux.FieldByName('ODO_D16E').AsInteger;

    TBOdontogramasODO_D17A.Value:=DM.QYAux.FieldByName('ODO_D17A').AsInteger;
    TBOdontogramasODO_D17B.Value:=DM.QYAux.FieldByName('ODO_D17B').AsInteger;
    TBOdontogramasODO_D17C.Value:=DM.QYAux.FieldByName('ODO_D17C').AsInteger;
    TBOdontogramasODO_D17D.Value:=DM.QYAux.FieldByName('ODO_D17D').AsInteger;
    TBOdontogramasODO_D17E.Value:=DM.QYAux.FieldByName('ODO_D17E').AsInteger;

    TBOdontogramasODO_D18A.Value:=DM.QYAux.FieldByName('ODO_D18A').AsInteger;
    TBOdontogramasODO_D18B.Value:=DM.QYAux.FieldByName('ODO_D18B').AsInteger;
    TBOdontogramasODO_D18C.Value:=DM.QYAux.FieldByName('ODO_D18C').AsInteger;
    TBOdontogramasODO_D18D.Value:=DM.QYAux.FieldByName('ODO_D18D').AsInteger;
    TBOdontogramasODO_D18E.Value:=DM.QYAux.FieldByName('ODO_D18E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 20'}
    TBOdontogramasODO_D21A.Value:=DM.QYAux.FieldByName('ODO_D21A').AsInteger;
    TBOdontogramasODO_D21B.Value:=DM.QYAux.FieldByName('ODO_D21B').AsInteger;
    TBOdontogramasODO_D21C.Value:=DM.QYAux.FieldByName('ODO_D21C').AsInteger;
    TBOdontogramasODO_D21D.Value:=DM.QYAux.FieldByName('ODO_D21D').AsInteger;
    TBOdontogramasODO_D21E.Value:=DM.QYAux.FieldByName('ODO_D21E').AsInteger;

    TBOdontogramasODO_D22A.Value:=DM.QYAux.FieldByName('ODO_D22A').AsInteger;
    TBOdontogramasODO_D22B.Value:=DM.QYAux.FieldByName('ODO_D22B').AsInteger;
    TBOdontogramasODO_D22C.Value:=DM.QYAux.FieldByName('ODO_D22C').AsInteger;
    TBOdontogramasODO_D22D.Value:=DM.QYAux.FieldByName('ODO_D22D').AsInteger;
    TBOdontogramasODO_D22E.Value:=DM.QYAux.FieldByName('ODO_D22E').AsInteger;

    TBOdontogramasODO_D23A.Value:=DM.QYAux.FieldByName('ODO_D23A').AsInteger;
    TBOdontogramasODO_D23B.Value:=DM.QYAux.FieldByName('ODO_D23B').AsInteger;
    TBOdontogramasODO_D23C.Value:=DM.QYAux.FieldByName('ODO_D23C').AsInteger;
    TBOdontogramasODO_D23D.Value:=DM.QYAux.FieldByName('ODO_D23D').AsInteger;
    TBOdontogramasODO_D23E.Value:=DM.QYAux.FieldByName('ODO_D23E').AsInteger;

    TBOdontogramasODO_D24A.Value:=DM.QYAux.FieldByName('ODO_D24A').AsInteger;
    TBOdontogramasODO_D24B.Value:=DM.QYAux.FieldByName('ODO_D24B').AsInteger;
    TBOdontogramasODO_D24C.Value:=DM.QYAux.FieldByName('ODO_D24C').AsInteger;
    TBOdontogramasODO_D24D.Value:=DM.QYAux.FieldByName('ODO_D24D').AsInteger;
    TBOdontogramasODO_D24E.Value:=DM.QYAux.FieldByName('ODO_D24E').AsInteger;

    TBOdontogramasODO_D25A.Value:=DM.QYAux.FieldByName('ODO_D25A').AsInteger;
    TBOdontogramasODO_D25B.Value:=DM.QYAux.FieldByName('ODO_D25B').AsInteger;
    TBOdontogramasODO_D25C.Value:=DM.QYAux.FieldByName('ODO_D25C').AsInteger;
    TBOdontogramasODO_D25D.Value:=DM.QYAux.FieldByName('ODO_D25D').AsInteger;
    TBOdontogramasODO_D25E.Value:=DM.QYAux.FieldByName('ODO_D25E').AsInteger;

    TBOdontogramasODO_D26A.Value:=DM.QYAux.FieldByName('ODO_D26A').AsInteger;
    TBOdontogramasODO_D26B.Value:=DM.QYAux.FieldByName('ODO_D26B').AsInteger;
    TBOdontogramasODO_D26C.Value:=DM.QYAux.FieldByName('ODO_D26C').AsInteger;
    TBOdontogramasODO_D26D.Value:=DM.QYAux.FieldByName('ODO_D26D').AsInteger;
    TBOdontogramasODO_D26E.Value:=DM.QYAux.FieldByName('ODO_D26E').AsInteger;

    TBOdontogramasODO_D27A.Value:=DM.QYAux.FieldByName('ODO_D27A').AsInteger;
    TBOdontogramasODO_D27B.Value:=DM.QYAux.FieldByName('ODO_D27B').AsInteger;
    TBOdontogramasODO_D27C.Value:=DM.QYAux.FieldByName('ODO_D27C').AsInteger;
    TBOdontogramasODO_D27D.Value:=DM.QYAux.FieldByName('ODO_D27D').AsInteger;
    TBOdontogramasODO_D27E.Value:=DM.QYAux.FieldByName('ODO_D27E').AsInteger;

    TBOdontogramasODO_D28A.Value:=DM.QYAux.FieldByName('ODO_D28A').AsInteger;
    TBOdontogramasODO_D28B.Value:=DM.QYAux.FieldByName('ODO_D28B').AsInteger;
    TBOdontogramasODO_D28C.Value:=DM.QYAux.FieldByName('ODO_D28C').AsInteger;
    TBOdontogramasODO_D28D.Value:=DM.QYAux.FieldByName('ODO_D28D').AsInteger;
    TBOdontogramasODO_D28E.Value:=DM.QYAux.FieldByName('ODO_D28E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 30'}
    TBOdontogramasODO_D31A.Value:=DM.QYAux.FieldByName('ODO_D31A').AsInteger;
    TBOdontogramasODO_D31B.Value:=DM.QYAux.FieldByName('ODO_D31B').AsInteger;
    TBOdontogramasODO_D31C.Value:=DM.QYAux.FieldByName('ODO_D31C').AsInteger;
    TBOdontogramasODO_D31D.Value:=DM.QYAux.FieldByName('ODO_D31D').AsInteger;
    TBOdontogramasODO_D31E.Value:=DM.QYAux.FieldByName('ODO_D31E').AsInteger;

    TBOdontogramasODO_D32A.Value:=DM.QYAux.FieldByName('ODO_D32A').AsInteger;
    TBOdontogramasODO_D32B.Value:=DM.QYAux.FieldByName('ODO_D32B').AsInteger;
    TBOdontogramasODO_D32C.Value:=DM.QYAux.FieldByName('ODO_D32C').AsInteger;
    TBOdontogramasODO_D32D.Value:=DM.QYAux.FieldByName('ODO_D32D').AsInteger;
    TBOdontogramasODO_D32E.Value:=DM.QYAux.FieldByName('ODO_D32E').AsInteger;

    TBOdontogramasODO_D33A.Value:=DM.QYAux.FieldByName('ODO_D33A').AsInteger;
    TBOdontogramasODO_D33B.Value:=DM.QYAux.FieldByName('ODO_D33B').AsInteger;
    TBOdontogramasODO_D33C.Value:=DM.QYAux.FieldByName('ODO_D33C').AsInteger;
    TBOdontogramasODO_D33D.Value:=DM.QYAux.FieldByName('ODO_D33D').AsInteger;
    TBOdontogramasODO_D33E.Value:=DM.QYAux.FieldByName('ODO_D33E').AsInteger;

    TBOdontogramasODO_D34A.Value:=DM.QYAux.FieldByName('ODO_D34A').AsInteger;
    TBOdontogramasODO_D34B.Value:=DM.QYAux.FieldByName('ODO_D34B').AsInteger;
    TBOdontogramasODO_D34C.Value:=DM.QYAux.FieldByName('ODO_D34C').AsInteger;
    TBOdontogramasODO_D34D.Value:=DM.QYAux.FieldByName('ODO_D34D').AsInteger;
    TBOdontogramasODO_D34E.Value:=DM.QYAux.FieldByName('ODO_D34E').AsInteger;

    TBOdontogramasODO_D35A.Value:=DM.QYAux.FieldByName('ODO_D35A').AsInteger;
    TBOdontogramasODO_D35B.Value:=DM.QYAux.FieldByName('ODO_D35B').AsInteger;
    TBOdontogramasODO_D35C.Value:=DM.QYAux.FieldByName('ODO_D35C').AsInteger;
    TBOdontogramasODO_D35D.Value:=DM.QYAux.FieldByName('ODO_D35D').AsInteger;
    TBOdontogramasODO_D35E.Value:=DM.QYAux.FieldByName('ODO_D35E').AsInteger;

    TBOdontogramasODO_D36A.Value:=DM.QYAux.FieldByName('ODO_D36A').AsInteger;
    TBOdontogramasODO_D36B.Value:=DM.QYAux.FieldByName('ODO_D36B').AsInteger;
    TBOdontogramasODO_D36C.Value:=DM.QYAux.FieldByName('ODO_D36C').AsInteger;
    TBOdontogramasODO_D36D.Value:=DM.QYAux.FieldByName('ODO_D36D').AsInteger;
    TBOdontogramasODO_D36E.Value:=DM.QYAux.FieldByName('ODO_D36E').AsInteger;

    TBOdontogramasODO_D37A.Value:=DM.QYAux.FieldByName('ODO_D37A').AsInteger;
    TBOdontogramasODO_D37B.Value:=DM.QYAux.FieldByName('ODO_D37B').AsInteger;
    TBOdontogramasODO_D37C.Value:=DM.QYAux.FieldByName('ODO_D37C').AsInteger;
    TBOdontogramasODO_D37D.Value:=DM.QYAux.FieldByName('ODO_D37D').AsInteger;
    TBOdontogramasODO_D37E.Value:=DM.QYAux.FieldByName('ODO_D37E').AsInteger;

    TBOdontogramasODO_D38A.Value:=DM.QYAux.FieldByName('ODO_D38A').AsInteger;
    TBOdontogramasODO_D38B.Value:=DM.QYAux.FieldByName('ODO_D38B').AsInteger;
    TBOdontogramasODO_D38C.Value:=DM.QYAux.FieldByName('ODO_D38C').AsInteger;
    TBOdontogramasODO_D38D.Value:=DM.QYAux.FieldByName('ODO_D38D').AsInteger;
    TBOdontogramasODO_D38E.Value:=DM.QYAux.FieldByName('ODO_D38E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 40'}
    TBOdontogramasODO_D41A.Value:=DM.QYAux.FieldByName('ODO_D41A').AsInteger;
    TBOdontogramasODO_D41B.Value:=DM.QYAux.FieldByName('ODO_D41B').AsInteger;
    TBOdontogramasODO_D41C.Value:=DM.QYAux.FieldByName('ODO_D41C').AsInteger;
    TBOdontogramasODO_D41D.Value:=DM.QYAux.FieldByName('ODO_D41D').AsInteger;
    TBOdontogramasODO_D41E.Value:=DM.QYAux.FieldByName('ODO_D41E').AsInteger;

    TBOdontogramasODO_D42A.Value:=DM.QYAux.FieldByName('ODO_D42A').AsInteger;
    TBOdontogramasODO_D42B.Value:=DM.QYAux.FieldByName('ODO_D42B').AsInteger;
    TBOdontogramasODO_D42C.Value:=DM.QYAux.FieldByName('ODO_D42C').AsInteger;
    TBOdontogramasODO_D42D.Value:=DM.QYAux.FieldByName('ODO_D42D').AsInteger;
    TBOdontogramasODO_D42E.Value:=DM.QYAux.FieldByName('ODO_D42E').AsInteger;

    TBOdontogramasODO_D43A.Value:=DM.QYAux.FieldByName('ODO_D43A').AsInteger;
    TBOdontogramasODO_D43B.Value:=DM.QYAux.FieldByName('ODO_D43B').AsInteger;
    TBOdontogramasODO_D43C.Value:=DM.QYAux.FieldByName('ODO_D43C').AsInteger;
    TBOdontogramasODO_D43D.Value:=DM.QYAux.FieldByName('ODO_D43D').AsInteger;
    TBOdontogramasODO_D43E.Value:=DM.QYAux.FieldByName('ODO_D43E').AsInteger;

    TBOdontogramasODO_D44A.Value:=DM.QYAux.FieldByName('ODO_D44A').AsInteger;
    TBOdontogramasODO_D44B.Value:=DM.QYAux.FieldByName('ODO_D44B').AsInteger;
    TBOdontogramasODO_D44C.Value:=DM.QYAux.FieldByName('ODO_D44C').AsInteger;
    TBOdontogramasODO_D44D.Value:=DM.QYAux.FieldByName('ODO_D44D').AsInteger;
    TBOdontogramasODO_D44E.Value:=DM.QYAux.FieldByName('ODO_D44E').AsInteger;

    TBOdontogramasODO_D45A.Value:=DM.QYAux.FieldByName('ODO_D45A').AsInteger;
    TBOdontogramasODO_D45B.Value:=DM.QYAux.FieldByName('ODO_D45B').AsInteger;
    TBOdontogramasODO_D45C.Value:=DM.QYAux.FieldByName('ODO_D45C').AsInteger;
    TBOdontogramasODO_D45D.Value:=DM.QYAux.FieldByName('ODO_D45D').AsInteger;
    TBOdontogramasODO_D45E.Value:=DM.QYAux.FieldByName('ODO_D45E').AsInteger;

    TBOdontogramasODO_D46A.Value:=DM.QYAux.FieldByName('ODO_D46A').AsInteger;
    TBOdontogramasODO_D46B.Value:=DM.QYAux.FieldByName('ODO_D46B').AsInteger;
    TBOdontogramasODO_D46C.Value:=DM.QYAux.FieldByName('ODO_D46C').AsInteger;
    TBOdontogramasODO_D46D.Value:=DM.QYAux.FieldByName('ODO_D46D').AsInteger;
    TBOdontogramasODO_D46E.Value:=DM.QYAux.FieldByName('ODO_D46E').AsInteger;

    TBOdontogramasODO_D47A.Value:=DM.QYAux.FieldByName('ODO_D47A').AsInteger;
    TBOdontogramasODO_D47B.Value:=DM.QYAux.FieldByName('ODO_D47B').AsInteger;
    TBOdontogramasODO_D47C.Value:=DM.QYAux.FieldByName('ODO_D47C').AsInteger;
    TBOdontogramasODO_D47D.Value:=DM.QYAux.FieldByName('ODO_D47D').AsInteger;
    TBOdontogramasODO_D47E.Value:=DM.QYAux.FieldByName('ODO_D47E').AsInteger;

    TBOdontogramasODO_D48A.Value:=DM.QYAux.FieldByName('ODO_D48A').AsInteger;
    TBOdontogramasODO_D48B.Value:=DM.QYAux.FieldByName('ODO_D48B').AsInteger;
    TBOdontogramasODO_D48C.Value:=DM.QYAux.FieldByName('ODO_D48C').AsInteger;
    TBOdontogramasODO_D48D.Value:=DM.QYAux.FieldByName('ODO_D48D').AsInteger;
    TBOdontogramasODO_D48E.Value:=DM.QYAux.FieldByName('ODO_D48E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 50'}
    TBOdontogramasODO_D51A.Value:=DM.QYAux.FieldByName('ODO_D51A').AsInteger;
    TBOdontogramasODO_D51B.Value:=DM.QYAux.FieldByName('ODO_D51B').AsInteger;
    TBOdontogramasODO_D51C.Value:=DM.QYAux.FieldByName('ODO_D51C').AsInteger;
    TBOdontogramasODO_D51D.Value:=DM.QYAux.FieldByName('ODO_D51D').AsInteger;
    TBOdontogramasODO_D51E.Value:=DM.QYAux.FieldByName('ODO_D51E').AsInteger;

    TBOdontogramasODO_D52A.Value:=DM.QYAux.FieldByName('ODO_D52A').AsInteger;
    TBOdontogramasODO_D52B.Value:=DM.QYAux.FieldByName('ODO_D52B').AsInteger;
    TBOdontogramasODO_D52C.Value:=DM.QYAux.FieldByName('ODO_D52C').AsInteger;
    TBOdontogramasODO_D52D.Value:=DM.QYAux.FieldByName('ODO_D52D').AsInteger;
    TBOdontogramasODO_D52E.Value:=DM.QYAux.FieldByName('ODO_D52E').AsInteger;

    TBOdontogramasODO_D53A.Value:=DM.QYAux.FieldByName('ODO_D53A').AsInteger;
    TBOdontogramasODO_D53B.Value:=DM.QYAux.FieldByName('ODO_D53B').AsInteger;
    TBOdontogramasODO_D53C.Value:=DM.QYAux.FieldByName('ODO_D53C').AsInteger;
    TBOdontogramasODO_D53D.Value:=DM.QYAux.FieldByName('ODO_D53D').AsInteger;
    TBOdontogramasODO_D53E.Value:=DM.QYAux.FieldByName('ODO_D53E').AsInteger;

    TBOdontogramasODO_D54A.Value:=DM.QYAux.FieldByName('ODO_D54A').AsInteger;
    TBOdontogramasODO_D54B.Value:=DM.QYAux.FieldByName('ODO_D54B').AsInteger;
    TBOdontogramasODO_D54C.Value:=DM.QYAux.FieldByName('ODO_D54C').AsInteger;
    TBOdontogramasODO_D54D.Value:=DM.QYAux.FieldByName('ODO_D54D').AsInteger;
    TBOdontogramasODO_D54E.Value:=DM.QYAux.FieldByName('ODO_D54E').AsInteger;

    TBOdontogramasODO_D55A.Value:=DM.QYAux.FieldByName('ODO_D55A').AsInteger;
    TBOdontogramasODO_D55B.Value:=DM.QYAux.FieldByName('ODO_D55B').AsInteger;
    TBOdontogramasODO_D55C.Value:=DM.QYAux.FieldByName('ODO_D55C').AsInteger;
    TBOdontogramasODO_D55D.Value:=DM.QYAux.FieldByName('ODO_D55D').AsInteger;
    TBOdontogramasODO_D55E.Value:=DM.QYAux.FieldByName('ODO_D55E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 60'}
    TBOdontogramasODO_D61A.Value:=DM.QYAux.FieldByName('ODO_D61A').AsInteger;
    TBOdontogramasODO_D61B.Value:=DM.QYAux.FieldByName('ODO_D61B').AsInteger;
    TBOdontogramasODO_D61C.Value:=DM.QYAux.FieldByName('ODO_D61C').AsInteger;
    TBOdontogramasODO_D61D.Value:=DM.QYAux.FieldByName('ODO_D61D').AsInteger;
    TBOdontogramasODO_D61E.Value:=DM.QYAux.FieldByName('ODO_D61E').AsInteger;

    TBOdontogramasODO_D62A.Value:=DM.QYAux.FieldByName('ODO_D62A').AsInteger;
    TBOdontogramasODO_D62B.Value:=DM.QYAux.FieldByName('ODO_D62B').AsInteger;
    TBOdontogramasODO_D62C.Value:=DM.QYAux.FieldByName('ODO_D62C').AsInteger;
    TBOdontogramasODO_D62D.Value:=DM.QYAux.FieldByName('ODO_D62D').AsInteger;
    TBOdontogramasODO_D62E.Value:=DM.QYAux.FieldByName('ODO_D62E').AsInteger;

    TBOdontogramasODO_D63A.Value:=DM.QYAux.FieldByName('ODO_D63A').AsInteger;
    TBOdontogramasODO_D63B.Value:=DM.QYAux.FieldByName('ODO_D63B').AsInteger;
    TBOdontogramasODO_D63C.Value:=DM.QYAux.FieldByName('ODO_D63C').AsInteger;
    TBOdontogramasODO_D63D.Value:=DM.QYAux.FieldByName('ODO_D63D').AsInteger;
    TBOdontogramasODO_D63E.Value:=DM.QYAux.FieldByName('ODO_D63E').AsInteger;

    TBOdontogramasODO_D64A.Value:=DM.QYAux.FieldByName('ODO_D64A').AsInteger;
    TBOdontogramasODO_D64B.Value:=DM.QYAux.FieldByName('ODO_D64B').AsInteger;
    TBOdontogramasODO_D64C.Value:=DM.QYAux.FieldByName('ODO_D64C').AsInteger;
    TBOdontogramasODO_D64D.Value:=DM.QYAux.FieldByName('ODO_D64D').AsInteger;
    TBOdontogramasODO_D64E.Value:=DM.QYAux.FieldByName('ODO_D64E').AsInteger;

    TBOdontogramasODO_D65A.Value:=DM.QYAux.FieldByName('ODO_D65A').AsInteger;
    TBOdontogramasODO_D65B.Value:=DM.QYAux.FieldByName('ODO_D65B').AsInteger;
    TBOdontogramasODO_D65C.Value:=DM.QYAux.FieldByName('ODO_D65C').AsInteger;
    TBOdontogramasODO_D65D.Value:=DM.QYAux.FieldByName('ODO_D65D').AsInteger;
    TBOdontogramasODO_D65E.Value:=DM.QYAux.FieldByName('ODO_D65E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 70'}
    TBOdontogramasODO_D71A.Value:=DM.QYAux.FieldByName('ODO_D71A').AsInteger;
    TBOdontogramasODO_D71B.Value:=DM.QYAux.FieldByName('ODO_D71B').AsInteger;
    TBOdontogramasODO_D71C.Value:=DM.QYAux.FieldByName('ODO_D71C').AsInteger;
    TBOdontogramasODO_D71D.Value:=DM.QYAux.FieldByName('ODO_D71D').AsInteger;
    TBOdontogramasODO_D71E.Value:=DM.QYAux.FieldByName('ODO_D71E').AsInteger;

    TBOdontogramasODO_D72A.Value:=DM.QYAux.FieldByName('ODO_D72A').AsInteger;
    TBOdontogramasODO_D72B.Value:=DM.QYAux.FieldByName('ODO_D72B').AsInteger;
    TBOdontogramasODO_D72C.Value:=DM.QYAux.FieldByName('ODO_D72C').AsInteger;
    TBOdontogramasODO_D72D.Value:=DM.QYAux.FieldByName('ODO_D72D').AsInteger;
    TBOdontogramasODO_D72E.Value:=DM.QYAux.FieldByName('ODO_D72E').AsInteger;

    TBOdontogramasODO_D73A.Value:=DM.QYAux.FieldByName('ODO_D73A').AsInteger;
    TBOdontogramasODO_D73B.Value:=DM.QYAux.FieldByName('ODO_D73B').AsInteger;
    TBOdontogramasODO_D73C.Value:=DM.QYAux.FieldByName('ODO_D73C').AsInteger;
    TBOdontogramasODO_D73D.Value:=DM.QYAux.FieldByName('ODO_D73D').AsInteger;
    TBOdontogramasODO_D73E.Value:=DM.QYAux.FieldByName('ODO_D73E').AsInteger;

    TBOdontogramasODO_D74A.Value:=DM.QYAux.FieldByName('ODO_D74A').AsInteger;
    TBOdontogramasODO_D74B.Value:=DM.QYAux.FieldByName('ODO_D74B').AsInteger;
    TBOdontogramasODO_D74C.Value:=DM.QYAux.FieldByName('ODO_D74C').AsInteger;
    TBOdontogramasODO_D74D.Value:=DM.QYAux.FieldByName('ODO_D74D').AsInteger;
    TBOdontogramasODO_D74E.Value:=DM.QYAux.FieldByName('ODO_D74E').AsInteger;

    TBOdontogramasODO_D75A.Value:=DM.QYAux.FieldByName('ODO_D75A').AsInteger;
    TBOdontogramasODO_D75B.Value:=DM.QYAux.FieldByName('ODO_D75B').AsInteger;
    TBOdontogramasODO_D75C.Value:=DM.QYAux.FieldByName('ODO_D75C').AsInteger;
    TBOdontogramasODO_D75D.Value:=DM.QYAux.FieldByName('ODO_D75D').AsInteger;
    TBOdontogramasODO_D75E.Value:=DM.QYAux.FieldByName('ODO_D75E').AsInteger;
    {$ENDREGION}

    {$REGION 'Cores 80'}
    TBOdontogramasODO_D81A.Value:=DM.QYAux.FieldByName('ODO_D81A').AsInteger;
    TBOdontogramasODO_D81B.Value:=DM.QYAux.FieldByName('ODO_D81B').AsInteger;
    TBOdontogramasODO_D81C.Value:=DM.QYAux.FieldByName('ODO_D81C').AsInteger;
    TBOdontogramasODO_D81D.Value:=DM.QYAux.FieldByName('ODO_D81D').AsInteger;
    TBOdontogramasODO_D81E.Value:=DM.QYAux.FieldByName('ODO_D81E').AsInteger;

    TBOdontogramasODO_D82A.Value:=DM.QYAux.FieldByName('ODO_D82A').AsInteger;
    TBOdontogramasODO_D82B.Value:=DM.QYAux.FieldByName('ODO_D82B').AsInteger;
    TBOdontogramasODO_D82C.Value:=DM.QYAux.FieldByName('ODO_D82C').AsInteger;
    TBOdontogramasODO_D82D.Value:=DM.QYAux.FieldByName('ODO_D82D').AsInteger;
    TBOdontogramasODO_D82E.Value:=DM.QYAux.FieldByName('ODO_D82E').AsInteger;

    TBOdontogramasODO_D83A.Value:=DM.QYAux.FieldByName('ODO_D83A').AsInteger;
    TBOdontogramasODO_D83B.Value:=DM.QYAux.FieldByName('ODO_D83B').AsInteger;
    TBOdontogramasODO_D83C.Value:=DM.QYAux.FieldByName('ODO_D83C').AsInteger;
    TBOdontogramasODO_D83D.Value:=DM.QYAux.FieldByName('ODO_D83D').AsInteger;
    TBOdontogramasODO_D83E.Value:=DM.QYAux.FieldByName('ODO_D83E').AsInteger;

    TBOdontogramasODO_D84A.Value:=DM.QYAux.FieldByName('ODO_D84A').AsInteger;
    TBOdontogramasODO_D84B.Value:=DM.QYAux.FieldByName('ODO_D84B').AsInteger;
    TBOdontogramasODO_D84C.Value:=DM.QYAux.FieldByName('ODO_D84C').AsInteger;
    TBOdontogramasODO_D84D.Value:=DM.QYAux.FieldByName('ODO_D84D').AsInteger;
    TBOdontogramasODO_D84E.Value:=DM.QYAux.FieldByName('ODO_D84E').AsInteger;

    TBOdontogramasODO_D85A.Value:=DM.QYAux.FieldByName('ODO_D85A').AsInteger;
    TBOdontogramasODO_D85B.Value:=DM.QYAux.FieldByName('ODO_D85B').AsInteger;
    TBOdontogramasODO_D85C.Value:=DM.QYAux.FieldByName('ODO_D85C').AsInteger;
    TBOdontogramasODO_D85D.Value:=DM.QYAux.FieldByName('ODO_D85D').AsInteger;
    TBOdontogramasODO_D85E.Value:=DM.QYAux.FieldByName('ODO_D85E').AsInteger;
    {$ENDREGION}
    DM.QYAux.Close;
  end else
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select first(1) * from ODONTOGRAMASOPCOES where ODP_PADRAO=''S''');
    DM.QYAux.Open;
    if not DM.QYAux.IsEmpty then
    begin
      for I := 1 to 260 do
      begin
        E:=E+'|'+StrToBrushStyle2(DM.QYAux.FieldByName('ODP_ESTILO').AsString);
      end;
      TBOdontogramasODO_ESTILOS.Value:=E;
      {$REGION 'Dentes'}
      TBOdontogramasODO_D11.Value:=DM.QYAux.FieldByName('ODP_D11').AsString;
      TBOdontogramasODO_D12.Value:=DM.QYAux.FieldByName('ODP_D12').AsString;
      TBOdontogramasODO_D13.Value:=DM.QYAux.FieldByName('ODP_D13').AsString;
      TBOdontogramasODO_D14.Value:=DM.QYAux.FieldByName('ODP_D14').AsString;
      TBOdontogramasODO_D15.Value:=DM.QYAux.FieldByName('ODP_D15').AsString;
      TBOdontogramasODO_D16.Value:=DM.QYAux.FieldByName('ODP_D16').AsString;
      TBOdontogramasODO_D17.Value:=DM.QYAux.FieldByName('ODP_D17').AsString;
      TBOdontogramasODO_D18.Value:=DM.QYAux.FieldByName('ODP_D18').AsString;

      TBOdontogramasODO_D21.Value:=DM.QYAux.FieldByName('ODP_D21').AsString;
      TBOdontogramasODO_D22.Value:=DM.QYAux.FieldByName('ODP_D22').AsString;
      TBOdontogramasODO_D23.Value:=DM.QYAux.FieldByName('ODP_D23').AsString;
      TBOdontogramasODO_D24.Value:=DM.QYAux.FieldByName('ODP_D24').AsString;
      TBOdontogramasODO_D25.Value:=DM.QYAux.FieldByName('ODP_D25').AsString;
      TBOdontogramasODO_D26.Value:=DM.QYAux.FieldByName('ODP_D26').AsString;
      TBOdontogramasODO_D27.Value:=DM.QYAux.FieldByName('ODP_D27').AsString;
      TBOdontogramasODO_D28.Value:=DM.QYAux.FieldByName('ODP_D28').AsString;

      TBOdontogramasODO_D31.Value:=DM.QYAux.FieldByName('ODP_D31').AsString;
      TBOdontogramasODO_D32.Value:=DM.QYAux.FieldByName('ODP_D32').AsString;
      TBOdontogramasODO_D33.Value:=DM.QYAux.FieldByName('ODP_D33').AsString;
      TBOdontogramasODO_D34.Value:=DM.QYAux.FieldByName('ODP_D34').AsString;
      TBOdontogramasODO_D35.Value:=DM.QYAux.FieldByName('ODP_D35').AsString;
      TBOdontogramasODO_D36.Value:=DM.QYAux.FieldByName('ODP_D36').AsString;
      TBOdontogramasODO_D37.Value:=DM.QYAux.FieldByName('ODP_D37').AsString;
      TBOdontogramasODO_D38.Value:=DM.QYAux.FieldByName('ODP_D38').AsString;

      TBOdontogramasODO_D41.Value:=DM.QYAux.FieldByName('ODP_D41').AsString;
      TBOdontogramasODO_D42.Value:=DM.QYAux.FieldByName('ODP_D42').AsString;
      TBOdontogramasODO_D43.Value:=DM.QYAux.FieldByName('ODP_D43').AsString;
      TBOdontogramasODO_D44.Value:=DM.QYAux.FieldByName('ODP_D44').AsString;
      TBOdontogramasODO_D45.Value:=DM.QYAux.FieldByName('ODP_D45').AsString;
      TBOdontogramasODO_D46.Value:=DM.QYAux.FieldByName('ODP_D46').AsString;
      TBOdontogramasODO_D47.Value:=DM.QYAux.FieldByName('ODP_D47').AsString;
      TBOdontogramasODO_D48.Value:=DM.QYAux.FieldByName('ODP_D48').AsString;

      TBOdontogramasODO_D51.Value:=DM.QYAux.FieldByName('ODP_D51').AsString;
      TBOdontogramasODO_D52.Value:=DM.QYAux.FieldByName('ODP_D52').AsString;
      TBOdontogramasODO_D53.Value:=DM.QYAux.FieldByName('ODP_D53').AsString;
      TBOdontogramasODO_D54.Value:=DM.QYAux.FieldByName('ODP_D54').AsString;
      TBOdontogramasODO_D55.Value:=DM.QYAux.FieldByName('ODP_D55').AsString;

      TBOdontogramasODO_D61.Value:=DM.QYAux.FieldByName('ODP_D61').AsString;
      TBOdontogramasODO_D62.Value:=DM.QYAux.FieldByName('ODP_D62').AsString;
      TBOdontogramasODO_D63.Value:=DM.QYAux.FieldByName('ODP_D63').AsString;
      TBOdontogramasODO_D64.Value:=DM.QYAux.FieldByName('ODP_D64').AsString;
      TBOdontogramasODO_D65.Value:=DM.QYAux.FieldByName('ODP_D65').AsString;

      TBOdontogramasODO_D71.Value:=DM.QYAux.FieldByName('ODP_D71').AsString;
      TBOdontogramasODO_D72.Value:=DM.QYAux.FieldByName('ODP_D72').AsString;
      TBOdontogramasODO_D73.Value:=DM.QYAux.FieldByName('ODP_D73').AsString;
      TBOdontogramasODO_D74.Value:=DM.QYAux.FieldByName('ODP_D74').AsString;
      TBOdontogramasODO_D75.Value:=DM.QYAux.FieldByName('ODP_D75').AsString;

      TBOdontogramasODO_D81.Value:=DM.QYAux.FieldByName('ODP_D81').AsString;
      TBOdontogramasODO_D82.Value:=DM.QYAux.FieldByName('ODP_D82').AsString;
      TBOdontogramasODO_D83.Value:=DM.QYAux.FieldByName('ODP_D83').AsString;
      TBOdontogramasODO_D84.Value:=DM.QYAux.FieldByName('ODP_D84').AsString;
      TBOdontogramasODO_D85.Value:=DM.QYAux.FieldByName('ODP_D85').AsString;
      {$ENDREGION}

      {$REGION 'Cores 10'}
      TBOdontogramasODO_D11A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D11B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D11C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D11D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D11E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D12A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D12B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D12C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D12D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D12E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D13A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D13B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D13C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D13D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D13E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D14A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D14B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D14C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D14D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D14E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D15A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D15B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D15C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D15D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D15E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D16A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D16B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D16C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D16D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D16E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D17A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D17B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D17C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D17D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D17E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D18A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D18B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D18C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D18D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D18E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 20'}
      TBOdontogramasODO_D21A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D21B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D21C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D21D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D21E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D22A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D22B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D22C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D22D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D22E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D23A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D23B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D23C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D23D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D23E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D24A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D24B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D24C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D24D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D24E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D25A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D25B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D25C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D25D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D25E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D26A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D26B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D26C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D26D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D26E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D27A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D27B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D27C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D27D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D27E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D28A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D28B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D28C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D28D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D28E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 30'}
      TBOdontogramasODO_D31A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D31B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D31C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D31D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D31E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D32A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D32B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D32C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D32D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D32E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D33A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D33B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D33C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D33D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D33E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D34A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D34B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D34C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D34D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D34E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D35A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D35B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D35C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D35D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D35E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D36A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D36B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D36C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D36D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D36E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D37A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D37B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D37C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D37D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D37E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D38A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D38B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D38C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D38D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D38E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 40'}
      TBOdontogramasODO_D41A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D41B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D41C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D41D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D41E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D42A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D42B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D42C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D42D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D42E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D43A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D43B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D43C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D43D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D43E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D44A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D44B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D44C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D44D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D44E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D45A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D45B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D45C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D45D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D45E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D46A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D46B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D46C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D46D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D46E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D47A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D47B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D47C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D47D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D47E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D48A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D48B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D48C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D48D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D48E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 50'}
      TBOdontogramasODO_D51A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D51B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D51C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D51D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D51E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D52A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D52B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D52C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D52D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D52E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D53A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D53B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D53C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D53D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D53E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D54A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D54B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D54C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D54D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D54E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D55A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D55B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D55C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D55D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D55E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 60'}
      TBOdontogramasODO_D61A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D61B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D61C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D61D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D61E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D62A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D62B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D62C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D62D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D62E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D63A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D63B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D63C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D63D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D63E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D64A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D64B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D64C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D64D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D64E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D65A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D65B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D65C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D65D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D65E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 70'}
      TBOdontogramasODO_D71A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D71B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D71C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D71D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D71E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D72A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D72B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D72C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D72D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D72E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D73A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D73B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D73C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D73D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D73E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D74A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D74B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D74C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D74D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D74E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D75A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D75B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D75C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D75D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D75E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}

      {$REGION 'Cores 80'}
      TBOdontogramasODO_D81A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D81B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D81C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D81D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D81E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D82A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D82B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D82C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D82D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D82E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D83A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D83B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D83C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D83D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D83E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D84A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D84B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D84C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D84D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D84E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;

      TBOdontogramasODO_D85A.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D85B.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D85C.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D85D.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      TBOdontogramasODO_D85E.Value:=DM.QYAux.FieldByName('ODP_COR').AsInteger;
      {$ENDREGION}
    end;
    DM.QYAux.Close;
  end;

  if FormOdontogramas<>nil then
  FormOdontogramas.MostrarDadosDentes(TBOdontogramasODO_ESTILOS.Value);
end;

procedure TDM2.TBOdontogramasBeforeEdit(DataSet: TDataSet);
begin
  if FormOdontogramas<>nil then
  FormMain.SetFields(FormOdontogramas,True);
end;

procedure TDM2.TBOdontogramasBeforeInsert(DataSet: TDataSet);
begin
  if FormOdontogramas<>nil then
  begin
    FormMain.SetFields(FormOdontogramas,True);
    FormOdontogramas.DBMemo1.SetFocus;
  end;
end;

procedure TDM2.TBOdontogramasBeforePost(DataSet: TDataSet);
var C,D,E: String;
begin
  DM.CodigoMark:=TBOdontogramasODO_CODIGO.Value;
  TBOdontogramasODO_DTATUALIZACAO.Value:=DM.ServerDate;
  TBOdontogramasODO_HRATUALIZACAO.Value:=DM.ServerTime;
  TBOdontogramasODO_USUARIO.Value:=DM.UsuarioLogin;

  if FormOdontogramas<>nil then
  begin
    FormOdontogramas.SalvarDadosDentes(E);
    TBOdontogramasODO_ESTILOS.Value:=E;
  end;
end;

procedure TDM2.DSOdontogramasDataChange(Sender: TObject; Field: TField);
begin
  if FormOdontogramas<>nil then
  begin
    if not (TBOdontogramas.State in [dsInsert, dsEdit]) then
    FormOdontogramas.MostrarDadosDentes(TBOdontogramasODO_ESTILOS.Value);
  end;
end;

procedure TDM2.DSOdontogramasStateChange(Sender: TObject);
begin
  if TBOdontogramas.State in [dsInsert, dsEdit] then
  begin
    if FormOdontogramas<>nil then
    begin
      FormOdontogramas.CadastroDeClientes1.Enabled:=False;
      FormOdontogramas.CadastroDeClientes1Button.Enabled:=False;
      FormOdontogramas.Localizar1.Enabled:=False;
      FormOdontogramas.Localizar1Button.Enabled:=False;
      FormOdontogramas.Relatorios2.Enabled:=False;
      FormOdontogramas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormOdontogramas<>nil then
    begin
      FormOdontogramas.CadastroDeClientes1.Enabled:=True;
      FormOdontogramas.CadastroDeClientes1Button.Enabled:=True;
      FormOdontogramas.Localizar1.Enabled:=True;
      FormOdontogramas.Localizar1Button.Enabled:=True;
      FormOdontogramas.Relatorios2.Enabled:=True;
      FormOdontogramas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormOdontogramas);
      FormMain.SetFields(FormOdontogramas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ODONTOGRAMAS OPCOES                                                        //
//##############################################################################
{$REGION 'TABELA ODONTOGRAMASOPCOES'}
procedure TDM2.TBOdontogramasOpcoesAfterInsert(DataSet: TDataSet);
begin
  TBOdontogramasOpcoesODP_DTCADASTRO.Value:=DM.ServerDate;
  TBOdontogramasOpcoesODP_HRCADASTRO.Value:=DM.ServerTime;
  TBOdontogramasOpcoesODP_ESTILO.Value:='SOLIDO';
  TBOdontogramasOpcoesODP_COR.Value:=0;
  TBOdontogramasOpcoesODP_PADRAO.Value:='N';
end;

procedure TDM2.TBOdontogramasOpcoesBeforeEdit(DataSet: TDataSet);
begin
  if FormOdontogramasOpcoes<>nil then
  FormMain.SetFields(FormOdontogramasOpcoes,True);
end;

procedure TDM2.TBOdontogramasOpcoesBeforeInsert(DataSet: TDataSet);
begin
  if FormOdontogramasOpcoes<>nil then
  begin
    FormMain.SetFields(FormOdontogramasOpcoes,True);
    FormOdontogramasOpcoes.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBOdontogramasOpcoesBeforePost(DataSet: TDataSet);
begin
  TBOdontogramasOpcoesODP_DTATUALIZACAO.Value:=DM.ServerDate;
  TBOdontogramasOpcoesODP_HRATUALIZACAO.Value:=DM.ServerTime;
  TBOdontogramasOpcoesODP_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSOdontogramasOpcoesDataChange(Sender: TObject; Field: TField);
begin
  if FormOdontogramasOpcoes<>nil then
  begin
    if TBOdontogramasOpcoesODP_COR.Value>=0 then
    FormOdontogramasOpcoes.Shape1.Brush.Color:=TColor(TBOdontogramasOpcoesODP_COR.Value) else
    FormOdontogramasOpcoes.Shape1.Brush.Color:=clWhite;
    if Length(TBOdontogramasOpcoesODP_ESTILO.Value)>0 then
    FormOdontogramasOpcoes.Shape1.Brush.Style:=TBrushStyle(StrToInt(StrToBrushStyle2(TBOdontogramasOpcoesODP_ESTILO.Value))) else
    FormOdontogramasOpcoes.Shape1.Brush.Style:=bsSolid;
    FormOdontogramasOpcoes.CarregarImagensDentesOpcoes;
  end;
end;

procedure TDM2.DSOdontogramasOpcoesStateChange(Sender: TObject);
begin
  if TBOdontogramasOpcoes.State in [dsInsert, dsEdit] then
  begin
    if FormOdontogramasOpcoes<>nil then
    begin
      FormOdontogramasOpcoes.Localizar1.Enabled:=False;
      FormOdontogramasOpcoes.Localizar1Button.Enabled:=False;
      FormOdontogramasOpcoes.Relatorios2.Enabled:=False;
      FormOdontogramasOpcoes.Relatorios2Button.Enabled:=False;
      FormOdontogramasOpcoes.SetarOpcaoComoPadrao1.Enabled:=False;
      FormOdontogramasOpcoes.SetarOpcaoComoPadrao1Button.Enabled:=False;
    end;
  end else
  begin
    if FormOdontogramasOpcoes<>nil then
    begin
      FormOdontogramasOpcoes.Localizar1.Enabled:=True;
      FormOdontogramasOpcoes.Localizar1Button.Enabled:=True;
      FormOdontogramasOpcoes.Relatorios2.Enabled:=True;
      FormOdontogramasOpcoes.Relatorios2Button.Enabled:=True;
      FormOdontogramasOpcoes.SetarOpcaoComoPadrao1.Enabled:=True;
      FormOdontogramasOpcoes.SetarOpcaoComoPadrao1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormOdontogramasOpcoes);
      FormMain.SetFields(FormOdontogramasOpcoes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// OPCIONAIS DE VEICULOS                                                      //
//##############################################################################
{$REGION 'TABELA OPCIONAIS'}
procedure TDM2.TBOpcionaisAfterInsert(DataSet: TDataSet);
begin
  TBOpcionaisOPC_DTCADASTRO.Value:=DM.ServerDate;
  TBOpcionaisOPC_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBOpcionaisBeforeEdit(DataSet: TDataSet);
begin
  if FormOpcionais<>nil then
  FormMain.SetFields(FormOpcionais,True);
end;

procedure TDM2.TBOpcionaisBeforeInsert(DataSet: TDataSet);
begin
  if FormOpcionais<>nil then
  begin
    FormMain.SetFields(FormOpcionais,True);
    FormOpcionais.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBOpcionaisBeforePost(DataSet: TDataSet);
begin
  TBOpcionaisOPC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBOpcionaisOPC_HRATUALIZACAO.Value:=DM.ServerTime;
  TBOpcionaisOPC_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSOpcionaisStateChange(Sender: TObject);
begin
  if TBOpcionais.State in [dsInsert, dsEdit] then
  begin
    if FormOpcionais<>nil then
    begin
      FormOpcionais.Localizar1.Enabled:=False;
      FormOpcionais.Localizar1Button.Enabled:=False;
      FormOpcionais.Relatorios2.Enabled:=False;
      FormOpcionais.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormOpcionais<>nil then
    begin
      FormOpcionais.Localizar1.Enabled:=True;
      FormOpcionais.Localizar1Button.Enabled:=True;
      FormOpcionais.Relatorios2.Enabled:=True;
      FormOpcionais.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormOpcionais);
      FormMain.SetFields(FormOpcionais,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PONTOS                                                                     //
//##############################################################################
{$REGION 'TABELA PONTOS'}
procedure TDM2.TBPontosAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBPontos.Cancel;
end;

procedure TDM2.TBPontosAfterInsert(DataSet: TDataSet);
begin
  TBPontosPTS_COTACAO.Value:=DM.TBParametrosPAR_COTACAOPONTOS.Value;
  TBPontosPTS_DTCADASTRO.Value:=DM.ServerDate;
  TBPontosPTS_ENTRADASAIDA.Value:='E';
  TBPontosPTS_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBPontosAfterPost(DataSet: TDataSet);
begin
  //Atualiza o saldo de pontos do cliente.
  //ao finalizar uma venda, é realizado uma inserção na tabela de pontos.
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=TBPontosPTS_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBClientes.Edit;
  DM.AtualizarClienteDataAtualizacaoUsuario:=False; //evita atualizar esses campos no beforepost da tabela clientes.
  DM.TBClientesCLI_PONTOS.Value:=TBPontosPTS_SALDOPOSTERIOR.Value;
  DM.TBClientes.Post;
end;

procedure TDM2.TBPontosBeforeEdit(DataSet: TDataSet);
begin
  if FormPontos<>nil then
  FormMain.SetFields(FormPontos,True);
end;

procedure TDM2.TBPontosBeforeInsert(DataSet: TDataSet);
begin
  if FormPontos<>nil then
  begin
    FormMain.SetFields(FormPontos,True);
    FormPontos.DBEdit10.SetFocus;
  end;
end;

procedure TDM2.TBPontosBeforePost(DataSet: TDataSet);
begin
  TBPontosPTS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBPontosPTS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBPontosPTS_USUARIO.Value:=DM.UsuarioLogin;

  TBPontosPTS_PONTOS.Value:=TBPontosPTS_VALOR.Value/TBPontosPTS_COTACAO.Value;
  if TBPontosPTS_ENTRADASAIDA.Value='E' then
  TBPontosPTS_SALDOPOSTERIOR.Value:=TBPontosPTS_SALDOANTERIOR.Value+TBPontosPTS_PONTOS.Value else
  TBPontosPTS_SALDOPOSTERIOR.Value:=TBPontosPTS_SALDOANTERIOR.Value-TBPontosPTS_PONTOS.Value;
end;

procedure TDM2.DSPontosStateChange(Sender: TObject);
begin
  if TBPontos.State in [dsInsert, dsEdit] then
  begin
    if FormPontos<>nil then
    begin
      FormPontos.Localizar1.Enabled:=False;
      FormPontos.Localizar1Button.Enabled:=False;
      FormPontos.PontuacaoNoPeriodoPorClienteAnalitico1.Enabled:=False;
      FormPontos.PontuacaoNoPeriodoPorClienteSintetico1.Enabled:=False;
      FormPontos.Relatorios2.Enabled:=False;
      FormPontos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormPontos<>nil then
    begin
      FormPontos.Localizar1.Enabled:=True;
      FormPontos.Localizar1Button.Enabled:=True;
      FormPontos.PontuacaoNoPeriodoPorClienteAnalitico1.Enabled:=True;
      FormPontos.PontuacaoNoPeriodoPorClienteSintetico1.Enabled:=True;
      FormPontos.Relatorios2.Enabled:=True;
      FormPontos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormPontos);
      FormMain.SetFields(FormPontos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROCESSOS                                                                  //
//##############################################################################
{$REGION 'TABELA PROCESSOS'}
procedure TDM2.TBProcessosAfterInsert(DataSet: TDataSet);
begin
  TBProcessosPCS_DTCADASTRO.Value:=DM.ServerDate;
  TBProcessosPCS_HRCADASTRO.Value:=DM.ServerTime;
  TBProcessosPCS_STATUS.Value:='A';
  TBProcessosPCS_TOTALLANCAMENTOS.Value:=0;
end;

procedure TDM2.TBProcessosBeforeEdit(DataSet: TDataSet);
begin
  if FormProcessos<>nil then
  FormMain.SetFields(FormProcessos,True);
end;

procedure TDM2.TBProcessosBeforeInsert(DataSet: TDataSet);
begin
  if FormProcessos<>nil then
  begin
    FormMain.SetFields(FormProcessos,True);
    FormProcessos.DBEdit14.SetFocus;
  end;
end;

procedure TDM2.TBProcessosBeforePost(DataSet: TDataSet);
begin
  TBProcessosPCS_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProcessosPCS_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProcessosPCS_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProcessosStateChange(Sender: TObject);
begin
  if TBProcessos.State in [dsInsert, dsEdit] then
  begin
    if FormProcessos<>nil then
    begin
      FormProcessos.AnexosDoProcesso1.Enabled:=False;
      FormProcessos.AnexosDoProcesso1Button.Enabled:=False;
      FormProcessos.ArquivarProcesso1.Enabled:=False;
      FormProcessos.CustasDoProcesso1.Enabled:=False;
      FormProcessos.CustasDoProcesso1Button.Enabled:=False;
      FormProcessos.HistoricoDoProcesso1.Enabled:=False;
      FormProcessos.HistoricoDoProcesso1Button.Enabled:=False;
      FormProcessos.Localizar1.Enabled:=False;
      FormProcessos.Localizar1Button.Enabled:=False;
      FormProcessos.PartesDoProcesso1.Enabled:=False;
      FormProcessos.PartesDoProcesso1Button.Enabled:=False;
      FormProcessos.ReabrirProcesso1.Enabled:=False;
      FormProcessos.Relatorios2.Enabled:=False;
      FormProcessos.Relatorios2Button.Enabled:=False;
      FormProcessos.SuspenderProcesso1.Enabled:=False;
    end;
  end else
  begin
    if FormProcessos<>nil then
    begin
      FormProcessos.AnexosDoProcesso1.Enabled:=True;
      FormProcessos.AnexosDoProcesso1Button.Enabled:=True;
      FormProcessos.ArquivarProcesso1.Enabled:=True;
      FormProcessos.CustasDoProcesso1.Enabled:=True;
      FormProcessos.CustasDoProcesso1Button.Enabled:=True;
      FormProcessos.HistoricoDoProcesso1.Enabled:=True;
      FormProcessos.HistoricoDoProcesso1Button.Enabled:=True;
      FormProcessos.Localizar1.Enabled:=True;
      FormProcessos.Localizar1Button.Enabled:=True;
      FormProcessos.PartesDoProcesso1.Enabled:=True;
      FormProcessos.PartesDoProcesso1Button.Enabled:=True;
      FormProcessos.ReabrirProcesso1.Enabled:=True;
      FormProcessos.Relatorios2.Enabled:=True;
      FormProcessos.Relatorios2Button.Enabled:=True;
      FormProcessos.SuspenderProcesso1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProcessos);
      FormMain.SetFields(FormProcessos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROCESSOS CUSTAS                                                           //
//##############################################################################
{$REGION 'TABELA PROCESSOSCUSTAS'}
procedure TDM2.AtualizarSaldoProcesso(Valor: Currency; EntradaSaida: String);
begin
  TBProcessos.Edit;
  if EntradaSaida='E' then TBProcessosPCS_TOTALLANCAMENTOS.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value+Valor else
  if EntradaSaida='S' then TBProcessosPCS_TOTALLANCAMENTOS.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value-Valor;
  TBProcessos.Post;
end;

procedure TDM2.TBProcessosCustasAfterEdit(DataSet: TDataSet);
begin
  MessageDlg('Não é possível alterar os movimentos existentes.'+#13#13+'Para fazer acertos, insira um novo movimento.',mtWarning,[mbOk],0);
  TBProcessosCustas.Cancel;
end;

procedure TDM2.TBProcessosCustasAfterInsert(DataSet: TDataSet);
begin
  TBProcessosCustasPSC_PROCESSO.Value:=TBProcessosPCS_CODIGO.Value;
  TBProcessosCustasPSC_DATA.Value:=DM.ServerDate;
  TBProcessosCustasPSC_DTCADASTRO.Value:=TBProcessosCustasPSC_DATA.Value;
  TBProcessosCustasPSC_HRCADASTRO.Value:=DM.ServerDate;
  TBProcessosCustasPSC_ENTRADASAIDA.Value:='S';
  TBProcessosCustasPSC_VALORANTERIOR.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value;
end;

procedure TDM2.TBProcessosCustasAfterPost(DataSet: TDataSet);
begin
  //só atualiza se for registro novo.
  if DM.InserindoNovoRegistroProcessosCustas then
  begin
    AtualizarSaldoProcesso(TBProcessosCustasPSC_VALOR.AsExtended,TBProcessosCustasPSC_ENTRADASAIDA.Value);
    DM.InserindoNovoRegistroProcessosCustas:=False;
  end;
end;

procedure TDM2.TBProcessosCustasBeforeEdit(DataSet: TDataSet);
begin
  if FormProcessosCustas<>nil then
  FormMain.SetFields(FormProcessosCustas,True);
end;

procedure TDM2.TBProcessosCustasBeforeInsert(DataSet: TDataSet);
begin
  if FormProcessosCustas<>nil then
  begin
    FormMain.SetFields(FormProcessosCustas,True);
    FormProcessosCustas.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBProcessosCustasBeforePost(DataSet: TDataSet);
begin
  TBProcessosCustasPSC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProcessosCustasPSC_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProcessosCustasPSC_USUARIO.Value:=DM.UsuarioLogin;
  //calcula dos saldos e atualiza o saldo na tabela caixasaldo. só calcula se for inserção de novo registro.
  if TBProcessosCustas.State in [dsInsert] then
  begin
    TBProcessosCustasPSC_VALORANTERIOR.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value;
    if TBProcessosCustasPSC_ENTRADASAIDA.Value='E' then
    TBProcessosCustasPSC_VALORPOSTERIOR.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value+TBProcessosCustasPSC_VALOR.Value else
    if TBProcessosCustasPSC_ENTRADASAIDA.Value='S' then
    TBProcessosCustasPSC_VALORPOSTERIOR.Value:=TBProcessosPCS_TOTALLANCAMENTOS.Value-TBProcessosCustasPSC_VALOR.Value;
    DM.InserindoNovoRegistroProcessosCustas:=True;
  end;
  //atualiza o saldo da conta no evento afterpost.
end;

procedure TDM2.DSProcessosCustasStateChange(Sender: TObject);
begin
  if TBProcessosCustas.State in [dsInsert, dsEdit] then
  begin
    if FormProcessosCustas<>nil then
    begin
      FormProcessosCustas.Relatorios2.Enabled:=False;
      FormProcessosCustas.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProcessosCustas<>nil then
    begin
      FormProcessosCustas.Relatorios2.Enabled:=True;
      FormProcessosCustas.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProcessosCustas);
      FormMain.SetFields(FormProcessosCustas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROCESSOS HISTORICO                                                        //
//##############################################################################
{$REGION 'TABELA PROCESSOSHISTORICO'}
procedure TDM2.TBProcessosHistoricoAfterInsert(DataSet: TDataSet);
begin
  TBProcessosHistoricoPSH_PROCESSO.Value:=TBProcessosPCS_CODIGO.Value;
  TBProcessosHistoricoPSH_DATA.Value:=DM.ServerDate;
  TBProcessosHistoricoPSH_DTCADASTRO.Value:=TBProcessosHistoricoPSH_DATA.Value;
  TBProcessosHistoricoPSH_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBProcessosHistoricoBeforeEdit(DataSet: TDataSet);
begin
  if FormProcessosHistorico<>nil then
  FormMain.SetFields(FormProcessosHistorico,True);
end;

procedure TDM2.TBProcessosHistoricoBeforeInsert(DataSet: TDataSet);
begin
  if FormProcessosHistorico<>nil then
  begin
    FormMain.SetFields(FormProcessosHistorico,True);
    FormProcessosHistorico.DBEdit3.SetFocus;
  end;
end;

procedure TDM2.TBProcessosHistoricoBeforePost(DataSet: TDataSet);
begin
  TBProcessosHistoricoPSH_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProcessosHistoricoPSH_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProcessosHistoricoPSH_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProcessosHistoricoStateChange(Sender: TObject);
begin
  if TBProcessosHistorico.State in [dsInsert, dsEdit] then
  begin
    if FormProcessosHistorico<>nil then
    begin
      FormProcessosHistorico.Relatorios2.Enabled:=False;
      FormProcessosHistorico.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProcessosHistorico<>nil then
    begin
      FormProcessosHistorico.Relatorios2.Enabled:=True;
      FormProcessosHistorico.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProcessosHistorico);
      FormMain.SetFields(FormProcessosHistorico,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROCESSOS PARTES                                                           //
//##############################################################################
{$REGION 'TABELA PROCESSOSPARTES'}
procedure TDM2.TBProcessosPartesAfterInsert(DataSet: TDataSet);
begin
  TBProcessosPartesPSP_CONDICAO.Value:='AUTOR';
  TBProcessosPartesPSP_PROCESSO.Value:=TBProcessosPCS_CODIGO.Value;
end;

procedure TDM2.TBProcessosPartesBeforeEdit(DataSet: TDataSet);
begin
  if FormProcessosPartes<>nil then
  FormMain.SetFields(FormProcessosPartes,True);
end;

procedure TDM2.TBProcessosPartesBeforeInsert(DataSet: TDataSet);
begin
  if FormProcessosPartes<>nil then
  begin
    FormMain.SetFields(FormProcessosPartes,True);
    FormProcessosPartes.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.DSProcessosPartesStateChange(Sender: TObject);
begin
  if TBProcessosPartes.State in [dsInsert, dsEdit] then
  begin
    if FormProcessosPartes<>nil then
    begin
      //nada.
    end;
  end else
  begin
    if FormProcessosPartes<>nil then
    begin
      FormMain.DesabilitarControles(FormProcessosPartes);
      FormMain.SetFields(FormProcessosPartes,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROJETOS                                                                   //
//##############################################################################
{$REGION 'TABELA PROJETOS'}
procedure TDM2.CalcularTotaisProjeto(DarPost: Boolean);
begin
  TBProjetos.Edit;
  //atualiza o total dos PRODUTOS na tabela projetos.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(PJI_VALORTOTAL) as TOTALPRODUTOS from PROJETOSITENS where PJI_TIPO=''P'' and PJI_PROJETO=:projeto');
  DM.QYAux.ParamByName('projeto').AsInteger:=TBProjetosPRJ_CODIGO.Value;
  DM.QYAux.Open;
  TBProjetosPRJ_TOTALPRODUTOS.Value:=DM.QYAux.FieldByName('TOTALPRODUTOS').AsExtended;
  //atualiza o total dos SERVICOS na tabela projetos.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(PJI_VALORTOTAL) as TOTALSERVICOS from PROJETOSITENS where PJI_TIPO=''S'' and PJI_PROJETO=:projeto');
  DM.QYAux.ParamByName('projeto').AsInteger:=TBProjetosPRJ_CODIGO.Value;
  DM.QYAux.Open;
  TBProjetosPRJ_TOTALSERVICOS.Value:=DM.QYAux.FieldByName('TOTALSERVICOS').AsExtended;
  //atualiza o CUSTO total na tabela projetos.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select sum(PJI_PRECOCUSTOTOTAL) as TOTALCUSTO from PROJETOSITENS where PJI_PROJETO=:projeto');
  DM.QYAux.ParamByName('projeto').AsInteger:=TBProjetosPRJ_CODIGO.Value;
  DM.QYAux.Open;
  TBProjetosPRJ_VALORTOTALCUSTO.Value:=DM.QYAux.FieldByName('TOTALCUSTO').AsExtended;
  //atualiza valor total do projeto.
  TBProjetosPRJ_VALORTOTAL.Value:=TBProjetosPRJ_TOTALPRODUTOS.Value+TBProjetosPRJ_TOTALSERVICOS.Value;
  DM.QYAux.Close;
  if DarPost then TBProjetos.Post;
end;

procedure TDM2.TBProjetosAfterInsert(DataSet: TDataSet);
begin
  TBProjetosPRJ_DTCADASTRO.Value:=DM.ServerDate;
  TBProjetosPRJ_DTPRIMEIROCONTATO.Value:=TBProjetosPRJ_DTCADASTRO.Value;
  TBProjetosPRJ_HRCADASTRO.Value:=DM.ServerTime;
  TBProjetosPRJ_STATUSVISITA.Value:='ABERTO';
  TBProjetosPRJ_STATUSORCAMENTO.Value:='ABERTO';
  TBProjetosPRJ_STATUSAPRESENTACAO.Value:='ABERTO';
  TBProjetosPRJ_STATUSPROJETOCAD.Value:='ABERTO';
  TBProjetosPRJ_STATUSPROJETO.Value:='ABERTO';
  TBProjetosPRJ_STATUSPRODUCAO.Value:='PROJETO';
  TBProjetosPRJ_TOTALPRODUTOS.Value:=0;
  TBProjetosPRJ_TOTALSERVICOS.Value:=0;
  TBProjetosPRJ_VALORTOTAL.Value:=0;
  TBProjetosPRJ_VALORTOTALUP.Value:=0;
  TBProjetosPRJ_VALORTOTALCUSTO.Value:=0;
  TBProjetosPRJ_TABELAPRECO.Value:=DM.TBParametrosPAR_TABELAPRECO.Value;
end;

procedure TDM2.TBProjetosBeforeEdit(DataSet: TDataSet);
begin
  if FormProjetos<>nil then
  FormMain.SetFields(FormProjetos,True);
end;

procedure TDM2.TBProjetosBeforeInsert(DataSet: TDataSet);
begin
  if FormProjetos<>nil then
  begin
    FormMain.SetFields(FormProjetos,True);
    FormProjetos.PageControl1.ActivePageIndex:=0;
    FormProjetos.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBProjetosBeforePost(DataSet: TDataSet);
begin
  TBProjetosPRJ_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProjetosPRJ_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProjetosPRJ_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProjetosStateChange(Sender: TObject);
begin
  if TBProjetos.State in [dsInsert, dsEdit] then
  begin
    if FormProjetos<>nil then
    begin
      FormProjetos.AlterarStatusDoProjetoPara1.Enabled:=False;
      FormProjetos.AlterarStatusDoProjetoPara1Button.Enabled:=False;
      FormProjetos.BaixarApresentacao1.Enabled:=False;
      FormProjetos.BaixarApresentacao1Button.Enabled:=False;
      FormProjetos.BaixarOrcamento1.Enabled:=False;
      FormProjetos.BaixarOrcamento1Button.Enabled:=False;
      FormProjetos.BaixarProjetoCAD1.Enabled:=False;
      FormProjetos.BaixarProjetoCAD1Button.Enabled:=False;
      FormProjetos.BaixarVisita1.Enabled:=False;
      FormProjetos.BaixarVisita1Button.Enabled:=False;
      FormProjetos.FichadoProjeto1.Enabled:=False;
      FormProjetos.Historico1.Enabled:=False;
      FormProjetos.Historico1Button.Enabled:=False;
      FormProjetos.Localizar1.Enabled:=False;
      FormProjetos.Localizar1Button.Enabled:=False;
      FormProjetos.ProjetosPorClienteEStatus1.Enabled:=False;
      FormProjetos.ProjetosPorArquitetoEStatus1.Enabled:=False;
      FormProjetos.ProjetosComProjetoCADEmAberto1.Enabled:=False;
      FormProjetos.ProjetosComVisitaEmAberto1.Enabled:=False;
      FormProjetos.ProjetosComOrcamentoEmAberto1.Enabled:=False;
      FormProjetos.ProjetosComApresentacaoEmAberto1.Enabled:=False;
      FormProjetos.ProjetosPorArquitetoEStatusComFases1.Enabled:=False;
      FormProjetos.ProjetosPorFase1.Enabled:=False;
      FormProjetos.Relatorios2.Enabled:=False;
      FormProjetos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProjetos<>nil then
    begin
      FormProjetos.AlterarStatusDoProjetoPara1.Enabled:=True;
      FormProjetos.AlterarStatusDoProjetoPara1Button.Enabled:=True;
      FormProjetos.BaixarApresentacao1.Enabled:=True;
      FormProjetos.BaixarApresentacao1Button.Enabled:=True;
      FormProjetos.BaixarOrcamento1.Enabled:=True;
      FormProjetos.BaixarOrcamento1Button.Enabled:=True;
      FormProjetos.BaixarProjetoCAD1.Enabled:=True;
      FormProjetos.BaixarProjetoCAD1Button.Enabled:=True;
      FormProjetos.BaixarVisita1.Enabled:=True;
      FormProjetos.BaixarVisita1Button.Enabled:=True;
      FormProjetos.FichadoProjeto1.Enabled:=True;
      FormProjetos.Historico1.Enabled:=True;
      FormProjetos.Historico1Button.Enabled:=True;
      FormProjetos.Localizar1.Enabled:=True;
      FormProjetos.Localizar1Button.Enabled:=True;
      FormProjetos.ProjetosPorClienteEStatus1.Enabled:=True;
      FormProjetos.ProjetosPorArquitetoEStatus1.Enabled:=True;
      FormProjetos.ProjetosComProjetoCADEmAberto1.Enabled:=True;
      FormProjetos.ProjetosComVisitaEmAberto1.Enabled:=True;
      FormProjetos.ProjetosComOrcamentoEmAberto1.Enabled:=True;
      FormProjetos.ProjetosComApresentacaoEmAberto1.Enabled:=True;
      FormProjetos.ProjetosPorArquitetoEStatusComFases1.Enabled:=True;
      FormProjetos.ProjetosPorFase1.Enabled:=True;
      FormProjetos.Relatorios2.Enabled:=True;
      FormProjetos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProjetos);
      FormMain.SetFields(FormProjetos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROJETOSFASES - FASES QUE O PROJETO PASSA.                                 //
//##############################################################################
{$REGION 'TABELA PROJETOSFASES'}
procedure TDM2.TBProjetosFasesAfterInsert(DataSet: TDataSet);
begin
  TBProjetosFasesPJF_PROJETO.Value:=TBProjetosPRJ_CODIGO.Value;
  TBProjetosFasesPJF_STATUS.Value:='A';
  TBProjetosFasesPJF_DTCADASTRO.Value:=DM.ServerDate;
  TBProjetosFasesPJF_DTINICIO.Value:=TBProjetosFasesPJF_DTCADASTRO.Value;
  TBProjetosFasesPJF_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBProjetosFasesBeforePost(DataSet: TDataSet);
begin
  TBProjetosFasesPJF_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProjetosFasesPJF_HRATUALIZACAO.Value:=DM.ServerTime;
end;

procedure TDM2.DSProjetosFasesStateChange(Sender: TObject);
begin
  if TBProjetos.State in [dsInsert, dsEdit] then
  begin
    if FormProjetos<>nil then
    begin
      FormProjetos.AlterarStatusDoProjetoPara1.Enabled:=False;
      FormProjetos.AlterarStatusDoProjetoPara1Button.Enabled:=False;
      FormProjetos.BaixarApresentacao1.Enabled:=False;
      FormProjetos.BaixarApresentacao1Button.Enabled:=False;
      FormProjetos.BaixarOrcamento1.Enabled:=False;
      FormProjetos.BaixarOrcamento1Button.Enabled:=False;
      FormProjetos.BaixarVisita1.Enabled:=False;
      FormProjetos.BaixarVisita1Button.Enabled:=False;
      FormProjetos.FichaDoProjeto1.Enabled:=False;
      FormProjetos.Historico1.Enabled:=False;
      FormProjetos.Historico1Button.Enabled:=False;
      FormProjetos.Localizar1.Enabled:=False;
      FormProjetos.Localizar1Button.Enabled:=False;
      FormProjetos.ProjetosComApresentacaoEmAberto1.Enabled:=False;
      FormProjetos.ProjetosComOrcamentoEmAberto1.Enabled:=False;
      FormProjetos.ProjetosComVisitaEmAberto1.Enabled:=False;
      FormProjetos.ProjetosPorArquitetoEStatus1.Enabled:=False;
      FormProjetos.ProjetosPorClienteEStatus1.Enabled:=False;
      FormProjetos.Relatorios2.Enabled:=False;
      FormProjetos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProjetos<>nil then
    begin
      FormProjetos.AlterarStatusDoProjetoPara1.Enabled:=True;
      FormProjetos.AlterarStatusDoProjetoPara1Button.Enabled:=True;
      FormProjetos.BaixarApresentacao1.Enabled:=True;
      FormProjetos.BaixarApresentacao1Button.Enabled:=True;
      FormProjetos.BaixarOrcamento1.Enabled:=True;
      FormProjetos.BaixarOrcamento1Button.Enabled:=True;
      FormProjetos.BaixarVisita1.Enabled:=True;
      FormProjetos.BaixarVisita1Button.Enabled:=True;
      FormProjetos.FichaDoProjeto1.Enabled:=True;
      FormProjetos.Historico1.Enabled:=True;
      FormProjetos.Historico1Button.Enabled:=True;
      FormProjetos.Localizar1.Enabled:=True;
      FormProjetos.Localizar1Button.Enabled:=True;
      FormProjetos.ProjetosComApresentacaoEmAberto1.Enabled:=True;
      FormProjetos.ProjetosComOrcamentoEmAberto1.Enabled:=True;
      FormProjetos.ProjetosComVisitaEmAberto1.Enabled:=True;
      FormProjetos.ProjetosPorArquitetoEStatus1.Enabled:=True;
      FormProjetos.ProjetosPorClienteEStatus1.Enabled:=True;
      FormProjetos.Relatorios2.Enabled:=True;
      FormProjetos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProjetos);
      FormMain.SetFields(FormProjetos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROJETOS HISTORICO                                                         //
//##############################################################################
{$REGION 'TABELA PROJETOSHISTORICO'}
procedure TDM2.TBProjetosHistoricoAfterInsert(DataSet: TDataSet);
begin
  TBProjetosHistoricoPJH_PROJETO.Value:=TBProjetosPRJ_CODIGO.Value;
  TBProjetosHistoricoPJH_DATA.Value:=DM.ServerDate;
  TBProjetosHistoricoPJH_DTCADASTRO.Value:=DM.ServerDate;
  TBProjetosHistoricoPJH_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBProjetosHistoricoBeforeEdit(DataSet: TDataSet);
begin
  if FormProjetosHistorico<>nil then
  FormMain.SetFields(FormProjetosHistorico,True);
end;

procedure TDM2.TBProjetosHistoricoBeforeInsert(DataSet: TDataSet);
begin
  if FormProjetosHistorico<>nil then
  begin
    FormMain.SetFields(FormProjetosHistorico,True);
    FormProjetosHistorico.DBEdit3.SetFocus;
  end;
end;

procedure TDM2.TBProjetosHistoricoBeforePost(DataSet: TDataSet);
begin
  TBProjetosHistoricoPJH_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProjetosHistoricoPJH_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProjetosHistoricoPJH_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProjetosHistoricoStateChange(Sender: TObject);
begin
  if TBProjetosHistorico.State in [dsInsert, dsEdit] then
  begin
    if FormProjetosHistorico<>nil then
    begin
      FormProjetosHistorico.Relatorios2.Enabled:=False;
      FormProjetosHistorico.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProjetosHistorico<>nil then
    begin
      FormProjetosHistorico.Relatorios2.Enabled:=True;
      FormProjetosHistorico.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProjetosHistorico);
      FormMain.SetFields(FormProjetosHistorico,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROJETOSITENS - ITENS QUE COMPOEM O PROJETO.                               //
//##############################################################################
{$REGION 'TABELA PROJETOSITENS'}
procedure TDM2.TBProjetosItensAfterInsert(DataSet: TDataSet);
begin
  TBProjetosItensPJI_PROJETO.Value:=TBProjetosPRJ_CODIGO.Value;
end;

procedure TDM2.TBProjetosItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisProjeto(True);
end;

procedure TDM2.TBProjetosItensBeforePost(DataSet: TDataSet);
begin
  TBProjetosItensPJI_VALORTOTAL.Value:=TBProjetosItensPJI_QUANTIDADE.Value*TBProjetosItensPJI_VALORUNIT.Value;
end;
{$ENDREGION}

//##############################################################################
// PROJETOSTIPOS                                                              //
//##############################################################################
{$REGION 'TABELA PROJETOSTIPOS'}
procedure TDM2.TBProjetosTiposAfterInsert(DataSet: TDataSet);
begin
  TBProjetosTiposPJT_DTCADASTRO.Value:=DM.ServerDate;
  TBProjetosTiposPJT_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBProjetosTiposBeforeEdit(DataSet: TDataSet);
begin
  if FormProjetosTipos<>nil then
  FormMain.SetFields(FormProjetosTipos,True);
end;

procedure TDM2.TBProjetosTiposBeforeInsert(DataSet: TDataSet);
begin
  if FormProjetosTipos<>nil then
  begin
    FormMain.SetFields(FormProjetosTipos,True);
    FormProjetosTipos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBProjetosTiposBeforePost(DataSet: TDataSet);
begin
  TBProjetosTiposPJT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProjetosTiposPJT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProjetosTiposPJT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProjetosTiposStateChange(Sender: TObject);
begin
  if TBProjetosTipos.State in [dsInsert, dsEdit] then
  begin
    if FormProjetosTipos<>nil then
    begin
      FormProjetosTipos.Localizar1.Enabled:=False;
      FormProjetosTipos.Localizar1Button.Enabled:=False;
      FormProjetosTipos.Relatorios2.Enabled:=False;
      FormProjetosTipos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormProjetosTipos<>nil then
    begin
      FormProjetosTipos.Localizar1.Enabled:=True;
      FormProjetosTipos.Localizar1Button.Enabled:=True;
      FormProjetosTipos.Relatorios2.Enabled:=True;
      FormProjetosTipos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProjetosTipos);
      FormMain.SetFields(FormProjetosTipos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PROMISSORIAS                                                               //
//##############################################################################
{$REGION 'TABELA PROMISSORIAS'}
procedure TDM2.TBPromissoriasAfterInsert(DataSet: TDataSet);
begin
  TBPromissoriasPRM_CEDENTE.Value:=DM.TBEmpresaEMP_NOME.Value;
  TBPromissoriasPRM_CEDENTEBAIRRO.Value:=DM.TBEmpresaEMP_BAIRRO.Value;
  TBPromissoriasPRM_CEDENTECEP.Value:=DM.TBEmpresaEMP_CEP.Value;
  TBPromissoriasPRM_CEDENTECNPJ.Value:=DM.TBEmpresaEMP_CNPJ.Value;
  TBPromissoriasPRM_CEDENTEENDERECO.Value:=DM.TBEmpresaEMP_ENDERECO.Value;
  TBPromissoriasPRM_CEDENTEFONE.Value:=DM.TBEmpresaEMP_FONE1.Value;
  TBPromissoriasPRM_CEDENTENUMERO.Value:=DM.TBEmpresaEMP_NUMERO.Value;
  TBPromissoriasPRM_DTCADASTRO.Value:=DM.ServerDate;
  TBPromissoriasPRM_DTVENCIMENTO.Value:=DM.ServerDate;
  TBPromissoriasPRM_HRCADASTRO.Value:=DM.ServerTime;
  TBPromissoriasPRM_MATRIZ.Value:='S';
  TBPromissoriasPRM_MULTIPLICADO.Value:='N';
  TBPromissoriasPRM_PARCELA.Value:=1;
  TBPromissoriasPRM_PARCELATOTAL.Value:=1;
  TBPromissoriasPRM_STATUS.Value:='A';
end;

procedure TDM2.TBPromissoriasBeforeEdit(DataSet: TDataSet);
begin
  if FormPromissorias<>nil then
  FormMain.SetFields(FormPromissorias,True);
end;

procedure TDM2.TBPromissoriasBeforeInsert(DataSet: TDataSet);
begin
  if FormPromissorias<>nil then
  begin
    FormMain.SetFields(FormPromissorias,True);
    FormPromissorias.DBEdit3.SetFocus;
  end;
end;

procedure TDM2.TBPromissoriasBeforePost(DataSet: TDataSet);
begin
  TBPromissoriasPRM_DTATUALIZACAO.Value:=DM.ServerDate;
  TBPromissoriasPRM_HRATUALIZACAO.Value:=DM.ServerTime;
  TBPromissoriasPRM_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSPromissoriasStateChange(Sender: TObject);
begin
  if TBPromissorias.State in [dsInsert, dsEdit] then
  begin
    if FormPromissorias<>nil then
    begin
      FormPromissorias.BaixarNota1.Enabled:=False;
      FormPromissorias.BaixarNota1Button.Enabled:=False;
      FormPromissorias.Imprimir1.Enabled:=False;
      FormPromissorias.Imprimir1Button.Enabled:=False;
      FormPromissorias.Localizar1.Enabled:=False;
      FormPromissorias.Localizar1Button.Enabled:=False;
      FormPromissorias.MultiplicarNota1.Enabled:=False;
      FormPromissorias.MultiplicarNota1Button.Enabled:=False;
    end;
  end else
  begin
    if FormPromissorias<>nil then
    begin
      FormPromissorias.BaixarNota1.Enabled:=True;
      FormPromissorias.BaixarNota1Button.Enabled:=True;
      FormPromissorias.Imprimir1.Enabled:=True;
      FormPromissorias.Imprimir1Button.Enabled:=True;
      FormPromissorias.Localizar1.Enabled:=True;
      FormPromissorias.Localizar1Button.Enabled:=True;
      FormPromissorias.MultiplicarNota1.Enabled:=True;
      FormPromissorias.MultiplicarNota1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormPromissorias);
      FormMain.SetFields(FormPromissorias,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// PRONTUARIOS                                                                //
//##############################################################################
{$REGION 'TABELA PRONTUARIOS'}
procedure TDM2.TBProntuariosAfterInsert(DataSet: TDataSet);
begin
  TBProntuariosPEP_DTATENDIMENTO.Value:=DM.ServerDate;
  TBProntuariosPEP_DTCADASTRO.Value:=DM.ServerDate;
  TBProntuariosPEP_HRCADASTRO.Value:=DM.ServerTime;
  TBProntuariosPEP_OBITO.Value:='N';
  TBProntuariosPEP_STATUS.Value:='A';
end;

procedure TDM2.TBProntuariosBeforeEdit(DataSet: TDataSet);
begin
  if FormProntuarios<>nil then
  FormMain.SetFields(FormProntuarios,True);
end;

procedure TDM2.TBProntuariosBeforeInsert(DataSet: TDataSet);
begin
  if FormProntuarios<>nil then
  begin
    FormMain.SetFields(FormProntuarios,True);
    FormProntuarios.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBProntuariosBeforePost(DataSet: TDataSet);
begin
  TBProntuariosPEP_DTATUALIZACAO.Value:=DM.ServerDate;
  TBProntuariosPEP_HRATUALIZACAO.Value:=DM.ServerTime;
  TBProntuariosPEP_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSProntuariosStateChange(Sender: TObject);
begin
  if TBProntuarios.State in [dsInsert, dsEdit] then
  begin
    if FormProntuarios<>nil then
    begin
      FormProntuarios.ArquivosDoProntuario1.Enabled:=False;
      FormProntuarios.ArquivosDoProntuario1Button.Enabled:=False;
      FormProntuarios.FinalizarProntuario1.Enabled:=False;
      FormProntuarios.FinalizarProntuario1Button.Enabled:=False;
      FormProntuarios.InformarObito1.Enabled:=False;
      FormProntuarios.InformarObito1Button.Enabled:=False;
      FormProntuarios.Localizar1.Enabled:=False;
      FormProntuarios.Localizar1Button.Enabled:=False;
      FormProntuarios.ReabrirProntuario1.Enabled:=False;
      FormProntuarios.ReabrirProntuario1Button.Enabled:=False;
      FormProntuarios.Relatorios2.Enabled:=False;
      FormProntuarios.Relatorios2Button.Enabled:=False;
      FormProntuarios.RemoverObito1.Enabled:=False;
      FormProntuarios.RemoverObito1Button.Enabled:=False;
    end;
  end else
  begin
    if FormProntuarios<>nil then
    begin
      FormProntuarios.ArquivosDoProntuario1.Enabled:=True;
      FormProntuarios.ArquivosDoProntuario1Button.Enabled:=True;
      FormProntuarios.FinalizarProntuario1.Enabled:=True;
      FormProntuarios.FinalizarProntuario1Button.Enabled:=True;
      FormProntuarios.InformarObito1.Enabled:=True;
      FormProntuarios.InformarObito1Button.Enabled:=True;
      FormProntuarios.Localizar1.Enabled:=True;
      FormProntuarios.Localizar1Button.Enabled:=True;
      FormProntuarios.ReabrirProntuario1.Enabled:=True;
      FormProntuarios.ReabrirProntuario1Button.Enabled:=True;
      FormProntuarios.Relatorios2.Enabled:=True;
      FormProntuarios.Relatorios2Button.Enabled:=True;
      FormProntuarios.RemoverObito1.Enabled:=True;
      FormProntuarios.RemoverObito1Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormProntuarios);
      FormMain.SetFields(FormProntuarios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// RECEITUARIOS                                                               //
//##############################################################################
{$REGION 'TABELA RECEITUARIOS'}
procedure TDM2.TBReceituariosAfterInsert(DataSet: TDataSet);
begin
  if DM.TBClientes.IsEmpty then
  begin
    MessageDlg('É necessário selecionar o cliente antes de inserir o receituário.',mtWarning,[mbOk],0);
    TBReceituarios.Cancel;
    Exit;
  end;
  TBReceituariosRCT_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBReceituariosRCT_DIA01.Value:='--';
  TBReceituariosRCT_DIA02.Value:='--';
  TBReceituariosRCT_DIA03.Value:='--';
  TBReceituariosRCT_DIA04.Value:='--';
  TBReceituariosRCT_DIA05.Value:='--';
  TBReceituariosRCT_DIA06.Value:='--';
  TBReceituariosRCT_DIA07.Value:='--';
  TBReceituariosRCT_DIA08.Value:='--';
  TBReceituariosRCT_DIA09.Value:='--';
  TBReceituariosRCT_DIA10.Value:='--';
  TBReceituariosRCT_DIA11.Value:='--';
  TBReceituariosRCT_DIA12.Value:='--';
  TBReceituariosRCT_DIA13.Value:='--';
  TBReceituariosRCT_DIA14.Value:='--';
  TBReceituariosRCT_DIA15.Value:='--';
  TBReceituariosRCT_DIA16.Value:='--';
  TBReceituariosRCT_DIA17.Value:='--';
  TBReceituariosRCT_DIA18.Value:='--';
  TBReceituariosRCT_DIA19.Value:='--';
  TBReceituariosRCT_DIA20.Value:='--';
  TBReceituariosRCT_DIA21.Value:='--';
  TBReceituariosRCT_DIA22.Value:='--';
  TBReceituariosRCT_DIA23.Value:='--';
  TBReceituariosRCT_DIA24.Value:='--';
  TBReceituariosRCT_DIA25.Value:='--';
  TBReceituariosRCT_DIA26.Value:='--';
  TBReceituariosRCT_DIA27.Value:='--';
  TBReceituariosRCT_DIA28.Value:='--';
  TBReceituariosRCT_DIA29.Value:='--';
  TBReceituariosRCT_DIA30.Value:='--';
  TBReceituariosRCT_DIA31.Value:='--';
  TBReceituariosRCT_DTCADASTRO.Value:=DM.ServerDate;
  TBReceituariosRCT_HRCADASTRO.Value:=DM.ServerTime;
  TBReceituariosRCT_ORDEM.Value:=1;
end;

procedure TDM2.TBReceituariosBeforeEdit(DataSet: TDataSet);
begin
  if FormReceituarios<>nil then
  FormMain.SetFields(FormReceituarios,True);
end;

procedure TDM2.TBReceituariosBeforeInsert(DataSet: TDataSet);
begin
  if DM.TBClientes.IsEmpty then
  begin
    Application.CreateForm(TFormClientesLoc, FormClientesLoc);
    FormClientesLoc.ShowModal;
    if ClientesLoc.Procurar then
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
      DM.TBClientes.Open;
    end;
    FormClientesLoc.Free;
    FormClientesLoc:=nil;
  end;
  if FormReceituarios<>nil then
  begin
    FormMain.SetFields(FormReceituarios,True);
    FormReceituarios.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBReceituariosBeforePost(DataSet: TDataSet);
begin
  TBReceituariosRCT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBReceituariosRCT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBReceituariosRCT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSReceituariosStateChange(Sender: TObject);
begin
  if TBReceituarios.State in [dsInsert, dsEdit] then
  begin
    if FormReceituarios<>nil then
    begin
      FormReceituarios.Localizar1.Enabled:=False;
      FormReceituarios.Localizar1Button.Enabled:=False;
      FormReceituarios.Relatorios2.Enabled:=False;
      FormReceituarios.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormReceituarios<>nil then
    begin
      FormReceituarios.Localizar1.Enabled:=True;
      FormReceituarios.Localizar1Button.Enabled:=True;
      FormReceituarios.Relatorios2.Enabled:=True;
      FormReceituarios.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormReceituarios);
      FormMain.SetFields(FormReceituarios,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// RECIBOS                                                                    //
//##############################################################################
{$REGION 'TABELA RECIBOS'}
procedure TDM2.TBRecibosAfterInsert(DataSet: TDataSet);
begin
  TBRecibosRCB_CBAIRRO.Value:=DM.TBEmpresaEMP_BAIRRO.Value;
  TBRecibosRCB_CCEP.Value:=DM.TBEmpresaEMP_CEP.Value;
  TBRecibosRCB_CCIDADE.Value:=DM.TBEmpresaEMP_CIDADE.Value;
  TBRecibosRCB_CCNPJCPF.Value:=DM.TBEmpresaEMP_CNPJ.Value;
  TBRecibosRCB_CENDERECO.Value:=DM.TBEmpresaEMP_ENDERECO.Value;
  TBRecibosRCB_CFONE1.Value:=DM.TBEmpresaEMP_FONE1.Value;
  TBRecibosRCB_CNOME.Value:=DM.TBEmpresaEMP_NOME.Value;
  TBRecibosRCB_CNUMERO.Value:=DM.TBEmpresaEMP_NUMERO.Value;
  TBRecibosRCB_DATA.Value:=DM.ServerDate;
  TBRecibosRCB_DTCADASTRO.Value:=DM.ServerDate;
  TBRecibosRCB_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBRecibosBeforeEdit(DataSet: TDataSet);
begin
  if FormRecibos<>nil then
  FormMain.SetFields(FormRecibos,True);
end;

procedure TDM2.TBRecibosBeforeInsert(DataSet: TDataSet);
begin
  if FormRecibos<>nil then
  begin
    FormMain.SetFields(FormRecibos,True);
    FormRecibos.DBEdit15.SetFocus;
  end;
end;

procedure TDM2.TBRecibosBeforePost(DataSet: TDataSet);
begin
  TBRecibosRCB_DTATUALIZACAO.Value:=DM.ServerDate;
  TBRecibosRCB_HRATUALIZACAO.Value:=DM.ServerTime;
  TBRecibosRCB_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSRecibosStateChange(Sender: TObject);
begin
  if TBRecibos.State in [dsInsert, dsEdit] then
  begin
    if FormRecibos<>nil then
    begin
      FormRecibos.EnviarPorEmail1.Enabled:=False;
      FormRecibos.EnviarPorEmail1Button.Enabled:=False;
      FormRecibos.ImprimirRecibo1.Enabled:=False;
      FormRecibos.ImprimirRecibo1Button.Enabled:=False;
      FormRecibos.InverterCedenteXSacado1.Enabled:=True;
      FormRecibos.InverterCedenteXSacado1Button.Enabled:=True;
      FormRecibos.Localizar1.Enabled:=False;
      FormRecibos.Localizar1Button.Enabled:=False;
      FormRecibos.LocalizarCedente1.Enabled:=True;
      FormRecibos.LocalizarCedente1Button.Enabled:=True;
      FormRecibos.LocalizarSacado1.Enabled:=True;
      FormRecibos.LocalizarSacado1Button.Enabled:=True;
      FormRecibos.RecibosEmitidosNoPeriodo1.Enabled:=False;
      FormRecibos.Relatorios1.Enabled:=False;
    end;
  end else
  begin
    if FormRecibos<>nil then
    begin
      FormRecibos.EnviarPorEmail1.Enabled:=True;
      FormRecibos.EnviarPorEmail1Button.Enabled:=True;
      FormRecibos.ImprimirRecibo1.Enabled:=True;
      FormRecibos.ImprimirRecibo1Button.Enabled:=True;
      FormRecibos.InverterCedenteXSacado1.Enabled:=False;
      FormRecibos.InverterCedenteXSacado1Button.Enabled:=False;
      FormRecibos.Localizar1.Enabled:=True;
      FormRecibos.Localizar1Button.Enabled:=True;
      FormRecibos.LocalizarCedente1.Enabled:=False;
      FormRecibos.LocalizarCedente1Button.Enabled:=False;
      FormRecibos.LocalizarSacado1.Enabled:=False;
      FormRecibos.LocalizarSacado1Button.Enabled:=False;
      FormRecibos.RecibosEmitidosNoPeriodo1.Enabled:=True;
      FormRecibos.Relatorios1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormRecibos);
      FormMain.SetFields(FormRecibos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// REMESSAS                                                                   //
//##############################################################################
{$REGION 'TABELA REMESSAS'}
procedure TDM2.TBRemessasAfterInsert(DataSet: TDataSet);
begin
  TBRemessasREM_DATA.Value:=DM.ServerDate;
  TBRemessasREM_USUARIO.Value:=DM.UsuarioLogin;
end;
{$ENDREGION}

//##############################################################################
// REMESSAS ITENS                                                             //
//##############################################################################
{$REGION 'TABELA REMESSASITENS'}
procedure TDM2.TBRemessasItensAfterInsert(DataSet: TDataSet);
begin
  TBRemessasItensRMI_REMESSA.Value:=TBRemessasREM_CODIGO.Value;
end;
{$ENDREGION}


//##############################################################################
// SEGUROS                                                                    //
//##############################################################################
{$REGION 'TABELA SEGUROS'}
procedure TDM2.TBSegurosAfterInsert(DataSet: TDataSet);
begin
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;

  DM.TBCondicoes.Close;
  DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_CONDICAOPADRAO.Value;
  DM.TBCondicoes.Open;

  TBSegurosSEG_COMISSAOVENDEDOR.Value:=DM.TBVendedoresVEN_COMISSAO.Value;
  TBSegurosSEG_CONDICAO.Value:=DM.TBParametrosPAR_CONDICAOPADRAO.Value;
  TBSegurosSEG_DIAPREFERENCIAL.Value:=0;
  TBSegurosSEG_DTCADASTRO.Value:=DM.ServerDate;
  TBSegurosSEG_DTEMISSAO.Value:=DM.ServerDate;
  TBSegurosSEG_DTINICIO.Value:=DM.ServerDate;
  TBSegurosSEG_HRCADASTRO.Value:=DM.ServerTime;
  TBSegurosSEG_ORIGEM.Value:='N'; //N=Nova Proposta - R=Renovação.
  TBSegurosSEG_STATUS.Value:='P'; //P=Proposta - I=Inutilizada - A=Apolice - C=Cancelada.
  if not DM.TBClientes.IsEmpty then
  begin
    TBSegurosSEG_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
    TBSegurosCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  end;
  TBSegurosSEG_VALORADICIONAL.Value:=0;
  TBSegurosSEG_VALORCOMISSAO.Value:=0;
  TBSegurosSEG_VALORCOMISSAOVENDEDOR.Value:=0;
  TBSegurosSEG_VALORFRANQUIA.Value:=0;
  TBSegurosSEG_VALORIOF.Value:=0;
  TBSegurosSEG_VALORIOFPORC.Value:=0;
  TBSegurosSEG_VALORPREMIO.Value:=0;
  TBSegurosSEG_VALORTOTAL.Value:=0;
  TBSegurosSEG_VENDEDOR.Value:=DM.UsuarioVendedor;

  TBSegurosCPG_DESCRICAO.Value:=DM.TBCondicoesCPG_DESCRICAO.Value;
  TBSegurosVEN_NOME.Value:=DM.TBVendedoresVEN_NOME.Value;
end;

procedure TDM2.TBSegurosBeforeEdit(DataSet: TDataSet);
begin
  if FormSeguros<>nil then
  FormMain.SetFields(FormSeguros,True);
end;

procedure TDM2.TBSegurosBeforeInsert(DataSet: TDataSet);
begin
  if FormSeguros<>nil then
  begin
    FormMain.SetFields(FormSeguros,True);
    FormSeguros.DBEdit3.SetFocus;
  end;
end;

procedure TDM2.TBSegurosBeforePost(DataSet: TDataSet);
begin
  TBSegurosSEG_DTATUALIZACAO.Value:=DM.ServerDate;
  TBSegurosSEG_HRATUALIZACAO.Value:=DM.ServerTime;
  TBSegurosSEG_USUARIO.Value:=DM.UsuarioLogin;
  TBSegurosSEG_VALORIOF.Value:=Decimais((TBSegurosSEG_VALORPREMIO.AsExtended / 100.00) * TBSegurosSEG_VALORIOFPORC.AsExtended,2);
  TBSegurosSEG_VALORTOTAL.Value:=Decimais(TBSegurosSEG_VALORPREMIO.AsExtended + TBSegurosSEG_VALORADICIONAL.AsExtended + TBSegurosSEG_VALORIOF.AsExtended,2);
  TBSegurosSEG_VALORCOMISSAO.Value:=Decimais(((TBSegurosSEG_VALORPREMIO.AsExtended + TBSegurosSEG_VALORADICIONAL.AsExtended) / 100.00) * TBSegurosSEG_COMISSAO.AsExtended,2);
  TBSegurosSEG_VALORCOMISSAOVENDEDOR.Value:=Decimais((TBSegurosSEG_VALORCOMISSAO.AsExtended / 100.00) * TBSegurosSEG_COMISSAOVENDEDOR.AsExtended,2);
end;

procedure TDM2.DSSegurosStateChange(Sender: TObject);
begin
  if TBSeguros.State in [dsInsert, dsEdit] then
  begin
    if FormSeguros<>nil then
    begin
      FormSeguros.Anexos1.Enabled:=False;
      FormSeguros.Anexos1Button.Enabled:=False;
      FormSeguros.BaixarParcelas1.Enabled:=False;
      FormSeguros.BaixarParcelas1Button.Enabled:=False;
      FormSeguros.Cancelar1.Enabled:=False;
      FormSeguros.Cancelar1Button.Enabled:=False;
      FormSeguros.ComissoesNoPeriodo1.Enabled:=False;
      FormSeguros.EditarParcela1Button.Enabled:=False;
      FormSeguros.Finalizar1.Enabled:=False;
      FormSeguros.Finalizar1Button.Enabled:=False;
      FormSeguros.GerarParcelas1Button.Enabled:=False;
      FormSeguros.InserirEndosso1.Enabled:=False;
      FormSeguros.InserirEndosso1Button.Enabled:=False;
      FormSeguros.Inutilizar1.Enabled:=False;
      FormSeguros.Inutilizar1Button.Enabled:=False;
      FormSeguros.Localizar1.Enabled:=False;
      FormSeguros.Localizar1Button.Enabled:=False;
      FormSeguros.PngSpeedButton5.Enabled:=False;
      FormSeguros.Relatorios2.Enabled:=False;
      FormSeguros.Relatorios2Button.Enabled:=False;
      FormSeguros.SegurosNoPeriodo1.Enabled:=False;
      FormSeguros.SegurosPorSeguradora1.Enabled:=False;
      FormSeguros.SegurosPorVendedor1.Enabled:=False;
    end;
  end else
  begin
    if FormSeguros<>nil then
    begin
      FormSeguros.Anexos1.Enabled:=True;
      FormSeguros.Anexos1Button.Enabled:=True;
      FormSeguros.BaixarParcelas1.Enabled:=True;
      FormSeguros.BaixarParcelas1Button.Enabled:=True;
      FormSeguros.Cancelar1.Enabled:=True;
      FormSeguros.Cancelar1Button.Enabled:=True;
      FormSeguros.ComissoesNoPeriodo1.Enabled:=True;
      FormSeguros.EditarParcela1Button.Enabled:=True;
      FormSeguros.Finalizar1.Enabled:=True;
      FormSeguros.Finalizar1Button.Enabled:=True;
      FormSeguros.GerarParcelas1Button.Enabled:=True;
      FormSeguros.InserirEndosso1.Enabled:=True;
      FormSeguros.InserirEndosso1Button.Enabled:=True;
      FormSeguros.Inutilizar1.Enabled:=True;
      FormSeguros.Inutilizar1Button.Enabled:=True;
      FormSeguros.Localizar1.Enabled:=True;
      FormSeguros.Localizar1Button.Enabled:=True;
      FormSeguros.PngSpeedButton5.Enabled:=True;
      FormSeguros.Relatorios2.Enabled:=True;
      FormSeguros.Relatorios2Button.Enabled:=True;
      FormSeguros.SegurosNoPeriodo1.Enabled:=True;
      FormSeguros.SegurosPorSeguradora1.Enabled:=True;
      FormSeguros.SegurosPorVendedor1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormSeguros);
      FormMain.SetFields(FormSeguros,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// SEGUROS ENDOSSOS                                                           //
//##############################################################################
{$REGION 'TABELA SEGUROSENDOSSOS'}
procedure TDM2.TBSegurosEndossosAfterInsert(DataSet: TDataSet);
begin
  TBSegurosEndossosSGE_SEGURO.Value:=TBSegurosSEG_CODIGO.Value;
end;
{$ENDREGION}

//##############################################################################
// SEGUROS - PARCELAS                                                         //
//##############################################################################
{$REGION 'TABELA SEGUROSPARCELAS'}
procedure TDM2.TBSegurosParcelasAfterInsert(DataSet: TDataSet);
begin
  TBSegurosParcelasSGP_DTCADASTRO.Value:=DM.ServerDate;
  TBSegurosParcelasSGP_HRCADASTRO.Value:=DM.ServerTime;
  TBSegurosParcelasSGP_SEGURO.Value:=TBSegurosSEG_CODIGO.Value;
  TBSegurosParcelasSGP_STATUS.Value:='A';
  TBSegurosParcelasSGP_VALOR.Value:=0;
end;

procedure TDM2.TBSegurosParcelasBeforePost(DataSet: TDataSet);
begin
  TBSegurosParcelasSGP_DTATUALIZACAO.Value:=DM.ServerDate;
  TBSegurosParcelasSGP_HRATUALIZACAO.Value:=DM.ServerTime;
  TBSegurosParcelasSGP_USUARIO.Value:=DM.UsuarioLogin;
end;
{$ENDREGION}

//##############################################################################
// SEGUROS - TIPOS                                                            //
//##############################################################################
{$REGION 'TABELA SEGUROSTIPOS'}
procedure TDM2.TBSegurosTiposAfterInsert(DataSet: TDataSet);
begin
  TBSegurosTiposSGT_DTCADASTRO.Value:=DM.ServerDate;
  TBSegurosTiposSGT_HRCADASTRO.Value:=DM.ServerTime;
  TBSegurosTiposSGT_STATUS.Value:='A';
end;

procedure TDM2.TBSegurosTiposBeforeEdit(DataSet: TDataSet);
begin
  if FormSegurosTipos<>nil then
  FormMain.SetFields(FormSegurosTipos,True);
end;

procedure TDM2.TBSegurosTiposBeforeInsert(DataSet: TDataSet);
begin
  if FormSegurosTipos<>nil then
  begin
    FormMain.SetFields(FormSegurosTipos,True);
    FormSegurosTipos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBSegurosTiposBeforePost(DataSet: TDataSet);
begin
  TBSegurosTiposSGT_DTATUALIZACAO.Value:=DM.ServerDate;
  TBSegurosTiposSGT_HRATUALIZACAO.Value:=DM.ServerTime;
  TBSegurosTiposSGT_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSSegurosTiposStateChange(Sender: TObject);
begin
  if TBSegurosTipos.State in [dsInsert, dsEdit] then
  begin
    if FormSegurosTipos<>nil then
    begin
      FormSegurosTipos.Localizar1.Enabled:=False;
      FormSegurosTipos.Localizar1Button.Enabled:=False;
      FormSegurosTipos.Relatorios2.Enabled:=False;
      FormSegurosTipos.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormSegurosTipos<>nil then
    begin
      FormSegurosTipos.Localizar1.Enabled:=True;
      FormSegurosTipos.Localizar1Button.Enabled:=True;
      FormSegurosTipos.Relatorios2.Enabled:=True;
      FormSegurosTipos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormSegurosTipos);
      FormMain.SetFields(FormSegurosTipos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// SQLs DE CONSULTAS                                                          //
//##############################################################################
//nada

//##############################################################################
// TELEVENDAS                                                                 //
//##############################################################################
{$REGION 'TABELA TELEVENDAS'}
procedure TDM2.TBTelevendasAfterEdit(DataSet: TDataSet);
begin
  if TBTeleVendasTEV_STATUS.Value='B' then
  begin
    MessageDlg('Não é possível alterar um atendimento baixado.',mtWarning,[mbOk],0);
    TBTeleVendas.Cancel;
  end;
  //verifica se o contato selecionado é do televendas (usuario=televenda).
  if (TBTeleVendasTEV_VENDEDOR.Value<>DM.TBUsuariosUSU_VENDEDOR.Value) and (DM.TBUsuariosUSU_VENDEDOR.Value<>0) then
  begin
    MessageDlg('Impossível alterar o atendimento de outro televenda.',mtError,[mbOk],0);
    TBTeleVendas.Cancel;
  end;
end;

procedure TDM2.TBTelevendasAfterInsert(DataSet: TDataSet);
begin
  if DM.TBClientes.IsEmpty then
  begin
    MessageDlg('Deve-se selecionar um cliente.',mtError,[mbOk],0);
    TBTeleVendas.Cancel;
    Exit;
  end;
  TBTeleVendasTEV_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBTeleVendasTEV_DATA.Value:=DM.ServerDate;
  TBTeleVendasTEV_DTCADASTRO.Value:=DM.ServerDate;
  TBTeleVendasTEV_HRCADASTRO.Value:=DM.ServerDate;
  TBTeleVendasTEV_REAGENDADO.Value:='N';
  TBTeleVendasTEV_STATUS.Value:='A';
  TBTeleVendasTEV_VENDEDOR.Value:=DM.UsuarioVendedor;

  //calcula a data do próximo contato. - se sábado ou domingo, joga pra segunda.
  if (DayOfWeek(Date+DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value)=1) then
  TBTeleVendasTEV_DATAPROX.Value:=Date+DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value+1 else //Domingo.
  if (DayOfWeek(Date+DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value)=7) then
  TBTeleVendasTEV_DATAPROX.Value:=Date+DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value+2 else //Sábado.
  TBTeleVendasTEV_DATAPROX.Value:=Date+DM.TBParametrosPAR_TELEVENDAPROXCONTATO.Value;
end;

procedure TDM2.TBTelevendasBeforeEdit(DataSet: TDataSet);
begin
  if FormTeleVendas<>nil then
  FormMain.SetFields(FormTeleVendas,True);
end;

procedure TDM2.TBTelevendasBeforeInsert(DataSet: TDataSet);
begin
  if FormTeleVendas<>nil then
  begin
    FormMain.SetFields(FormTeleVendas,True);
    FormTeleVendas.DBEdit1.SetFocus;
  end;
  //localiza o cliente desejado antes de começar a inserção.
  Application.CreateForm(TFormClientesLoc, FormClientesLoc);
  FormClientesLoc.ShowModal;
  if ClientesLoc.Procurar then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=FormClientesLoc.QYClientesCLI_CODIGO.Value;
    DM.TBClientes.Open;
  end;
  FormClientesLoc.Free;
  FormClientesLoc:=nil;
end;

procedure TDM2.TBTelevendasBeforePost(DataSet: TDataSet);
begin
  TBTeleVendasTEV_DTATUALIZACAO.Value:=DM.ServerDate;
  TBTeleVendasTEV_HRATUALIZACAO.Value:=DM.ServerTime;
  if TBTeleVendasTEV_TEMPERATURA.Value='01 - SUPER QUENTE' then TBTeleVendasTEV_TEMPERATURADATA.Value:=TBTeleVendasTEV_DTCADASTRO.Value+DM.TBParametrosPAR_TEMPERATURA1.Value;
  if TBTeleVendasTEV_TEMPERATURA.Value='02 - QUENTE'       then TBTeleVendasTEV_TEMPERATURADATA.Value:=TBTeleVendasTEV_DTCADASTRO.Value+DM.TBParametrosPAR_TEMPERATURA2.Value;
  if TBTeleVendasTEV_TEMPERATURA.Value='03 - MORNO'        then TBTeleVendasTEV_TEMPERATURADATA.Value:=TBTeleVendasTEV_DTCADASTRO.Value+DM.TBParametrosPAR_TEMPERATURA3.Value;
  if TBTeleVendasTEV_TEMPERATURA.Value='04 - FRIO'         then TBTeleVendasTEV_TEMPERATURADATA.Value:=TBTeleVendasTEV_DTCADASTRO.Value+DM.TBParametrosPAR_TEMPERATURA4.Value;
  if TBTeleVendasTEV_TEMPERATURA.Value='05 - SUPER FRIO'   then TBTeleVendasTEV_TEMPERATURADATA.Value:=TBTeleVendasTEV_DTCADASTRO.Value+DM.TBParametrosPAR_TEMPERATURA5.Value;
  TBTeleVendasTEV_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSTeleVendasDataChange(Sender: TObject; Field: TField);
begin
  if FormTeleVendas<>nil then
  begin
    FormTeleVendas.QYLigacoesDia.Close;
    FormTeleVendas.QYLigacoesDia.ParamByName('data').AsDate:=TBTeleVendasTEV_DATAPROX.Value;
    FormTeleVendas.QYLigacoesDia.ParamByName('vendedor').AsInteger:=TBTeleVendasTEV_VENDEDOR.Value;
    FormTeleVendas.QYLigacoesDia.Open;
    FormTeleVendas.StatusBar1.Panels[1].Text:='Quantidade de ligações para '+DateToStr(TBTeleVendasTEV_DATAPROX.Value,FS)+': '+IntToStr(FormTeleVendas.QYLigacoesDiaTOTALLIGACOES.Value);

    FormTeleVendas.QYReceber.Close;
    FormTeleVendas.QYReceber.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
    FormTeleVendas.QYReceber.Open;

    FormTeleVendas.QYFixa.Close;
    FormTeleVendas.QYFixa.ParamByName('cliente').AsInteger:=DM.TBClientesCLI_CODIGO.Value;
    FormTeleVendas.QYFixa.Open;
  end;
end;

procedure TDM2.DSTeleVendasStateChange(Sender: TObject);
begin
  if TBTeleVendas.State in [dsInsert, dsEdit] then
  begin
    if FormTeleVendas<>nil then
    begin
      FormTeleVendas.Agenda1.Enabled:=False;
      FormTeleVendas.Agenda1Button.Enabled:=False;
      FormTeleVendas.Atendimentos1.Enabled:=False;
      FormTeleVendas.Atendimentos1Button.Enabled:=False;
      FormTeleVendas.AtendimentosPorVendedor1.Enabled:=False;
      FormTeleVendas.AtendimentosPorVendedorETemperatura1.Enabled:=False;
      FormTeleVendas.AtendimentosPorViaDeContato1.Enabled:=False;
      FormTeleVendas.BaixarAtendimento1.Enabled:=False;
      FormTeleVendas.BaixarAtendimento1Button.Enabled:=False;
      FormTeleVendas.CadastroDeClientes1.Enabled:=False;
      FormTeleVendas.CadastroDeClientes1Button.Enabled:=False;
      FormTeleVendas.ClientesNuncaAgendados1.Enabled:=False;
      FormTeleVendas.ClientesSemAgendamento1.Enabled:=False;
      FormTeleVendas.Estatisticas1.Enabled:=False;
      FormTeleVendas.Localizar1.Enabled:=False;
      FormTeleVendas.Localizar1Button.Enabled:=False;
      FormTeleVendas.Relatorios2.Enabled:=False;
      FormTeleVendas.Relatorios2Button.Enabled:=False;
      FormTeleVendas.ReabrirAtendimento1.Enabled:=False;
      FormTeleVendas.ReabrirAtendimento1Button.Enabled:=False;
      FormTeleVendas.TransferirAtendimentoParaOutroTelevenda1.Enabled:=False;
      FormTeleVendas.DBGrid1.Enabled:=False;
    end;
  end else
  begin
    if FormTeleVendas<>nil then
    begin
      FormTeleVendas.Agenda1.Enabled:=True;
      FormTeleVendas.Agenda1Button.Enabled:=True;
      FormTeleVendas.Atendimentos1.Enabled:=True;
      FormTeleVendas.Atendimentos1Button.Enabled:=True;
      FormTeleVendas.AtendimentosPorVendedor1.Enabled:=True;
      FormTeleVendas.AtendimentosPorVendedorETemperatura1.Enabled:=True;
      FormTeleVendas.AtendimentosPorViaDeContato1.Enabled:=True;
      FormTeleVendas.BaixarAtendimento1.Enabled:=True;
      FormTeleVendas.BaixarAtendimento1Button.Enabled:=True;
      FormTeleVendas.CadastroDeClientes1.Enabled:=True;
      FormTeleVendas.CadastroDeClientes1Button.Enabled:=True;
      FormTeleVendas.ClientesNuncaAgendados1.Enabled:=True;
      FormTeleVendas.ClientesSemAgendamento1.Enabled:=True;
      FormTeleVendas.Estatisticas1.Enabled:=True;
      FormTeleVendas.Localizar1.Enabled:=True;
      FormTeleVendas.Localizar1Button.Enabled:=True;
      FormTeleVendas.Relatorios2.Enabled:=True;
      FormTeleVendas.Relatorios2Button.Enabled:=True;
      FormTeleVendas.ReabrirAtendimento1.Enabled:=True;
      FormTeleVendas.ReabrirAtendimento1Button.Enabled:=True;
      FormTeleVendas.TransferirAtendimentoParaOutroTelevenda1.Enabled:=True;
      FormTeleVendas.DBGrid1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormTeleVendas);
      FormMain.SetFields(FormTeleVendas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// TURMAS                                                                     //
//##############################################################################
{$REGION 'TABELA TURMAS'}
procedure TDM2.TBTurmasAfterInsert(DataSet: TDataSet);
var D,M,A: Word;
begin
  DecodeDate(Date,A,M,D);
  TBTurmasTUR_ANO.Value:=IntToStr(A);
  TBTurmasTUR_DTCADASTRO.Value:=DM.ServerDate;
  TBTurmasTUR_DTINICIO.Value:=TBTurmasTUR_DTCADASTRO.Value;
  TBTurmasTUR_ENCONTROS.Value:=0;
  TBTurmasTUR_HRCADASTRO.Value:=DM.ServerTime;
  TBTurmasTUR_STATUS.Value:='A';
  TBTurmasTUR_SEGUNDA.Value:='N';
  TBTurmasTUR_TERCA.Value:='N';
  TBTurmasTUR_QUARTA.Value:='N';
  TBTurmasTUR_QUINTA.Value:='N';
  TBTurmasTUR_SEXTA.Value:='N';
  TBTurmasTUR_SABADO.Value:='N';
  TBTurmasTUR_DOMINGO.Value:='N';
  TBTurmasTUR_SEGUNDAVEZES.Value:=0;
  TBTurmasTUR_TERCAVEZES.Value:=0;
  TBTurmasTUR_QUARTAVEZES.Value:=0;
  TBTurmasTUR_QUINTAVEZES.Value:=0;
  TBTurmasTUR_SEXTAVEZES.Value:=0;
  TBTurmasTUR_SABADOVEZES.Value:=0;
  TBTurmasTUR_DOMINGOVEZES.Value:=0;
  TBTurmasTUR_HORAAULA.Value:=StrToTime(DM.TBParametrosPAR_HORAAULA.Value);
end;

procedure TDM2.TBTurmasBeforeEdit(DataSet: TDataSet);
begin
  if FormTurmas<>nil then
  FormMain.SetFields(FormTurmas,True);
end;

procedure TDM2.TBTurmasBeforeInsert(DataSet: TDataSet);
begin
  if FormTurmas<>nil then
  begin
    FormMain.SetFields(FormTurmas,True);
    FormTurmas.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBTurmasBeforePost(DataSet: TDataSet);
begin
  TBTurmasTUR_DTATUALIZACAO.Value:=DM.ServerDate;
  TBTurmasTUR_HRATUALIZACAO.Value:=DM.ServerTime;
  TBTurmasTUR_HORAAULAMIN.Value:=HourToMin(TimeToStr(TBTurmasTUR_HORAAULA.Value));
  TBTurmasTUR_CARGAHORARIA.Value:=MinToHour(TBTurmasTUR_ENCONTROS.Value*TBTurmasTUR_HORAAULAMIN.Value);
  TBTurmasTUR_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSTurmasStateChange(Sender: TObject);
begin
  if TBTurmas.State in [dsInsert, dsEdit] then
  begin
    if FormTurmas<>nil then
    begin
      FormTurmas.AjustarListaDeChamada1.Enabled:=False;
      FormTurmas.AlterarData1.Enabled:=False;
      FormTurmas.AlterarData1Button.Enabled:=False;
      FormTurmas.AlunosMatriculadosNestaTurma1.Enabled:=False;
      FormTurmas.AlunosMatriculadosNestaTurma1Button.Enabled:=False;
      FormTurmas.BaixarTurma1.Enabled:=False;
      FormTurmas.BaixarTurma1Button.Enabled:=False;
      FormTurmas.CadastroDeChamadas1.Enabled:=False;
      FormTurmas.CadastroDeChamadas1Button.Enabled:=False;
      FormTurmas.CadastroDeConteudos1.Enabled:=False;
      FormTurmas.CadastroDeConteudos1Button.Enabled:=False;
      FormTurmas.CadastroDeFeriados1.Enabled:=False;
      FormTurmas.CadastroDeFeriados1Button.Enabled:=False;
      FormTurmas.EliminarData1.Enabled:=False;
      FormTurmas.EliminarData1Button.Enabled:=False;
      FormTurmas.FichaDeChamada1.Enabled:=False;
      FormTurmas.FichaDeChamadaPreenchida1.Enabled:=False;
      FormTurmas.GerarCalendario1.Enabled:=False;
      FormTurmas.GerarCalendario1Button.Enabled:=False;
      FormTurmas.InserirData1.Enabled:=False;
      FormTurmas.InserirData1Button.Enabled:=False;
      FormTurmas.InserirNotasDeAvaliacoesParaEstaTurma1.Enabled:=False;
      FormTurmas.InserirNotasDeAvaliacoesParaEstaTurma1Button.Enabled:=False;
      FormTurmas.InserirNotasDeExerciciosParaEstaTurma1.Enabled:=False;
      FormTurmas.InserirNotasDeExerciciosParaEstaTurma1Button.Enabled:=False;
      FormTurmas.Localizar1.Enabled:=False;
      FormTurmas.Localizar1Button.Enabled:=False;
      FormTurmas.PlanilhaDeNotas1.Enabled:=False;
      FormTurmas.PlanilhaDeNotasPreenchida1.Enabled:=False;
      FormTurmas.PorVendedorEStatusDataCadastro1.Enabled:=False;
      FormTurmas.PorVendedorEStatusDataInicio1.Enabled:=False;
      FormTurmas.PorVendedorPeriodoEStatusDataCadastro1.Enabled:=False;
      FormTurmas.PorVendedorPeriodoEStatusDataInicio1.Enabled:=False;
      FormTurmas.ReabrirTurma1.Enabled:=False;
      FormTurmas.ReabrirTurma1Button.Enabled:=False;
      FormTurmas.RelatorioDeConteudos1.Enabled:=False;
      FormTurmas.RelatorioDeFrequencia1.Enabled:=False;
      FormTurmas.Relatorios2.Enabled:=False;
      FormTurmas.Relatorios2Button.Enabled:=False;
      FormTurmas.TurmasSemCalendarioDefinido1.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormTurmas<>nil then
    begin
      FormTurmas.AjustarListaDeChamada1.Enabled:=True;
      FormTurmas.AlterarData1.Enabled:=True;
      FormTurmas.AlterarData1Button.Enabled:=True;
      FormTurmas.AlunosMatriculadosNestaTurma1.Enabled:=True;
      FormTurmas.AlunosMatriculadosNestaTurma1Button.Enabled:=True;
      FormTurmas.BaixarTurma1.Enabled:=True;
      FormTurmas.BaixarTurma1Button.Enabled:=True;
      FormTurmas.CadastroDeChamadas1.Enabled:=True;
      FormTurmas.CadastroDeChamadas1Button.Enabled:=True;
      FormTurmas.CadastroDeConteudos1.Enabled:=True;
      FormTurmas.CadastroDeConteudos1Button.Enabled:=True;
      FormTurmas.CadastroDeFeriados1.Enabled:=True;
      FormTurmas.CadastroDeFeriados1Button.Enabled:=True;
      FormTurmas.EliminarData1.Enabled:=True;
      FormTurmas.EliminarData1Button.Enabled:=True;
      FormTurmas.FichaDeChamada1.Enabled:=True;
      FormTurmas.FichaDeChamadaPreenchida1.Enabled:=True;
      FormTurmas.GerarCalendario1.Enabled:=True;
      FormTurmas.GerarCalendario1Button.Enabled:=True;
      FormTurmas.InserirData1.Enabled:=True;
      FormTurmas.InserirData1Button.Enabled:=True;
      FormTurmas.InserirNotasDeAvaliacoesParaEstaTurma1.Enabled:=True;
      FormTurmas.InserirNotasDeAvaliacoesParaEstaTurma1Button.Enabled:=True;
      FormTurmas.InserirNotasDeExerciciosParaEstaTurma1.Enabled:=True;
      FormTurmas.InserirNotasDeExerciciosParaEstaTurma1Button.Enabled:=True;
      FormTurmas.Localizar1.Enabled:=True;
      FormTurmas.Localizar1Button.Enabled:=True;
      FormTurmas.PlanilhaDeNotas1.Enabled:=True;
      FormTurmas.PlanilhaDeNotasPreenchida1.Enabled:=True;
      FormTurmas.PorVendedorEStatusDataCadastro1.Enabled:=True;
      FormTurmas.PorVendedorEStatusDataInicio1.Enabled:=True;
      FormTurmas.PorVendedorPeriodoEStatusDataCadastro1.Enabled:=True;
      FormTurmas.PorVendedorPeriodoEStatusDataInicio1.Enabled:=True;
      FormTurmas.ReabrirTurma1.Enabled:=True;
      FormTurmas.ReabrirTurma1Button.Enabled:=True;
      FormTurmas.RelatorioDeConteudos1.Enabled:=True;
      FormTurmas.RelatorioDeFrequencia1.Enabled:=True;
      FormTurmas.Relatorios2.Enabled:=True;
      FormTurmas.Relatorios2Button.Enabled:=True;
      FormTurmas.TurmasSemCalendarioDefinido1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormTurmas);
      FormMain.SetFields(FormTurmas,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// UNIDADES                                                                  //
//##############################################################################
{$REGION 'TABELA UNIDADES'}
procedure TDM2.TBUnidadesAfterInsert(DataSet: TDataSet);
begin
  TBUnidadesUNI_ATUALIZAR.Value:='S';
  TBUnidadesUNI_DTCADASTRO.Value:=DM.ServerDate;
  TBUnidadesUNI_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBUnidadesBeforeEdit(DataSet: TDataSet);
begin
  if FormUnidades<>nil then
  FormMain.SetFields(FormUnidades,True);
end;

procedure TDM2.TBUnidadesBeforeInsert(DataSet: TDataSet);
begin
  if FormUnidades<>nil then
  begin
    FormMain.SetFields(FormUnidades,True);
    FormUnidades.DBEdit1.SetFocus;
  end;
end;

procedure TDM2.TBUnidadesBeforePost(DataSet: TDataSet);
begin
  TBUnidadesUNI_ATUALIZAR.Value:='S';
  TBUnidadesUNI_DTATUALIZACAO.Value:=DM.ServerDate;
  TBUnidadesUNI_HRATUALIZACAO.Value:=DM.ServerTime;
  TBUnidadesUNI_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSUnidadesStateChange(Sender: TObject);
begin
  if TBUnidades.State in [dsInsert, dsEdit] then
  begin
    if FormUnidades<>nil then
    begin
      FormUnidades.Localizar1.Enabled:=False;
      FormUnidades.Localizar1Button.Enabled:=False;
      FormUnidades.Relatorios2.Enabled:=False;
      FormUnidades.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormUnidades<>nil then
    begin
      FormUnidades.Localizar1.Enabled:=True;
      FormUnidades.Localizar1Button.Enabled:=True;
      FormUnidades.Relatorios2.Enabled:=True;
      FormUnidades.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormUnidades);
      FormMain.SetFields(FormUnidades,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VEICULOS                                                                   //
//##############################################################################
{$REGION 'TABELA VEICULOS'}
procedure TDM2.TBVeiculosAfterInsert(DataSet: TDataSet);
begin
  TBVeiculosVEL_STATUS.Value:='A';
  TBVeiculosVEL_DTCADASTRO.Value:=DM.ServerDate;
  TBVeiculosVEL_HRCADASTRO.Value:=DM.ServerTime;
end;

procedure TDM2.TBVeiculosBeforeEdit(DataSet: TDataSet);
begin
  if FormVeiculos<>nil then
  FormMain.SetFields(FormVeiculos,True);
end;

procedure TDM2.TBVeiculosBeforeInsert(DataSet: TDataSet);
begin
  if FormVeiculos<>nil then
  begin
    FormMain.SetFields(FormVeiculos,True);
    FormVeiculos.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBVeiculosBeforePost(DataSet: TDataSet);
begin
  TBVeiculosVEL_DTATUALIZACAO.Value:=DM.ServerDate;
  TBVeiculosVEL_HRATUALIZACAO.Value:=DM.ServerTime;
  TBVeiculosVEL_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSVeiculosStateChange(Sender: TObject);
begin
  if TBVeiculos.State in [dsInsert, dsEdit] then
  begin
    if FormVeiculos<>nil then
    begin
      FormVeiculos.Localizar1.Enabled:=False;
      FormVeiculos.Localizar1Button.Enabled:=False;
      FormVeiculos.Relatorios2.Enabled:=False;
      FormVeiculos.Relatorios2Button.Enabled:=False;
      //...
    end;
  end else
  begin
    if FormVeiculos<>nil then
    begin
      FormVeiculos.Localizar1.Enabled:=True;
      FormVeiculos.Localizar1Button.Enabled:=True;
      FormVeiculos.Relatorios2.Enabled:=True;
      FormVeiculos.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVeiculos);
      FormMain.SetFields(FormVeiculos,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VEICULOS DE CLIENTES                                                       //
//##############################################################################
{$REGION 'TABELA VEICULOSCLIENTE'}
procedure TDM2.TBVeiculosClienteAfterInsert(DataSet: TDataSet);
begin
  if (DM.TBClientes.IsEmpty) and (FormVeiculosCliente<>nil) then
  begin
    MessageDlg('Selecione o cliente antes.',mtError,[mbOk],0);
    TBVeiculosCliente.Cancel;
    Exit;
  end;
  TBVeiculosClienteVEC_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  TBVeiculosClienteVEC_DTCADASTRO.Value:=DM.ServerDate;
  TBVeiculosClienteVEC_HRCADASTRO.Value:=DM.ServerTime;
  TBVeiculosClienteVEC_TIPO.Value:='P';
  TBVeiculosClienteVEC_CATEGORIA.Value:='U';
end;

procedure TDM2.TBVeiculosClienteBeforeEdit(DataSet: TDataSet);
begin
  if FormVeiculosCliente<>nil then
  FormMain.SetFields(FormVeiculosCliente,True);
end;

procedure TDM2.TBVeiculosClienteBeforeInsert(DataSet: TDataSet);
begin
  if FormVeiculosCliente<>nil then
  begin
    FormMain.SetFields(FormVeiculosCliente,True);
    FormVeiculosCliente.DBEdit22.SetFocus;
  end;
end;

procedure TDM2.TBVeiculosClienteBeforePost(DataSet: TDataSet);
begin
  TBVeiculosClienteVEC_DTATUALIZACAO.Value:=DM.ServerDate;
  TBVeiculosClienteVEC_HRATUALIZACAO.Value:=DM.ServerTime;
  TBVeiculosClienteVEC_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSVeiculosClienteStateChange(Sender: TObject);
begin
  if TBVeiculosCliente.State in [dsInsert, dsEdit] then
  begin
    if FormVeiculosCliente<>nil then
    begin
      FormVeiculosCliente.ConsultarDadosDoVeiculoNoDetran1.Enabled:=False;
      FormVeiculosCliente.ConsultarDadosDoVeiculoNoDetran1Button.Enabled:=False;
      FormVeiculosCliente.Localizar1.Enabled:=False;
      FormVeiculosCliente.Localizar1Button.Enabled:=False;
      FormVeiculosCliente.Relatorios2.Enabled:=False;
      FormVeiculosCliente.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormVeiculosCliente<>nil then
    begin
      FormVeiculosCliente.ConsultarDadosDoVeiculoNoDetran1.Enabled:=True;
      FormVeiculosCliente.ConsultarDadosDoVeiculoNoDetran1Button.Enabled:=True;
      FormVeiculosCliente.Localizar1.Enabled:=True;
      FormVeiculosCliente.Localizar1Button.Enabled:=True;
      FormVeiculosCliente.Relatorios2.Enabled:=True;
      FormVeiculosCliente.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVeiculosCliente);
      FormMain.SetFields(FormVeiculosCliente,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// VEICULOS A VENDA                                                           //
//##############################################################################
{$REGION 'TABELA VEICULOSVENDA'}
procedure TDM2.TBVeiculosVendaAfterEdit(DataSet: TDataSet);
begin
  if TBVeiculosVendaVEV_STATUS.Value='V' then
  begin
    MessageDlg('Não é possível alterar um veiculo vendido.',mtWarning,[mbOk],0);
    TBVeiculosVenda.Cancel;
  end;
end;

procedure TDM2.TBVeiculosVendaAfterInsert(DataSet: TDataSet);
begin
  TBVeiculosVendaVEV_CATEGORIA.Value:='U'; //usado.
  TBVeiculosVendaVEV_DESPESAS.Value:=0; //inicial zero.
  TBVeiculosVendaVEV_DTCADASTRO.Value:=DM.ServerDate;
  TBVeiculosVendaVEV_DTENTRADA.Value:=TBVeiculosVendaVEV_DTCADASTRO.Value;
  TBVeiculosVendaVEV_HRCADASTRO.Value:=DM.ServerTime;
  TBVeiculosVendaVEV_STATUS.Value:='A'; //à venda.
  TBVeiculosVendaVEV_TIPO.Value:='P'; //próprio.
  TBVeiculosVendaVEV_VALORCOMPRA.Value:=0;
  TBVeiculosVendaVEV_VALORVENDA.Value:=0;
end;

procedure TDM2.TBVeiculosVendaBeforeEdit(DataSet: TDataSet);
begin
  if FormVeiculosVenda<>nil then
  FormMain.SetFields(FormVeiculosVenda,True);
end;

procedure TDM2.TBVeiculosVendaBeforeInsert(DataSet: TDataSet);
begin
  if FormVeiculosVenda<>nil then
  begin
    FormMain.SetFields(FormVeiculosVenda,True);
    FormVeiculosVenda.DBEdit22.SetFocus;
  end;
end;

procedure TDM2.TBVeiculosVendaBeforePost(DataSet: TDataSet);
begin
  TBVeiculosVendaVEV_DTATUALIZACAO.Value:=DM.ServerDate;
  TBVeiculosVendaVEV_HRATUALIZACAO.Value:=DM.ServerTime;
  TBVeiculosVendaVEV_USUARIO.Value:=DM.UsuarioLogin;
  //calcula o lucro em cima do custo total.
  TBVeiculosVendaVEV_VALORSUGERIDO.Value:=TBVeiculosVendaVEV_VALORCOMPRA.Value+TBVeiculosVendaVEV_DESPESAS.Value;
  TBVeiculosVendaVEV_VALORSUGERIDO.Value:=TBVeiculosVendaVEV_VALORSUGERIDO.Value+((TBVeiculosVendaVEV_VALORSUGERIDO.Value/100)*
  DM.TBParametrosPAR_VEICULOSPORCLUCRO.Value);
end;

procedure TDM2.DSVeiculosVendaStateChange(Sender: TObject);
begin
  if TBVeiculosVenda.State in [dsInsert, dsEdit] then
  begin
    if FormVeiculosVenda<>nil then
    begin
      FormVeiculosVenda.ConsultarDadosDoVeiculoNoDetran1.Enabled:=False;
      FormVeiculosVenda.ConsultarDadosDoVeiculoNoDetran1Button.Enabled:=False;
      FormVeiculosVenda.DespesasDoVeiculo1.Enabled:=False;
      FormVeiculosVenda.DespesasDoVeiculo1Button.Enabled:=False;
      FormVeiculosVenda.EfetuarVenda1.Enabled:=False;
      FormVeiculosVenda.EfetuarVenda1Button.Enabled:=False;
      FormVeiculosVenda.EstornarVenda1.Enabled:=False;
      FormVeiculosVenda.EstornarVenda1Button.Enabled:=False;
      FormVeiculosVenda.FichaDeVenda1.Enabled:=False;
      FormVeiculosVenda.ImprimirFichadeVenda1.Enabled:=False;
      FormVeiculosVenda.ImprimirFichadeVenda1Button.Enabled:=False;
      FormVeiculosVenda.IncluirDespesa1.Enabled:=False;
      FormVeiculosVenda.IncluirDespesa1Button.Enabled:=False;
      FormVeiculosVenda.IncluirVeiculoNoCadastroDoCliente1.Enabled:=False;
      FormVeiculosVenda.IncluirVeiculoNoCadastroDoCliente1Button.Enabled:=False;
      FormVeiculosVenda.Localizar1.Enabled:=False;
      FormVeiculosVenda.Localizar1Button.Enabled:=False;
      FormVeiculosVenda.Relatorios2.Enabled:=False;
      FormVeiculosVenda.Relatorios2Button.Enabled:=False;
      FormVeiculosVenda.VeiculosAVenda1.Enabled:=False;
      FormVeiculosVenda.VendasPorVendedor1.Enabled:=False;
      FormVeiculosVenda.CustoTotalDosVeiculosAVenda1.Enabled:=False;
    end;
  end else
  begin
    if FormVeiculosVenda<>nil then
    begin
      FormVeiculosVenda.ConsultarDadosDoVeiculoNoDetran1.Enabled:=True;
      FormVeiculosVenda.ConsultarDadosDoVeiculoNoDetran1Button.Enabled:=True;
      FormVeiculosVenda.DespesasDoVeiculo1.Enabled:=True;
      FormVeiculosVenda.DespesasDoVeiculo1Button.Enabled:=True;
      FormVeiculosVenda.EfetuarVenda1.Enabled:=True;
      FormVeiculosVenda.EfetuarVenda1Button.Enabled:=True;
      FormVeiculosVenda.EstornarVenda1.Enabled:=True;
      FormVeiculosVenda.EstornarVenda1Button.Enabled:=True;
      FormVeiculosVenda.FichaDeVenda1.Enabled:=True;
      FormVeiculosVenda.ImprimirFichadeVenda1.Enabled:=True;
      FormVeiculosVenda.ImprimirFichadeVenda1Button.Enabled:=True;
      FormVeiculosVenda.IncluirDespesa1.Enabled:=True;
      FormVeiculosVenda.IncluirDespesa1Button.Enabled:=True;
      FormVeiculosVenda.IncluirVeiculoNoCadastroDoCliente1.Enabled:=True;
      FormVeiculosVenda.IncluirVeiculoNoCadastroDoCliente1Button.Enabled:=True;
      FormVeiculosVenda.Localizar1.Enabled:=True;
      FormVeiculosVenda.Localizar1Button.Enabled:=True;
      FormVeiculosVenda.Relatorios2.Enabled:=True;
      FormVeiculosVenda.Relatorios2Button.Enabled:=True;
      FormVeiculosVenda.VeiculosAVenda1.Enabled:=True;
      FormVeiculosVenda.VendasPorVendedor1.Enabled:=True;
      FormVeiculosVenda.CustoTotalDosVeiculosAVenda1.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormVeiculosVenda);
      FormMain.SetFields(FormVeiculosVenda,False);
    end;
  end;
end;
{$ENDREGION}

//##############################################################################
// ZAP INSTANCIAS                                                             //
//##############################################################################
{$REGION 'TABELA ZAPINSTANCIAS'}
procedure TDM2.TBZapInstanciasAfterInsert(DataSet: TDataSet);
begin
  TBZapInstanciasZIN_DTCADASTRO.Value:=DM.ServerDate;
  TBZapInstanciasZIN_HRCADASTRO.Value:=DM.ServerTime;
  TBZapInstanciasZIN_STATUS.Value:='A';
end;

procedure TDM2.TBZapInstanciasBeforeEdit(DataSet: TDataSet);
begin
  if FormZapInstancias<>nil then
  FormMain.SetFields(FormZapInstancias,True);
end;

procedure TDM2.TBZapInstanciasBeforeInsert(DataSet: TDataSet);
begin
  if FormZapInstancias<>nil then
  begin
    FormMain.SetFields(FormZapInstancias,True);
    FormZapInstancias.DBEdit2.SetFocus;
  end;
end;

procedure TDM2.TBZapInstanciasBeforePost(DataSet: TDataSet);
begin
  TBZapInstanciasZIN_DTATUALIZACAO.Value:=DM.ServerDate;
  TBZapInstanciasZIN_HRATUALIZACAO.Value:=DM.ServerTime;
  TBZapInstanciasZIN_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSZapInstanciasStateChange(Sender: TObject);
begin
  if TBZapInstancias.State in [dsInsert, dsEdit] then
  begin
    if FormZapInstancias<>nil then
    begin
      //FormZapInstancias.GerarWebHookToken1.Enabled:=False;
      //FormZapInstancias.GerarWebHookToken1Button.Enabled:=False;
      FormZapInstancias.Localizar1.Enabled:=False;
      FormZapInstancias.Localizar1Button.Enabled:=False;
      FormZapInstancias.Relatorios2.Enabled:=False;
      FormZapInstancias.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormZapInstancias<>nil then
    begin
      //FormZapInstancias.GerarWebHookToken1.Enabled:=True;
      //FormZapInstancias.GerarWebHookToken1Button.Enabled:=True;
      FormZapInstancias.Localizar1.Enabled:=True;
      FormZapInstancias.Localizar1Button.Enabled:=True;
      FormZapInstancias.Relatorios2.Enabled:=True;
      FormZapInstancias.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormZapInstancias);
      FormMain.SetFields(FormZapInstancias,False);
    end;
  end;
end;
{$ENDREGION}

procedure TDM2.TBZapMensagensAfterInsert(DataSet: TDataSet);
begin
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;

//  TBZapInstancias.Close;
//  TBZapInstancias.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_ZAPINSTANCIA.Value;
//  TBZapInstancias.Open;

  TBZapMensagensZAM_DTCADASTRO.Value:=DM.ServerDate;
  TBZapMensagensZAM_HRCADASTRO.Value:=DM.ServerTime;
  TBZapMensagensZAM_STATUS.Value:='P';
  TBZapMensagensZAM_VENDEDOR.Value:=DM.UsuarioVendedor;
  TBZapMensagensZAM_ZAPINSTANCIA.Value:=DM.TBVendedoresVEN_ZAPINSTANCIA.Value;
end;

procedure TDM2.TBZapMensagensBeforeEdit(DataSet: TDataSet);
begin
//  if FormZapMensagens<>nil then
//  FormMain.SetFields(FormZapMensagens,True);
end;

procedure TDM2.TBZapMensagensBeforeInsert(DataSet: TDataSet);
begin
//  if FormZapMensagens<>nil then
//  begin
//    FormMain.SetFields(FormZapMensagens,True);
//    FormZapMensagens.DBEdit10.SetFocus;
//  end;
end;

procedure TDM2.TBZapMensagensBeforePost(DataSet: TDataSet);
begin
  TBZapMensagensZAM_DTATUALIZACAO.Value:=DM.ServerDate;
  TBZapMensagensZAM_HRATUALIZACAO.Value:=DM.ServerTime;
  TBZapMensagensZAM_USUARIO.Value:=DM.UsuarioLogin;
end;

procedure TDM2.DSZapMensagensStateChange(Sender: TObject);
begin
  if TBZapMensagens.State in [dsInsert, dsEdit] then
  begin
    if FormZapMensagens<>nil then
    begin
      FormZapMensagens.Localizar1.Enabled:=False;
      FormZapMensagens.Localizar1Button.Enabled:=False;
      FormZapMensagens.Relatorios2.Enabled:=False;
      FormZapMensagens.Relatorios2Button.Enabled:=False;
    end;
  end else
  begin
    if FormZapMensagens<>nil then
    begin
      FormZapMensagens.Localizar1.Enabled:=True;
      FormZapMensagens.Localizar1Button.Enabled:=True;
      FormZapMensagens.Relatorios2.Enabled:=True;
      FormZapMensagens.Relatorios2Button.Enabled:=True;
      //...
      FormMain.DesabilitarControles(FormZapMensagens);
      FormMain.SetFields(FormZapMensagens,False);
    end;
  end;
end;



end.
