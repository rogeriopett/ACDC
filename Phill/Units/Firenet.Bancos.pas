unit Firenet.Bancos;

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
  PrefixLog='FIRENET.BANCOS: ';
  Campos='BAN_CODIGO, BAN_DTATUALIZACAO, BAN_DTCADASTRO, BAN_NOME, BAN_STATUS, BAN_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/bancos', VerificarOperacao);
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
  Pagina, Registros, Skip, BAN_CODIGO: Integer;
  Where, BAN_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina    :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);
    BAN_NOME  :=San(Req.ContentFields.Field('BAN_NOME').AsString);
    Where:='';
    if BAN_CODIGO<>0 then Where:=Where+' and BAN_CODIGO='+BAN_CODIGO.ToString;
    if BAN_NOME<>''  then Where:=Where+' and BAN_NOME like '+QuotedStr(BAN_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+BAN_CODIGO.ToString+', NOME: '+BAN_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from BANCOS where 1=1 '+Where+' order by BAN_NOME');
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
  BAN_CODIGO: Integer;
begin
  try
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+BAN_CODIGO.ToString);

    DM.TBBancos.Close;
    DM.TBBancos.ParamByName('codigo').AsInteger:=BAN_CODIGO;
    DM.TBBancos.Open;
    if DM.TBBancos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBBancos.ToJSONObject;
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
  BAN_CODIGO: Integer;
begin
  try
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(atualizar) '+BAN_CODIGO.ToString);
    Usuario:=GetUserFromToken(Req);

    DM.TBBancos.Close;
    DM.TBBancos.ParamByName('codigo').AsInteger:=BAN_CODIGO;
    DM.TBBancos.Open;
    if DM.TBBancos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBancos.Edit;
    DM.TBBancosBAN_NOME.Value:=San(Req.ContentFields.Field('BAN_NOME').AsString);
    DM.TBBancosBAN_DTATUALIZACAO.Value:=Date;
    DM.TBBancosBAN_HRATUALIZACAO.Value:=Time;
    DM.TBBancosBAN_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBBancos.Post;

    Registro:=DM.TBBancos.ToJSONObject;
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
  BAN_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);
    if BAN_CODIGO=0 then
    raise Exception.Create('Informe o Código do Banco.');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select count(*) as QTDE from BANCOS where BAN_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=BAN_CODIGO;
    DM.Query1.Open;
    if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
    raise Exception.Create('Já existe um banco cadastrado com esse código.');
    DM.Query1.Close;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) '+BAN_CODIGO.ToString);

    DM.TBBancos.Open;
    DM.TBBancos.Insert;
    DM.TBBancosBAN_CODIGO.Value:=BAN_CODIGO;
    DM.TBBancosBAN_DTATUALIZACAO.Value:=Date;
    DM.TBBancosBAN_DTCADASTRO.Value:=Date;
    DM.TBBancosBAN_HRATUALIZACAO.Value:=Time;
    DM.TBBancosBAN_HRCADASTRO.Value:=Time;
    DM.TBBancosBAN_NOME.Value:=San(Req.ContentFields.Field('BAN_NOME').AsString);
    DM.TBBancosBAN_STATUS.Value:=San(Req.ContentFields.Field('BAN_STATUS').AsString);
    DM.TBBancosBAN_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBBancos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBBancos.ToJSONObject);

    DM.TBBancos.Close;

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
  BAN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);
    if BAN_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(excluir) '+Req.ContentFields.Field('BAN_CODIGO').AsString);

    DM.TBBancos.Close;
    DM.TBBancos.ParamByName('codigo').AsInteger:=Req.ContentFields.Field('BAN_CODIGO').AsInteger;
    DM.TBBancos.Open;
    if DM.TBBancos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBancos.Delete;

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
  BAN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BAN_CODIGO:=SoNumeros(Req.ContentFields.Field('BAN_CODIGO').AsString);
    if BAN_CODIGO.ToString='' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(localizar) '+BAN_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select BAN_CODIGO, BAN_NOME from BANCOS where BAN_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=BAN_CODIGO;
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
