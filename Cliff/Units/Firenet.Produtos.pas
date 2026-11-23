unit Firenet.Produtos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function RotacionarFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure ServirImagemProduto(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure ServirImagemProdutoSemFoto(Req: THorseRequest; Res: THorseResponse; Next: TProc);

const
  PrefixLog='FIRENET.PRODUTOS: ';
  Campos='PRO_CODIGO, PRO_CODIGOBARRAS, PRO_DESCMAX, PRO_ESTOQUEATUAL, PRO_NOME, PRO_OFERTA, PRO_PRECOVENDA, PRO_UNIDADE, GRU_DESCRICAO';
//  Campos='PRO_ALIQCOFINS, PRO_ALIQCOFINSST, PRO_ALIQICMS, PRO_ALIQICMSADICST, PRO_ALIQICMSRED, PRO_ALIQICMSST, '+
//    'PRO_ALIQIPI, PRO_ALIQPIS, PRO_ALIQPISST, PRO_CEST, PRO_CFOP, PRO_CFOPFORA, PRO_CLASSFISCAL, PRO_CODIGO, PRO_CODIGOBARRAS, PRO_CODIGOFAB, PRO_COMISSAO, PRO_COMPOEBASEICMS, '+
//    'PRO_COMPOEBASEICMSST, PRO_COMPOSTO, PRO_CONVERSAO, PRO_CSTCOFINS, PRO_CSTICMS, PRO_CSTIPI, PRO_CSTPIS, PRO_DESCMAX, PRO_ENQUADRAMENTOIPI, PRO_ESTOQUEATUAL, PRO_EXCECAO, PRO_FCI, '+
//    'PRO_INCENTIVOISS, PRO_INDICADORISS, PRO_LOCALIZACAO, PRO_MODICMS, PRO_MODICMSST, PRO_NOME, PRO_OBSERVACOES, PRO_ORIGEM, PRO_PESO, PRO_PRECOCUSTO, PRO_PRECOVENDA, PRO_PRECO1, '+
//    'PRO_PRECO2, PRO_PRECO3, PRO_PRECO4, PRO_PRECO5, PRO_PRECO6, PRO_STATUS, PRO_TIPO, PRO_TIPOISS, PRO_UNIDADE, CLF_DESCRICAO, CLF_EXCECAO, GRU_DESCRICAO, ICM_DESCRICAO, IPI_DESCRICAO, '+
//    'ISS_DESCRICAO, PIS.PIS_DESCRICAO as PIS_DESCRICAO, COFINS.PIS_DESCRICAO as PIS_DESCRICAO1';

implementation

uses Funcoes, Imagens.Utils, System.Classes, System.IOUtils, ImageUtils;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/produtos', VerificarOperacao);
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
      if Operacao='localizar'     then Res.Send( Localizar(DM,Req)      ).Status(200) else
      if Operacao='atualizarFoto' then Res.Send( AtualizarFoto(DM,Req)  ).Status(200) else
      if Operacao='inserirFoto'   then Res.Send( InserirFoto(DM,Req)    ).Status(200) else
      if Operacao='excluirFoto'   then Res.Send( ExcluirFoto(DM,Req)    ).Status(200) else
      if Operacao='rotacionar'    then Res.Send( RotacionarFoto(DM,Req) ).Status(200) else
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
  Where, Pesquisa, Oferta: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina  :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Pesquisa:=Req.ContentFields.Field('pesquisa').AsString;
    Oferta  :=San(Req.ContentFields.Field('oferta').AsString);

    Where:='';
    if Oferta='1' then Where:=' and PRO_OFERTA='+QuotedStr('S');
    if Pesquisa<>'' then Where:=Where+'and (PRO_NOME like '+QuotedStr(Pesquisa+'%')+' or PRO_CODIGO like '+QuotedStr(Pesquisa)+' or PRO_CODIGOBARRAS like '+QuotedStr(Pesquisa)+')';

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Pesquisa: '+Pesquisa+', Oferta: '+Oferta);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+
      'coalesce(( '+
      '  select first 1 '''+URL_API+PRODUTOS_FOTOS+''' || lpad(PRO_CODIGO, 8, ''0'') || ''/low/'' || PRF_ARQUIVO '+
      'from PRODUTOSFOTOS '+
      'where PRF_PRODUTO = PRO_CODIGO '+
      'order by PRF_PRINCIPAL desc '+
      '), '''+URL_API+PRODUTOS_FOTOS+'sem_foto.jpg'') as PRF_ARQUIVO, '+
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
      '  select first 1 '''+URL_API+PRODUTOS_FOTOS+''' || lpad(PRO_CODIGO, 8, ''0'') || ''/low/'' || PRF_ARQUIVO '+
      'from PRODUTOSFOTOS '+
      'where PRF_PRODUTO = PRO_CODIGO '+
      'order by PRF_PRINCIPAL desc '+
      '), '''+URL_API+PRODUTOS_FOTOS+'sem_foto.jpg'') as PRF_ARQUIVO, '+
      'PRO_CODIGO, PRO_DESCRICAO, PRO_DTATUALIZACAO, PRO_DTCADASTRO, PRO_ESTOQUEATUAL, PRO_NOME, PRO_PRECOVENDA, '+
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
      ' '''+URL_API+PRODUTOS_FOTOS+''' || lpad(PRF_PRODUTO, 8, ''0'') || ''/high/'' || PRF_ARQUIVO, '+
      ' '''+URL_API+PRODUTOS_FOTOS+'sem_foto.jpg'' '+
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

function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PRO_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PRO_CODIGO:=Req.ContentFields.Field('PRO_CODIGO').AsInteger;
    if PRO_CODIGO.ToString='0' then Exit;
    //raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+PRO_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from PRODUTOS left join GRUPOS on PRO_GRUPO=GRU_CODIGO where PRO_CODIGO=:codigo');
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
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function AtualizarFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  Descricao: String;
  Codigo, Produto: Integer;
begin
  try
    Codigo   :=Req.ContentFields.Field('codigo').AsInteger;
    Produto  :=Req.ContentFields.Field('produto').AsInteger;
    Descricao:=San(Req.ContentFields.Field('descricao').AsString);

    Obrigatorio(Codigo.ToString,'Codigo','0');
    Obrigatorio(Produto.ToString,'Produto','0');
    Obrigatorio(Descricao,'Descricao');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarFoto) '+Codigo.ToString+' - Descrição: '+Descricao);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=Produto;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não encontrado.');

    DM.TBProdutosFotos.Close;
    DM.TBProdutosFotos.Open;
    if not DM.TBProdutosFotos.Locate('PRF_CODIGO',Codigo,[]) then
    raise Exception.Create('Foto não encontrada.');

    DM.TBProdutosFotos.Edit;
    DM.TBProdutosFotosPRF_DESCRICAO.Value:=Descricao;
    DM.TBProdutosFotosPRF_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBProdutosFotos.Post;

    Registro:=DM.TBProdutosFotos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(atualizarFoto) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function InserirFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Arquivo, ArquivoExt, PastaProduto, PastaH, PastaL: String;
  PRO_CODIGO, I: Integer;
  MS: TMemoryStream;
