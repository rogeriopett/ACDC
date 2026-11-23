unit VendasFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, PngBitBtn, Data.DB;

type
  TFormVendasFinalizar = class(TForm)
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasFinalizar: TFormVendasFinalizar;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;

{$R *.dfm}

procedure TFormVendasFinalizar.FormShow(Sender: TObject);
var ValorParcela, ValorParcelaSemDesconto, SomaParcelas, SomaParcelasSemDesconto, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  {$REGION 'BAIXAS NO ESTOQUE'}
  if DM.TBVendasVED_MOVIMENTAESTOQUE.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('REALIZANDO AS BAIXAS/ENTRADAS NO ESTOQUE... ');
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
      //só baixa se for produto, se for serviço não baixa.
      if DM.TBProdutosPRO_TIPO.Value='P' then
      begin
        if DM.TBVendasVED_ENTRADASAIDA.Value='S' then
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' - '+FloatToStr(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended))) else
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' + '+FloatToStr(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+(DM.TBVendasItensVEI_QUANTIDADE.AsExtended*DM.TBVendasItensVEI_CONVERSAO.AsExtended)));

        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
        DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA VENDAS';
        DM.TBEstoqueEST_NUMDOCTO.Value:=IntToStr(DM.TBVendasVED_CODIGO.Value);
        if DM.TBVendasItensVEI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value else
        begin
          DM.TBEstoqueEST_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value; //dá baixa de outro produto.
          DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTO.Value; //código do produto que originou a baixa do outro.
        end;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value * DM.TBVendasItensVEI_CONVERSAO.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
        if DM.TBVendasVED_ENTRADASAIDA.Value='S' then
        DM.TBEstoqueEST_TRANSACAO.Value:='S' else
        DM.TBEstoqueEST_TRANSACAO.Value:='E';
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
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO DE ESTOQUE.');
  {$ENDREGION}

  if DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CONDICAO.Value;
    DM.TBCondicoes.Open;
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('GERANDO LANCAMENTOS NO CONTAS A RECEBER E FLUXO DE CAIXA...');
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('Condição: '+IntToStr(DM.TBVendasVED_CONDICAO.Value)+' - '+DM.TBVendasCPG_DESCRICAO.Value);
    Memo1.Lines.Add('------------------------------------------------------------------------------------');
    Memo1.Lines.Add('Num docto   Parcela Vencimento          Valor              %  Status');

    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;


    ValorTotal:=DM.TBVendasVED_VALORTOTAL.AsExtended;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-DM.TBVendasVED_TOTALICMSST.AsExtended;

    //Se soma FRETE, mesmo caso acima.
    if DM.TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-DM.TBVendasVED_VALORFRETE.AsExtended;

    SomaParcelas:=0;
    SomaParcelasSemDesconto:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM.TBVendasVED_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM.TBVendasVED_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM.TBVendasVED_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM.TBVendasVED_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM.TBVendasVED_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM.TBVendasVED_DIAPREFERENCIAL.Value);
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      begin
        ValorParcela:=ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
        ValorParcelaSemDesconto:=(ValorTotal+DM.TBVendasVED_DESCVALOR.AsExtended)/DM.TBCondicoesCPG_TOTALPARCELAS.Value; //para poder cobrar o desconto quando passar do vencimento, em forma de multa.
      end else
      begin
        ValorParcela:=(ValorTotal/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
        ValorParcelaSemDesconto:=((ValorTotal+DM.TBVendasVED_DESCVALOR.AsExtended)/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
      end;

      //adiciona valor do boleto.
      if DM.TBVendasVED_FORMAPAGTO.Value='BOLETO' then
      begin
        ValorParcela:=ValorParcela+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
        ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
      end;

      //ST ou Frete na primeira parcela?.
      if ParcelaAtual=1 then
      begin
        if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        begin
          ValorParcela:=ValorParcela+DM.TBVendasVED_TOTALICMSST.AsExtended;
          ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM.TBVendasVED_TOTALICMSST.AsExtended;
        end;

        if DM.TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
        begin
          ValorParcela:=ValorParcela+DM.TBVendasVED_VALORFRETE.AsExtended;
          ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM.TBVendasVED_VALORFRETE.AsExtended;
        end;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      ValorParcelaSemDesconto:=Decimais(ValorParcelaSemDesconto,2);
      SomaParcelas:=SomaParcelas+ValorParcela;
      SomaParcelasSemDesconto:=SomaParcelasSemDesconto+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > DM.TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela-(SomaParcelas-DM.TBVendasVED_VALORTOTAL.AsExtended) else
        if SomaParcelas < DM.TBVendasVED_VALORTOTAL.Value then ValorParcela:=ValorParcela+(DM.TBVendasVED_VALORTOTAL.AsExtended-SomaParcelas);
        if SomaParcelasSemDesconto > DM.TBVendasVED_VALORTOTAL.Value+DM.TBVendasVED_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto-(SomaParcelasSemDesconto-(DM.TBVendasVED_VALORTOTAL.AsExtended+DM.TBVendasVED_DESCVALOR.AsExtended)) else
        if SomaParcelasSemDesconto < DM.TBVendasVED_VALORTOTAL.Value+DM.TBVendasVED_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto+((DM.TBVendasVED_VALORTOTAL.AsExtended+DM.TBVendasVED_DESCVALOR.AsExtended)-SomaParcelasSemDesconto);
      end;

      //gera os lançamentos no contas a receber.
      if (Vencimento=DM.TBVendasVED_DTEMISSAO.Value) and (DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value='S') then //se vencimento é igual (dias=0), então a qtde de dias é zero.
      begin
        GerarReceber(
          DM.TBVendasVED_FORMAPAGTO.Value,
          IntToStr(DM.TBVendasVED_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
          IntToStr(DM.TBVendasVED_CODIGO.Value),
          'LANCAMENTO AUTOMATICO VENDAS '+IntToStr(DM.TBVendasVED_CODIGO.Value),
          'B',
          DateToStr(Vencimento),
          'T',
          DM.TBVendasVED_CLIENTE.Value,
          DM.TBVendasVED_VENDEDOR.Value,
          DM.TBVendasVED_REPRESENTANTE.Value,
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        GerarFluxoCaixa(DM.TBVendasVED_FORMAPAGTO.Value,IntToStr(DM.TBVendasVED_CODIGO.Value),'LANCAMENTO AUTOMATICO VENDAS '+IntToStr(DM.TBVendasVED_CODIGO.Value),'E','PEDIDO DE VENDAS',DM.TBVendasVED_NOME.Value,'',DM.UsuarioVendedor,DM.TBCondicoesCPG_CONTA.Value,DM.TBVendasVED_CLIENTE.Value,0,Date,ValorParcela);
        Memo1.Lines.Add(AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',10,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  BAIXADO');
      end else
      begin
        GerarReceber(
          DM.TBVendasVED_FORMAPAGTO.Value,
          IntToStr(DM.TBVendasVED_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
          IntToStr(DM.TBVendasVED_CODIGO.Value),
          'LANCAMENTO AUTOMATICO VENDAS '+IntToStr(DM.TBVendasVED_CODIGO.Value),
          'A',
          '',
          '',
          DM.TBVendasVED_CLIENTE.Value,
          DM.TBVendasVED_VENDEDOR.Value,
          DM.TBVendasVED_REPRESENTANTE.Value,
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        Memo1.Lines.Add(AlignText(IntToStr(DM.TBVendasVED_CODIGO.Value),' ',10,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  ABERTO');
      end;

      DM.TBCondicoesItens.Next;
    end;
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA.');

  //########################################################################################//
  //########################################################################################//
  //finaliza a nota.
  DM.TBVendas.Edit;
  DM.TBVendasVED_STATUS.Value:='F';
  DM.TBVendasVED_BAIXADATA.Value:=DM.ServerDate;
  DM.TBVendasVED_BAIXAPOR.Value:=DM.UsuarioLogin;
  DM.TBVendas.Post;

  //faz o calculo do programa de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='S') and (DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value='S') and (DM.TBVendasVED_ENTRADASAIDA.Value='S') then
  begin
    Memo1.Lines.Add(#13#10);
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CALCULANDO PONTOS NO PROGRAMA DE PONTOS...');
    Memo1.Lines.Add('====================================================================================');
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    DM.TBClientes.Open;
    if not DM.TBClientes.IsEmpty then
    begin
      DM2.TBPontos.Insert;
      DM2.TBPontosPTS_DESCRICAO.Value:='LANCAMENTO AUTOMATICO VENDAS '+IntToStr(DM.TBVendasVED_CODIGO.Value);
      DM2.TBPontosPTS_NUMDOCTO.Value:=IntToStr(DM.TBVendasVED_CODIGO.Value);
      DM2.TBPontosPTS_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DM.TBClientesCLI_PONTOS.Value;
      DM2.TBPontosPTS_VALOR.Value:=DM.TBVendasVED_VALORTOTAL.Value;
      DM2.TBPontosPTS_ENTRADASAIDA.Value:='E';
      DM2.TBPontos.Post; //o post desta tabela atualiza o saldo na tabela clientes.
      Memo1.Lines.Add('Saldo anterior: '+DM2.TBPontosPTS_SALDOANTERIOR.AsString);
      Memo1.Lines.Add('Pontos obtidos nesta compra: '+DM2.TBPontosPTS_PONTOS.AsString);
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

procedure TFormVendasFinalizar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
