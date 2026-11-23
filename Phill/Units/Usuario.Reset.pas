unit Usuario.Reset;

interface

uses Main, DataModAngus, Horse, System.Classes, System.SysUtils, System.JSON, DataSet.Serialize, BCrypt, Jose.Core.JWT, Jose.Core.Builder;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
function Reset(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  PrefixLog='USUARIO.RESET: ';

implementation
uses Funcoes, Imagens.Utils, Usuario.Login, Vcl.StdCtrls, Vcl.Forms;

procedure RegistrarRotas;
begin
  THorse.Post('/usuario/reset', VerificarOperacao);
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

      if Operacao='resetar' then Res.Send( Reset(DM,Req) ).Status(200) else
      raise Exception.Create('Recurso não encontrado.');

    except on ex:Exception do
      begin
        FormMain.Logar(PrefixLog+'(op) exception: '+ex.Message);
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('msg',ex.Message);
        Res.Send<TJSONObject>(Retorno).Status(404);
      end;
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Reset(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Retorno, Usuario: TJSONObject;
  MM: TMemo;
  RetEmail, USU_EMAIL, NovaSenha: String;
begin
  try
    USU_EMAIL:=San(Req.ContentFields.Field('email').AsString);
    FormMain.Logar(PrefixLog+'(reset) '+USU_EMAIL);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select USU_CODIGO, USU_EMAIL, USU_NOME from USUARIOS where USU_EMAIL=:email order by USU_CODIGO');
    DM.Query1.ParamByName('email').AsString:=USU_EMAIL;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Não foi possível resetar a senha para o email '+USU_EMAIL);

    NovaSenha:=GerarSenha();

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.Query1.FieldByName('USU_CODIGO').AsInteger;
    DM.TBUsuarios.Open;
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=TBCrypt.GenerateHash(NovaSenha);
    DM.TBUsuarios.Post;

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;

    MM:=TMemo.CreateParented(Application.Handle);
    MM.WordWrap:=False;
    MM.Lines.Add(DM.TBParametrosPAR_RESETARSENHA.Value);
    MM.Text:=StringReplace(MM.Text,'|NOME|',DM.TBUsuariosUSU_NOME.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|EMAIL|',DM.TBUsuariosUSU_EMAIL.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|NOVA_SENHA|',NovaSenha,[rfReplaceAll]);

    RetEmail:=EnviarEmailAngus(DM,DM.TBUsuariosUSU_EMAIL.Value,'','Senha senha foi redefinida.',MM.Lines.Text);

    DM.TBUsuarios.Close;
    DM.TBParametros.Close;
    FreeAndNil(MM);

    if RetEmail='OK' then
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg','Uma nova senha foi enviada para o email '+USU_EMAIL+'.');
      Result:=Retorno;
    end else
    begin
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Erro ao enviar email. '+RetEmail);
      Result:=Retorno;
    end;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(reset) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
