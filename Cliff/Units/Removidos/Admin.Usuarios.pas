unit Admin.Usuarios;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, System.Hash;
// Security.Cryptography;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function ResetarSenha(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  Campos='USU_ADMIN, USU_APELIDO, USU_CODIGO, USU_CONFIRMACAO, USU_CPF, USU_EMAIL, USU_FONE1, USU_DTATUALIZACAO, USU_DTCADASTRO, USU_GESTOR, USU_HASH, USU_NOME, USU_STATUS';

implementation
uses Funcoes, BCrypt;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/usuarios', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.USUARIOS: Registrou rotas.');
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

    if Operacao='listar'     then Res.Send( Listar(DM,Req) ).Status(200) else
    if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
    if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req) ).Status(200) else
    if Operacao='inserir'    then Res.Send( Inserir(DM,Req) ).Status(200) else
    if Operacao='excluir'    then Res.Send( Excluir(DM,Req) ).Status(200) else
    if Operacao='reset'      then Res.Send( ResetarSenha(DM,Req) ).Status(200) else
    begin
      FormMain.Logar('ADMIN.USUARIOS: sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado.');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;
//    if Operacao='avatar'    then Res.Send( Avatar(DM,Req) ).Status(200);
//    if Operacao='admin'     then Res.Send( SetAdmin(DM,Req) ).Status(200);
//    if Operacao='gestor'    then Res.Send( SetGestor(DM,Req) ).Status(200);
//    if Operacao='status'    then Res.Send( SetStatus(DM,Req) ).Status(200);
//    if Operacao='figuras'   then Res.Send( Figuras(DM,Req) ).Status(200);
//    if Operacao='combo'     then Res.Send( ComboBox(DM,Req) ).Status(200);

  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  Pagina, Registros, Skip, USU_CODIGO: Integer;
  Where, USU_CPF, USU_EMAIL, USU_NOME: String;
  Retorno: TJSONObject;
begin
  Pagina      :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
  USU_CODIGO  :=SoNumeros(Req.ContentFields.Field('USU_CODIGO').AsString);
  USU_CPF     :=San(Req.ContentFields.Field('USU_CPF').AsString);
  USU_EMAIL   :=San(Req.ContentFields.Field('USU_EMAIL').AsString);
  USU_NOME    :=San(Req.ContentFields.Field('USU_NOME').AsString);
  Where:='';
  if USU_CODIGO<>0 then Where:=Where+' and USU_CODIGO='+USU_CODIGO.ToString;
  if USU_CPF<>''   then Where:=Where+' and USU_CPF like '+QuotedStr(UpperCase(USU_CPF)+'%');
  if USU_EMAIL<>'' then Where:=Where+' and lower(USU_EMAIL) like '+QuotedStr(LowerCase(USU_EMAIL)+'%');
  if USU_NOME<>''  then Where:=Where+' and upper(USU_NOME) like '+QuotedStr(UpperCase(USU_NOME)+'%');

  FormMain.Logar('ADMIN.USUARIOS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+USU_CODIGO.ToString+', CPF: '+USU_CPF+', EMAIL: '+USU_EMAIL+', NOME: '+USU_NOME);

  Registros:=StrToInt(FormMain.Edit2.Text);
  Skip:=Registros * (Pagina - 1);

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from USUARIOS where 1=1 '+Where+' order by USU_NOME');
  DM.Query1.Open;
  DM.Query1.FetchAll;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('rpp',FormMain.Edit2.Text);
  Retorno.AddPair('contador',DM.Query1.RecordCount);
  Retorno.AddPair('msg',DM.Query1.ToJSONArray);

  DM.Query1.Close;
  Result:=Retorno;
end;

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    USU_CODIGO:=SoNumeros(Req.ContentFields.Field('USU_CODIGO').AsString);
    if USU_CODIGO=0 then
    raise Exception.Create('Código de usuário não informado.');

    FormMain.Logar('ADMIN.USUARIOS: (visualizar) '+USU_CODIGO.ToString);

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=USU_CODIGO;
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Usuário não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUsuarios.ToJSONObject);

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

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CONFIRMACAO, USU_CPF, USU_EMAIL, USU_FONE1, USU_GESTOR, USU_HASH, USU_NOME, USU_STATUS: String;
  USU_CODIGO: Integer;
  USU_DTATUALIZACAO: TDate;
  USU_HRATUALIZACAO: TTime;
  Retorno: TJSONObject;
