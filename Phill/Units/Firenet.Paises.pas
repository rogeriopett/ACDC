unit Firenet.Paises;

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
  PrefixLog='FIRENET.PAISES: ';
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/paises', VerificarOperacao);
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
  Pagina, Registros, Skip, PAI_CODIGO: Integer;
  Where, PAI_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina    :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    PAI_CODIGO:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);
    PAI_NOME  :=San(Req.ContentFields.Field('PAI_NOME').AsString);
    Where:='';
    if PAI_CODIGO<>0  then Where:=Where+' and PAI_CODIGO='+PAI_CODIGO.ToString;
    if PAI_NOME  <>'' then Where:=Where+' and PAI_NOME like '+QuotedStr(PAI_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+PAI_CODIGO.ToString+', NOME: '+PAI_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from PAISES where 1=1 '+Where+' order by PAI_NOME');
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
  PAI_CODIGO: Integer;
begin
  try
    PAI_CODIGO:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+PAI_CODIGO.ToString);

    DM.TBPaises.Close;
    DM.TBPaises.ParamByName('codigo').AsInteger:=PAI_CODIGO;
    DM.TBPaises.Open;
    if DM.TBPaises.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBPaises.ToJSONObject;
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
  PAI_CODIGO: Integer;
begin
  try
    PAI_CODIGO:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+PAI_CODIGO.ToString);

    DM.TBPaises.Close;
    DM.TBPaises.ParamByName('codigo').AsInteger:=PAI_CODIGO;
    DM.TBPaises.Open;
    if DM.TBPaises.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPaises.Edit;
    DM.TBPaisesPAI_CODIGO.Value:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);
    DM.TBPaisesPAI_NOME.Value:=San(Req.ContentFields.Field('PAI_NOME').AsString);
    DM.TBPaisesPAI_SIGLA.Value:=San(Req.ContentFields.Field('PAI_SIGLA').AsString);
    //DM.TBPAISESPAI_DTATUALIZACAO.Value:=Date;
    //DM.TBPAISESPAI_HRATUALIZACAO.Value:=Time;
    //DM.TBPAISESPAI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPaises.Post;

    Registro:=DM.TBPaises.ToJSONObject;
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
  PAI_NOME, PAI_SIGLA: String;
  PAI_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    PAI_CODIGO:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);
    PAI_NOME:=San(Req.ContentFields.Field('PAI_NOME').AsString);
    PAI_SIGLA:=San(Req.ContentFields.Field('PAI_SIGLA').AsString);
    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    Obrigatorio(PAI_CODIGO.ToString,'Código');
    Obrigatorio(PAI_NOME,'Cidade');
    Obrigatorio(PAI_SIGLA,'Sigla');

    DM.TBPaises.Open;
    DM.TBPaises.Insert;
    DM.TBPaisesPAI_CODIGO.Value:=PAI_CODIGO;
    DM.TBPaisesPAI_NOME.Value:=PAI_NOME;
    DM.TBPaisesPAI_SIGLA.Value:=PAI_SIGLA;
    //DM.TBPAISESATI_DTATUALIZACAO.Value:=Date;
    //DM.TBPAISESATI_DTCADASTRO.Value:=Date;
    //DM.TBPAISESATI_HRATUALIZACAO.Value:=Time;
    //DM.TBPAISESATI_HRCADASTRO.Value:=Time;
    //DM.TBPAISESATI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPaises.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPaises.ToJSONObject);

    DM.TBPaises.Close;

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
  PAI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PAI_CODIGO:=SoNumeros(Req.ContentFields.Field('PAI_CODIGO').AsString);
    if PAI_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+PAI_CODIGO.ToString);

    DM.TBPaises.Close;
    DM.TBPaises.ParamByName('codigo').AsInteger:=PAI_CODIGO;
    DM.TBPaises.Open;
    if DM.TBPaises.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPaises.Delete;

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
  PAI_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PAI_CODIGO:=Req.ContentFields.Field('PAI_CODIGO').AsInteger;
    if PAI_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+PAI_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select PAI_CODIGO, PAI_NOME from PAISES where PAI_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PAI_CODIGO;
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
