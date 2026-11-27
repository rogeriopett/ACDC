//Atualizacoes:
//2026.11.23 - Comissao do vendedor e representante (vendedor do cliente) na capa; VEI_COMISSAO/VEI_COMISSAOREP pelo SetarComissaoItem (PAR_COMISSAOPOR), no lugar do valor vindo do Angus; GerarNfe copia o representante e as comissoes dele.
//2026.11.23 - Reforma tributaria: Atualizar/Inserir leem VED_GOVERNAMENTAL, VED_GOVERNAMENTALOP, VED_GOVERNAMENTALALIQRED, VED_NOTADEBITO e VED_NOTACREDITO; GerarNfe copia esses campos e os totais de IBS/CBS/IS para a NF-e; CopiarItensVendaParaNfe copia os campos de IBS/CBS/IS dos itens, como no Firenet.
//2026.11.23 - GerarNfe recalcula os totais da NF-e (CalcularTotaisNFe) e grava 0 no NFE_BASEIRRF/NFE_TOTALIRRF, como no Firenet.
//2026.11.23 - Representante (VED_REPRESENTANTE) vem do Angus; no inserir, sem representante, assume o vendedor. A comissao do representante e recalculada quando ele muda.
unit Firenet.Vendas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inutilizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function GerarNfe(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure ReordenarItens(DM: TDMFirenet; Venda: Integer);
procedure SetarComissaoItem(DM: TDMFirenet);

procedure CopiarCapaVendaParaNfe(DM: TDMFirenet);
procedure CopiarItensVendaParaNfe(DM: TDMFirenet);

const
  PrefixLog='FIRENET.VENDAS: ';
  Campos='VED_CLIENTE, VED_CODIGO, VED_DTCADASTRO, VED_DTEMISSAO, VED_NFE, VED_NOME, VED_PEDIDOCLIENTE, VED_STATUS, VED_VALORTOTAL, VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VEN_NOME';

implementation
uses Funcoes, System.Math;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/vendas', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao, Empresa: String;
begin
  try
    try
      DM:=TDMFirenet.Create(nil);

      Operacao:=San(Req.ContentFields.Field('op').AsString);
      Empresa:=San(Req.ContentFields.Field('empresa').AsString);
      if Empresa='' then
      begin
        FormMain.Logar(PrefixLog+'sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      DM.SetarBancoEmpresa(Empresa);

      if Operacao='listar'      then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar'  then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'   then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'     then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'     then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'   then Res.Send( Localizar(DM,Req)  ).Status(200) else
      if Operacao='parametros'  then Res.Send( Parametros(DM,Req) ).Status(200) else
      if Operacao='inutilizar'  then Res.Send( Inutilizar(DM,Req) ).Status(200) else
      if Operacao='gerarnfe'    then Res.Send( GerarNFe(DM,Req)   ).Status(200) else

      if Operacao='visualizarItem' then Res.Send( VisualizarItem(DM,Req)  ).Status(200) else
      if Operacao='atualizarItem'  then Res.Send( AtualizarItem(DM,Req)   ).Status(200) else
      if Operacao='inserirItem'    then Res.Send( InserirItem(DM,Req)     ).Status(200) else
      if Operacao='excluirItem'    then Res.Send( ExcluirItem(DM,Req)     ).Status(200) else
      begin
        FormMain.Logar(PrefixLog+'sem op.');
        raise Exception.Create('Recurso não encontrado.');
      end;

    except on ex:Exception do
      begin
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg',ex.Message);
        Res.Send<TJSONObject>(Retorno).Status(404);
      end;
    end;
  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Pagina, Registros, Skip, VED_CLIENTE, VED_CODIGO: Integer;
  Where, VED_NOME, VED_PEDIDOCLIENTE, VED_STATUS: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
  DataInicial, DataFinal: TDate;
begin
  try
    Pagina           :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    VED_CLIENTE      :=Req.ContentFields.Field('VED_CLIENTE').AsInteger;
    VED_CODIGO       :=Req.ContentFields.Field('VED_CODIGO').AsInteger;
    VED_NOME         :=San(Req.ContentFields.Field('VED_NOME').AsString);
    VED_PEDIDOCLIENTE:=San(Req.ContentFields.Field('VED_PEDIDOCLIENTE').AsString);
    VED_STATUS       :=San(Req.ContentFields.Field('VED_STATUS').AsString);
    DataInicial      :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal        :=Req.ContentFields.Field('datafinal').AsDate;

    Where:=' (VED_DTCADASTRO between :datainicial and :datafinal)';
    if VED_CODIGO<>0         then Where:=Where+' and VED_CODIGO='+VED_CODIGO.ToString;
    if VED_CLIENTE<>0        then Where:=Where+' and VED_CLIENTE='+VED_CLIENTE.ToString;
    if VED_NOME<>''          then Where:=Where+' and CLI_NOME like '+QuotedStr(VED_NOME+'%');
    if VED_PEDIDOCLIENTE<>'' then Where:=Where+' and VED_PEDIDOCLIENTE like '+QuotedStr(VED_PEDIDOCLIENTE+'%');
    if VED_STATUS<>'T'       then Where:=Where+' and VED_STATUS='+QuotedStr(VED_STATUS);

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+VED_CODIGO.ToString+', STATUS: '+VED_STATUS+', NOME: '+VED_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
      'where '+Where+' order by VED_CODIGO desc, VED_NOME');
    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
    DM.Query1.Open;
    DM.Query1.FetchAll;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('rpp',FormMain.Edit2.Text);
    Retorno.AddPair('contador',DM.Query1.RecordCount);
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);

    Result:=Retorno;

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBVendas.ToJSONObject;

    DM.TBVendasItens.Open;
    Itens:=TJSONArray.Create;
    Itens:=DM.TBVendasItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBVendasItens.Close;
    DM.TBVendas.Close;

    Result:=Retorno;
  except on ex:Exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  VED_CODIGO, RepresentanteAnterior, VendedorAnterior: Integer;
  VED_DESCRICAO, VED_STATUS, VED_TIPO: String;
  VED_VALOR: Extended;
begin
  try
    VED_CODIGO:=Req.ContentFields.Field('VED_CODIGO').AsInteger;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendas.Edit;
    RepresentanteAnterior:=DM.TBVendasVED_REPRESENTANTE.Value;
    VendedorAnterior:=DM.TBVendasVED_VENDEDOR.Value;
    //DM.TBVendasVED_ALIQICMSCREDSN.Value     :=
    DM.TBVendasVED_BAIRRO.Value             :=San(Req.ContentFields.Field('VED_BAIRRO').AsString);
    //DM.TBVendasVED_BAIXADATA.Value          :=
    //DM.TBVendasVED_BAIXAPOR.Value           :=
    //DM.TBVendasVED_BASECOFINS.Value         :=
    //DM.TBVendasVED_BASECOFINSST.Value       :=
    //DM.TBVendasVED_BASEICMS.Value           :=
    //DM.TBVendasVED_BASEICMSST.Value         :=
    //DM.TBVendasVED_BASEII.Value             :=
    //DM.TBVendasVED_BASEIPI.Value            :=
    //DM.TBVendasVED_BASEISS.Value            :=
    //DM.TBVendasVED_BASEPIS.Value            :=
    //DM.TBVendasVED_BASEPISST.Value          :=
    DM.TBVendasVED_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('VED_CEP').AsString);
    DM.TBVendasVED_CFOP.Value               :=Req.ContentFields.Field('VED_CFOP').AsInteger;
    DM.TBVendasVED_CFOPDESC.Value           :=San(Req.ContentFields.Field('VED_CFOPDESC').AsString);
    DM.TBVendasVED_CIDADE.Value             :=San(Req.ContentFields.Field('VED_CIDADE').AsString);
    DM.TBVendasVED_CIDADECODIGO.Value       :=Req.ContentFields.Field('VED_CIDADECODIGO').AsInteger;
    DM.TBVendasVED_CLIENTE.Value            :=Req.ContentFields.Field('VED_CLIENTE').AsInteger;
    DM.TBVendasVED_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_CNPJ').AsString);
    //DM.TBVendasVED_CODIGO.Value             :=
    //DM.TBVendasVED_CODIMPORTACAO.Value      :=
    //DM.TBVendasVED_COMISSAO.Value           :=
    //DM.TBVendasVED_COMISSAOPOR.Value        :=
    DM.TBVendasVED_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VED_COMPLEMENTO').AsString);
    DM.TBVendasVED_CONDICAO.Value           :=Req.ContentFields.Field('VED_CONDICAO').AsInteger;
    //DM.TBVendasVED_CONDICAOMEMO.Value       :=
    //DM.TBVendasVED_CONFERIDO.Value          :=
    //DM.TBVendasVED_CONFERIDODATA.Value      :=
    //DM.TBVendasVED_CONFERIDOPOR.Value       :=
    DM.TBVendasVED_CONTATO.Value            :=San(Req.ContentFields.Field('VED_CONTATO').AsString);
    DM.TBVendasVED_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_CPF').AsString);
    //DM.TBVendasVED_CUSTOTOTAL.Value         :=
    //DM.TBVendasVED_DESCPORC.Value           :=
    //DM.TBVendasVED_DESCPORCCLIENTE.Value    :=
    //DM.TBVendasVED_DESCPORCCONDICAO.Value   :=
    //DM.TBVendasVED_DESCVALOR.Value          :=
    DM.TBVendasVED_DESTACARIMPOSTOS.Value   :=San(Req.ContentFields.Field('VED_DESTACARIMPOSTOS').AsString);
    DM.TBVendasVED_DIAPREFERENCIAL.Value    :=Req.ContentFields.Field('VED_DIAPREFERENCIAL').AsInteger;
    DM.TBVendasVED_DTATUALIZACAO.Value      :=Date;
    //DM.TBVendasVED_DTCADASTRO.Value         :=
    //DM.TBVendasVED_DTEMISSAO.Value          :=
    DM.TBVendasVED_DTPRESTSERVICO           :=SetData(DM.TBVendasVED_DTPRESTSERVICO,Req.ContentFields.Field('VED_DTPRESTSERVICO').AsString);
    DM.TBVendasVED_DTSAIDA                  :=SetData(DM.TBVendasVED_DTSAIDA,Req.ContentFields.Field('VED_DTSAIDA').AsString);
    DM.TBVendasVED_ENDERECO.Value           :=San(Req.ContentFields.Field('VED_ENDERECO').AsString);
    //DM.TBVendasVED_ENTRADASAIDA.Value       :=
    //DM.TBVendasVED_ENTREGUE.Value           :=
    DM.TBVendasVED_ESPECIE.Value            :=San(Req.ContentFields.Field('VED_ESPECIE').AsString);
    DM.TBVendasVED_ESTADO.Value             :=San(Req.ContentFields.Field('VED_ESTADO').AsString);
    DM.TBVendasVED_ESTADOCODIGO.Value       :=Req.ContentFields.Field('VED_ESTADOCODIGO').AsInteger;
    DM.TBVendasVED_EXLOCAL.Value            :=San(Req.ContentFields.Field('VED_EXLOCAL').AsString);
    DM.TBVendasVED_EXPEDIDOPOR.Value        :=Req.ContentFields.Field('VED_EXPEDIDOPOR').AsInteger;
    DM.TBVendasVED_EXUFSAIDA.Value          :=San(Req.ContentFields.Field('VED_EXUFSAIDA').AsString);
    DM.TBVendasVED_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('VED_FONE1').AsString);
    DM.TBVendasVED_FORMAPAGTO.Value         :=San(Req.ContentFields.Field('VED_FORMAPAGTO').AsString);
    DM.TBVendasVED_FRETE.Value              :=San(Req.ContentFields.Field('VED_FRETE').AsString);
    DM.TBVendasVED_GOVERNAMENTAL.Value      :=San(Req.ContentFields.Field('VED_GOVERNAMENTAL').AsString);
    if DM.TBVendasVED_GOVERNAMENTAL.Value='' then DM.TBVendasVED_GOVERNAMENTAL.Value:='0 - NENHUM';
    DM.TBVendasVED_GOVERNAMENTALALIQRED.Value:=Req.ContentFields.Field('VED_GOVERNAMENTALALIQRED').AsFloat;
    DM.TBVendasVED_GOVERNAMENTALOP.Value    :=San(Req.ContentFields.Field('VED_GOVERNAMENTALOP').AsString);
    if DM.TBVendasVED_GOVERNAMENTALOP.Value='' then DM.TBVendasVED_GOVERNAMENTALOP.Value:='0 - NENHUM';
    DM.TBVendasVED_HRATUALIZACAO.Value      :=Time;
    //DM.TBVendasVED_HRCADASTRO.Value         :=
    DM.TBVendasVED_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('VED_IDESTRANGEIRO').AsString);
    DM.TBVendasVED_IE.Value                 :=San(Req.ContentFields.Field('VED_IE').AsString);
    DM.TBVendasVED_INFOADICFISCO.Value      :=San(Req.ContentFields.Field('VED_INFOADICFISCO').AsString);
    DM.TBVendasVED_INFOCOMPLEMENTAR.Value   :=San(Req.ContentFields.Field('VED_INFOCOMPLEMENTAR').AsString);
    DM.TBVendasVED_LACRES.Value             :=San(Req.ContentFields.Field('VED_LACRES').AsString);
    //DM.TBVendasVED_LUCROPORC.Value          :=
    //DM.TBVendasVED_LUCROVALOR.Value         :=
    //DM.TBVendasVED_MANUAL.Value             :=
    DM.TBVendasVED_MARCA.Value              :=San(Req.ContentFields.Field('VED_MARCA').AsString);
    //DM.TBVendasVED_MOVIMENTAESTOQUE.Value   :=
    //DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=
    //DM.TBVendasVED_NFE.Value                :=
    DM.TBVendasVED_NOME.Value               :=San(Req.ContentFields.Field('VED_NOME').AsString);
    //DM.TBVendasVED_NOTA.Value               :=
    DM.TBVendasVED_NOTACREDITO.Value        :=San(Req.ContentFields.Field('VED_NOTACREDITO').AsString);
    if DM.TBVendasVED_NOTACREDITO.Value='' then DM.TBVendasVED_NOTACREDITO.Value:='00 - NENHUM';
    DM.TBVendasVED_NOTADEBITO.Value         :=San(Req.ContentFields.Field('VED_NOTADEBITO').AsString);
    if DM.TBVendasVED_NOTADEBITO.Value='' then DM.TBVendasVED_NOTADEBITO.Value:='00 - NENHUM';
    DM.TBVendasVED_NUMERO.Value             :=San(Req.ContentFields.Field('VED_NUMERO').AsString);
    DM.TBVendasVED_OBSERVACOES.Value        :=San(Req.ContentFields.Field('VED_OBSERVACOES').AsString);
    DM.TBVendasVED_PAIS.Value               :=San(Req.ContentFields.Field('VED_PAIS').AsString);
    DM.TBVendasVED_PAISCODIGO.Value         :=Req.ContentFields.Field('VED_PAISCODIGO').AsInteger;
    DM.TBVendasVED_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VED_PEDIDOCLIENTE').AsString);
    DM.TBVendasVED_PESOBRUTO.Value          :=Req.ContentFields.Field('VED_PESOBRUTO').AsFloat;
    DM.TBVendasVED_PESOLIQ.Value            :=Req.ContentFields.Field('VED_PESOLIQ').AsFloat;
    DM.TBVendasVED_REBOQUEPLACA.Value       :=San(Req.ContentFields.Field('VED_REBOQUEPLACA').AsString);
    DM.TBVendasVED_REBOQUEPLACAUF.Value     :=San(Req.ContentFields.Field('VED_REBOQUEPLACAUF').AsString);
    DM.TBVendasVED_REBOQUERNTC.Value        :=San(Req.ContentFields.Field('VED_REBOQUERNTC').AsString);
    DM.TBVendasVED_RG.Value                 :=San(Req.ContentFields.Field('VED_RG').AsString);
    //DM.TBVendasVED_SEQUENCIAITEM.Value      :=
    //DM.TBVendasVED_STATUS.Value             :=
    DM.TBVendasVED_SUFRAMA.Value            :=San(Req.ContentFields.Field('VED_SUFRAMA').AsString);
    //DM.TBVendasVED_TABELAPRECO.Value        :=
    DM.TBVendasVED_TIPOATENDIMENTO.Value    :=San(Req.ContentFields.Field('VED_TIPOATENDIMENTO').AsString);
    DM.TBVendasVED_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('VED_TIPOCONSUMIDOR').AsString);
    DM.TBVendasVED_TIPOOPERACAO.Value       :=San(Req.ContentFields.Field('VED_TIPOOPERACAO').AsString);
    //DM.TBVendasVED_TOTALADUANA.Value        :=
    //DM.TBVendasVED_TOTALBRUTO.Value         :=
    //DM.TBVendasVED_TOTALCOFINS.Value        :=
    //DM.TBVendasVED_TOTALCOFINSST.Value      :=
    //DM.TBVendasVED_TOTALCOMISSAO.Value      :=
    //DM.TBVendasVED_TOTALFCP.Value           :=
    //DM.TBVendasVED_TOTALFCPST.Value         :=
    //DM.TBVendasVED_TOTALICMS.Value          :=
    //DM.TBVendasVED_TOTALICMSCREDSN.Value    :=
    //DM.TBVendasVED_TOTALICMSST.Value        :=
    //DM.TBVendasVED_TOTALICMSUFDEST.Value    :=
    //DM.TBVendasVED_TOTALICMSUFREMET.Value   :=
    //DM.TBVendasVED_TOTALII.Value            :=
    //DM.TBVendasVED_TOTALIOF.Value           :=
    //DM.TBVendasVED_TOTALIPI.Value           :=
    //DM.TBVendasVED_TOTALISS.Value           :=
    //DM.TBVendasVED_TOTALISSDEDUCAO.Value    :=
    //DM.TBVendasVED_TOTALISSDESCCOND.Value   :=
    //DM.TBVendasVED_TOTALISSDESCINCOND.Value :=
    //DM.TBVendasVED_TOTALISSOUTROS.Value     :=
    //DM.TBVendasVED_TOTALISSRETENCAO.Value   :=
    //DM.TBVendasVED_TOTALITENS.Value         :=
    //DM.TBVendasVED_TOTALPIS.Value           :=
    //DM.TBVendasVED_TOTALPISST.Value         :=
    //DM.TBVendasVED_TOTALPRODUTOS.Value      :=
    //DM.TBVendasVED_TOTALSERVICOS.Value      :=
    //DM.TBVendasVED_TOTALTRIBUTOS.Value      :=
    //DM.TBVendasVED_TOTALTRIBUTOSEST.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSFED.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSIMP.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSMUN.Value   :=
    DM.TBVendasVED_TRANSPCIDADE.Value       :=San(Req.ContentFields.Field('VED_TRANSPCIDADE').AsString);
    DM.TBVendasVED_TRANSPCNPJ.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_TRANSPCNPJ').AsString);
    DM.TBVendasVED_TRANSPCPF.Value          :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_TRANSPCPF').AsString);
    DM.TBVendasVED_TRANSPEMAIL.Value        :=San(Req.ContentFields.Field('VED_TRANSPEMAIL').AsString);
    DM.TBVendasVED_TRANSPENDERECO.Value     :=San(Req.ContentFields.Field('VED_TRANSPENDERECO').AsString);
    DM.TBVendasVED_TRANSPESTADO.Value       :=San(Req.ContentFields.Field('VED_TRANSPESTADO').AsString);
    DM.TBVendasVED_TRANSPFONE.Value         :=FormatarFone(Req.ContentFields.Field('VED_TRANSPFONE').AsString);
    DM.TBVendasVED_TRANSPIE.Value           :=San(Req.ContentFields.Field('VED_TRANSPIE').AsString);
    DM.TBVendasVED_TRANSPNOME.Value         :=San(Req.ContentFields.Field('VED_TRANSPNOME').AsString);
    DM.TBVendasVED_TRANSPORTADORA.Value     :=Req.ContentFields.Field('VED_TRANSPORTADORA').AsInteger;
    DM.TBVendasVED_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBVendasVED_VALORDESPACES.Value      :=
    //DM.TBVendasVED_VALORFRETE.Value         :=
    //DM.TBVendasVED_VALORSEGURO.Value        :=
    //DM.TBVendasVED_VALORTOTAL.Value         :=
    DM.TBVendasVED_VEICULOPLACA.Value       :=San(Req.ContentFields.Field('VED_VEICULOPLACA').AsString);
    DM.TBVendasVED_VEICULOPLACAUF.Value     :=San(Req.ContentFields.Field('VED_VEICULOPLACAUF').AsString);
    DM.TBVendasVED_VEICULORNTC.Value        :=San(Req.ContentFields.Field('VED_VEICULORNTC').AsString);
    DM.TBVendasVED_VENDEDOR.Value           :=Req.ContentFields.Field('VED_VENDEDOR').AsInteger;
    //DM.TBVendasVED_VIAINTERNET.Value        :=
    //DM.TBVendasVED_VIAINTERNETSTATUS.Value  :=
    DM.TBVendasVED_VOLUMES.Value            :=Req.ContentFields.Field('VED_VOLUMES').AsInteger;
    DM.TBVendasVED_VOLUMESNUM.Value         :=San(Req.ContentFields.Field('VED_VOLUMESNUM').AsString);
    //representante digitado no Angus; vazio mantem o atual.
    if SoNumeros(Req.ContentFields.Field('VED_REPRESENTANTE').AsString)>0 then
    DM.TBVendasVED_REPRESENTANTE.Value:=SoNumeros(Req.ContentFields.Field('VED_REPRESENTANTE').AsString);
    //comissao do vendedor e do representante: so quando eles mudam ou ainda nao tem.
    if (DM.TBVendasVED_VENDEDOR.Value<>VendedorAnterior) or DM.TBVendasVED_COMISSAO.IsNull then
    DM.TBVendasVED_COMISSAO.AsExtended:=GetComissaoVendedor(DM,DM.TBVendasVED_VENDEDOR.Value);
    if (DM.TBVendasVED_REPRESENTANTE.Value<>RepresentanteAnterior) or DM.TBVendasVED_COMISSAOREP.IsNull then
    DM.TBVendasVED_COMISSAOREP.AsExtended:=GetComissaoVendedor(DM,DM.TBVendasVED_REPRESENTANTE.Value);
    DM.TBVendas.Post;

    Registro:=DM.TBVendas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    Result:=Retorno;

  except on ex:Exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CFOP, VED_CLIENTE, VED_EXPEDIDOPOR, VED_VENDEDOR: Integer;
  VED_VALOR: Extended;