begin
  try
    USU_ADMIN         :=San(Req.ContentFields.Field('USU_ADMIN').AsString);
    USU_APELIDO       :=San(Req.ContentFields.Field('USU_APELIDO').AsString);
    USU_AVATAR        :=San(Req.ContentFields.Field('USU_AVATAR').AsString);
    USU_CODIGO        :=SoNumeros(Req.ContentFields.Field('USU_CODIGO').AsString);
    USU_CONFIRMACAO   :=San(Req.ContentFields.Field('USU_CONFIRMACAO').AsString);
    USU_CPF           :=FormatarCPFCNPJ(Req.ContentFields.Field('USU_CPF').AsString);
    USU_EMAIL         :=San(Req.ContentFields.Field('USU_EMAIL').AsString);
    USU_FONE1         :=FormatarFone(Req.ContentFields.Field('USU_FONE1').AsString);
    USU_GESTOR        :=San(Req.ContentFields.Field('USU_GESTOR').AsString);
    //USU_HASH          :=Req.ContentFields.Field('USU_HASH').AsString;
    USU_NOME          :=San(Req.ContentFields.Field('USU_NOME').AsString);
    USU_STATUS        :=San(Req.ContentFields.Field('USU_STATUS').AsString);

    if USU_CODIGO.ToString='0' then
    raise Exception.Create('Código de usuário não informado.');

    FormMain.Logar('ADMIN.USUARIOS: (atualizar): '+USU_CODIGO.ToString);

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=USU_CODIGO;
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Usuário não encontrado.');

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_ADMIN.Value:=USU_ADMIN;
    DM.TBUsuariosUSU_APELIDO.Value:=USU_APELIDO;
    DM.TBUsuariosUSU_AVATAR.Value:=USU_AVATAR;
    DM.TBUsuariosUSU_CONFIRMACAO.Value:=USU_CONFIRMACAO;
    DM.TBUsuariosUSU_CPF.Value:=USU_CPF;
    DM.TBUsuariosUSU_DTATUALIZACAO.Value:=Date;
    DM.TBUsuariosUSU_EMAIL.Value:=USU_EMAIL;
    DM.TBUsuariosUSU_FONE1.Value:=USU_FONE1;
    DM.TBUsuariosUSU_GESTOR.Value:=USU_GESTOR;
    DM.TBUsuariosUSU_HRATUALIZACAO.Value:=Time;
    DM.TBUsuariosUSU_NOME.Value:=USU_NOME;
    DM.TBUsuariosUSU_STATUS.Value:=USU_STATUS;
    DM.TBUsuarios.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUsuarios.ToJSONObject);

    DM.TBUsuarios.Close;

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

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CONFIRMACAO, USU_CPF, USU_EMAIL, USU_FONE1, USU_GESTOR, USU_HASH, USU_NOME, USU_PASSWORD, USU_STATUS: String;
  USU_CODIGO: Integer;
  USU_DTATUALIZACAO: TDate;
  USU_HRATUALIZACAO: TTime;
  Retorno: TJSONObject;
