unit ComprasImportarXML;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ImgList, PngImageList, Buttons, PngSpeedButton,
  DBSBtn, ExtCtrls, ACBrNFe, Grids, DBGrids, DB, DBClient, pcnConversao,
  System.ImageList, ACBrBase, ACBrDFe, System.UITypes;

type
  TFormComprasImportarXML = class(TForm)
    ACBrNFe1: TACBrNFe;
    Panel2: TPanel;
    Bevel4: TBevel;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    SpeedButton6: TPngSpeedButton;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    PngSpeedButton1: TPngSpeedButton;
    PngSpeedButton2: TPngSpeedButton;
    PngImageList1: TPngImageList;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    CadastroDeProdutos1: TMenuItem;
    CadastroDeFornecedores1: TMenuItem;
    AbrirXML1: TMenuItem;
    N1: TMenuItem;
    Fechar1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    FileOpenDialog1: TFileOpenDialog;
    N2: TMenuItem;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    TBNF: TClientDataSet;
    DSNF: TDataSource;
    TBNFItens: TClientDataSet;
    DSNFItens: TDataSource;
    TBNFItensNFI_CODIGO: TStringField;
    TBNFItensNFI_DESCRICAO: TStringField;
    TBNFItensNFI_QUANTIDADE: TFloatField;
    TBNFItensNFI_VALORUNIT: TFloatField;
    TBNFItensNFI_VALORTOTAL: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    TBNFItensNFI_UNIDADE: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    TBNFItensNFI_CODIGOLOCAL: TIntegerField;
    Label17: TLabel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    CodigoDoProdutoNosFornecedores1: TMenuItem;
    Label18: TLabel;
    TBNFItensNFI_TEMNOPEDIDO: TStringField;
    AtualizarPedidoConformeXML1: TMenuItem;
    InformarOProdutoLocal1: TMenuItem;
    N3: TMenuItem;
    TBNFItensNFI_CFOP: TIntegerField;
    TBNFItensNFI_CODIGOBARRAS: TStringField;
    TBNFItensNFI_VALORACESSORIAS: TCurrencyField;
    TBNFItensNFI_VALORFRETE: TCurrencyField;
    TBNFItensNFI_DESCVALOR: TCurrencyField;
    TBNFItensNFI_VALORSEGURO: TCurrencyField;
    TBNFItensNFI_ALIQCOFINS: TFloatField;
    TBNFItensNFI_ALIQCOFINSST: TFloatField;
    TBNFItensNFI_ALIQICMS: TFloatField;
    TBNFItensNFI_ALIQICMSADICST: TFloatField;
    TBNFItensNFI_ALIQICMSRED: TFloatField;
    TBNFItensNFI_ALIQICMSST: TFloatField;
    TBNFItensNFI_ALIQIPI: TFloatField;
    TBNFItensNFI_ALIQISS: TFloatField;
    TBNFItensNFI_ALIQPISST: TFloatField;
    TBNFItensNFI_BASECOFINS: TCurrencyField;
    TBNFItensNFI_BASECOFINSST: TCurrencyField;
    TBNFItensNFI_BASEICMS: TCurrencyField;
    TBNFItensNFI_BASEICMSRED: TCurrencyField;
    TBNFItensNFI_BASEICMSST: TCurrencyField;
    TBNFItensNFI_BASEIPI: TCurrencyField;
    TBNFItensNFI_BASEISS: TCurrencyField;
    TBNFItensNFI_BASEPIS: TCurrencyField;
    TBNFItensNFI_BASEPISST: TCurrencyField;
    TBNFItensNFI_COMPLEMENTO: TStringField;
    TBNFItensNFI_COMPOEBASEICMS: TStringField;
    TBNFItensNFI_CSTCOFINS: TIntegerField;
    TBNFItensNFI_CSTICMS: TIntegerField;
    TBNFItensNFI_CSTIPI: TIntegerField;
    TBNFItensNFI_CSTPIS: TIntegerField;
    TBNFItensNFI_DESCPORC: TFloatField;
    TBNFItensNFI_FCI: TStringField;
    TBNFItensNFI_MODICMS: TStringField;
    TBNFItensNFI_ORIGEM: TStringField;
    TBNFItensNFI_PESO: TFloatField;
    TBNFItensNFI_PESOTOTAL: TFloatField;
    TBNFItensNFI_TIPO: TStringField;
    TBNFItensNFI_VALORCOFINS: TCurrencyField;
    TBNFItensNFI_VALORCOFINSST: TCurrencyField;
    TBNFItensNFI_VALORICMS: TCurrencyField;
    TBNFItensNFI_VALORICMSST: TCurrencyField;
    TBNFItensNFI_VALORIPI: TCurrencyField;
    TBNFItensNFI_VALORISS: TCurrencyField;
    TBNFItensNFI_VALORPIS: TCurrencyField;
    TBNFItensNFI_VALORPISST: TCurrencyField;
    TBNFItensNFI_VALORTOTALBRUTO: TCurrencyField;
    TBNFItensNFI_VALORTRIBUTOS: TCurrencyField;
    TBNFItensNFI_ALIQPIS: TFloatField;
    TBNFItensNFI_MODICMSST: TStringField;
    TBNFItensNFI_INFOADICIONAL: TMemoField;
    TBNFItensNFI_CEST: TStringField;
    TBNFItensNFI_CSTISS: TStringField;
    TBNFItensNFI_TIPOISS: TIntegerField;
    TBNFItensNFI_CLASSFISCAL: TStringField;
    TBNFItensNFI_EXCECAO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure AbrirXML1Click(Sender: TObject);
    procedure CadastroDeFornecedores1Click(Sender: TObject);
    procedure CadastroDeProdutos1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CodigoDoProdutoNosFornecedores1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure AtualizarPedidoConformeXML1Click(Sender: TObject);
    procedure InformarOProdutoLocal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasImportarXML: TFormComprasImportarXML;

