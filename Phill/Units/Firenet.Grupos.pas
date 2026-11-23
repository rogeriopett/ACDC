unit Firenet.Grupos;

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
  PrefixLog='FIRENET.GRUPOS: ';
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/grupos', VerificarOperacao);
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
  Pagina, Registros, Skip, GRU_CODIGO: Integer;
  Where, GRU_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    GRU_CODIGO   :=SoNumeros(Req.ContentFields.Field('GRU_CODIGO').AsString);
    GRU_DESCRICAO:=San(Req.ContentFields.Field('GRU_DESCRICAO').AsString);
    Where:='';
    if GRU_CODIGO<>0     then Where:=Where+' and GRU_CODIGO='+GRU_CODIGO.ToString;
    if GRU_DESCRICAO<>'' then Where:=Where+' and GRU_DESCRICAO like '+QuotedStr(GRU_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+GRU_CODIGO.ToString+', DESCRICAO: '+GRU_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from GRUPOS where 1=1 '+Where+' order by GRU_DESCRICAO');
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
  GRU_CODIGO: Integer;
begin
  try
    GRU_CODIGO:=SoNumeros(Req.ContentFields.Field('GRU_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+GRU_CODIGO.ToString);

    DM.TBGrupos.Close;
    DM.TBGrupos.ParamByName('codigo').AsInteger:=GRU_CODIGO;
    DM.TBGrupos.Open;
    if DM.TBGrupos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBGrupos.ToJSONObject;
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
  GRU_CODIGO: Integer;
  GRU_DESCRICAO, GRU_INTERNET: String;
begin
  try
    GRU_CODIGO:=SoNumeros(Req.ContentFields.Field('GRU_CODIGO').AsString);
    GRU_DESCRICAO:=San(Req.ContentFields.Field('GRU_DESCRICAO').AsString);
    GRU_INTERNET:=San(Req.ContentFields.Field('GRU_INTERNET').AsString);

    Obrigatorio(GRU_DESCRICAO,'Descrição');
    Obrigatorio(GRU_INTERNET,'Visivel na Internet');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+GRU_CODIGO.ToString);

    DM.TBGrupos.Close;
    DM.TBGrupos.ParamByName('codigo').AsInteger:=GRU_CODIGO;
    DM.TBGrupos.Open;
    if DM.TBGrupos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBGrupos.Edit;
    DM.TBGruposGRU_DESCRICAO.Value:=GRU_DESCRICAO;
    DM.TBGruposGRU_DTATUALIZACAO.Value:=Date;
    DM.TBGruposGRU_HRATUALIZACAO.Value:=Time;
    DM.TBGruposGRU_INTERNET.Value:=GRU_INTERNET;
    DM.TBGruposGRU_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBGrupos.Post;

    Registro:=DM.TBGrupos.ToJSONObject;
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
  GRU_DESCRICAO, GRU_INTERNET: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    GRU_DESCRICAO:=San(Req.ContentFields.Field('GRU_DESCRICAO').AsString);
    GRU_INTERNET:=San(Req.ContentFields.Field('GRU_INTERNET').AsString);

    Obrigatorio(GRU_DESCRICAO,'Descrição');
    Obrigatorio(GRU_INTERNET,'Visivel na Internet');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBGrupos.Open;
    DM.TBGrupos.Insert;
    DM.TBGruposGRU_DESCRICAO.Value:=GRU_DESCRICAO;
    DM.TBGruposGRU_DTATUALIZACAO.Value:=Date;
    DM.TBGruposGRU_DTCADASTRO.Value:=Date;
    DM.TBGruposGRU_HRATUALIZACAO.Value:=Time;
    DM.TBGruposGRU_HRCADASTRO.Value:=Time;
    DM.TBGruposGRU_INTERNET.Value:=GRU_INTERNET;
    DM.TBGruposGRU_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBGrupos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBGrupos.ToJSONObject);

    DM.TBGrupos.Close;

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
  GRU_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    GRU_CODIGO:=SoNumeros(Req.ContentFields.Field('GRU_CODIGO').AsString);
    if GRU_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+GRU_CODIGO.ToString);

    DM.TBGrupos.Close;
    DM.TBGrupos.ParamByName('codigo').AsInteger:=GRU_CODIGO;
    DM.TBGrupos.Open;
    if DM.TBGrupos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBGrupos.Delete;

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
  GRU_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    GRU_CODIGO:=Req.ContentFields.Field('GRU_CODIGO').AsInteger;
    if GRU_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+GRU_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select GRU_CODIGO, GRU_DESCRICAO from GRUPOS where GRU_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=GRU_CODIGO;
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
