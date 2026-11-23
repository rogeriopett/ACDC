unit ProdutosCompTree;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ImgList, StdCtrls, Buttons, PngBitBtn, ExtCtrls, DBCtrls,
  PngSpeedButton, DBSBtn, PngImageList, DBClient, Grids, DBGrids, System.ImageList;

type
  TFormProdutosCompTree = class(TForm)
    DBText1: TDBText;
    DBText2: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    BitBtn3: TPngBitBtn;
    Label4: TLabel;
    DBText5: TDBText;
    Label5: TLabel;
    DBText6: TDBText;
    Bevel2: TBevel;
    Bevel3: TBevel;
    PngImageList1: TPngImageList;
    PngImageList2: TPngImageList;
    PngBitBtn2: TPngBitBtn;
    PngBitBtn3: TPngBitBtn;
    TreeView1: TTreeView;
    TBComposicao: TClientDataSet;
    TBComposicaoAbsoluteIndex: TIntegerField;
    TBComposicaoLevel: TIntegerField;
    TBComposicaoProduto: TIntegerField;
    TBComposicaoQuantidade: TFloatField;
    TBComposicaoUnidade: TStringField;
    TBComposicaoComposto: TStringField;
    TBComposicaoPrecoCusto: TCurrencyField;
    TBComposicaoPrecoCustoComp: TCurrencyField;
    Label6: TLabel;
    DBText7: TDBText;
    Label7: TLabel;
    DBText8: TDBText;
    DSComposicao: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    TBComposicaoBaixar: TStringField;
    Label10: TLabel;
    DBText9: TDBText;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure PngBitBtn3Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure DSComposicaoDataChange(Sender: TObject; Field: TField);
    procedure DBText9DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
  public
    { Public declarations }
  end;

var
  FormProdutosCompTree: TFormProdutosCompTree;
  Contador, Nivel: Integer;

implementation
uses DataMod, Funcoes1, FireDAC.Comp.Client;
{$R *.dfm}

procedure TFormProdutosCompTree.MontarArvoreComposicao(Produto: Integer; NodePai: TTreeNode);
var Query: TFDQuery;
  Item: TTreeNode;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=DM.FDConnection1;
  Query.SQL.Add('select PRC_BAIXAR, PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, PRO_NOME, PRO_COMPOSTO, PRO_UNIDADE, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP from PRODUTOSCOMP '+
                'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO where PRC_PRODUTO=:codigo order by PRO_NOME');
  Query.ParamByName('codigo').AsInteger:=Produto;
  Query.Open;
  while not Query.Eof do
  begin
    Item:=TreeView1.Items.AddChild(NodePai,Query.FieldByName('PRC_PRODUTOCOMP').AsString+' - '+Query.FieldByName('PRO_NOME').AsString);
    Item.SelectedIndex:=1; //ajustar 2 imagens diferentes quando atualizar para o delphi 10.
    TBComposicao.Insert;
    TBComposicaoAbsoluteIndex.Value:=Item.AbsoluteIndex;
    TBComposicaoLevel.Value:=Item.Level;
    TBComposicaoBaixar.Value:=Query.FieldByName('PRC_BAIXAR').AsString;
    TBComposicaoProduto.Value:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
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

procedure TFormProdutosCompTree.FormCreate(Sender: TObject);
var Item: TTreeNode;
begin
  //Limpa TreeView e adiciona o primeiro item que é o produto selecionado.
  TreeView1.Items.Clear;
  TreeView1.Items.BeginUpdate;
  Item:=TreeView1.Items.Add(nil,IntToSTr(DM.TBProdutosPRO_CODIGO.Value)+' - '+DM.TBProdutosPRO_NOME.Value);

  //Insere esse produto na tabela auxiliar.
  TBComposicao.EmptyDataSet;
  TBComposicao.Insert;
  TBComposicaoAbsoluteIndex.Value:=Item.AbsoluteIndex;
  TBComposicaoLevel.Value:=Item.Level;
  TBComposicaoBaixar.Value:='?';
  TBComposicaoProduto.Value:=DM.TBProdutosPRO_CODIGO.Value;
  TBComposicaoUnidade.Value:=DM.TBProdutosPRO_UNIDADE.Value;
  TBComposicaoQuantidade.Value:=1;
  TBComposicaoComposto.Value:=DM.TBProdutosPRO_COMPOSTO.Value;
  TBComposicao.Post;

  //Popula o TreeView
  MontarArvoreComposicao(DM.TBProdutosPRO_CODIGO.Value,Item);
  TreeView1.Items.EndUpdate;
  TreeView1.FullExpand;

  TreeView1.FindNextToSelect;
end;

procedure TFormProdutosCompTree.BitBtn3Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormProdutosCompTree.DBText9DblClick(Sender: TObject);
begin
  if TBComposicaoBaixar.Value='?' then
  Exit;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update PRODUTOSCOMP set PRC_BAIXAR=:baixar where PRC_PRODUTOCOMP=:produto');
  DM.QYAux.ParamByName('produto').AsInteger:=TBComposicaoProduto.Value;
  if TBComposicaoBaixar.Value='S' then
  begin
    DM.QYAux.ParamByName('baixar').AsString:='N';
    DM.QYAux.ExecSQL;

    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBProdutos.Open;

    TBComposicao.Edit;
    TBComposicaoBaixar.Value:='N';
    TBComposicao.Post;
  end else
  if TBComposicaoBaixar.Value='N' then
  begin
    DM.QYAux.ParamByName('baixar').AsString:='S';
    DM.QYAux.ExecSQL;

    DM.CodigoMark:=DM.TBProdutosPRO_CODIGO.Value;
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBProdutos.Open;

    TBComposicao.Edit;
    TBComposicaoBaixar.Value:='S';
    TBComposicao.Post;
  end;
end;

procedure TFormProdutosCompTree.DSComposicaoDataChange(Sender: TObject; Field: TField);
begin
  //Label8.Caption:=CurrToStr(TBComposicaoQuantidade.Value*TBComposicaoPrecoCusto.Value);
  Label8.Caption:=Format('%M',[TBComposicaoQuantidade.Value*TBComposicaoPrecoCusto.Value]);
end;

procedure TFormProdutosCompTree.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  TBComposicao.Close;
end;

procedure TFormProdutosCompTree.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormProdutosCompTree.PngBitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProdutosCompTree.PngBitBtn2Click(Sender: TObject);
begin
  TreeView1.FullExpand;
end;

procedure TFormProdutosCompTree.PngBitBtn3Click(Sender: TObject);
begin
  TreeView1.FullCollapse;
end;

procedure TFormProdutosCompTree.TreeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  TBComposicao.FindKey([Treeview1.Selected.AbsoluteIndex]);
end;

end.