implementation
uses DataMod, Fornecedores, Produtos, Funcoes1, FuncoesFirenet, ProdutosCodigos,
  ProdutosLoc, pcnConversaoNFe;

{$R *.dfm}

procedure TFormComprasImportarXML.AbrirXML1Click(Sender: TObject);
var I: Integer;
  S: String;
begin
  if FileOpenDialog1.Execute then
  begin
    TBNFItens.EmptyDataSet;
    Label2.Caption:=FileOpenDialog1.FileName;
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(FileOpenDialog1.FileName);
    Label4.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label6.Caption:=S;
    Label8.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
    Label10.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    Label12.Caption:=S;
    Label14.Caption:=ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.Email;

    AbortIf(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF<>LimparFormatacao(DM.TBComprasCOM_CNPJ.Value),
      'O CNPJ do emitente ('+Label6.Caption+') constante no XML é diferente do CNPJ do fornecedor do pedido de compra ('+DM.TBComprasCOM_CNPJ.Value+').'
    );

    AbortIf(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF<>LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
      'O CNPJ do destinatário ('+Label12.Caption+') constante no XML é diferente do CNPJ da '+DM.TBEmpresaEMP_NOME.Value+' ('+DM.TBEmpresaEMP_CNPJ.Value+').'
    );

    for I:=0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count-1 do
    begin
      TBNFItens.Insert;
      TBNFItensNFI_ALIQCOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.pCOFINS;
      TBNFItensNFI_ALIQCOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.pCOFINS;
      TBNFItensNFI_ALIQICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pICMS;
      TBNFItensNFI_ALIQICMSADICST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pMVAST;
      TBNFItensNFI_ALIQICMSRED.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pRedBC;
      TBNFItensNFI_ALIQICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.pICMSST;
      TBNFItensNFI_ALIQIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.pIPI;
      TBNFItensNFI_ALIQISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vAliq;
      TBNFItensNFI_ALIQPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.pPIS;
      TBNFItensNFI_ALIQPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.pPis;
      TBNFItensNFI_BASECOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.vBC;
      TBNFItensNFI_BASECOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.vBC;
      TBNFItensNFI_BASEICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBC;
      TBNFItensNFI_BASEICMSRED.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBCSTRet; //é esse mesmo?.
      TBNFItensNFI_BASEICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vBCST;
      TBNFItensNFI_BASEIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.vBC;
      TBNFItensNFI_BASEISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vBC;
      TBNFItensNFI_BASEPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.vBC;
      TBNFItensNFI_BASEPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.vBc;
      TBNFItensNFI_CFOP.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cfop);
      TBNFItensNFI_CLASSFISCAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.ncm;
      TBNFItensNFI_CODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cProd;
      TBNFItensNFI_CODIGOBARRAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.cEan;
      TBNFItensNFI_CODIGOLOCAL.Value:=0; //tenta localizar este código na tabela local... abaixo.
      TBNFItensNFI_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].infAdProd; //associado aqui e em infoadicional (blob).
      case StrToInt(IndTotToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.IndTot)) of //se não soma no total da NFe, também nao compõe base. certo?
        0: TBNFItensNFI_COMPOEBASEICMS.Value:='N';
        1: TBNFItensNFI_COMPOEBASEICMS.Value:='S';
      end;
      if CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST)<>'' then
      TBNFItensNFI_CSTCOFINS.Value:=StrToInt(CSTCOFINSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.CST));
      if CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST)<>'' then
      TBNFItensNFI_CSTICMS.Value:=StrToInt(CSTICMSToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.CST));
      if CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST)<>'' then
      TBNFItensNFI_CSTIPI.Value:=StrToInt(CSTIPIToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.CST));
      if ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib)<>'' then
      TBNFItensNFI_CSTISS.Value:=ISSQNcSitTribToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.cSitTrib);
      if CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST)<>'' then
      TBNFItensNFI_CSTPIS.Value:=StrToInt(CSTPISToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.CST));
      //TBNFItensNFI_DESCPORC.Value:=//calcular.
      TBNFItensNFI_DESCRICAO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.xProd;
      TBNFItensNFI_DESCVALOR.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vDesc;
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI<>'' then     
      TBNFItensNFI_EXCECAO.Value:=StrToInt(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.EXTIPI);
      TBNFItensNFI_FCI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.nFCI;
      TBNFItensNFI_INFOADICIONAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].infAdProd;
      if modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)<>'' then
      begin
        case StrToInt(modBCToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBC)) of
          0: TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';
          1: TBNFItensNFI_MODICMS.Value:='1 - PAUTA (VALOR)';
          2: TBNFItensNFI_MODICMS.Value:='2 - PRECO TABELADO MAXIMO (VALOR)';
          3: TBNFItensNFI_MODICMS.Value:='3 - VALOR DA OPERACAO';
        end;
      end else
      TBNFItensNFI_MODICMS.Value:='0 - MARGEM VALOR AGREGADO (%)';

      TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
      if modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST) <> '' then
      begin
        case StrToInt(modBCSTToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.modBCST)) of
          0: TBNFItensNFI_MODICMSST.Value:='0 - PRECO TABELADO OU MAXIMO SUGERIDO';
          1: TBNFItensNFI_MODICMSST.Value:='1 - LISTA NEGATIVA (VALOR)';
          2: TBNFItensNFI_MODICMSST.Value:='2 - LISTA POSITIVA (VALOR)';
          3: TBNFItensNFI_MODICMSST.Value:='3 - LISTA NEUTRA (VALOR)';
          4: TBNFItensNFI_MODICMSST.Value:='4 - MARGEM VALOR AGREGADO (%)';
          5: TBNFItensNFI_MODICMSST.Value:='5 - PAUTA (VALOR)';
        end;
      end;

      case StrToInt(origToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.orig)) of
        0: TBNFItensNFI_ORIGEM.Value:='0 - NACIONAL';
        1: TBNFItensNFI_ORIGEM.Value:='1 - ESTRANGEIRA - IMPORTACAO DIRETA';
        2: TBNFItensNFI_ORIGEM.Value:='2 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO';
        3: TBNFItensNFI_ORIGEM.Value:='3 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 40% E INFERIOR OU IGUAL A 70%';
        4: TBNFItensNFI_ORIGEM.Value:='4 - NACIONAL - EM CONFORMIDADE COM PROCESSOS PRODUTIVOS BASICOS';
        5: TBNFItensNFI_ORIGEM.Value:='5 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO INFERIOR OU IGUAL A 40%';
        6: TBNFItensNFI_ORIGEM.Value:='6 - ESTRANGEIRA - IMPORTACAO DIRETA SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
        7: TBNFItensNFI_ORIGEM.Value:='7 - ESTRANGEIRA - ADQUIRIDA NO MERCADO INTERNO SEM SIMILAR NACIONAL CONSTANTE EM LISTA DA CAMEX E GAS NATURAL';
        8: TBNFItensNFI_ORIGEM.Value:='8 - NACIONAL - MERCADORIA OU BEM COM CONTEUDO DE IMPORTACAO SUPERIOR A 70%';
      end;
      //TBNFItensNFI_PESO.Value:= de onde?
      //TBNFItensNFI_PESOTOTAL.Value:= de onde?
      TBNFItensNFI_QUANTIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.qCom;
      TBNFItensNFI_TEMNOPEDIDO.Value:='N';
      TBNFItensNFI_TIPO.Value:='P'; //produto.
      TBNFItensNFI_UNIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.uCom;
      TBNFItensNFI_VALORACESSORIAS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vOutro;
      TBNFItensNFI_VALORCOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINS.vCOFINS;
      TBNFItensNFI_VALORCOFINSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.COFINSST.vCOFINS;
      TBNFItensNFI_VALORFRETE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vFrete;
      TBNFItensNFI_VALORICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vICMS;
      TBNFItensNFI_VALORICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ICMS.vICMSST;
      TBNFItensNFI_VALORIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.IPI.vIPI;
      TBNFItensNFI_VALORISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.ISSQN.vISSQN;
      TBNFItensNFI_VALORPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PIS.vPIS;
      TBNFItensNFI_VALORPISST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.PISST.vPIS;
      TBNFItensNFI_VALORSEGURO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vSeg;
      TBNFItensNFI_VALORTOTAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vProd;
      TBNFItensNFI_VALORTOTALBRUTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom * ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.qCom; //qtde * valor ?
      TBNFItensNFI_VALORTRIBUTOS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Imposto.vTotTrib;
      TBNFItensNFI_VALORUNIT.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[I].Prod.vUnCom;

      //tenta localizar algum código do produto.
      DM.QYAux.Close;
      DM.QYAux.SQL.Clear;
      DM.QYAux.SQL.Add('select * from PRODUTOSCODIGOS where PCO_FORNECEDOR=:fornecedor and PCO_CODIGOFORNECEDOR=:produto_fornecedor');
      DM.QYAux.ParamByName('fornecedor').AsInteger:=DM.TBComprasCOM_FORNECEDOR.Value;
      DM.QYAux.ParamByName('produto_fornecedor').AsString:=ACBrNFe1.NotasFiscais.Items[0].NFe.Det[i].Prod.cProd;
      DM.QYAux.Open;
      DM.QYAux.FetchAll;
      if DM.QYAux.RecordCount=1 then
      TBNFItensNFI_CODIGOLOCAL.Value:=DM.QYAux.FieldByName('PCO_PRODUTO').AsInteger;
      DM.QYAux.Close;
      //...

      //se achou um codigo local e encontrou no pedido, informa que item está contido no pedido.
      if TBNFItensNFI_CODIGOLOCAL.Value<>0 then
      if DM.TBComprasItens.Locate('COI_PRODUTO',TBNFItensNFI_CODIGOLOCAL.Value,[]) then
      TBNFItensNFI_TEMNOPEDIDO.Value:='S';

      TBNFItens.Post;
    end;
  end;
