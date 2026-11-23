unit PAF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ACBrPAF, ACBrPAF_D, ACBrPAF_E, ACBrPAF_P, ACBrPAF_R, ACBrPAF_T, ACBrPAFRegistros, Math;

procedure PreencherHeader(Header: TRegistroX1);
procedure GerarTabelaProdutos;
procedure GerarArquivoEstoque;
procedure GerarMovimentoECF;
procedure GravarR02R03;
procedure Gravar60M60A;
procedure MeiosPagamento(DataInicial:String; DataFinal:String);
procedure IdentificacaoPafEcf;
function GerarMD5: String;
function ECFAutorizado: Boolean;

implementation
uses DataMod, Main, MD5, FuncoesPomPom;

procedure PreencherHeader(Header: TRegistroX1);
begin
  Header.UF         :=DM.TBEmpresaEMP_ESTADO.Value;
  Header.CNPJ       :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
  Header.IE         :=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
  Header.IM         :=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
  Header.RAZAOSOCIAL:=DM.TBEmpresaEMP_NOME.Value;
end;

procedure GerarTabelaProdutos;
var P2: TRegistroP2;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from PRODUTOS');
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then
  begin
    MessageDlg('Não existem produtos na tabela.',mtWarning,[mbOk],0);
    DM.QYAux.Close;
    Exit;
  end;
  //registro P1.
  PreencherHeader(DM.ACBrPAF.PAF_P.RegistroP1); // preencher header do arquivo.
  //registro P2.
  DM.ACBrPAF.PAF_P.RegistroP2.Clear;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    P2               :=DM.ACBrPAF.PAF_P.RegistroP2.New;
    P2.COD_MERC_SERV :=DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString;
    P2.DESC_MERC_SERV:=DM.QYAux.FieldByName('PRO_NOME').AsString;
    P2.UN_MED        :=DM.QYAux.FieldByName('PRO_UNIDADE').AsString;
    P2.IAT           :=DM.QYAux.FieldByName('PRO_IAT').AsString;
    P2.IPPT          :=DM.QYAux.FieldByName('PRO_IPPT').AsString;
    P2.ST            :=DM.QYAux.FieldByName('PRO_CSTICMS').AsString;
    P2.ALIQ          :=StrToFloat(DM.QYAux.FieldByName('PRO_ALIQICMS').AsString);
    P2.VL_UNIT       :=DM.QYAux.FieldByName('PRO_PRECOVENDA').AsFloat;
    DM.QYAux.Next;
  end;
  //rogerio DM.ACBrPAF.SaveFileTXT_P('PAF_P.txt');
  DM.QYAux.Close;
end;

procedure GerarArquivoEstoque;
var E2: TRegistroE2;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from PRODUTOS');
  DM.QYAux.Open;
  if DM.QYAux.IsEmpty then
  begin
    MessageDlg('Não existem produtos na tabela.',mtWarning,[mbOk],0);
    DM.QYAux.Close;
    Exit;
  end;
  // registro E1
  PreencherHeader(DM.ACBrPAF.PAF_E.RegistroE1); // preencher header do arquivo
  // registro E2
  DM.ACBrPAF.PAF_E.RegistroE2.Clear;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    E2          :=DM.ACBrPAF.PAF_E.RegistroE2.New;
    E2.COD_MERC :=DM.QYAux.FieldByName('PRO_CODIGOBARRAS').AsString;
    E2.DESC_MERC:=DM.QYAux.FieldByName('PRO_NOME').AsString;
    E2.UN_MED   :=DM.QYAux.FieldByName('PRO_UNIDADE').AsString;
    E2.QTDE_EST :=DM.QYAux.FieldByName('PRO_ESTOQUEATUAL').AsFloat;
    //rogerio E2.DT_EST   :=Date;
    DM.QYAux.Next;
  end;
  //rogerio DM.ACBrPAF.SaveFileTXT_E('PAF_E.txt');
  DM.QYAux.Close;
end;

