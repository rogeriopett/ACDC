unit Firenet.Markups;

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

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure AtualizarTotaisMarkup(DM: TDMFirenet; MKP_CODIGO: Integer);

const
  PrefixLog='FIRENET.MARKUPS: ';
  Campos='*';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/markups', VerificarOperacao);
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

      if Operacao='listar'         then Res.Send( Listar(DM,Req)         ).Status(200) else
      if Operacao='visualizar'     then Res.Send( Visualizar(DM,Req)     ).Status(200) else
      if Operacao='atualizar'      then Res.Send( Atualizar(DM,Req)      ).Status(200) else
      if Operacao='inserir'        then Res.Send( Inserir(DM,Req)        ).Status(200) else
      if Operacao='excluir'        then Res.Send( Excluir(DM,Req)        ).Status(200) else
      if Operacao='localizar'      then Res.Send( Localizar(DM,Req)      ).Status(200) else

      if Operacao='visualizarItem' then Res.Send( VisualizarItem(DM,Req) ).Status(200) else
      if Operacao='atualizarItem'  then Res.Send( AtualizarItem(DM,Req)  ).Status(200) else
      if Operacao='inserirItem'    then Res.Send( InserirItem(DM,Req)    ).Status(200) else
      if Operacao='excluirItem'    then Res.Send( ExcluirItem(DM,Req)    ).Status(200) else
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
  Pagina, Registros, Skip, MKP_CODIGO: Integer;
  Where, MKP_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    MKP_CODIGO   :=Req.ContentFields.Field('MKP_CODIGO').AsInteger;
    MKP_DESCRICAO:=San(Req.ContentFields.Field('MKP_DESCRICAO').AsString);
    Where:='';
    if MKP_CODIGO<>0     then Where:=Where+' and MKP_CODIGO='+MKP_CODIGO.ToString;
    if MKP_DESCRICAO<>'' then Where:=Where+' and MKP_DESCRICAO like '+QuotedStr(MKP_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+MKP_CODIGO.ToString+', DESCRICAO: '+MKP_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from MARKUPS where 1=1 '+Where+' order by MKP_DESCRICAO');
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
  Itens: TJSONArray;
  MKP_CODIGO: Integer;
begin
  try
    MKP_CODIGO:=SoNumeros(Req.ContentFields.Field('MKP_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+MKP_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKP_CODIGO;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMarkups.ToJSONObject;

    DM.TBMarkupsItens.Open;
    Itens:=DM.TBMarkupsItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBMarkups.Close;
    DM.TBMarkupsItens.Close;

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
  MKP_CODIGO: Integer;
  MKP_DESCRICAO: String;
begin
  try
    MKP_CODIGO:=Req.ContentFields.Field('MKP_CODIGO').AsInteger;
    MKP_DESCRICAO:=San(Req.ContentFields.Field('MKP_DESCRICAO').AsString);

    Obrigatorio(MKP_CODIGO.ToString,'Código','0');
    Obrigatorio(MKP_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+MKP_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKP_CODIGO;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarkups.Edit;
    DM.TBMarkupsMKP_DESCRICAO.Value:=San(Req.ContentFields.Field('MKP_DESCRICAO').AsString);
    DM.TBMarkupsMKP_DTATUALIZACAO.Value:=Date;
    DM.TBMarkupsMKP_HRATUALIZACAO.Value:=Time;
    //DM.TBMarkupsMKP_MARKUP.Value:=
    DM.TBMarkupsMKP_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMarkups.Post;

    Registro:=DM.TBMarkups.ToJSONObject;
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
  MKP_DESCRICAO, MKP_STATUS: String;
begin
  try
    MKP_DESCRICAO:=San(Req.ContentFields.Field('MKP_DESCRICAO').AsString);

    Obrigatorio(MKP_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBMarkups.Open;
    DM.TBMarkups.Insert;
    DM.TBMarkupsMKP_DESCRICAO.Value:=San(Req.ContentFields.Field('MKP_DESCRICAO').AsString);
    DM.TBMarkupsMKP_DTATUALIZACAO.Value:=Date;
    DM.TBMarkupsMKP_DTCADASTRO.Value:=Date;
    DM.TBMarkupsMKP_HRATUALIZACAO.Value:=Time;
    DM.TBMarkupsMKP_HRCADASTRO.Value:=Time;
    DM.TBMarkupsMKP_MARKUP.Value:=0;
    DM.TBMarkupsMKP_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMarkups.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMarkups.ToJSONObject);

    DM.TBMarkups.Close;

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
  MKP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MKP_CODIGO:=SoNumeros(Req.ContentFields.Field('MKP_CODIGO').AsString);
    if MKP_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+MKP_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKP_CODIGO;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarkups.Delete;

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
  MKP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MKP_CODIGO:=Req.ContentFields.Field('MKP_CODIGO').AsInteger;
    if MKP_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+MKP_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select MKP_CODIGO, MKP_DESCRICAO from MARKUPS where MKP_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=MKP_CODIGO;
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

//###### ITENS #######
function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  MKP_CODIGO, MKI_CODIGO: Integer;
begin
  try
    MKI_CODIGO:=SoNumeros(Req.ContentFields.Field('MKI_CODIGO').AsString);
    MKP_CODIGO:=SoNumeros(Req.ContentFields.Field('MKP_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Condição: '+MKP_CODIGO.ToString+' Item: '+MKI_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKP_CODIGO;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarkupsItens.Open;
    DM.TBMarkupsItens.Locate('MKI_CODIGO',MKI_CODIGO,[]);

    Registro:=DM.TBMarkupsItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBMarkups.Close;
    DM.TBMarkupsItens.Close;

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

function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  MKI_CODIGO, MKI_MARKUP: Integer;
  MKI_PORCENTAGEM: Extended;
  MKI_DESCRICAO: String;
begin
  try
    MKI_CODIGO:=SoNumeros(Req.ContentFields.Field('MKI_CODIGO').AsString);
    MKI_MARKUP:=SoNumeros(Req.ContentFields.Field('MKI_MARKUP').AsString);
    MKI_DESCRICAO:=San(Req.ContentFields.Field('MKI_DESCRICAO').AsString);
    MKI_PORCENTAGEM:=Req.ContentFields.Field('MKI_PORCENTAGEM').AsExtended;

    Obrigatorio(MKI_MARKUP.ToString,'Markup','0');
    Obrigatorio(MKI_DESCRICAO,'Descricao');
    Obrigatorio(MKI_PORCENTAGEM.ToString,'Porcentagem');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Markup: '+MKI_MARKUP.ToString+' Item: '+MKI_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKI_MARKUP;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Markup não encontrado.');

    DM.TBMarkupsItens.Open;
    if not DM.TBMarkupsItens.Locate('MKI_CODIGO',MKI_CODIGO,[]) then
    raise Exception.Create('Erro ao encontrar o registro para alteração. '+MKI_CODIGO.ToString);

    DM.TBMarkupsItens.Edit;
    DM.TBMarkupsItensMKI_DESCRICAO.Value:=MKI_DESCRICAO;
    DM.TBMarkupsItensMKI_PORCENTAGEM.Value:=MKI_PORCENTAGEM;
    DM.TBMarkupsItens.Post;
    DM.TBMarkupsItens.Close;

    DM.TBMarkups.Close;

    //Atualizar totais da condicao.
    AtualizarTotaisMarkup(DM, MKI_MARKUP);

    Result:=Visualizar(DM,Req); //req contem MKP_CODIGO.

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

function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  MKP_CODIGO: Integer;
  MKI_PORCENTAGEM: Extended;
  MKI_DESCRICAO: String;
begin
  try
    MKP_CODIGO:=SoNumeros(Req.ContentFields.Field('MKP_CODIGO').AsString);
    MKI_DESCRICAO:=San(Req.ContentFields.Field('MKI_DESCRICAO').AsString);
    MKI_PORCENTAGEM:=Req.ContentFields.Field('MKI_PORCENTAGEM').AsExtended;

    Obrigatorio(MKP_CODIGO.ToString,'Condição','0');
    Obrigatorio(MKI_DESCRICAO,'Descrição');
    Obrigatorio(MKI_PORCENTAGEM.ToString,'Porcentagem');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirItem) Markup: '+MKP_CODIGO.ToString);

    DM.TBMarkupsItens.Open;
    DM.TBMarkupsItens.Insert;
    //DM.TBMarkupsMKP_CODIGO.Value:=
    DM.TBMarkupsItensMKI_MARKUP.Value:=MKP_CODIGO;
    DM.TBMarkupsItensMKI_DESCRICAO.Value:=MKI_DESCRICAO;
    DM.TBMarkupsItensMKI_PORCENTAGEM.Value:=MKI_PORCENTAGEM;
    DM.TBMarkupsItens.Post;
    DM.TBMarkupsItens.Close;

    //Atualizar totais da condicao.
    AtualizarTotaisMarkup(DM, MKP_CODIGO);

    Result:=Visualizar(DM,Req); //req contem MKP_CODIGO.

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

function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  MKP_CODIGO, MKI_CODIGO: Integer;
begin
  try
    MKP_CODIGO:=SoNumeros(Req.ContentFields.Field('MKP_CODIGO').AsString);
    MKI_CODIGO:=SoNumeros(Req.ContentFields.Field('MKI_CODIGO').AsString);
    if MKP_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) '+MKI_CODIGO.ToString);

    DM.TBMarkups.Close;
    DM.TBMarkups.ParamByName('codigo').AsInteger:=MKP_CODIGO;
    DM.TBMarkups.Open;
    if DM.TBMarkups.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMarkupsItens.Open;
    if DM.TBMarkupsItens.Locate('MKI_CODIGO',MKI_CODIGO,[]) then
    DM.TBMarkupsItens.Delete else
    raise Exception.Create('Erro ao eliminar o registro '+MKI_CODIGO.ToString);

    AtualizarTotaisMarkup(DM,MKP_CODIGO);
    Result:=Visualizar(DM,Req); //req contem MKP_CODIGO.
    Exit;

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

procedure AtualizarTotaisMarkup(DM: TDMFirenet; MKP_CODIGO: Integer);
begin
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select sum(MKI_PORCENTAGEM) as TOTAL, count(*) as QTDE from MARKUPSITENS where MKI_MARKUP=:markup');
  DM.Query1.ParamByName('markup').AsInteger:=MKP_CODIGO;
  DM.Query1.Open;

  DM.Query2.Close;
  DM.Query2.SQL.Clear;
  DM.Query2.SQL.Add('update MARKUPS set MKP_MARKUP = (1 - (:total / 100)) where MKP_CODIGO=:codigo');
  DM.Query2.ParamByName('codigo').AsInteger:=MKP_CODIGO;
  DM.Query2.ParamByName('total').AsFMTBCD:=DM.Query1.FieldByName('TOTAL').AsExtended;
  DM.Query2.ExecSQL;

  DM.Query1.Close;
end;

end.
