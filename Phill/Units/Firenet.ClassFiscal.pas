unit Firenet.ClassFiscal;

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

const
  PrefixLog='FIRENET.CLASSFISCAL: ';
  Campos='CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQUOTAMUNICIPAL, CLF_ALIQUOTANACIONAL, CLF_CODIGO, '+
    'CLF_DESCRICAO, CLF_DTATUALIZACAO, CLF_DTCADASTRO, CLF_EXCECAO, CLF_USUARIO, CLF_VERSAO, CLF_VIGENCIAFIM, CLF_VIGENCIAINI';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/classfiscal', VerificarOperacao);
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
  Pagina, Registros, Skip, CLF_CODIGO: Integer;
  Where, CLF_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    CLF_CODIGO   :=SoNumeros(Req.ContentFields.Field('CLF_CODIGO').AsString);
    CLF_DESCRICAO:=San(Req.ContentFields.Field('CLF_DESCRICAO').AsString);

    Where:='';
    if CLF_CODIGO<>0     then Where:=Where+' and CLF_CODIGO='+CLF_CODIGO.ToString;
    if CLF_DESCRICAO<>'' then Where:=Where+' and CLF_DESCRICAO like '+QuotedStr(CLF_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+CLF_CODIGO.ToString+', DESCRICAO: '+CLF_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CLASSFISCAL where 1=1 '+Where+' order by CLF_DESCRICAO');
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
  CLF_CODIGO: String;
  CLF_EXCECAO: Integer;
begin
  try
    CLF_CODIGO :=San(Req.ContentFields.Field('CLF_CODIGO').AsString);
    CLF_EXCECAO:=SoNumeros(Req.ContentFields.Field('CLF_EXCECAO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+CLF_CODIGO+'.'+CLF_EXCECAO.ToString);

    DM.TBClassFiscal.Close;
    DM.TBClassFiscal.ParamByName('codigo').AsString:=CLF_CODIGO;
    DM.TBClassFiscal.ParamByName('excecao').AsInteger:=CLF_EXCECAO;
    DM.TBClassFiscal.Open;
    if DM.TBClassFiscal.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBClassFiscal.ToJSONObject;
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

function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  CLF_CODIGO, CLF_DESCRICAO: String;
  CLF_EXCECAO: Integer;
begin
  try
    CLF_CODIGO:=San(Req.ContentFields.Field('CLF_CODIGO').AsString);
    CLF_DESCRICAO:=San(Req.ContentFields.Field('CLF_DESCRICAO').AsString);
    CLF_EXCECAO:=SoNumeros(Req.ContentFields.Field('CLF_EXCECAO').AsString);

    Obrigatorio(CLF_CODIGO,'Código');
    Obrigatorio(CLF_DESCRICAO,'Descrição');
    Obrigatorio(CLF_EXCECAO.ToString,'Exceção');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+CLF_CODIGO+'.'+CLF_EXCECAO.ToString);

    DM.TBClassFiscal.Close;
    DM.TBClassFiscal.ParamByName('codigo').AsString:=CLF_CODIGO;
    DM.TBClassFiscal.ParamByName('excecao').AsInteger:=CLF_EXCECAO;
    DM.TBClassFiscal.Open;
    if DM.TBClassFiscal.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBClassFiscal.Edit;
    DM.TBClassFiscalCLF_ALIQUOTAESTADUAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTAESTADUAL').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTAIMPORTACAO.Value:=Req.ContentFields.Field('CLF_ALIQUOTAIMPORTACAO').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTAMUNICIPAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTAMUNICIPAL').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTANACIONAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTANACIONAL').AsExtended;
    DM.TBClassFiscalCLF_DESCRICAO.Value:=CLF_DESCRICAO;
    DM.TBClassFiscalCLF_DTATUALIZACAO.Value:=Date;
    DM.TBClassFiscalCLF_HRATUALIZACAO.Value:=Time;
    DM.TBClassFiscalCLF_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBClassFiscalCLF_VERSAO.Value:=San(Req.ContentFields.Field('CLF_VERSAO').AsString);
    //DM.TBClassFiscalCLF_VIGENCIAFIM.Value:=StrToDate(Req.ContentFields.Field('CLF_VIGENCIAFIM').AsString);
    //DM.TBClassFiscalCLF_VIGENCIAINI.Value:=StrToDate(Req.ContentFields.Field('CLF_VIGENCIAINI').AsString);
    DM.TBClassFiscal.Post;

    Registro:=DM.TBClassFiscal.ToJSONObject;
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
  CLF_CODIGO, CLF_DESCRICAO: String;
  CLF_EXCECAO: Integer;
begin
  try
    CLF_CODIGO   :=San(Req.ContentFields.Field('CLF_CODIGO').AsString);
    CLF_DESCRICAO:=San(Req.ContentFields.Field('CLF_DESCRICAO').AsString);
    CLF_EXCECAO  :=SoNumeros(Req.ContentFields.Field('CLF_EXCECAO').AsString);

    Obrigatorio(CLF_CODIGO,'Código');
    Obrigatorio(CLF_DESCRICAO,'Descrição');
    Obrigatorio(CLF_EXCECAO.ToString,'Exceção');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) '+CLF_CODIGO+'.'+CLF_EXCECAO.ToString);

    DM.TBClassFiscal.Open;
    DM.TBClassFiscal.Insert;
    DM.TBClassFiscalCLF_ALIQUOTAESTADUAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTAESTADUAL').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTAIMPORTACAO.Value:=Req.ContentFields.Field('CLF_ALIQUOTAIMPORTACAO').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTAMUNICIPAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTAMUNICIPAL').AsExtended;
    DM.TBClassFiscalCLF_ALIQUOTANACIONAL.Value:=Req.ContentFields.Field('CLF_ALIQUOTANACIONAL').AsExtended;
    DM.TBClassFiscalCLF_CODIGO.Value:=CLF_CODIGO;
    DM.TBClassFiscalCLF_DESCRICAO.Value:=CLF_DESCRICAO;
    DM.TBClassFiscalCLF_DTATUALIZACAO.Value:=Date;
    DM.TBClassFiscalCLF_DTCADASTRO.Value:=Date;
    DM.TBClassFiscalCLF_EXCECAO.Value:=CLF_EXCECAO;
    DM.TBClassFiscalCLF_HRATUALIZACAO.Value:=Time;
    DM.TBClassFiscalCLF_HRCADASTRO.Value:=Time;
    DM.TBClassFiscalCLF_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBClassFiscalCLF_VERSAO.Value:=San(Req.ContentFields.Field('CLF_VERSAO').AsString);
    //DM.TBClassFiscalCLF_VIGENCIAFIM.Value:=StrToDate(Req.ContentFields.Field('CLF_VIGENCIAFIM').AsString);
    //DM.TBClassFiscalCLF_VIGENCIAINI.Value:=StrToDate(Req.ContentFields.Field('CLF_VIGENCIAINI').AsString);
    DM.TBClassFiscal.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBClassFiscal.ToJSONObject);

    DM.TBClassFiscal.Close;

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
  Retorno: TJSONObject;
  CLF_CODIGO: String;
  CLF_EXCECAO: Integer;
