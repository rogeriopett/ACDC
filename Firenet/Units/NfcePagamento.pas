unit NfcePagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Comp.Client, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFormNfcePagamento = class(TForm)
    MainMenu1: TMainMenu;
    Menus1: TMenuItem;
    FinalizarVenda1: TMenuItem;
    ContinuarAVenda1: TMenuItem;
    DBGrid1: TDBGrid;
    TBCondicoes: TClientDataSet;
    DSCondicoes: TDataSource;
    TBCondicoesCPG_CODIGO: TIntegerField;
    TBCondicoesCPG_DESCRICAO: TStringField;
    TBCondicoesCPG_MEIOPAGAMENTO: TStringField;
    TBCondicoesCPG_TIPOINTEGRACAO: TStringField;
    TBCondicoesCPG_TOTALPARCELAS: TIntegerField;
    TBCondicoesVALOR: TCurrencyField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Desconto1: TMenuItem;
    Acrescimo1: TMenuItem;
    Panel1: TPanel;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn5: TPngBitBtn;
    PngBitBtn4: TPngBitBtn;
    TRNfce: TFDTransaction;
    TRNfceItens: TFDTransaction;
    QYNfce: TFDQuery;
    QYNfceItens: TFDQuery;
    UPNfce: TFDUpdateSQL;
    UPNfceItens: TFDUpdateSQL;
    QYNfceNFC_ACREPORC: TFMTBCDField;
    QYNfceNFC_ACREVALOR: TFMTBCDField;
    QYNfceNFC_ALIQICMSCREDSN: TFMTBCDField;
    QYNfceNFC_BAIRRO: TStringField;
    QYNfceNFC_BASECOFINS: TFMTBCDField;
    QYNfceNFC_BASECOFINSST: TFMTBCDField;
    QYNfceNFC_BASEICMS: TFMTBCDField;
    QYNfceNFC_BASEICMSST: TFMTBCDField;
    QYNfceNFC_BASEIPI: TFMTBCDField;
    QYNfceNFC_BASEPIS: TFMTBCDField;
    QYNfceNFC_BASEPISST: TFMTBCDField;
    QYNfceNFC_CEP: TStringField;
    QYNfceNFC_CFOP: TIntegerField;
    QYNfceNFC_CHAVEACESSO: TStringField;
    QYNfceNFC_CIDADE: TStringField;
    QYNfceNFC_CIDADECODIGO: TIntegerField;
    QYNfceNFC_CLIENTE: TIntegerField;
    QYNfceNFC_CNPJ: TStringField;
    QYNfceNFC_CODIGO: TIntegerField;
    QYNfceNFC_CODIGONFCE: TIntegerField;
    QYNfceNFC_CODIGONUMERICO: TStringField;
    QYNfceNFC_COMISSAO: TFMTBCDField;
    QYNfceNFC_COMISSAOPOR: TStringField;
    QYNfceNFC_COMPLEMENTO: TStringField;
    QYNfceNFC_CONDICAO: TIntegerField;
    QYNfceNFC_CONTATO: TStringField;
    QYNfceNFC_CONTINGENCIA: TStringField;
    QYNfceNFC_CPF: TStringField;
    QYNfceNFC_CUSTOTOTAL: TFMTBCDField;
    QYNfceNFC_DESCPORC: TFMTBCDField;
    QYNfceNFC_DESCVALOR: TFMTBCDField;
    QYNfceNFC_DTATUALIZACAO: TDateField;
    QYNfceNFC_DTCADASTRO: TDateField;
    QYNfceNFC_DTEMISSAO: TDateField;
    QYNfceNFC_ENDERECO: TStringField;
    QYNfceNFC_ESTADO: TStringField;
    QYNfceNFC_ESTADOCODIGO: TIntegerField;
    QYNfceNFC_FINALIDADE: TStringField;
    QYNfceNFC_FONE1: TStringField;
    QYNfceNFC_FORMAPAGTO: TStringField;
    QYNfceNFC_HRATUALIZACAO: TTimeField;
    QYNfceNFC_HRCADASTRO: TTimeField;
    QYNfceNFC_IE: TStringField;
    QYNfceNFC_INFOADICFISCO: TMemoField;
    QYNfceNFC_LUCROPORC: TFMTBCDField;
    QYNfceNFC_LUCROVALOR: TFMTBCDField;
    QYNfceNFC_MODELO: TIntegerField;
    QYNfceNFC_MOTIVOCANCELAMENTO: TStringField;
    QYNfceNFC_MOTIVOINUTILIZACAO: TStringField;
    QYNfceNFC_MOVIMENTAESTOQUE: TStringField;
    QYNfceNFC_MOVIMENTAFINANCEIRO: TStringField;
    QYNfceNFC_NOME: TStringField;
    QYNfceNFC_NUMERO: TStringField;
    QYNfceNFC_OBSERVACOES: TMemoField;
    QYNfceNFC_PESOBRUTO: TFMTBCDField;
    QYNfceNFC_PESOLIQ: TFMTBCDField;
    QYNfceNFC_PROTOCOLO: TStringField;
    QYNfceNFC_PROTOCOLOCANC: TStringField;
    QYNfceNFC_PROTOCOLOCANCDH: TStringField;
    QYNfceNFC_PROTOCOLODH: TStringField;
    QYNfceNFC_PROTOCOLOINUT: TStringField;
    QYNfceNFC_PROTOCOLOINUTDH: TStringField;
    QYNfceNFC_QRCODE: TStringField;
    QYNfceNFC_SEQUENCIAITEM: TIntegerField;
    QYNfceNFC_SERIE: TIntegerField;
    QYNfceNFC_STATUS: TStringField;
    QYNfceNFC_TABELAPRECO: TStringField;
    QYNfceNFC_TIPOATENDIMENTO: TStringField;
    QYNfceNFC_TIPOCONSUMIDOR: TStringField;
    QYNfceNFC_TIPOEMISSAO: TStringField;
    QYNfceNFC_TIPOOPERACAO: TStringField;
    QYNfceNFC_TOTALCOFINS: TFMTBCDField;
    QYNfceNFC_TOTALCOFINSST: TFMTBCDField;
    QYNfceNFC_TOTALCOMISSAO: TFMTBCDField;
    QYNfceNFC_TOTALFCP: TFMTBCDField;
    QYNfceNFC_TOTALFCPST: TFMTBCDField;
    QYNfceNFC_TOTALICMS: TFMTBCDField;
    QYNfceNFC_TOTALICMSCREDSN: TFMTBCDField;
    QYNfceNFC_TOTALICMSST: TFMTBCDField;
    QYNfceNFC_TOTALICMSUFDEST: TFMTBCDField;
    QYNfceNFC_TOTALICMSUFREMET: TFMTBCDField;
    QYNfceNFC_TOTALIPI: TFMTBCDField;
    QYNfceNFC_TOTALPIS: TFMTBCDField;
    QYNfceNFC_TOTALPISST: TFMTBCDField;
    QYNfceNFC_TOTALPRODUTOS: TFMTBCDField;
    QYNfceNFC_TOTALTRIBUTOS: TFMTBCDField;
    QYNfceNFC_TOTALTRIBUTOSEST: TFMTBCDField;
    QYNfceNFC_TOTALTRIBUTOSFED: TFMTBCDField;
    QYNfceNFC_TOTALTRIBUTOSIMP: TFMTBCDField;
    QYNfceNFC_TOTALTRIBUTOSMUN: TFMTBCDField;
    QYNfceNFC_USUARIO: TStringField;
    QYNfceNFC_VALORRECEBIDO: TFMTBCDField;
    QYNfceNFC_VALORTOTAL: TFMTBCDField;
    QYNfceNFC_VALORTROCO: TFMTBCDField;
    QYNfceNFC_VENDA: TIntegerField;
    QYNfceNFC_VENDEDOR: TIntegerField;
    QYNfceItensNCI_ALIQCOFINS: TFMTBCDField;
    QYNfceItensNCI_ALIQCOFINSST: TFMTBCDField;
    QYNfceItensNCI_ALIQFCP: TFMTBCDField;
    QYNfceItensNCI_ALIQFCPST: TFMTBCDField;
    QYNfceItensNCI_ALIQICMS: TFMTBCDField;
    QYNfceItensNCI_ALIQICMSADICST: TFMTBCDField;
    QYNfceItensNCI_ALIQICMSINTER: TFMTBCDField;
    QYNfceItensNCI_ALIQICMSINTERPART: TFMTBCDField;
    QYNfceItensNCI_ALIQICMSRED: TFMTBCDField;
    QYNfceItensNCI_ALIQICMSST: TFMTBCDField;
    QYNfceItensNCI_ALIQIPI: TFMTBCDField;
    QYNfceItensNCI_ALIQPIS: TFMTBCDField;
    QYNfceItensNCI_ALIQPISST: TFMTBCDField;
    QYNfceItensNCI_ALMOXARIFADO: TIntegerField;
    QYNfceItensNCI_BASECOFINS: TFMTBCDField;
    QYNfceItensNCI_BASECOFINSST: TFMTBCDField;
    QYNfceItensNCI_BASEICMS: TFMTBCDField;
    QYNfceItensNCI_BASEICMSRED: TFMTBCDField;
    QYNfceItensNCI_BASEICMSST: TFMTBCDField;
    QYNfceItensNCI_BASEIPI: TFMTBCDField;
    QYNfceItensNCI_BASEPIS: TFMTBCDField;
    QYNfceItensNCI_BASEPISST: TFMTBCDField;
    QYNfceItensNCI_BENEFICIO: TStringField;
    QYNfceItensNCI_CEST: TStringField;
    QYNfceItensNCI_CFOP: TIntegerField;
    QYNfceItensNCI_CLASSFISCAL: TStringField;
    QYNfceItensNCI_CODIGO: TIntegerField;
    QYNfceItensNCI_CODIGOBARRAS: TStringField;
    QYNfceItensNCI_COMISSAO: TFMTBCDField;
    QYNfceItensNCI_COMPLEMENTO: TStringField;
    QYNfceItensNCI_COMPOEBASEICMS: TStringField;
    QYNfceItensNCI_COMPOEBASEICMSST: TStringField;
    QYNfceItensNCI_CONVERSAO: TFMTBCDField;
    QYNfceItensNCI_CSTCOFINS: TIntegerField;
    QYNfceItensNCI_CSTICMS: TIntegerField;
    QYNfceItensNCI_CSTIPI: TIntegerField;
    QYNfceItensNCI_CSTPIS: TIntegerField;
    QYNfceItensNCI_DESCPORC: TFMTBCDField;
    QYNfceItensNCI_DESCRICAO: TStringField;
    QYNfceItensNCI_DESCVALOR: TFMTBCDField;
    QYNfceItensNCI_EXCECAO: TIntegerField;
    QYNfceItensNCI_LUCROPORC: TFMTBCDField;
    QYNfceItensNCI_LUCROVALOR: TFMTBCDField;
    QYNfceItensNCI_MODICMS: TStringField;
    QYNfceItensNCI_MODICMSST: TStringField;
    QYNfceItensNCI_NOTA: TIntegerField;
    QYNfceItensNCI_ORIGEM: TStringField;
    QYNfceItensNCI_PESO: TFMTBCDField;
    QYNfceItensNCI_PESOTOTAL: TFMTBCDField;
    QYNfceItensNCI_PRECOCUSTO: TFMTBCDField;
    QYNfceItensNCI_PRECOCUSTOTOTAL: TFMTBCDField;
    QYNfceItensNCI_PRODUTO: TIntegerField;
    QYNfceItensNCI_PRODUTOREAL: TIntegerField;
    QYNfceItensNCI_QUANTIDADE: TFMTBCDField;
    QYNfceItensNCI_SEQUENCIA: TIntegerField;
    QYNfceItensNCI_TIPO: TStringField;
    QYNfceItensNCI_UNIDADE: TStringField;
    QYNfceItensNCI_VALORACESSORIAS: TFMTBCDField;
    QYNfceItensNCI_VALORCOFINS: TFMTBCDField;
    QYNfceItensNCI_VALORCOFINSST: TFMTBCDField;
    QYNfceItensNCI_VALORCOMISSAO: TFMTBCDField;
    QYNfceItensNCI_VALORFCP: TFMTBCDField;
    QYNfceItensNCI_VALORFCPST: TFMTBCDField;
    QYNfceItensNCI_VALORICMS: TFMTBCDField;
    QYNfceItensNCI_VALORICMSCREDSN: TFMTBCDField;
    QYNfceItensNCI_VALORICMSST: TFMTBCDField;
    QYNfceItensNCI_VALORICMSUFDEST: TFMTBCDField;
    QYNfceItensNCI_VALORICMSUFREMET: TFMTBCDField;
    QYNfceItensNCI_VALORIPI: TFMTBCDField;
    QYNfceItensNCI_VALORPIS: TFMTBCDField;
    QYNfceItensNCI_VALORPISST: TFMTBCDField;
    QYNfceItensNCI_VALORTOTAL: TFMTBCDField;
    QYNfceItensNCI_VALORTOTALBRUTO: TFMTBCDField;
    QYNfceItensNCI_VALORTRIBUTOS: TFMTBCDField;
    QYNfceItensNCI_VALORTRIBUTOSEST: TFMTBCDField;
    QYNfceItensNCI_VALORTRIBUTOSFED: TFMTBCDField;
    QYNfceItensNCI_VALORTRIBUTOSIMP: TFMTBCDField;
    QYNfceItensNCI_VALORTRIBUTOSMUN: TFMTBCDField;
    QYNfceItensNCI_VALORUNIT: TFMTBCDField;
    UPNfcePagamentos: TFDUpdateSQL;
    TRNfcePagamentos: TFDTransaction;
    QYNfcePagamentos: TFDQuery;
    QYNfcePagamentosNCP_CODIGO: TIntegerField;
    QYNfcePagamentosNCP_CONDICAO: TIntegerField;
    QYNfcePagamentosNCP_NFCE: TIntegerField;
    QYNfcePagamentosNCP_VALOR: TFMTBCDField;
    DBEdit10: TDBEdit;
    procedure ContinuarAVenda1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FinalizarVenda1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TBCondicoesAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TBCondicoesAfterInsert(DataSet: TDataSet);
    procedure TBCondicoesBeforePost(DataSet: TDataSet);
    procedure Desconto1Click(Sender: TObject);
    procedure Acrescimo1Click(Sender: TObject);
    procedure DBEdit6Click(Sender: TObject);
    procedure DBEdit5Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AlimentarNFCe;
    procedure AlimentarNFCeRTC;
    procedure DuplicarNfce;
    procedure EmitirOffline(Duplicar: Boolean);
    procedure FinalizarVenda;
    procedure AtualizarTotalNaCondicao;
    procedure EliminarCondicoesPagamentoNaoUtilizadas(CodigoNFCe: Integer);
    function EntrarEmContingencia: Boolean;
  public
    { Public declarations }
    NaoPodeInserirPagamentos: Boolean;
  end;

var
  FormNfcePagamento: TFormNfcePagamento;
  AtualizarTotais: Boolean = False; //checado no afterpost do client dataset tbcondicoes.
  Falta: Extended;

implementation
uses DataMod, ClientesLoc, NfceCaixa, NfceAlterarDesconto, NfceAlterarAcrescimo, ACBrDFe.Conversao, pcnConversao, pcnConversaoNFe,
  Funcoes1, NfceFast, FuncoesFirenet, NfceFuncoes, NfceAvisos;
  //pcnConversao,
{$R *.dfm}

