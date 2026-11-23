unit Admin.Unidades;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Combo(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/unidades', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.UNIDADES: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMAngus.Create(nil);

      Operacao:=Req.ContentFields.Field('op').AsString;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='combo'      then Res.Send( Combo(DM,Req)      ).Status(200) else
      begin
        FormMain.Logar('ADMIN.UNIDADES: sem op.');
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg','Recurso não encontrado.');
        Res.Send<TJSONObject>(Retorno).Status(404);
      end;

    except on ex:Exception do
      begin
        FormMain.Logar('ADMIN.UNIDADES: (op) exception: '+ex.Message);
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

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  Pagina, Registros, Skip, UNI_CODIGO: Integer;
  Where, UNI_DESCRICAO: String;
  Retorno: TJSONObject;
begin
  try
    Pagina        :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    UNI_CODIGO    :=SoNumeros(Req.ContentFields.Field('UNI_CODIGO').AsString);
    UNI_DESCRICAO :=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);
    Where:='';
    if UNI_CODIGO<>0     then Where:=Where+' and UNI_CODIGO='+UNI_CODIGO.ToString;
    if UNI_DESCRICAO<>'' then Where:=Where+' and upper(UNI_DESCRICAO) like '+QuotedStr(UpperCase(UNI_DESCRICAO)+'%');

    FormMain.Logar('ADMIN.UNIDADES: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+UNI_CODIGO.ToString+', DESCRICAO: '+UNI_DESCRICAO);

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

    DM.Query1.Close;
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (listar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  UNI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    UNI_CODIGO:=SoNumeros(Req.ContentFields.Field('UNI_CODIGO').AsString);
    if UNI_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.UNIDADES: (visualizar) '+UNI_CODIGO.ToString);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsInteger:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUnidades.ToJSONObject);

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (visualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  UNI_DESCRICAO: String;
  UNI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    UNI_CODIGO:=SoNumeros(Req.ContentFields.Field('UNI_CODIGO').AsString);

    if UNI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.UNIDADES: (atualizar): '+UNI_CODIGO.ToString);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsInteger:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBUnidades.Edit;
    DM.TBUnidadesUNI_DESCRICAO.Value:=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);
    DM.TBUnidades.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUnidades.ToJSONObject);

    DM.TBUnidades.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (atualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  UNI_DESCRICAO: String;
begin
  try
    UNI_DESCRICAO:=San(Req.ContentFields.Field('UNI_DESCRICAO').AsString);
    Obrigatorio(UNI_DESCRICAO,'Descrição');

    FormMain.Logar('ADMIN.UNIDADES: (inserir) '+UNI_DESCRICAO);

    DM.TBUnidades.Open;
    DM.TBUnidades.Insert;
    DM.TBUnidadesUNI_DESCRICAO.Value:=UNI_DESCRICAO;
    DM.TBUnidades.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUnidades.ToJSONObject);

    DM.TBUnidades.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (inserir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  UNI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    UNI_CODIGO:=SoNumeros(Req.ContentFields.Field('UNI_CODIGO').AsString);
    if UNI_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.UNIDADES: (excluir) '+UNI_CODIGO.ToString);

    DM.TBUnidades.Close;
    DM.TBUnidades.ParamByName('codigo').AsInteger:=UNI_CODIGO;
    DM.TBUnidades.Open;
    if DM.TBUnidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBUnidades.Delete;
    DM.TBUnidades.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Usuário eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (excluir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Combo(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno, TodosObj: TJSONObject;
  Listagem: TJSONArray;
  //Todos: Boolean;
begin
  try
    //Todos:=Req.ContentFields.Field('todos').AsBoolean;

    FormMain.Logar('ADMIN.UNIDADES: (combo)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    //if Todos then
    DM.Query1.SQL.Add('select cast(UNI_CODIGO as varchar(15)) as "VALUE", UNI_DESCRICAO "LABEL" from UNIDADES order by UNI_DESCRICAO');
    DM.Query1.Open;

    Listagem:=TJSONArray.Create;
    Listagem:=DM.Query1.ToJSONArray;

    DM.Query1.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.UNIDADES: (combo) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