end;

procedure TFormComprasImportarXML.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormComprasImportarXML.AtualizarPedidoConformeXML1Click(Sender: TObject);
var LocalZero: Boolean;
  S: String;
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum dado disponível para atualizar.');

  if MessageDlg('Atualizar o pedido conforme o XML?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    LocalZero:=False;
    TBNFItens.First;
    while not TBNFItens.Eof do
    begin
      //existe um codigo local e tem no pedido, então apenas atualiza o item no pedido.
      if (TBNFItensNFI_CODIGOLOCAL.Value<>0) and (TBNFItensNFI_TEMNOPEDIDO.Value='S') then
      begin
        if DM.TBComprasItens.Locate('COI_PRODUTO',TBNFItensNFI_CODIGOLOCAL.Value,[]) then
        begin
          DM.TBProdutos.Close;
          DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
          DM.TBProdutos.Open;

          DM.TBComprasItens.Edit;
          {$REGION 'Atualiza campos'}
          DM.TBComprasItensCOI_ALIQCOFINS.Value:=TBNFItensNFI_ALIQCOFINS.Value;
          DM.TBComprasItensCOI_ALIQCOFINSST.Value:=TBNFItensNFI_ALIQCOFINSST.Value;
          DM.TBComprasItensCOI_ALIQICMS.Value:=TBNFItensNFI_ALIQICMS.Value;
          DM.TBComprasItensCOI_ALIQICMSADICST.Value:=TBNFItensNFI_ALIQICMSADICST.Value;
          DM.TBComprasItensCOI_ALIQICMSRED.Value:=TBNFItensNFI_ALIQICMSRED.Value;
          DM.TBComprasItensCOI_ALIQICMSST.Value:=TBNFItensNFI_ALIQICMSST.Value;
          DM.TBComprasItensCOI_ALIQIPI.Value:=TBNFItensNFI_ALIQIPI.Value;
          DM.TBComprasItensCOI_ALIQISS.Value:=TBNFItensNFI_ALIQISS.Value;
          DM.TBComprasItensCOI_ALIQPIS.Value:=TBNFItensNFI_ALIQPIS.Value;
          DM.TBComprasItensCOI_ALIQPISST.Value:=TBNFItensNFI_ALIQPISST.Value;
          DM.TBComprasItensCOI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
          DM.TBComprasItensCOI_BASECOFINS.Value:=TBNFItensNFI_BASECOFINS.Value;
          DM.TBComprasItensCOI_BASECOFINSST.Value:=TBNFItensNFI_BASECOFINSST.Value;
          DM.TBComprasItensCOI_BASEICMS.Value:=TBNFItensNFI_BASEICMS.Value;
          DM.TBComprasItensCOI_BASEICMSRED.Value:=TBNFItensNFI_BASEICMSRED.Value;
          DM.TBComprasItensCOI_BASEICMSST.Value:=TBNFItensNFI_BASEICMSST.Value;
          DM.TBComprasItensCOI_BASEIPI.Value:=TBNFItensNFI_BASEIPI.Value;
          DM.TBComprasItensCOI_BASEISS.Value:=TBNFItensNFI_BASEISS.Value;
          DM.TBComprasItensCOI_BASEPIS.Value:=TBNFItensNFI_BASEPIS.Value;
          DM.TBComprasItensCOI_BASEPISST.Value:=TBNFItensNFI_BASEPISST.Value;
          DM.TBComprasItensCOI_CFOP.Value:=TBNFItensNFI_CFOP.Value;
          DM.TBComprasItensCOI_CLASSFISCAL.Value:=TBNFItensNFI_CLASSFISCAL.Value;
          //DM.TBComprasItensCOI_CODIGO.Value:= //AUTOMATICO.
          DM.TBComprasItensCOI_CODIGOBARRAS.Value:=TBNFItensNFI_CODIGOBARRAS.Value;
          DM.TBComprasItensCOI_COMPLEMENTO.Value:='';
          DM.TBComprasItensCOI_COMPOEBASEICMS.Value:=TBNFItensNFI_COMPOEBASEICMS.Value;
          //DM.TBComprasItensCOI_COMPOEBASEICMSST.Value:= //??DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
          DM.TBComprasItensCOI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
          //DM.TBComprasItensCOI_COMPRA.Value:= //ASSOCIADO NO AFTER INSERT.
          DM.TBComprasItensCOI_CSTCOFINS.Value:=TBNFItensNFI_CSTCOFINS.Value;
          DM.TBComprasItensCOI_CSTICMS.Value:=TBNFItensNFI_CSTICMS.Value;
          DM.TBComprasItensCOI_CSTIPI.Value:=TBNFItensNFI_CSTIPI.Value;
          DM.TBComprasItensCOI_CSTPIS.Value:=TBNFItensNFI_CSTPIS.Value;
          DM.TBComprasItensCOI_DESCPORC.Value:=TBNFItensNFI_DESCPORC.Value;
          DM.TBComprasItensCOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
          DM.TBComprasItensCOI_DESCVALOR.Value:=TBNFItensNFI_DESCVALOR.Value;
          DM.TBComprasItensCOI_FCI.Value:=TBNFItensNFI_FCI.Value;
          DM.TBComprasItensCOI_INFOADICIONAL.Value:=TBNFItensNFI_INFOADICIONAL.Value;
          DM.TBComprasItensCOI_MODICMS.Value:=TBNFItensNFI_MODICMS.Value;
          DM.TBComprasItensCOI_MODICMSST.Value:=TBNFItensNFI_MODICMSST.Value;
          DM.TBComprasItensCOI_ORIGEM.Value:=TBNFItensNFI_ORIGEM.Value;
          DM.TBComprasItensCOI_PESO.Value:=TBNFItensNFI_PESO.Value;
          DM.TBComprasItensCOI_PESOTOTAL.Value:=TBNFItensNFI_PESOTOTAL.Value;
          //nao precisa na edição. DM.TBComprasItensCOI_PRODUTO.Value:=TBNFItensNFI_CODIGOLOCAL.Value;
          DM.TBComprasItensCOI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
          DM.TBComprasItensCOI_QUANTIDADE.Value:=TBNFItensNFI_QUANTIDADE.Value;
          DM.TBComprasItensCOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
          DM.TBComprasItensCOI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
          //nao atualiza mais unidade. 27/01/2020 DM.TBComprasItensCOI_UNIDADE.Value:=TBNFItensNFI_UNIDADE.Value;
          DM.TBComprasItensCOI_VALORACESSORIAS.Value:=TBNFItensNFI_VALORACESSORIAS.Value;
          DM.TBComprasItensCOI_VALORCOFINS.Value:=TBNFItensNFI_VALORCOFINS.Value;
          DM.TBComprasItensCOI_VALORCOFINSST.Value:=TBNFItensNFI_VALORCOFINSST.Value;
          DM.TBComprasItensCOI_VALORFRETE.Value:=TBNFItensNFI_VALORFRETE.Value;
          DM.TBComprasItensCOI_VALORICMS.Value:=TBNFItensNFI_VALORICMS.Value;
          DM.TBComprasItensCOI_VALORICMSST.Value:=TBNFItensNFI_VALORICMSST.Value;
          DM.TBComprasItensCOI_VALORIPI.Value:=TBNFItensNFI_VALORIPI.Value;
          DM.TBComprasItensCOI_VALORISS.Value:=TBNFItensNFI_VALORISS.Value;
          DM.TBComprasItensCOI_VALORPIS.Value:=TBNFItensNFI_VALORPIS.Value;
          DM.TBComprasItensCOI_VALORPISST.Value:=TBNFItensNFI_VALORPISST.Value;
          DM.TBComprasItensCOI_VALORSEGURO.Value:=TBNFItensNFI_VALORSEGURO.Value;
          DM.TBComprasItensCOI_VALORTOTAL.Value:=TBNFItensNFI_VALORTOTAL.Value;
          DM.TBComprasItensCOI_VALORTOTALBRUTO.Value:=TBNFItensNFI_VALORTOTAL.Value;
          DM.TBComprasItensCOI_VALORTRIBUTOS.Value:=TBNFItensNFI_VALORTRIBUTOS.Value;
          DM.TBComprasItensCOI_VALORUNIT.Value:=TBNFItensNFI_VALORUNIT.Value;
          {$ENDREGION}
          DM.TBComprasItens.Post;
        end;
      end;

      //existe um codigo local mas NÃO tem no pedido, então insere o item no pedido.
      if (TBNFItensNFI_CODIGOLOCAL.Value<>0) and (TBNFItensNFI_TEMNOPEDIDO.Value='N') then
      begin
        //localiza o item.
        DM.TBProdutos.Close;
        DM.TBProdutos.ParamByName('codigo').AsInteger:=TBNFItensNFI_CODIGOLOCAL.Value;
        DM.TBProdutos.Open;

        //insere o novo item.
        DM.TBComprasItens.Insert;
        {$REGION 'Preenche campos'}
        DM.TBComprasItensCOI_ALIQCOFINS.Value:=TBNFItensNFI_ALIQCOFINS.Value;
        DM.TBComprasItensCOI_ALIQCOFINSST.Value:=TBNFItensNFI_ALIQCOFINSST.Value;
        DM.TBComprasItensCOI_ALIQICMS.Value:=TBNFItensNFI_ALIQICMS.Value;
        DM.TBComprasItensCOI_ALIQICMSADICST.Value:=TBNFItensNFI_ALIQICMSADICST.Value;
        DM.TBComprasItensCOI_ALIQICMSRED.Value:=TBNFItensNFI_ALIQICMSRED.Value;
        DM.TBComprasItensCOI_ALIQICMSST.Value:=TBNFItensNFI_ALIQICMSST.Value;
        DM.TBComprasItensCOI_ALIQIPI.Value:=TBNFItensNFI_ALIQIPI.Value;
        DM.TBComprasItensCOI_ALIQISS.Value:=TBNFItensNFI_ALIQISS.Value;
        DM.TBComprasItensCOI_ALIQPIS.Value:=TBNFItensNFI_ALIQPIS.Value;
        DM.TBComprasItensCOI_ALIQPISST.Value:=TBNFItensNFI_ALIQPISST.Value;
        DM.TBComprasItensCOI_ALMOXARIFADO.Value:=DM.TBParametrosPAR_ALMOXARIFADOPADRAO.Value;
        DM.TBComprasItensCOI_BASECOFINS.Value:=TBNFItensNFI_BASECOFINS.Value;
        DM.TBComprasItensCOI_BASECOFINSST.Value:=TBNFItensNFI_BASECOFINSST.Value;
        DM.TBComprasItensCOI_BASEICMS.Value:=TBNFItensNFI_BASEICMS.Value;
        DM.TBComprasItensCOI_BASEICMSRED.Value:=TBNFItensNFI_BASEICMSRED.Value;
        DM.TBComprasItensCOI_BASEICMSST.Value:=TBNFItensNFI_BASEICMSST.Value;
        DM.TBComprasItensCOI_BASEIPI.Value:=TBNFItensNFI_BASEIPI.Value;
        DM.TBComprasItensCOI_BASEISS.Value:=TBNFItensNFI_BASEISS.Value;
        DM.TBComprasItensCOI_BASEPIS.Value:=TBNFItensNFI_BASEPIS.Value;
        DM.TBComprasItensCOI_BASEPISST.Value:=TBNFItensNFI_BASEPISST.Value;
        DM.TBComprasItensCOI_CFOP.Value:=TBNFItensNFI_CFOP.Value;
        DM.TBComprasItensCOI_CLASSFISCAL.Value:=TBNFItensNFI_CLASSFISCAL.Value;
        //DM.TBComprasItensCOI_CODIGO.Value:= //AUTOMATICO.
        DM.TBComprasItensCOI_CODIGOBARRAS.Value:=TBNFItensNFI_CODIGOBARRAS.Value;
        DM.TBComprasItensCOI_COMPLEMENTO.Value:='';
        DM.TBComprasItensCOI_COMPOEBASEICMS.Value:=TBNFItensNFI_COMPOEBASEICMS.Value;
        //DM.TBComprasItensCOI_COMPOEBASEICMSST.Value:= //??DM.TBProdutosPRO_COMPOEBASEICMSST.Value;
        DM.TBComprasItensCOI_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.Value;
        //DM.TBComprasItensCOI_COMPRA.Value:= //ASSOCIADO NO AFTER INSERT.
        DM.TBComprasItensCOI_CSTCOFINS.Value:=TBNFItensNFI_CSTCOFINS.Value;
        DM.TBComprasItensCOI_CSTICMS.Value:=TBNFItensNFI_CSTICMS.Value;
        if TBNFItensNFI_CSTIPI.Value >= 50 then
        DM.TBComprasItensCOI_CSTIPI.Value:=TBNFItensNFI_CSTIPI.Value-50 else //tras automaticamente para menor que 50.
        DM.TBComprasItensCOI_CSTIPI.Value:=TBNFItensNFI_CSTIPI.Value;
        DM.TBComprasItensCOI_CSTPIS.Value:=TBNFItensNFI_CSTPIS.Value;
        DM.TBComprasItensCOI_DESCPORC.Value:=TBNFItensNFI_DESCPORC.Value;
        DM.TBComprasItensCOI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
        DM.TBComprasItensCOI_DESCVALOR.Value:=TBNFItensNFI_DESCVALOR.Value;
        DM.TBComprasItensCOI_FCI.Value:=TBNFItensNFI_FCI.Value;
        DM.TBComprasItensCOI_INFOADICIONAL.Value:=TBNFItensNFI_INFOADICIONAL.Value;
        DM.TBComprasItensCOI_MODICMS.Value:=TBNFItensNFI_MODICMS.Value;
        DM.TBComprasItensCOI_MODICMSST.Value:=TBNFItensNFI_MODICMSST.Value;
        DM.TBComprasItensCOI_ORIGEM.Value:=TBNFItensNFI_ORIGEM.Value;
        DM.TBComprasItensCOI_PESO.Value:=TBNFItensNFI_PESO.Value;
        DM.TBComprasItensCOI_PESOTOTAL.Value:=TBNFItensNFI_PESOTOTAL.Value;
        DM.TBComprasItensCOI_PRODUTO.Value:=TBNFItensNFI_CODIGOLOCAL.Value;
        DM.TBComprasItensCOI_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
        DM.TBComprasItensCOI_QUANTIDADE.Value:=TBNFItensNFI_QUANTIDADE.Value;
        DM.TBComprasItensCOI_TIPO.Value:=DM.TBProdutosPRO_TIPO.Value;
        DM.TBComprasItensCOI_TIPOISS.Value:=DM.TBProdutosPRO_TIPOISS.Value;
        DM.TBComprasItensCOI_UNIDADE.Value:=DM.TBProdutosPRO_UNIDADE.Value; //tras do produto. 27/01/2020. TBNFItensNFI_UNIDADE.Value;
        DM.TBComprasItensCOI_VALORACESSORIAS.Value:=TBNFItensNFI_VALORACESSORIAS.Value;
        DM.TBComprasItensCOI_VALORCOFINS.Value:=TBNFItensNFI_VALORCOFINS.Value;
        DM.TBComprasItensCOI_VALORCOFINSST.Value:=TBNFItensNFI_VALORCOFINSST.Value;
        DM.TBComprasItensCOI_VALORFRETE.Value:=TBNFItensNFI_VALORFRETE.Value;
        DM.TBComprasItensCOI_VALORICMS.Value:=TBNFItensNFI_VALORICMS.Value;
        DM.TBComprasItensCOI_VALORICMSST.Value:=TBNFItensNFI_VALORICMSST.Value;
        DM.TBComprasItensCOI_VALORIPI.Value:=TBNFItensNFI_VALORIPI.Value;
        DM.TBComprasItensCOI_VALORISS.Value:=TBNFItensNFI_VALORISS.Value;
        DM.TBComprasItensCOI_VALORPIS.Value:=TBNFItensNFI_VALORPIS.Value;
        DM.TBComprasItensCOI_VALORPISST.Value:=TBNFItensNFI_VALORPISST.Value;
        DM.TBComprasItensCOI_VALORSEGURO.Value:=TBNFItensNFI_VALORSEGURO.Value;
        DM.TBComprasItensCOI_VALORTOTAL.Value:=TBNFItensNFI_VALORTOTAL.Value;
        DM.TBComprasItensCOI_VALORTOTALBRUTO.Value:=TBNFItensNFI_VALORTOTAL.Value;
        DM.TBComprasItensCOI_VALORTRIBUTOS.Value:=TBNFItensNFI_VALORTRIBUTOS.Value;
        DM.TBComprasItensCOI_VALORUNIT.Value:=TBNFItensNFI_VALORUNIT.Value;
        {$ENDREGION}
        DM.TBComprasItens.Post;

        //atualiza o campo "tem no pedido".
        //Codigo:=TBNFItensNFI_CODIGO.Value;
        TBNFItens.Edit;
        TBNFItensNFI_TEMNOPEDIDO.Value:='S';
        TBNFItens.Post;
        //TBNFItens.Locate('NFI_CODIGO',Codigo,[]);
      end;

      //codigo local igual a zero, não processa, pois não sabemos qual o produto relacionado.
      if TBNFItensNFI_CODIGOLOCAL.Value=0 then
      LocalZero:=True;
      //...
      TBNFItens.Next;
    end;

    //atualiza demais campos da capa.
    {$REGION 'Atualiza a capa'}
    DM.TBCompras.Edit;
    //DM.TBComprasCOM_CODIGO.Value:=
    //DM.TBComprasCOM_FORNECEDOR.Value:=
    //DM.TBComprasCOM_ALIQICMSCREDSN.Value:=
    DM.TBComprasCOM_BAIRRO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
    //DM.TBComprasCOM_BAIXADATA.Value:=
    //DM.TBComprasCOM_BAIXAPOR.Value:=
    //DM.TBComprasCOM_BASECOFINS.Value:= ?
    //DM.TBComprasCOM_BASECOFINSST.Value:= ?
    DM.TBComprasCOM_BASEICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
    DM.TBComprasCOM_BASEICMSST.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
    //DM.TBComprasCOM_BASEIPI.Value:= ?
    //DM.TBComprasCOM_BASEISS.Value:= ?
    //DM.TBComprasCOM_BASEPIS.Value:= ?
    //DM.TBComprasCOM_BASEPISST.Value:= ?
    DM.TBComprasCOM_CALCULARTOTAIS.Value:='N'; //se importou, não calcula os totais automaticamente.
    S:=IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
    Insert('-',S,6);
    DM.TBComprasCOM_CEP.Value:=S; //IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
    //DM.TBComprasCOM_CFOP.Value:=
    //DM.TBComprasCOM_CFOPDESC.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;
    DM.TBComprasCOM_CHAVEACESSO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.procNFe.chDFe;
    DM.TBComprasCOM_CIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
    DM.TBComprasCOM_CIDADECODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    DM.TBComprasCOM_CNPJ.Value:=S;
    DM.TBComprasCOM_COMPLEMENTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
    //DM.TBComprasCOM_CONDICAO.Value:=
    //DM.TBComprasCOM_CONDICAOMEMO.Value:=
    //DM.TBComprasCOM_CONTATO.Value:=
    //DM.TBComprasCOM_CPF.Value:=
    //DM.TBComprasCOM_DESCPORC.Value:= ?
    DM.TBComprasCOM_DESCVALOR.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
    //DM.TBComprasCOM_DIAPREFERENCIAL.Value:=
    //DM.TBComprasCOM_DTATUALIZACAO.Value:=
    //DM.TBComprasCOM_DTCADASTRO.Value:=
    //DM.TBComprasCOM_DTENTRADA.Value:=
    DM.TBComprasCOM_ENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;
    //DM.TBComprasCOM_ENTRADASAIDA.Value:=
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count>0 then
    DM.TBComprasCOM_ESPECIE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp;
    DM.TBComprasCOM_ESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
    DM.TBComprasCOM_ESTADOCODIGO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF;
    //DM.TBComprasCOM_FONE1.Value:=
    //DM.TBComprasCOM_FORMAPAGTO.Value:=
    case StrToInt(modFreteToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete)) of
      0: DM.TBComprasCOM_FRETE.Value:='0 - EMITENTE';
      1: DM.TBComprasCOM_FRETE.Value:='1 - DEST/REM';
      2: DM.TBComprasCOM_FRETE.Value:='2 - TERCEIROS';
      9: DM.TBComprasCOM_FRETE.Value:='9 - SEM FRETE';
    end;
    DM.TBComprasCOM_IE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.IE;
    if (ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count>0) and (ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].Lacres.Count>0) then
    DM.TBComprasCOM_LACRES.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].Lacres.Items[0].nLacre; //pega somente o primeiro item.
    //DM.TBComprasCOM_MARCA.Value:=
    DM.TBComprasCOM_MODELO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo;
    //DM.TBComprasCOM_MOVIMENTAESTOQUE.Value:=
    //DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value:=
    //DM.TBComprasCOM_NOME.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome; //deixar alterar o nome ou não?
    DM.TBComprasCOM_NOTADATA.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi;
    DM.TBComprasCOM_NOTANUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF;
    DM.TBComprasCOM_NUMERO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
    //DM.TBComprasCOM_OBSERVACOES.Value:=
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count>0 then
    begin
      DM.TBComprasCOM_PESOBRUTO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB; //pega somente o primeiro item.
      DM.TBComprasCOM_PESOLIQ.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL; //pega somente o primeiro item.
    end;
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Reboque.Count>0 then
    begin
      DM.TBComprasCOM_REBOQUEPLACA.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Reboque.Items[0].placa; //pega somente o primeiro item.
      DM.TBComprasCOM_REBOQUEPLACAUF.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Reboque.Items[0].UF; //pega somente o primeiro item.
      DM.TBComprasCOM_REBOQUERNTC.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Reboque.Items[0].RNTC; //pega somente o primeiro item.
    end;
    //DM.TBComprasCOM_RG.Value:=
    DM.TBComprasCOM_SERIE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie;
    //DM.TBComprasCOM_STATUS.Value:=
    DM.TBComprasCOM_TOTALCOFINS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
    //DM.TBComprasCOM_TOTALCOFINSST.Value:= ?
    DM.TBComprasCOM_TOTALICMS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
    //DM.TBComprasCOM_TOTALICMSST.Value:= ?
    DM.TBComprasCOM_TOTALIPI.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
    DM.TBComprasCOM_TOTALISS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ISSQNtot.vISS;
    DM.TBComprasCOM_TOTALITENS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
    DM.TBComprasCOM_TOTALPIS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
    //DM.TBComprasCOM_TOTALPISST.Value:=
    DM.TBComprasCOM_TOTALPRODUTOS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
    //DM.TBComprasCOM_TOTALSERVICOS.Value:=
    DM.TBComprasCOM_TOTALTRIBUTOS.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vTotTrib;
    DM.TBComprasCOM_TRANSPCIDADE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun;
    S:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
    Insert('.',S,3); Insert('.',S,7); Insert('/',S,11); Insert('-',S,16);
    DM.TBComprasCOM_TRANSPCNPJ.Value:=S;
    //DM.TBComprasCOM_TRANSPCPF.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
    DM.TBComprasCOM_TRANSPENDERECO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;
    DM.TBComprasCOM_TRANSPESTADO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF;
    //DM.TBComprasCOM_TRANSPFONE.Value:=
    DM.TBComprasCOM_TRANSPIE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
    DM.TBComprasCOM_TRANSPNOME.Value:=Copy(ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome,1,50);
    //DM.TBComprasCOM_TRANSPORTADORA.Value:=codigo
    //DM.TBComprasCOM_USUARIO.Value:=
    DM.TBComprasCOM_VALORDESPACES.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
    DM.TBComprasCOM_VALORFRETE.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
    DM.TBComprasCOM_VALORSEGURO.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
    DM.TBComprasCOM_VALORTOTAL.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
    DM.TBComprasCOM_VEICULOPLACA.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
    DM.TBComprasCOM_VEICULOPLACAUF.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF;
    DM.TBComprasCOM_VEICULORNTC.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.RNTC;
    if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count>0 then
    begin
      DM.TBComprasCOM_VOLUMES.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol; //pega somente o primeiro do grupo
      DM.TBComprasCOM_VOLUMESNUM.Value:=ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].nVol; //pega somente o primeiro do grupo
    end;
    DM.TBCompras.Post;
    {$ENDREGION}
    //
    if LocalZero then
    MessageDlg('Atualização feita com sucesso, mas existem produtos no XML que não foram encontrados no cadastro de produtos.'+#13#10+'Verifique os itens com "Produto Local" igual a zero.',mtWarning,[mbOk],0) else
    MessageDlg('Atualização feita com sucesso.',mtWarning,[mbOk],0);
  end;
end;

procedure TFormComprasImportarXML.CadastroDeFornecedores1Click(Sender: TObject);
begin
  Application.CreateForm(TFormFornecedores, FormFornecedores);
  FormFornecedores.ShowModal;
  FormFornecedores.Free;
  FormFornecedores:=nil;
end;

procedure TFormComprasImportarXML.CadastroDeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFormProdutos, FormProdutos);
  FormProdutos.ShowModal;
  FormProdutos.Free;
  FormProdutos:=nil;
