unit Firenet.Contatos;

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
  Campos='CTT_CLIENTE, CTT_CODIGO, CTT_DTATUALIZACAO, CTT_DTCADASTRO, CTT_EMAIL, CTT_FONE, CTT_NOME, CTT_USUARIO, CLI_NOME';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/contatos', VerificarOperacao);
  FormMain.Logar('FIRENET.CONTATOS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.CONTATOS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.CONTATOS: sem op.');
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
  CTT_CLIENTE: Integer;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    CTT_CLIENTE:=Req.ContentFields.Field('CTT_CLIENTE').AsInteger;

    if CTT_CLIENTE=0 then
    raise Exception.Create('Cliente não informado.');

    FormMain.Logar('FIRENET.CONTATOS: (listar) CODIGO: '+CTT_CLIENTE.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from CONTATOS left join CLIENTES on CTT_CLIENTE=CLI_CODIGO where CTT_CLIENTE=:cliente order by CTT_NOME');
    DM.Query1.ParamByName('cliente').AsInteger:=CTT_CLIENTE;
    DM.Query1.Open;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
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
  CTT_CLIENTE, CTT_CODIGO: Integer;
begin
  try
    CTT_CLIENTE:=SoNumeros(Req.ContentFields.Field('CTT_CLIENTE').AsString);
    CTT_CODIGO :=SoNumeros(Req.ContentFields.Field('CTT_CODIGO').AsString);

    FormMain.Logar('FIRENET.CONTATOS: (visualizar) '+CTT_CODIGO.ToString);

    DM.TBContatos.Close;
    DM.TBContatos.ParamByName('codigo').AsInteger:=CTT_CODIGO;
    DM.TBContatos.ParamByName('cliente').AsInteger:=CTT_CLIENTE;
    DM.TBContatos.Open;
    if DM.TBContatos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBContatos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBContatos.Close;

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
  CTT_CLIENTE, CTT_CODIGO: Integer;
  CTT_NOME: String;
begin
  try
    CTT_CLIENTE:=Req.ContentFields.Field('CTT_CLIENTE').AsInteger;
    CTT_CODIGO :=Req.ContentFields.Field('CTT_CODIGO').AsInteger;
    CTT_NOME   :=San(Req.ContentFields.Field('CTT_NOME').AsString);

    Obrigatorio(CTT_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(CTT_CODIGO.ToString,'Código','0');
    Obrigatorio(CTT_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.CONTATOS: (atualizar) '+CTT_CODIGO.ToString);

    DM.TBContatos.Close;
    DM.TBContatos.ParamByName('codigo').AsInteger:=CTT_CODIGO;
    DM.TBContatos.ParamByName('cliente').AsInteger:=CTT_CLIENTE;
    DM.TBContatos.Open;
    if DM.TBContatos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBContatos.Edit;
    DM.TBContatosCTT_NOME.Value:=CTT_NOME;
    DM.TBContatosCTT_DTATUALIZACAO.Value:=Date;
    DM.TBContatosCTT_EMAIL.Value:=San(Req.ContentFields.Field('CTT_EMAIL').AsString);
    DM.TBContatosCTT_FONE.Value:=FormatarFone(Req.ContentFields.Field('CTT_FONE').AsString);
    DM.TBContatosCTT_HRATUALIZACAO.Value:=Time;
    DM.TBContatosCTT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBContatos.Post;

    Registro:=DM.TBContatos.ToJSONObject;
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
  CTT_NOME: String;
begin
  try
    CTT_NOME:=San(Req.ContentFields.Field('CTT_NOME').AsString);

    Obrigatorio(CTT_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.CONTATOS: (inserir) ');

    DM.TBContatos.Open;
    DM.TBContatos.Insert;
    DM.TBContatosCTT_CLIENTE.Value:=Req.ContentFields.Field('CTT_CLIENTE').AsInteger;
    DM.TBContatosCTT_DTATUALIZACAO.Value:=Date;
    DM.TBContatosCTT_DTCADASTRO.Value:=Date;
    DM.TBContatosCTT_EMAIL.Value:=San(Req.ContentFields.Field('CTT_EMAIL').AsString);
    DM.TBContatosCTT_FONE.Value:=FormatarFone(Req.ContentFields.Field('CTT_FONE').AsString);
    DM.TBContatosCTT_HRATUALIZACAO.Value:=Time;
    DM.TBContatosCTT_HRCADASTRO.Value:=Time;
    DM.TBContatosCTT_NOME.Value:=CTT_NOME;
    DM.TBContatosCTT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBContatos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBContatos.ToJSONObject);

    DM.TBContatos.Close;

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
var Retorno: TJSONObject;
begin
  try
    FormMain.Logar('FIRENET.CONTATOS: (excluir) '+Req.ContentFields.Field('CTT_CODIGO').AsString);

    DM.TBContatos.Close;
    DM.TBContatos.ParamByName('codigo').AsInteger:=Req.ContentFields.Field('CTT_CODIGO').AsInteger;
    DM.TBContatos.ParamByName('cliente').AsInteger:=Req.ContentFields.Field('CTT_CLIENTE').AsInteger;
    DM.TBContatos.Open;
    if DM.TBContatos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBContatos.Delete;

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
  CTT_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CTT_CODIGO:=Req.ContentFields.Field('CTT_CODIGO').AsInteger;
    if CTT_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.CONTATOS: (localizar) '+CTT_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select CTT_CODIGO, CTT_DESCRICAO from CONTATOS where CTT_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=CTT_CODIGO;
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
