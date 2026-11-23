unit ProdutosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportCSV, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, Vcl.StdCtrls, Datasnap.DBClient,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  frCoreClasses, FireDAC.Comp.Client;

type
  TFormProdutosFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    TBComposicao: TClientDataSet;
    TreeView1: TTreeView;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    frxDBDataset11b: TfrxDBDataset;
    DS11: TDataSource;
    TBComposicaoPRO_CODIGO: TIntegerField;
    TBComposicaoPRC_PRODUTOCOMP: TIntegerField;
    TBComposicaoPRC_QUANTIDADE: TFloatField;
    TBComposicaoPRC_ORDEM: TIntegerField;
    TBComposicaoPRO_NOME: TStringField;
    TBComposicaoPRO_COMPOSTO: TStringField;
    TBComposicaoPRO_PRECOCUSTO: TCurrencyField;
    TBComposicaoPRO_PRECOCUSTOCOMP: TCurrencyField;
    TBComposicaoPRO_UNIDADE: TStringField;
    TBComposicaoPRO_NIVEL: TIntegerField;
    DBGrid1: TDBGrid;
    DSComposicao: TDataSource;
    DBGrid2: TDBGrid;
    Button1: TButton;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    frxReport13: TfrxReport;
    frxDBDataset13: TfrxDBDataset;
    TBComposicaoPRO_LOCALIZACAO: TStringField;
    frxReport14: TfrxReport;
    frxDBDataset14: TfrxDBDataset;
    TBProdutosPrint: TClientDataSet;
    TBProdutosPrintPRO_CODIGO: TIntegerField;
    TBProdutosPrintPRO_NOME: TStringField;
    TBProdutosPrintPRO_CODIGOBARRAS: TStringField;
    TBProdutosPrintPRO_CODIGOFAB: TStringField;
    TBProdutosPrintPRO_LOCALIZACAO: TStringField;
    TBProdutosPrintPRO_PRECO: TCurrencyField;
    TBProdutosPrintPRO_QUANTIDADE: TIntegerField;
    DSProdutosPrint: TDataSource;
    frxReport15: TfrxReport;
    frxDBDataset15: TfrxDBDataset;
    frxReport16: TfrxReport;
    frxDBDataset16: TfrxDBDataset;
    frxReport17: TfrxReport;
    frxDBDataset17: TfrxDBDataset;
    frxReport18: TfrxReport;
    frxDBDataset18: TfrxDBDataset;
    QY17: TFDQuery;
    TR17: TFDTransaction;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    TR02: TFDTransaction;
    QY02: TFDQuery;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    QY18: TFDQuery;
    TR18: TFDTransaction;
    QY10: TFDQuery;
    TR10: TFDTransaction;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    QY12: TFDQuery;
    TR12: TFDTransaction;
    QY13: TFDQuery;
    TR13: TFDTransaction;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Nivel: Integer;
    Root: Integer;
    procedure MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
  public
    { Public declarations }
    procedure GerarTabelaCompostos;
  end;

var
  FormProdutosFast: TFormProdutosFast;

implementation
uses DataMod;

{$R *.dfm}

