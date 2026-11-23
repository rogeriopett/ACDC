unit Firenet.Taxas;

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
  PrefixLog='FIRENET.TAXAS: ';
  Campos='TAX_CODIGO, TAX_DESCRICAO, TAX_DTATUALIZACAO, TAX_DTCADASTRO, TAX_STATUS, TAX_TIPO, TAX_USUARIO, TAX_VALOR';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/taxas', VerificarOperacao);
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
  Pagina, Registros, Skip, TAX_CODIGO: Integer;
  Where, TAX_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    TAX_CODIGO   :=Req.ContentFields.Field('TAX_CODIGO').AsInteger;
    TAX_DESCRICAO:=San(Req.ContentFields.Field('TAX_DESCRICAO').AsString);
    Where:='';
    if TAX_CODIGO<>0     then Where:=Where+' and TAX_CODIGO='+TAX_CODIGO.ToString;
    if TAX_DESCRICAO<>'' then Where:=Where+' and TAX_DESCRICAO like '+QuotedStr(TAX_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+TAX_CODIGO.ToString+', DESCRICAO: '+TAX_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from TAXAS where 1=1 '+Where+' order by TAX_DESCRICAO');
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
  TAX_CODIGO: Integer;
begin
  try
    TAX_CODIGO:=SoNumeros(Req.ContentFields.Field('TAX_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+TAX_CODIGO.ToString);

    DM.TBTaxas.Close;
    DM.TBTaxas.ParamByName('codigo').AsInteger:=TAX_CODIGO;
    DM.TBTaxas.Open;
    if DM.TBTaxas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBTaxas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBTaxas.Close;

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
  TAX_CODIGO: Integer;
  TAX_DESCRICAO, TAX_STATUS, TAX_TIPO: String;
  TAX_VALOR: Extended;
begin
  try
    TAX_CODIGO:=Req.ContentFields.Field('TAX_CODIGO').AsInteger;
    TAX_DESCRICAO:=San(Req.ContentFields.Field('TAX_DESCRICAO').AsString);
    TAX_STATUS:=San(Req.ContentFields.Field('TAX_STATUS').AsString);
    TAX_TIPO:=San(Req.ContentFields.Field('TAX_TIPO').AsString);
    TAX_VALOR:=Req.ContentFields.Field('TAX_VALOR').AsExtended;

    Obrigatorio(TAX_DESCRICAO,'Descrição');
    Obrigatorio(TAX_STATUS,'Status');
    Obrigatorio(TAX_TIPO,'Tipo');
    Obrigatorio(TAX_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+TAX_CODIGO.ToString);

    DM.TBTaxas.Close;
    DM.TBTaxas.ParamByName('codigo').AsInteger:=TAX_CODIGO;
    DM.TBTaxas.Open;
    if DM.TBTaxas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTaxas.Edit;
    DM.TBTaxasTAX_DESCRICAO.Value:=TAX_DESCRICAO;
    DM.TBTaxasTAX_DTATUALIZACAO.Value:=Date;
    DM.TBTaxasTAX_HRATUALIZACAO.Value:=Time;
    DM.TBTaxasTAX_STATUS.Value:=TAX_STATUS;
    DM.TBTaxasTAX_TIPO.Value:=TAX_TIPO;
    DM.TBTaxasTAX_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBTaxasTAX_VALOR.Value:=TAX_VALOR;
    DM.TBTaxas.Post;

    Registro:=DM.TBTaxas.ToJSONObject;
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
  TAX_DESCRICAO, TAX_STATUS, TAX_TIPO: String;
  TAX_VALOR: Extended;
begin
  try
    TAX_DESCRICAO:=San(Req.ContentFields.Field('TAX_DESCRICAO').AsString);
    TAX_STATUS:=San(Req.ContentFields.Field('TAX_STATUS').AsString);
    TAX_TIPO:=San(Req.ContentFields.Field('TAX_TIPO').AsString);
    TAX_VALOR:=Req.ContentFields.Field('TAX_VALOR').AsExtended;

    Obrigatorio(TAX_DESCRICAO,'Descrição');
    Obrigatorio(TAX_STATUS,'Status');
    Obrigatorio(TAX_TIPO,'Tipo');
    Obrigatorio(TAX_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBTaxas.Open;
    DM.TBTaxas.Insert;
    DM.TBTaxasTAX_DESCRICAO.Value:=TAX_DESCRICAO;
    DM.TBTaxasTAX_DTATUALIZACAO.Value:=Date;
    DM.TBTaxasTAX_DTCADASTRO.Value:=Date;
    DM.TBTaxasTAX_HRATUALIZACAO.Value:=Time;
    DM.TBTaxasTAX_HRCADASTRO.Value:=Time;
    DM.TBTaxasTAX_STATUS.Value:=TAX_STATUS;
    DM.TBTaxasTAX_TIPO.Value:=TAX_TIPO;
    DM.TBTaxasTAX_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBTaxasTAX_VALOR.Value:=TAX_VALOR;
    DM.TBTaxas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBTaxas.ToJSONObject);

    DM.TBTaxas.Close;

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
  TAX_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    TAX_CODIGO:=SoNumeros(Req.ContentFields.Field('TAX_CODIGO').AsString);
    if TAX_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+TAX_CODIGO.ToString);

    DM.TBTaxas.Close;
    DM.TBTaxas.ParamByName('codigo').AsInteger:=TAX_CODIGO;
    DM.TBTaxas.Open;
    if DM.TBTaxas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTaxas.Delete;

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
  TAX_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    TAX_CODIGO:=Req.ContentFields.Field('TAX_CODIGO').AsInteger;
    if TAX_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+TAX_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select TAX_CODIGO, TAX_DESCRICAO from TAXAS where TAX_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=TAX_CODIGO;
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
