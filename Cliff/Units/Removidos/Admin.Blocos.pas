unit Admin.Blocos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Combo(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function ComboMenu(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  Campos='BLO_CODIGO, BLO_MOSTRARTITULO, BLO_NOME, BLO_SLUG, BLO_PAGINA, BLO_HITS, BLO_UNIDADE, UNI_DESCRICAO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/blocos', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.BLOCOS: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    DM:=TDMAngus.Create(nil);

    Operacao:=Req.ContentFields.Field('op').AsString;

    if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
    if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
    if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
    if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
    if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
    if Operacao='combo'      then Res.Send( Combo(DM,Req)      ).Status(200) else
    if Operacao='combomenu'  then Res.Send( ComboMenu(DM,Req)  ).Status(200) else
    begin
      FormMain.Logar('ADMIN.BLOCOS: sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado.');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  Pagina, Registros, Skip, BLO_CODIGO: Integer;
  Where, BLO_NOME: String;
  Retorno: TJSONObject;
begin
  Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
  BLO_CODIGO :=SoNumeros(Req.ContentFields.Field('BLO_CODIGO').AsString);
  BLO_NOME   :=San(Req.ContentFields.Field('BLO_NOME').AsString);
  Where:='';
  if BLO_CODIGO<>0 then Where:=Where+' and BLO_CODIGO='+BLO_CODIGO.ToString;
  if BLO_NOME<>''  then Where:=Where+' and upper(BLO_NOME) like '+QuotedStr(UpperCase(BLO_NOME)+'%');

  FormMain.Logar('ADMIN.BLOCOS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+BLO_CODIGO.ToString+', NOME: '+BLO_NOME);

  Registros:=StrToInt(FormMain.Edit2.Text);
  Skip:=Registros * (Pagina - 1);

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from BLOCOS left join UNIDADES on BLO_UNIDADE=UNI_CODIGO where 1=1 '+Where+' order by BLO_NOME');
  DM.Query1.Open;
  DM.Query1.FetchAll;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('rpp',FormMain.Edit2.Text);
  Retorno.AddPair('contador',DM.Query1.RecordCount);
  Retorno.AddPair('msg',DM.Query1.ToJSONArray);

  DM.Query1.Close;
  Result:=Retorno;
end;

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  BLO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BLO_CODIGO:=SoNumeros(Req.ContentFields.Field('BLO_CODIGO').AsString);
    if BLO_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.BLOCOS: (visualizar) '+BLO_CODIGO.ToString);

    DM.TBBlocos.Close;
    DM.TBBlocos.ParamByName('codigo').AsInteger:=BLO_CODIGO;
    DM.TBBlocos.Open;
    if DM.TBBlocos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBBlocos.ToJSONObject);

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (visualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  BLO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BLO_CODIGO:=SoNumeros(Req.ContentFields.Field('BLO_CODIGO').AsString);

    if BLO_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.BLOCOS: (atualizar): '+BLO_CODIGO.ToString);

    DM.TBBlocos.Close;
    DM.TBBlocos.ParamByName('codigo').AsInteger:=BLO_CODIGO;
    DM.TBBlocos.Open;
    if DM.TBBlocos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBlocos.Edit;
    //DM.TBBlocosBLO_CODIGO.Value:=
    DM.TBBlocosBLO_CONTEUDO.Value:=San(Req.ContentFields.Field('BLO_CONTEUDO').AsString,0);
    //DM.TBBlocosBLO_HITS.Value:=
    //DM.TBBlocosBLO_IMAGEMDESTAQUE.Value:=
    DM.TBBlocosBLO_MOSTRARTITULO.Value:=San(Req.ContentFields.Field('BLO_MOSTRARTITULO').AsString);
    DM.TBBlocosBLO_NOME.Value:=San(Req.ContentFields.Field('BLO_NOME').AsString);
    DM.TBBlocosBLO_PAGINA.Value:=San(Req.ContentFields.Field('BLO_PAGINA').AsString);
    DM.TBBlocosBLO_SLUG.Value:=San(Req.ContentFields.Field('BLO_SLUG').AsString);
    DM.TBBlocosBLO_UNIDADE.Value:=Req.ContentFields.Field('BLO_UNIDADE').AsInteger;
    DM.TBBlocos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBBlocos.ToJSONObject);

    DM.TBBlocos.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (atualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  BLO_DESCRICAO: String;
begin
  try
    BLO_DESCRICAO:=San(Req.ContentFields.Field('BLO_DESCRICAO').AsString);
    Obrigatorio(BLO_DESCRICAO,'Descrição');

    FormMain.Logar('ADMIN.BLOCOS: (inserir) '+BLO_DESCRICAO);

    DM.TBBlocos.Open;
    DM.TBBlocos.Insert;
    //DM.TBBlocosBLO_CODIGO.Value:=
    DM.TBBlocosBLO_CONTEUDO.Value:=San(Req.ContentFields.Field('BLO_CONTEUDO').AsString,0);
    //DM.TBBlocosBLO_HITS.Value:=
    //DM.TBBlocosBLO_IMAGEMDESTAQUE.Value:=
    DM.TBBlocosBLO_MOSTRARTITULO.Value:=San(Req.ContentFields.Field('BLO_MOSTRARTITULO').AsString);
    DM.TBBlocosBLO_NOME.Value:=San(Req.ContentFields.Field('BLO_NOME').AsString);
    DM.TBBlocosBLO_PAGINA.Value:=San(Req.ContentFields.Field('BLO_PAGINA').AsString);
    DM.TBBlocosBLO_SLUG.Value:=San(Req.ContentFields.Field('BLO_SLUG').AsString);
    DM.TBBlocosBLO_UNIDADE.Value:=Req.ContentFields.Field('BLO_UNIDADE').AsInteger;
    DM.TBBlocos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBBlocos.ToJSONObject);

    DM.TBBlocos.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (inserir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  BLO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    BLO_CODIGO:=SoNumeros(Req.ContentFields.Field('BLO_CODIGO').AsString);
    if BLO_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.BLOCOS: (excluir) '+BLO_CODIGO.ToString);

    DM.TBBlocos.Close;
    DM.TBBlocos.ParamByName('codigo').AsInteger:=BLO_CODIGO;
    DM.TBBlocos.Open;
    if DM.TBBlocos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBBlocos.Delete;
    DM.TBBlocos.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Usuário eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (excluir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Combo(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno, TodosObj: TJSONObject;
  Listagem: TJSONArray;
  Todos: Boolean;
begin
  try
    Todos:=Req.ContentFields.Field('todos').AsBoolean;

    FormMain.Logar('ADMIN.BLOCOS: (combo)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    if Todos then
    DM.Query1.SQL.Add('select cast(BLO_CODIGO as varchar(15)) as "VALUE", BLO_DESCRICAO "LABEL" from BLOCOS order by BLO_DESCRICAO');
    DM.Query1.Open;

    Listagem:=TJSONArray.Create;
    Listagem:=DM.Query1.ToJSONArray;

    DM.Query1.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (combo) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function ComboMenu(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno, TodosObj: TJSONObject;
  Listagem: TJSONArray;
  //Todos: Boolean;
begin
  try
    //Todos:=Req.ContentFields.Field('todos').AsBoolean;

    FormMain.Logar('ADMIN.BLOCOS: (combomenu)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    //if Todos then
    DM.Query1.SQL.Add('select BLO_SLUG as "VALUE", BLO_SLUG as "LABEL" from BLOCOS where BLO_PAGINA=:pagina and BLO_SLUG<>:slug order by BLO_SLUG');
    DM.Query1.ParamByName('pagina').AsString:='S';
    DM.Query1.ParamByName('slug').AsString:='';
    DM.Query1.Open;

    Listagem:=TJSONArray.Create;
    Listagem:=DM.Query1.ToJSONArray;

    DM.Query1.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
    Result:=Retorno;
  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.BLOCOS: (combomenu) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
