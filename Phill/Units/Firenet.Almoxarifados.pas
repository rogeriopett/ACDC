unit Firenet.Almoxarifados;

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

function CriarAlmoxarifadosProdutos(DM: TDMFirenet; Almoxarifado: Integer): Boolean;

const
  PrefixLog='FIRENET.ALMOXARIFADOS: ';
  Campos='ALM_CODIGO, ALM_DESCRICAO, ALM_DTATUALIZACAO, ALM_DTCADASTRO, ALM_STATUS, ALM_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/almoxarifados', VerificarOperacao);
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
  Pagina, Registros, Skip, ALM_CODIGO: Integer;
  Where, ALM_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    ALM_CODIGO   :=SoNumeros(Req.ContentFields.Field('ALM_CODIGO').AsString);
    ALM_DESCRICAO:=San(Req.ContentFields.Field('ALM_DESCRICAO').AsString);
    Where:='';
    if ALM_CODIGO<>0     then Where:=Where+' and ALM_CODIGO='+ALM_CODIGO.ToString;
    if ALM_DESCRICAO<>'' then Where:=Where+' and ALM_DESCRICAO like '+QuotedStr(ALM_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+ALM_CODIGO.ToString+', DESCRICAO: '+ALM_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from ALMOXARIFADOS where 1=1 '+Where+' order by ALM_DESCRICAO');
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
  ALM_CODIGO: Integer;
begin
  try
    ALM_CODIGO:=SoNumeros(Req.ContentFields.Field('ALM_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+ALM_CODIGO.ToString);

    DM.TBAlmoxarifados.Close;
    DM.TBAlmoxarifados.ParamByName('codigo').AsInteger:=ALM_CODIGO;
    DM.TBAlmoxarifados.Open;
    if DM.TBAlmoxarifados.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBAlmoxarifados.ToJSONObject;
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
  ALM_CODIGO: Integer;
begin
  try
    ALM_CODIGO:=SoNumeros(Req.ContentFields.Field('ALM_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(atualizar) '+ALM_CODIGO.ToString);
    Usuario:=GetUserFromToken(Req);

    DM.TBAlmoxarifados.Close;
    DM.TBAlmoxarifados.ParamByName('codigo').AsInteger:=ALM_CODIGO;
    DM.TBAlmoxarifados.Open;
    if DM.TBAlmoxarifados.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAlmoxarifados.Edit;
    DM.TBAlmoxarifadosALM_DESCRICAO.Value:=San(Req.ContentFields.Field('ALM_DESCRICAO').AsString);
    DM.TBAlmoxarifadosALM_DTATUALIZACAO.Value:=Date;
    DM.TBAlmoxarifadosALM_HRATUALIZACAO.Value:=Time;
    DM.TBAlmoxarifadosALM_STATUS.Value:=San(Req.ContentFields.Field('ALM_STATUS').AsString);
    DM.TBAlmoxarifadosALM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAlmoxarifados.Post;

    Registro:=DM.TBAlmoxarifados.ToJSONObject;
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

    DM.TBAlmoxarifados.Open;
    DM.TBAlmoxarifados.Insert;
    DM.TBAlmoxarifadosALM_DESCRICAO.Value:=San(Req.ContentFields.Field('ALM_DESCRICAO').AsString);
    DM.TBAlmoxarifadosALM_DTATUALIZACAO.Value:=Date;
    DM.TBAlmoxarifadosALM_DTCADASTRO.Value:=Date;
    DM.TBAlmoxarifadosALM_HRATUALIZACAO.Value:=Time;
    DM.TBAlmoxarifadosALM_HRCADASTRO.Value:=Time;
    DM.TBAlmoxarifadosALM_STATUS.Value:=San(Req.ContentFields.Field('ALM_STATUS').AsString);
    DM.TBAlmoxarifadosALM_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBAlmoxarifados.Post;

    //Criar os registros de estoque em cada produto.
    CriarAlmoxarifadosProdutos(DM,DM.TBAlmoxarifadosALM_CODIGO.Value);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBAlmoxarifados.ToJSONObject);

    DM.TBAlmoxarifados.Close;

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

function CriarAlmoxarifadosProdutos(DM: TDMFirenet; Almoxarifado: Integer): Boolean;
begin
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select PRO_CODIGO from PRODUTOS order by PRO_CODIGO');
  DM.Query1.Open;
  DM.Query1.FetchAll;
  DM.Query1.First;

  DM.Query2.Close;
  DM.Query2.SQL.Clear;
  DM.Query2.SQL.Add('insert into PRODUTOSQTDE (PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE) values (:almoxarifado, :produto, :quantidade)');

  while not DM.Query1.Eof do
  begin
    DM.Query2.Close;
    DM.Query2.ParamByName('almoxarifado').AsInteger:=Almoxarifado;
    DM.Query2.ParamByName('produto').AsInteger:=DM.Query1.FieldByName('PRO_CODIGO').AsInteger;
    DM.Query2.ParamByName('quantidade').AsInteger:=0;
    DM.Query2.ExecSQL;

    DM.Query1.Next;
  end;
end;

function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  ALM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ALM_CODIGO:=SoNumeros(Req.ContentFields.Field('ALM_CODIGO').AsString);
    if ALM_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(excluir) '+Req.ContentFields.Field('ALM_CODIGO').AsString);

    DM.TBAlmoxarifados.Close;
    DM.TBAlmoxarifados.ParamByName('codigo').AsInteger:=Req.ContentFields.Field('ALM_CODIGO').AsInteger;
    DM.TBAlmoxarifados.Open;
    if DM.TBAlmoxarifados.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBAlmoxarifados.Delete;

    //elimina também a relação do almoxarifado com os produtos.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('delete from PRODUTOSQTDE where PRQ_ALMOXARIFADO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=ALM_CODIGO;
    DM.Query1.ExecSQL;

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
  ALM_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    ALM_CODIGO:=SoNumeros(Req.ContentFields.Field('ALM_CODIGO').AsString);
    if ALM_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(localizar) '+ALM_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select ALM_CODIGO, ALM_DESCRICAO from ALMOXARIFADOS where ALM_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=ALM_CODIGO;
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
