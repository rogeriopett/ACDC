unit IasminProvedores;

{ Chamada HTTP aos provedores de IA (sem SDK; Delphi não tem SDK oficial).

  - Anthropic: POST https://api.anthropic.com/v1/messages
  - OpenAI e compatíveis (Ollama, LM Studio...): POST <base>/chat/completions
  - Google Gemini: POST https://generativelanguage.googleapis.com/v1beta/models/<modelo>:generateContent

  Todas as funções são síncronas: chame a partir de uma thread de fundo (TTask). }

interface

uses
  System.SysUtils, IasminConfigDados;

type
  TIAMensagem = record
    Papel: string;  // 'user' ou 'assistant'
    Texto: string;
    class function Usuario(const ATexto: string): TIAMensagem; static;
    class function Assistente(const ATexto: string): TIAMensagem; static;
  end;

  TIAResposta = record
    Ok: Boolean;
    Texto: string;
    Erro: string;
    TokensEntrada: Integer;
    TokensSaida: Integer;
    TokensCacheLidos: Integer;
    ModeloUsado: string;
  end;

{ Sistema: instruções fixas (vão no "system"; na Anthropic recebem cache_control
  para reaproveitar o cache entre perguntas). Mensagens: conversa. }
function IAGerar(const Cfg: TIAConfig; const Sistema: string;
  const Mensagens: TArray<TIAMensagem>; MaxTokens: Integer = 16000): TIAResposta;

implementation

uses
  System.Classes, System.JSON, System.Net.HttpClient, System.Net.URLClient,
  System.NetConsts, System.NetEncoding;

const
  ANTHROPIC_URL     = 'https://api.anthropic.com/v1/messages';
  ANTHROPIC_VERSION = '2026-10-21';
  ANTHROPIC_BETA_FALLBACK = 'server-side-fallback-2026-07-01';
  OPENAI_URL        = 'https://api.openai.com/v1';
  GEMINI_URL        = 'https://generativelanguage.googleapis.com/v1beta/models/';

{ TIAMensagem }

class function TIAMensagem.Usuario(const ATexto: string): TIAMensagem;
begin
  Result.Papel := 'user';
  Result.Texto := ATexto;
end;

class function TIAMensagem.Assistente(const ATexto: string): TIAMensagem;
begin
  Result.Papel := 'assistant';
  Result.Texto := ATexto;
end;

{ ---------- utilitários ---------- }

function Post(const Cfg: TIAConfig; const Url, Corpo: string;
  const Cabecalhos: TNetHeaders; out Status: Integer): string;
var
  Http: THTTPClient;
  Body: TStringStream;
  Resp: IHTTPResponse;
begin
  Http := THTTPClient.Create;
  Body := TStringStream.Create(Corpo, TEncoding.UTF8);
  try
    Http.ContentType := 'application/json';
    Http.Accept := 'application/json';
    Http.ConnectionTimeout := 15000;
    Http.ResponseTimeout := Cfg.TimeoutSeg * 1000;
    Resp := Http.Post(Url, Body, nil, Cabecalhos);
    Status := Resp.StatusCode;
    Result := Resp.ContentAsString(TEncoding.UTF8);
  finally
    Body.Free;
    Http.Free;
  end;
end;

function MensagemDeErro(const Json: string; Status: Integer): string;
var
  V: TJSONValue;
  S: string;
begin
  Result := Format('HTTP %d', [Status]);
  V := TJSONObject.ParseJSONValue(Json);
  try
    // Anthropic, OpenAI e Gemini usam o mesmo caminho: {"error": {"message": "..."}}
    if (V <> nil) and V.TryGetValue<string>('error.message', S) then
      Result := Result + ': ' + S
    else if Json <> '' then
      Result := Result + ': ' + Copy(Json, 1, 500);
  finally
    V.Free;
  end;
  case Status of
    401, 403: Result := Result + sLineBreak + 'Verifique a chave da API na configuração da IA.';
    429:      Result := Result + sLineBreak + 'Limite de uso do provedor atingido. Aguarde e tente de novo, ou verifique o plano/créditos da conta.';
  end;
