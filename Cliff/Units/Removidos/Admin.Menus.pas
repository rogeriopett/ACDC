unit Admin.Menus;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, IBX.IBDatabase, IBX.IBQuery;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function MenuFilhos(DM: TDMAngus; MenuPai: Integer; Tipo: String='1'): TJSONArray;
function Ordenar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function OrdenarFilhos(DM: TDMAngus; Tipo: String; Filhos: TJSONArray; Pai: Integer): Boolean;

const
  Campos='MEN_BLOCO, MEN_CODIGO, MEN_DESCRICAO, MEN_DROP, MEN_ICONE, MEN_LINK, MEN_MENUTITLE, MEN_ORDEM, MEN_PAI, MEN_ROOT, MEN_TARGET, MEN_TIPO, MEN_UNIDADE, MEN_VISIBLE';

implementation
uses Funcoes, BCrypt;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/menus', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.MENU: Registrou rotas.');
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
    if Operacao='ordenar'    then Res.Send( Ordenar(DM,Req)    ).Status(200) else
    begin
      FormMain.Logar('ADMIN.MENU: sem op.');
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
var
  MEN_TIPO: String;
  Retorno, MenuItem: TJSONObject;
  Listagem: TJSONArray;
begin
  MEN_TIPO:=San(Req.ContentFields.Field('MEN_TIPO').AsString);

  FormMain.Logar('ADMIN.MENU: (listar) Tipo: '+MEN_TIPO);

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select '+Campos+' from MENU where MEN_PAI=0 and MEN_TIPO=:tipo order by MEN_ORDEM');
  DM.Query1.ParamByName('tipo').AsString:=MEN_TIPO;
  DM.Query1.Open;
  DM.Query1.First;

  Listagem:=TJSONArray.Create;

  while not DM.Query1.Eof do
  begin
    MenuItem:=DM.Query1.ToJSONObject;
    MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM, DM.Query1.FieldByName('MEN_CODIGO').AsInteger,MEN_TIPO));
    Listagem.Add(MenuItem);
    DM.Query1.Next;
  end;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('msg',Listagem);

  DM.Query1.Close;

  Result:=Retorno;
