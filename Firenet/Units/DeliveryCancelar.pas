unit DeliveryCancelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormDeliveryCancelar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    QYReceber: TFDQuery;
    TRReceber: TFDTransaction;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure EstornarItens(Item: Integer; Quantidade: Double);
  public
    { Public declarations }
  end;

var
  FormDeliveryCancelar: TFormDeliveryCancelar;

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormDeliveryCancelar.EstornarItens(Item: Integer; Quantidade: Double);
var Query: TFDQuery;
  Transaction: TFDTransaction;
begin
  Transaction:=TFDTransaction.Create(Self);
  Transaction.Connection:=DM.FDConnection1;
  Query:=TFDQuery.Create(Self);
  Query.Connection:=DM.FDConnection1;
  Query.Transaction:=Transaction;
  Query.SQL.Add('select PRC_CODIGO, PRC_ORDEM, PRC_PRODUTO, PRC_PRODUTOCOMP, PRC_QUANTIDADE, '+
                'PRO_COMPOSTO, PRO_NOME, PRO_PRECOCUSTO, PRO_PRECOCUSTOCOMP, PRO_UNIDADE from PRODUTOSCOMP '+
                'left join PRODUTOS on PRC_PRODUTOCOMP=PRO_CODIGO '+
                'where PRC_PRODUTO=:produto '+
                'order by PRC_ORDEM, PRO_NOME');
  Query.ParamByName('produto').AsInteger:=Item;
  Query.Open;
  Query.First;
  while not Query.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBProdutos.Open;
    Memo1.Lines.Add(
      AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
      AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',6,taRight)+' + '+
      AlignText(FloatToStr(Quantidade * Query.FieldByName('PRC_QUANTIDADE').AsExtended),' ',6,taRight)+' = '+
      AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended + (Quantidade * Query.FieldByName('PRC_QUANTIDADE').AsExtended)),' ',6,taRight));
    //faz a saida do estoque nos itens que compõe o produto composto.
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA DELIVERY';
    DM.TBEstoqueEST_PRODUTO.Value:=Query.FieldByName('PRC_PRODUTOCOMP').AsInteger;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value;
    DM.TBEstoqueEST_QUANTIDADE.Value:=Quantidade * Query.FieldByName('PRC_QUANTIDADE').AsExtended;
    DM.TBEstoqueEST_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
    DM.TBEstoqueEST_VENDEDOR.Value:=DM.UsuarioVendedor; //codigo do vendedor do usuario logado.
    DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
    DM.TBEstoqueEST_TRANSACAO.Value:='E';
    DM.TBEstoque.Post;
    Query.Next;
  end;
end;

procedure TFormDeliveryCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  {$REGION 'ESTORNOS NO ESTOQUE'}
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('ESTORNANDO ITENS NO ESTOQUE... ');
  Memo1.Lines.Add('======================================================================================');
  DM2.TBDeliverysItens.DisableControls;
  DM2.TBDeliverysItens.First;
  while not DM2.TBDeliverysItens.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //só estorna se for produto, se for serviço não estorna.
    if DM.TBProdutosPRO_TIPO.Value='P' then
    begin
      if DM.TBProdutosPRO_COMPOSTO.Value='S' then
      EstornarItens(DM2.TBDeliverysItensDLI_PRODUTO.Value, DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended) else
      begin
        Memo1.Lines.Add(
          AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+
          AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
          AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',6,taRight)+' + '+
          AlignText(DM2.TBDeliverysItensDLI_QUANTIDADE.AsString,' ',6,taRight)+' = '+
          AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended + (DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended)),' ',6,taRight));
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=1;
        DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO DELIVERY';
        DM.TBEstoqueEST_NUMDOCTO.Value:='DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
        DM.TBEstoqueEST_PRODUTO.Value:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_TRANSACAO.Value:='E';
        DM.TBEstoqueEST_VALORUNIT.Value:=DM2.TBDeliverysItensDLI_VALORUNIT.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM2.TBDeliverysDLV_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end;
    end else
    Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> serviço não é contabilizado.');

    DM2.TBDeliverysItens.Next;
  end;
  DM2.TBDeliverysItens.EnableControls;
  Memo1.Lines.Add('');
  {$ENDREGION}

  {$REGION 'ESTORNO FINANCEIRO'}
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('ESTORNANDO LANCAMENTOS NO FLUXO DE CAIXA...');
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('Num Docto      Forma Pagto              Valor  E/S');

  if DM2.TBDeliverysDLV_DINHEIRO.Value > 0 then
  begin
    GerarFluxoCaixa('DINHEIRO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'ESTORNO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'S','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_DINHEIRO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' DINHEIRO       '+AlignText(Format('%m',[DM2.TBDeliverysDLV_DINHEIRO.AsExtended]),' ',15,taRight)+'  SAIDA');
  end;

  if DM2.TBDeliverysDLV_CARTAO.Value > 0 then
  begin
    GerarFluxoCaixa('CARTAO DEBITO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'ESTORNO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'S','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_CARTAO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' CARTAO DEBITO  '+AlignText(Format('%m',[DM2.TBDeliverysDLV_CARTAO.AsExtended]),' ',15,taRight)+'  SAIDA');
  end;

  if DM2.TBDeliverysDLV_TROCO.Value > 0 then
  begin
    GerarFluxoCaixa('DINHEIRO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'ESTORNO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'E','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_TROCO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' TROCO          '+AlignText(Format('%m',[DM2.TBDeliverysDLV_TROCO.AsExtended]),' ',15,taRight)+'  ENTRADA');
  end;
  Memo1.Lines.Add('');
  {$ENDREGION}

  {$REGION 'ESTORNA PROGRAMA DE PONTOS'}
  //cancela os pontos do programa de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='S') then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO PONTOS NO PROGRAMA DE PONTOS...');
    Memo1.Lines.Add('====================================================================================');
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBDeliverysDLV_CLIENTE.Value;
    DM.TBClientes.Open;
    if not DM.TBClientes.IsEmpty then
    begin
      DM2.TBPontos.Insert;
      DM2.TBPontosPTS_DESCRICAO.Value:='ESTORNO AUTOMATICO DELIVERY '+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
      DM2.TBPontosPTS_NUMDOCTO.Value:='DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
      DM2.TBPontosPTS_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DM.TBClientesCLI_PONTOS.Value;
      DM2.TBPontosPTS_VALOR.Value:=DM2.TBDeliverysDLV_VALORTOTAL.Value;
      DM2.TBPontosPTS_ENTRADASAIDA.Value:='S';
      DM2.TBPontos.Post; //o post desta tabela atualiza o saldo na tabela clientes.
      Memo1.Lines.Add('Saldo anterior: '+DM2.TBPontosPTS_SALDOANTERIOR.AsString);
      Memo1.Lines.Add('Pontos cancelados nesta compra: '+DM2.TBPontosPTS_PONTOS.AsString);
      Memo1.Lines.Add('Saldo posterior: '+DM2.TBPontosPTS_SALDOPOSTERIOR.AsString);
      Memo1.Lines.Add('');
    end else
    Memo1.Lines.Add('Codigo '+IntToStr(DM2.TBDeliverysDLV_CLIENTE.Value)+' não encontrado no cadastro de clientes.');
    Memo1.Lines.Add('');
  end;
  {$ENDREGION}

  //cancela o delivery.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYS set DLV_STATUS=:status, DLV_USUARIO=:usuario, DLV_DTATUALIZACAO=:dtatualizacao where DLV_CODIGO='+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value));
  DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
  DM.QYAux.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
  DM.QYAux.ParamByName('status').AsString:='C';
  DM.QYAux.ExecSQL;

  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