end;

function IntDe(V: TJSONValue; const Caminho: string): Integer;
begin
  if (V = nil) or not V.TryGetValue<Integer>(Caminho, Result) then
    Result := 0;
end;

{ ---------- Anthropic ---------- }

function ModeloAceitaFallback(const Modelo: string): Boolean;
begin
  // fallbacks: "default" (roteamento automático em caso de recusa por classificador
  // de segurança) existe na API da Anthropic para estes modelos.
  Result := (Modelo = 'claude-opus-5-5') or (Modelo = 'claude-opus-5') or
            (Modelo = 'claude-fable-5-1') or (Modelo = 'claude-sonnet-5-5');
end;

function GerarAnthropic(const Cfg: TIAConfig; const Sistema: string;
  const Msgs: TArray<TIAMensagem>; MaxTokens: Integer): TIAResposta;
var
  Req, Bloco, Cache, OutCfg, M: TJSONObject;
  ArrSys, ArrMsg: TJSONArray;
  Resp, Item: TJSONValue;
  Conteudo: TJSONArray;
  Cab: TNetHeaders;
  Status, I: Integer;
  Json, Tipo, Parada, Modelo: string;
  Texto: TStringBuilder;
begin
  Result := Default(TIAResposta);
  Modelo := Cfg.ModeloEfetivo;

  Req := TJSONObject.Create;
  try
    Req.AddPair('model', Modelo);
    Req.AddPair('max_tokens', TJSONNumber.Create(MaxTokens));

    // system como bloco com cache_control: o contexto (instruções, regras, exemplos
    // e, no modo completo, o dicionário) é igual em todas as perguntas e passa a ser
    // cobrado como leitura de cache a partir da 2ª pergunta.
    ArrSys := TJSONArray.Create;
    Bloco := TJSONObject.Create;
    Bloco.AddPair('type', 'text');
    Bloco.AddPair('text', Sistema);
    Cache := TJSONObject.Create;
    Cache.AddPair('type', 'ephemeral');
    Bloco.AddPair('cache_control', Cache);
    ArrSys.AddElement(Bloco);
    Req.AddPair('system', ArrSys);

    ArrMsg := TJSONArray.Create;
    for I := 0 to High(Msgs) do
    begin
      M := TJSONObject.Create;
      M.AddPair('role', Msgs[I].Papel);
      M.AddPair('content', Msgs[I].Texto);
      ArrMsg.AddElement(M);
    end;
    Req.AddPair('messages', ArrMsg);

    if Trim(Cfg.Esforco) <> '' then
    begin
      OutCfg := TJSONObject.Create;
      OutCfg.AddPair('effort', Trim(Cfg.Esforco));
      Req.AddPair('output_config', OutCfg);
    end;

    SetLength(Cab, 2);
    Cab[0] := TNetHeader.Create('x-api-key', Cfg.ApiKey);
    Cab[1] := TNetHeader.Create('anthropic-version', ANTHROPIC_VERSION);
    if ModeloAceitaFallback(Modelo) then
    begin
      Req.AddPair('fallbacks', 'default');
      Cab := Cab + [TNetHeader.Create('anthropic-beta', ANTHROPIC_BETA_FALLBACK)];
    end;

    Json := Post(Cfg, ANTHROPIC_URL, Req.ToJSON, Cab, Status);
  finally
    Req.Free;
  end;

  if Status <> 200 then
  begin
    Result.Erro := MensagemDeErro(Json, Status);
    Exit;
  end;

  Resp := TJSONObject.ParseJSONValue(Json);
  if Resp = nil then
  begin
    Result.Erro := 'Resposta inválida do provedor.';
    Exit;
  end;
  Texto := TStringBuilder.Create;
  try
    Resp.TryGetValue<string>('stop_reason', Parada);
    Resp.TryGetValue<string>('model', Result.ModeloUsado);
    Result.TokensEntrada := IntDe(Resp, 'usage.input_tokens') + IntDe(Resp, 'usage.cache_creation_input_tokens');
    Result.TokensCacheLidos := IntDe(Resp, 'usage.cache_read_input_tokens');
    Result.TokensSaida := IntDe(Resp, 'usage.output_tokens');

    if Parada = 'refusal' then
    begin
      Result.Erro := 'O provedor de IA recusou esta pergunta. Reformule a pergunta.';
      Exit;
    end;

    // content pode trazer blocos "thinking"/"fallback" além de "text": junta só os de texto.
    if Resp.TryGetValue<TJSONArray>('content', Conteudo) then
      for Item in Conteudo do
        if Item.TryGetValue<string>('type', Tipo) and (Tipo = 'text') then
          Texto.Append(Item.GetValue<string>('text'));

    Result.Texto := Texto.ToString;
    if Parada = 'max_tokens' then
      Result.Erro := 'A resposta da IA foi cortada (limite de tamanho).'
    else
      Result.Ok := Result.Texto <> '';
    if not Result.Ok and (Result.Erro = '') then
      Result.Erro := 'A IA não retornou texto.';
  finally
    Texto.Free;
    Resp.Free;
  end;
