unit Site.Grupos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='SITE.GRUPOS: ';
  Campos='GRU_CODIGO, GRU_DESCRICAO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  //THorse.AddCallback(FormMain.Privado()).Post('/firenet/grupos', VerificarOperacao);
  THorse.Post('/site/grupos', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMFirenet.Create(nil);

      Operacao:=San(Req.ContentFields.Field('op').AsString);

      if Operacao='listar' then Res.Send( Listar(DM,Req) ).Status(200) else
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

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Pagina, Registros, Skip: Integer;
  Where: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    //Pagina:=SoNumeros(Req.ContentFields.Field('pagina').AsString);

    //FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString);
    FormMain.Logar(PrefixLog+'(listar)');

    //Registros:=StrToInt(FormMain.Edit2.Text);
    //Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    //DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') GRU_CODIGO as value, GRU_DESCRICAO as label from GRUPOS where GRU_INTERNET=''S'' order by GRU_DESCRICAO');
    DM.Query1.SQL.Add('select GRU_CODIGO as "value", GRU_DESCRICAO as "label" from GRUPOS where GRU_INTERNET=''S'' order by GRU_DESCRICAO');
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
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
