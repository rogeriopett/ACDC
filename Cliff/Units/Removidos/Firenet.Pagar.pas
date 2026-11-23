unit Firenet.Pagar;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Baixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Estornar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Cancelar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  Campos='PAG_FORNECEDOR, PAG_CODIGO, PAG_CONTA, PAG_DESCRICAO, PAG_DTEMISSAO, PAG_DTPAGAMENTO, PAG_DTVENCIMENTO, '+
    'PAG_DESPESA, PAG_STATUS, PAG_PARCELANUM, PAG_PARCELAQTDE, PAG_VALOR, PAG_VALORPAGO, FOR_NOME, CON_NOME, DES_DESCRICAO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/pagar', VerificarOperacao);
  FormMain.Logar('FIRENET.PAGAR: Registrou rotas.');
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
        FormMain.Logar('FIRENET.PAGAR: sem empresa.');
        raise Exception.Create('Empresa não informada.');
      end;

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='baixar'     then Res.Send( Baixar(DM,Req)     ).Status(200) else
      if Operacao='estornar'   then Res.Send( Estornar(DM,Req)   ).Status(200) else
      if Operacao='cancelar'   then Res.Send( Cancelar(DM,Req)   ).Status(200) else
      begin
        FormMain.Logar('FIRENET.PAGAR: sem op.');
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
  Pagina, Registros, Skip, PAG_CODIGO, PAG_FORNECEDOR: Integer;
  Where, Data, PAG_DESCRICAO, PAG_STATUS, FOR_NOME: String;
  DataInicial, DataFinal: TDate;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina        :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Data          :=San(Req.ContentFields.Field('data').AsString);
    DataInicial   :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal     :=Req.ContentFields.Field('datafinal').AsDate;
    PAG_CODIGO    :=Req.ContentFields.Field('PAG_CODIGO').AsInteger;
    PAG_FORNECEDOR:=Req.ContentFields.Field('PAG_FORNECEDOR').AsInteger;
    FOR_NOME      :=San(Req.ContentFields.Field('FOR_NOME').AsString);
    PAG_STATUS    :=San(Req.ContentFields.Field('PAG_STATUS').AsString);

    Where:='';
    if Data='EMISSAO'      then Where:=Where+' (PAG_DTEMISSAO between :datainicial and :datafinal)' else
    if Data='VENCIMENTO'   then Where:=Where+' (PAG_DTVENCIMENTO between :datainicial and :datafinal)' else
    if Data='PAGAMENTO'    then Where:=Where+' (PAG_DTPAGAMENTO between :datainicial and :datafinal)';
    if PAG_CODIGO<>0       then Where:=Where+' and PAG_CODIGO='+PAG_CODIGO.ToString;
    if PAG_FORNECEDOR<>0   then Where:=Where+' and PAG_FORNECEDOR='+PAG_FORNECEDOR.ToString;
    if FOR_NOME<>''        then Where:=Where+' and FOR_NOME like '+QuotedStr(FOR_NOME+'%');
    if PAG_STATUS<>'TODAS' then Where:=Where+' and PAG_STATUS='+QuotedStr(PAG_STATUS);

    FormMain.Logar('FIRENET.PAGAR: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+PAG_CODIGO.ToString+', FORNECEDOR: '+PAG_FORNECEDOR.ToString+', Datas: '+DateToStr(DataInicial)+' '+DateToStr(DataFinal));

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from PAGAR '+
      'left join FORNECEDORES on PAG_FORNECEDOR=FOR_CODIGO '+
      'left join DESPESAS on PAG_DESPESA=DES_CODIGO '+
      'left join CONTAS on PAG_CONTA=CON_CODIGO '+
      'where '+Where+' order by PAG_DTVENCIMENTO desc, PAG_FORNECEDOR');
    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
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
  PAG_CODIGO: Integer;
