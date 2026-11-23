  unit ProdutosQ11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt, DBClient, ComCtrls;

type
  TFormProdutosQ11 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRPDFFilter1: TQRPDFFilter;
    TBComposicao: TClientDataSet;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRExpr1: TQRExpr;
    TreeView1: TTreeView;
    TBComposicaoAbsoluteIndex: TIntegerField;
    TBComposicaoLevel: TIntegerField;
    TBComposicaoNome: TStringField;
    TBComposicaoQuantidade: TFloatField;
    TBComposicaoComposto: TStringField;
    TBComposicaoUnidade: TStringField;
    TBComposicaoPrecoCusto: TCurrencyField;
    TBComposicaoPrecoCustoComp: TCurrencyField;
    TBComposicaoProduto: TIntegerField;
    QRDBText5: TQRDBText;
    TBComposicaoLocalizacao: TStringField;
    QRLabel7: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
  public
    { Public declarations }
  end;

var
  FormProdutosQ11: TFormProdutosQ11;
  CodigoProduto: Integer;

implementation
uses DataMod, FuncoesFirenet, ProdutosRel;
{$R *.dfm}

procedure TFormProdutosQ11.MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
var Query: TIBQuery;
  Item: TTreeNode;
begin
  Query:=TIBQuery.Create(nil);
  Query.Database:=DM.IBDatabase1;
  Query.SQL.Add('select PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, PRO_NOME, PRO_COMPOSTO, PRO_LOCALIZACAO, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP from PRODUTOSCOMP '+
                'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO where PRC_PRODUTO=:codigo order by PRO_NOME');
  Query.ParamByName('codigo').AsInteger:=Produto;
  Query.Open;
  while not Query.Eof do
  begin
    Item:=TreeView1.Items.AddChild(NodePai,Query.FieldByName('PRC_PRODUTOCOMP').AsString+' - '+Query.FieldByName('PRO_NOME').AsString);
    TBComposicao.Insert;
    TBComposicaoAbsoluteIndex.Value:=Item.AbsoluteIndex;
    TBComposicaoLevel.Value:=Item.Level;
    TBComposicaoProduto.Value:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    TBComposicaoNome.Value:=Query.FieldByName('PRO_NOME').AsString;
    TBComposicaoUnidade.Value:=Query.FieldByName('PRO_UNIDADE').AsString;
    TBComposicaoQuantidade.Value:=Query.FieldByName('PRC_QUANTIDADE').AsFloat;
    TBComposicaoComposto.Value:=Query.FieldByName('PRO_COMPOSTO').AsString;
    TBComposicaoLocalizacao.Value:=Query.FieldByName('PRO_LOCALIZACAO').AsString;
    TBComposicaoPrecoCusto.Value:=Query.FieldByName('PRO_PRECOCUSTO').AsExtended;
    TBComposicaoPrecoCustoComp.Value:=Query.FieldByName('PRO_PRECOCUSTOCOMP').AsExtended;
    TBComposicao.Post;
    if Query.FieldByName('PRO_COMPOSTO').AsString='S' then
    MontarArvoreComposicao(Query.FieldByName('PRC_PRODUTOCOMP').AsInteger, Item);
    Query.Next;
  end;
  Query.Close;
  Query.DisposeOf;
end;

procedure TFormProdutosQ11.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//  QRDBText4.Left:=184+(15*TBProdutos.FieldByName('Indentacao').AsInteger);
  QRDBText6.Left:=296+(15*TBComposicaoLevel.Value);
  if TBComposicaoComposto.Value='S' then
  DetailBand1.Color:=$00CDD9DD else
  DetailBand1.Color:=clWhite;
end;

procedure TFormProdutosQ11.FormCreate(Sender: TObject);
//var Item: TTreeNode;
begin
  LogoTipo(FormProdutosQ11);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;

  TreeView1.Items.Clear;
  TreeView1.Items.BeginUpdate;
  //sem item root... Item:=TreeView1.Items.Add(nil,IntToSTr(IBQuery1PRO_CODIGO.Value)+' - '+IBQuery1PRO_NOME.Value);

  //Insere esse produto na tabela auxiliar.
  TBComposicao.EmptyDataSet;
  {TBComposicao.Insert;
  TBComposicaoAbsoluteIndex.Value:=Item.AbsoluteIndex;
  TBComposicaoLevel.Value:=Item.Level;
  TBComposicaoProduto.Value:=IBQuery1PRO_CODIGO.Value;
  TBComposicaoUnidade.Value:='';
  TBComposicaoQuantidade.Value:=1;
  TBComposicaoComposto.Value:='S'; //obviamente sempre será composto.
  TBComposicaoPrecoCusto.Value:=0;
  TBComposicaoPrecoCustoComp.Value:=0;
  TBComposicao.Post; }

  //Popula o TreeView
  //MontarArvoreComposicao(IBQuery1PRO_CODIGO.Value,Item);
  MontarArvoreComposicao(CodigoProduto,nil); //monta com pai=nulo - sem item root no treeview
  TreeView1.Items.EndUpdate;
  TreeView1.FullExpand;
  TBComposicao.First;
  //TBComposicao.Next; //vai para o segundo registro, pois o primeiro é o pai... assim, evita de imprimir o produto pai novamente.
end;

end.
