unit Firenet.Produtos;

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
function Estoque(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Duplicar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function CriarAlmoxarifados(DM: TDMFirenet; Produto: Integer): Boolean;

const
  PrefixLog='FIRENET.PRODUTOS: ';
  Campos='PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, '+
    'PRO_ALIQIPI, PRO_ALIQPIS, PRO_ALIQPISST, PRO_CEST, PRO_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, '+
    'PRO_COMPOEBASEICMSST, PRO_COMPOSTO, PRO_CONVERSAO, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_DESCMAX, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PRO_EXCECAO, PRO_FCI, '+
    'PRO_INCENTIVOISS, PRO_INDICADORISS, PRO_LOCALIZACAO, PRO_MODICMS, PRO_MODICMSST, PRO_NOME, PRO_OBSERVACOES, PRO_ORIGEM, PRO_PESO, PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_PRECO1, '+
    'PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_STATUS, PRO_TIPO, PRO_TIPOISS, PRO_UNIDADE, CLF_DESCRICAO, CLF_EXCECAO, GRU_DESCRICAO, ICM_DESCRICAO, IPI_DESCRICAO, '+
    'ISS_DESCRICAO, PIS.PIS_DESCRICAO as PIS_DESCRICAO, COFINS.PIS_DESCRICAO as PIS_DESCRICAO1';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/produtos', VerificarOperacao);
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
      if Operacao='estoque'    then Res.Send( Estoque(DM,Req)    ).Status(200) else
      if Operacao='parametros' then Res.Send( Parametros(DM,Req) ).Status(200) else
      if Operacao='duplicar'   then Res.Send( Duplicar(DM,Req)   ).Status(200) else
      begin
        FormMain.Logar(PrefixLog+'sem op.');
        raise Exception.Create('Recurso não encontrado.');
      end;

    except on ex:Exception do
      begin
        FormMain.Logar(PrefixLog+'(op) exception: '+ex.Message);
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
  Where, PRO_CODIGO, PRO_LOCALIZACAO, PRO_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina         :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    PRO_CODIGO     :=Req.ContentFields.Field('PRO_CODIGO').AsString;
    PRO_LOCALIZACAO:=San(Req.ContentFields.Field('PRO_LOCALIZACAO').AsString);
    PRO_NOME       :=San(Req.ContentFields.Field('PRO_NOME').AsString);
    Where:='';
    if PRO_CODIGO<>''      then Where:=Where+' and (PRO_CODIGO='+PRO_CODIGO+' or PRO_CODIGOBARRAS like '+QuotedStr(PRO_CODIGO+'%')+' or PRO_CODIGOFAB like '+QuotedStr(PRO_CODIGO+'%')+')';
    if PRO_NOME<>''        then Where:=Where+' and PRO_NOME like '+QuotedStr(PRO_NOME+'%');
    if PRO_LOCALIZACAO<>'' then Where:=Where+' and PRO_LOCALIZACAO like '+QuotedStr(PRO_LOCALIZACAO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+PRO_CODIGO+', NOME: '+PRO_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join CLASSFISCAL on PRO_CLASSFISCAL=CLF_CODIGO and PRO_EXCECAO=CLF_EXCECAO '+
      'left join ICMS on PRO_CSTICMS=ICM_CODIGO '+
      'left join IPI on PRO_CSTIPI=IPI_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join PISCOFINS as PIS on PRO_CSTPIS=PIS.PIS_CODIGO '+
      'left join PISCOFINS as COFINS on PRO_CSTCOFINS=COFINS.PIS_CODIGO '+
      'where 1=1 '+Where+' order by PRO_NOME');
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
      FormMain.Logar(PrefixLog+'(listar) exception: '+ex.Message);
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
  PRO_CODIGO: Integer;
begin
  try
    PRO_CODIGO:=SoNumeros(Req.ContentFields.Field('PRO_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+PRO_CODIGO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBProdutos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.Query1.Close;

    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(visualizar) exception: '+ex.Message);
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
  PRO_NOME, PRO_UNIDADE: String;
  PRO_CODIGO, PRO_FAMILIA, PRO_GRUPO, PRO_MARCA, PRO_FORNECEDOR: Integer;
begin
  try
    PRO_CODIGO    :=Req.ContentFields.Field('PRO_CODIGO').AsInteger;
    PRO_NOME      :=San(Req.ContentFields.Field('PRO_NOME').AsString);
    PRO_FAMILIA   :=Req.ContentFields.Field('PRO_FAMILIA').AsInteger;
    PRO_GRUPO     :=Req.ContentFields.Field('PRO_GRUPO').AsInteger;
    PRO_MARCA     :=Req.ContentFields.Field('PRO_MARCA').AsInteger;
    PRO_FORNECEDOR:=Req.ContentFields.Field('PRO_FORNECEDOR').AsInteger;
    PRO_UNIDADE   :=San(Req.ContentFields.Field('PRO_UNIDADE').AsString);

    Obrigatorio(PRO_NOME,'NOME');
    Obrigatorio(PRO_FAMILIA.ToString,'Família','0');
    Obrigatorio(PRO_GRUPO.ToString,'Grupo','0');
    Obrigatorio(PRO_MARCA.ToString,'Marca','0');
    Obrigatorio(PRO_FORNECEDOR.ToString,'Fornecedor','0');
    Obrigatorio(PRO_UNIDADE,'Unidade');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+PRO_CODIGO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBProdutos.Edit;
    {$REGION 'Campos Produtos'}
    DM.TBProdutosPRO_ALIQCOFINS.Value:=Req.ContentFields.Field('PRO_ALIQCOFINS').AsExtended;
    DM.TBProdutosPRO_ALIQCOFINSST.Value:=Req.ContentFields.Field('PRO_ALIQCOFINSST').AsExtended;
    DM.TBProdutosPRO_ALIQICMS.Value:=Req.ContentFields.Field('PRO_ALIQICMS').AsExtended;
    DM.TBProdutosPRO_ALIQICMSADICST.Value:=Req.ContentFields.Field('PRO_ALIQICMSADICST').AsExtended;
    DM.TBProdutosPRO_ALIQICMSRED.Value:=Req.ContentFields.Field('PRO_ALIQICMSRED').AsExtended;
    DM.TBProdutosPRO_ALIQICMSST.Value:=Req.ContentFields.Field('PRO_ALIQICMSST').AsExtended;
    DM.TBProdutosPRO_ALIQIPI.Value:=Req.ContentFields.Field('PRO_ALIQIPI').AsExtended;
    DM.TBProdutosPRO_ALIQISS.Value:=Req.ContentFields.Field('PRO_ALIQISS').AsExtended;
    DM.TBProdutosPRO_ALIQOUTROS.Value:=Req.ContentFields.Field('PRO_ALIQOUTROS').AsExtended;
    DM.TBProdutosPRO_ALIQPIS.Value:=Req.ContentFields.Field('PRO_ALIQPIS').AsExtended;
    DM.TBProdutosPRO_ALIQPISST.Value:=Req.ContentFields.Field('PRO_ALIQPISST').AsExtended;
    DM.TBProdutosPRO_ALTURA.Value:=Req.ContentFields.Field('PRO_ALTURA').AsInteger;
    DM.TBProdutosPRO_ATUALIZAR.Value:='S';
    //DM.TBProdutosPRO_ATUALIZATABELA.Value:='S';
    DM.TBProdutosPRO_CEST.Value:=San(Req.ContentFields.Field('PRO_CEST').AsString);
    DM.TBProdutosPRO_CFOP.Value:=Req.ContentFields.Field('PRO_CFOP').AsInteger;
    DM.TBProdutosPRO_CFOPFORA.Value:=Req.ContentFields.Field('PRO_CFOPFORA').AsInteger;
    DM.TBProdutosPRO_CLASSFISCAL.Value:=San(Req.ContentFields.Field('PRO_CLASSFISCAL').AsString);
    //DM.TBProdutosPRO_CODIGO.Value:=
    DM.TBProdutosPRO_CODIGOBARRAS.Value:=San(Req.ContentFields.Field('PRO_CODIGOBARRAS').AsString);
    DM.TBProdutosPRO_CODIGOFAB.Value:=San(Req.ContentFields.Field('PRO_CODIGOFAB').AsString);
    DM.TBProdutosPRO_COMISSAO.Value:=Req.ContentFields.Field('PRO_COMISSAO').AsExtended;
    DM.TBProdutosPRO_COMPOEBASEICMS.Value:=San(Req.ContentFields.Field('PRO_COMPOEBASEICMS').AsString);
    DM.TBProdutosPRO_COMPOEBASEICMSST.Value:=San(Req.ContentFields.Field('PRO_COMPOEBASEICMSST').AsString);
    DM.TBProdutosPRO_COMPOSTO.Value:='N';
    DM.TBProdutosPRO_CONVERSAO.Value:=Req.ContentFields.Field('PRO_CONVERSAO').AsExtended;
    DM.TBProdutosPRO_CORSABOR.Value:=San(Req.ContentFields.Field('PRO_CORSABOR').AsString);
    DM.TBProdutosPRO_CSTCOFINS.Value:=Req.ContentFields.Field('PRO_CSTCOFINS').AsInteger;
    DM.TBProdutosPRO_CSTICMS.Value:=Req.ContentFields.Field('PRO_CSTICMS').AsInteger;
    DM.TBProdutosPRO_CSTIPI.Value:=Req.ContentFields.Field('PRO_CSTIPI').AsInteger;
    DM.TBProdutosPRO_CSTPIS.Value:=Req.ContentFields.Field('PRO_CSTPIS').AsInteger;
    DM.TBProdutosPRO_CUBICO.Value:=Req.ContentFields.Field('PRO_ALTURA').AsInteger * Req.ContentFields.Field('PRO_LARGURA').AsInteger * Req.ContentFields.Field('PRO_PROFUNDIDADE').AsInteger;
    DM.TBProdutosPRO_DESCMAX.Value:=Req.ContentFields.Field('PRO_DESCMAX').AsExtended;
    DM.TBProdutosPRO_DESCRICAO.Value:=San(Req.ContentFields.Field('PRO_DESCRICAO').AsString,0);
    DM.TBProdutosPRO_DTATUALIZACAO.Value:=Date;
    //DM.TBProdutosPRO_DTCADASTRO.Value:=Date;
    //DM.TBProdutosPRO_DTULTCOMPRA.Value:=
    //DM.TBProdutosPRO_DTULTVENDA.Value:=
    DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value:=Req.ContentFields.Field('PRO_ENQUADRAMENTOIPI').AsInteger;
    //DM.TBProdutosPRO_ESTOQUEATUAL.Value:=0;
    DM.TBProdutosPRO_ESTOQUEMAX.Value:=Req.ContentFields.Field('PRO_ESTOQUEMAX').AsExtended;
    DM.TBProdutosPRO_ESTOQUEMIN.Value:=Req.ContentFields.Field('PRO_ESTOQUEMIN').AsExtended;
    DM.TBProdutosPRO_EXCECAO.Value:=Req.ContentFields.Field('PRO_EXCECAO').AsInteger;
    DM.TBProdutosPRO_FAMILIA.Value:=PRO_FAMILIA;
    DM.TBProdutosPRO_FCI.Value:=San(Req.ContentFields.Field('PRO_FCI').AsString);
    DM.TBProdutosPRO_FORNECEDOR.Value:=PRO_FORNECEDOR;
    DM.TBProdutosPRO_GENERO.Value:=Req.ContentFields.Field('PRO_GENERO').AsInteger;
    DM.TBProdutosPRO_GRUPO.Value:=PRO_GRUPO;
    DM.TBProdutosPRO_HRATUALIZACAO.Value:=Time;
    //DM.TBProdutosPRO_HRCADASTRO.Value:=Time;
    DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value:=San(Req.ContentFields.Field('PRO_ICMSALIQUOTAPOR').AsString);
    DM.TBProdutosPRO_INCENTIVOISS.Value:=San(Req.ContentFields.Field('PRO_INCENTIVOISS').AsString);
    DM.TBProdutosPRO_INDICADORISS.Value:=San(Req.ContentFields.Field('PRO_INDICADORISS').AsString);
    DM.TBProdutosPRO_INTERNET.Value:=San(Req.ContentFields.Field('PRO_INTERNET').AsString);
    DM.TBProdutosPRO_LARGURA.Value:=Req.ContentFields.Field('PRO_LARGURA').AsInteger;
    DM.TBProdutosPRO_LOCALIZACAO.Value:=San(Req.ContentFields.Field('PRO_LOCALIZACAO').AsString);
    DM.TBProdutosPRO_MARCA.Value:=PRO_MARCA;
    //DM.TBProdutosPRO_MARGEM.Value:=DM.TBParametrosPAR_MARGEMPADRAO.Value;
    //DM.TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
    //DM.TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
    //DM.TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
    //DM.TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
    //DM.TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
    //DM.TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
    //DM.TBProdutosPRO_MARKUP.Value:=Req.ContentFields.Field('PRO_MARKUP').AsExtended;
    //DM.TBProdutosPRO_MARKUPCODIGO.Value:=Req.ContentFields.Field('PRO_MARKUPCODIGO').AsInteger;
    DM.TBProdutosPRO_MODICMS.Value:=San(Req.ContentFields.Field('PRO_MODICMS').AsString);
    DM.TBProdutosPRO_MODICMSST.Value:=San(Req.ContentFields.Field('PRO_MODICMSST').AsString);
    DM.TBProdutosPRO_NOME.Value:=PRO_NOME;
    DM.TBProdutosPRO_OBSERVACOES.Value:=San(Req.ContentFields.Field('PRO_OBSERVACOES').AsString,0);
    DM.TBProdutosPRO_OFERTA.Value:=San(Req.ContentFields.Field('PRO_OFERTA').AsString);
    DM.TBProdutosPRO_ORIGEM.Value:=San(Req.ContentFields.Field('PRO_ORIGEM').AsString);
    DM.TBProdutosPRO_PALAVRASCHAVE.Value:=San(Req.ContentFields.Field('PRO_PALAVRASCHAVE').AsString);
    DM.TBProdutosPRO_PESAVEL.Value:=San(Req.ContentFields.Field('PRO_PESAVEL').AsString);
    DM.TBProdutosPRO_PESO.Value:=Req.ContentFields.Field('PRO_PESO').AsExtended;
    //DM.TBProdutosPRO_PRECO1.Value:=0;
    //DM.TBProdutosPRO_PRECO2.Value:=0;
    //DM.TBProdutosPRO_PRECO3.Value:=0;
    //DM.TBProdutosPRO_PRECO4.Value:=0;
    //DM.TBProdutosPRO_PRECO5.Value:=0;
    //DM.TBProdutosPRO_PRECO6.Value:=0;
    //DM.TBProdutosPRO_PRECOCUSTO.Value:=0;
    //DM.TBProdutosPRO_PRECOCUSTOCOMP.Value:=0;
    //DM.TBProdutosPRO_PRECOCUSTOMEDIO.Value:=0;
    //DM.TBProdutosPRO_PRECOCUSTOULT.Value:=0;
    //DM.TBProdutosPRO_PRECOVENDA.Value:=0;
    //DM.TBProdutosPRO_PRECOVENDAMEDIO.Value:=0;
    //DM.TBProdutosPRO_PRECOVENDAULT.Value:=0;
    DM.TBProdutosPRO_PRODUCAO.Value:=San(Req.ContentFields.Field('PRO_PRODUCAO').AsString);
    DM.TBProdutosPRO_PRODUTOREAL.Value:=Req.ContentFields.Field('PRO_PRODUTOREAL').AsInteger;
    DM.TBProdutosPRO_PROFUNDIDADE.Value:=Req.ContentFields.Field('PRO_PROFUNDIDADE').AsInteger;
    DM.TBProdutosPRO_REGISTROMS.Value:=San(Req.ContentFields.Field('PRO_REGISTROMS').AsString);
    DM.TBProdutosPRO_STATUS.Value:=San(Req.ContentFields.Field('PRO_STATUS').AsString);
    DM.TBProdutosPRO_SUBSTITUICAOTRIB.Value:=San(Req.ContentFields.Field('PRO_SUBSTITUICAOTRIB').AsString);
    //DM.TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
    //DM.TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
    //DM.TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
    //DM.TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
    //DM.TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
    //DM.TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
    DM.TBProdutosPRO_TAMANHO.Value:=San(Req.ContentFields.Field('PRO_TAMANHO').AsString);
    DM.TBProdutosPRO_TIPO.Value:=San(Req.ContentFields.Field('PRO_TIPO').AsString);
    DM.TBProdutosPRO_TIPOISS.Value:=San(Req.ContentFields.Field('PRO_TIPOISS').AsString);
    DM.TBProdutosPRO_TIPOITEM.Value:=San(Req.ContentFields.Field('PRO_TIPOITEM').AsString);
    DM.TBProdutosPRO_TRIBUTO.Value:=San(Req.ContentFields.Field('PRO_TRIBUTO').AsString);
    DM.TBProdutosPRO_TROCA.Value:=San(Req.ContentFields.Field('PRO_TROCA').AsString);
    DM.TBProdutosPRO_UNIDADE.Value:=PRO_UNIDADE;
    DM.TBProdutosPRO_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    {$ENDREGION}
    DM.TBProdutos.Post;

    Registro:=DM.TBProdutos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(atualizar) exception: '+ex.Message);
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
  PRO_NOME, PRO_UNIDADE: String;
  PRO_FAMILIA, PRO_GRUPO, PRO_MARCA, PRO_FORNECEDOR: Integer;
begin
  try
    PRO_NOME      :=San(Req.ContentFields.Field('PRO_NOME').AsString);
    PRO_FAMILIA   :=Req.ContentFields.Field('PRO_FAMILIA').AsInteger;
    PRO_GRUPO     :=Req.ContentFields.Field('PRO_GRUPO').AsInteger;
    PRO_MARCA     :=Req.ContentFields.Field('PRO_MARCA').AsInteger;
    PRO_FORNECEDOR:=Req.ContentFields.Field('PRO_FORNECEDOR').AsInteger;
    PRO_UNIDADE   :=San(Req.ContentFields.Field('PRO_UNIDADE').AsString);

    Obrigatorio(PRO_NOME,'NOME');
    Obrigatorio(PRO_FAMILIA.ToString,'Família','0');
    Obrigatorio(PRO_GRUPO.ToString,'Grupo','0');
    Obrigatorio(PRO_MARCA.ToString,'Marca','0');
    Obrigatorio(PRO_FORNECEDOR.ToString,'Fornecedor','0');
    Obrigatorio(PRO_UNIDADE,'Unidade');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBTabPreco.Open;
    DM.TBParametros.Open;

    DM.TBProdutos.Open;
    DM.TBProdutos.Insert;
    {$REGION 'Campos Produtos'}
    DM.TBProdutosPRO_ALIQCOFINS.Value:=Req.ContentFields.Field('PRO_ALIQCOFINS').AsExtended;
    DM.TBProdutosPRO_ALIQCOFINSST.Value:=Req.ContentFields.Field('PRO_ALIQCOFINSST').AsExtended;
    DM.TBProdutosPRO_ALIQICMS.Value:=Req.ContentFields.Field('PRO_ALIQICMS').AsExtended;
    DM.TBProdutosPRO_ALIQICMSADICST.Value:=Req.ContentFields.Field('PRO_ALIQICMSADICST').AsExtended;
    DM.TBProdutosPRO_ALIQICMSRED.Value:=Req.ContentFields.Field('PRO_ALIQICMSRED').AsExtended;
    DM.TBProdutosPRO_ALIQICMSST.Value:=Req.ContentFields.Field('PRO_ALIQICMSST').AsExtended;
    DM.TBProdutosPRO_ALIQIPI.Value:=Req.ContentFields.Field('PRO_ALIQIPI').AsExtended;
    DM.TBProdutosPRO_ALIQISS.Value:=Req.ContentFields.Field('PRO_ALIQISS').AsExtended;
    DM.TBProdutosPRO_ALIQOUTROS.Value:=Req.ContentFields.Field('PRO_ALIQOUTROS').AsExtended;
    DM.TBProdutosPRO_ALIQPIS.Value:=Req.ContentFields.Field('PRO_ALIQPIS').AsExtended;
    DM.TBProdutosPRO_ALIQPISST.Value:=Req.ContentFields.Field('PRO_ALIQPISST').AsExtended;
    DM.TBProdutosPRO_ALTURA.Value:=Req.ContentFields.Field('PRO_ALTURA').AsInteger;
    DM.TBProdutosPRO_ATUALIZAR.Value:='S';
    DM.TBProdutosPRO_ATUALIZATABELA.Value:='S';
    DM.TBProdutosPRO_CEST.Value:=San(Req.ContentFields.Field('PRO_CEST').AsString);
    DM.TBProdutosPRO_CFOP.Value:=Req.ContentFields.Field('PRO_CFOP').AsInteger;
    DM.TBProdutosPRO_CFOPFORA.Value:=Req.ContentFields.Field('PRO_CFOPFORA').AsInteger;
    DM.TBProdutosPRO_CLASSFISCAL.Value:=San(Req.ContentFields.Field('PRO_CLASSFISCAL').AsString);
    //DM.TBProdutosPRO_CODIGO.Value:=
    DM.TBProdutosPRO_CODIGOBARRAS.Value:=San(Req.ContentFields.Field('PRO_CODIGOBARRAS').AsString);
    DM.TBProdutosPRO_CODIGOFAB.Value:=San(Req.ContentFields.Field('PRO_CODIGOFAB').AsString);
    DM.TBProdutosPRO_COMISSAO.Value:=Req.ContentFields.Field('PRO_COMISSAO').AsExtended;
    DM.TBProdutosPRO_COMPOEBASEICMS.Value:=San(Req.ContentFields.Field('PRO_COMPOEBASEICMS').AsString);
    DM.TBProdutosPRO_COMPOEBASEICMSST.Value:=San(Req.ContentFields.Field('PRO_COMPOEBASEICMSST').AsString);
    DM.TBProdutosPRO_COMPOSTO.Value:='N';
    DM.TBProdutosPRO_CONVERSAO.Value:=Req.ContentFields.Field('PRO_CONVERSAO').AsExtended;
    DM.TBProdutosPRO_CORSABOR.Value:=San(Req.ContentFields.Field('PRO_CORSABOR').AsString);
    DM.TBProdutosPRO_CSTCOFINS.Value:=Req.ContentFields.Field('PRO_CSTCOFINS').AsInteger;
    DM.TBProdutosPRO_CSTICMS.Value:=Req.ContentFields.Field('PRO_CSTICMS').AsInteger;
    DM.TBProdutosPRO_CSTIPI.Value:=Req.ContentFields.Field('PRO_CSTIPI').AsInteger;
    DM.TBProdutosPRO_CSTPIS.Value:=Req.ContentFields.Field('PRO_CSTPIS').AsInteger;
    DM.TBProdutosPRO_CUBICO.Value:=Req.ContentFields.Field('PRO_ALTURA').AsInteger * Req.ContentFields.Field('PRO_LARGURA').AsInteger * Req.ContentFields.Field('PRO_PROFUNDIDADE').AsInteger;
    DM.TBProdutosPRO_DESCMAX.Value:=Req.ContentFields.Field('PRO_DESCMAX').AsExtended;
    DM.TBProdutosPRO_DESCRICAO.Value:=San(Req.ContentFields.Field('PRO_DESCRICAO').AsString,0);
    DM.TBProdutosPRO_DTATUALIZACAO.Value:=Date;
    DM.TBProdutosPRO_DTCADASTRO.Value:=Date;
    //DM.TBProdutosPRO_DTULTCOMPRA.Value:=
    //DM.TBProdutosPRO_DTULTVENDA.Value:=
    DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value:=Req.ContentFields.Field('PRO_ENQUADRAMENTOIPI').AsInteger;
    DM.TBProdutosPRO_ESTOQUEATUAL.Value:=0;
    DM.TBProdutosPRO_ESTOQUEMAX.Value:=Req.ContentFields.Field('PRO_ESTOQUEMAX').AsExtended;
    DM.TBProdutosPRO_ESTOQUEMIN.Value:=Req.ContentFields.Field('PRO_ESTOQUEMIN').AsExtended;
    DM.TBProdutosPRO_EXCECAO.Value:=Req.ContentFields.Field('PRO_EXCECAO').AsInteger;
    DM.TBProdutosPRO_FAMILIA.Value:=PRO_FAMILIA;
    DM.TBProdutosPRO_FCI.Value:=San(Req.ContentFields.Field('PRO_FCI').AsString);
    DM.TBProdutosPRO_FORNECEDOR.Value:=PRO_FORNECEDOR;
    DM.TBProdutosPRO_GENERO.Value:=Req.ContentFields.Field('PRO_GENERO').AsInteger;
    DM.TBProdutosPRO_GRUPO.Value:=PRO_GRUPO;
    DM.TBProdutosPRO_HRATUALIZACAO.Value:=Time;
    DM.TBProdutosPRO_HRCADASTRO.Value:=Time;
    DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value:=San(Req.ContentFields.Field('PRO_ICMSALIQUOTAPOR').AsString);
    DM.TBProdutosPRO_INCENTIVOISS.Value:=San(Req.ContentFields.Field('PRO_INCENTIVOISS').AsString);
    DM.TBProdutosPRO_INDICADORISS.Value:=San(Req.ContentFields.Field('PRO_INDICADORISS').AsString);
    DM.TBProdutosPRO_INTERNET.Value:=San(Req.ContentFields.Field('PRO_INTERNET').AsString);
    DM.TBProdutosPRO_LARGURA.Value:=Req.ContentFields.Field('PRO_LARGURA').AsInteger;
    DM.TBProdutosPRO_LOCALIZACAO.Value:=San(Req.ContentFields.Field('PRO_LOCALIZACAO').AsString);
    DM.TBProdutosPRO_MARCA.Value:=PRO_MARCA;
    DM.TBProdutosPRO_MARGEM.Value:=DM.TBParametrosPAR_MARGEMPADRAO.Value;
    DM.TBProdutosPRO_MARGEM1.Value:=DM.TBTabPrecoTAB_MARGEM1.Value;
    DM.TBProdutosPRO_MARGEM2.Value:=DM.TBTabPrecoTAB_MARGEM2.Value;
    DM.TBProdutosPRO_MARGEM3.Value:=DM.TBTabPrecoTAB_MARGEM3.Value;
    DM.TBProdutosPRO_MARGEM4.Value:=DM.TBTabPrecoTAB_MARGEM4.Value;
    DM.TBProdutosPRO_MARGEM5.Value:=DM.TBTabPrecoTAB_MARGEM5.Value;
    DM.TBProdutosPRO_MARGEM6.Value:=DM.TBTabPrecoTAB_MARGEM6.Value;
    DM.TBProdutosPRO_MARKUP.Value:=Req.ContentFields.Field('PRO_MARKUP').AsExtended;
    DM.TBProdutosPRO_MARKUPCODIGO.Value:=Req.ContentFields.Field('PRO_MARKUPCODIGO').AsInteger;
    DM.TBProdutosPRO_MODICMS.Value:=San(Req.ContentFields.Field('PRO_MODICMS').AsString);
    DM.TBProdutosPRO_MODICMSST.Value:=San(Req.ContentFields.Field('PRO_MODICMSST').AsString);
    DM.TBProdutosPRO_NOME.Value:=PRO_NOME;
    DM.TBProdutosPRO_OBSERVACOES.Value:=San(Req.ContentFields.Field('PRO_OBSERVACOES').AsString,0);
    DM.TBProdutosPRO_OFERTA.Value:=San(Req.ContentFields.Field('PRO_OFERTA').AsString);
    DM.TBProdutosPRO_ORIGEM.Value:=San(Req.ContentFields.Field('PRO_ORIGEM').AsString);
    DM.TBProdutosPRO_PALAVRASCHAVE.Value:=San(Req.ContentFields.Field('PRO_PALAVRASCHAVE').AsString);
    DM.TBProdutosPRO_PESAVEL.Value:=San(Req.ContentFields.Field('PRO_PESAVEL').AsString);
    DM.TBProdutosPRO_PESO.Value:=Req.ContentFields.Field('PRO_PESO').AsExtended;
    DM.TBProdutosPRO_PRECO1.Value:=0;
    DM.TBProdutosPRO_PRECO2.Value:=0;
    DM.TBProdutosPRO_PRECO3.Value:=0;
    DM.TBProdutosPRO_PRECO4.Value:=0;
    DM.TBProdutosPRO_PRECO5.Value:=0;
    DM.TBProdutosPRO_PRECO6.Value:=0;
    DM.TBProdutosPRO_PRECOCUSTO.Value:=0;
    DM.TBProdutosPRO_PRECOCUSTOCOMP.Value:=0;
    DM.TBProdutosPRO_PRECOCUSTOMEDIO.Value:=0;
    DM.TBProdutosPRO_PRECOCUSTOULT.Value:=0;
    DM.TBProdutosPRO_PRECOVENDA.Value:=0;
    DM.TBProdutosPRO_PRECOVENDAMEDIO.Value:=0;
    DM.TBProdutosPRO_PRECOVENDAULT.Value:=0;
    DM.TBProdutosPRO_PRODUCAO.Value:=San(Req.ContentFields.Field('PRO_PRODUCAO').AsString);
    DM.TBProdutosPRO_PRODUTOREAL.Value:=Req.ContentFields.Field('PRO_PRODUTOREAL').AsInteger;
    DM.TBProdutosPRO_PROFUNDIDADE.Value:=Req.ContentFields.Field('PRO_PROFUNDIDADE').AsInteger;
    DM.TBProdutosPRO_REGISTROMS.Value:=San(Req.ContentFields.Field('PRO_REGISTROMS').AsString);
    DM.TBProdutosPRO_REGRAFISCAL.Value:=1; //ver o que fazer... San(Req.ContentFields.Field('PRO_REGISTROMS').AsString);
    DM.TBProdutosPRO_STATUS.Value:=San(Req.ContentFields.Field('PRO_STATUS').AsString);
    DM.TBProdutosPRO_SUBSTITUICAOTRIB.Value:=San(Req.ContentFields.Field('PRO_SUBSTITUICAOTRIB').AsString);
    DM.TBProdutosPRO_TABPRECO1.Value:=DM.TBTabPrecoTAB_DESCRICAO1.Value;
    DM.TBProdutosPRO_TABPRECO2.Value:=DM.TBTabPrecoTAB_DESCRICAO2.Value;
    DM.TBProdutosPRO_TABPRECO3.Value:=DM.TBTabPrecoTAB_DESCRICAO3.Value;
    DM.TBProdutosPRO_TABPRECO4.Value:=DM.TBTabPrecoTAB_DESCRICAO4.Value;
    DM.TBProdutosPRO_TABPRECO5.Value:=DM.TBTabPrecoTAB_DESCRICAO5.Value;
    DM.TBProdutosPRO_TABPRECO6.Value:=DM.TBTabPrecoTAB_DESCRICAO6.Value;
    DM.TBProdutosPRO_TAMANHO.Value:=San(Req.ContentFields.Field('PRO_TAMANHO').AsString);
    DM.TBProdutosPRO_TIPO.Value:=San(Req.ContentFields.Field('PRO_TIPO').AsString);
    DM.TBProdutosPRO_TIPOISS.Value:=San(Req.ContentFields.Field('PRO_TIPOISS').AsString);
    DM.TBProdutosPRO_TIPOITEM.Value:=San(Req.ContentFields.Field('PRO_TIPOITEM').AsString);
    DM.TBProdutosPRO_TRIBUTO.Value:=San(Req.ContentFields.Field('PRO_TRIBUTO').AsString);
    DM.TBProdutosPRO_TROCA.Value:=San(Req.ContentFields.Field('PRO_TROCA').AsString);
    DM.TBProdutosPRO_UNIDADE.Value:=PRO_UNIDADE;
    DM.TBProdutosPRO_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    {$ENDREGION}
    DM.TBProdutos.Post;

    CriarAlmoxarifados(DM,DM.TBProdutosPRO_CODIGO.Value);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBProdutos.ToJSONObject);

    DM.TBProdutos.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(inserir) exception: '+ex.Message);
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
  Retorno: TJSONObject;
  PRO_CODIGO: Integer;
begin
  try
    PRO_CODIGO:=SoNumeros(Req.ContentFields.Field('PRO_CODIGO').AsString);
    if PRO_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+PRO_CODIGO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBProdutos.Delete;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Registro eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(excluir) exception: '+ex.Message);
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
  PRO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PRO_CODIGO:=Req.ContentFields.Field('PRO_CODIGO').AsInteger;
    if PRO_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+PRO_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, '+
      'PRO_ALIQIPI, PRO_ALIQPIS, PRO_ALIQPISST, PRO_CEST, PRO_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, '+
      'PRO_COMPOEBASEICMSST, PRO_COMPOSTO, PRO_CONVERSAO, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_DESCMAX, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PRO_EXCECAO, PRO_FCI, '+
      'PRO_INCENTIVOISS, PRO_INDICADORISS, PRO_LOCALIZACAO, PRO_MODICMS, PRO_MODICMSST, PRO_NOME, PRO_OBSERVACOES, PRO_ORIGEM, PRO_PESO, PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_PRECO1, '+
      'PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_PRODUTOREAL, PRO_STATUS, PRO_TIPO, PRO_TIPOISS, PRO_UNIDADE, CLF_DESCRICAO, CLF_EXCECAO, GRU_DESCRICAO, '+
      'ICM_DESCRICAO, IPI_DESCRICAO, ISS_DESCRICAO, PIS.PIS_DESCRICAO as PIS_DESCRICAO, COFINS.PIS_DESCRICAO as PIS_DESCRICAO1 from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'left join CLASSFISCAL on PRO_CLASSFISCAL=CLF_CODIGO and PRO_EXCECAO=CLF_EXCECAO '+
      'left join ICMS on PRO_CSTICMS=ICM_CODIGO '+
      'left join IPI on PRO_CSTIPI=IPI_CODIGO '+
      'left join ISS on PRO_TIPOISS=ISS_CODIGO '+
      'left join PISCOFINS as PIS on PRO_CSTPIS=PIS.PIS_CODIGO '+
      'left join PISCOFINS as COFINS on PRO_CSTCOFINS=COFINS.PIS_CODIGO '+
      'where PRO_CODIGO=:codigo'
    );
    DM.Query1.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
    DM.Query1.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(localizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Estoque(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PRO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PRO_CODIGO:=Req.ContentFields.Field('PRO_CODIGO').AsInteger;
    if PRO_CODIGO.ToString='0' then
    Exit;
    //raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(estoque) '+PRO_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PRQ_ALMOXARIFADO, PRQ_PRODUTO, PRQ_QUANTIDADE, ALM_DESCRICAO, ALM_STATUS from PRODUTOSQTDE '+
      'left join ALMOXARIFADOS on PRQ_ALMOXARIFADO=ALM_CODIGO where PRQ_PRODUTO=:codigo'
    );
    DM.Query1.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);
    DM.Query1.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(estoque) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(params)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PAR_CFOPPADRAO, PAR_CFOPFORAPADRAO, PAR_CLASSFISCALPADRAO, PAR_CSTCOFINSPADRAO, PAR_CSTICMSPADRAO, PAR_CSTIPIPADRAO, PAR_CSTPISPADRAO, PAR_DESCMAXPADRAO, '+
      'PAR_ENQUADRAMENTOIPI, PAR_PROFAMILIA, PAR_PROFORNECEDOR, PAR_PROGRUPO, PAR_PROMARCA, PAR_MARGEMPADRAO, PAR_PROUNIDADE, '+
      'TAB_DESCRICAO1, TAB_DESCRICAO2, TAB_DESCRICAO3, TAB_DESCRICAO4, TAB_DESCRICAO5, TAB_DESCRICAO6, '+
      'TAB_MARGEM1, TAB_MARGEM2, TAB_MARGEM3, TAB_MARGEM4, TAB_MARGEM5, TAB_MARGEM6, FAM_DESCRICAO, GRU_DESCRICAO, MAR_DESCRICAO, '+
      'UNI_DESCRICAO, FOR_NOME, ICM_DESCRICAO, IPI_DESCRICAO, p.PIS_DESCRICAO, c.PIS_DESCRICAO as PIS_DESCRICAO1 from PARAMETROS '+
      'left join FAMILIAS on PAR_PROFAMILIA=FAM_CODIGO '+
      'left join GRUPOS on PAR_PROGRUPO=GRU_CODIGO '+
      'left join MARCAS on PAR_PROMARCA=MAR_CODIGO '+
      'left join UNIDADES on PAR_PROUNIDADE=UNI_CODIGO '+
      'left join FORNECEDORES on PAR_PROFORNECEDOR=FOR_CODIGO '+
      'left join ICMS on PAR_CSTICMSPADRAO=ICM_CODIGO '+
      'left join IPI on PAR_CSTIPIPADRAO=IPI_CODIGO '+
      'left join PISCOFINS p on PAR_CSTPISPADRAO=p.PIS_CODIGO '+
      'left join PISCOFINS c on PAR_CSTCOFINSPADRAO=c.PIS_CODIGO, '+
      'TABPRECO where PAR_CODIGO=1'
    );
    DM.Query1.Open;

    Registro:=DM.Query1.ToJSONObject;
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

