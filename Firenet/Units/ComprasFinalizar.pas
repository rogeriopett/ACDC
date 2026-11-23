unit ComprasFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls, PngBitBtn;

type
  TFormComprasFinalizar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasFinalizar: TFormComprasFinalizar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure GerarPagar(TipoDocto, NumDocto, Descricao, Status, Pagamento, TipoBaixa: String;
  Fornecedor, Despesa, Conta, ParcelaNum, ParcelaQtde: Integer; Data, Vencimento: TDate; Valor: Currency);
begin
  DM.TBPagar.Insert;
  DM.TBPagarPAG_CONTA.Value:=Conta;
  DM.TBPagarPAG_DESCRICAO.Value:=Descricao;
  DM.TBPagarPAG_DESPESA.Value:=Despesa;
  DM.TBPagarPAG_DTEMISSAO.Value:=Data;
  DM.TBPagarPAG_DTVENCIMENTO.Value:=Vencimento;
  DM.TBPagarPAG_DTJUROSAPOS.Value:=Vencimento; //mesma data. (data do vencimento + qtde dias = data juros após).
  DM.TBPagarPAG_FORNECEDOR.Value:=Fornecedor;
  DM.TBPagarPAG_NUMDOCTO.Value:=NumDocto;
  DM.TBPagarPAG_PARCELANUM.Value:=ParcelaNum;
  DM.TBPagarPAG_PARCELAQTDE.Value:=ParcelaQtde;
  DM.TBPagarPAG_STATUS.Value:=Status;
  DM.TBPagarPAG_TIPOBAIXA.Value:=TipoBaixa;
  DM.TBPagarPAG_TIPODOCTO.Value:=TipoDocto;
  DM.TBPagarPAG_VALOR.Value:=Valor;
  if Status='B' then
  begin
    DM.TBPagarPAG_VALORPAGO.Value:=Valor;
    DM.TBPagarPAG_DTPAGAMENTO.Value:=StrToDate(Pagamento,FS);
    DM.TBPagarPAG_BAIXADOPOR.Value:=DM.UsuarioLogin;
  end;
  DM.TBPagar.Post;
end;

procedure GerarFluxoCaixa(TipoDocto, NumDocto, Descricao, ES, Origem, ClienteNome, FornecedorNome: String; Vendedor, Conta, Cliente, Fornecedor: Integer; Data: TDate; Valor: Currency);
begin
  DM.TBCaixa.Insert;
  DM.TBCaixaCAI_CONTA.Value:=Conta;
  DM.TBCaixaCAI_DATA.Value:=Data;
  DM.TBCaixaCAI_DESCRICAO.Value:=Descricao;
  DM.TBCaixaCAI_ENTRADASAIDA.Value:=ES;
  DM.TBCaixaCAI_NUMDOCTO.Value:=NumDocto;
  DM.TBCaixaCAI_ORIGEM.Value:=Origem;
  DM.TBCaixaCAI_TIPODOCTO.Value:=TipoDocto;
  DM.TBCaixaCAI_VALOR.Value:=Valor;
  DM.TBCaixaCAI_VENDEDOR.Value:=Vendedor;
  if Cliente<>0 then DM.TBCaixaCAI_CLIENTE.Value:=Cliente;
  DM.TBCaixaCAI_CLIENTENOME.Value:=ClienteNome;
  if Fornecedor<>0 then DM.TBCaixaCAI_FORNECEDOR.Value:=Fornecedor;
  DM.TBCaixaCAI_FORNECEDORNOME.Value:=FornecedorNome;
  DM.TBCaixa.Post;
end;

procedure TFormComprasFinalizar.FormShow(Sender: TObject);
var ValorParcela, SomaParcelas, ValorTotal: Currency;
  ParcelaAtual: Integer;
  Vencimento: TDate;
  A,M,D: Word;
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  {$REGION 'ENTRADAS NO ESTOQUE'}
  if DM.TBComprasCOM_MOVIMENTAESTOQUE.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('REALIZANDO AS ENTRADAS NO ESTOQUE... ');
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
      Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' + '+FloatToStr(DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+(DM.TBComprasItensCOI_QUANTIDADE.AsExtended*DM.TBComprasItensCOI_CONVERSAO.AsExtended)));

      DM.TBEstoque.Insert;
      DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBComprasItensCOI_ALMOXARIFADO.Value;
      DM.TBEstoqueEST_FORNECEDOR.Value:=DM.TBComprasCOM_FORNECEDOR.Value;
      DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBComprasItensCOI_CONVERSAO.Value;
      DM.TBEstoqueEST_DESCRICAO.Value:='ENTRADA AUTOMATICA COMPRAS';
      DM.TBEstoqueEST_NUMDOCTO.Value:='PC-'+IntToStr(DM.TBComprasCOM_CODIGO.Value);
      if DM.TBComprasItensCOI_PRODUTOREAL.Value=0 then
      DM.TBEstoqueEST_PRODUTO.Value:=DM.TBComprasItensCOI_PRODUTO.Value else
      begin
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBComprasItensCOI_PRODUTOREAL.Value; //dá baixa de outro produto.
        DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBComprasItensCOI_PRODUTO.Value; //código do produto que originou a baixa do outro.
      end;
      DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value * DM.TBComprasItensCOI_CONVERSAO.Value;
      DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBComprasItensCOI_QUANTIDADE.Value;
      DM.TBEstoqueEST_TRANSACAO.Value:='E';
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
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO DE ESTOQUE');
  {$ENDREGION}

  if DM.TBComprasCOM_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBComprasCOM_CONDICAO.Value;
    DM.TBCondicoes.Open;
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('GERANDO LANCAMENTOS NO CONTAS A PAGAR E FLUXO DE CAIXA...');
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('Condição: '+IntToStr(DM.TBComprasCOM_CONDICAO.Value)+' - '+DM.TBComprasCPG_DESCRICAO.Value);
    Memo1.Lines.Add('------------------------------------------------------------------------------------');
    Memo1.Lines.Add('Num docto Parcela Vencimento          Valor              %  Status');

    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    ValorTotal:=DM.TBComprasCOM_VALORTOTAL.AsExtended;
    SomaParcelas:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      Vencimento:=DM.TBComprasCOM_NOTADATA.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM.TBComprasCOM_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM.TBComprasCOM_DIAPREFERENCIAL.Value);
      end;

      //nao verificado aqui, pois o vencimento pode vir do fornecedor.
      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
