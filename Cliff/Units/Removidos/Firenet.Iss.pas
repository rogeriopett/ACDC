unit Firenet.Iss;

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
  Campos='ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO, ISS_DTATUALIZACAO, ISS_DTCADASTRO, ISS_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/iss', VerificarOperacao);
  FormMain.Logar('FIRENET.ISS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.ISS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.ISS: sem op.');
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
  Pagina, Registros, Skip, ISS_CODIGO: Integer;
  Where, ISS_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    ISS_CODIGO   :=SoNumeros(Req.ContentFields.Field('ISS_CODIGO').AsString);
    ISS_DESCRICAO:=San(Req.ContentFields.Field('ISS_DESCRICAO').AsString);
    Where:='';
    if ISS_CODIGO<>0     then Where:=Where+' and ISS_CODIGO='+ISS_CODIGO.ToString;
    if ISS_DESCRICAO<>'' then Where:=Where+' and ISS_DESCRICAO like '+QuotedStr(ISS_DESCRICAO+'%');

    FormMain.Logar('FIRENET.ISS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+ISS_CODIGO.ToString+', DESCRICAO: '+ISS_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from ISS where 1=1 '+Where+' order by ISS_DESCRICAO');
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
  ISS_CODIGO: String;
begin
  try
    ISS_CODIGO:=San(Req.ContentFields.Field('ISS_CODIGO').AsString);

    FormMain.Logar('FIRENET.ISS: (visualizar) '+ISS_CODIGO);

    DM.TBIss.Close;
    DM.TBIss.ParamByName('codigo').AsString:=ISS_CODIGO;
    DM.TBIss.Open;
    if DM.TBIss.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBIss.ToJSONObject;
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
  ISS_CODIGO, ISS_DESCRICAO: String;
begin
  try
    ISS_CODIGO:=San(Req.ContentFields.Field('ISS_CODIGO').AsString);
    ISS_DESCRICAO:=San(Req.ContentFields.Field('ISS_DESCRICAO').AsString);

    Obrigatorio(ISS_CODIGO,'Código');
    Obrigatorio(ISS_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ISS: (atualizar) '+ISS_CODIGO);

    DM.TBIss.Close;
    DM.TBIss.ParamByName('codigo').AsString:=ISS_CODIGO;
    DM.TBIss.Open;
    if DM.TBIss.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIss.Edit;
    DM.TBIssISS_ALIQUOTAESTADUAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTAESTADUAL').AsExtended;
    DM.TBIssISS_ALIQUOTAIMPORTACAO.Value:=Req.ContentFields.Field('ISS_ALIQUOTAIMPORTACAO').AsExtended;
    DM.TBIssISS_ALIQUOTAMUNICIPAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTAMUNICIPAL').AsExtended;
    DM.TBIssISS_ALIQUOTANACIONAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTANACIONAL').AsExtended;
    DM.TBIssISS_DESCRICAO.Value:=ISS_DESCRICAO;
    DM.TBIssISS_DTATUALIZACAO.Value:=Date;
    DM.TBIssISS_HRATUALIZACAO.Value:=Time;
    DM.TBIssISS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIss.Post;

    Registro:=DM.TBIss.ToJSONObject;
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
  ISS_CODIGO, ISS_DESCRICAO: String;
begin
  try
    ISS_CODIGO:=San(Req.ContentFields.Field('ISS_CODIGO').AsString);
    ISS_DESCRICAO:=San(Req.ContentFields.Field('ISS_DESCRICAO').AsString);

    Obrigatorio(ISS_CODIGO,'Código');
    Obrigatorio(ISS_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ISS: (inserir) ');

    DM.TBIss.Open;
    DM.TBIss.Insert;
    DM.TBIssISS_ALIQUOTAESTADUAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTAESTADUAL').AsExtended;
    DM.TBIssISS_ALIQUOTAIMPORTACAO.Value:=Req.ContentFields.Field('ISS_ALIQUOTAIMPORTACAO').AsExtended;
    DM.TBIssISS_ALIQUOTAMUNICIPAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTAMUNICIPAL').AsExtended;
    DM.TBIssISS_ALIQUOTANACIONAL.Value:=Req.ContentFields.Field('ISS_ALIQUOTANACIONAL').AsExtended;
    DM.TBIssISS_CODIGO.Value:=ISS_CODIGO;
    DM.TBIssISS_DESCRICAO.Value:=ISS_DESCRICAO;
    DM.TBIssISS_DTATUALIZACAO.Value:=Date;
    DM.TBIssISS_DTCADASTRO.Value:=Date;
    DM.TBIssISS_HRATUALIZACAO.Value:=Time;
    DM.TBIssISS_HRCADASTRO.Value:=Time;
    DM.TBIssISS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIss.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBIss.ToJSONObject);

    DM.TBIss.Close;

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
  ISS_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ISS_CODIGO:=SoNumeros(Req.ContentFields.Field('ISS_CODIGO').AsString);
    if ISS_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ISS: (excluir) '+ISS_CODIGO.ToString);

    DM.TBIss.Close;
    DM.TBIss.ParamByName('codigo').AsInteger:=ISS_CODIGO;
    DM.TBIss.Open;
    if DM.TBIss.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIss.Delete;

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
  ISS_CODIGO: String;
begin
  try
    ISS_CODIGO:=San(Req.ContentFields.Field('ISS_CODIGO').AsString);
    if ISS_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ISS: (localizar) '+ISS_CODIGO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select ISS_ALIQUOTAESTADUAL, ISS_ALIQUOTAIMPORTACAO, ISS_ALIQUOTAMUNICIPAL, ISS_ALIQUOTANACIONAL, ISS_CODIGO, ISS_DESCRICAO from ISS where ISS_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsString:=ISS_CODIGO;
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
