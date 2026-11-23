unit Firenet.Locais;

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
  Campos='*';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/locais', VerificarOperacao);
  FormMain.Logar('FIRENET.LOCAIS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.LOCAIS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.LOCAIS: sem op.');
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
  end;end;

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Pagina, Registros, Skip, LCA_CODIGO: Integer;
  Where, LCA_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    LCA_CODIGO   :=SoNumeros(Req.ContentFields.Field('LCA_CODIGO').AsString);
    LCA_DESCRICAO:=San(Req.ContentFields.Field('LCA_DESCRICAO').AsString);
    Where:='';
    if LCA_CODIGO<>0     then Where:=Where+' and LCA_CODIGO='+LCA_CODIGO.ToString;
    if LCA_DESCRICAO<>'' then Where:=Where+' and LCA_DESCRICAO like '+QuotedStr(LCA_DESCRICAO+'%');

    FormMain.Logar('FIRENET.LOCAIS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+LCA_CODIGO.ToString+', DESCRICAO: '+LCA_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from LOCAIS where 1=1 '+Where+' order by LCA_DESCRICAO');
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
  LCA_CODIGO: Integer;
begin
  try
    LCA_CODIGO:=SoNumeros(Req.ContentFields.Field('LCA_CODIGO').AsString);

    FormMain.Logar('FIRENET.LOCAIS: (visualizar) '+LCA_CODIGO.ToString);

    DM.TBLocais.Close;
    DM.TBLocais.ParamByName('codigo').AsInteger:=LCA_CODIGO;
    DM.TBLocais.Open;
    if DM.TBLocais.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBLocais.ToJSONObject;
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
  LCA_CODIGO: Integer;
  LCA_CONVENIADO, LCA_DESCRICAO: String;
begin
  try
    LCA_CODIGO:=SoNumeros(Req.ContentFields.Field('LCA_CODIGO').AsString);
    LCA_CONVENIADO:=San(Req.ContentFields.Field('LCA_CONVENIADO').AsString);
    LCA_DESCRICAO:=San(Req.ContentFields.Field('LCA_DESCRICAO').AsString);

    Obrigatorio(LCA_CONVENIADO,'Conveniado');
    Obrigatorio(LCA_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.LOCAIS: (atualizar) '+LCA_CODIGO.ToString);

    DM.TBLocais.Close;
    DM.TBLocais.ParamByName('codigo').AsInteger:=LCA_CODIGO;
    DM.TBLocais.Open;
    if DM.TBLocais.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBLocais.Edit;
    DM.TBLocaisLCA_CONVENIADO.Value:=LCA_CONVENIADO;
    DM.TBLocaisLCA_DESCRICAO.Value:=LCA_DESCRICAO;
    DM.TBLocaisLCA_DTATUALIZACAO.Value:=Date;
    DM.TBLocaisLCA_HRATUALIZACAO.Value:=Time;
    DM.TBLocaisLCA_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBLocais.Post;

    Registro:=DM.TBLocais.ToJSONObject;
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
  LCA_CONVENIADO, LCA_DESCRICAO: String;
begin
  try
    LCA_DESCRICAO:=San(Req.ContentFields.Field('LCA_DESCRICAO').AsString);
    LCA_CONVENIADO:=San(Req.ContentFields.Field('LCA_CONVENIADO').AsString);
    LCA_DESCRICAO:=San(Req.ContentFields.Field('LCA_DESCRICAO').AsString);

    Obrigatorio(LCA_CONVENIADO,'Conveniado');
    Obrigatorio(LCA_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.LOCAIS: (inserir) ');

    DM.TBLocais.Open;
    DM.TBLocais.Insert;
    DM.TBLocaisLCA_CONVENIADO.Value:=LCA_CONVENIADO;
    DM.TBLocaisLCA_DESCRICAO.Value:=LCA_DESCRICAO;
    DM.TBLocaisLCA_DTATUALIZACAO.Value:=Date;
    DM.TBLocaisLCA_DTCADASTRO.Value:=Date;
    DM.TBLocaisLCA_HRATUALIZACAO.Value:=Time;
    DM.TBLocaisLCA_HRCADASTRO.Value:=Time;
    DM.TBLocaisLCA_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBLocais.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBLocais.ToJSONObject);

    DM.TBLocais.Close;

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
  LCA_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    LCA_CODIGO:=SoNumeros(Req.ContentFields.Field('LCA_CODIGO').AsString);
    if LCA_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.LOCAIS: (excluir) '+LCA_CODIGO.ToString);

    DM.TBLocais.Close;
    DM.TBLocais.ParamByName('codigo').AsInteger:=LCA_CODIGO;
    DM.TBLocais.Open;
    if DM.TBLocais.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBLocais.Delete;

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
  LCA_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    LCA_CODIGO:=Req.ContentFields.Field('LCA_CODIGO').AsInteger;
    if LCA_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.LOCAIS: (localizar) '+LCA_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select LCA_CODIGO, LCA_DESCRICAO from LOCAIS where LCA_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=LCA_CODIGO;
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
