unit Firenet.Condicoes;

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
procedure AtualizarTotaisCondicao(DM: TDMFirenet; CPI_CONDICAO: Integer);

const
  PrefixLog='FIRENET.CONDICOES: ';
  Campos='CPG_CODIGO, CPG_DESCRICAO, CPG_DTATUALIZACAO, CPG_DTCADASTRO, CPG_FORMAPAGTO, CPG_MEIOPAGAMENTO, CPG_STATUS, CPG_TOTALPARCELAS, CPG_TOTALPORCENTAGEM, CPG_USUARIO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/condicoes', VerificarOperacao);
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
  Pagina, Registros, Skip, CPG_CODIGO: Integer;
  Where, CPG_DESCRICAO: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    CPG_CODIGO   :=Req.ContentFields.Field('CPG_CODIGO').AsInteger;
    CPG_DESCRICAO:=San(Req.ContentFields.Field('CPG_DESCRICAO').AsString);
    Where:='';
    if CPG_CODIGO<>0     then Where:=Where+' and CPG_CODIGO='+CPG_CODIGO.ToString;
    if CPG_DESCRICAO<>'' then Where:=Where+' and CPG_DESCRICAO like '+QuotedStr(CPG_DESCRICAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+CPG_CODIGO.ToString+', DESCRICAO: '+CPG_DESCRICAO);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CONDICOES where 1=1 '+Where+' order by CPG_DESCRICAO');
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
  CPG_CODIGO: Integer;
begin
  try
    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+CPG_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBCondicoes.ToJSONObject;

    DM.TBCondicoesItens.Open;
    Itens:=DM.TBCondicoesItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBCondicoes.Close;
    DM.TBCondicoesItens.Close;

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
  CPG_CODIGO: Integer;
  CPG_DESCRICAO, CPG_STATUS: String;