end;

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  MEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MEN_CODIGO:=SoNumeros(Req.ContentFields.Field('MEN_CODIGO').AsString);
    if MEN_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.MENU: (visualizar) '+MEN_CODIGO.ToString);

    DM.TBMenus.Close;
    DM.TBMenus.ParamByName('codigo').AsInteger:=MEN_CODIGO;
    DM.TBMenus.Open;
    if DM.TBMenus.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMenus.ToJSONObject);

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.MENU: (visualizar) exception '+ex.Message);
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
  MEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MEN_CODIGO:=SoNumeros(Req.ContentFields.Field('MEN_CODIGO').AsString);

    if MEN_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.MENU: (atualizar): '+MEN_CODIGO.ToString);

    DM.TBMenus.Close;
    DM.TBMenus.ParamByName('codigo').AsInteger:=MEN_CODIGO;
    DM.TBMenus.Open;
    if DM.TBMenus.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMenus.Edit;
    //DM.TBMenusMEN_CODIGO.Value:=
    //DM.TBMenusMEN_BLOCO.Value:=Req.ContentFields.Field('MEN_BLOCO').AsInteger;
    DM.TBMenusMEN_DESCRICAO.Value:=San(Req.ContentFields.Field('MEN_DESCRICAO').AsString);
    DM.TBMenusMEN_DROP.Value:=San(Req.ContentFields.Field('MEN_DROP').AsString);
    DM.TBMenusMEN_ICONE.Value:=San(Req.ContentFields.Field('MEN_ICONE').AsString);
    DM.TBMenusMEN_LINK.Value:=San(Req.ContentFields.Field('MEN_LINK').AsString,0);
    DM.TBMenusMEN_MENUTITLE.Value:=San(Req.ContentFields.Field('MEN_MENUTITLE').AsString);
    //DM.TBMenusMEN_ORDEM.Value:=Req.ContentFields.Field('MEN_ORDEM').AsInteger;
    DM.TBMenusMEN_PAI.Value:=Req.ContentFields.Field('MEN_PAI').AsInteger;
    //DM.TBMenusMEN_ROOT.Value:=Req.ContentFields.Field('MEN_ROOT').AsInteger;
    DM.TBMenusMEN_TARGET.Value:=San(Req.ContentFields.Field('MEN_TARGET').AsString);
    DM.TBMenusMEN_TIPO.Value:=San(Req.ContentFields.Field('MEN_TIPO').AsString);
    DM.TBMenusMEN_UNIDADE.Value:=Req.ContentFields.Field('MEN_UNIDADE').AsInteger;
    DM.TBMenusMEN_VISIBLE.Value:=San(Req.ContentFields.Field('MEN_VISIBLE').AsString);
    DM.TBMenus.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Menu atualizado com sucesso.');

    DM.TBMenus.Close;

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

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
begin
  try
    FormMain.Logar('ADMIN.MENU: (inserir): '+San(Req.ContentFields.Field('MEN_TIPO').AsString));

    DM.TBMenus.Open;
    DM.TBMenus.Insert;
    //DM.TBMenusMEN_CODIGO.Value:=
    //DM.TBMenusMEN_BLOCO.Value:=Req.ContentFields.Field('MEN_BLOCO').AsInteger;
    DM.TBMenusMEN_DESCRICAO.Value:='DESCRIÇÃO';
    DM.TBMenusMEN_DROP.Value:='N';
    DM.TBMenusMEN_ICONE.Value:='';
    DM.TBMenusMEN_LINK.Value:='/';
    DM.TBMenusMEN_MENUTITLE.Value:='N';
    //DM.TBMenusMEN_ORDEM.Value:=
    DM.TBMenusMEN_PAI.Value:=0;
    DM.TBMenusMEN_ROOT.Value:=0;
    DM.TBMenusMEN_TARGET.Value:='_self';
    DM.TBMenusMEN_TIPO.Value:=San(Req.ContentFields.Field('MEN_TIPO').AsString);
    DM.TBMenusMEN_UNIDADE.Value:=1;
    DM.TBMenusMEN_VISIBLE.Value:='S';

    DM.TBMenus.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMenus.ToJSONObject);

    DM.TBMenus.Close;

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

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  MEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MEN_CODIGO:=SoNumeros(Req.ContentFields.Field('MEN_CODIGO').AsString);
    if MEN_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.MENU: (excluir) '+MEN_CODIGO.ToString);

    DM.TBMenus.Close;
    DM.TBMenus.ParamByName('codigo').AsInteger:=MEN_CODIGO;
    DM.TBMenus.Open;
    if DM.TBMenus.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMenus.Delete;
    DM.TBMenus.Close;

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

function MenuFilhos(DM: TDMAngus; MenuPai: Integer; Tipo: String='1'): TJSONArray;
var Listagem: TJSONArray;
  MenuItem: TJSONObject;
  Query: TIBQuery;
begin
  try
    Query:=TIBQuery.Create(nil);
    Query.Database:=DM.IBDatabase1;
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('select MEN_CODIGO, MEN_LINK, MEN_DROP, MEN_MENUTITLE, MEN_PAI, MEN_TARGET, MEN_DESCRICAO from MENU where MEN_PAI=:pai and MEN_TIPO=:tipo order by MEN_ORDEM');
    Query.ParamByName('pai').AsInteger:=MenuPai;
    Query.ParamByName('tipo').AsString:=Tipo;
    Query.Open;
    Query.First;
    Listagem:=TJSONArray.Create;

    while not Query.Eof do
    begin
      MenuItem:=Query.ToJSONObject;
      MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM,Query.FieldByName('MEN_CODIGO').AsInteger,Tipo));
      Listagem.Add(MenuItem);
      Query.Next;
    end;
    Query.Close;
    FreeAndNil(Query);
    Result:=Listagem;
  except on ex:exception do

  end;
