unit Root.Arquivos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure LogoEmpresa(Req: THorseRequest; Res: THorseResponse);
procedure Profile(Req: THorseRequest; Res: THorseResponse);

const
  PrefixLog='ROOT.ARQUIVOS: ';

implementation
uses Funcoes, DataModAngus, Main;

procedure RegistrarRotas;
begin
  //THorse.AddCallback(FormMain.Privado()).Get('/arquivo', VerificarOperacao);
  THorse.Get('/arquivo', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Retorno: TJSONObject;
  Operacao, Empresa: String;
begin
  try
    try
      Operacao:=San(Req.Query.Field('op').AsString);

      if Operacao='logo'    then LogoEmpresa(Req,Res) else
      if Operacao='profile' then Profile(Req,Res)     else
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

  end;
end;

procedure LogoEmpresa(Req: THorseRequest; Res: THorseResponse);
var
  DMA: TDMAngus;
  Retorno: TJSONObject;
  Empresa, Pasta, Arquivo: String;
begin
  try
    try
      DMA:=TDMAngus.Create(nil);

      Empresa:=San(Req.Query.Field('empresa').AsString);
      if Empresa='' then
      begin
        FormMain.Logar(PrefixLog+'(logo) sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      //DM.SetarBancoEmpresa(Empresa);

      FormMain.Logar(PrefixLog+'(logo) '+Empresa);

      DMA.Query1.Close;
      DMA.Query1.SQL.Clear;
      DMA.Query1.SQL.Add('select EMP_CODIGO, EMP_LOGO from EMPRESAS where EMP_HASH=:hash order by EMP_CODIGO');
      DMA.Query1.ParamByName('hash').AsString:=Empresa;
      DMA.Query1.Open;

      if DMA.Query1.FieldByName('EMP_LOGO').AsString='sem_logo.jpg' then
      Arquivo:=PASTA_ROOT + PASTA_EMPRESAS + 'sem_logo.jpg' else
      Arquivo:=PASTA_ROOT + PASTA_EMPRESAS + DMA.Query1.FieldByName('EMP_CODIGO').AsString + PathDelim + DMA.Query1.FieldByName('EMP_LOGO').AsString;

  //    Arquivo:=PASTA_ROOT + PASTA_EMPRESAS + 'sem_logo.jpg' else
//      Arquivo:=PASTA_ROOT + PASTA_EMPRESAS + DMA.Query1.FieldByName('EMP_CODIGO').AsString + PathDelim + DMA.Query1.FieldByName('EMP_LOGO').AsString;

      DMA.Query1.Close;

      Res.SendFile(Arquivo);

    except on ex:exception do
      begin
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('msg',ex.Message);
        Res.Send(Retorno).Status(404);
      end;
    end;
  finally
    FreeAndNil(DMA);
  end;
end;

procedure Profile(Req: THorseRequest; Res: THorseResponse);
var
  Retorno: TJSONObject;
  Arquivo, F: String;
begin
  try
    F:=Req.Query.Field('f').AsString;

    FormMain.Logar(PrefixLog+'(profile) '+F);

    Arquivo:=PASTA_PROFILES + F;

    Res.SendFile(Arquivo);

  except on ex:exception do
    begin
      FormMain.Logar(PrefixLog+'(profile) exception '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('msg',ex.Message);
      Res.Send(Retorno).Status(404);
    end;
  end;
end;

end.
