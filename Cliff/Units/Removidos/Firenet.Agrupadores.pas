unit Firenet.Agrupadores;

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
  Campos='*';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/agrupadores', VerificarOperacao);
  FormMain.Logar('FIRENET.AGRUPADORES: Registrou rotas.');
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
      raise Exception.Create('Empresa não informada.');

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      raise Exception.Create('Recurso não encontrado.');

    except on ex:Exception do
      begin
        FormMain.Logar('FIRENET.AGRUPADORES: (op) exception: '+ex.Message);
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
  Pagina, Registros, Skip, AGR_CODIGO: Integer;
  Where, AGR_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    AGR_CODIGO   :=SoNumeros(Req.ContentFields.Field('AGR_CODIGO').AsString);
    AGR_DESCRICAO:=San(Req.ContentFields.Field('AGR_DESCRICAO').AsString);
    Where:='';
    if AGR_CODIGO<>0     then Where:=Where+' and AGR_CODIGO='+AGR_CODIGO.ToString;
    if AGR_DESCRICAO<>'' then Where:=Where+' and AGR_DESCRICAO like '+QuotedStr(AGR_DESCRICAO+'%');

    FormMain.Logar('FIRENET.AGRUPADORES: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+AGR_CODIGO.ToString+', DESCRICAO: '+AGR_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from AGRUPADORES where 1=1 '+Where+' order by AGR_DESCRICAO');
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
  AGR_CODIGO: Integer;
begin
  try
    AGR_CODIGO:=SoNumeros(Req.ContentFields.Field('AGR_CODIGO').AsString);

    FormMain.Logar('FIRENET.AGRUPADORES: (visualizar) '+AGR_CODIGO.ToString);

    DM.TBAgrupadores.Close;
    DM.TBAgrupadores.ParamByName('codigo').AsInteger:=AGR_CODIGO;
    DM.TBAgrupadores.Open;
    if DM.TBAgrupadores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBAgrupadores.ToJSONObject;
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
  AGR_CODIGO: Integer;
  AGR_DESCRICAO: String;
begin
  try
    AGR_CODIGO:=SoNumeros(Req.ContentFields.Field('AGR_CODIGO').AsString);
    AGR_DESCRICAO:=San(Req.ContentFields.Field('AGR_DESCRICAO').AsString);

    Obrigatorio(AGR_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.AGRUPADORES: (atualizar) '+AGR_CODIGO.ToString);

    DM.TBAgrupadores.Close;
    DM.TBAgrupadores.ParamByName('codigo').AsInteger:=AGR_CODIGO;
    DM.TBAgrupadores.Open;
    if DM.TBAgrupadores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAgrupadores.Edit;
    DM.TBAgrupadoresAGR_DESCRICAO.Value:=AGR_DESCRICAO;
    DM.TBAgrupadoresAGR_DTATUALIZACAO.Value:=Date;
    DM.TBAgrupadoresAGR_HRATUALIZACAO.Value:=Time;
    DM.TBAgrupadoresAGR_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAgrupadores.Post;

    Registro:=DM.TBAgrupadores.ToJSONObject;
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
  AGR_DESCRICAO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    AGR_DESCRICAO:=San(Req.ContentFields.Field('AGR_DESCRICAO').AsString);

    Obrigatorio(AGR_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.AGRUPADORES: (inserir) ');

    DM.TBAgrupadores.Open;
    DM.TBAgrupadores.Insert;
    DM.TBAgrupadoresAGR_DESCRICAO.Value:=AGR_DESCRICAO;
    DM.TBAgrupadoresAGR_DTATUALIZACAO.Value:=Date;
    DM.TBAgrupadoresAGR_DTCADASTRO.Value:=Date;
    DM.TBAgrupadoresAGR_HRATUALIZACAO.Value:=Time;
    DM.TBAgrupadoresAGR_HRCADASTRO.Value:=Time;
    DM.TBAgrupadoresAGR_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAgrupadores.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBAgrupadores.ToJSONObject);

    DM.TBAgrupadores.Close;

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
  AGR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    AGR_CODIGO:=SoNumeros(Req.ContentFields.Field('AGR_CODIGO').AsString);
    if AGR_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.AGRUPADORES: (excluir) '+AGR_CODIGO.ToString);

    DM.TBAgrupadores.Close;
    DM.TBAgrupadores.ParamByName('codigo').AsInteger:=AGR_CODIGO;
    DM.TBAgrupadores.Open;
    if DM.TBAgrupadores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAgrupadores.Delete;

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
  AGR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    AGR_CODIGO:=Req.ContentFields.Field('AGR_CODIGO').AsInteger;
    if AGR_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.AGRUPADORES: (localizar) '+AGR_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select AGR_CODIGO, AGR_DESCRICAO from AGRUPADORES where AGR_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=AGR_CODIGO;
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