begin
  try
    VED_CFOP:=Req.ContentFields.Field('VED_CFOP').AsInteger;
    VED_CLIENTE:=Req.ContentFields.Field('VED_CLIENTE').AsInteger;
    VED_EXPEDIDOPOR:=Req.ContentFields.Field('VED_EXPEDIDOPOR').AsInteger;
    VED_VENDEDOR:=Req.ContentFields.Field('VED_VENDEDOR').AsInteger;

    Obrigatorio(VED_CFOP.ToString,'Natureza Operação','0');
    Obrigatorio(VED_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(VED_EXPEDIDOPOR.ToString,'Expedido Por','0');
    Obrigatorio(VED_VENDEDOR.ToString,'Vendedor','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBVendas.Open;
    DM.TBVendas.Insert;
    //DM.TBVendasVED_ALIQICMSCREDSN.Value     :=
    DM.TBVendasVED_BAIRRO.Value             :=San(Req.ContentFields.Field('VED_BAIRRO').AsString);
    //DM.TBVendasVED_BAIXADATA.Value          :=
    //DM.TBVendasVED_BAIXAPOR.Value           :=
    //DM.TBVendasVED_BASECOFINS.Value         :=
    //DM.TBVendasVED_BASECOFINSST.Value       :=
    //DM.TBVendasVED_BASEICMS.Value           :=
    //DM.TBVendasVED_BASEICMSST.Value         :=
    //DM.TBVendasVED_BASEII.Value             :=
    //DM.TBVendasVED_BASEIPI.Value            :=
    //DM.TBVendasVED_BASEISS.Value            :=
    //DM.TBVendasVED_BASEPIS.Value            :=
    //DM.TBVendasVED_BASEPISST.Value          :=
    DM.TBVendasVED_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('VED_CEP').AsString);
    DM.TBVendasVED_CFOP.Value               :=Req.ContentFields.Field('VED_CFOP').AsInteger;
    DM.TBVendasVED_CFOPDESC.Value           :=San(Req.ContentFields.Field('VED_CFOPDESC').AsString);
    DM.TBVendasVED_CIDADE.Value             :=San(Req.ContentFields.Field('VED_CIDADE').AsString);
    DM.TBVendasVED_CIDADECODIGO.Value       :=Req.ContentFields.Field('VED_CIDADECODIGO').AsInteger;
    DM.TBVendasVED_CLIENTE.Value            :=Req.ContentFields.Field('VED_CLIENTE').AsInteger;
    DM.TBVendasVED_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_CNPJ').AsString);
    //DM.TBVendasVED_CODIGO.Value             :=
    //DM.TBVendasVED_CODIMPORTACAO.Value      :=
    //DM.TBVendasVED_COMISSAO.Value           :=
    //DM.TBVendasVED_COMISSAOPOR.Value        :=
    DM.TBVendasVED_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VED_COMPLEMENTO').AsString);
    DM.TBVendasVED_CONDICAO.Value           :=Req.ContentFields.Field('VED_CONDICAO').AsInteger;
    //DM.TBVendasVED_CONDICAOMEMO.Value       :=
    //DM.TBVendasVED_CONFERIDO.Value          :=
    //DM.TBVendasVED_CONFERIDODATA.Value      :=
    //DM.TBVendasVED_CONFERIDOPOR.Value       :=
    DM.TBVendasVED_CONTATO.Value            :=San(Req.ContentFields.Field('VED_CONTATO').AsString);
    DM.TBVendasVED_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_CPF').AsString);
    //DM.TBVendasVED_CUSTOTOTAL.Value         :=
    //DM.TBVendasVED_DESCPORC.Value           :=
    //DM.TBVendasVED_DESCPORCCLIENTE.Value    :=
    //DM.TBVendasVED_DESCPORCCONDICAO.Value   :=
    //DM.TBVendasVED_DESCVALOR.Value          :=
    DM.TBVendasVED_DESTACARIMPOSTOS.Value   :=San(Req.ContentFields.Field('VED_DESTACARIMPOSTOS').AsString);
    DM.TBVendasVED_DIAPREFERENCIAL.Value    :=Req.ContentFields.Field('VED_DIAPREFERENCIAL').AsInteger;
    DM.TBVendasVED_DTATUALIZACAO.Value      :=Date;
    //DM.TBVendasVED_DTCADASTRO.Value         :=
    //DM.TBVendasVED_DTEMISSAO.Value          :=
    DM.TBVendasVED_DTPRESTSERVICO           :=SetData(DM.TBVendasVED_DTPRESTSERVICO,Req.ContentFields.Field('VED_DTPRESTSERVICO').AsString);
    DM.TBVendasVED_DTSAIDA                  :=SetData(DM.TBVendasVED_DTSAIDA,Req.ContentFields.Field('VED_DTSAIDA').AsString);
    DM.TBVendasVED_ENDERECO.Value           :=San(Req.ContentFields.Field('VED_ENDERECO').AsString);
    //DM.TBVendasVED_ENTRADASAIDA.Value       :=
    //DM.TBVendasVED_ENTREGUE.Value           :=
    DM.TBVendasVED_ESPECIE.Value            :=San(Req.ContentFields.Field('VED_ESPECIE').AsString);
    DM.TBVendasVED_ESTADO.Value             :=San(Req.ContentFields.Field('VED_ESTADO').AsString);
    DM.TBVendasVED_ESTADOCODIGO.Value       :=Req.ContentFields.Field('VED_ESTADOCODIGO').AsInteger;
    DM.TBVendasVED_EXLOCAL.Value            :=San(Req.ContentFields.Field('VED_EXLOCAL').AsString);
    DM.TBVendasVED_EXPEDIDOPOR.Value        :=Req.ContentFields.Field('VED_EXPEDIDOPOR').AsInteger;
    DM.TBVendasVED_EXUFSAIDA.Value          :=San(Req.ContentFields.Field('VED_EXUFSAIDA').AsString);
    DM.TBVendasVED_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('VED_FONE1').AsString);
    DM.TBVendasVED_FORMAPAGTO.Value         :=San(Req.ContentFields.Field('VED_FORMAPAGTO').AsString);
    DM.TBVendasVED_FRETE.Value              :=San(Req.ContentFields.Field('VED_FRETE').AsString);
    DM.TBVendasVED_GOVERNAMENTAL.Value      :=San(Req.ContentFields.Field('VED_GOVERNAMENTAL').AsString);
    if DM.TBVendasVED_GOVERNAMENTAL.Value='' then DM.TBVendasVED_GOVERNAMENTAL.Value:='0 - NENHUM';
    DM.TBVendasVED_GOVERNAMENTALALIQRED.Value:=Req.ContentFields.Field('VED_GOVERNAMENTALALIQRED').AsFloat;
    DM.TBVendasVED_GOVERNAMENTALOP.Value    :=San(Req.ContentFields.Field('VED_GOVERNAMENTALOP').AsString);
    if DM.TBVendasVED_GOVERNAMENTALOP.Value='' then DM.TBVendasVED_GOVERNAMENTALOP.Value:='0 - NENHUM';
    DM.TBVendasVED_HRATUALIZACAO.Value      :=Time;
    //DM.TBVendasVED_HRCADASTRO.Value         :=
    DM.TBVendasVED_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('VED_IDESTRANGEIRO').AsString);
    DM.TBVendasVED_IE.Value                 :=San(Req.ContentFields.Field('VED_IE').AsString);
    DM.TBVendasVED_INFOADICFISCO.Value      :=San(Req.ContentFields.Field('VED_INFOADICFISCO').AsString);
    DM.TBVendasVED_INFOCOMPLEMENTAR.Value   :=San(Req.ContentFields.Field('VED_INFOCOMPLEMENTAR').AsString);
    DM.TBVendasVED_LACRES.Value             :=San(Req.ContentFields.Field('VED_LACRES').AsString);
    //DM.TBVendasVED_LUCROPORC.Value          :=
    //DM.TBVendasVED_LUCROVALOR.Value         :=
    //DM.TBVendasVED_MANUAL.Value             :=
    DM.TBVendasVED_MARCA.Value              :=San(Req.ContentFields.Field('VED_MARCA').AsString);
    //DM.TBVendasVED_MOVIMENTAESTOQUE.Value   :=
    //DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value:=
    //DM.TBVendasVED_NFE.Value                :=
    DM.TBVendasVED_NOME.Value               :=San(Req.ContentFields.Field('VED_NOME').AsString);
    //DM.TBVendasVED_NOTA.Value               :=
    DM.TBVendasVED_NOTACREDITO.Value        :=San(Req.ContentFields.Field('VED_NOTACREDITO').AsString);
    if DM.TBVendasVED_NOTACREDITO.Value='' then DM.TBVendasVED_NOTACREDITO.Value:='00 - NENHUM';
    DM.TBVendasVED_NOTADEBITO.Value         :=San(Req.ContentFields.Field('VED_NOTADEBITO').AsString);
    if DM.TBVendasVED_NOTADEBITO.Value='' then DM.TBVendasVED_NOTADEBITO.Value:='00 - NENHUM';
    DM.TBVendasVED_NUMERO.Value             :=San(Req.ContentFields.Field('VED_NUMERO').AsString);
    DM.TBVendasVED_OBSERVACOES.Value        :=San(Req.ContentFields.Field('VED_OBSERVACOES').AsString);
    DM.TBVendasVED_PAIS.Value               :=San(Req.ContentFields.Field('VED_PAIS').AsString);
    DM.TBVendasVED_PAISCODIGO.Value         :=Req.ContentFields.Field('VED_PAISCODIGO').AsInteger;
    DM.TBVendasVED_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VED_PEDIDOCLIENTE').AsString);
    DM.TBVendasVED_PESOBRUTO.Value          :=Req.ContentFields.Field('VED_PESOBRUTO').AsFloat;
    DM.TBVendasVED_PESOLIQ.Value            :=Req.ContentFields.Field('VED_PESOLIQ').AsFloat;
    DM.TBVendasVED_REBOQUEPLACA.Value       :=San(Req.ContentFields.Field('VED_REBOQUEPLACA').AsString);
    DM.TBVendasVED_REBOQUEPLACAUF.Value     :=San(Req.ContentFields.Field('VED_REBOQUEPLACAUF').AsString);
    DM.TBVendasVED_REBOQUERNTC.Value        :=San(Req.ContentFields.Field('VED_REBOQUERNTC').AsString);
    DM.TBVendasVED_RG.Value                 :=San(Req.ContentFields.Field('VED_RG').AsString);
    //DM.TBVendasVED_SEQUENCIAITEM.Value      :=
    //DM.TBVendasVED_STATUS.Value             :=
    DM.TBVendasVED_SUFRAMA.Value            :=San(Req.ContentFields.Field('VED_SUFRAMA').AsString);
    //DM.TBVendasVED_TABELAPRECO.Value        :=
    DM.TBVendasVED_TIPOATENDIMENTO.Value    :=San(Req.ContentFields.Field('VED_TIPOATENDIMENTO').AsString);
    DM.TBVendasVED_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('VED_TIPOCONSUMIDOR').AsString);
    DM.TBVendasVED_TIPOOPERACAO.Value       :=San(Req.ContentFields.Field('VED_TIPOOPERACAO').AsString);
    //DM.TBVendasVED_TOTALADUANA.Value        :=
    //DM.TBVendasVED_TOTALBRUTO.Value         :=
    //DM.TBVendasVED_TOTALCOFINS.Value        :=
    //DM.TBVendasVED_TOTALCOFINSST.Value      :=
    //DM.TBVendasVED_TOTALCOMISSAO.Value      :=
    //DM.TBVendasVED_TOTALFCP.Value           :=
    //DM.TBVendasVED_TOTALFCPST.Value         :=
    //DM.TBVendasVED_TOTALICMS.Value          :=
    //DM.TBVendasVED_TOTALICMSCREDSN.Value    :=
    //DM.TBVendasVED_TOTALICMSST.Value        :=
    //DM.TBVendasVED_TOTALICMSUFDEST.Value    :=
    //DM.TBVendasVED_TOTALICMSUFREMET.Value   :=
    //DM.TBVendasVED_TOTALII.Value            :=
    //DM.TBVendasVED_TOTALIOF.Value           :=
    //DM.TBVendasVED_TOTALIPI.Value           :=
    //DM.TBVendasVED_TOTALISS.Value           :=
    //DM.TBVendasVED_TOTALISSDEDUCAO.Value    :=
    //DM.TBVendasVED_TOTALISSDESCCOND.Value   :=
    //DM.TBVendasVED_TOTALISSDESCINCOND.Value :=
    //DM.TBVendasVED_TOTALISSOUTROS.Value     :=
    //DM.TBVendasVED_TOTALISSRETENCAO.Value   :=
    //DM.TBVendasVED_TOTALITENS.Value         :=
    //DM.TBVendasVED_TOTALPIS.Value           :=
    //DM.TBVendasVED_TOTALPISST.Value         :=
    //DM.TBVendasVED_TOTALPRODUTOS.Value      :=
    //DM.TBVendasVED_TOTALSERVICOS.Value      :=
    //DM.TBVendasVED_TOTALTRIBUTOS.Value      :=
    //DM.TBVendasVED_TOTALTRIBUTOSEST.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSFED.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSIMP.Value   :=
    //DM.TBVendasVED_TOTALTRIBUTOSMUN.Value   :=
    DM.TBVendasVED_TRANSPCIDADE.Value       :=San(Req.ContentFields.Field('VED_TRANSPCIDADE').AsString);
    DM.TBVendasVED_TRANSPCNPJ.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_TRANSPCNPJ').AsString);
    DM.TBVendasVED_TRANSPCPF.Value          :=FormatarCPFCNPJ(Req.ContentFields.Field('VED_TRANSPCPF').AsString);
    DM.TBVendasVED_TRANSPEMAIL.Value        :=San(Req.ContentFields.Field('VED_TRANSPEMAIL').AsString);
    DM.TBVendasVED_TRANSPENDERECO.Value     :=San(Req.ContentFields.Field('VED_TRANSPENDERECO').AsString);
    DM.TBVendasVED_TRANSPESTADO.Value       :=San(Req.ContentFields.Field('VED_TRANSPESTADO').AsString);
    DM.TBVendasVED_TRANSPFONE.Value         :=FormatarFone(Req.ContentFields.Field('VED_TRANSPFONE').AsString);
    DM.TBVendasVED_TRANSPIE.Value           :=San(Req.ContentFields.Field('VED_TRANSPIE').AsString);
    DM.TBVendasVED_TRANSPNOME.Value         :=San(Req.ContentFields.Field('VED_TRANSPNOME').AsString);
    DM.TBVendasVED_TRANSPORTADORA.Value     :=Req.ContentFields.Field('VED_TRANSPORTADORA').AsInteger;
    DM.TBVendasVED_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBVendasVED_VALORDESPACES.Value      :=
    //DM.TBVendasVED_VALORFRETE.Value         :=
    //DM.TBVendasVED_VALORSEGURO.Value        :=
    //DM.TBVendasVED_VALORTOTAL.Value         :=
    DM.TBVendasVED_VEICULOPLACA.Value       :=San(Req.ContentFields.Field('VED_VEICULOPLACA').AsString);
    DM.TBVendasVED_VEICULOPLACAUF.Value     :=San(Req.ContentFields.Field('VED_VEICULOPLACAUF').AsString);
    DM.TBVendasVED_VEICULORNTC.Value        :=San(Req.ContentFields.Field('VED_VEICULORNTC').AsString);
    DM.TBVendasVED_VENDEDOR.Value           :=Req.ContentFields.Field('VED_VENDEDOR').AsInteger;
    //DM.TBVendasVED_VIAINTERNET.Value        :=
    //DM.TBVendasVED_VIAINTERNETSTATUS.Value  :=
    DM.TBVendasVED_VOLUMES.Value            :=Req.ContentFields.Field('VED_VOLUMES').AsInteger;
    DM.TBVendasVED_VOLUMESNUM.Value         :=San(Req.ContentFields.Field('VED_VOLUMESNUM').AsString);
    //comissao do vendedor e do representante.
    DM.TBVendasVED_COMISSAO.AsExtended      :=GetComissaoVendedor(DM,VED_VENDEDOR);
    //representante digitado no Angus ou, sem ele, o vendedor.
    DM.TBVendasVED_REPRESENTANTE.Value      :=SoNumeros(Req.ContentFields.Field('VED_REPRESENTANTE').AsString);
    if DM.TBVendasVED_REPRESENTANTE.Value=0 then
    DM.TBVendasVED_REPRESENTANTE.Value      :=VED_VENDEDOR;
    DM.TBVendasVED_COMISSAOREP.AsExtended   :=GetComissaoVendedor(DM,DM.TBVendasVED_REPRESENTANTE.Value);
    DM.TBVendas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBVendas.ToJSONObject);

    DM.TBVendas.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  VED_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    if VED_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendas.Delete;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Registro eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  VED_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VED_CODIGO:=Req.ContentFields.Field('VED_CODIGO').AsInteger;
    if VED_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+VED_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select VED_CODIGO, VED_DESCRICAO from VENDAS where VED_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
    Result:=Retorno;

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(parametros)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PAR_CONDICAOPADRAO, PAR_CFOPPADRAO, PAR_CREDITOICMSSN, PAR_COMISSAOPOR, PAR_ESPECIEPADRAO, PAR_FRETEPORCONTA, PAR_MARCAPADRAO, PAR_TABELAPRECO, '+
      'PAR_NFETIPOATENDIMENTO, PAR_NFETIPOCONSUMIDOR, NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_ENTRADASAIDA, NAT_OBSERVACOES, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO '+
      'from PARAMETROS '+
      'left join NATUREZAS on PAR_CFOPPADRAO=NAT_CODIGO '+
      'where PAR_CODIGO=1'
    );
    DM.Query1.Open;

    Registro:=DM.Query1.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.Query1.Close;

    Result:=Retorno;

  except on ex:Exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Inutilizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(inutilizar) '+VED_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBVendasVED_STATUS.Value<>'A' then
    raise Exception.Create('Somente pedidos em aberto podem ser inutilizados.');

    DM.TBVendas.Edit;
    DM.TBVendasVED_STATUS.Value:='I';
    DM.TBVendasVED_DTATUALIZACAO.Value:=Date;
    DM.TBVendasVED_HRATUALIZACAO.Value:=Time;
    DM.TBVendasVED_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBVendas.Post;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function GerarNfe(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  VED_CODIGO: Integer;
  Limite, Disponivel, Aberto: Currency;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    Obrigatorio(VED_CODIGO.ToString,'Venda','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(gerarnfe) Venda: '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    DM.TBVendasItens.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Venda não encontrada.');

    if DM.TBVendasItens.IsEmpty then
    raise Exception.Create('Este pedido de venda ainda não tem itens.');

    if DM.TBVendasVED_STATUS.Value='I' then
    raise Exception.Create('Este pedido de venda está inutilizado.');

    if DM.TBVendasVED_STATUS.Value='C' then
    raise Exception.Create('Este pedido de venda está inutilizado.');

    if (DM.TBVendasVED_STATUS.Value='F') and ((not DM.TBVendasVED_NOTA.IsNull) or (not DM.TBVendasVED_NFE.IsNull)) then
    raise Exception.Create('Já foi gerada uma nota com esse pedido. Nota: '+DM.TBVendasVED_NFE.Value.ToString);

    if NFeUtilRegistrada=False then
    raise Exception.Create('Um erro ocorreu ao tentar utilizar a DLL NFE_UTIL.');

    //verifica se o pedido nao vai estourar o limite do cliente....
    //valor que tem em aberto + o valor da venda ultrapassa o limite definido?.
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    DM.TBClientes.Open;
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select sum(REE_VALOR) as VALOR from RECEBER where REE_STATUS=''A'' and REE_CLIENTE=:cliente');
    DM.Query1.ParamByName('cliente').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    DM.Query1.Open;
    if (DM.Query1.FieldByName('VALOR').AsExtended + DM.TBVendasVED_VALORTOTAL.Value) > DM.TBClientesCLI_LIMITECREDITO.Value then
    begin
      Limite:=DM.TBClientesCLI_LIMITECREDITO.AsExtended;
      Aberto:=DM.Query1.FieldByName('VALOR').AsExtended;
      Disponivel:=Limite - Aberto;
      if DM.TBClientesCLI_BLOQUEARVENDA.Value='S' then
      raise Exception.Create(
        'O Cliente não tem limite disponível para realizar essa compra.'+#13#10#13#10+
        'Total em Aberto: '+Format('%m',[Aberto])+#13#10+
        'Limite Total: '+Format('%m',[Limite])+#13#10+
        'Limite Disponível: '+Format('%m',[Disponivel])
      );
    end;

    DM.TBNfe.Open;
    DM.TBNfeItens.Open;
    //DM.TRNfe.StartTransaction;
    //DM.TRNfeItens.StartTransaction;

    CopiarCapaVendaParaNfe(DM);
    CopiarItensVendaParaNfe(DM);
    DM.CalcularTotaisNFe(False); //como no Firenet (TBNfeItensAfterPost): recalcula os totais da nota com os itens recalculados.

    //deixa a nota em aberto para possíveis ajustes.
    DM.TBNfe.Edit;
    DM.TBNfeNFE_STATUS.Value:='A';
    DM.TBNfe.Post;

    //finaliza o pedido e informa que foi gerado uma nota.
    DM.TBVendas.Edit;
    DM.TBVendasVED_STATUS.Value:='F';
    DM.TBVendasVED_NFE.Value:=DM.TBNfeNFE_CODIGO.Value;
    DM.TBVendasVED_BAIXADATA.Value:=Date;
    DM.TBVendasVED_BAIXAPOR.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBVendas.Post;

    //DM.TRNfe.Commit;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Nota gerada com número: '+IntToStr(DM.TBNfeNFE_CODIGO.Value)+#13#13+'Clique OK para abrir o cadastro de notas.');
    Result:=Retorno;

  except on ex:Exception do
    begin
      if DM.TRNfe.Active then
      DM.TRNfe.Rollback;

      if DM.TRNfeItens.Active then
      DM.TRNfeItens.Rollback;

      FormMain.Logar(PrefixLog+'(gerarnfe) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

//###### ITENS #######
function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  VED_CODIGO, VEI_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO:=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Venda: '+VED_CODIGO.ToString+' Item: '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendasItens.Open;
    DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]);

    Registro:=DM.TBVendasItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBVendas.Close;
    DM.TBVendasItens.Close;

    Result:=Retorno;
  except on ex:Exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO, VEI_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO:=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);

    Obrigatorio(VEI_CODIGO.ToString,'Código Item','0');
    Obrigatorio(VED_CODIGO.ToString,'Venda','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Venda: '+VED_CODIGO.ToString+' Item: '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Venda não encontrada.');

    DM.TBVendasItens.Open;
    if not DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro do item para alteração. '+VEI_CODIGO.ToString);

    DM.TBVendasItens.Edit;
    DM.TBVendasItensVEI_ALIQCOFINS.Value         :=Req.ContentFields.Field('VEI_ALIQCOFINS').AsExtended;
    DM.TBVendasItensVEI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('VEI_ALIQCOFINSST').AsExtended;
    DM.TBVendasItensVEI_ALIQFCP.Value            :=Req.ContentFields.Field('VEI_ALIQFCP').AsExtended;
    DM.TBVendasItensVEI_ALIQFCPST.Value          :=Req.ContentFields.Field('VEI_ALIQFCPST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMS.Value           :=Req.ContentFields.Field('VEI_ALIQICMS').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('VEI_ALIQICMSADICST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTER.Value      :=Req.ContentFields.Field('VEI_ALIQICMSINTER').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTERPART.Value  :=Req.ContentFields.Field('VEI_ALIQICMSINTERPART').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSRED.Value        :=Req.ContentFields.Field('VEI_ALIQICMSRED').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSST.Value         :=Req.ContentFields.Field('VEI_ALIQICMSST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('VEI_ALIQICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_ALIQII.Value             :=Req.ContentFields.Field('VEI_ALIQII').AsExtended;
    DM.TBVendasItensVEI_ALIQIPI.Value            :=Req.ContentFields.Field('VEI_ALIQIPI').AsExtended;
    DM.TBVendasItensVEI_ALIQISS.Value            :=Req.ContentFields.Field('VEI_ALIQISS').AsExtended;
    DM.TBVendasItensVEI_ALIQPIS.Value            :=Req.ContentFields.Field('VEI_ALIQPIS').AsExtended;
    DM.TBVendasItensVEI_ALIQPISST.Value          :=Req.ContentFields.Field('VEI_ALIQPISST').AsExtended;
    DM.TBVendasItensVEI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('VEI_ALMOXARIFADO').AsInteger;
    DM.TBVendasItensVEI_BASECOFINS.Value         :=Req.ContentFields.Field('VEI_BASECOFINS').AsExtended;
    DM.TBVendasItensVEI_BASECOFINSST.Value       :=Req.ContentFields.Field('VEI_BASECOFINSST').AsExtended;
    DM.TBVendasItensVEI_BASEICMS.Value           :=Req.ContentFields.Field('VEI_BASEICMS').AsExtended;
    DM.TBVendasItensVEI_BASEICMSRED.Value        :=Req.ContentFields.Field('VEI_BASEICMSRED').AsExtended;;
    DM.TBVendasItensVEI_BASEICMSST.Value         :=Req.ContentFields.Field('VEI_BASEICMSST').AsExtended;
    DM.TBVendasItensVEI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('VEI_BASEICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_BASEII.Value             :=Req.ContentFields.Field('VEI_BASEII').AsExtended;
    DM.TBVendasItensVEI_BASEIPI.Value            :=Req.ContentFields.Field('VEI_BASEIPI').AsExtended;
    DM.TBVendasItensVEI_BASEISS.Value            :=Req.ContentFields.Field('VEI_BASEISS').AsExtended;
    DM.TBVendasItensVEI_BASEPIS.Value            :=Req.ContentFields.Field('VEI_BASEPIS').AsExtended;
    DM.TBVendasItensVEI_BASEPISST.Value          :=Req.ContentFields.Field('VEI_BASEPISST').AsExtended;
    DM.TBVendasItensVEI_BENEFICIO.Value          :=San(Req.ContentFields.Field('VEI_BENEFICIO').AsString);
    DM.TBVendasItensVEI_CEST.Value               :=San(Req.ContentFields.Field('VEI_CEST').AsString);
    DM.TBVendasItensVEI_CFOP.Value               :=Req.ContentFields.Field('VEI_CFOP').AsInteger;
    DM.TBVendasItensVEI_CIDADEISS.Value          :=Req.ContentFields.Field('VEI_CIDADEISS').AsInteger;
    DM.TBVendasItensVEI_CLASSFISCAL.Value        :=San(Req.ContentFields.Field('VEI_CLASSFISCAL').AsString);
    //DM.TBVendasItensVEI_CODIGO.Value             :=Req.ContentFields.Field('VEI_CODIGO').AsInteger';
    DM.TBVendasItensVEI_CODIGOBARRAS.Value       :=San(Req.ContentFields.Field('VEI_CODIGOBARRAS').AsString);
    DM.TBVendasItensVEI_CODIGOFAB.Value          :=San(Req.ContentFields.Field('VEI_CODIGOFAB').AsString);
    //DM.TBVendasItensVEI_COMISSAO.Value           :=Req.ContentFields.Field('VEI_COMISSAO').AsExtended; //pelo SetarComissaoItem, antes do Post.
    DM.TBVendasItensVEI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VEI_COMPLEMENTO').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMS.Value     :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMS').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMSST.Value   :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMSST').AsString);
    DM.TBVendasItensVEI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('VEI_COMPOETOTAL').AsString);
    DM.TBVendasItensVEI_CONVERSAO.Value          :=Req.ContentFields.Field('VEI_CONVERSAO').AsExtended;
    DM.TBVendasItensVEI_CSTCOFINS.Value          :=Req.ContentFields.Field('VEI_CSTCOFINS').AsInteger;
    DM.TBVendasItensVEI_CSTICMS.Value            :=Req.ContentFields.Field('VEI_CSTICMS').AsInteger;
    DM.TBVendasItensVEI_CSTIPI.Value             :=Req.ContentFields.Field('VEI_CSTIPI').AsInteger;
    DM.TBVendasItensVEI_CSTPIS.Value             :=Req.ContentFields.Field('VEI_CSTPIS').AsInteger;
    DM.TBVendasItensVEI_DESCMAX.Value            :=Req.ContentFields.Field('VEI_DESCMAX').AsExtended;
    DM.TBVendasItensVEI_DESCPORC.Value           :=Req.ContentFields.Field('VEI_DESCPORC').AsExtended;
    DM.TBVendasItensVEI_DESCRICAO.Value          :=San(Req.ContentFields.Field('VEI_DESCRICAO').AsString);
    DM.TBVendasItensVEI_DESCVALOR.Value          :=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
    DM.TBVendasItensVEI_DESONERACAO.Value        :=San(Req.ContentFields.Field('VEI_DESONERACAO').AsString);
    DM.TBVendasItensVEI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('VEI_DICNPJ').AsString);
    DM.TBVendasItensVEI_DIDATA.Value             :=Req.ContentFields.Field('VEI_DIDATA').AsDate;
    DM.TBVendasItensVEI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('VEI_DIDESEMBARACODATA').AsDate;
    DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('VEI_DIDESENBARACOLOCAL').AsString);
    DM.TBVendasItensVEI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('VEI_DIDESEMBARACOUF').AsString);
    DM.TBVendasItensVEI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('VEI_DIEXPORTADORCOD').AsString);
    DM.TBVendasItensVEI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('VEI_DIINTERMEDIO').AsString);
    DM.TBVendasItensVEI_DINUMERO.Value           :=San(Req.ContentFields.Field('VEI_DINUMERO').AsString);
    DM.TBVendasItensVEI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('VEI_DITERCEIROUF').AsString);
    DM.TBVendasItensVEI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('VEI_DITRANSPORTE').AsString);
    DM.TBVendasItensVEI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('VEI_DIVALORAFRMM').AsExtended;
    DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value   :=Req.ContentFields.Field('VEI_ENQUADRAMENTOIPI').AsInteger;
    DM.TBVendasItensVEI_EXCECAO.Value            :=Req.ContentFields.Field('VEI_EXCECAO').AsInteger;
    DM.TBVendasItensVEI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('VEI_EXCHAVEACESSO').AsString);
    DM.TBVendasItensVEI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('VEI_EXDRAWBACK').AsString);
    DM.TBVendasItensVEI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('VEI_EXQUANTIDADE').AsExtended;
    DM.TBVendasItensVEI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('VEI_EXREGISTRO').AsString);
    DM.TBVendasItensVEI_FCI.Value                :=San(Req.ContentFields.Field('VEI_FCI').AsString);
    DM.TBVendasItensVEI_INCENTIVOISS.Value       :=San(Req.ContentFields.Field('VEI_INCENTIVOISS').AsString);
    DM.TBVendasItensVEI_INDICADORISS.Value       :=San(Req.ContentFields.Field('VEI_INDICADORISS').AsString);
    DM.TBVendasItensVEI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('VEI_INFOADICIONAL').AsString,0);
    DM.TBVendasItensVEI_LOCALIZACAO.Value        :=San(Req.ContentFields.Field('VEI_LOCALIZACAO').AsString);
    DM.TBVendasItensVEI_LOTE.Value               :=San(Req.ContentFields.Field('VEI_LOTE').AsString);
    DM.TBVendasItensVEI_LUCROPORC.Value          :=Req.ContentFields.Field('VEI_LUCROPORC').AsExtended;
    DM.TBVendasItensVEI_LUCROVALOR.Value         :=Req.ContentFields.Field('VEI_LUCROVALOR').AsExtended;
    DM.TBVendasItensVEI_MODICMS.Value            :=San(Req.ContentFields.Field('VEI_MODICMS').AsString);
    DM.TBVendasItensVEI_MODICMSST.Value          :=San(Req.ContentFields.Field('VEI_MODICMSST').AsString);
    DM.TBVendasItensVEI_ORIGEM.Value             :=San(Req.ContentFields.Field('VEI_ORIGEM').AsString);
    DM.TBVendasItensVEI_PAISISS.Value            :=Req.ContentFields.Field('VEI_PAISISS').AsInteger;
    DM.TBVendasItensVEI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VEI_PEDIDOCLIENTE').AsString);
    DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('VEI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBVendasItensVEI_PESO.Value               :=Req.ContentFields.Field('VEI_PESO').AsExtended;
    DM.TBVendasItensVEI_PESOTOTAL.Value          :=Req.ContentFields.Field('VEI_PESOTOTAL').AsExtended;
    DM.TBVendasItensVEI_PRECOCUSTO.Value         :=Req.ContentFields.Field('VEI_PRECOCUSTO').AsExtended;
    DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('VEI_PRECOCUSTOTOTAL').AsExtended;
    DM.TBVendasItensVEI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('VEI_PROCESSOISS').AsString);
    DM.TBVendasItensVEI_PRODUTO.Value            :=Req.ContentFields.Field('VEI_PRODUTO').AsInteger;
    DM.TBVendasItensVEI_PRODUTOREAL.Value        :=Req.ContentFields.Field('VEI_PRODUTOREAL').AsInteger;
    DM.TBVendasItensVEI_QUANTIDADE.Value         :=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;
    DM.TBVendasItensVEI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('VEI_QUANTIDADETROCA').AsExtended;
    DM.TBVendasItensVEI_SEQUENCIA.Value          :=Req.ContentFields.Field('VEI_SEQUENCIA').AsInteger;
    DM.TBVendasItensVEI_SERVICOISS.Value         :=San(Req.ContentFields.Field('VEI_SERVICOISS').AsString);
    DM.TBVendasItensVEI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('VEI_SOMACOFINSST').AsString);
    DM.TBVendasItensVEI_SOMAPISST.Value          :=San(Req.ContentFields.Field('VEI_SOMAPISST').AsString);
    DM.TBVendasItensVEI_TIPO.Value               :=San(Req.ContentFields.Field('VEI_TIPO').AsString);
    DM.TBVendasItensVEI_TIPOISS.Value            :=San(Req.ContentFields.Field('VEI_TIPOISS').AsString);
    DM.TBVendasItensVEI_UNIDADE.Value            :=San(Req.ContentFields.Field('VEI_UNIDADE').AsString);
    DM.TBVendasItensVEI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('VEI_VALORACESSORIAS').AsExtended;
    DM.TBVendasItensVEI_VALORADUANA.Value        :=Req.ContentFields.Field('VEI_VALORADUANA').AsExtended;
    DM.TBVendasItensVEI_VALORCOFINS.Value        :=Req.ContentFields.Field('VEI_VALORCOFINS').AsExtended;
    DM.TBVendasItensVEI_VALORCOFINSST.Value      :=Req.ContentFields.Field('VEI_VALORCOFINSST').AsExtended;
    DM.TBVendasItensVEI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('VEI_VALORCOMISSAO').AsExtended;
    DM.TBVendasItensVEI_VALORFCP.Value           :=Req.ContentFields.Field('VEI_VALORFCP').AsExtended;
    DM.TBVendasItensVEI_VALORFCPST.Value         :=Req.ContentFields.Field('VEI_VALORFCPST').AsExtended;
    DM.TBVendasItensVEI_VALORFRETE.Value         :=Req.ContentFields.Field('VEI_VALORFRETE').AsExtended;
    DM.TBVendasItensVEI_VALORICMS.Value          :=Req.ContentFields.Field('VEI_VALORICMS').AsExtended;
    DM.TBVendasItensVEI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('VEI_VALORICMSCREDSN').AsExtended;
    DM.TBVendasItensVEI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('VEI_VALORICMSDESONERADO').AsExtended;
    DM.TBVendasItensVEI_VALORICMSST.Value        :=Req.ContentFields.Field('VEI_VALORICMSST').AsExtended;
    DM.TBVendasItensVEI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('VEI_VALORICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('VEI_VALORICMSSUBSTITUTO').AsExtended;
    DM.TBVendasItensVEI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('VEI_VALORICMSUFDEST').AsExtended;
    DM.TBVendasItensVEI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('VEI_VALORICMSUFREMET').AsExtended;
    DM.TBVendasItensVEI_VALORII.Value            :=Req.ContentFields.Field('VEI_VALORII').AsExtended;
    DM.TBVendasItensVEI_VALORIOF.Value           :=Req.ContentFields.Field('VEI_VALORIOF').AsExtended;
    DM.TBVendasItensVEI_VALORIPI.Value           :=Req.ContentFields.Field('VEI_VALORIPI').AsExtended;
    DM.TBVendasItensVEI_VALORISS.Value           :=Req.ContentFields.Field('VEI_VALOISS').AsExtended;
    DM.TBVendasItensVEI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('VEI_VALORISSDEDUCAO').AsExtended;
    DM.TBVendasItensVEI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('VEI_VALORISSDESCCOND').AsExtended;
    DM.TBVendasItensVEI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('VEI_VALORISSDESCINCOND').AsExtended;
    DM.TBVendasItensVEI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('VEI_VALORISSOUTROS').AsExtended;
    DM.TBVendasItensVEI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('VEI_VALORISSRETENCAO').AsExtended;
    DM.TBVendasItensVEI_VALORPIS.Value           :=Req.ContentFields.Field('VEI_VALORPIS').AsExtended;
    DM.TBVendasItensVEI_VALORPISST.Value         :=Req.ContentFields.Field('VEI_VALORPISST').AsExtended;
    DM.TBVendasItensVEI_VALORSEGURO.Value        :=Req.ContentFields.Field('VEI_VALORSEGURO').AsExtended;
    DM.TBVendasItensVEI_VALORTOTAL.Value         :=Req.ContentFields.Field('VEI_VALORTOTAL').AsExtended;
    DM.TBVendasItensVEI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('VEI_VALORTOTALBRUTO').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('VEI_VALORTRIBUTOS').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSEST').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSFED').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSIMP').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSMUN').AsExtended;
    DM.TBVendasItensVEI_VALORUNIT.Value          :=Req.ContentFields.Field('VEI_VALORUNIT').AsExtended;
    DM.TBVendasItensVEI_VENDA.Value              :=Req.ContentFields.Field('VEI_VENDA').AsInteger;
    SetarComissaoItem(DM);
    DM.TBVendasItens.Post;
    DM.TBVendasItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBVendas.Close;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VEI_PRODUTO, VED_CODIGO: Integer;
  VEI_QUANTIDADE: Extended;
