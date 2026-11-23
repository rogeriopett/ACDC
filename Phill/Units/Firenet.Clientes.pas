unit Firenet.Clientes;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet, System.Variants;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Bloquear(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Limite(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Reposicoes(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.CLIENTES: ';
  Campos='CLI_BAIRRO, CLI_CEP, CLI_CIDADE, CLI_CODIGO, CLI_CONDICAO, CLI_CONTATO, CLI_CNPJ, CLI_CPF, CLI_DTATUALIZACAO, CLI_EMAIL, '+
    'CLI_ENDERECO, CLI_ESTADO, CLI_FANTASIA, CLI_FONE1, CLI_FONE2, CLI_FONE3, CLI_NOME, CLI_NUMERO, CLI_REPOSICOES, CLI_STATUS, CLI_TIPOCONSUMIDOR, '+
    'CLI_TIPOPESSOA, CLI_VENDEDOR, CPG_DESCRICAO, CPG_FORMAPAGTO, CPG_MEIOPAGAMENTO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/clientes', VerificarOperacao);
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

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      if Operacao='parametros' then Res.Send( Parametros(DM,Req) ).Status(200) else
      if Operacao='bloquear'   then Res.Send( Bloquear(DM,Req)   ).Status(200) else
      if Operacao='limite'     then Res.Send( Limite(DM,Req)     ).Status(200) else
      if Operacao='reposicoes' then Res.Send( Reposicoes(DM,Req) ).Status(200) else
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
  Pagina, Registros, Skip, CLI_CODIGO: Integer;
  Where, CLI_CNPJ, CLI_CONTATO, CLI_CPF, CLI_DESCRICAO, CLI_EMAIL, CLI_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=Req.ContentFields.Field('pagina').AsInteger;
    CLI_CNPJ   :=San(Req.ContentFields.Field('CLI_CNPJ').AsString);
    CLI_CODIGO :=Req.ContentFields.Field('CLI_CODIGO').AsInteger;
    CLI_CONTATO:=San(Req.ContentFields.Field('CLI_CONTATO').AsString);
    CLI_CPF    :=San(Req.ContentFields.Field('CLI_CPF').AsString);
    CLI_EMAIL  :=San(Req.ContentFields.Field('CLI_EMAIL').AsString);
    CLI_NOME   :=San(Req.ContentFields.Field('CLI_NOME').AsString);
    Where:='';
    if CLI_CNPJ<>''    then Where:=Where+' and CLI_CNPJ like '+QuotedStr(CLI_CNPJ+'%');
    if CLI_CODIGO<>0   then Where:=Where+' and CLI_CODIGO='+CLI_CODIGO.ToString;
    if CLI_CONTATO<>'' then Where:=Where+' and CLI_CONTATO like '+QuotedStr(CLI_CONTATO+'%');
    if CLI_CPF<>''     then Where:=Where+' and CLI_CPF like '+QuotedStr(CLI_CPF+'%');
    if CLI_EMAIL<>''   then Where:=Where+' and CLI_EMAIL like '+QuotedStr(CLI_EMAIL+'%');
    if CLI_NOME<>''    then Where:=Where+' and CLI_NOME like '+QuotedStr(CLI_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+CLI_CODIGO.ToString+', NOME: '+CLI_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CLIENTES left join CONDICOES on CPG_CODIGO=CLI_CONDICAO where 1=1 '+Where+' order by CLI_NOME');
    FormMain.Logar(PrefixLog+DM.Query1.SQL.Text);
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
  CLI_CODIGO: Integer;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;

    FormMain.Logar(PrefixLog+'(visualizar) '+CLI_CODIGO.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBClientes.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBClientes.Close;

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
  CLI_CODIGO: Integer;
  CLI_NOME: String;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;
    CLI_NOME:=San(Req.ContentFields.Field('CLI_NOME').AsString);

    Obrigatorio(CLI_CODIGO.ToString,'Código','0');
    Obrigatorio(CLI_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+CLI_CODIGO.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBClientes.Edit;
    DM.TBClientesCLI_AFE.Value                :=San(Req.ContentFields.Field('CLI_AFE').AsString);
    DM.TBClientesCLI_ALVARA.Value             :=San(Req.ContentFields.Field('CLI_ALVARA').AsString);
    DM.TBClientesCLI_ALVARASANITARIO.Value    :=San(Req.ContentFields.Field('CLI_ALVARASANITARIO').AsString);
    DM.TBClientesCLI_ATIVIDADE.Value          :=Req.ContentFields.Field('CLI_ATIVIDADE').AsInteger;
    DM.TBClientesCLI_ATUALIZAR.Value          :='S';
    DM.TBClientesCLI_BAIRRO.Value             :=San(Req.ContentFields.Field('CLI_BAIRRO').AsString);
    DM.TBClientesCLI_BAIRROCOB.Value          :=San(Req.ContentFields.Field('CLI_BAIRROCOB').AsString);
    //DM.TBClientesCLI_BLOQUEARVENDA.Value      :='N';
    DM.TBClientesCLI_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('CLI_CEP').AsString);
    DM.TBClientesCLI_CEPCOB.Value             :=FormatarCEP(Req.ContentFields.Field('CLI_CEPCOB').AsString);
    DM.TBClientesCLI_CIDADE.Value             :=San(Req.ContentFields.Field('CLI_CIDADE').AsString);
    DM.TBClientesCLI_CIDADECOB.Value          :=San(Req.ContentFields.Field('CLI_CIDADECOB').AsString);
    DM.TBClientesCLI_CIDADECODIGO.Value       :=Req.ContentFields.Field('CLI_CIDADECODIGO').AsInteger;
    DM.TBClientesCLI_CIDADECODIGOCOB.Value    :=Req.ContentFields.Field('CLI_CIDADECODIGOCOB').AsInteger;
    DM.TBClientesCLI_CLASSIFICACAO.Value      :=San(Req.ContentFields.Field('CLI_CLASSIFICACAO').AsString);
    DM.TBClientesCLI_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CNPJ').AsString);
    DM.TBClientesCLI_CNPJCOB.Value            :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CNPJCOB').AsString);
    DM.TBClientesCLI_CNS.Value                :=San(Req.ContentFields.Field('CLI_CNS').AsString);
    //DM.TBClientesCLI_CODIGO.Value:=
    DM.TBClientesCLI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('CLI_COMPLEMENTO').AsString);
    DM.TBClientesCLI_COMPLEMENTOCOB.Value     :=San(Req.ContentFields.Field('CLI_COMPLEMENTOCOB').AsString);
    DM.TBClientesCLI_CONDICAO.Value           :=Req.ContentFields.Field('CLI_CONDICAO').AsInteger;
    DM.TBClientesCLI_CONJUGE.Value            :=San(Req.ContentFields.Field('CLI_CONJUGE').AsString);
    DM.TBClientesCLI_CONJUGECPF.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CONJUGECPF').AsString);
    DM.TBClientesCLI_CONJUGEDTNASC.Clear;
    if Req.ContentFields.Field('CLI_CONJUGEDTNASC').AsString<>'' then
    DM.TBClientesCLI_CONJUGEDTNASC.Value      :=Req.ContentFields.Field('CLI_CONJUGEDTNASC').AsDate;
    DM.TBClientesCLI_CONJUGERG.Value          :=San(Req.ContentFields.Field('CLI_CONJUGERG').AsString);
    DM.TBClientesCLI_CONTATO.Value            :=San(Req.ContentFields.Field('CLI_CONTATO').AsString);
    DM.TBClientesCLI_CONTRIBUINTEICMS.Value   :=San(Req.ContentFields.Field('CLI_CONTRIBUINTEICMS').AsString);
    DM.TBClientesCLI_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CPF').AsString);
    DM.TBClientesCLI_DESCONTO.Value           :=Req.ContentFields.Field('CLI_DESCONTO').AsExtended;
    DM.TBClientesCLI_DIACOBRANCA.Value        :=Req.ContentFields.Field('CLI_DIACOBRANCA').AsInteger;
    DM.TBClientesCLI_DTATUALIZACAO.Value      :=Date;
    //DM.TBClientesCLI_DTCADASTRO.Value         :=Date;
    DM.TBClientesCLI_DTNASC.Clear;
    if Req.ContentFields.Field('CLI_DTNASC').AsString<>'' then
    DM.TBClientesCLI_DTNASC.Value             :=Req.ContentFields.Field('CLI_DTNASC').AsDate;
    DM.TBClientesCLI_DTOBITO.Clear;
    if Req.ContentFields.Field('CLI_DTOBITO').AsString<>'' then
    DM.TBClientesCLI_DTOBITO.Value            :=Req.ContentFields.Field('CLI_DTOBITO').AsDate;
    DM.TBClientesCLI_EMAIL.Value              :=San(Req.ContentFields.Field('CLI_EMAIL').AsString);
    DM.TBClientesCLI_EMAIL2.Value             :=San(Req.ContentFields.Field('CLI_EMAIL2').AsString);
    DM.TBClientesCLI_ENDERECO.Value           :=San(Req.ContentFields.Field('CLI_ENDERECO').AsString);
    DM.TBClientesCLI_ENDERECOCOB.Value        :=San(Req.ContentFields.Field('CLI_ENDERECOCOB').AsString);
    DM.TBClientesCLI_ENQUADRAMENTO.Value      :=San(Req.ContentFields.Field('CLI_ENQUADRAMENTO').AsString);
    DM.TBClientesCLI_ESTADO.Value             :=San(Req.ContentFields.Field('CLI_ESTADO').AsString);
    DM.TBClientesCLI_ESTADOCIVIL.Value        :=San(Req.ContentFields.Field('CLI_ESTADOCIVIL').AsString);
    DM.TBClientesCLI_ESTADOCOB.Value          :=San(Req.ContentFields.Field('CLI_ESTADOCOB').AsString);
    DM.TBClientesCLI_ESTADOCODIGO.Value       :=Req.ContentFields.Field('CLI_ESTADOCODIGO').AsInteger;
    DM.TBClientesCLI_ESTADOCODIGOCOB.Value    :=Req.ContentFields.Field('CLI_ESTADOCODIGOCOB').AsInteger;
    DM.TBClientesCLI_FANTASIA.Value           :=San(Req.ContentFields.Field('CLI_FANTASIA').AsString);
    DM.TBClientesCLI_FONE0800.Value           :=San(Req.ContentFields.Field('CLI_FONE0800').AsString);
    DM.TBClientesCLI_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE1').AsString);
    DM.TBClientesCLI_FONE2.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE2').AsString);
    DM.TBClientesCLI_FONE3.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE3').AsString);
    DM.TBClientesCLI_FRETE.Value              :=San(Req.ContentFields.Field('CLI_FRETE').AsString);
    DM.TBClientesCLI_HRATUALIZACAO.Value      :=Time;
    //DM.TBClientesCLI_HRCADASTRO.Value         :=Time;
    DM.TBClientesCLI_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('CLI_IDESTRANGEIRO').AsString);
    DM.TBClientesCLI_IE.Value                 :=San(Req.ContentFields.Field('CLI_IE').AsString);
    DM.TBClientesCLI_IECOB.Value              :=San(Req.ContentFields.Field('CLI_IECOB').AsString);
    DM.TBClientesCLI_IM.Value                 :=Req.ContentFields.Field('CLI_IM').AsInteger;
    //DM.TBClientesCLI_LIMITECREDITO.Value      :=Req.ContentFields.Field('CLI_LIMITECREDITO').AsExtended;
    DM.TBClientesCLI_LOCALTRABALHO.Value      :=Req.ContentFields.Field('CLI_LOCALTRABALHO').AsInteger;
    DM.TBClientesCLI_LOCALESTUDA.Value        :=Req.ContentFields.Field('CLI_LOCALESTUDA').AsInteger;
    DM.TBClientesCLI_MAE.Value                :=San(Req.ContentFields.Field('CLI_MAE').AsString);
    DM.TBClientesCLI_MAEEMAIL.Value           :=San(Req.ContentFields.Field('CLI_MAEEMAIL').AsString);
    DM.TBClientesCLI_MAEFONE.Value            :=FormatarFone(Req.ContentFields.Field('CLI_MAEFONE').AsString);
    DM.TBClientesCLI_MAILING.Value            :=Req.ContentFields.Field('CLI_MAILING').AsInteger;
    DM.TBClientesCLI_MENSALISTA.Value         :=San(Req.ContentFields.Field('CLI_MENSALISTA').AsString);
    DM.TBClientesCLI_MSN.Value                :=San(Req.ContentFields.Field('CLI_MSN').AsString);
    DM.TBClientesCLI_NATURALIDADE.Value       :=San(Req.ContentFields.Field('CLI_NATURALIDADE').AsString);
    DM.TBClientesCLI_NEXTEL.Value             :=San(Req.ContentFields.Field('CLI_NEXTEL').AsString);
    DM.TBClientesCLI_NOME.Value               :=CLI_NOME;
    DM.TBClientesCLI_NUMERO.Value             :=San(Req.ContentFields.Field('CLI_NUMERO').AsString);
    DM.TBClientesCLI_NUMEROCOB.Value          :=San(Req.ContentFields.Field('CLI_NUmEROCOB').AsString);
    DM.TBClientesCLI_OBITO.Value              :=San(Req.ContentFields.Field('CLI_OBITO').AsString);
    DM.TBClientesCLI_OBSERVACOES.Value        :=San(Req.ContentFields.Field('CLI_OBSERVACOES').AsString,0);
    DM.TBClientesCLI_ORIENTACAOCOBRANCA.Value :=San(Req.ContentFields.Field('CLI_ORIENTACAOCOBRANCA').AsString);
    DM.TBClientesCLI_PAI.Value                :=San(Req.ContentFields.Field('CLI_PAI').AsString);
    DM.TBClientesCLI_PAIEMAIL.Value           :=San(Req.ContentFields.Field('CLI_PAIEMAIL').AsString);
    DM.TBClientesCLI_PAIFONE.Value            :=FormatarFone(Req.ContentFields.Field('CLI_PAIFONE').AsString);
    DM.TBClientesCLI_PAIS.Value               :=San(Req.ContentFields.Field('CLI_PAIS').AsString);
    DM.TBClientesCLI_PAISCOB.Value            :=San(Req.ContentFields.Field('CLI_PAISCOB').AsString);
    DM.TBClientesCLI_PAISCODIGO.Value         :=Req.ContentFields.Field('CLI_PAISCODIGO').AsInteger;
    DM.TBClientesCLI_PAISCODIGOCOB.Value      :=Req.ContentFields.Field('CLI_PAISCODIGOCOB').AsInteger;
    //DM.TBClientesCLI_PASSWORD.Value           :='1234';
    //DM.TBClientesCLI_PONTOS.Value             :=0;
    DM.TBClientesCLI_PROFISSAO.Value          :=San(Req.ContentFields.Field('CLI_PROFISSAO').AsString);
    DM.TBClientesCLI_RECEBEAVISOS.Value       :=San(Req.ContentFields.Field('CLI_RECEBEAVISOS').AsString);
    DM.TBClientesCLI_REGPROFISSIONAL.Value    :=San(Req.ContentFields.Field('CLI_REGPROFISSIONAL').AsString);
    DM.TBClientesCLI_RG.Value                 :=San(Req.ContentFields.Field('CLI_RG').AsString);
    DM.TBClientesCLI_SAME.Value               :=San(Req.ContentFields.Field('CLI_SAME').AsString);
    DM.TBClientesCLI_SETOR.Value              :=Req.ContentFields.Field('CLI_SETOR').AsInteger;
    DM.TBClientesCLI_SEXO.Value               :=San(Req.ContentFields.Field('CLI_SEXO').AsString);
    DM.TBClientesCLI_SITE.Value               :=San(Req.ContentFields.Field('CLI_SITE').AsString);
    DM.TBClientesCLI_STATUS.Value             :=San(Req.ContentFields.Field('CLI_STATUS').AsString);
    DM.TBClientesCLI_SUFRAMA.Value            :=San(Req.ContentFields.Field('CLI_SUFRAMA').AsString);
    DM.TBClientesCLI_TABELAPRECO.Value        :=San(Req.ContentFields.Field('CLI_TABELAPRECO').AsString);
    DM.TBClientesCLI_TAXA.Value               :=Req.ContentFields.Field('CLI_TAXA').AsInteger;
    DM.TBClientesCLI_TELEVENDA.Value          :=Req.ContentFields.Field('CLI_TELEVENDA').AsInteger;
    DM.TBClientesCLI_TIPOCLIENTE.Value        :=San(Req.ContentFields.Field('CLI_TIPOCLIENTE').AsString);
    DM.TBClientesCLI_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('CLI_TIPOCONSUMIDOR').AsString);
    DM.TBClientesCLI_TIPOPESSOA.Value         :=San(Req.ContentFields.Field('CLI_TIPOPESSOA').AsString);
    DM.TBClientesCLI_TRANSPORTADORA.Value     :=Req.ContentFields.Field('CLI_TRANSPORTADORA').AsInteger;
    DM.TBClientesCLI_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBClientesCLI_VENDEDOR.Value           :=Req.ContentFields.Field('CLI_VENDEDOR').AsInteger;
    DM.TBClientes.Post;

    Registro:=DM.TBClientes.ToJSONObject;
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
  CLI_NOME: String;
begin
  try
    CLI_NOME:=Trim(San(Req.ContentFields.Field('CLI_NOME').AsString));

    Obrigatorio(CLI_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBClientes.Open;
    DM.TBClientes.Insert;
    DM.TBClientesCLI_AFE.Value                :=San(Req.ContentFields.Field('CLI_AFE').AsString);
    DM.TBClientesCLI_ALVARA.Value             :=San(Req.ContentFields.Field('CLI_ALVARA').AsString);
    DM.TBClientesCLI_ALVARASANITARIO.Value    :=San(Req.ContentFields.Field('CLI_ALVARASANITARIO').AsString);
    DM.TBClientesCLI_ATIVIDADE.Value          :=Req.ContentFields.Field('CLI_ATIVIDADE').AsInteger;
    DM.TBClientesCLI_ATUALIZAR.Value          :='S';
    DM.TBClientesCLI_BAIRRO.Value             :=San(Req.ContentFields.Field('CLI_BAIRRO').AsString);
    DM.TBClientesCLI_BAIRROCOB.Value          :=San(Req.ContentFields.Field('CLI_BAIROCOB').AsString);
    DM.TBClientesCLI_BLOQUEARVENDA.Value      :='N';
    DM.TBClientesCLI_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('CLI_CEP').AsString);
    DM.TBClientesCLI_CEPCOB.Value             :=FormatarCEP(Req.ContentFields.Field('CLI_CEPCOB').AsString);
    DM.TBClientesCLI_CIDADE.Value             :=San(Req.ContentFields.Field('CLI_CIDADE').AsString);
    DM.TBClientesCLI_CIDADECOB.Value          :=San(Req.ContentFields.Field('CLI_CIDADECOB').AsString);
    DM.TBClientesCLI_CIDADECODIGO.Value       :=Req.ContentFields.Field('CLI_CIDADECODIGO').AsInteger;
    DM.TBClientesCLI_CIDADECODIGOCOB.Value    :=Req.ContentFields.Field('CLI_CIDADECODIGOCOB').AsInteger;
    DM.TBClientesCLI_CLASSIFICACAO.Value      :=San(Req.ContentFields.Field('CLI_CLASSIFICACAO').AsString);
    DM.TBClientesCLI_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CNPJ').AsString);
    DM.TBClientesCLI_CNPJCOB.Value            :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CNPJCOB').AsString);
    DM.TBClientesCLI_CNS.Value                :=San(Req.ContentFields.Field('CLI_CNS').AsString);
    //DM.TBClientesCLI_CODIGO.Value:=
    DM.TBClientesCLI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('CLI_COMPLEMENTO').AsString);
    DM.TBClientesCLI_COMPLEMENTOCOB.Value     :=San(Req.ContentFields.Field('CLI_COMPLEMENTOCOB').AsString);
    DM.TBClientesCLI_CONDICAO.Value           :=Req.ContentFields.Field('CLI_CONDICAO').AsInteger;
    DM.TBClientesCLI_CONJUGE.Value            :=San(Req.ContentFields.Field('CLI_CONJUGE').AsString);
    DM.TBClientesCLI_CONJUGECPF.Value         :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CONJUGECPF').AsString);
    DM.TBClientesCLI_CONJUGEDTNASC.Clear;
    if Req.ContentFields.Field('CLI_CONJUGEDTNASC').AsString<>'' then
    DM.TBClientesCLI_CONJUGEDTNASC.Value      :=Req.ContentFields.Field('CLI_CONJUGEDTNASC').AsDate;
    DM.TBClientesCLI_CONJUGERG.Value          :=San(Req.ContentFields.Field('CLI_CONJUGERG').AsString);
    DM.TBClientesCLI_CONTATO.Value            :=San(Req.ContentFields.Field('CLI_CONTATO').AsString);
    DM.TBClientesCLI_CONTRIBUINTEICMS.Value   :=San(Req.ContentFields.Field('CLI_CONTRIBUINTEICMS').AsString);
    DM.TBClientesCLI_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('CLI_CPF').AsString);
    DM.TBClientesCLI_DESCONTO.Value           :=Req.ContentFields.Field('CLI_DESCONTO').AsExtended;
    DM.TBClientesCLI_DIACOBRANCA.Value        :=Req.ContentFields.Field('CLI_DIACOBRANCA').AsInteger;
    DM.TBClientesCLI_DTATUALIZACAO.Value      :=Date;
    DM.TBClientesCLI_DTCADASTRO.Value         :=Date;
    DM.TBClientesCLI_DIACOBRANCA.Value        :=Req.ContentFields.Field('CLI_DIACOBRANCA').AsInteger;
    DM.TBClientesCLI_DTNASC.Clear;
    if Req.ContentFields.Field('CLI_DTNASC').AsString<>'' then
    DM.TBClientesCLI_DTNASC.Value             :=Req.ContentFields.Field('CLI_CONJUGEDTNASC').AsDate;
    DM.TBClientesCLI_DTOBITO.Clear;
    if Req.ContentFields.Field('CLI_DTOBITO').AsString<>'' then
    DM.TBClientesCLI_DTOBITO.Value            :=Req.ContentFields.Field('CLI_DTOBITO').AsDate;
    DM.TBClientesCLI_EMAIL.Value              :=San(Req.ContentFields.Field('CLI_EMAIL').AsString);
    DM.TBClientesCLI_EMAIL2.Value             :=San(Req.ContentFields.Field('CLI_EMAIL2').AsString);
    DM.TBClientesCLI_ENDERECO.Value           :=San(Req.ContentFields.Field('CLI_ENDERECO').AsString);
    DM.TBClientesCLI_ENDERECOCOB.Value        :=San(Req.ContentFields.Field('CLI_ENDERECOCOB').AsString);
    DM.TBClientesCLI_ENQUADRAMENTO.Value      :=San(Req.ContentFields.Field('CLI_ENQUADRAMENTO').AsString);
    DM.TBClientesCLI_ESTADO.Value             :=San(Req.ContentFields.Field('CLI_ESTADO').AsString);
    DM.TBClientesCLI_ESTADOCIVIL.Value        :=San(Req.ContentFields.Field('CLI_ESTADOCIVIL').AsString);
    DM.TBClientesCLI_ESTADOCOB.Value          :=San(Req.ContentFields.Field('CLI_ESTADOCOB').AsString);
    DM.TBClientesCLI_ESTADOCODIGO.Value       :=Req.ContentFields.Field('CLI_ESTADOCODIGO').AsInteger;
    DM.TBClientesCLI_ESTADOCODIGOCOB.Value    :=Req.ContentFields.Field('CLI_ESTADOCODIGOCOB').AsInteger;
    DM.TBClientesCLI_FANTASIA.Value           :=San(Req.ContentFields.Field('CLI_FANTASIA').AsString);
    DM.TBClientesCLI_FONE0800.Value           :=San(Req.ContentFields.Field('CLI_FONE0800').AsString);
    DM.TBClientesCLI_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE1').AsString);
    DM.TBClientesCLI_FONE2.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE2').AsString);
    DM.TBClientesCLI_FONE3.Value              :=FormatarFone(Req.ContentFields.Field('CLI_FONE3').AsString);
    DM.TBClientesCLI_FRETE.Value              :=San(Req.ContentFields.Field('CLI_FRETE').AsString);
    DM.TBClientesCLI_HRATUALIZACAO.Value      :=Time;
    DM.TBClientesCLI_HRCADASTRO.Value         :=Time;
    DM.TBClientesCLI_IDESTRANGEIRO.Value      :=San(Req.ContentFields.Field('CLI_IDESTRANGEIRO').AsString);
    DM.TBClientesCLI_IE.Value                 :=San(Req.ContentFields.Field('CLI_IE').AsString);
    DM.TBClientesCLI_IECOB.Value              :=San(Req.ContentFields.Field('CLI_IECOB').AsString);
    DM.TBClientesCLI_IM.Value                 :=Req.ContentFields.Field('CLI_IM').AsInteger;
    DM.TBClientesCLI_LIMITECREDITO.Value      :=Req.ContentFields.Field('CLI_LIMITECREDITO').AsExtended;
    DM.TBClientesCLI_LOCALTRABALHO.Value      :=Req.ContentFields.Field('CLI_LOCALTRABALHO').AsInteger;
    DM.TBClientesCLI_LOCALESTUDA.Value        :=Req.ContentFields.Field('CLI_LOCALESTUDA').AsInteger;
    DM.TBClientesCLI_MAE.Value                :=San(Req.ContentFields.Field('CLI_MAE').AsString);
    DM.TBClientesCLI_MAEEMAIL.Value           :=San(Req.ContentFields.Field('CLI_MAEEMAIL').AsString);
    DM.TBClientesCLI_MAEFONE.Value            :=FormatarFone(Req.ContentFields.Field('CLI_MAEFONE').AsString);
    DM.TBClientesCLI_MAILING.Value            :=Req.ContentFields.Field('CLI_MAILING').AsInteger;
    DM.TBClientesCLI_MENSALISTA.Value         :=San(Req.ContentFields.Field('CLI_MENSALISTA').AsString);
    DM.TBClientesCLI_MSN.Value                :=San(Req.ContentFields.Field('CLI_MSN').AsString);
    DM.TBClientesCLI_NATURALIDADE.Value       :=San(Req.ContentFields.Field('CLI_NATURALIDADE').AsString);
    DM.TBClientesCLI_NEXTEL.Value             :=San(Req.ContentFields.Field('CLI_NEXTEL').AsString);
    DM.TBClientesCLI_NOME.Value               :=CLI_NOME;
    DM.TBClientesCLI_NUMERO.Value             :=San(Req.ContentFields.Field('CLI_NUMERO').AsString);
    DM.TBClientesCLI_NUMEROCOB.Value          :=San(Req.ContentFields.Field('CLI_NUmEROCOB').AsString);
    DM.TBClientesCLI_OBITO.Value              :=San(Req.ContentFields.Field('CLI_OBITO').AsString);
    DM.TBClientesCLI_OBSERVACOES.Value        :=San(Req.ContentFields.Field('CLI_OBSERVACOES').AsString,0);
    DM.TBClientesCLI_ORIENTACAOCOBRANCA.Value :=San(Req.ContentFields.Field('CLI_ORIENTACAOCOBRANCA').AsString);
    DM.TBClientesCLI_PAI.Value                :=San(Req.ContentFields.Field('CLI_PAI').AsString);
    DM.TBClientesCLI_PAIEMAIL.Value           :=San(Req.ContentFields.Field('CLI_PAIEMAIL').AsString);
    DM.TBClientesCLI_PAIFONE.Value            :=FormatarFone(Req.ContentFields.Field('CLI_PAIFONE').AsString);
    DM.TBClientesCLI_PAIS.Value               :=San(Req.ContentFields.Field('CLI_PAIS').AsString);
    DM.TBClientesCLI_PAISCOB.Value            :=San(Req.ContentFields.Field('CLI_PAISCOB').AsString);
    DM.TBClientesCLI_PAISCODIGO.Value         :=Req.ContentFields.Field('CLI_PAISCODIGO').AsInteger;
    DM.TBClientesCLI_PAISCODIGOCOB.Value      :=Req.ContentFields.Field('CLI_PAISCODIGOCOB').AsInteger;
    DM.TBClientesCLI_PASSWORD.Value           :='1234';
    DM.TBClientesCLI_PONTOS.Value             :=0;
    DM.TBClientesCLI_PROFISSAO.Value          :=San(Req.ContentFields.Field('CLI_PROFISSAO').AsString);
    DM.TBClientesCLI_RECEBEAVISOS.Value       :=San(Req.ContentFields.Field('CLI_RECEBEAVISOS').AsString);
    DM.TBClientesCLI_REGPROFISSIONAL.Value    :=San(Req.ContentFields.Field('CLI_REGPROFISSIONAL').AsString);
    DM.TBClientesCLI_REPOSICOES.Value         :=0;
    DM.TBClientesCLI_RG.Value                 :=San(Req.ContentFields.Field('CLI_RG').AsString);
    DM.TBClientesCLI_SAME.Value               :=San(Req.ContentFields.Field('CLI_SAME').AsString);
    DM.TBClientesCLI_SETOR.Value              :=Req.ContentFields.Field('CLI_SETOR').AsInteger;
    DM.TBClientesCLI_SEXO.Value               :=San(Req.ContentFields.Field('CLI_SEXO').AsString);
    DM.TBClientesCLI_SITE.Value               :=San(Req.ContentFields.Field('CLI_SITE').AsString);
    DM.TBClientesCLI_STATUS.Value             :=San(Req.ContentFields.Field('CLI_STATUS').AsString);
    DM.TBClientesCLI_SUFRAMA.Value            :=San(Req.ContentFields.Field('CLI_SUFRAMA').AsString);
    DM.TBClientesCLI_TABELAPRECO.Value        :=San(Req.ContentFields.Field('CLI_TABELAPRECO').AsString);
    DM.TBClientesCLI_TAXA.Value               :=Req.ContentFields.Field('CLI_TAXA').AsInteger;
    DM.TBClientesCLI_TELEVENDA.Value          :=Req.ContentFields.Field('CLI_TELEVENDA').AsInteger;
    DM.TBClientesCLI_TIPOCLIENTE.Value        :=San(Req.ContentFields.Field('CLI_TIPOCLIENTE').AsString);
    DM.TBClientesCLI_TIPOCONSUMIDOR.Value     :=San(Req.ContentFields.Field('CLI_TIPOCONSUMIDOR').AsString);
    DM.TBClientesCLI_TIPOPESSOA.Value         :=San(Req.ContentFields.Field('CLI_TIPOPESSOA').AsString);
    DM.TBClientesCLI_TRANSPORTADORA.Value     :=Req.ContentFields.Field('CLI_TRANSPORTADORA').AsInteger;
    DM.TBClientesCLI_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBClientesCLI_VENDEDOR.Value           :=Req.ContentFields.Field('CLI_VENDEDOR').AsInteger;
    DM.TBClientes.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBClientes.ToJSONObject);

    DM.TBClientes.Close;

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
  CLI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CLI_CODIGO:=SoNumeros(Req.ContentFields.Field('CLI_CODIGO').AsString);
    if CLI_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+CLI_CODIGO.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBClientes.Delete;

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
  CLI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;
    if CLI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+CLI_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select CLI_CEP, CLI_CODIGO, CLI_CONDICAO, CLI_CONTATO, CLI_NOME, CLI_TIPOCONSUMIDOR, CPG_DESCRICAO, CPG_FORMAPAGTO, CPG_MEIOPAGAMENTO '+
      'from CLIENTES left join CONDICOES on CPG_CODIGO=CLI_CONDICAO '+
      'where CLI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=CLI_CODIGO;
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
    FormMain.Logar(PrefixLog+'(params)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PAR_CLI_VENDEDOR, PAR_CLI_TELEVENDA, PAR_CLI_ATIVIDADE, PAR_CLI_MAILING, PAR_NFETIPOCONSUMIDOR, PAR_LOCALPADRAO, PAR_LOCALESTUDAPADRAO, '+
      'PAR_CONDICAOPADRAO, PAR_TRANSPORTADORAPADRAO, PAR_TAXAPADRAO, PAR_CLI_BLOQUEARVENDA, PAR_LIMITECREDITO, PAR_FRETEPORCONTA, PAR_LOCALANEXOSCLIENTES, '+
      'PAR_CLIENTESANEXOSEMAIL, PAR_LOCALANEXOSFORNECEDORES, PAR_FORNECEDORESANEXOSEMAIL from PARAMETROS where PAR_CODIGO=1'
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

function Bloquear(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  CLI_CODIGO: Integer;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;

    FormMain.Logar(PrefixLog+'(bloquear) '+CLI_CODIGO.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    DM.TBClientes.Edit;
    if DM.TBClientesCLI_BLOQUEARVENDA.Value='S' then
    DM.TBClientesCLI_BLOQUEARVENDA.Value:='N' else
    DM.TBClientesCLI_BLOQUEARVENDA.Value:='S';
    DM.TBClientes.Post;

    Registro:=DM.TBClientes.ToJSONObject;
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

function Limite(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  CLI_CODIGO: Integer;
  CLI_LIMITECREDITO: Extended;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;
    CLI_LIMITECREDITO:=Req.ContentFields.Field('CLI_LIMITECREDITO').AsExtended;

    FormMain.Logar(PrefixLog+'(limite) cliente: '+CLI_CODIGO.ToString+' limite: '+CLI_LIMITECREDITO.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    DM.TBClientes.Edit;
    DM.TBClientesCLI_LIMITECREDITO.Value:=CLI_LIMITECREDITO;
    DM.TBClientes.Post;

    Registro:=DM.TBClientes.ToJSONObject;
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

function Reposicoes(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  CLI_CODIGO: Integer;
  CLI_REPOSICOES: Integer;
begin
  try
    CLI_CODIGO:=Req.ContentFields.Field('CLI_CODIGO').AsInteger;
    CLI_REPOSICOES:=Req.ContentFields.Field('CLI_REPOSICOES').AsInteger;

    FormMain.Logar(PrefixLog+'(reposicoes) cliente: '+CLI_CODIGO.ToString+' reposições: '+CLI_REPOSICOES.ToString);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=CLI_CODIGO;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    DM.TBClientes.Edit;
    DM.TBClientesCLI_REPOSICOES.Value:=CLI_REPOSICOES;
    DM.TBClientes.Post;

    Registro:=DM.TBClientes.ToJSONObject;
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

end.
