unit DataMod;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Forms, Dialogs, IBX.IBCustomDataSet,
  IBX.IBDatabase, IBX.IBQuery, IBX.IB, IBX.IBScript, DateUtils;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    QYClientes: TIBQuery;
    TRClientes: TIBTransaction;
    QYClientesCLI_BAIRROCOB: TIBStringField;
    QYClientesCLI_CEPCOB: TIBStringField;
    QYClientesCLI_CIDADECOB: TIBStringField;
    QYClientesCLI_CIDADECODIGOCOB: TIntegerField;
    QYClientesCLI_CNPJCOB: TIBStringField;
    QYClientesCLI_CODIGO: TIntegerField;
    QYClientesCLI_COMPLEMENTOCOB: TIBStringField;
    QYClientesCLI_CPF: TIBStringField;
    QYClientesCLI_DTATUALIZACAO: TDateField;
    QYClientesCLI_DTCADASTRO: TDateField;
    QYClientesCLI_ENDERECOCOB: TIBStringField;
    QYClientesCLI_ESTADOCOB: TIBStringField;
    QYClientesCLI_ESTADOCODIGOCOB: TIntegerField;
    QYClientesCLI_FANTASIA: TIBStringField;
    QYClientesCLI_FONE1: TIBStringField;
    QYClientesCLI_FONE2: TIBStringField;
    QYClientesCLI_IECOB: TIBStringField;
    QYClientesCLI_NOME: TIBStringField;
    QYClientesCLI_NUMEROCOB: TIBStringField;
    QYClientesCLI_RG: TIBStringField;
    QYClientesCLI_STATUS: TIBStringField;
    QYClientesCLI_TIPOPESSOA: TIBStringField;
    QYUsuarios: TIBQuery;
    TRUsuarios: TIBTransaction;
    QYUsuariosUSU_VENDEDOR: TIntegerField;
    QYUsuariosVEN_NOME: TIBStringField;
    QYProdutos: TIBQuery;
    TRProdutos: TIBTransaction;
    QYProdutosPRO_CFOP: TIntegerField;
    QYProdutosPRO_CODIGO: TIntegerField;
    QYProdutosPRO_CODIGOBARRAS: TIBStringField;
    QYProdutosPRO_CODIGOFAB: TIBStringField;
    QYProdutosPRO_CSTICMS: TIntegerField;
    QYProdutosPRO_CSTIPI: TIntegerField;
    QYProdutosPRO_NOME: TIBStringField;
    QYProdutosPRO_STATUS: TIBStringField;
    QYProdutosPRO_TIPOISS: TIBStringField;
    QYProdutosPRO_UNIDADE: TIBStringField;
    QYProdutosPRO_TIPOITEM: TIBStringField;
    QYProdutosPRO_GENERO: TIntegerField;
    QYProdutosPRO_PESAVEL: TIBStringField;
    QYProdutosPRO_PRODUCAO: TIBStringField;
    QYProdutosPRO_TRIBUTO: TIBStringField;
    QYTributos: TIBQuery;
    TRTributos: TIBTransaction;
    QYEstoqueSaldo: TIBQuery;
    TREstoqueSaldo: TIBTransaction;
    QYEstoqueSaldoPRO_CODIGO: TIntegerField;
    QYCondicoes: TIBQuery;
    TRCondicoes: TIBTransaction;
    QYCondicoesItens: TIBQuery;
    TRCondicoesItens: TIBTransaction;
    QYCondicoesCPG_CODIGO: TIntegerField;
    QYCondicoesCPG_DESCRICAO: TIBStringField;
    QYCondicoesCPG_TOTALPARCELAS: TIntegerField;
    QYCondicoesItensCPI_DIAS: TIntegerField;
    QYContas: TIBQuery;
    TRContas: TIBTransaction;
    QYContasCON_BANCO: TIntegerField;
    QYContasCON_CODIGO: TIntegerField;
    QYContasBAN_NOME: TIBStringField;
    QYUnidades: TIBQuery;
    TRUnidades: TIBTransaction;
    QYUnidadesUNI_CODIGO: TIBStringField;
    QYUnidadesUNI_DESCRICAO: TIBStringField;
    QYAux: TIBQuery;
    TRAux: TIBTransaction;
    QYEcf: TIBQuery;
    TREcf: TIBTransaction;
    QYEcfECF_CODIGO: TIntegerField;
    QYEcfECF_DESCRICAO: TIBStringField;
    QYEcfECF_DTATUALIZACAO: TDateField;
    QYEcfECF_DTCADASTRO: TDateField;
    QYEcfECF_MARCA: TIBStringField;
    QYEcfECF_MODELO: TIBStringField;
    QYEcfECF_SERIAL: TIBStringField;
    QYEcfECF_STATUS: TIBStringField;
    QYEcfECF_USUARIO: TIBStringField;
    TBCupom: TIBDataSet;
    TRCupom: TIBTransaction;
    TBCupomCUP_CCF: TIntegerField;
    TBCupomCUP_CLIENTE: TIntegerField;
    TBCupomCUP_CODIGO: TIntegerField;
    TBCupomCUP_CONDICAO: TIntegerField;
    TBCupomCUP_DTATUALIZACAO: TDateField;
    TBCupomCUP_DTEMISSAO: TDateField;
    TBCupomCUP_ECF: TIntegerField;
    TBCupomCUP_VENDA: TIntegerField;
    TBCupomCUP_VENDEDOR: TIntegerField;
    TBCupomCUP_USUARIO: TIBStringField;
    TBCupomItens: TIBDataSet;
    TRCupomItens: TIBTransaction;
    TBCupomItensCUI_CODIGO: TIntegerField;
    TBCupomItensCUI_CUPOM: TIntegerField;
    TBCupomItensCUI_ITEM: TIntegerField;
    TBCupomItensCUI_PRODUTO: TIntegerField;
    TBReceber: TIBDataSet;
    TRReceber: TIBTransaction;
    IBScript: TIBScript;
    TRScript: TIBTransaction;
    TBEstoque: TIBDataSet;
    TREstoque: TIBTransaction;
    TBProdutosQtde: TIBDataSet;
    TRProdutosQtde: TIBTransaction;
    TBProdutosQtdePRQ_PRODUTO: TIntegerField;
    TBProdutosQtdePRQ_ALMOXARIFADO: TIntegerField;
    DSCupom: TDataSource;
    TBCupomCUP_COO: TIntegerField;
    TBCupomCUP_STATUS: TIBStringField;
    TBCupomCUP_MOTIVO: TIBStringField;
    QYCondicoesCPG_DESCRICAOCUPOM: TIBStringField;
    QYAux2: TIBQuery;
    TRAux2: TIBTransaction;
    TBParametros: TIBDataSet;
    TRParametros: TIBTransaction;
    TBParametrosPAR_CONTALOCALPADRAO: TIntegerField;
    QYCondicoesItensCPI_PORCENTAGEM: TFMTBCDField;
    QYEstoqueSaldoPRO_ESTOQUEATUAL: TFMTBCDField;
    QYProdutosPRO_PRECOVENDA: TFMTBCDField;
    QYUsuariosVEN_COMISSAO: TFMTBCDField;
    TBCupomCUP_ACREVALOR: TFMTBCDField;
    TBCupomCUP_DESCVALOR: TFMTBCDField;
    TBCupomCUP_VALORTOTAL: TFMTBCDField;
    TBCupomItensCUI_ACREVALOR: TFMTBCDField;
    TBCupomItensCUI_DESCVALOR: TFMTBCDField;
    TBCupomItensCUI_QUANTIDADE: TFMTBCDField;
    TBCupomItensCUI_TRIBUTO: TIBStringField;
    TBCupomItensCUI_VALORTOTAL: TFMTBCDField;
    TBCupomItensCUI_VALORUNIT: TFMTBCDField;
    TBEstoqueEST_CODIGO: TIntegerField;
    TBEstoqueEST_ALMOXARIFADO: TIntegerField;
    TBEstoqueEST_PRODUTO: TIntegerField;
    TBEstoqueEST_CLIENTE: TIntegerField;
    TBEstoqueEST_CONVERSAO: TFMTBCDField;
    TBEstoqueEST_DATA: TDateField;
    TBEstoqueEST_DESCRICAO: TIBStringField;
    TBEstoqueEST_DTATUALIZACAO: TDateField;
    TBEstoqueEST_DTCADASTRO: TDateField;
    TBEstoqueEST_ESTOQUEANTERIOR: TFMTBCDField;
    TBEstoqueEST_ESTOQUEPOSTERIOR: TFMTBCDField;
    TBEstoqueEST_FORNECEDOR: TIntegerField;
    TBEstoqueEST_NUMDOCTO: TIBStringField;
    TBEstoqueEST_OBSERVACOES: TWideMemoField;
    TBEstoqueEST_PRODUTOREAL: TIntegerField;
    TBEstoqueEST_QUANTIDADE: TFMTBCDField;
    TBEstoqueEST_QUANTIDADEREAL: TFMTBCDField;
    TBEstoqueEST_TIPODOCTO: TIBStringField;
    TBEstoqueEST_TRANSACAO: TIBStringField;
    TBEstoqueEST_USUARIO: TIBStringField;
    TBEstoqueEST_VALORUNIT: TFMTBCDField;
    TBEstoqueEST_VENDEDOR: TIntegerField;
    TBProdutosQtdePRQ_QUANTIDADE: TFMTBCDField;
    TBReceberREE_CODIGO: TIntegerField;
    TBReceberREE_CLIENTE: TIntegerField;
    TBReceberREE_CONTA: TIntegerField;
    TBReceberREE_RECEITA: TIntegerField;
    TBReceberREE_VENDEDOR: TIntegerField;
    TBReceberREE_ACRESCIMOPORC: TFMTBCDField;
    TBReceberREE_ACRESCIMOPORCPAGO: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALOR: TFMTBCDField;
    TBReceberREE_ACRESCIMOVALORPAGO: TFMTBCDField;
    TBReceberREE_BAIXADOPOR: TIBStringField;
    TBReceberREE_BOLETO: TIntegerField;
    TBReceberREE_DESCPORC: TFMTBCDField;
    TBReceberREE_DESCPORCVENCIMENTO: TFMTBCDField;
    TBReceberREE_DESCRICAO: TIBStringField;
    TBReceberREE_DESCVALOR: TFMTBCDField;
    TBReceberREE_DIASATRASO: TIntegerField;
    TBReceberREE_DIASPRAZO: TIntegerField;
    TBReceberREE_DTATUALIZACAO: TDateField;
    TBReceberREE_DTCADASTRO: TDateField;
    TBReceberREE_DTEMISSAO: TDateField;
    TBReceberREE_DTJUROSAPOS: TDateField;
    TBReceberREE_DTPAGAMENTO: TDateField;
    TBReceberREE_DTVENCIMENTO: TDateField;
    TBReceberREE_JUROSPAGO: TFMTBCDField;
    TBReceberREE_MULTAPAGO: TFMTBCDField;
    TBReceberREE_NOVOCODIGO: TIntegerField;
    TBReceberREE_NUMDOCTO: TIBStringField;
    TBReceberREE_OBSERVACOES: TWideMemoField;
    TBReceberREE_PARCELANUM: TIntegerField;
    TBReceberREE_PARCELAQTDE: TIntegerField;
    TBReceberREE_PORCJUROS: TFMTBCDField;
    TBReceberREE_STATUS: TIBStringField;
    TBReceberREE_TIPOBAIXA: TIBStringField;
    TBReceberREE_TIPODOCTO: TIBStringField;
    TBReceberREE_USUARIO: TIBStringField;
    TBReceberREE_VALOR: TFMTBCDField;
    TBReceberREE_VALORACESSORIAS: TFMTBCDField;
    TBReceberREE_VALORJUROS: TFMTBCDField;
    TBReceberREE_VALORMULTA: TFMTBCDField;
    TBReceberREE_VALORORIGINAL: TFMTBCDField;
    TBReceberREE_VALORPAGO: TFMTBCDField;
    TBReceberREE_VALORSEMDESCONTO: TFMTBCDField;
    TBReceberREE_VENDA: TIntegerField;
    QYProdutosPRO_CEST: TIBStringField;
    QYProdutosPRO_PRECOCUSTO: TFMTBCDField;
    TBBlocox: TIBDataSet;
    TRBlocox: TIBTransaction;
    DSBlocox: TDataSource;
    TBBlocoxBLX_ANO: TIntegerField;
    TBBlocoxBLX_CODIGO: TIntegerField;
    TBBlocoxBLX_DTCADASTRO: TDateField;
    TBBlocoxBLX_HRCADASTRO: TTimeField;
    TBBlocoxBLX_MES: TIntegerField;
    QYProdutosPRO_EXCECAO: TIntegerField;
    QYProdutosPRO_CLASSFISCAL: TIBStringField;
    QYProdutosPRO_TIPO: TIBStringField;
    QYCondicoesCPG_MEIOPAGAMENTO: TIBStringField;
    TBCupomCUP_TOTALITENS: TFMTBCDField;
    TBCupomCUP_CHAVEACESSO: TIBStringField;
    TBCupomCUP_PROTOCOLO: TIBStringField;
    TBCupomCUP_PROTOCOLODH: TIBStringField;
    TBCupomCUP_NFCE: TIntegerField;
    QYProdutosPRO_ALIQICMS: TFMTBCDField;
    QYProdutosPRO_ALIQICMSRED: TFMTBCDField;
    QYProdutosPRO_BENEFICIO: TIBStringField;
    QYTributosTRI_ALIQCOFINS: TFMTBCDField;
    QYTributosTRI_ALIQICMS: TFMTBCDField;
    QYTributosTRI_ALIQIPI: TFMTBCDField;
    QYTributosTRI_ALIQPIS: TFMTBCDField;
    QYTributosTRI_CODIGO: TIntegerField;
    QYTributosTRI_CSTPIS: TIntegerField;
    QYTributosTRI_SERVICO: TIBStringField;
    QYProdutosPRO_ALIQPIS: TFMTBCDField;
    QYProdutosPRO_CSTPIS: TIntegerField;
    QYProdutosPRO_ALIQCOFINS: TFMTBCDField;
    QYProdutosPRO_ALIQIPI: TFMTBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure TBCupomAfterPost(DataSet: TDataSet);
    procedure TBCupomBeforePost(DataSet: TDataSet);
    procedure TBCupomItensBeforePost(DataSet: TDataSet);
    procedure TBCupomItensAfterPost(DataSet: TDataSet);
    procedure TBCupomItensAfterDelete(DataSet: TDataSet);
    procedure TBCupomAfterDelete(DataSet: TDataSet);
    procedure TBEstoqueAfterPost(DataSet: TDataSet);
    procedure TBEstoqueBeforePost(DataSet: TDataSet);
    procedure TBEstoqueAfterInsert(DataSet: TDataSet);
    procedure TBProdutosQtdeAfterPost(DataSet: TDataSet);
    procedure TBProdutosQtdeAfterDelete(DataSet: TDataSet);
    procedure TBCupomAfterInsert(DataSet: TDataSet);
    procedure TBReceberAfterDelete(DataSet: TDataSet);
    procedure TBReceberAfterInsert(DataSet: TDataSet);
    procedure TBReceberAfterPost(DataSet: TDataSet);
    procedure TBReceberBeforePost(DataSet: TDataSet);
    procedure TBBlocoxAfterPost(DataSet: TDataSet);
    procedure TBBlocoxAfterInsert(DataSet: TDataSet);
    procedure TBBlocoxAfterDelete(DataSet: TDataSet);
    procedure TBBlocoxBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Variaveis(Acao: String);
  end;

