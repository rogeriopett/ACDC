unit Firenet.Beneficios;

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
  Campos='BEN_CODIGO, BEN_DTATUALIZACAO, BEN_DTCADASTRO, BEN_HRATUALIZACAO, BEN_TIPO, BEN_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/beneficios', VerificarOperacao);
  FormMain.Logar('FIRENET.BENEFICIOS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.BENEFICIOS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.BENEFICIOS: sem op.');
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
  Pagina, Registros, Skip, BEN_CODIGO: Integer;
  Where, BEN_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    BEN_CODIGO   :=SoNumeros(Req.ContentFields.Field('BEN_CODIGO').AsString);
    BEN_DESCRICAO:=San(Req.ContentFields.Field('BEN_DESCRICAO').AsString);
    Where:='';
    if BEN_CODIGO<>0     then Where:=Where+' and BEN_CODIGO='+BEN_CODIGO.ToString;
    if BEN_DESCRICAO<>'' then Where:=Where+' and BEN_DESCRICAO like '+QuotedStr(BEN_DESCRICAO+'%');

    FormMain.Logar('FIRENET.BENEFICIOS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+BEN_CODIGO.ToString+', DESCRICAO: '+BEN_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from BENEFICIOS where 1=1 '+Where+' order by BEN_DESCRICAO');
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
  BEN_CODIGO: String;
begin
  try
    BEN_CODIGO:=San(Req.ContentFields.Field('BEN_CODIGO').AsString);

    FormMain.Logar('FIRENET.BENEFICIOS: (visualizar) '+BEN_CODIGO);

    DM.TBBeneficios.Close;
    DM.TBBeneficios.ParamByName('codigo').AsString:=BEN_CODIGO;
    DM.TBBeneficios.Open;
    if DM.TBBeneficios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBBeneficios.ToJSONObject;
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
  BEN_CODIGO, BEN_DESCRICAO, BEN_TIPO: String;
begin
  try
    BEN_CODIGO:=San(Req.ContentFields.Field('BEN_CODIGO').AsString);
    BEN_DESCRICAO:=San(Req.ContentFields.Field('BEN_DESCRICAO').AsString,0);
    BEN_TIPO:=San(Req.ContentFields.Field('BEN_TIPO').AsString);

    Obrigatorio(BEN_CODIGO,'Código');
    Obrigatorio(BEN_DESCRICAO,'Descrição');
    Obrigatorio(BEN_TIPO,'Tipo');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.BENEFICIOS: (atualizar) '+BEN_CODIGO);

    DM.TBBeneficios.Close;
    DM.TBBeneficios.ParamByName('codigo').AsString:=BEN_CODIGO;
    DM.TBBeneficios.Open;
    if DM.TBBeneficios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBeneficios.Edit;
    DM.TBBeneficiosBEN_DESCRICAO.Value:=BEN_DESCRICAO;
    DM.TBBeneficiosBEN_DTATUALIZACAO.Value:=Date;
    DM.TBBeneficiosBEN_HRATUALIZACAO.Value:=Time;
    DM.TBBeneficiosBEN_TIPO.Value:=BEN_TIPO;
    DM.TBBeneficiosBEN_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBBeneficios.Post;

    Registro:=DM.TBBeneficios.ToJSONObject;
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
  BEN_CODIGO, BEN_DESCRICAO, BEN_TIPO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    BEN_CODIGO:=San(Req.ContentFields.Field('BEN_CODIGO').AsString);
    BEN_DESCRICAO:=San(Req.ContentFields.Field('BEN_DESCRICAO').AsString,0);
    BEN_TIPO:=San(Req.ContentFields.Field('BEN_TIPO').AsString);

    Obrigatorio(BEN_CODIGO,'Código');
    Obrigatorio(BEN_DESCRICAO,'Descrição');
    Obrigatorio(BEN_TIPO,'Tipo');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.BENEFICIOS: (inserir) ');

    DM.TBBeneficios.Open;
    DM.TBBeneficios.Insert;
    DM.TBBeneficiosBEN_CODIGO.Value:=BEN_CODIGO;
    DM.TBBeneficiosBEN_DESCRICAO.Value:=BEN_DESCRICAO;
    DM.TBBeneficiosBEN_DTATUALIZACAO.Value:=Date;
    DM.TBBeneficiosBEN_DTCADASTRO.Value:=Date;
    DM.TBBeneficiosBEN_HRATUALIZACAO.Value:=Time;
    DM.TBBeneficiosBEN_HRCADASTRO.Value:=Time;
    DM.TBBeneficiosBEN_TIPO.Value:=BEN_TIPO;
    DM.TBBeneficiosBEN_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBBeneficios.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBBeneficios.ToJSONObject);

    DM.TBBeneficios.Close;

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
  BEN_CODIGO: String;
  Retorno: TJSONObject;
begin
  try
    BEN_CODIGO:=San(Req.ContentFields.Field('BEN_CODIGO').AsString);
    if BEN_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.BENEFICIOS: (excluir) '+BEN_CODIGO);

    DM.TBBeneficios.Close;
    DM.TBBeneficios.ParamByName('codigo').AsString:=BEN_CODIGO;
    DM.TBBeneficios.Open;
    if DM.TBBeneficios.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBeneficios.Delete;

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
  BEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BEN_CODIGO:=Req.ContentFields.Field('BEN_CODIGO').AsInteger;
    if BEN_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.BENEFICIOS: (localizar) '+BEN_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select BEN_CODIGO, BEN_DESCRICAO from BENEFICIOS where BEN_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=BEN_CODIGO;
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
