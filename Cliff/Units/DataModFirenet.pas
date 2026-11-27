//Atualizacoes:
//2026.11.23 - Comissao do representante (VED_REPRESENTANTE, VED_COMISSAOREP, VED_TOTALCOMISSAOREP, VEI_COMISSAOREP, VEI_VALORCOMISSAOREP) nas tabelas e nos calculos; CalcularTotaisVendaItens com a reducao de 100% no IBS/CBS, como no DataMod do Firenet.
unit DataModFirenet;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase, IBX.IBQuery,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, ACBrBase, ACBrMail;

type
  TDMFirenet = class(TDataModule)
    FDConnection1: TFDConnection;
    TBUsuarios: TFDQuery;
    TRUsuarios: TFDTransaction;
    Query1: TFDQuery;
    TRQuery1: TFDTransaction;
    Query2: TFDQuery;
    TRQuery2: TFDTransaction;
    Query3: TFDQuery;
    TRQuery3: TFDTransaction;
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
    TBEmpresa: TFDQuery;
    TREmpresa: TFDTransaction;
    TBEmpresaEMP_BAIRRO: TStringField;
    TBEmpresaEMP_CEP: TStringField;
    TBEmpresaEMP_CIDADE: TStringField;
    TBEmpresaEMP_CIDADECODIGO: TIntegerField;
    TBEmpresaEMP_CNAE: TStringField;
    TBEmpresaEMP_CNPJ: TStringField;
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
    TBClientes: TFDQuery;
    TRClientes: TFDTransaction;
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
    UPClientes: TFDUpdateSQL;
    TBParametros: TFDQuery;
    TRParametros: TFDTransaction;
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
    TBParametrosPAR_NFCECSCID: TStringField;
    TBParametrosPAR_NFCEMODELO: TIntegerField;
    TBParametrosPAR_NFCESCHEMAS: TStringField;
    TBParametrosPAR_NFCESERIE: TIntegerField;
    TBParametrosPAR_NFCETIMEOUT: TIntegerField;
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
    TBParametrosPAR_NFSEEMAILASSUNTO: TIntegerField;
    TBParametrosPAR_NFSEEMAILAUTOMATICO: TStringField;
    TBParametrosPAR_NFSEINFOADICIONAIS: TMemoField;
    TBParametrosPAR_NFSEPROVEDOR: TStringField;
    TBParametrosPAR_NFSERETENCAO: TStringField;
    TBParametrosPAR_NFSERETENCAORESP: TStringField;
    TBParametrosPAR_NFSESCHEMAS: TStringField;
    TBParametrosPAR_NFSESERIE: TStringField;
    TBParametrosPAR_NFSESERVICO: TStringField;
    TBParametrosPAR_NFSEVERSAO: TStringField;
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
    TBParametrosPAR_REFORMATRIBUTARIA: TStringField;
    TBParametrosPAR_REE_DTJUROSAPOS: TIntegerField;
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
    TBParametrosPAR_VENDEESTOQUEZERO: TStringField;
    TBParametrosPAR_VENDERCOMPOSTO: TStringField;
    TBParametrosPAR_VERSAOXML: TStringField;
    TBParametrosPAR_VERSAOXMLCTE: TStringField;
    TBParametrosPAR_VERSAOXMLMDFE: TStringField;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    TRNaturezas: TFDTransaction;
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
    TBMetas: TFDQuery;
    TRMetas: TFDTransaction;
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
    TBVendedores: TFDQuery;
    TRVendedores: TFDTransaction;
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
    TBVendas: TFDQuery;
    TRVendas: TFDTransaction;
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
    TBVendasVED_COMISSAOREP: TFMTBCDField;
    TBVendasVED_REPRESENTANTE: TIntegerField;
    TBVendasVED_TOTALCOMISSAOREP: TFMTBCDField;
    TBVendasVED_COMPLEMENTO: TStringField;
    TBVendasVED_CONDICAO: TIntegerField;
    TBVendasVED_CONDICAOMEMO: TMemoField;
    TBVendasVED_CONFERIDO: TStringField;
    TBVendasVED_CONFERIDODATA: TDateField;
    TBVendasVED_CONFERIDOPOR: TStringField;
    TBVendasVED_CONTATO: TStringField;
    TBVendasVED_CPF: TStringField;
    TBVendasVED_CUSTOTOTAL: TFMTBCDField;
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
    TBVendasCLI_FANTASIA: TStringField;
    TBVendasCPG_DESCRICAO: TStringField;
    TBVendasCPG_MEIOPAGAMENTO: TStringField;
    TBVendasCPG_TIPOINTEGRACAO: TStringField;
    TBVendasNAT_CALCULACOMISSAO: TStringField;
    TBVendasNAT_CALCULACREDITOSN: TStringField;
    TBVendasVEN_NOME: TStringField;
    TBVendasVEN_NOME1: TStringField;
    TBVendasItens: TFDQuery;
    TRVendasItens: TFDTransaction;
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
    TBVendasItensVEI_COMISSAOREP: TFMTBCDField;
    TBVendasItensVEI_VALORCOMISSAOREP: TFMTBCDField;
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
    TBVendasItensCLF_DESCRICAO: TStringField;
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
    TBProdutos: TFDQuery;
    TRProdutos: TFDTransaction;
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
    TBProdutosQtde: TFDQuery;
    TRProdutosQtde: TFDTransaction;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
    TBProdutosQtdeALM_DESCRICAO: TStringField;
    TBReceber: TFDQuery;
    TRReceber: TFDTransaction;
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
    TBCondicoes: TFDQuery;
    TRCondicoes: TFDTransaction;
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
    TBCondicoesCPG_PARCELASIGUAIS: TStringField;
    TBCondicoesCPG_STATUS: TStringField;
    TBCondicoesCPG_TIPOINTEGRACAO: TStringField;
    TBCondicoesCPG_TOTALPARCELAS: TIntegerField;
    TBCondicoesCPG_TOTALPORCENTAGEM: TFMTBCDField;
    TBCondicoesCPG_USUARIO: TStringField;
    TBCondicoesCON_NOME: TStringField;
    TBCondicoesItens: TFDQuery;
    TRCondicoesItens: TFDTransaction;
    TBCondicoesItensCPI_CODIGO: TIntegerField;
    TBCondicoesItensCPI_CONDICAO: TIntegerField;
    TBCondicoesItensCPI_DIAS: TIntegerField;
    TBCondicoesItensCPI_PORCENTAGEM: TFMTBCDField;
    TRDateTime: TFDTransaction;
    QYDateTime: TFDQuery;
    QYDateTimeDATA: TDateField;
    QYDateTimeHORA: TTimeField;
    TBClassFiscal: TFDQuery;
    TRClassFiscal: TFDTransaction;
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
    TBAliquotas: TFDQuery;
    TRAliquotas: TFDTransaction;
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
    DSVendas: TDataSource;
    TBVendasVED_DAV: TStringField;
    UPVendas: TFDUpdateSQL;
    UPVendasItens: TFDUpdateSQL;
    TBVendasVED_NFCE: TIntegerField;
    DSProdutos: TDataSource;
    TBProdutosPRO_BENEFICIO: TStringField;
    TBProdutosFotos: TFDQuery;
    TRProdutosFotos: TFDTransaction;
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
    UPProdutosFotos: TFDUpdateSQL;
    TBServicos: TFDQuery;
    TRServicos: TFDTransaction;
    TBServicosItens: TFDQuery;
    TRServicosItens: TFDTransaction;
    DSServicos: TDataSource;
    UPServicos: TFDUpdateSQL;
    UPServicosItens: TFDUpdateSQL;
    TBServicosSER_ABERTOPOR: TStringField;
    TBServicosSER_ACESSORIOS: TStringField;
    TBServicosSER_ALIQICMSCREDSN: TFMTBCDField;
    TBServicosSER_ANDAMENTO: TStringField;
    TBServicosSER_BAIXADOPOR: TStringField;
    TBServicosSER_BASECOFINS: TFMTBCDField;
    TBServicosSER_BASECOFINSST: TFMTBCDField;
    TBServicosSER_BASEICMS: TFMTBCDField;
    TBServicosSER_BASEICMSST: TFMTBCDField;
    TBServicosSER_BASEIPI: TFMTBCDField;
    TBServicosSER_BASEISS: TFMTBCDField;
    TBServicosSER_BASEPIS: TFMTBCDField;
    TBServicosSER_BASEPISST: TFMTBCDField;
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
    TBServicosCLI_NOME: TStringField;
    TBServicosEQP_DESCRICAO: TStringField;
    TBServicosEQP_MARCA: TStringField;
    TBServicosEQP_MODELO: TStringField;
    TBServicosEQP_SERIE: TStringField;
    TBServicosVEN_NOME: TStringField;
    TBEquipamentos: TFDQuery;
    TREquipamentos: TFDTransaction;
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
    UPEquipamentos: TFDUpdateSQL;
    TBServicosItensSEI_ALIQCOFINS: TFMTBCDField;
    TBServicosItensSEI_ALIQCOFINSST: TFMTBCDField;
    TBServicosItensSEI_ALIQFCP: TFMTBCDField;
    TBServicosItensSEI_ALIQFCPST: TFMTBCDField;
    TBServicosItensSEI_ALIQICMS: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSADICST: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSINTER: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSINTERPART: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSRED: TFMTBCDField;
    TBServicosItensSEI_ALIQICMSST: TFMTBCDField;
    TBServicosItensSEI_ALIQIPI: TFMTBCDField;
    TBServicosItensSEI_ALIQISS: TFMTBCDField;
    TBServicosItensSEI_ALIQPIS: TFMTBCDField;
    TBServicosItensSEI_ALIQPISST: TFMTBCDField;
    TBServicosItensSEI_ALMOXARIFADO: TIntegerField;
    TBServicosItensSEI_BASECOFINS: TFMTBCDField;
    TBServicosItensSEI_BASECOFINSST: TFMTBCDField;
    TBServicosItensSEI_BASEICMS: TFMTBCDField;
    TBServicosItensSEI_BASEICMSRED: TFMTBCDField;
    TBServicosItensSEI_BASEICMSST: TFMTBCDField;
    TBServicosItensSEI_BASEIPI: TFMTBCDField;
    TBServicosItensSEI_BASEISS: TFMTBCDField;
    TBServicosItensSEI_BASEPIS: TFMTBCDField;
    TBServicosItensSEI_BASEPISST: TFMTBCDField;
    TBServicosItensSEI_CEST: TStringField;
    TBServicosItensSEI_CFOP: TIntegerField;
    TBServicosItensSEI_CIDADEISS: TIntegerField;
    TBServicosItensSEI_CLASSFISCAL: TStringField;
    TBServicosItensSEI_CODIGO: TIntegerField;
    TBServicosItensSEI_CODIGOBARRAS: TStringField;
    TBServicosItensSEI_CODIGOFAB: TStringField;
    TBServicosItensSEI_COMISSAO: TFMTBCDField;
    TBServicosItensSEI_COMPLEMENTO: TStringField;
    TBServicosItensSEI_COMPOEBASEICMS: TStringField;
    TBServicosItensSEI_COMPOEBASEICMSST: TStringField;
    TBServicosItensSEI_COMPOETOTAL: TStringField;
    TBServicosItensSEI_CONVERSAO: TFMTBCDField;
    TBServicosItensSEI_CSTCOFINS: TIntegerField;
    TBServicosItensSEI_CSTICMS: TIntegerField;
    TBServicosItensSEI_CSTIPI: TIntegerField;
    TBServicosItensSEI_CSTPIS: TIntegerField;
    TBServicosItensSEI_DESCMAX: TFMTBCDField;
    TBServicosItensSEI_DESCPORC: TFMTBCDField;
    TBServicosItensSEI_DESCRICAO: TStringField;
    TBServicosItensSEI_DESCVALOR: TFMTBCDField;
    TBServicosItensSEI_ENQUADRAMENTOIPI: TIntegerField;
    TBServicosItensSEI_EXCECAO: TIntegerField;
    TBServicosItensSEI_FCI: TStringField;
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
    TBServicosItensSEI_VALORCOFINS: TFMTBCDField;
    TBServicosItensSEI_VALORCOFINSST: TFMTBCDField;
    TBServicosItensSEI_VALORCOMISSAO: TFMTBCDField;
    TBServicosItensSEI_VALORFCP: TFMTBCDField;
    TBServicosItensSEI_VALORFCPST: TFMTBCDField;
    TBServicosItensSEI_VALORFRETE: TFMTBCDField;
    TBServicosItensSEI_VALORICMS: TFMTBCDField;
    TBServicosItensSEI_VALORICMSCREDSN: TFMTBCDField;
    TBServicosItensSEI_VALORICMSST: TFMTBCDField;
    TBServicosItensSEI_VALORICMSUFDEST: TFMTBCDField;
    TBServicosItensSEI_VALORICMSUFREMET: TFMTBCDField;
    TBServicosItensSEI_VALORIPI: TFMTBCDField;
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
    TBServicosItensSEI_BENEFICIO: TStringField;
    TBServicosCLI_EMAIL: TStringField;
    TBServicosCLI_FONE1: TStringField;
    TBServicosCLI_FONE2: TStringField;
    TBServicosEQP_ACESSORIOS: TStringField;
    TBServicosEQP_ANOFAB: TIntegerField;
    TBServicosEQP_ANOMOD: TIntegerField;
    TBServicosEQP_CHASSI: TStringField;
    TBServicosEQP_COMBUSTIVEL: TStringField;
    TBServicosEQP_COR: TStringField;
    TBServicosEQP_LOCALIZACAO: TStringField;
    TBServicosEQP_REVENDEDOR: TStringField;
    TBServicosEQP_TAMANHO: TStringField;
    TBServicosNAT_CALCULACOMISSAO: TStringField;
    TBServicosNAT_CALCULACREDITOSN: TStringField;
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
    QYAux: TFDQuery;
    TRAux: TFDTransaction;
    TBGrupos: TFDQuery;
    TRGrupos: TFDTransaction;
    ACBrMail1: TACBrMail;
    TBAssuntos: TFDQuery;
    TRAssuntos: TFDTransaction;
    TBEmailsContas: TFDQuery;
    TREmailsContas: TFDTransaction;
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
    TBEmails: TFDQuery;
    TREmails: TFDTransaction;
    UPEmails: TFDUpdateSQL;
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
    TBEmailsASS_DESCRICAO: TStringField;
    TBEmailsCLI_NOME: TStringField;
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
    TBProdutosPRO_REGRAFISCAL: TIntegerField;
    TBVendasVED_BASEIBSCBS: TFMTBCDField;
    TBVendasVED_BASEIS: TFMTBCDField;
    TBVendasVED_CBSCREDPRES: TFMTBCDField;
    TBVendasVED_CBSCREDPRESSUS: TFMTBCDField;
    TBVendasVED_CBSDEVOLUCAO: TFMTBCDField;
    TBVendasVED_CBSDIFERIMENTO: TFMTBCDField;
    TBVendasVED_CBSMONO: TFMTBCDField;
    TBVendasVED_CBSMONORETENCAO: TFMTBCDField;
    TBVendasVED_CBSMONORETIDO: TFMTBCDField;
    TBVendasVED_CBSVALOR: TFMTBCDField;
    TBVendasVED_GOVERNAMENTAL: TStringField;
    TBVendasVED_GOVERNAMENTALALIQRED: TFMTBCDField;
    TBVendasVED_GOVERNAMENTALOP: TStringField;
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
    TBVendasVED_NOTACREDITO: TStringField;
    TBVendasVED_NOTADEBITO: TStringField;
    TBVendasVED_TOTALIS: TFMTBCDField;
    TBVendasVED_VALORTOTALRTC: TFMTBCDField;
    TBVendasCPG_TIPOPAGAMENTO: TStringField;
    TBVendasItensVEI_ALIQCBS: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQCBSRED: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUN: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSMUNRED: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFDIF: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFEFE: TFMTBCDField;
    TBVendasItensVEI_ALIQIBSUFRED: TFMTBCDField;
    TBVendasItensVEI_ALIQIS: TFMTBCDField;
    TBVendasItensVEI_ALIQISESP: TFMTBCDField;
    TBVendasItensVEI_BASEIBSCBS: TFMTBCDField;
    TBVendasItensVEI_BASEIS: TFMTBCDField;
    TBVendasItensVEI_CBSCREDITOPRES: TIntegerField;
    TBVendasItensVEI_CLASSTRIBIBSCBS: TStringField;
    TBVendasItensVEI_CLASSTRIBIS: TStringField;
    TBVendasItensVEI_CSTIBSCBS: TStringField;
    TBVendasItensVEI_CSTIS: TStringField;
    TBVendasItensVEI_DFEREF: TStringField;
    TBVendasItensVEI_DFEREFITEM: TIntegerField;
    TBVendasItensVEI_IBSCREDITOPRES: TIntegerField;
    TBVendasItensVEI_VALORCBS: TFMTBCDField;
    TBVendasItensVEI_VALORCBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_VALORCBSCREDPRESSUS: TFMTBCDField;
    TBVendasItensVEI_VALORCBSDEV: TFMTBCDField;
    TBVendasItensVEI_VALORCBSDIF: TFMTBCDField;
    TBVendasItensVEI_VALORIBS: TFMTBCDField;
    TBVendasItensVEI_VALORIBSCREDPRES: TFMTBCDField;
    TBVendasItensVEI_VALORIBSCREDPRESSUS: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUN: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUNDEV: TFMTBCDField;
    TBVendasItensVEI_VALORIBSMUNDIF: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUF: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUFDEV: TFMTBCDField;
    TBVendasItensVEI_VALORIBSUFDIF: TFMTBCDField;
    TBVendasItensVEI_VALORIS: TFMTBCDField;
    TBVendasItensALM_DESCRICAO: TStringField;
    TBVendasItensCLT_DESCRICAO: TStringField;
    TBVendasItensCLT_DESCRICAO1: TStringField;
    TBRegrasFiscais: TFDQuery;
    TRRegrasFiscais: TFDTransaction;
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
    TBVias: TFDQuery;
    TRVias: TFDTransaction;
    TBViasVIA_CODIGO: TIntegerField;
    TBViasVIA_DESCRICAO: TStringField;
    UPVias: TFDUpdateSQL;
    TBViasVIA_DTATUALIZACAO: TDateField;
    TBViasVIA_DTCADASTRO: TDateField;
    TBViasVIA_HRATUALIZACAO: TTimeField;
    TBViasVIA_HRCADASTRO: TTimeField;
    TBViasVIA_STATUS: TStringField;
    TBViasVIA_USUARIO: TStringField;
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
    TBTelevendas: TFDQuery;
    TRTelevendas: TFDTransaction;
    UPTelevendas: TFDUpdateSQL;
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
    TBTelevendasMOT_DESCRICAO: TStringField;
    TBTelevendasVEN_NOME: TStringField;
    TBTelevendasVIA_DESCRICAO: TStringField;
    TBTelevendasCLI_NOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TBVendasOLDAfterPost(DataSet: TDataSet);
    procedure TBVendasOLDAfterInsert(DataSet: TDataSet);
    procedure TBClientesBeforePost(DataSet: TDataSet);
    procedure TBClientesAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensBeforePost(DataSet: TDataSet);
    procedure TBVendasAfterInsert(DataSet: TDataSet);
    procedure TBVendasBeforePost(DataSet: TDataSet);
    procedure TBVendasItensAfterInsert(DataSet: TDataSet);
    procedure TBVendasItensAfterPost(DataSet: TDataSet);
    procedure TBProdutosFotosAfterInsert(DataSet: TDataSet);
    procedure TBProdutosFotosBeforePost(DataSet: TDataSet);
    procedure TBEquipamentosAfterInsert(DataSet: TDataSet);
    procedure TBEquipamentosBeforePost(DataSet: TDataSet);
    procedure TBServicosAfterInsert(DataSet: TDataSet);
    procedure TBServicosBeforePost(DataSet: TDataSet);
    procedure TBServicosItensAfterInsert(DataSet: TDataSet);
    procedure TBServicosItensBeforePost(DataSet: TDataSet);
    procedure TBServicosItensAfterPost(DataSet: TDataSet);
    procedure TBEmailsAfterInsert(DataSet: TDataSet);
    procedure TBEmailsBeforePost(DataSet: TDataSet);
  private
    procedure SimularCondicaoVenda;
    procedure CalcularTotaisVendaItens;
    function GetRegistro(const Tabela, CampoChave: String; Codigo: Integer): TFDMemTable; overload;
    function GetRegistro(const Tabela, CampoChave: String; Codigo: String): TFDMemTable; overload;
    const ParamFile='Parametros.ini';
    { Private declarations }
  public
    { Public declarations }
    procedure CalcularTotaisVenda(DarPost: Boolean);
    procedure CalcularTotaisServicos(DarPost: Boolean);
    procedure CalcularTotaisServicosItens(DarPost: Boolean);
    procedure ConfigurarConexao;
    procedure Variaveis(Acao: String);
    function ServerDate: TDate;
    function ServerTime: TTime;
  end;