procedure GravarR02R03;
var I: Integer;
begin
  DM.ACBrECF.DadosReducaoZ;
  //Dados para o registro R02.
  DM.TBReducoesz.Insert;
  with DM.ACBrECF.DadosReducaoZClass do
  begin
    DM.TBReducoeszRDZ_CRZ.Value:=CRZ;
    DM.TBReducoeszRDZ_COO.Value:=COO;
    DM.TBReducoeszRDZ_CRO.Value:=CRO;
    DM.TBReducoeszRDZ_DTMOVIMENTO.Value:=DataDoMovimento;
    DM.TBReducoeszRDZ_VENDABRUTA.Value:=ValorVendaBruta;
    DM.TBReducoeszRDZ_GRANDETOTAL.Value:=ValorGrandeTotal;
  end;
  DM.TBReducoesz.Post;

  //Dados para o registro R03.
  with DM.ACBrECF.DadosReducaoZClass do
  begin
    //Dados ICMS
    for I:=0 to ICMS.Count-1 do
    begin
      DM.TBReducoeszItens.Insert;
      DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:=ICMS[I].Indice + 'T' + StringReplace(FloatToStr(ICMS[I].Aliquota), ',', '', [rfReplaceAll]);
      DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=ICMS[I].Total;
      DM.TBReducoeszItens.Post;
    end;
    //Dados ISSQN
    for I:=0 to ISSQN.Count-1 do
    begin
      DM.TBReducoeszItens.Insert;
      DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:=ISSQN[I].Indice + 'S' + StringReplace(FloatToStr(ICMS[I].Aliquota), ',', '', [rfReplaceAll]);
      DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=ISSQN[I].Total;
      DM.TBReducoeszItens.Post;
    end;
    //Substituição Tributária - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='F1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=SubstituicaoTributariaICMS;
    DM.TBReducoeszItens.Post;

    //Isento - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='I1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=IsentoICMS;
    DM.TBReducoeszItens.Post;

    //Não-incidência - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='N1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=NaoTributadoICMS;
    DM.TBReducoeszItens.Post;

    //Substituição Tributária - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='FS1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=SubstituicaoTributariaISSQN;
    DM.TBReducoeszItens.Post;

    //Isento - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='IS1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=IsentoISSQN;
    DM.TBReducoeszItens.Post;

    //Não-incidência - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='NS1';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=NaoTributadoISSQN;
    DM.TBReducoeszItens.Post;

    //Operações Não Fiscais
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='OPNF';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=TotalOperacaoNaoFiscal;
    DM.TBReducoeszItens.Post;

    //Desconto - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='DT';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=DescontoICMS;
    DM.TBReducoeszItens.Post;

    //Desconto - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='DS';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=DescontoISSQN;
    DM.TBReducoeszItens.Post;

    //Acréscimo - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='AT';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=AcrescimoICMS;
    DM.TBReducoeszItens.Post;

    //Acréscimo - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='AS';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=AcrescimoISSQN;
    DM.TBReducoeszItens.Post;

    //Cancelamento - ICMS
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='Can-T';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=CancelamentoICMS;
    DM.TBReducoeszItens.Post;

    //Cancelamento - ISSQN
    DM.TBReducoeszItens.Insert;
    DM.TBReducoeszItensRZI_TOTALIZADORPARCIAL.Value:='Can-S';
    DM.TBReducoeszItensRZI_VALORACUMULADO.Value:=CancelamentoISSQN;
    DM.TBReducoeszItens.Post;
  end;
end;

