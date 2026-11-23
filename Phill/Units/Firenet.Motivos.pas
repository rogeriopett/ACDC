unit Firenet.Motivos;

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
  PrefixLog='FIRENET.MOTIVOS: ';
  Campos='MOT_CODIGO, MOT_DESCRICAO, MOT_DTATUALIZACAO, MOT_DTCADASTRO, MOT_STATUS, MOT_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/motivos', VerificarOperacao);
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
  Pagina, Registros, Skip, MOT_CODIGO: Integer;
  Where, MOT_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    MOT_CODIGO   :=SoNumeros(Req.ContentFields.Field('MOT_CODIGO').AsString);
    MOT_DESCRICAO:=San(Req.ContentFields.Field('MOT_DESCRICAO').AsString);
    Where:='';
    if MOT_CODIGO<>0     then Where:=Where+' and MOT_CODIGO='+MOT_CODIGO.ToString;
    if MOT_DESCRICAO<>'' then Where:=Where+' and MOT_DESCRICAO like '+QuotedStr(MOT_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+MOT_CODIGO.ToString+', DESCRICAO: '+MOT_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from MOTIVOS where 1=1 '+Where+' order by MOT_DESCRICAO');
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
  MOT_CODIGO: Integer;
begin
  try
    MOT_CODIGO:=SoNumeros(Req.ContentFields.Field('MOT_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+MOT_CODIGO.ToString);

    DM.TBMotivos.Close;
    DM.TBMotivos.ParamByName('codigo').AsInteger:=MOT_CODIGO;
    DM.TBMotivos.Open;
    if DM.TBMotivos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMotivos.ToJSONObject;
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
  MOT_CODIGO: Integer;
  MOT_DESCRICAO, MOT_STATUS: String;
begin
  try
    MOT_CODIGO:=SoNumeros(Req.ContentFields.Field('MOT_CODIGO').AsString);
    MOT_DESCRICAO:=San(Req.ContentFields.Field('MOT_DESCRICAO').AsString);
    MOT_STATUS:=San(Req.ContentFields.Field('MOT_STATUS').AsString);

    Obrigatorio(MOT_DESCRICAO,'Descrição');
    Obrigatorio(MOT_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+MOT_CODIGO.ToString);

    DM.TBMotivos.Close;
    DM.TBMotivos.ParamByName('codigo').AsInteger:=MOT_CODIGO;
    DM.TBMotivos.Open;
    if DM.TBMotivos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMotivos.Edit;
    DM.TBMotivosMOT_DESCRICAO.Value:=MOT_DESCRICAO;
    DM.TBMotivosMOT_DTATUALIZACAO.Value:=Date;
    DM.TBMotivosMOT_HRATUALIZACAO.Value:=Time;
    DM.TBMotivosMOT_STATUS.Value:=MOT_STATUS;
    DM.TBMotivosMOT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMotivos.Post;

    Registro:=DM.TBMotivos.ToJSONObject;
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
  MOT_DESCRICAO, MOT_STATUS: String;
begin
  try
    MOT_DESCRICAO:=San(Req.ContentFields.Field('MOT_DESCRICAO').AsString);
    MOT_STATUS:=San(Req.ContentFields.Field('MOT_STATUS').AsString);

    Obrigatorio(MOT_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBMotivos.Open;
    DM.TBMotivos.Insert;
    DM.TBMotivosMOT_DESCRICAO.Value:=MOT_DESCRICAO;
    DM.TBMotivosMOT_DTATUALIZACAO.Value:=Date;
    DM.TBMotivosMOT_DTCADASTRO.Value:=Date;
    DM.TBMotivosMOT_HRATUALIZACAO.Value:=Time;
    DM.TBMotivosMOT_HRCADASTRO.Value:=Time;
    DM.TBMotivosMOT_STATUS.Value:=MOT_STATUS;
    DM.TBMotivosMOT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMotivos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMotivos.ToJSONObject);

    DM.TBMotivos.Close;

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
  MOT_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MOT_CODIGO:=SoNumeros(Req.ContentFields.Field('MOT_CODIGO').AsString);
    if MOT_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+MOT_CODIGO.ToString);

    DM.TBMotivos.Close;
    DM.TBMotivos.ParamByName('codigo').AsInteger:=MOT_CODIGO;
    DM.TBMotivos.Open;
    if DM.TBMotivos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMotivos.Delete;

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
  MOT_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MOT_CODIGO:=Req.ContentFields.Field('MOT_CODIGO').AsInteger;
    if MOT_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+MOT_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select MOT_CODIGO, MOT_DESCRICAO from MOTIVOS where MOT_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=MOT_CODIGO;
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