var
  DMFirenet: TDMFirenet;
  BaseBase: String;
  BaseDescricao: String;
  BaseSenha: String;
  BaseServidor: String;
  BaseUsuario: String;
  FS: TFormatSettings;
  CodigoMark: Integer;
  CodigoMarkStr: String;
  CalcularTotais: Boolean = True;

const
  ChaveSenhaNEW=12;

implementation
uses DataSet.Serialize.Config, Main, Funcoes, IniFiles, Vcl.Forms, System.Hash;
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

procedure TDMFirenet.Variaveis(Acao: String);
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
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    BaseBase     :=F.ReadString('BASE DE DADOS','Base',BaseBase);
    BaseDescricao:=F.ReadString('BASE DE DADOS','Descricao',BaseDescricao);
    BaseSenha    :=F.ReadString('BASE DE DADOS','Senha',BaseSenha);
    BaseSenha    :=SenhaDecode(BaseSenha,ChaveSenhaNEW);
    BaseServidor :=F.ReadString('BASE DE DADOS','Servidor',BaseServidor);
    BaseUsuario  :=F.ReadString('BASE DE DADOS','Usuario',BaseUsuario);
  end;
  F.Free;
end;

function TDMFirenet.GetRegistro(const Tabela, CampoChave: String; Codigo: Integer): TFDMemTable;
var
  Qry: TFDQuery;
  Mem: TFDMemTable;
