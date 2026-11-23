unit Firenet.Ipi;

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
  Campos='IPI_CODIGO, IPI_DESCRICAO, IPI_DTATUALIZACAO, IPI_DTCADASTRO, IPI_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/ipi', VerificarOperacao);
  FormMain.Logar('FIRENET.IPI: Registrou rotas.');
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
        FormMain.Logar('FIRENET.IPI: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.IPI: sem op.');
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
  Pagina, Registros, Skip, IPI_CODIGO: Integer;
  Where, IPI_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    IPI_CODIGO   :=SoNumeros(Req.ContentFields.Field('IPI_CODIGO').AsString);
    IPI_DESCRICAO:=San(Req.ContentFields.Field('IPI_DESCRICAO').AsString);
    Where:='';
    if IPI_CODIGO<>0     then Where:=Where+' and IPI_CODIGO='+IPI_CODIGO.ToString;
    if IPI_DESCRICAO<>'' then Where:=Where+' and IPI_DESCRICAO like '+QuotedStr(IPI_DESCRICAO+'%');

    FormMain.Logar('FIRENET.IPI: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+IPI_CODIGO.ToString+', DESCRICAO: '+IPI_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from IPI where 1=1 '+Where+' order by IPI_DESCRICAO');
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
  IPI_CODIGO: Integer;
begin
  try
    IPI_CODIGO:=SoNumeros(Req.ContentFields.Field('IPI_CODIGO').AsString);

    FormMain.Logar('FIRENET.IPI: (visualizar) '+IPI_CODIGO.ToString);

    DM.TBIpi.Close;
    DM.TBIpi.ParamByName('codigo').AsInteger:=IPI_CODIGO;
    DM.TBIpi.Open;
    if DM.TBIpi.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBIpi.ToJSONObject;
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
  IPI_CODIGO: Integer;
  IPI_DESCRICAO: String;
begin
  try
    IPI_CODIGO:=SoNumeros(Req.ContentFields.Field('IPI_CODIGO').AsString);
    IPI_DESCRICAO:=San(Req.ContentFields.Field('IPI_DESCRICAO').AsString);

    Obrigatorio(IPI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.IPI: (atualizar) '+IPI_CODIGO.ToString);

    DM.TBIpi.Close;
    DM.TBIpi.ParamByName('codigo').AsInteger:=IPI_CODIGO;
    DM.TBIpi.Open;
    if DM.TBIpi.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIpi.Edit;
    DM.TBIpiIPI_DESCRICAO.Value:=IPI_DESCRICAO;
    DM.TBIpiIPI_DTATUALIZACAO.Value:=Date;
    DM.TBIpiIPI_HRATUALIZACAO.Value:=Time;
    DM.TBIpiIPI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIpi.Post;

    Registro:=DM.TBIpi.ToJSONObject;
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
  IPI_CODIGO: Integer;
  IPI_DESCRICAO: String;
begin
  try
    IPI_CODIGO:=SoNumeros(Req.ContentFields.Field('IPI_CODIGO').AsString);
    IPI_DESCRICAO:=San(Req.ContentFields.Field('IPI_DESCRICAO').AsString);

    Obrigatorio(IPI_CODIGO.ToString,'Código','0');
    Obrigatorio(IPI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.IPI: (inserir) ');

    DM.TBIpi.Open;
    DM.TBIpi.Insert;
    DM.TBIpiIPI_CODIGO.Value:=IPI_CODIGO;
    DM.TBIpiIPI_DESCRICAO.Value:=IPI_DESCRICAO;
    DM.TBIpiIPI_DTATUALIZACAO.Value:=Date;
    DM.TBIpiIPI_DTCADASTRO.Value:=Date;
    DM.TBIpiIPI_HRATUALIZACAO.Value:=Time;
    DM.TBIpiIPI_HRCADASTRO.Value:=Time;
    DM.TBIpiIPI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIpi.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBIpi.ToJSONObject);

    DM.TBIpi.Close;

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
  IPI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    IPI_CODIGO:=SoNumeros(Req.ContentFields.Field('IPI_CODIGO').AsString);
    if IPI_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.IPI: (excluir) '+IPI_CODIGO.ToString);

    DM.TBIpi.Close;
    DM.TBIpi.ParamByName('codigo').AsInteger:=IPI_CODIGO;
    DM.TBIpi.Open;
    if DM.TBIpi.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIpi.Delete;

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
  IPI_CODIGO: Integer;
begin
  try
    IPI_CODIGO:=Req.ContentFields.Field('IPI_CODIGO').AsInteger;
    if IPI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.IPI: (localizar) '+IPI_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select IPI_CODIGO, IPI_DESCRICAO from IPI where IPI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=IPI_CODIGO;
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
