unit Firenet.Familias;

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
  PrefixLog='FIRENET.FAMILIAS: ';
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/familias', VerificarOperacao);
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
  Pagina, Registros, Skip, FAM_CODIGO: Integer;
  Where, FAM_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    FAM_CODIGO   :=SoNumeros(Req.ContentFields.Field('FAM_CODIGO').AsString);
    FAM_DESCRICAO:=San(Req.ContentFields.Field('FAM_DESCRICAO').AsString);
    Where:='';
    if FAM_CODIGO<>0     then Where:=Where+' and FAM_CODIGO='+FAM_CODIGO.ToString;
    if FAM_DESCRICAO<>'' then Where:=Where+' and FAM_DESCRICAO like '+QuotedStr(FAM_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+FAM_CODIGO.ToString+', DESCRICAO: '+FAM_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from FAMILIAS where 1=1 '+Where+' order by FAM_DESCRICAO');
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
  FAM_CODIGO: Integer;
begin
  try
    FAM_CODIGO:=SoNumeros(Req.ContentFields.Field('FAM_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+FAM_CODIGO.ToString);

    DM.TBFamilias.Close;
    DM.TBFamilias.ParamByName('codigo').AsInteger:=FAM_CODIGO;
    DM.TBFamilias.Open;
    if DM.TBFamilias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBFamilias.ToJSONObject;
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
  FAM_CODIGO: Integer;
  FAM_DESCRICAO, FAM_INTERNET: String;
begin
  try
    FAM_CODIGO:=SoNumeros(Req.ContentFields.Field('FAM_CODIGO').AsString);
    FAM_DESCRICAO:=San(Req.ContentFields.Field('FAM_DESCRICAO').AsString);
    FAM_INTERNET:=San(Req.ContentFields.Field('FAM_INTERNET').AsString);

    Obrigatorio(FAM_DESCRICAO,'Descrição');
    Obrigatorio(FAM_INTERNET,'Visivel na Internet');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+FAM_CODIGO.ToString);

    DM.TBFamilias.Close;
    DM.TBFamilias.ParamByName('codigo').AsInteger:=FAM_CODIGO;
    DM.TBFamilias.Open;
    if DM.TBFamilias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBFamilias.Edit;
    DM.TBFamiliasFAM_DESCRICAO.Value:=FAM_DESCRICAO;
    DM.TBFamiliasFAM_DTATUALIZACAO.Value:=Date;
    DM.TBFamiliasFAM_HRATUALIZACAO.Value:=Time;
    DM.TBFamiliasFAM_INTERNET.Value:=FAM_INTERNET;
    DM.TBFamiliasFAM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBFamilias.Post;

    Registro:=DM.TBFamilias.ToJSONObject;
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
  FAM_DESCRICAO, FAM_INTERNET: String;
begin
  try
    FAM_DESCRICAO:=San(Req.ContentFields.Field('FAM_DESCRICAO').AsString);
    FAM_INTERNET:=San(Req.ContentFields.Field('FAM_INTERNET').AsString);

    Obrigatorio(FAM_DESCRICAO,'Descrição');
    Obrigatorio(FAM_INTERNET,'Visivel na Internet');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBFamilias.Open;
    DM.TBFamilias.Insert;
    DM.TBFamiliasFAM_DESCRICAO.Value:=FAM_DESCRICAO;
    DM.TBFamiliasFAM_DTATUALIZACAO.Value:=Date;
    DM.TBFamiliasFAM_DTCADASTRO.Value:=Date;
    DM.TBFamiliasFAM_HRATUALIZACAO.Value:=Time;
    DM.TBFamiliasFAM_HRCADASTRO.Value:=Time;
    DM.TBFamiliasFAM_INTERNET.Value:=FAM_INTERNET;
    DM.TBFamiliasFAM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBFamilias.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBFamilias.ToJSONObject);

    DM.TBFamilias.Close;

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
  FAM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    FAM_CODIGO:=SoNumeros(Req.ContentFields.Field('FAM_CODIGO').AsString);
    if FAM_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+FAM_CODIGO.ToString);

    DM.TBFamilias.Close;
    DM.TBFamilias.ParamByName('codigo').AsInteger:=FAM_CODIGO;
    DM.TBFamilias.Open;
    if DM.TBFamilias.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBFamilias.Delete;

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
  FAM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    FAM_CODIGO:=Req.ContentFields.Field('FAM_CODIGO').AsInteger;
    if FAM_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+FAM_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select FAM_CODIGO, FAM_DESCRICAO from FAMILIAS where FAM_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=FAM_CODIGO;
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