function Duplicar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  PRO_CODIGO: Integer;
begin
  try
    PRO_CODIGO:=Req.ContentFields.Field('PRO_CODIGO').AsInteger;
    if PRO_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(duplicar) '+PRO_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select * from PRODUTOS where PRO_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Produto não encontrado.');

    DM.TBProdutos.Open;
    DM.TBProdutos.Insert;
    {$REGION 'Campos do Produto'}
    DM.TBProdutosPRO_ALIQCOFINS.Value         :=DM.Query1.FieldByName('PRO_ALIQCOFINS').AsExtended;
    DM.TBProdutosPRO_ALIQCOFINSST.Value       :=DM.Query1.FieldByName('PRO_ALIQCOFINSST').AsExtended;
    DM.TBProdutosPRO_ALIQICMS.Value           :=DM.Query1.FieldByName('PRO_ALIQICMS').AsExtended;
    DM.TBProdutosPRO_ALIQICMSADICST.Value     :=DM.Query1.FieldByName('PRO_ALIQICMSADICST').AsExtended;
    DM.TBProdutosPRO_ALIQICMSRED.Value        :=DM.Query1.FieldByName('PRO_ALIQICMSRED').AsExtended;
    DM.TBProdutosPRO_ALIQICMSST.Value         :=DM.Query1.FieldByName('PRO_ALIQICMSST').AsExtended;
    DM.TBProdutosPRO_ALIQIPI.Value            :=DM.Query1.FieldByName('PRO_ALIQIPI').AsExtended;
    DM.TBProdutosPRO_ALIQISS.Value            :=DM.Query1.FieldByName('PRO_ALIQISS').AsExtended;
    DM.TBProdutosPRO_ALIQOUTROS.Value         :=DM.Query1.FieldByName('PRO_ALIQOUTROS').AsExtended;
    DM.TBProdutosPRO_ALIQPIS.Value            :=DM.Query1.FieldByName('PRO_ALIQPIS').AsExtended;
    DM.TBProdutosPRO_ALIQPISST.Value          :=DM.Query1.FieldByName('PRO_ALIQPISST').AsExtended;
    DM.TBProdutosPRO_ALTURA.Value             :=DM.Query1.FieldByName('PRO_ALTURA').AsInteger;
    DM.TBProdutosPRO_ATUALIZAR.Value          :='S';
    DM.TBProdutosPRO_ATUALIZATABELA.Value     :=DM.Query1.FieldByName('PRO_ATUALIZATABELA').AsString;
    DM.TBProdutosPRO_CEST.Value               :=DM.Query1.FieldByName('PRO_CEST').AsString;
    DM.TBProdutosPRO_CFOP.Value               :=DM.Query1.FieldByName('PRO_CFOP').AsInteger;
    DM.TBProdutosPRO_CFOPFORA.Value           :=DM.Query1.FieldByName('PRO_CFOPFORA').AsInteger;
    DM.TBProdutosPRO_CLASSFISCAL.Value        :=DM.Query1.FieldByName('PRO_CLASSFISCAL').AsString;
    //DM.TBProdutosPRO_CODIGO.Value:=
    DM.TBProdutosPRO_CODIGOBARRAS.Value       :=DM.Query1.FieldByName('PRO_CODIGOBARRAS').AsString;
    DM.TBProdutosPRO_CODIGOFAB.Value          :=DM.Query1.FieldByName('PRO_CODIGOFAB').AsString;
    DM.TBProdutosPRO_COMISSAO.Value           :=DM.Query1.FieldByName('PRO_COMISSAO').AsExtended;
    DM.TBProdutosPRO_COMPOEBASEICMS.Value     :=DM.Query1.FieldByName('PRO_COMPOEBASEICMS').AsString;
    DM.TBProdutosPRO_COMPOEBASEICMSST.Value   :=DM.Query1.FieldByName('PRO_COMPOEBASEICMSST').AsString;
    DM.TBProdutosPRO_COMPOSTO.Value           :=DM.Query1.FieldByName('PRO_COMPOSTO').AsString;
    DM.TBProdutosPRO_CONVERSAO.Value          :=DM.Query1.FieldByName('PRO_CONVERSAO').AsExtended;
    DM.TBProdutosPRO_CORSABOR.Value           :=DM.Query1.FieldByName('PRO_CORSABOR').AsString;
    DM.TBProdutosPRO_CSTCOFINS.Value          :=DM.Query1.FieldByName('PRO_CSTCOFINS').AsInteger;
    DM.TBProdutosPRO_CSTICMS.Value            :=DM.Query1.FieldByName('PRO_CSTICMS').AsInteger;
    DM.TBProdutosPRO_CSTIPI.Value             :=DM.Query1.FieldByName('PRO_CSTIPI').AsInteger;
    DM.TBProdutosPRO_CSTPIS.Value             :=DM.Query1.FieldByName('PRO_CSTPIS').AsInteger;
    DM.TBProdutosPRO_CUBICO.Value             :=DM.Query1.FieldByName('PRO_CUBICO').AsInteger;
    DM.TBProdutosPRO_DESCMAX.Value            :=DM.Query1.FieldByName('PRO_DESCMAX').AsExtended;
    DM.TBProdutosPRO_DESCRICAO.Value          :=DM.Query1.FieldByName('PRO_DESCRICAO').AsString;
    DM.TBProdutosPRO_DTATUALIZACAO.Value      :=Date;
    DM.TBProdutosPRO_DTCADASTRO.Value         :=Date;
    //DM.TBProdutosPRO_DTULTCOMPRA.Value:=
    //DM.TBProdutosPRO_DTULTVENDA.Value:=
    DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value   :=DM.Query1.FieldByName('PRO_ENQUADRAMENTOIPI').AsInteger;
    DM.TBProdutosPRO_ESTOQUEATUAL.Value       :=0;
    DM.TBProdutosPRO_ESTOQUEMAX.Value         :=DM.Query1.FieldByName('PRO_ESTOQUEMAX').AsExtended;
    DM.TBProdutosPRO_ESTOQUEMIN.Value         :=DM.Query1.FieldByName('PRO_ESTOQUEMIN').AsExtended;
    DM.TBProdutosPRO_EXCECAO.Value            :=DM.Query1.FieldByName('PRO_EXCECAO').AsInteger;
    DM.TBProdutosPRO_FAMILIA.Value            :=DM.Query1.FieldByName('PRO_FAMILIA').AsInteger;
    DM.TBProdutosPRO_FCI.Value                :=DM.Query1.FieldByName('PRO_FCI').AsString;
    DM.TBProdutosPRO_FORNECEDOR.Value         :=DM.Query1.FieldByName('PRO_FORNECEDOR').AsInteger;
    DM.TBProdutosPRO_GENERO.Value             :=DM.Query1.FieldByName('PRO_GENERO').AsInteger;
    DM.TBProdutosPRO_GRUPO.Value              :=DM.Query1.FieldByName('PRO_GRUPO').AsInteger;
    DM.TBProdutosPRO_HRATUALIZACAO.Value      :=Time;
    DM.TBProdutosPRO_HRCADASTRO.Value         :=Time;
    DM.TBProdutosPRO_ICMSALIQUOTAPOR.Value    :=DM.Query1.FieldByName('PRO_ICMSALIQUOTAPOR').AsString;
    DM.TBProdutosPRO_INCENTIVOISS.Value       :=DM.Query1.FieldByName('PRO_INCENTIVOISS').AsString;
    DM.TBProdutosPRO_INDICADORISS.Value       :=DM.Query1.FieldByName('PRO_INDICADORISS').AsString;
    DM.TBProdutosPRO_INTERNET.Value           :=DM.Query1.FieldByName('PRO_INTERNET').AsString;
    DM.TBProdutosPRO_LARGURA.Value            :=DM.Query1.FieldByName('PRO_LARGURA').AsInteger;
    DM.TBProdutosPRO_LOCALIZACAO.Value        :=DM.Query1.FieldByName('PRO_LOCALIZACAO').AsString;
    DM.TBProdutosPRO_MARCA.Value              :=DM.Query1.FieldByName('PRO_MARCA').AsInteger;
    DM.TBProdutosPRO_MARGEM.Value             :=DM.Query1.FieldByName('PRO_MARGEM').AsExtended;
    DM.TBProdutosPRO_MARGEM1.Value            :=DM.Query1.FieldByName('PRO_MARGEM1').AsExtended;
    DM.TBProdutosPRO_MARGEM2.Value            :=DM.Query1.FieldByName('PRO_MARGEM2').AsExtended;
    DM.TBProdutosPRO_MARGEM3.Value            :=DM.Query1.FieldByName('PRO_MARGEM3').AsExtended;
    DM.TBProdutosPRO_MARGEM4.Value            :=DM.Query1.FieldByName('PRO_MARGEM4').AsExtended;
    DM.TBProdutosPRO_MARGEM5.Value            :=DM.Query1.FieldByName('PRO_MARGEM5').AsExtended;
    DM.TBProdutosPRO_MARGEM6.Value            :=DM.Query1.FieldByName('PRO_MARGEM6').AsExtended;
    DM.TBProdutosPRO_MARKUP.Value             :=DM.Query1.FieldByName('PRO_MARKUP').AsExtended;
    DM.TBProdutosPRO_MARKUPCODIGO.Value       :=DM.Query1.FieldByName('PRO_MARKUPCODIGO').AsInteger;
    DM.TBProdutosPRO_MODICMS.Value            :=DM.Query1.FieldByName('PRO_MODICMS').AsString;
    DM.TBProdutosPRO_MODICMSST.Value          :=DM.Query1.FieldByName('PRO_MODICMSST').AsString;
    DM.TBProdutosPRO_NOME.Value               :=DM.Query1.FieldByName('PRO_NOME').AsString;
    DM.TBProdutosPRO_OBSERVACOES.Value        :=DM.Query1.FieldByName('PRO_OBSERVACOES').AsString;
    DM.TBProdutosPRO_OFERTA.Value             :=DM.Query1.FieldByName('PRO_OFERTA').AsString;
    DM.TBProdutosPRO_ORIGEM.Value             :=DM.Query1.FieldByName('PRO_ORIGEM').AsString;
    DM.TBProdutosPRO_PALAVRASCHAVE.Value      :=DM.Query1.FieldByName('PRO_PALAVRASCHAVE').AsString;
    DM.TBProdutosPRO_PESAVEL.Value            :=DM.Query1.FieldByName('PRO_PESAVEL').AsString;
    DM.TBProdutosPRO_PESO.Value               :=DM.Query1.FieldByName('PRO_PESO').AsExtended;
    DM.TBProdutosPRO_PRECO1.Value             :=DM.Query1.FieldByName('PRO_PRECO1').AsExtended;
    DM.TBProdutosPRO_PRECO2.Value             :=DM.Query1.FieldByName('PRO_PRECO2').AsExtended;
    DM.TBProdutosPRO_PRECO3.Value             :=DM.Query1.FieldByName('PRO_PRECO3').AsExtended;
    DM.TBProdutosPRO_PRECO4.Value             :=DM.Query1.FieldByName('PRO_PRECO4').AsExtended;
    DM.TBProdutosPRO_PRECO5.Value             :=DM.Query1.FieldByName('PRO_PRECO5').AsExtended;
    DM.TBProdutosPRO_PRECO6.Value             :=DM.Query1.FieldByName('PRO_PRECO6').AsExtended;
    DM.TBProdutosPRO_PRECOCUSTO.Value         :=DM.Query1.FieldByName('PRO_PRECOCUSTO').AsExtended;
    DM.TBProdutosPRO_PRECOCUSTOCOMP.Value     :=DM.Query1.FieldByName('PRO_PRECOCUSTOCOMP').AsExtended;
    //DM.TBProdutosPRO_PRECOCUSTOMEDIO.Value    :=DM.Query1.FieldByName('PRO_PRECOCUSTOMEDIO').AsExtended;
    //DM.TBProdutosPRO_PRECOCUSTOULT.Value      :=DM.Query1.FieldByName('PRO_PRECOCUSTOULT').AsExtended;
    DM.TBProdutosPRO_PRECOVENDA.Value         :=DM.Query1.FieldByName('PRO_PRECOVENDA').AsExtended;
    //DM.TBProdutosPRO_PRECOVENDAMEDIO.Value    :=DM.Query1.FieldByName('PRO_PRECOVENDAMEDIO').AsExtended;
    //DM.TBProdutosPRO_PRECOVENDAULT.Value      :=DM.Query1.FieldByName('PRO_PRECOVENDAULT').AsExtended;
    DM.TBProdutosPRO_PRODUCAO.Value           :=DM.Query1.FieldByName('PRO_PRODUCAO').AsString;
    DM.TBProdutosPRO_PRODUTOREAL.Value        :=DM.Query1.FieldByName('PRO_PRODUTOREAL').AsInteger;
    DM.TBProdutosPRO_PROFUNDIDADE.Value       :=DM.Query1.FieldByName('PRO_PROFUNDIDADE').AsInteger;
    DM.TBProdutosPRO_REGISTROMS.Value         :=DM.Query1.FieldByName('PRO_REGISTROMS').AsString;
    DM.TBProdutosPRO_REGRAFISCAL.Value        :=1; //DM.Query1.FieldByName('PRO_REGISTROMS').AsString;
    DM.TBProdutosPRO_STATUS.Value             :=DM.Query1.FieldByName('PRO_STATUS').AsString;
    DM.TBProdutosPRO_SUBSTITUICAOTRIB.Value   :=DM.Query1.FieldByName('PRO_SUBSTITUICAOTRIB').AsString;
    DM.TBProdutosPRO_TABPRECO1.Value          :=DM.Query1.FieldByName('PRO_TABPRECO1').AsString;
    DM.TBProdutosPRO_TABPRECO2.Value          :=DM.Query1.FieldByName('PRO_TABPRECO2').AsString;
    DM.TBProdutosPRO_TABPRECO3.Value          :=DM.Query1.FieldByName('PRO_TABPRECO3').AsString;
    DM.TBProdutosPRO_TABPRECO4.Value          :=DM.Query1.FieldByName('PRO_TABPRECO4').AsString;
    DM.TBProdutosPRO_TABPRECO5.Value          :=DM.Query1.FieldByName('PRO_TABPRECO5').AsString;
    DM.TBProdutosPRO_TABPRECO6.Value          :=DM.Query1.FieldByName('PRO_TABPRECO6').AsString;
    DM.TBProdutosPRO_TAMANHO.Value            :=DM.Query1.FieldByName('PRO_TAMANHO').AsString;
    DM.TBProdutosPRO_TIPO.Value               :=DM.Query1.FieldByName('PRO_TIPO').AsString;
    DM.TBProdutosPRO_TIPOISS.Value            :=DM.Query1.FieldByName('PRO_TIPOISS').AsString;
    DM.TBProdutosPRO_TIPOITEM.Value           :=DM.Query1.FieldByName('PRO_TIPOITEM').AsString;
    DM.TBProdutosPRO_TRIBUTO.Value            :=DM.Query1.FieldByName('PRO_TRIBUTO').AsString;
    DM.TBProdutosPRO_TROCA.Value              :=DM.Query1.FieldByName('PRO_TROCA').AsString;
    DM.TBProdutosPRO_UNIDADE.Value            :=DM.Query1.FieldByName('PRO_UNIDADE').AsString;
    DM.TBProdutosPRO_USUARIO.Value            :=Usuario.GetValue<String>('USU_APELIDO');
