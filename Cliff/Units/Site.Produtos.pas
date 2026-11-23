unit Site.Produtos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Pesquisar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure ServirImagemProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure ServirImagemProdutoSemFoto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

const
  PrefixLog='SITE.PRODUTOS: ';
  Campos='PRO_CODIGO, PRO_CODIGOBARRAS, PRO_DESCMAX, PRO_ESTOQUEATUAL, PRO_NOME, PRO_OFERTA, PRO_PRECOVENDA, PRO_UNIDADE, GRU_DESCRICAO';

implementation

uses Funcoes, Imagens.Utils, System.Classes, System.IOUtils, ImageUtils;

procedure RegistrarRotas;
begin
  THorse.Post('/site/produtos', VerificarOperacao);
  THorse.Get('/produtos/:codigo/low/:arquivo',ServirImagemProduto); //acabou que nem usamos esse endpoint e o abaixo.
  THorse.Get('/produtos/sem_foto.jpg',ServirImagemProdutoSemFoto);
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

      if Operacao='listar'        then Res.Send( Listar(DM,Req)         ).Status(200) else
      if Operacao='visualizar'    then Res.Send( Visualizar(DM,Req)     ).Status(200) else
      if Operacao='pesquisar'     then Res.Send( Pesquisar(DM,Req)      ).Status(200) else
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
  Pagina, Registros, Skip, Familia, Grupo: Integer;
  Where, Pesquisa, Oferta: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina  :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Pesquisa:=Req.ContentFields.Field('pesquisa').AsString;
    Familia :=SoNumeros(Req.ContentFields.Field('familia').AsString);
    Grupo   :=SoNumeros(Req.ContentFields.Field('grupo').AsString);
    Oferta  :=San(Req.ContentFields.Field('oferta').AsString);

    Where:='';
    if (Familia> 0) then Where:=Where+' and PRO_FAMILIA='+Familia.ToString;
    if (Grupo > 0) then Where:=Where+' and PRO_GRUPO='+Grupo.ToString;
    if Oferta='1' then Where:=Where+' and PRO_OFERTA='+QuotedStr('S');
    if Pesquisa<>'' then Where:=Where+'and (PRO_NOME like '+QuotedStr(Pesquisa+'%')+' or PRO_CODIGO like '+QuotedStr(Pesquisa)+' or PRO_CODIGOBARRAS like '+QuotedStr(Pesquisa)+')';

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Pesquisa: '+Pesquisa+', Familia: '+Familia.ToString+', Grupo: '+Grupo.ToString+', Oferta: '+Oferta);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+
      'coalesce(( '+
      '  select first 1 '''+URL_API+PRODUTOS_FOTOS+'/'' || lpad(PRO_CODIGO, 8, ''0'') || ''/low/'' || PRF_ARQUIVO '+
      'from PRODUTOSFOTOS '+
      'where PRF_PRODUTO = PRO_CODIGO '+
      'order by PRF_PRINCIPAL desc '+
      '), '''+URL_API+PRODUTOS_FOTOS+'/sem_foto.jpg'') as PRF_ARQUIVO, '+
      Campos+' from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'where PRO_STATUS=''A'' and PRO_INTERNET=''S'' '+Where+' order by PRO_NOME');
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

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select '+
      'coalesce(( '+
      '  select first 1 '''+URL_API+PRODUTOS_FOTOS+'/'' || lpad(PRO_CODIGO, 8, ''0'') || ''/low/'' || PRF_ARQUIVO '+
      'from PRODUTOSFOTOS '+
      'where PRF_PRODUTO = PRO_CODIGO '+
      'order by PRF_PRINCIPAL desc '+
      '), '''+URL_API+PRODUTOS_FOTOS+'/sem_foto.jpg'') as PRF_ARQUIVO, '+
      'PRO_CODIGO, PRO_CODIGOBARRAS, PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_NOME, PRO_PRECOVENDA, '+
      'PRO_PRECO1, PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_STATUS, PRO_UNIDADE, FAM_DESCRICAO, GRU_DESCRICAO '+
      'from PRODUTOS '+
      'left join FAMILIAS on PRO_FAMILIA=FAM_CODIGO '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'where PRO_CODIGO=:codigo order by PRO_NOME');
    DM.Query1.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.Query1.Open;
    DM.Query1.FetchAll;

    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'select PRF_CODIGO, PRF_DESCRICAO, '+
      'coalesce( '+
      ' '''+URL_API+PRODUTOS_FOTOS+'/'' || lpad(PRF_PRODUTO, 8, ''0'') || ''/high/'' || PRF_ARQUIVO, '+
      ' '''+URL_API+PRODUTOS_FOTOS+'/sem_foto.jpg'' '+
      ') as PRF_ARQUIVO '+
      'from PRODUTOSFOTOS where PRF_PRODUTO=:produto order by PRF_PRINCIPAL desc'
    );
    DM.Query2.ParamByName('produto').AsInteger:=PRO_CODIGO;
    DM.Query2.Open;
    DM.Query2.FetchAll;

    Registro:=DM.Query1.ToJSONObject;
    Registro.AddPair('FOTOS', DM.Query2.ToJSONArray);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.Query1.Close;
    DM.Query2.Close;

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

