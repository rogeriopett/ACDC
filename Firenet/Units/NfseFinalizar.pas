unit NfseFinalizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormNfseFinalizar = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    DBText1: TDBText;
    Memo1: TMemo;
    BitBtn1: TPngBitBtn;
    QYNfse: TFDQuery;
    TRNfse: TFDTransaction;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseFinalizar: TFormNfseFinalizar;

implementation
uses DataMod, DataMod2, Funcoes1, FuncoesFirenet, Nfse;

{$R *.dfm}

procedure TFormNfseFinalizar.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormNfseFinalizar.FormShow(Sender: TObject);
var ValorParcela, ValorParcelaSemDesconto, SomaParcelas, SomaParcelasSemDesconto, ValorTotal: Currency;
  ParcelaAtual, DiasPrimeiraParcela: Integer;
  Vencimento: TDate;
  A,M,D: Word;
begin
  Application.ProcessMessages;
  Memo1.Lines.Clear;

  if DM.TBNfseNFS_MOVIMENTAFINANCEIRO.Value='S' then
  begin
    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CONDICAO.Value;
    DM.TBCondicoes.Open;
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('GERANDO LANCAMENTOS NO CONTAS A RECEBER E FLUXO DE CAIXA...');
    Memo1.Lines.Add('====================================================================================');
    Memo1.Lines.Add('Condição: '+IntToStr(DM.TBNfseNFS_CONDICAO.Value)+' - '+DM.TBNfseCPG_DESCRICAO.Value);
    Memo1.Lines.Add('------------------------------------------------------------------------------------');
    Memo1.Lines.Add('Num docto Parcela Vencimento          Valor              %  Status');

    ParcelaAtual:=0;
    DM.TBCondicoesItens.First;
    DiasPrimeiraParcela:=DM.TBCondicoesItensCPI_DIAS.Value;
    ValorTotal:=DM.TBNfseNFS_VALORLIQUIDO.AsExtended;
    SomaParcelas:=0;
    SomaParcelasSemDesconto:=0;
    while not DM.TBCondicoesItens.Eof do
    begin
      Inc(ParcelaAtual);
      //gera data de vencimento.
      if DM.TBCondicoesCPG_MENSAL.Value='S' then //condição com período mensal. (30 dias).
      begin
        if (ParcelaAtual=1) and (DM.TBCondicoesItensCPI_DIAS.Value=0) then //primeira parcela com dias=0 é considerado como entrada.
        Vencimento:=DM.TBNfseNFS_DTEMISSAO.Value else
        if DiasPrimeiraParcela=0 then
        Vencimento:=IncMonth(DM.TBNfseNFS_DTEMISSAO.Value,ParcelaAtual-1) else
        Vencimento:=IncMonth(DM.TBNfseNFS_DTEMISSAO.Value,ParcelaAtual); //parcela atual conterá o número de meses.
      end else
      Vencimento:=DM.TBNfseNFS_DTEMISSAO.Value+DM.TBCondicoesItensCPI_DIAS.Value;
      if (DM.TBNfseNFS_DIAPREFERENCIAL.Value<>0) and (DM.TBCondicoesItensCPI_DIAS.Value>0) then
      begin
        DecodeDate(Vencimento,A,M,D);
        Vencimento:=EncodeDate(A,M,DM.TBNfseNFS_DIAPREFERENCIAL.Value);
      end;

      //checa se pode gerar o vencimento nos finais de semana ou somente dias úteis.
      if DM.TBCondicoesCPG_SOMENTEDIASUTEIS.Value='S' then
      begin
        if DayOfWeek(Vencimento)=1 then //domingo
        Vencimento:=Vencimento + 1 else
        if DayOfWeek(Vencimento)=7 then //sabado.
        Vencimento:=Vencimento + 2;
      end;

      //se é pra dividir em parcelas iguais e a divisão do valor total pela quantidade de parcelas dá uma divisão exata, blz... senão utiliza a porcentagem do item da condição de pagto.
      if (DM.TBCondicoesCPG_PARCELASIGUAIS.Value='S') and (Frac(ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value)=0) then
      begin
        ValorParcela:=ValorTotal / DM.TBCondicoesCPG_TOTALPARCELAS.Value;
        //ValorParcelaSemDesconto:=(ValorTotal+DM.TBNfseNFS_DESCVALOR.Value)/DM.TBCondicoesCPG_TOTALPARCELAS.Value; //para poder cobrar o desconto quando passar do vencimento, em forma de multa.
        ValorParcelaSemDesconto:=(ValorTotal)/DM.TBCondicoesCPG_TOTALPARCELAS.Value; //para poder cobrar o desconto quando passar do vencimento, em forma de multa.
      end else
      begin
        ValorParcela:=(ValorTotal/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
        //ValorParcelaSemDesconto:=((ValorTotal+DM.TBNfseNFS_DESCVALOR.Value)/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.Value;
        ValorParcelaSemDesconto:=((ValorTotal)/100.00)*DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended;
      end;

      //adiciona valor do boleto.
      if DM.TBNfseNFS_FORMAPAGTO.Value='BOLETO' then
      begin
        ValorParcela:=ValorParcela+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
        ValorParcelaSemDesconto:=ValorParcelaSemDesconto+DM.TBParametrosPAR_VALORBOLETO.AsExtended;
      end;

      ValorParcela:=Decimais(ValorParcela,2);
      ValorParcelaSemDesconto:=Decimais(ValorParcelaSemDesconto,2);
      SomaParcelas:=SomaParcelas+ValorParcela;
      SomaParcelasSemDesconto:=SomaParcelasSemDesconto+ValorParcela;

      //verifica o valor da ultima parcela.
      if ParcelaAtual=DM.TBCondicoesCPG_TOTALPARCELAS.Value then
      begin
        if SomaParcelas > DM.TBNfseNFS_VALORLIQUIDO.Value then ValorParcela:=ValorParcela-(SomaParcelas-DM.TBNfseNFS_VALORLIQUIDO.AsExtended) else
        if SomaParcelas < DM.TBNfseNFS_VALORLIQUIDO.Value then ValorParcela:=ValorParcela+(DM.TBNfseNFS_VALORLIQUIDO.AsExtended-SomaParcelas);
        //if SomaParcelasSemDesconto > DM.TBNfseNFS_VALORLIQUIDO.Value+DM.TBNfseNFS_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto-(SomaParcelasSemDesconto-(DM.TBNfseNFS_VALORLIQUIDO.Value+DM.TBNfseNFS_DESCVALOR.Value)) else
        //if SomaParcelasSemDesconto < DM.TBNfseNFS_VALORLIQUIDO.Value+DM.TBNfseNFS_DESCVALOR.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto+((DM.TBNfseNFS_VALORLIQUIDO.Value+DM.TBNfseNFS_DESCVALOR.Value)-SomaParcelasSemDesconto);
        if SomaParcelasSemDesconto > DM.TBNfseNFS_VALORLIQUIDO.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto-(SomaParcelasSemDesconto-(DM.TBNfseNFS_VALORLIQUIDO.AsExtended)) else
        if SomaParcelasSemDesconto < DM.TBNfseNFS_VALORLIQUIDO.Value then ValorParcelaSemDesconto:=ValorParcelaSemDesconto+((DM.TBNfseNFS_VALORLIQUIDO.AsExtended)-SomaParcelasSemDesconto);
      end;

      //gera os lançamentos no contas a receber.
      if (Vencimento=DM.TBNfseNFS_DTEMISSAO.Value) and (DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value='S') then //se vencimento é igual (dias=0), então a qtde de dias é zero.
      begin
        GerarReceber(
          DM.TBNfseNFS_FORMAPAGTO.Value,
          'NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
          IntToStr(DM.TBNfseNFS_VENDA.Value),
          'LANCAMENTO AUTOMATICO NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),
          'B',DateToStr(Vencimento),
          'T',
          DM.TBNfseNFS_CLIENTE.Value,
          DM.TBNfseNFS_VENDEDOR.Value,
          DM.TBNfseNFS_VENDEDOR.Value, //representante.
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        GerarFluxoCaixa(DM.TBNfseNFS_FORMAPAGTO.Value,'NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),'LANCAMENTO AUTOMATICO NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),'E','NOTA FISCAL DE SERVICOS ELETRONICA',DM.TBNfseNFS_TOMNOME.Value,'',DM.UsuarioVendedor,DM.TBCondicoesCPG_CONTA.Value,DM.TBNfseNFS_CLIENTE.Value,0,Date,ValorParcela);
        Memo1.Lines.Add(AlignText('NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  BAIXADO');
      end else
      begin
        GerarReceber(
          DM.TBNfseNFS_FORMAPAGTO.Value,
          'NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value)+'/'+AlignText(IntToStr(ParcelaAtual),'0',2,taRight),
          IntToStr(DM.TBNfseNFS_VENDA.Value),
          'LANCAMENTO AUTOMATICO NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),
          'A',
          '',
          '',
          DM.TBNfseNFS_CLIENTE.Value,
          DM.TBNfseNFS_VENDEDOR.Value,
          DM.TBNfseNFS_VENDEDOR.Value, //representante.
          DM.TBParametrosPAR_RECEITAPADRAO.Value,
          DM.TBCondicoesCPG_CONTA.Value,
          ParcelaAtual,
          DM.TBCondicoesCPG_TOTALPARCELAS.Value,
          Date,
          Vencimento,
          ValorParcela,
          ValorParcelaSemDesconto
        );
        Memo1.Lines.Add(AlignText('NFSE-'+IntToStr(DM.TBNfseNFS_CODIGO.Value),' ',8,taLeft)+'  '+AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)+AlignText(Format('%8.2f',[DM.TBCondicoesItensCPI_PORCENTAGEM.AsExtended]),' ',15,taRight)+'  ABERTO');
      end;

      DM.TBCondicoesItens.Next;
    end;
  end else
  Memo1.Lines.Add('SEM MOVIMENTAÇÃO FINANCEIRA.');

  //########################################################################################//
  //########################################################################################//
  //finaliza a nota.
  DM.CodigoMark:=DM.TBNfseNFS_CODIGO.Value;
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('update NFSE set NFS_STATUS=:status, NFS_BAIXADATA=:baixadata, NFS_BAIXAPOR=:baixapor where NFS_CODIGO=:codigo');
  DM.QYAux.ParamByName('status').AsString:='F';
  DM.QYAux.ParamByName('baixadata').AsDate:=DM.ServerDate;
  DM.QYAux.ParamByName('baixapor').AsString:=DM.UsuarioLogin;
  DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CODIGO.Value;
  DM.QYAux.ExecSQL;

  DM.TBNfse.Close;
  DM.TBNfse.ParamByName('codigo').AsInteger:=DM.CodigoMark;
  DM.TBNfse.Open;

  //Envia email se estiver configurado para tal.
  if DM.TBParametrosPAR_NFSEEMAILAUTOMATICO.Value='S' then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfseNFS_CLIENTE.Value;
    DM.TBClientes.Open;
    if DM.TBClientesCLI_EMAIL.Value<>'' then
    FormNfse.EnviarNFSePorEmailAutomatico1.Click else
    begin
      Memo1.Lines.Add('-------------------------------------------------');
      Memo1.Lines.Add('Nenhum email especificado no cadastro do cliente.');
    end;
  end;

  Memo1.Lines.Add('====================================================================================');
  Memo1.Lines.Add('FIM DO PROCESSO...');

  BitBtn1.Enabled:=True;
end;

end.