procedure TFormNfcePagamento.DuplicarNfce;
var NovoCodigo: Integer;
begin
  Screen.Cursor:=crHourGlass;
  DM.TBNfce.DisableControls;
  DM.TBNfce.DisableControls;
  QYNfce.Open;
  QYNfceItens.Open;
  QYNfcePagamentos.Open;
  //CAPA.
  QYNfce.Insert;
  {$REGION 'DUPLICACAO CAPA NFCE.'}
  { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
  QYNfceNFC_ACREPORC.Value:=DM.TBNfceNFC_ACREPORC.Value;
  QYNfceNFC_ACREVALOR.Value:=DM.TBNfceNFC_ACREVALOR.Value;
  QYNfceNFC_ALIQICMSCREDSN.Value:=DM.TBNfceNFC_ALIQICMSCREDSN.Value;
  QYNfceNFC_BAIRRO.Value:=DM.TBNfceNFC_BAIRRO.Value;
  QYNfceNFC_BASECOFINS.Value:=DM.TBNfceNFC_BASECOFINS.Value;
  QYNfceNFC_BASECOFINSST.Value:=DM.TBNfceNFC_BASECOFINSST.Value;
  QYNfceNFC_BASEICMS.Value:=DM.TBNfceNFC_BASEICMS.Value;
  QYNfceNFC_BASEICMSST.Value:=DM.TBNfceNFC_BASEICMSST.Value;
  QYNfceNFC_BASEIPI.Value:=DM.TBNfceNFC_BASEIPI.Value;
  QYNfceNFC_BASEPIS.Value:=DM.TBNfceNFC_BASEPIS.Value;
  QYNfceNFC_BASEPISST.Value:=DM.TBNfceNFC_BASEPISST.Value;
  QYNfceNFC_CEP.Value:=DM.TBNfceNFC_CEP.Value;
  QYNfceNFC_CFOP.Value:=DM.TBNfceNFC_CFOP.Value;
  //QYNfceNFC_CHAVEACESSO.Value:=
  QYNfceNFC_CIDADE.Value:=DM.TBNfceNFC_CIDADE.Value;
  QYNfceNFC_CIDADECODIGO.Value:=DM.TBNfceNFC_CIDADECODIGO.Value;
  QYNfceNFC_CLIENTE.Value:=DM.TBNfceNFC_CLIENTE.Value;
  QYNfceNFC_CNPJ.Value:=DM.TBNfceNFC_CNPJ.Value;
  //QYNfceNFC_CODIGO.Value:=
  QYNfceNFC_CODIGONFCE.Value:=DM.TBNfceNFC_CODIGO.Value; //codigo da nfce que está sendo duplicada.
  //QYNfceNFC_CODIGONUMERICO.Value:=
  QYNfceNFC_COMISSAO.Value:=DM.TBNfceNFC_COMISSAO.Value;
  QYNfceNFC_COMISSAOPOR.Value:=DM.TBNfceNFC_COMISSAOPOR.Value;
  QYNfceNFC_COMPLEMENTO.Value:=DM.TBNfceNFC_COMPLEMENTO.Value;
  QYNfceNFC_CONDICAO.Value:=DM.TBNfceNFC_CONDICAO.Value;
  QYNfceNFC_CONTATO.Value:=DM.TBNfceNFC_CONTATO.Value;
  QYNfceNFC_CONTINGENCIA.Value:='S'; //DM.TBNfceNFC_CONTINGENCIA.Value;
  QYNfceNFC_CPF.Value:=DM.TBNfceNFC_CPF.Value;
  QYNfceNFC_CUSTOTOTAL.Value:=DM.TBNfceNFC_CUSTOTOTAL.Value;
  QYNfceNFC_DESCPORC.Value:=DM.TBNfceNFC_DESCPORC.Value;
  QYNfceNFC_DESCVALOR.Value:=DM.TBNfceNFC_DESCVALOR.Value;
  QYNfceNFC_DTATUALIZACAO.Value:=DM.ServerDate; //DM.TBNfceNFC_DTATUALIZACAO.Value;
  QYNfceNFC_DTCADASTRO.Value:=DM.ServerDate; //DM.TBNfceNFC_DTCADASTRO.Value;
  QYNfceNFC_DTEMISSAO.Value:=DM.ServerDate; //DM.TBNfceNFC_DTEMISSAO.Value;
  QYNfceNFC_ENDERECO.Value:=DM.TBNfceNFC_ENDERECO.Value;
  QYNfceNFC_ESTADO.Value:=DM.TBNfceNFC_ESTADO.Value;
  QYNfceNFC_ESTADOCODIGO.Value:=DM.TBNfceNFC_ESTADOCODIGO.Value;
  QYNfceNFC_FINALIDADE.Value:=DM.TBNfceNFC_FINALIDADE.Value;
  QYNfceNFC_FONE1.Value:=DM.TBNfceNFC_FONE1.Value;
  QYNfceNFC_FORMAPAGTO.Value:=DM.TBNfceNFC_FORMAPAGTO.Value;
  QYNfceNFC_HRATUALIZACAO.Value:=DM.ServerTime;
  QYNfceNFC_HRCADASTRO.Value:=DM.ServerTime;
  QYNfceNFC_IE.Value:=DM.TBNfceNFC_IE.Value;
  QYNfceNFC_INFOADICFISCO.Value:=DM.TBNfceNFC_INFOADICFISCO.Value;
  QYNfceNFC_LUCROPORC.Value:=DM.TBNfceNFC_LUCROPORC.Value;
  QYNfceNFC_LUCROVALOR.Value:=DM.TBNfceNFC_LUCROVALOR.Value;
  QYNfceNFC_MODELO.Value:=DM.TBNfceNFC_MODELO.Value;
  QYNfceNFC_MOTIVOCANCELAMENTO.Value:=DM.TBNfceNFC_MOTIVOCANCELAMENTO.Value;
  QYNfceNFC_MOTIVOINUTILIZACAO.Value:=DM.TBNfceNFC_MOTIVOINUTILIZACAO.Value;
  QYNfceNFC_MOVIMENTAESTOQUE.Value:=DM.TBNfceNFC_MOVIMENTAESTOQUE.Value;
  QYNfceNFC_MOVIMENTAFINANCEIRO.Value:=DM.TBNfceNFC_MOVIMENTAFINANCEIRO.Value;
  QYNfceNFC_NOME.Value:=DM.TBNfceNFC_NOME.Value;
  QYNfceNFC_NUMERO.Value:=DM.TBNfceNFC_NUMERO.Value;
  QYNfceNFC_OBSERVACOES.Value:=DM.TBNfceNFC_OBSERVACOES.Value;
  QYNfceNFC_PESOBRUTO.Value:=DM.TBNfceNFC_PESOBRUTO.Value;
  QYNfceNFC_PESOLIQ.Value:=DM.TBNfceNFC_PESOLIQ.Value;
  //QYNfceNFC_PROTOCOLO.Value:=
  //QYNfceNFC_PROTOCOLOCANC.Value:=
  //QYNfceNFC_PROTOCOLOCANCDH.Value:=
  //QYNfceNFC_PROTOCOLODH.Value:=
  //QYNfceNFC_PROTOCOLOINUT.Value:=
  //QYNfceNFC_PROTOCOLOINUTDH.Value:=
  QYNfceNFC_SEQUENCIAITEM.Value:=DM.TBNfceNFC_SEQUENCIAITEM.Value;
  QYNfceNFC_SERIE.Value:=DM.TBNfceNFC_SERIE.Value;
  QYNfceNFC_STATUS.Value:='A'; //DM.TBNfceNFC_STATUS.Value;
  QYNfceNFC_TABELAPRECO.Value:=DM.TBNfceNFC_TABELAPRECO.Value;
  QYNfceNFC_TIPOATENDIMENTO.Value:=DM.TBNfceNFC_TIPOATENDIMENTO.Value;
  QYNfceNFC_TIPOCONSUMIDOR.Value:=DM.TBNfceNFC_TIPOCONSUMIDOR.Value;
  QYNfceNFC_TIPOEMISSAO.Value:=DM.TBParametrosPAR_NFCETIPOEMISSAO.Value;
  QYNfceNFC_TIPOOPERACAO.Value:=DM.TBNfceNFC_TIPOOPERACAO.Value;
  QYNfceNFC_TOTALCOFINS.Value:=DM.TBNfceNFC_TOTALCOFINS.Value;
  QYNfceNFC_TOTALCOFINSST.Value:=DM.TBNfceNFC_TOTALCOFINSST.Value;
  QYNfceNFC_TOTALCOMISSAO.Value:=DM.TBNfceNFC_TOTALCOMISSAO.Value;
  QYNfceNFC_TOTALFCP.Value:=DM.TBNfceNFC_TOTALFCP.Value;
  QYNfceNFC_TOTALFCPST.Value:=DM.TBNfceNFC_TOTALFCPST.Value;
  QYNfceNFC_TOTALICMS.Value:=DM.TBNfceNFC_TOTALICMS.Value;
  QYNfceNFC_TOTALICMSCREDSN.Value:=DM.TBNfceNFC_TOTALICMSCREDSN.Value;
  QYNfceNFC_TOTALICMSST.Value:=DM.TBNfceNFC_TOTALICMSST.Value;
  QYNfceNFC_TOTALICMSUFDEST.Value:=DM.TBNfceNFC_TOTALICMSUFDEST.Value;
  QYNfceNFC_TOTALICMSUFREMET.Value:=DM.TBNfceNFC_TOTALICMSUFREMET.Value;
  QYNfceNFC_TOTALIPI.Value:=DM.TBNfceNFC_TOTALIPI.Value;
  QYNfceNFC_TOTALPIS.Value:=DM.TBNfceNFC_TOTALPIS.Value;
  QYNfceNFC_TOTALPISST.Value:=DM.TBNfceNFC_TOTALPISST.Value;
  QYNfceNFC_TOTALPRODUTOS.Value:=DM.TBNfceNFC_TOTALPRODUTOS.Value;
  QYNfceNFC_TOTALTRIBUTOS.Value:=DM.TBNfceNFC_TOTALTRIBUTOS.Value;
  QYNfceNFC_TOTALTRIBUTOSEST.Value:=DM.TBNfceNFC_TOTALTRIBUTOSEST.Value;
  QYNfceNFC_TOTALTRIBUTOSFED.Value:=DM.TBNfceNFC_TOTALTRIBUTOSFED.Value;
  QYNfceNFC_TOTALTRIBUTOSIMP.Value:=DM.TBNfceNFC_TOTALTRIBUTOSIMP.Value;
  QYNfceNFC_TOTALTRIBUTOSMUN.Value:=DM.TBNfceNFC_TOTALTRIBUTOSMUN.Value;
  QYNfceNFC_USUARIO.Value:=DM.UsuarioLogin; //DM.TBNfceNFC_USUARIO.Value;
  QYNfceNFC_VALORRECEBIDO.Value:=DM.TBNfceNFC_VALORRECEBIDO.Value;
  QYNfceNFC_VALORTOTAL.Value:=DM.TBNfceNFC_VALORTOTAL.Value;
  QYNfceNFC_VALORTROCO.Value:=DM.TBNfceNFC_VALORTROCO.Value;
  QYNfceNFC_VENDA.Value:=DM.TBNfceNFC_VENDA.Value;
  QYNfceNFC_VENDEDOR.Value:=DM.TBNfceNFC_VENDEDOR.Value;
  {$ENDREGION}
  //MessageDlg('atual: '+DM.TBNfceNFC_CODIGO.Value.ToString,mtInformation,[mbOk],0);
  QYNfce.Post;

  NovoCodigo:=QYNfceNFC_CODIGO.Value;
  //MessageDlg('novo: '+QYNfceNFC_CODIGO.Value.ToString,mtInformation,[mbOk],0);
  //ITENS.
  DM.TBNfceItens.First;
  while not DM.TBNfceItens.Eof do
  begin
    QYNfceItens.Insert;
    {$REGION 'DUPLICACAO ITENS NFCE'}
    QYNfceItensNCI_ALIQCOFINS.Value:=DM.TBNfceItensNCI_ALIQCOFINS.Value;
    QYNfceItensNCI_ALIQCOFINSST.Value:=DM.TBNfceItensNCI_ALIQCOFINSST.Value;
    QYNfceItensNCI_ALIQFCP.Value:=DM.TBNfceItensNCI_ALIQFCP.Value;
    QYNfceItensNCI_ALIQFCPST.Value:=DM.TBNfceItensNCI_ALIQFCPST.Value;
    QYNfceItensNCI_ALIQICMS.Value:=DM.TBNfceItensNCI_ALIQICMS.Value;
    QYNfceItensNCI_ALIQICMSADICST.Value:=DM.TBNfceItensNCI_ALIQICMSADICST.Value;
    QYNfceItensNCI_ALIQICMSINTER.Value:=DM.TBNfceItensNCI_ALIQICMSINTER.Value;
    QYNfceItensNCI_ALIQICMSINTERPART.Value:=DM.TBNfceItensNCI_ALIQICMSINTERPART.Value;
    QYNfceItensNCI_ALIQICMSRED.Value:=DM.TBNfceItensNCI_ALIQICMSRED.Value;
    QYNfceItensNCI_ALIQICMSST.Value:=DM.TBNfceItensNCI_ALIQICMSST.Value;
    QYNfceItensNCI_ALIQIPI.Value:=DM.TBNfceItensNCI_ALIQIPI.Value;
    QYNfceItensNCI_ALIQPIS.Value:=DM.TBNfceItensNCI_ALIQPIS.Value;
    QYNfceItensNCI_ALIQPISST.Value:=DM.TBNfceItensNCI_ALIQPISST.Value;
    QYNfceItensNCI_ALMOXARIFADO.Value:=DM.TBNfceItensNCI_ALMOXARIFADO.Value;
    QYNfceItensNCI_BASECOFINS.Value:=DM.TBNfceItensNCI_BASECOFINS.Value;
    QYNfceItensNCI_BASECOFINSST.Value:=DM.TBNfceItensNCI_BASECOFINSST.Value;
    QYNfceItensNCI_BASEICMS.Value:=DM.TBNfceItensNCI_BASEICMS.Value;
    QYNfceItensNCI_BASEICMSRED.Value:=DM.TBNfceItensNCI_BASEICMSRED.Value;
    QYNfceItensNCI_BASEICMSST.Value:=DM.TBNfceItensNCI_BASEICMSST.Value;
    QYNfceItensNCI_BASEIPI.Value:=DM.TBNfceItensNCI_BASEIPI.Value;
    QYNfceItensNCI_BASEPIS.Value:=DM.TBNfceItensNCI_BASEPIS.Value;
    QYNfceItensNCI_BASEPISST.Value:=DM.TBNfceItensNCI_BASEPISST.Value;
    QYNfceItensNCI_BENEFICIO.Value:=DM.TBNfceItensNCI_BENEFICIO.Value;
    QYNfceItensNCI_CEST.Value:=DM.TBNfceItensNCI_CEST.Value;
    QYNfceItensNCI_CFOP.Value:=DM.TBNfceItensNCI_CFOP.Value;
    QYNfceItensNCI_CLASSFISCAL.Value:=DM.TBNfceItensNCI_CLASSFISCAL.Value;
    //QYNfceItensNCI_CODIGO.Value:= //generator.
    QYNfceItensNCI_CODIGOBARRAS.Value:=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
    QYNfceItensNCI_COMISSAO.Value:=DM.TBNfceItensNCI_COMISSAO.Value;
    QYNfceItensNCI_COMPLEMENTO.Value:=DM.TBNfceItensNCI_COMPLEMENTO.Value;
    QYNfceItensNCI_COMPOEBASEICMS.Value:=DM.TBNfceItensNCI_COMPOEBASEICMS.Value;
    QYNfceItensNCI_COMPOEBASEICMSST.Value:=DM.TBNfceItensNCI_COMPOEBASEICMSST.Value;
    QYNfceItensNCI_CONVERSAO.Value:=DM.TBNfceItensNCI_CONVERSAO.Value;
    QYNfceItensNCI_CSTCOFINS.Value:=DM.TBNfceItensNCI_CSTCOFINS.Value;
    QYNfceItensNCI_CSTICMS.Value:=DM.TBNfceItensNCI_CSTICMS.Value;
    QYNfceItensNCI_CSTIPI.Value:=DM.TBNfceItensNCI_CSTIPI.Value;
    QYNfceItensNCI_CSTPIS.Value:=DM.TBNfceItensNCI_CSTPIS.Value;
    QYNfceItensNCI_DESCPORC.Value:=DM.TBNfceItensNCI_DESCPORC.Value;
    QYNfceItensNCI_DESCRICAO.Value:=DM.TBNfceItensNCI_DESCRICAO.Value;
    QYNfceItensNCI_DESCVALOR.Value:=DM.TBNfceItensNCI_DESCVALOR.Value;
    QYNfceItensNCI_EXCECAO.Value:=DM.TBNfceItensNCI_EXCECAO.Value;
    QYNfceItensNCI_LUCROPORC.Value:=DM.TBNfceItensNCI_LUCROPORC.Value;
    QYNfceItensNCI_LUCROVALOR.Value:=DM.TBNfceItensNCI_LUCROVALOR.Value;
    QYNfceItensNCI_MODICMS.Value:=DM.TBNfceItensNCI_MODICMS.Value;
    QYNfceItensNCI_MODICMSST.Value:=DM.TBNfceItensNCI_MODICMSST.Value;
    QYNfceItensNCI_NOTA.Value:=NovoCodigo;
    QYNfceItensNCI_ORIGEM.Value:=DM.TBNfceItensNCI_ORIGEM.Value;
    QYNfceItensNCI_PESO.Value:=DM.TBNfceItensNCI_PESO.Value;
    QYNfceItensNCI_PESOTOTAL.Value:=DM.TBNfceItensNCI_PESOTOTAL.Value;
    QYNfceItensNCI_PRECOCUSTO.Value:=DM.TBNfceItensNCI_PRECOCUSTO.Value;
    QYNfceItensNCI_PRECOCUSTOTOTAL.Value:=DM.TBNfceItensNCI_PRECOCUSTOTOTAL.Value;
    QYNfceItensNCI_PRODUTO.Value:=DM.TBNfceItensNCI_PRODUTO.Value;
    QYNfceItensNCI_PRODUTOREAL.Value:=DM.TBNfceItensNCI_PRODUTOREAL.Value;
    QYNfceItensNCI_QUANTIDADE.Value:=DM.TBNfceItensNCI_QUANTIDADE.Value;
    QYNfceItensNCI_SEQUENCIA.Value:=DM.TBNfceItensNCI_SEQUENCIA.Value;
    QYNfceItensNCI_TIPO.Value:=DM.TBNfceItensNCI_TIPO.Value;
    QYNfceItensNCI_UNIDADE.Value:=DM.TBNfceItensNCI_UNIDADE.Value;
    QYNfceItensNCI_VALORACESSORIAS.Value:=DM.TBNfceItensNCI_VALORACESSORIAS.Value;
    QYNfceItensNCI_VALORCOFINS.Value:=DM.TBNfceItensNCI_VALORCOFINS.Value;
    QYNfceItensNCI_VALORCOFINSST.Value:=DM.TBNfceItensNCI_VALORCOFINSST.Value;
    QYNfceItensNCI_VALORCOMISSAO.Value:=DM.TBNfceItensNCI_VALORCOMISSAO.Value;
    QYNfceItensNCI_VALORFCP.Value:=DM.TBNfceItensNCI_VALORFCP.Value;
    QYNfceItensNCI_VALORFCPST.Value:=DM.TBNfceItensNCI_VALORFCPST.Value;
    QYNfceItensNCI_VALORICMS.Value:=DM.TBNfceItensNCI_VALORICMS.Value;
    QYNfceItensNCI_VALORICMSCREDSN.Value:=DM.TBNfceItensNCI_VALORICMSCREDSN.Value;
    QYNfceItensNCI_VALORICMSST.Value:=DM.TBNfceItensNCI_VALORICMSST.Value;
    QYNfceItensNCI_VALORICMSUFDEST.Value:=DM.TBNfceItensNCI_VALORICMSUFDEST.Value;
    QYNfceItensNCI_VALORICMSUFREMET.Value:=DM.TBNfceItensNCI_VALORICMSUFREMET.Value;
    QYNfceItensNCI_VALORIPI.Value:=DM.TBNfceItensNCI_VALORIPI.Value;
    QYNfceItensNCI_VALORPIS.Value:=DM.TBNfceItensNCI_VALORPIS.Value;
    QYNfceItensNCI_VALORPISST.Value:=DM.TBNfceItensNCI_VALORPISST.Value;
    QYNfceItensNCI_VALORTOTAL.Value:=DM.TBNfceItensNCI_VALORTOTAL.Value;
    QYNfceItensNCI_VALORTOTALBRUTO.Value:=DM.TBNfceItensNCI_VALORTOTALBRUTO.Value;
    QYNfceItensNCI_VALORTRIBUTOS.Value:=DM.TBNfceItensNCI_VALORTRIBUTOS.Value;
    QYNfceItensNCI_VALORTRIBUTOSEST.Value:=DM.TBNfceItensNCI_VALORTRIBUTOSEST.Value;
    QYNfceItensNCI_VALORTRIBUTOSFED.Value:=DM.TBNfceItensNCI_VALORTRIBUTOSFED.Value;
    QYNfceItensNCI_VALORTRIBUTOSIMP.Value:=DM.TBNfceItensNCI_VALORTRIBUTOSIMP.Value;
    QYNfceItensNCI_VALORTRIBUTOSMUN.Value:=DM.TBNfceItensNCI_VALORTRIBUTOSMUN.Value;
    QYNfceItensNCI_VALORUNIT.Value:=DM.TBNfceItensNCI_VALORUNIT.Value;
    {$ENDREGION}
    QYNfceItens.Post;
    DM.TBNfceItens.Next;
  end;

  {$REGION 'DUPLICACAO PAGAMENTOS.'}
  DM.TBNfcePagamentos.DisableControls;
  DM.TBNfcePagamentos.First;
  while not DM.TBNfcePagamentos.Eof do
  begin
    QYNfcePagamentos.Insert;
    //QYNfcePagamentosNCP_CODIGO
    QYNfcePagamentosNCP_CONDICAO.Value:=DM.TBNfcePagamentosNCP_CONDICAO.Value;
    QYNfcePagamentosNCP_NFCE.Value:=NovoCodigo; //DM.TBNfcePagamentosNCP_NFCE.Value;
    QYNfcePagamentosNCP_VALOR.Value:=DM.TBNfcePagamentosNCP_VALOR.Value;
    QYNfcePagamentos.Post;
    DM.TBNfcePagamentos.Next;
  end;
  DM.TBNfcePagamentos.EnableControls;
  {$ENDREGION}

  //localiza a nova venda e calcula os totais.
  DM.TBNfce.Close;
  DM.TBNfce.ParamByName('codigo').AsInteger:=NovoCodigo;
  DM.TBNfce.Open;
  DM.CalcularTotaisNfce(True);
  //...
  DM.TBNfceItens.EnableControls;
  DM.TBNfce.EnableControls;
  QYNfce.Close;
  QYNfceItens.Close;

  DM.TBNfcePagamentos.Close;
  DM.TBNfceItens.Close;
  DM.TBNfce.Close;
  DM.TBNfce.ParamByName('codigo').AsInteger:=NovoCodigo;
  DM.TBNfce.Open;
  DM.TBNfceItens.Open;
  DM.TBNfcePagamentos.Open;
  Screen.Cursor:=crDefault;
end;

procedure TFormNfcePagamento.AlimentarNFCe;
var OK: Boolean;
begin
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.Tag:=0;
  DM.ACBrNFe1.NotasFiscais.Clear;

  with DM.ACBrNFe1.NotasFiscais.Add do //objeto NFe
  begin
    //NFe.infNFe

    {$REGION 'Ide - Dados da NFCe'}
    NFe.Ide.cUF:=DM.TBEmpresaEMP_ESTADOCODIGO.Value;  // SC -> Código da UF
    NFe.Ide.cNF:=StrToInt(DM.TBNfceNFC_CODIGONUMERICO.Value);
    NFe.Ide.cMunFG:=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Ide.cDV:=StrToInt(Copy(DM.TBNfceNFC_CHAVEACESSO.Value,44,1));
    NFe.Ide.dEmi:=now;
    //NFe.Ide.dSaiEnt:=
    if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value<>'1 - NORMAL' then
    begin
      NFe.Ide.dhCont:=Now;
      NFe.Ide.xJust:=DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value;
    end;
    NFe.Ide.finNFe:=fnNormal;
    NFe.Ide.indFinal:=cfConsumidorFinal;
    NFe.Ide.indPres:=pcPresencial;
    NFe.Ide.modelo:=65; // NFC-e
    NFe.Ide.natOp:=DM.TBNfceNFC_CFOP.Value.ToString;
    NFe.Ide.nNF:=DM.TBNfceNFC_CODIGO.Value;
    NFe.Ide.serie:=DM.TBNfceNFC_SERIE.Value;
    NFe.Ide.tpNF:=tnSaida;
    NFe.Ide.tpImp:=tiNFCe;
    NFe.Ide.tpEmis:=StrToTpEmis(OK,Copy(DM.TBParametrosPAR_NFCETIPOEMISSAO.Value,1,1));
    NFe.Ide.tpAmb:=StrToTpAmb(OK,DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value); //taHomologacao; //taProducao;  // Altere para taHomologacao se for testes
    NFe.Ide.procEmi:=peAplicativoContribuinte;
    NFe.Ide.verProc:=FileVersion(Application.ExeName);
    {$ENDREGION}

    {$REGION 'Emit - Dados do emitente'}
    NFe.Emit.CNPJCPF:=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    NFe.Emit.xNome:=DM.TBEmpresaEMP_NOME.Value;
    NFe.Emit.xFant:=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
    NFe.Emit.EnderEmit.xLgr:=DM.TBEmpresaEMP_ENDERECO.Value;
    NFe.Emit.EnderEmit.nro:=DM.TBEmpresaEMP_NUMERO.Value;
    NFe.Emit.EnderEmit.xCpl:='';
    NFe.Emit.EnderEmit.xBairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    NFe.Emit.EnderEmit.cMun:=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Emit.EnderEmit.xMun:=DM.TBEmpresaEMP_CIDADE.Value;
    NFe.Emit.EnderEmit.UF:=DM.TBEmpresaEMP_ESTADO.Value;
    NFe.Emit.EnderEmit.CEP:=StrToInt(LimparFormatacao(DM.TBEmpresaEMP_CEP.Value));
    NFe.Emit.EnderEmit.cPais:=DM.TBEmpresaEMP_PAISCODIGO.Value;
    NFe.Emit.EnderEmit.xPais:=DM.TBEmpresaEMP_PAIS.Value;
    NFe.Emit.EnderEmit.fone:=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    NFe.Emit.IE:=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IEST:=''; //preencher conforme o estado do cliente. LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IM:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
    NFe.Emit.CNAE:=LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value);
    if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then //1 - SIMPLES NACIONAL, 2 - LUCRO PRESUMIDO, 3 - LUCRO REAL
    NFe.Emit.CRT:=pcnConversaoNFe.TpcnCRT.crtSimplesNacional else
    NFe.Emit.CRT:=pcnConversaoNFe.TpcnCRT.crtRegimeNormal;
    {$ENDREGION}

    //nfe.Avulsa

    {$REGION 'Dest - Dados do cliente'}
    NFe.Dest.xNome:='CONSUMIDOR FINAL';
    NFe.Dest.indIEDest:=inNaoContribuinte;
    if DM.TBNfceNFC_CLIENTE.Value<>1 then
    begin
      if LimparFormatacao(DM.TBNfceNFC_CNPJ.Value)<>'' then
      NFe.Dest.CNPJCPF:=LimparFormatacao(DM.TBNfceNFC_CNPJ.Value) else
      NFe.Dest.CNPJCPF:=LimparFormatacao(DM.TBNfceNFC_CPF.Value);
      NFe.Dest.idEstrangeiro:='';
      NFe.Dest.xNome:=DM.TBNfceNFC_NOME.Value;
      NFe.Dest.EnderDest.xLgr:=DM.TBNfceNFC_ENDERECO.Value;
      NFe.Dest.EnderDest.nro:=DM.TBNfceNFC_NUMERO.Value;
      NFe.Dest.EnderDest.xCpl:=DM.TBNfceNFC_COMPLEMENTO.Value;
      NFe.Dest.EnderDest.xBairro:=DM.TBNfceNFC_BAIRRO.Value;
      NFe.Dest.EnderDest.cMun:=DM.TBNfceNFC_CIDADECODIGO.Value;
      NFe.Dest.EnderDest.xMun:=DM.TBNfceNFC_CIDADE.Value;
      NFe.Dest.EnderDest.UF:=DM.TBNfceNFC_ESTADO.Value;
      NFe.Dest.EnderDest.CEP:=StrToInt(SoNumeros(DM.TBNfceNFC_CEP.Value));
      NFe.Dest.EnderDest.cPais:=1058;
      NFe.Dest.EnderDest.xPais:='BRASIL';
      NFe.Dest.EnderDest.fone:=SoNumeros(DM.TBNfceNFC_FONE1.Value);
      NFe.Dest.indIEDest:=inNaoContribuinte;
      NFe.Dest.IE:=DM.TBNfceNFC_IE.Value
      //NFe.Dest.ISUF
      //NFe.Dest.IM
      //NFe.Dest.Email:=
    end;
    {$ENDREGION}

    //NFe.Retirada
    //NFe.Entrega

    {$REGION 'autXML - CNPJs autorizados a baixar o XML.'}
    if not DM.TBEmpresaFOR_CNPJ.IsNull then
    begin
      with NFe.autXML.New do
      begin
        CNPJCPF:=LimparFormatacao(DM.TBEmpresaFOR_CNPJ.Value);
      end;
    end;
    {$ENDREGION}

    {$REGION 'Det - Adição dos itens da NFCe'}
    //fecha e abre a tabela de itens para ordenar pela sequencia correta.
    DM.TBNfceItens.Close;
    DM.TBNfceItens.Open;
    DM.TBNfceItens.DisableControls;
    DM.TBNfceItens.First;
    while not DM.TBNfceItens.eof do
    begin
      with NFe.Det.New do
      begin
        {$REGION 'Dados do produto'}
        Prod.cProd      :=DM.TBNfceItensNCI_PRODUTO.Value.ToString;
        Prod.nItem      :=DM.TBNfceItensNCI_SEQUENCIA.Value;
        Prod.cEAN       :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarra     :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.xProd      :=DM.TBNfceItensNCI_DESCRICAO.Value;
        Prod.NCM        :=DM.TBNfceItensNCI_CLASSFISCAL.Value;
        //Prod.NVE.
        Prod.EXTIPI     :=DM.TBNfceItensNCI_EXCECAO.Value.ToString;
        if DM.TBNfceItensNCI_EXCECAO.Value=0 then
        Prod.EXTIPI     :='';

        Prod.CFOP       :=DM.TBNfceItensNCI_CFOP.Value.ToString;
        Prod.uCom       :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qCom       :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnCom     :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        Prod.vProd      :=DM.TBNfceItensNCI_VALORTOTAL.AsExtended;
        Prod.cEANTrib   :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarraTrib :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.uTrib      :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qTrib      :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnTrib    :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        Prod.vFrete     :=DM.TBNfceItensNCI_VALORFRETE.AsExtended;
        //Prod.vSeg
        Prod.vDesc      :=Decimais(DM.TBNfceItensNCI_DESCVALOR.AsExtended,2);
        Prod.vOutro     :=DM.TBNfceItensNCI_VALORACESSORIAS.AsExtended;
        Prod.IndTot     :=itSomaTotalNFe;
        //Prod.DI
        //Prod.xPed
        //Prod.nItemPed
        //Prod.detExport
        //Prod.rastro
        //Prod.veicProd
        //Prod.med
        //Prod.arma
        //Prod.comb
        //Prod.nRECOPI
        //Prod.nFCI
        Prod.CEST       :=DM.TBNfceItensNCI_CEST.Value;
        //Prod.indEscala
        //Prod.CNPJFab
        Prod.cBenef     :=DM.TBNfceItensNCI_BENEFICIO.Value;
        //Prod.CredPresumido
        {$ENDREGION}

        {$REGION 'ICMS do produto'}
        case StrToInt(Copy(DM.TBNfceItensNCI_ORIGEM.Value,0,1)) of
          0: Imposto.ICMS.orig:=oeNacional;
          1: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
          2: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasil;
          3: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior40;
          4: Imposto.ICMS.orig:=oeNacionalProcessosBasicos;
          5: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoInferiorIgual40;
          6: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDiretaSemSimilar;
          7: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasilSemSimilar;
          8: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior70;
        end;
        case DM.TBNfceItensNCI_CSTICMS.Value of
          {$REGION 'cst icms'}
          00: Imposto.ICMS.CST:=TpcnCSTIcms.cst00;
          01: Imposto.ICMS.CST:=TpcnCSTIcms.cst01;
          02: Imposto.ICMS.CST:=TpcnCSTIcms.cst02;
          10: Imposto.ICMS.CST:=TpcnCSTIcms.cst10;
          12: Imposto.ICMS.CST:=TpcnCSTIcms.cst12;
          13: Imposto.ICMS.CST:=TpcnCSTIcms.cst13;
          14: Imposto.ICMS.CST:=TpcnCSTIcms.cst14;
          15: Imposto.ICMS.CST:=TpcnCSTIcms.cst15;
          20: Imposto.ICMS.CST:=TpcnCSTIcms.cst20;
          21: Imposto.ICMS.CST:=TpcnCSTIcms.cst21;
          30: Imposto.ICMS.CST:=TpcnCSTIcms.cst30;
          40: Imposto.ICMS.CST:=TpcnCSTIcms.cst40;
          41: Imposto.ICMS.CST:=TpcnCSTIcms.cst41;
          45: Imposto.ICMS.CST:=TpcnCSTIcms.cst45;
          50: Imposto.ICMS.CST:=TpcnCSTIcms.cst50;
          51: Imposto.ICMS.CST:=TpcnCSTIcms.cst51;
          53: Imposto.ICMS.CST:=TpcnCSTIcms.cst53;
          60: Imposto.ICMS.CST:=TpcnCSTIcms.cst60;
          61: Imposto.ICMS.CST:=TpcnCSTIcms.cst61;
          70: Imposto.ICMS.CST:=TpcnCSTIcms.cst70;
          72: Imposto.ICMS.CST:=TpcnCSTIcms.cst72;
          73: Imposto.ICMS.CST:=TpcnCSTIcms.cst73;
          74: Imposto.ICMS.CST:=TpcnCSTIcms.cst74;
          80: Imposto.ICMS.CST:=TpcnCSTIcms.cst80; //apenas para cte.
          81: Imposto.ICMS.CST:=TpcnCSTIcms.cst81; //apenas para cte.
          90: Imposto.ICMS.CST:=TpcnCSTIcms.cst90;
          101: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn101;
          102: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn102;
          104: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn103;
          201: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn201;
          202: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn202;
          203: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn203;
          300: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn300;
          400: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn400;
          500: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn500;
          900: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn900;
          {$ENDREGION}
        end;
        Imposto.ICMS.ModBC    :=dbiValorOperacao;
        Imposto.ICMS.pRedBC   :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended;
        Imposto.ICMS.vBC      :=DM.TBNfceItensNCI_BASEICMS.AsExtended;
        Imposto.ICMS.pICMS    :=DM.TBNfceItensNCI_ALIQICMS.AsExtended;
        Imposto.ICMS.vICMS    :=DM.TBNfceItensNCI_VALORICMS.AsExtended;
        Imposto.ICMS.modBCST  :=dbisValordaOperacao;
        Imposto.ICMS.pMVAST   :=DM.TBNfceItensNCI_ALIQICMSADICST.AsExtended;
        Imposto.ICMS.pRedBCST :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended; //usar o mesmo?
        Imposto.ICMS.vBCST    :=DM.TBNfceItensNCI_BASEICMSST.AsExtended;
        Imposto.ICMS.pICMSST  :=DM.TBNfceItensNCI_ALIQICMSST.AsExtended;
        Imposto.ICMS.vICMSST  :=DM.TBNfceItensNCI_VALORICMSST.AsExtended;
        Imposto.ICMS.UFST     :=''; //??
        //Imposto.ICMS.pBCOp
        //Imposto.ICMS.vBCSTRet :=//criar campo?
        //Imposto.ICMS.vICMSSTRet
        //Imposto.ICMS.motDesICMS
        //Imposto.ICMS.pCredSN
        //Imposto.ICMS.vCredICMSSN
        //Imposto.ICMS.vBCSTDest
        //Imposto.ICMS.vICMSSTDest
        //Imposto.ICMS.vICMSDeson
        //Imposto.ICMS.vICMSOp
        //Imposto.ICMS.pDif
        //Imposto.ICMS.vICMSDif
        //Imposto.ICMS.vBCFCP
        //Imposto.ICMS.pFCP
        //Imposto.ICMS.vFCP
        //Imposto.ICMS.vBCFCPST
        //Imposto.ICMS.pFCPST
        //Imposto.ICMS.vFCPST
        //Imposto.ICMS.vBCFCPSTRet
        //Imposto.ICMS.pFCPSTRet
        //Imposto.ICMS.vFCPSTRet
        //Imposto.ICMS.pST
        //Imposto.ICMS.pRedBCEfet
        //Imposto.ICMS.vBCEfet
        //Imposto.ICMS.adRemICMS
        //Imposto.ICMS.vICMSMono
        //Imposto.ICMS.qBCMono
        //Imposto.ICMS.adRemICMSReten
        //Imposto.ICMS.vICMSMonoReten
        //Imposto.ICMS.qBCMonoReten
        //Imposto.ICMS.pRedAdRem
        //Imposto.ICMS.motRedAdRem
        //Imposto.ICMS.vICMSMonoOp
        //Imposto.ICMS.vICMSMonoDif
        //Imposto.ICMS.adRemICMSRet
        //Imposto.ICMS.vICMSMonoRet
        //Imposto.ICMS.qBCMonoRet
        //Imposto.ICMS.indDeduzDeson
        Imposto.ICMS.cBenefRBC:=DM.TBNfceItensNCI_BENEFICIO.Value;
        {$ENDREGION}

        {$REGION 'IPI - Ipi do produto - nfce nao tem IPI'}
        {Imposto.IPI.clEnq   :='999';
        //Imposto.IPI.CNPJProd:=
        //Imposto.IPI.cSelo   :=
        //Imposto.IPI.qSelo   :=
        Imposto.IPI.cEnq    :='999';
        case DM.TBNfceItensNCI_CSTIPI.Value of
          00: Imposto.IPI.CST:=ipi00;
          01: Imposto.IPI.CST:=ipi01;
          02: Imposto.IPI.CST:=ipi02;
          03: Imposto.IPI.CST:=ipi03;
          04: Imposto.IPI.CST:=ipi04;
          05: Imposto.IPI.CST:=ipi05;
          49: Imposto.IPI.CST:=ipi49;
          50: Imposto.IPI.CST:=ipi50;
          51: Imposto.IPI.CST:=ipi51;
          52: Imposto.IPI.CST:=ipi52;
          53: Imposto.IPI.CST:=ipi53;
          54: Imposto.IPI.CST:=ipi54;
          55: Imposto.IPI.CST:=ipi55;
          99: Imposto.IPI.CST:=ipi99;
        end;
        Imposto.IPI.vBC     :=DM.TBNfceItensNCI_BASEIPI.AsExtended;
        //Imposto.IPI.qUnid   :=
        //Imposto.IPI.vUnid   :=
        Imposto.IPI.pIPI    :=DM.TBNfceItensNCI_ALIQIPI.AsExtended;
        Imposto.IPI.vIPI    :=DM.TBNfceItensNCI_VALORIPI.AsExtended;}
        {$ENDREGION}

        {$REGION 'PIS - Pis do produto'}
        case DM.TBNfceItensNCI_CSTPIS.Value of
          {$REGION 'CST PIS'}
          01: Imposto.PIS.CST:=pis01;
          02: Imposto.PIS.CST:=pis02;
          03: Imposto.PIS.CST:=pis03;
          04: Imposto.PIS.CST:=pis04;
          05: Imposto.PIS.CST:=pis05;
          06: Imposto.PIS.CST:=pis06;
          07: Imposto.PIS.CST:=pis07;
          08: Imposto.PIS.CST:=pis08;
          09: Imposto.PIS.CST:=pis09;
          49: Imposto.PIS.CST:=pis49;
          50: Imposto.PIS.CST:=pis50;
          51: Imposto.PIS.CST:=pis51;
          52: Imposto.PIS.CST:=pis52;
          53: Imposto.PIS.CST:=pis53;
          54: Imposto.PIS.CST:=pis54;
          55: Imposto.PIS.CST:=pis55;
          56: Imposto.PIS.CST:=pis56;
          60: Imposto.PIS.CST:=pis60;
          61: Imposto.PIS.CST:=pis61;
          62: Imposto.PIS.CST:=pis62;
          63: Imposto.PIS.CST:=pis63;
          64: Imposto.PIS.CST:=pis64;
          65: Imposto.PIS.CST:=pis65;
          66: Imposto.PIS.CST:=pis66;
          67: Imposto.PIS.CST:=pis67;
          70: Imposto.PIS.CST:=pis70;
          71: Imposto.PIS.CST:=pis71;
          72: Imposto.PIS.CST:=pis72;
          73: Imposto.PIS.CST:=pis73;
          74: Imposto.PIS.CST:=pis74;
          75: Imposto.PIS.CST:=pis75;
          98: Imposto.PIS.CST:=pis98;
          99: Imposto.PIS.CST:=pis99;
          {$ENDREGION}
        end;
        Imposto.PIS.vBC :=DM.TBNfceItensNCI_BASEPIS.AsExtended;
        Imposto.PIS.pPIS:=DM.TBNfceItensNCI_ALIQPIS.AsExtended;
        Imposto.PIS.vPIS:=DM.TBNfceItensNCI_VALORPIS.AsExtended;
        //Imposto.PIS.qBCProd
        //Imposto.PIS.vAliqProd
        {$ENDREGION}

        {$REGION 'COFINS - Cofins do produto'}
        case DM.TBNfceItensNCI_CSTCOFINS.Value of
          {$REGION 'CST COFINS'}
          01: Imposto.COFINS.CST:=cof01;
          02: Imposto.COFINS.CST:=cof02;
          03: Imposto.COFINS.CST:=cof03;
          04: Imposto.COFINS.CST:=cof04;
          05: Imposto.COFINS.CST:=cof05;
          06: Imposto.COFINS.CST:=cof06;
          07: Imposto.COFINS.CST:=cof07;
          08: Imposto.COFINS.CST:=cof08;
          09: Imposto.COFINS.CST:=cof09;
          49: Imposto.COFINS.CST:=cof49;
          50: Imposto.COFINS.CST:=cof50;
          51: Imposto.COFINS.CST:=cof51;
          52: Imposto.COFINS.CST:=cof52;
          53: Imposto.COFINS.CST:=cof53;
          54: Imposto.COFINS.CST:=cof54;
          55: Imposto.COFINS.CST:=cof55;
          56: Imposto.COFINS.CST:=cof56;
          60: Imposto.COFINS.CST:=cof60;
          61: Imposto.COFINS.CST:=cof61;
          62: Imposto.COFINS.CST:=cof62;
          63: Imposto.COFINS.CST:=cof63;
          64: Imposto.COFINS.CST:=cof64;
          65: Imposto.COFINS.CST:=cof65;
          66: Imposto.COFINS.CST:=cof66;
          67: Imposto.COFINS.CST:=cof67;
          70: Imposto.COFINS.CST:=cof70;
          71: Imposto.COFINS.CST:=cof71;
          72: Imposto.COFINS.CST:=cof72;
          73: Imposto.COFINS.CST:=cof73;
          74: Imposto.COFINS.CST:=cof74;
          75: Imposto.COFINS.CST:=cof75;
          98: Imposto.COFINS.CST:=cof98;
          99: Imposto.COFINS.CST:=cof99;
          {$ENDREGION}
        end;

        Imposto.COFINS.vBC     :=DM.TBNfceItensNCI_BASECOFINS.AsExtended;
        Imposto.COFINS.pCOFINS :=DM.TBNfceItensNCI_ALIQCOFINS.AsExtended;
        Imposto.COFINS.vCOFINS :=DM.TBNfceItensNCI_VALORCOFINS.AsExtended;
        //Imposto.COFINS.vBCProd
        //Imposto.COFINS.vAliqProd
        //Imposto.COFINS.qBCProd
        {$ENDREGION}

        Imposto.vTotTrib  :=DM.TBNfceItensNCI_VALORTRIBUTOS.AsExtended;
      end;

      DM.TBNfceItens.Next;
    end;
    DM.TBNfceItens.EnableControls;
    {$ENDREGION}

    {$REGION 'Total - Totais e Impostos'}
    {$REGION 'ICMS'}
    NFe.Total.ICMSTot.vBC          := DM.TBNfceNFC_BASEICMS.AsExtended;
    NFe.Total.ICMSTot.vICMS        := DM.TBNfceNFC_TOTALICMS.AsExtended;
    NFe.Total.ICMSTot.vICMSDeson   := 0;
    NFe.Total.ICMSTot.vFCPUFDest   := DM.TBNfceNFC_TOTALFCP.AsExtended; //?
    NFe.Total.ICMSTot.vICMSUFDest  := DM.TBNfceNFC_TOTALICMSUFDEST.AsExtended;
    NFe.Total.ICMSTot.vICMSUFRemet := DM.TBNfceNFC_TOTALICMSUFREMET.AsExtended;
    NFe.Total.ICMSTot.vFCP         := DM.TBNfceNFC_TOTALFCP.AsExtended;
    NFe.Total.ICMSTot.vBCST        := DM.TBNfceNFC_BASEICMSST.AsExtended;
    NFe.Total.ICMSTot.vST          := DM.TBNfceNFC_TOTALICMSST.AsExtended;
    NFe.Total.ICMSTot.vFCPST       := DM.TBNfceNFC_TOTALFCPST.AsExtended;
    //NFe.Total.ICMSTot.vFCPSTRet
    NFe.Total.ICMSTot.vProd        := DM.TBNfceNFC_TOTALPRODUTOS.AsExtended;
    NFe.Total.ICMSTot.vFrete       := DM.TBNfceNFC_VALORFRETE.AsExtended;
    NFe.Total.ICMSTot.vSeg         := 0;
    NFe.Total.ICMSTot.vDesc        := DM.TBNfceNFC_DESCVALOR.AsExtended;
    NFe.Total.ICMSTot.vII          := 0;
    NFe.Total.ICMSTot.vIPI         := 0; //nfce nao tem IPI. DM.TBNfceNFC_TOTALIPI.AsExtended;
    NFe.Total.ICMSTot.vIPIDevol    := 0;
    NFe.Total.ICMSTot.vPIS         := DM.TBNfceNFC_TOTALPIS.AsExtended;
    NFe.Total.ICMSTot.vCOFINS      := DM.TBNfceNFC_TOTALCOFINS.AsExtended;
    NFe.Total.ICMSTot.vOutro       := DM.TBNfceNFC_ACREVALOR.AsExtended;
    NFe.Total.ICMSTot.vNF          := DM.TBNfceNFC_VALORTOTAL.AsExtended;
    NFe.Total.ICMSTot.vTotTrib     := DM.TBNfceNFC_TOTALTRIBUTOS.AsExtended;
    //NFe.Total.ICMSTot.vICMSMono
    //NFe.Total.ICMSTot.vICMSMonoReten
    //NFe.Total.ICMSTot.vICMSMonoRet
    //NFe.Total.ICMSTot.qBCMono
    //NFe.Total.ICMSTot.qBCMonoReten
    //NFe.Total.ICMSTot.qBCMonoRet
    {$ENDREGION}

    {$REGION 'ISSQN'}
    NFe.Total.ISSQNtot.vServ   := 0;
    NFe.Total.ISSQNTot.vBC     := 0;
    NFe.Total.ISSQNTot.vISS    := 0;
    NFe.Total.ISSQNTot.vPIS    := 0;
    NFe.Total.ISSQNTot.vCOFINS := 0;
    //NFe.Total.ISSQNTot.dCompet
    //NFe.Total.ISSQNTot.vDeducao
    //NFe.Total.ISSQNTot.vOutro
    //NFe.Total.ISSQNTot.vDescIncond
    //NFe.Total.ISSQNTot.vDescCond
    //NFe.Total.ISSQNTot.vISSRet
    //NFe.Total.ISSQNTot.cRegTrib
    {$ENDREGION}

    NFe.Total.retTrib.vRetPIS    := 0;
    NFe.Total.retTrib.vRetCOFINS := 0;
    NFe.Total.retTrib.vRetCSLL   := 0;
    NFe.Total.retTrib.vBCIRRF    := 0;
    NFe.Total.retTrib.vIRRF      := 0;
    NFe.Total.retTrib.vBCRetPrev := 0;
    NFe.Total.retTrib.vRetPrev   := 0;
    {$ENDREGION}


