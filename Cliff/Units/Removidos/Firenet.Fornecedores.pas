unit Firenet.Fornecedores;

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

const
  Campos='FOR_CODIGO, FOR_CONTATO, FOR_CNPJ, FOR_CPF, FOR_EMAIL, FOR_FANTASIA, FOR_FONE1, FOR_FONE2, FOR_FONE3, FOR_NOME';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/fornecedores', VerificarOperacao);
  FormMain.Logar('FIRENET.FORNECEDORES: Registrou rotas.');
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
        FormMain.Logar('FIRENET.FORNECEDORES: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      if Operacao='parametros' then Res.Send( Parametros(DM,Req) ).Status(200) else
      begin
        FormMain.Logar('FIRENET.FORNECEDORES: sem op.');
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
  Pagina, Registros, Skip, FOR_CODIGO: Integer;
  Where, FOR_CNPJ, FOR_CONTATO, FOR_CPF, FOR_DESCRICAO, FOR_EMAIL, FOR_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=Req.ContentFields.Field('pagina').AsInteger;
    FOR_CNPJ   :=San(Req.ContentFields.Field('FOR_CNPJ').AsString);
    FOR_CODIGO :=Req.ContentFields.Field('FOR_CODIGO').AsInteger;
    FOR_CONTATO:=San(Req.ContentFields.Field('FOR_CONTATO').AsString);
    FOR_CPF    :=San(Req.ContentFields.Field('FOR_CPF').AsString);
    FOR_EMAIL  :=San(Req.ContentFields.Field('FOR_EMAIL').AsString);
    FOR_NOME   :=San(Req.ContentFields.Field('FOR_NOME').AsString);
    Where:='';
    if FOR_CNPJ<>''    then Where:=Where+' and FOR_CNPJ like '+QuotedStr(FOR_CNPJ+'%');
    if FOR_CODIGO<>0   then Where:=Where+' and FOR_CODIGO='+FOR_CODIGO.ToString;
    if FOR_CONTATO<>'' then Where:=Where+' and FOR_CONTATO like '+QuotedStr(FOR_CONTATO+'%');
    if FOR_CPF<>''     then Where:=Where+' and FOR_CPF like '+QuotedStr(FOR_CPF+'%');
    if FOR_EMAIL<>''   then Where:=Where+' and FOR_EMAIL like '+QuotedStr(FOR_EMAIL+'%');
    if FOR_NOME<>''    then Where:=Where+' and FOR_NOME like '+QuotedStr(FOR_NOME+'%');

    FormMain.Logar('FIRENET.FORNECEDORES: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+FOR_CODIGO.ToString+', NOME: '+FOR_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from FORNECEDORES where 1=1 '+Where+' order by FOR_NOME');
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
  FOR_CODIGO: Integer;
begin
  try
    FOR_CODIGO:=Req.ContentFields.Field('FOR_CODIGO').AsInteger;

    FormMain.Logar('FIRENET.FORNECEDORES: (visualizar) '+FOR_CODIGO.ToString);

    DM.TBFornecedores.Close;
    DM.TBFornecedores.ParamByName('codigo').AsInteger:=FOR_CODIGO;
    DM.TBFornecedores.Open;
    if DM.TBFornecedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBFornecedores.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBFornecedores.Close;

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
  FOR_CODIGO: Integer;
  FOR_NOME: String;
begin
  try
    FOR_CODIGO:=Req.ContentFields.Field('FOR_CODIGO').AsInteger;
    FOR_NOME:=Trim(San(Req.ContentFields.Field('FOR_NOME').AsString));

    Obrigatorio(FOR_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.FORNECEDORES: (atualizar) '+FOR_CODIGO.ToString);

    DM.TBFornecedores.Close;
    DM.TBFornecedores.ParamByName('codigo').AsInteger:=FOR_CODIGO;
    DM.TBFornecedores.Open;
    if DM.TBFornecedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBFornecedores.Edit;
    DM.TBFornecedoresFOR_AFE.Value                :=San(Req.ContentFields.Field('FOR_AFE').AsString);
    DM.TBFornecedoresFOR_ALVARA.Value             :=San(Req.ContentFields.Field('FOR_ALVARA').AsString);
    DM.TBFornecedoresFOR_ALVARASANITARIO.Value    :=San(Req.ContentFields.Field('FOR_ALVARASANITARIO').AsString);
    DM.TBFornecedoresFOR_ATIVIDADE.Value          :=Req.ContentFields.Field('FOR_ATIVIDADE').AsInteger;
    DM.TBFornecedoresFOR_BAIRRO.Value             :=San(Req.ContentFields.Field('FOR_BAIRRO').AsString);
    DM.TBFornecedoresFOR_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('FOR_CEP').AsString);
    DM.TBFornecedoresFOR_CIDADE.Value             :=San(Req.ContentFields.Field('FOR_CIDADE').AsString);
    DM.TBFornecedoresFOR_CIDADECODIGO.Value       :=Req.ContentFields.Field('FOR_CIDADECODIGO').AsInteger;
    DM.TBFornecedoresFOR_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('FOR_CNPJ').AsString);
    //DM.TBFornecedoresFOR_CODIGO.Value:=
    DM.TBFornecedoresFOR_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('FOR_COMPLEMENTO').AsString);
    DM.TBFornecedoresFOR_CONTATO.Value            :=San(Req.ContentFields.Field('FOR_CONTATO').AsString);
    DM.TBFornecedoresFOR_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('FOR_CPF').AsString);
    DM.TBFornecedoresFOR_DTATUALIZACAO.Value      :=Date;
    //DM.TBFornecedoresFOR_DTCADASTRO.Value         :=Date;
    DM.TBFornecedoresFOR_DTNASC.Value             :=Req.ContentFields.Field('FOR_DTNASC').AsDate;
    DM.TBFornecedoresFOR_EMAIL.Value              :=San(Req.ContentFields.Field('FOR_EMAIL').AsString);
    DM.TBFornecedoresFOR_EMAIL2.Value             :=San(Req.ContentFields.Field('FOR_EMAIL2').AsString);
    DM.TBFornecedoresFOR_ENDERECO.Value           :=San(Req.ContentFields.Field('FOR_ENDERECO').AsString);
    DM.TBFornecedoresFOR_ESTADO.Value             :=San(Req.ContentFields.Field('FOR_ESTADO').AsString);
    DM.TBFornecedoresFOR_ESTADOCIVIL.Value        :=San(Req.ContentFields.Field('FOR_ESTADOCIVIL').AsString);
    DM.TBFornecedoresFOR_ESTADOCODIGO.Value       :=Req.ContentFields.Field('FOR_ESTADOCODIGO').AsInteger;
    DM.TBFornecedoresFOR_FANTASIA.Value           :=San(Req.ContentFields.Field('FOR_FANTASIA').AsString);
    DM.TBFornecedoresFOR_FONE0800.Value           :=San(Req.ContentFields.Field('FOR_FONE0800').AsString);
    DM.TBFornecedoresFOR_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE1').AsString);
    DM.TBFornecedoresFOR_FONE2.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE2').AsString);
    DM.TBFornecedoresFOR_FONE3.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE3').AsString);
    DM.TBFornecedoresFOR_HRATUALIZACAO.Value      :=Time;
    //DM.TBFornecedoresFOR_HRCADASTRO.Value         :=Time;
    DM.TBFornecedoresFOR_IE.Value                 :=San(Req.ContentFields.Field('FOR_IE').AsString);
    //DM.TBFornecedoresFOR_LIMITECREDITO.Value      :=Req.ContentFields.Field('FOR_LIMITECREDITO').AsExtended;
    DM.TBFornecedoresFOR_MSN.Value                :=San(Req.ContentFields.Field('FOR_MSN').AsString);
    DM.TBFornecedoresFOR_NEXTEL.Value             :=San(Req.ContentFields.Field('FOR_NEXTEL').AsString);
    DM.TBFornecedoresFOR_NOME.Value               :=FOR_NOME;
    DM.TBFornecedoresFOR_NUMERO.Value             :=San(Req.ContentFields.Field('FOR_NUMERO').AsString);
    DM.TBFornecedoresFOR_OBSERVACOES.Value        :=San(Req.ContentFields.Field('FOR_OBSERVACOES').AsString,0);
    DM.TBFornecedoresFOR_PAIS.Value               :=San(Req.ContentFields.Field('FOR_PAIS').AsString);
    DM.TBFornecedoresFOR_PAISCODIGO.Value         :=Req.ContentFields.Field('FOR_PAISCODIGO').AsInteger;
    DM.TBFornecedoresFOR_REGPROFISSIONAL.Value    :=San(Req.ContentFields.Field('FOR_REGPROFISSIONAL').AsString);
    DM.TBFornecedoresFOR_RG.Value                 :=San(Req.ContentFields.Field('FOR_RG').AsString);
    DM.TBFornecedoresFOR_SITE.Value               :=San(Req.ContentFields.Field('FOR_SITE').AsString);
    DM.TBFornecedoresFOR_STATUS.Value             :=San(Req.ContentFields.Field('FOR_STATUS').AsString);
    DM.TBFornecedoresFOR_TIPOPESSOA.Value         :=San(Req.ContentFields.Field('FOR_TIPOPESSOA').AsString);
    DM.TBFornecedoresFOR_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBFornecedores.Post;

    Registro:=DM.TBFornecedores.ToJSONObject;
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
  FOR_NOME: String;