procedure GerarMovimentoECF;
var I,J: Integer;
begin
  // Registro R1
  with DM.ACBrPAF.PAF_R.RegistroR01 do
  begin
    {NUM_FAB     :=DM.TBTerminaisTER_ECFSERIE.Value;
    MF_ADICIONAL:=DM.TBTerminaisTER_ECFMFD.Value;
    TIPO_ECF    :=DM.TBTerminaisTER_ECFTIPO.Value;
    MARCA_ECF   :=DM.TBTerminaisTER_ECFMARCA.Value;
    MODELO_ECF  :=DM.TBTerminaisTER_ECFMODELO.Value;
    VERSAO_SB   :=DM.ACBrECF.NumVersao;
    DT_INST_SB  :=DM.ACBrECF.DataHoraSB;
    HR_INST_SB  :=DM.ACBrECF.DataHoraSB;
    NUM_SEQ_ECF :=DM.TBTerminaisTER_CODIGO.Value; //TODO... verificar se os campos estào corretos.
    CNPJ        :=LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value);
    IE          :=LimparFormatacao(DM.TBEmpresaEMP_IE.Value);
    CNPJ_SH     :=LimparFormatacao(DM.TBEmpresaEMP_NOSSOCNPJ.Value);
    IE_SH       :=LimparFormatacao(DM.TBEmpresaEMP_NOSSOIE.Value);
    IM_SH       :=LimparFormatacao(DM.TBEmpresaEMP_NOSSOIM.Value);
    NOME_SH     :=DM.TBEmpresaEMP_NOSSONOME.Value;
    NOME_PAF    :=DM.TBEmpresaEMP_PAFNOME.Value;
    VER_PAF     :=DM.TBEmpresaEMP_PAFVERSAO.Value;
    COD_MD5     :=DM.TBEmpresaEMP_PAFMD5.Value;
    DT_INI      :=Date;
    DT_FIN      :=Date;
    ER_PAF_ECF  :='0105'; //???.}
  end;
  // Registro R02 e R03
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from REDUCOESZ order by RDZ_CODIGO');
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
    {with DM.ACBrPAF.PAF_R.RegistroR02.New do
    begin
      NUM_USU:=DM.QYAux.FieldByName('RDZ_TERMINAL').AsInteger;
      CRZ    :=DM.QYAux.FieldByName('RDZ_CRZ').AsInteger;
      COO    :=DM.QYAux.FieldByName('RDZ_COO').AsInteger;
      CRO    :=DM.QYAux.FieldByName('RDZ_CRO').AsInteger;
      DT_MOV :=DM.QYAux.FieldByName('RDZ_DTMOVIMENTO').AsDateTime;
      DT_EMI :=DM.QYAux.FieldByName('RDZ_DTEMISSAO').AsDateTime;
      HR_EMI :=DM.QYAux.FieldByName('RDZ_HREMISSAO').AsDateTime;
      VL_VBD :=DM.QYAux.FieldByName('RDZ_VENDABRUTA').AsFloat;
      PAR_ECF:=''; //???.
      // Registro R03 - FILHO
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from REDUCOESZITENS where RZI_REDUCAOZ=:codigo order by RZI_CODIGO');
      DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('RDZ_CODIGO').AsInteger;
      DM.QYAux2.Open;
      DM.QYAux2.First;
      while not DM.QYAux2.Eof do
      begin
        with RegistroR03.New do
        begin
          TOT_PARCIAL:=DM.QYAux2.FieldByName('RZI_TOTALIZADORPARCIAL').AsString;
          VL_ACUM    :=DM.QYAux2.FieldByName('RZI_VALORACUMULADO').AsFloat;
        end;
        DM.QYAux2.Next;
      end;
      DM.QYAux2.Close;
    end;}
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  // Registro R04 e R05 venda e item venda... fazer...
{  ListaR04 := RegistroRContol.TabelaR04;
  for i := 0 to ListaR04.Count - 1 do
  begin
    with DM.ACBrPAF.PAF_R.RegistroR04.New do
    begin
      NUM_USU     := TR04VO(ListaR04.Items[i]).IdOperador;
      NUM_CONT    := TR04VO(ListaR04.Items[i]).CCF;
      COO         := TR04VO(ListaR04.Items[i]).COO;
      DT_INI      := StrToDateTime(TR04VO(ListaR04.Items[i]).DataEmissao);
      SUB_DOCTO   := TR04VO(ListaR04.Items[i]).SubTotal;
      SUB_DESCTO  := TR04VO(ListaR04.Items[i]).Desconto;
      TP_DESCTO   := TR04VO(ListaR04.Items[i]).IndicadorDesconto;
      SUB_ACRES   := TR04VO(ListaR04.Items[i]).Acrescimo;
      TP_ACRES    := TR04VO(ListaR04.Items[i]).IndicadorAcrescimo;
      VL_TOT      := TR04VO(ListaR04.Items[i]).ValorLiquido;
      CANC        := TR04VO(ListaR04.Items[i]).Cancelado;
      VL_CA       := TR04VO(ListaR04.Items[i]).CancelamentoAcrescimo;
      ORDEM_DA    := TR04VO(ListaR04.Items[i]).OrdemDescontoAcrescimo;
      NOME_CLI    := TR04VO(ListaR04.Items[i]).Cliente;
      CNPJ_CPF    := TR04VO(ListaR04.Items[i]).CPFCNPJ;
      //Registro R05 - FILHO
      ListaR05 := RegistroRContol.TabelaR05(TR04VO(ListaR04.Items[i]).Id);
      if Assigned(ListaR05) then
      begin
        for j := 0 to ListaR05.Count - 1 do
        begin
          with RegistroR05.New do
          begin
            NUM_ITEM     := TR05VO(ListaR05.Items[j]).Item;
            COD_ITEM     := TR05VO(ListaR05.Items[j]).GTIN;
            DESC_ITEM    := TR05VO(ListaR05.Items[j]).DescricaoPDV;
            QTDE_ITEM    := TR05VO(ListaR05.Items[j]).Quantidade;
            UN_MED       := TR05VO(ListaR05.Items[j]).SiglaUnidade;
            VL_UNIT      := TR05VO(ListaR05.Items[j]).ValorUnitario;
            DESCTO_ITEM  := TR05VO(ListaR05.Items[j]).Desconto;
            ACRES_ITEM   := TR05VO(ListaR05.Items[j]).Acrescimo;
            VL_TOT_ITEM  := TR05VO(ListaR05.Items[j]).TotalItem;
            COD_TOT_PARC := TR05VO(ListaR05.Items[j]).TotalizadorParcial;
            IND_CANC     := TR05VO(ListaR05.Items[j]).IndicadorCancelamento;
            QTDE_CANC    := TR05VO(ListaR05.Items[j]).QuantidadeCancelada;
            VL_CANC      := TR05VO(ListaR05.Items[j]).ValorCancelado;
            VL_CANC_ACRES:= TR05VO(ListaR05.Items[j]).CancelamentoAcrescimo;
            IAT          := TR05VO(ListaR05.Items[j]).IAT;
            IPPT         := TR05VO(ListaR05.Items[j]).IPPT;
            QTDE_DECIMAL := TR05VO(ListaR05.Items[j]).CasasDecimaisQuantidade;
            VL_DECIMAL   := TR05VO(ListaR05.Items[j]).CasasDecimaisValor;
          end;
        end;
      end;
    end;
  end; }
  // Registro R06 e R07... CUPOM NAO FISCAL E OUTROS DOCS EMITIDOS.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from CUPOM');
  DM.QYAux.Open;
  DM.QYAux.First;
  while not DM.QYAux.Eof do
  begin
   { with DM.ACBrPAF.PAF_R.RegistroR06.New do
    begin
      NUM_USU:=DM.QYAux.FieldByName('CUO_TERMINAL').AsInteger;
      COO    :=DM.QYAux.FieldByName('CUO_COO').AsInteger;
      GNF    :=DM.QYAux.FieldByName('CUO_GNF').AsInteger;
      GRG    :=DM.QYAux.FieldByName('CUO_GRG').AsInteger;
      CDC    :=DM.QYAux.FieldByName('CUO_CDC').AsInteger;
      DENOM  :=DM.QYAux.FieldByName('CUO_DENOMINACAO').AsString;
      DT_FIN :=DM.QYAux.FieldByName('CUO_DTEMISSAO').AsDateTime;
      HR_FIN :=DM.QYAux.FieldByName('CUO_HREMISSAO').AsDateTime;
      // Registro R07 - FILHO
      DM.QYAux2.Close;
      DM.QYAux2.SQL.Clear;
      DM.QYAux2.SQL.Add('select * from CUPOMITENS where CMI_CUPOM=:codigo');
      DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('CUO_CODIGO').AsInteger;
      DM.QYAux2.Open;
      DM.QYAux2.First;
      while not DM.QYAux2.Eof do
      begin
        with RegistroR07.New do
        begin
          CCF     :=DM.QYAux.FieldByName('CMI_CCF').AsInteger;
          MP      :=DM.QYAux.FieldByName('CMI_MEIOPAGAMENTO').AsString;
          VL_PAGTO:=DM.QYAux.FieldByName('CMI_VALORPAGAMENTO').AsFloat;
          IND_EST :=DM.QYAux.FieldByName('CMI_ESTORNO').AsString;
          VL_EST  :=DM.QYAux.FieldByName('CMI_VALORESTORNO').AsFloat;
        end;
        DM.QYAux2.Next;
      end;
      DM.QYAux2.Close;
    end;}
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  //rogerio DM.ACBrPAF.SaveFileTXT_R('PAF_R.txt');
end;

