unit Root.Menu;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, IBX.IBQuery;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function MenuFilhos(DM: TDMAngus; MenuPai: Integer; Tipo: String='1'): TJSONArray;

const
  Campos='MEN_CODIGO, MEN_LINK, MEN_DROP, MEN_MENUTITLE, MEN_PAI, MEN_TARGET, MEN_DESCRICAO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
//  THorse.Post('/menu', VerificarOperacao);
  THorse.AddCallback(FormMain.Privado()).Post('/menu', VerificarOperacao);
  FormMain.Logar('ROOT.MENU: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMAngus.Create(nil);

      Operacao:=Req.ContentFields.Field('op').AsString;

      if Operacao='menu' then Res.Send( Listar(DM,Req) ).Status(200) else
      begin
        FormMain.Logar('ROOT.MENU: sem op.');
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

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  MenuItem, Retorno, Usuario: TJSONObject;
  Listagem: TJSONArray;
begin
  FormMain.Logar('ROOT.MENU: (menu)');
  Usuario:=GetUserFromToken(Req);
  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsString:=Usuario.GetValue<Integer>('USU_CODIGO').ToString;
  DM.TBUsuarios.Open;

  //menu normal.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select '+Campos+' from MENU where MEN_PAI=0 and MEN_TIPO=''1'' order by MEN_ORDEM');
  DM.Query1.Open;
  DM.Query1.First;

  Listagem:=TJSONArray.Create;

  while not DM.Query1.Eof do
  begin
    MenuItem:=DM.Query1.ToJSONObject;
    MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM, DM.Query1.FieldByName('MEN_CODIGO').AsInteger,'1'));
    Listagem.Add(MenuItem);
    DM.Query1.Next;
  end;

  if not DM.TBUsuarios.IsEmpty then
  begin
    //menu usuario.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from MENU where MEN_PAI=0 and MEN_TIPO=''U'' order by MEN_ORDEM');
    DM.Query1.Open;
    DM.Query1.First;
    while not DM.Query1.Eof do
    begin
      MenuItem:=DM.Query1.ToJSONObject;
      MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM, DM.Query1.FieldByName('MEN_CODIGO').AsInteger,'U'));
      Listagem.Add(MenuItem);
      DM.Query1.Next;
    end;

    //menu admin.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from MENU where MEN_PAI=0 and MEN_TIPO=''A'' order by MEN_ORDEM');
    DM.Query1.Open;
    DM.Query1.First;
    while not DM.Query1.Eof do
    begin
      MenuItem:=DM.Query1.ToJSONObject;
      MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM, DM.Query1.FieldByName('MEN_CODIGO').AsInteger,'A'));
      Listagem.Add(MenuItem);
      DM.Query1.Next;
    end;

    //menu gestor.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from MENU where MEN_PAI=0 and MEN_TIPO=''G'' order by MEN_ORDEM');
    DM.Query1.Open;
    DM.Query1.First;
    while not DM.Query1.Eof do
    begin
      MenuItem:=DM.Query1.ToJSONObject;
      MenuItem.AddPair('MEN_FILHOS',MenuFilhos(DM, DM.Query1.FieldByName('MEN_CODIGO').AsInteger,'G'));
      Listagem.Add(MenuItem);
      DM.Query1.Next;
    end;

  end;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('msg',Listagem);
  Result:=Retorno;
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

end.
