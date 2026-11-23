unit Root.Certificado;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet,
  IdHTTP, IdSSLOpenSSL, IdTCPClient, IdSSLOpenSSLHeaders, WinInet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function GetSSLCertificateExpirationDate(const AHost: String): TJSONObject;

const
  PrefixLog='ROOT.CERTIFICADO: ';

implementation

uses Funcoes, Winapi.Windows;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/certificado', VerificarOperacao);
  FormMain.Logar('ROOT.CERTIFICADO: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      Operacao:=San(Req.ContentFields.Field('op').AsString);

      if Operacao='certificado' then Res.Send( GetSSLCertificateExpirationDate(URL_API) ).Status(200) else
      begin
        FormMain.Logar('ROOT.CERTIFICADO: sem op.');
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
     //FreeAndNil(DM);
  end;
end;

function GetSSLCertificateExpirationDate(const AHost: String): TJSONObject;
var
  hSession, hConnect, hRequest: HINTERNET;
  CertInfo: INTERNET_CERTIFICATE_INFO;
  CertInfoSize: DWORD;
  FileTime: TFileTime;
  SystemTime: TSystemTime;
  Host: String;
  Port: Word;
  Expiry: TDateTime;
begin
  Result:=TJSONObject.Create;
  try
    // Extrai host da URL
    Host := AHost;
    if Pos('https://', LowerCase(Host)) = 1 then Delete(Host, 1, 8);
    if Pos('/', Host) > 0 then Host:=Copy(Host, 1, Pos('/', Host) - 1);
    Port:=443;
    hSession:=InternetOpen('SSLChecker/1.0', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
    if hSession = nil then
    raise Exception.Create('Falha ao iniciar sessão WinInet');
    try
      hConnect:=InternetConnect(hSession, PChar(Host), Port, nil, nil, INTERNET_SERVICE_HTTP, 0, 0);
      if hConnect=nil then
      raise Exception.CreateFmt('Falha ao conectar em: %s', [Host]);
      try
        hRequest:=HttpOpenRequest(hConnect, 'HEAD', '/', nil, nil, nil, INTERNET_FLAG_SECURE or INTERNET_FLAG_NO_CACHE_WRITE or INTERNET_FLAG_IGNORE_CERT_CN_INVALID or INTERNET_FLAG_IGNORE_CERT_DATE_INVALID, 0);
        if hRequest=nil then
        raise Exception.Create('Falha ao criar requisição HTTP');
        try
          if not HttpSendRequest(hRequest, nil, 0, nil, 0) then
          raise Exception.CreateFmt('Falha ao enviar requisição: %s', [SysErrorMessage(GetLastError)]);

          CertInfoSize:=SizeOf(CertInfo);
          ZeroMemory(@CertInfo, CertInfoSize);

          if InternetQueryOption(hRequest, INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT, @CertInfo, CertInfoSize) then
          begin
            FileTime:=CertInfo.ftExpiry;

            if FileTimeToSystemTime(FileTime, SystemTime) then
            begin
              Expiry:=SystemTimeToDateTime(SystemTime);
              Result.AddPair('erro', 'N');
              Result.AddPair('msg', FormatDateTime('dd/mm/yyyy hh:nn:ss', Expiry));
              FormMain.Logar(PrefixLog+'(certificado) '+FormatDateTime('dd/mm/yyyy hh:nn:ss', Expiry));
            end else
            raise Exception.Create('Falha ao converter data de expiração');

            if CertInfo.lpszSubjectInfo <> nil then LocalFree(HLOCAL(CertInfo.lpszSubjectInfo));
            if CertInfo.lpszIssuerInfo <> nil then LocalFree(HLOCAL(CertInfo.lpszIssuerInfo));
          end else
          raise Exception.Create('Não foi possível obter informações do certificado SSL');
        finally
          InternetCloseHandle(hRequest);
        end;
      finally
        InternetCloseHandle(hConnect);
      end;
    finally
      InternetCloseHandle(hSession);
    end;

  except
    on E: Exception do
    begin
      // Limpa pares anteriores caso tenha dado erro parcial
      while Result.Count > 0 do
      Result.RemovePair(Result.Pairs[0].JsonString.Value).Free;
      Result.AddPair('erro', 'S');
      Result.AddPair('msg', E.Message);
    end;
  end;
end;

end.
