unit Firenet.Estoque;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Transferir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  Campos='EST_CLIENTE, EST_CODIGO, EST_DATA, EST_DESCRICAO, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR, '+
    'EST_NUMDOCTO, EST_PRODUTO, EST_QUANTIDADE, EST_QUANTIDADEREAL, EST_TIPODOCTO, EST_TRANSACAO, PRO_NOME';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/estoque', VerificarOperacao);
  FormMain.Logar('FIRENET.ESTOQUE: Registrou rotas.');
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
        FormMain.Logar('FIRENET.ESTOQUE: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='transferir' then Res.Send( Transferir(DM,Req) ).Status(200) else
      begin
        FormMain.Logar('FIRENET.ESTOQUE: sem op.');
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
  Pagina, Registros, Skip, EST_CODIGO, EST_PRODUTO: Integer;
  Where, EST_NUMDOCTO, PRO_NOME: String;
  DataInicial, DataFinal: TDate;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    EST_CODIGO :=Req.ContentFields.Field('EST_CODIGO').AsInteger;
    EST_PRODUTO:=SoNumeros(Req.ContentFields.Field('EST_PRODUTO').AsString);
    PRO_NOME   :=San(Req.ContentFields.Field('PRO_NOME').AsString);

    Where:=' (EST_DATA between :datainicial and :datafinal)';
    if EST_CODIGO<>0    then Where:=Where+' and EST_CODIGO='+EST_CODIGO.ToString;
    if EST_NUMDOCTO<>'' then Where:=Where+' and EST_NUMDOCTO like '+QuotedStr(EST_NUMDOCTO+'%');
    if PRO_NOME<>''     then Where:=Where+' and PRO_NOME like '+QuotedStr(PRO_NOME+'%');

    FormMain.Logar('FIRENET.ESTOQUE: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+EST_CODIGO.ToString+', PRODUTO: '+PRO_NOME+Where);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from ESTOQUE '+
      'left join CLIENTES on EST_CLIENTE=CLI_CODIGO '+
      'left join PRODUTOS on EST_PRODUTO=PRO_CODIGO '+
      'where '+Where+' order by EST_CODIGO desc');
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
  EST_CODIGO: Integer;
begin
  try
    EST_CODIGO:=SoNumeros(Req.ContentFields.Field('EST_CODIGO').AsString);

    FormMain.Logar('FIRENET.ESTOQUE: (visualizar) '+EST_CODIGO.ToString);

    DM.TBEstoque.Close;
    DM.TBEstoque.ParamByName('codigo').AsInteger:=EST_CODIGO;
    DM.TBEstoque.Open;
    if DM.TBEstoque.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBEstoque.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBEstoque.Close;

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
  EST_ALMOXARIFADO, EST_PRODUTO, EST_VENDEDOR: Integer;
  EST_DESCRICAO, EST_TRANSACAO: String;
  EST_QUANTIDADE, EST_ESTOQUEANTERIOR, EST_ESTOQUEPOSTERIOR: Extended;
  EST_DATA: TDate;
begin
  try
    EST_ALMOXARIFADO:=Req.ContentFields.Field('EST_ALMOXARIFADO').AsInteger;
    EST_DATA        :=Req.ContentFields.Field('EST_DATA').AsDate;
    EST_DESCRICAO   :=San(Req.ContentFields.Field('EST_DESCRICAO').AsString);
    EST_PRODUTO     :=Req.ContentFields.Field('EST_PRODUTO').AsInteger;
    EST_QUANTIDADE  :=Req.ContentFields.Field('EST_QUANTIDADE').AsExtended;
    EST_TRANSACAO   :=San(Req.ContentFields.Field('EST_TRANSACAO').AsString);
    EST_VENDEDOR    :=Req.ContentFields.Field('EST_VENDEDOR').AsInteger;

    Obrigatorio(EST_PRODUTO.ToString,'Produto');
    Obrigatorio(EST_ALMOXARIFADO.ToString,'Almoxarifado','0');
    Obrigatorio(DateToStr(EST_DATA),'Data');
    Obrigatorio(EST_DESCRICAO,'Descrição');
    Obrigatorio(EST_QUANTIDADE.ToString,'Quantidade','0');
    Obrigatorio(EST_VENDEDOR.ToString,'Vendedor','0');

    if EST_QUANTIDADE<=0 then
    raise Exception.Create('A quantidade nao pode ser negativa ou igual a zero.');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.ESTOQUE: (inserir) ');

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=EST_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não localizado.');

    EST_ESTOQUEANTERIOR:=DM.TBProdutosPRO_ESTOQUEATUAL.AsExtended;

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    if EST_TRANSACAO='E' then
    begin
      EST_ESTOQUEPOSTERIOR:=EST_ESTOQUEANTERIOR + EST_QUANTIDADE;
      DM.Query1.SQL.Add('update PRODUTOSQTDE set PRQ_QUANTIDADE=(PRQ_QUANTIDADE + :quantidade) where PRQ_PRODUTO=:produto and PRQ_ALMOXARIFADO=:almoxarifado');
    end else
    if EST_TRANSACAO='S' then
    begin
      EST_ESTOQUEPOSTERIOR:=EST_ESTOQUEANTERIOR - EST_QUANTIDADE;
      DM.Query1.SQL.Add('update PRODUTOSQTDE set PRQ_QUANTIDADE=(PRQ_QUANTIDADE - :quantidade) where PRQ_PRODUTO=:produto and PRQ_ALMOXARIFADO=:almoxarifado');
    end else
    raise Exception.Create('Transação de estoque inválida.');

    DM.TBEstoque.Open;
    DM.TBEstoque.Insert;
    DM.TBEstoqueEST_ALMOXARIFADO.Value:=EST_ALMOXARIFADO;
    DM.TBEstoqueEST_CLIENTE.Value:=Req.ContentFields.Field('EST_CLIENTE').AsInteger;
    //DM.TBEstoqueEST_CODIGO.Value:=
    DM.TBEstoqueEST_CONVERSAO.Value:=DM.TBProdutosPRO_CONVERSAO.AsExtended;
    DM.TBEstoqueEST_DATA.Value:=EST_DATA;
    DM.TBEstoqueEST_DESCRICAO.Value:=EST_DESCRICAO;
    DM.TBEstoqueEST_DTATUALIZACAO.Value:=Date;
    DM.TBEstoqueEST_DTCADASTRO.Value:=Date;
    DM.TBEstoqueEST_ESTOQUEANTERIOR.Value:=DM.TBProdutosPRO_ESTOQUEATUAL.Value;
    DM.TBEstoqueEST_ESTOQUEPOSTERIOR.Value:=EST_ESTOQUEPOSTERIOR;
    DM.TBEstoqueEST_FORNECEDOR.Value:=Req.ContentFields.Field('EST_FORNECEDOR').AsInteger;
    DM.TBEstoqueEST_HRATUALIZACAO.Value:=Time;
    DM.TBEstoqueEST_HRCADASTRO.Value:=Time;
    DM.TBEstoqueEST_NUMDOCTO.Value:=San(Req.ContentFields.Field('EST_NUMDOCTO').AsString);
    DM.TBEstoqueEST_OBSERVACOES.Value:=San(Req.ContentFields.Field('EST_OBSERVACOES').AsString,0);
    DM.TBEstoqueEST_PRODUTO.Value:=EST_PRODUTO;
    DM.TBEstoqueEST_PRODUTOREAL.Value:=DM.TBProdutosPRO_PRODUTOREAL.Value;
    DM.TBEstoqueEST_QUANTIDADE.Value:=EST_QUANTIDADE;
    DM.TBEstoqueEST_QUANTIDADEREAL.Value:=EST_QUANTIDADE * DM.TBProdutosPRO_CONVERSAO.Value;
    DM.TBEstoqueEST_TIPODOCTO.Value:=San(Req.ContentFields.Field('EST_TIPODOCTO').AsString);
    DM.TBEstoqueEST_TRANSACAO.Value:=EST_TRANSACAO;
    DM.TBEstoqueEST_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBEstoqueEST_VALORUNIT.Value:=Req.ContentFields.Field('EST_VALORUNIT').AsExtended;
    DM.TBEstoqueEST_VENDEDOR.Value:=EST_VENDEDOR;
    DM.TBEstoque.Post;

    DM.Query1.ParamByName('produto').AsInteger:=EST_PRODUTO;
    DM.Query1.ParamByName('quantidade').AsFMTBCD:=EST_QUANTIDADE;
    DM.Query1.ParamByName('almoxarifado').AsInteger:=Req.ContentFields.Field('EST_ALMOXARIFADO').AsInteger;
    DM.Query1.ExecSQL;

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('update PRODUTOS set PRO_ESTOQUEATUAL=(select sum(PRQ_QUANTIDADE) from PRODUTOSQTDE where PRQ_PRODUTO=:produto) where PRO_CODIGO=:produto');
    DM.Query1.ParamByName('produto').AsInteger:=EST_PRODUTO;
    DM.Query1.ExecSQL;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEstoque.ToJSONObject);

    DM.TBEstoque.Close;

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

function Transferir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  EST_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EST_CODIGO:=Req.ContentFields.Field('EST_CODIGO').AsInteger;
    if EST_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.ESTOQUE: (transferir) '+EST_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select EST_CODIGO, EST_DESCRICAO from ESTOQUE where EST_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=EST_CODIGO;
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
