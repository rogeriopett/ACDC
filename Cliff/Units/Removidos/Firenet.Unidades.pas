unit Firenet.Unidades;

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
  Campos='UNI_CODIGO, UNI_DESCRICAO, UNI_DTATUALIZACAO, UNI_DTCADASTRO, UNI_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/unidades', VerificarOperacao);
  FormMain.Logar('FIRENET.UNIDADES: Registrou rotas.');
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
        FormMain.Logar('FIRENET.UNIDADES: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.UNIDADES: sem op.');
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
  Pagina, Registros, Skip, UNI_CODIGO: Integer;
  Where, UNI_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    UNI_CODIGO   :=SoNumeros(Req.ContentFields.Field('UNI_CODIGO').AsString);
    UNI_DESCRICAO:=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);
    Where:='';
    if UNI_CODIGO<>0     then Where:=Where+' and UNI_CODIGO='+UNI_CODIGO.ToString;
    if UNI_DESCRICAO<>'' then Where:=Where+' and UNI_DESCRICAO like '+QuotedStr(UNI_DESCRICAO+'%');

    FormMain.Logar('FIRENET.UNIDADES: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+UNI_CODIGO.ToString+', DESCRICAO: '+UNI_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from UNIDADES where 1=1 '+Where+' order by UNI_DESCRICAO');
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
  UNI_CODIGO: String;
begin
  try
    UNI_CODIGO:=San(Req.ContentFields.Field('UNI_CODIGO').AsString);

    FormMain.Logar('FIRENET.UNIDADES: (visualizar) '+UNI_CODIGO);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsString:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBUnidades.ToJSONObject;
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
  UNI_CODIGO, UNI_DESCRICAO: String;
begin
  try
    UNI_CODIGO:=San(Req.ContentFields.Field('UNI_CODIGO').AsString);
    UNI_DESCRICAO:=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);

    Obrigatorio(UNI_CODIGO,'Código');
    Obrigatorio(UNI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.UNIDADES: (atualizar) '+UNI_CODIGO);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsString:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBUnidades.Edit;
    DM.TBUnidadesUNI_ATUALIZAR.Value:='S';
    DM.TBUnidadesUNI_DESCRICAO.Value:=UNI_DESCRICAO;
    DM.TBUnidadesUNI_DTATUALIZACAO.Value:=Date;
    DM.TBUnidadesUNI_HRATUALIZACAO.Value:=Time;
    DM.TBUnidadesUNI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBUnidades.Post;

    Registro:=DM.TBUnidades.ToJSONObject;
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
  UNI_CODIGO, UNI_DESCRICAO: String;
begin
  try
    UNI_CODIGO:=San(Req.ContentFields.Field('UNI_CODIGO').AsString);
    UNI_DESCRICAO:=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);

    Obrigatorio(UNI_CODIGO,'Código');
    Obrigatorio(UNI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.UNIDADES: (inserir) ');

    DM.TBUnidades.Open;
    DM.TBUnidades.Insert;
    DM.TBUnidadesUNI_ATUALIZAR.Value:='S';
    DM.TBUnidadesUNI_CODIGO.Value:=UNI_CODIGO;
    DM.TBUnidadesUNI_DESCRICAO.Value:=UNI_DESCRICAO;
    DM.TBUnidadesUNI_DTATUALIZACAO.Value:=Date;
    DM.TBUnidadesUNI_DTCADASTRO.Value:=Date;
    DM.TBUnidadesUNI_HRATUALIZACAO.Value:=Time;
    DM.TBUnidadesUNI_HRCADASTRO.Value:=Time;
    DM.TBUnidadesUNI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBUnidades.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUnidades.ToJSONObject);

    DM.TBUnidades.Close;

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
  UNI_CODIGO: String;
begin
  try
    UNI_CODIGO:=San(Req.ContentFields.Field('UNI_CODIGO').AsString);
    if UNI_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.UNIDADES: (excluir) '+UNI_CODIGO);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsString:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBUnidades.Delete;

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
  UNI_CODIGO: String;
begin
  try
    UNI_CODIGO:=San(Req.ContentFields.Field('UNI_CODIGO').AsString);
    if UNI_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.UNIDADES: (localizar) '+UNI_CODIGO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select UNI_CODIGO, UNI_DESCRICAO from UNIDADES where UNI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsString:=UNI_CODIGO;
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