end;

function Ordenar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno, Item: TJSONObject;
  Listagem: TJSONArray;
  I: Integer;
  MEN_TIPO: String;
begin
  FormMain.Logar('ADMIN.MENUS: (ordenar)'+Req.ContentFields.Field('json').AsString);
  MEN_TIPO:=San(Req.ContentFields.Field('MEN_TIPO').AsString);
  Listagem:=TJSONArray.ParseJSONValue(Req.ContentFields.Field('json').AsString) as TJSONArray;

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('update MENU set MEN_ORDEM=:index, MEN_PAI=0, MEN_DROP=:drop where MEN_TIPO=:tipo and MEN_CODIGO=:codigo');

  for I:=0 to Listagem.Count-1 do
  begin
    Item:=Listagem[I] as TJSONObject;
    if Item.GetValue<Integer>('MEN_CODIGO') > 0 then
    begin
      DM.Query1.Close;
      DM.Query1.ParamByName('index').AsInteger:=I;

      if Item.GetValue<TJSONArray>('MEN_FILHOS').IsEmpty then
      DM.Query1.ParamByName('drop').AsString:='N' else
      DM.Query1.ParamByName('drop').AsString:='S';

      DM.Query1.ParamByName('tipo').AsString:=MEN_TIPO;
      DM.Query1.ParamByName('codigo').AsInteger:=Item.GetValue<Integer>('MEN_CODIGO');
      DM.Query1.ExecSQL;

      if not Item.GetValue<TJSONArray>('MEN_FILHOS').IsEmpty then
      OrdenarFilhos(DM,MEN_TIPO,Item.GetValue<TJSONArray>('MEN_FILHOS'),Item.GetValue<Integer>('MEN_CODIGO'));
    end;
  end;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('msg','Menu atualizado.');

  Result:=Retorno;
end;

function OrdenarFilhos(DM: TDMAngus; Tipo: String; Filhos: TJSONArray; Pai: Integer): Boolean;
var
  Item: TJSONObject;
  I: Integer;
  Query: TIBQuery;
  Trans: TIBTransaction;
begin
  try
    FormMain.Logar('ADMIN.MENUS: (ordenarFilhos)');
    Trans:=TIBTransaction.Create(nil);
    Trans.DefaultDatabase:=DM.IBDatabase1;
    Query:=TIBQuery.Create(nil);
    Query.Database:=DM.IBDatabase1;
    Query.Transaction:=Trans;
    Query.Close;
    Query.SQL.Clear;
    Query.SQL.Add('update MENU set MEN_ORDEM=:index, MEN_PAI=:pai, MEN_DROP=:drop where MEN_TIPO=:tipo and MEN_CODIGO=:codigo');

    for I := 0 to Filhos.Count-1 do
    begin
      Item:=Filhos[I] as TJSONObject;

      Query.Close;
      Query.ParamByName('index').AsInteger:=I;

      if Item.GetValue<TJSONArray>('MEN_FILHOS').IsEmpty then
      Query.ParamByName('drop').AsString:='N' else
      Query.ParamByName('drop').AsString:='S';

      Query.ParamByName('pai').AsInteger:=Pai;
      Query.ParamByName('tipo').AsString:=Tipo;
      Query.ParamByName('codigo').AsInteger:=Item.GetValue<Integer>('MEN_CODIGO');
      Query.ExecSQL;

      if not Item.GetValue<TJSONArray>('MEN_FILHOS').IsEmpty then
      OrdenarFilhos(DM,Tipo,Item.GetValue<TJSONArray>('MEN_FILHOS'),Item.GetValue<Integer>('MEN_CODIGO'));

    end;
    Result:=True;
  finally
    FreeAndNil(Trans);
    FreeAndNil(Query);
  end;
end;

end.
