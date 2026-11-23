unit Firenet.Marcas;

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
  Campos='MAR_CODIGO, MAR_DESCRICAO, MAR_DTATUALIZACAO, MAR_DTCADASTRO, MAR_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/marcas', VerificarOperacao);
  FormMain.Logar('FIRENET.MARCAS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.MARCAS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.MARCAS: sem op.');
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
  Pagina, Registros, Skip, MAR_CODIGO: Integer;
  Where, MAR_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    MAR_CODIGO   :=SoNumeros(Req.ContentFields.Field('MAR_CODIGO').AsString);
    MAR_DESCRICAO:=San(Req.ContentFields.Field('MAR_DESCRICAO').AsString);
    Where:='';
    if MAR_CODIGO<>0     then Where:=Where+' and MAR_CODIGO='+MAR_CODIGO.ToString;
    if MAR_DESCRICAO<>'' then Where:=Where+' and MAR_DESCRICAO like '+QuotedStr(MAR_DESCRICAO+'%');

    FormMain.Logar('FIRENET.MARCAS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+MAR_CODIGO.ToString+', DESCRICAO: '+MAR_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from MARCAS where 1=1 '+Where+' order by MAR_DESCRICAO');
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
  MAR_CODIGO: Integer;
begin
  try
    MAR_CODIGO:=SoNumeros(Req.ContentFields.Field('MAR_CODIGO').AsString);

    FormMain.Logar('FIRENET.MARCAS: (visualizar) '+MAR_CODIGO.ToString);

    DM.TBMarcas.Close;
    DM.TBMarcas.ParamByName('codigo').AsInteger:=MAR_CODIGO;
    DM.TBMarcas.Open;
    if DM.TBMarcas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMarcas.ToJSONObject;
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
  MAR_CODIGO: Integer;
  MAR_DESCRICAO: String;
begin
  try
    MAR_CODIGO:=SoNumeros(Req.ContentFields.Field('MAR_CODIGO').AsString);
    MAR_DESCRICAO:=San(Req.ContentFields.Field('MAR_DESCRICAO').AsString);

    Obrigatorio(MAR_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.MARCAS: (atualizar) '+MAR_CODIGO.ToString);

    DM.TBMarcas.Close;
    DM.TBMarcas.ParamByName('codigo').AsInteger:=MAR_CODIGO;
    DM.TBMarcas.Open;
    if DM.TBMarcas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarcas.Edit;
    DM.TBMarcasMAR_DESCRICAO.Value:=MAR_DESCRICAO;
    DM.TBMarcasMAR_DTATUALIZACAO.Value:=Date;
    DM.TBMarcasMAR_HRATUALIZACAO.Value:=Time;
    DM.TBMarcasMAR_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMarcas.Post;

    Registro:=DM.TBMarcas.ToJSONObject;
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
  MAR_DESCRICAO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    MAR_DESCRICAO:=San(Req.ContentFields.Field('MAR_DESCRICAO').AsString);

    Obrigatorio(MAR_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.MARCAS: (inserir) ');

    DM.TBMarcas.Open;
    DM.TBMarcas.Insert;
    DM.TBMarcasMAR_DESCRICAO.Value:=MAR_DESCRICAO;
    DM.TBMarcasMAR_DTATUALIZACAO.Value:=Date;
    DM.TBMarcasMAR_DTCADASTRO.Value:=Date;
    DM.TBMarcasMAR_HRATUALIZACAO.Value:=Time;
    DM.TBMarcasMAR_HRCADASTRO.Value:=Time;
    DM.TBMarcasMAR_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMarcas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMarcas.ToJSONObject);

    DM.TBMarcas.Close;

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
  MAR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MAR_CODIGO:=SoNumeros(Req.ContentFields.Field('MAR_CODIGO').AsString);
    if MAR_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.MARCAS: (excluir) '+MAR_CODIGO.ToString);

    DM.TBMarcas.Close;
    DM.TBMarcas.ParamByName('codigo').AsInteger:=MAR_CODIGO;
    DM.TBMarcas.Open;
    if DM.TBMarcas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarcas.Delete;

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
  MAR_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MAR_CODIGO:=Req.ContentFields.Field('MAR_CODIGO').AsInteger;
    if MAR_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.MARCAS: (localizar) '+MAR_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select MAR_CODIGO, MAR_DESCRICAO from MARCAS where MAR_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=MAR_CODIGO;
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