end;

procedure TFormComprasImportarXML.CodigoDoProdutoNosFornecedores1Click(
  Sender: TObject);
begin
  AbortIf(DM.TBComprasItens.IsEmpty,'Nenhum produto selecionado.');

  DM.TBProdutos.Close;
  DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTO.Value;
  DM.TBProdutos.Open;

  //testar com ele sempre ligado qdo usa firedac. DM.TBProdutosCodigos.Datasource:=DM.DSProdutos;
  Application.CreateForm(TFormProdutosCodigos, FormProdutosCodigos);
  FormProdutosCodigos.ShowModal;
  FormProdutosCodigos.Free;
  FormProdutosCodigos:=nil;
  //DM.TBProdutosCodigos.Datasource:=nil;
end;

procedure TFormComprasImportarXML.DBGrid2DblClick(Sender: TObject);
begin
  CodigoDoProdutoNosFornecedores1.Click;
end;

procedure TFormComprasImportarXML.DBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    CodigoDoProdutoNosFornecedores1.Click;
  end;
end;

procedure TFormComprasImportarXML.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasImportarXML.FormCreate(Sender: TObject);
begin
  Label2.Caption:='';
  Label4.Caption:='';
  Label6.Caption:='';
  Label8.Caption:='';
  Label10.Caption:='';
  Label12.Caption:='';
  Label14.Caption:='';
  AbrirXML1.Click;