//    0 - EMITENTE
//    1 - DEST/REM
//    2 - TERCEIROS
//    9 - SEM FRETE
    NFe.Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

    //NFe.Cobr

    {$REGION 'Pag - Dados do pagamento'}
    DM.TBNfcePagamentos.DisableControls;
    DM.TBNfcePagamentos.First;
    while not DM.TBNfcePagamentos.Eof do
    begin
      if DM.TBNfcePagamentosNCP_VALOR.Value > 0 then
      begin
        with NFe.Pag.New do
        begin
          //indPag:=ipVista;
          tPag:=StrToFormaPagamento(OK,Copy(DM.TBNfcePagamentosCPG_MEIOPAGAMENTO.Value,1,2)); // fpDinheiro;
          //xPag:=DM.TBNfcePagamentosCPG_DESCRICAO.Value; nao permitida no cupom.
          vPag:=DM.TBNfcePagamentosNCP_VALOR.AsExtended;
          tpIntegra:=StrTotpIntegra(OK,Copy(DM.TBNfcePagamentosCPG_TIPOINTEGRACAO.Value,1,1)); // tiPagNaoIntegrado
          //tpIntegra:=StrTotpIntegra(OK,Copy(DM.TBNfcePagamentosCPG_TIPOINTEGRACAO.Value,1,1)); // tiPagNaoIntegrado
          //CNPJ
          //tBand
          //cAut
          //dPag
          //CNPJPag
          //UFPag
          //CNPJReceb
          //idTermPag
        end;
      end;
      DM.TBNfcePagamentos.Next;
    end;
    DM.TBNfcePagamentos.EnableControls;
    NFe.Pag.vTroco:=DM.TBNfceNFC_VALORTROCO.AsExtended;
    {$ENDREGION}

    //NFe.infIntermed
    //NFe.InfAdic
    //NFe.exporta
    //NFe.compra
    //NFe.cana
    //NFe.infNFeSupl
    //NFe.signature
    //NFe.procNFe

    {$REGION 'infRespTec - Responsavel Tecnico'}
    NFe.infRespTec.CNPJ:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
    NFe.infRespTec.xContato:='ROGERIO PETT';
    NFe.infRespTec.email:=DM.TBEmpresaEMP_NOSSOEMAIL.Value;
    NFe.infRespTec.fone:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOFONE1.Value);
    //NFe.infRespTec.idCSRT
    //NFe.infRespTec.hashCSRT
    {$ENDREGION}

    //NFe.agropecuario

    // Informações do QR Code
    //NFe.infNFeSupl.qrCode:='...'; // Aqui deve ser gerado conforme regras da NFC-e
  end;