procedure MeiosPagamento(DataInicial:String; DataFinal:String);
var Meio, TipoDoc, Valor, Data: String;
begin
  if MessageDlg('Deseja imprimir o relatório MEIOS DE PAGAMENTOS?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    { TODO : Esse relatório está de acordo com as especificações do PAF-ECF? }
    //sumariza os valores agrupando por data e tipo de pagamento.
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select CUP_DATA, CFP_DESCRICAO, sum(CFP_VALOR) as TOTAL from CUPOMFISCALPAGTOS '+
                     'left join CUPOMFISCAL on CFP_CUPOMFISCAL=CUP_CODIGO '+
                     'left join MOVIMENTOS on CUP_MOVIMENTO=MOV_CODIGO '+
                     'where MOV_TERMINAL=:terminal and (CUP_DATA between :datainicial and :datafinal) '+
                     'group by CUP_DATA, CFP_DESCRICAO '+
                     'order by CUP_DATA, CFP_DESCRICAO');
    DM.QYAux.ParamByName('datainicial').AsDate:=StrToDate(DataInicial);
    DM.QYAux.ParamByName('datafinal').AsDate:=StrToDate(DataFinal);
    DM.QYAux.ParamByName('terminal').AsInteger:=DM.TBMovimentosMOV_TERMINAL.Value;
    DM.QYAux.Open;

    DM.ACBrECF.AbreRelatorioGerencial();
    DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
    DM.ACBrECF.LinhaRelatorioGerencial('MEIOS DE PAGAMENTO');
    DM.ACBrECF.LinhaRelatorioGerencial('PERIODO: '+DataInicial+' A '+DataFinal);
    DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
    DM.ACBrECF.LinhaRelatorioGerencial('MEIO DE PGTO.  TIPO DOC. VLR.ACUMUL.  DT.ACUMUL.');
                                     //'dinheiro-------fiscal----123456789012399/99/9999'
    DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
    DM.QYAux.First;
    while not DM.QYAux.Eof do
    begin
      Meio:=AlignText(DM.QYAux.FieldByName('CFP_DESCRICAO').AsString,' ',15,taLeft);
      TipoDoc:='FISCAL    ';
      Valor:=AlignText(FloatToStrF(DM.QYAux.FieldByName('TOTAL').AsCurrency,ffNumber,11,2),' ',13,taLeft);
      Data:=DM.QYAux.FieldByName('CUP_DATA').AsString;
      DM.ACBrECF.LinhaRelatorioGerencial(Meio+TipoDoc+Valor+Data);
      DM.QYAux.Next;
    end;
    DM.QYAux.Close;
    DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
    DM.ACBrECF.FechaRelatorio;
  end;
