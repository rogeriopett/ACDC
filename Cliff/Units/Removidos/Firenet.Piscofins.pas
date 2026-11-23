unit Firenet.Piscofins;

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
  Campos='PIS_CODIGO, PIS_DESCRICAO, PIS_DTATUALIZACAO, PIS_DTCADASTRO, PIS_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/piscofins', VerificarOperacao);
  FormMain.Logar('FIRENET.PISCOFINS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.PISCOFINS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.PISCOFINS: sem op.');
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
  Pagina, Registros, Skip, PIS_CODIGO: Integer;
  Where, PIS_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    PIS_CODIGO   :=SoNumeros(Req.ContentFields.Field('PIS_CODIGO').AsString);
    PIS_DESCRICAO:=San(Req.ContentFields.Field('PIS_DESCRICAO').AsString);
    Where:='';
    if PIS_CODIGO<>0     then Where:=Where+' and PIS_CODIGO='+PIS_CODIGO.ToString;
    if PIS_DESCRICAO<>'' then Where:=Where+' and PIS_DESCRICAO like '+QuotedStr(PIS_DESCRICAO+'%');

    FormMain.Logar('FIRENET.PISCOFINS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+PIS_CODIGO.ToString+', DESCRICAO: '+PIS_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from PISCOFINS where 1=1 '+Where+' order by PIS_DESCRICAO');
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
  PIS_CODIGO: Integer;
begin
  try
    PIS_CODIGO:=SoNumeros(Req.ContentFields.Field('PIS_CODIGO').AsString);

    FormMain.Logar('FIRENET.PISCOFINS: (visualizar) '+PIS_CODIGO.ToString);

    DM.TBPiscofins.Close;
    DM.TBPiscofins.ParamByName('codigo').AsInteger:=PIS_CODIGO;
    DM.TBPiscofins.Open;
    if DM.TBPiscofins.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBPiscofins.ToJSONObject;
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
  PIS_CODIGO: Integer;
  PIS_DESCRICAO: String;
begin
  try
    PIS_CODIGO:=SoNumeros(Req.ContentFields.Field('PIS_CODIGO').AsString);
    PIS_DESCRICAO:=San(Req.ContentFields.Field('PIS_DESCRICAO').AsString);

    Obrigatorio(PIS_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.PISCOFINS: (atualizar) '+PIS_CODIGO.ToString);

    DM.TBPiscofins.Close;
    DM.TBPiscofins.ParamByName('codigo').AsInteger:=PIS_CODIGO;
    DM.TBPiscofins.Open;
    if DM.TBPiscofins.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPiscofins.Edit;
    DM.TBPiscofinsPIS_DESCRICAO.Value:=PIS_DESCRICAO;
    DM.TBPiscofinsPIS_DTATUALIZACAO.Value:=Date;
    DM.TBPiscofinsPIS_HRATUALIZACAO.Value:=Time;
    DM.TBPiscofinsPIS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPiscofins.Post;

    Registro:=DM.TBPiscofins.ToJSONObject;
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
  PIS_CODIGO: Integer;
  PIS_DESCRICAO: String;
begin
  try
    PIS_CODIGO:=SoNumeros(Req.ContentFields.Field('PIS_CODIGO').AsString);
    PIS_DESCRICAO:=San(Req.ContentFields.Field('PIS_DESCRICAO').AsString);

    Obrigatorio(PIS_CODIGO.ToString,'Código');
    Obrigatorio(PIS_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.PISCOFINS: (inserir) ');

    DM.TBPiscofins.Open;
    DM.TBPiscofins.Insert;
    DM.TBPiscofinsPIS_CODIGO.Value:=PIS_CODIGO;
    DM.TBPiscofinsPIS_DESCRICAO.Value:=PIS_DESCRICAO;
    DM.TBPiscofinsPIS_DTATUALIZACAO.Value:=Date;
    DM.TBPiscofinsPIS_DTCADASTRO.Value:=Date;
    DM.TBPiscofinsPIS_HRATUALIZACAO.Value:=Time;
    DM.TBPiscofinsPIS_HRCADASTRO.Value:=Time;
    DM.TBPiscofinsPIS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPiscofins.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPiscofins.ToJSONObject);

    DM.TBPiscofins.Close;

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
  PIS_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PIS_CODIGO:=SoNumeros(Req.ContentFields.Field('PIS_CODIGO').AsString);
    if PIS_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.PISCOFINS: (excluir) '+PIS_CODIGO.ToString);

    DM.TBPiscofins.Close;
    DM.TBPiscofins.ParamByName('codigo').AsInteger:=PIS_CODIGO;
    DM.TBPiscofins.Open;
    if DM.TBPiscofins.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPiscofins.Delete;

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
  PIS_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PIS_CODIGO:=Req.ContentFields.Field('PIS_CODIGO').AsInteger;
    if PIS_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.PISCOFINS: (localizar) '+PIS_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select PIS_CODIGO, PIS_DESCRICAO from PISCOFINS where PIS_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PIS_CODIGO;
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