begin
  try
    PRO_CODIGO:=Req.ContentFields.Field('PRO_CODIGO').AsInteger;

    Obrigatorio(PRO_CODIGO.ToString,'Produto','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirFoto) Produto: '+PRO_CODIGO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=PRO_CODIGO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não encontrado.');

    if Req.RawWebRequest.Files.Count=0 then
    raise Exception.Create('Nenhum arquivo recebido.');

    DM.TBParametros.Close;
    DM.TBParametros.Open;
    PastaProduto:=AT(PRO_CODIGO.ToString,'0',8,taRight);

    Registro:=TJSONObject.Create;

    for I:=0 to Req.RawWebRequest.Files.Count-1 do
    begin
      ArquivoExt:=LowerCase(ExtractFileExt(Req.RawWebRequest.Files[0].FileName));
      if (ArquivoExt<>'.jpg') and (ArquivoExt<>'.jpeg') then
      raise Exception.Create('O arquivo deve ser no formato .JPG');

      PastaH:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTAHIGH.Value);
      PastaL:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTALOW.Value);
      ForceDirectories(PastaH);
      ForceDirectories(PastaL);

      DM.TBProdutosFotos.Open;
      DM.TBProdutosFotos.Insert;
      DM.TBProdutosFotosPRF_ARQUIVO.Value:='';
      DM.TBProdutosFotosPRF_DESCRICAO.Value:='';
      DM.TBProdutosFotosPRF_PRINCIPAL.Value:='N';
      DM.TBProdutosFotosPRF_PRODUTO.Value:=PRO_CODIGO;
      DM.TBProdutosFotosPRF_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
      DM.TBProdutosFotos.Post;

      Arquivo:=AT(PRO_CODIGO.ToString,'0',8,taRight) + AT(DM.TBProdutosFotosPRF_CODIGO.AsString,'0',6,taRight) + ArquivoExt;

      //atualiza o registro com o nome do arquivo gerado.
      DM.Query1.Close;
      DM.Query1.SQL.Clear;
      DM.Query1.SQL.Add('update PRODUTOSFOTOS set PRF_ARQUIVO=:arquivo, PRF_DESCRICAO=:arquivo where PRF_CODIGO=:codigo');
      DM.Query1.ParamByName('arquivo').AsString:=Arquivo;
      DM.Query1.ParamByName('codigo').AsInteger:=DM.TBProdutosFotosPRF_CODIGO.Value;
      DM.Query1.ExecSQL;

      MS:=TMemorySTream.Create;
      try
        MS.LoadFromStream(Req.RawWebRequest.Files[0].Stream);
        MS.Position := 0;
        MS.SaveToFile(TPath.Combine(PastaH, Arquivo));
        MS.SaveToFile(TPath.Combine(PastaL, Arquivo));
      finally
        MS.Free;
      end;

      //redimensiona as imagens.
      if FileExists(TPath.Combine(PastaH, Arquivo)) then
      ResizeImage(TPath.Combine(PastaH, Arquivo), DM.TBParametrosPAR_HIGHWIDTH.Value);

      if FileExists(TPath.Combine(PastaL, Arquivo)) then
      ResizeImage(TPath.Combine(PastaL, Arquivo), DM.TBParametrosPAR_LOWWIDTH.Value);

      //gistro.AddPair(
    end;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBProdutos.ToJSONObject);

    DM.TBProdutos.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(inserirFoto) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function ExcluirFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  PRF_CODIGO: Integer;
  PastaH, PastaL, PastaProduto: String;