end;

procedure IdentificacaoPafEcf;
begin
  { TODO : Relatorio dentro das especificações? }
  DM.ACBrECF.AbreRelatorioGerencial();
  DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
  DM.ACBrECF.LinhaRelatorioGerencial('IDENTIFICACAO DO PAF-ECF');
  DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
  DM.ACBrECF.LinhaRelatorioGerencial('NU. LAUDO.........: '+IntToStr(DM.TBEmpresaEMP_PAFLAUDO.Value));
  DM.ACBrECF.LinhaRelatorioGerencial('C.N.P.J. .........: '+DM.TBEmpresaEMP_NOSSOCNPJ.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('EMPRESA...........: '+DM.TBEmpresaEMP_NOSSONOME.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('ENDERECO..........: '+DM.TBEmpresaEMP_NOSSOENDERECO.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('NUMERO............: '+DM.TBEmpresaEMP_NOSSONUMERO.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('COMPLEMENTO.......: ');
  DM.ACBrECF.LinhaRelatorioGerencial('BAIRRO............: '+DM.TBEmpresaEMP_NOSSOBAIRRO.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('CIDADE............: '+DM.TBEmpresaEMP_NOSSOCIDADE.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('CEP...............: '+DM.TBEmpresaEMP_NOSSOCEP.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('UF................: '+DM.TBEmpresaEMP_NOSSOESTADO.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('FONE..............: '+DM.TBEmpresaEMP_NOSSOFONE1.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('RESPONSAVEL.......: ROGERIO PETT');
  DM.ACBrECF.LinhaRelatorioGerencial('NOME COMERCIAL....: '+DM.TBEmpresaEMP_PAFNOME.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('VERSAO............: '+DM.TBEmpresaEMP_PAFVERSAO.Value);
  DM.ACBrECF.LinhaRelatorioGerencial('PRINCIPAL ARQUIVO.: POMPOM.EXE');
  DM.ACBrECF.LinhaRelatorioGerencial('MD5...............: '+DM.TBEmpresaEMP_PAFMD5.Value);
  DM.ACBrECF.LinhaRelatorioGerencial(StringOfChar('=',48));
  DM.ACBrECF.FechaRelatorio;
end;

procedure Gravar60M60A;
var I: Integer;
begin
  DM.TBSintegra60m.Insert;
  DM.TBSintegra60mSIN_DTEMISSAO.Value:=DM.ACBrECF.DataMovimento;
  DM.TBSintegra60mSIN_ECFSERIAL.Value:=DM.ACBrECF.NumSerie;
  DM.TBSintegra60mSIN_ECFNUMERO.Value:=StrToInt(DM.ACBrECF.NumECF);
  DM.TBSintegra60mSIN_MODELODOCTO.Value:='2D'; //TODO... O que informar no modelo do documento fiscal?
  DM.TBSintegra60mSIN_COOINICIAL.Value:=StrToInt(DM.ACBrECF.NumCOOInicial);
  DM.TBSintegra60mSIN_COOFINAL.Value:=StrToInt(DM.ACBrECF.NumCOO);
  DM.TBSintegra60mSIN_CRZ.Value:=StrToInt(DM.ACBrECF.NumCRZ);
  DM.TBSintegra60mSIN_CRO.Value:=StrToInt(DM.ACBrECF.NumCRO);
  DM.TBSintegra60mSIN_VENDABRUTA.Value:=DM.ACBrECF.VendaBruta;
  DM.TBSintegra60mSIN_GRANTETOTAL.Value:=DM.ACBrECF.GrandeTotal;
  DM.TBSintegra60m.Post;

  { TODO : Este procedimento está correto para a gravação do 60M? }
  DM.ACBrECF.DadosReducaoZ;
  with DM.ACBrECF.DadosReducaoZClass do
  begin
    for I:=0 to ICMS.Count-1 do
    begin
      DM.TBSintegra60a.Insert;
      DM.TBSintegra60aSII_SITUACAOTRIBUTARIA.Value:=StringReplace(FloatToStr(ICMS[I].Aliquota),',','',[rfReplaceAll]);
      DM.TBSintegra60aSII_VALOR.Value:=ICMS[I].Total;
      DM.TBSintegra60a.Post;
    end;
  end;
end;

function GerarMD5: String;
var
  F: TextFile;
  NomeArq, ArqTexto, MD5Arquivo: String;
  SR: TSearchRec;
  Retorno: Integer;
begin
  Result:='';
  try
    //Apaga arquivo anterior.
    ArqTexto:=ExtractFilePath(Application.ExeName)+'ArqMD5.txt';
    if FileExists(ArqTexto) then
    DeleteFile(ArqTexto);

    //cria o arquivo TXT na mesma pasta do sistema.
    AssignFile(F,ArqTexto);
    Rewrite(F);

    //lista todos os arquivo exe da pasta do aplicativo e gera o MD5.
    Retorno:=FindFirst(ExtractFilePath(Application.ExeName)+'\*.exe',faAnyFile,SR);
    try
      while Retorno=0 do
      begin
        if SR.Attr and faDirectory<>faDirectory then
        begin
          NomeArq:=ExtractFilePath(Application.ExeName)+SR.Name;
          MD5Arquivo:=MD5Print(MD5File(NomeArq));
          WriteLn(F,NomeArq+' - '+MD5Arquivo);
        end;
        Retorno:=FindNext(SR);
      end;
    finally
      FindClose(SR);
    end;
    Closefile(F);
  // gera MD5 do arquivo texto
  finally
    Result:=MD5Print(MD5File(ArqTexto));
  end;
end;

{ TODO : Que hash vamos usar para criptografar os numeros de serie dos ECFs? }
function ECFAutorizado: Boolean;
var
  F: TextFile;
  Linha, MD5Serie: String;
begin
  Result:=False;
  MD5Serie:=MD5Print(MD5String(DM.ACBrECF.NumSerie));
  AssignFile(F,ExtractFilePath(Application.ExeName)+'ECFsAutorizados.txt');
  Reset(F);
  while not Eof(F) do
  begin
    Readln(F,Linha);
    if Linha=MD5Serie then
    Result:=True;
  end;
  CloseFile(F);
end;

end.
