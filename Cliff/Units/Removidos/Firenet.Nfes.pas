unit Firenet.Nfes;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inutilizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Status(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure ReordenarItens(DM: TDMFirenet; Venda: Integer);

const
  Campos='NFE_CLIENTE, NFE_CODIGO, NFE_DTCADASTRO, NFE_DTEMISSAO, NFE_NOME, NFE_PEDIDOCLIENTE, NFE_STATUS, NFE_VALORTOTAL, NFE_VENDEDOR, VEN_NOME';

implementation

uses Funcoes, System.Math, NFe_Util_2G_TLB, ComCtrls, ComObj, Winapi.ActiveX;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/nfes', VerificarOperacao);
  FormMain.Logar('FIRENET.NFE: Registrou rotas.');
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
        FormMain.Logar('FIRENET.NFE: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'      then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar'  then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'   then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'     then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'     then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='parametros'  then Res.Send( Parametros(DM,Req) ).Status(200) else
      if Operacao='inutilizar'  then Res.Send( Inutilizar(DM,Req) ).Status(200) else
      if Operacao='status'      then Res.Send( Status(DM,Req)     ).Status(200) else

      if Operacao='visualizarItem' then Res.Send( VisualizarItem(DM,Req)  ).Status(200) else
      if Operacao='atualizarItem'  then Res.Send( AtualizarItem(DM,Req)   ).Status(200) else
      if Operacao='inserirItem'    then Res.Send( InserirItem(DM,Req)     ).Status(200) else
      if Operacao='excluirItem'    then Res.Send( ExcluirItem(DM,Req)     ).Status(200) else
      begin
        FormMain.Logar('FIRENET.NFE: sem op.');
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
  Pagina, Registros, Skip, NFE_CLIENTE, NFE_CODIGO: Integer;
  Where, NFE_NOME, NFE_PEDIDOCLIENTE, NFE_STATUS: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
  DataInicial, DataFinal: TDate;
begin
  try
    Pagina           :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    NFE_CLIENTE      :=Req.ContentFields.Field('NFE_CLIENTE').AsInteger;
    NFE_CODIGO       :=Req.ContentFields.Field('NFE_CODIGO').AsInteger;
    NFE_NOME         :=San(Req.ContentFields.Field('NFE_NOME').AsString);
    NFE_PEDIDOCLIENTE:=San(Req.ContentFields.Field('NFE_PEDIDOCLIENTE').AsString);
    NFE_STATUS       :=San(Req.ContentFields.Field('NFE_STATUS').AsString);
    DataInicial      :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal        :=Req.ContentFields.Field('datafinal').AsDate;

    Where:=' (NFE_DTCADASTRO between :datainicial and :datafinal)';
    if NFE_CODIGO<>0         then Where:=Where+' and NFE_CODIGO='+NFE_CODIGO.ToString;
    if NFE_CLIENTE<>0        then Where:=Where+' and NFE_CLIENTE='+NFE_CLIENTE.ToString;
    if NFE_NOME<>''          then Where:=Where+' and CLI_NOME like '+QuotedStr(NFE_NOME+'%');
    if NFE_PEDIDOCLIENTE<>'' then Where:=Where+' and NFE_PEDIDOCLIENTE like '+QuotedStr(NFE_PEDIDOCLIENTE+'%');
    if NFE_STATUS<>'T'       then Where:=Where+' and NFE_STATUS='+QuotedStr(NFE_STATUS);

    FormMain.Logar('FIRENET.NFE: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+NFE_CODIGO.ToString+', STATUS: '+NFE_STATUS+', NOME: '+NFE_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from NFE '+
      'left join CLIENTES on NFE_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on NFE_VENDEDOR=VEN_CODIGO '+
      'where '+Where+' order by NFE_CODIGO desc, NFE_NOME');
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
      FormMain.Logar('FIRENET.NFE: (listar) '+ex.Message);
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
  NFE_CODIGO: Integer;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);

    FormMain.Logar('FIRENET.NFE: (visualizar) '+NFE_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBNfe.ToJSONObject;

    DM.TBNfeItens.Open;
    Itens:=TJSONArray.Create;
    Itens:=DM.TBNfeItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBNfeItens.Close;
    DM.TBNfe.Close;

    Result:=Retorno;
  except on ex:Exception do
    begin
      FormMain.Logar('FIRENET.NFE: (visualizar) '+ex.Message);
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
  NFE_CODIGO: Integer;
  NFE_DESCRICAO, NFE_STATUS, NFE_TIPO: String;
  NFE_VALOR: Extended;
begin
  try
    NFE_CODIGO:=Req.ContentFields.Field('NFE_CODIGO').AsInteger;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NFE: (atualizar) '+NFE_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBNfe.Edit;
    //DM.TBNfeNFE_ALIQICMSCREDSN.Value     :=
    DM.TBNfeNFE_BAIRRO.Value             :=San(Req.ContentFields.Field('NFE_BAIRRO').AsString);
    //DM.TBNfeNFE_BAIXADATA.Value          :=
    //DM.TBNfeNFE_BAIXAPOR.Value           :=
    //DM.TBNfeNFE_BASECOFINS.Value         :=
    //DM.TBNfeNFE_BASECOFINSST.Value       :=
    //DM.TBNfeNFE_BASEICMS.Value           :=
    //DM.TBNfeNFE_BASEICMSST.Value         :=
    //DM.TBNfeNFE_BASEII.Value             :=
    //DM.TBNfeNFE_BASEIPI.Value            :=
    //DM.TBNfeNFE_BASEISS.Value            :=
    //DM.TBNfeNFE_BASEPIS.Value            :=
    //DM.TBNfeNFE_BASEPISST.Value          :=
    DM.TBNfeNFE_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('NFE_CEP').AsString);
    DM.TBNfeNFE_CFOP.Value               :=Req.ContentFields.Field('NFE_CFOP').AsInteger;
    DM.TBNfeNFE_CFOPDESC.Value           :=San(Req.ContentFields.Field('NFE_CFOPDESC').AsString);
    DM.TBNfeNFE_CIDADE.Value             :=San(Req.ContentFields.Field('NFE_CIDADE').AsString);
    DM.TBNfeNFE_CIDADECODIGO.Value       :=Req.ContentFields.Field('NFE_CIDADECODIGO').AsInteger;
    DM.TBNfeNFE_CLIENTE.Value            :=Req.ContentFields.Field('NFE_CLIENTE').AsInteger;
    DM.TBNfeNFE_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_CNPJ').AsString);
    //DM.TBNfeNFE_CODIGO.Value             :=
    //DM.TBNfeNFE_CODIMPORTACAO.Value      :=
    //DM.TBNfeNFE_COMISSAO.Value           :=
    //DM.TBNfeNFE_COMISSAOPOR.Value        :=
    DM.TBNfeNFE_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('NFE_COMPLEMENTO').AsString);
    DM.TBNfeNFE_CONDICAO.Value           :=Req.ContentFields.Field('NFE_CONDICAO').AsInteger;
    //DM.TBNfeNFE_CONDICAOMEMO.Value       :=
    //DM.TBNfeNFE_CONFERIDO.Value          :=
    //DM.TBNfeNFE_CONFERIDODATA.Value      :=
    //DM.TBNfeNFE_CONFERIDOPOR.Value       :=
    DM.TBNfeNFE_CONTATO.Value            :=San(Req.ContentFields.Field('NFE_CONTATO').AsString);
    DM.TBNfeNFE_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_CPF').AsString);
    //DM.TBNfeNFE_CUSTOTOTAL.Value         :=
    //DM.TBNfeNFE_DESCPORC.Value           :=
    //DM.TBNfeNFE_DESCPORCCLIENTE.Value    :=
    //DM.TBNfeNFE_DESCPORCCONDICAO.Value   :=
    //DM.TBNfeNFE_DESCVALOR.Value          :=
    DM.TBNfeNFE_DESTACARIMPOSTOS.Value   :=San(Req.ContentFields.Field('NFE_DESTACARIMPOSTOS').AsString);
    DM.TBNfeNFE_DIAPREFERENCIAL.Value    :=Req.ContentFields.Field('NFE_DIAPREFERENCIAL').AsInteger;
    DM.TBNfeNFE_DTATUALIZACAO.Value      :=Date;
    //DM.TBNfeNFE_DTCADASTRO.Value         :=
    //DM.TBNfeNFE_DTEMISSAO.Value          :=
    DM.TBNfeNFE_DTPRESTSERVICO           :=SetData(DM.TBNfeNFE_DTPRESTSERVICO,Req.ContentFields.Field('NFE_DTPRESTSERVICO').AsString);
    DM.TBNfeNFE_DTSAIDA                  :=SetData(DM.TBNfeNFE_DTSAIDA,Req.ContentFields.Field('NFE_DTSAIDA').AsString);
    DM.TBNfeNFE_ENDERECO.Value           :=San(Req.ContentFields.Field('NFE_ENDERECO').AsString);
    //DM.TBNfeNFE_ENTRADASAIDA.Value       :=
    //DM.TBNfeNFE_ENTREGUE.Value           :=
    DM.TBNfeNFE_ESPECIE.Value            :=San(Req.ContentFields.Field('NFE_ESPECIE').AsString);
    DM.TBNfeNFE_ESTADO.Value             :=San(Req.ContentFields.Field('NFE_ESTADO').AsString);
    DM.TBNfeNFE_ESTADOCODIGO.Value       :=Req.ContentFields.Field('NFE_ESTADOCODIGO').AsInteger;
    DM.TBNfeNFE_EXLOCAL.Value            :=San(Req.ContentFields.Field('NFE_EXLOCAL').AsString);
    DM.TBNfeNFE_EXPEDIDOPOR.Value        :=Req.ContentFields.Field('NFE_EXPEDIDOPOR').AsInteger;
    DM.TBNfeNFE_EXUFSAIDA.Value          :=San(Req.ContentFields.Field('NFE_EXUFSAIDA').AsString);
    DM.TBNfeNFE_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('NFE_FONE1').AsString);
    DM.TBNfeNFE_FORMAPAGTO.Value         :=San(Req.ContentFields.Field('NFE_FORMAPAGTO').AsString);
    DM.TBNfeNFE_FRETE.Value              :=San(Req.ContentFields.Field('NFE_FRETE').AsString);
    DM.TBNfeNFE_HRATUALIZACAO.Value      :=Time;
    //DM.TBNfeNFE_HRCADASTRO.Value         :=
    DM.TBNfeNFE_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('NFE_IDESTRANGEIRO').AsString);
    DM.TBNfeNFE_IE.Value                 :=San(Req.ContentFields.Field('NFE_IE').AsString);
    DM.TBNfeNFE_INFOADICFISCO.Value      :=San(Req.ContentFields.Field('NFE_INFOADICFISCO').AsString);
    DM.TBNfeNFE_INFOCOMPLEMENTAR.Value   :=San(Req.ContentFields.Field('NFE_INFOCOMPLEMENTAR').AsString);
    DM.TBNfeNFE_LACRES.Value             :=San(Req.ContentFields.Field('NFE_LACRES').AsString);
    //DM.TBNfeNFE_LUCROPORC.Value          :=
    //DM.TBNfeNFE_LUCROVALOR.Value         :=
    //DM.TBNfeNFE_MANUAL.Value             :=
    DM.TBNfeNFE_MARCA.Value              :=San(Req.ContentFields.Field('NFE_MARCA').AsString);
    //DM.TBNfeNFE_MOVIMENTAESTOQUE.Value   :=
    //DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=
    //DM.TBNfeNFE_NFE.Value                :=
    DM.TBNfeNFE_NOME.Value               :=San(Req.ContentFields.Field('NFE_NOME').AsString);
    //DM.TBNfeNFE_NOTA.Value               :=
    DM.TBNfeNFE_NUMERO.Value             :=San(Req.ContentFields.Field('NFE_NUMERO').AsString);
    DM.TBNfeNFE_OBSERVACOES.Value        :=San(Req.ContentFields.Field('NFE_OBSERVACOES').AsString);
    DM.TBNfeNFE_PAIS.Value               :=San(Req.ContentFields.Field('NFE_PAIS').AsString);
    DM.TBNfeNFE_PAISCODIGO.Value         :=Req.ContentFields.Field('NFE_PAISCODIGO').AsInteger;
    DM.TBNfeNFE_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('NFE_PEDIDOCLIENTE').AsString);
    DM.TBNfeNFE_PESOBRUTO.Value          :=Req.ContentFields.Field('NFE_PESOBRUTO').AsFloat;
    DM.TBNfeNFE_PESOLIQ.Value            :=Req.ContentFields.Field('NFE_PESOLIQ').AsFloat;
    DM.TBNfeNFE_REBOQUEPLACA.Value       :=San(Req.ContentFields.Field('NFE_REBOQUEPLACA').AsString);
    DM.TBNfeNFE_REBOQUEPLACAUF.Value     :=San(Req.ContentFields.Field('NFE_REBOQUEPLACAUF').AsString);
    DM.TBNfeNFE_REBOQUERNTC.Value        :=San(Req.ContentFields.Field('NFE_REBOQUERNTC').AsString);
    DM.TBNfeNFE_RG.Value                 :=San(Req.ContentFields.Field('NFE_RG').AsString);
    //DM.TBNfeNFE_SEQUENCIAITEM.Value      :=
    //DM.TBNfeNFE_STATUS.Value             :=
    DM.TBNfeNFE_SUFRAMA.Value            :=San(Req.ContentFields.Field('NFE_SUFRAMA').AsString);
    //DM.TBNfeNFE_TABELAPRECO.Value        :=
    DM.TBNfeNFE_TIPOATENDIMENTO.Value    :=San(Req.ContentFields.Field('NFE_TIPOATENDIMENTO').AsString);
    DM.TBNfeNFE_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('NFE_TIPOCONSUMIDOR').AsString);
    DM.TBNfeNFE_TIPOOPERACAO.Value       :=San(Req.ContentFields.Field('NFE_TIPOOPERACAO').AsString);
    //DM.TBNfeNFE_TOTALADUANA.Value        :=
    //DM.TBNfeNFE_TOTALBRUTO.Value         :=
    //DM.TBNfeNFE_TOTALCOFINS.Value        :=
    //DM.TBNfeNFE_TOTALCOFINSST.Value      :=
    //DM.TBNfeNFE_TOTALCOMISSAO.Value      :=
    //DM.TBNfeNFE_TOTALFCP.Value           :=
    //DM.TBNfeNFE_TOTALFCPST.Value         :=
    //DM.TBNfeNFE_TOTALICMS.Value          :=
    //DM.TBNfeNFE_TOTALICMSCREDSN.Value    :=
    //DM.TBNfeNFE_TOTALICMSST.Value        :=
    //DM.TBNfeNFE_TOTALICMSUFDEST.Value    :=
    //DM.TBNfeNFE_TOTALICMSUFREMET.Value   :=
    //DM.TBNfeNFE_TOTALII.Value            :=
    //DM.TBNfeNFE_TOTALIOF.Value           :=
    //DM.TBNfeNFE_TOTALIPI.Value           :=
    //DM.TBNfeNFE_TOTALISS.Value           :=
    //DM.TBNfeNFE_TOTALISSDEDUCAO.Value    :=
    //DM.TBNfeNFE_TOTALISSDESCCOND.Value   :=
    //DM.TBNfeNFE_TOTALISSDESCINCOND.Value :=
    //DM.TBNfeNFE_TOTALISSOUTROS.Value     :=
    //DM.TBNfeNFE_TOTALISSRETENCAO.Value   :=
    //DM.TBNfeNFE_TOTALITENS.Value         :=
    //DM.TBNfeNFE_TOTALPIS.Value           :=
    //DM.TBNfeNFE_TOTALPISST.Value         :=
    //DM.TBNfeNFE_TOTALPRODUTOS.Value      :=
    //DM.TBNfeNFE_TOTALSERVICOS.Value      :=
    //DM.TBNfeNFE_TOTALTRIBUTOS.Value      :=
    //DM.TBNfeNFE_TOTALTRIBUTOSEST.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSFED.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value   :=
    DM.TBNfeNFE_TRANSPCIDADE.Value       :=San(Req.ContentFields.Field('NFE_TRANSPCIDADE').AsString);
    DM.TBNfeNFE_TRANSPCNPJ.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_TRANSPCNPJ').AsString);
    DM.TBNfeNFE_TRANSPCPF.Value          :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_TRANSPCPF').AsString);
    DM.TBNfeNFE_TRANSPEMAIL.Value        :=San(Req.ContentFields.Field('NFE_TRANSPEMAIL').AsString);
    DM.TBNfeNFE_TRANSPENDERECO.Value     :=San(Req.ContentFields.Field('NFE_TRANSPENDERECO').AsString);
    DM.TBNfeNFE_TRANSPESTADO.Value       :=San(Req.ContentFields.Field('NFE_TRANSPESTADO').AsString);
    DM.TBNfeNFE_TRANSPFONE.Value         :=FormatarFone(Req.ContentFields.Field('NFE_TRANSPFONE').AsString);
    DM.TBNfeNFE_TRANSPIE.Value           :=San(Req.ContentFields.Field('NFE_TRANSPIE').AsString);
    DM.TBNfeNFE_TRANSPNOME.Value         :=San(Req.ContentFields.Field('NFE_TRANSPNOME').AsString);
    DM.TBNfeNFE_TRANSPORTADORA.Value     :=Req.ContentFields.Field('NFE_TRANSPORTADORA').AsInteger;
    DM.TBNfeNFE_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBNfeNFE_VALORDESPACES.Value      :=
    //DM.TBNfeNFE_VALORFRETE.Value         :=
    //DM.TBNfeNFE_VALORSEGURO.Value        :=
    //DM.TBNfeNFE_VALORTOTAL.Value         :=
    DM.TBNfeNFE_VEICULOPLACA.Value       :=San(Req.ContentFields.Field('NFE_VEICULOPLACA').AsString);
    DM.TBNfeNFE_VEICULOPLACAUF.Value     :=San(Req.ContentFields.Field('NFE_VEICULOPLACAUF').AsString);
    DM.TBNfeNFE_VEICULORNTC.Value        :=San(Req.ContentFields.Field('NFE_VEICULORNTC').AsString);
    DM.TBNfeNFE_VENDEDOR.Value           :=Req.ContentFields.Field('NFE_VENDEDOR').AsInteger;
    //DM.TBNfeNFE_VIAINTERNET.Value        :=
    //DM.TBNfeNFE_VIAINTERNETSTATUS.Value  :=
    DM.TBNfeNFE_VOLUMES.Value            :=Req.ContentFields.Field('NFE_VOLUMES').AsInteger;
    DM.TBNfeNFE_VOLUMESNUM.Value         :=San(Req.ContentFields.Field('NFE_VOLUMESNUM').AsString);
    DM.TBNfe.Post;

    Registro:=DM.TBNfe.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar('FIRENET.NFE: (atualizar) '+ex.Message);
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
  NFE_CFOP, NFE_CLIENTE, NFE_EXPEDIDOPOR, NFE_VENDEDOR: Integer;
  NFE_VALOR: Extended;