begin
  try
    PRF_CODIGO:=SoNumeros(Req.ContentFields.Field('PRF_CODIGO').AsString);
    if PRF_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirFoto) '+PRF_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select * from PRODUTOSFOTOS where PRF_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PRF_CODIGO;
    DM.Query1.Open;

    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBParametros.Close;
    DM.TBParametros.Open;

    PastaProduto:=AT(DM.Query1.FieldByName('PRF_PRODUTO').AsString,'0',8,taRight);
    PastaH:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTAHIGH.Value);
    PastaL:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTALOW.Value);

    //exclui o arquivo.
    if FileExists(TPath.Combine(PastaH, DM.Query1.FieldByName('PRF_ARQUIVO').AsString)) then
    DeleteFile(TPath.Combine(PastaH, DM.Query1.FieldByName('PRF_ARQUIVO').AsString));

    if FileExists(TPath.Combine(PastaL, DM.Query1.FieldByName('PRF_ARQUIVO').AsString)) then
    DeleteFile(TPath.Combine(PastaL, DM.Query1.FieldByName('PRF_ARQUIVO').AsString));

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('delete from PRODUTOSFOTOS where PRF_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PRF_CODIGO;
    DM.Query1.ExecSQL;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Registro eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(excluirFoto) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function RotacionarFoto(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PRF_CODIGO, Angulo: Integer;
  Retorno: TJSONObject;
  PastaProduto, PastaH, PastaL: String;
begin
  try
    PRF_CODIGO:=Req.ContentFields.Field('PRF_CODIGO').AsInteger;
    Angulo:=Req.ContentFields.Field('angulo').AsInteger;
    if ((PRF_CODIGO.ToString='0') or (Angulo.ToString='0')) then
    raise Exception.Create('Foto ou Angulo não informado');

    FormMain.Logar(PrefixLog+'(rotacionar) '+PRF_CODIGO.ToString+' - Angulo: '+Angulo.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select * from PRODUTOSFOTOS where PRF_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PRF_CODIGO;
    DM.Query1.Open;

    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBParametros.Close;
    DM.TBParametros.Open;

    PastaProduto:=AT(DM.Query1.FieldByName('PRF_PRODUTO').AsString,'0',8,taRight);
    PastaH:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTAHIGH.Value);
    PastaL:=TPath.Combine(ARQUIVOS_SISTEMA + PRODUTOS_FOTOS + PastaProduto, DM.TBParametrosPAR_PASTALOW.Value);

    if FileExists(TPath.Combine(PastaH, DM.Query1.FieldByName('PRF_ARQUIVO').AsString)) then
    Rotacionar(TPath.Combine(PastaH, DM.Query1.FieldByName('PRF_ARQUIVO').AsString), Angulo);

    if FileExists(TPath.Combine(PastaL, DM.Query1.FieldByName('PRF_ARQUIVO').AsString)) then
    Rotacionar(TPath.Combine(PastaL, DM.Query1.FieldByName('PRF_ARQUIVO').AsString), Angulo);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg', URL_API+'/produtos/'+PastaProduto+'/low/'+DM.Query1.FieldByName('PRF_ARQUIVO').AsString);
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