var
  DM: TDM;
  LocalBase: String;
  SenhaSYSDBA: String;
  PastaEstoque: String;
  PastaReq: String;
  PastaResp: String;
  TempoAtualizacao: String;
  IniciaAoAbrir: String;
  LayoutNFCe: String;
  MovimentarEstoque: String;
  MovimentarFinanceiro: String;
  GerarBlocoX: String;
  ProdutosAtivos: String;
  ProdutosTipoServico: String;
  Servidor: String;
  CodigoMark: Integer;
const
  ParamFile='Parametros.ini';
  ChaveSenha=240;

implementation
uses IniFiles, Funcoes1, BlocoX;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.TBBlocoxAfterDelete(DataSet: TDataSet);
begin
  TRBlocox.Commit;
  TBBlocox.Open;
end;

procedure TDM.TBBlocoxAfterInsert(DataSet: TDataSet);
begin
  TBBlocoxBLX_DTCADASTRO.Value:=Date;
  TBBlocoxBLX_HRCADASTRO.Value:=Time;
end;

procedure TDM.TBBlocoxAfterPost(DataSet: TDataSet);
begin
  TRBlocox.Commit;
  TBBlocox.Open;
  TBBlocox.Locate('BLX_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBBlocoxBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBBlocoxBLX_CODIGO.Value;
end;

procedure TDM.TBCupomAfterDelete(DataSet: TDataSet);
begin
  TRCupom.Commit;
  TBCupom.Open;
end;

procedure TDM.TBCupomAfterInsert(DataSet: TDataSet);
begin
  TBCupomCUP_CONDICAO.Value:=1;
  TBCupomCUP_CLIENTE.Value:=1;
  TBCupomCUP_DTEMISSAO.Value:=Date;
  TBCupomCUP_MOTIVO.Value:='N';
end;

procedure TDM.TBCupomAfterPost(DataSet: TDataSet);
begin
  TRCupom.Commit;
  TBCupom.ParamByName('codigo').AsInteger:=CodigoMark;
  TBCupom.Open;
end;

procedure TDM.TBCupomBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBCupomCUP_CODIGO.Value;
  TBCupomCUP_DTATUALIZACAO.Value:=Date;
end;

procedure TDM.TBCupomItensAfterDelete(DataSet: TDataSet);
begin
  TRCupomItens.Commit;
  TBCupomItens.Open;
end;

procedure TDM.TBCupomItensAfterPost(DataSet: TDataSet);
begin
  TRCupomItens.Commit;
  TBCupomItens.Open;
  TBCupomItens.Locate('CUI_CODIGO',CodigoMark,[]);
end;

procedure TDM.TBCupomItensBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBCupomItensCUI_CODIGO.Value;
end;

procedure TDM.TBEstoqueAfterInsert(DataSet: TDataSet);
begin
  TBEstoqueEST_ALMOXARIFADO.Value:=1; //parametrizar?
  TBEstoqueEST_CONVERSAO.Value:=1;
  TBEstoqueEST_DATA.Value:=Date;
  TBEstoqueEST_DTCADASTRO.Value:=Date;
  TBEstoqueEST_PRODUTOREAL.Value:=0;
  TBEstoqueEST_QUANTIDADE.Value:=1;
  TBEstoqueEST_QUANTIDADEREAL.Value:=1;
  TBEstoqueEST_TIPODOCTO.Value:='OUTROS';
  TBEstoqueEST_TRANSACAO.Value:='S';
end;

procedure TDM.TBEstoqueAfterPost(DataSet: TDataSet);
begin
  TREstoque.Commit;
  TBEstoque.ParamByName('codigo').AsInteger:=CodigoMark;
  TBEstoque.Open;
  //atualiza o saldo no estoque utilizando o QYAux, pois o TBProdutos não atualiza esses campos.
  if TBEstoqueEST_TRANSACAO.Value='S' then //sempre será saida.
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=(PRO_ESTOQUEATUAL - :quantidade), PRO_PRECOVENDAULT=:precovendault, PRO_PRECOVENDAMEDIO=(:valorunit + PRO_PRECOVENDA)/2, PRO_DTULTVENDA=:dtultvenda where PRO_CODIGO=:codigo');
    QYAux.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    QYAux.ParamByName('quantidade').AsFloat:=TBEstoqueEST_QUANTIDADE.AsExtended;
    QYAux.ParamByName('precovendault').AsCurrency:=TBEstoqueEST_VALORUNIT.AsExtended;
    QYAux.ParamByName('valorunit').AsCurrency:=TBEstoqueEST_VALORUNIT.AsExtended;
    QYAux.ParamByName('dtultvenda').AsDate:=TBCupomCUP_DTEMISSAO.Value;
    QYAux.ExecSQL;
    TRAux.Commit;

    //atualiza saldo no almoxarifado.
    TBProdutosQtde.Close;
    TBProdutosQtde.ParamByName('produto').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    TBProdutosQtde.ParamByName('almoxarifado').AsInteger:=1;
    TBProdutosQtde.Open;
    if not TBProdutosQtde.IsEmpty then //sempre almoxarifado 1... fazer parametro para o almoxarifado?
    begin
      TBProdutosQtde.Edit;
      TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value-TBEstoqueEST_QUANTIDADE.Value;
      TBProdutosQtde.Post;
    end;
    //metodo errado.
    //if TBProdutosQtde.Locate('ALM_CODIGO',1,[]) then //sempre almoxarifado 1... fazer parametro para o almoxarifado?
    //begin
    //  TBProdutosQtde.Edit;
    //  TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value-TBEstoqueEST_QUANTIDADE.Value;
    //  TBProdutosQtde.Post;
    //end;
  end else

  if TBEstoqueEST_TRANSACAO.Value='E' then //tá estornando um cupom?!
  begin
    QYAux.Close;
    QYAux.SQL.Clear;
    QYAux.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=(PRO_ESTOQUEATUAL + :quantidade) where PRO_CODIGO=:codigo');
    QYAux.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    QYAux.ParamByName('quantidade').AsFloat:=TBEstoqueEST_QUANTIDADE.AsExtended;
    //QYAux.ParamByName('precovendault').AsCurrency:=TBEstoqueEST_VALORUNIT.AsExtended;
    //QYAux.ParamByName('valorunit').AsCurrency:=TBEstoqueEST_VALORUNIT.AsExtended;
    //QYAux.ParamByName('dtultvenda').AsDate:=TBCupomCUP_DTEMISSAO.Value;
    QYAux.ExecSQL;
    TRAux.Commit;

    //atualiza saldo no almoxarifado.
    TBProdutosQtde.Close;
    TBProdutosQtde.ParamByName('produto').AsInteger:=TBEstoqueEST_PRODUTO.Value;
    TBProdutosQtde.ParamByName('almoxarifado').AsInteger:=1;
    TBProdutosQtde.Open;
    if not TBProdutosQtde.IsEmpty then //sempre almoxarifado 1... fazer parametro para o almoxarifado?
    begin
      TBProdutosQtde.Edit;
      TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value+TBEstoqueEST_QUANTIDADE.Value;
      TBProdutosQtde.Post;
    end;

    //metodo errado.
    //if TBProdutosQtde.Locate('ALM_CODIGO',1,[]) then //sempre almoxarifado 1... fazer parametro para o almoxarifado?
    //begin
    //  TBProdutosQtde.Edit;
    //  TBProdutosQtdePRQ_QUANTIDADE.Value:=TBProdutosQtdePRQ_QUANTIDADE.Value+TBEstoqueEST_QUANTIDADE.Value;
    //  TBProdutosQtde.Post;
    //end;
  end;
end;

procedure TDM.TBEstoqueBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBEstoqueEST_CODIGO.Value;
  TBEstoqueEST_DTATUALIZACAO.Value:=Date;
  TBEstoqueEST_USUARIO.Value:='MALCOLM';
  //localiza o produto para pegar a quantidade (saldo anterior).
  QYAux.Close;
  QYAux.SQL.Clear;
  QYAux.SQL.Add('select PRO_ESTOQUEATUAL from PRODUTOS where PRO_CODIGO=:codigo');
  QYAux.ParamByName('codigo').AsInteger:=TBEstoqueEST_PRODUTO.Value;
  QYAux.Open;
  TBEstoqueEST_ESTOQUEANTERIOR.Value:=QYAux.FieldByName('PRO_ESTOQUEATUAL').AsFloat;
  QYAux.Close;
  //...
  if TBEstoqueEST_TRANSACAO.Value='E' then
  TBEstoqueEST_ESTOQUEPOSTERIOR.Value:=TBEstoqueEST_ESTOQUEANTERIOR.Value+TBEstoqueEST_QUANTIDADE.Value else
  if TBEstoqueEST_TRANSACAO.Value='S' then
  TBEstoqueEST_ESTOQUEPOSTERIOR.Value:=TBEstoqueEST_ESTOQUEANTERIOR.Value-TBEstoqueEST_QUANTIDADE.Value;
end;

procedure TDM.TBProdutosQtdeAfterDelete(DataSet: TDataSet);
begin
  TRProdutosQtde.Commit;
  TBProdutosQtde.Open;
end;

procedure TDM.TBProdutosQtdeAfterPost(DataSet: TDataSet);
begin
  TRProdutosQtde.Commit;
//nao precisa localizar nada.  TBProdutosQtde.ParamByName('codigo').AsInteger:=CodigoMark;
  TBProdutosQtde.Open;
end;

procedure TDM.TBReceberAfterDelete(DataSet: TDataSet);
begin
  TRReceber.Commit;
  TBReceber.Open;
end;

procedure TDM.TBReceberAfterInsert(DataSet: TDataSet);
begin
  TBReceberREE_ACRESCIMOPORC.Value:=0;
  TBReceberREE_ACRESCIMOVALOR.Value:=0;
  TBReceberREE_CONTA.Value:=TBParametrosPAR_CONTALOCALPADRAO.Value;
  TBReceberREE_DESCPORCVENCIMENTO.Value:=0;
  TBReceberREE_DTCADASTRO.Value:=Date;
  TBReceberREE_DTEMISSAO.Value:=TBReceberREE_DTCADASTRO.Value;
  TBReceberREE_PARCELANUM.Value:=1;
  TBReceberREE_PARCELAQTDE.Value:=1;
  TBReceberREE_PORCJUROS.Value:=0; //TBParametrosPAR_JUROSMENSAL.Value;
  TBReceberREE_STATUS.Value:='A';
  TBReceberREE_VALORACESSORIAS.Value:=0;
end;

procedure TDM.TBReceberAfterPost(DataSet: TDataSet);
begin
  TRReceber.Commit;
  TBReceber.ParamByName('codigo').AsInteger:=CodigoMark;
  TBReceber.Open;
end;

procedure TDM.TBReceberBeforePost(DataSet: TDataSet);
begin
  CodigoMark:=TBReceberREE_CODIGO.Value;
  TBReceberREE_DTATUALIZACAO.Value:=Date;
  TBReceberREE_USUARIO.Value:='MALCOLM';
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

procedure TDM.Variaveis(Acao: String);
var F: TIniFile;
begin
  F:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ParamFile);
  if UpperCase(Acao)='SAVE' then
  begin
    F.WriteString('BASE DE DADOS','Principal',LocalBase);
    F.WriteString('BASE DE DADOS','Servidor',Servidor);
    F.WriteString('BASE DE DADOS','Senha',Senha(AnsiString(SenhaSYSDBA),ChaveSenha));

    F.WriteString('PASTAS','PastaReq',PastaReq);
    F.WriteString('PASTAS','PastaResp',PastaResp);
    F.WriteString('PASTAS','PastaEstoque',PastaEstoque);
    F.WriteString('OPCOES','TempoAtualizacao',TempoAtualizacao);
    F.WriteString('OPCOES','IniciaAoAbrir',IniciaAoAbrir);
    F.WriteString('OPCOES','LayoutNFCe',LayoutNFCe);
    F.WriteString('OPCOES','MovimentarEstoque',MovimentarEstoque);
    F.WriteString('OPCOES','MovimentarFinanceiro',MovimentarFinanceiro);
    F.WriteString('OPCOES','GerarBlocoX',GerarBlocoX);
    F.WriteString('OPCOES','ProdutosAtivos',ProdutosAtivos);
    F.WriteString('OPCOES','ProdutosTipoServico',ProdutosTipoServico);
  end else
  if UpperCase(Acao)='LOAD' then
  begin
    LocalBase           :=F.ReadString('BASE DE DADOS','Principal',LocalBase);
    Servidor            :=F.ReadString('BASE DE DADOS','Servidor',Servidor);
    SenhaSYSDBA         :=F.ReadString('BASE DE DADOS','Senha',SenhaSYSDBA);
    SenhaSYSDBA         :=Senha(AnsiString(SenhaSYSDBA),ChaveSenha);
    PastaReq            :=F.ReadString('PASTAS','PastaReq',PastaReq);
    PastaResp           :=F.ReadString('PASTAS','PastaResp',PastaResp);
    PastaEstoque        :=F.ReadString('PASTAS','PastaEstoque',PastaEstoque);
    TempoAtualizacao    :=F.ReadString('OPCOES','TempoAtualizacao',TempoAtualizacao);
    IniciaAoAbrir       :=F.ReadString('OPCOES','IniciaAoAbrir',IniciaAoAbrir);
    LayoutNFCe          :=F.ReadString('OPCOES','LayoutNFCe',LayoutNFCe);
    MovimentarEstoque   :=F.ReadString('OPCOES','MovimentarEstoque',MovimentarEstoque);
    MovimentarFinanceiro:=F.ReadString('OPCOES','MovimentarFinanceiro',MovimentarFinanceiro);
    GerarBlocoX         :=F.ReadString('OPCOES','GerarBlocoX',GerarBlocoX);
    ProdutosAtivos      :=F.ReadString('OPCOES','ProdutosAtivos',ProdutosAtivos);
    ProdutosTipoServico :=F.ReadString('OPCOES','ProdutosTipoServico',ProdutosTipoServico);
  end;
  F.Free;
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
  Variaveis('LOAD');
  IBDatabase1.Params.Clear;
  IBDatabase1.Params.Add('user_name=sysdba');
  IBDatabase1.Params.Add('password='+SenhaSYSDBA);
  IBDatabase1.DatabaseName:=Servidor+':'+LocalBase;
  //IBDatabase1.DatabaseName:=LocalBase;
  if not IBDatabase1.Connected then
  begin
    try
      IBDatabase1.Connected:=True;
      TBCupom.Open;
      TBCupomItens.Open;
      TBEstoque.Open;
      TBParametros.Open;
      TBProdutosQtde.Open;
      TBReceber.Open;

      except on E:EIBInterBaseError do //ainda nao sei o por que do E:
      begin
        if UpperCase(E.Message)='UNAVAILABLE DATABASE' then
        ShowMessage('Banco de dados não disponível! Verifique se o Firebird está rodando e se sua conexão de rede com o servidor está funcionando corretamente.') else
        if UpperCase(E.Message)='CANNOT ATTACH TO SERVICES MANAGER' then
        ShowMessage('Não foi possível acessar o gerenciador de serviços.') else
        if UpperCase(E.Message)='YOUR USER NAME AND PASSWORD ARE NOT DEFINED. ASK YOUR DATABASE ADMINISTRATOR TO SET UP AN INTERBASE LOGIN' then
        ShowMessage('Nome de usuário e senha inválidos. Entre em contato com seu suporte técnico.') else
        if UpperCase(E.Message)='UNABLE TO PERFORM OPERATION.  YOU MUST BE EITHER SYSDBA OR OWNER OF THE DATABASE' then
        ShowMessage('Não foi possível realizar a operação. Você não tem permissão para realizar a operação.') else
        ShowMessage(E.Message);
        //Application.Terminate;
      end;
    end; //try.
  end;
end;

end.