end;

procedure TFormNfcePagamento.AlimentarNFCeRTC;
var OK: Boolean;
begin
  DM.ConfigurarACBrNFe;
  DM.ACBrNFe1.Tag:=0;
  DM.ACBrNFe1.NotasFiscais.Clear;

  with DM.ACBrNFe1.NotasFiscais.Add do //objeto NFe
  begin
    //NFe.infNFe

    {$REGION 'Ide - Dados da NFCe'}
    NFe.Ide.cUF                 :=DM.TBEmpresaEMP_ESTADOCODIGO.Value;  // SC -> Código da UF
    NFe.Ide.cNF                 :=StrToInt(DM.TBNfceNFC_CODIGONUMERICO.Value);
    NFe.Ide.cMunFG              :=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Ide.cMunFGIBS           :=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Ide.cDV                 :=StrToInt(Copy(DM.TBNfceNFC_CHAVEACESSO.Value,44,1));
    NFe.Ide.dEmi                :=now;
    //NFe.Ide.dSaiEnt:=
    if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value<>'1 - NORMAL' then
    begin
      NFe.Ide.dhCont:=Now;
      NFe.Ide.xJust:=DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value;
    end;
    NFe.Ide.finNFe              :=fnNormal;
    NFe.Ide.gCompraGov.tpEnteGov:=tcgNenhum; //tcgNenhum, tcgUniao, tcgEstados, tcgDistritoFederal, tcgMunicipios.
    NFe.Ide.gCompraGov.pRedutor :=0;
    NFe.Ide.gCompraGov.tpOperGov:=togNenhum; //togNenhum, togFornecimento, togRecebimentoPag
    NFe.Ide.indFinal            :=cfConsumidorFinal;
    NFe.Ide.indPres             :=pcPresencial;
    NFe.Ide.modelo              :=65; // NFC-e
    NFe.Ide.natOp               :=DM.TBNfceNFC_CFOP.Value.ToString;
    NFe.Ide.nNF                 :=DM.TBNfceNFC_CODIGO.Value;
    NFe.Ide.serie               :=DM.TBNfceNFC_SERIE.Value;
    NFe.Ide.tpNF                :=tnSaida;
    NFe.Ide.tpNFDebito          :=TtpNFDebito.tdNenhum; //tdNenhum, tdTransferenciaCreditoCooperativa, tdAnulacao, tdDebitosNaoProcessadas, tdMultaJuros, tdTransferenciaCreditoSucessao, tdPagamentoAntecipado, tdPerdaEmEstoque
    NFe.Ide.tpImp               :=tiNFCe;
    NFe.Ide.tpEmis              :=StrToTpEmis(OK,Copy(DM.TBParametrosPAR_NFCETIPOEMISSAO.Value,1,1));
    NFe.Ide.tpAmb               :=StrToTpAmb(OK,DM.TBParametrosPAR_TIPOAMBIENTENFCE.Value); //taHomologacao; //taProducao;  // Altere para taHomologacao se for testes
    NFe.Ide.procEmi             :=peAplicativoContribuinte;
    NFe.Ide.verProc             :=FileVersion(Application.ExeName);
    {$ENDREGION}

    {$REGION 'Emit - Dados do emitente'}
    NFe.Emit.CNPJCPF          :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    NFe.Emit.xNome            :=DM.TBEmpresaEMP_NOME.Value;
    NFe.Emit.xFant            :=DM.TBEmpresaEMP_NOMEFANTASIA.Value;
    NFe.Emit.EnderEmit.xLgr   :=DM.TBEmpresaEMP_ENDERECO.Value;
    NFe.Emit.EnderEmit.nro    :=DM.TBEmpresaEMP_NUMERO.Value;
    NFe.Emit.EnderEmit.xCpl   :='';
    NFe.Emit.EnderEmit.xBairro:=DM.TBEmpresaEMP_BAIRRO.Value;
    NFe.Emit.EnderEmit.cMun   :=DM.TBEmpresaEMP_CIDADECODIGO.Value;
    NFe.Emit.EnderEmit.xMun   :=DM.TBEmpresaEMP_CIDADE.Value;
    NFe.Emit.EnderEmit.UF     :=DM.TBEmpresaEMP_ESTADO.Value;
    NFe.Emit.EnderEmit.CEP    :=StrToInt(LimparFormatacao(DM.TBEmpresaEMP_CEP.Value));
    NFe.Emit.EnderEmit.cPais  :=DM.TBEmpresaEMP_PAISCODIGO.Value;
    NFe.Emit.EnderEmit.xPais  :=DM.TBEmpresaEMP_PAIS.Value;
    NFe.Emit.EnderEmit.fone   :=LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value);
    NFe.Emit.IE               :=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IEST             :=''; //preencher conforme o estado do cliente. LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    NFe.Emit.IM               :=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
    NFe.Emit.CNAE             :=LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value);
    if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then //1 - SIMPLES NACIONAL, 2 - LUCRO PRESUMIDO, 3 - LUCRO REAL
    NFe.Emit.CRT              :=pcnConversaoNFe.TpcnCRT.crtSimplesNacional else
    NFe.Emit.CRT              :=pcnConversaoNFe.TpcnCRT.crtRegimeNormal;
    {$ENDREGION}

    //nfe.Avulsa

    {$REGION 'Dest - Dados do cliente'}
    NFe.Dest.xNome:='CONSUMIDOR FINAL';
    NFe.Dest.indIEDest:=inNaoContribuinte;
    if DM.TBNfceNFC_CLIENTE.Value<>1 then
    begin
      if LimparFormatacao(DM.TBNfceNFC_CNPJ.Value)<>'' then
      NFe.Dest.CNPJCPF          :=LimparFormatacao(DM.TBNfceNFC_CNPJ.Value) else
      NFe.Dest.CNPJCPF          :=LimparFormatacao(DM.TBNfceNFC_CPF.Value);
      NFe.Dest.idEstrangeiro    :='';
      NFe.Dest.xNome            :=DM.TBNfceNFC_NOME.Value;
      NFe.Dest.EnderDest.xLgr   :=DM.TBNfceNFC_ENDERECO.Value;
      NFe.Dest.EnderDest.nro    :=ift(DM.TBNfceNFC_NUMERO.Value='','0',DM.TBNfceNFC_NUMERO.Value);
      NFe.Dest.EnderDest.xCpl   :=DM.TBNfceNFC_COMPLEMENTO.Value;
      NFe.Dest.EnderDest.xBairro:=DM.TBNfceNFC_BAIRRO.Value;
      NFe.Dest.EnderDest.cMun   :=DM.TBNfceNFC_CIDADECODIGO.Value;
      NFe.Dest.EnderDest.xMun   :=DM.TBNfceNFC_CIDADE.Value;
      NFe.Dest.EnderDest.UF     :=DM.TBNfceNFC_ESTADO.Value;
      NFe.Dest.EnderDest.CEP    :=StrToInt(SoNumeros(DM.TBNfceNFC_CEP.Value));
      NFe.Dest.EnderDest.cPais  :=1058;
      NFe.Dest.EnderDest.xPais  :='BRASIL';
      NFe.Dest.EnderDest.fone   :=SoNumeros(DM.TBNfceNFC_FONE1.Value);
      NFe.Dest.indIEDest        :=inNaoContribuinte;
      NFe.Dest.IE               :=DM.TBNfceNFC_IE.Value
      //NFe.Dest.ISUF
      //NFe.Dest.IM
      //NFe.Dest.Email:=
    end;
    {$ENDREGION}

    //NFe.Retirada
    //NFe.Entrega

    {$REGION 'autXML - CNPJs autorizados a baixar o XML.'}
    if not DM.TBEmpresaFOR_CNPJ.IsNull then
    begin
      with NFe.autXML.New do
      begin
        CNPJCPF:=LimparFormatacao(DM.TBEmpresaFOR_CNPJ.Value);
      end;
    end;
    {$ENDREGION}

    {$REGION 'Det - Adição dos itens da NFCe'}
    //fecha e abre a tabela de itens para ordenar pela sequencia correta.
    DM.TBNfceItens.Close;
    DM.TBNfceItens.Open;
    DM.TBNfceItens.DisableControls;
    DM.TBNfceItens.First;
    while not DM.TBNfceItens.eof do
    begin
      with NFe.Det.New do
      begin
        DM.TBClassTrib.Close;
        DM.TBClassTrib.ParamByName('codigo').AsString:=DM.TBNfceItensNCI_CLASSTRIBIBSCBS.Value;
        DM.TBClassTrib.Open;

        {$REGION 'Dados do produto'}
        Prod.cProd      :=DM.TBNfceItensNCI_PRODUTO.Value.ToString;
        Prod.nItem      :=DM.TBNfceItensNCI_SEQUENCIA.Value;
        Prod.cEAN       :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarra     :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.xProd      :=DM.TBNfceItensNCI_DESCRICAO.Value;
        Prod.NCM        :=DM.TBNfceItensNCI_CLASSFISCAL.Value;
        //Prod.NVE.
        Prod.EXTIPI     :=DM.TBNfceItensNCI_EXCECAO.Value.ToString;
        if DM.TBNfceItensNCI_EXCECAO.Value=0 then
        Prod.EXTIPI     :='';

        Prod.CFOP       :=DM.TBNfceItensNCI_CFOP.Value.ToString;
        Prod.uCom       :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qCom       :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnCom     :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        Prod.vProd      :=DM.TBNfceItensNCI_VALORTOTAL.AsExtended;
        Prod.cEANTrib   :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.cBarraTrib :=DM.TBNfceItensNCI_CODIGOBARRAS.Value;
        Prod.uTrib      :=DM.TBNfceItensNCI_UNIDADE.Value;
        Prod.qTrib      :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Prod.vUnTrib    :=DM.TBNfceItensNCI_VALORUNIT.AsExtended;
        Prod.vFrete     :=DM.TBNfceItensNCI_VALORFRETE.AsExtended;
        //Prod.vSeg
        Prod.vDesc      :=Decimais(DM.TBNfceItensNCI_DESCVALOR.AsExtended,2);
        Prod.vOutro     :=DM.TBNfceItensNCI_VALORACESSORIAS.AsExtended;
        Prod.IndTot     :=itSomaTotalNFe;
        //Prod.DI
        //Prod.xPed
        //Prod.nItemPed
        //Prod.detExport
        //Prod.rastro
        //Prod.veicProd
        //Prod.med
        //Prod.arma
        //Prod.comb
        //Prod.nRECOPI
        //Prod.nFCI
        Prod.CEST       :=DM.TBNfceItensNCI_CEST.Value;
        //Prod.indEscala
        //Prod.CNPJFab
        Prod.cBenef     :=DM.TBNfceItensNCI_BENEFICIO.Value;
        //Prod.CredPresumido
        //Prod.indBemMovelUsado:=tieSim, tieNao;
        Prod.tpCredPresIBSZFM:=tcpNenhum;
        {$ENDREGION}

        {$REGION 'ICMS do produto'}
        case StrToInt(Copy(DM.TBNfceItensNCI_ORIGEM.Value,0,1)) of
          0: Imposto.ICMS.orig:=oeNacional;
          1: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDireta;
          2: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasil;
          3: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior40;
          4: Imposto.ICMS.orig:=oeNacionalProcessosBasicos;
          5: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoInferiorIgual40;
          6: Imposto.ICMS.orig:=oeEstrangeiraImportacaoDiretaSemSimilar;
          7: Imposto.ICMS.orig:=oeEstrangeiraAdquiridaBrasilSemSimilar;
          8: Imposto.ICMS.orig:=oeNacionalConteudoImportacaoSuperior70;
        end;
        case DM.TBNfceItensNCI_CSTICMS.Value of
          {$REGION 'cst icms'}
          00: Imposto.ICMS.CST:=TpcnCSTIcms.cst00;
          01: Imposto.ICMS.CST:=TpcnCSTIcms.cst01;
          02: Imposto.ICMS.CST:=TpcnCSTIcms.cst02;
          10: Imposto.ICMS.CST:=TpcnCSTIcms.cst10;
          12: Imposto.ICMS.CST:=TpcnCSTIcms.cst12;
          13: Imposto.ICMS.CST:=TpcnCSTIcms.cst13;
          14: Imposto.ICMS.CST:=TpcnCSTIcms.cst14;
          15: Imposto.ICMS.CST:=TpcnCSTIcms.cst15;
          20: Imposto.ICMS.CST:=TpcnCSTIcms.cst20;
          21: Imposto.ICMS.CST:=TpcnCSTIcms.cst21;
          30: Imposto.ICMS.CST:=TpcnCSTIcms.cst30;
          40: Imposto.ICMS.CST:=TpcnCSTIcms.cst40;
          41: Imposto.ICMS.CST:=TpcnCSTIcms.cst41;
          45: Imposto.ICMS.CST:=TpcnCSTIcms.cst45;
          50: Imposto.ICMS.CST:=TpcnCSTIcms.cst50;
          51: Imposto.ICMS.CST:=TpcnCSTIcms.cst51;
          53: Imposto.ICMS.CST:=TpcnCSTIcms.cst53;
          60: Imposto.ICMS.CST:=TpcnCSTIcms.cst60;
          61: Imposto.ICMS.CST:=TpcnCSTIcms.cst61;
          70: Imposto.ICMS.CST:=TpcnCSTIcms.cst70;
          72: Imposto.ICMS.CST:=TpcnCSTIcms.cst72;
          73: Imposto.ICMS.CST:=TpcnCSTIcms.cst73;
          74: Imposto.ICMS.CST:=TpcnCSTIcms.cst74;
          80: Imposto.ICMS.CST:=TpcnCSTIcms.cst80; //apenas para cte.
          81: Imposto.ICMS.CST:=TpcnCSTIcms.cst81; //apenas para cte.
          90: Imposto.ICMS.CST:=TpcnCSTIcms.cst90;
          101: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn101;
          102: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn102;
          104: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn103;
          201: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn201;
          202: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn202;
          203: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn203;
          300: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn300;
          400: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn400;
          500: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn500;
          900: Imposto.ICMS.CSOSN:=TpcnCSOSNIcms.csosn900;
          {$ENDREGION}
        end;
        Imposto.ICMS.ModBC    :=dbiValorOperacao;
        Imposto.ICMS.pRedBC   :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended;
        Imposto.ICMS.vBC      :=DM.TBNfceItensNCI_BASEICMS.AsExtended;
        Imposto.ICMS.pICMS    :=DM.TBNfceItensNCI_ALIQICMS.AsExtended;
        Imposto.ICMS.vICMS    :=DM.TBNfceItensNCI_VALORICMS.AsExtended;
        Imposto.ICMS.modBCST  :=dbisValordaOperacao;
        Imposto.ICMS.pMVAST   :=DM.TBNfceItensNCI_ALIQICMSADICST.AsExtended;
        Imposto.ICMS.pRedBCST :=DM.TBNfceItensNCI_ALIQICMSRED.AsExtended; //usar o mesmo?
        Imposto.ICMS.vBCST    :=DM.TBNfceItensNCI_BASEICMSST.AsExtended;
        Imposto.ICMS.pICMSST  :=DM.TBNfceItensNCI_ALIQICMSST.AsExtended;
        Imposto.ICMS.vICMSST  :=DM.TBNfceItensNCI_VALORICMSST.AsExtended;
        Imposto.ICMS.UFST     :=''; //??
        //Imposto.ICMS.pBCOp
        //Imposto.ICMS.vBCSTRet :=//criar campo?
        //Imposto.ICMS.vICMSSTRet
        //Imposto.ICMS.motDesICMS
        //Imposto.ICMS.pCredSN
        //Imposto.ICMS.vCredICMSSN
        //Imposto.ICMS.vBCSTDest
        //Imposto.ICMS.vICMSSTDest
        //Imposto.ICMS.vICMSDeson
        //Imposto.ICMS.vICMSOp
        //Imposto.ICMS.pDif
        //Imposto.ICMS.vICMSDif
        //Imposto.ICMS.vBCFCP
        //Imposto.ICMS.pFCP
        //Imposto.ICMS.vFCP
        //Imposto.ICMS.vBCFCPST
        //Imposto.ICMS.pFCPST
        //Imposto.ICMS.vFCPST
        //Imposto.ICMS.vBCFCPSTRet
        //Imposto.ICMS.pFCPSTRet
        //Imposto.ICMS.vFCPSTRet
        //Imposto.ICMS.pST
        //Imposto.ICMS.pRedBCEfet
        //Imposto.ICMS.vBCEfet
        //Imposto.ICMS.adRemICMS
        //Imposto.ICMS.vICMSMono
        //Imposto.ICMS.qBCMono
        //Imposto.ICMS.adRemICMSReten
        //Imposto.ICMS.vICMSMonoReten
        //Imposto.ICMS.qBCMonoReten
        //Imposto.ICMS.pRedAdRem
        //Imposto.ICMS.motRedAdRem
        //Imposto.ICMS.vICMSMonoOp
        //Imposto.ICMS.vICMSMonoDif
        //Imposto.ICMS.adRemICMSRet
        //Imposto.ICMS.vICMSMonoRet
        //Imposto.ICMS.qBCMonoRet
        //Imposto.ICMS.indDeduzDeson
        Imposto.ICMS.cBenefRBC:=DM.TBNfceItensNCI_BENEFICIO.Value;
        {$ENDREGION}

        {$REGION 'IPI - Ipi do produto - nfce nao tem IPI'}
        {Imposto.IPI.clEnq   :='999';
        //Imposto.IPI.CNPJProd:=
        //Imposto.IPI.cSelo   :=
        //Imposto.IPI.qSelo   :=
        Imposto.IPI.cEnq    :='999';
        case DM.TBNfceItensNCI_CSTIPI.Value of
          00: Imposto.IPI.CST:=ipi00;
          01: Imposto.IPI.CST:=ipi01;
          02: Imposto.IPI.CST:=ipi02;
          03: Imposto.IPI.CST:=ipi03;
          04: Imposto.IPI.CST:=ipi04;
          05: Imposto.IPI.CST:=ipi05;
          49: Imposto.IPI.CST:=ipi49;
          50: Imposto.IPI.CST:=ipi50;
          51: Imposto.IPI.CST:=ipi51;
          52: Imposto.IPI.CST:=ipi52;
          53: Imposto.IPI.CST:=ipi53;
          54: Imposto.IPI.CST:=ipi54;
          55: Imposto.IPI.CST:=ipi55;
          99: Imposto.IPI.CST:=ipi99;
        end;
        Imposto.IPI.vBC     :=DM.TBNfceItensNCI_BASEIPI.AsExtended;
        //Imposto.IPI.qUnid   :=
        //Imposto.IPI.vUnid   :=
        Imposto.IPI.pIPI    :=DM.TBNfceItensNCI_ALIQIPI.AsExtended;
        Imposto.IPI.vIPI    :=DM.TBNfceItensNCI_VALORIPI.AsExtended;}
        {$ENDREGION}

        {$REGION 'PIS - Pis do produto'}
        case DM.TBNfceItensNCI_CSTPIS.Value of
          {$REGION 'CST PIS'}
          01: Imposto.PIS.CST:=pis01;
          02: Imposto.PIS.CST:=pis02;
          03: Imposto.PIS.CST:=pis03;
          04: Imposto.PIS.CST:=pis04;
          05: Imposto.PIS.CST:=pis05;
          06: Imposto.PIS.CST:=pis06;
          07: Imposto.PIS.CST:=pis07;
          08: Imposto.PIS.CST:=pis08;
          09: Imposto.PIS.CST:=pis09;
          49: Imposto.PIS.CST:=pis49;
          50: Imposto.PIS.CST:=pis50;
          51: Imposto.PIS.CST:=pis51;
          52: Imposto.PIS.CST:=pis52;
          53: Imposto.PIS.CST:=pis53;
          54: Imposto.PIS.CST:=pis54;
          55: Imposto.PIS.CST:=pis55;
          56: Imposto.PIS.CST:=pis56;
          60: Imposto.PIS.CST:=pis60;
          61: Imposto.PIS.CST:=pis61;
          62: Imposto.PIS.CST:=pis62;
          63: Imposto.PIS.CST:=pis63;
          64: Imposto.PIS.CST:=pis64;
          65: Imposto.PIS.CST:=pis65;
          66: Imposto.PIS.CST:=pis66;
          67: Imposto.PIS.CST:=pis67;
          70: Imposto.PIS.CST:=pis70;
          71: Imposto.PIS.CST:=pis71;
          72: Imposto.PIS.CST:=pis72;
          73: Imposto.PIS.CST:=pis73;
          74: Imposto.PIS.CST:=pis74;
          75: Imposto.PIS.CST:=pis75;
          98: Imposto.PIS.CST:=pis98;
          99: Imposto.PIS.CST:=pis99;
          {$ENDREGION}
        end;
        Imposto.PIS.vBC :=DM.TBNfceItensNCI_BASEPIS.AsExtended;
        Imposto.PIS.pPIS:=DM.TBNfceItensNCI_ALIQPIS.AsExtended;
        Imposto.PIS.vPIS:=DM.TBNfceItensNCI_VALORPIS.AsExtended;
        //Imposto.PIS.qBCProd
        //Imposto.PIS.vAliqProd
        {$ENDREGION}

        {$REGION 'COFINS - Cofins do produto'}
        case DM.TBNfceItensNCI_CSTCOFINS.Value of
          {$REGION 'CST COFINS'}
          01: Imposto.COFINS.CST:=cof01;
          02: Imposto.COFINS.CST:=cof02;
          03: Imposto.COFINS.CST:=cof03;
          04: Imposto.COFINS.CST:=cof04;
          05: Imposto.COFINS.CST:=cof05;
          06: Imposto.COFINS.CST:=cof06;
          07: Imposto.COFINS.CST:=cof07;
          08: Imposto.COFINS.CST:=cof08;
          09: Imposto.COFINS.CST:=cof09;
          49: Imposto.COFINS.CST:=cof49;
          50: Imposto.COFINS.CST:=cof50;
          51: Imposto.COFINS.CST:=cof51;
          52: Imposto.COFINS.CST:=cof52;
          53: Imposto.COFINS.CST:=cof53;
          54: Imposto.COFINS.CST:=cof54;
          55: Imposto.COFINS.CST:=cof55;
          56: Imposto.COFINS.CST:=cof56;
          60: Imposto.COFINS.CST:=cof60;
          61: Imposto.COFINS.CST:=cof61;
          62: Imposto.COFINS.CST:=cof62;
          63: Imposto.COFINS.CST:=cof63;
          64: Imposto.COFINS.CST:=cof64;
          65: Imposto.COFINS.CST:=cof65;
          66: Imposto.COFINS.CST:=cof66;
          67: Imposto.COFINS.CST:=cof67;
          70: Imposto.COFINS.CST:=cof70;
          71: Imposto.COFINS.CST:=cof71;
          72: Imposto.COFINS.CST:=cof72;
          73: Imposto.COFINS.CST:=cof73;
          74: Imposto.COFINS.CST:=cof74;
          75: Imposto.COFINS.CST:=cof75;
          98: Imposto.COFINS.CST:=cof98;
          99: Imposto.COFINS.CST:=cof99;
          {$ENDREGION}
        end;

        Imposto.COFINS.vBC     :=DM.TBNfceItensNCI_BASECOFINS.AsExtended;
        Imposto.COFINS.pCOFINS :=DM.TBNfceItensNCI_ALIQCOFINS.AsExtended;
        Imposto.COFINS.vCOFINS :=DM.TBNfceItensNCI_VALORCOFINS.AsExtended;
        //Imposto.COFINS.vBCProd
        //Imposto.COFINS.vAliqProd
        //Imposto.COFINS.qBCProd
        {$ENDREGION}

        Imposto.vTotTrib  :=DM.TBNfceItensNCI_VALORTRIBUTOS.AsExtended;

        //Reforma tributária.
        {$REGION 'IS'}
        Imposto.ISel.CSTIS       :=DM.TBNfceItensNCI_CSTIS.Value; //cstis000; //cstisNenhum, cstis000
        Imposto.ISel.cClassTribIS:=DM.TBNfceItensNCI_CLASSTRIBIS.Value; //ctis000001; //ctisNenhum, ctis000001
        Imposto.ISel.vBCIS       :=DM.TBNfceItensNCI_BASEIS.AsExtended;
        Imposto.ISel.pIS         :=DM.TBNfceItensNCI_ALIQIS.AsExtended;
        Imposto.ISel.adRemIS     :=DM.TBNfceItensNCI_ALIQISESP.AsExtended; //??
        Imposto.ISel.uTrib       :=DM.TBNfceItensNCI_UNIDADE.Value;
        Imposto.ISel.qTrib       :=DM.TBNfceItensNCI_QUANTIDADE.AsExtended;
        Imposto.ISel.vIS         :=DM.TBNfceItensNCI_VALORIS.AsExtended;
        {$ENDREGION}

        {$REGION 'IBSCBS'}
        case StrToInt(DM.TBNfceItensNCI_CSTIBSCBS.Value) of
          000: Imposto.IBSCBS.CST:=cst000;
          010: Imposto.IBSCBS.CST:=cst010;
          011: Imposto.IBSCBS.CST:=cst011;
          200: Imposto.IBSCBS.CST:=cst200;
          220: Imposto.IBSCBS.CST:=cst220;
          221: Imposto.IBSCBS.CST:=cst221;
          222: Imposto.IBSCBS.CST:=cst222;
          400: Imposto.IBSCBS.CST:=cst400;
          410: Imposto.IBSCBS.CST:=cst410;
          510: Imposto.IBSCBS.CST:=cst510;
          515: Imposto.IBSCBS.CST:=cst515;
          550: Imposto.IBSCBS.CST:=cst550;
          620: Imposto.IBSCBS.CST:=cst620;
          800: Imposto.IBSCBS.CST:=cst800;
          810: Imposto.IBSCBS.CST:=cst810;
          811: Imposto.IBSCBS.CST:=cst811;
          820: Imposto.IBSCBS.CST:=cst820;
          830: Imposto.IBSCBS.CST:=cst830;
        end;
        Imposto.IBSCBS.cClassTrib                       :=DM.TBNfceItensNCI_CLASSTRIBIBSCBS.Value;
        Imposto.IBSCBS.indDoacao                        :=tieNenhum;
        Imposto.IBSCBS.gIBSCBS.vBC                      :=DM.TBNfceItensNCI_BASEIBSCBS.AsExtended;
        Imposto.IBSCBS.gIBSCBS.vIBS                     :=DM.TBNfceItensNCI_VALORIBS.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.pIBSUF            :=DM.TBNfceItensNCI_ALIQIBSUF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.vIBSUF            :=DM.TBNfceItensNCI_VALORIBSUF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.gDif.pDif         :=DM.TBNfceItensNCI_ALIQIBSUFDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.gDif.vDif         :=DM.TBNfceItensNCI_VALORIBSUFDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.gDevTrib.vDevTrib :=DM.TBNfceItensNCI_VALORIBSUFDEV.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.gRed.pRedAliq     :=DM.TBNfceItensNCI_ALIQIBSUFRED.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSUF.gRed.pAliqEfet    :=DM.TBNfceItensNCI_ALIQIBSUFEFE.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.pIBSMun          :=DM.TBNfceItensNCI_ALIQIBSMUN.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.vIBSMun          :=DM.TBNfceItensNCI_VALORIBSMUN.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.gDif.pDif        :=DM.TBNfceItensNCI_ALIQIBSMUNDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.gDif.vDif        :=DM.TBNfceItensNCI_VALORIBSMUNDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.gDevTrib.vDevTrib:=DM.TBNfceItensNCI_VALORIBSMUNDEV.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.gRed.pRedAliq    :=DM.TBNfceItensNCI_ALIQIBSMUNRED.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gIBSMun.gRed.pAliqEfet   :=DM.TBNfceItensNCI_ALIQIBSMUNEFE.AsExtended;

        Imposto.IBSCBS.gIBSCBS.gCBS.pCBS                :=DM.TBNfceItensNCI_ALIQCBS.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.vCBS                :=DM.TBNfceItensNCI_VALORCBS.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.gDif.pDif           :=DM.TBNfceItensNCI_ALIQCBSDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.gDif.vDif           :=DM.TBNfceItensNCI_VALORCBSDIF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.gDevTrib.vDevTrib   :=DM.TBNfceItensNCI_VALORCBSDEV.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.gRed.pRedAliq       :=DM.TBNfceItensNCI_ALIQCBSRED.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gCBS.gRed.pAliqEfet      :=DM.TBNfceItensNCI_ALIQCBSEFE.AsExtended;

        if DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S' then
        begin
          Imposto.IBSCBS.gIBSCBS.gTribRegular.CSTReg            :=cst000;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.cClassTribReg     :=''; //ct000001;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.pAliqEfetRegIBSUF :=0;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.vTribRegIBSUF     :=00;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.pAliqEfetRegIBSMun:=0;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.vTribRegIBSMun    :=00;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.pAliqEfetRegCBS   :=0;
          Imposto.IBSCBS.gIBSCBS.gTribRegular.vTribRegCBS       :=0;
        end;