procedure TFormProdutosFast.MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
var Query: TFDQuery;
  Item: TTreeNode;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=DM.FDConnection1;
  Query.SQL.Add(
    'select PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, PRC_ORDEM, PRO_LOCALIZACAO, PRO_NOME, PRO_COMPOSTO, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP from PRODUTOSCOMP '+
    'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO where PRC_PRODUTO=:codigo order by PRO_NOME'
  );
  Query.ParamByName('codigo').AsInteger:=Produto;
  Query.Open;
  Nivel:=Nivel+1;
  while not Query.Eof do
  begin
    //Item:=TreeView1.Items.AddChild(NodePai,Query.FieldByName('PRC_PRODUTOCOMP').AsString+' - '+Query.FieldByName('PRO_NOME').AsString);
    TBComposicao.Insert;
    TBComposicaoPRO_CODIGO.Value        :=Root; //Produto;
    TBComposicaoPRC_PRODUTOCOMP.Value   :=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    TBComposicaoPRC_QUANTIDADE.Value    :=Query.FieldByName('PRC_QUANTIDADE').AsFloat;
    TBComposicaoPRC_ORDEM.Value         :=Query.FieldByName('PRC_ORDEM').AsInteger;
    TBComposicaoPRO_LOCALIZACAO.Value   :=Query.FieldByName('PRO_LOCALIZACAO').AsString;
    TBComposicaoPRO_NOME.Value          :=Query.FieldByName('PRO_NOME').AsString;
    TBComposicaoPRO_COMPOSTO.Value      :=Query.FieldByName('PRO_COMPOSTO').AsString;
    TBComposicaoPRO_UNIDADE.Value       :=Query.FieldByName('PRO_UNIDADE').AsString;
    TBComposicaoPRO_PRECOCUSTO.Value    :=Query.FieldByName('PRO_PRECOCUSTO').AsExtended;
    TBComposicaoPRO_PRECOCUSTOCOMP.Value:=Query.FieldByName('PRC_QUANTIDADE').AsFloat * Query.FieldByName('PRO_PRECOCUSTO').AsExtended; //Query.FieldByName('PRO_PRECOCUSTOCOMP').AsExtended;
    TBComposicaoPRO_NIVEL.Value         :=Nivel;
    TBComposicao.Post;
    if Query.FieldByName('PRO_COMPOSTO').AsString='S' then
    MontarArvoreComposicao(Query.FieldByName('PRC_PRODUTOCOMP').AsInteger,nil);
    Query.Next;
  end;
  Nivel:=Nivel-1;
  Query.Close;
  Query.DisposeOf;
end;

procedure TFormProdutosFast.Button1Click(Sender: TObject);
begin
  GerarTabelaCompostos;
end;

procedure TFormProdutosFast.GerarTabelaCompostos;
begin
  Screen.Cursor:=crHourGlass;
  TBComposicao.DisableControls;
  //QY11.Close;
  //QY11.ParamByName('datainicial').AsDate:=StrToDate('01/01/2012');
  //QY11.ParamByName('datafinal').AsDate:=StrToDate('01/01/2020');
  //QY11.ParamByName('codigo').AsInteger:=3363;
  //QY11.Open;
  QY11.DisableControls;
  QY11.First;
  while not QY11.Eof do
  begin
    Nivel:=0;
    Root:=QY11.FieldByName('PRO_CODIGO').AsInteger;
    //TreeView1.Items.Clear;
    //TreeView1.Items.BeginUpdate;
    //sem item root... Item:=TreeView1.Items.Add(nil,IntToSTr(FDQuery1PRO_CODIGO.Value)+' - '+FDQuery1PRO_NOME.Value);

    //Insere esse produto na tabela auxiliar.
    //TBComposicao.EmptyDataSet;
    {TBComposicao.Insert;
    TBComposicaoAbsoluteIndex.Value:=Item.AbsoluteIndex;
    TBComposicaoLevel.Value:=Item.Level;
    TBComposicaoProduto.Value:=FDQuery1PRO_CODIGO.Value;
    TBComposicaoUnidade.Value:='';
    TBComposicaoQuantidade.Value:=1;
    TBComposicaoComposto.Value:='S'; //obviamente sempre será composto.
    TBComposicaoPrecoCusto.Value:=0;
    TBComposicaoPrecoCustoComp.Value:=0;
    TBComposicao.Post; }

    //Popula o TreeView
    //MontarArvoreComposicao(FDQuery1PRO_CODIGO.Value,Item);
    MontarArvoreComposicao(QY11.FieldByName('PRO_CODIGO').AsInteger,nil); //monta com pai=nulo - sem item root no treeview
    //TreeView1.Items.EndUpdate;
    //TreeView1.FullExpand;
    //TBComposicao.First;
    //TBComposicao.Next; //vai para o segundo registro, pois o primeiro é o pai... assim, evita de imprimir o produto pai novamente.
    QY11.Next;
  end;
  QY11.First; //volta para o começo antes de gerar o relatório.
  QY11.EnableControls;
  TBComposicao.EnableControls;
  Screen.Cursor:=crDefault;
end;

end.
