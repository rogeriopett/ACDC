unit Firenet.Despesas;

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
  PrefixLog='FIRENET.DESPESAS: ';
  Campos='DES_AGRUPADOR, DES_CODIGO, DES_DESCRICAO, DES_DTATUALIZACAO, DES_DTCADASTRO, DES_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/despesas', VerificarOperacao);
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
  Pagina, Registros, Skip, DES_CODIGO: Integer;
  Where, DES_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    DES_CODIGO   :=SoNumeros(Req.ContentFields.Field('DES_CODIGO').AsString);
    DES_DESCRICAO:=San(Req.ContentFields.Field('DES_DESCRICAO').AsString);
    Where:='';
    if DES_CODIGO<>0     then Where:=Where+' and DES_CODIGO='+DES_CODIGO.ToString;
    if DES_DESCRICAO<>'' then Where:=Where+' and DES_DESCRICAO like '+QuotedStr(DES_DESCRICAO)+'%';

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+DES_CODIGO.ToString+', DESCRICAO: '+DES_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from DESPESAS where 1=1 '+Where+' order by DES_DESCRICAO');
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
  DES_CODIGO: Integer;
begin
  try
    DES_CODIGO:=SoNumeros(Req.ContentFields.Field('DES_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+DES_CODIGO.ToString);

    DM.TBDespesas.Close;
    DM.TBDespesas.ParamByName('codigo').AsInteger:=DES_CODIGO;
    DM.TBDespesas.Open;
    if DM.TBDespesas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBDespesas.ToJSONObject;
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
  DES_CODIGO: Integer;
begin
  try
    DES_CODIGO:=SoNumeros(Req.ContentFields.Field('DES_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(atualizar) '+DES_CODIGO.ToString);
    Usuario:=GetUserFromToken(Req);

    DM.TBDespesas.Close;
    DM.TBDespesas.ParamByName('codigo').AsInteger:=DES_CODIGO;
    DM.TBDespesas.Open;
    if DM.TBDespesas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBDespesas.Edit;
    DM.TBDespesasDES_AGRUPADOR.Value:=Req.ContentFields.Field('DES_AGRUPADOR').AsInteger;
    DM.TBDespesasDES_DESCRICAO.Value:=San(Req.ContentFields.Field('DES_DESCRICAO').AsString);
    DM.TBDespesasDES_DTATUALIZACAO.Value:=Date;
    DM.TBDespesasDES_HRATUALIZACAO.Value:=Time;
    DM.TBDespesasDES_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBDespesas.Post;

    Registro:=DM.TBDespesas.ToJSONObject;
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

    DM.TBDespesas.Open;
    DM.TBDespesas.Insert;
    DM.TBDespesasDES_AGRUPADOR.Value:=Req.ContentFields.Field('DES_AGRUPADOR').AsInteger;
    DM.TBDespesasDES_DESCRICAO.Value:=San(Req.ContentFields.Field('DES_DESCRICAO').AsString);
    DM.TBDespesasDES_DTATUALIZACAO.Value:=Date;
    DM.TBDespesasDES_DTCADASTRO.Value:=Date;
    DM.TBDespesasDES_HRATUALIZACAO.Value:=Time;
    DM.TBDespesasDES_HRCADASTRO.Value:=Time;
    DM.TBDespesasDES_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBDespesas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBDespesas.ToJSONObject);

    DM.TBDespesas.Close;

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
  DES_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    DES_CODIGO:=SoNumeros(Req.ContentFields.Field('DES_CODIGO').AsString);
    if DES_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(excluir) '+DES_CODIGO.ToString);

    DM.TBDespesas.Close;
    DM.TBDespesas.ParamByName('codigo').AsInteger:=DES_CODIGO;
    DM.TBDespesas.Open;
    if DM.TBDespesas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBDespesas.Delete;

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
  DES_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    DES_CODIGO:=Req.ContentFields.Field('DES_CODIGO').AsInteger;
    if DES_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(localizar) '+DES_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select DES_CODIGO, DES_DESCRICAO from DESPESAS where DES_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=DES_CODIGO;
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
