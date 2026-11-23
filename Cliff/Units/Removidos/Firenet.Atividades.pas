unit Firenet.Atividades;

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
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/atividades', VerificarOperacao);
  FormMain.Logar('FIRENET.ATIVIDADES: Registrou rotas.');
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
        FormMain.Logar('FIRENET.ATIVIDADES: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.ATIVIDADES: sem op.');
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
  Pagina, Registros, Skip, ATI_CODIGO: Integer;
  Where, ATI_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    ATI_CODIGO   :=SoNumeros(Req.ContentFields.Field('ATI_CODIGO').AsString);
    ATI_DESCRICAO:=San(Req.ContentFields.Field('ATI_DESCRICAO').AsString);
    Where:='';
    if ATI_CODIGO<>0     then Where:=Where+' and ATI_CODIGO='+ATI_CODIGO.ToString;
    if ATI_DESCRICAO<>'' then Where:=Where+' and ATI_DESCRICAO like '+QuotedStr(ATI_DESCRICAO+'%');

    FormMain.Logar('FIRENET.ATIVIDADES: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+ATI_CODIGO.ToString+', DESCRICAO: '+ATI_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from ATIVIDADES where 1=1 '+Where+' order by ATI_DESCRICAO');
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
  ATI_CODIGO: Integer;
begin
  try
    ATI_CODIGO:=SoNumeros(Req.ContentFields.Field('ATI_CODIGO').AsString);

    FormMain.Logar('FIRENET.ATIVIDADES: (visualizar) '+ATI_CODIGO.ToString);

    DM.TBAtividades.Close;
    DM.TBAtividades.ParamByName('codigo').AsInteger:=ATI_CODIGO;
    DM.TBAtividades.Open;
    if DM.TBAtividades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBAtividades.ToJSONObject;
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
  ATI_CODIGO: Integer;
begin
  try
    ATI_CODIGO:=SoNumeros(Req.ContentFields.Field('ATI_CODIGO').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ATIVIDADES: (atualizar) '+ATI_CODIGO.ToString);

    DM.TBAtividades.Close;
    DM.TBAtividades.ParamByName('codigo').AsInteger:=ATI_CODIGO;
    DM.TBAtividades.Open;
    if DM.TBAtividades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAtividades.Edit;
    DM.TBAtividadesATI_DESCRICAO.Value:=San(Req.ContentFields.Field('ATI_DESCRICAO').AsString);
    DM.TBAtividadesATI_DTATUALIZACAO.Value:=Date;
    DM.TBAtividadesATI_HRATUALIZACAO.Value:=Time;
    DM.TBAtividadesATI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAtividades.Post;

    Registro:=DM.TBAtividades.ToJSONObject;
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
  ATI_DESCRICAO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    ATI_DESCRICAO:=San(Req.ContentFields.Field('ATI_DESCRICAO').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ATIVIDADES: (inserir) ');

    DM.TBAtividades.Open;
    DM.TBAtividades.Insert;
    DM.TBAtividadesATI_DESCRICAO.Value:=ATI_DESCRICAO;
    DM.TBAtividadesATI_DTATUALIZACAO.Value:=Date;
    DM.TBAtividadesATI_DTCADASTRO.Value:=Date;
    DM.TBAtividadesATI_HRATUALIZACAO.Value:=Time;
    DM.TBAtividadesATI_HRCADASTRO.Value:=Time;
    DM.TBAtividadesATI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAtividades.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBAtividades.ToJSONObject);

    DM.TBAtividades.Close;

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
  ATI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ATI_CODIGO:=SoNumeros(Req.ContentFields.Field('ATI_CODIGO').AsString);
    if ATI_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ATIVIDADES: (excluir) '+ATI_CODIGO.ToString);

    DM.TBAtividades.Close;
    DM.TBAtividades.ParamByName('codigo').AsInteger:=ATI_CODIGO;
    DM.TBAtividades.Open;
    if DM.TBAtividades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAtividades.Delete;

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
  ATI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ATI_CODIGO:=Req.ContentFields.Field('ATI_CODIGO').AsInteger;
    if ATI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ATIVIDADES: (localizar) '+ATI_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select ATI_CODIGO, ATI_DESCRICAO from ATIVIDADES where ATI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=ATI_CODIGO;
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
