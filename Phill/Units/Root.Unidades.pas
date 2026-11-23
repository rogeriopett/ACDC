unit Root.Unidades;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, FireDAC.Comp.Client;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function ComboBox(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  PrefixLog='ROOT.UNIDADES: ';
  Campos='UNI_CODIGO, UNI_DESCRICAO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
//  THorse.Post('/menu', VerificarOperacao);
  THorse.AddCallback(FormMain.Privado()).Post('/unidades', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMAngus.Create(nil);

      Operacao:=Req.ContentFields.Field('op').AsString;

      if Operacao='combo' then Res.Send( ComboBox(DM,Req) ).Status(200) else
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

function ComboBox(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  Retorno, Usuario: TJSONObject;
  Listagem: TJSONArray;
  //ComTodos: String;
begin
  FormMain.Logar(PrefixLog+'(combo)');
//  Usuario:=GetUserFromToken(Req);
//  DM.TBUsuarios.Close;
//  DM.TBUsuarios.ParamByName('codigo').AsString:=Usuario.GetValue<Integer>('USU_CODIGO').ToString;
//  DM.TBUsuarios.Open;

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select '+Campos+' from UNIDADES order by UNI_CODIGO');
  DM.Query1.Open;
  DM.Query1.First;

  Listagem:=TJSONArray.Create;
  Listagem:=DM.Query1.ToJSONArray;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('msg',Listagem);
  Result:=Retorno;
end;

end.
