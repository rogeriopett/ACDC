unit Firenet.Icms;

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
  Campos='ICM_CODIGO, ICM_CALCULACREDITOSN, ICM_DESCRICAO, ICM_DTATUALIZACAO, ICM_DTCADASTRO, ICM_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/icms', VerificarOperacao);
  FormMain.Logar('FIRENET.ICMS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.ICMS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.ICMS: sem op.');
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
  Pagina, Registros, Skip, ICM_CODIGO: Integer;
  Where, ICM_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    ICM_CODIGO   :=SoNumeros(Req.ContentFields.Field('ICM_CODIGO').AsString);
    ICM_DESCRICAO:=San(Req.ContentFields.Field('ICM_DESCRICAO').AsString);
    Where:='';
    if ICM_CODIGO<>0     then Where:=Where+' and ICM_CODIGO='+ICM_CODIGO.ToString;
    if ICM_DESCRICAO<>'' then Where:=Where+' and ICM_DESCRICAO like '+QuotedStr(ICM_DESCRICAO+'%');

    FormMain.Logar('FIRENET.ICMS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+ICM_CODIGO.ToString+', DESCRICAO: '+ICM_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from ICMS where 1=1 '+Where+' order by ICM_DESCRICAO');
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
  ICM_CODIGO: Integer;
begin
  try
    ICM_CODIGO:=SoNumeros(Req.ContentFields.Field('ICM_CODIGO').AsString);

    FormMain.Logar('FIRENET.ICMS: (visualizar) '+ICM_CODIGO.ToString);

    DM.TBIcms.Close;
    DM.TBIcms.ParamByName('codigo').AsInteger:=ICM_CODIGO;
    DM.TBIcms.Open;
    if DM.TBIcms.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBIcms.ToJSONObject;
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
  ICM_CODIGO: Integer;
  ICM_CALCULACREDITOSN, ICM_DESCRICAO: String;
begin
  try
    ICM_CALCULACREDITOSN:=San(Req.ContentFields.Field('ICM_CALCULACREDITOSN').AsString);
    ICM_CODIGO:=SoNumeros(Req.ContentFields.Field('ICM_CODIGO').AsString);
    ICM_DESCRICAO:=San(Req.ContentFields.Field('ICM_DESCRICAO').AsString);

    Obrigatorio(ICM_CALCULACREDITOSN,'Calcula Credito Simples Nacional');
    Obrigatorio(ICM_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ICMS: (atualizar) '+ICM_CODIGO.ToString);

    DM.TBIcms.Close;
    DM.TBIcms.ParamByName('codigo').AsInteger:=ICM_CODIGO;
    DM.TBIcms.Open;
    if DM.TBIcms.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIcms.Edit;
    DM.TBIcmsICM_CALCULACREDITOSN.Value:=ICM_CALCULACREDITOSN;
    DM.TBIcmsICM_DESCRICAO.Value:=ICM_DESCRICAO;
    DM.TBIcmsICM_DTATUALIZACAO.Value:=Date;
    DM.TBIcmsICM_HRATUALIZACAO.Value:=Time;
    DM.TBIcmsICM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIcms.Post;

    Registro:=DM.TBIcms.ToJSONObject;
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
  ICM_CODIGO: Integer;
  ICM_CALCULACREDITOSN, ICM_DESCRICAO: String;
begin
  try
    ICM_CALCULACREDITOSN:=San(Req.ContentFields.Field('ICM_CALCULACREDITOSN').AsString);
    ICM_CODIGO:=SoNumeros(Req.ContentFields.Field('ICM_CODIGO').AsString);
    ICM_DESCRICAO:=San(Req.ContentFields.Field('ICM_DESCRICAO').AsString);

    Obrigatorio(ICM_CODIGO.ToString,'Código');
    Obrigatorio(ICM_CALCULACREDITOSN,'Calcula Credito Simples Nacional');
    Obrigatorio(ICM_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ICMS: (inserir) ');

    DM.TBIcms.Open;
    DM.TBIcms.Insert;
    DM.TBIcmsICM_CALCULACREDITOSN.Value:=ICM_CALCULACREDITOSN;
    DM.TBIcmsICM_CODIGO.Value:=ICM_CODIGO;
    DM.TBIcmsICM_DESCRICAO.Value:=ICM_DESCRICAO;
    DM.TBIcmsICM_DTATUALIZACAO.Value:=Date;
    DM.TBIcmsICM_DTCADASTRO.Value:=Date;
    DM.TBIcmsICM_HRATUALIZACAO.Value:=Time;
    DM.TBIcmsICM_HRCADASTRO.Value:=Time;
    DM.TBIcmsICM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBIcms.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBIcms.ToJSONObject);

    DM.TBIcms.Close;

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
  ICM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ICM_CODIGO:=SoNumeros(Req.ContentFields.Field('ICM_CODIGO').AsString);
    if ICM_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ICMS: (excluir) '+ICM_CODIGO.ToString);

    DM.TBIcms.Close;
    DM.TBIcms.ParamByName('codigo').AsInteger:=ICM_CODIGO;
    DM.TBIcms.Open;
    if DM.TBIcms.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBIcms.Delete;

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
  ICM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ICM_CODIGO:=Req.ContentFields.Field('ICM_CODIGO').AsInteger;
    if ICM_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ICMS: (localizar) '+ICM_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select ICM_CODIGO, ICM_DESCRICAO from ICMS where ICM_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=ICM_CODIGO;
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
