unit Firenet.Naturezas;

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
  Campos='NAT_CODIGO, NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_DTATUALIZACAO, '+
    'NAT_DTCADASTRO, NAT_ENTRADASAIDA, NAT_INFORMADIFAL, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO, NAT_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/naturezas', VerificarOperacao);
  FormMain.Logar('FIRENET.NATUREZAS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.NATUREZAS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.NATUREZAS: sem op.');
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
  Pagina, Registros, Skip, NAT_CODIGO: Integer;
  Where, NAT_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    NAT_CODIGO   :=SoNumeros(Req.ContentFields.Field('NAT_CODIGO').AsString);
    NAT_DESCRICAO:=San(Req.ContentFields.Field('NAT_DESCRICAO').AsString);
    Where:='';
    if NAT_CODIGO<>0     then Where:=Where+' and NAT_CODIGO='+NAT_CODIGO.ToString;
    if NAT_DESCRICAO<>'' then Where:=Where+' and NAT_DESCRICAO like '+QuotedStr(NAT_DESCRICAO+'%');

    FormMain.Logar('FIRENET.NATUREZAS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+NAT_CODIGO.ToString+', DESCRICAO: '+NAT_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from NATUREZAS where 1=1 '+Where+' order by NAT_DESCRICAO');
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
  NAT_CODIGO: String;
begin
  try
    NAT_CODIGO:=San(Req.ContentFields.Field('NAT_CODIGO').AsString);

    FormMain.Logar('FIRENET.NATUREZAS: (visualizar) '+NAT_CODIGO);

    DM.TBNaturezas.Close;
    DM.TBNaturezas.ParamByName('codigo').AsString:=NAT_CODIGO;
    DM.TBNaturezas.Open;
    if DM.TBNaturezas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBNaturezas.ToJSONObject;
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
  NAT_CODIGO: Integer;
  NAT_DESCRICAO: String;