begin
  try
    VEI_PRODUTO   :=SoNumeros(Req.ContentFields.Field('VEI_PRODUTO').AsString);
    VED_CODIGO    :=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_QUANTIDADE:=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;

    Obrigatorio(VEI_PRODUTO.ToString,'Produto','0');
    Obrigatorio(VED_CODIGO.ToString,'Venda','0');

    if VEI_QUANTIDADE<=0 then
    raise Exception.Create('A quantidade não pode ser menor ou igual a zero');

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Pedido de venda não localizado.');

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=VEI_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não localizado.');

    DM.TBProdutosQtde.Open;
    if DM.TBProdutosQtde.IsEmpty then
    raise Exception.Create('Não existe almoxarifado cadastrado para este produto.');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirItem) Venda: '+VED_CODIGO.ToString+' Produto: '+VEI_PRODUTO.ToString);

    DM.TBVendasItens.Open;
    DM.TBVendasItens.Insert;
    DM.TBVendasItensVEI_ALIQCOFINS.Value         :=Req.ContentFields.Field('VEI_ALIQCOFINS').AsExtended;
    DM.TBVendasItensVEI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('VEI_ALIQCOFINSST').AsExtended;
    DM.TBVendasItensVEI_ALIQFCP.Value            :=Req.ContentFields.Field('VEI_ALIQFCP').AsExtended;
    DM.TBVendasItensVEI_ALIQFCPST.Value          :=Req.ContentFields.Field('VEI_ALIQFCPST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMS.Value           :=Req.ContentFields.Field('VEI_ALIQICMS').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('VEI_ALIQICMSADICST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTER.Value      :=Req.ContentFields.Field('VEI_ALIQICMSINTER').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTERPART.Value  :=Req.ContentFields.Field('VEI_ALIQICMSINTERPART').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSRED.Value        :=Req.ContentFields.Field('VEI_ALIQICMSRED').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSST.Value         :=Req.ContentFields.Field('VEI_ALIQICMSST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('VEI_ALIQICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_ALIQII.Value             :=Req.ContentFields.Field('VEI_ALIQII').AsExtended;
    DM.TBVendasItensVEI_ALIQIPI.Value            :=Req.ContentFields.Field('VEI_ALIQIPI').AsExtended;
    DM.TBVendasItensVEI_ALIQISS.Value            :=Req.ContentFields.Field('VEI_ALIQISS').AsExtended;
    DM.TBVendasItensVEI_ALIQPIS.Value            :=Req.ContentFields.Field('VEI_ALIQPIS').AsExtended;
    DM.TBVendasItensVEI_ALIQPISST.Value          :=Req.ContentFields.Field('VEI_ALIQPISST').AsExtended;
    DM.TBVendasItensVEI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('VEI_ALMOXARIFADO').AsInteger;
    DM.TBVendasItensVEI_BASECOFINS.Value         :=Req.ContentFields.Field('VEI_BASECOFINS').AsExtended;
    DM.TBVendasItensVEI_BASECOFINSST.Value       :=Req.ContentFields.Field('VEI_BASECOFINSST').AsExtended;
    DM.TBVendasItensVEI_BASEICMS.Value           :=Req.ContentFields.Field('VEI_BASEICMS').AsExtended;
    DM.TBVendasItensVEI_BASEICMSRED.Value        :=Req.ContentFields.Field('VEI_BASEICMSRED').AsExtended;;
    DM.TBVendasItensVEI_BASEICMSST.Value         :=Req.ContentFields.Field('VEI_BASEICMSST').AsExtended;
    DM.TBVendasItensVEI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('VEI_BASEICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_BASEII.Value             :=Req.ContentFields.Field('VEI_BASEII').AsExtended;
    DM.TBVendasItensVEI_BASEIPI.Value            :=Req.ContentFields.Field('VEI_BASEIPI').AsExtended;
    DM.TBVendasItensVEI_BASEISS.Value            :=Req.ContentFields.Field('VEI_BASEISS').AsExtended;
    DM.TBVendasItensVEI_BASEPIS.Value            :=Req.ContentFields.Field('VEI_BASEPIS').AsExtended;
    DM.TBVendasItensVEI_BASEPISST.Value          :=Req.ContentFields.Field('VEI_BASEPISST').AsExtended;
    DM.TBVendasItensVEI_BENEFICIO.Value          :=San(Req.ContentFields.Field('VEI_BENEFICIO').AsString);
    DM.TBVendasItensVEI_CEST.Value               :=San(Req.ContentFields.Field('VEI_CEST').AsString);
    DM.TBVendasItensVEI_CFOP.Value               :=Req.ContentFields.Field('VEI_CFOP').AsInteger;
    DM.TBVendasItensVEI_CIDADEISS.Value          :=Req.ContentFields.Field('VEI_CIDADEISS').AsInteger;
    DM.TBVendasItensVEI_CLASSFISCAL.Value        :=San(Req.ContentFields.Field('VEI_CLASSFISCAL').AsString);
    //DM.TBVendasItensVEI_CODIGO.Value             :=Req.ContentFields.Field('VEI_CODIGO').AsInteger';
    DM.TBVendasItensVEI_CODIGOBARRAS.Value       :=San(Req.ContentFields.Field('VEI_CODIGOBARRAS').AsString);
    DM.TBVendasItensVEI_CODIGOFAB.Value          :=San(Req.ContentFields.Field('VEI_CODIGOFAB').AsString);
    //DM.TBVendasItensVEI_COMISSAO.Value           :=Req.ContentFields.Field('VEI_COMISSAO').AsExtended; //pelo SetarComissaoItem, antes do Post.
    DM.TBVendasItensVEI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VEI_COMPLEMENTO').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMS.Value     :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMS').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMSST.Value   :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMSST').AsString);
    DM.TBVendasItensVEI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('VEI_COMPOETOTAL').AsString);
    DM.TBVendasItensVEI_CONVERSAO.Value          :=Req.ContentFields.Field('VEI_CONVERSAO').AsExtended;
    DM.TBVendasItensVEI_CSTCOFINS.Value          :=Req.ContentFields.Field('VEI_CSTCOFINS').AsInteger;
    DM.TBVendasItensVEI_CSTICMS.Value            :=Req.ContentFields.Field('VEI_CSTICMS').AsInteger;
    DM.TBVendasItensVEI_CSTIPI.Value             :=Req.ContentFields.Field('VEI_CSTIPI').AsInteger;
    DM.TBVendasItensVEI_CSTPIS.Value             :=Req.ContentFields.Field('VEI_CSTPIS').AsInteger;
    DM.TBVendasItensVEI_DESCMAX.Value            :=Req.ContentFields.Field('VEI_DESCMAX').AsExtended;
    DM.TBVendasItensVEI_DESCPORC.Value           :=Req.ContentFields.Field('VEI_DESCPORC').AsExtended;
    DM.TBVendasItensVEI_DESCRICAO.Value          :=San(Req.ContentFields.Field('VEI_DESCRICAO').AsString);
    DM.TBVendasItensVEI_DESCVALOR.Value          :=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
    DM.TBVendasItensVEI_DESONERACAO.Value        :=San(Req.ContentFields.Field('VEI_DESONERACAO').AsString);
    DM.TBVendasItensVEI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('VEI_DICNPJ').AsString);
    DM.TBVendasItensVEI_DIDATA.Value             :=Req.ContentFields.Field('VEI_DIDATA').AsDate;
    DM.TBVendasItensVEI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('VEI_DIDESEMBARACODATA').AsDate;
    DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('VEI_DIDESENBARACOLOCAL').AsString);
    DM.TBVendasItensVEI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('VEI_DIDESEMBARACOUF').AsString);
    DM.TBVendasItensVEI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('VEI_DIEXPORTADORCOD').AsString);
    DM.TBVendasItensVEI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('VEI_DIINTERMEDIO').AsString);
    DM.TBVendasItensVEI_DINUMERO.Value           :=San(Req.ContentFields.Field('VEI_DINUMERO').AsString);
    DM.TBVendasItensVEI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('VEI_DITERCEIROUF').AsString);
    DM.TBVendasItensVEI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('VEI_DITRANSPORTE').AsString);
    DM.TBVendasItensVEI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('VEI_DIVALORAFRMM').AsExtended;
    DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value   :=Req.ContentFields.Field('VEI_ENQUADRAMENTOIPI').AsInteger;
    DM.TBVendasItensVEI_EXCECAO.Value            :=Req.ContentFields.Field('VEI_EXCECAO').AsInteger;
    DM.TBVendasItensVEI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('VEI_EXCHAVEACESSO').AsString);
    DM.TBVendasItensVEI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('VEI_EXDRAWBACK').AsString);
    DM.TBVendasItensVEI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('VEI_EXQUANTIDADE').AsExtended;
    DM.TBVendasItensVEI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('VEI_EXREGISTRO').AsString);
    DM.TBVendasItensVEI_FCI.Value                :=San(Req.ContentFields.Field('VEI_FCI').AsString);
    DM.TBVendasItensVEI_INCENTIVOISS.Value       :=San(Req.ContentFields.Field('VEI_INCENTIVOISS').AsString);
    DM.TBVendasItensVEI_INDICADORISS.Value       :=San(Req.ContentFields.Field('VEI_INDICADORISS').AsString);
    DM.TBVendasItensVEI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('VEI_INFOADICIONAL').AsString,0);
    DM.TBVendasItensVEI_LOCALIZACAO.Value        :=San(Req.ContentFields.Field('VEI_LOCALIZACAO').AsString);
    DM.TBVendasItensVEI_LOTE.Value               :=San(Req.ContentFields.Field('VEI_LOTE').AsString);
    DM.TBVendasItensVEI_LUCROPORC.Value          :=Req.ContentFields.Field('VEI_LUCROPORC').AsExtended;
    DM.TBVendasItensVEI_LUCROVALOR.Value         :=Req.ContentFields.Field('VEI_LUCROVALOR').AsExtended;
    DM.TBVendasItensVEI_MODICMS.Value            :=San(Req.ContentFields.Field('VEI_MODICMS').AsString);
    DM.TBVendasItensVEI_MODICMSST.Value          :=San(Req.ContentFields.Field('VEI_MODICMSST').AsString);
    DM.TBVendasItensVEI_ORIGEM.Value             :=San(Req.ContentFields.Field('VEI_ORIGEM').AsString);
    DM.TBVendasItensVEI_PAISISS.Value            :=Req.ContentFields.Field('VEI_PAISISS').AsInteger;
    DM.TBVendasItensVEI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VEI_PEDIDOCLIENTE').AsString);
    DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('VEI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBVendasItensVEI_PESO.Value               :=Req.ContentFields.Field('VEI_PESO').AsExtended;
    DM.TBVendasItensVEI_PESOTOTAL.Value          :=Req.ContentFields.Field('VEI_PESOTOTAL').AsExtended;
    DM.TBVendasItensVEI_PRECOCUSTO.Value         :=Req.ContentFields.Field('VEI_PRECOCUSTO').AsExtended;
    DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('VEI_PRECOCUSTOTOTAL').AsExtended;
    DM.TBVendasItensVEI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('VEI_PROCESSOISS').AsString);
    DM.TBVendasItensVEI_PRODUTO.Value            :=Req.ContentFields.Field('VEI_PRODUTO').AsInteger;
    DM.TBVendasItensVEI_PRODUTOREAL.Value        :=Req.ContentFields.Field('VEI_PRODUTOREAL').AsInteger;
    DM.TBVendasItensVEI_QUANTIDADE.Value         :=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;
    DM.TBVendasItensVEI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('VEI_QUANTIDADETROCA').AsExtended;
    //DM.TBVendasItensVEI_SEQUENCIA.Value          := setado no after insert.
    DM.TBVendasItensVEI_SERVICOISS.Value         :=San(Req.ContentFields.Field('VEI_SERVICOISS').AsString);
    DM.TBVendasItensVEI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('VEI_SOMACOFINSST').AsString);
    DM.TBVendasItensVEI_SOMAPISST.Value          :=San(Req.ContentFields.Field('VEI_SOMAPISST').AsString);
    DM.TBVendasItensVEI_TIPO.Value               :=San(Req.ContentFields.Field('VEI_TIPO').AsString);
    DM.TBVendasItensVEI_TIPOISS.Value            :=San(Req.ContentFields.Field('VEI_TIPOISS').AsString);
    DM.TBVendasItensVEI_UNIDADE.Value            :=San(Req.ContentFields.Field('VEI_UNIDADE').AsString);
    DM.TBVendasItensVEI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('VEI_VALORACESSORIAS').AsExtended;
    DM.TBVendasItensVEI_VALORADUANA.Value        :=Req.ContentFields.Field('VEI_VALORADUANA').AsExtended;
    DM.TBVendasItensVEI_VALORCOFINS.Value        :=Req.ContentFields.Field('VEI_VALORCOFINS').AsExtended;
    DM.TBVendasItensVEI_VALORCOFINSST.Value      :=Req.ContentFields.Field('VEI_VALORCOFINSST').AsExtended;
    DM.TBVendasItensVEI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('VEI_VALORCOMISSAO').AsExtended;
    DM.TBVendasItensVEI_VALORFCP.Value           :=Req.ContentFields.Field('VEI_VALORFCP').AsExtended;
    DM.TBVendasItensVEI_VALORFCPST.Value         :=Req.ContentFields.Field('VEI_VALORFCPST').AsExtended;
    DM.TBVendasItensVEI_VALORFRETE.Value         :=Req.ContentFields.Field('VEI_VALORFRETE').AsExtended;
    DM.TBVendasItensVEI_VALORICMS.Value          :=Req.ContentFields.Field('VEI_VALORICMS').AsExtended;
    DM.TBVendasItensVEI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('VEI_VALORICMSCREDSN').AsExtended;
    DM.TBVendasItensVEI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('VEI_VALORICMSDESONERADO').AsExtended;
    DM.TBVendasItensVEI_VALORICMSST.Value        :=Req.ContentFields.Field('VEI_VALORICMSST').AsExtended;
    DM.TBVendasItensVEI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('VEI_VALORICMSSTRET').AsExtended;
    DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('VEI_VALORICMSSUBSTITUTO').AsExtended;
    DM.TBVendasItensVEI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('VEI_VALORICMSUFDEST').AsExtended;
    DM.TBVendasItensVEI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('VEI_VALORICMSUFREMET').AsExtended;
    DM.TBVendasItensVEI_VALORII.Value            :=Req.ContentFields.Field('VEI_VALORII').AsExtended;
    DM.TBVendasItensVEI_VALORIOF.Value           :=Req.ContentFields.Field('VEI_VALORIOF').AsExtended;
    DM.TBVendasItensVEI_VALORIPI.Value           :=Req.ContentFields.Field('VEI_VALORIPI').AsExtended;
    DM.TBVendasItensVEI_VALORISS.Value           :=Req.ContentFields.Field('VEI_VALOISS').AsExtended;
    DM.TBVendasItensVEI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('VEI_VALORISSDEDUCAO').AsExtended;
    DM.TBVendasItensVEI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('VEI_VALORISSDESCCOND').AsExtended;
    DM.TBVendasItensVEI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('VEI_VALORISSDESCINCOND').AsExtended;
    DM.TBVendasItensVEI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('VEI_VALORISSOUTROS').AsExtended;
    DM.TBVendasItensVEI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('VEI_VALORISSRETENCAO').AsExtended;
    DM.TBVendasItensVEI_VALORPIS.Value           :=Req.ContentFields.Field('VEI_VALORPIS').AsExtended;
    DM.TBVendasItensVEI_VALORPISST.Value         :=Req.ContentFields.Field('VEI_VALORPISST').AsExtended;
    DM.TBVendasItensVEI_VALORSEGURO.Value        :=Req.ContentFields.Field('VEI_VALORSEGURO').AsExtended;
    DM.TBVendasItensVEI_VALORTOTAL.Value         :=Req.ContentFields.Field('VEI_VALORTOTAL').AsExtended;
    DM.TBVendasItensVEI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('VEI_VALORTOTALBRUTO').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('VEI_VALORTRIBUTOS').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSEST').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSFED').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSIMP').AsExtended;
    DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSMUN').AsExtended;
    DM.TBVendasItensVEI_VALORUNIT.Value          :=Req.ContentFields.Field('VEI_VALORUNIT').AsExtended;
    DM.TBVendasItensVEI_VENDA.Value              :=DM.TBVendasVED_CODIGO.Value; //Req.ContentFields.Field('VEI_VENDA').AsInteger;
    SetarComissaoItem(DM);
    DM.TBVendasItens.Post;
    DM.TBVendasItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBVendas.Close;
    DM.TBParametros.Close;
    DM.TBProdutos.Close;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  VED_CODIGO, VEI_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO:=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);
    if VED_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBVendasVED_STATUS.Value<>'A' then
    raise Exception.Create('Este pedido de venda não está em aberto.');

    DM.TBVendasItens.Open;
    if not DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro.');

    DM.TBVendasItens.Delete;
    DM.TRVendasItens.Commit;

    DM.CalcularTotaisVenda(True);
    ReordenarItens(DM,VED_CODIGO);

    //AtualizarTotaisConsulta(DM,COS_CODIGO);
    Result:=Visualizar(DM,Req); //req contem COS_CODIGO.

  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