begin
  try
    NFE_CFOP:=Req.ContentFields.Field('NFE_CFOP').AsInteger;
    NFE_CLIENTE:=Req.ContentFields.Field('NFE_CLIENTE').AsInteger;
    NFE_EXPEDIDOPOR:=Req.ContentFields.Field('NFE_EXPEDIDOPOR').AsInteger;
    NFE_VENDEDOR:=Req.ContentFields.Field('NFE_VENDEDOR').AsInteger;

    Obrigatorio(NFE_CFOP.ToString,'Natureza Operação','0');
    Obrigatorio(NFE_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(NFE_EXPEDIDOPOR.ToString,'Expedido Por','0');
    Obrigatorio(NFE_VENDEDOR.ToString,'Vendedor','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NFE: (inserir) ');

    DM.TBNfe.Open;
    DM.TBNfe.Insert;
    //DM.TBNfeNFE_ALIQICMSCREDSN.Value     :=
    DM.TBNfeNFE_BAIRRO.Value             :=San(Req.ContentFields.Field('NFE_BAIRRO').AsString);
    //DM.TBNfeNFE_BAIXADATA.Value          :=
    //DM.TBNfeNFE_BAIXAPOR.Value           :=
    //DM.TBNfeNFE_BASECOFINS.Value         :=
    //DM.TBNfeNFE_BASECOFINSST.Value       :=
    //DM.TBNfeNFE_BASEICMS.Value           :=
    //DM.TBNfeNFE_BASEICMSST.Value         :=
    //DM.TBNfeNFE_BASEII.Value             :=
    //DM.TBNfeNFE_BASEIPI.Value            :=
    //DM.TBNfeNFE_BASEISS.Value            :=
    //DM.TBNfeNFE_BASEPIS.Value            :=
    //DM.TBNfeNFE_BASEPISST.Value          :=
    DM.TBNfeNFE_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('NFE_CEP').AsString);
    DM.TBNfeNFE_CFOP.Value               :=Req.ContentFields.Field('NFE_CFOP').AsInteger;
    DM.TBNfeNFE_CFOPDESC.Value           :=San(Req.ContentFields.Field('NFE_CFOPDESC').AsString);
    DM.TBNfeNFE_CIDADE.Value             :=San(Req.ContentFields.Field('NFE_CIDADE').AsString);
    DM.TBNfeNFE_CIDADECODIGO.Value       :=Req.ContentFields.Field('NFE_CIDADECODIGO').AsInteger;
    DM.TBNfeNFE_CLIENTE.Value            :=Req.ContentFields.Field('NFE_CLIENTE').AsInteger;
    DM.TBNfeNFE_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_CNPJ').AsString);
    //DM.TBNfeNFE_CODIGO.Value             :=
    //DM.TBNfeNFE_CODIMPORTACAO.Value      :=
    //DM.TBNfeNFE_COMISSAO.Value           :=
    //DM.TBNfeNFE_COMISSAOPOR.Value        :=
    DM.TBNfeNFE_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('NFE_COMPLEMENTO').AsString);
    DM.TBNfeNFE_CONDICAO.Value           :=Req.ContentFields.Field('NFE_CONDICAO').AsInteger;
    //DM.TBNfeNFE_CONDICAOMEMO.Value       :=
    //DM.TBNfeNFE_CONFERIDO.Value          :=
    //DM.TBNfeNFE_CONFERIDODATA.Value      :=
    //DM.TBNfeNFE_CONFERIDOPOR.Value       :=
    DM.TBNfeNFE_CONTATO.Value            :=San(Req.ContentFields.Field('NFE_CONTATO').AsString);
    DM.TBNfeNFE_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_CPF').AsString);
    //DM.TBNfeNFE_CUSTOTOTAL.Value         :=
    //DM.TBNfeNFE_DESCPORC.Value           :=
    //DM.TBNfeNFE_DESCPORCCLIENTE.Value    :=
    //DM.TBNfeNFE_DESCPORCCONDICAO.Value   :=
    //DM.TBNfeNFE_DESCVALOR.Value          :=
    DM.TBNfeNFE_DESTACARIMPOSTOS.Value   :=San(Req.ContentFields.Field('NFE_DESTACARIMPOSTOS').AsString);
    DM.TBNfeNFE_DIAPREFERENCIAL.Value    :=Req.ContentFields.Field('NFE_DIAPREFERENCIAL').AsInteger;
    DM.TBNfeNFE_DTATUALIZACAO.Value      :=Date;
    //DM.TBNfeNFE_DTCADASTRO.Value         :=
    //DM.TBNfeNFE_DTEMISSAO.Value          :=
    DM.TBNfeNFE_DTPRESTSERVICO           :=SetData(DM.TBNfeNFE_DTPRESTSERVICO,Req.ContentFields.Field('NFE_DTPRESTSERVICO').AsString);
    DM.TBNfeNFE_DTSAIDA                  :=SetData(DM.TBNfeNFE_DTSAIDA,Req.ContentFields.Field('NFE_DTSAIDA').AsString);
    DM.TBNfeNFE_ENDERECO.Value           :=San(Req.ContentFields.Field('NFE_ENDERECO').AsString);
    //DM.TBNfeNFE_ENTRADASAIDA.Value       :=
    //DM.TBNfeNFE_ENTREGUE.Value           :=
    DM.TBNfeNFE_ESPECIE.Value            :=San(Req.ContentFields.Field('NFE_ESPECIE').AsString);
    DM.TBNfeNFE_ESTADO.Value             :=San(Req.ContentFields.Field('NFE_ESTADO').AsString);
    DM.TBNfeNFE_ESTADOCODIGO.Value       :=Req.ContentFields.Field('NFE_ESTADOCODIGO').AsInteger;
    DM.TBNfeNFE_EXLOCAL.Value            :=San(Req.ContentFields.Field('NFE_EXLOCAL').AsString);
    DM.TBNfeNFE_EXPEDIDOPOR.Value        :=Req.ContentFields.Field('NFE_EXPEDIDOPOR').AsInteger;
    DM.TBNfeNFE_EXUFSAIDA.Value          :=San(Req.ContentFields.Field('NFE_EXUFSAIDA').AsString);
    DM.TBNfeNFE_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('NFE_FONE1').AsString);
    DM.TBNfeNFE_FORMAPAGTO.Value         :=San(Req.ContentFields.Field('NFE_FORMAPAGTO').AsString);
    DM.TBNfeNFE_FRETE.Value              :=San(Req.ContentFields.Field('NFE_FRETE').AsString);
    DM.TBNfeNFE_HRATUALIZACAO.Value      :=Time;
    //DM.TBNfeNFE_HRCADASTRO.Value         :=
    DM.TBNfeNFE_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('NFE_IDESTRANGEIRO').AsString);
    DM.TBNfeNFE_IE.Value                 :=San(Req.ContentFields.Field('NFE_IE').AsString);
    DM.TBNfeNFE_INFOADICFISCO.Value      :=San(Req.ContentFields.Field('NFE_INFOADICFISCO').AsString);
    DM.TBNfeNFE_INFOCOMPLEMENTAR.Value   :=San(Req.ContentFields.Field('NFE_INFOCOMPLEMENTAR').AsString);
    DM.TBNfeNFE_LACRES.Value             :=San(Req.ContentFields.Field('NFE_LACRES').AsString);
    //DM.TBNfeNFE_LUCROPORC.Value          :=
    //DM.TBNfeNFE_LUCROVALOR.Value         :=
    //DM.TBNfeNFE_MANUAL.Value             :=
    DM.TBNfeNFE_MARCA.Value              :=San(Req.ContentFields.Field('NFE_MARCA').AsString);
    //DM.TBNfeNFE_MOVIMENTAESTOQUE.Value   :=
    //DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value:=
    //DM.TBNfeNFE_NFE.Value                :=
    DM.TBNfeNFE_NOME.Value               :=San(Req.ContentFields.Field('NFE_NOME').AsString);
    //DM.TBNfeNFE_NOTA.Value               :=
    DM.TBNfeNFE_NUMERO.Value             :=San(Req.ContentFields.Field('NFE_NUMERO').AsString);
    DM.TBNfeNFE_OBSERVACOES.Value        :=San(Req.ContentFields.Field('NFE_OBSERVACOES').AsString);
    DM.TBNfeNFE_PAIS.Value               :=San(Req.ContentFields.Field('NFE_PAIS').AsString);
    DM.TBNfeNFE_PAISCODIGO.Value         :=Req.ContentFields.Field('NFE_PAISCODIGO').AsInteger;
    DM.TBNfeNFE_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('NFE_PEDIDOCLIENTE').AsString);
    DM.TBNfeNFE_PESOBRUTO.Value          :=Req.ContentFields.Field('NFE_PESOBRUTO').AsFloat;
    DM.TBNfeNFE_PESOLIQ.Value            :=Req.ContentFields.Field('NFE_PESOLIQ').AsFloat;
    DM.TBNfeNFE_REBOQUEPLACA.Value       :=San(Req.ContentFields.Field('NFE_REBOQUEPLACA').AsString);
    DM.TBNfeNFE_REBOQUEPLACAUF.Value     :=San(Req.ContentFields.Field('NFE_REBOQUEPLACAUF').AsString);
    DM.TBNfeNFE_REBOQUERNTC.Value        :=San(Req.ContentFields.Field('NFE_REBOQUERNTC').AsString);
    DM.TBNfeNFE_RG.Value                 :=San(Req.ContentFields.Field('NFE_RG').AsString);
    //DM.TBNfeNFE_SEQUENCIAITEM.Value      :=
    //DM.TBNfeNFE_STATUS.Value             :=
    DM.TBNfeNFE_SUFRAMA.Value            :=San(Req.ContentFields.Field('NFE_SUFRAMA').AsString);
    //DM.TBNfeNFE_TABELAPRECO.Value        :=
    DM.TBNfeNFE_TIPOATENDIMENTO.Value    :=San(Req.ContentFields.Field('NFE_TIPOATENDIMENTO').AsString);
    DM.TBNfeNFE_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('NFE_TIPOCONSUMIDOR').AsString);
    DM.TBNfeNFE_TIPOOPERACAO.Value       :=San(Req.ContentFields.Field('NFE_TIPOOPERACAO').AsString);
    //DM.TBNfeNFE_TOTALADUANA.Value        :=
    //DM.TBNfeNFE_TOTALBRUTO.Value         :=
    //DM.TBNfeNFE_TOTALCOFINS.Value        :=
    //DM.TBNfeNFE_TOTALCOFINSST.Value      :=
    //DM.TBNfeNFE_TOTALCOMISSAO.Value      :=
    //DM.TBNfeNFE_TOTALFCP.Value           :=
    //DM.TBNfeNFE_TOTALFCPST.Value         :=
    //DM.TBNfeNFE_TOTALICMS.Value          :=
    //DM.TBNfeNFE_TOTALICMSCREDSN.Value    :=
    //DM.TBNfeNFE_TOTALICMSST.Value        :=
    //DM.TBNfeNFE_TOTALICMSUFDEST.Value    :=
    //DM.TBNfeNFE_TOTALICMSUFREMET.Value   :=
    //DM.TBNfeNFE_TOTALII.Value            :=
    //DM.TBNfeNFE_TOTALIOF.Value           :=
    //DM.TBNfeNFE_TOTALIPI.Value           :=
    //DM.TBNfeNFE_TOTALISS.Value           :=
    //DM.TBNfeNFE_TOTALISSDEDUCAO.Value    :=
    //DM.TBNfeNFE_TOTALISSDESCCOND.Value   :=
    //DM.TBNfeNFE_TOTALISSDESCINCOND.Value :=
    //DM.TBNfeNFE_TOTALISSOUTROS.Value     :=
    //DM.TBNfeNFE_TOTALISSRETENCAO.Value   :=
    //DM.TBNfeNFE_TOTALITENS.Value         :=
    //DM.TBNfeNFE_TOTALPIS.Value           :=
    //DM.TBNfeNFE_TOTALPISST.Value         :=
    //DM.TBNfeNFE_TOTALPRODUTOS.Value      :=
    //DM.TBNfeNFE_TOTALSERVICOS.Value      :=
    //DM.TBNfeNFE_TOTALTRIBUTOS.Value      :=
    //DM.TBNfeNFE_TOTALTRIBUTOSEST.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSFED.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSIMP.Value   :=
    //DM.TBNfeNFE_TOTALTRIBUTOSMUN.Value   :=
    DM.TBNfeNFE_TRANSPCIDADE.Value       :=San(Req.ContentFields.Field('NFE_TRANSPCIDADE').AsString);
    DM.TBNfeNFE_TRANSPCNPJ.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_TRANSPCNPJ').AsString);
    DM.TBNfeNFE_TRANSPCPF.Value          :=FormatarCPFCNPJ(Req.ContentFields.Field('NFE_TRANSPCPF').AsString);
    DM.TBNfeNFE_TRANSPEMAIL.Value        :=San(Req.ContentFields.Field('NFE_TRANSPEMAIL').AsString);
    DM.TBNfeNFE_TRANSPENDERECO.Value     :=San(Req.ContentFields.Field('NFE_TRANSPENDERECO').AsString);
    DM.TBNfeNFE_TRANSPESTADO.Value       :=San(Req.ContentFields.Field('NFE_TRANSPESTADO').AsString);
    DM.TBNfeNFE_TRANSPFONE.Value         :=FormatarFone(Req.ContentFields.Field('NFE_TRANSPFONE').AsString);
    DM.TBNfeNFE_TRANSPIE.Value           :=San(Req.ContentFields.Field('NFE_TRANSPIE').AsString);
    DM.TBNfeNFE_TRANSPNOME.Value         :=San(Req.ContentFields.Field('NFE_TRANSPNOME').AsString);
    DM.TBNfeNFE_TRANSPORTADORA.Value     :=Req.ContentFields.Field('NFE_TRANSPORTADORA').AsInteger;
    DM.TBNfeNFE_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBNfeNFE_VALORDESPACES.Value      :=
    //DM.TBNfeNFE_VALORFRETE.Value         :=
    //DM.TBNfeNFE_VALORSEGURO.Value        :=
    //DM.TBNfeNFE_VALORTOTAL.Value         :=
    DM.TBNfeNFE_VEICULOPLACA.Value       :=San(Req.ContentFields.Field('NFE_VEICULOPLACA').AsString);
    DM.TBNfeNFE_VEICULOPLACAUF.Value     :=San(Req.ContentFields.Field('NFE_VEICULOPLACAUF').AsString);
    DM.TBNfeNFE_VEICULORNTC.Value        :=San(Req.ContentFields.Field('NFE_VEICULORNTC').AsString);
    DM.TBNfeNFE_VENDEDOR.Value           :=Req.ContentFields.Field('NFE_VENDEDOR').AsInteger;
    //DM.TBNfeNFE_VIAINTERNET.Value        :=
    //DM.TBNfeNFE_VIAINTERNETSTATUS.Value  :=
    DM.TBNfeNFE_VOLUMES.Value            :=Req.ContentFields.Field('NFE_VOLUMES').AsInteger;
    DM.TBNfeNFE_VOLUMESNUM.Value         :=San(Req.ContentFields.Field('NFE_VOLUMESNUM').AsString);
    DM.TBNfe.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBNfe.ToJSONObject);

    DM.TBNfe.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (inserir) '+ex.Message);
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
  NFE_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);
    if NFE_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.NFE: (excluir) '+NFE_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBNfe.Delete;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Registro eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (excluir) '+ex.Message);
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
    FormMain.Logar('FIRENET.CLIENTES: (parametros)');

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
      FormMain.Logar('FIRENET.NFE: (parametros) '+ex.Message);
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
  NFE_CODIGO: Integer;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);

    FormMain.Logar('FIRENET.NFE: (inutilizar) '+NFE_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBNfeNFE_STATUS.Value<>'A' then
    raise Exception.Create('Somente NFe em aberto podem ser inutilizadas.');

    DM.TBNfe.Edit;
    DM.TBNfeNFE_STATUS.Value:='I';
    DM.TBNfeNFE_DTATUALIZACAO.Value:=Date;
    DM.TBNfeNFE_HRATUALIZACAO.Value:=Time;
    DM.TBNfeNFE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBNfe.Post;

    Result:=Visualizar(DM,Req); //req contem NFE_CODIGO.

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (inutilizar) '+ex.Message);
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
  NFE_CODIGO, NFI_CODIGO: Integer;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);
    NFI_CODIGO:=SoNumeros(Req.ContentFields.Field('NFI_CODIGO').AsString);

    FormMain.Logar('FIRENET.NFE: (visualizarItem) Venda: '+NFE_CODIGO.ToString+' Item: '+NFI_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBNfeItens.Open;
    DM.TBNfeItens.Locate('NFI_CODIGO',NFI_CODIGO,[]);

    Registro:=DM.TBNfeItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBNfe.Close;
    DM.TBNfeItens.Close;

    Result:=Retorno;
  except on ex:Exception do
    begin
      FormMain.Logar('FIRENET.NFE: (visualizarItem) '+ex.Message);
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
  NFE_CODIGO, NFI_CODIGO: Integer;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);
    NFI_CODIGO:=SoNumeros(Req.ContentFields.Field('NFI_CODIGO').AsString);

    Obrigatorio(NFI_CODIGO.ToString,'Código Item','0');
    Obrigatorio(NFE_CODIGO.ToString,'Venda','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NFE: (atualizarItem) Venda: '+NFE_CODIGO.ToString+' Item: '+NFI_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Venda não encontrada.');

    DM.TBNfeItens.Open;
    if not DM.TBNfeItens.Locate('NFI_CODIGO',NFI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro do item para alteração. '+NFI_CODIGO.ToString);

    DM.TBNfeItens.Edit;
    DM.TBNfeItensNFI_ALIQCOFINS.Value         :=Req.ContentFields.Field('NFI_ALIQCOFINS').AsExtended;
    DM.TBNfeItensNFI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('NFI_ALIQCOFINSST').AsExtended;
    DM.TBNfeItensNFI_ALIQFCP.Value            :=Req.ContentFields.Field('NFI_ALIQFCP').AsExtended;
    DM.TBNfeItensNFI_ALIQFCPST.Value          :=Req.ContentFields.Field('NFI_ALIQFCPST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMS.Value           :=Req.ContentFields.Field('NFI_ALIQICMS').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('NFI_ALIQICMSADICST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSINTER.Value      :=Req.ContentFields.Field('NFI_ALIQICMSINTER').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSINTERPART.Value  :=Req.ContentFields.Field('NFI_ALIQICMSINTERPART').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSRED.Value        :=Req.ContentFields.Field('NFI_ALIQICMSRED').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSST.Value         :=Req.ContentFields.Field('NFI_ALIQICMSST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('NFI_ALIQICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_ALIQII.Value             :=Req.ContentFields.Field('NFI_ALIQII').AsExtended;
    DM.TBNfeItensNFI_ALIQIPI.Value            :=Req.ContentFields.Field('NFI_ALIQIPI').AsExtended;
    DM.TBNfeItensNFI_ALIQISS.Value            :=Req.ContentFields.Field('NFI_ALIQISS').AsExtended;
    DM.TBNfeItensNFI_ALIQPIS.Value            :=Req.ContentFields.Field('NFI_ALIQPIS').AsExtended;
    DM.TBNfeItensNFI_ALIQPISST.Value          :=Req.ContentFields.Field('NFI_ALIQPISST').AsExtended;
    DM.TBNfeItensNFI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('NFI_ALMOXARIFADO').AsInteger;
    DM.TBNfeItensNFI_BASECOFINS.Value         :=Req.ContentFields.Field('NFI_BASECOFINS').AsExtended;
    DM.TBNfeItensNFI_BASECOFINSST.Value       :=Req.ContentFields.Field('NFI_BASECOFINSST').AsExtended;
    DM.TBNfeItensNFI_BASEICMS.Value           :=Req.ContentFields.Field('NFI_BASEICMS').AsExtended;
    DM.TBNfeItensNFI_BASEICMSRED.Value        :=Req.ContentFields.Field('NFI_BASEICMSRED').AsExtended;;
    DM.TBNfeItensNFI_BASEICMSST.Value         :=Req.ContentFields.Field('NFI_BASEICMSST').AsExtended;
    DM.TBNfeItensNFI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('NFI_BASEICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_BASEII.Value             :=Req.ContentFields.Field('NFI_BASEII').AsExtended;
    DM.TBNfeItensNFI_BASEIPI.Value            :=Req.ContentFields.Field('NFI_BASEIPI').AsExtended;
    DM.TBNfeItensNFI_BASEISS.Value            :=Req.ContentFields.Field('NFI_BASEISS').AsExtended;
    DM.TBNfeItensNFI_BASEPIS.Value            :=Req.ContentFields.Field('NFI_BASEPIS').AsExtended;
    DM.TBNfeItensNFI_BASEPISST.Value          :=Req.ContentFields.Field('NFI_BASEPISST').AsExtended;
    DM.TBNfeItensNFI_BENEFICIO.Value          :=San(Req.ContentFields.Field('NFI_BENEFICIO').AsString);
    DM.TBNfeItensNFI_CEST.Value               :=San(Req.ContentFields.Field('NFI_CEST').AsString);
    DM.TBNfeItensNFI_CFOP.Value               :=Req.ContentFields.Field('NFI_CFOP').AsInteger;
    DM.TBNfeItensNFI_CIDADEISS.Value          :=Req.ContentFields.Field('NFI_CIDADEISS').AsInteger;
    DM.TBNfeItensNFI_CLASSFISCAL.Value        :=San(Req.ContentFields.Field('NFI_CLASSFISCAL').AsString);
    //DM.TBNfeItensNFI_CODIGO.Value             :=Req.ContentFields.Field('NFI_CODIGO').AsInteger';
    DM.TBNfeItensNFI_CODIGOBARRAS.Value       :=San(Req.ContentFields.Field('NFI_CODIGOBARRAS').AsString);
    DM.TBNfeItensNFI_CODIGOFAB.Value          :=San(Req.ContentFields.Field('NFI_CODIGOFAB').AsString);
    DM.TBNfeItensNFI_COMISSAO.Value           :=Req.ContentFields.Field('NFI_COMISSAO').AsExtended;
    DM.TBNfeItensNFI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('NFI_COMPLEMENTO').AsString);
    DM.TBNfeItensNFI_COMPOEBASEICMS.Value     :=San(Req.ContentFields.Field('NFI_COMPOEBASEICMS').AsString);
    DM.TBNfeItensNFI_COMPOEBASEICMSST.Value   :=San(Req.ContentFields.Field('NFI_COMPOEBASEICMSST').AsString);
    DM.TBNfeItensNFI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('NFI_COMPOETOTAL').AsString);
    DM.TBNfeItensNFI_CONVERSAO.Value          :=Req.ContentFields.Field('NFI_CONVERSAO').AsExtended;
    DM.TBNfeItensNFI_CSTCOFINS.Value          :=Req.ContentFields.Field('NFI_CSTCOFINS').AsInteger;
    DM.TBNfeItensNFI_CSTICMS.Value            :=Req.ContentFields.Field('NFI_CSTICMS').AsInteger;
    DM.TBNfeItensNFI_CSTIPI.Value             :=Req.ContentFields.Field('NFI_CSTIPI').AsInteger;
    DM.TBNfeItensNFI_CSTPIS.Value             :=Req.ContentFields.Field('NFI_CSTPIS').AsInteger;
    DM.TBNfeItensNFI_DESCMAX.Value            :=Req.ContentFields.Field('NFI_DESCMAX').AsExtended;
    DM.TBNfeItensNFI_DESCPORC.Value           :=Req.ContentFields.Field('NFI_DESCPORC').AsExtended;
    DM.TBNfeItensNFI_DESCRICAO.Value          :=San(Req.ContentFields.Field('NFI_DESCRICAO').AsString);
    DM.TBNfeItensNFI_DESCVALOR.Value          :=Req.ContentFields.Field('NFI_DESCVALOR').AsExtended;
    DM.TBNfeItensNFI_DESONERACAO.Value        :=San(Req.ContentFields.Field('NFI_DESONERACAO').AsString);
    DM.TBNfeItensNFI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('NFI_DICNPJ').AsString);
    DM.TBNfeItensNFI_DIDATA.Value             :=Req.ContentFields.Field('NFI_DIDATA').AsDate;
    DM.TBNfeItensNFI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('NFI_DIDESEMBARACODATA').AsDate;
    DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('NFI_DIDESENBARACOLOCAL').AsString);
    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('NFI_DIDESEMBARACOUF').AsString);
    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('NFI_DIEXPORTADORCOD').AsString);
    DM.TBNfeItensNFI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('NFI_DIINTERMEDIO').AsString);
    DM.TBNfeItensNFI_DINUMERO.Value           :=San(Req.ContentFields.Field('NFI_DINUMERO').AsString);
    DM.TBNfeItensNFI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('NFI_DITERCEIROUF').AsString);
    DM.TBNfeItensNFI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('NFI_DITRANSPORTE').AsString);
    DM.TBNfeItensNFI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('NFI_DIVALORAFRMM').AsExtended;
    DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value   :=Req.ContentFields.Field('NFI_ENQUADRAMENTOIPI').AsInteger;
    DM.TBNfeItensNFI_EXCECAO.Value            :=Req.ContentFields.Field('NFI_EXCECAO').AsInteger;
    DM.TBNfeItensNFI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('NFI_EXCHAVEACESSO').AsString);
    DM.TBNfeItensNFI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('NFI_EXDRAWBACK').AsString);
    DM.TBNfeItensNFI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('NFI_EXQUANTIDADE').AsExtended;
    DM.TBNfeItensNFI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('NFI_EXREGISTRO').AsString);
    DM.TBNfeItensNFI_FCI.Value                :=San(Req.ContentFields.Field('NFI_FCI').AsString);
    DM.TBNfeItensNFI_INCENTIVOISS.Value       :=San(Req.ContentFields.Field('NFI_INCENTIVOISS').AsString);
    DM.TBNfeItensNFI_INDICADORISS.Value       :=San(Req.ContentFields.Field('NFI_INDICADORISS').AsString);
    DM.TBNfeItensNFI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('NFI_INFOADICIONAL').AsString,0);
    DM.TBNfeItensNFI_LOCALIZACAO.Value        :=San(Req.ContentFields.Field('NFI_LOCALIZACAO').AsString);
    DM.TBNfeItensNFI_LOTE.Value               :=San(Req.ContentFields.Field('NFI_LOTE').AsString);
    DM.TBNfeItensNFI_LUCROPORC.Value          :=Req.ContentFields.Field('NFI_LUCROPORC').AsExtended;
    DM.TBNfeItensNFI_LUCROVALOR.Value         :=Req.ContentFields.Field('NFI_LUCROVALOR').AsExtended;
    DM.TBNfeItensNFI_MODICMS.Value            :=San(Req.ContentFields.Field('NFI_MODICMS').AsString);
    DM.TBNfeItensNFI_MODICMSST.Value          :=San(Req.ContentFields.Field('NFI_MODICMSST').AsString);
    DM.TBNfeItensNFI_NOTA.Value               :=Req.ContentFields.Field('NFI_NOTA').AsInteger;
    DM.TBNfeItensNFI_ORIGEM.Value             :=San(Req.ContentFields.Field('NFI_ORIGEM').AsString);
    DM.TBNfeItensNFI_PAISISS.Value            :=Req.ContentFields.Field('NFI_PAISISS').AsInteger;
    DM.TBNfeItensNFI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('NFI_PEDIDOCLIENTE').AsString);
    DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('NFI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBNfeItensNFI_PESO.Value               :=Req.ContentFields.Field('NFI_PESO').AsExtended;
    DM.TBNfeItensNFI_PESOTOTAL.Value          :=Req.ContentFields.Field('NFI_PESOTOTAL').AsExtended;
    DM.TBNfeItensNFI_PRECOCUSTO.Value         :=Req.ContentFields.Field('NFI_PRECOCUSTO').AsExtended;
    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('NFI_PRECOCUSTOTOTAL').AsExtended;
    DM.TBNfeItensNFI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('NFI_PROCESSOISS').AsString);
    DM.TBNfeItensNFI_PRODUTO.Value            :=Req.ContentFields.Field('NFI_PRODUTO').AsInteger;
    DM.TBNfeItensNFI_PRODUTOREAL.Value        :=Req.ContentFields.Field('NFI_PRODUTOREAL').AsInteger;
    DM.TBNfeItensNFI_QUANTIDADE.Value         :=Req.ContentFields.Field('NFI_QUANTIDADE').AsExtended;
    DM.TBNfeItensNFI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('NFI_QUANTIDADETROCA').AsExtended;
    DM.TBNfeItensNFI_SEQUENCIA.Value          :=Req.ContentFields.Field('NFI_SEQUENCIA').AsInteger;
    DM.TBNfeItensNFI_SERVICOISS.Value         :=San(Req.ContentFields.Field('NFI_SERVICOISS').AsString);
    DM.TBNfeItensNFI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('NFI_SOMACOFINSST').AsString);
    DM.TBNfeItensNFI_SOMAPISST.Value          :=San(Req.ContentFields.Field('NFI_SOMAPISST').AsString);
    DM.TBNfeItensNFI_TIPO.Value               :=San(Req.ContentFields.Field('NFI_TIPO').AsString);
    DM.TBNfeItensNFI_TIPOISS.Value            :=San(Req.ContentFields.Field('NFI_TIPOISS').AsString);
    DM.TBNfeItensNFI_UNIDADE.Value            :=San(Req.ContentFields.Field('NFI_UNIDADE').AsString);
    DM.TBNfeItensNFI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('NFI_VALORACESSORIAS').AsExtended;
    DM.TBNfeItensNFI_VALORADUANA.Value        :=Req.ContentFields.Field('NFI_VALORADUANA').AsExtended;
    DM.TBNfeItensNFI_VALORCOFINS.Value        :=Req.ContentFields.Field('NFI_VALORCOFINS').AsExtended;
    DM.TBNfeItensNFI_VALORCOFINSST.Value      :=Req.ContentFields.Field('NFI_VALORCOFINSST').AsExtended;
    DM.TBNfeItensNFI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('NFI_VALORCOMISSAO').AsExtended;
    DM.TBNfeItensNFI_VALORFCP.Value           :=Req.ContentFields.Field('NFI_VALORFCP').AsExtended;
    DM.TBNfeItensNFI_VALORFCPST.Value         :=Req.ContentFields.Field('NFI_VALORFCPST').AsExtended;
    DM.TBNfeItensNFI_VALORFRETE.Value         :=Req.ContentFields.Field('NFI_VALORFRETE').AsExtended;
    DM.TBNfeItensNFI_VALORICMS.Value          :=Req.ContentFields.Field('NFI_VALORICMS').AsExtended;
    DM.TBNfeItensNFI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('NFI_VALORICMSCREDSN').AsExtended;
    DM.TBNfeItensNFI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('NFI_VALORICMSDESONERADO').AsExtended;
    DM.TBNfeItensNFI_VALORICMSST.Value        :=Req.ContentFields.Field('NFI_VALORICMSST').AsExtended;
    DM.TBNfeItensNFI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('NFI_VALORICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('NFI_VALORICMSSUBSTITUTO').AsExtended;
    DM.TBNfeItensNFI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('NFI_VALORICMSUFDEST').AsExtended;
    DM.TBNfeItensNFI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('NFI_VALORICMSUFREMET').AsExtended;
    DM.TBNfeItensNFI_VALORII.Value            :=Req.ContentFields.Field('NFI_VALORII').AsExtended;
    DM.TBNfeItensNFI_VALORIOF.Value           :=Req.ContentFields.Field('NFI_VALORIOF').AsExtended;
    DM.TBNfeItensNFI_VALORIPI.Value           :=Req.ContentFields.Field('NFI_VALORIPI').AsExtended;
    DM.TBNfeItensNFI_VALORISS.Value           :=Req.ContentFields.Field('NFI_VALOISS').AsExtended;
    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('NFI_VALORISSDEDUCAO').AsExtended;
    DM.TBNfeItensNFI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('NFI_VALORISSDESCCOND').AsExtended;
    DM.TBNfeItensNFI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('NFI_VALORISSDESCINCOND').AsExtended;
    DM.TBNfeItensNFI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('NFI_VALORISSOUTROS').AsExtended;
    DM.TBNfeItensNFI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('NFI_VALORISSRETENCAO').AsExtended;
    DM.TBNfeItensNFI_VALORPIS.Value           :=Req.ContentFields.Field('NFI_VALORPIS').AsExtended;
    DM.TBNfeItensNFI_VALORPISST.Value         :=Req.ContentFields.Field('NFI_VALORPISST').AsExtended;
    DM.TBNfeItensNFI_VALORSEGURO.Value        :=Req.ContentFields.Field('NFI_VALORSEGURO').AsExtended;
    DM.TBNfeItensNFI_VALORTOTAL.Value         :=Req.ContentFields.Field('NFI_VALORTOTAL').AsExtended;
    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('NFI_VALORTOTALBRUTO').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('NFI_VALORTRIBUTOS').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSEST').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSFED').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSIMP').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSMUN').AsExtended;
    DM.TBNfeItensNFI_VALORUNIT.Value          :=Req.ContentFields.Field('NFI_VALORUNIT').AsExtended;
    DM.TBNfeItens.Post;
    DM.TBNfeItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBNfe.Close;

    Result:=Visualizar(DM,Req); //req contem NFE_CODIGO.

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (atualizarItem) '+ex.Message);
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
  NFI_PRODUTO, NFE_CODIGO: Integer;
  NFI_QUANTIDADE: Extended;
