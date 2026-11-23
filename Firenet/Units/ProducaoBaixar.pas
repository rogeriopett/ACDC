unit ProducaoBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, PngBitBtn, ExtDlgs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormProducaoBaixar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    PngBitBtn1: TPngBitBtn;
    SaveTextFileDialog1: TSaveTextFileDialog;
    QYProducao: TFDQuery;
    TRProducao: TFDTransaction;
    QYProdutosComp: TFDQuery;
    TRProdutosComp: TFDTransaction;
    QYProdutosCompPRC_CODIGO: TIntegerField;
    QYProdutosCompPRC_DTATUALIZACAO: TDateField;
    QYProdutosCompPRC_DTCADASTRO: TDateField;
    QYProdutosCompPRC_PRODUTO: TIntegerField;
    QYProdutosCompPRC_PRODUTOCOMP: TIntegerField;
    QYProdutosCompPRC_QUANTIDADE: TFMTBCDField;
    QYProdutosCompPRC_USUARIO: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PngBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Baixar;
    procedure Cancelar;
    procedure BaixarItens(Item: Integer);
    procedure CancelarItens(Item: Integer);
    procedure BaixarMateriaPrima;
    procedure CancelarMateriaPrima;
  public
    { Public declarations }
  end;

var
  FormProducaoBaixar: TFormProducaoBaixar;
  EfetuarBaixa: Boolean = False;
  SomenteMateriaPrima: Boolean = False;
implementation
uses DataMod, Funcoes1;

{$R *.dfm}

procedure TFormProducaoBaixar.CancelarItens(Item: Integer);
begin
  DM.TBProducaoItensComp.Close;
  DM.TBProducaoItensComp.Open;
  DM.TBProducaoItensComp.First;
  while not DM.TBProducaoItensComp.Eof do
  begin
    if DM.TBProducaoItensCompPDC_BAIXAR.Value='S' then //se S, então estorna - faz entrada.
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
      DM.TBProdutos.Open;
      Memo1.Lines.Add(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
      AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',12,taRight)+' + '+
      AlignText(DM.TBProducaoItensCompPDC_QUANTIDADE.AsString,' ',12,taRight)+' = '+
      AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+DM.TBProducaoItensCompPDC_QUANTIDADE.AsExtended),' ',12,taRight));
      //faz a entrada no estoque nos itens que compõe o produto composto.
      DM.TBEstoque.Insert;
      DM.TBEstoqueEST_DESCRICAO.Value:='CANCELAMENTO AUTOMATICO ORDEM DE PRODUCAO';
      DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
      DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBProducaoItensPDI_ALMOXARIFADO.Value;
      DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBProducaoItensCompPDC_QUANTIDADE.Value;
      DM.TBEstoqueEST_CLIENTE.Value:=DM.TBProducaoPRD_CLIENTE.Value;
      DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
      DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBProducaoPRD_CODIGO.Value);
      DM.TBEstoqueEST_TRANSACAO.Value:='E';
      DM.TBEstoque.Post;
    end;
    DM.TBProducaoItensComp.Next;
  end;
end;

procedure TFormProducaoBaixar.BaixarItens(Item: Integer);
begin
  DM.TBProducaoItensComp.Close;
  DM.TBProducaoItensComp.Open;
  DM.TBProducaoItensComp.First;
  while not DM.TBProducaoItensComp.Eof do
  begin
    if DM.TBProducaoItensCompPDC_BAIXAR.Value='S' then
    begin
      DM.TBProdutos.Close;
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
      DM.TBProdutos.Open;
      Memo1.Lines.Add(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
      AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',12,taRight)+' - '+
      AlignText(DM.TBProducaoItensCompPDC_QUANTIDADE.AsString,' ',12,taRight)+' = '+
      AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-DM.TBProducaoItensCompPDC_QUANTIDADE.AsExtended),' ',12,taRight));
      //faz a saida do estoque nos itens que compõe o produto composto.
      DM.TBEstoque.Insert;
      DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA ORDEM DE PRODUCAO';
      DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProducaoItensCompPDC_PRODUTO.Value;
      DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBProducaoItensPDI_ALMOXARIFADO.Value;
      DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBProducaoItensCompPDC_QUANTIDADE.Value;
      DM.TBEstoqueEST_CLIENTE.Value:=DM.TBProducaoPRD_CLIENTE.Value;
      DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor; //codigo do vendedor do usuario logado.
      DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBProducaoPRD_CODIGO.Value);
      DM.TBEstoqueEST_TRANSACAO.Value:='S';
      DM.TBEstoque.Post;
    end;
    DM.TBProducaoItensComp.Next;
  end;
