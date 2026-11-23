unit VendasCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, DB, PngBitBtn, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVendasCancelar = class(TForm)
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
  public
    { Public declarations }
  end;

var
  FormVendasCancelar: TFormVendasCancelar;

implementation
uses DataMod, Funcoes1, DataMod2;

{$R *.dfm}

procedure TFormVendasCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  if DM.TBVendasVED_MOVIMENTAESTOQUE.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('ESTORNANDO ITENS NO ESTOQUE... ');
    Memo1.Lines.Add('====================================================================================');
    DM.TBVendasItens.DisableControls;
    DM.TBVendasItens.First;
    while not DM.TBVendasItens.Eof do
    begin
      DM.TBProdutos.Close;
      if DM.TBVendasItensVEI_PRODUTOREAL.Value=0 then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
      DM.TBProdutos.Open;
      //só estorna se for produto, se for serviço não estorna.
      if DM.TBProdutosPRO_TIPO.Value='P' then
      begin
        if DM.TBVendasVED_ENTRADASAIDA.Value='S' then
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' + '+FloatToStr(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended))) else
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' - '+FloatToStr(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)));

        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
        DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO VENDAS';
        DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBVendasVED_CODIGO.Value);
        if DM.TBVendasItensVEI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value else
        begin
          DM.TBEstoqueEST_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value; //dá baixa de outro produto.
          DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTO.Value; //código do produto que originou a baixa do outro.
        end;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value * DM.TBVendasItensVEI_CONVERSAO.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
        if DM.TBVendasVED_ENTRADASAIDA.Value='S' then //se for saída, faz entrada.
        DM.TBEstoqueEST_TRANSACAO.Value:='E' else
        DM.TBEstoqueEST_TRANSACAO.Value:='S';
        if DM.TBVendasItensVEI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value else
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORTOTAL.Value/DM.TBEstoqueEST_QUANTIDADE.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end else
      Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> serviço não é contabilizado.');

      DM.TBVendasItens.Next;
    end;
    DM.TBVendasItens.EnableControls;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO DE ESTOQUE...');

  if DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO CONTAS A RECEBER EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_CODIGO');
    QYReceber.Open;
    QYReceber.First;
    while not QYReceber.Eof do
    begin
      Memo1.Lines.Add('Cancelando contas a receber numero '+QYReceber.FieldByName('REE_NUMDOCTO').AsString);
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=QYReceber.FieldByName('REE_CODIGO').AsInteger;
      DM.TBReceber.Open;
      DM.TBReceber.Edit;
      DM.TBReceberREE_STATUS.Value:='C'; //cancelado.
      DM.TBReceber.Post;
      QYReceber.Next;
    end;
    QYReceber.Close;

    QYReceber.SQL.Clear;
    QYReceber.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' and REE_STATUS=''B'' order by REE_CODIGO');
    QYReceber.Open;
    if not QYReceber.IsEmpty then
    begin
      Memo1.Lines.Add(#13#10);
      Memo1.Lines.Add('Os lançamentos abaixo já foram baixados. '+#13#10+'Verifique e faça os estornos necessários manualmente.');
    end;
    QYReceber.First;
    while not QYReceber.Eof do
    begin
      Memo1.Lines.Add('Verificar contas a receber numero '+QYReceber.FieldByName('REE_NUMDOCTO').AsString);
      QYReceber.Next;
    end;
    QYReceber.Close;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  //########################################################################################//
  //cancela a nota via sql para impedir de dar a mensagem de que não pode alterar uma venda já finalizada.
  QYReceber.Close;
  QYReceber.SQL.Clear;
  QYReceber.SQL.Add('update VENDAS set VED_STATUS=''C'', VED_USUARIO=:usuario, VED_DTATUALIZACAO=:dtatualizacao where VED_CODIGO=:codigo');
  QYReceber.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  QYReceber.ParamByName('usuario').AsString:=DM.UsuarioLogin;
  QYReceber.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
  QYReceber.ExecSQL;
  DM.CodigoMark:=DM.TBVendasVED_CODIGO.Value;
  DM.TBVendas.Close;
  DM.TBVendas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM.TBVendas.Open;

  //cancela os pontos do programa de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='S') and (DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S') and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
  begin
    Memo1.Lines.Add(#13#10);
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO PONTOS NO PROGRAMA DE PONTOS...');
    Memo1.Lines.Add('====================================================================================');
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    DM.TBClientes.Open;
    if not DM.TBClientes.IsEmpty then
    begin
      DM2.TBPontos.Insert;
      DM2.TBPontosPTS_DESCRICAO.Value:='ESTORNO AUTOMATICO VENDAS '+IntToStr(DM.TBVendasVED_CODIGO.Value);
      DM2.TBPontosPTS_NUMDOCTO.Value:=IntToStr(DM.TBVendasVED_CODIGO.Value);
      DM2.TBPontosPTS_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DM.TBClientesCLI_PONTOS.Value;
      DM2.TBPontosPTS_VALOR.Value:=DM.TBVendasVED_VALORTOTAL.Value;
      DM2.TBPontosPTS_ENTRADASAIDA.Value:='S';
      DM2.TBPontos.Post; //o post desta tabela atualiza o saldo na tabela clientes.
      Memo1.Lines.Add('Saldo anterior: '+DM2.TBPontosPTS_SALDOANTERIOR.AsString);
      Memo1.Lines.Add('Pontos cancelados nesta compra: '+DM2.TBPontosPTS_PONTOS.AsString);
      Memo1.Lines.Add('Saldo posterior: '+DM2.TBPontosPTS_SALDOPOSTERIOR.AsString);
      Memo1.Lines.Add('');
    end else
    Memo1.Lines.Add('Codigo '+IntToStr(DM.TBVendasVED_CLIENTE.Value)+' não encontrado no cadastro de clientes.');
  end;
  //...

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

procedure TFormVendasCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
