unit Admin.Parametros;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/parametros', VerificarOperacao);
  FormMain.Logar('ADMIN.PARAMETROS: Registrou rotas.');
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

    if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
    if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
    begin
      FormMain.Logar('ADMIN.PARAMETROS: sem op.');
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

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno: TJSONObject;
begin
  try
    FormMain.Logar('ADMIN.PARAMETROS: (visualizar)');

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;
    if DM.TBParametros.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBParametros.ToJSONObject);
    DM.TBParametros.Close;

    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.PARAMETROS: (visualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno: TJSONObject;
begin
  try
    FormMain.Logar('ADMIN.PARAMETROS: (atualizar)');

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;
    if DM.TBParametros.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBParametros.Edit;
    //DM.TBParametrosPAR_CODIGO.Value:=
    DM.TBParametrosPAR_CONFIRMADO.Value  :=Req.ContentFields.Field('PAR_CONFIRMADO').AsString;
    DM.TBParametrosPAR_MAILADMIN.Value   :=San(Req.ContentFields.Field('PAR_MAILADMIN').AsString);
    DM.TBParametrosPAR_MAILFROM.Value    :=San(Req.ContentFields.Field('PAR_MAILFROM').AsString);
    DM.TBParametrosPAR_MAILNAME.Value    :=San(Req.ContentFields.Field('PAR_MAILNAME').AsString);
    DM.TBParametrosPAR_MAILPASS.Value    :=San(Req.ContentFields.Field('PAR_MAILPASS').AsString);
    DM.TBParametrosPAR_MAILPORT.Value    :=Req.ContentFields.Field('PAR_MAILPORT').AsInteger;
    DM.TBParametrosPAR_MAILPREFIX.Value  :=San(Req.ContentFields.Field('PAR_MAILPREFIX').AsString,0);
    DM.TBParametrosPAR_MAILSMTP.Value    :=San(Req.ContentFields.Field('PAR_MAILSMTP').AsString);
    DM.TBParametrosPAR_MAILUSER.Value    :=San(Req.ContentFields.Field('PAR_MAILUSER').AsString);
    DM.TBParametrosPAR_NOVOUSUARIO.Value :=Req.ContentFields.Field('PAR_NOVOUSUARIO').AsString;
    DM.TBParametrosPAR_REENVIAR.Value    :=Req.ContentFields.Field('PAR_REENVIAR').AsString;
    DM.TBParametrosPAR_RESETARSENHA.Value:=Req.ContentFields.Field('PAR_RESETARSENHA').AsString;
    DM.TBParametrosPAR_SITENAME.Value    :=San(Req.ContentFields.Field('PAR_SITENAME').AsString);
    DM.TBParametros.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBParametros.ToJSONObject);

    DM.TBParametros.Close;

    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.PARAMETROS: (atualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