end;

{ ---------- OpenAI / compatível ---------- }

function GerarOpenAI(const Cfg: TIAConfig; const Sistema: string;
  const Msgs: TArray<TIAMensagem>; MaxTokens: Integer): TIAResposta;
var
  Req, M: TJSONObject;
  ArrMsg: TJSONArray;
  Resp: TJSONValue;
  Cab: TNetHeaders;
  Status, I: Integer;
  Json, Base: string;
begin
  Result := Default(TIAResposta);
  if Cfg.Provedor = ipCompativel then Base := Trim(Cfg.UrlBase) else Base := OPENAI_URL;
  while Base.EndsWith('/') do Base := Copy(Base, 1, Length(Base) - 1);

  Req := TJSONObject.Create;
  try
    Req.AddPair('model', Cfg.ModeloEfetivo);
    ArrMsg := TJSONArray.Create;
    M := TJSONObject.Create;
    M.AddPair('role', 'system');
    M.AddPair('content', Sistema);
    ArrMsg.AddElement(M);
    for I := 0 to High(Msgs) do
    begin
      M := TJSONObject.Create;
      M.AddPair('role', Msgs[I].Papel);
      M.AddPair('content', Msgs[I].Texto);
      ArrMsg.AddElement(M);
    end;
    Req.AddPair('messages', ArrMsg);
    // OpenAI faz cache automático de prefixos longos; nada a configurar.

    if Trim(Cfg.ApiKey) <> '' then
      Cab := [TNetHeader.Create('Authorization', 'Bearer ' + Trim(Cfg.ApiKey))];

    Json := Post(Cfg, Base + '/chat/completions', Req.ToJSON, Cab, Status);
  finally
    Req.Free;
  end;

  if Status <> 200 then
  begin
    Result.Erro := MensagemDeErro(Json, Status);
    Exit;
  end;
  Resp := TJSONObject.ParseJSONValue(Json);
  try
    if (Resp = nil) or not Resp.TryGetValue<string>('choices[0].message.content', Result.Texto) then
    begin
      Result.Erro := 'Resposta inválida do provedor.';
      Exit;
    end;
    Resp.TryGetValue<string>('model', Result.ModeloUsado);
    Result.TokensEntrada := IntDe(Resp, 'usage.prompt_tokens');
    Result.TokensSaida := IntDe(Resp, 'usage.completion_tokens');
    Result.TokensCacheLidos := IntDe(Resp, 'usage.prompt_tokens_details.cached_tokens');
    Result.Ok := Result.Texto <> '';
    if not Result.Ok then Result.Erro := 'A IA não retornou texto.';
  finally
    Resp.Free;
  end;
end;

