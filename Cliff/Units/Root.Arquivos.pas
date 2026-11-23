//Atualizacoes:
//2026.11.18 - Operacao logosvg (GET /arquivo?op=logosvg, publica): devolve a logomarca SVG gravada em EMPRESA.EMP_LOGOSVG.
unit Root.Arquivos;

interface

uses Horse, System.Classes, System.JSON, System.SysUtils, DataSet.Serialize, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure LogomarcaSVG(Req: THorseRequest; Res: THorseResponse);

implementation

uses Funcoes, Main;

const
  PrefixLog='ROOT.ARQUIVOS: ';

procedure RegistrarRotas;
begin
  //rota publica: a logo aparece antes do login.
  THorse.Get('/arquivo', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    Operacao:=San(Req.Query.Field('op').AsString);
    if Operacao='logosvg' then LogomarcaSVG(Req,Res) else
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
end;

//Logomarca SVG gravada pelo Firenet (tela de logomarca, aba Logo SVG).
//O campo e texto em WIN1252; sai em UTF-8, como o navegador espera.
procedure LogomarcaSVG(Req: THorseRequest; Res: THorseResponse);
var
  DM: TDMFirenet;
  SVG: String;
  Stream: TStringStream;
begin
  DM:=TDMFirenet.Create(nil);
  try
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first 1 EMP_LOGOSVG from EMPRESA order by EMP_CODIGO');
    DM.Query1.Open;
    SVG:=DM.Query1.FieldByName('EMP_LOGOSVG').AsString;
    DM.Query1.Close;
  finally
    FreeAndNil(DM);
  end;

  if Trim(SVG)='' then
  begin
    FormMain.Logar(PrefixLog+'(logosvg) logomarca SVG nao cadastrada.');
    raise Exception.Create('Logomarca não encontrada.');
  end;

  Stream:=TStringStream.Create(SVG, TEncoding.UTF8);
  try
    Res.SendFile(Stream, 'Logomarca.svg', 'image/svg+xml; charset=utf-8'); //o SendFile do Horse envia na hora e nao libera o stream.
  finally
    Stream.Free;
  end;
end;

end.
