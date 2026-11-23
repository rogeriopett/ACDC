unit DeliveryFinalizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFormDeliveryFinalizar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    //procedure BaixarItens(Item: Integer; Quantidade: Double);
  public
    { Public declarations }
  end;

var
  FormDeliveryFinalizar: TFormDeliveryFinalizar;

implementation
uses DataMod2, DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryFinalizar.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  {$REGION 'BAIXAS NO ESTOQUE'}
{  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('REALIZANDO AS BAIXAS NO ESTOQUE... ');
  Memo1.Lines.Add('======================================================================================');
  DM2.TBDeliverysItens.DisableControls;
  DM2.TBDeliverysItens.First;
  while not DM2.TBDeliverysItens.Eof do
  begin
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
    DM.TBProdutos.Open;
    //só baixa se for produto, se for serviço não baixa.
    if DM.TBProdutosPRO_TIPO.Value='P' then
    begin
      if DM.TBProdutosPRO_COMPOSTO.Value='S' then
      BaixarItens(DM2.TBDeliverysItensDLI_PRODUTO.Value, DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended) else
      begin
        Memo1.Lines.Add(
          AlignText(IntToStr(DM.TBProdutosPRO_CODIGO.Value),' ',6,taLeft)+' '+
          AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> '+
          AlignText(DM.TBProdutosPRO_ESTOQUEATUAL.AsString,' ',6,taRight)+' - '+
          AlignText(DM2.TBDeliverysItensDLI_QUANTIDADE.AsString,' ',6,taRight)+' = '+
          AlignText(FloatToStr(DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended-(DM2.TBDeliverysItensDLI_QUANTIDADE.AsExtended)),' ',6,taRight));
        DM.TBEstoque.Insert;
        DM.TBEstoqueEST_ALMOXARIFADO.Value:=DM2.TBDeliverysItensDLI_ALMOXARIFADO.Value;
        DM.TBEstoqueEST_CLIENTE.Value:=DM2.TBDeliverysDLV_CLIENTE.Value;
        DM.TBEstoqueEST_CONVERSAO.Value:=1;
        DM.TBEstoqueEST_DESCRICAO.Value:='BAIXA AUTOMATICA DELIVERY';
        DM.TBEstoqueEST_NUMDOCTO.Value:='DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
        DM.TBEstoqueEST_PRODUTO.Value:=DM2.TBDeliverysItensDLI_PRODUTO.Value;
        DM.TBEstoqueEST_QUANTIDADE.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_QUANTIDADEREAL.Value:=DM2.TBDeliverysItensDLI_QUANTIDADE.Value;
        DM.TBEstoqueEST_TRANSACAO.Value:='S';
        DM.TBEstoqueEST_VALORUNIT.Value:=DM2.TBDeliverysItensDLI_VALORUNIT.Value;
        DM.TBEstoqueEST_VENDEDOR.Value:=DM2.TBDeliverysDLV_VENDEDOR.Value;
        DM.TBEstoque.Post;
      end;
    end else
    Memo1.Lines.Add(AlignText(DM.TBProdutosPRO_NOME.Value,'.',50,taLeft)+': -> serviço não é contabilizado.');
    DM2.TBDeliverysItens.Next;
  end;
  DM2.TBDeliverysItens.EnableControls;
  Memo1.Lines.Add('');}
  {$ENDREGION}

  {$REGION 'LANÇAMENTO FINANCEIRO'}
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('GERANDO LANCAMENTOS NO FLUXO DE CAIXA...');
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('Num Docto      Forma Pagto              Valor  E/S');

  if DM2.TBDeliverysDLV_DINHEIRO.Value > 0 then
  begin
    GerarFluxoCaixa('DINHEIRO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'LANCAMENTO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'E','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_DINHEIRO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' DINHEIRO       '+AlignText(Format('%m',[DM2.TBDeliverysDLV_DINHEIRO.AsExtended]),' ',15,taRight)+'  ENTRADA');
  end;

  if DM2.TBDeliverysDLV_CARTAO.Value > 0 then
  begin
    GerarFluxoCaixa('CARTAO DEBITO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'LANCAMENTO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'E','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_CARTAO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' CARTAO DEBITO  '+AlignText(Format('%m',[DM2.TBDeliverysDLV_CARTAO.AsExtended]),' ',15,taRight)+'  ENTRADA');
  end;

  if DM2.TBDeliverysDLV_TROCO.Value > 0 then
  begin
    GerarFluxoCaixa('DINHEIRO','DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'LANCAMENTO AUTOMATICO DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),'S','DELIVERY',DM2.TBDeliverysCLI_NOME.Value,'',DM.UsuarioVendedor,DM.TBParametrosPAR_CONTAPADRAO.Value,DM2.TBDeliverysDLV_CLIENTE.Value,0,Date,DM2.TBDeliverysDLV_TROCO.AsExtended);
    Memo1.Lines.Add(AlignText('DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value),' ',14,taLeft)+' TROCO          '+AlignText(Format('%m',[DM2.TBDeliverysDLV_TROCO.AsExtended]),' ',15,taRight)+'  SAIDA');
  end;
  Memo1.Lines.Add('');
  {$ENDREGION}

  {$REGION 'LANÇA OS PONTOS NO PROGRAMA DE PONTOS'}
  if DM.TBParametrosPAR_CALCULARPONTUACAO.Value='S' then
  begin
    Memo1.Lines.Add('======================================================================================');
    Memo1.Lines.Add('CONTABILIZANDO PONTOS NO PROGRAMA DE PONTOS...');
    Memo1.Lines.Add('======================================================================================');
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM2.TBDeliverysDLV_CLIENTE.Value;
    DM.TBClientes.Open;
    if not DM.TBClientes.IsEmpty then
    begin
      DM2.TBPontos.Insert;
      DM2.TBPontosPTS_DESCRICAO.Value:='LANCAMENTO AUTOMATICO DELIVERY '+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
      DM2.TBPontosPTS_NUMDOCTO.Value:='DLV-'+IntToStr(DM2.TBDeliverysDLV_CODIGO.Value);
      DM2.TBPontosPTS_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
      DM2.TBPontosPTS_SALDOANTERIOR.Value:=DM.TBClientesCLI_PONTOS.Value;
      DM2.TBPontosPTS_VALOR.Value:=DM2.TBDeliverysDLV_VALORTOTAL.Value;
      DM2.TBPontosPTS_ENTRADASAIDA.Value:='E';
      DM2.TBPontos.Post; //o post desta tabela atualiza o saldo na tabela clientes.
      Memo1.Lines.Add('Saldo anterior: '+DM2.TBPontosPTS_SALDOANTERIOR.AsString);
      Memo1.Lines.Add('Pontos obtidos nesta compra: '+DM2.TBPontosPTS_PONTOS.AsString);
      Memo1.Lines.Add('Saldo posterior: '+DM2.TBPontosPTS_SALDOPOSTERIOR.AsString);
      Memo1.Lines.Add('');
    end else
    Memo1.Lines.Add('Codigo '+IntToStr(DM.TBNfeNFE_CLIENTE.Value)+' não encontrado no cadastro de clientes.');
    Memo1.Lines.Add('');
  end;
  {$ENDREGION}

  //finaliza o delivery.
  DM.CodigoMark:=DM2.TBDeliverysDLV_CODIGO.Value;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update DELIVERYS set DLV_STATUS=:status where DLV_CODIGO=:codigo');
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBDeliverysDLV_CODIGO.Value;
  DM.QYAux.ExecSQL;
  DM.QYAux.Close;

  DM2.TBDeliverys.Close;
  DM2.TBDeliverys.Open;
  Memo1.Lines.Add('======================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

procedure TFormDeliveryFinalizar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