//        Imposto.IBSCBS.gIBSCBS.gIBSCredPres.cCredPres       :=cp01;
//        Imposto.IBSCBS.gIBSCBS.gIBSCredPres.pCredPres       :=5;
//        Imposto.IBSCBS.gIBSCBS.gIBSCredPres.vCredPres       :=100;
//        Imposto.IBSCBS.gIBSCBS.gIBSCredPres.vCredPresCondSus:=100;

//        Imposto.IBSCBS.gIBSCBS.gCBSCredPres.cCredPres       :=cp01;
//        Imposto.IBSCBS.gIBSCBS.gCBSCredPres.pCredPres       :=5;
//        Imposto.IBSCBS.gIBSCBS.gCBSCredPres.vCredPres       :=100;
//        Imposto.IBSCBS.gIBSCBS.gCBSCredPres.vCredPresCondSus:=100;

        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.pAliqIBSUF :=DM.TBNfceItensNCI_ALIQIBSUF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.vTribIBSUF :=DM.TBNfceItensNCI_VALORIBSUF.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.pAliqIBSMun:=DM.TBNfceItensNCI_ALIQIBSMUN.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.vTribIBSMun:=DM.TBNfceItensNCI_VALORIBSMUN.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.pAliqCBS   :=DM.TBNfceItensNCI_ALIQCBS.AsExtended;
        Imposto.IBSCBS.gIBSCBS.gTribCompraGov.vTribCBS   :=DM.TBNfceItensNCI_VALORCBS.AsExtended;

        //Imposto.IBSCBS.gIBSCBSMono.
        //Imposto.IBSCBS.gTransfCred.
        //Imposto.IBSCBS.gAjusteCompet.
        //Imposto.IBSCBS.gEstornoCred
