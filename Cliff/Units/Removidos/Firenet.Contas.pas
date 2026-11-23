unit Firenet.Contas;

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
function Combo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  Campos='CON_AGENCIA, CON_AGENCIADIGITO, CON_CODIGO, CON_CONTA, CON_CONTADIGITO, CON_DTATUALIZACAO, CON_DTCADASTRO, CON_NOME, CON_SALDO, CON_STATUS, CON_USUARIO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/contas', VerificarOperacao);
  FormMain.Logar('FIRENET.CONTAS: Registrou rotas.');
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
        FormMain.Logar('FIRENET.CONTAS: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      if Operacao='combo'      then Res.Send( Combo(DM,Req)      ).Status(200) else
      begin
        FormMain.Logar('FIRENET.CONTAS: sem op.');
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
  Pagina, Registros, Skip, CON_CODIGO: Integer;
  Where, CON_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    CON_CODIGO :=SoNumeros(Req.ContentFields.Field('CON_CODIGO').AsString);
    CON_NOME   :=San(Req.ContentFields.Field('CON_NOME').AsString);
    Where:='';
    if CON_CODIGO<>0 then Where:=Where+' and CON_CODIGO='+CON_CODIGO.ToString;
    if CON_NOME<>''  then Where:=Where+' and CON_NOME like '+QuotedStr(CON_NOME+'%');

    FormMain.Logar('FIRENET.CONTAS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+CON_CODIGO.ToString+', NOME: '+CON_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CONTAS where 1=1 '+Where+' order by CON_NOME');
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
  CON_CODIGO: Integer;
begin
  try
    CON_CODIGO:=SoNumeros(Req.ContentFields.Field('CON_CODIGO').AsString);

    FormMain.Logar('FIRENET.CONTAS: (visualizar) '+CON_CODIGO.ToString);

    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=CON_CODIGO;
    DM.TBContas.Open;
    if DM.TBContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBContas.ToJSONObject;
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
  CON_AGENCIA, CON_NOME, CON_STATUS: String;
  CON_AGENCIADIGITO, CON_BANCO, CON_CODIGO: Integer;
begin
  try
    CON_AGENCIA       :=San(Req.ContentFields.Field('CON_AGENCIA').AsString);
    CON_AGENCIADIGITO :=SoNumeros(Req.ContentFields.Field('CON_AGENCIADIGITO').AsString);
    CON_CODIGO        :=SoNumeros(Req.ContentFields.Field('CON_CODIGO').AsString);
    CON_NOME          :=San(Req.ContentFields.Field('CON_NOME').AsString);
    CON_STATUS        :=San(Req.ContentFields.Field('CON_STATUS').AsString);
    CON_BANCO         :=SoNumeros(Req.ContentFields.Field('CON_BANCO').AsString);

    Obrigatorio(CON_AGENCIA,'Agencia');
    Obrigatorio(CON_AGENCIADIGITO.ToString,'Agencia Dígito');
    Obrigatorio(CON_BANCO.ToString,'Banco');
    Obrigatorio(CON_NOME,'Nome');
    Obrigatorio(CON_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.CONTAS: (atualizar) '+CON_CODIGO.ToString);

    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=CON_CODIGO;
    DM.TBContas.Open;
    if DM.TBContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBContas.Edit;
    DM.TBContasCON_AGENCIA.Value:=CON_AGENCIA;
    DM.TBContasCON_AGENCIADIGITO.Value:=CON_AGENCIADIGITO;
    DM.TBContasCON_ATUALIZAR.Value:='S';
    DM.TBContasCON_BAIXACODIGO.Value:=SoNumeros(Req.ContentFields.Field('CON_BAIXACODIGO').AsString);
    DM.TBContasCON_BANCO.Value:=CON_BANCO;
    DM.TBContasCON_CARTEIRA.Value:=San(Req.ContentFields.Field('CON_CARTEIRA').AsString);
    DM.TBContasCON_CARTEIRACOD.Value:=SoNumeros(Req.ContentFields.Field('CON_CARTEIRACOD').AsString);
    DM.TBContasCON_CEDENTE.Value:=San(Req.ContentFields.Field('CON_CEDENTE').AsString);
    DM.TBContasCON_CEDENTEDIGITO.Value:=SoNumeros(Req.ContentFields.Field('CON_CEDENTEDIGITO').AsString);
    DM.TBContasCON_CEDENTENOME.Value:=San(Req.ContentFields.Field('CON_CEDENTENOME').AsString);
    DM.TBContasCON_CHAVEPIX.Value:=San(Req.ContentFields.Field('CON_CHAVEPIX').AsString);
    DM.TBContasCON_CHAVEPIXTIPO.Value:=San(Req.ContentFields.Field('CON_CHAVEPIXTIPO').AsString);
    DM.TBContasCON_CLIENTID.Value:=San(Req.ContentFields.Field('CON_CLIENTID').AsString);
    DM.TBContasCON_CLIENTSECRET.Value:=San(Req.ContentFields.Field('CON_CLIENTSECRET').AsString);
    DM.TBContasCON_CNPJ.Value:=FormatarCPFCNPJ(Req.ContentFields.Field('CON_CNPJ').AsString);
    DM.TBContasCON_CONTA.Value:=San(Req.ContentFields.Field('CON_CONTA').AsString);
    DM.TBContasCON_CONTADIGITO.Value:=SoNumeros(Req.ContentFields.Field('CON_CONTADIGITO').AsString);
    DM.TBContasCON_CONTATO.Value:=San(Req.ContentFields.Field('CON_CONTATO').AsString);
    DM.TBContasCON_CONVENIO.Value:=San(Req.ContentFields.Field('CON_CONVENIO').AsString);
    DM.TBContasCON_DIASBAIXA.Value:=SoNumeros(Req.ContentFields.Field('CON_DIASBAIXA').AsString);
    DM.TBContasCON_DIASPROTESTO.Value:=SoNumeros(Req.ContentFields.Field('CON_DIASPROTESTO').AsString);
    DM.TBContasCON_DTATUALIZACAO.Value:=Date;
    DM.TBContasCON_ESPECIE.Value:=San(Req.ContentFields.Field('CON_ESPECIE').AsString);
    DM.TBContasCON_ESPECIEDOC.Value:=San(Req.ContentFields.Field('CON_ESPECIEDOC').AsString);
    DM.TBContasCON_FONE1.Value:=FormatarFone(Req.ContentFields.Field('CON_FONE1').AsString);
    DM.TBContasCON_FONE2.Value:=FormatarFone(Req.ContentFields.Field('CON_FONE2').AsString);
    DM.TBContasCON_HRATUALIZACAO.Value:=Time;
    DM.TBContasCON_INSTRUCAO1.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO1').AsString);
    DM.TBContasCON_INSTRUCAO2.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO2').AsString);
    DM.TBContasCON_INSTRUCAO3.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO3').AsString);
    DM.TBContasCON_INSTRUCAO4.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO4').AsString);
    DM.TBContasCON_INSTRUCAO5.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO5').AsString);
    DM.TBContasCON_KEYUSER.Value:=San(Req.ContentFields.Field('CON_KEYUSER').AsString);
    DM.TBContasCON_LAYOUT.Value:=San(Req.ContentFields.Field('CON_LAYOUT').AsString);
    DM.TBContasCON_LOCALPAGTO.Value:=San(Req.ContentFields.Field('CON_LOCALPAGTO').AsString);
    DM.TBContasCON_MODALIDADE.Value:=SoNumeros(Req.ContentFields.Field('CON_MODALIDADE').AsString);
    DM.TBContasCON_MORACODIGO.Value:=San(Req.ContentFields.Field('CON_MORACODIGO').AsString);
    DM.TBContasCON_MORAJUROS.Value:=Req.ContentFields.Field('CON_MORAJUROS').AsExtended;
    DM.TBContasCON_MULTA.Value:=Req.ContentFields.Field('CON_MULTA').AsExtended;
    DM.TBContasCON_NOME.Value:=CON_NOME;
    DM.TBContasCON_NOSSONUMDIGITOS.Value:=SoNumeros(Req.ContentFields.Field('CON_NOSSONUMDIGITOS').AsString);
    DM.TBContasCON_NOSSONUMFORMATAR.Value:=San(Req.ContentFields.Field('CON_NOSSONUMFORMATAR').AsString);
    DM.TBContasCON_PROTESTOCODIGO.Value:=SoNumeros(Req.ContentFields.Field('CON_PROTESTOCODIGO').AsString);
    //DM.TBContasCON_SALDO.Value:=
    DM.TBContasCON_STATUS.Value:=CON_STATUS;
    DM.TBContasCON_TIPOCOBRANCA.Value:=San(Req.ContentFields.Field('CON_TIPOCOBRANCA').AsString);
    DM.TBContasCON_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBContasCON_VALORBOLETO.Value:=Req.ContentFields.Field('CON_VALORBOLETO').AsExtended;
    DM.TBContas.Post;

    Registro:=DM.TBContas.ToJSONObject;
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
  CON_AGENCIA, CON_NOME, CON_STATUS: String;
  CON_AGENCIADIGITO, CON_BANCO: Integer;
begin
  try
    CON_AGENCIA       :=San(Req.ContentFields.Field('CON_AGENCIA').AsString);
    CON_AGENCIADIGITO :=SoNumeros(Req.ContentFields.Field('CON_AGENCIADIGITO').AsString);
    CON_NOME          :=San(Req.ContentFields.Field('CON_NOME').AsString);
    CON_STATUS        :=San(Req.ContentFields.Field('CON_STATUS').AsString);
    CON_BANCO         :=SoNumeros(Req.ContentFields.Field('CON_BANCO').AsString);

    Obrigatorio(CON_AGENCIA,'Agencia');
    Obrigatorio(CON_AGENCIADIGITO.ToString,'Agencia Dígito');
    Obrigatorio(CON_BANCO.ToString,'Banco');
    Obrigatorio(CON_NOME,'Nome');
    Obrigatorio(CON_STATUS,'Status');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.CONTAS: (inserir) ');

    DM.TBContas.Open;
    DM.TBContas.Insert;
    DM.TBContasCON_AGENCIA.Value:=CON_AGENCIA;
    DM.TBContasCON_AGENCIADIGITO.Value:=CON_AGENCIADIGITO;
    DM.TBContasCON_ATUALIZAR.Value:='S';
    DM.TBContasCON_BAIXACODIGO.Value:=SoNumeros(Req.ContentFields.Field('CON_BAIXACODIGO').AsString);
    DM.TBContasCON_BANCO.Value:=CON_BANCO;
    DM.TBContasCON_CARTEIRA.Value:=San(Req.ContentFields.Field('CON_CARTEIRA').AsString);
    DM.TBContasCON_CARTEIRACOD.Value:=SoNumeros(Req.ContentFields.Field('CON_CARTEIRACOD').AsString);
    DM.TBContasCON_CEDENTE.Value:=San(Req.ContentFields.Field('CON_CEDENTE').AsString);
    DM.TBContasCON_CEDENTEDIGITO.Value:=SoNumeros(Req.ContentFields.Field('CON_CEDENTEDIGITO').AsString);
    DM.TBContasCON_CEDENTENOME.Value:=San(Req.ContentFields.Field('CON_CEDENTENOME').AsString);
    DM.TBContasCON_CHAVEPIX.Value:=San(Req.ContentFields.Field('CON_CHAVEPIX').AsString);
    DM.TBContasCON_CHAVEPIXTIPO.Value:=San(Req.ContentFields.Field('CON_CHAVEPIXTIPO').AsString);
    DM.TBContasCON_CLIENTID.Value:=San(Req.ContentFields.Field('CON_CLIENTID').AsString);
    DM.TBContasCON_CLIENTSECRET.Value:=San(Req.ContentFields.Field('CON_CLIENTSECRET').AsString);
    DM.TBContasCON_CNPJ.Value:=FormatarCPFCNPJ(Req.ContentFields.Field('CON_CNPJ').AsString);
    DM.TBContasCON_CONTA.Value:=San(Req.ContentFields.Field('CON_CONTA').AsString);
    DM.TBContasCON_CONTADIGITO.Value:=SoNumeros(Req.ContentFields.Field('CON_CONTADIGITO').AsString);
    DM.TBContasCON_CONTATO.Value:=San(Req.ContentFields.Field('CON_CONTATO').AsString);
    DM.TBContasCON_CONVENIO.Value:=San(Req.ContentFields.Field('CON_CONVENIO').AsString);
    DM.TBContasCON_DIASBAIXA.Value:=SoNumeros(Req.ContentFields.Field('CON_DIASBAIXA').AsString);
    DM.TBContasCON_DIASPROTESTO.Value:=SoNumeros(Req.ContentFields.Field('CON_DIASPROTESTO').AsString);
    DM.TBContasCON_DTATUALIZACAO.Value:=Date;
    DM.TBContasCON_DTCADASTRO.Value:=Date;
    DM.TBContasCON_ESPECIE.Value:=San(Req.ContentFields.Field('CON_ESPECIE').AsString);
    DM.TBContasCON_ESPECIEDOC.Value:=San(Req.ContentFields.Field('CON_ESPECIEDOC').AsString);
    DM.TBContasCON_FONE1.Value:=FormatarFone(Req.ContentFields.Field('CON_FONE1').AsString);
    DM.TBContasCON_FONE2.Value:=FormatarFone(Req.ContentFields.Field('CON_FONE2').AsString);
    DM.TBContasCON_HRATUALIZACAO.Value:=Time;
    DM.TBContasCON_HRCADASTRO.Value:=Time;
    DM.TBContasCON_INSTRUCAO1.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO1').AsString);
    DM.TBContasCON_INSTRUCAO2.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO2').AsString);
    DM.TBContasCON_INSTRUCAO3.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO3').AsString);
    DM.TBContasCON_INSTRUCAO4.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO4').AsString);
    DM.TBContasCON_INSTRUCAO5.Value:=San(Req.ContentFields.Field('CON_INSTRUCAO5').AsString);
    DM.TBContasCON_KEYUSER.Value:=San(Req.ContentFields.Field('CON_KEYUSER').AsString);
    DM.TBContasCON_LAYOUT.Value:=San(Req.ContentFields.Field('CON_LAYOUT').AsString);
    DM.TBContasCON_LOCALPAGTO.Value:=San(Req.ContentFields.Field('CON_LOCALPAGTO').AsString);
    DM.TBContasCON_MODALIDADE.Value:=SoNumeros(Req.ContentFields.Field('CON_MODALIDADE').AsString);
    DM.TBContasCON_MORACODIGO.Value:=San(Req.ContentFields.Field('CON_MORACODIGO').AsString);
    DM.TBContasCON_MORAJUROS.Value:=Req.ContentFields.Field('CON_MORAJUROS').AsExtended;
    DM.TBContasCON_MULTA.Value:=Req.ContentFields.Field('CON_MULTA').AsExtended;
    DM.TBContasCON_NOME.Value:=CON_NOME;
    DM.TBContasCON_NOSSONUMDIGITOS.Value:=SoNumeros(Req.ContentFields.Field('CON_NOSSONUMDIGITOS').AsString);
    DM.TBContasCON_NOSSONUMFORMATAR.Value:=San(Req.ContentFields.Field('CON_NOSSONUMFORMATAR').AsString);
    DM.TBContasCON_PROTESTOCODIGO.Value:=SoNumeros(Req.ContentFields.Field('CON_PROTESTOCODIGO').AsString);
    DM.TBContasCON_SALDO.Value:=0;
    DM.TBContasCON_STATUS.Value:=CON_STATUS;
    DM.TBContasCON_TIPOCOBRANCA.Value:=San(Req.ContentFields.Field('CON_TIPOCOBRANCA').AsString);
    DM.TBContasCON_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBContasCON_VALORBOLETO.Value:=Req.ContentFields.Field('CON_VALORBOLETO').AsExtended;
    DM.TBContas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBContas.ToJSONObject);

    DM.TBContas.Close;

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
  CON_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CON_CODIGO:=SoNumeros(Req.ContentFields.Field('CON_CODIGO').AsString);
    if CON_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.CONTAS: (excluir) '+CON_CODIGO.ToString);

    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=CON_CODIGO;
    DM.TBContas.Open;
    if DM.TBContas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBContas.Delete;

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
  CON_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    CON_CODIGO:=Req.ContentFields.Field('CON_CODIGO').AsInteger;
    if CON_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.CONTAS: (localizar) '+CON_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select CON_CODIGO, CON_NOME from CONTAS where CON_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=CON_CODIGO;
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

function Combo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, TodosObj: TJSONObject;
  Listagem: TJSONArray;
  Todos: Boolean;
begin
  try
    Todos:=Req.ContentFields.Field('todos').AsBoolean;

    FormMain.Logar('FIRENET.CONTAS: (combo)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    if Todos then
    DM.Query1.SQL.Add('select ''TODAS'' as "VALUE", ''TODAS'' as "LABEL", 0 as SORTORDER from RDB$DATABASE union '+
      'select cast(CON_CODIGO as varchar(15)) as "VALUE", CON_NOME as "LABEL", 1 as SORTORDER from CONTAS order by 3, 2') else
    DM.Query1.SQL.Add('select cast(CON_CODIGO as varchar(15)) as "VALUE", CON_NOME as "LABEL" from CONTAS order by CON_NOME');
    DM.Query1.Open;

    Listagem:=TJSONArray.Create;
    Listagem:=DM.Query1.ToJSONArray;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
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
