unit Firenet.Aliquotas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  Campos='*';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/aliquotas', VerificarOperacao);
  FormMain.Logar('FIRENET.ALIQUOTAS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.ALIQUOTAS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.ALIQUOTAS: sem op.');
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
  Retorno: TJSONObject;
  Listagem: TJSONArray;
begin

  FormMain.Logar('FIRENET.ALIQUOTAS: (listar)');
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select '+Campos+' from ALIQUOTAS order by ALI_NOMEESTADO');
  DM.Query1.Open;
  DM.Query1.FetchAll;

  Listagem:=TJSONArray.Create;

  while not DM.Query1.Eof do
  begin
    Listagem.Add(DM.Query1.ToJSONObject);
    DM.Query1.Next;
  end;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('rpp',FormMain.Edit2.Text);
  Retorno.AddPair('contador',DM.Query1.RecordCount);
  Retorno.AddPair('msg',Listagem);

  Result:=Retorno;
end;

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  ALI_ESTADO: String;
begin
  try
    ALI_ESTADO:=UpperCase(San(Req.ContentFields.Field('ALI_ESTADO').AsString));
    if ALI_ESTADO='' then
    raise Exception.Create('Código do estado não informado.');

    FormMain.Logar('FIRENET.ALIQUOTAS: (visualizar) '+ALI_ESTADO);

    DM.TBAliquotas.Close;
    DM.TBAliquotas.ParamByName('codigo').AsString:=ALI_ESTADO;
    DM.TBAliquotas.Open;
    if DM.TBAliquotas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBAliquotas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBAliquotas.Close;

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
  Retorno, Registro: TJSONObject;
  Listagem: TJSONArray;
  ALI_ESTADO: String;
begin
  try
    ALI_ESTADO:=San(Req.ContentFields.Field('ALI_ESTADO').AsString);

    DM.TBAliquotas.Close;
    DM.TBAliquotas.ParamByName('codigo').AsString:=ALI_ESTADO;
    DM.TBAliquotas.Open;
    if DM.TBAliquotas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    FormMain.Logar('FIRENET.ALIQUOTAS: (atualizar)');

    DM.TBAliquotas.Edit;
    DM.TBAliquotasALI_ALIQFCP.Value:=Req.ContentFields.Field('ALI_ALIQFCP').AsExtended;
    DM.TBAliquotasALI_ALIQFCPST.Value:=Req.ContentFields.Field('ALI_ALIQFCPST').AsExtended;
    DM.TBAliquotasALI_ALIQICMSADICST.Value:=Req.ContentFields.Field('ALI_ALIQICMSADICST').AsExtended;
    DM.TBAliquotasALI_ALIQICMSINTER.Value:=Req.ContentFields.Field('ALI_ALIQICMSINTER').AsExtended;
    DM.TBAliquotasALI_ALIQICMSINTERPART.Value:=Req.ContentFields.Field('ALI_ALIQICMSINTERPART').AsExtended;
    DM.TBAliquotasALI_ALIQICMSRED.Value:=Req.ContentFields.Field('ALI_ALIQICMSRED').AsExtended;
    DM.TBAliquotasALI_ALIQICMSST.Value:=Req.ContentFields.Field('ALI_ALIQICMSST').AsExtended;
    DM.TBAliquotasALI_ALIQUOTA.Value:=Req.ContentFields.Field('ALI_ALIQUOTA').AsExtended;
    DM.TBAliquotasALI_IEST.Value:=Req.ContentFields.Field('ALI_IEST').AsString;
    DM.TBAliquotas.Post;

    Registro:=DM.TBAliquotas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

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

end.