begin
  try
    PAG_CODIGO:=SoNumeros(Req.ContentFields.Field('PAG_CODIGO').AsString);

    FormMain.Logar('FIRENET.PAGAR: (visualizar) '+PAG_CODIGO.ToString);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBPagar.ToJSONObject;
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
  PAG_CODIGO, PAG_CONTA, PAG_DESPESA, PAG_FORNECEDOR: Integer;
  PAG_DESCRICAO: String;
  PAG_VALOR: Extended;
  PAG_DTEMISSAO, PAG_DTVENCIMENTO, PAG_DTJUROSAPOS: TDate;
begin
  try
    PAG_CODIGO:=Req.ContentFields.Field('PAG_CODIGO').AsInteger;
    PAG_DESCRICAO:=San(Req.ContentFields.Field('PAG_DESCRICAO').AsString);
    PAG_DESPESA:=Req.ContentFields.Field('PAG_DESPESA').AsInteger;
    PAG_FORNECEDOR:=Req.ContentFields.Field('PAG_FORNECEDOR').AsInteger;
    PAG_CONTA:=Req.ContentFields.Field('PAG_CONTA').AsInteger;

    Obrigatorio(PAG_DESCRICAO,'Descrição');
    Obrigatorio(PAG_DESPESA.ToString,'Despesa','0');
    Obrigatorio(PAG_FORNECEDOR.ToString,'Fornecedor','0');
    Obrigatorio(PAG_CONTA.ToString,'Conta','0');

    if Req.ContentFields.Field('PAG_DTEMISSAO').AsString<>'' then
    PAG_DTEMISSAO:=Req.ContentFields.Field('PAG_DTEMISSAO').AsDate else
    PAG_DTEMISSAO:=Date;

    if Req.ContentFields.Field('PAG_DTJUROSAPOS').AsString<>'' then
    PAG_DTJUROSAPOS:=Req.ContentFields.Field('PAG_DTJUROSAPOS').AsDate else
    PAG_DTJUROSAPOS:=Date;

    if Req.ContentFields.Field('PAG_DTVENCIMENTO').AsString<>'' then
    PAG_DTVENCIMENTO:=Req.ContentFields.Field('PAG_DTVENCIMENTO').AsDate else
    PAG_DTVENCIMENTO:=Date;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.PAGAR: (atualizar) '+PAG_CODIGO.ToString);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPagar.Edit;
    //DM.TBPagarPAG_BAIXADOPOR.Value:=
    //DM.TBPagarPAG_CODIGO.Value:=
    DM.TBPagarPAG_CONTA.Value:=PAG_CONTA;
    DM.TBPagarPAG_DESCPORC.Value:=Req.ContentFields.Field('PAG_DESCPORC').AsExtended;
    DM.TBPagarPAG_DESCRICAO.Value:=PAG_DESCRICAO;
    DM.TBPagarPAG_DESCVALOR.Value:=Req.ContentFields.Field('PAG_DESCVALOR').AsExtended;
    DM.TBPagarPAG_DESPESA.Value:=PAG_DESPESA;
    //DM.TBPagarPAG_DIASATRASO.Value:=
    //DM.TBPagarPAG_DIASPRAZO.Value:=
    DM.TBPagarPAG_DTATUALIZACAO.Value:=Date;
    DM.TBPagarPAG_DTEMISSAO.Value:=PAG_DTEMISSAO;
    DM.TBPagarPAG_DTJUROSAPOS.Value:=PAG_DTJUROSAPOS;
    //DM.TBPagarPAG_DTPAGAMENTO.Value:=
    DM.TBPagarPAG_DTVENCIMENTO.Value:=PAG_DTVENCIMENTO;
    DM.TBPagarPAG_FORNECEDOR.Value:=PAG_FORNECEDOR;
    DM.TBPagarPAG_HRATUALIZACAO.Value:=Time;
    //DM.TBPagarPAG_HRCADASTRO.Value:=
    //DM.TBPagarPAG_JUROSPAGO.Value:=
    //DM.TBPagarPAG_MULTAPAGO.Value:=
    //DM.TBPagarPAG_NOVOCODIGO.Value:=
    DM.TBPagarPAG_NUMDOCTO.Value:=San(Req.ContentFields.Field('PAG_NUMDOCTO').AsString);
    DM.TBPagarPAG_OBSERVACOES.Value:=San(Req.ContentFields.Field('PAG_OBSERVACOES').AsString,0);
    DM.TBPagarPAG_PARCELANUM.Value:=Req.ContentFields.Field('PAG_PARCELANUM').AsInteger;
    DM.TBPagarPAG_PARCELAQTDE.Value:=Req.ContentFields.Field('PAG_PARCELAQTDE').AsInteger;
    //DM.TBPagarPAG_STATUS.Value:=
    //DM.TBPagarPAG_TIPOBAIXA.Value:=
    DM.TBPagarPAG_TIPODOCTO.Value:=San(Req.ContentFields.Field('PAG_TIPODOCTO').AsString);
    DM.TBPagarPAG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagarPAG_VALOR.Value:=Req.ContentFields.Field('PAG_VALOR').AsExtended;
    //DM.TBPagarPAG_VALORJUROS.Value:=
    //DM.TBPagarPAG_VALORMULTA.Value:=
    //DM.TBPagarPAG_VALORORIGINAL.Value:=
    //DM.TBPagarPAG_VALORPAGO.Value:=
    DM.TBPagar.Post;

    Registro:=DM.TBPagar.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBPagar.Close;

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
  PAG_DESCRICAO: String;
  PAG_DESPESA, PAG_FORNECEDOR, PAG_CONTA: Integer;
  PAG_DTEMISSAO, PAG_DTJUROSAPOS, PAG_DTVENCIMENTO: TDate;
