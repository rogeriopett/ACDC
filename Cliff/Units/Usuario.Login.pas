unit Usuario.Login;

interface

uses Main, DataModFirenet, Horse, System.SysUtils, System.JSON, BCrypt, Jose.Core.JWT, Jose.Core.Builder;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
function Login(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function LoginInterno(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Logout(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function CreateToken(login, nome, vendedor, status, versaoBase, empresa: String): String;
//function GetEmpresas(DM: TDMFirenet; Usuario: Integer): TJSONArray;

implementation

uses Funcoes, System.Hash;

procedure RegistrarRotas;
begin
  THorse.Post('/usuario/login', VerificarOperacao);
  FormMain.Logar('USUARIO.LOGIN: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    DM:=TDMFirenet.Create(nil);

    Operacao:=Req.ContentFields.Field('op').AsString;

    if Operacao='login'  then Res.Send( Login(DM,Req) ).Status(200) else
    if Operacao='logout' then Res.Send( Logout(DM,Req) ).Status(200) else
    begin
      FormMain.Logar('USUARIO.LOGIN: sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      //Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Login(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var Retorno, Usuario: TJSONObject;
  USUEMP: TJSONArray;
  Login, Senha, Query, Token, Hash: String;
begin
  try
    // Sanitizar os dados de entrada
    Login:=San(Req.ContentFields.Field('login').AsString);
    Senha:=San(Req.ContentFields.Field('senha').AsString);
    if (Login='') or (Senha='') then
    raise Exception.Create('Informe o login e senha!');

    // Consulta no banco de dados
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select USU_LOGIN, USU_PASSWORD, USU_NOME, USU_STATUS, USU_VENDEDOR from USUARIOS where USU_STATUS=:status and USU_LOGIN=:login');
    DM.Query1.ParamByName('status').AsString:='A';
    DM.Query1.ParamByName('login').AsString:=UpperCase(Login);
    DM.Query1.Open;
    DM.Query1.FetchAll;

    if DM.Query1.IsEmpty then
    raise Exception.Create('Usuário não encontrado.');

    if DM.Query1.RecordCount > 1 then
    raise Exception.Create('Usuário não encontrado!');

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add('select VER_VERSAOBASE from VERSAO');
    DM.Query2.Open;
    DM.Query2.FetchAll;

    DM.Query3.Close;
    DM.Query3.SQL.Clear;
    DM.Query3.SQL.Add('select EMP_NOME from EMPRESA');
    DM.Query3.Open;
    DM.Query3.FetchAll;

    // Verificar senha usando bcrypt
    //if not TBCrypt.CompareHash(Senha, DM.Query1.FieldByName('USU_PASSWORD').AsString) then
    Hash:=THashMD5.GetHashString(UpperCase(Senha));
    if Hash<>DM.Query1.FieldByName('USU_PASSWORD').AsString then
    raise Exception.Create('Login ou senha inválida!');

    FormMain.Logar('USUARIO.LOGIN: (login) login: '+Login);
    //token com: login, nome, vendedor, status, versaoBase, empresa
    Token:=CreateToken(
      DM.Query1.FieldByName('USU_LOGIN').AsString,
      DM.Query1.FieldByName('USU_NOME').AsString,
      DM.Query1.FieldByName('USU_VENDEDOR').AsString,
      DM.Query1.FieldByName('USU_STATUS').AsString,
      DM.Query2.FieldByName('VER_VERSAOBASE').AsString,
      DM.Query3.FieldByName('EMP_NOME').AsString
    );

    // Criar o objeto de retorno
    Usuario := TJSONObject.Create;
    Usuario.AddPair('USU_LOGIN',      DM.Query1.FieldByName('USU_LOGIN').AsString);
    Usuario.AddPair('USU_NOME',       DM.Query1.FieldByName('USU_NOME').AsString);
    Usuario.AddPair('USU_VENDEDOR',   DM.Query1.FieldByName('USU_VENDEDOR').AsString);
    Usuario.AddPair('USU_STATUS',     DM.Query1.FieldByName('USU_STATUS').AsString);
    Usuario.AddPair('USU_TOKEN',      Token);
    Usuario.AddPair('VER_VERSAOBASE', DM.Query2.FieldByName('VER_VERSAOBASE').AsString);
    Usuario.AddPair('EMP_NOME',       DM.Query3.FieldByName('EMP_NOME').AsString);

    // Retornar resposta JSON com sucesso
    Result := TJSONObject.Create;
    Result.AddPair('erro', 'N');
    Result.AddPair('msg', 'Bem-vindo!!!');
    Result.AddPair('usuario', Usuario);
  except on ex:Exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

//function LoginInterno(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var Retorno, Usuario: TJSONObject;
//  USUEMP: TJSONArray;
//  Login, Senha, Query, Token: String;
//begin
//  try
//    //esta funcao é executada quando o usuario confirma o código de confirmação.
//    //então é recriado o token com o novo status do usuário.
//    FormMain.Logar('USUARIO.LOGIN: (login interno) login: '+Login);
//
//    Usuario:=GetUserFromToken(Req);
//    DM.Query1.Close;
//    DM.Query1.SQL.Clear;
//    DM.Query1.SQL.Add('select * from USUARIOS where USU_CODIGO=:codigo');
//    DM.Query1.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
//    DM.Query1.Open;
//
//    //Token com o payload = avatar, codigo, login, nome, status, admin, gestor
//    Token:=CreateToken(
//      DM.Query1.FieldByName('USU_HASH').AsString,
//      DM.Query1.FieldByName('USU_EMAIL').AsString,
//      DM.Query1.FieldByName('USU_NOME').AsString,
//      DM.Query1.FieldByName('USU_STATUS').AsString,
//      DM.Query1.FieldByName('USU_ADMIN').AsString,
//      DM.Query1.FieldByName('USU_GESTOR').AsString
//    );
//
//    // Obter empresas do usuário.
//    USUEMP:=GetEmpresas(DM,DM.Query1.FieldByName('USU_CODIGO').AsInteger);
//
//    // Criar o objeto de retorno
//    Usuario := TJSONObject.Create;
//    Usuario.AddPair('USU_LOGIN',  DM.Query1.FieldByName('USU_ADMIN').AsString);
//    Usuario.AddPair('USU_GESTOR', DM.Query1.FieldByName('USU_GESTOR').AsString);
//    Usuario.AddPair('USU_EMAIL',  DM.Query1.FieldByName('USU_EMAIL').AsString);
//    Usuario.AddPair('USU_NOME',   DM.Query1.FieldByName('USU_NOME').AsString);
//    Usuario.AddPair('USU_STATUS', DM.Query1.FieldByName('USU_STATUS').AsString);
//    Usuario.AddPair('USU_TOKEN',  Token);
//    Usuario.AddPair('USUEMP',     USUEMP);
//
//    // Retornar resposta JSON com sucesso
//    Result := TJSONObject.Create;
//    Result.AddPair('erro', 'N');
//    Result.AddPair('msg', 'Bem-vindo!!!');
//    Result.AddPair('usuario', Usuario);
//  except on ex:Exception do
//    begin
//      Retorno:=TJSONObject.Create;
//      Retorno.AddPair('erro','S');
//      Retorno.AddPair('msg',ex.Message);
//      Result:=Retorno;
//    end;
//  end;
//end;

function Logout(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var Retorno: TJSONObject;
begin
  FormMain.Logar('USUARIO.LOGIN: (logout)');
  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('msg','Esperamos que você volte logo.');
  Result:=Retorno;
end;

function CreateToken(login, nome, vendedor, status, versaoBase, empresa: String): String;
var
  Token: TJWT;
  TokenCompact: String;
begin
  try
    Token:=TJWT.Create;
    Token.Claims.Issuer:='Runtime Sistemas';
    Token.Claims.Subject:='Sistema Brian';
    Token.Claims.IssuedAt:=Date;
    Token.Claims.Expiration:=Date+1;

    Token.Claims.SetClaimOfType<String>('login'      ,login);
    Token.Claims.SetClaimOfType<String>('nome'       ,nome);
    Token.Claims.SetClaimOfType<String>('vendedor'   ,vendedor);
    Token.Claims.SetClaimOfType<String>('status'     ,status);
    Token.Claims.SetClaimOfType<String>('versaoBase' ,versaoBase);
    Token.Claims.SetClaimOfType<String>('empresa'    ,empresa);

    TokenCompact:=TJOSE.SHA256CompactToken(CHAVESECRETA,Token);
    Result:=TokenCompact;
  finally
    Token.Free;
  end;
end;

//function GetEmpresas(DM: TDMAngus; Usuario: Integer): TJSONArray;
//var
//  Empresas: TJSONObject;
//  Retorno: TJSONArray;
//begin
//  DM.Query2.Close;
//  DM.Query2.SQL.Clear;
//  DM.Query2.SQL.Add(
//    'select USE_EMPRESA, EMP_CNPJ, EMP_HASH, EMP_NOME from USUEMP left join EMPRESAS on USE_EMPRESA=EMP_CODIGO where USE_USUARIO=:usuario and USE_ACESSO=''S'' and EMP_STATUS=''A''');
//  DM.Query2.ParamByName('usuario').AsInteger:=Usuario;
//  DM.Query2.Open;
//  DM.Query2.First;
//  Retorno:=TJSONArray.Create;
//  while not DM.Query2.Eof do
//  begin
//    Retorno.Add(
//      TJSONObject.Create
//        .AddPair('value', DM.Query2.FieldByName('EMP_HASH').AsString)
//        .AddPair('label', DM.Query2.FieldByName('EMP_NOME').AsString)
//    );
//    DM.Query2.Next;
//  end;
//  DM.Query2.Close;
//  Result:=Retorno;
//end;

end.