procedure ReordenarItens(DM: TDMFirenet; Venda: Integer);
begin
  //atualiza a sequencia dos itens.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add(
    'merge into VENDASITENS VENDASITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    VEI_CODIGO, '+
    '    VEI_VENDA, '+
    '    row_number() over(partition by VEI_VENDA order by VEI_VENDA, VEI_CODIGO) as SEQ '+
    'from VENDASITENS where VEI_VENDA=:codigo order by VEI_VENDA, VEI_CODIGO) VENDASITENS_ORIGEM '+
    'on VENDASITENS_DESTINO.RDB$DB_KEY = VENDASITENS_ORIGEM.db_key '+
    'when matched then update set VENDASITENS_DESTINO.VEI_SEQUENCIA = VENDASITENS_ORIGEM.SEQ'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  DM.TRQuery1.Commit;

  //atualiza o total de itens.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add(
    'update VENDAS set VED_SEQUENCIAITEM=(select max(VEI_SEQUENCIA) as SEQ from VENDASITENS where VEI_VENDA=VED_CODIGO) where VED_CODIGO=:codigo'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  DM.TRQuery1.Commit;
end;

procedure SetarComissaoItem(DM: TDMFirenet);
// Percentual de comissao do item, como no Firenet: com VED_COMISSAOPOR='V' (PAR_COMISSAOPOR) vem da capa (vendedor e representante), senao do cadastro do produto.
begin
  if DM.TBVendasVED_COMISSAOPOR.Value='V' then
  begin
    DM.TBVendasItensVEI_COMISSAO.Value   :=DM.TBVendasVED_COMISSAO.Value;
    DM.TBVendasItensVEI_COMISSAOREP.Value:=DM.TBVendasVED_COMISSAOREP.Value;
  end else
  begin
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select PRO_COMISSAO from PRODUTOS where PRO_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.Query1.Open;
    DM.TBVendasItensVEI_COMISSAO.AsExtended   :=DM.Query1.FieldByName('PRO_COMISSAO').AsExtended;
    DM.TBVendasItensVEI_COMISSAOREP.AsExtended:=DM.Query1.FieldByName('PRO_COMISSAO').AsExtended;
    DM.Query1.Close;
  end;
