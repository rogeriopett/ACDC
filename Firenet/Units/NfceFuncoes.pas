unit NfceFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, NFe_Util_2G_TLB;

type
  TFormNfceFuncoes = class(TForm)
    TBVendas: TFDQuery;
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
    TBVendasVED_NFCE: TIntegerField;
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
    UPVendas: TFDUpdateSQL;
    TRVendas: TFDTransaction;
    DSVendas: TDataSource;
    TRVendasItens: TFDTransaction;
    UPVendasItens: TFDUpdateSQL;
    TBVendasItens: TFDQuery;
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
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RealizarBaixaEstoque;
    procedure RealizarContasReceber;
    procedure SincronizarPedidoDeVenda;
    function NaoExisteNaSefaz(ChaveAcesso: String): Boolean;

    //procedures de envio de NFCE pela flexdocs.
    function MontarIdentificacao(const U: NFe_Util_2G_Interface): WideString;
    function MontarEmitente(const U: NFe_Util_2G_Interface): WideString;
    function MontarDestinatario(const U: NFe_Util_2G_Interface): WideString;
  end;

var
  FormNfceFuncoes: TFormNfceFuncoes;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormNfceFuncoes.RealizarBaixaEstoque;
begin
  if DM.TBNfceNFC_MOVIMENTAESTOQUE.Value='S' then
  begin
    DM.TBNfceItens.DisableControls;
    DM.TBNfceItens.First;
    while not DM.TBNfceItens.Eof do
    begin
      DM.TBProdutos.Close;
      if DM.TBNfceItensNCI_PRODUTOREAL.Value=0 then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfceItensNCI_PRODUTO.Value else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNfceItensNCI_PRODUTOREAL.Value;
      DM.TBProdutos.Open;
      //só baixa se for produto, se for serviço não baixa.
      if DM.TBProdutosPRO_TIPO.Value='P' then
      begin
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBNfceItensNCI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM.TBNfceNFC_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBNfceItensNCI_CONVERSAO.Value;
        DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA NOTA FISCAL CONSUMIDOR ELETRONICA';
        DM.TBEstoqueEST_NUMDOCTO.Value:='NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value);
        if DM.TBNfceItensNCI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBNfceItensNCI_PRODUTO.Value else
        begin
          DM.TBEstoqueEST_PRODUTO.Value:=DM.TBNfceItensNCI_PRODUTOREAL.Value; //dá baixa de outro produto.
          DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBNfceItensNCI_PRODUTO.Value; //código do produto que originou a baixa do outro.
        end;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBNfceItensNCI_QUANTIDADE.Value * DM.TBNfceItensNCI_CONVERSAO.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBNfceItensNCI_QUANTIDADE.Value;
        DM.TBEstoqueEST_TRANSACAO.Value:='S';
        if DM.TBNfceItensNCI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBNfceItensNCI_VALORUNIT.Value else
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBNfceItensNCI_VALORTOTAL.Value/DM.TBEstoqueEST_QUANTIDADE.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBNfceNFC_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end;
      DM.TBNfceItens.Next;
    end;
    DM.TBNfceItens.EnableControls;
  end;
end;

