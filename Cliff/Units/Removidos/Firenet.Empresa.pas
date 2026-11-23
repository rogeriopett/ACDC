unit Firenet.Empresa;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Logo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

implementation

uses Funcoes, System.Classes, DataModAngus, Imagens.Utils;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/empresa', VerificarOperacao);
  FormMain.Logar('FIRENET.EMPRESA: Registrou rotas.');
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
        FormMain.Logar('FIRENET.EMPRESA: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='logo'       then Res.Send( Logo(DM,Req)       ).Status(200) else
      begin
        FormMain.Logar('FIRENET.EMPRESA: sem op.');
        raise Exception.Create('Recurso não encontrado.');
      end;

    except on ex:Exception do
      begin
        FormMain.Logar('FIRENET.EMPRESA: (op) exception: '+ex.Message);
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

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  EMP_CODIGO: Integer;
  Empresa: String;
begin
  try
    Empresa:=San(Req.ContentFields.Field('empresa').AsString);
    EMP_CODIGO:=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);

    FormMain.Logar('FIRENET.EMPRESA: (visualizar) '+EMP_CODIGO.ToString);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.TBEmpresa.Open;
    if DM.TBEmpresa.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBEmpresa.ToJSONObject;
    Registro.AddPair('EMP_LOGO',URL_SITE + 'arquivo?op=logo&empresa='+Empresa);
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBEmpresa.Close;
    Result:=Retorno;
  except on ex:Exception do
    begin
      FormMain.Logar('FIRENET.EMPRESA: (visualizar) exception: '+ex.Message);
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
  EMP_CODIGO: Integer;