begin
  Qry:=TFDQuery.Create(nil);
  Mem:=TFDMemTable.Create(nil);
  try
    Qry.Connection:=FDConnection1;
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

function TDMFirenet.GetRegistro(const Tabela, CampoChave: String; Codigo: String): TFDMemTable;
var
  Qry: TFDQuery;
  Mem: TFDMemTable;
begin
  Qry:=TFDQuery.Create(nil);
  Mem:=TFDMemTable.Create(nil);
  try
    Qry.Connection:=FDConnection1;
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

procedure TDMFirenet.DataModuleCreate(Sender: TObject);
begin
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := cndUpper; //campos no JSON em maiúsculas.
  TDataSetSerializeConfig.GetInstance.Import.DecimalSeparator := '.';
  FS:=TFormatSettings.Create;
  FS.DateSeparator  :='-';
  FS.TimeSeparator  :=':';
  FS.ShortDateFormat:='yyyy-mm-dd';
  //FS.ShortDateFormat:='dd/mm/yyyy';
  FS.ShortTimeFormat:='hh:nn:ss';

  Variaveis('LOAD');
  ConfigurarConexao;
end;

procedure TDMFirenet.ConfigurarConexao;
begin
  FDConnection1.Params.Clear;
  FDConnection1.Params.Add('User_Name='+BaseUsuario);
  FDConnection1.Params.Add('Password='+BaseSenha);
  FDConnection1.Params.Add('Database='+BaseBase);
  FDConnection1.Params.Add('Server='+BaseServidor);
  FDConnection1.Params.Add('Port=3050');
  FDConnection1.Params.Add('Protocol=TCPIP');
  FDConnection1.Params.Add('DriverID=FB');

  if not FDConnection1.Connected then
  begin
    try
      FDConnection1.Connected:=True;
      //AbrirTabelas;

      //except on E:EFDDBEngineException do
      except on E:Exception do
      begin
        //MessageDlg(E.Message,mtError,[mbOk],0);
        Application.Terminate;
      end;
    end; //try.
  end;
