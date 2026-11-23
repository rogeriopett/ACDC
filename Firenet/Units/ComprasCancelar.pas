unit ComprasCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, PngBitBtn, DBCtrls, ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormComprasCancelar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    TRPagar: TFDTransaction;
    QYPagar: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasCancelar: TFormComprasCancelar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormComprasCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormComprasCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  {$REGION 'ESTORNOS NO ESTOQUE'}
  if DM.TBComprasCOM_MOVIMENTAESTOQUE.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('ESTORNANDO ITENS NO ESTOQUE... ');
    Memo1.Lines.Add('====================================================================================');
    DM.TBComprasItens.DisableControls;
    DM.TBComprasItens.First;
    while not DM.TBComprasItens.Eof do
    begin
      DM.TBProdutos.Close;
      if DM.TBComprasItensCOI_PRODUTOREAL.Value=0 then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTO.Value else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBComprasItensCOI_PRODUTOREAL.Value;
      DM.TBProdutos.Open;
      Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' - '+FloatToStr(DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-(DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_CONVERSAO.AsExtended)));

      DM.TBEstoque.Insert;
      DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBComprasItensCOI_ALMOXARIFADO.Value;
      DM.TBEstoqueEST_FORNECEDOR.Value:=DM.TBComprasCOM_FORNECEDOR.Value;
      DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBComprasItensCOI_CONVERSAO.Value;
      DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO CONTROLE DE COMPRAS';
      DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBComprasCOM_CODIGO.Value);
      if DM.TBComprasItensCOI_PRODUTOREAL.Value=0 then
      DM.TBEstoqueEST_PRODUTO.Value:=DM.TBComprasItensCOI_PRODUTO.Value else
      begin
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBComprasItensCOI_PRODUTOREAL.Value; //dá baixa de outro produto.
        DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBComprasItensCOI_PRODUTO.Value; //código do produto que originou a baixa do outro.
      end;
      DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value * DM.TBComprasItensCOI_CONVERSAO.Value;
      DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value;
      DM.TBEstoqueEST_TRANSACAO.Value:='S';
      //1
      //2
      if DM.TBComprasItensCOI_PRODUTOREAL.Value=0 then
      DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBComprasItensCOI_VALORUNIT.Value+(DM.TBComprasItensCOI_VALORIPI.Value / DM.TBComprasItensCOI_QUANTIDADE.Value) else //divide o total do IPI pela quantidade pra saber o valor do IPI unitário.
      DM.TBEstoqueEST_VALORUNIT.Value:=(DM.TBComprasItensCOI_VALORTOTAL.Value+DM.TBComprasItensCOI_VALORIPI.Value) / DM.TBEstoqueEST_QUANTIDADE.Value; //divide o total + IPI pela quantidade.
      // nao tem vendedor. DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBComprasCOM_VENDEDOR.Value;
      DM.TBEstoque.Post;
      DM.TBComprasItens.Next;
    end;
    DM.TBComprasItens.EnableControls;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO DE ESTOQUE...');
  {$ENDREGION}
  if DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO CONTAS A PAGAR EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    QYPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR where PAG_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBComprasCOM_CODIGO.Value)+'/%')+' and PAG_STATUS=''A'' order by PAG_CODIGO');
    QYPagar.Open;
    QYPagar.First;
    while not QYPagar.Eof do
    begin
      Memo1.Lines.Add('Cancelando contas a pagar numero '+QYPagar.FieldByName('PAG_NUMDOCTO').AsString);
      DM.TBPagar.Close;
      DM.TBPagar.ParamByName('codigo').AsInteger:=QYPagar.FieldByName('PAG_CODIGO').AsInteger;
      DM.TBPagar.Open;
      DM.TBPagar.Edit;
      DM.TBPagarPAG_STATUS.Value:='C'; //cancelado.
      DM.TBPagar.Post;
      QYPagar.Next;
    end;
    QYPagar.Close;

    QYPagar.SQL.Clear;
    QYPagar.SQL.Add('select * from PAGAR where PAG_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBComprasCOM_CODIGO.Value)+'/%')+' and PAG_STATUS=''B'' order by PAG_CODIGO');
    QYPagar.Open;
    if not QYPagar.IsEmpty then
    begin
      Memo1.Lines.Add(#13#10);
      Memo1.Lines.Add('Os lançamentos abaixo já foram baixados. '+#13#10+'Verifique e faça os estornos necessários manualmente.');
    end;
    QYPagar.First;
    while not QYPagar.Eof do
    begin
      Memo1.Lines.Add('Verificar contas a pagar numero '+QYPagar.FieldByName('PAG_NUMDOCTO').AsString);
      QYPagar.Next;
    end;

    //########################################################################################//
    //cancela a nota via sql para impedir de dar a mensagem de que não pode alterar uma venda já finalizada.
    QYPagar.Close;
    QYPagar.SQL.Clear;
    QYPagar.SQL.Add('update COMPRAS set COM_STATUS=''C'', COM_USUARIO=:usuario, COM_DTATUALIZACAO=:dtatualizacao where COM_CODIGO='+IntToStr(DM.TBComprasCOM_CODIGO.Value));
    QYPagar.ParamByName('usuario').AsString:=DM.UsuarioLogin;
    QYPagar.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
    QYPagar.ExecSQL;

    DM.TBCompras.Refresh;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