procedure TFormNfceFuncoes.RealizarContasReceber;
var ValorParcela, ValorParcelaSemDesconto, SomaParcelas, SomaParcelasSemDesconto, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  //A,M,D: Word;
begin
  if DM.TBNfceNFC_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    DM.TBNfcePagamentos.DisableControls;
    DM.TBNfcePagamentos.First;
    while not DM.TBNfcePagamentos.Eof do
    begin
      if DM.TBNfcePagamentosNCP_VALOR.Value > 0 then
      begin
        DM.TBCondicoes.Close;
        DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBNfcePagamentosNCP_CONDICAO.Value;
        DM.TBCondicoes.Open;

        ParcelaAtual:=0;
        DM.TBCondicoesItens.First;
        DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;
        ValorTotal:=DM.TBNfceNFC_VALORTOTAL.AsExtended;
        SomaParcelas:=0;
        SomaParcelasSemDesconto:=0;
        while not DM.TBCondicoesItens.Eof do
        begin
          Inc(ParcelaAtual);

          {$REGION 'gera data de vencimento'}
          if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
          begin
            if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
            Vencimento:=DM.TBNfceNFC_DTEMISSAO.Value else
            if DiasPrimeiraParcela=0 then
            Vencimento:=IncMonth(DM.TBNfceNFC_DTEMISSAO.Value,ParcelaAtual-1) else
            Vencimento:=IncMonth(DM.TBNfceNFC_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
          end else
          Vencimento:=DM.TBNfceNFC_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
          {$ENDREGION}

          {$REGION 'gera valor da parcela'}
          //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
          if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
          begin
            ValorParcela:=ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
            ValorParcelaSemDesconto:=(ValorTotal+DM.TBNfceNFC_DESCVALOR.AsExtended)/DM.TBCondicoesCPG_TOTALPARCELAS.Value; //para poder cobrar o desconto quando passar do vencimento, em forma de multa.
          end else
          begin
            ValorParcela:=(ValorTotal/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
            ValorParcelaSemDesconto:=((ValorTotal+DM.TBNfceNFC_DESCVALOR.AsExtended)/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
          end;

          ValorParcela:=Decimais(ValorParcela,2);
          ValorParcelaSemDesconto:=Decimais(ValorParcelaSemDesconto,2);
          SomaParcelas:=SomaParcelas+ValorParcela;
          SomaParcelasSemDesconto:=SomaParcelasSemDesconto+ValorParcela;
          {$ENDREGION}

          {$REGION 'verifica valor ultima parcela'}
          if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then
          begin
            if SomaParcelas > DM.TBNfceNFC_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-DM.TBNfceNFC_VALORTOTAL.AsExtended) else
            if SomaParcelas < DM.TBNfceNFC_VALORTOTAL.Value then ValorParcela:=ValorParcela+(DM.TBNfceNFC_VALORTOTAL.AsExtended-SomaParcelas);
            if SomaParcelasSemDesconto > DM.TBNfceNFC_VALORTOTAL.Value+DM.TBNfceNFC_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto-(SomaParcelasSemDesconto-(DM.TBNfceNFC_VALORTOTAL.AsExtended+DM.TBNfceNFC_DESCVALOR.AsExtended)) else
            if SomaParcelasSemDesconto < DM.TBNfceNFC_VALORTOTAL.Value+DM.TBNfceNFC_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto+((DM.TBNfceNFC_VALORTOTAL.AsExtended+DM.TBNfceNFC_DESCVALOR.AsExtended)-SomaParcelasSemDesconto);
          end;
          {$ENDREGION}

          {$REGION 'gera os lançamentos no contas a receber.'}
          if (Vencimento=DM.TBNfceNFC_DTEMISSAO.Value) and (DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value='S') then //se vencimento é igual (dias=0), então a qtde de dias é zero.
          begin
            GerarReceber(
              DM.TBCondicoesCPG_FORMAPAGTO.Value,
              'NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
              IntToStr(DM.TBNfceNFC_VENDA.Value),
              'LANCAMENTO AUTOMATICO NFCE-'+DM.TBNfceNFC_CODIGO.Value.ToString,
              'B',
              DateToStr(Vencimento),
              'T',
              DM.TBNfceNFC_CLIENTE.Value,
              DM.TBNfceNFC_VENDEDOR.Value,
              DM.TBNfceNFC_VENDEDOR.Value, //representante.
              DM.TBParametrosPAR_RECEITAPADRAO.Value,
              DM.TBCondicoesCPG_CONTA.Value,
              ParcelaAtual,
              DM.TBCondicoesCPG_TOTALPARCELAS.Value,
              Date,
              Vencimento,
              ValorParcela,
              ValorParcelaSemDesconto
            );
            GerarFluxoCaixa(DM.TBCondicoesCPG_FORMAPAGTO.Value,'NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value),'LANCAMENTO AUTOMATICO NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value),'E','NOTA FISCAL CONSUMIDOR ELETRONICA',DM.TBNfceNFC_NOME.Value,'',DM.UsuarioVendedor,DM.TBCondicoesCPG_CONTA.Value,DM.TBNfceNFC_CLIENTE.Value,0,Date,ValorParcela);
          end else
          begin
            GerarReceber(
              DM.TBCondicoesCPG_FORMAPAGTO.Value,
              'NFCE-'+IntToStr(DM.TBNfceNFC_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
              IntToStr(DM.TBNfceNFC_VENDA.Value),
              'LANCAMENTO AUTOMATICO NFCE-'+DM.TBNfeNFE_CODIGO.Value.ToString,
              'A',
              '',
              '',
              DM.TBNfceNFC_CLIENTE.Value,
              DM.TBNfceNFC_VENDEDOR.Value,
              DM.TBNfceNFC_VENDEDOR.Value, //representante.
              DM.TBParametrosPAR_RECEITAPADRAO.Value,
              DM.TBCondicoesCPG_CONTA.Value,
              ParcelaAtual,
              DM.TBCondicoesCPG_TOTALPARCELAS.Value,
              Date,
              Vencimento,
              ValorParcela,
              ValorParcelaSemDesconto
            );
          end;
          {$ENDREGION}
          DM.TBCondicoesItens.Next;
        end;
      end;
      DM.TBNfcePagamentos.Next;
    end;
    DM.TBNfcePagamentos.EnableControls;
  end;
end;

procedure TFormNfceFuncoes.SincronizarPedidoDeVenda;
begin
  //Rotina para deixar o pedido de venda igual à NFCe.
  if not DM.TBNfceNFC_VENDA.IsNull then
  begin
    TBVendas.Close;
    TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_VENDA.Value;
    TBVendas.Open;
    TBVendas.Edit;
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    {$REGION 'CAMPOS VENDAS'}
    TBVendasVED_ALIQICMSCREDSN.Value:=     DM.TBNfceNFC_ALIQICMSCREDSN.Value;
    TBVendasVED_BAIRRO.Value:=             DM.TBNfceNFC_BAIRRO.Value;
    //TBVendasVED_BAIXADATA.Value:=          DM.TBNfeNFE_BAIXADATA.Value;
    //TBVendasVED_BAIXAPOR.Value:=           DM.TBNfeNFE_BAIXAPOR.Value;
    TBVendasVED_BASECOFINS.Value:=         DM.TBNfceNFC_BASECOFINS.Value;
    TBVendasVED_BASECOFINSST.Value:=       DM.TBNfceNFC_BASECOFINSST.Value;
    TBVendasVED_BASEICMS.Value:=           DM.TBNfceNFC_BASEICMS.Value;
    TBVendasVED_BASEICMSST.Value:=         DM.TBNfceNFC_BASEICMSST.Value;
    //TBVendasVED_BASEII.Value:=
    TBVendasVED_BASEIPI.Value:=            DM.TBNfceNFC_BASEIPI.Value;
    //TBVendasVED_BASEISS.Value:=
    TBVendasVED_BASEPIS.Value:=            DM.TBNfceNFC_BASEPIS.Value;
    TBVendasVED_BASEPISST.Value:=          DM.TBNfceNFC_BASEPISST.Value;
    TBVendasVED_CEP.Value:=                DM.TBNfceNFC_CEP.Value;
    TBVendasVED_CFOP.Value:=               DM.TBNfceNFC_CFOP.Value;
    TBVendasVED_CFOPDESC.Value:=           DM.TBNfceNAT_DESCRICAO.Value;
    TBVendasVED_CIDADE.Value:=             DM.TBNfceNFC_CIDADE.Value;
    TBVendasVED_CIDADECODIGO.Value:=       DM.TBNfceNFC_CIDADECODIGO.Value;
    TBVendasVED_CLIENTE.Value:=            DM.TBNfceNFC_CLIENTE.Value;
    TBVendasVED_CNPJ.Value:=               DM.TBNfceNFC_CNPJ.Value;
    //TBVendasVED_CODIGO.Value:=             DM.TBNfceNFC_CODIGO.Value;
    //TBVendasVED_CODIMPORTACAO.Value:=      DM.TBNfceNFC_CODIMPORTACAO.Value;
    TBVendasVED_COMISSAO.Value:=           DM.TBNfceNFC_COMISSAO.Value;
    TBVendasVED_COMISSAOPOR.Value:=        DM.TBNfceNFC_COMISSAOPOR.Value;
    TBVendasVED_COMPLEMENTO.Value:=        DM.TBNfceNFC_COMPLEMENTO.Value;
    TBVendasVED_CONDICAO.Value:=           DM.TBNfceNFC_CONDICAO.Value;
    //TBVendasVED_CONDICAOMEMO.Value:=
    //TBVendasVED_CONFERIDO.Value:=
    //TBVendasVED_CONFERIDODATA.Value:=
    //TBVendasVED_CONFERIDOPOR.Value:=
    TBVendasVED_CONTATO.Value:=            DM.TBNfceNFC_CONTATO.Value;
    TBVendasVED_CPF.Value:=                DM.TBNfceNFC_CPF.Value;
    TBVendasVED_CUSTOTOTAL.Value:=         DM.TBNfceNFC_CUSTOTOTAL.Value;
    //TBVendasVED_DAV.Value:=
    TBVendasVED_DESCPORC.Value:=           DM.TBNfceNFC_DESCPORC.Value;
    //TBVendasVED_DESCPORCCLIENTE.Value:=
    //TBVendasVED_DESCPORCCONDICAO.Value:=
    TBVendasVED_DESCVALOR.Value:=          DM.TBNfceNFC_DESCVALOR.Value;
    //TBVendasVED_DESTACARIMPOSTOS.Value:=
    //TBVendasVED_DIAPREFERENCIAL.Value:=
    TBVendasVED_DTATUALIZACAO.Value:=      DM.TBNfceNFC_DTATUALIZACAO.Value;
    //TBVendasVED_DTCADASTRO.Value:=         DM.TBNfceNFC_DTCADASTRO.Value;
    //TBVendasVED_DTEMISSAO.Value:=          DM.TBNfceNFC_DTEMISSAO.Value;
    //TBVendasVED_DTPRESTSERVICO.Value:=
    //TBVendasVED_DTSAIDA.Value:=            DM.TBNfceNFC_DTSAIDA.Value;
    TBVendasVED_ENDERECO.Value:=           DM.TBNfceNFC_ENDERECO.Value;
    //TBVendasVED_ENTRADASAIDA.Value:=
    //TBVendasVED_ENTREGUE.Value:=           DM.TBNfceNFC_ENTREGUE.Value;
    //TBVendasVED_ESPECIE.Value:=
    TBVendasVED_ESTADO.Value:=             DM.TBNfceNFC_ESTADO.Value;
    TBVendasVED_ESTADOCODIGO.Value:=       DM.TBNfceNFC_ESTADOCODIGO.Value;
    //TBVendasVED_EXLOCAL.Value:=
    //TBVendasVED_EXPEDIDOPOR.Value:=
    //TBVendasVED_EXUFSAIDA.Value:=
    TBVendasVED_FONE1.Value:=              DM.TBNfceNFC_FONE1.Value;
    TBVendasVED_FORMAPAGTO.Value:=         DM.TBNfceNFC_FORMAPAGTO.Value;
    //TBVendasVED_FRETE.Value:=
    //TBVendasVED_IDESTRANGEIRO.Value:=
    TBVendasVED_IE.Value:=                 DM.TBNfceNFC_IE.Value;
    TBVendasVED_INFOADICFISCO.Value:=      DM.TBNfceNFC_INFOADICFISCO.Value;
    //TBVendasVED_INFOCOMPLEMENTAR.Value:=
    //TBVendasVED_LACRES.Value:=
    TBVendasVED_LUCROPORC.Value:=          DM.TBNfceNFC_LUCROPORC.Value;
    TBVendasVED_LUCROVALOR.Value:=         DM.TBNfceNFC_LUCROVALOR.Value;
    //TBVendasVED_MANUAL.Value:=
    //TBVendasVED_MARCA.Value:=
    TBVendasVED_MOVIMENTAESTOQUE.Value:=   DM.TBNfceNFC_MOVIMENTAESTOQUE.Value;
    TBVendasVED_MOVIMENTAFINANCEIRO.Value:=DM.TBNfceNFC_MOVIMENTAFINANCEIRO.Value;
    //TBVendasVED_NFCE.Value:=
    //TBVendasVED_NFE.Value:=                DM.TBNfceNFC_NFE.Value;
    TBVendasVED_NOME.Value:=               DM.TBNfceNFC_NOME.Value;
    //TBVendasVED_NOTA.Value:=               DM.TBNfceNFC_NOTA.Value;
    TBVendasVED_NUMERO.Value:=             DM.TBNfceNFC_NUMERO.Value;
    TBVendasVED_OBSERVACOES.Value:=        DM.TBNfceNFC_OBSERVACOES.Value;
    //TBVendasVED_PAIS.Value:=
    //TBVendasVED_PAISCODIGO.Value:=
    //TBVendasVED_PEDIDOCLIENTE.Value:=
    TBVendasVED_PESOBRUTO.Value:=          DM.TBNfceNFC_PESOBRUTO.Value;
    TBVendasVED_PESOLIQ.Value:=            DM.TBNfceNFC_PESOLIQ.Value;
    //TBVendasVED_REBOQUEPLACA.Value:=
    //TBVendasVED_REBOQUEPLACAUF.Value:=
    //TBVendasVED_REBOQUERNTC.Value:=
    //TBVendasVED_RG.Value:=
    //TBVendasVED_SUFRAMA.Value:=
    TBVendasVED_SEQUENCIAITEM.Value:=      DM.TBNfceNFC_SEQUENCIAITEM.Value;
    //TBVendasVED_STATUS.Value:=             DM.TBNfceNFC_STATUS.Value;
    TBVendasVED_TABELAPRECO.Value:=        DM.TBNfceNFC_TABELAPRECO.Value;
    TBVendasVED_TIPOATENDIMENTO.Value:=    DM.TBNfceNFC_TIPOATENDIMENTO.Value;
    TBVendasVED_TIPOCONSUMIDOR.Value:=     DM.TBNfceNFC_TIPOCONSUMIDOR.Value;
    TBVendasVED_TIPOOPERACAO.Value:=       DM.TBNfceNFC_TIPOOPERACAO.Value;
    //TBVendasVED_TOTALADUANA.Value:=
    //TBVendasVED_TOTALBRUTO.Value:=
    TBVendasVED_TOTALCOFINS.Value:=        DM.TBNfceNFC_TOTALCOFINS.Value;
    TBVendasVED_TOTALCOFINSST.Value:=      DM.TBNfceNFC_TOTALCOFINSST.Value;
    TBVendasVED_TOTALCOMISSAO.Value:=      DM.TBNfceNFC_TOTALCOMISSAO.Value;
    TBVendasVED_TOTALFCP.Value:=           DM.TBNfceNFC_TOTALFCP.Value;
    TBVendasVED_TOTALFCPST.Value:=         DM.TBNfceNFC_TOTALFCPST.Value;
    TBVendasVED_TOTALICMS.Value:=          DM.TBNfceNFC_TOTALICMS.Value;
    TBVendasVED_TOTALICMSCREDSN.Value:=    DM.TBNfceNFC_TOTALICMSCREDSN.Value;
    TBVendasVED_TOTALICMSST.Value:=        DM.TBNfceNFC_TOTALICMSST.Value;
    TBVendasVED_TOTALICMSUFDEST.Value:=    DM.TBNfceNFC_TOTALICMSUFDEST.Value;
    TBVendasVED_TOTALICMSUFREMET.Value:=   DM.TBNfceNFC_TOTALICMSUFREMET.Value;
    //TBVendasVED_TOTALII.Value:=
    //TBVendasVED_TOTALIOF.Value:=
    TBVendasVED_TOTALIPI.Value:=           DM.TBNfceNFC_TOTALIPI.Value;
    //TBVendasVED_TOTALISS.Value:=
    //TBVendasVED_TOTALISSDEDUCAO.Value:=
    //TBVendasVED_TOTALISSDESCCOND.Value:=
    //TBVendasVED_TOTALISSDESCINCOND.Value:=
    //TBVendasVED_TOTALISSOUTROS.Value:=
    //TBVendasVED_TOTALISSRETENCAO.Value:=
    //TBVendasVED_TOTALITENS.Value:=
    TBVendasVED_TOTALPIS.Value:=           DM.TBNfceNFC_TOTALPIS.Value;
    TBVendasVED_TOTALPISST.Value:=         DM.TBNfceNFC_TOTALPISST.Value;
    TBVendasVED_TOTALPRODUTOS.Value:=      DM.TBNfceNFC_TOTALPRODUTOS.Value;
    //TBVendasVED_TOTALSERVICOS.Value:=
    TBVendasVED_TOTALTRIBUTOS.Value:=      DM.TBNfceNFC_TOTALTRIBUTOS.Value;
    TBVendasVED_TOTALTRIBUTOSEST.Value:=   DM.TBNfceNFC_TOTALTRIBUTOSEST.Value;
    TBVendasVED_TOTALTRIBUTOSFED.Value:=   DM.TBNfceNFC_TOTALTRIBUTOSFED.Value;
    TBVendasVED_TOTALTRIBUTOSIMP.Value:=   DM.TBNfceNFC_TOTALTRIBUTOSIMP.Value;
    TBVendasVED_TOTALTRIBUTOSMUN.Value:=   DM.TBNfceNFC_TOTALTRIBUTOSMUN.Value;
    //TBVendasVED_TRANSPCIDADE.Value:=
    //TBVendasVED_TRANSPCNPJ.Value:=
    //TBVendasVED_TRANSPCPF.Value:=
    //TBVendasVED_TRANSPEMAIL.Value:=
    //TBVendasVED_TRANSPENDERECO.Value:=
    //TBVendasVED_TRANSPESTADO.Value:=
    //TBVendasVED_TRANSPFONE.Value:=
    //TBVendasVED_TRANSPIE.Value:=
    //TBVendasVED_TRANSPNOME.Value:=
    //TBVendasVED_TRANSPORTADORA.Value:=
    TBVendasVED_USUARIO.Value:=            DM.TBNfceNFC_USUARIO.Value;
    //TBVendasVED_VALORDESPACES.Value:=
    TBVendasVED_VALORFRETE.Value:=         DM.TBNfceNFC_VALORFRETE.Value;
    //TBVendasVED_VALORSEGURO.Value:=
    TBVendasVED_VALORTOTAL.Value:=         DM.TBNfceNFC_VALORTOTAL.Value;
    //TBVendasVED_VEICULOPLACA.Value:=
    //TBVendasVED_VEICULOPLACAUF.Value:=
    //TBVendasVED_VEICULORNTC.Value:=
    TBVendasVED_VENDEDOR.Value:=           DM.TBNfceNFC_VENDEDOR.Value;
    //TBVendasVED_VIAINTERNET.Value:=
    //TBVendasVED_VIAINTERNETSTATUS.Value:=
    //TBVendasVED_VOLUMES.Value:=
    //TBVendasVED_VOLUMESNUM.Value:=
    {$ENDREGION}
    TBVendas.Post;

    //elimina os itens da venda e atualiza com os itens da NFe.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('delete from VENDASITENS where VEI_VENDA=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_VENDA.Value;
    DM.QYAux.ExecSQL;

    //insere novamente os itens da venda.
    TBVendasItens.Open;
    DM.TBNfceItens.First;
    while not DM.TBNfceItens.Eof do
    begin
      TBVendasItens.Insert;
      {$REGION 'CAMPOS VENDASITENS'}
      TBVendasItensVEI_ALIQCOFINS.Value:=         DM.TBNfceItensNCI_ALIQCOFINS.Value;
      TBVendasItensVEI_ALIQCOFINSST.Value:=       DM.TBNfceItensNCI_ALIQCOFINSST.Value;
      TBVendasItensVEI_ALIQFCP.Value:=            DM.TBNfceItensNCI_ALIQFCP.Value;
      TBVendasItensVEI_ALIQFCPST.Value:=          DM.TBNfceItensNCI_ALIQFCPST.Value;
      TBVendasItensVEI_ALIQICMS.Value:=           DM.TBNfceItensNCI_ALIQICMS.Value;
      TBVendasItensVEI_ALIQICMSADICST.Value:=     DM.TBNfceItensNCI_ALIQICMSADICST.Value;
      TBVendasItensVEI_ALIQICMSINTER.Value:=      DM.TBNfceItensNCI_ALIQICMSINTER.Value;
      TBVendasItensVEI_ALIQICMSINTERPART.Value:=  DM.TBNfceItensNCI_ALIQICMSINTERPART.Value;
      TBVendasItensVEI_ALIQICMSRED.Value:=        DM.TBNfceItensNCI_ALIQICMSRED.Value;
      TBVendasItensVEI_ALIQICMSST.Value:=         DM.TBNfceItensNCI_ALIQICMSST.Value;
      //TBVendasItensVEI_ALIQICMSSTRET.Value:=
      //TBVendasItensVEI_ALIQII.Value:=
      //TBVendasItensVEI_ALIQIPI.Value:=
      //TBVendasItensVEI_ALIQISS.Value:=
      TBVendasItensVEI_ALIQPIS.Value:=            DM.TBNfceItensNCI_ALIQPIS.Value;
      TBVendasItensVEI_ALIQPISST.Value:=          DM.TBNfceItensNCI_ALIQPISST.Value;
      TBVendasItensVEI_ALMOXARIFADO.Value:=       DM.TBNfceItensNCI_ALMOXARIFADO.Value;
      TBVendasItensVEI_BASECOFINS.Value:=         DM.TBNfceItensNCI_BASECOFINS.Value;
      TBVendasItensVEI_BASECOFINSST.Value:=       DM.TBNfceItensNCI_BASECOFINSST.Value;
      TBVendasItensVEI_BASEICMS.Value:=           DM.TBNfceItensNCI_BASEICMS.Value;
      TBVendasItensVEI_BASEICMSRED.Value:=        DM.TBNfceItensNCI_BASEICMSRED.Value;
      TBVendasItensVEI_BASEICMSST.Value:=         DM.TBNfceItensNCI_BASEICMSST.Value;
      //TBVendasItensVEI_BASEICMSSTRET.Value:=
      //TBVendasItensVEI_BASEII.Value:=
      TBVendasItensVEI_BASEIPI.Value:=            DM.TBNfceItensNCI_BASEIPI.Value;
      //TBVendasItensVEI_BASEISS.Value:=
      TBVendasItensVEI_BASEPIS.Value:=            DM.TBNfceItensNCI_BASEPIS.Value;
      TBVendasItensVEI_BASEPISST.Value:=          DM.TBNfceItensNCI_BASEPISST.Value;
      TBVendasItensVEI_BENEFICIO.Value:=          DM.TBNfceItensNCI_BENEFICIO.Value;
      TBVendasItensVEI_CEST.Value:=               DM.TBNfceItensNCI_CEST.Value;
      TBVendasItensVEI_CFOP.Value:=               DM.TBNfceItensNCI_CFOP.Value;
      //TBVendasItensVEI_CIDADEISS.Value:=
      TBVendasItensVEI_CLASSFISCAL.Value:=        DM.TBNfceItensNCI_CLASSFISCAL.Value;
      //TBVendasItensVEI_CODIGO.Value:=            DM.TBNfceItensNCI_CODIGO.Value;
      TBVendasItensVEI_CODIGOBARRAS.Value:=       DM.TBNfceItensNCI_CODIGOBARRAS.Value;
      //TBVendasItensVEI_CODIGOFAB.Value:=
      TBVendasItensVEI_COMISSAO.Value:=           DM.TBNfceItensNCI_COMISSAO.Value;
      TBVendasItensVEI_COMPLEMENTO.Value:=        DM.TBNfceItensNCI_COMPLEMENTO.Value;
      TBVendasItensVEI_COMPOEBASEICMS.Value:=     DM.TBNfceItensNCI_COMPOEBASEICMS.Value;
      TBVendasItensVEI_COMPOEBASEICMSST.Value:=   DM.TBNfceItensNCI_COMPOEBASEICMSST.Value;
      TBVendasItensVEI_COMPOETOTAL.Value:=        'S';
      TBVendasItensVEI_CONVERSAO.Value:=          DM.TBNfceItensNCI_CONVERSAO.Value;
      TBVendasItensVEI_CSTCOFINS.Value:=          DM.TBNfceItensNCI_CSTCOFINS.Value;
      TBVendasItensVEI_CSTICMS.Value:=            DM.TBNfceItensNCI_CSTICMS.Value;
      TBVendasItensVEI_CSTIPI.Value:=             DM.TBNfceItensNCI_CSTIPI.Value;
      TBVendasItensVEI_CSTPIS.Value:=             DM.TBNfceItensNCI_CSTPIS.Value;
      //TBVendasItensVEI_DESCMAX.Value:=
      TBVendasItensVEI_DESCPORC.Value:=           DM.TBNfceItensNCI_DESCPORC.Value;
      TBVendasItensVEI_DESCRICAO.Value:=          DM.TBNfceItensNCI_DESCRICAO.Value;
      TBVendasItensVEI_DESCVALOR.Value:=          DM.TBNfceItensNCI_DESCVALOR.Value;
      //TBVendasItensVEI_DESONERACAO.Value:=
      //TBVendasItensVEI_DICNPJ.Value:=
      //TBVendasItensVEI_DIDATA.Value:=
      //TBVendasItensVEI_DIDESEMBARACODATA.Value:=
      //TBVendasItensVEI_DIDESEMBARACOLOCAL.Value:=
      //TBVendasItensVEI_DIDESEMBARACOUF.Value:=
      //TBVendasItensVEI_DIEXPORTADORCOD.Value:=
      //TBVendasItensVEI_DIINTERMEDIO.Value:=
      //TBVendasItensVEI_DINUMERO.Value:=
      //TBVendasItensVEI_DITERCEIROUF.Value:=
      //TBVendasItensVEI_DITRANSPORTE.Value:=
      //TBVendasItensVEI_DIVALORAFRMM.Value:=
      //TBVendasItensVEI_ENQUADRAMENTOIPI.Value:=
      //TBVendasItensVEI_EXCHAVEACESSO.Value:=
      //TBVendasItensVEI_EXDRAWBACK.Value:=
      //TBVendasItensVEI_EXQUANTIDADE.Value:=
      //TBVendasItensVEI_EXREGISTRO.Value:=
      //TBVendasItensVEI_FCI.Value:=
      //TBVendasItensVEI_INCENTIVOISS.Value:=
      //TBVendasItensVEI_INDICADORISS.Value:=
      //TBVendasItensVEI_INFOADICIONAL.Value:=
      //TBVendasItensVEI_LOCALIZACAO.Value:=
      //TBVendasItensVEI_LOTE.Value:=
      TBVendasItensVEI_LUCROPORC.Value:=          DM.TBNfceItensNCI_LUCROPORC.Value;
      TBVendasItensVEI_LUCROVALOR.Value:=         DM.TBNfceItensNCI_LUCROVALOR.Value;
      TBVendasItensVEI_MODICMS.Value:=            DM.TBNfceItensNCI_MODICMS.Value;
      TBVendasItensVEI_MODICMSST.Value:=          DM.TBNfceItensNCI_MODICMSST.Value;
      TBVendasItensVEI_ORIGEM.Value:=             DM.TBNfceItensNCI_ORIGEM.Value;
      //TBVendasItensVEI_PAISISS.Value:=
      //TBVendasItensVEI_PEDIDOCLIENTE.Value:=
      //TBVendasItensVEI_PEDIDOCLIENTEITEM.Value:=
      TBVendasItensVEI_PESO.Value:=               DM.TBNfceItensNCI_PESO.Value;
      TBVendasItensVEI_PESOTOTAL.Value:=          DM.TBNfceItensNCI_PESOTOTAL.Value;
      TBVendasItensVEI_PRECOCUSTO.Value:=         DM.TBNfceItensNCI_PRECOCUSTO.Value;
      TBVendasItensVEI_PRECOCUSTOTOTAL.Value:=    DM.TBNfceItensNCI_PRECOCUSTOTOTAL.Value;
      //TBVendasItensVEI_PROCESSOISS.Value:=
      TBVendasItensVEI_PRODUTO.Value:=            DM.TBNfceItensNCI_PRODUTO.Value;
      TBVendasItensVEI_PRODUTOREAL.Value:=        DM.TBNfceItensNCI_PRODUTOREAL.Value;
      TBVendasItensVEI_QUANTIDADE.Value:=         DM.TBNfceItensNCI_QUANTIDADE.Value;
      //TBVendasItensVEI_QUANTIDADETROCA.Value:=
      TBVendasItensVEI_SEQUENCIA.Value:=          DM.TBNfceItensNCI_SEQUENCIA.Value;
      //TBVendasItensVEI_SERVICOISS.Value:=
      //TBVendasItensVEI_SOMACOFINSST.Value:=
      //TBVendasItensVEI_SOMAPISST.Value:=
      TBVendasItensVEI_TIPO.Value:=               DM.TBNfceItensNCI_TIPO.Value;
      //TBVendasItensVEI_TIPOISS.Value:=
      TBVendasItensVEI_UNIDADE.Value:=            DM.TBNfceItensNCI_UNIDADE.Value;
      TBVendasItensVEI_VALORACESSORIAS.Value:=    DM.TBNfceItensNCI_VALORACESSORIAS.Value;
      //TBVendasItensVEI_VALORADUANA.Value:=
      TBVendasItensVEI_VALORCOFINS.Value:=        DM.TBNfceItensNCI_VALORCOFINS.Value;
      TBVendasItensVEI_VALORCOFINSST.Value:=      DM.TBNfceItensNCI_VALORCOFINSST.Value;
      TBVendasItensVEI_VALORCOMISSAO.Value:=      DM.TBNfceItensNCI_VALORCOMISSAO.Value;
      TBVendasItensVEI_VALORFCP.Value:=           DM.TBNfceItensNCI_VALORFCP.Value;
      TBVendasItensVEI_VALORFCPST.Value:=         DM.TBNfceItensNCI_VALORFCPST.Value;
      TBVendasItensVEI_VALORFRETE.Value:=         DM.TBNfceItensNCI_VALORFRETE.Value;
      TBVendasItensVEI_VALORICMS.Value:=          DM.TBNfceItensNCI_VALORICMS.Value;
      TBVendasItensVEI_VALORICMSCREDSN.Value:=    DM.TBNfceItensNCI_VALORICMSCREDSN.Value;
      //TBVendasItensVEI_VALORICMSDESONERADO.Value:=
      TBVendasItensVEI_VALORICMSST.Value:=        DM.TBNfceItensNCI_VALORICMSST.Value;
      //TBVendasItensVEI_VALORICMSSTRET.Value:=
      //TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=
      TBVendasItensVEI_VALORICMSUFDEST.Value:=    DM.TBNfceItensNCI_VALORICMSUFDEST.Value;
      TBVendasItensVEI_VALORICMSUFREMET.Value:=   DM.TBNfceItensNCI_VALORICMSUFREMET.Value;
      //TBVendasItensVEI_VALORII.Value:=
      //TBVendasItensVEI_VALORIOF.Value:=
      TBVendasItensVEI_VALORIPI.Value:=           DM.TBNfceItensNCI_VALORIPI.Value;
      //TBVendasItensVEI_VALORISS.Value:=
      //TBVendasItensVEI_VALORISSDEDUCAO.Value:=
      //TBVendasItensVEI_VALORISSDESCCOND.Value:=
      //TBVendasItensVEI_VALORISSDESCINCOND.Value:=
      //TBVendasItensVEI_VALORISSOUTROS.Value:=
      //TBVendasItensVEI_VALORISSRETENCAO.Value:=
      TBVendasItensVEI_VALORPIS.Value:=           DM.TBNfceItensNCI_VALORPIS.Value;
      TBVendasItensVEI_VALORPISST.Value:=         DM.TBNfceItensNCI_VALORPISST.Value;
      //TBVendasItensVEI_VALORSEGURO.Value:=
      TBVendasItensVEI_VALORTOTAL.Value:=         DM.TBNfceItensNCI_VALORTOTAL.Value;
      TBVendasItensVEI_VALORTOTALBRUTO.Value:=    DM.TBNfceItensNCI_VALORTOTALBRUTO.Value;
      TBVendasItensVEI_VALORTRIBUTOS.Value:=      DM.TBNfceItensNCI_VALORTRIBUTOS.Value;
      TBVendasItensVEI_VALORTRIBUTOSEST.Value:=   DM.TBNfceItensNCI_VALORTRIBUTOSEST.Value;
      TBVendasItensVEI_VALORTRIBUTOSFED.Value:=   DM.TBNfceItensNCI_VALORTRIBUTOSFED.Value;
      TBVendasItensVEI_VALORTRIBUTOSIMP.Value:=   DM.TBNfceItensNCI_VALORTRIBUTOSIMP.Value;
      TBVendasItensVEI_VALORTRIBUTOSMUN.Value:=   DM.TBNfceItensNCI_VALORTRIBUTOSMUN.Value;
      TBVendasItensVEI_VALORUNIT.Value:=          DM.TBNfceItensNCI_VALORUNIT.Value;
      TBVendasItensVEI_VENDA.Value:=              DM.TBNfceNFC_VENDA.Value; //código do pedido está na capa.
      {$ENDREGION}
      TBVendasItens.Post;

      DM.TBNfceItens.Next;
    end;
    TBVendasItens.Close;

    //Lê o registro atualizado.
    DM.TBVendasItens.Close;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_VENDA.Value;
    DM.TBVendas.Open;
    DM.TBVendasItens.Open;
  end;
end;

function TFormNfceFuncoes.NaoExisteNaSefaz(ChaveAcesso: String): Boolean;
begin
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.NotasFiscais.Clear;
  DM.ACBrNFe1.WebServices.Consulta.NFeChave:=ChaveAcesso;
  DM.ACBrNFe1.WebServices.Consulta.Executar;
  Result:=False;
  //217 -> Rejeicao: NF-e nao consta na base de dados da SEFAZ
  if DM.ACBrNFe1.WebServices.Consulta.cStat=217 then
  Result:=True;
end;

//###############################################################
//procedures de envio de NFCE pela flexdocs.
//###############################################################
function TFormNfceFuncoes.MontarIdentificacao(const U: NFe_Util_2G_Interface): WideString;
var idDest, tpNF: Integer;
  cMunFG, dhCont, xJust, tpNFCredito, tpNFDebito: String;
  NFRef, gCompraGov, gPagAntecipado: WideString;
begin
  NFRef:=''; //nao tem... é pra ter na NFCE? MontarReferenciadas(U);

  //tpNF:=0; //0:entrada 1:saida.
  //if DM.TBNfceNFC_ENTRADASAIDA.Value='S' then
  tpNF:=1;
  dhCont:='';
  xJust:='';
  if DM.TBNfceNFC_TIPOEMISSAO.Value<>'1 - NORMAL' then
  begin
    dhCont:=UTC(DM.TBParametrosPAR_NFCECONTINGENCIADATA.Value,DM.TBParametrosPAR_NFCECONTINGENCIAHORA.Value,DM.TBParametrosPAR_FUSOHORARIO.Value);
    xJust:=DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value;
  end;

  idDest:=1; //1=operação interna... se estado do cliente é diferente do estado da empresa, op interestadual (2).
  if DM.TBEmpresaEMP_ESTADO.Value<>DM.TBNfceNFC_ESTADO.Value then
  idDest:=2;
  if DM.TBNfceNFC_ESTADO.Value='EX' then //se estado=EX=Exterior.
  idDest:=3;

  tpNFCredito:='';
  if DM.TBNfceNFC_NOTACREDITO.Value<>'00 - NENHUM' then
  tpNFCredito:=Copy(DM.TBNfceNFC_NOTACREDITO.Value,1,2);

  tpNFDebito:='';
  if DM.TBNfceNFC_NOTADEBITO.Value<>'00 - NENHUM' then
  tpNFDebito:=Copy(DM.TBNfceNFC_NOTADEBITO.Value,1,2);

  cMunFG:='';
  if DM.TBNfceNFC_TIPOATENDIMENTO.Value='5 - OPERACAO PRESENCIAL FORA DO ESTABELECIMENTO' then
  cMunFG:=DM.TBNfceNFC_CIDADECODIGO.Value.ToString; //ver futuramente se precisa criar campo especifico ou mantemos no cadastro do cliente.

  gCompraGov:='';
  if DM.TBNfceNFC_GOVERNAMENTAL.Value<>'0 - NENHUM' then
  gCompraGov:=U.gCompraGov(
    StrToInt(Copy(DM.TBNfceNFC_GOVERNAMENTAL.Value,1,1)),
    DM.TBNfceNFC_GOVERNAMENTALALIQRED.AsExtended,
    StrToInt(Copy(DM.TBNfceNFC_GOVERNAMENTALOP.Value,1,1))
  );

  gPagAntecipado:='';

  Result:=U.identificadorRTCv140(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    StrToInt(DM.TBNfceNFC_CODIGONUMERICO.Value),
    '',//DM.TBNfceNFC_CFOPDESC.Value,
    DM.TBNfceNFC_MODELO.Value,
    DM.TBNfceNFC_SERIE.Value,
    DM.TBNfceNFC_CODIGO.Value,
    UTC(DM.TBNfceNFC_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    UTC(DM.TBNfceNFC_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    tpNF,
    idDest, //1:op interna 2:op interestadual 3:op com exterior.
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    NFRef,
    1, //1:retrato 2:paisagem.
    StrToInt(Copy(DM.TBNfceNFC_TIPOEMISSAO.Value,1,1)),
    StrToInt(Copy(DM.TBNfceNFC_CHAVEACESSO.Value,Length(DM.TBNfeNFE_CHAVEACESSO.Value),1)),
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value),
    StrToInt(Copy(DM.TBNfceNFC_FINALIDADE.Value,1,1)),
    StrToInt(Copy(DM.TBNfceNFC_TIPOCONSUMIDOR.Value,1,1)), //0:nao consumidor final 1:consumidor final.
    StrToInt(Copy(DM.TBNfceNFC_TIPOATENDIMENTO.Value,1,1)), //0:nao se aplica 1:op presencial 2:op nao presencial pela internet 3:op nao presencial teleatendimento 4:NFC-e em op de entrega a domicilio 5:op nao presencial, outros.
    0, //0-app proprio, 1-avulsa pelo fisco, 2-avulsa pelo cont. pelo site, 3-app do fisco.
    'Runtime',
    dhCont,
    xJust,
    0,//StrToInt(Copy(DM.TBNfceNFC_INTERMEDIADOR.Value,1,1)),
    cMunFG,
    tpNFDebito,
    tpNFCredito,
    gCompraGov,
    gPagAntecipado,
    '', //dPrevEntrega,
    '' //cIndOp
  );
end;

function TFormNfceFuncoes.MontarEmitente(const U: NFe_Util_2G_Interface): WideString;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfceNFC_ESTADO.Value,[]); //localiza o estado do cliente na tabela de aliquotas para preencher a IE ST.   //a empresa pode ter uma IE ST para cada estado.
  Result:=U.Emitente2G(
    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    '',
    DM.TBEmpresaEMP_NOME.Value,
    DM.TBEmpresaEMP_NOMEFANTASIA.Value,
    DM.TBEmpresaEMP_ENDERECO.Value,
    DM.TBEmpresaEMP_NUMERO.Value,
    '',
    DM.TBEmpresaEMP_BAIRRO.Value,
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    DM.TBEmpresaEMP_CIDADE.Value,
    DM.TBEmpresaEMP_ESTADO.Value,
    LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
    IntToStr(DM.TBEmpresaEMP_PAISCODIGO.Value),
    DM.TBEmpresaEMP_PAIS.Value,
    LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
    LimparFormatacao(DM.TBAliquotasALI_IEST.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IM.Value),
    LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value),
    Copy(DM.TBEmpresaEMP_ENQUADRAMENTO.Value,1,1)
  );
end;

function TFormNfceFuncoes.MontarDestinatario(const U: NFe_Util_2G_Interface): WideString;
var CNPJ, CPF, Fone, IDEstrangeiro, IndIEDest, NumeroCob, xNome: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfceNFC_CLIENTE.Value;
  DM.TBClientes.Open;
  if DM.TBClientesCLI_IDESTRANGEIRO.Value<>'' then
  begin
    IDEstrangeiro:=DM.TBClientesCLI_IDESTRANGEIRO.Value;
    CNPJ:='';
    CPF:='';
  end else
  begin
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    //estava dando problema com nulo e vazio... if (not DM.TBNfeNFE_CNPJ.IsNull) and (DM.TBNfeNFE_CNPJ.Value<>'  .   .   /    -  ') then
    begin
      IDEstrangeiro:='';
      CNPJ:=LimparFormatacao(DM.TBNfceNFC_CNPJ.Value);
      CPF:='';
    end else
    begin
      IDEstrangeiro:='';
      CNPJ:='';
      CPF:=LimparFormatacao(DM.TBNfceNFC_CPF.Value);
    end;
  end;
  IndIEDest:=Copy(DM.TBClientesCLI_CONTRIBUINTEICMS.Value,1,1);
  if DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value='2' then
  xNome:='NFC-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  xNome:=DM.TBNfceNFC_NOME.Value;
  NumeroCob:=DM.TBNfceNFC_NUMERO.Value;
  if NumeroCob='' then NumeroCob:='SN'; //chega desse erro idiota.
  Fone:=LimparFormatacao(DM.TBNfceNFC_FONE1.Value);
  if Fone.Length<11 then
  Fone:=''; //chega desse erro idiota também.
  Result:=U.destinatario310(
    CNPJ, CPF, IDEstrangeiro, xNome, DM.TBNfceNFC_ENDERECO.Value, NumeroCob, DM.TBNfceNFC_COMPLEMENTO.Value,
    DM.TBNfceNFC_BAIRRO.Value, IntToStr(DM.TBNfceNFC_CIDADECODIGO.Value), DM.TBNfceNFC_CIDADE.Value,
    DM.TBNfceNFC_ESTADO.Value, LimparFormatacao(DM.TBNfceNFC_CEP.Value),
    '1058', 'BRASIL', Fone,
    IndIEDest, LimparFormatacao(DM.TBNfceNFC_IE.Value), LimparFormatacao(DM.TBClientesCLI_SUFRAMA.Value), '', ''
  );
end;

end.