begin
  try
    CPG_CODIGO:=Req.ContentFields.Field('CPG_CODIGO').AsInteger;
    CPG_DESCRICAO:=San(Req.ContentFields.Field('CPG_DESCRICAO').AsString);
    CPG_STATUS:=San(Req.ContentFields.Field('CPG_STATUS').AsString);

    Obrigatorio(CPG_DESCRICAO,'Descrição');
    Obrigatorio(CPG_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+CPG_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCondicoes.Edit;
    DM.TBCondicoesCPG_ATUALIZAR.Value:='S';
    DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value:=San(Req.ContentFields.Field('CPG_BAIXAPRIMEIRAPARC').AsString);
    DM.TBCondicoesCPG_CODIGO.Value:=CPG_CODIGO;
    DM.TBCondicoesCPG_CONTA.Value:=Req.ContentFields.Field('CPG_CONTA').AsInteger;
    DM.TBCondicoesCPG_CUPOM.Value:=San(Req.ContentFields.Field('CPG_CUPOM').AsString);
    DM.TBCondicoesCPG_DESCPORC.Value:=Req.ContentFields.Field('CPG_DESCPORC').AsExtended;
    DM.TBCondicoesCPG_DESCRICAO.Value:=San(Req.ContentFields.Field('CPG_DESCRICAO').AsString);
    DM.TBCondicoesCPG_DESCRICAOCUPOM.Value:=San(Req.ContentFields.Field('CPG_DESCRICAOCUPOM').AsString);
    DM.TBCondicoesCPG_DTATUALIZACAO.Value:=Date;
    DM.TBCondicoesCPG_FORMAPAGTO.Value:=San(Req.ContentFields.Field('CPG_FORMAPAGTO').AsString);
    DM.TBCondicoesCPG_HRATUALIZACAO.Value:=Time;
    DM.TBCondicoesCPG_MEIOPAGAMENTO.Value:=San(Req.ContentFields.Field('CPG_MEIOPAGAMENTO').AsString);
    DM.TBCondicoesCPG_MENSAL.Value:=San(Req.ContentFields.Field('CPG_MENSAL').AsString);
    DM.TBCondicoesCPG_MOBILE.Value:=San(Req.ContentFields.Field('CPG_MOBILE').AsString);
    DM.TBCondicoesCPG_PARCELASIGUAIS.Value:=San(Req.ContentFields.Field('CPG_PARCELASIGUAIS').AsString);
    DM.TBCondicoesCPG_STATUS.Value:=CPG_STATUS;
    DM.TBCondicoesCPG_TIPOINTEGRACAO.Value:=San(Req.ContentFields.Field('CPG_TIPOINTEGRACAO').AsString);
    //DM.TBCondicoesCPG_TOTALPARCELAS.Value:=
    //DM.TBCondicoesCPG_TOTALPORCENTAGEM.Value:=
    DM.TBCondicoesCPG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBCondicoes.Post;

    Registro:=DM.TBCondicoes.ToJSONObject;
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
  CPG_DESCRICAO, CPG_STATUS: String;
begin
  try
    CPG_DESCRICAO:=San(Req.ContentFields.Field('CPG_DESCRICAO').AsString);
    CPG_STATUS:=San(Req.ContentFields.Field('CPG_STATUS').AsString);

    Obrigatorio(CPG_DESCRICAO,'Descrição');
    Obrigatorio(CPG_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBCondicoes.Open;
    DM.TBCondicoes.Insert;
    DM.TBCondicoesCPG_ATUALIZAR.Value:='S';
    DM.TBCondicoesCPG_BAIXARPRIMEIRAPARC.Value:=San(Req.ContentFields.Field('CPG_BAIXAPRIMEIRAPARC').AsString);
    //DM.TBCondicoesCPG_CODIGO.Value:=
    DM.TBCondicoesCPG_CONTA.Value:=Req.ContentFields.Field('CPG_CONTA').AsInteger;
    DM.TBCondicoesCPG_CUPOM.Value:=San(Req.ContentFields.Field('CPG_CUPOM').AsString);
    DM.TBCondicoesCPG_DESCPORC.Value:=Req.ContentFields.Field('CPG_DESCPORC').AsExtended;
    DM.TBCondicoesCPG_DESCRICAO.Value:=San(Req.ContentFields.Field('CPG_DESCRICAO').AsString);
    DM.TBCondicoesCPG_DESCRICAOCUPOM.Value:=San(Req.ContentFields.Field('CPG_DESCRICAOCUPOM').AsString);
    DM.TBCondicoesCPG_DTATUALIZACAO.Value:=Date;
    DM.TBCondicoesCPG_DTCADASTRO.Value:=Date;
    DM.TBCondicoesCPG_FORMAPAGTO.Value:=San(Req.ContentFields.Field('CPG_FORMAPAGTO').AsString);
    DM.TBCondicoesCPG_HRATUALIZACAO.Value:=Time;
    DM.TBCondicoesCPG_HRCADASTRO.Value:=Time;
    DM.TBCondicoesCPG_MEIOPAGAMENTO.Value:=San(Req.ContentFields.Field('CPG_MEIOPAGAMENTO').AsString);
    DM.TBCondicoesCPG_MENSAL.Value:=San(Req.ContentFields.Field('CPG_MENSAL').AsString);
    DM.TBCondicoesCPG_MOBILE.Value:=San(Req.ContentFields.Field('CPG_MOBILE').AsString);
    DM.TBCondicoesCPG_PARCELASIGUAIS.Value:=San(Req.ContentFields.Field('CPG_PARCELASIGUAIS').AsString);
    DM.TBCondicoesCPG_STATUS.Value:=CPG_STATUS;
    DM.TBCondicoesCPG_TIPOINTEGRACAO.Value:=San(Req.ContentFields.Field('CPG_TIPOINTEGRACAO').AsString);
    DM.TBCondicoesCPG_TOTALPARCELAS.Value:=0;
    DM.TBCondicoesCPG_TOTALPORCENTAGEM.Value:=0;
    DM.TBCondicoesCPG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBCondicoes.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBCondicoes.ToJSONObject);

    DM.TBCondicoes.Close;

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
  CPG_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);
    if CPG_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+CPG_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCondicoes.Delete;

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
  CPG_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CPG_CODIGO:=Req.ContentFields.Field('CPG_CODIGO').AsInteger;
    if CPG_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+CPG_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select CPG_CODIGO, CPG_DESCRICAO from CONDICOES where CPG_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=CPG_CODIGO;
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
  CPG_CODIGO, CPI_CODIGO: Integer;
begin
  try
    CPI_CODIGO:=SoNumeros(Req.ContentFields.Field('CPI_CODIGO').AsString);
    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Condição: '+CPG_CODIGO.ToString+' Item: '+CPI_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCondicoesItens.Open;
    DM.TBCondicoesItens.Locate('CPI_CODIGO',CPI_CODIGO,[]);

    Registro:=DM.TBCondicoesItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBCondicoes.Close;
    DM.TBCondicoesItens.Close;

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
  CPI_CODIGO, CPI_CONDICAO, CPI_DIAS: Integer;
  CPI_PORCENTAGEM: Extended;
