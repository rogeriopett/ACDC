unit Firenet.MetasConfig;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.METASCONFIG: ';
  Campos='MTG_CODIGO, MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/metasconfig', VerificarOperacao);
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
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(listar)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from METASCONFIG order by MTG_CODIGO');
    DM.Query1.Open;
    DM.Query1.FetchAll;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);

    Result:=Retorno;

    DM.Query1.Close;
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
  MTG_CODIGO: Integer;
begin
  try
    MTG_CODIGO:=SoNumeros(Req.ContentFields.Field('MTG_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+MTG_CODIGO.ToString);

    DM.TBMetasConfig.Close;
    DM.TBMetasConfig.Open;
    DM.TBMetasConfig.Locate('MTG_CODIGO',MTG_CODIGO,[]);

    if DM.TBMetasConfig.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMetasConfig.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBMetasConfig.Close;

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
  MTG_CODIGO: Integer;
  MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM: Extended;
begin
  try
    MTG_CODIGO     :=Req.ContentFields.Field('MTG_CODIGO').AsInteger;
    MTG_FIM        :=Req.ContentFields.Field('MTG_FIM').AsExtended;
    MTG_INICIO     :=Req.ContentFields.Field('MTG_INICIO').AsExtended;
    MTG_PORCENTAGEM:=Req.ContentFields.Field('MTG_PORCENTAGEM').AsExtended;

    Obrigatorio(MTG_CODIGO.ToString,'Código','0');
    Obrigatorio(MTG_INICIO.ToString,'Início','0');
    Obrigatorio(MTG_FIM.ToString,'Fim','0');
    Obrigatorio(MTG_PORCENTAGEM.ToString,'Porcentagem','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+MTG_CODIGO.ToString);

    DM.TBMetasConfig.Close;
    DM.TBMetasConfig.Open;
    if not DM.TBMetasConfig.Locate('MTG_CODIGO',MTG_CODIGO,[]) then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMetasConfig.Edit;
    DM.TBMetasConfigMTG_FIM.Value:=MTG_FIM;
    DM.TBMetasConfigMTG_INICIO.Value:=MTG_INICIO;
    DM.TBMetasConfigMTG_PORCENTAGEM.Value:=MTG_PORCENTAGEM;
    DM.TBMetasConfig.Post;

    Result:=Listar(DM,Req);

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
  Retorno: TJSONObject;
  MTG_FIM, MTG_INICIO, MTG_PORCENTAGEM: Extended;
begin
  try
    MTG_FIM        :=Req.ContentFields.Field('MTG_FIM').AsExtended;
    MTG_INICIO     :=Req.ContentFields.Field('MTG_INICIO').AsExtended;
    MTG_PORCENTAGEM:=Req.ContentFields.Field('MTG_PORCENTAGEM').AsExtended;

    Obrigatorio(MTG_INICIO.ToString,'Início','0');
    Obrigatorio(MTG_FIM.ToString,'Fim','0');
    Obrigatorio(MTG_PORCENTAGEM.ToString,'Porcentagem','0');

    FormMain.Logar(PrefixLog+'(inserir)');

    DM.TBMetasConfig.Open;
    DM.TBMetasConfig.Insert;
    DM.TBMetasConfigMTG_FIM.Value:=MTG_FIM;
    DM.TBMetasConfigMTG_INICIO.Value:=MTG_INICIO;
    DM.TBMetasConfigMTG_PORCENTAGEM.Value:=MTG_PORCENTAGEM;
    DM.TBMetasConfig.Post;
    DM.TBMetasConfig.Close;

    Result:=Listar(DM,Req);

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
  MTG_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MTG_CODIGO:=SoNumeros(Req.ContentFields.Field('MTG_CODIGO').AsString);
    if MTG_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+MTG_CODIGO.ToString);

    DM.TBMetasConfig.Close;
    DM.TBMetasConfig.Open;
    if not DM.TBMetasConfig.Locate('MTG_CODIGO',MTG_CODIGO,[]) then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMetasConfig.Delete;

    Result:=Listar(DM,Req);

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