//        Imposto.IBSCBS.gCredPresOper.vBCCredPres
//        Imposto.IBSCBS.gCredPresOper.cCredPres
//        Imposto.IBSCBS.gCredPresOper.gIBSCredPres.pCredPres
//        Imposto.IBSCBS.gCredPresOper.gIBSCredPres.vCredPres
//        Imposto.IBSCBS.gCredPresOper.gIBSCredPres.vCredPresCondSus
//        Imposto.IBSCBS.gCredPresOper.gCBSCredPres.pCredPres
//        Imposto.IBSCBS.gCredPresOper.gCBSCredPres.vCredPres
//        Imposto.IBSCBS.gCredPresOper.gCBSCredPres.vCredPresCondSus

//        Imposto.IBSCBS.gCredPresIBSZFM.competApur
//        Imposto.IBSCBS.gCredPresIBSZFM.tpCredPresIBSZFM
//        Imposto.IBSCBS.gCredPresIBSZFM.vCredPresIBSZFM
        {$ENDREGION}

        pDevol:=0;
        vIPIDevol:=0;
        infAdProd:='';
        //obsCont.xCampo:='';
        //obsCont.xTexto:='';
        //obsFisco.xCampo:='';
        //obsFisco.xTexto:='';
        vItem:=DM.TBNfceItensNCI_VALORTOTAL.AsExtended;
      end;

      DM.TBNfceItens.Next;
    end;
    DM.TBNfceItens.EnableControls;
    {$ENDREGION}

    {$REGION 'Total - Totais e Impostos'}
    {$REGION 'ICMS'}
    NFe.Total.ICMSTot.vBC          := DM.TBNfceNFC_BASEICMS.AsExtended;
    NFe.Total.ICMSTot.vICMS        := DM.TBNfceNFC_TOTALICMS.AsExtended;
    NFe.Total.ICMSTot.vICMSDeson   := 0;
    NFe.Total.ICMSTot.vFCPUFDest   := DM.TBNfceNFC_TOTALFCP.AsExtended; //?
    NFe.Total.ICMSTot.vICMSUFDest  := DM.TBNfceNFC_TOTALICMSUFDEST.AsExtended;
    NFe.Total.ICMSTot.vICMSUFRemet := DM.TBNfceNFC_TOTALICMSUFREMET.AsExtended;
    NFe.Total.ICMSTot.vFCP         := DM.TBNfceNFC_TOTALFCP.AsExtended;
    NFe.Total.ICMSTot.vBCST        := DM.TBNfceNFC_BASEICMSST.AsExtended;
    NFe.Total.ICMSTot.vST          := DM.TBNfceNFC_TOTALICMSST.AsExtended;
    NFe.Total.ICMSTot.vFCPST       := DM.TBNfceNFC_TOTALFCPST.AsExtended;
    //NFe.Total.ICMSTot.vFCPSTRet
    NFe.Total.ICMSTot.vProd        := DM.TBNfceNFC_TOTALPRODUTOS.AsExtended;
    NFe.Total.ICMSTot.vFrete       := DM.TBNfceNFC_VALORFRETE.AsExtended;
    NFe.Total.ICMSTot.vSeg         := 0;
    NFe.Total.ICMSTot.vDesc        := DM.TBNfceNFC_DESCVALOR.AsExtended;
    NFe.Total.ICMSTot.vII          := 0;
    NFe.Total.ICMSTot.vIPI         := 0; //nfce nao tem IPI. DM.TBNfceNFC_TOTALIPI.AsExtended;
    NFe.Total.ICMSTot.vIPIDevol    := 0;
    NFe.Total.ICMSTot.vPIS         := DM.TBNfceNFC_TOTALPIS.AsExtended;
    NFe.Total.ICMSTot.vCOFINS      := DM.TBNfceNFC_TOTALCOFINS.AsExtended;
    NFe.Total.ICMSTot.vOutro       := DM.TBNfceNFC_ACREVALOR.AsExtended;
    NFe.Total.ICMSTot.vNF          := DM.TBNfceNFC_VALORTOTAL.AsExtended;
    NFe.Total.ICMSTot.vTotTrib     := DM.TBNfceNFC_TOTALTRIBUTOS.AsExtended;
    //NFe.Total.ICMSTot.vICMSMono
    //NFe.Total.ICMSTot.vICMSMonoReten
    //NFe.Total.ICMSTot.vICMSMonoRet
    //NFe.Total.ICMSTot.qBCMono
    //NFe.Total.ICMSTot.qBCMonoReten
    //NFe.Total.ICMSTot.qBCMonoRet
    {$ENDREGION}

    {$REGION 'ISSQN'}
    NFe.Total.ISSQNtot.vServ   := 0;
    NFe.Total.ISSQNTot.vBC     := 0;
    NFe.Total.ISSQNTot.vISS    := 0;
    NFe.Total.ISSQNTot.vPIS    := 0;
    NFe.Total.ISSQNTot.vCOFINS := 0;
    //NFe.Total.ISSQNTot.dCompet
    //NFe.Total.ISSQNTot.vDeducao
    //NFe.Total.ISSQNTot.vOutro
    //NFe.Total.ISSQNTot.vDescIncond
    //NFe.Total.ISSQNTot.vDescCond
    //NFe.Total.ISSQNTot.vISSRet
    //NFe.Total.ISSQNTot.cRegTrib
    {$ENDREGION}

    NFe.Total.retTrib.vRetPIS   :=0;
    NFe.Total.retTrib.vRetCOFINS:=0;
    NFe.Total.retTrib.vRetCSLL  :=0;
    NFe.Total.retTrib.vBCIRRF   :=0;
    NFe.Total.retTrib.vIRRF     :=0;
    NFe.Total.retTrib.vBCRetPrev:=0;
    NFe.Total.retTrib.vRetPrev  :=0;

    {$REGION 'TOTAL - IS'}
    NFe.Total.ISTot.vIS:=DM.TBNfceNFC_TOTALIS.AsExtended;
    {$ENDREGION}

    {$REGION 'TOTAL IBSCBS'}
    NFe.Total.IBSCBSTot.vBCIBSCBS               :=DM.TBNfceNFC_BASEIBSCBS.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSUFTot.vDif     :=DM.TBNfceNFC_IBSUFDIFERIMENTO.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSUFTot.vDevTrib :=DM.TBNfceNFC_IBSUFDEVOLUCAO.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSUFTot.vIBSUF   :=DM.TBNfceNFC_IBSUFVALOR.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSMunTot.vDif    :=DM.TBNfceNFC_IBSMUNDIFERIMENTO.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSMunTot.vDevTrib:=DM.TBNfceNFC_IBSMUNDEVOLUCAO.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.gIBSMunTot.vIBSMun :=DM.TBNfceNFC_IBSMUNVALOR.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.vIBS               :=DM.TBNfceNFC_IBSVALOR.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.vCredPres          :=DM.TBNfceNFC_IBSCREDPRES.AsExtended;
    NFe.Total.IBSCBSTot.gIBS.vCredPresCondSus   :=DM.TBNfceNFC_IBSCREDPRESSUS.AsExtended;

    NFe.Total.IBSCBSTot.gCBS.vDif               :=DM.TBNfceNFC_CBSDIFERIMENTO.AsExtended;
    NFe.Total.IBSCBSTot.gCBS.vDevTrib           :=DM.TBNfceNFC_CBSDEVOLUCAO.AsExtended;
    NFe.Total.IBSCBSTot.gCBS.vCBS               :=DM.TBNfceNFC_CBSVALOR.AsExtended;
    NFe.Total.IBSCBSTot.gCBS.vCredPres          :=DM.TBNfceNFC_CBSCREDPRES.AsExtended;
    NFe.Total.IBSCBSTot.gCBS.vCredPresCondSus   :=DM.TBNfceNFC_CBSCREDPRESSUS.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vIBSMono          :=DM.TBNfceNFC_IBSMONO.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vCBSMono          :=DM.TBNfceNFC_CBSMONO.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vIBSMonoReten     :=DM.TBNfceNFC_IBSMONORETENCAO.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vCBSMonoReten     :=DM.TBNfceNFC_CBSMONORETENCAO.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vIBSMonoRet       :=DM.TBNfceNFC_IBSMONORETIDO.AsExtended;
    NFe.Total.IBSCBSTot.gMono.vCBSMonoRet       :=DM.TBNfceNFC_CBSMONORETIDO.AsExtended;

    NFe.Total.IBSCBSTot.gEstornoCred.vIBSEstCred:=0;
    NFe.Total.IBSCBSTot.gEstornoCred.vCBSEstCred:=0;
    {$ENDREGION}

    NFe.Total.vNFTot:=DM.TBNfceNFC_VALORTOTALRTC.AsExtended;

    {$ENDREGION}

