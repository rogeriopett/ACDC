unit Firenet.Receitas;

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
  PrefixLog='FIRENET.RECEITAS: ';
  Campos='REC_AGRUPADOR, REC_CODIGO, REC_DESCRICAO, REC_DTATUALIZACAO, REC_DTCADASTRO, REC_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/receitas', VerificarOperacao);
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
  Pagina, Registros, Skip, REC_CODIGO: Integer;
  Where, REC_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    REC_CODIGO   :=SoNumeros(Req.ContentFields.Field('REC_CODIGO').AsString);
    REC_DESCRICAO:=San(Req.ContentFields.Field('REC_DESCRICAO').AsString);
    Where:='';
    if REC_CODIGO<>0     then Where:=Where+' and REC_CODIGO='+REC_CODIGO.ToString;
    if REC_DESCRICAO<>'' then Where:=Where+' and REC_DESCRICAO like '+QuotedStr(REC_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+REC_CODIGO.ToString+', DESCRICAO: '+REC_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from RECEITAS where 1=1 '+Where+' order by REC_DESCRICAO');
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
  REC_CODIGO: Integer;
begin
  try
    REC_CODIGO:=SoNumeros(Req.ContentFields.Field('REC_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+REC_CODIGO.ToString);

    DM.TBReceitas.Close;
    DM.TBReceitas.ParamByName('codigo').AsInteger:=REC_CODIGO;
    DM.TBReceitas.Open;
    if DM.TBReceitas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBReceitas.ToJSONObject;
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
  REC_CODIGO: Integer;
begin
  try
    REC_CODIGO:=SoNumeros(Req.ContentFields.Field('REC_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(atualizar) '+REC_CODIGO.ToString);
    Usuario:=GetUserFromToken(Req);

    DM.TBReceitas.Close;
    DM.TBReceitas.ParamByName('codigo').AsInteger:=REC_CODIGO;
    DM.TBReceitas.Open;
    if DM.TBReceitas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBReceitas.Edit;
    DM.TBReceitasREC_AGRUPADOR.Value:=Req.ContentFields.Field('REC_AGRUPADOR').AsInteger;
    DM.TBReceitasREC_DESCRICAO.Value:=San(Req.ContentFields.Field('REC_DESCRICAO').AsString);
    DM.TBReceitasREC_DTATUALIZACAO.Value:=Date;
    DM.TBReceitasREC_HRATUALIZACAO.Value:=Time;
    DM.TBReceitasREC_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceitas.Post;

    Registro:=DM.TBReceitas.ToJSONObject;
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
var Retorno, Usuario: TJSONObject;
begin
  try
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir)');

    DM.TBReceitas.Open;
    DM.TBReceitas.Insert;
    DM.TBReceitasREC_AGRUPADOR.Value:=Req.ContentFields.Field('REC_AGRUPADOR').AsInteger;
    DM.TBReceitasREC_DESCRICAO.Value:=San(Req.ContentFields.Field('REC_DESCRICAO').AsString);
    DM.TBReceitasREC_DTATUALIZACAO.Value:=Date;
    DM.TBReceitasREC_DTCADASTRO.Value:=Date;
    DM.TBReceitasREC_HRATUALIZACAO.Value:=Time;
    DM.TBReceitasREC_HRCADASTRO.Value:=Time;
    DM.TBReceitasREC_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceitas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBReceitas.ToJSONObject);

    DM.TBReceitas.Close;

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
  REC_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    REC_CODIGO:=SoNumeros(Req.ContentFields.Field('REC_CODIGO').AsString);
    if REC_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(excluir) '+Req.ContentFields.Field('REC_CODIGO').AsString);

    DM.TBReceitas.Close;
    DM.TBReceitas.ParamByName('codigo').AsInteger:=Req.ContentFields.Field('REC_CODIGO').AsInteger;
    DM.TBReceitas.Open;
    if DM.TBReceitas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBReceitas.Delete;

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
  REC_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    REC_CODIGO:=SoNumeros(Req.ContentFields.Field('REC_CODIGO').AsString);
    if REC_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(localizar) '+REC_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select REC_CODIGO, REC_DESCRICAO from RECEITAS where REC_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=REC_CODIGO;
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
