unit NotasCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, DBCtrls, ExtCtrls, PngBitBtn;

type
  TFormNotasCancelar = class(TForm)
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
  FormNotasCancelar: TFormNotasCancelar;

implementation
uses DataMod, Funcoes1, DataMod2;

{$R *.dfm}

procedure TFormNotasCancelar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;
  if DM.TBNotasNOT_MOVIMENTAESTOQUE.Value='S' then
  begin
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('ESTORNANDO ITENS NO ESTOQUE... ');
    Memo1.Lines.Add('====================================================================================');
    DM.TBNotasItens.DisableControls;
    DM.TBNotasItens.First;
    while not DM.TBNotasItens.Eof do
    begin
      DM.TBProdutos.Close;
      if DM.TBNotasItensNOI_PRODUTOREAL.Value=0 then
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTO.Value else
      DM.TBProdutos.ParamByName('codigo').AsInteger:=DM.TBNotasItensNOI_PRODUTOREAL.Value;
      DM.TBProdutos.Open;
      //só estorna se for produto, se for serviço não estorna.
      if DM.TBProdutosPRO_TIPO.Value='P' then
      begin
        if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' + '+FloatToStr(DM.TBNotasItensNOI_QUANTIDADE.AsExtended*DM.TBNotasItensNOI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended+(DM.TBNotasItensNOI_QUANTIDADE.AsExtended*DM.TBNotasItensNOI_CONVERSAO.AsExtended))) else
        Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+DM.TBProdutosPRO_ESTOQUEATUAL.AsString+' - '+FloatToStr(DM.TBNotasItensNOI_QUANTIDADE.AsExtended*DM.TBNotasItensNOI_CONVERSAO.AsExtended)+' = '+FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-(DM.TBNotasItensNOI_QUANTIDADE.AsExtended*DM.TBNotasItensNOI_CONVERSAO.AsExtended)));

        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM.TBNotasItensNOI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM.TBNotasNOT_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBNotasItensNOI_CONVERSAO.Value;
        DM.TBEstoqueEST_DESCRICAO.Value:='ESTORNO AUTOMATICO NOTA FISCAL';
        DM.TBEstoqueEST_NUMDOCTO.Value:='NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value);
        if DM.TBNotasItensNOI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_PRODUTO.Value:=DM.TBNotasItensNOI_PRODUTO.Value else
        begin
          DM.TBEstoqueEST_PRODUTO.Value:=DM.TBNotasItensNOI_PRODUTOREAL.Value; //dá baixa de outro produto.
          DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBNotasItensNOI_PRODUTO.Value; //código do produto que originou a baixa do outro.
        end;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM.TBNotasItensNOI_QUANTIDADE.Value * DM.TBNotasItensNOI_CONVERSAO.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM.TBNotasItensNOI_QUANTIDADE.Value;
        if DM.TBNotasNOT_ENTRADASAIDA.Value='S' then //se for saída, faz entrada.
        DM.TBEstoqueEST_TRANSACAO.Value:='E' else
        DM.TBEstoqueEST_TRANSACAO.Value:='S';
        if DM.TBNotasItensNOI_PRODUTOREAL.Value=0 then
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBNotasItensNOI_VALORUNIT.Value else
        DM.TBEstoqueEST_VALORUNIT.Value:=DM.TBNotasItensNOI_VALORTOTAL.Value/DM.TBEstoqueEST_QUANTIDADE.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM.TBNotasNOT_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end else
      Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> serviço não é contabilizado.');

      DM.TBNotasItens.Next;
    end;
    DM.TBNotasItens.EnableControls;
    Memo1.Lines.Add(#13#10);
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO DE ESTOQUE...');

  if DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    {$REGION 'Estorno financeiro'}
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO CONTAS A RECEBER EM ABERTO...');
    Memo1.Lines.Add('====================================================================================');
    DM.QYAux2.Close; //usado o qyaux2, pois o qyaux é utilizado na funcao de calcular totoais do boleto.
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value)+'/%')+' and REE_STATUS=''A'' order by REE_CODIGO');
    DM.QYAux2.Open;
    DM.QYAux2.First;
    while not DM.QYAux2.Eof do
    begin
      Memo1.Lines.Add('Cancelando contas a receber numero '+DM.QYAux2.FieldByName('REE_NUMDOCTO').AsString);
      DM.TBReceber.Close;
      DM.TBReceber.ParamByName('codigo').AsInteger:=DM.QYAux2.FieldByName('REE_CODIGO').AsInteger;
      DM.TBReceber.Open;
      DM.TBReceber.Edit;
      DM.TBReceberREE_STATUS.Value:='C'; //cancelado.
      DM.TBReceber.Post;
      DM.QYAux2.Next;
    end;
    DM.QYAux2.Close;

    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select * from RECEBER where REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value)+'/%')+' and REE_STATUS=''B'' order by REE_CODIGO');
    DM.QYAux.Open;
    if not DM.QYAux.IsEmpty then
    begin
      Memo1.Lines.Add(#13#10);
      Memo1.Lines.Add('Os lançamentos abaixo já foram baixados. '+#13#10+'Verifique e faça os estornos necessários manualmente.');
      DM.QYAux.First;
      while not DM.QYAux.Eof do
      begin
        Memo1.Lines.Add('Verificar contas a receber numero '+DM.QYAux.FieldByName('REE_NUMDOCTO').AsString);
        DM.QYAux.Next;
      end;
    end;
    DM.QYAux.Close;
    Memo1.Lines.Add(#13#10);
    {$ENDREGION}
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  //cancela os pontos do programa de pontos.
  if (DM.TBParametrosPAR_CALCULARPONTUACAO.Value='S') and (DM.TBNotasNOT_MOVIMENTAFINANCEIRO.Value='S') and (DM.TBNotasNOT_ENTRADASAIDA.Value='S') then
  begin
    Memo1.Lines.Add(#13#10);
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('CANCELANDO PONTOS NO PROGRAMA DE PONTOS...');
    Memo1.Lines.Add('====================================================================================');
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CLIENTE.Value;
    DM.TBClientes.Open;
    if not DM.TBClientes.IsEmpty then
    begin
      DM2.TBPontos.Insert;
      DM2.TBPontosPTS_DESCRICAO.Value:='ESTORNO AUTOMATICO NF '+IntToStr(DM.TBNotasNOT_CODIGO.Value);
      DM2.TBPontosPTS_NUMDOCTO.Value:='NF-'+IntToStr(DM.TBNotasNOT_CODIGO.Value);
      DM2.TBPontosPTS_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DM.TBClientesCLI_PONTOS.Value;
      DM2.TBPontosPTS_VALOR.Value:=DM.TBNotasNOT_VALORTOTAL.Value;
      DM2.TBPontosPTS_ENTRADASAIDA.Value:='S';
      DM2.TBPontos.Post; //o post desta tabela atualiza o saldo na tabela clientes.
      Memo1.Lines.Add('Saldo anterior: '+DM2.TBPontosPTS_SALDOANTERIOR.AsString);
      Memo1.Lines.Add('Pontos cancelados nesta compra: '+DM2.TBPontosPTS_PONTOS.AsString);
      Memo1.Lines.Add('Saldo posterior: '+DM2.TBPontosPTS_SALDOPOSTERIOR.AsString);
      Memo1.Lines.Add('');
    end else
    Memo1.Lines.Add('Codigo '+IntToStr(DM.TBNotasNOT_CLIENTE.Value)+' não encontrado no cadastro de clientes.');
  end;

  //cancela a nota via sql para impedir de dar a mensagem de que não pode alterar uma venda já finalizada.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update NOTAS set NOT_STATUS=:status, NOT_USUARIO=:usuario, NOT_DTATUALIZACAO=:dtatualizacao where NOT_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_CODIGO.Value;
  DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
  DM.QYAux.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
  DM.QYAux.ParamByName('status').AsString:='C';
  DM.QYAux.ExecSQL;

  DM.CodigoMark:=DM.TBNotasNOT_CODIGO.Value;
  DM.TBNotas.Close;
  DM.TBNotas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM.TBNotas.Open;

  //cancela a venda se tiver o codigo do pedido no cadastro da nota.
  if not DM.TBNotasNOT_VENDA.IsNull then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update VENDAS set VED_STATUS=:status, VED_USUARIO=:usuario, VED_DTATUALIZACAO=:dtatualizacao where VED_CODIGO=:codigo');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNotasNOT_VENDA.Value;
    DM.QYAux.ParamByName('usuario').AsString:=DM.UsuarioLogin;
    DM.QYAux.ParamByName('dtatualizacao').AsDate:=DM.ServerDate;
    DM.QYAux.ParamByName('status').AsString:='C';
    DM.QYAux.ExecSQL;

    DM.CodigoMark:=DM.TBNotasNOT_VENDA.Value;
    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=DM.CodigoMark;
    DM.TBVendas.Open;
  end;

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

procedure TFormNotasCancelar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
