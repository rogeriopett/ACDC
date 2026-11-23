unit FuncoesShopee;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, System.Hash, System.JSON,
  REST.Client, REST.Types;

implementation

function HMACSHA256(const AData, AKey: string): string;
var
  HMAC: TBytes;
  B: Byte;
begin
  HMAC:=THashSHA2.GetHMACAsBytes(
    TEncoding.UTF8.GetBytes(AData),
    TEncoding.UTF8.GetBytes(AKey),
    SHA256
  );

  Result:='';

  for B in HMAC do
  Result:=Result+LowerCase(IntToHex(B, 2));
end;

function RenovarAccessTokenShopee(PartnerId: Int64; const PartnerKey, RefreshTokenAtual: string; ShopId: Int64; out NovoAccessToken, NovoRefreshToken: string): Boolean;
var
  RESTClient: TRESTClient;
  RESTRequest: TRESTRequest;
  RESTResponse: TRESTResponse;
  Timestamp: Int64;
  Path, BaseString, Sign: string;
  JSONObj, JSONResponse: TJsonObject;
  HashBytes: TBytes;
  HMAC: TBytes;
begin
  Result:=False;
  Path:='/api/v2/auth/access_token/get';

  // Timestamp em segundos (Unix Time UTC)
  Timestamp:=DateTimeToUnix(TTimeZone.Local.ToUniversalTime(Now));

  // Base String da Shopee V2 para Auth/Token: PartnerID + Path + Timestamp
  BaseString:=Format('%d%s%d', [PartnerId, Path, Timestamp]);

  // Assinatura HMAC-SHA256 em minúsculas
  //Sign:=LowerCase(THashSHA2.GetHMACAsString(BaseString, PartnerKey, SHA256));
  Sign := HMACSHA256(BaseString, PartnerKey);

  RESTClient  :=TRESTClient.Create(nil);
  RESTRequest :=TRESTRequest.Create(nil);
  RESTResponse:=TRESTResponse.Create(nil);
  JSONObj := TJsonObject.Create;
  try
    RESTRequest.Client  :=RESTClient;
    RESTRequest.Response:=RESTResponse;
    RESTRequest.Method  :=rmPOST;

    // URL com parâmetros de autenticação do App
    RESTClient.BaseURL := Format('https://open.shopee.com%s?partner_id=%d&timestamp=%d&sign=%s', [Path, PartnerId, Timestamp, Sign]);

    // Payload JSON exigido no corpo da requisição
    JSONObj.AddPair('refresh_token', RefreshTokenAtual);
    JSONObj.AddPair('partner_id', TJSONNumber.Create(PartnerId));
    JSONObj.AddPair('shop_id', TJSONNumber.Create(ShopId));

    RESTRequest.AddBody(JSONObj.ToJSON, ctAPPLICATION_JSON);
    RESTRequest.Execute;

    if RESTResponse.StatusCode = 200 then
    begin
      JSONResponse := TJsonObject.ParseJSONValue(RESTResponse.Content) as TJsonObject;
      try
        // Trata retorno sem erro da API
        if (JSONResponse <> nil) and (JSONResponse.GetValue('error').Value = '') then
        begin
          NovoAccessToken :=JSONResponse.GetValue('access_token').Value;
          NovoRefreshToken:=JSONResponse.GetValue('refresh_token').Value;
          Result:=True;
        end;
      finally
        JSONResponse.Free;
      end;
    end;
  finally
    JSONObj.Free;
    RESTResponse.Free;
    RESTRequest.Free;
    RESTClient.Free;
  end;
end;

end.