//    DM.TBProdutosCLF_DESCRICAO.Value          :=DM.Query1.FieldByName('CLF_DESCRICAO').AsString;
//    DM.TBProdutosFAM_DESCRICAO.Value          :=DM.Query1.FieldByName('FAM_DESCRICAO').AsString;
//    DM.TBProdutosFOR_NOME.Value               :=DM.Query1.FieldByName('FOR_NOME').AsString;
//    DM.TBProdutosGRU_DESCRICAO.Value          :=DM.Query1.FieldByName('GRU_DESCRICAO').AsString;
//    DM.TBProdutosICM_CALCULACREDITOSN.Value   :=DM.Query1.FieldByName('ICM_CALCULACREDITOSN').AsString;
//    DM.TBProdutosICM_DESCRICAO.Value          :=DM.Query1.FieldByName('ICM_DESCRICAO').AsString;
//    DM.TBProdutosIPI_DESCRICAO.Value          :=DM.Query1.FieldByName('IPI_DESCRICAO').AsString;
//    DM.TBProdutosISS_DESCRICAO.Value          :=DM.Query1.FieldByName('ISS_DESCRICAO').AsString;
//    DM.TBProdutosMAR_DESCRICAO.Value          :=DM.Query1.FieldByName('MAR_DESCRICAO').AsString;
//    DM.TBProdutosPIS_DESCRICAO.Value          :=DM.Query1.FieldByName('PIS_DESCRICAO').AsString;
//    DM.TBProdutosUNI_DESCRICAO.Value          :=DM.Query1.FieldByName('UNI_DESCRICAO').AsString;
    {$ENDREGION}
    DM.TBProdutos.Post;

    PRO_CODIGO:=DM.TBProdutosPRO_CODIGO.Value;

    //fecha e abre a tabela do produto pra atualizar os campos comentados acima.
    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.TBProdutos.Open;

    CriarAlmoxarifados(DM,DM.TBProdutosPRO_CODIGO.Value);

    Registro:=DM.TBProdutos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.Query1.Close;
    DM.TBProdutos.Close;

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