//      if DM.TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
//      begin
//        if DayOfWeek(Vencimento)=1 then //domingo
//        Vencimento:=Vencimento + 1 else
//        if DayOfWeek(Vencimento)=7 then //sabado.
//        Vencimento:=Vencimento + 2;
//      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      ValorParcela:=DM.TBComprasCOM_VALORTOTAL.AsExtended/ DM.TBCondicoesCPG_TOTALPARCELAS.Value else
      ValorParcela:=(DM.TBComprasCOM_VALORTOTAL.AsExtended/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;

      ValorParcela:=Decimais(ValorParcela,2);
      SomaParcelas:=SomaParcelas+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then //verifica o valor da ultima parcela.
      begin
        if SomaParcelas > DM.TBComprasCOM_VALORTOTAL.Value then ValorParcela:=ValorParcela-(ValorTotal-DM.TBComprasCOM_VALORTOTAL.AsExtended);
        if SomaParcelas < DM.TBComprasCOM_VALORTOTAL.Value then ValorParcela:=ValorParcela+(DM.TBComprasCOM_VALORTOTAL.AsExtended-ValorTotal);
      end;

      //gera os lançamentos no contas a pagar.
      if (Vencimento=DM.TBComprasCOM_NOTADATA.Value) and (DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value='S') then //se vencimento é igual (dias=0), então a qtde de dias é zero.
      begin
        GerarPagar(DM.TBComprasCOM_FORMAPAGTO.Value,IntToStr(DM.TBComprasCOM_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),'LANCAMENTO AUTOMATICO COMPRAS',
        'B',DateToStr(Vencimento),'T',DM.TBComprasCOM_FORNECEDOR.Value,DM.TBParametrosPAR_DESPESAPADRAO.Value,
        DM.TBCondicoesCPG_CONTA.Value,ParcelaAtual,DM.TBCondicoesCPG_TOTALPARCELAS.Value,Date,Vencimento,ValorParcela);

        GerarFluxoCaixa(DM.TBComprasCOM_FORMAPAGTO.Value,IntToStr(DM.TBComprasCOM_CODIGO.Value),'LANCAMENTO AUTOM. CONTROLE DE COMPRAS','S','CONTROLE DE COMPRAS','',DM.TBComprasCOM_NOME.Value,DM.UsuarioVendedor,DM.TBCondicoesCPG_CONTA.Value,0,DM.TBComprasCOM_FORNECEDOR.Value,Date,ValorParcela);
        Memo1.Lines.Add(AlignText(IntToStr(DM.TBComprasCOM_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  BAIXADO');
      end else
      begin
        GerarPagar(DM.TBComprasCOM_FORMAPAGTO.Value,IntToStr(DM.TBComprasCOM_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),'LANCAMENTO AUTOMATICO COMPRAS',
        'A','','',DM.TBComprasCOM_FORNECEDOR.Value,DM.TBParametrosPAR_DESPESAPADRAO.Value,
        DM.TBCondicoesCPG_CONTA.Value,ParcelaAtual,DM.TBCondicoesCPG_TOTALPARCELAS.Value,Date,Vencimento,ValorParcela);
        Memo1.Lines.Add(AlignText(IntToStr(DM.TBComprasCOM_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  ABERTO');
      end;
      DM.TBCondicoesItens.Next;
    end;

  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  //########################################################################################//
  // FINALIZA A NOTA                                                                        //
  //########################################################################################//
  DM.TBCompras.Edit;
  DM.TBComprasCOM_STATUS.Value:='F';
  DM.TBComprasCOM_BAIXADATA.Value:=DM.ServerDate;
  DM.TBComprasCOM_BAIXAPOR.Value:=DM.UsuarioLogin;
  DM.TBCompras.Post;
  BitBtn1.Enabled:=True;
end;

procedure TFormComprasFinalizar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
