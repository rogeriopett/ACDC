unit Firenet.Receber;

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
function Multiplicar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.RECEBER: ';
  Campos='REE_CLIENTE, REE_CODIGO, REE_CONTA, REE_DESCRICAO, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, '+
    'REE_RECEITA, REE_STATUS, REE_PARCELANUM, REE_PARCELAQTDE, REE_VALOR, REE_VALORPAGO, CLI_NOME, CON_NOME, REC_DESCRICAO';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/receber', VerificarOperacao);
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

      if Operacao='listar'      then Res.Send( Listar(DM,Req)      ).Status(200) else
      if Operacao='visualizar'  then Res.Send( Visualizar(DM,Req)  ).Status(200) else
      if Operacao='atualizar'   then Res.Send( Atualizar(DM,Req)   ).Status(200) else
      if Operacao='inserir'     then Res.Send( Inserir(DM,Req)     ).Status(200) else
      if Operacao='excluir'     then Res.Send( Excluir(DM,Req)     ).Status(200) else
      if Operacao='baixar'      then Res.Send( Baixar(DM,Req)      ).Status(200) else
      if Operacao='estornar'    then Res.Send( Estornar(DM,Req)    ).Status(200) else
      if Operacao='cancelar'    then Res.Send( Cancelar(DM,Req)    ).Status(200) else
      if Operacao='multiplicar' then Res.Send( Multiplicar(DM,Req) ).Status(200) else
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
  Pagina, Registros, Skip, REE_CODIGO, REE_CLIENTE: Integer;
  Where, Data, REE_DESCRICAO, REE_STATUS, CLI_NOME: String;
  DataInicial, DataFinal: TDate;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Data       :=San(Req.ContentFields.Field('data').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    REE_CODIGO :=Req.ContentFields.Field('REE_CODIGO').AsInteger;
    REE_CLIENTE:=Req.ContentFields.Field('REE_CLIENTE').AsInteger;
    CLI_NOME   :=San(Req.ContentFields.Field('CLI_NOME').AsString);
    REE_STATUS :=San(Req.ContentFields.Field('REE_STATUS').AsString);

    Where:='';
    if Data='EMISSAO'      then Where:=Where+' (REE_DTEMISSAO between :datainicial and :datafinal)' else
    if Data='VENCIMENTO'   then Where:=Where+' (REE_DTVENCIMENTO between :datainicial and :datafinal)' else
    if Data='PAGAMENTO'    then Where:=Where+' (REE_DTPAGAMENTO between :datainicial and :datafinal)';
    if REE_CODIGO<>0       then Where:=Where+' and REE_CODIGO='+REE_CODIGO.ToString;
    if REE_CLIENTE<>0      then Where:=Where+' and REE_CLIENTE='+REE_CLIENTE.ToString;
    if CLI_NOME<>''        then Where:=Where+' and CLI_NOME like '+QuotedStr(CLI_NOME+'%');
    if REE_STATUS<>'TODAS' then Where:=Where+' and REE_STATUS='+QuotedStr(REE_STATUS);

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+REE_CODIGO.ToString+', CLIENTE: '+REE_CLIENTE.ToString+', Datas: '+DateToStr(DataInicial)+' '+DateToStr(DataFinal));

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from RECEBER '+
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
      'left join RECEITAS on REE_RECEITA=REC_CODIGO '+
      'left join CONTAS on REE_CONTA=CON_CODIGO '+
      'where '+Where+' order by REE_DTVENCIMENTO desc, REE_CLIENTE');
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
  REE_CODIGO: Integer;