end;

procedure CopiarCapaVendaParaNfe(DM: TDMFirenet);
begin
  DM.TBNfe.Insert;
  { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
  //Campos comentados são preenchidos por outros eventos.
  DM.TBNfeNFE_ALIQICMSCREDSN.Value:=DM.TBParametrosPAR_CREDITOICMSSN.Value; //alterado para pegar o valor atualizado. DM.TBVendasVED_ALIQICMSCREDSN.Value;
  DM.TBNfeNFE_BAIRRO.Value:=DM.TBVendasVED_BAIRRO.Value;
  //DM.TBNfeNFE_BAIXADATA.Value:=
  //DM.TBNfeNFE_BAIXAPOR.Value:=
  DM.TBNfeNFE_BASECOFINS.Value:=DM.TBVendasVED_BASECOFINS.Value;
  DM.TBNfeNFE_BASECOFINSST.Value:=DM.TBVendasVED_BASECOFINSST.Value;
  DM.TBNfeNFE_BASEIBSCBS.Value:=DM.TBVendasVED_BASEIBSCBS.Value;
  DM.TBNfeNFE_BASEICMS.Value:=DM.TBVendasVED_BASEICMS.Value;
  DM.TBNfeNFE_BASEICMSST.Value:=DM.TBVendasVED_BASEICMSST.Value;
  DM.TBNfeNFE_BASEII.Value:=DM.TBVendasVED_BASEII.Value;
  DM.TBNfeNFE_BASEIPI.Value:=DM.TBVendasVED_BASEIPI.Value;
  DM.TBNfeNFE_BASEIRRF.Value:=0; //em vendas nao tem.
  DM.TBNfeNFE_BASEPIS.Value:=DM.TBVendasVED_BASEPIS.Value;
  DM.TBNfeNFE_BASEISS.Value:=DM.TBVendasVED_BASEISS.Value;
  DM.TBNfeNFE_BASEIS.Value:=DM.TBVendasVED_BASEIS.Value;
  DM.TBNfeNFE_BASEPISST.Value:=DM.TBVendasVED_BASEPISST.Value;
  DM.TBNfeNFE_CEP.Value:=DM.TBVendasVED_CEP.Value;
  DM.TBNfeNFE_CFOP.Value:=DM.TBVendasVED_CFOP.Value;
  DM.TBNfeNFE_CFOPDESC.Value:=DM.TBVendasVED_CFOPDESC.Value;
  //DM.TBNfeNFE_CHAVEACESSO
  DM.TBNfeNFE_CIDADE.Value:=DM.TBVendasVED_CIDADE.Value;
  DM.TBNfeNFE_CIDADECODIGO.Value:=DM.TBVendasVED_CIDADECODIGO.Value;
  DM.TBNfeNFE_CLIENTE.Value:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBNfeNFE_CNPJ.Value:=DM.TBVendasVED_CNPJ.Value;
  DM.TBNfeNFE_CBSCREDPRES.Value:=DM.TBVendasVED_CBSCREDPRES.Value;
  DM.TBNfeNFE_CBSCREDPRESSUS.Value:=DM.TBVendasVED_CBSCREDPRESSUS.Value;
  DM.TBNfeNFE_CBSDEVOLUCAO.Value:=DM.TBVendasVED_CBSDEVOLUCAO.Value;
  DM.TBNfeNFE_CBSDIFERIMENTO.Value:=DM.TBVendasVED_CBSDIFERIMENTO.Value;
  DM.TBNfeNFE_CBSMONO.Value:=DM.TBVendasVED_CBSMONO.Value;
  DM.TBNfeNFE_CBSMONORETENCAO.Value:=DM.TBVendasVED_CBSMONORETENCAO.Value;
  DM.TBNfeNFE_CBSMONORETIDO.Value:=DM.TBVendasVED_CBSMONORETIDO.Value;
  DM.TBNfeNFE_CBSVALOR.Value:=DM.TBVendasVED_CBSVALOR.Value;
  //DM.TBNfeNFE_CODIGO - evento afterpost define o codigo.
  //DM.TBNfeNFE_CODIGONUMERICO
  DM.TBNfeNFE_COMISSAO.Value:=DM.TBVendasVED_COMISSAO.Value;
  DM.TBNfeNFE_COMISSAOPOR.Value:=DM.TBVendasVED_COMISSAOPOR.Value;
  DM.TBNfeNFE_COMISSAOREP.Value:=DM.TBVendasVED_COMISSAOREP.Value;
  DM.TBNfeNFE_COMPLEMENTO.Value:=DM.TBVendasVED_COMPLEMENTO.Value;
  DM.TBNfeNFE_CONDICAO.Value:=DM.TBVendasVED_CONDICAO.Value;
  DM.TBNfeNFE_CONDICAOMEMO.Value:=DM.TBVendasVED_CONDICAOMEMO.Value;
  //DM.TBNfeNFE_CONSULTADA
  DM.TBNfeNFE_CONTATO.Value:=DM.TBVendasVED_CONTATO.Value;
  DM.TBNfeNFE_CPF.Value:=DM.TBVendasVED_CPF.Value;
  DM.TBNfeNFE_CUSTOTOTAL.Value:=DM.TBVendasVED_CUSTOTOTAL.Value;
  DM.TBNfeNFE_DESCPORC.Value:=DM.TBVendasVED_DESCPORC.Value;
  DM.TBNfeNFE_DESCPORCCLIENTE.Value:=DM.TBVendasVED_DESCPORCCLIENTE.Value;
  DM.TBNfeNFE_DESCPORCCONDICAO.Value:=DM.TBVendasVED_DESCPORCCONDICAO.Value;
  DM.TBNfeNFE_DESCVALOR.Value:=DM.TBVendasVED_DESCVALOR.Value;
  DM.TBNfeNFE_DESTACARIMPOSTOS.Value:=DM.TBVendasVED_DESTACARIMPOSTOS.Value;
  DM.TBNfeNFE_DIAPREFERENCIAL.Value:=DM.TBVendasVED_DIAPREFERENCIAL.Value;
  //DM.TBNfeNFE_DPEC
  //DM.TBNfeNFE_DPECDH
  //DM.TBNfeNFE_DTATUALIZACAO
  DM.TBNfeNFE_DTCADASTRO.Value:=Date; //alterado a pedido do Fábio. DM.TBVendasVED_DTCADASTRO.Value;
  DM.TBNfeNFE_DTEMISSAO.Value:=Date;
  DM.TBNfeNFE_DTPRESTSERVICO.Value:=DM.TBVendasVED_DTPRESTSERVICO.Value;
  DM.TBNfeNFE_DTSAIDA.Value:=Date;
  DM.TBNfeNFE_ENDERECO.Value:=DM.TBVendasVED_ENDERECO.Value;
  DM.TBNfeNFE_ENTRADASAIDA.Value:=DM.TBVendasVED_ENTRADASAIDA.Value;
  //DM.TBNfeNFE_ENVIADA
  DM.TBNfeNFE_ESPECIE.Value:=DM.TBVendasVED_ESPECIE.Value;
  DM.TBNfeNFE_ESTADO.Value:=DM.TBVendasVED_ESTADO.Value;
  DM.TBNfeNFE_ESTADOCODIGO.Value:=DM.TBVendasVED_ESTADOCODIGO.Value;
  DM.TBNfeNFE_EXLOCAL.Value:=DM.TBVendasVED_EXLOCAL.Value;
  DM.TBNfeNFE_EXPEDIDOPOR.Value:=DM.TBVendasVED_EXPEDIDOPOR.Value;
  DM.TBNfeNFE_EXUFSAIDA.Value:=DM.TBVendasVED_EXUFSAIDA.Value;
  //DM.TBNfeNFE_FINALIDADE
  DM.TBNfeNFE_FONE1.Value:=DM.TBVendasVED_FONE1.Value;
  DM.TBNfeNFE_FORMAPAGTO.Value:=DM.TBVendasVED_FORMAPAGTO.Value;
  DM.TBNfeNFE_FRETE.Value:=DM.TBVendasVED_FRETE.Value;
  DM.TBNfeNFE_GOVERNAMENTAL.Value:=DM.TBVendasVED_GOVERNAMENTAL.Value;
  DM.TBNfeNFE_GOVERNAMENTALALIQRED.Value:=DM.TBVendasVED_GOVERNAMENTALALIQRED.Value;
  DM.TBNfeNFE_GOVERNAMENTALOP.Value:=DM.TBVendasVED_GOVERNAMENTALOP.Value;
  DM.TBNfeNFE_HRATUALIZACAO.Value:=Time;
  DM.TBNfeNFE_HRCADASTRO.Value:=Time;
  DM.TBNfeNFE_IDESTRANGEIRO.Value:=DM.TBVendasVED_IDESTRANGEIRO.Value;
  DM.TBNfeNFE_IBSCREDPRES.Value:=DM.TBVendasVED_IBSCREDPRES.Value;
  DM.TBNfeNFE_IBSCREDPRESSUS.Value:=DM.TBVendasVED_IBSCREDPRESSUS.Value;
  DM.TBNfeNFE_IBSMONO.Value:=DM.TBVendasVED_IBSMONO.Value;
  DM.TBNfeNFE_IBSMONORETENCAO.Value:=DM.TBVendasVED_IBSMONORETENCAO.Value;
  DM.TBNfeNFE_IBSMONORETIDO.Value:=DM.TBVendasVED_IBSMONORETIDO.Value;
  DM.TBNfeNFE_IBSMUNDEVOLUCAO.Value:=DM.TBVendasVED_IBSMUNDEVOLUCAO.Value;
  DM.TBNfeNFE_IBSMUNDIFERIMENTO.Value:=DM.TBVendasVED_IBSMUNDIFERIMENTO.Value;
  DM.TBNfeNFE_IBSMUNVALOR.Value:=DM.TBVendasVED_IBSMUNVALOR.Value;
  DM.TBNfeNFE_IBSUFDEVOLUCAO.Value:=DM.TBVendasVED_IBSUFDEVOLUCAO.Value;
  DM.TBNfeNFE_IBSUFDIFERIMENTO.Value:=DM.TBVendasVED_IBSUFDIFERIMENTO.Value;
  DM.TBNfeNFE_IBSUFVALOR.Value:=DM.TBVendasVED_IBSUFVALOR.Value;
  DM.TBNfeNFE_IBSVALOR.Value:=DM.TBVendasVED_IBSVALOR.Value;
  DM.TBNfeNFE_IE.Value:=DM.TBVendasVED_IE.Value;
  DM.TBNfeNFE_INFOADICFISCO.Value:=DM.TBVendasVED_INFOADICFISCO.Value;
  DM.TBNfeNFE_INFOCOMPLEMENTAR.Value:=DM.TBVendasVED_INFOCOMPLEMENTAR.Value;
  //DM.TBNfeNFE_INTERMEDIADOR.Value:=
  //DM.TBNfeNFE_INTERMEDIADORCAD.Value:=
  //DM.TBNfeNFE_INTERMEDIADORCNPJ.Value:=
  DM.TBNfeNFE_LACRES.Value:=DM.TBVendasVED_LACRES.Value;
  //DM.TBNfeNFE_LOTE
  DM.TBNfeNFE_LUCROPORC.Value:=DM.TBVendasVED_LUCROPORC.Value;
  DM.TBNfeNFE_LUCROVALOR.Value:=DM.TBVendasVED_LUCROVALOR.Value;
  DM.TBNfeNFE_MANUAL.Value:=DM.TBVendasVED_MANUAL.Value;
  DM.TBNfeNFE_MARCA.Value:=DM.TBVendasVED_MARCA.Value;
  //DM.TBNfeNFE_MODELO
  //DM.TBNfeNFE_MOTIVOCANCELAMENTO
  //DM.TBNfeNFE_MOTIVOINUTILIZACAO
  DM.TBNfeNFE_MOVIMENTAESTOQUE.Value:=DM.TBVendasVED_MOVIMENTAESTOQUE.Value;
  DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=DM.TBVendasVED_MOVIMENTAFINANCEIRO.Value;
  DM.TBNfeNFE_NOME.Value:=DM.TBVendasVED_NOME.Value;
  DM.TBNfeNFE_NOTACREDITO.Value:=DM.TBVendasVED_NOTACREDITO.Value;
  DM.TBNfeNFE_NOTADEBITO.Value:=DM.TBVendasVED_NOTADEBITO.Value;
  DM.TBNfeNFE_NUMERO.Value:=DM.TBVendasVED_NUMERO.Value;
  DM.TBNfeNFE_OBSERVACOES.Value:=DM.TBVendasVED_OBSERVACOES.Value;
  DM.TBNfeNFE_PAIS.Value:=DM.TBVendasVED_PAIS.Value;
  DM.TBNfeNFE_PAISCODIGO.Value:=DM.TBVendasVED_PAISCODIGO.Value;
  DM.TBNfeNFE_PEDIDOCLIENTE.Value:=DM.TBVendasVED_PEDIDOCLIENTE.Value;
  DM.TBNfeNFE_PESOBRUTO.Value:=DM.TBVendasVED_PESOBRUTO.Value;
  DM.TBNfeNFE_PESOLIQ.Value:=DM.TBVendasVED_PESOLIQ.Value;
  //DM.TBNfeNFE_PROTOCOLO
  //DM.TBNfeNFE_PROTOCOLOCANC
  //DM.TBNfeNFE_PROTOCOLOCANCDH
  //DM.TBNfeNFE_PROTOCOLODH
  //DM.TBNfeNFE_PROTOCOLOINUT
  //DM.TBNfeNFE_PROTOCOLOINUTDH
  DM.TBNfeNFE_REBOQUEPLACA.Value:=DM.TBVendasVED_REBOQUEPLACA.Value;
  DM.TBNfeNFE_REBOQUEPLACAUF.Value:=DM.TBVendasVED_REBOQUEPLACAUF.Value;
  DM.TBNfeNFE_REBOQUERNTC.Value:=DM.TBVendasVED_REBOQUERNTC.Value;
  DM.TBNfeNFE_REPRESENTANTE.Value:=DM.TBVendasVED_REPRESENTANTE.Value;
  //DM.TBNfeNFE_RECIBO
  //DM.TBNfeNFE_RECIBODH
  DM.TBNfeNFE_RG.Value:=DM.TBVendasVED_RG.Value;
  DM.TBNfeNFE_SEQUENCIAITEM.Value:=DM.TBVendasVED_SEQUENCIAITEM.Value;
  //DM.TBNfeNFE_SERIE.Value:=
  DM.TBNfeNFE_STATUS.Value:='A';
  DM.TBNfeNFE_TABELAPRECO.Value:=DM.TBVendasVED_TABELAPRECO.Value;
  DM.TBNfeNFE_TIPOATENDIMENTO.Value:=DM.TBVendasVED_TIPOATENDIMENTO.Value;
  DM.TBNfeNFE_TIPOCONSUMIDOR.Value:=DM.TBVendasVED_TIPOCONSUMIDOR.Value;
  //DM.TBNfeNFE_TIPOEMISSAO.Value:=
  DM.TBNfeNFE_TIPOOPERACAO.Value:=DM.TBVendasVED_TIPOOPERACAO.Value;
  DM.TBNfeNFE_TOTALADUANA.Value:=DM.TBVendasVED_TOTALADUANA.Value;
  DM.TBNfeNFE_TOTALBRUTO.Value:=DM.TBVendasVED_TOTALBRUTO.Value;
  //DM.TBNfeNFE_TOTALCCE.Value:=
  DM.TBNfeNFE_TOTALCOFINS.Value:=DM.TBVendasVED_TOTALCOFINS.Value;
  DM.TBNfeNFE_TOTALCOFINSST.Value:=DM.TBVendasVED_TOTALCOFINSST.Value;
  DM.TBNfeNFE_TOTALCOMISSAO.Value:=DM.TBVendasVED_TOTALCOMISSAO.Value;
  DM.TBNfeNFE_TOTALCOMISSAOREP.Value:=DM.TBVendasVED_TOTALCOMISSAOREP.Value;
  DM.TBNfeNFE_TOTALFCP.Value:=DM.TBVendasVED_TOTALFCP.Value;
  DM.TBNfeNFE_TOTALFCPST.Value:=DM.TBVendasVED_TOTALFCPST.Value;
  DM.TBNfeNFE_TOTALICMS.Value:=DM.TBVendasVED_TOTALICMS.Value;
  DM.TBNfeNFE_TOTALICMSCREDSN.Value:=DM.TBVendasVED_TOTALICMSCREDSN.Value; //no after post recalcula, ja que atualizou a aliquota.
  DM.TBNfeNFE_TOTALICMSST.Value:=DM.TBVendasVED_TOTALICMSST.Value;
  DM.TBNfeNFE_TOTALICMSUFDEST.Value:=DM.TBVendasVED_TOTALICMSUFDEST.Value;
  DM.TBNfeNFE_TOTALICMSUFREMET.Value:=DM.TBVendasVED_TOTALICMSUFREMET.Value;
  DM.TBNfeNFE_TOTALII.Value:=DM.TBVendasVED_TOTALII.Value;
  DM.TBNfeNFE_TOTALIOF.Value:=DM.TBVendasVED_TOTALIOF.Value;
  DM.TBNfeNFE_TOTALIPI.Value:=DM.TBVendasVED_TOTALIPI.Value;
  DM.TBNfeNFE_TOTALIRRF.Value:=0; //em vendas nao tem.
  DM.TBNfeNFE_TOTALIS.Value:=DM.TBVendasVED_TOTALIS.Value;
  DM.TBNfeNFE_TOTALISS.Value:=DM.TBVendasVED_TOTALISS.Value;
  DM.TBNfeNFE_TOTALISSDEDUCAO.Value:=DM.TBVendasVED_TOTALISSDEDUCAO.Value;
  DM.TBNfeNFE_TOTALISSDESCCOND.Value:=DM.TBVendasVED_TOTALISSDESCCOND.Value;
  DM.TBNfeNFE_TOTALISSDESCINCOND.Value:=DM.TBVendasVED_TOTALISSDESCINCOND.Value;
  DM.TBNfeNFE_TOTALISSOUTROS.Value:=DM.TBVendasVED_TOTALISSOUTROS.Value;
  DM.TBNfeNFE_TOTALISSRETENCAO.Value:=DM.TBVendasVED_TOTALISSRETENCAO.Value;
  DM.TBNfeNFE_TOTALITENS.Value:=DM.TBVendasVED_TOTALITENS.Value;
  DM.TBNfeNFE_TOTALPIS.Value:=DM.TBVendasVED_TOTALPIS.Value;
  DM.TBNfeNFE_TOTALPISST.Value:=DM.TBVendasVED_TOTALPISST.Value;
  DM.TBNfeNFE_TOTALPRODUTOS.Value:=DM.TBVendasVED_TOTALPRODUTOS.Value;
  DM.TBNfeNFE_TOTALSERVICOS.Value:=DM.TBVendasVED_TOTALSERVICOS.Value;
  DM.TBNfeNFE_TOTALTRIBUTOS.Value:=DM.TBVendasVED_TOTALTRIBUTOS.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSEST.Value:=DM.TBVendasVED_TOTALTRIBUTOSEST.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSFED.Value:=DM.TBVendasVED_TOTALTRIBUTOSFED.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value:=DM.TBVendasVED_TOTALTRIBUTOSIMP.Value;
  DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value:=DM.TBVendasVED_TOTALTRIBUTOSMUN.Value;
  DM.TBNfeNFE_TRANSPCIDADE.Value:=DM.TBVendasVED_TRANSPCIDADE.Value;
  DM.TBNfeNFE_TRANSPCNPJ.Value:=DM.TBVendasVED_TRANSPCNPJ.Value;
  DM.TBNfeNFE_TRANSPCPF.Value:=DM.TBVendasVED_TRANSPCPF.Value;
  DM.TBNfeNFE_TRANSPEMAIL.Value:=DM.TBVendasVED_TRANSPEMAIL.Value;
  DM.TBNfeNFE_TRANSPENDERECO.Value:=DM.TBVendasVED_TRANSPENDERECO.Value;
  DM.TBNfeNFE_TRANSPESTADO.Value:=DM.TBVendasVED_TRANSPESTADO.Value;
  DM.TBNfeNFE_TRANSPFONE.Value:=DM.TBVendasVED_TRANSPFONE.Value;
  DM.TBNfeNFE_TRANSPIE.Value:=DM.TBVendasVED_TRANSPIE.Value;
  DM.TBNfeNFE_TRANSPNOME.Value:=DM.TBVendasVED_TRANSPNOME.Value;
  DM.TBNfeNFE_TRANSPORTADORA.Value:=DM.TBVendasVED_TRANSPORTADORA.Value;
  //DM.TBNfeNFE_USUARIO.Value:=
  DM.TBNfeNFE_VALORDESPACES.Value:=DM.TBVendasVED_VALORDESPACES.Value;
  DM.TBNfeNFE_VALORFRETE.Value:=DM.TBVendasVED_VALORFRETE.Value;
  DM.TBNfeNFE_VALORSEGURO.Value:=DM.TBVendasVED_VALORSEGURO.Value;
  DM.TBNfeNFE_VALORTOTAL.Value:=DM.TBVendasVED_VALORTOTAL.Value;
  DM.TBNfeNFE_VALORTOTALRTC.Value:=DM.TBVendasVED_VALORTOTALRTC.Value;
  DM.TBNfeNFE_VEICULOPLACA.Value:=DM.TBVendasVED_VEICULOPLACA.Value;
  DM.TBNfeNFE_VEICULOPLACAUF.Value:=DM.TBVendasVED_VEICULOPLACAUF.Value;
  DM.TBNfeNFE_VEICULORNTC.Value:=DM.TBVendasVED_VEICULORNTC.Value;
  DM.TBNfeNFE_VENDA.Value:=DM.TBVendasVED_CODIGO.Value;
  DM.TBNfeNFE_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBNfeNFE_VOLUMES.Value:=DM.TBVendasVED_VOLUMES.Value;
  DM.TBNfeNFE_VOLUMESNUM.Value:=DM.TBVendasVED_VOLUMESNUM.Value;
  //testar com os campos abaixo comentados.
{  DM.TBNfeCPG_CODIGO.Value:=DM.TBVendasCPG_CODIGO.Value;
  DM.TBNfeCPG_DESCRICAO.Value:=DM.TBVendasCPG_DESCRICAO.Value;
  DM.TBNfeVEN_CODIGO1.Value:=DM.TBVendasVEN_CODIGO1.Value;
  DM.TBNfeVEN_NOME1.Value:=DM.TBVendasVEN_NOME1.Value;
  DM.TBNfeVEN_CODIGO.Value:=DM.TBVendasVEN_CODIGO.Value;
  DM.TBNfeVEN_NOME.Value:=DM.TBVendasVEN_NOME.Value;}
  DM.TBNfe.Post;
end;

procedure CopiarItensVendaParaNfe(DM: TDMFirenet);
begin
  DM.TBVendasItens.DisableControls;
  DM.TBVendasItens.First;
  while not DM.TBVendasItens.Eof do
  begin
    { TODO -oRogerio -cCampos : IGUALAR CAMPOS }
    DM.TBNfeItens.Insert; //quando incluir campos novos na tabela, incluir os mesmoS aqui. em ordem alfabética.
    DM.TBNfeItensNFI_ALIQCBS.Value:=DM.TBVendasItensVEI_ALIQCBS.Value;
    DM.TBNfeItensNFI_ALIQCBSCREDPRES.Value:=DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value;
    DM.TBNfeItensNFI_ALIQCBSDIF.Value:=DM.TBVendasItensVEI_ALIQCBSDIF.Value;
    DM.TBNfeItensNFI_ALIQCBSEFE.Value:=DM.TBVendasItensVEI_ALIQCBSEFE.Value;
    DM.TBNfeItensNFI_ALIQCBSRED.Value:=DM.TBVendasItensVEI_ALIQCBSRED.Value;
    DM.TBNfeItensNFI_ALIQCOFINS.Value:=DM.TBVendasItensVEI_ALIQCOFINS.Value;
    DM.TBNfeItensNFI_ALIQCOFINSST.Value:=DM.TBVendasItensVEI_ALIQCOFINSST.Value;
    DM.TBNfeItensNFI_ALIQFCP.Value:=DM.TBVendasItensVEI_ALIQFCP.Value;
    DM.TBNfeItensNFI_ALIQFCPST.Value:=DM.TBVendasItensVEI_ALIQFCPST.Value;
    DM.TBNfeItensNFI_ALIQIBSCREDPRES.Value:=DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value;
    DM.TBNfeItensNFI_ALIQIBSMUN.Value:=DM.TBVendasItensVEI_ALIQIBSMUN.Value;
    DM.TBNfeItensNFI_ALIQIBSMUNDIF.Value:=DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value;
    DM.TBNfeItensNFI_ALIQIBSMUNEFE.Value:=DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value;
    DM.TBNfeItensNFI_ALIQIBSMUNRED.Value:=DM.TBVendasItensVEI_ALIQIBSMUNRED.Value;
    DM.TBNfeItensNFI_ALIQIBSUF.Value:=DM.TBVendasItensVEI_ALIQIBSUF.Value;
    DM.TBNfeItensNFI_ALIQIBSUFDIF.Value:=DM.TBVendasItensVEI_ALIQIBSUFDIF.Value;
    DM.TBNfeItensNFI_ALIQIBSUFEFE.Value:=DM.TBVendasItensVEI_ALIQIBSUFEFE.Value;
    DM.TBNfeItensNFI_ALIQIBSUFRED.Value:=DM.TBVendasItensVEI_ALIQIBSUFRED.Value;
    DM.TBNfeItensNFI_ALIQICMS.Value:=DM.TBVendasItensVEI_ALIQICMS.Value;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value:=DM.TBVendasItensVEI_ALIQICMSADICST.Value;
    DM.TBNfeItensNFI_ALIQICMSINTER.Value:=DM.TBVendasItensVEI_ALIQICMSINTER.Value;
    DM.TBNfeItensNFI_ALIQICMSINTERPART.Value:=DM.TBVendasItensVEI_ALIQICMSINTERPART.Value;
    DM.TBNfeItensNFI_ALIQICMSRED.Value:=DM.TBVendasItensVEI_ALIQICMSRED.Value;
    DM.TBNfeItensNFI_ALIQICMSST.Value:=DM.TBVendasItensVEI_ALIQICMSST.Value;
    DM.TBNfeItensNFI_ALIQICMSSTRET.Value:=DM.TBVendasItensVEI_ALIQICMSSTRET.Value;
    DM.TBNfeItensNFI_ALIQII.Value:=DM.TBVendasItensVEI_ALIQII.Value;
    DM.TBNfeItensNFI_ALIQIPI.Value:=DM.TBVendasItensVEI_ALIQIPI.Value;
    DM.TBNfeItensNFI_ALIQIS.Value:=DM.TBVendasItensVEI_ALIQIS.Value;
    DM.TBNfeItensNFI_ALIQISESP.Value:=DM.TBVendasItensVEI_ALIQISESP.Value;
    DM.TBNfeItensNFI_ALIQISS.Value:=DM.TBVendasItensVEI_ALIQISS.Value;
    DM.TBNfeItensNFI_ALIQPIS.Value:=DM.TBVendasItensVEI_ALIQPIS.Value;
    DM.TBNfeItensNFI_ALIQPISST.Value:=DM.TBVendasItensVEI_ALIQPISST.Value;
    DM.TBNfeItensNFI_ALMOXARIFADO.Value:=DM.TBVendasItensVEI_ALMOXARIFADO.Value;
    DM.TBNfeItensNFI_BASECOFINS.Value:=DM.TBVendasItensVEI_BASECOFINS.Value;
    DM.TBNfeItensNFI_BASECOFINSST.Value:=DM.TBVendasItensVEI_BASECOFINSST.Value;
    DM.TBNfeItensNFI_BASEIBSCBS.Value:=DM.TBVendasItensVEI_BASEIBSCBS.Value;
    DM.TBNfeItensNFI_BASEICMS.Value:=DM.TBVendasItensVEI_BASEICMS.Value;
    DM.TBNfeItensNFI_BASEICMSRED.Value:=DM.TBVendasItensVEI_BASEICMSRED.Value;
    DM.TBNfeItensNFI_BASEICMSST.Value:=DM.TBVendasItensVEI_BASEICMSST.Value;
    DM.TBNfeItensNFI_BASEICMSSTRET.Value:=DM.TBVendasItensVEI_BASEICMSSTRET.Value;
    DM.TBNfeItensNFI_BASEII.Value:=DM.TBVendasItensVEI_BASEII.Value;
    DM.TBNfeItensNFI_BASEIPI.Value:=DM.TBVendasItensVEI_BASEIPI.Value;
    DM.TBNfeItensNFI_BASEIS.Value:=DM.TBVendasItensVEI_BASEIS.Value;
    DM.TBNfeItensNFI_BASEISS.Value:=DM.TBVendasItensVEI_BASEISS.Value;
    DM.TBNfeItensNFI_BASEPIS.Value:=DM.TBVendasItensVEI_BASEPIS.Value;
    DM.TBNfeItensNFI_BASEPISST.Value:=DM.TBVendasItensVEI_BASEPISST.Value;
    DM.TBNfeItensNFI_BENEFICIO.Value:=DM.TBVendasItensVEI_BENEFICIO.Value;
    DM.TBNfeItensNFI_CBSCREDITOPRES.Value:=DM.TBVendasItensVEI_CBSCREDITOPRES.Value;
    DM.TBNfeItensNFI_CEST.Value:=DM.TBVendasItensVEI_CEST.Value;
    DM.TBNfeItensNFI_CFOP.Value:=DM.TBVendasItensVEI_CFOP.Value;
    DM.TBNfeItensNFI_CIDADEISS.Value:=DM.TBVendasItensVEI_CIDADEISS.Value;
    DM.TBNfeItensNFI_CLASSFISCAL.Value:=DM.TBVendasItensVEI_CLASSFISCAL.Value;
    DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value:=DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value;
    DM.TBNfeItensNFI_CLASSTRIBIS.Value:=DM.TBVendasItensVEI_CLASSTRIBIS.Value;
    //DM.TBNfeItensNFI_CODIGO.Value:= //chave primaria.
    DM.TBNfeItensNFI_CODIGOBARRAS.Value:=DM.TBVendasItensVEI_CODIGOBARRAS.Value;
    DM.TBNfeItensNFI_CODIGOFAB.Value:=DM.TBVendasItensVEI_CODIGOFAB.Value;
    DM.TBNfeItensNFI_COMISSAO.Value:=DM.TBVendasItensVEI_COMISSAO.Value;
    DM.TBNfeItensNFI_COMISSAOREP.Value:=DM.TBVendasItensVEI_COMISSAOREP.Value;
    DM.TBNfeItensNFI_COMPLEMENTO.Value:=DM.TBVendasItensVEI_COMPLEMENTO.Value;
    DM.TBNfeItensNFI_COMPOEBASEICMS.Value:=DM.TBVendasItensVEI_COMPOEBASEICMS.Value;
    DM.TBNfeItensNFI_COMPOEBASEICMSST.Value:=DM.TBVendasItensVEI_COMPOEBASEICMSST.Value;
    DM.TBNfeItensNFI_COMPOETOTAL.Value:=DM.TBVendasItensVEI_COMPOETOTAL.Value;
    DM.TBNfeItensNFI_CONVERSAO.Value:=DM.TBVendasItensVEI_CONVERSAO.Value;
    DM.TBNfeItensNFI_CSTCOFINS.Value:=DM.TBVendasItensVEI_CSTCOFINS.Value;
    DM.TBNfeItensNFI_CSTIBSCBS.Value:=DM.TBVendasItensVEI_CSTIBSCBS.Value;
    DM.TBNfeItensNFI_CSTICMS.Value:=DM.TBVendasItensVEI_CSTICMS.Value;
    DM.TBNfeItensNFI_CSTIPI.Value:=DM.TBVendasItensVEI_CSTIPI.Value;
    DM.TBNfeItensNFI_CSTIS.Value:=DM.TBVendasItensVEI_CSTIS.Value;
    DM.TBNfeItensNFI_CSTPIS.Value:=DM.TBVendasItensVEI_CSTPIS.Value;
    DM.TBNfeItensNFI_DESCMAX.Value:=DM.TBVendasItensVEI_DESCMAX.Value;
    DM.TBNfeItensNFI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCPORC.Value;
    DM.TBNfeItensNFI_DESCRICAO.Value:=DM.TBVendasItensVEI_DESCRICAO.Value;
    DM.TBNfeItensNFI_DESCVALOR.Value:=DM.TBVendasItensVEI_DESCVALOR.Value;
    DM.TBNfeItensNFI_DESONERACAO.Value:=DM.TBVendasItensVEI_DESONERACAO.Value;
    DM.TBNfeItensNFI_DICNPJ.Value:=DM.TBVendasItensVEI_DICNPJ.Value;
    DM.TBNfeItensNFI_DIDATA.Value:=DM.TBVendasItensVEI_DIDATA.Value;
    DM.TBNfeItensNFI_DIDESEMBARACODATA.Value:=DM.TBVendasItensVEI_DIDESEMBARACODATA.Value;
    DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value:=DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value;
    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value:=DM.TBVendasItensVEI_DIDESEMBARACOUF.Value;
    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value:=DM.TBVendasItensVEI_DIEXPORTADORCOD.Value;
    DM.TBNfeItensNFI_DIINTERMEDIO.Value:=DM.TBVendasItensVEI_DIINTERMEDIO.Value;
    DM.TBNfeItensNFI_DINUMERO.Value:=DM.TBVendasItensVEI_DINUMERO.Value;
    DM.TBNfeItensNFI_DITERCEIROUF.Value:=DM.TBVendasItensVEI_DITERCEIROUF.Value;
    DM.TBNfeItensNFI_DITRANSPORTE.Value:=DM.TBVendasItensVEI_DITRANSPORTE.Value;
    DM.TBNfeItensNFI_DIVALORAFRMM.Value:=DM.TBVendasItensVEI_DIVALORAFRMM.Value;
    DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value:=DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value;
    DM.TBNfeItensNFI_EXCHAVEACESSO.Value:=DM.TBVendasItensVEI_EXCHAVEACESSO.Value;
    DM.TBNfeItensNFI_EXDRAWBACK.Value:=DM.TBVendasItensVEI_EXDRAWBACK.Value;
    DM.TBNfeItensNFI_EXQUANTIDADE.Value:=DM.TBVendasItensVEI_EXQUANTIDADE.Value;
    DM.TBNfeItensNFI_EXREGISTRO.Value:=DM.TBVendasItensVEI_EXREGISTRO.Value;
    DM.TBNfeItensNFI_FCI.Value:=DM.TBVendasItensVEI_FCI.Value;
    DM.TBNfeItensNFI_IBSCREDITOPRES.Value:=DM.TBVendasItensVEI_IBSCREDITOPRES.Value;
    DM.TBNfeItensNFI_INCENTIVOISS.Value:=DM.TBVendasItensVEI_INCENTIVOISS.Value;
    DM.TBNfeItensNFI_INDICADORISS.Value:=DM.TBVendasItensVEI_INDICADORISS.Value;
    DM.TBNfeItensNFI_INFOADICIONAL.Value:=DM.TBVendasItensVEI_INFOADICIONAL.Value;
    DM.TBNfeItensNFI_LOCALIZACAO.Value:=DM.TBVendasItensVEI_LOCALIZACAO.Value;
    DM.TBNfeItensNFI_LOTE.Value:=DM.TBVendasItensVEI_LOTE.Value;
    DM.TBNfeItensNFI_LUCROPORC.Value:=DM.TBVendasItensVEI_LUCROPORC.Value;
    DM.TBNfeItensNFI_LUCROVALOR.Value:=DM.TBVendasItensVEI_LUCROVALOR.Value;
    DM.TBNfeItensNFI_MODICMS.Value:=DM.TBVendasItensVEI_MODICMS.Value;
    DM.TBNfeItensNFI_MODICMSST.Value:=DM.TBVendasItensVEI_MODICMSST.Value;
    DM.TBNfeItensNFI_NOTA.Value:=DM.TBNfeNFE_CODIGO.Value; //chave estrangeira.
    DM.TBNfeItensNFI_ORIGEM.Value:=DM.TBVendasItensVEI_ORIGEM.Value;
    DM.TBNfeItensNFI_PAISISS.Value:=DM.TBVendasItensVEI_PAISISS.Value;
    DM.TBNfeItensNFI_PEDIDOCLIENTE.Value:=DM.TBVendasItensVEI_PEDIDOCLIENTE.Value;
    DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value:=DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value;
    DM.TBNfeItensNFI_PESO.Value:=DM.TBVendasItensVEI_PESO.Value;
    DM.TBNfeItensNFI_PESOTOTAL.Value:=DM.TBVendasItensVEI_PESOTOTAL.Value;
    DM.TBNfeItensNFI_PRECOCUSTO.Value:=DM.TBVendasItensVEI_PRECOCUSTO.Value;
    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value:=DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value;
    DM.TBNfeItensNFI_PROCESSOISS.Value:=DM.TBVendasItensVEI_PROCESSOISS.Value;
    DM.TBNfeItensNFI_PRODUTO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBNfeItensNFI_PRODUTOREAL.Value:=DM.TBVendasItensVEI_PRODUTOREAL.Value;
    DM.TBNfeItensNFI_QUANTIDADE.Value:=DM.TBVendasItensVEI_QUANTIDADE.Value;
    DM.TBNfeItensNFI_QUANTIDADETROCA.Value:=DM.TBVendasItensVEI_QUANTIDADETROCA.Value;
    DM.TBNfeItensNFI_SEQUENCIA.Value:=DM.TBVendasItensVEI_SEQUENCIA.Value;
    DM.TBNfeItensNFI_SERVICOISS.Value:=DM.TBVendasItensVEI_SERVICOISS.Value;
    DM.TBNfeItensNFI_SOMACOFINSST.Value:=DM.TBVendasItensVEI_SOMACOFINSST.Value;
    DM.TBNfeItensNFI_SOMAPISST.Value:=DM.TBVendasItensVEI_SOMAPISST.Value;
    DM.TBNfeItensNFI_TIPO.Value:=DM.TBVendasItensVEI_TIPO.Value;
    DM.TBNfeItensNFI_TIPOISS.Value:=DM.TBVendasItensVEI_TIPOISS.Value;
    DM.TBNfeItensNFI_UNIDADE.Value:=DM.TBVendasItensVEI_UNIDADE.Value;
    DM.TBNfeItensNFI_VALORACESSORIAS.Value:=DM.TBVendasItensVEI_VALORACESSORIAS.Value;
    DM.TBNfeItensNFI_VALORADUANA.Value:=DM.TBVendasItensVEI_VALORADUANA.Value;
    DM.TBNfeItensNFI_VALORCBS.Value:=DM.TBVendasItensVEI_VALORCBS.Value;
    DM.TBNfeItensNFI_VALORCBSCREDPRES.Value:=DM.TBVendasItensVEI_VALORCBSCREDPRES.Value;
    DM.TBNfeItensNFI_VALORCBSCREDPRESSUS.Value:=DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value;
    DM.TBNfeItensNFI_VALORCBSDEV.Value:=DM.TBVendasItensVEI_VALORCBSDEV.Value;
    DM.TBNfeItensNFI_VALORCBSDIF.Value:=DM.TBVendasItensVEI_VALORCBSDIF.Value;
    DM.TBNfeItensNFI_VALORCOFINS.Value:=DM.TBVendasItensVEI_VALORCOFINS.Value;
    DM.TBNfeItensNFI_VALORCOFINSST.Value:=DM.TBVendasItensVEI_VALORCOFINSST.Value;
    DM.TBNfeItensNFI_VALORCOMISSAO.Value:=DM.TBVendasItensVEI_VALORCOMISSAO.Value;
    DM.TBNfeItensNFI_VALORCOMISSAOREP.Value:=DM.TBVendasItensVEI_VALORCOMISSAOREP.Value;
    DM.TBNfeItensNFI_VALORFCP.Value:=DM.TBVendasItensVEI_VALORFCP.Value;
    DM.TBNfeItensNFI_VALORFCPST.Value:=DM.TBVendasItensVEI_VALORFCPST.Value;
    DM.TBNfeItensNFI_VALORFRETE.Value:=DM.TBVendasItensVEI_VALORFRETE.Value;
    DM.TBNfeItensNFI_VALORIBS.Value:=DM.TBVendasItensVEI_VALORIBS.Value;
    DM.TBNfeItensNFI_VALORIBSCREDPRES.Value:=DM.TBVendasItensVEI_VALORIBSCREDPRES.Value;
    DM.TBNfeItensNFI_VALORIBSCREDPRESSUS.Value:=DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value;
    DM.TBNfeItensNFI_VALORIBSMUN.Value:=DM.TBVendasItensVEI_VALORIBSMUN.Value;
    DM.TBNfeItensNFI_VALORIBSMUNDEV.Value:=DM.TBVendasItensVEI_VALORIBSMUNDEV.Value;
    DM.TBNfeItensNFI_VALORIBSMUNDIF.Value:=DM.TBVendasItensVEI_VALORIBSMUNDIF.Value;
    DM.TBNfeItensNFI_VALORIBSUF.Value:=DM.TBVendasItensVEI_VALORIBSUF.Value;
    DM.TBNfeItensNFI_VALORIBSUFDEV.Value:=DM.TBVendasItensVEI_VALORIBSUFDEV.Value;
    DM.TBNfeItensNFI_VALORIBSUFDIF.Value:=DM.TBVendasItensVEI_VALORIBSUFDIF.Value;
    DM.TBNfeItensNFI_VALORICMS.Value:=DM.TBVendasItensVEI_VALORICMS.Value;
    DM.TBNfeItensNFI_VALORICMSCREDSN.Value:=DM.TBVendasItensVEI_VALORICMSCREDSN.Value;
    DM.TBNfeItensNFI_VALORICMSDESONERADO.Value:=DM.TBVendasItensVEI_VALORICMSDESONERADO.Value;
    DM.TBNfeItensNFI_VALORICMSST.Value:=DM.TBVendasItensVEI_VALORICMSST.Value;
    DM.TBNfeItensNFI_VALORICMSSTRET.Value:=DM.TBVendasItensVEI_VALORICMSSTRET.Value;
    DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value:=DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value;
    DM.TBNfeItensNFI_VALORICMSUFDEST.Value:=DM.TBVendasItensVEI_VALORICMSUFDEST.Value;
    DM.TBNfeItensNFI_VALORICMSUFREMET.Value:=DM.TBVendasItensVEI_VALORICMSUFREMET.Value;
    DM.TBNfeItensNFI_VALORII.Value:=DM.TBVendasItensVEI_VALORII.Value;
    DM.TBNfeItensNFI_VALORIOF.Value:=DM.TBVendasItensVEI_VALORIOF.Value;
    DM.TBNfeItensNFI_VALORIPI.Value:=DM.TBVendasItensVEI_VALORIPI.Value;
    DM.TBNfeItensNFI_VALORIS.Value:=DM.TBVendasItensVEI_VALORIS.Value;
    DM.TBNfeItensNFI_VALORISS.Value:=DM.TBVendasItensVEI_VALORISS.Value;
    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value:=DM.TBVendasItensVEI_VALORISSDEDUCAO.Value;
    DM.TBNfeItensNFI_VALORISSDESCCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCCOND.Value;
    DM.TBNfeItensNFI_VALORISSDESCINCOND.Value:=DM.TBVendasItensVEI_VALORISSDESCINCOND.Value;
    DM.TBNfeItensNFI_VALORISSOUTROS.Value:=DM.TBVendasItensVEI_VALORISSOUTROS.Value;
    DM.TBNfeItensNFI_VALORISSRETENCAO.Value:=DM.TBVendasItensVEI_VALORISSRETENCAO.Value;
    DM.TBNfeItensNFI_VALORPIS.Value:=DM.TBVendasItensVEI_VALORPIS.Value;
    DM.TBNfeItensNFI_VALORPISST.Value:=DM.TBVendasItensVEI_VALORPISST.Value;
    DM.TBNfeItensNFI_VALORSEGURO.Value:=DM.TBVendasItensVEI_VALORSEGURO.Value;
    DM.TBNfeItensNFI_VALORTOTAL.Value:=DM.TBVendasItensVEI_VALORTOTAL.Value;
    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value:=DM.TBVendasItensVEI_VALORTOTALBRUTO.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOS.Value:=DM.TBVendasItensVEI_VALORTRIBUTOS.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value;
    DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value:=DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value;
    DM.TBNfeItensNFI_VALORUNIT.Value:=DM.TBVendasItensVEI_VALORUNIT.Value;

    //testar sem associar os campos abaixo.
    DM.TBNfeItensCLF_DESCRICAO.Value:=DM.TBVendasItensCLF_DESCRICAO.Value;
    DM.TBNfeItensICM_CALCULACREDITOSN.Value:=DM.TBVendasItensICM_CALCULACREDITOSN.Value;
    DM.TBNfeItensICM_DESCRICAO.Value:=DM.TBVendasItensICM_DESCRICAO.Value;
    DM.TBNfeItensIPI_DESCRICAO.Value:=DM.TBVendasItensIPI_DESCRICAO.Value;
    DM.TBNfeItensISS_DESCRICAO.Value:=DM.TBVendasItensISS_DESCRICAO.Value;
    DM.TBNfeItensPIS_DESCRICAO.Value:=DM.TBVendasItensPIS_DESCRICAO.Value; //pis.
    DM.TBNfeItensPIS_DESCRICAO1.Value:=DM.TBVendasItensPIS_DESCRICAO1.Value; //cofins.
    DM.TBNfeItensNAT_CALCULACREDITOSN.Value:=DM.TBVendasItensNAT_CALCULACREDITOSN.Value;
    DM.TBNfeItensNAT_DESCRICAO.Value:=DM.TBVendasItensNAT_DESCRICAO.Value;
    DM.TBNfeItensPRO_CODIGO.Value:=DM.TBVendasItensVEI_PRODUTO.Value;
    DM.TBNfeItensPRO_CLASSFISCAL.Value:=DM.TBVendasItensPRO_CLASSFISCAL.Value;
    DM.TBNfeItensPRO_CSTICMS.Value:=DM.TBVendasItensPRO_CSTICMS.Value;
    DM.TBNfeItensPRO_NOME.Value:=DM.TBVendasItensPRO_NOME.Value;
    DM.TBNfeItensPRO_PRECOVENDA.Value:=DM.TBVendasItensPRO_PRECOVENDA.Value;

    DM.TBNfeItens.Post;
    DM.TBVendasItens.Next;
  end;
  DM.TBVendasItens.EnableControls;
end;

end.