end;

function TDMFirenet.ServerDate: TDate;
begin
  QYDateTime.Open;
  Result:=QYDateTimeDATA.Value;
  QYDateTime.Close;
end;

function TDMFirenet.ServerTime: TTime;
begin
  QYDateTime.Open;
  Result:=QYDateTimeHORA.Value;
  QYDateTime.Close;
end;

procedure TDMFirenet.TBClientesAfterInsert(DataSet: TDataSet);
begin
  TBParametros.Open;

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
  TBClientesCLI_PASSWORD.Value:=THashMD5.GetHashString('RUNTIME');
  TBClientesCLI_PONTOS.Value:=0;
  TBClientesCLI_RECEBEAVISOS.Value:='S';
  TBClientesCLI_SETOR.Value:=0;
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

procedure TDMFirenet.TBClientesBeforePost(DataSet: TDataSet);
begin
  TBClientesCLI_ATUALIZAR.Value:='S';
  TBClientesCLI_DTATUALIZACAO.Value:=ServerDate;
  TBClientesCLI_HRATUALIZACAO.Value:=ServerTime;
  //TBClientesCLI_USUARIO.Value:=UsuarioLogin;
  if TBClientesCLI_ENDERECOCOB.IsNull then //copia o endereco para o endereco de cobrança caso o de cobranca esteja vazio.
  begin
    TBClientesCLI_ENDERECOCOB.Value:=TBClientesCLI_ENDERECO.Value;
    TBClientesCLI_NUMEROCOB.Value:=TBClientesCLI_NUMERO.Value;
    TBClientesCLI_BAIRROCOB.Value:=TBClientesCLI_BAIRRO.Value;
    TBClientesCLI_CIDADECOB.Value:=TBClientesCLI_CIDADE.Value;
    TBClientesCLI_CIDADECODIGOCOB.Value:=TBClientesCLI_CIDADECODIGO.Value;
    TBClientesCLI_ESTADOCOB.Value:=TBClientesCLI_ESTADO.Value;
    TBClientesCLI_ESTADOCODIGOCOB.Value:=TBClientesCLI_ESTADOCODIGO.Value;
    TBClientesCLI_CEPCOB.Value:=TBClientesCLI_CEP.Value;
    TBClientesCLI_COMPLEMENTOCOB.Value:=TBClientesCLI_COMPLEMENTO.Value;
    TBClientesCLI_PAISCOB.Value:=TBClientesCLI_PAIS.Value;
    TBClientesCLI_PAISCODIGOCOB.Value:=TBClientesCLI_PAISCODIGO.Value;
  end;

  if LimparFormatacao(TBClientesCLI_CNPJCOB.Value)='' then
  TBClientesCLI_CNPJCOB.Value:=TBClientesCLI_CNPJ.Value;

  if (LimparFormatacao(TBClientesCLI_IECOB.Value)='') then
  TBClientesCLI_IECOB.Value:=TBClientesCLI_IE.Value;

  //TBClientesCLI_TIPOPESSOA.Value:='F';
  if (LimparFormatacao(TBClientesCLI_CPF.Value)<>'') and (LimparFormatacao(TBClientesCLI_CNPJ.Value)='') then
  TBClientesCLI_TIPOPESSOA.Value:='F';

  if (LimparFormatacao(TBClientesCLI_CPF.Value)='') and (LimparFormatacao(TBClientesCLI_CNPJ.Value)<>'') then
  TBClientesCLI_TIPOPESSOA.Value:='J';

  if TBClientesCLI_MENSALISTA.Value='S' then
  begin
    TBCondicoes.Close;
    TBCondicoes.ParamByName('codigo').AsInteger:=TBClientesCLI_CONDICAO.Value;
    TBCondicoes.Open;

    if TBCondicoesCPG_TOTALPARCELAS.Value>1 then
    begin
      //MessageDlg('A condição de pagamento padrão para este cliente possui mais de uma parcela.'+#13#10+
      //           'Os clientes mensalistas só poderão ter uma condição com uma única parcela.',mtWarning,[mbOk],0);
      TBClientesCLI_CONDICAO.Clear;
      TBClientesCPG_DESCRICAO.Clear;
      Exit;
    end;

    if TBCondicoesCPG_TOTALPORCENTAGEM.Value<>100 then
    begin
      //MessageDlg('A condição de pagamento selecionada não está completamente configurada.'+#13#10+
      //  'Verifique a configuração das parcelas desta condição de pagamento.',mtWarning,[mbOk],0);
      TBClientesCLI_CODIGO.Clear;
      TBClientesCPG_DESCRICAO.Clear;
      Exit;
    end;
  end;