//    0 - EMITENTE
//    1 - DEST/REM
//    2 - TERCEIROS
//    9 - SEM FRETE
    NFe.Transp.modFrete := mfSemFrete; // NFC-e não pode ter FRETE

    //NFe.Cobr

    {$REGION 'Pag - Dados do pagamento'}
    DM.TBNfcePagamentos.DisableControls;
    DM.TBNfcePagamentos.First;
    while not DM.TBNfcePagamentos.Eof do
    begin
      if DM.TBNfcePagamentosNCP_VALOR.Value > 0 then
      begin
        with NFe.Pag.New do
        begin
          //indPag:=ipVista;
          tPag:=StrToFormaPagamento(OK,Copy(DM.TBNfcePagamentosCPG_MEIOPAGAMENTO.Value,1,2)); // fpDinheiro;
          //xPag:=DM.TBNfcePagamentosCPG_DESCRICAO.Value; nao permitida no cupom.
          vPag:=DM.TBNfcePagamentosNCP_VALOR.AsExtended;
          tpIntegra:=StrTotpIntegra(OK,Copy(DM.TBNfcePagamentosCPG_TIPOINTEGRACAO.Value,1,1)); // tiPagNaoIntegrado
          //CNPJ
          //tBand
          //cAut
          //dPag
          //CNPJPag
          //UFPag
          //CNPJReceb
          //idTermPag
        end;
      end;
      DM.TBNfcePagamentos.Next;
    end;
    DM.TBNfcePagamentos.EnableControls;
    NFe.Pag.vTroco:=DM.TBNfceNFC_VALORTROCO.AsExtended;
    {$ENDREGION}

    //NFe.infIntermed
    //NFe.InfAdic
    //NFe.exporta
    //NFe.compra
    //NFe.cana
    //NFe.infNFeSupl
    //NFe.signature
    //NFe.procNFe

    {$REGION 'infRespTec - Responsavel Tecnico'}
    NFe.infRespTec.CNPJ:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
    NFe.infRespTec.xContato:='ROGERIO PETT';
    NFe.infRespTec.email:=DM.TBEmpresaEMP_NOSSOEMAIL.Value;
    NFe.infRespTec.fone:=LimparFormatacao(DM.TBEmpresaEMP_NOSSOFONE1.Value);
    //NFe.infRespTec.idCSRT
    //NFe.infRespTec.hashCSRT
    {$ENDREGION}

    //NFe.agropecuario

    // Informações do QR Code
    //NFe.infNFeSupl.qrCode:='...'; // Aqui deve ser gerado conforme regras da NFC-e
  end;
end;

procedure TFormNfcePagamento.AtualizarTotalNaCondicao;
var Condicao: Integer;
begin
  if not DM.TBNfcePagamentos.IsEmpty then
  begin
    Condicao:=DM.TBNfcePagamentosNCP_CODIGO.Value;
    DM.TBNfcePagamentos.Close;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEPAGAMENTOS set NCP_VALOR = iif(NCP_CODIGO=:condicao, :total, 0) where NCP_NFCE=:nfce');
    DM.QYAux.ParamByName('nfce').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ParamByName('condicao').AsInteger:=Condicao;
    DM.QYAux.ParamByName('total').AsExtended:=DM.TBNfceNFC_VALORTOTAL.AsExtended; //DM.TBNfceNFC_TOTALPRODUTOS.AsExtended;
    DM.QYAux.ExecSQL;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_VALORRECEBIDO.Value:=DM.TBNfceNFC_VALORTOTAL.Value;
    DM.TBNfceNFC_VALORTROCO.Value:=0;
    DM.TBNfce.Post;

    DM.TBNfcePagamentos.Open;
    DM.TBNfcePagamentos.Locate('NCP_CODIGO',Condicao,[]);
  end;
end;

function TFormNfcePagamento.EntrarEmContingencia: Boolean;
begin
  if DM.TBParametrosPAR_NFCETIPOEMISSAO.Value='1 - NORMAL' then
  begin
    DM.TBParametros.Edit;
    DM.TBParametrosPAR_NFCETIPOEMISSAO.Value:='9 - CONTINGENCIA OFF-LINE DA NFC-E';
    DM.TBParametrosPAR_NFCECONTINGENCIADATA.Value:=DM.ServerDate;
    DM.TBParametrosPAR_NFCECONTINGENCIAHORA.Value:=DM.ServerTime;
    DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value:='EMISSAO EM CONTINGENCIA OFFLINE';
    DM.TBParametros.Post;

    DM.LogNfce(DM.TBNfceNFC_CODIGO.Value,'ENTRADA EM CONTINGENCIA','ENTRADA EM CONTINGENCIA '+DateToStr(DM.ServerDate)+' '+TimeToStr(DM.ServerTime)+'.');
    FormNfceCaixa.AtualizarTelaStatusNfce;

    EmitirOffline(True); //emite offline duplicando a nfce.

    Result:=True;
  end else
  Result:=False;
end;

procedure TFormNfcePagamento.EliminarCondicoesPagamentoNaoUtilizadas(CodigoNFCe: Integer);
begin
  DM.TBNfcePagamentos.Close;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('delete from NFCEPAGAMENTOS where NCP_VALOR=0 and NCP_NFCE=:nfce');
  DM.QYAux.ParamByName('nfce').AsInteger:=CodigoNFCe;
  DM.QYAux.ExecSQL;
  DM.TBNfcePagamentos.Open;
end;

procedure TFormNfcePagamento.EmitirOffline(Duplicar: Boolean);
var A, M, D: Word;
  Pasta: String;
