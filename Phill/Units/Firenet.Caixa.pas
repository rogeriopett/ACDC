unit Firenet.Caixa;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Transferir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.CAIXA: ';
  Campos='CAI_CLIENTE, CAI_CLIENTENOME, CAI_CODIGO, CAI_CONTA, CAI_DATA, CAI_DESCRICAO, CAI_ENTRADASAIDA, CAI_NUMDOCTO, CAI_SALDOANTERIOR, CAI_SALDOPOSTERIOR, CAI_TIPODOCTO, CAI_VALOR';

implementation
uses Funcoes, FuncoesFirenet;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/caixa', VerificarOperacao);
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
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='transferir' then Res.Send( Transferir(DM,Req) ).Status(200) else
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
  Pagina, Registros, Skip, CAI_CLIENTE, CAI_CODIGO: Integer;
  Retorno: TJSONObject;
  Listagem: TJSONArray;
  Where, CAI_CLIENTENOME, CAI_CONTA, CAI_NUMDOCTO: String;
  CAI_VALOR: Extended;
  datainicial, datafinal: TDate;
begin
  try
    Pagina         :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    CAI_CODIGO     :=SoNumeros(Req.ContentFields.Field('CAI_CODIGO').AsString);
    CAI_CONTA      :=San(Req.ContentFields.Field('CAI_CONTA').AsString);
    CAI_CLIENTE    :=SoNumeros(Req.ContentFields.Field('CAI_CLIENTE').AsString);
    CAI_CLIENTENOME:=San(Req.ContentFields.Field('CAI_CLIENTENOME').AsString);
    CAI_NUMDOCTO   :=San(Req.ContentFields.Field('CAI_NUMDOCTO').AsString);
    datainicial    :=Req.ContentFields.Field('datainicial').AsDate;
    datafinal      :=Req.ContentFields.Field('datafinal').AsDate;

    Where:=' CAI_DATA between :datainicial and :datafinal ';

    if CAI_CLIENTE<>0      then Where:=Where+' and CAI_CLIENTE='+CAI_CLIENTE.ToString;
    if CAI_CLIENTENOME<>'' then Where:=Where+' and CAI_CLIENTENOME like '+QuotedStr(CAI_CLIENTENOME+'%');
    if CAI_CODIGO<>0       then Where:=Where+' and CAI_CODIGO='+CAI_CODIGO.ToString;
    if CAI_CONTA<>'TODAS'  then Where:=Where+' and CAI_CONTA='+CAI_CONTA;
    if CAI_NUMDOCTO<>''    then Where:=Where+' and CAI_NUMDOCTO like '+QuotedStr(CAI_NUMDOCTO+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+CAI_CODIGO.ToString);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CAIXAMOV where '+Where+' order by CAI_DESCRICAO');
    DM.Query1.ParamByName('datainicial').AsDate:=datainicial;
    DM.Query1.ParamByName('datafinal').AsDate:=datafinal;
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
  CAI_CODIGO: Integer;