end;

procedure TDMFirenet.TBEmailsAfterInsert(DataSet: TDataSet);
begin
  TBEmailsEMA_DTCADASTRO.Value:=ServerDate;
  TBEmailsEMA_HRCADASTRO.Value:=ServerTime;
end;

procedure TDMFirenet.TBEmailsBeforePost(DataSet: TDataSet);
begin
  TBEmailsEMA_DTATUALIZACAO.Value:=ServerDate;
  TBEmailsEMA_HRATUALIZACAO.Value:=ServerTime;
end;

procedure TDMFirenet.TBEquipamentosAfterInsert(DataSet: TDataSet);
begin
  TBEquipamentosEQP_DTCADASTRO.Value:=ServerDate;
  TBEquipamentosEQP_HRCADASTRO.Value:=ServerTime;
  TBEquipamentosEQP_STATUS.Value:='A';
end;

procedure TDMFirenet.TBEquipamentosBeforePost(DataSet: TDataSet);
begin
  TBEquipamentosEQP_DTATUALIZACAO.Value:=ServerDate;
  TBEquipamentosEQP_HRATUALIZACAO.Value:=ServerTime;
end;

procedure TDMFirenet.TBProdutosFotosAfterInsert(DataSet: TDataSet);
begin
  TBProdutosFotosPRF_DTCADASTRO.Value:=ServerDate;
  TBProdutosFotosPRF_HRCADASTRO.Value:=ServerTime;
  TBProdutosFotosPRF_PRODUTO.Value:=TBProdutosPRO_CODIGO.Value;
  TBProdutosFotosPRF_PRINCIPAL.Value:='N';
end;

procedure TDMFirenet.TBProdutosFotosBeforePost(DataSet: TDataSet);
begin
  TBProdutosFotosPRF_DTATUALIZACAO.Value:=ServerDate;
  TBProdutosFotosPRF_HRATUALIZACAO.Value:=ServerTime;
end;

//##############################################################################
// ORDENS DE SERVICOS                                                         //
//##############################################################################
procedure TDMFirenet.CalcularTotaisServicos(DarPost: Boolean);
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