begin
  try
    FOR_NOME:=San(Req.ContentFields.Field('FOR_NOME').AsString);

    Obrigatorio(FOR_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.FORNECEDORES: (inserir) ');

    DM.TBFornecedores.Open;
    DM.TBFornecedores.Insert;
    DM.TBFornecedoresFOR_AFE.Value                :=San(Req.ContentFields.Field('FOR_AFE').AsString);
    DM.TBFornecedoresFOR_ALVARA.Value             :=San(Req.ContentFields.Field('FOR_ALVARA').AsString);
    DM.TBFornecedoresFOR_ALVARASANITARIO.Value    :=San(Req.ContentFields.Field('FOR_ALVARASANITARIO').AsString);
    DM.TBFornecedoresFOR_ATIVIDADE.Value          :=Req.ContentFields.Field('FOR_ATIVIDADE').AsInteger;
    DM.TBFornecedoresFOR_BAIRRO.Value             :=San(Req.ContentFields.Field('FOR_BAIRRO').AsString);
    DM.TBFornecedoresFOR_CEP.Value                :=FormatarCEP(Req.ContentFields.Field('FOR_CEP').AsString);
    DM.TBFornecedoresFOR_CIDADE.Value             :=San(Req.ContentFields.Field('FOR_CIDADE').AsString);
    DM.TBFornecedoresFOR_CIDADECODIGO.Value       :=Req.ContentFields.Field('FOR_CIDADECODIGO').AsInteger;
    DM.TBFornecedoresFOR_CNPJ.Value               :=FormatarCPFCNPJ(Req.ContentFields.Field('FOR_CNPJ').AsString);
    //DM.TBFornecedoresFOR_CODIGO.Value:=
    DM.TBFornecedoresFOR_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('FOR_COMPLEMENTO').AsString);
    DM.TBFornecedoresFOR_CONTATO.Value            :=San(Req.ContentFields.Field('FOR_CONTATO').AsString);
    DM.TBFornecedoresFOR_CPF.Value                :=FormatarCPFCNPJ(Req.ContentFields.Field('FOR_CPF').AsString);
    DM.TBFornecedoresFOR_DTATUALIZACAO.Value      :=Date;
    DM.TBFornecedoresFOR_DTCADASTRO.Value         :=Date;
    DM.TBFornecedoresFOR_DTNASC.Value             :=Req.ContentFields.Field('FOR_DTNASC').AsDate;
    DM.TBFornecedoresFOR_EMAIL.Value              :=San(Req.ContentFields.Field('FOR_EMAIL').AsString);
    DM.TBFornecedoresFOR_EMAIL2.Value             :=San(Req.ContentFields.Field('FOR_EMAIL2').AsString);
    DM.TBFornecedoresFOR_ENDERECO.Value           :=San(Req.ContentFields.Field('FOR_ENDERECO').AsString);
    DM.TBFornecedoresFOR_ESTADO.Value             :=San(Req.ContentFields.Field('FOR_ESTADO').AsString);
    DM.TBFornecedoresFOR_ESTADOCIVIL.Value        :=San(Req.ContentFields.Field('FOR_ESTADOCIVIL').AsString);
    DM.TBFornecedoresFOR_ESTADOCODIGO.Value       :=Req.ContentFields.Field('FOR_ESTADOCODIGO').AsInteger;
    DM.TBFornecedoresFOR_FANTASIA.Value           :=San(Req.ContentFields.Field('FOR_FANTASIA').AsString);
    DM.TBFornecedoresFOR_FONE0800.Value           :=San(Req.ContentFields.Field('FOR_FONE0800').AsString);
    DM.TBFornecedoresFOR_FONE1.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE1').AsString);
    DM.TBFornecedoresFOR_FONE2.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE2').AsString);
    DM.TBFornecedoresFOR_FONE3.Value              :=FormatarFone(Req.ContentFields.Field('FOR_FONE3').AsString);
    DM.TBFornecedoresFOR_HRATUALIZACAO.Value      :=Time;
    DM.TBFornecedoresFOR_HRCADASTRO.Value         :=Time;
    DM.TBFornecedoresFOR_IE.Value                 :=San(Req.ContentFields.Field('FOR_IE').AsString);
    DM.TBFornecedoresFOR_MSN.Value                :=San(Req.ContentFields.Field('FOR_MSN').AsString);
    DM.TBFornecedoresFOR_NEXTEL.Value             :=San(Req.ContentFields.Field('FOR_NEXTEL').AsString);
    DM.TBFornecedoresFOR_NOME.Value               :=FOR_NOME;
    DM.TBFornecedoresFOR_NUMERO.Value             :=San(Req.ContentFields.Field('FOR_NUMERO').AsString);
    DM.TBFornecedoresFOR_OBSERVACOES.Value        :=San(Req.ContentFields.Field('FOR_OBSERVACOES').AsString,0);
    DM.TBFornecedoresFOR_PAIS.Value               :=San(Req.ContentFields.Field('FOR_PAIS').AsString);
    DM.TBFornecedoresFOR_PAISCODIGO.Value         :=Req.ContentFields.Field('FOR_PAISCODIGO').AsInteger;
    DM.TBFornecedoresFOR_REGPROFISSIONAL.Value    :=San(Req.ContentFields.Field('FOR_REGPROFISSIONAL').AsString);
    DM.TBFornecedoresFOR_RG.Value                 :=San(Req.ContentFields.Field('FOR_RG').AsString);
    DM.TBFornecedoresFOR_SITE.Value               :=San(Req.ContentFields.Field('FOR_SITE').AsString);
    DM.TBFornecedoresFOR_STATUS.Value             :=San(Req.ContentFields.Field('FOR_STATUS').AsString);
    DM.TBFornecedoresFOR_TIPOPESSOA.Value         :=San(Req.ContentFields.Field('FOR_TIPOPESSOA').AsString);
    DM.TBFornecedoresFOR_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBFornecedores.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBFornecedores.ToJSONObject);

    DM.TBFornecedores.Close;

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
  FOR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    FOR_CODIGO:=SoNumeros(Req.ContentFields.Field('FOR_CODIGO').AsString);
    if FOR_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.FORNECEDORES: (excluir) '+FOR_CODIGO.ToString);

    DM.TBFornecedores.Close;
    DM.TBFornecedores.ParamByName('codigo').AsInteger:=FOR_CODIGO;
    DM.TBFornecedores.Open;
    if DM.TBFornecedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBFornecedores.Delete;

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
  FOR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    FOR_CODIGO:=Req.ContentFields.Field('FOR_CODIGO').AsInteger;
    if FOR_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.FORNECEDORES: (localizar) '+FOR_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select FOR_CODIGO, FOR_NOME from FORNECEDORES where FOR_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=FOR_CODIGO;
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
    FormMain.Logar('FIRENET.FORNECEDORES: (params)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select PAR_CLI_ATIVIDADE from PARAMETROS where PAR_CODIGO=1');
    DM.Query1.Open;

    Registro:=DM.TBFornecedores.ToJSONObject;
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

end.