end;

procedure TFormComprasImportarXML.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormComprasImportarXML.InformarOProdutoLocal1Click(Sender: TObject);
begin
  AbortIf(TBNFItens.IsEmpty,'Nenhum produto selecionado.');
  AbortIf(TBNFItensNFI_CODIGOLOCAL.Value<>0,'Já foi encontrado um produto associado a este item.');

  Application.CreateForm(TFormProdutosLoc, FormProdutosLoc);
  FormProdutosLoc.ShowModal;
  if ProdutosLoc.Procurar then
  begin
    if MessageDlg('Associar o código do fornecedor ('+TBNFItensNFI_CODIGO.Value+') ao produto '+FormProdutosLoc.QYProdutosPRO_NOME.Value+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      //localiza o produto.
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
      DM.TBProdutos.Open;

      //DM.TBProdutosCodigos.Datasource:=DM.DSProdutos;

      //associa o codigo do XML ao cadastro do produto local.
      if not DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBComprasCOM_FORNECEDOR.Value,TBNFItensNFI_CODIGO.Value]),[]) then
      begin
        DM.TBProdutosCodigos.Insert;
        DM.TBProdutosCodigosPCO_FORNECEDOR.Value:=DM.TBComprasCOM_FORNECEDOR.Value;
        DM.TBProdutosCodigosPCO_CODIGOFORNECEDOR.Value:=UpperCase(TBNFItensNFI_CODIGO.Value);
        DM.TBProdutosCodigos.Post;
      end;
      //...

      //atualiza a tabela de itens com o código do produto local. - tenta localizar novamente, se encontrou é pq a inserção acima deu certo.
      if DM.TBProdutosCodigos.Locate('PCO_FORNECEDOR;PCO_CODIGOFORNECEDOR',VarArrayOf([DM.TBComprasCOM_FORNECEDOR.Value,TBNFItensNFI_CODIGO.Value]),[]) then
      begin
        TBNFItens.Edit;
        TBNFItensNFI_CODIGOLOCAL.Value:=FormProdutosLoc.QYProdutosPRO_CODIGO.Value;
        if DM.TBComprasItens.Locate('COI_PRODUTO',FormProdutosLoc.QYProdutosPRO_CODIGO.Value,[]) then
        TBNFItensNFI_TEMNOPEDIDO.Value:='S';
        TBNFItens.Post;
      end;
      //...

      //DM.TBProdutosCodigos.Datasource:=nil;
    end;
  end;
  FormProdutosLoc.Free;
  FormProdutosLoc:=nil;
end;

end.