begin
  try
    CLF_CODIGO:=San(Req.ContentFields.Field('CLF_CODIGO').AsString);
    CLF_EXCECAO:=SoNumeros(Req.ContentFields.Field('CLF_EXCECAO').AsString);

    if CLF_CODIGO='' then
    raise Exception.Create('Código não informado');
    if CLF_EXCECAO=0 then
    raise Exception.Create('Exceção não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+CLF_CODIGO+'.'+CLF_EXCECAO.ToString);

    DM.TBClassFiscal.Close;
    DM.TBClassFiscal.ParamByName('codigo').AsString:=CLF_CODIGO;
    DM.TBClassFiscal.ParamByName('excecao').AsInteger:=CLF_EXCECAO;
    DM.TBClassFiscal.Open;
    if DM.TBClassFiscal.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBClassFiscal.Delete;

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
  Retorno: TJSONObject;
  CLF_CODIGO: String;
begin
  try
    CLF_CODIGO:=San(Req.ContentFields.Field('CLF_CODIGO').AsString);
    if CLF_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+CLF_CODIGO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first(1) CLF_ALIQUOTAESTADUAL, CLF_ALIQUOTAIMPORTACAO, CLF_ALIQUOTAMUNICIPAL, CLF_ALIQUOTANACIONAL, CLF_CODIGO, CLF_DESCRICAO, CLF_EXCECAO from CLASSFISCAL where CLF_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsString:=CLF_CODIGO;
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

end.