function Pesquisar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Texto, TextoLike, Where: String;
  Retorno: TJSONObject;
begin
  try
    Texto:=San(Req.ContentFields.Field('Texto').AsString);
    TextoLike:=StringReplace(Texto, ' ', '%', [rfReplaceAll]);
    TextoLike:=UpperCase(TextoLike);
//    Where:=' and (upper(PRO_NOME) like '+QuotedStr(UpperCase('%'+TextoLike+'%')+
//                 ' or PRO_CODIGO like '+QuotedStr('%'+TextoLike+'%')+
//                 ' or PRO_CODIGOBARRAS like '+QuotedStr('%'+TextoLike+'%')+
//                ')');
    //Where:=' and ( (upper(PRO_NOME) like :textolike) or (PRO_CODIGO like :textolike) or (PRO_CODIGOBARRAS like :textolike) )';
    Where:=' and ( (upper(PRO_NOME) like '+QuotedStr('%'+TextoLike+'%')+') or (PRO_CODIGO like '+QuotedStr('%'+TextoLike+'%')+') or (PRO_CODIGOBARRAS like '+QuotedStr('%'+TextoLike+'%')+') )';

//154   $query="select
//155           (select first(1) PRF_ARQUIVO from PRODUTOSFOTOS where PRF_PRODUTO=PRO_CODIGO order by PRF_PRINCIPAL desc) as PRF_ARQUIVO,
//156           PRO_CODIGO, PRO_CODIGOBARRAS, PRO_DESCMAX, PRO_ESTOQUEATUAL, PRO_NOME, PRO_OFERTA, PRO_UNIDADE, PRO_PRECOVENDA, GRU_DESCRICAO from PRODUTOS
//157           left join GRUPOS on PRO_GRUPO=GRU_CODIGO
//158           where PRO_STATUS='A' and PRO_INTERNET='S' $where order by iif(PRO_ESTOQUEATUAL>0,0,1), PRO_NOME";



    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select '+
      'coalesce(( '+
      '  select first 1 '''+URL_API+PRODUTOS_FOTOS+'/'' || lpad(PRO_CODIGO, 8, ''0'') || ''/low/'' || PRF_ARQUIVO '+
      'from PRODUTOSFOTOS '+
      'where PRF_PRODUTO = PRO_CODIGO '+
      'order by PRF_PRINCIPAL desc '+
      '), '''+URL_API+PRODUTOS_FOTOS+'/sem_foto.jpg'') as PRF_ARQUIVO, '+Campos+' '+
      'from PRODUTOS '+
      'left join GRUPOS on PRO_GRUPO=GRU_CODIGO '+
      'where PRO_STATUS=''A'' and PRO_INTERNET=''S'' '+Where+' '+
      'order by iif(PRO_ESTOQUEATUAL>0,0,1), PRO_NOME'
    );
    //DM.Query1.ParamByName('textolike').AsString:=QuotedStr('%'+TextoLike+'%');
    DM.Query1.Open;

    FormMain.Logar(PrefixLog+'(pesquisar) '+Texto);
    //FormMain.Logar(PrefixLog+'(pesquisar) '+Texto+' - '+DM.Query1.SQL.Text);

    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);
    DM.Query1.Close;

    Result:=Retorno;
  except on ex:exception do
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      //Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

procedure ServirImagemProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var Codigo, Arquivo, Caminho: string;
begin
  FormMain.Logar(PrefixLog+'ImagemProduto '+Req.Params['codigo']+', '+Req.Params['arquivo']);
  Codigo :=Req.Params['codigo'];   // ex: 00006927
  Arquivo:=Req.Params['arquivo'];  // ex: 00006927000009.jpg
  Caminho:=ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + Codigo + PathDelim + 'high' + PathDelim + Arquivo;
  //'C:\runtime\firenet\arquivos\produtos_fotos\' + Codigo + PathDelim + 'low' + PathDelim + Arquivo;

  if FileExists(Caminho) then
  Res.SendFile(Caminho) else
  Res.SendFile(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PathDelim + 'sem_foto.jpg');
  //Res.SendFile('C:\runtime\firenet\arquivos\produtos_fotos\sem_foto.jpg');
end;

procedure ServirImagemProdutoSemFoto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var Codigo, Arquivo, Caminho: string;
begin
  FormMain.Logar(PrefixLog+'ImagemProdutoSemFoto');
  Res.SendFile(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PathDelim + 'sem_foto.jpg');
end;

end.