begin
  try
    CPI_CODIGO:=SoNumeros(Req.ContentFields.Field('CPI_CODIGO').AsString);
    CPI_CONDICAO:=SoNumeros(Req.ContentFields.Field('CPI_CONDICAO').AsString);
    CPI_DIAS:=SoNumeros(Req.ContentFields.Field('CPI_DIAS').AsString);
    CPI_PORCENTAGEM:=Req.ContentFields.Field('CPI_PORCENTAGEM').AsExtended;

    Obrigatorio(CPI_CONDICAO.ToString,'Condição','0');
    Obrigatorio(CPI_DIAS.ToString,'Dias','0');
    Obrigatorio(CPI_PORCENTAGEM.ToString,'Porcentagem');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Condição: '+CPI_CONDICAO.ToString+' Item: '+CPI_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPI_CONDICAO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Condição não encontrada.');

    DM.TBCondicoesItens.Open;
    if not DM.TBCondicoesItens.Locate('CPI_CODIGO',CPI_CODIGO,[]) then
    raise Exception.Create('Erro ao encontrar o registro para alteração. '+CPI_CODIGO.ToString);

    DM.TBCondicoesItens.Edit;
    DM.TBCondicoesItensCPI_DIAS.Value:=CPI_DIAS;
    DM.TBCondicoesItensCPI_PORCENTAGEM.Value:=CPI_PORCENTAGEM;
    DM.TBCondicoesItens.Post;
    DM.TBCondicoesItens.Close;

    DM.TBCondicoes.Close;

    //Atualizar totais da condicao.
    AtualizarTotaisCondicao(DM, CPI_CONDICAO);

    Result:=Visualizar(DM,Req); //req contem CPG_CODIGO.

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
  CPG_CODIGO, CPI_DIAS: Integer;
  CPI_PORCENTAGEM: Extended;
begin
  try
    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);
    CPI_DIAS:=SoNumeros(Req.ContentFields.Field('CPI_DIAS').AsString);
    CPI_PORCENTAGEM:=Req.ContentFields.Field('CPI_PORCENTAGEM').AsExtended;

    Obrigatorio(CPG_CODIGO.ToString,'Condição','0');
    Obrigatorio(CPI_DIAS.ToString,'Dias','0');
    Obrigatorio(CPI_PORCENTAGEM.ToString,'Porcentagem');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirItem) Condição: '+CPG_CODIGO.ToString);

    DM.TBCondicoesItens.Open;
    DM.TBCondicoesItens.Insert;
    //DM.TBCondicoesCPG_CODIGO.Value:=
    DM.TBCondicoesItensCPI_CONDICAO.Value:=CPG_CODIGO;
    DM.TBCondicoesItensCPI_DIAS.Value:=CPI_DIAS;
    DM.TBCondicoesItensCPI_PORCENTAGEM.Value:=CPI_PORCENTAGEM;
    DM.TBCondicoesItens.Post;
    DM.TBCondicoesItens.Close;

    //Atualizar totais da condicao.
    AtualizarTotaisCondicao(DM, CPG_CODIGO);

    Result:=Visualizar(DM,Req); //req contem CPG_CODIGO.

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
  CPG_CODIGO, CPI_CODIGO: Integer;
begin
  try
    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);
    CPI_CODIGO:=SoNumeros(Req.ContentFields.Field('CPI_CODIGO').AsString);
    if CPG_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) '+CPI_CODIGO.ToString);

    DM.TBCondicoes.Close;
    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
    DM.TBCondicoes.Open;
    if DM.TBCondicoes.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBCondicoesItens.Open;
    if DM.TBCondicoesItens.Locate('CPI_CODIGO',CPI_CODIGO,[]) then
    DM.TBCondicoesItens.Delete else
    raise Exception.Create('Erro ao eliminar o registro '+CPI_CODIGO.ToString);

    AtualizarTotaisCondicao(DM,CPG_CODIGO);
    Result:=Visualizar(DM,Req); //req contem CPG_CODIGO.

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

procedure AtualizarTotaisCondicao(DM: TDMFirenet; CPI_CONDICAO: Integer);
begin
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select sum(CPI_PORCENTAGEM) as PORCENTAGEM, count(*) as PARCELAS from CONDICOESITENS where CPI_CONDICAO=:condicao');
  DM.Query1.ParamByName('condicao').AsInteger:=CPI_CONDICAO;
  DM.Query1.Open;

  DM.Query2.Close;
  DM.Query2.SQL.Clear;
  DM.Query2.SQL.Add('update CONDICOES set CPG_TOTALPARCELAS=:totalparcelas, CPG_TOTALPORCENTAGEM=:totalporcentagem where CPG_CODIGO=:codigo');
  DM.Query2.ParamByName('codigo').AsInteger:=CPI_CONDICAO;
  DM.Query2.ParamByName('totalporcentagem').AsFMTBCD:=DM.Query1.FieldByName('PORCENTAGEM').AsExtended;
  DM.Query2.ParamByName('totalparcelas').AsInteger:=DM.Query1.FieldByName('PARCELAS').AsInteger;
  DM.Query2.ExecSQL;

  DM.Query1.Close;
end;

end.
