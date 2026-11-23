unit Usuario.Profile;

interface

uses Main, DataModAngus, Horse, System.Classes, System.SysUtils, System.JSON, DataSet.Serialize, BCrypt, Jose.Core.JWT, Jose.Core.Builder;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Avatar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Senha(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Confirmar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Reenviar(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  PrefixLog='USUARIO.PROFILE: ';

implementation
uses Funcoes, Imagens.Utils, Usuario.Login, Vcl.StdCtrls, Vcl.Forms;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/usuario/profile', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
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

      if Operacao='visualizar'  then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'   then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='senha'       then Res.Send( Senha(DM,Req)      ).Status(200) else
      if Operacao='confirmar'   then Res.Send( Confirmar(DM,Req)  ).Status(200) else
      if Operacao='reenviar'    then Res.Send( Reenviar(DM,Req)   ).Status(200) else
      if Operacao='avatar'      then Res.Send( Avatar(DM,Req)     ).Status(200) else
      raise Exception.Create('Recurso não encontrado.');

    except on ex:Exception do
      begin
        FormMain.Logar(PrefixLog+'(op) exception: '+ex.Message);
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

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Registro, Usuario: TJSONObject;
begin
  try
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(visualizar) '+Usuario.GetValue<String>('USU_CODIGO'));

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select USU_CPF, USU_EMAIL, USU_FONE1, USU_NOME, USU_AVATAR from USUARIOS where USU_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.Query1.ToJSONObject;
    Registro.AddPair('USU_AVATAR', URL_SITE + 'api/arquivo?op=profile&f='+ DM.Query1.FieldByName('USU_AVATAR').AsString);
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

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Registro, Usuario: TJSONObject;
  USU_CPF, USU_EMAIL: String;
begin
  try
    Usuario:=GetUserFromToken(Req);
    USU_CPF:=FormatarCPFCNPJ(Req.ContentFields.Field('USU_CPF').AsString);
    USU_EMAIL:=San(Req.ContentFields.Field('USU_EMAIL').AsString);

    FormMain.Logar(PrefixLog+'(atualizar) '+Usuario.GetValue<String>('USU_CODIGO'));

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    //usuario informou outro email?
    if DM.TBUsuariosUSU_EMAIL.Value<>USU_EMAIL then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      DM.Query1.SQL.Add('select * from USUARIOS where USU_EMAIL=:email');
      DM.Query1.ParamByName('email').AsString:=USU_EMAIL;
      DM.Query1.Open;
      if not DM.Query1.IsEmpty then
      raise Exception.Create('Já existe um usuário cadastrado com esse email.');
      DM.Query1.Close;
    end;

    //usuario informou outro cpf?
    if DM.TBUsuariosUSU_CPF.Value<>USU_CPF then
    begin
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      DM.Query1.SQL.Add('select * from USUARIOS where USU_CPF=:cpf');
      DM.Query1.ParamByName('cpf').AsString:=USU_CPF;
      DM.Query1.Open;
      if not DM.Query1.IsEmpty then
      raise Exception.Create('Já existe um usuário cadastrado com esse CPF.');
      DM.Query1.Close;
    end;

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_CPF.Value:=USU_CPF;
    DM.TBUsuariosUSU_DTATUALIZACAO.Value:=Date;
    DM.TBUsuariosUSU_FONE1.Value:=FormatarFone(Req.ContentFields.Field('USU_FONE1').AsString);
    DM.TBUsuariosUSU_HRATUALIZACAO.Value:=Time;
    DM.TBUsuariosUSU_EMAIL.Value:=San(Req.ContentFields.Field('USU_EMAIL').AsString);
    DM.TBUsuariosUSU_NOME.Value:=San(Req.ContentFields.Field('USU_NOME').AsString);
    DM.TBUsuarios.Post;
    DM.TBUsuarios.Close;

//    Registro:=DM.TBUsuarios.ToJSONObject;
//    Registro.AddPair('USU_AVATAR', URL_SITE + 'arquivo?op=profile&f='+ DM.TBUsuariosUSU_AVATAR.Value);
//    Retorno:=TJSONObject.Create;
//    Retorno.AddPair('erro','N');
//    Retorno.AddPair('msg',Registro);

    Result:=Visualizar(DM,Req);

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

function Avatar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  Empresa, Pasta, ArquivoEnviado, ArquivoLocal, ArquivoLocalCrop, Extensao: String;
  Aleatorio: Integer;
  ArquivoDados: TMemoryStream;
begin
  try
    try
      if (Req.RawWebRequest.Files.Count<=0) or (Req.RawWebRequest.Files.Items[0].Stream.Size<=0) then
      raise Exception.Create('Nenhum arquivo enviado.');

      if (Req.RawWebRequest.Files[0].ContentType<>'image/png') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/jpg') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/jpeg') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/pjpeg') then
      raise Exception.Create('Extensão de arquivo inválida.');

      Usuario:=GetUserFromToken(Req);
      FormMain.Logar(PrefixLog+'(avatar) '+Usuario.GetValue<String>('USU_CODIGO'));

      DM.TBUsuarios.Close;
      DM.TBUsuarios.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
      DM.TBUsuarios.Open;
      if DM.TBUsuarios.IsEmpty then
      raise Exception.Create('Registro não localizado.');

      Pasta:=PASTA_PROFILES;

      if not DirectoryExists(Pasta) then
      ForceDirectories(Pasta);

      ArquivoEnviado:=Req.RawWebRequest.Files[0].FileName;
      Extensao:=ExtractFileExt(ArquivoEnviado);
      ArquivoLocal:=DM.TBUsuariosUSU_HASH.Value+'_ORI'+Extensao;
      ArquivoLocalCrop:=DM.TBUsuariosUSU_HASH.Value+Extensao;

      ArquivoDados:=TMemoryStream(Req.RawWebRequest.Files[0].Stream);
      ArquivoDados.SaveToFile(Pasta+ArquivoLocal);
      CropToFitQuality(500,500,Pasta+ArquivoLocal,Pasta+ArquivoLocalCrop,100);

      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      DM.Query1.SQL.Add('update USUARIOS set USU_AVATAR=:avatar where USU_CODIGO=:codigo');
      DM.Query1.ParamByName('avatar').AsString:=ArquivoLocalCrop;
      DM.Query1.ParamByName('codigo').AsInteger:=DM.TBUsuariosUSU_CODIGO.Value;
      DM.Query1.ExecSQL;

      Aleatorio:=Random(100);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('avatar', URL_SITE + 'api/arquivo?op=profile&f='+ArquivoLocalCrop+'&v='+Aleatorio.ToString);
      Retorno.AddPair('msg','Imagem alterada com sucesso.');
      Result:=Retorno;
    except on ex:Exception do
      begin
        FormMain.Logar(PrefixLog+'(avatar) exception: '+ex.Message);
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg',ex.Message);
        Result:=Retorno;
      end;
    end;
  finally
    DM.Query1.Close;
    DM.TBUsuarios.Close;
  end;
end;

function Senha(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Usuario: TJSONObject;
  SenhaAtual, SenhaNova1, SenhaNova2, SenhaHash: String;
begin
  try
    SenhaAtual:=San(Req.ContentFields.Field('senhaatual').AsString);
    SenhaNova1:=San(Req.ContentFields.Field('senhanova1').AsString);
    SenhaNova2:=San(Req.ContentFields.Field('senhanova2').AsString);

    if SenhaNova1<>SenhaNova2 then
    raise Exception.Create('A senha nova não confere com a confirmação.');

    Usuario:=GetUserFromToken(Req);
    FormMain.Logar(PrefixLog+'(senha) '+Usuario.GetValue<String>('USU_CODIGO'));

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    // Verificar senha usando bcrypt
    if not TBCrypt.CompareHash(SenhaAtual, DM.TBUsuariosUSU_PASSWORD.Value) then
    raise Exception.Create('Senha atual inválida!');

    SenhaHash:=TBCrypt.GenerateHash(SenhaNova1);
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=SenhaHash;
    DM.TBUsuarios.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Senha alterada com sucesso.');
    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(senha) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Confirmar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Usu: TJSONObject;
  Codigo: String;
begin
  try
    Codigo:=San(Req.ContentFields.Field('codigo').AsString,4);
    if Codigo='' then
    raise Exception.Create('Código não informado.');

    Usu:=GetUserFromToken(Req);
    FormMain.Logar(PrefixLog+'(confirmar) '+Usu.GetValue<String>('USU_CODIGO'));

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=Usu.GetValue<Integer>('USU_CODIGO');
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    if DM.TBUsuariosUSU_CONFIRMACAO.Value <> Codigo then
    raise Exception.Create('Código incorreto.');

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_STATUS.Value:='A';
    DM.TBUsuarios.Post;

    Result:=Usuario.Login.LoginInterno(DM,Req);
  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(confirmar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Reenviar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Usuario: TJSONObject;
  MM: TMemo;
  RetEmail: String;
begin
  try
    Usuario:=GetUserFromToken(Req);
    FormMain.Logar(PrefixLog+'(reenviar) '+Usuario.GetValue<String>('USU_CODIGO'));

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
    DM.TBUsuarios.Open;
    if DM.TBUsuarios.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;

    MM:=TMemo.CreateParented(Application.Handle);
    MM.WordWrap:=False;
    MM.Lines.Add(DM.TBParametrosPAR_REENVIAR.Value);
    MM.Text:=StringReplace(MM.Text,'|NOME|',DM.TBUsuariosUSU_NOME.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|CONFIRMACAO|',DM.TBUsuariosUSU_CONFIRMACAO.Value,[rfReplaceAll]);

    RetEmail:=EnviarEmailAngus(DM,DM.TBUsuariosUSU_EMAIL.Value,'','Reenvio código confirmação',MM.Lines.Text);

    DM.TBUsuarios.Close;
    DM.TBParametros.Close;

    if RetEmail='OK' then
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg','Código reenviado. Verifique seu email.');
      Result:=Retorno;
    end else
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Erro ao enviar email. '+RetEmail);
      Result:=Retorno;
    end;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(confirmar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
