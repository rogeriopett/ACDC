unit Firenet.ExamesTipos;

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
  Campos='EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_DTATUALIZACAO, EXT_DTCADASTRO, EXT_SIGLA, EXT_STATUS, EXT_VALOR';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/examestipos', VerificarOperacao);
  FormMain.Logar('FIRENET.EXAMESTIPOS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.EXAMESTIPOS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.EXAMESTIPOS: sem op.');
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
  Pagina, Registros, Skip, EXT_CODIGO: Integer;
  Where, EXT_DESCRICAO, EXT_SIGLA: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    EXT_CODIGO   :=SoNumeros(Req.ContentFields.Field('EXT_CODIGO').AsString);
    EXT_DESCRICAO:=San(Req.ContentFields.Field('EXT_DESCRICAO').AsString);
    EXT_SIGLA    :=San(Req.ContentFields.Field('EXT_SIGLA').AsString);
    Where:='';
    if EXT_CODIGO<>0     then Where:=Where+' and EXT_CODIGO='+EXT_CODIGO.ToString;
    if EXT_DESCRICAO<>'' then Where:=Where+' and EXT_DESCRICAO like '+QuotedStr(EXT_DESCRICAO+'%');
    if EXT_SIGLA<>''     then Where:=Where+' and EXT_SIGLA like '+QuotedStr(EXT_SIGLA+'%');

    FormMain.Logar('FIRENET.EXAMESTIPOS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+EXT_CODIGO.ToString+', DESCRICAO: '+EXT_DESCRICAO+', SIGLA: '+EXT_SIGLA);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from EXAMESTIPOS where 1=1 '+Where+' order by EXT_DESCRICAO');
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
  EXT_CODIGO: Integer;
begin
  try
    EXT_CODIGO:=SoNumeros(Req.ContentFields.Field('EXT_CODIGO').AsString);

    FormMain.Logar('FIRENET.EXAMESTIPOS: (visualizar) '+EXT_CODIGO.ToString);

    DM.TBExamesTipos.Close;
    DM.TBExamesTipos.ParamByName('codigo').AsInteger:=EXT_CODIGO;
    DM.TBExamesTipos.Open;
    if DM.TBExamesTipos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBExamesTipos.ToJSONObject;
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
  EXT_CODIGO: Integer;
  EXT_DESCRICAO, EXT_STATUS: String;
  EXT_VALOR: Extended;
begin
  try
    EXT_CODIGO:=SoNumeros(Req.ContentFields.Field('EXT_CODIGO').AsString);
    EXT_DESCRICAO:=San(Req.ContentFields.Field('EXT_DESCRICAO').AsString);
    EXT_STATUS:=San(Req.ContentFields.Field('EXT_STATUS').AsString);
    EXT_VALOR:=Req.ContentFields.Field('EXT_VALOR').AsExtended;

    Obrigatorio(EXT_DESCRICAO,'Descrição');
    Obrigatorio(EXT_STATUS,'Status');
    Obrigatorio(EXT_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.EXAMESTIPOS: (atualizar) '+EXT_CODIGO.ToString);

    DM.TBExamesTipos.Close;
    DM.TBExamesTipos.ParamByName('codigo').AsInteger:=EXT_CODIGO;
    DM.TBExamesTipos.Open;
    if DM.TBExamesTipos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBExamesTipos.Edit;
    DM.TBExamesTiposEXT_CODIGO2.Value:=San(Req.ContentFields.Field('EXT_CODIGO2').AsString);
    DM.TBExamesTiposEXT_DESCRICAO.Value:=EXT_DESCRICAO;
    DM.TBExamesTiposEXT_DTATUALIZACAO.Value:=Date;
    DM.TBExamesTiposEXT_HRATUALIZACAO.Value:=Time;
    DM.TBExamesTiposEXT_OBSERVACOES.Value:=San(Req.ContentFields.Field('EXT_OBSERVACOES').AsString,0);
    DM.TBExamesTiposEXT_SIGLA.Value:=San(Req.ContentFields.Field('EXT_SIGLA').AsString);
    DM.TBExamesTiposEXT_STATUS.Value:=EXT_STATUS;
    DM.TBExamesTiposEXT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBExamesTiposEXT_VALOR.Value:=EXT_VALOR;
    DM.TBExamesTipos.Post;

    Registro:=DM.TBExamesTipos.ToJSONObject;
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
  EXT_DESCRICAO, EXT_STATUS: String;
  EXT_VALOR: Extended;
begin
  try
    EXT_DESCRICAO:=San(Req.ContentFields.Field('EXT_DESCRICAO').AsString);
    EXT_STATUS   :=San(Req.ContentFields.Field('EXT_STATUS').AsString);
    EXT_VALOR    :=Req.ContentFields.Field('EXT_VALOR').AsExtended;

    Obrigatorio(EXT_DESCRICAO,'Descrição');
    Obrigatorio(EXT_STATUS,'Status');
    Obrigatorio(EXT_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.EXAMESTIPOS: (inserir) ');

    DM.TBExamesTipos.Open;
    DM.TBExamesTipos.Insert;
    DM.TBExamesTiposEXT_CODIGO2.Value:=San(Req.ContentFields.Field('EXT_CODIGO2').AsString);
    DM.TBExamesTiposEXT_DESCRICAO.Value:=EXT_DESCRICAO;
    DM.TBExamesTiposEXT_DTATUALIZACAO.Value:=Date;
    DM.TBExamesTiposEXT_DTCADASTRO.Value:=Date;
    DM.TBExamesTiposEXT_HRATUALIZACAO.Value:=Time;
    DM.TBExamesTiposEXT_HRCADASTRO.Value:=Time;
    DM.TBExamesTiposEXT_OBSERVACOES.Value:=San(Req.ContentFields.Field('EXT_OBSERVACOES').AsString,0);
    DM.TBExamesTiposEXT_SIGLA.Value:=San(Req.ContentFields.Field('EXT_SIGLA').AsString);
    DM.TBExamesTiposEXT_STATUS.Value:=EXT_STATUS;
    DM.TBExamesTiposEXT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBExamesTiposEXT_VALOR.Value:=EXT_VALOR;
    DM.TBExamesTipos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBExamesTipos.ToJSONObject);

    DM.TBExamesTipos.Close;

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
  Retorno: TJSONObject;
  EXT_CODIGO: Integer;
begin
  try
    EXT_CODIGO:=SoNumeros(Req.ContentFields.Field('EXT_CODIGO').AsString);
    if EXT_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.EXAMESTIPOS: (excluir) '+EXT_CODIGO.ToString);

    DM.TBExamesTipos.Close;
    DM.TBExamesTipos.ParamByName('codigo').AsInteger:=EXT_CODIGO;
    DM.TBExamesTipos.Open;
    if DM.TBExamesTipos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBExamesTipos.Delete;

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
  Retorno: TJSONObject;
  EXT_CODIGO: Integer;
begin
  try
    EXT_CODIGO:=SoNumeros(Req.ContentFields.Field('EXT_CODIGO').AsString);
    if EXT_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.EXAMESTIPOS: (localizar) '+EXT_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select EXT_CODIGO, EXT_CODIGO2, EXT_DESCRICAO, EXT_SIGLA, EXT_VALOR from EXAMESTIPOS where EXT_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=EXT_CODIGO;
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