begin
  if Duplicar then
  begin
    DuplicarNfce;
  end;

  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';

  if DM.TBParametrosPAR_REFORMATRIBUTARIA.Value='S' then
  AlimentarNFCeRTC else
  AlimentarNFCe;

  DM.ACBrNFe1.NotasFiscais.Assinar;
  DM.ACBrNFe1.NotasFiscais.GerarNFe;

  DM.TBNfce.Edit;
  //DM.TBNfceNFC_CHAVEACESSO.Value:=Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,4,100);
  DM.TBNfceNFC_CONTINGENCIA.Value:='S';
  DM.TBNfce.Post;

  DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis:=teOffline;
  DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dhCont:=Now;
  DM.ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.xJust:=DM.TBParametrosPAR_NFCECONTINGENCIAJUST.Value;
  DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-NFCe.xml');

  FormNfceFuncoes.RealizarBaixaEstoque;
  FormNfceFuncoes.RealizarContasReceber;

  if MessageDlg('Imprimir DANFCE?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Application.CreateForm(TFormNfceFast, FormNfceFast);
    FormNfceFast.GerarDANFCE(DM.TBNfceNFC_CODIGO.Value,'Via consumidor',True,False,'');
    FormNfceFast.GerarDANFCE(DM.TBNfceNFC_CODIGO.Value,'Via estabelecimento',True,False,'');
    FormNfceFast.Free;
    FormNfceFast:=nil;
  end;

  //seleciona registro nao existente pra deixar a tabela em aberto e vazia.
  DM.TBNfce.Close;
  DM.TBNfce.ParamByName('codigo').AsInteger:=0;
  DM.TBNfce.Open;

  DM.TBNfceItens.Close;
  DM.TBNfceItens.Open;
  DM.TBNfcePagamentos.Close;
  DM.TBNfcePagamentos.Open;

  FormNfceCaixa.CaixaLivre;
  Close;
end;

procedure TFormNfcePagamento.FinalizarVenda1Click(Sender: TObject);
begin
  FinalizarVenda;
end;

procedure TFormNfcePagamento.FinalizarVenda;
var D,M,A: Word;
  Pasta, Msg: String;
  OK, RetEnvio: Boolean;
begin
  {$REGION 'Checagens iniciais.'}
  DecodeDate(DM.TBNfceNFC_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIONFCE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  if not System.SysUtils.DirectoryExists(Pasta) then
  AbortIf(not ForceDirectories(Pasta),'Não foi possível criar subpastas para gravação do arquivo.'+#13#10+#13#10+Pasta);
  {$ENDREGION}

  if DM.TBParametrosPAR_REFORMATRIBUTARIA.Value='S' then
  AlimentarNFCeRTC else
  AlimentarNFCe;

  DM.ACBrNFe1.NotasFiscais.Assinar;
  DM.ACBrNFe1.NotasFiscais.GerarNFe;
  DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-NFCe.xml'); //xml sem protocolo autorizacao.

//  OK:=DM.ACBrNFe1.NotasFiscais.ValidarRegrasdeNegocios(Msg);
//  AbortIf(not OK,Msg);

  //DM.ACBrNFe1.NotasFiscais.Validar;
//  AbortIf(DM.ACBrNFe1.NotasFiscais.Items[0].Alertas <> '','Alertas: '+DM.ACBrNFe1.NotasFiscais.Items[0].Alertas);

  if DM.EmissaoOnline then
  begin
    {$REGION 'Processa a emissao em modo normal.'}
    //DM.ACBrNFe1.NotasFiscais.GerarNFe;
    try
      RetEnvio:=DM.ACBrNFe1.Enviar(1,False,True);
      //DM.ACBrNFe1.Tag:=1; //teste.
      //if DM.ACBrNFe1.Tag=0 then
      if DM.ACBrNFe1.CstatConfirmada(DM.ACBrNFe1.WebServices.Enviar.cStat) then
      begin
        {$REGION 'Marca NFCe como finalizada.'}
        DM.TBNfce.Edit;
        DM.TBNfceNFC_PROTOCOLO.Value:=DM.ACBrNFe1.WebServices.Enviar.Protocolo;
        DM.TBNfceNFC_PROTOCOLODH.Value:=DateTimeToStr(DM.ACBrNFe1.WebServices.Enviar.dhRecbto);
        //DM.TBNfceNFC_CHAVEACESSO.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chNFe;
        DM.TBNfceNFC_QRCODE.Value:=DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFeSupl.qrCode;
        DM.TBNfceNFC_STATUS.Value:='F';
        DM.TBNfce.Post;
        {$ENDREGION}

        DM.ACBrNFe1.NotasFiscais.Items[0].GravarXML(Pasta+DM.TBNfceNFC_CHAVEACESSO.Value+'-procNFCe.xml');

        DM.LogNfce(DM.TBNfceNFC_CODIGO.Value,'Envio NFCe',
          'XML: '+DM.ACBrNfe1.WebServices.Enviar.RetornoWS+#13#10+
          'tbAmp: '+TpAmbToStr(DM.ACBrNFe1.WebServices.Enviar.TpAmb)+#13#10+
          'verAplic: '+DM.ACBrNFe1.WebServices.Enviar.verAplic+#13#10+
          'cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+
          'cUF: '+DM.ACBrNFe1.WebServices.Enviar.cUF.ToString+#13#10+
          'xMotivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+
          'Protocolo: '+DM.ACBrNFe1.WebServices.Enviar.Protocolo
        );

        Application.CreateForm(TFormNfceFuncoes, FormNfceFuncoes);
        FormNfceFuncoes.RealizarBaixaEstoque;
        FormNfceFuncoes.RealizarContasReceber;
        FormNfceFuncoes.SincronizarPedidoDeVenda; //Atualiza o pedido de venda (se tiver) para deixar igual a NFe.
        FormNfceFuncoes.Free;
        FormNfceFuncoes:=nil;

        {$REGION 'Mostra aviso ao usuario e pergunta se quer imprimir.'}
        Application.CreateForm(TFormNfceAvisos, FormNfceAvisos);
        FormNfceAvisos.TempoMax:=DM.TBParametrosPAR_NFCETEMPOMSG.Value;
        FormNfceAvisos.Imprimir:=DM.TBParametrosPAR_NFCEIMPRIMIR.Value='S';
        FormNfceAvisos.Label1.Caption:='Nota autorizada com sucesso!';
        FormNfceAvisos.Label2.Caption:='Protocolo: '+DM.ACBrNFe1.WebServices.Enviar.Protocolo;
        FormNfceAvisos.ShowModal;
        if FormNfceAvisos.Imprimir then
        begin
          Application.CreateForm(TFormNfceFast, FormNfceFast);
          if DM.TBParametrosPAR_NFCETIPODANFCE.Value='ACBRPOSPRINTER' then
          FormNfceFast.GerarDANFCEPos(DM.TBNfceNFC_CODIGO.Value,'Via consumidor') else
          FormNfceFast.GerarDANFCE(DM.TBNfceNFC_CODIGO.Value,'Via consumidor',True,False);
          FormNfceFast.Free;
          FormNfceFast:=nil;
        end;
        FormNfceAvisos.Free;
        FormNfceAvisos:=nil;
        {$ENDREGION}

        EliminarCondicoesPagamentoNaoUtilizadas(DM.TBNfceNFC_CODIGO.Value);
        FormNfceCaixa.CaixaLivre;
        Close;
      end else
      begin

        MessageDlg(DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+'Código cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+'Motivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo,mtError,[mbOk],0);
        DM.LogNFce(DM.TBNfceNFC_CODIGO.Value,'Erro transmissao NFCe','Código cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+'Motivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo);

        if DM.ACBrNFe1.Tag <> 0 then
        begin
          //sinaliza como pendente a nota atual que foi tentado enviar em modo normal e deu algum erro.
          DM.TBNfce.Edit;
          DM.TBNfceNFC_CONTINGENCIA.Value:='P';
          //DM.TBNfceNFC_CHAVEACESSO.Value:=Copy(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID,4,Length(DM.ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID));
          DM.TBNfce.Post;

          EntrarEmContingencia;
        end;
      end;

    except
      if DM.ACBrNFe1.WebServices.Enviar.cStat=204 then
      begin
        MessageDlg('Este cupom está em duplicidade e agora está pendente de consulta de protocolo de autorização.'+#13#10+
          'Acesse a tela de contingências para consultar e caso necessário gere um novo cupom.',mtError,[mbOk],0);
        DM.TBNfce.Edit;
        DM.TBNfceNFC_CONTINGENCIA.Value:='P';
        DM.TBNfce.Post;
        DM.LogNFce(DM.TBNfceNFC_CODIGO.Value,'Erro transmissao NFCe','Código cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+'Motivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+'Log if do except.');
        FormNfceCaixa.CaixaLivre;
        Close;
      end else
      begin
        MessageDlg(DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+'Código cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString,mtError,[mbOk],0);
        DM.LogNFce(DM.TBNfceNFC_CODIGO.Value,'Erro transmissao NFCe','Código cStat: '+DM.ACBrNFe1.WebServices.Enviar.cStat.ToString+#13#10+'Motivo: '+DM.ACBrNFe1.WebServices.Enviar.xMotivo+#13#10+'Log else do except.');
      end;
    end;
    {$ENDREGION}
  end else
  begin
    EmitirOffline(False);
  end;
end;

procedure TFormNfcePagamento.Acrescimo1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceAlterarAcrescimo, FormNfceAlterarAcrescimo);
  DescontoEmValor:=True;
  FormNfceAlterarAcrescimo.Edit1.Text:=DM.TBNfceNFC_ACREVALOR.AsString;
  FormNfceAlterarAcrescimo.ShowModal;
  FormNfceAlterarAcrescimo.Free;
  FormNfceAlterarAcrescimo:=nil;
  AtualizarTotalNaCondicao;
end;

procedure TFormNfcePagamento.ContinuarAVenda1Click(Sender: TObject);
begin
  if DM.TBNfceNFC_ACREVALOR.Value>0 then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEITENS set NCI_VALORACESSORIAS=0 where NCI_NOTA=:nota');
    DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_ACREPORC.Value:=0;
    DM.TBNfceNFC_ACREVALOR.Value:=0;
    DM.TBNfce.Post;
  end;

  if DM.TBNfceNFC_DESCVALOR.Value>0 then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update NFCEITENS set NCI_DESCPORC=0, NCI_DESCVALOR=0 where NCI_NOTA=:nota');
    DM.QYAux.ParamByName('nota').AsInteger:=DM.TBNfceNFC_CODIGO.Value;
    DM.QYAux.ExecSQL;

    DM.TBNfce.Edit;
    DM.TBNfceNFC_DESCPORC.Value:=0;
    DM.TBNfceNFC_DESCVALOR.Value:=0;
    DM.TBNfce.Post;
  end;
  Close;
end;

procedure TFormNfcePagamento.DBGrid1DblClick(Sender: TObject);
begin
  AtualizarTotalNaCondicao;
end;

procedure TFormNfcePagamento.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if Key=#13 then
  begin
    Key:=#0;
    if DBGrid1.SelectedIndex=0 then
    AtualizarTotalNaCondicao;

    if DM.TBNfcePagamentos.State in [dsEdit] then
    DM.TBNfcePagamentos.Post;
  end;
end;

procedure TFormNfcePagamento.Desconto1Click(Sender: TObject);
begin
  Application.CreateForm(TFormNfceAlterarDesconto, FormNfceAlterarDesconto);
  DescontoEmValor:=True;
  FormNfceAlterarDesconto.Edit1.Text:=DM.TBNfceNFC_DESCVALOR.AsString;
  FormNfceAlterarDesconto.ShowModal;
  FormNfceAlterarDesconto.Free;
  FormNfceAlterarDesconto:=nil;
  AtualizarTotalNaCondicao;
end;

procedure TFormNfcePagamento.FormCreate(Sender: TObject);
begin
  NaoPodeInserirPagamentos:=False;
  Falta:=0;
  AtualizarTotais:=False;

  DM.QYAux4.Close;
  DM.QYAux4.SQL.Clear;
  DM.QYAux4.SQL.Add('select * from CONDICOES where CPG_CUPOM=''S'' order by CPG_DESCRICAO');
  DM.QYAux4.Open;
  DM.QYAux4.First;
  while not DM.QYAux4.Eof do
  begin
    if not DM.TBNfcePagamentos.Locate('NCP_CONDICAO',DM.QYAux4.FieldByName('CPG_CODIGO').AsInteger,[]) then
    begin
      DM.TBNfcePagamentos.Insert;
      DM.TBNfcePagamentosNCP_CONDICAO.Value:=DM.QYAux4.FieldByName('CPG_CODIGO').AsInteger;
      DM.TBNfcePagamentosNCP_NFCE.Value:=DM.TBNfceNFC_CODIGO.Value;
      DM.TBNfcePagamentosNCP_VALOR.Value:=0;

      //if DM.QYAux4.FieldByName('CPG_MEIOPAGAMENTO').AsString='01 - DINHEIRO' then
      if DM.QYAux4.FieldByName('CPG_PADRAO').AsString='S' then
      DM.TBNfcePagamentosNCP_VALOR.Value:=DM.TBNfceNFC_VALORTOTAL.AsExtended;

      DM.TBNfcePagamentosCPG_DESCRICAO.Value:=DM.QYAux4.FieldByName('CPG_DESCRICAO').AsString;
      DM.TBNfcePagamentosCPG_MEIOPAGAMENTO.Value:=DM.QYAux4.FieldByName('CPG_MEIOPAGAMENTO').AsString;
      DM.TBNfcePagamentosCPG_TIPOINTEGRACAO.Value:=DM.QYAux4.FieldByName('CPG_TIPOINTEGRACAO').AsString;
      DM.TBNfcePagamentosCPG_TOTALPARCELAS.Value:=DM.QYAux4.FieldByName('CPG_TOTALPARCELAS').AsInteger;
      DM.TBNfcePagamentos.Post;
    end else
    begin
      DM.TBNfcePagamentos.Edit;
      DM.TBNfcePagamentosNCP_VALOR.Value:=0;
      if DM.QYAux4.FieldByName('CPG_PADRAO').AsString='S' then
//      if DM.QYAux4.FieldByName('CPG_MEIOPAGAMENTO').AsString='01 - DINHEIRO' then
      DM.TBNfcePagamentosNCP_VALOR.Value:=DM.TBNfceNFC_VALORTOTAL.AsExtended;
      DM.TBNfcePagamentos.Post;
    end;
    DM.QYAux4.Next;
  end;
  DM.QYAux4.Close;

  DM.TBNfcePagamentos.Close;
  DM.TBNfcePagamentos.Open; //garante a ordenacao por descricao. apos os inserts nao fica em ordem.

  DM.AtualizarTotalRecebidoNfce:=True;
  NaoPodeInserirPagamentos:=True;
end;

procedure TFormNfcePagamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormNfcePagamento.TBCondicoesAfterInsert(DataSet: TDataSet);
begin
  //não deixa inserir mais registros depois de carregado a lista.
  if AtualizarTotais then
  TBCondicoes.Cancel;
end;

procedure TFormNfcePagamento.TBCondicoesAfterPost(DataSet: TDataSet);
var Codigo: Integer;
  Total: Extended;
begin
  if AtualizarTotais then
  begin
    Codigo:=TBCondicoesCPG_CODIGO.Value;
    TBCondicoes.DisableControls;
    TBCondicoes.First;
    Total:=0;
    while not TBCondicoes.Eof do
    begin
      Total:=Total+TBCondicoesVALOR.AsExtended;
      TBCondicoes.Next;
    end;
    TBCondicoes.EnableControls;
    TBCondicoes.Locate('CPG_CODIGO',Codigo,[]);
    DM.TBNfce.Edit;
    DM.TBNfceNFC_VALORRECEBIDO.Value:=Total;
    DM.TBNfce.Post;
  end;
end;

procedure TFormNfcePagamento.TBCondicoesBeforePost(DataSet: TDataSet);
begin
  if TBCondicoesCPG_MEIOPAGAMENTO.Value<>'01 - DINHEIRO' then
  begin
    if TBCondicoesVALOR.Value > DM.TBNfceNFC_VALORTOTAL.Value then
    begin
      TBCondicoesVALOR.Value:=0;
      MessageDlg('O valor nesta forma de pagamento não pode ser maior que o total da venda.',mtError,[mbOk],0);
    end;
  end;
end;

procedure TFormNfcePagamento.DBEdit2Click(Sender: TObject);
begin
  PngBitBtn4.Click;
end;

procedure TFormNfcePagamento.DBEdit3Click(Sender: TObject);
begin
  PngBitBtn4.Click;
end;

procedure TFormNfcePagamento.DBEdit5Click(Sender: TObject);
begin
  PngBitBtn5.Click;
end;

procedure TFormNfcePagamento.DBEdit6Click(Sender: TObject);
begin
  PngBitBtn5.Click;
end;

initialization
  RegisterClass(TFormNfcePagamento);

finalization
  UnRegisterClass(TFormNfcePagamento);

end.
