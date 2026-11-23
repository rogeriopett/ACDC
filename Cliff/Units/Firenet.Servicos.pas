//Atualizacoes:
//2026.11.18 - Datas em aaaa-mm-dd (PettFieldDate do Brian): filtro do listar com .AsDate; SER_DTPREVISAO com SetData (vazio grava nulo) no inserir e no atualizar.
unit Firenet.Servicos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure AtualizarTotaisCondicao(DM: TDMFirenet; CPI_CONDICAO: Integer);

const
  PrefixLog='FIRENET.SERVICOS: ';
  Campos='SER_ANDAMENTO, SER_CODIGO, SER_CLIENTE, SER_DTENTRADA, SER_DTPREVISAO, SER_EQUIPAMENTO, SER_STATUS, '+
    'SER_TECNICO, SER_VALORTOTAL, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, EQP_SERIE, CLI_NOME, VEN_NOME';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/servicos', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMFirenet.Create(nil);

      Operacao:=San(Req.ContentFields.Field('op').AsString);

      if Operacao='listar'         then Res.Send( Listar(DM,Req)         ).Status(200) else
      if Operacao='visualizar'     then Res.Send( Visualizar(DM,Req)     ).Status(200) else
      if Operacao='atualizar'      then Res.Send( Atualizar(DM,Req)      ).Status(200) else
      if Operacao='inserir'        then Res.Send( Inserir(DM,Req)        ).Status(200) else
//      if Operacao='excluir'        then Res.Send( Excluir(DM,Req)        ).Status(200) else
//      if Operacao='localizar'      then Res.Send( Localizar(DM,Req)      ).Status(200) else

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
  Pagina, Registros, Skip: Integer;
  Where, Status, Andamento, Pesquisa: String;
  DataInicial, DataFinal: TDateTime;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Status     :=San(Req.ContentFields.Field('status').AsString);
    Andamento  :=San(Req.ContentFields.Field('andamento').AsString);
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal:=Req.ContentFields.Field('datafinal').AsDate;

    Where:='';
    if Status   <>'TODOS' then Where:=Where+' and SER_STATUS='+QuotedStr(Status);
    if Andamento<>'TODOS' then Where:=Where+' and SER_ANDAMENTO='+QuotedStr(Andamento);
    if Pesquisa <>''      then Where:=Where+' and CLI_NOME like '+QuotedStr(Pesquisa+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Status: '+Status+', Andamento: '+Andamento+', Pesquisa: '+Pesquisa);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from SERVICOS '+
      'left join EQUIPAMENTOS on SER_EQUIPAMENTO=EQP_CODIGO '+
      'left join CLIENTES on SER_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on SER_TECNICO=VEN_CODIGO '+
      'where SER_DTENTRADA between :datainicial and :datafinal '+Where+
      'order by CLI_NOME'
    );
    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
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
  SER_CODIGO: Integer;
