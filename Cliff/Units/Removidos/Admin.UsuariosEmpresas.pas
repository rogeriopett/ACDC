unit Admin.UsuariosEmpresas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, System.Hash;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Acesso(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  Campos='USE_ACESSO, USE_EMPRESA, USE_FIRENET, USE_USUARIO, EMP_FONE1, EMP_NOME, EMP_STATUS, USU_NOME';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/usuariosempresas', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.USUARIOSEMPRESAS: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    DM:=TDMAngus.Create(nil);

    Operacao:=Req.ContentFields.Field('op').AsString;

    if Operacao='listar'  then Res.Send( Listar(DM,Req)  ).Status(200) else
    if Operacao='inserir' then Res.Send( Inserir(DM,Req) ).Status(200) else
    if Operacao='excluir' then Res.Send( Excluir(DM,Req) ).Status(200) else
    if Operacao='acesso'  then Res.Send( Acesso(DM,Req)  ).Status(200) else
    begin
      FormMain.Logar('ADMIN.USUARIOSEMPRESAS: sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado.');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  USE_USUARIO: Integer;
begin
  try
    USE_USUARIO:=Req.ContentFields.Field('USE_USUARIO').AsInteger;
    if USE_USUARIO=0 then
    raise Exception.Create('Empresa não informada.');

    FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (listar) Usuario: '+USE_USUARIO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select '+Campos+' from USUEMP '+
      'left join EMPRESAS on USE_EMPRESA=EMP_CODIGO '+
      'left join USUARIOS on USE_USUARIO=USU_CODIGO '+
      'where USE_USUARIO=:usuario order by EMP_NOME');
    DM.Query1.ParamByName('usuario').AsInteger:=USE_USUARIO;
    DM.Query1.Open;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);

    DM.Query1.Close;
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (listar) exception: '+ex.Message);
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
  USE_EMPRESA, USE_USUARIO: Integer;
begin
  try
    USE_EMPRESA:=Req.ContentFields.Field('USE_EMPRESA').AsInteger;
    USE_USUARIO:=Req.ContentFields.Field('USE_USUARIO').AsInteger;

    Obrigatorio(USE_EMPRESA.ToString,'Empresa','0');
    Obrigatorio(USE_USUARIO.ToString,'Usuário','0');

    FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (inserir) '+USE_EMPRESA.ToString+' - '+USE_USUARIO.ToString);

    DM.TBUsuemp.Open;
    DM.TBUsuemp.Insert;
    DM.TBUsuempUSE_ACESSO.Value:='S';
    DM.TBUsuempUSE_EMPRESA.Value:=USE_EMPRESA;
    DM.TBUsuempUSE_FIRENET.Value:=San(Req.ContentFields.Field('USE_FIRENET').AsString);
    DM.TBUsuempUSE_USUARIO.Value:=USE_USUARIO;
    DM.TBUsuemp.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUsuemp.ToJSONObject);

    DM.TBUsuemp.Close;
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (inserir) exception: '+ex.Message);
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
  USE_EMPRESA, USE_USUARIO: Integer;
  Retorno: TJSONObject;
begin
  try
    USE_EMPRESA:=Req.ContentFields.Field('USE_EMPRESA').AsInteger;
    USE_USUARIO:=Req.ContentFields.Field('USE_USUARIO').AsInteger;

    Obrigatorio(USE_EMPRESA.ToString,'Empresa','0');
    Obrigatorio(USE_USUARIO.ToString,'Usuário','0');

    FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (excluir) '+USE_EMPRESA.ToString+' - '+USE_USUARIO.ToString);

    DM.TBUsuemp.Close;
    DM.TBUsuemp.ParamByName('empresa').AsInteger:=USE_EMPRESA;
    DM.TBUsuemp.ParamByName('usuario').AsInteger:=USE_USUARIO;
    DM.TBUsuemp.Open;
    if DM.TBUsuemp.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBUsuemp.Delete;
    DM.TBUsuemp.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Usuário eliminado com sucesso.');

    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (excluir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Acesso(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  USE_EMPRESA, USE_USUARIO: Integer;
  USE_ACESSO: String;
begin
  try
    USE_EMPRESA:=Req.ContentFields.Field('USE_EMPRESA').AsInteger;
    USE_USUARIO:=Req.ContentFields.Field('USE_USUARIO').AsInteger;
    USE_ACESSO:=San(Req.ContentFields.Field('USE_ACESSO').AsString);

    Obrigatorio(USE_EMPRESA.ToString,'Empresa','0');
    Obrigatorio(USE_USUARIO.ToString,'Usuário','0');

    FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (acesso) '+USE_EMPRESA.ToString+' - '+USE_USUARIO.ToString+' - '+USE_ACESSO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('update USUEMP set USE_ACESSO=:acesso where USE_EMPRESA=:empresa and USE_USUARIO=:usuario');
    DM.Query1.ParamByName('acesso').AsString:=USE_ACESSO;
    DM.Query1.ParamByName('empresa').AsInteger:=USE_EMPRESA;
    DM.Query1.ParamByName('usuario').AsInteger:=USE_USUARIO;
    DM.Query1.ExecSQL;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Acesso alterado com sucesso.');
    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.USUARIOSEMPRESAS: (acesso) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