end;

procedure TFormProducaoBaixar.Baixar;
begin
  Label1.Caption:='Finalizando ordem de produção:';
  Application.ProcessMessages;
  Memo1.Lines.Clear;
//  DM.TBProducaoItens.DisableControls;
  DM.TBProducaoItens.First;
  while not DM.TBProducaoItens.Eof do
  begin
    Memo1.Lines.Add('========================================================================================================');
    Memo1.Lines.Add('REALIZANDO SAÍDAS DOS ITENS QUE COMPOEM O PRODUTO '+IntToStr(DM.TBProducaoItensPDI_PRODUTO.Value)+'...  ');
    Memo1.Lines.Add('========================================================================================================');
    //se matéria prima já foi baixada nao deve baixar novamente. no cancelamento sempre vai voltar.
    if DM.TBProducaoPRD_MPBAIXADA.Value='N' then
    begin
      BaixarItens(DM.TBProducaoItensPDI_PRODUTO.Value); //PDI_PRODUTO sempre será um produto composto.
    end else
    begin
      Memo1.Lines.Add('MATÉRIA PRIMA JÁ BAIXADA ANTERIORMENTE.');
    end;
    Memo1.Lines.Add('--------------------------------------------------------------------------------------------------------');
    //localiza o produto na tabela normal.
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensPDI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //estoque atual + quantidade produto composto.
    Memo1.Lines.Add(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
    AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',12,taRight)+' + '+
    AlignText(DM.TBProducaoItensPDI_QUANTIDADE.AsString,' ',12,taRight)+' = '+
    AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+DM.TBProducaoItensPDI_QUANTIDADE.AsExtended),' ',12,taRight));
    //faz a entrada no estoque dos itens produzidos.
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_DESCRICAO.Value:='ENTRADA AUTOMATICA ORDEM DE PRODUCAO';
    DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProducaoItensPDI_PRODUTO.Value;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBProducaoItensPDI_ALMOXARIFADO.Value;
    DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBProducaoItensPDI_QUANTIDADE.Value;
    DM.TBEstoqueEST_CLIENTE.Value:=DM.TBProducaoPRD_CLIENTE.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBProducaoPRD_CODIGO.Value);
    DM.TBEstoqueEST_TRANSACAO.Value:='E';
    DM.TBEstoque.Post;
    //...
    DM.TBProducaoItens.Next;
    Memo1.Lines.Add(#13#10);
  end;
  Memo1.Lines.Add('========================================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');
//  DM.TBProducaoItens.EnableControls;

  DM.TBProducao.Edit;
  DM.TBProducaoPRD_STATUS.Value:='B';
  DM.TBProducaoPRD_MPBAIXADA.Value:='S';
  DM.TBProducaoPRD_DATABAIXA.Value:=DM.ServerDate;
  DM.TBProducao.Post;

  BitBtn1.Enabled:=True;
end;

procedure TFormProducaoBaixar.Cancelar;
begin
  Label1.Caption:='Cancelando ordem de produção:';
  Application.ProcessMessages;
  Memo1.Lines.Clear;
//  DM.TBProducaoItens.DisableControls;
  DM.TBProducaoItens.First;
  while not DM.TBProducaoItens.Eof do
  begin
    Memo1.Lines.Add('========================================================================================================');
    Memo1.Lines.Add('REALIZANDO ENTRADAS DOS ITENS QUE COMPOEM O PRODUTO '+IntToStr(DM.TBProducaoItensPDI_PRODUTO.Value)+'...');
    Memo1.Lines.Add('========================================================================================================');
    CancelarItens(DM.TBProducaoItensPDI_PRODUTO.Value);
    Memo1.Lines.Add('--------------------------------------------------------------------------------------------------------');
    //localiza o produto na tabela normal.
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBProducaoItensPDI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //estoque atual + quantidade produto composto.
    Memo1.Lines.Add(AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
    AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',12,taRight)+' - '+
    AlignText(DM.TBProducaoItensPDI_QUANTIDADE.AsString,' ',12,taRight)+' = '+
    AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-DM.TBProducaoItensPDI_QUANTIDADE.AsExtended),' ',12,taRight));
    //faz a entrada no estoque dos itens de produto composto.
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_DESCRICAO.Value:='SAIDA AUTOMATICA ORDEM DE PRODUCAO';
    DM.TBEstoqueEST_PRODUTO.Value:=DM.TBProducaoItensPDI_PRODUTO.Value;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBProducaoItensPDI_ALMOXARIFADO.Value;
    DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBProducaoItensPDI_QUANTIDADE.Value;
    DM.TBEstoqueEST_CLIENTE.Value:=DM.TBProducaoPRD_CLIENTE.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor;
    DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBProducaoPRD_CODIGO.Value);
    DM.TBEstoqueEST_TRANSACAO.Value:='S';
    DM.TBEstoque.Post;
    //...
    DM.TBProducaoItens.Next;
    Memo1.Lines.Add(#13#10);
  end;
  Memo1.Lines.Add('========================================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');
//  DM.TBProducaoItens.EnableControls;

  // nao permite alterar ordem de produção baixada. tem que ser por SQL direto.
//  DM.TBProducao.Edit;
//  DM.TBProducaoPRD_STATUS.Value:='A';
//  DM.TBProducao.Post;

  QYProducao.Close;
  QYProducao.ParamByName('codigo').AsInteger:=DM.TBProducaoPRD_CODIGO.Value;
  QYProducao.ExecSQL;

  DM.TBProducao.Close;
  DM.TBProducao.Open;
  //...

  BitBtn1.Enabled:=True;
end;

procedure TFormProducaoBaixar.BaixarMateriaPrima;
begin
  Label1.Caption:='Baixando matéria prima da ordem de produção:';
  Application.ProcessMessages;
  Memo1.Lines.Clear;
//  DM.TBProducaoItens.DisableControls;
  DM.TBProducaoItens.First;
  while not DM.TBProducaoItens.Eof do
  begin
    Memo1.Lines.Add('========================================================================================================');
    Memo1.Lines.Add('REALIZANDO SAÍDAS DOS ITENS QUE COMPOEM O PRODUTO '+IntToStr(DM.TBProducaoItensPDI_PRODUTO.Value)+'...  ');
    Memo1.Lines.Add('========================================================================================================');
    BaixarItens(DM.TBProducaoItensPDI_PRODUTO.Value);
    Memo1.Lines.Add('--------------------------------------------------------------------------------------------------------');
    Memo1.Lines.Add(#13#10);
    DM.TBProducaoItens.Next;
  end;
//  Memo1.Lines.Add(#13#10);
  Memo1.Lines.Add('========================================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');
//  DM.TBProducaoItens.EnableControls;
  DM.TBProducao.Edit;
  DM.TBProducaoPRD_MPBAIXADA.Value:='S';
  DM.TBProducao.Post;
  BitBtn1.Enabled:=True;
end;

procedure TFormProducaoBaixar.CancelarMateriaPrima;
begin
  Label1.Caption:='Estornando matéria prima da ordem de produção:';
  Application.ProcessMessages;
  Memo1.Lines.Clear;
//  DM.TBProducaoItens.DisableControls;
  DM.TBProducaoItens.First;
  while not DM.TBProducaoItens.Eof do
  begin
    Memo1.Lines.Add('========================================================================================================');
    Memo1.Lines.Add('REALIZANDO ENTRADAS DOS ITENS QUE COMPOEM O PRODUTO '+IntToStr(DM.TBProducaoItensPDI_PRODUTO.Value)+'...');
    Memo1.Lines.Add('========================================================================================================');
    CancelarItens(DM.TBProducaoItensPDI_PRODUTO.Value);
    Memo1.Lines.Add('--------------------------------------------------------------------------------------------------------');
    Memo1.Lines.Add(#13#10);
    DM.TBProducaoItens.Next;
  end;
//  Memo1.Lines.Add(#13#10);
  Memo1.Lines.Add('========================================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');
//  DM.TBProducaoItens.EnableControls;
  DM.TBProducao.Edit;
  DM.TBProducaoPRD_MPBAIXADA.Value:='N';
  DM.TBProducao.Post;
  BitBtn1.Enabled:=True;
end;

procedure TFormProducaoBaixar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormProducaoBaixar.FormCreate(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
end;

procedure TFormProducaoBaixar.FormShow(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass; //pq nao funciona aqui?
  Application.ProcessMessages;
  DM.TBProducaoItens.DisableControls;
  DM.TBProducaoItensComp.DisableControls;
  if SomenteMateriaPrima then
  begin
    if EfetuarBaixa=True then
    BaixarMateriaPrima else
    CancelarMateriaPrima;
  end else
  begin
    if EfetuarBaixa=True then
    Baixar else
    Cancelar;
  end;
  DM.TBProducaoItensComp.EnableControls;
  DM.TBProducaoItens.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormProducaoBaixar.PngBitBtn1Click(Sender: TObject);
begin
  if SaveTextFileDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveTextFileDialog1.FileName);
end;

end.
