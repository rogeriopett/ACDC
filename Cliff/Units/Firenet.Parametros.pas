unit Firenet.Parametros;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.PARAMETROS: ';
  Campos='PAR_CLIALTERAR, PAR_CLIINSERIR, PAR_REEPREBAIXA';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  //THorse.AddCallback(FormMain.Privado()).Post('/firenet/parametros', VerificarOperacao);
  THorse.Post('/firenet/parametros', VerificarOperacao);
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

      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
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
     FreeAndNil(DM);
  end;
end;

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var Retorno, Registro: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(visualizar)');

//    DM.TBParametros.Close;
//    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
//    DM.TBParametros.Open;
//    if DM.TBParametros.IsEmpty then
//    raise Exception.Create('Registro não encontrado.');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select ''S'' as PAR_CLIALTERAR, ''S'' as PAR_CLIINSERIR, ''N'' as PAR_REEPREBAIXA from RDB$DATABASE');
    DM.Query1.Open;
    Registro:=DM.Query1.ToJSONObject; // DM.TBParametros.ToJSONObject;
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

end.
