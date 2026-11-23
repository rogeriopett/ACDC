unit Firenet.Convenios;

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
  PrefixLog='FIRENET.CONVENIOS: ';
  Campos='COV_CODIGO, COV_DESCRICAO, COV_DTATUALIZACAO, COV_DTCADASTRO, COV_STATUS, COV_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/convenios', VerificarOperacao);
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
  Pagina, Registros, Skip, COV_CODIGO: Integer;
  Where, COV_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    COV_CODIGO   :=SoNumeros(Req.ContentFields.Field('COV_CODIGO').AsString);
    COV_DESCRICAO:=San(Req.ContentFields.Field('COV_DESCRICAO').AsString);
    Where:='';
    if COV_CODIGO<>0     then Where:=Where+' and COV_CODIGO='+COV_CODIGO.ToString;
    if COV_DESCRICAO<>'' then Where:=Where+' and COV_DESCRICAO like '+QuotedStr(COV_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+COV_CODIGO.ToString+', DESCRICAO: '+COV_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CONVENIOS where 1=1 '+Where+' order by COV_DESCRICAO');
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
  COV_CODIGO: Integer;
begin
  try
    COV_CODIGO:=SoNumeros(Req.ContentFields.Field('COV_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+COV_CODIGO.ToString);

    DM.TBConvenios.Close;
    DM.TBConvenios.ParamByName('codigo').AsInteger:=COV_CODIGO;
    DM.TBConvenios.Open;
    if DM.TBConvenios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBConvenios.ToJSONObject;
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
  COV_CODIGO: Integer;
  COV_DESCRICAO: String;
begin
  try
    COV_CODIGO:=SoNumeros(Req.ContentFields.Field('COV_CODIGO').AsString);
    COV_DESCRICAO:=San(Req.ContentFields.Field('COV_DESCRICAO').AsString);

    Obrigatorio(COV_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+COV_CODIGO.ToString);

    DM.TBConvenios.Close;
    DM.TBConvenios.ParamByName('codigo').AsInteger:=COV_CODIGO;
    DM.TBConvenios.Open;
    if DM.TBConvenios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConvenios.Edit;
    DM.TBConveniosCOV_DESCRICAO.Value:=COV_DESCRICAO;
    DM.TBConveniosCOV_DTATUALIZACAO.Value:=Date;
    DM.TBConveniosCOV_HRATUALIZACAO.Value:=Time;
    DM.TBConveniosCOV_OBSERVACOES.Value:=San(Req.ContentFields.Field('COV_OBSERVACOES').AsString,0);
    DM.TBConveniosCOV_STATUS.Value:=San(Req.ContentFields.Field('COV_STATUS').AsString);
    DM.TBConveniosCOV_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConvenios.Post;

    Registro:=DM.TBConvenios.ToJSONObject;
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
  COV_DESCRICAO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    COV_DESCRICAO:=San(Req.ContentFields.Field('COV_DESCRICAO').AsString);

    Obrigatorio(COV_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBConvenios.Open;
    DM.TBConvenios.Insert;
    DM.TBConveniosCOV_DESCRICAO.Value:=COV_DESCRICAO;
    DM.TBConveniosCOV_DTATUALIZACAO.Value:=Date;
    DM.TBConveniosCOV_DTCADASTRO.Value:=Date;
    DM.TBConveniosCOV_HRATUALIZACAO.Value:=Time;
    DM.TBConveniosCOV_HRCADASTRO.Value:=Time;
    DM.TBConveniosCOV_OBSERVACOES.Value:=San(Req.ContentFields.Field('COV_OBSERVACOES').AsString,0);
    DM.TBConveniosCOV_STATUS.Value:=San(Req.ContentFields.Field('COV_STATUS').AsString);
    DM.TBConveniosCOV_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConvenios.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBConvenios.ToJSONObject);

    DM.TBConvenios.Close;

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
  COV_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    COV_CODIGO:=SoNumeros(Req.ContentFields.Field('COV_CODIGO').AsString);
    if COV_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+COV_CODIGO.ToString);

    DM.TBConvenios.Close;
    DM.TBConvenios.ParamByName('codigo').AsInteger:=COV_CODIGO;
    DM.TBConvenios.Open;
    if DM.TBConvenios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConvenios.Delete;

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
  COV_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    COV_CODIGO:=Req.ContentFields.Field('COV_CODIGO').AsInteger;
    if COV_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+COV_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select COV_CODIGO, COV_DESCRICAO from CONVENIOS where COV_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=COV_CODIGO;
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