function CriarAlmoxarifados(DM: TDMFirenet; Produto: Integer): Boolean;
begin
  Result:=False;

  FormMain.Logar(PrefixLog+'CriarAlmoxarifados '+Produto.ToString);

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select * from ALMOXARIFADOS order by ALM_CODIGO');
  DM.Query1.Open;

  if DM.Query1.IsEmpty then
  raise Exception.Create('Nenhum almoxarifado encontrado.');

  DM.Query2.Close;
  DM.Query2.SQL.Clear;
  DM.Query2.SQL.Add('insert into PRODUTOSQTDE (PRQ_PRODUTO, PRQ_ALMOXARIFADO, PRQ_QUANTIDADE) values (:produto, :almoxarifado, :quantidade)');

  DM.Query1.First;
  while not DM.Query1.Eof do
  begin
    DM.Query2.Close;
    DM.Query2.ParamByName('produto').AsInteger:=Produto;
    DM.Query2.ParamByName('almoxarifado').AsInteger:=DM.Query1.FieldByName('ALM_CODIGO').AsInteger;
    DM.Query2.ParamByName('quantidade').AsFMTBCD:=0;
    DM.Query2.ExecSQL;

    DM.Query1.Next;
  end;
  DM.Query1.Close;
  DM.Query2.Close;
  Result:=True;
end;

end.