procedure TDMFirenet.TBServicosAfterInsert(DataSet: TDataSet);
var I: Integer;
begin
  //localiza a CFOP.
  TBNaturezas.Close;
  TBNaturezas.ParamByName('codigo').AsInteger:=TBParametrosPAR_CFOPPADRAO.Value;
  TBNaturezas.Open;
  //...
  //TBServicosSER_ABERTOPOR.Value:=UsuarioLogin;
  TBServicosSER_ALIQICMSCREDSN.Value:=TBParametrosPAR_CREDITOICMSSN.Value;
  TBServicosSER_ANDAMENTO.Value:='AGUARDANDO INICIO';
  TBServicosSER_CFOP.Value:=TBParametrosPAR_CFOPSERVICOPADRAO.Value;
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

procedure TDMFirenet.TBServicosBeforePost(DataSet: TDataSet);
begin
  TBServicosSER_DTATUALIZACAO.Value:=ServerDate;
  TBServicosSER_HRATUALIZACAO.Value:=ServerTime;
  //TBServicosSER_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisServicos(False);

//  if TBParametrosPAR_SERVICOSCLIENTEDIFERENTE.Value='N' then
//  begin
//    QYAux.Close;
//    QYAux.SQL.Clear;
//    QYAux.SQL.Add('select EQP_CLIENTE from EQUIPAMENTOS where EQP_CODIGO=:codigo');
//    QYAux.ParamByName('codigo').AsInteger:=TBServicosSER_EQUIPAMENTO.Value;
//    QYAux.Open;
//    if QYAux.FieldByName('EQP_CLIENTE').AsInteger <> TBServicosSER_CLIENTE.Value then
//    begin
//      MessageDlg('O equipamento selecionado não pertence ao cliente selecionado.',mtInformation,[mbOk],0);
//      TBServicosSER_EQUIPAMENTO.Clear;
//      TBServicosEQP_ACESSORIOS.Clear;
//      TBServicosEQP_DESCRICAO.Clear;
//      TBServicosEQP_LOCALIZACAO.Clear;
//      TBServicosEQP_MARCA.Clear;
//      TBServicosEQP_MODELO.Clear;
//      TBServicosEQP_REVENDEDOR.Clear;
//      TBServicosEQP_SERIE.Clear;
//      TBServicosEQP_TAMANHO.Clear;
//    end;
//  end;

end;

//##############################################################################
// ORDENS DE SERVICOS ITENS                                                   //
//##############################################################################
procedure TDMFirenet.CalcularTotaisServicosItens(DarPost: Boolean);
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

procedure TDMFirenet.TBServicosItensAfterInsert(DataSet: TDataSet);
begin
  TBServicosItensSEI_ALMOXARIFADO.Value:=TBParametrosPAR_ALMOXARIFADOPADRAO.Value;

  TBServicosItensSEI_BASEICMS.Value:=0;
  TBServicosItensSEI_BASEICMSST.Value:=0;
  TBServicosItensSEI_CFOP.Value:=TBParametrosPAR_CFOPPADRAO.Value;
  TBServicosItensSEI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
  TBServicosItensSEI_COMPOETOTAL.Value:='S';
  TBServicosItensSEI_CONVERSAO.Value:=1;
  TBServicosItensSEI_DESCPORC.Value:=0;
  TBServicosItensSEI_DESCVALOR.Value:=0;
  TBServicosItensSEI_LUCROPORC.Value:=0;
  TBServicosItensSEI_LUCROVALOR.Value:=0;
  TBServicosItensSEI_PAISISS.Value:=1058; //BRASIL.
  TBServicosItensSEI_PRECOCUSTO.Value:=0;
  TBServicosItensSEI_PRECOCUSTOTOTAL.Value:=0;
  TBServicosItensSEI_PRODUTOREAL.Value:=0;
  TBServicosItensSEI_QUANTIDADE.Value:=1;
  TBServicosItensSEI_QUANTIDADETROCA.Value:=0;
  TBServicosItensSEI_SEQUENCIA.Value:=TBServicosSER_SEQUENCIAITEM.Value+1;
  TBServicosItensSEI_SERVICO.Value:=TBServicosSER_CODIGO.Value;
  TBServicosItensSEI_VALORACESSORIAS.Value:=0;
  TBServicosItensSEI_VALORCOMISSAO.Value:=0;
  TBServicosItensSEI_VALORFCP.Value:=0;
  TBServicosItensSEI_VALORFRETE.Value:=0;
  TBServicosItensSEI_VALORICMS.Value:=0;
  TBServicosItensSEI_VALORICMSCREDSN.Value:=0;
  TBServicosItensSEI_VALORICMSST.Value:=0;
  TBServicosItensSEI_VALORICMSUFDEST.Value:=0;
  TBServicosItensSEI_VALORICMSUFREMET.Value:=0;
  TBServicosItensSEI_VALORISS.Value:=0;
  TBServicosItensSEI_VALORISSDEDUCAO.Value:=0;
  TBServicosItensSEI_VALORISSDESCCOND.Value:=0;
  TBServicosItensSEI_VALORISSDESCINCOND.Value:=0;
  TBServicosItensSEI_VALORISSOUTROS.Value:=0;
  TBServicosItensSEI_VALORISSRETENCAO.Value:=0;
  TBServicosItensSEI_VALORSEGURO.Value:=0;
  TBServicosItensSEI_VALORTOTAL.Value:=0;

  TBServicosItensNAT_DESCRICAO.Value:=TBServicosSER_CFOPDESC.Value;
  TBServicosItensNAT_CALCULACOMISSAO.Value:=TBServicosNAT_CALCULACOMISSAO.Value;
  TBServicosItensNAT_CALCULACREDITOSN.Value:=TBServicosNAT_CALCULACREDITOSN.Value;
end;

procedure TDMFirenet.TBServicosItensAfterPost(DataSet: TDataSet);
begin
  CalcularTotaisServicos(True);
end;

procedure TDMFirenet.TBServicosItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisServicosItens(False); //parametro sem uso.
end;

