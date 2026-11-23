unit ProdutosQ10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt, DBClient, ComCtrls;

type
  TFormProdutosQ10 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRSubDetail1: TQRSubDetail;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    DataSource1: TDataSource;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    QRDBText13: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel20: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    TBComposicao: TClientDataSet;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand3: TQRBand;
    QRDBText16: TQRDBText;
    QRLabel14: TQRLabel;
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
    QRExpr1: TQRExpr;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMIN: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMAX: TFMTBCDField;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
  public
    { Public declarations }
  end;

var
  FormProdutosQ10: TFormProdutosQ10;

implementation
uses DataMod, FuncoesFirenet;

{$R *.dfm}

procedure TFormProdutosQ10.MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
var Query: TIBQuery;
  Item: TTreeNode;
begin
  Query:=TIBQuery.Create(nil);
  Query.Database:=DM.IBDatabase1;
  Query.SQL.Add('select PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, PRO_NOME, PRO_COMPOSTO, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP from PRODUTOSCOMP '+
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

procedure TFormProdutosQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ10);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormProdutosQ10.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRDBText11.Left:=315+(15*TBProdutos.FieldByName('Indentacao').AsInteger);
  QRDBText11.Left:=395+(15*TBComposicaoLevel.Value);
  if TBComposicaoComposto.Value='S' then
  QRSubDetail1.Color:=$00CDD9DD else
  QRSubDetail1.Color:=clWhite;
end;

procedure TFormProdutosQ10.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
//var Item: TTreeNode;
begin
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
  MontarArvoreComposicao(IBQuery1PRO_CODIGO.Value,nil); //monta com pai=nulo - sem item root no treeview
  TreeView1.Items.EndUpdate;
  TreeView1.FullExpand;
  TBComposicao.First;
  //TBComposicao.Next; //vai para o segundo registro, pois o primeiro é o pai... assim, evita de imprimir o produto pai novamente.
end;

end.