begin
  try
    NAT_CODIGO:=SoNumeros(Req.ContentFields.Field('NAT_CODIGO').AsString);
    NAT_DESCRICAO:=San(Req.ContentFields.Field('NAT_DESCRICAO').AsString);

    Obrigatorio(NAT_DESCRICAO,'Código');
    Obrigatorio(NAT_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NATUREZAS: (atualizar) '+NAT_CODIGO.ToString);

    DM.TBNaturezas.Close;
    DM.TBNaturezas.ParamByName('codigo').AsInteger:=NAT_CODIGO;
    DM.TBNaturezas.Open;
    if DM.TBNaturezas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBNaturezas.Edit;
    DM.TBNaturezasNAT_CALCULACOMISSAO.Value:=San(Req.ContentFields.Field('NAT_CALCULACOMISSAO').AsString);
    DM.TBNaturezasNAT_CALCULACREDITOSN.Value:=San(Req.ContentFields.Field('NAT_CALCULACREDITOSN').AsString);
    DM.TBNaturezasNAT_DESCRICAO.Value:=NAT_DESCRICAO;
    DM.TBNaturezasNAT_DESTACARIMPOSTOS.Value:=San(Req.ContentFields.Field('NAT_DESTACARIMPOSTOS').AsString);
    DM.TBNaturezasNAT_DTATUALIZACAO.Value:=Date;
    DM.TBNaturezasNAT_ENTRADASAIDA.Value:=San(Req.ContentFields.Field('NAT_ENTRADASAIDA').AsString);
    DM.TBNaturezasNAT_HRATUALIZACAO.Value:=Time;
    DM.TBNaturezasNAT_INFORMADIFAL.Value:=San(Req.ContentFields.Field('NAT_INFORMADIFAL').AsString);
    DM.TBNaturezasNAT_MOVIMENTAESTOQUE.Value:=San(Req.ContentFields.Field('NAT_MOVIMENTAESTOQUE').AsString);
    DM.TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value:=San(Req.ContentFields.Field('NAT_MOVIMENTAFINANCEIRO').AsString);
    DM.TBNaturezasNAT_OBSERVACOES.Value:=San(Req.ContentFields.Field('NAT_OBSERVACOES').AsString,0);
    DM.TBNaturezasNAT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBNaturezas.Post;

    Registro:=DM.TBNaturezas.ToJSONObject;
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
  NAT_CODIGO: Integer;
  NAT_DESCRICAO: String;
begin
  try
    NAT_CODIGO:=SoNumeros(Req.ContentFields.Field('NAT_CODIGO').AsString);
    NAT_DESCRICAO:=San(Req.ContentFields.Field('NAT_DESCRICAO').AsString);

    Obrigatorio(NAT_CODIGO.ToString,'Código','0');
    Obrigatorio(NAT_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.NATUREZAS: (inserir) '+NAT_CODIGO.ToString);

    DM.TBNaturezas.Open;
    DM.TBNaturezas.Insert;
    DM.TBNaturezasNAT_CALCULACOMISSAO.Value:=San(Req.ContentFields.Field('NAT_CALCULACOMISSAO').AsString);
    DM.TBNaturezasNAT_CALCULACREDITOSN.Value:=San(Req.ContentFields.Field('NAT_CALCULACREDITOSN').AsString);
    DM.TBNaturezasNAT_CODIGO.Value:=NAT_CODIGO;
    DM.TBNaturezasNAT_DESCRICAO.Value:=NAT_DESCRICAO;
    DM.TBNaturezasNAT_DESTACARIMPOSTOS.Value:=San(Req.ContentFields.Field('NAT_DESTACARIMPOSTOS').AsString);
    DM.TBNaturezasNAT_DTATUALIZACAO.Value:=Date;
    DM.TBNaturezasNAT_DTCADASTRO.Value:=Date;
    DM.TBNaturezasNAT_ENTRADASAIDA.Value:=San(Req.ContentFields.Field('NAT_ENTRADASAIDA').AsString);
    DM.TBNaturezasNAT_HRATUALIZACAO.Value:=Time;
    DM.TBNaturezasNAT_HRCADASTRO.Value:=Time;
    DM.TBNaturezasNAT_INFORMADIFAL.Value:=San(Req.ContentFields.Field('NAT_INFORMADIFAL').AsString);
    DM.TBNaturezasNAT_MOVIMENTAESTOQUE.Value:=San(Req.ContentFields.Field('NAT_MOVIMENTAESTOQUE').AsString);
    DM.TBNaturezasNAT_MOVIMENTAFINANCEIRO.Value:=San(Req.ContentFields.Field('NAT_MOVIMENTAFINANCEIRO').AsString);
    DM.TBNaturezasNAT_OBSERVACOES.Value:=San(Req.ContentFields.Field('NAT_OBSERVACOES').AsString,0);
    DM.TBNaturezasNAT_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBNaturezas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBNaturezas.ToJSONObject);

    DM.TBNaturezas.Close;

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
  NAT_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    NAT_CODIGO:=SoNumeros(Req.ContentFields.Field('NAT_CODIGO').AsString);
    if NAT_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.NATUREZAS: (excluir) '+NAT_CODIGO.ToString);

    DM.TBNaturezas.Close;
    DM.TBNaturezas.ParamByName('codigo').AsInteger:=NAT_CODIGO;
    DM.TBNaturezas.Open;
    if DM.TBNaturezas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBNaturezas.Delete;

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
  Retorno: TJSONObject;
  NAT_CODIGO: String;
begin
  try
    NAT_CODIGO:=San(Req.ContentFields.Field('NAT_CODIGO').AsString);
    if NAT_CODIGO='' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.NATUREZAS: (localizar) '+NAT_CODIGO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select NAT_CALCULACOMISSAO, NAT_CALCULACREDITOSN, NAT_CODIGO, NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, '+
      'NAT_ENTRADASAIDA, NAT_INFORMADIFAL, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO from NATUREZAS where NAT_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsString:=NAT_CODIGO;
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