begin
  try
    NFI_PRODUTO   :=SoNumeros(Req.ContentFields.Field('NFI_PRODUTO').AsString);
    NFE_CODIGO    :=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);
    NFI_QUANTIDADE:=Req.ContentFields.Field('NFI_QUANTIDADE').AsExtended;

    Obrigatorio(NFI_PRODUTO.ToString,'Produto','0');
    Obrigatorio(NFE_CODIGO.ToString,'Venda','0');

    if NFI_QUANTIDADE<=0 then
    raise Exception.Create('A quantidade não pode ser menor ou igual a zero');

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Pedido de venda não localizado.');

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=NFI_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não localizado.');

    DM.TBProdutosQtde.Open;
    if DM.TBProdutosQtde.IsEmpty then
    raise Exception.Create('Não existe almoxarifado cadastrado para este produto.');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NFE: (inserirItem) Venda: '+NFE_CODIGO.ToString+' Produto: '+NFI_PRODUTO.ToString);

    DM.TBNfeItens.Open;
    DM.TBNfeItens.Insert;
    DM.TBNfeItensNFI_ALIQCOFINS.Value         :=Req.ContentFields.Field('NFI_ALIQCOFINS').AsExtended;
    DM.TBNfeItensNFI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('NFI_ALIQCOFINSST').AsExtended;
    DM.TBNfeItensNFI_ALIQFCP.Value            :=Req.ContentFields.Field('NFI_ALIQFCP').AsExtended;
    DM.TBNfeItensNFI_ALIQFCPST.Value          :=Req.ContentFields.Field('NFI_ALIQFCPST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMS.Value           :=Req.ContentFields.Field('NFI_ALIQICMS').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('NFI_ALIQICMSADICST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSINTER.Value      :=Req.ContentFields.Field('NFI_ALIQICMSINTER').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSINTERPART.Value  :=Req.ContentFields.Field('NFI_ALIQICMSINTERPART').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSRED.Value        :=Req.ContentFields.Field('NFI_ALIQICMSRED').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSST.Value         :=Req.ContentFields.Field('NFI_ALIQICMSST').AsExtended;
    DM.TBNfeItensNFI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('NFI_ALIQICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_ALIQII.Value             :=Req.ContentFields.Field('NFI_ALIQII').AsExtended;
    DM.TBNfeItensNFI_ALIQIPI.Value            :=Req.ContentFields.Field('NFI_ALIQIPI').AsExtended;
    DM.TBNfeItensNFI_ALIQISS.Value            :=Req.ContentFields.Field('NFI_ALIQISS').AsExtended;
    DM.TBNfeItensNFI_ALIQPIS.Value            :=Req.ContentFields.Field('NFI_ALIQPIS').AsExtended;
    DM.TBNfeItensNFI_ALIQPISST.Value          :=Req.ContentFields.Field('NFI_ALIQPISST').AsExtended;
    DM.TBNfeItensNFI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('NFI_ALMOXARIFADO').AsInteger;
    DM.TBNfeItensNFI_BASECOFINS.Value         :=Req.ContentFields.Field('NFI_BASECOFINS').AsExtended;
    DM.TBNfeItensNFI_BASECOFINSST.Value       :=Req.ContentFields.Field('NFI_BASECOFINSST').AsExtended;
    DM.TBNfeItensNFI_BASEICMS.Value           :=Req.ContentFields.Field('NFI_BASEICMS').AsExtended;
    DM.TBNfeItensNFI_BASEICMSRED.Value        :=Req.ContentFields.Field('NFI_BASEICMSRED').AsExtended;;
    DM.TBNfeItensNFI_BASEICMSST.Value         :=Req.ContentFields.Field('NFI_BASEICMSST').AsExtended;
    DM.TBNfeItensNFI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('NFI_BASEICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_BASEII.Value             :=Req.ContentFields.Field('NFI_BASEII').AsExtended;
    DM.TBNfeItensNFI_BASEIPI.Value            :=Req.ContentFields.Field('NFI_BASEIPI').AsExtended;
    DM.TBNfeItensNFI_BASEISS.Value            :=Req.ContentFields.Field('NFI_BASEISS').AsExtended;
    DM.TBNfeItensNFI_BASEPIS.Value            :=Req.ContentFields.Field('NFI_BASEPIS').AsExtended;
    DM.TBNfeItensNFI_BASEPISST.Value          :=Req.ContentFields.Field('NFI_BASEPISST').AsExtended;
    DM.TBNfeItensNFI_BENEFICIO.Value          :=San(Req.ContentFields.Field('NFI_BENEFICIO').AsString);
    DM.TBNfeItensNFI_CEST.Value               :=San(Req.ContentFields.Field('NFI_CEST').AsString);
    DM.TBNfeItensNFI_CFOP.Value               :=Req.ContentFields.Field('NFI_CFOP').AsInteger;
    DM.TBNfeItensNFI_CIDADEISS.Value          :=Req.ContentFields.Field('NFI_CIDADEISS').AsInteger;
    DM.TBNfeItensNFI_CLASSFISCAL.Value        :=San(Req.ContentFields.Field('NFI_CLASSFISCAL').AsString);
    //DM.TBNfeItensNFI_CODIGO.Value             :=Req.ContentFields.Field('NFI_CODIGO').AsInteger';
    DM.TBNfeItensNFI_CODIGOBARRAS.Value       :=San(Req.ContentFields.Field('NFI_CODIGOBARRAS').AsString);
    DM.TBNfeItensNFI_CODIGOFAB.Value          :=San(Req.ContentFields.Field('NFI_CODIGOFAB').AsString);
    DM.TBNfeItensNFI_COMISSAO.Value           :=Req.ContentFields.Field('NFI_COMISSAO').AsExtended;
    DM.TBNfeItensNFI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('NFI_COMPLEMENTO').AsString);
    DM.TBNfeItensNFI_COMPOEBASEICMS.Value     :=San(Req.ContentFields.Field('NFI_COMPOEBASEICMS').AsString);
    DM.TBNfeItensNFI_COMPOEBASEICMSST.Value   :=San(Req.ContentFields.Field('NFI_COMPOEBASEICMSST').AsString);
    DM.TBNfeItensNFI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('NFI_COMPOETOTAL').AsString);
    DM.TBNfeItensNFI_CONVERSAO.Value          :=Req.ContentFields.Field('NFI_CONVERSAO').AsExtended;
    DM.TBNfeItensNFI_CSTCOFINS.Value          :=Req.ContentFields.Field('NFI_CSTCOFINS').AsInteger;
    DM.TBNfeItensNFI_CSTICMS.Value            :=Req.ContentFields.Field('NFI_CSTICMS').AsInteger;
    DM.TBNfeItensNFI_CSTIPI.Value             :=Req.ContentFields.Field('NFI_CSTIPI').AsInteger;
    DM.TBNfeItensNFI_CSTPIS.Value             :=Req.ContentFields.Field('NFI_CSTPIS').AsInteger;
    DM.TBNfeItensNFI_DESCMAX.Value            :=Req.ContentFields.Field('NFI_DESCMAX').AsExtended;
    DM.TBNfeItensNFI_DESCPORC.Value           :=Req.ContentFields.Field('NFI_DESCPORC').AsExtended;
    DM.TBNfeItensNFI_DESCRICAO.Value          :=San(Req.ContentFields.Field('NFI_DESCRICAO').AsString);
    DM.TBNfeItensNFI_DESCVALOR.Value          :=Req.ContentFields.Field('NFI_DESCVALOR').AsExtended;
    DM.TBNfeItensNFI_DESONERACAO.Value        :=San(Req.ContentFields.Field('NFI_DESONERACAO').AsString);
    DM.TBNfeItensNFI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('NFI_DICNPJ').AsString);
    DM.TBNfeItensNFI_DIDATA.Value             :=Req.ContentFields.Field('NFI_DIDATA').AsDate;
    DM.TBNfeItensNFI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('NFI_DIDESEMBARACODATA').AsDate;
    DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('NFI_DIDESENBARACOLOCAL').AsString);
    DM.TBNfeItensNFI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('NFI_DIDESEMBARACOUF').AsString);
    DM.TBNfeItensNFI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('NFI_DIEXPORTADORCOD').AsString);
    DM.TBNfeItensNFI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('NFI_DIINTERMEDIO').AsString);
    DM.TBNfeItensNFI_DINUMERO.Value           :=San(Req.ContentFields.Field('NFI_DINUMERO').AsString);
    DM.TBNfeItensNFI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('NFI_DITERCEIROUF').AsString);
    DM.TBNfeItensNFI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('NFI_DITRANSPORTE').AsString);
    DM.TBNfeItensNFI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('NFI_DIVALORAFRMM').AsExtended;
    DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value   :=Req.ContentFields.Field('NFI_ENQUADRAMENTOIPI').AsInteger;
    DM.TBNfeItensNFI_EXCECAO.Value            :=Req.ContentFields.Field('NFI_EXCECAO').AsInteger;
    DM.TBNfeItensNFI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('NFI_EXCHAVEACESSO').AsString);
    DM.TBNfeItensNFI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('NFI_EXDRAWBACK').AsString);
    DM.TBNfeItensNFI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('NFI_EXQUANTIDADE').AsExtended;
    DM.TBNfeItensNFI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('NFI_EXREGISTRO').AsString);
    DM.TBNfeItensNFI_FCI.Value                :=San(Req.ContentFields.Field('NFI_FCI').AsString);
    DM.TBNfeItensNFI_INCENTIVOISS.Value       :=San(Req.ContentFields.Field('NFI_INCENTIVOISS').AsString);
    DM.TBNfeItensNFI_INDICADORISS.Value       :=San(Req.ContentFields.Field('NFI_INDICADORISS').AsString);
    DM.TBNfeItensNFI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('NFI_INFOADICIONAL').AsString,0);
    DM.TBNfeItensNFI_LOCALIZACAO.Value        :=San(Req.ContentFields.Field('NFI_LOCALIZACAO').AsString);
    DM.TBNfeItensNFI_LOTE.Value               :=San(Req.ContentFields.Field('NFI_LOTE').AsString);
    DM.TBNfeItensNFI_LUCROPORC.Value          :=Req.ContentFields.Field('NFI_LUCROPORC').AsExtended;
    DM.TBNfeItensNFI_LUCROVALOR.Value         :=Req.ContentFields.Field('NFI_LUCROVALOR').AsExtended;
    DM.TBNfeItensNFI_MODICMS.Value            :=San(Req.ContentFields.Field('NFI_MODICMS').AsString);
    DM.TBNfeItensNFI_MODICMSST.Value          :=San(Req.ContentFields.Field('NFI_MODICMSST').AsString);
    DM.TBNfeItensNFI_NOTA.Value               :=DM.TBNfeNFE_CODIGO.Value; //Req.ContentFields.Field('NFI_VENDA').AsInteger;
    DM.TBNfeItensNFI_ORIGEM.Value             :=San(Req.ContentFields.Field('NFI_ORIGEM').AsString);
    DM.TBNfeItensNFI_PAISISS.Value            :=Req.ContentFields.Field('NFI_PAISISS').AsInteger;
    DM.TBNfeItensNFI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('NFI_PEDIDOCLIENTE').AsString);
    DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('NFI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBNfeItensNFI_PESO.Value               :=Req.ContentFields.Field('NFI_PESO').AsExtended;
    DM.TBNfeItensNFI_PESOTOTAL.Value          :=Req.ContentFields.Field('NFI_PESOTOTAL').AsExtended;
    DM.TBNfeItensNFI_PRECOCUSTO.Value         :=Req.ContentFields.Field('NFI_PRECOCUSTO').AsExtended;
    DM.TBNfeItensNFI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('NFI_PRECOCUSTOTOTAL').AsExtended;
    DM.TBNfeItensNFI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('NFI_PROCESSOISS').AsString);
    DM.TBNfeItensNFI_PRODUTO.Value            :=Req.ContentFields.Field('NFI_PRODUTO').AsInteger;
    DM.TBNfeItensNFI_PRODUTOREAL.Value        :=Req.ContentFields.Field('NFI_PRODUTOREAL').AsInteger;
    DM.TBNfeItensNFI_QUANTIDADE.Value         :=Req.ContentFields.Field('NFI_QUANTIDADE').AsExtended;
    DM.TBNfeItensNFI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('NFI_QUANTIDADETROCA').AsExtended;
    //DM.TBNfeItensNFI_SEQUENCIA.Value          := setado no after insert.
    DM.TBNfeItensNFI_SERVICOISS.Value         :=San(Req.ContentFields.Field('NFI_SERVICOISS').AsString);
    DM.TBNfeItensNFI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('NFI_SOMACOFINSST').AsString);
    DM.TBNfeItensNFI_SOMAPISST.Value          :=San(Req.ContentFields.Field('NFI_SOMAPISST').AsString);
    DM.TBNfeItensNFI_TIPO.Value               :=San(Req.ContentFields.Field('NFI_TIPO').AsString);
    DM.TBNfeItensNFI_TIPOISS.Value            :=San(Req.ContentFields.Field('NFI_TIPOISS').AsString);
    DM.TBNfeItensNFI_UNIDADE.Value            :=San(Req.ContentFields.Field('NFI_UNIDADE').AsString);
    DM.TBNfeItensNFI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('NFI_VALORACESSORIAS').AsExtended;
    DM.TBNfeItensNFI_VALORADUANA.Value        :=Req.ContentFields.Field('NFI_VALORADUANA').AsExtended;
    DM.TBNfeItensNFI_VALORCOFINS.Value        :=Req.ContentFields.Field('NFI_VALORCOFINS').AsExtended;
    DM.TBNfeItensNFI_VALORCOFINSST.Value      :=Req.ContentFields.Field('NFI_VALORCOFINSST').AsExtended;
    DM.TBNfeItensNFI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('NFI_VALORCOMISSAO').AsExtended;
    DM.TBNfeItensNFI_VALORFCP.Value           :=Req.ContentFields.Field('NFI_VALORFCP').AsExtended;
    DM.TBNfeItensNFI_VALORFCPST.Value         :=Req.ContentFields.Field('NFI_VALORFCPST').AsExtended;
    DM.TBNfeItensNFI_VALORFRETE.Value         :=Req.ContentFields.Field('NFI_VALORFRETE').AsExtended;
    DM.TBNfeItensNFI_VALORICMS.Value          :=Req.ContentFields.Field('NFI_VALORICMS').AsExtended;
    DM.TBNfeItensNFI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('NFI_VALORICMSCREDSN').AsExtended;
    DM.TBNfeItensNFI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('NFI_VALORICMSDESONERADO').AsExtended;
    DM.TBNfeItensNFI_VALORICMSST.Value        :=Req.ContentFields.Field('NFI_VALORICMSST').AsExtended;
    DM.TBNfeItensNFI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('NFI_VALORICMSSTRET').AsExtended;
    DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('NFI_VALORICMSSUBSTITUTO').AsExtended;
    DM.TBNfeItensNFI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('NFI_VALORICMSUFDEST').AsExtended;
    DM.TBNfeItensNFI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('NFI_VALORICMSUFREMET').AsExtended;
    DM.TBNfeItensNFI_VALORII.Value            :=Req.ContentFields.Field('NFI_VALORII').AsExtended;
    DM.TBNfeItensNFI_VALORIOF.Value           :=Req.ContentFields.Field('NFI_VALORIOF').AsExtended;
    DM.TBNfeItensNFI_VALORIPI.Value           :=Req.ContentFields.Field('NFI_VALORIPI').AsExtended;
    DM.TBNfeItensNFI_VALORISS.Value           :=Req.ContentFields.Field('NFI_VALOISS').AsExtended;
    DM.TBNfeItensNFI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('NFI_VALORISSDEDUCAO').AsExtended;
    DM.TBNfeItensNFI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('NFI_VALORISSDESCCOND').AsExtended;
    DM.TBNfeItensNFI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('NFI_VALORISSDESCINCOND').AsExtended;
    DM.TBNfeItensNFI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('NFI_VALORISSOUTROS').AsExtended;
    DM.TBNfeItensNFI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('NFI_VALORISSRETENCAO').AsExtended;
    DM.TBNfeItensNFI_VALORPIS.Value           :=Req.ContentFields.Field('NFI_VALORPIS').AsExtended;
    DM.TBNfeItensNFI_VALORPISST.Value         :=Req.ContentFields.Field('NFI_VALORPISST').AsExtended;
    DM.TBNfeItensNFI_VALORSEGURO.Value        :=Req.ContentFields.Field('NFI_VALORSEGURO').AsExtended;
    DM.TBNfeItensNFI_VALORTOTAL.Value         :=Req.ContentFields.Field('NFI_VALORTOTAL').AsExtended;
    DM.TBNfeItensNFI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('NFI_VALORTOTALBRUTO').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('NFI_VALORTRIBUTOS').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSEST').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSFED').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSIMP').AsExtended;
    DM.TBNfeItensNFI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('NFI_VALORTRIBUTOSMUN').AsExtended;
    DM.TBNfeItensNFI_VALORUNIT.Value          :=Req.ContentFields.Field('NFI_VALORUNIT').AsExtended;
    DM.TBNfeItens.Post;
    DM.TBNfeItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBNfe.Close;
    DM.TBParametros.Close;
    DM.TBProdutos.Close;

    Result:=Visualizar(DM,Req); //req contem NFE_CODIGO.

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (inserirItem) '+ex.Message);
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
  NFE_CODIGO, NFI_CODIGO: Integer;
