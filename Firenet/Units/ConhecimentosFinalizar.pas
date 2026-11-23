unit ConhecimentosFinalizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, DBCtrls, ExtCtrls, DB;

type
  TFormConhecimentosFinalizar = class(TForm)
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
  FormConhecimentosFinalizar: TFormConhecimentosFinalizar;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosFinalizar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosFinalizar.FormShow(Sender: TObject);
var ValorParcela, ValorParcelaSemDesconto, SomaParcelas, SomaParcelasSemDesconto, ValorTotal: Currency;
  ParcelaAtual, Cliente, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
  NumDocto: AnsiString;
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  if DM2.TBCteCTE_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CONDICAO.Value;
    DM.TBCondicoes.Open;
    //define o cliente que irá pagar a conta.
    if DM2.TBCteCTE_PAGOPOR.Value='R' then
    Cliente:=DM2.TBCteCTE_REMETENTE.Value else
    Cliente:=DM2.TBCteCTE_DESTINATARIO.Value;
    //...
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('GERANDO LANCAMENTOS NO CONTAS A RECEBER E FLUXO DE CAIXA...');
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('Condição: '+IntToStr(DM2.TBCteCTE_CONDICAO.Value)+' - '+DM2.TBCteCPG_DESCRICAO.Value);
    Memo1.Lines.Add('------------------------------------------------------------------------------------');
    Memo1.Lines.Add('Num docto Parcela Vencimento          Valor              %  Status');

    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;

    ValorTotal:=DM2.TBCteCTE_VALORTOTAL.AsExtended;

    //Se soma ST na primeira parcela, pega o total e retira o valor do ST, senão fica com o total+ST.
    if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-DM2.TBCteCTE_TOTALICMSST.AsExtended;

    //Se soma FRETE, mesmo caso acima.
    if DM.TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
    ValorTotal:=ValorTotal-DM2.TBCteCTE_VALORFRETE.AsExtended;

    SomaParcelas:=0;
    SomaParcelasSemDesconto:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      NumDocto:='CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight);
      //gera data de vencimento.
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM2.TBCteCTE_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM2.TBCteCTE_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM2.TBCteCTE_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM2.TBCteCTE_DIAPREFERENCIAL.Value);
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      begin
        ValorParcela:=ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
        ValorParcelaSemDesconto:=(ValorTotal+DM2.TBCteCTE_DESCVALOR.AsExtended)/DM.TBCondicoesCPG_TOTALPARCELAS.Value; //para poder cobrar o desconto quando passar do vencimento, em forma de multa.
      end else
      begin
        ValorParcela:=(ValorTotal/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
        ValorParcelaSemDesconto:=((ValorTotal+DM2.TBCteCTE_DESCVALOR.AsExtended)/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
      end;

      //adiciona valor do boleto.
      if DM2.TBCteCTE_FORMAPAGTO.Value='BOLETO' then
      begin
        ValorParcela:=ValorParcela+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
        ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
      end;

      //ST ou Frete na primeira parcela?.
      if ParcelaAtual=1 then
      begin
        if DM.TBParametrosPAR_STPRIMEIRAPARCELA.Value='S' then
        begin
          ValorParcela:=ValorParcela+DM2.TBCteCTE_TOTALICMSST.AsExtended;
          ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM2.TBCteCTE_TOTALICMSST.AsExtended;
        end;

        if DM.TBParametrosPAR_FRETEPRIMEIRAPARCELA.Value='S' then
        begin
          ValorParcela:=ValorParcela+DM2.TBCteCTE_VALORFRETE.AsExtended;
          ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM2.TBCteCTE_VALORFRETE.AsExtended;
        end;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      ValorParcelaSemDesconto:=Decimais(ValorParcelaSemDesconto,2);
      SomaParcelas:=SomaParcelas+ValorParcela;
      SomaParcelasSemDesconto:=SomaParcelasSemDesconto+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > DM2.TBCteCTE_VALORTOTAL.Value then ValorParcela:=ValorParcela-(ValorTotal-DM2.TBCteCTE_VALORTOTAL.AsExtended) else
        if SomaParcelas < DM2.TBCteCTE_VALORTOTAL.Value then ValorParcela:=ValorParcela+(DM2.TBCteCTE_VALORTOTAL.AsExtended-ValorTotal);
        if SomaParcelasSemDesconto > DM2.TBCteCTE_VALORTOTAL.Value+DM2.TBCteCTE_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto-(ValorTotal-(DM2.TBCteCTE_VALORTOTAL.AsExtended+DM2.TBCteCTE_DESCVALOR.AsExtended)) else
        if SomaParcelasSemDesconto < DM2.TBCteCTE_VALORTOTAL.Value+DM2.TBCteCTE_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto+((DM2.TBCteCTE_VALORTOTAL.AsExtended+DM2.TBCteCTE_DESCVALOR.AsExtended)-ValorTotal);
      end;

      //gera os lançamentos no contas a receber.
      if (Vencimento=DM2.TBCteCTE_DTEMISSAO.Value) and (DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value='S') then //se vencimento é igual (dias=0), então a qtde de dias é zero.
      begin
        GerarReceber(
          DM2.TBCteCTE_FORMAPAGTO.Value,
          NumDocto,
          '0',
          'LANCAMENTO AUTOMATICO CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value),
          'B',
          DateToStr(Vencimento),
          'T',
          Cliente,
          DM2.TBCteCTE_VENDEDOR.Value,
          DM2.TBCteCTE_VENDEDOR.Value, //representante.
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        if DM2.TBCteCTE_PAGOPOR.Value='R' then
        GerarFluxoCaixa(DM2.TBCteCTE_FORMAPAGTO.Value,NumDocto,'LANCAMENTO AUTOMATICO CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value),'E','CONHECIMENTO DE TRANSPORTES',DM2.TBCteCTE_REMNOME.Value,'',DM2.TBCteCTE_VENDEDOR.Value,DM.TBCondicoesCPG_CONTA.Value,DM2.TBCteCTE_REMETENTE.Value,0,Date,ValorParcela) else
        GerarFluxoCaixa(DM2.TBCteCTE_FORMAPAGTO.Value,NumDocto,'LANCAMENTO AUTOMATICO CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value),'E','CONHECIMENTO DE TRANSPORTES',DM2.TBCteCTE_DESNOME.Value,'',DM2.TBCteCTE_VENDEDOR.Value,DM.TBCondicoesCPG_CONTA.Value,DM2.TBCteCTE_DESTINATARIO.Value,0,Date,ValorParcela);
        Memo1.Lines.Add(AlignText(IntToStr(DM2.TBCteCTE_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  BAIXADO');
      end else
      begin
        GerarReceber(
          DM2.TBCteCTE_FORMAPAGTO.Value,
          NumDocto,
          '0',
          'LANCAMENTO AUTOMATICO CTE-'+IntToStr(DM2.TBCteCTE_CODIGO.Value),
          'A',
          '',
          '',
          Cliente,
          DM2.TBCteCTE_VENDEDOR.Value,
          DM2.TBCteCTE_VENDEDOR.Value, //representante.
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        Memo1.Lines.Add(AlignText(IntToStr(DM2.TBCteCTE_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  ABERTO');
      end;
      DM.TBCondicoesItens.Next;
    end;
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA...');

  //########################################################################################//
  //finaliza a nota.
  DM.CodigoMark:=DM2.TBCteCTE_CODIGO.Value;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update CTE set CTE_STATUS=:status, CTE_BAIXADATA=:baixadata, CTE_BAIXAPOR=:baixapor where CTE_CODIGO=:codigo');
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.ParamByName('baixadata').AsDate:=DM.ServerDate;
  DM.QYAux.ParamByName('baixapor').AsString:=DM.UsuarioLogin;
  DM.QYAux.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CODIGO.Value;
  DM.QYAux.ExecSQL;

  DM2.TBCte.Close;
  DM2.TBCte.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM2.TBCte.Open;
  //...

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.