begin
  try
    USU_ADMIN         :=San(Req.ContentFields.Field('USU_ADMIN').AsString);
    USU_APELIDO       :=San(Req.ContentFields.Field('USU_APELIDO').AsString);
    USU_AVATAR        :=San(Req.ContentFields.Field('USU_AVATAR').AsString);
    USU_CODIGO        :=Req.ContentFields.Field('USU_CODIGO').AsInteger;
    USU_CONFIRMACAO   :=San(Req.ContentFields.Field('USU_CONFIRMACAO').AsString);
    USU_CPF           :=FormatarCPFCNPJ(Req.ContentFields.Field('USU_CPF').AsString);
    USU_EMAIL         :=San(Req.ContentFields.Field('USU_EMAIL').AsString);
    USU_FONE1         :=FormatarFone(Req.ContentFields.Field('USU_FONE1').AsString);
    USU_GESTOR        :=San(Req.ContentFields.Field('USU_GESTOR').AsString);
    //USU_HASH          :=Req.ContentFields.Field('USU_HASH').AsString;
    USU_NOME          :=San(Req.ContentFields.Field('USU_NOME').AsString);
    USU_STATUS        :=San(Req.ContentFields.Field('USU_STATUS').AsString);

    Obrigatorio(USU_NOME,'Nome');
    Obrigatorio(USU_APELIDO,'Apelido');
    Obrigatorio(USU_EMAIL,'Email');
    Obrigatorio(USU_CPF,'CPF');

    USU_PASSWORD      :=TBCrypt.GenerateHash(San(USU_CPF,4));

    FormMain.Logar('ADMIN.USUARIOS: (inserir): '+USU_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select count(*) as QTDE from USUARIOS where USU_EMAIL=:email');
    DM.Query1.ParamByName('email').AsString:=USU_EMAIL;
    DM.Query1.Open;
    if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
    raise Exception.Create('Já existe um usuário com esse email.');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select count(*) as QTDE from USUARIOS where USU_CPF=:cpf');
    DM.Query1.ParamByName('cpf').AsString:=USU_CPF;
    DM.Query1.Open;
    if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
    raise Exception.Create('Já existe um usuário com esse CPF.');

    DM.TBUsuarios.Open;
    DM.TBUsuarios.Insert;
    DM.TBUsuariosUSU_ADMIN.Value:=USU_ADMIN;
    DM.TBUsuariosUSU_APELIDO.Value:=USU_APELIDO;
    DM.TBUsuariosUSU_AVATAR.Value:=USU_AVATAR;
    DM.TBUsuariosUSU_CONFIRMACAO.Value:=USU_CONFIRMACAO;
    DM.TBUsuariosUSU_CPF.Value:=USU_CPF;
    DM.TBUsuariosUSU_DTATUALIZACAO.Value:=Date;
    DM.TBUsuariosUSU_DTCADASTRO.Value:=Date;
    DM.TBUsuariosUSU_EMAIL.Value:=USU_EMAIL;
    DM.TBUsuariosUSU_FONE1.Value:=USU_FONE1;
    DM.TBUsuariosUSU_GESTOR.Value:=USU_GESTOR;
    //DM.TBUsuariosUSU_HASH.Value:=MD5Print(MD5String('USU_'+DM.TBUsuariosUSU_CODIGO.Value.ToString));
    DM.TBUsuariosUSU_HRATUALIZACAO.Value:=Time;
    DM.TBUsuariosUSU_HRCADASTRO.Value:=Time;
    DM.TBUsuariosUSU_NOME.Value:=Trim(USU_NOME);
    DM.TBUsuariosUSU_PASSWORD.Value:=USU_PASSWORD;
    DM.TBUsuariosUSU_STATUS.Value:=USU_STATUS;
    DM.TBUsuarios.Post;

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_HASH.Value:=THashMD5.GetHashString('USU_'+DM.TBUsuariosUSU_CODIGO.Value.ToString);
    DM.TBUsuarios.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBUsuarios.ToJSONObject);

    DM.TBUsuarios.Close;

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

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    USU_CODIGO:=SoNumeros(Req.ContentFields.Field('USU_CODIGO').AsString);
    if USU_CODIGO=0 then
    raise Exception.Create('Código de usuário não informado.');

    FormMain.Logar('ADMIN.USUARIOS: (excluir) '+USU_CODIGO.ToString);

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=USU_CODIGO;
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Usuário não encontrado.');

    DM.TBUsuarios.Delete;
    DM.TBUsuarios.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Usuário eliminado com sucesso.');

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

function ResetarSenha(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_CODIGO: Integer;
  USU_PASSWORD, HashPass: String;
  Retorno: TJSONObject;
begin
  try
    USU_CODIGO:=Req.ContentFields.Field('USU_CODIGO').AsInteger;
    USU_PASSWORD:=Req.ContentFields.Field('USU_PASSWORD').AsString;

    if USU_CODIGO.ToString='0' then
    raise Exception.Create('Código de usuário não informado');

    FormMain.Logar('ADMIN.USUARIOS: (reset) '+USU_CODIGO.ToString);

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=USU_CODIGO;
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Usuário não encontrado.');

    HashPass:=TBCrypt.GenerateHash(USU_PASSWORD);

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=HashPass;
    DM.TBUsuarios.Post;
    DM.TBUsuarios.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Senha alterada com sucesso.');

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
