unit Firenet.Cidades;

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
  PrefixLog='FIRENET.CIDADES: ';
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/cidades', VerificarOperacao);
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
  Pagina, Registros, Skip, CID_CODIGO: Integer;
  Where, CID_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina    :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    CID_CODIGO:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);
    CID_NOME  :=San(Req.ContentFields.Field('CID_NOME').AsString);
    Where:='';
    if CID_CODIGO<>0  then Where:=Where+' and CID_CODIGO='+CID_CODIGO.ToString;
    if CID_NOME  <>'' then Where:=Where+' and CID_NOME like '+QuotedStr(CID_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+CID_CODIGO.ToString+', NOME: '+CID_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CIDADES where 1=1 '+Where+' order by CID_NOME');
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
  CID_CODIGO: Integer;
begin
  try
    CID_CODIGO:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+CID_CODIGO.ToString);

    DM.TBCidades.Close;
    DM.TBCidades.ParamByName('codigo').AsInteger:=CID_CODIGO;
    DM.TBCidades.Open;
    if DM.TBCidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBCidades.ToJSONObject;
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
  CID_CODIGO: Integer;
begin
  try
    CID_CODIGO:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+CID_CODIGO.ToString);

    DM.TBCidades.Close;
    DM.TBCidades.ParamByName('codigo').AsInteger:=CID_CODIGO;
    DM.TBCidades.Open;
    if DM.TBCidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCidades.Edit;
    DM.TBCidadesCID_CODIGO.Value:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);
    DM.TBCidadesCID_DIMOB.Value:=SoNumeros(Req.ContentFields.Field('CID_DIMOB').AsString);
    DM.TBCidadesCID_ESTADO.Value:=SoNumeros(Req.ContentFields.Field('CID_ESTADO').AsString);
    DM.TBCidadesCID_NOME.Value:=San(Req.ContentFields.Field('CID_NOME').AsString);
    DM.TBCidadesCID_PAIS.Value:=SoNumeros(Req.ContentFields.Field('CID_PAIS').AsString);
    //DM.TBCidadesCID_DTATUALIZACAO.Value:=Date;
    //DM.TBCidadesCID_HRATUALIZACAO.Value:=Time;
    //DM.TBCidadesCID_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBCidades.Post;

    Registro:=DM.TBCidades.ToJSONObject;
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
  CID_NOME: String;
  CID_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    CID_CODIGO:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);
    CID_NOME:=San(Req.ContentFields.Field('CID_NOME').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    Obrigatorio(CID_CODIGO.ToString,'Código');
    Obrigatorio(CID_NOME,'Cidade');

    DM.TBCidades.Open;
    DM.TBCidades.Insert;
    DM.TBCidadesCID_CODIGO.Value:=CID_CODIGO;
    DM.TBCidadesCID_DIMOB.Value:=SoNumeros(Req.ContentFields.Field('CID_DIMOB').AsString);
    DM.TBCidadesCID_ESTADO.Value:=SoNumeros(Req.ContentFields.Field('CID_ESTADO').AsString);
    DM.TBCidadesCID_NOME.Value:=CID_NOME;
    DM.TBCidadesCID_PAIS.Value:=SoNumeros(Req.ContentFields.Field('CID_PAIS').AsString);
    //DM.TBCidadesATI_DTATUALIZACAO.Value:=Date;
    //DM.TBCidadesATI_DTCADASTRO.Value:=Date;
    //DM.TBCidadesATI_HRATUALIZACAO.Value:=Time;
    //DM.TBCidadesATI_HRCADASTRO.Value:=Time;
    //DM.TBCidadesATI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBCidades.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBCidades.ToJSONObject);

    DM.TBCidades.Close;

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
  CID_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CID_CODIGO:=SoNumeros(Req.ContentFields.Field('CID_CODIGO').AsString);
    if CID_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+CID_CODIGO.ToString);

    DM.TBCidades.Close;
    DM.TBCidades.ParamByName('codigo').AsInteger:=CID_CODIGO;
    DM.TBCidades.Open;
    if DM.TBCidades.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCidades.Delete;

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
  CID_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CID_CODIGO:=Req.ContentFields.Field('CID_CODIGO').AsInteger;
    if CID_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+CID_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select CID_CODIGO, CID_NOME from CIDADES where CID_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=CID_CODIGO;
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
