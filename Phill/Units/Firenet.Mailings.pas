unit Firenet.Mailings;

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
  PrefixLog='FIRENET.MAILINGS: ';
  Campos='MAI_CODIGO, MAI_DESCRICAO, MAI_DTATUALIZACAO, MAI_DTCADASTRO, MAI_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/mailings', VerificarOperacao);
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
  Pagina, Registros, Skip, MAI_CODIGO: Integer;
  Where, MAI_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    MAI_CODIGO   :=SoNumeros(Req.ContentFields.Field('MAI_CODIGO').AsString);
    MAI_DESCRICAO:=San(Req.ContentFields.Field('MAI_DESCRICAO').AsString);
    Where:='';
    if MAI_CODIGO<>0     then Where:=Where+' and MAI_CODIGO='+MAI_CODIGO.ToString;
    if MAI_DESCRICAO<>'' then Where:=Where+' and MAI_DESCRICAO like '+QuotedStr(MAI_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+MAI_CODIGO.ToString+', DESCRICAO: '+MAI_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from MAILINGS where 1=1 '+Where+' order by MAI_DESCRICAO');
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
  MAI_CODIGO: Integer;
begin
  try
    MAI_CODIGO:=SoNumeros(Req.ContentFields.Field('MAI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+MAI_CODIGO.ToString);

    DM.TBMailings.Close;
    DM.TBMailings.ParamByName('codigo').AsInteger:=MAI_CODIGO;
    DM.TBMailings.Open;
    if DM.TBMailings.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMailings.ToJSONObject;
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
  MAI_CODIGO: Integer;
  MAI_DESCRICAO: String;
begin
  try
    MAI_CODIGO:=SoNumeros(Req.ContentFields.Field('MAI_CODIGO').AsString);
    MAI_DESCRICAO:=San(Req.ContentFields.Field('MAI_DESCRICAO').AsString);

    Obrigatorio(MAI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+MAI_CODIGO.ToString);

    DM.TBMailings.Close;
    DM.TBMailings.ParamByName('codigo').AsInteger:=MAI_CODIGO;
    DM.TBMailings.Open;
    if DM.TBMailings.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMailings.Edit;
    DM.TBMailingsMAI_DESCRICAO.Value:=MAI_DESCRICAO;
    DM.TBMailingsMAI_DTATUALIZACAO.Value:=Date;
    DM.TBMailingsMAI_HRATUALIZACAO.Value:=Time;
    DM.TBMailingsMAI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMailings.Post;

    Registro:=DM.TBMailings.ToJSONObject;
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
  MAI_DESCRICAO: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    MAI_DESCRICAO:=San(Req.ContentFields.Field('MAI_DESCRICAO').AsString);

    Obrigatorio(MAI_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBMailings.Open;
    DM.TBMailings.Insert;
    DM.TBMailingsMAI_DESCRICAO.Value:=MAI_DESCRICAO;
    DM.TBMailingsMAI_DTATUALIZACAO.Value:=Date;
    DM.TBMailingsMAI_DTCADASTRO.Value:=Date;
    DM.TBMailingsMAI_HRATUALIZACAO.Value:=Time;
    DM.TBMailingsMAI_HRCADASTRO.Value:=Time;
    DM.TBMailingsMAI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMailings.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMailings.ToJSONObject);

    DM.TBMailings.Close;

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
  MAI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MAI_CODIGO:=SoNumeros(Req.ContentFields.Field('MAI_CODIGO').AsString);
    if MAI_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+MAI_CODIGO.ToString);

    DM.TBMailings.Close;
    DM.TBMailings.ParamByName('codigo').AsInteger:=MAI_CODIGO;
    DM.TBMailings.Open;
    if DM.TBMailings.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMailings.Delete;

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
  MAI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MAI_CODIGO:=Req.ContentFields.Field('MAI_CODIGO').AsInteger;
    if MAI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+MAI_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select MAI_CODIGO, MAI_DESCRICAO from MAILINGS where MAI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=MAI_CODIGO;
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