begin
  try
    REE_CODIGO:=SoNumeros(Req.ContentFields.Field('REE_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+REE_CODIGO.ToString);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBReceber.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBReceber.Close;

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
  REE_CODIGO, REE_CONTA, REE_RECEITA, REE_CLIENTE, REE_VENDEDOR: Integer;
  REE_DESCRICAO: String;
  REE_VALOR: Extended;
  REE_DTEMISSAO, REE_DTVENCIMENTO, REE_DTJUROSAPOS: TDate;
begin
  try
    REE_CODIGO   :=Req.ContentFields.Field('REE_CODIGO').AsInteger;
    REE_DESCRICAO:=San(Req.ContentFields.Field('REE_DESCRICAO').AsString);
    REE_RECEITA  :=Req.ContentFields.Field('REE_RECEITA').AsInteger;
    REE_CLIENTE  :=Req.ContentFields.Field('REE_CLIENTE').AsInteger;
    REE_CONTA    :=Req.ContentFields.Field('REE_CONTA').AsInteger;
    REE_VENDEDOR :=Req.ContentFields.Field('REE_VENDEDOR').AsInteger;

    Obrigatorio(REE_DESCRICAO,'Descrição');
    Obrigatorio(REE_RECEITA.ToString,'Receita','0');
    Obrigatorio(REE_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(REE_CONTA.ToString,'Conta','0');
    Obrigatorio(REE_VENDEDOR.ToString,'Vendedor','0');

    if Req.ContentFields.Field('REE_DTEMISSAO').AsString<>'' then
    REE_DTEMISSAO:=Req.ContentFields.Field('REE_DTEMISSAO').AsDate else
    REE_DTEMISSAO:=Date;

    if Req.ContentFields.Field('REE_DTJUROSAPOS').AsString<>'' then
    REE_DTJUROSAPOS:=Req.ContentFields.Field('REE_DTJUROSAPOS').AsDate else
    REE_DTJUROSAPOS:=Date;

    if Req.ContentFields.Field('REE_DTVENCIMENTO').AsString<>'' then
    REE_DTVENCIMENTO:=Req.ContentFields.Field('REE_DTVENCIMENTO').AsDate else
    REE_DTVENCIMENTO:=Date;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+REE_CODIGO.ToString);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBReceber.Edit;
    DM.TBReceberREE_ACRESCIMOPORC.Value:=Req.ContentFields.Field('REE_ACRESCIMOPORC').AsExtended;
    //DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=
    DM.TBReceberREE_ACRESCIMOVALOR.Value:=Req.ContentFields.Field('REE_ACRESCIMOVALOR').AsExtended;
    //DM.TBReceberREE_BAIXADOPOR.Value:=
    //DM.TBReceberREE_BOLETO.Value:=
    DM.TBReceberREE_CLIENTE.Value:=REE_CLIENTE;
    //DM.TBReceberREE_CODIGO.Value:=
    DM.TBReceberREE_CONTA.Value:=REE_CONTA;
    DM.TBReceberREE_DESCPORC.Value:=Req.ContentFields.Field('REE_DESCPORC').AsExtended;
    DM.TBReceberREE_DESCPORCVENCIMENTO.Value:=Req.ContentFields.Field('REE_DESCPORCVENCIMENTO').AsExtended;
    DM.TBReceberREE_DESCRICAO.Value:=REE_DESCRICAO;
    DM.TBReceberREE_DESCVALOR.Value:=Req.ContentFields.Field('REE_DESCVALOR').AsExtended;
    //DM.TBReceberREE_DIASATRASO.Value:=
    //DM.TBReceberREE_DIASPRAZO.Value:=
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    //DM.TBReceberREE_DTCADASTRO.Value:=
    DM.TBReceberREE_DTEMISSAO.Value:=REE_DTEMISSAO;
    DM.TBReceberREE_DTJUROSAPOS.Value:=REE_DTJUROSAPOS;
    //DM.TBReceberREE_DTPAGAMENTO.Value:=
    DM.TBReceberREE_DTVENCIMENTO.Value:=REE_DTVENCIMENTO;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    //DM.TBReceberREE_HRCADASTRO.Value:=
    //DM.TBReceberREE_JUROSPAGO.Value:=
    //DM.TBReceberREE_MULTAPAGO.Value:=
    //DM.TBReceberREE_NOVOCODIGO.Value:=
    DM.TBReceberREE_NUMDOCTO.Value:=San(Req.ContentFields.Field('REE_NUMDOCTO').AsString);
    DM.TBReceberREE_OBSERVACOES.Value:=San(Req.ContentFields.Field('REE_OBSERVACOES').AsString,0);
    DM.TBReceberREE_PARCELANUM.Value:=Req.ContentFields.Field('REE_PARCELANUM').AsInteger;
    DM.TBReceberREE_PARCELAQTDE.Value:=Req.ContentFields.Field('REE_PARCELAQTDE').AsInteger;
    DM.TBReceberREE_PORCJUROS.Value:=Req.ContentFields.Field('REE_PORCJUROS').AsExtended;
    DM.TBReceberREE_RECEITA.Value:=REE_RECEITA;
    //DM.TBReceberREE_STATUS.Value:=
    //DM.TBReceberREE_TIPOBAIXA.Value:=
    DM.TBReceberREE_TIPODOCTO.Value:=San(Req.ContentFields.Field('REE_TIPODOCTO').AsString);
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceberREE_VALOR.Value:=Req.ContentFields.Field('REE_VALOR').AsExtended;
    //DM.TBReceberREE_VALORACESSORIAS.Value:=
    //DM.TBReceberREE_VALORJUROS.Value:=
    //DM.TBReceberREE_VALORMULTA.Value:=
    //DM.TBReceberREE_VALORORIGINAL.Value:=
    //DM.TBReceberREE_VALORPAGO.Value:=
    //DM.TBReceberREE_VALORSEMDESCONTO.Value:=
    //DM.TBReceberREE_VENDA.Value:=
    DM.TBReceberREE_VENDEDOR.Value:=Req.ContentFields.Field('REE_VENDEDOR').AsInteger;
    DM.TBReceber.Post;

    Registro:=DM.TBReceber.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBReceber.Close;

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
  REE_DESCRICAO: String;
  REE_RECEITA, REE_CLIENTE, REE_CONTA, REE_VENDEDOR: Integer;
  REE_DTEMISSAO, REE_DTJUROSAPOS, REE_DTVENCIMENTO: TDate;
begin
  try
    REE_DESCRICAO:=San(Req.ContentFields.Field('REE_DESCRICAO').AsString);
    REE_RECEITA  :=Req.ContentFields.Field('REE_RECEITA').AsInteger;
    REE_CLIENTE  :=Req.ContentFields.Field('REE_CLIENTE').AsInteger;
    REE_CONTA    :=Req.ContentFields.Field('REE_CONTA').AsInteger;
    REE_VENDEDOR :=Req.ContentFields.Field('REE_VENDEDOR').AsInteger;

    Obrigatorio(REE_DESCRICAO,'Descrição');
    Obrigatorio(REE_RECEITA.ToString,'Receita','0');
    Obrigatorio(REE_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(REE_CONTA.ToString,'Conta','0');
    Obrigatorio(REE_VENDEDOR.ToString,'Vendedor','0');

    if Req.ContentFields.Field('REE_DTEMISSAO').AsString<>'' then
    REE_DTEMISSAO:=Req.ContentFields.Field('REE_DTEMISSAO').AsDate else
    REE_DTEMISSAO:=Date;

    if Req.ContentFields.Field('REE_DTJUROSAPOS').AsString<>'' then
    REE_DTJUROSAPOS:=Req.ContentFields.Field('REE_DTJUROSAPOS').AsDate else
    REE_DTJUROSAPOS:=Date;

    if Req.ContentFields.Field('REE_DTVENCIMENTO').AsString<>'' then
    REE_DTVENCIMENTO:=Req.ContentFields.Field('REE_DTVENCIMENTO').AsDate else
    REE_DTVENCIMENTO:=Date;

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBReceber.Open;
    DM.TBReceber.Insert;
    DM.TBReceberREE_ACRESCIMOPORC.Value:=0; //Req.ContentFields.Field('REE_ACRESCIMOPORC').AsExtended;
    //DM.TBReceberREE_ACRESCIMOPORCPAGO.Value:=
    DM.TBReceberREE_ACRESCIMOVALOR.Value:=0; //Req.ContentFields.Field('REE_ACRESCIMOVALOR').AsExtended;
    //DM.TBReceberREE_BAIXADOPOR.Value:=
    //DM.TBReceberREE_BOLETO.Value:=
    DM.TBReceberREE_CLIENTE.Value:=REE_CLIENTE;
    //DM.TBReceberREE_CODIGO.Value:=
    DM.TBReceberREE_CONTA.Value:=REE_CONTA;
    DM.TBReceberREE_DESCPORC.Value:=0;
    DM.TBReceberREE_DESCPORCVENCIMENTO.Value:=Req.ContentFields.Field('REE_DESCPORCVENCIMENTO').AsExtended;
    DM.TBReceberREE_DESCRICAO.Value:=REE_DESCRICAO;
    DM.TBReceberREE_DESCVALOR.Value:=0;
    //DM.TBReceberREE_DIASATRASO.Value:=
    //DM.TBReceberREE_DIASPRAZO.Value:=
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    DM.TBReceberREE_DTCADASTRO.Value:=Date;
    DM.TBReceberREE_DTEMISSAO.Value:=REE_DTEMISSAO;
    DM.TBReceberREE_DTJUROSAPOS.Value:=REE_DTJUROSAPOS;
    //DM.TBReceberREE_DTPAGAMENTO.Value:=
    DM.TBReceberREE_DTVENCIMENTO.Value:=REE_DTVENCIMENTO;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    DM.TBReceberREE_HRCADASTRO.Value:=Time;
    //DM.TBReceberREE_JUROSPAGO.Value:=
    //DM.TBReceberREE_MULTAPAGO.Value:=
    //DM.TBReceberREE_NOVOCODIGO.Value:=
    DM.TBReceberREE_NUMDOCTO.Value:=San(Req.ContentFields.Field('REE_NUMDOCTO').AsString);
    DM.TBReceberREE_OBSERVACOES.Value:=San(Req.ContentFields.Field('REE_OBSERVACOES').AsString,0);
    DM.TBReceberREE_PARCELANUM.Value:=Req.ContentFields.Field('REE_PARCELANUM').AsInteger;
    DM.TBReceberREE_PARCELAQTDE.Value:=Req.ContentFields.Field('REE_PARCELAQTDE').AsInteger;
    DM.TBReceberREE_PORCJUROS.Value:=Req.ContentFields.Field('REE_PORCJUROS').AsExtended;
    DM.TBReceberREE_RECEITA.Value:=REE_RECEITA;
    DM.TBReceberREE_STATUS.Value:='A';
    //DM.TBReceberREE_TIPOBAIXA.Value:=
    DM.TBReceberREE_TIPODOCTO.Value:=San(Req.ContentFields.Field('REE_TIPODOCTO').AsString);
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceberREE_VALOR.Value:=Req.ContentFields.Field('REE_VALOR').AsExtended;
    DM.TBReceberREE_VALORACESSORIAS.Value:=0;
    //DM.TBReceberREE_VALORJUROS.Value:=
    //DM.TBReceberREE_VALORMULTA.Value:=
    //DM.TBReceberREE_VALORORIGINAL.Value:=
    DM.TBReceberREE_VALORPAGO.Value:=0;
    //DM.TBReceberREE_VALORSEMDESCONTO.Value:=
    //DM.TBReceberREE_VENDA.Value:=
    DM.TBReceberREE_VENDEDOR.Value:=Req.ContentFields.Field('REE_VENDEDOR').AsInteger;
    DM.TBReceber.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBReceber.ToJSONObject);

    DM.TBReceber.Close;

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
  REE_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    REE_CODIGO:=SoNumeros(Req.ContentFields.Field('REE_CODIGO').AsString);
    if REE_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+REE_CODIGO.ToString);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBReceber.Delete;

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
  REE_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    REE_CODIGO:=Req.ContentFields.Field('REE_CODIGO').AsInteger;

    Obrigatorio(REE_CODIGO.ToString,'Código','0');
    Obrigatorio(Req.ContentFields.Field('REE_DTPAGAMENTO').AsString,'Data Pagamento');

    FormMain.Logar(PrefixLog+'(baixar) '+REE_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Conta a receber não encontrada.');

    if DM.TBReceberREE_STATUS.Value='B' then
    raise Exception.Create('Conta a receber já baixada.');

    if DM.TBReceberREE_STATUS.Value='C' then
    raise Exception.Create('Esta conta a receber está cancelada.');

    DM.TBReceber.Edit;
    DM.TBReceberREE_BAIXADOPOR.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    DM.TBReceberREE_DTPAGAMENTO.Value:=Req.ContentFields.Field('REE_DTPAGAMENTO').AsDate;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    DM.TBReceberREE_STATUS.Value:='B';
    DM.TBReceberREE_TIPOBAIXA.Value:='T';
    DM.TBReceberREE_TIPODOCTO.Value:=San(Req.ContentFields.Field('REE_TIPODOCTO').AsString);
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceberREE_VALORPAGO.Value:=Req.ContentFields.Field('REE_VALORPAGO').AsExtended;
    DM.TBReceber.Post;

    //Lancar no fluxo...
    //LancarFluxoCaixa(DM,TBReceberREE_CONTA.Value,$VEN->VEN_CODIGO,'null','',$row->REE_FORNECEDOR,$row->CLI_NOME,'S',$REE_VALORPAGO,'BAIXA AUTOMATICA CONTAS A RECEBER','CONTAS A RECEBER',$REE_TIPODOCTO,$row->REE_NUMDOCTO,$USU->USU_APELIDO)

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBReceber.ToJSONObject);
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
  REE_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    REE_CODIGO:=Req.ContentFields.Field('REE_CODIGO').AsInteger;

    Obrigatorio(REE_CODIGO.ToString,'Código','0');

    FormMain.Logar(PrefixLog+'(estornar) '+REE_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Conta a receber não encontrada.');

    if DM.TBReceberREE_STATUS.Value='A' then
    raise Exception.Create('Conta a receber já está em aberto.');

    if DM.TBReceberREE_STATUS.Value='C' then
    raise Exception.Create('Conta cancelada. Impossível estornar.');

    DM.TBReceber.Edit;
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    DM.TBReceberREE_STATUS.Value:='A';
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceberREE_VALORPAGO.Value:=0;
    DM.TBReceber.Post;

    //Lancar no fluxo...
    //LancarFluxoCaixa(DM,TBReceberREE_CONTA.Value,$VEN->VEN_CODIGO,'null','',$row->REE_FORNECEDOR,$row->CLI_NOME,'S',$REE_VALORPAGO,'BAIXA AUTOMATICA CONTAS A RECEBER','CONTAS A RECEBER',$REE_TIPODOCTO,$row->REE_NUMDOCTO,$USU->USU_APELIDO)

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBReceber.ToJSONObject);
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
  REE_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    REE_CODIGO:=Req.ContentFields.Field('REE_CODIGO').AsInteger;

    Obrigatorio(REE_CODIGO.ToString,'Código','0');

    FormMain.Logar(PrefixLog+'(cancelar) '+REE_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Conta a receber não encontrada.');

    if DM.TBReceberREE_STATUS.Value<>'A' then
    raise Exception.Create('Somente contas a receber em aberto podem ser canceladas.');

    DM.TBReceber.Edit;
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    DM.TBReceberREE_STATUS.Value:='C';
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBReceber.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBReceber.ToJSONObject);
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

function Multiplicar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario, Item: TJSONObject;
  REE_CODIGO, REE_PARCELAQTDE, REE_PARCELANUM, I: Integer;
  REE_DTVENCIMENTO: TDate;
  Listagem: TJSONArray;
begin
  try
    REE_CODIGO:=Req.ContentFields.Field('REE_CODIGO').AsInteger;
    Listagem:=TJSONArray.ParseJSONValue(Req.ContentFields.Field('listagem').AsString) as TJSONArray;
    Obrigatorio(REE_CODIGO.ToString,'Código','0');

    FormMain.Logar(PrefixLog+'(multiplicar) '+REE_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBReceber.Close;
    DM.TBReceber.ParamByName('codigo').AsInteger:=REE_CODIGO;
    DM.TBReceber.Open;
    if DM.TBReceber.IsEmpty then
    raise Exception.Create('Conta a receber não encontrada.');

    if not Assigned(Listagem) then
    raise Exception.Create('Erro ao parsear o JSON');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'insert into RECEBER (REE_CLIENTE, REE_CODIGO, REE_CONTA, REE_DESCRICAO, REE_DTATUALIZACAO, REE_DTCADASTRO, REE_DTEMISSAO, REE_DTJUROSAPOS, REE_DTVENCIMENTO, '+
      'REE_NUMDOCTO, REE_OBSERVACOES, REE_PARCELANUM, REE_PARCELAQTDE, REE_PORCJUROS, REE_RECEITA, REE_STATUS, REE_USUARIO, REE_TIPODOCTO, REE_VALOR, REE_VENDA, REE_VENDEDOR) values ( '+
      ':cliente, gen_id(GEN_RECEBER,1), :conta, :descricao, :dtatualizacao, :dtcadastro, :dtemissao, :dtjurosapos, :dtvencimento, '+
      ':numdocto, :observacoes, :parcelanum, :parcelaqtde, :porcjuros, :receita, :status, :usuario, :tipodocto, :valor, :venda, :vendedor)'
    );

    for I:=0 to Listagem.Count-1 do
    begin
      Item:=Listagem[I] as TJSONObject;

      REE_DTVENCIMENTO:=Item.GetValue<TDate>('REE_DTVENCIMENTO');
      REE_PARCELAQTDE :=Item.GetValue<Integer>('REE_PARCELAQTDE');
      REE_PARCELANUM  :=Item.GetValue<Integer>('REE_PARCELANUM');

      DM.Query1.Close;
      DM.Query1.ParamByName('cliente')      .AsInteger:=DM.TBReceberREE_CLIENTE.Value;
      DM.Query1.ParamByName('conta')        .AsInteger:=DM.TBReceberREE_CONTA.Value;
      DM.Query1.ParamByName('descricao')    .AsString:=DM.TBReceberREE_DESCRICAO.Value;
      DM.Query1.ParamByName('dtatualizacao').AsDate:=Date; //DM.TBReceberREE_DTATUALIZACAO.Value;
      DM.Query1.ParamByName('dtcadastro')   .AsDate:=Date; //DM.TBReceberREE_DTCADASTRO.Value;
      DM.Query1.ParamByName('dtemissao')    .AsDate:=DM.TBReceberREE_DTEMISSAO.Value;
      DM.Query1.ParamByName('dtjurosapos')  .AsDate:=DM.TBReceberREE_DTJUROSAPOS.Value;
      DM.Query1.ParamByName('dtvencimento') .AsDate:=REE_DTVENCIMENTO;
      DM.Query1.ParamByName('numdocto')     .AsString:=DM.TBReceberREE_NUMDOCTO.Value;
      DM.Query1.ParamByName('observacoes')  .AsString:=DM.TBReceberREE_OBSERVACOES.Value;
      DM.Query1.ParamByName('parcelanum')   .AsInteger:=REE_PARCELANUM;
      DM.Query1.ParamByName('parcelaqtde')  .AsInteger:=REE_PARCELAQTDE;
      DM.Query1.ParamByName('porcjuros')    .AsFMTBCD:=DM.TBReceberREE_PORCJUROS.AsExtended;
      DM.Query1.ParamByName('receita')      .AsInteger:=DM.TBReceberREE_RECEITA.Value;
      DM.Query1.ParamByName('status')       .AsString:='A';
      DM.Query1.ParamByName('usuario')      .AsString:=Usuario.GetValue<String>('USU_APELIDO');
      DM.Query1.ParamByName('tipodocto')    .AsString:=DM.TBReceberREE_TIPODOCTO.Value;
      DM.Query1.ParamByName('valor')        .AsFMTBCD:=DM.TBReceberREE_VALOR.AsExtended;
      DM.Query1.ParamByName('venda')        .AsInteger:=DM.TBReceberREE_VENDA.Value;
      DM.Query1.ParamByName('vendedor')     .AsInteger:=DM.TBReceberREE_VENDEDOR.Value;
      DM.Query1.ExecSQL;
    end;
    DM.Query1.Close;

    DM.TBReceber.Edit;
    DM.TBReceberREE_PARCELAQTDE.Value:=REE_PARCELAQTDE;
    DM.TBReceber.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Multiplicação efetuada com sucesso.');
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