procedure TDMFirenet.CalcularTotaisVenda(DarPost: Boolean);
begin
  TBVendas.Edit;
  if (TBVendasVED_MANUAL.IsNull) or (TBVendasVED_MANUAL.Value='N') then
  begin
    Query2.Close;
    Query2.SQL.Clear;
    Query2.SQL.Add(
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
//      '-- sum(VEI_VALORCBSMONO) as VALORCBSMONO, '+
//      '-- sum(VEI_CBSMONORETENCAO) as CBSMONORETENCAO, '+
//      '-- sum(VEI_CBSMONORETIDO) as CBSMONORETIDO, '+
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
//      '-- sum(VEI_IBSMONO) as IBSMONO, '+
//      '-- sum(VEI_IBSMONORETENCAO) as IBSMONORETENCAO, '+
//      '-- sum(VEI_IBSMONORETIDO) as IBSMONORETIDO, '+
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
      'from VENDASITENS where VEI_VENDA=:venda and VEI_COMPOETOTAL=''S'''
    );
    Query2.ParamByName('venda').AsInteger:=TBVendasVED_CODIGO.Value;
    Query2.Open;

    //atualiza totais na tabela vendas.
    TBVendasVED_BASECOFINS.Value        :=Query2.FieldByName('BASECOFINS').AsExtended;
    TBVendasVED_BASECOFINSST.Value      :=Query2.FieldByName('BASECOFINSST').AsExtended;
    TBVendasVED_BASEICMS.Value          :=Query2.FieldByName('BASEICMS').AsExtended;
    TBVendasVED_BASEICMSST.Value        :=Query2.FieldByName('BASEICMSST').AsExtended;
    TBVendasVED_BASEII.Value            :=Query2.FieldByName('BASEII').AsExtended;
    TBVendasVED_BASEIPI.Value           :=Query2.FieldByName('BASEIPI').AsExtended;
    TBVendasVED_BASEISS.Value           :=Query2.FieldByName('BASEISS').AsExtended;
    TBVendasVED_BASEPIS.Value           :=Query2.FieldByName('BASEPIS').AsExtended;
    TBVendasVED_BASEPISST.Value         :=Query2.FieldByName('BASEPISST').AsExtended;
    TBVendasVED_CUSTOTOTAL.Value        :=Query2.FieldByName('PRECOCUSTOTOTAL').AsExtended;
    TBVendasVED_DESCVALOR.Value         :=Query2.FieldByName('VALORDESCONTO').AsExtended; //valordesconto já contém o desconto em cima do frete, seguro e acessorias.
    if TBParametrosPAR_CALCULARPESOLIQUIDO.Value='S' then
    TBVendasVED_PESOLIQ.Value           :=Query2.FieldByName('PESOTOTAL').AsFloat;
    TBVendasVED_SEQUENCIAITEM.Value     :=Query2.FieldByName('SEQUENCIA').AsInteger;
    TBVendasVED_TOTALADUANA.Value       :=Query2.FieldByName('VALORADUANA').AsExtended;
    TBVendasVED_TOTALBRUTO.Value        :=Query2.FieldByName('VALORTOTALBRUTO').AsExtended;
    TBVendasVED_TOTALCOFINS.Value       :=Query2.FieldByName('VALORCOFINS').AsExtended;
    TBVendasVED_TOTALCOFINSST.Value     :=Query2.FieldByName('VALORCOFINSST').AsExtended;
    TBVendasVED_TOTALCOMISSAO.Value     :=Query2.FieldByName('VALORCOMISSAO').AsExtended;
    TBVendasVED_TOTALCOMISSAOREP.Value  :=Query2.FieldByName('VALORCOMISSAOREP').AsExtended;
    TBVendasVED_TOTALFCP.Value          :=Query2.FieldByName('VALORFCP').AsExtended;
    TBVendasVED_TOTALFCPST.Value        :=Query2.FieldByName('VALORFCPST').AsExtended;
    TBVendasVED_TOTALICMS.Value         :=Query2.FieldByName('VALORICMS').AsExtended;
    TBVendasVED_TOTALICMSCREDSN.Value   :=Query2.FieldByName('VALORICMSCREDSN').AsExtended;
    TBVendasVED_TOTALICMSST.Value       :=Query2.FieldByName('VALORICMSST').AsExtended;
    TBVendasVED_TOTALICMSUFDEST.Value   :=Query2.FieldByName('VALORICMSUFDEST').AsExtended;
    TBVendasVED_TOTALICMSUFREMET.Value  :=Query2.FieldByName('VALORICMSUFREMET').AsExtended;
    TBVendasVED_TOTALII.Value           :=Query2.FieldByName('VALORII').AsExtended;
    TBVendasVED_TOTALIOF.Value          :=Query2.FieldByName('VALORIOF').AsExtended;
    TBVendasVED_TOTALIPI.Value          :=Query2.FieldByName('VALORIPI').AsExtended;
    TBVendasVED_TOTALISS.Value          :=Query2.FieldByName('VALORISS').AsExtended;
    TBVendasVED_TOTALISSDEDUCAO.Value   :=Query2.FieldByName('VALORISSDEDUCAO').AsExtended;
    TBVendasVED_TOTALISSDESCCOND.Value  :=Query2.FieldByName('VALORISSDESCCOND').AsExtended;
    TBVendasVED_TOTALISSDESCINCOND.Value:=Query2.FieldByName('VALORISSDESCINCOND').AsExtended;
    TBVendasVED_TOTALISSOUTROS.Value    :=Query2.FieldByName('VALORISSOUTROS').AsExtended;
    TBVendasVED_TOTALISSRETENCAO.Value  :=Query2.FieldByName('VALORISSRETENCAO').AsExtended;
    TBVendasVED_TOTALITENS.Value        :=Query2.FieldByName('TOTALPRODUTOS').AsExtended+Query2.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALPIS.Value          :=Query2.FieldByName('VALORPIS').AsExtended;
    TBVendasVED_TOTALPISST.Value        :=Query2.FieldByName('VALORPISST').AsExtended;
    TBVendasVED_TOTALPRODUTOS.Value     :=Query2.FieldByName('TOTALPRODUTOS').AsExtended;
    TBVendasVED_TOTALSERVICOS.Value     :=Query2.FieldByName('TOTALSERVICOS').AsExtended;
    TBVendasVED_TOTALTRIBUTOS.Value     :=Decimais(Query2.FieldByName('VALORTRIBUTOS').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSEST.Value  :=Decimais(Query2.FieldByName('VALORTRIBUTOSEST').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSFED.Value  :=Decimais(Query2.FieldByName('VALORTRIBUTOSFED').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSIMP.Value  :=Decimais(Query2.FieldByName('VALORTRIBUTOSIMP').AsExtended,2);
    TBVendasVED_TOTALTRIBUTOSMUN.Value  :=Decimais(Query2.FieldByName('VALORTRIBUTOSMUN').AsExtended,2);
    TBVendasVED_VALORDESPACES.Value     :=Query2.FieldByName('VALORACESSORIAS').AsExtended;
    TBVendasVED_VALORFRETE.Value        :=Query2.FieldByName('VALORFRETE').AsExtended;
    TBVendasVED_VALORSEGURO.Value       :=Query2.FieldByName('VALORSEGURO').AsExtended;

    //reforma tributária.
    TBVendasVED_BASEIBSCBS.Value            :=Query2.FieldByName('BASEIBSCBS').AsExtended;
    TBVendasVED_BASEIS.Value                :=Query2.FieldByName('BASEIS').AsExtended;

    TBVendasVED_CBSCREDPRES.Value           :=Query2.FieldByName('VALORCBSCREDPRES').AsExtended;
    TBVendasVED_CBSCREDPRESSUS.AsExtended   :=Query2.FieldByName('VALORCBSCREDPRESSUS').AsExtended;
    TBVendasVED_CBSDEVOLUCAO.AsExtended     :=Query2.FieldByName('VALORCBSDEV').AsExtended;
    TBVendasVED_CBSDIFERIMENTO.AsExtended   :=Query2.FieldByName('VALORCBSDIF').AsExtended;
    TBVendasVED_CBSMONO.AsExtended          :=0; //Query2.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_CBSMONORETENCAO.AsExtended  :=0; //Query2.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_CBSMONORETIDO.AsExtended    :=0; //Query2.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_CBSVALOR.AsExtended         :=Query2.FieldByName('VALORCBS').AsExtended;

    TBVendasVED_IBSUFDIFERIMENTO.Value      :=Query2.FieldByName('VALORIBSUFDIF').AsExtended;
    TBVendasVED_IBSUFDEVOLUCAO.AsExtended   :=Query2.FieldByName('VALORIBSUFDEV').AsExtended;
    TBVendasVED_IBSUFVALOR.AsExtended       :=Query2.FieldByName('VALORIBSUF').AsExtended;
    TBVendasVED_IBSMUNDIFERIMENTO.AsExtended:=Query2.FieldByName('VALORIBSMUNDIF').AsExtended;
    TBVendasVED_IBSMUNDEVOLUCAO.AsExtended  :=Query2.FieldByName('VALORIBSMUNDEV').AsExtended;
    TBVendasVED_IBSMUNVALOR.AsExtended      :=Query2.FieldByName('VALORIBSMUN').AsExtended;
    TBVendasVED_IBSVALOR.AsExtended         :=Query2.FieldByName('VALORIBS').AsExtended;
    TBVendasVED_IBSCREDPRES.AsExtended      :=Query2.FieldByName('VALORIBSCREDPRES').AsExtended;
    TBVendasVED_IBSCREDPRESSUS.AsExtended   :=Query2.FieldByName('VALORIBSCREDPRESSUS').AsExtended;

    TBVendasVED_TOTALIS.Value               :=Query2.FieldByName('VALORIS').AsExtended;

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
                                  Query2.FieldByName('VALORICMSDESONERADO').AsExtended+
                                  TBVendasVED_TOTALICMSST.Value+
                                  TBVendasVED_TOTALFCPST.Value+
                                  TBVendasVED_VALORFRETE.Value+
                                  TBVendasVED_VALORSEGURO.Value+
                                  TBVendasVED_VALORDESPACES.Value+
                                  TBVendasVED_TOTALII.Value+
                                  TBVendasVED_TOTALIPI.Value+
                                  //nao tenho esse campo. TBNfeNFE_TOTALIPIDEV.Value+
                                  Query2.FieldByName('SOMAPISST').AsExtended+
                                  Query2.FieldByName('SOMACOFINSST').AsExtended;

    //calcula nova porcentagem de desconto.
    if TBVendasVED_VALORTOTAL.Value>0 then //evita calcular porcentagem incorreta.
    TBVendasVED_DESCPORC.Value:=Decimais((100.0/(Query2.FieldByName('VALORTOTALBRUTO').AsExtended+
                                                 Query2.FieldByName('VALORFRETE').AsExtended+
                                                 Query2.FieldByName('VALORSEGURO').AsExtended+
                                                 Query2.FieldByName('VALORACESSORIAS').AsExtended))*TBVendasVED_DESCVALOR.AsExtended,8) else
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

  if TBVendasVED_STATUS.Value='A' then
  SimularCondicaoVenda;

  Query2.Close;
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

procedure TDMFirenet.TBVendasOLDAfterInsert(DataSet: TDataSet);
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

procedure TDMFirenet.TBVendasOLDAfterPost(DataSet: TDataSet);
begin
  TRVendas.Commit;
  TBVendas.ParamByName('codigo').AsInteger:=CodigoMark;
  TBVendas.Open;
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
  //Abre os parametros.
  TBParametros.Close;
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
  TBVendasVED_PESOBRUTO.Value:=0;
  TBVendasVED_PESOLIQ.Value:=0;
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

procedure TDMFirenet.TBVendasBeforePost(DataSet: TDataSet);
begin
  TBVendasVED_DTATUALIZACAO.Value:=ServerDate;
  TBVendasVED_HRATUALIZACAO.Value:=ServerTime;
  //TBVendasVED_USUARIO.Value:=UsuarioLogin;
  CalcularTotaisVenda(False);
end;

procedure TDMFirenet.TBVendasItensAfterInsert(DataSet: TDataSet);
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
  TBVendasItensVEI_CFOP.Value:=TBVendasVED_CFOP.Value;
  TBVendasItensVEI_CIDADEISS.Value:=TBEmpresaEMP_CIDADECODIGO.Value;
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
  TBVendasItensVEI_COMISSAOREP.Value:=0;
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
  TBVendasItensNAT_DESCRICAO.Value:=TBVendasVED_CFOPDESC.Value;
  TBVendasItensNAT_CALCULACOMISSAO.Value:=TBVendasNAT_CALCULACOMISSAO.Value;
  TBVendasItensNAT_CALCULACREDITOSN.Value:=TBVendasNAT_CALCULACREDITOSN.Value;
end;

procedure TDMFirenet.TBVendasItensAfterPost(DataSet: TDataSet);
begin
  if CalcularTotais then
  CalcularTotaisVenda(True);

end;

procedure TDMFirenet.TBVendasItensBeforePost(DataSet: TDataSet);
begin
  CalcularTotaisVendaItens; //(False);
end;

end.
