unit Firenet.Vias;

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
  PrefixLog='FIRENET.VIAS: ';
  Campos='VIA_CODIGO, VIA_DESCRICAO, VIA_DTATUALIZACAO, VIA_DTCADASTRO, VIA_STATUS, VIA_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/vias', VerificarOperacao);
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
  Pagina, Registros, Skip, VIA_CODIGO: Integer;
  Where, VIA_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    VIA_CODIGO   :=SoNumeros(Req.ContentFields.Field('VIA_CODIGO').AsString);
    VIA_DESCRICAO:=San(Req.ContentFields.Field('VIA_DESCRICAO').AsString);
    Where:='';
    if VIA_CODIGO<>0     then Where:=Where+' and VIA_CODIGO='+VIA_CODIGO.ToString;
    if VIA_DESCRICAO<>'' then Where:=Where+' and VIA_DESCRICAO like '+QuotedStr(VIA_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+VIA_CODIGO.ToString+', DESCRICAO: '+VIA_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from VIAS where 1=1 '+Where+' order by VIA_DESCRICAO');
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
  VIA_CODIGO: Integer;
begin
  try
    VIA_CODIGO:=SoNumeros(Req.ContentFields.Field('VIA_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+VIA_CODIGO.ToString);

    DM.TBVias.Close;
    DM.TBVias.ParamByName('codigo').AsInteger:=VIA_CODIGO;
    DM.TBVias.Open;
    if DM.TBVias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBVias.ToJSONObject;
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
  VIA_CODIGO: Integer;
  VIA_DESCRICAO, VIA_STATUS: String;
begin
  try
    VIA_CODIGO:=SoNumeros(Req.ContentFields.Field('VIA_CODIGO').AsString);
    VIA_DESCRICAO:=San(Req.ContentFields.Field('VIA_DESCRICAO').AsString);
    VIA_STATUS:=San(Req.ContentFields.Field('VIA_STATUS').AsString);

    Obrigatorio(VIA_DESCRICAO,'Descrição');
    Obrigatorio(VIA_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+VIA_CODIGO.ToString);

    DM.TBVias.Close;
    DM.TBVias.ParamByName('codigo').AsInteger:=VIA_CODIGO;
    DM.TBVias.Open;
    if DM.TBVias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVias.Edit;
    DM.TBViasVIA_DESCRICAO.Value:=VIA_DESCRICAO;
    DM.TBViasVIA_DTATUALIZACAO.Value:=Date;
    DM.TBViasVIA_HRATUALIZACAO.Value:=Time;
    DM.TBViasVIA_STATUS.Value:=VIA_STATUS;
    DM.TBViasVIA_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBVias.Post;

    Registro:=DM.TBVias.ToJSONObject;
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
  VIA_DESCRICAO, VIA_STATUS: String;
begin
  try
    VIA_DESCRICAO:=San(Req.ContentFields.Field('VIA_DESCRICAO').AsString);
    VIA_STATUS:=San(Req.ContentFields.Field('VIA_STATUS').AsString);

    Obrigatorio(VIA_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBVias.Open;
    DM.TBVias.Insert;
    DM.TBViasVIA_DESCRICAO.Value:=VIA_DESCRICAO;
    DM.TBViasVIA_DTATUALIZACAO.Value:=Date;
    DM.TBViasVIA_DTCADASTRO.Value:=Date;
    DM.TBViasVIA_HRATUALIZACAO.Value:=Time;
    DM.TBViasVIA_HRCADASTRO.Value:=Time;
    DM.TBViasVIA_STATUS.Value:=VIA_STATUS;
    DM.TBViasVIA_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBVias.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBVias.ToJSONObject);

    DM.TBVias.Close;

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
  VIA_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VIA_CODIGO:=SoNumeros(Req.ContentFields.Field('VIA_CODIGO').AsString);
    if VIA_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+VIA_CODIGO.ToString);

    DM.TBVias.Close;
    DM.TBVias.ParamByName('codigo').AsInteger:=VIA_CODIGO;
    DM.TBVias.Open;
    if DM.TBVias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVias.Delete;

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
  VIA_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VIA_CODIGO:=Req.ContentFields.Field('VIA_CODIGO').AsInteger;
    if VIA_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+VIA_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select VIA_CODIGO, VIA_DESCRICAO from VIAS where VIA_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=VIA_CODIGO;
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
