unit Firenet.EmailsContas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.EMAILSCONTAS: ';
  Campos='EMC_CODIGO, EMC_NOME, EMC_EMAIL, EMC_DTATUALIZACAO, EMC_STATUS';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/emailscontas', VerificarOperacao);
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
      Empresa:=San(Req.ContentFields.Field('empresa').AsString);
      if Empresa='' then
      begin
        FormMain.Logar(PrefixLog+'sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      DM.SetarBancoEmpresa(Empresa);

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
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
  Pagina, Registros, Skip, EMC_CODIGO: Integer;
  Where, EMC_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina    :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    EMC_CODIGO:=SoNumeros(Req.ContentFields.Field('EMC_CODIGO').AsString);
    EMC_NOME  :=San(Req.ContentFields.Field('EMC_NOME').AsString);
    Where:='';
    if EMC_CODIGO<>0 then Where:=Where+' and EMC_CODIGO='+EMC_CODIGO.ToString;
    if EMC_NOME<>''  then Where:=Where+' and EMC_NOME like '+QuotedStr(EMC_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+EMC_CODIGO.ToString+', NOME: '+EMC_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from EMAILSCONTAS where 1=1 '+Where+' order by EMC_NOME');
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

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  EMC_CODIGO: Integer;
begin
  try
    EMC_CODIGO:=SoNumeros(Req.ContentFields.Field('EMC_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+EMC_CODIGO.ToString);

    DM.TBEmailsContas.Close;
    DM.TBEmailsContas.ParamByName('codigo').AsInteger:=EMC_CODIGO;
    DM.TBEmailsContas.Open;
    if DM.TBEmailsContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBEmailsContas.ToJSONObject;
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

function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  EMC_CODIGO: Integer;
  EMC_EMAIL, EMC_LOGIN, EMC_NOME, EMC_SENHA: String;
begin
  try
    EMC_CODIGO:=SoNumeros(Req.ContentFields.Field('EMC_CODIGO').AsString);
    EMC_EMAIL :=San(Req.ContentFields.Field('EMC_EMAIL').AsString);
    EMC_LOGIN :=San(Req.ContentFields.Field('EMC_LOGIN').AsString);
    EMC_NOME  :=San(Req.ContentFields.Field('EMC_NOME').AsString);
    EMC_SENHA :=San(Req.ContentFields.Field('EMC_SENHA').AsString);

    Obrigatorio(EMC_CODIGO.ToString,'Código','0');
    Obrigatorio(EMC_EMAIL,'Email');
    Obrigatorio(EMC_LOGIN,'Login');
    Obrigatorio(EMC_NOME,'Nome');
    Obrigatorio(EMC_SENHA,'Senha');

    FormMain.Logar(PrefixLog+'(atualizar) '+EMC_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBEmailsContas.Close;
    DM.TBEmailsContas.ParamByName('codigo').AsInteger:=EMC_CODIGO;
    DM.TBEmailsContas.Open;
    if DM.TBEmailsContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBEmailsContas.Edit;
    DM.TBEmailsContasEMC_ASSINATURA.Value   :=San(Req.ContentFields.Field('EMC_ASSINATURA').AsString,0);
    DM.TBEmailsContasEMC_CONFIRMACAO.Value  :=San(Req.ContentFields.Field('EMC_CONFIRMACAO').AsString);
    DM.TBEmailsContasEMC_DTATUALIZACAO.Value:=Date;
    DM.TBEmailsContasEMC_EMAIL.Value        :=San(Req.ContentFields.Field('EMC_EMAIL').AsString);
    DM.TBEmailsContasEMC_HRATUALIZACAO.Value:=Time;
    DM.TBEmailsContasEMC_LOGIN.Value        :=San(Req.ContentFields.Field('EMC_LOGIN').AsString);
    DM.TBEmailsContasEMC_NOME.Value         :=San(Req.ContentFields.Field('EMC_NOME').AsString);
    DM.TBEmailsContasEMC_POP.Value          :=San(Req.ContentFields.Field('EMC_POP').AsString);
    DM.TBEmailsContasEMC_POPPORTA.Value     :=SoNumeros(Req.ContentFields.Field('EMC_POPPORTA').AsString);
    DM.TBEmailsContasEMC_REPLYTO.Value      :=San(Req.ContentFields.Field('EMC_REPLYTO').AsString);
    DM.TBEmailsContasEMC_SENHA.Value        :=San(Req.ContentFields.Field('EMC_SENHA').AsString);
    DM.TBEmailsContasEMC_SMTP.Value         :=San(Req.ContentFields.Field('EMC_SMTP').AsString);
    DM.TBEmailsContasEMC_SMTPPORTA.Value    :=SoNumeros(Req.ContentFields.Field('EMC_SMTPPORTA').AsString);
    DM.TBEmailsContasEMC_SSL.Value          :=San(Req.ContentFields.Field('EMC_SSL').AsString);
    DM.TBEmailsContasEMC_STATUS.Value       :=San(Req.ContentFields.Field('EMC_STATUS').AsString);
    DM.TBEmailsContasEMC_TIMEOUT.Value      :=SoNumeros(Req.ContentFields.Field('EMC_TIMEOUT').AsString);
    DM.TBEmailsContasEMC_TLS.Value          :=San(Req.ContentFields.Field('EMC_TLS').AsString);
    DM.TBEmailsContasEMC_USUARIO.Value       :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBEmailsContas.Post;

    Registro:=DM.TBEmailsContas.ToJSONObject;
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

function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  EMC_EMAIL, EMC_LOGIN, EMC_SENHA, EMC_NOME: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    EMC_EMAIL:=San(Req.ContentFields.Field('EMC_EMAIL').AsString);
    EMC_LOGIN:=San(Req.ContentFields.Field('EMC_LOGIN').AsString);
    EMC_NOME :=San(Req.ContentFields.Field('EMC_NOME').AsString);
    EMC_SENHA:=San(Req.ContentFields.Field('EMC_SENHA').AsString);

    Obrigatorio(EMC_EMAIL,'Email');
    Obrigatorio(EMC_LOGIN,'Login');
    Obrigatorio(EMC_SENHA,'Senha');
    Obrigatorio(EMC_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) '+EMC_EMAIL);

    DM.TBEmailsContas.Open;
    DM.TBEmailsContas.Insert;
    DM.TBEmailsContasEMC_ASSINATURA.Value   :=San(Req.ContentFields.Field('EMC_ASSINATURA').AsString,0);
    DM.TBEmailsContasEMC_CONFIRMACAO.Value  :=San(Req.ContentFields.Field('EMC_CONFIRMACAO').AsString);
    DM.TBEmailsContasEMC_DTATUALIZACAO.Value:=Date;
    DM.TBEmailsContasEMC_DTCADASTRO.Value   :=Date;
    DM.TBEmailsContasEMC_EMAIL.Value        :=San(Req.ContentFields.Field('EMC_EMAIL').AsString);
    DM.TBEmailsContasEMC_HRATUALIZACAO.Value:=Time;
    DM.TBEmailsContasEMC_HRCADASTRO.Value   :=Time;
    DM.TBEmailsContasEMC_LOGIN.Value        :=San(Req.ContentFields.Field('EMC_LOGIN').AsString);
    DM.TBEmailsContasEMC_NOME.Value         :=San(Req.ContentFields.Field('EMC_NOME').AsString);
    DM.TBEmailsContasEMC_POP.Value          :=San(Req.ContentFields.Field('EMC_POP').AsString);
    DM.TBEmailsContasEMC_POPPORTA.Value     :=SoNumeros(Req.ContentFields.Field('EMC_POPPORTA').AsString);
    DM.TBEmailsContasEMC_REPLYTO.Value      :=San(Req.ContentFields.Field('EMC_REPLYTO').AsString);
    DM.TBEmailsContasEMC_SENHA.Value        :=San(Req.ContentFields.Field('EMC_SENHA').AsString);
    DM.TBEmailsContasEMC_SMTP.Value         :=San(Req.ContentFields.Field('EMC_SMTP').AsString);
    DM.TBEmailsContasEMC_SMTPPORTA.Value    :=SoNumeros(Req.ContentFields.Field('EMC_SMTPPORTA').AsString);
    DM.TBEmailsContasEMC_SSL.Value          :=San(Req.ContentFields.Field('EMC_SSL').AsString);
    DM.TBEmailsContasEMC_STATUS.Value       :=San(Req.ContentFields.Field('EMC_STATUS').AsString);
    DM.TBEmailsContasEMC_TIMEOUT.Value      :=SoNumeros(Req.ContentFields.Field('EMC_TIMEOUT').AsString);
    DM.TBEmailsContasEMC_TLS.Value          :=San(Req.ContentFields.Field('EMC_TLS').AsString);
    DM.TBEmailsContasEMC_USUARIO.Value      :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBEmailsContas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEmailsContas.ToJSONObject);

    DM.TBEmailsContas.Close;

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

function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  EMC_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMC_CODIGO:=SoNumeros(Req.ContentFields.Field('EMC_CODIGO').AsString);
    if EMC_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(excluir) '+Req.ContentFields.Field('EMC_CODIGO').AsString);

    DM.TBEmailsContas.Close;
    DM.TBEmailsContas.ParamByName('codigo').AsInteger:=Req.ContentFields.Field('EMC_CODIGO').AsInteger;
    DM.TBEmailsContas.Open;
    if DM.TBEmailsContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBEmailsContas.Delete;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Registro eliminado com sucesso.');

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

function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  EMC_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMC_CODIGO:=SoNumeros(Req.ContentFields.Field('EMC_CODIGO').AsString);
    if EMC_CODIGO.ToString='' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar(PrefixLog+'(localizar) '+EMC_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select EMC_CODIGO, EMC_NOME from EMAILSCONTAS where EMC_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=EMC_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
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
