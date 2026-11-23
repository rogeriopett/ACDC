unit DataMod;

interface

uses
  SysUtils, Classes, IBDatabase, IBQuery, DB, IBCustomDataSet;

type
  TDM = class(TDataModule)
    DBDestino: TIBDatabase;
    DBOrigem: TIBDatabase;
    TBDProdutos: TIBDataSet;
    TBDProdutosPRO_CODIGO: TIntegerField;
    QYOProdutos: TIBQuery;
    QYOProdutosPRO_CODIGO: TIntegerField;
    QYOProdutosPRO_CODIGOFAB: TIBStringField;
    QYOProdutosPRO_CODIGOBARRAS: TIBStringField;
    QYOProdutosPRO_FAMILIA: TIntegerField;
    QYOProdutosPRO_GRUPO: TIntegerField;
    QYOProdutosPRO_NOME: TIBStringField;
    QYOProdutosPRO_DESCRICAO: TMemoField;
    QYOProdutosPRO_TIPO: TIBStringField;
    QYOProdutosPRO_CORSABOR: TIBStringField;
    QYOProdutosPRO_TAMANHO: TIBStringField;
    QYOProdutosPRO_LOCALIZACAO: TIBStringField;
    QYOProdutosPRO_UNIDADE: TIBStringField;
    QYOProdutosPRO_REGISTROMS: TIBStringField;
    QYOProdutosPRO_TABPRECO1: TIBStringField;
    QYOProdutosPRO_TABPRECO2: TIBStringField;
    QYOProdutosPRO_TABPRECO3: TIBStringField;
    QYOProdutosPRO_TABPRECO4: TIBStringField;
    QYOProdutosPRO_TABPRECO5: TIBStringField;
    QYOProdutosPRO_TABPRECO6: TIBStringField;
    QYOProdutosPRO_ATUALIZATABELA: TIBStringField;
    QYOProdutosPRO_STATUS: TIBStringField;
    QYOProdutosPRO_DTCADASTRO: TDateField;
    QYOProdutosPRO_DTATUALIZACAO: TDateField;
    QYOProdutosPRO_USUARIO: TIBStringField;
    QYOProdutosPRO_COMPOSTO: TIBStringField;
    QYOProdutosPRO_DTULTCOMPRA: TDateField;
    QYOProdutosPRO_DTULTVENDA: TDateField;
    QYOProdutosPRO_INTERNET: TIBStringField;
    QYOProdutosPRO_OFERTA: TIBStringField;
    QYOProdutosPRO_CSTICMS: TIntegerField;
    QYOProdutosPRO_CSTIPI: TIntegerField;
    QYOProdutosPRO_CSTPIS: TIntegerField;
    QYOProdutosPRO_CSTCOFINS: TIntegerField;
    QYOProdutosPRO_ORIGEM: TIBStringField;
    QYOProdutosPRO_MODICMS: TIBStringField;
    QYOProdutosPRO_MODICMSST: TIBStringField;
    QYOProdutosPRO_MARCA: TIntegerField;
    TROProdutos: TIBTransaction;
    QYOAlmoxarifados: TIBQuery;
    QYOAlmoxarifadosALM_CODIGO: TIntegerField;
    QYOAlmoxarifadosALM_DESCRICAO: TIBStringField;
    QYOAlmoxarifadosALM_DTCADASTRO: TDateField;
    QYOAlmoxarifadosALM_DTATUALIZACAO: TDateField;
    QYOAlmoxarifadosALM_USUARIO: TIBStringField;
    QYOAlmoxarifadosALM_STATUS: TIBStringField;
    TROAlmoxarifados: TIBTransaction;
    QYOVersao: TIBQuery;
    QYOVersaoVER_VERSAOBASE: TIBStringField;
    TROVersao: TIBTransaction;
    TRDVersao: TIBTransaction;
    QYDVersao: TIBQuery;
    QYDVersaoVER_VERSAOBASE: TIBStringField;
    TRDProdutosQtde: TIBTransaction;
    TBDProdutosQtde: TIBDataSet;
    TBDProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    TBDProdutosQtdePRQ_PRODUTO: TIntegerField;
    TRDProdutos: TIBTransaction;
    QYDProdutos: TIBQuery;
    TRQDProdutos: TIBTransaction;
    QYOProdutosPRO_OBSERVACOES: TMemoField;
    QYOProdutosPRO_COMPOEBASEICMS: TIBStringField;
    QYOCampos: TIBQuery;
    TROCampos: TIBTransaction;
    QYOProdutosPRO_FORNECEDOR: TIntegerField;
    QYDFamilias: TIBQuery;
    QYDGrupos: TIBQuery;
    QYDMarcas: TIBQuery;
    QYDFornecedores: TIBQuery;
    TRDFamilias: TIBTransaction;
    TRDGrupos: TIBTransaction;
    TRDMarcas: TIBTransaction;
    TRDFornecedores: TIBTransaction;
    QYOProdutosPRO_TIPOITEM: TIBStringField;
    QYDUnidades: TIBQuery;
    TRDUnidades: TIBTransaction;
    QYOProdutosPRO_PALAVRASCHAVE: TIBStringField;
    QYOProdutosPRO_SUBSTITUICAOTRIB: TIBStringField;
    QYOProdutosPRO_ECFICMS: TIBStringField;
    QYOProdutosPRO_TOTALIZADORPARCIAL: TIBStringField;
    QYOProdutosPRO_FCI: TIBStringField;
    QYOProdutosPRO_COMPOEBASEICMSST: TIBStringField;
    QYOProdutosPRO_CEST: TIBStringField;
    QYOProdutosPRO_CFOP: TIntegerField;
    QYOProdutosPRO_INCENTIVOISS: TIBStringField;
    QYOProdutosPRO_INDICADORISS: TIBStringField;
    QYOProdutosPRO_PRODUTOREAL: TIntegerField;
    QYOProdutosPRO_TIPOISS: TIBStringField;
    QYOProdutosPRO_ATUALIZAR: TIBStringField;
    QYOProdutosPRO_GENERO: TIntegerField;
    QYOProdutosPRO_PESAVEL: TIBStringField;
    QYOProdutosPRO_PRODUCAO: TIBStringField;
    QYOProdutosPRO_TRIBUTO: TIBStringField;
    QYOProdutosPRO_CFOPFORA: TIntegerField;
    QYOProdutosPRO_MARKUPCODIGO: TIntegerField;
    TBDProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
    QYOProdutosPRO_ALIQCOFINS: TFMTBCDField;
    QYOProdutosPRO_ALIQCOFINSST: TFMTBCDField;
    QYOProdutosPRO_ALIQICMS: TFMTBCDField;
    QYOProdutosPRO_ALIQICMSADICST: TFMTBCDField;
    QYOProdutosPRO_ALIQICMSRED: TFMTBCDField;
    QYOProdutosPRO_ALIQICMSST: TFMTBCDField;
    QYOProdutosPRO_ALIQIPI: TFMTBCDField;
    QYOProdutosPRO_ALIQISS: TFMTBCDField;
    QYOProdutosPRO_ALIQOUTROS: TFMTBCDField;
    QYOProdutosPRO_ALIQPIS: TFMTBCDField;
    QYOProdutosPRO_ALIQPISST: TFMTBCDField;
    QYOProdutosPRO_DESCMAX: TFMTBCDField;
    QYOProdutosPRO_ESTOQUEATUAL: TFMTBCDField;
    QYOProdutosPRO_ESTOQUEMAX: TFMTBCDField;
    QYOProdutosPRO_ESTOQUEMIN: TFMTBCDField;
    QYOProdutosPRO_MARGEM: TFMTBCDField;
    QYOProdutosPRO_MARGEM1: TFMTBCDField;
    QYOProdutosPRO_MARGEM2: TFMTBCDField;
    QYOProdutosPRO_MARGEM3: TFMTBCDField;
    QYOProdutosPRO_MARGEM4: TFMTBCDField;
    QYOProdutosPRO_MARGEM5: TFMTBCDField;
    QYOProdutosPRO_MARGEM6: TFMTBCDField;
    QYOProdutosPRO_MARKUP: TFMTBCDField;
    QYOProdutosPRO_PESO: TIBBCDField;
    QYOProdutosPRO_PRECO1: TFMTBCDField;
    QYOProdutosPRO_PRECO2: TFMTBCDField;
    QYOProdutosPRO_PRECO3: TFMTBCDField;
    QYOProdutosPRO_PRECO4: TFMTBCDField;
    QYOProdutosPRO_PRECO5: TFMTBCDField;
    QYOProdutosPRO_PRECO6: TFMTBCDField;
    QYOProdutosPRO_PRECOCUSTO: TFMTBCDField;
    QYOProdutosPRO_PRECOCUSTOCOMP: TFMTBCDField;
    QYOProdutosPRO_PRECOCUSTOMEDIO: TFMTBCDField;
    QYOProdutosPRO_PRECOCUSTOULT: TFMTBCDField;
    QYOProdutosPRO_PRECOVENDA: TFMTBCDField;
    QYOProdutosPRO_PRECOVENDAMEDIO: TFMTBCDField;
    QYOProdutosPRO_PRECOVENDAULT: TFMTBCDField;
    QYOProdutosPRO_TROCA: TIBStringField;
    QYOProdutosPRO_COMISSAO: TFMTBCDField;
    QYOProdutosPRO_CONVERSAO: TFMTBCDField;
    QYOProdutosPRO_EXCECAO: TIntegerField;
    QYOProdutosPRO_CLASSFISCAL: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
