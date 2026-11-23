unit Usuario.Cadastro;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, System.Hash;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  PrefixLog='USUARIO.CADASTRO: ';

implementation
uses Funcoes, BCrypt, Vcl.StdCtrls, Vcl.Forms;

procedure RegistrarRotas;
begin
  THorse.Post('/usuario/cadastro', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    DM:=TDMAngus.Create(nil);

    Operacao:=Req.ContentFields.Field('op').AsString;

    if Operacao='inserir' then Res.Send( Inserir(DM,Req) ).Status(200) else
    begin
      FormMain.Logar(PrefixLog+'sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      //Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado.');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  USU_ADMIN, USU_APELIDO, USU_AVATAR, USU_CONFIRMACAO, USU_CPF, USU_EMAIL, USU_FONE1, USU_GESTOR, USU_HASH, USU_NOME, USU_PASSWORD, USU_PASSWORD1, USU_PASSWORD2, USU_STATUS: String;
  USU_CODIGO: Integer;
  USU_DTATUALIZACAO: TDate;
  USU_HRATUALIZACAO: TTime;
  MM: TMemo;
  RetEmail: String;
  Retorno: TJSONObject;
begin
  try
    USU_ADMIN         :='N';
    USU_AVATAR        :='sem_foto.jpg';
    USU_CONFIRMACAO   :=GerarSenha(6,False,False,True,False);
    USU_CPF           :=FormatarCPFCNPJ(Req.ContentFields.Field('USU_CPF').AsString);
    USU_EMAIL         :=San(Req.ContentFields.Field('USU_EMAIL').AsString);
    USU_FONE1         :=FormatarFone(Req.ContentFields.Field('USU_FONE1').AsString);
    USU_GESTOR        :='N';
    USU_NOME          :=San(Req.ContentFields.Field('USU_NOME').AsString);
    USU_APELIDO       :=Copy(USU_NOME,0,Pos(' ',USU_NOME));
    USU_PASSWORD1     :=San(Req.ContentFields.Field('USU_PASSWORD1').AsString,0);
    USU_PASSWORD2     :=San(Req.ContentFields.Field('USU_PASSWORD2').AsString,0);
    USU_STATUS        :='C'; //confirmar.

    Obrigatorio(USU_NOME,'Nome');
    Obrigatorio(USU_APELIDO,'Nome Completo');
    Obrigatorio(USU_EMAIL,'Email');
    Obrigatorio(USU_FONE1,'Fone');
    Obrigatorio(USU_CPF,'CPF');
    Obrigatorio(USU_PASSWORD1,'Digite uma Senha');
    Obrigatorio(USU_PASSWORD2,'Confirme a Senha');

    if USU_PASSWORD1<>USU_PASSWORD2 then
    raise Exception.Create('As senhas não são iguais.');

    USU_PASSWORD      :=TBCrypt.GenerateHash(USU_PASSWORD1,4);

    FormMain.Logar(PrefixLog+'(inserir): '+USU_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select count(*) as QTDE from USUARIOS where USU_EMAIL=:email');
    DM.Query1.ParamByName('email').AsString:=USU_EMAIL;
    DM.Query1.Open;
    if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
    raise Exception.Create('Já existe um usuário com esse email.');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select count(*) as QTDE from USUARIOS where USU_CPF=:cpf');
    DM.Query1.ParamByName('cpf').AsString:=USU_CPF;
    DM.Query1.Open;
    if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
    raise Exception.Create('Já existe um usuário com esse CPF.');

    DM.TBUsuarios.Open;
    DM.TBUsuarios.Insert;
    DM.TBUsuariosUSU_ADMIN.Value        :=USU_ADMIN;
    DM.TBUsuariosUSU_APELIDO.Value      :=USU_APELIDO;
    DM.TBUsuariosUSU_AVATAR.Value       :=USU_AVATAR;
    DM.TBUsuariosUSU_CONFIRMACAO.Value  :=USU_CONFIRMACAO;
    DM.TBUsuariosUSU_CPF.Value          :=USU_CPF;
    DM.TBUsuariosUSU_DTATUALIZACAO.Value:=Date;
    DM.TBUsuariosUSU_DTCADASTRO.Value   :=Date;
    DM.TBUsuariosUSU_EMAIL.Value        :=USU_EMAIL;
    DM.TBUsuariosUSU_FONE1.Value        :=USU_FONE1;
    DM.TBUsuariosUSU_GESTOR.Value       :=USU_GESTOR;
    //DM.TBUsuariosUSU_HASH.Value:=MD5Print(MD5String('USU_'+DM.TBUsuariosUSU_CODIGO.Value.ToString));
    DM.TBUsuariosUSU_HRATUALIZACAO.Value:=Time;
    DM.TBUsuariosUSU_HRCADASTRO.Value   :=Time;
    DM.TBUsuariosUSU_NOME.Value         :=Trim(USU_NOME);
    DM.TBUsuariosUSU_PASSWORD.Value     :=USU_PASSWORD;
    DM.TBUsuariosUSU_STATUS.Value       :=USU_STATUS;
    DM.TBUsuarios.Post;

    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_HASH.Value:=THashMD5.GetHashString('USU_'+DM.TBUsuariosUSU_CODIGO.Value.ToString);
    DM.TBUsuarios.Post;

    DM.TBParametros.Close;
    DM.TBParametros.ParamByName('codigo').AsInteger:=1;
    DM.TBParametros.Open;

    //envia email.
    MM:=TMemo.CreateParented(Application.Handle);
    MM.WordWrap:=False;
    MM.Lines.Add(DM.TBParametrosPAR_NOVOUSUARIO.Value);
    MM.Text:=StringReplace(MM.Text,'|NOME|',DM.TBUsuariosUSU_NOME.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|EMAIL|',DM.TBUsuariosUSU_EMAIL.Value,[rfReplaceAll]);
    MM.Text:=StringReplace(MM.Text,'|CONFIRMACAO|',DM.TBUsuariosUSU_CONFIRMACAO.Value,[rfReplaceAll]);

    RetEmail:=EnviarEmailAngus(DM,DM.TBUsuariosUSU_EMAIL.Value,'','Cadastro no site .',MM.Lines.Text);

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