begin
  try
    SER_CODIGO:=SoNumeros(Req.ContentFields.Field('SER_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+SER_CODIGO.ToString);

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SER_CODIGO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBServicosItens.Close;
    DM.TBServicosItens.Open;

    Registro:=DM.TBServicos.ToJSONObject;
    Itens:=DM.TBServicosItens.ToJSONArray;
    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBServicos.Close;
    DM.TBServicosItens.Close;

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
  SER_CODIGO, SER_EQUIPAMENTO, SER_TECNICO: Integer;
  //: String;
begin
  try
    SER_CODIGO     :=Req.ContentFields.Field('SER_CODIGO').AsInteger;
    SER_EQUIPAMENTO:=Req.ContentFields.Field('SER_EQUIPAMENTO').AsInteger;
    SER_TECNICO    :=Req.ContentFields.Field('SER_TECNICO').AsInteger;

    Obrigatorio(SER_CODIGO.ToString,'Código','0');
    Obrigatorio(SER_EQUIPAMENTO.ToString,'Equipamento','0');
    Obrigatorio(SER_TECNICO.ToString,'Técnico','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+SER_CODIGO.ToString);

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SER_CODIGO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBServicos.Edit;
    DM.TBServicosSER_ACESSORIOS.Value :=San(Req.ContentFields.Field('SER_ACESSORIOS').AsString);
    DM.TBServicosSER_ANDAMENTO.Value  :=San(Req.ContentFields.Field('SER_ANDAMENTO').AsString);
    DM.TBServicosSER_CONSERTO.Value   :=San(Req.ContentFields.Field('SER_CONSERTO').AsString,0);
    SetData(DM.TBServicosSER_DTPREVISAO, Req.ContentFields.Field('SER_DTPREVISAO').AsString);
    DM.TBServicosSER_EQUIPAMENTO.Value:=Req.ContentFields.Field('SER_EQUIPAMENTO').AsInteger;
    DM.TBServicosSER_KMATUAL.Value    :=Req.ContentFields.Field('SER_KMATUAL').AsInteger;
    DM.TBServicosSER_DEFEITO.Value    :=San(Req.ContentFields.Field('SER_DEFEITO').AsString,0);
    DM.TBServicosSER_TECNICO.Value    :=Req.ContentFields.Field('SER_TECNICO').AsInteger;
    DM.TBServicosSER_USUARIO.Value    :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBServicos.Post;

    DM.TBServicosItens.Close;
    DM.TBServicosItens.Open;

    Registro:=DM.TBServicos.ToJSONObject;
    Registro.AddPair('ITENS',DM.TBServicosItens.ToJSONArray);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBServicos.Close;
    DM.TBServicosItens.Close;
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
  SER_CLIENTE, SER_TECNICO, SER_EQUIPAMENTO: Integer;
begin
  try
    SER_CLIENTE    :=SoNumeros(Req.ContentFields.Field('SER_CLIENTE').AsString);
    SER_TECNICO    :=SoNumeros(Req.ContentFields.Field('SER_TECNICO').AsString);
    SER_EQUIPAMENTO:=SoNumeros(Req.ContentFields.Field('SER_EQUIPAMENTO').AsString);

    Obrigatorio(SER_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(SER_TECNICO.ToString,'Técnico','0');
    Obrigatorio(SER_EQUIPAMENTO.ToString,'Equipamento','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) Cliente: '+SER_CLIENTE.ToString+', Técnico: '+SER_TECNICO.ToString+', Equipamento: '+SER_EQUIPAMENTO.ToString);

    DM.TBServicos.Open;
    DM.TBServicos.Insert;
    DM.TBServicosSER_ABERTOPOR.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBServicosSER_ACESSORIOS.Value:=San(Req.ContentFields.Field('SER_ACESSORIOS').AsString);
    DM.TBServicosSER_CLIENTE.Value:=SER_CLIENTE;
    DM.TBServicosSER_CONSERTO.Value:='';
    DM.TBServicosSER_DEFEITO.Value:=San(Req.ContentFields.Field('SER_DEFEITO').AsString,0);
    SetData(DM.TBServicosSER_DTPREVISAO, Req.ContentFields.Field('SER_DTPREVISAO').AsString);
    DM.TBServicosSER_EQUIPAMENTO.Value:=SER_EQUIPAMENTO;
    DM.TBServicosSER_KMATUAL.Value:=SoNumeros(Req.ContentFields.Field('SER_KMATUAL').AsString);
    DM.TBServicosSER_TECNICO.Value:=SER_TECNICO;
    DM.TBServicosSER_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBServicos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBServicos.ToJSONObject);
    DM.TBServicos.Close;
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

//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var
//  CPG_CODIGO: Integer;
//  Retorno: TJSONObject;
//begin
//  try
//    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);
//    if CPG_CODIGO=0 then
//    raise Exception.Create('Código não informado');
//
//    FormMain.Logar(PrefixLog+'(excluir) '+CPG_CODIGO.ToString);
//
//    DM.TBCondicoes.Close;
//    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
//    DM.TBCondicoes.Open;
//    if DM.TBCondicoes.IsEmpty then
//    raise Exception.Create('Registro não encontrado.');
//
//    DM.TBCondicoes.Delete;
//
//    Retorno:=TJSONObject.Create;
//    Retorno.AddPair('erro','N');
//    Retorno.AddPair('msg','Registro eliminado com sucesso.');
//
//    Result:=Retorno;
//
//  except on ex:exception do
//    begin
//      Retorno:=TJSONObject.Create;
//      Retorno.AddPair('erro','S');
//      Retorno.AddPair('token','valido');
//      Retorno.AddPair('msg',ex.Message);
//      Result:=Retorno;
//    end;
//  end;
//end;

//function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var
//  CPG_CODIGO: Integer;
//  Retorno: TJSONObject;
//begin
//  try
//    CPG_CODIGO:=Req.ContentFields.Field('CPG_CODIGO').AsInteger;
//    if CPG_CODIGO.ToString='0' then
//    raise Exception.Create('Código não informado');
//
//    FormMain.Logar(PrefixLog+'(localizar) '+CPG_CODIGO.ToString);
//
//    DM.Query1.Close;
//    DM.Query1.SQL.Clear;
//    DM.Query1.SQL.Add('select CPG_CODIGO, CPG_DESCRICAO from CONDICOES where CPG_CODIGO=:codigo');
//    DM.Query1.ParamByName('codigo').AsInteger:=CPG_CODIGO;
//    DM.Query1.Open;
//    if DM.Query1.IsEmpty then
//    raise Exception.Create('Registro não localizado.');
//
//    Retorno:=TJSONObject.Create;
//    Retorno.AddPair('erro','N');
//    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
//    Result:=Retorno;
//
//  except on ex:exception do
//    begin
//      Retorno:=TJSONObject.Create;
//      Retorno.AddPair('erro','S');
//      Retorno.AddPair('token','valido');
//      Retorno.AddPair('msg',ex.Message);
//      Result:=Retorno;
//    end;
//  end;
//end;

//###### ITENS #######
function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  SER_CODIGO, SEI_CODIGO: Integer;
begin
  try
    SEI_CODIGO:=SoNumeros(Req.ContentFields.Field('SEI_CODIGO').AsString);
    SER_CODIGO:=SoNumeros(Req.ContentFields.Field('SER_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Serviço: '+SER_CODIGO.ToString+' Item: '+SEI_CODIGO.ToString);

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SER_CODIGO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBServicosItens.Open;
    DM.TBServicosItens.Locate('SEI_CODIGO',SEI_CODIGO,[]);

    Registro:=DM.TBServicosItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBServicos.Close;
    DM.TBServicosItens.Close;

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
  Retorno, Registro, Usuario: TJSONObject;
  SEI_CODIGO, SER_CODIGO: Integer;
  SEI_QUANTIDADE: Extended;
begin
  try
    SEI_CODIGO    :=SoNumeros(Req.ContentFields.Field('SEI_CODIGO').AsString);
    SER_CODIGO    :=SoNumeros(Req.ContentFields.Field('SER_CODIGO').AsString);
    SEI_QUANTIDADE:=Req.ContentFields.Field('SEI_QUANTIDADE').AsExtended;

    Obrigatorio(SER_CODIGO.ToString,'Serviço','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Serviço: '+SER_CODIGO.ToString+' Item: '+SEI_CODIGO.ToString);

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SER_CODIGO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Ordem de Serviço não encontrada.');

    DM.TBServicosItens.Open;
    if not DM.TBServicosItens.Locate('SEI_CODIGO',SEI_CODIGO,[]) then
    raise Exception.Create('Erro ao encontrar o registro para alteração. '+SEI_CODIGO.ToString);

    DM.TBServicosItens.Edit;
    DM.TBServicosItensSEI_COMPLEMENTO.Value:=San(Req.ContentFields.Field('SEI_COMPLEMENTO').AsString);
    DM.TBServicosItensSEI_DESCPORC.Value:=Req.ContentFields.Field('SEI_DESCPORC').AsExtended;
    DM.TBServicosItensSEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBServicosItensSEI_QUANTIDADE.Value:=SEI_QUANTIDADE;;
    DM.TBServicosItens.Post;

    Registro:=DM.TBServicos.ToJSONObject;
    Registro.AddPair('ITENS',DM.TBServicosItens.ToJSONArray);
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBServicos.Close;
    DM.TBServicosItens.Close;
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

function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  SEI_PRODUTO, SEI_SERVICO: Integer;
  SEI_QUANTIDADE: Extended;
begin
  try
    SEI_PRODUTO   :=SoNumeros(Req.ContentFields.Field('SEI_PRODUTO').AsString);
    SEI_SERVICO   :=SoNumeros(Req.ContentFields.Field('SEI_SERVICO').AsString);
    SEI_QUANTIDADE:=Req.ContentFields.Field('SEI_QUANTIDADE').AsExtended;

    Obrigatorio(SEI_PRODUTO.ToString,'Produto','0');
    Obrigatorio(SEI_SERVICO.ToString,'Código Serviço','0');
    Obrigatorio(SEI_QUANTIDADE.ToString,'Quantidade');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirItem) Serviço: '+SEI_SERVICO.ToString+', Produto: '+SEI_PRODUTO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=SEI_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não encontrado.');

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SEI_SERVICO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Serviço não encontrado.');

    DM.TBServicosItens.Close;
    DM.TBServicosItens.Open;
    DM.TBServicosItens.Insert;
    DM.TBServicosItensSEI_PRODUTO.Value:=SEI_PRODUTO;
    DM.TBServicosItensSEI_COMPLEMENTO.Value:=San(Req.ContentFields.Field('SEI_COMPLEMENTO').AsString);
    DM.TBServicosItensSEI_DESCPORC.Value:=Req.ContentFields.Field('SEI_DESCPORC').AsExtended;
    DM.TBServicosItensSEI_DESCRICAO.Value:=DM.TBProdutosPRO_NOME.Value;
    DM.TBServicosItensSEI_QUANTIDADE.Value:=SEI_QUANTIDADE;
    DM.TBServicosItens.Post;

    Registro:=DM.TBServicos.ToJSONObject;
    Registro.AddPair('ITENS',DM.TBServicosItens.ToJSONArray);
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBServicos.Close;
    DM.TBServicosItens.Close;

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

function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  SER_CODIGO, SEI_CODIGO: Integer;
begin
  try
    SER_CODIGO:=SoNumeros(Req.ContentFields.Field('SER_CODIGO').AsString);
    SEI_CODIGO:=SoNumeros(Req.ContentFields.Field('SEI_CODIGO').AsString);
    if SER_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) Serviço: '+SER_CODIGO.ToString);

    DM.TBServicos.Close;
    DM.TBServicos.ParamByName('codigo').AsInteger:=SER_CODIGO;
    DM.TBServicos.Open;
    if DM.TBServicos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBServicosItens.Open;
    if not DM.TBServicosItens.Locate('SEI_CODIGO',SEI_CODIGO,[]) then
    raise Exception.Create('Erro ao eliminar o registro '+SEI_CODIGO.ToString);

    DM.TBServicosItens.Delete;
    DM.CalcularTotaisServicos(True);
    Result:=Visualizar(DM,Req); //req contem SER_CODIGO.
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