begin
  try
    PAG_DESCRICAO:=San(Req.ContentFields.Field('PAG_DESCRICAO').AsString);
    PAG_DESPESA:=Req.ContentFields.Field('PAG_DESPESA').AsInteger;
    PAG_FORNECEDOR:=Req.ContentFields.Field('PAG_FORNECEDOR').AsInteger;
    PAG_CONTA:=Req.ContentFields.Field('PAG_CONTA').AsInteger;

    Obrigatorio(PAG_DESCRICAO,'Descrição');
    Obrigatorio(PAG_DESPESA.ToString,'Despesa','0');
    Obrigatorio(PAG_FORNECEDOR.ToString,'Fornecedor','0');
    Obrigatorio(PAG_CONTA.ToString,'Conta','0');

    if Req.ContentFields.Field('PAG_DTEMISSAO').AsString<>'' then
    PAG_DTEMISSAO:=Req.ContentFields.Field('PAG_DTEMISSAO').AsDate else
    PAG_DTEMISSAO:=Date;

    if Req.ContentFields.Field('PAG_DTJUROSAPOS').AsString<>'' then
    PAG_DTJUROSAPOS:=Req.ContentFields.Field('PAG_DTJUROSAPOS').AsDate else
    PAG_DTJUROSAPOS:=Date;

    if Req.ContentFields.Field('PAG_DTVENCIMENTO').AsString<>'' then
    PAG_DTVENCIMENTO:=Req.ContentFields.Field('PAG_DTVENCIMENTO').AsDate else
    PAG_DTVENCIMENTO:=Date;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar('FIRENET.PAGAR: (inserir) ');

    DM.TBPagar.Open;
    DM.TBPagar.Insert;
    //DM.TBPagarPAG_BAIXADOPOR.Value:=
    //DM.TBPagarPAG_CODIGO.Value:=
    DM.TBPagarPAG_CONTA.Value:=PAG_CONTA;
    DM.TBPagarPAG_DESCPORC.Value:=Req.ContentFields.Field('PAG_DESCPORC').AsExtended;
    DM.TBPagarPAG_DESCRICAO.Value:=PAG_DESCRICAO;
    DM.TBPagarPAG_DESCVALOR.Value:=Req.ContentFields.Field('PAG_DESCVALOR').AsExtended;
    DM.TBPagarPAG_DESPESA.Value:=PAG_DESPESA;
    //DM.TBPagarPAG_DIASATRASO.Value:=
    //DM.TBPagarPAG_DIASPRAZO.Value:=
    DM.TBPagarPAG_DTATUALIZACAO.Value:=Date;
    DM.TBPagarPAG_DTCADASTRO.Value:=Date;
    DM.TBPagarPAG_DTEMISSAO.Value:=PAG_DTEMISSAO;
    DM.TBPagarPAG_DTJUROSAPOS.Value:=PAG_DTJUROSAPOS;
    //DM.TBPagarPAG_DTPAGAMENTO.Value:=
    DM.TBPagarPAG_DTVENCIMENTO.Value:=PAG_DTVENCIMENTO;
    DM.TBPagarPAG_FORNECEDOR.Value:=PAG_FORNECEDOR;
    DM.TBPagarPAG_HRATUALIZACAO.Value:=Time;
    DM.TBPagarPAG_HRCADASTRO.Value:=Time;
    //DM.TBPagarPAG_JUROSPAGO.Value:=
    //DM.TBPagarPAG_MULTAPAGO.Value:=
    //DM.TBPagarPAG_NOVOCODIGO.Value:=
    DM.TBPagarPAG_NUMDOCTO.Value:=San(Req.ContentFields.Field('PAG_NUMDOCTO').AsString);
    DM.TBPagarPAG_OBSERVACOES.Value:=San(Req.ContentFields.Field('PAG_OBSERVACOES').AsString,0);
    DM.TBPagarPAG_PARCELANUM.Value:=Req.ContentFields.Field('PAG_PARCELANUM').AsInteger;
    DM.TBPagarPAG_PARCELAQTDE.Value:=Req.ContentFields.Field('PAG_PARCELAQTDE').AsInteger;
    DM.TBPagarPAG_STATUS.Value:='A';
    //DM.TBPagarPAG_TIPOBAIXA.Value:=
    DM.TBPagarPAG_TIPODOCTO.Value:=San(Req.ContentFields.Field('PAG_TIPODOCTO').AsString);
    DM.TBPagarPAG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagarPAG_VALOR.Value:=Req.ContentFields.Field('PAG_VALOR').AsExtended;
    //DM.TBPagarPAG_VALORJUROS.Value:=
    //DM.TBPagarPAG_VALORMULTA.Value:=
    //DM.TBPagarPAG_VALORORIGINAL.Value:=
    //DM.TBPagarPAG_VALORPAGO.Value:=
    DM.TBPagar.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPagar.ToJSONObject);

    DM.TBPagar.Close;

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
  PAG_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    PAG_CODIGO:=SoNumeros(Req.ContentFields.Field('PAG_CODIGO').AsString);
    if PAG_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar('FIRENET.PAGAR: (excluir) '+PAG_CODIGO.ToString);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBPagar.Delete;

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

function Baixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PAG_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    PAG_CODIGO:=Req.ContentFields.Field('PAG_CODIGO').AsInteger;

    Obrigatorio(PAG_CODIGO.ToString,'Código','0');
    Obrigatorio(Req.ContentFields.Field('PAG_DTPAGAMENTO').AsString,'Data Pagamento');

    FormMain.Logar('FIRENET.PAGAR: (baixar) '+PAG_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Conta a pagar não encontrada.');

    if DM.TBPagarPAG_STATUS.Value='B' then
    raise Exception.Create('Conta a pagar já baixada.');

    if DM.TBPagarPAG_STATUS.Value='C' then
    raise Exception.Create('Esta conta a pagar está cancelada.');

    DM.TBPagar.Edit;
    DM.TBPagarPAG_BAIXADOPOR.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagarPAG_DTATUALIZACAO.Value:=Date;
    DM.TBPagarPAG_DTPAGAMENTO.Value:=Req.ContentFields.Field('PAG_DTPAGAMENTO').AsDate;
    DM.TBPagarPAG_HRATUALIZACAO.Value:=Time;
    DM.TBPagarPAG_STATUS.Value:='B';
    DM.TBPagarPAG_TIPODOCTO.Value:=San(Req.ContentFields.Field('PAG_TIPODOCTO').AsString);
    DM.TBPagarPAG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagarPAG_VALORPAGO.Value:=Req.ContentFields.Field('PAG_VALORPAGO').AsExtended;
    DM.TBPagar.Post;

    //Lancar no fluxo...
    //LancarFluxoCaixa(DM,TBPagarPAG_CONTA.Value,$VEN->VEN_CODIGO,'null','',$row->PAG_FORNECEDOR,$row->FOR_NOME,'S',$PAG_VALORPAGO,'BAIXA AUTOMATICA CONTAS A PAGAR','CONTAS A PAGAR',$PAG_TIPODOCTO,$row->PAG_NUMDOCTO,$USU->USU_APELIDO)

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPagar.ToJSONObject);
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