begin
  try
    CAI_CODIGO:=SoNumeros(Req.ContentFields.Field('CAI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+CAI_CODIGO.ToString);

    DM.TBCaixa.Close;
    DM.TBCaixa.ParamByName('codigo').AsInteger:=CAI_CODIGO;
    DM.TBCaixa.Open;
    if DM.TBCaixa.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBCaixa.ToJSONObject;
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

function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  CAI_CLIENTE, CAI_CONTA: Integer;
  CAI_CLIENTENOME, CAI_DESCRICAO, CAI_ENTRADASAIDA, CAI_TIPODOCTO: String;
  CAI_VALOR: Extended;
  CAI_DATA: TDate;
begin
  try
    CAI_CLIENTE     :=SoNumeros(Req.ContentFields.Field('CAI_CLIENTE').AsString);
    CAI_CLIENTENOME :=San(Req.ContentFields.Field('CAI_CLIENTENOME').AsString);
    CAI_CONTA       :=SoNumeros(Req.ContentFields.Field('CAI_CONTA').AsString);
    CAI_DATA        :=StrToDate(Req.ContentFields.Field('CAI_DATA').AsString);
    CAI_DESCRICAO   :=San(Req.ContentFields.Field('CAI_DESCRICAO').AsString);
    CAI_ENTRADASAIDA:=San(Req.ContentFields.Field('CAI_ENTRADASAIDA').AsString);
    CAI_TIPODOCTO   :=San(Req.ContentFields.Field('CAI_TIPODOCTO').AsString);
    CAI_VALOR       :=Req.ContentFields.Field('CAI_VALOR').AsExtended;

    Obrigatorio(CAI_CLIENTE.ToString,'Código Cliente','0');
    Obrigatorio(CAI_CLIENTENOME,'Nome Cliente');
    Obrigatorio(CAI_CONTA.ToString,'Conta','0');
    Obrigatorio(DateToStr(CAI_DATA),'Data');
    Obrigatorio(CAI_DESCRICAO,'Descrição');
    Obrigatorio(CAI_ENTRADASAIDA,'Entrada/Saída');
    Obrigatorio(CAI_TIPODOCTO,'Tipo Docto');
    Obrigatorio(CAI_VALOR.ToString,'Valor');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=CAI_CONTA;
    DM.TBContas.Open;

    DM.TBCaixa.Open;
    DM.TBCaixa.Insert;
    DM.TBCaixaCAI_CLIENTE.Value:=CAI_CLIENTE;
    DM.TBCaixaCAI_CLIENTENOME.Value:=CAI_CLIENTENOME;
    DM.TBCaixaCAI_CONTA.Value:=CAI_CONTA;
    DM.TBCaixaCAI_DATA.Value:=CAI_DATA;
    DM.TBCaixaCAI_DESCRICAO.Value:=CAI_DESCRICAO;
    DM.TBCaixaCAI_DTATUALIZACAO.Value:=Date;
    DM.TBCaixaCAI_DTCADASTRO.Value:=Date;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:=CAI_ENTRADASAIDA;
    DM.TBCaixaCAI_FORNECEDOR.Value:=SoNumeros(Req.ContentFields.Field('CAI_FORNECEDOR').AsString);
    DM.TBCaixaCAI_FORNECEDORNOME.Value:=San(Req.ContentFields.Field('CAI_FORNECEDORNOME').AsString);
    DM.TBCaixaCAI_HRATUALIZACAO.Value:=Time;
    DM.TBCaixaCAI_HRCADASTRO.Value:=Time;
    DM.TBCaixaCAI_NUMCHEQUE.Value:=San(Req.ContentFields.Field('CAI_NUMCHEQUE').AsString);
    DM.TBCaixaCAI_NUMDOCTO.Value:=San(Req.ContentFields.Field('CAI_NUMDOCTO').AsString);
    DM.TBCaixaCAI_ORIGEM.Value:=San(Req.ContentFields.Field('CAI_ORIGEM').AsString);
    DM.TBCaixaCAI_SALDOANTERIOR.Value:=DM.TBContasCON_SALDO.Value;

    if CAI_ENTRADASAIDA='E' then
    DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=DM.TBContasCON_SALDO.Value + CAI_VALOR else
    DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=DM.TBContasCON_SALDO.Value - CAI_VALOR;

    DM.TBCaixaCAI_TIPODOCTO.Value:=CAI_TIPODOCTO;
    DM.TBCaixaCAI_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBCaixaCAI_VALOR.Value:=CAI_VALOR;
    DM.TBCaixaCAI_VENDEDOR.Value:=SoNumeros(Req.ContentFields.Field('CAI_VENDEDOR').AsString);
    DM.TBCaixa.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBCaixa.ToJSONObject);

    DM.TBCaixa.Close;

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

function Transferir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  DE, PARA: Integer;
  VALOR, SaldoAnterior: Extended;
begin
  try
    DE   :=SoNumeros(Req.ContentFields.Field('de').AsString);
    PARA :=SoNumeros(Req.ContentFields.Field('para').AsString);
    VALOR:=Req.ContentFields.Field('valor').AsCurrency;

    if DE=0 then raise Exception.Create('Informe o vendedor de origem.');
    if PARA=0 then raise Exception.Create('Informe o vendedor para quem deseja transferir.');
    if DE=PARA then raise Exception.Create('Não é possível transferir entre mesmos vendedores.');
    if VALOR <= 0 then raise Exception.Create('Informe o valor a ser transferido');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(transferir) de: '+DE.ToString+' para: '+PARA.ToString+' valor: '+VALOR.ToString);

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=DE;
    DM.TBVendedores.Open;

    DM.Query1.Close;
    DM.Query1.SQL.Add('select * from VENDEDORES where VEN_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=PARA;
    DM.Query1.Open;

    if VALOR > DM.TBVendedoresVEN_SALDOATUAL.Value then
    raise Exception.Create('Saldo insuficiente para transferência.');

    DM.TBParametros.Open;

    LancarFluxoCaixa(DM,VALOR,DM.TBParametrosPAR_CONTALOCALPADRAO.Value,DE,0,0,'','','S','SAIDA POR TRANSF. DE VENDEDOR '+DE.ToString+' PARA '+PARA.ToString,'FLUXO DE CAIXA','TRANSFERENCIA','',Usuario.GetValue<String>('USU_APELIDO'));
    AtualizarSaldoVendedor(DM,DE,'S',VALOR);

    LancarFluxoCaixa(DM,VALOR,DM.TBParametrosPAR_CONTALOCALPADRAO.Value,DE,0,0,'','','E','ENTRADA POR TRANSF. DE VENDEDOR '+DE.ToString+' PARA '+PARA.ToString,'FLUXO DE CAIXA','TRANSFERENCIA','',Usuario.GetValue<String>('USU_APELIDO'));
    AtualizarSaldoVendedor(DM,PARA,'E',VALOR);
    
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Transferencia concluída.');

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