begin
  try
    EMP_CODIGO:=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.EMPRESA: (atualizar) '+EMP_CODIGO.ToString);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.TBEmpresa.Open;
    if DM.TBEmpresa.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBEmpresa.Edit;
    //DM.TBEmpresaEMP_CODIGO.Value:=
    DM.TBEmpresaEMP_BAIRRO.Value:=San(Req.ContentFields.Field('EMP_BAIRRO').AsString);
    DM.TBEmpresaEMP_CEP.Value:=FormatarCEP(Req.ContentFields.Field('EMP_CEP').AsString);
    DM.TBEmpresaEMP_CIDADE.Value:=San(Req.ContentFields.Field('EMP_CIDADE').AsString);
    DM.TBEmpresaEMP_CIDADECODIGO.Value:=Req.ContentFields.Field('EMP_CIDADECODIGO').AsInteger;
    DM.TBEmpresaEMP_CNAE.Value:=San(Req.ContentFields.Field('EMP_CNAE').AsString);
    DM.TBEmpresaEMP_CNPJ.Value:=FormatarCPFCNPJ(Req.ContentFields.Field('EMP_CNPJ').AsString);
    //DM.TBEmpresaEMP_CODIGOCLIENTE.Value:=
    //DM.TBEmpresaEMP_CODIGOSISTEMA.Value:=
    DM.TBEmpresaEMP_CONTABILIDADE.Value:=Req.ContentFields.Field('EMP_CONTABILIDADE').AsInteger;
    //DM.TBEmpresaEMP_DATALIBERACAO.Value:=
    //DM.TBEmpresaEMP_DATAULTUTILIZACAO.Value:=
    //DM.TBEmpresaEMP_DIASLIBERACAO.Value:=
    DM.TBEmpresaEMP_EMAIL.Value:=San(Req.ContentFields.Field('EMP_EMAIL').AsString);
    DM.TBEmpresaEMP_EMAILSUPORTE.Value:=San(Req.ContentFields.Field('EMP_EMAILSUPORTE').AsString);
    DM.TBEmpresaEMP_ENDERECO.Value:=San(Req.ContentFields.Field('EMP_ENDERECO').AsString);
    DM.TBEmpresaEMP_ENQUADRAMENTO.Value:=San(Req.ContentFields.Field('EMP_ENQUADRAMENTO').AsString);
    DM.TBEmpresaEMP_ENQUADRAMENTOISS.Value:=San(Req.ContentFields.Field('EMP_ENQUADRAMENTOISS').AsString);
    DM.TBEmpresaEMP_ESTADO.Value:=San(Req.ContentFields.Field('EMP_ESTADO').AsString);
    DM.TBEmpresaEMP_ESTADOCODIGO.Value:=Req.ContentFields.Field('EMP_ESTADOCODIGO').AsInteger;
    DM.TBEmpresaEMP_FONE1.Value:=FormatarFone(Req.ContentFields.Field('EMP_FONE1').AsString);
    DM.TBEmpresaEMP_FONE2.Value:=FormatarFone(Req.ContentFields.Field('EMP_FONE2').AsString);
    //DM.TBEmpresaEMP_HASH.Value:=
    DM.TBEmpresaEMP_HOMEPAGE.Value:=San(Req.ContentFields.Field('EMP_HOMEPAGE').AsString);
    DM.TBEmpresaEMP_HRATUALIZACAO.Value:=Time;
    DM.TBEmpresaEMP_IE.Value:=San(Req.ContentFields.Field('EMP_IE').AsString);
    DM.TBEmpresaEMP_IM.Value:=San(Req.ContentFields.Field('EMP_IM').AsString);
    //DM.TBEmpresaEMP_LEITURA.Value:=
    //DM.TBEmpresaEMP_LIBERADO.Value:=
    //DM.TBEmpresaEMP_LIMITEMOBILES.Value:=
    //DM.TBEmpresaEMP_LIMITEUSUARIOS.Value:=
    DM.TBEmpresaEMP_NOME.Value:=San(Req.ContentFields.Field('EMP_NOME').AsString);
    DM.TBEmpresaEMP_NOMEFANTASIA.Value:=San(Req.ContentFields.Field('EMP_NOMEFANTASIA').AsString);
    //DM.TBEmpresaEMP_NOSSOBAIRRO.Value:=
    //DM.TBEmpresaEMP_NOSSOCEP.Value:=
    //DM.TBEmpresaEMP_NOSSOCIDADE.Value:=
    //DM.TBEmpresaEMP_NOSSOCNPJ.Value:=
    //DM.TBEmpresaEMP_NOSSOEMAIL.Value:=
    //DM.TBEmpresaEMP_NOSSOENDERECO.Value:=
    //DM.TBEmpresaEMP_NOSSOESTADO.Value:=
    //DM.TBEmpresaEMP_NOSSOFONE1.Value:=
    //DM.TBEmpresaEMP_NOSSOFONE2.Value:=
    //DM.TBEmpresaEMP_NOSSOIE.Value:=
    //DM.TBEmpresaEMP_NOSSOIM.Value:=
    //DM.TBEmpresaEMP_NOSSONOME.Value:=
    //DM.TBEmpresaEMP_NOSSONUMERO.Value:=
    //DM.TBEmpresaEMP_NOSSOSITE.Value:=
    //DM.TBEmpresaEMP_NOSSOSITESENHA.Value:=
    DM.TBEmpresaEMP_NUMERO.Value:=San(Req.ContentFields.Field('EMP_NUMERO').AsString);
    //DM.TBEmpresaEMP_PAFLAUDO.Value:=
    //DM.TBEmpresaEMP_PAFMD5.Value:=
    //DM.TBEmpresaEMP_PAFNOME.Value:=
    //DM.TBEmpresaEMP_PAFVERSAO.Value:=
    DM.TBEmpresaEMP_PAIS.Value:=San(Req.ContentFields.Field('EMP_PAIS').AsString);
    DM.TBEmpresaEMP_PAISCODIGO.Value:=Req.ContentFields.Field('EMP_PAISCODIGO').AsInteger;
    DM.TBEmpresaEMP_SUPERSENHA.Value:=San(Req.ContentFields.Field('EMP_SUPERSENHA').AsString);
    DM.TBEmpresa.Post;

    Registro:=DM.TBEmpresa.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBEmpresa.Close;
    Result:=Retorno;

  except on ex:Exception do
    begin
      FormMain.Logar('FIRENET.EMPRESA: (atualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Logo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  DMAngus: TDMAngus;
  Empresa, Pasta, ArquivoEnviado, ArquivoLocal, ArquivoLocalCrop, Extensao: String;
  Aleatorio: Integer;
  ArquivoDados: TMemoryStream;
begin
  try
    try
      if (Req.RawWebRequest.Files.Count<=0) or (Req.RawWebRequest.Files.Items[0].Stream.Size<=0) then
      raise Exception.Create('Nenhum arquivo enviado.');

      if (Req.RawWebRequest.Files[0].ContentType<>'image/png') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/jpg') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/jpeg') and
         (Req.RawWebRequest.Files[0].ContentType<>'image/pjpeg') then
      raise Exception.Create('Extensão de arquivo inválida.');

      Empresa:=Req.ContentFields.Field('empresa').AsString;
      FormMain.Logar('FIRENET.EMPRESA: (logo) Empresa: '+Empresa);

      DMAngus:=TDMAngus.Create(nil);
      DMAngus.TBEmpresas.Close;
      DMAngus.TBEmpresas.ParamByName('codigo').AsString:=Empresa; //hash
      DMAngus.TBEmpresas.Open;
      if DMAngus.TBEmpresas.IsEmpty then
      raise Exception.Create('Empresa não localizada.');

      Pasta:=PASTA_EMPRESAS + DMAngus.TBEmpresasEMP_CODIGO.Value.ToString + PathDelim;

      if not DirectoryExists(Pasta) then
      ForceDirectories(Pasta);

      ArquivoEnviado:=Req.RawWebRequest.Files[0].FileName;
      Extensao:=ExtractFileExt(ArquivoEnviado);
      ArquivoLocal:=Empresa+'_ORI'+Extensao;
      ArquivoLocalCrop:=Empresa+Extensao;

      ArquivoDados:=TMemoryStream(Req.RawWebRequest.Files[0].Stream);
      ArquivoDados.SaveToFile(Pasta+ArquivoLocal);
      CropToFitQuality(500,250,Pasta+ArquivoLocal,Pasta+ArquivoLocalCrop,100);

      DMAngus.Query1.Close;
      DMAngus.Query1.SQL.Clear;
      DMAngus.Query1.SQL.Add('update EMPRESAS set EMP_LOGO=:logo where EMP_HASH=:hash');
      DMAngus.Query1.ParamByName('logo').AsString:=ArquivoLocalCrop;
      DMAngus.Query1.ParamByName('hash').AsString:=Empresa;
      DMAngus.Query1.ExecSQL;

      Aleatorio:=Random(100);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('logo', URL_SITE + 'arquivo?op=logo&empresa='+Empresa+'&v='+Aleatorio.ToString);
      Retorno.AddPair('msg','Imagem alterada com sucesso.');
      Result:=Retorno;
    except on ex:Exception do
      begin
        FormMain.Logar('FIRENET.EMPRESA: (logo) exception: '+ex.Message);
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg',ex.Message);
        Result:=Retorno;
      end;
    end;
  finally
    FreeAndNil(DMAngus);
  end;
end;

end.