function Estornar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PAG_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    PAG_CODIGO:=Req.ContentFields.Field('PAG_CODIGO').AsInteger;

    Obrigatorio(PAG_CODIGO.ToString,'Código','0');

    FormMain.Logar('FIRENET.PAGAR: (estornar) '+PAG_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Conta a pagar não encontrada.');

    if DM.TBPagarPAG_STATUS.Value='A' then
    raise Exception.Create('Conta a pagar já está em aberto.');

    if DM.TBPagarPAG_STATUS.Value='C' then
    raise Exception.Create('Conta cancelada. Impossível estornar.');

    DM.TBPagar.Edit;
    DM.TBPagarPAG_DTATUALIZACAO.Value:=Date;
    DM.TBPagarPAG_HRATUALIZACAO.Value:=Time;
    DM.TBPagarPAG_STATUS.Value:='A';
    DM.TBPagarPAG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagarPAG_VALORPAGO.Value:=0;
    DM.TBPagar.Post;

    //Lancar no fluxo...
    //LancarFluxoCaixa(DM,TBPagarPAG_CONTA.Value,$VEN->VEN_CODIGO,'null','',$row->PAG_FORNECEDOR,$row->FOR_NOME,'S',$PAG_VALORPAGO,'BAIXA AUTOMATICA CONTAS A PAGAR','CONTAS A PAGAR',$PAG_TIPODOCTO,$row->PAG_NUMDOCTO,$USU->USU_APELIDO)

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPagar.ToJSONObject);
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

function Cancelar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  PAG_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    PAG_CODIGO:=Req.ContentFields.Field('PAG_CODIGO').AsInteger;

    Obrigatorio(PAG_CODIGO.ToString,'Código','0');

    FormMain.Logar('FIRENET.PAGAR: (cancelar) '+PAG_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBPagar.Close;
    DM.TBPagar.ParamByName('codigo').AsInteger:=PAG_CODIGO;
    DM.TBPagar.Open;
    if DM.TBPagar.IsEmpty then
    raise Exception.Create('Conta a pagar não encontrada.');

    if DM.TBPagarPAG_STATUS.Value<>'A' then
    raise Exception.Create('Somente contas a pagar em aberto podem ser canceladas.');

    DM.TBPagar.Edit;
    DM.TBPagarPAG_DTATUALIZACAO.Value:=Date;
    DM.TBPagarPAG_HRATUALIZACAO.Value:=Time;
    DM.TBPagarPAG_STATUS.Value:='C';
    DM.TBPagarPAG_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBPagar.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBPagar.ToJSONObject);
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