begin
  try
    NFE_CODIGO:=SoNumeros(Req.ContentFields.Field('NFE_CODIGO').AsString);
    NFI_CODIGO:=SoNumeros(Req.ContentFields.Field('NFI_CODIGO').AsString);
    if NFE_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.NFE: (excluirItem) '+NFI_CODIGO.ToString);

    DM.TBNfe.Close;
    DM.TBNfe.ParamByName('codigo').AsInteger:=NFE_CODIGO;
    DM.TBNfe.Open;
    if DM.TBNfe.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBNfeNFE_STATUS.Value<>'A' then
    raise Exception.Create('Este pedido de venda não está em aberto.');

    DM.TBNfeItens.Open;
    if not DM.TBNfeItens.Locate('NFI_CODIGO',NFI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro.');

    DM.TBNfeItens.Delete;
    DM.TRVendasItens.Commit;

    DM.CalcularTotaisVenda(True);
    ReordenarItens(DM,NFE_CODIGO);

    //AtualizarTotaisConsulta(DM,COS_CODIGO);
    Result:=Visualizar(DM,Req); //req contem COS_CODIGO.

  except on ex:exception do
    begin
      FormMain.Logar('FIRENET.NFE: (excluirItem) '+ex.Message);
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
    'merge into NFEITENS NFEITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    NFI_CODIGO, '+
    '    NFI_VENDA, '+
    '    row_number() over(partition by NFI_VENDA order by NFI_VENDA, NFI_CODIGO) as SEQ '+
    'from NFEITENS where NFI_VENDA=:codigo order by NFI_VENDA, NFI_CODIGO) NFEITENS_ORIGEM '+
    'on NFEITENS_DESTINO.RDB$DB_KEY = NFEITENS_ORIGEM.db_key '+
    'when matched then update set NFEITENS_DESTINO.NFI_SEQUENCIA = NFEITENS_ORIGEM.SEQ'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  DM.TRQuery1.Commit;

  //atualiza o total de itens.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add(
    'update NFE set NFE_SEQUENCIAITEM=(select max(NFI_SEQUENCIA) as SEQ from NFEITENS where NFI_VENDA=NFE_CODIGO) where NFE_CODIGO=:codigo'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  DM.TRQuery1.Commit;
end;

function Status(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  CabMsg, DadosMsg, RetWS, MsgResultado, Proxy: Widestring;
  I: Integer;
  U: NFe_Util_2G_Interface; //OleVariant;
begin
  try
    try
      FormMain.Logar('FIRENET.NFE: (status)');
      CabMsg:='';
      DadosMsg:='';
      RetWS:='';
      MsgResultado:='';
      CoInitializeEx(nil, COINIT_APARTMENTTHREADED);

      U:=CoUtil.Create;
      Proxy:='';
      //if DM.TBParametrosPAR_PROXY.Value='S' then
      //Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
      I:=U.ConsultaStatus2G('SVRS',
                            'SC',
                            1,
                            'ARQUIVO|c:\runtime\firenet\certificados\certificadogp2025vini0909.pfx|vini0909',
                            '4.00',
                            DadosMsg,
                            RetWS,
                            MsgResultado,
                            Proxy,
                            '',
                            '');

      U:=nil;
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg','Consulta status retornou: '+MsgResultado);

      Result:=Retorno;
    except on ex:Exception do
      begin
        FormMain.Logar('FIRENET.NFE: (status) '+ex.Message);
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg','Erro ao consultar status: '+ex.Message);
        Result:=Retorno;
      end;
    end;
  finally
    CoUninitialize;
  end;
end;

end.
