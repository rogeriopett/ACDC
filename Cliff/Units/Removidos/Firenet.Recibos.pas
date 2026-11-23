unit Firenet.Recibos;

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
  Campos='RCB_CNOME, RCB_CODIGO, RCB_DATA, RCB_DTATUALIZACAO, RCB_PROVENIENTE, RCB_SNOME, RCB_USUARIO, RCB_VALOR';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/recibos', VerificarOperacao);
  FormMain.Logar('FIRENET.RECIBOS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.RECIBOS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      begin
        FormMain.Logar('FIRENET.RECIBOS: sem op.');
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
  Pagina, Registros, Skip, RCB_CODIGO: Integer;
  Where, RCB_CNOME, RCB_SNOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina      :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    RCB_CODIGO  :=Req.ContentFields.Field('RCB_CODIGO').AsInteger;
    RCB_CNOME   :=San(Req.ContentFields.Field('RCB_CNOME').AsString);
    RCB_SNOME   :=San(Req.ContentFields.Field('RCB_SNOME').AsString);
    Where:='';
    if RCB_CODIGO<>0 then Where:=Where+' and RCB_CODIGO='+RCB_CODIGO.ToString;
    if RCB_CNOME<>'' then Where:=Where+' and RCB_CNOME like '+QuotedStr(RCB_CNOME+'%');
    if RCB_CNOME<>'' then Where:=Where+' and RCB_SNOME like '+QuotedStr(RCB_SNOME+'%');

    FormMain.Logar('FIRENET.RECIBOS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+RCB_CODIGO.ToString+', CEDENTE: '+RCB_CNOME+', SACADO: '+RCB_SNOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from RECIBOS where 1=1 '+Where+' order by RCB_DATA desc');
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
  RCB_CODIGO: Integer;
begin
  try
    RCB_CODIGO:=SoNumeros(Req.ContentFields.Field('RCB_CODIGO').AsString);

    FormMain.Logar('FIRENET.RECIBOS: (visualizar) '+RCB_CODIGO.ToString);

    DM.TBRecibos.Close;
    DM.TBRecibos.ParamByName('codigo').AsInteger:=RCB_CODIGO;
    DM.TBRecibos.Open;
    if DM.TBRecibos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBRecibos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBRecibos.Close;

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
  RCB_CODIGO: Integer;
begin
  try
    RCB_CODIGO:=Req.ContentFields.Field('RCB_CODIGO').AsInteger;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.RECIBOS: (atualizar) '+RCB_CODIGO.ToString);

    DM.TBRecibos.Close;
    DM.TBRecibos.ParamByName('codigo').AsInteger:=RCB_CODIGO;
    DM.TBRecibos.Open;
    if DM.TBRecibos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBRecibos.Edit;
    //DM.TBRecibosRCB_CODIGO.Value:=
    DM.TBRecibosRCB_CBAIRRO.Value       :=San(Req.ContentFields.Field('RCB_CBAIRRO').AsString);
    DM.TBRecibosRCB_CCEP.Value          :=San(Req.ContentFields.Field('RCB_CCEP').AsString);
    DM.TBRecibosRCB_CCIDADE.Value       :=San(Req.ContentFields.Field('RCB_CCIDADE').AsString);
    DM.TBRecibosRCB_CCNPJCPF.Value      :=San(Req.ContentFields.Field('RCB_CCNPJCPF').AsString);
    DM.TBRecibosRCB_CENDERECO.Value     :=San(Req.ContentFields.Field('RCB_CENDERECO').AsString);
    DM.TBRecibosRCB_CFONE1.Value        :=San(Req.ContentFields.Field('RCB_CFONE1').AsString);
    DM.TBRecibosRCB_CNOME.Value         :=San(Req.ContentFields.Field('RCB_CNOME').AsString);
    DM.TBRecibosRCB_CNUMERO.Value       :=San(Req.ContentFields.Field('RCB_CNUMERO').AsString);
    DM.TBRecibosRCB_DATA.Value          :=Req.ContentFields.Field('RCB_DATA').AsDate;
    DM.TBRecibosRCB_DTATUALIZACAO.Value :=Date;
    //DM.TBRecibosRCB_DTCADASTRO.Value:=
    DM.TBRecibosRCB_HRATUALIZACAO.Value :=Time;
    //DM.TBRecibosRCB_HRCADASTRO.Value:=
    DM.TBRecibosRCB_PROVENIENTE.Value   :=San(Req.ContentFields.Field('RCB_PROVENIENTE').AsString);
    DM.TBRecibosRCB_SBAIRRO.Value       :=San(Req.ContentFields.Field('RCB_SBAIRRO').AsString);
    DM.TBRecibosRCB_SCEP.Value          :=San(Req.ContentFields.Field('RCB_SCEP').AsString);
    DM.TBRecibosRCB_SCIDADE.Value       :=San(Req.ContentFields.Field('RCB_SCIDADE').AsString);
    DM.TBRecibosRCB_SCNPJCPF.Value      :=San(Req.ContentFields.Field('RCB_SCNPJCPF').AsString);
    DM.TBRecibosRCB_SENDERECO.Value     :=San(Req.ContentFields.Field('RCB_SENDERECO').AsString);
    DM.TBRecibosRCB_SFONE1.Value        :=San(Req.ContentFields.Field('RCB_SFONE1').AsString);
    DM.TBRecibosRCB_SNOME.Value         :=San(Req.ContentFields.Field('RCB_SNOME').AsString);
    DM.TBRecibosRCB_SNUMERO.Value       :=San(Req.ContentFields.Field('RCB_SNUMERO').AsString);
    DM.TBRecibosRCB_USUARIO.Value       :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBRecibosRCB_VALOR.Value         :=Req.ContentFields.Field('RCB_VALOR').AsExtended;
    DM.TBRecibosRCB_VALOREXTENSO.Value  :=San(Req.ContentFields.Field('RCB_VALOREXTENSO').AsString);
    DM.TBRecibos.Post;

    Registro:=DM.TBRecibos.ToJSONObject;
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
  Retorno, Usuario: TJSONObject;
  RCB_DESCRICAO, RCB_STATUS, RCB_TIPO: String;
  RCB_VALOR: Extended;
begin
  try
    RCB_DESCRICAO:=San(Req.ContentFields.Field('RCB_DESCRICAO').AsString);
    RCB_STATUS:=San(Req.ContentFields.Field('RCB_STATUS').AsString);
    RCB_TIPO:=San(Req.ContentFields.Field('RCB_TIPO').AsString);
    RCB_VALOR:=Req.ContentFields.Field('RCB_VALOR').AsExtended;

    Obrigatorio(RCB_DESCRICAO,'Descrição');
    Obrigatorio(RCB_STATUS,'Status');
    Obrigatorio(RCB_TIPO,'Tipo');
    Obrigatorio(RCB_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.RECIBOS: (inserir) ');

    DM.TBRecibos.Open;
    DM.TBRecibos.Insert;
    //DM.TBRecibosRCB_CODIGO.Value:=
    DM.TBRecibosRCB_CBAIRRO.Value       :=San(Req.ContentFields.Field('RCB_CBAIRRO').AsString);
    DM.TBRecibosRCB_CCEP.Value          :=San(Req.ContentFields.Field('RCB_CCEP').AsString);
    DM.TBRecibosRCB_CCIDADE.Value       :=San(Req.ContentFields.Field('RCB_CCIDADE').AsString);
    DM.TBRecibosRCB_CCNPJCPF.Value      :=San(Req.ContentFields.Field('RCB_CCNPJCPF').AsString);
    DM.TBRecibosRCB_CENDERECO.Value     :=San(Req.ContentFields.Field('RCB_CENDERECO').AsString);
    DM.TBRecibosRCB_CFONE1.Value        :=San(Req.ContentFields.Field('RCB_CFONE1').AsString);
    DM.TBRecibosRCB_CNOME.Value         :=San(Req.ContentFields.Field('RCB_CNOME').AsString);
    DM.TBRecibosRCB_CNUMERO.Value       :=San(Req.ContentFields.Field('RCB_CNUMERO').AsString);
    DM.TBRecibosRCB_DATA.Value          :=Req.ContentFields.Field('RCB_DATA').AsDate;
    DM.TBRecibosRCB_DTATUALIZACAO.Value :=Date;
    DM.TBRecibosRCB_DTCADASTRO.Value    :=Date;
    DM.TBRecibosRCB_HRATUALIZACAO.Value :=Time;
    DM.TBRecibosRCB_HRCADASTRO.Value    :=Time;
    DM.TBRecibosRCB_PROVENIENTE.Value   :=San(Req.ContentFields.Field('RCB_PROVENIENTE').AsString);
    DM.TBRecibosRCB_SBAIRRO.Value       :=San(Req.ContentFields.Field('RCB_SBAIRRO').AsString);
    DM.TBRecibosRCB_SCEP.Value          :=San(Req.ContentFields.Field('RCB_SCEP').AsString);
    DM.TBRecibosRCB_SCIDADE.Value       :=San(Req.ContentFields.Field('RCB_SCIDADE').AsString);
    DM.TBRecibosRCB_SCNPJCPF.Value      :=San(Req.ContentFields.Field('RCB_SCNPJCPF').AsString);
    DM.TBRecibosRCB_SENDERECO.Value     :=San(Req.ContentFields.Field('RCB_SENDERECO').AsString);
    DM.TBRecibosRCB_SFONE1.Value        :=San(Req.ContentFields.Field('RCB_SFONE1').AsString);
    DM.TBRecibosRCB_SNOME.Value         :=San(Req.ContentFields.Field('RCB_SNOME').AsString);
    DM.TBRecibosRCB_SNUMERO.Value       :=San(Req.ContentFields.Field('RCB_SNUMERO').AsString);
    DM.TBRecibosRCB_USUARIO.Value       :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBRecibosRCB_VALOR.Value         :=Req.ContentFields.Field('RCB_VALOR').AsExtended;
    DM.TBRecibosRCB_VALOREXTENSO.Value  :=San(Req.ContentFields.Field('RCB_VALOREXTENSO').AsString);
    DM.TBRecibos.Post;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBRecibos.ToJSONObject);

    DM.TBRecibos.Close;

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
  RCB_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    RCB_CODIGO:=SoNumeros(Req.ContentFields.Field('RCB_CODIGO').AsString);
    if RCB_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.RECIBOS: (excluir) '+RCB_CODIGO.ToString);

    DM.TBRecibos.Close;
    DM.TBRecibos.ParamByName('codigo').AsInteger:=RCB_CODIGO;
    DM.TBRecibos.Open;
    if DM.TBRecibos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBRecibos.Delete;

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
  RCB_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    RCB_CODIGO:=Req.ContentFields.Field('RCB_CODIGO').AsInteger;
    if RCB_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.RECIBOS: (localizar) '+RCB_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select RCB_CODIGO, RCB_SNOME, RCB_CNOME from RECIBOS where RCB_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=RCB_CODIGO;
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