{ ---------- Gemini ---------- }

function GerarGemini(const Cfg: TIAConfig; const Sistema: string;
  const Msgs: TArray<TIAMensagem>; MaxTokens: Integer): TIAResposta;
var
  Req, SysObj, Parte, Cont: TJSONObject;
  Partes, ArrCont, RespPartes: TJSONArray;
  Resp, Item: TJSONValue;
  Cab: TNetHeaders;
  Status, I: Integer;
  Json, Papel, S: string;
  Texto: TStringBuilder;
begin
  Result := Default(TIAResposta);
  Req := TJSONObject.Create;
  try
    SysObj := TJSONObject.Create;
    Partes := TJSONArray.Create;
    Parte := TJSONObject.Create;
    Parte.AddPair('text', Sistema);
    Partes.AddElement(Parte);
    SysObj.AddPair('parts', Partes);
    Req.AddPair('systemInstruction', SysObj);

    ArrCont := TJSONArray.Create;
    for I := 0 to High(Msgs) do
    begin
      if Msgs[I].Papel = 'assistant' then Papel := 'model' else Papel := 'user';
      Cont := TJSONObject.Create;
      Cont.AddPair('role', Papel);
      Partes := TJSONArray.Create;
      Parte := TJSONObject.Create;
      Parte.AddPair('text', Msgs[I].Texto);
      Partes.AddElement(Parte);
      Cont.AddPair('parts', Partes);
      ArrCont.AddElement(Cont);
    end;
    Req.AddPair('contents', ArrCont);

    Cab := [TNetHeader.Create('x-goog-api-key', Trim(Cfg.ApiKey))];
    Json := Post(Cfg, GEMINI_URL + TNetEncoding.URL.Encode(Cfg.ModeloEfetivo) + ':generateContent',
      Req.ToJSON, Cab, Status);
  finally
    Req.Free;
  end;

  if Status <> 200 then
  begin
    Result.Erro := MensagemDeErro(Json, Status);
    Exit;
  end;
  Resp := TJSONObject.ParseJSONValue(Json);
  Texto := TStringBuilder.Create;
  try
    if (Resp <> nil) and Resp.TryGetValue<TJSONArray>('candidates[0].content.parts', RespPartes) then
      for Item in RespPartes do
        if Item.TryGetValue<string>('text', S) then
          Texto.Append(S);
    Result.Texto := Texto.ToString;
    Result.ModeloUsado := Cfg.ModeloEfetivo;
    Result.TokensEntrada := IntDe(Resp, 'usageMetadata.promptTokenCount');
    Result.TokensSaida := IntDe(Resp, 'usageMetadata.candidatesTokenCount');
    Result.TokensCacheLidos := IntDe(Resp, 'usageMetadata.cachedContentTokenCount');
    Result.Ok := Result.Texto <> '';
    if not Result.Ok then Result.Erro := 'A IA não retornou texto (resposta bloqueada ou vazia).';
  finally
    Texto.Free;
    Resp.Free;
  end;
end;

{ ---------- entrada única ---------- }

function IAGerar(const Cfg: TIAConfig; const Sistema: string;
  const Mensagens: TArray<TIAMensagem>; MaxTokens: Integer): TIAResposta;
begin
  try
    case Cfg.Provedor of
      ipAnthropic: Result := GerarAnthropic(Cfg, Sistema, Mensagens, MaxTokens);
      ipGemini:    Result := GerarGemini(Cfg, Sistema, Mensagens, MaxTokens);
    else
      Result := GerarOpenAI(Cfg, Sistema, Mensagens, MaxTokens);
    end;
  except
    on E: ENetHTTPClientException do
    begin
      Result := Default(TIAResposta);
      Result.Erro := 'Falha de conexão com o provedor de IA: ' + E.Message;
    end;
    on E: Exception do
    begin
      Result := Default(TIAResposta);
      Result.Erro := 'Erro ao chamar a IA: ' + E.Message;
    end;
  end;
end;

end.
