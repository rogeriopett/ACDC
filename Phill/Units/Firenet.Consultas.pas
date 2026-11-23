//Atualizacoes:
//2026.11.19 - Logo dos relatorios pelo CarregarLogoSVGFast (EMP_LOGOSVG da base da empresa), no lugar da variavel LOGO (GetEmpresaLogo); removido o log do caminho da logo.
unit Firenet.Consultas;

interface

uses Horse, System.JSON, System.SysUtils, Vcl.Forms, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Baixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Reabrir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Cancelar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Multiplicar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Reagendar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Agenda(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarTotaisConsulta(DM: TDMFirenet; Consulta: Integer): Boolean;

function Relatorio01(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
function Relatorio02(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
function Relatorio03(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
function Relatorio04(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
function Relatorio07(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;

const
  PrefixLog='FIRENET.CONSULTAS: ';
  Campos='COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_MEDICO, COS_DATAFIM, COS_DATAINICIO, COS_DTCADASTRO, COS_HORAFIM, COS_HORAINICIO, COS_STATUS, COS_VALORTOTAL, COV_DESCRICAO, CLI_NOME, CLI_REPOSICOES, VEN_NOME';

implementation
uses Funcoes, DateUtils, SQLTimSt, System.Hash, ConsultasFast, System.Classes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/consultas', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao, Empresa: String;
begin
  DM:=nil;
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

      if Operacao='listar'         then Res.Send( Listar(DM,Req)          ).Status(200) else
      if Operacao='visualizar'     then Res.Send( Visualizar(DM,Req)      ).Status(200) else
      if Operacao='atualizar'      then Res.Send( Atualizar(DM,Req)       ).Status(200) else
      if Operacao='inserir'        then Res.Send( Inserir(DM,Req)         ).Status(200) else
      if Operacao='excluir'        then Res.Send( Excluir(DM,Req)         ).Status(200) else
      if Operacao='baixar'         then Res.Send( Baixar(DM,Req)          ).Status(200) else
      if Operacao='reabrir'        then Res.Send( Reabrir(DM,Req)         ).Status(200) else
      if Operacao='cancelar'       then Res.Send( Cancelar(DM,Req)        ).Status(200) else
      if Operacao='multiplicar'    then Res.Send( Multiplicar(DM,Req)     ).Status(200) else
      if Operacao='reagendar'      then Res.Send( Reagendar(DM,Req)       ).Status(200) else
      if Operacao='agenda'         then Res.Send( Agenda(DM,Req)          ).Status(200) else

      if Operacao='visualizarItem' then Res.Send( VisualizarItem(DM,Req)  ).Status(200) else
      if Operacao='atualizarItem'  then Res.Send( AtualizarItem(DM,Req)   ).Status(200) else
      if Operacao='inserirItem'    then Res.Send( InserirItem(DM,Req)     ).Status(200) else
      if Operacao='excluirItem'    then Res.Send( ExcluirItem(DM,Req)     ).Status(200) else

      if Operacao='rel01'          then Res.Send( Relatorio01(DM,Req,Res) ).Status(200) else
      if Operacao='rel02'          then Res.Send( Relatorio02(DM,Req,Res) ).Status(200) else
      if Operacao='rel03'          then Res.Send( Relatorio03(DM,Req,Res) ).Status(200) else
      if Operacao='rel04'          then Res.Send( Relatorio04(DM,Req,Res) ).Status(200) else
      if Operacao='rel07'          then Res.Send( Relatorio07(DM,Req,Res) ).Status(200) else
      begin
        FormMain.Logar(PrefixLog+'sem op. '+Operacao);
        raise Exception.Create('Recurso não encontrado.');
      end;

    except on ex:Exception do
      begin
        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','S');
        Retorno.AddPair('token','valido');
        Retorno.AddPair('msg',ex.Message);
        Res.Send<TJSONObject>(Retorno).Status(401);
      end;
    end;
  finally
     FreeAndNil(DM);
     FreeAndNil(Retorno);
  end;
end;

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Pagina, Registros, Skip, COS_CODIGO: Integer;
  Where, COS_DESCRICAO, COS_STATUS, CLI_NOME, VEN_NOME: String;
  DataInicial, DataFinal: TDate;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    COS_CODIGO :=Req.ContentFields.Field('COS_CODIGO').AsInteger;
    CLI_NOME   :=San(Req.ContentFields.Field('CLI_NOME').AsString);
    COS_STATUS :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    VEN_NOME   :=San(Req.ContentFields.Field('VEN_NOME').AsString);

    Where:=' (COS_DATAINICIO between :datainicial and :datafinal)';
    if COS_CODIGO<>0   then Where:=Where+' and COS_CODIGO='+COS_CODIGO.ToString;
    if CLI_NOME<>''    then Where:=Where+' and CLI_NOME like '+QuotedStr(CLI_NOME+'%');
    if VEN_NOME<>''    then Where:=Where+' and VEN_NOME like '+QuotedStr(VEN_NOME+'%');
    if COS_STATUS<>'T' then Where:=Where+' and COS_STATUS='+QuotedStr(COS_STATUS);

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+COS_CODIGO.ToString+', CLIENTE: '+CLI_NOME+', Datas: '+DateToStr(DataInicial)+' '+DateToStr(DataFinal));

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from CONSULTAS '+
      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
      'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
      'where '+Where+' order by COS_DATAINICIO');
//    DM.Query1.ParamByName('datainicial').AsDate:=ConverterDataParaISO(DataInicial);
//    DM.Query1.ParamByName('datafinal').AsDate:=ConverterDataParaISO(DataFinal);
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
  Itens: TJSONArray;
  COS_CODIGO: Integer;
begin
  try
    COS_CODIGO:=SoNumeros(Req.ContentFields.Field('COS_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+COS_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBConsultas.ToJSONObject;

    DM.TBConsultasItens.Open;
    Itens:=TJSONArray.Create;
    Itens:=DM.TBConsultasItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBConsultasItens.Close;
    DM.TBConsultas.Close;

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
  COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_MEDICO, COS_SOLICITANTE: Integer;
  COS_FIM: TSQLTimeStamp;
begin
  try
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_CODIGO     :=Req.ContentFields.Field('COS_CODIGO').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;

    Obrigatorio(COS_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(COS_CODIGO.ToString,'Código','0');
    Obrigatorio(COS_CONVENIO.ToString,'Convênio','0');
    Obrigatorio(COS_MEDICO.ToString,'Convênio','0');
    Obrigatorio(COS_SOLICITANTE.ToString,'Solicitante','0');
    Obrigatorio(Req.ContentFields.Field('COS_DATAINICIO').AsString,'Data Início');
    Obrigatorio(Req.ContentFields.Field('COS_DATAFIM').AsString,'Data Fim');
    Obrigatorio(Req.ContentFields.Field('COS_HORAINICIO').AsString,'Hora Início');
    Obrigatorio(Req.ContentFields.Field('COS_HORAFIM').AsString,'Hora Fim');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+COS_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConsultas.Edit;
    DM.TBConsultasCOS_CLIENTE.Value:=COS_CLIENTE;
    //DM.TBConsultasCOS_CODIGO.Value:=;
    DM.TBConsultasCOS_CONVENIO.Value:=COS_CONVENIO;
    DM.TBConsultasCOS_DATAFIM.Value:=Req.ContentFields.Field('COS_DATAFIM').AsDate;
    DM.TBConsultasCOS_DATAINICIO.Value:=Req.ContentFields.Field('COS_DATAINICIO').AsDate;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    //DM.TBConsultasCOS_DTCADASTRO.Value:=
    //////DM.TBConsultasCOS_FIM.Value:=DateTimeToSQLTimeStamp(StrToDateTime(Req.ContentFields.Field('COS_DATAFIM').AsString+' '+Req.ContentFields.Field('COS_HORAFIM').AsString,DataModFirenet.FS));
    DM.TBConsultasCOS_FIM.Value:=DateTimeToSQLTimeStamp(StrToDateTime(Req.ContentFields.Field('COS_DATAFIM').AsString+' '+Req.ContentFields.Field('COS_HORAFIM').AsString,DataModFirenet.FS));
    DM.TBConsultasCOS_HORAFIM.Value:=Req.ContentFields.Field('COS_HORAFIM').AsTime;
    DM.TBConsultasCOS_HORAINICIO.Value:=Req.ContentFields.Field('COS_HORAINICIO').AsTime;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_INICIO.Value:=DateTimeToSQLTimeStamp(StrToDateTime(Req.ContentFields.Field('COS_DATAINICIO').AsString+' '+Req.ContentFields.Field('COS_HORAINICIO').AsString,DataModFirenet.FS));
    DM.TBConsultasCOS_MEDICO.Value:=COS_MEDICO;
    DM.TBConsultasCOS_SOLICITANTE.Value:=COS_SOLICITANTE;
    //DM.TBConsultasCOS_STATUS.Value:=
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    //DM.TBConsultasCOS_VALORTOTAL.Value:=
    DM.TBConsultas.Post;

    Registro:=DM.TBConsultas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBConsultas.Close;

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
  COS_CLIENTE, COS_CONVENIO, COS_MEDICO, COS_SOLICITANTE, TotalReposicoes: Integer;
begin
  try
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;

    Obrigatorio(COS_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(COS_CONVENIO.ToString,'Convênio','0');
    Obrigatorio(COS_MEDICO.ToString,'Médico','0');
    Obrigatorio(COS_SOLICITANTE.ToString,'Solicitante','0');
    Obrigatorio(Req.ContentFields.Field('COS_DATAINICIO').AsString,'Data Início');
    Obrigatorio(Req.ContentFields.Field('COS_DATAFIM').AsString,'Data Fim');
    Obrigatorio(Req.ContentFields.Field('COS_HORAINICIO').AsString,'Hora Início');
    Obrigatorio(Req.ContentFields.Field('COS_HORAFIM').AsString,'Hora Fim');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=COS_CLIENTE;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    DM.TBConsultas.Open;
    DM.TBConsultas.Insert;
    DM.TBConsultasCOS_CLIENTE.Value:=COS_CLIENTE;
    //DM.TBConsultasCOS_CODIGO.Value:=;
    DM.TBConsultasCOS_CONVENIO.Value:=COS_CONVENIO;
    DM.TBConsultasCOS_DATAFIM.Value:=Req.ContentFields.Field('COS_DATAFIM').AsDate;
    DM.TBConsultasCOS_DATAINICIO.Value:=Req.ContentFields.Field('COS_DATAINICIO').AsDate;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    DM.TBConsultasCOS_DTCADASTRO.Value:=Date;
    DM.TBConsultasCOS_FIM.Value:=DateTimeToSQLTimeStamp(StrToDateTime(Req.ContentFields.Field('COS_DATAFIM').AsString+' '+Req.ContentFields.Field('COS_HORAFIM').AsString,DataModFirenet.FS));
    DM.TBConsultasCOS_HORAFIM.Value:=Req.ContentFields.Field('COS_HORAFIM').AsTime;
    DM.TBConsultasCOS_HORAINICIO.Value:=Req.ContentFields.Field('COS_HORAINICIO').AsTime;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_INICIO.Value:=DateTimeToSQLTimeStamp(StrToDateTime(Req.ContentFields.Field('COS_DATAINICIO').AsString+' '+Req.ContentFields.Field('COS_HORAINICIO').AsString,DataModFirenet.FS));
    DM.TBConsultasCOS_MEDICO.Value:=COS_MEDICO;
    DM.TBConsultasCOS_SOLICITANTE.Value:=COS_SOLICITANTE;
    DM.TBConsultasCOS_STATUS.Value:='A';
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConsultasCOS_VALORTOTAL.Value:=0;
    DM.TBConsultas.Post;

    TotalReposicoes:=DM.TBClientesCLI_REPOSICOES.Value-1;
    if TotalReposicoes>=0 then
    begin
      DM.TBClientes.Edit;
      DM.TBClientesCLI_REPOSICOES.Value:=TotalReposicoes;
      DM.TBClientes.Post;
    end;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBConsultas.ToJSONObject);

    DM.TBConsultas.Close;

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
  COS_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    COS_CODIGO:=SoNumeros(Req.ContentFields.Field('COS_CODIGO').AsString);
    if COS_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+COS_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConsultas.Delete;

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
  COS_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    COS_CODIGO:=Req.ContentFields.Field('COS_CODIGO').AsInteger;

    Obrigatorio(COS_CODIGO.ToString,'Código','0');

    FormMain.Logar(PrefixLog+'(baixar) '+COS_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    if DM.TBConsultasCOS_STATUS.Value='B' then
    raise Exception.Create('Consulta já baixada.');

    if DM.TBConsultasCOS_STATUS.Value='C' then
    raise Exception.Create('Esta consulta está cancelada.');

    DM.TBConsultas.Edit;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_STATUS.Value:='B';
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConsultas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBConsultas.ToJSONObject);
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

function Reabrir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  COS_CODIGO: Integer;
  Retorno, Usuario: TJSONObject;
begin
  try
    COS_CODIGO:=Req.ContentFields.Field('COS_CODIGO').AsInteger;

    Obrigatorio(COS_CODIGO.ToString,'Código','0');

    FormMain.Logar(PrefixLog+'(estornar) '+COS_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    if DM.TBConsultasCOS_STATUS.Value='A' then
    raise Exception.Create('Consulta já está em aberto.');

    if DM.TBConsultasCOS_STATUS.Value='C' then
    raise Exception.Create('Conta cancelada. Impossível reabrir.');

    DM.TBConsultas.Edit;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_STATUS.Value:='A';
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConsultas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBConsultas.ToJSONObject);
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
  COS_CODIGO: Integer;
  Reposicao: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    COS_CODIGO:=Req.ContentFields.Field('COS_CODIGO').AsInteger;
    Reposicao:=Req.ContentFields.Field('reposicao').AsString;

    Obrigatorio(COS_CODIGO.ToString,'Código','0');
    Obrigatorio(Reposicao,'Reposição');

    FormMain.Logar(PrefixLog+'(cancelar) '+COS_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    if DM.TBConsultasCOS_STATUS.Value<>'A' then
    raise Exception.Create('Somente consultas em aberto podem ser canceladas.');

    DM.TBConsultas.Edit;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_STATUS.Value:='C';
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConsultas.Post;

    if Reposicao='SIM' then
    begin
      DM.TBClientes.Close;
      DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBConsultasCOS_CLIENTE.Value;
      DM.TBClientes.Open;
      if DM.TBClientes.IsEmpty then
      raise Exception.Create('Cliente não encontrado.');

      DM.TBClientes.Edit;
      DM.TBClientesCLI_REPOSICOES.Value:=DM.TBClientesCLI_REPOSICOES.Value+1;
      DM.TBClientes.Post;
    end;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBConsultas.ToJSONObject);
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
  COS_CODIGO, COS_PARCELAQTDE, COS_PARCELANUM, I: Integer;
  COS_DTVENCIMENTO: TDate;
  Listagem: TJSONArray;
begin
  try
    COS_CODIGO:=Req.ContentFields.Field('COS_CODIGO').AsInteger;

    Obrigatorio(COS_CODIGO.ToString,'Código','0');

    Listagem:=TJSONArray.ParseJSONValue(Req.ContentFields.Field('listagem').AsString) as TJSONArray;
    if not Assigned(Listagem) then
    raise Exception.Create('Erro ao parsear o JSON');

    FormMain.Logar(PrefixLog+'(multiplicar) '+COS_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    DM.TBConsultasItens.Open;

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'insert into CONSULTAS (COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, COS_DATAINICIO, COS_DTATUALIZACAO, COS_DTCADASTRO, COS_FIM, COS_HORAFIM, COS_HORAINICIO, '+
      'COS_INICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, COS_USUARIO, COS_VALORTOTAL) values ( '+
      ':cliente, gen_id(GEN_CONSULTAS,1), :convenio, :datafim, :datainicio, :dtatualizacao, :dtcadastro, :fim, :horafim, :horainicio, '+
      ':inicio, :medico, :solicitante, :status, :usuario, :valortotal) returning COS_CODIGO'
    );

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'insert into CONSULTASITENS (CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, CSI_SIGLA, CSI_VALOR) values ( '+
      'gen_id(GEN_CONSULTASITENS,1), :consulta, :descricao, :exame, :sigla, :valor)'
    );

    for I:=0 to Listagem.Count-1 do
    begin
      Item:=Listagem[I] as TJSONObject;

      DM.Query1.Close;
      DM.Query1.ParamByName('cliente')      .AsInteger:=DM.TBConsultasCOS_CLIENTE.Value;
      DM.Query1.ParamByName('convenio')     .AsInteger:=DM.TBConsultasCOS_CONVENIO.Value;
      DM.Query1.ParamByName('datafim')      .AsDate:=ISO8601ToDate(Item.GetValue<String>('COS_DATAFIM')); //DM.TBConsultasCOS_DATAFIM.Value;
      DM.Query1.ParamByName('datainicio')   .AsDate:=ISO8601ToDate(Item.GetValue<String>('COS_DATAINICIO')); //DM.TBConsultasCOS_DATAINICIO.Value;
      DM.Query1.ParamByName('dtatualizacao').AsDate:=Date;
      DM.Query1.ParamByName('dtcadastro')   .AsDate:=Date;
      DM.Query1.ParamByName('fim')          .AsSQLTimeStamp:=DateTimeToSQLTimeStamp(StrToDateTime(Item.GetValue<String>('COS_DATAFIM')+' '+DM.TBConsultasCOS_HORAFIM.AsString,DataModFirenet.FS));
      DM.Query1.ParamByName('horafim')      .AsTime:=DM.TBConsultasCOS_HORAFIM.Value;
      DM.Query1.ParamByName('horainicio')   .AsTime:=DM.TBConsultasCOS_HORAINICIO.Value;
      DM.Query1.ParamByName('inicio')       .AsSQLTimeStamp:=DateTimeToSQLTimeStamp(StrToDateTime(Item.GetValue<String>('COS_DATAINICIO')+' '+DM.TBConsultasCOS_HORAINICIO.AsString,DataModFirenet.FS));
      DM.Query1.ParamByName('medico')       .AsInteger:=DM.TBConsultasCOS_MEDICO.Value;
      DM.Query1.ParamByName('solicitante')  .AsInteger:=DM.TBConsultasCOS_SOLICITANTE.Value;
      DM.Query1.ParamByName('status')       .AsString:='A';
      DM.Query1.ParamByName('usuario')      .AsString:=Usuario.GetValue<String>('USU_APELIDO');
      DM.Query1.ParamByName('valortotal')   .AsFMTBCD:=DM.TBConsultasCOS_VALORTOTAL.AsExtended;
      DM.Query1.Open;

      DM.TBConsultasItens.First;
      while not DM.TBConsultasItens.Eof do
      begin
        DM.Query2.Close;
        DM.Query2.ParamByName('consulta').AsInteger:=DM.Query1.FieldByName('COS_CODIGO').AsInteger;
        DM.Query2.ParamByName('descricao').AsString:=DM.TBConsultasItensCSI_DESCRICAO.Value;
        DM.Query2.ParamByName('exame').AsInteger:=DM.TBConsultasItensCSI_EXAME.Value;
        DM.Query2.ParamByName('sigla').AsString:=DM.TBConsultasItensCSI_SIGLA.Value;
        DM.Query2.ParamByName('valor').AsFMTBCD:=DM.TBConsultasItensCSI_VALOR.AsExtended;
        DM.Query2.ExecSQL;
        DM.TBConsultasItens.Next;
      end;
    end;
    DM.Query1.Close;

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

function Reagendar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  COS_CODIGO: Integer;
  COS_DATAFIM, COS_DATAINICIO: String;
  COS_DATAFIM2, COS_DATAINICIO2: TDate;
  COS_HORAFIM, COS_HORAINICIO: TTime;
begin
  try
    COS_CODIGO     :=Req.ContentFields.Field('COS_CODIGO').AsInteger;
    COS_DATAFIM    :=Req.ContentFields.Field('COS_DATAFIM').AsString;
    COS_DATAINICIO :=Req.ContentFields.Field('COS_DATAINICIO').AsString;
    COS_DATAFIM2   :=Req.ContentFields.Field('COS_DATAFIM').AsDate;
    COS_DATAINICIO2:=Req.ContentFields.Field('COS_DATAINICIO').AsDate;
    COS_HORAFIM    :=Req.ContentFields.Field('COS_HORAFIM').AsTime;
    COS_HORAINICIO :=Req.ContentFields.Field('COS_HORAINICIO').AsTime;

    Obrigatorio(COS_CODIGO.ToString,'Código','0');
    Obrigatorio(COS_DATAINICIO,'Data Inicio');
    Obrigatorio(COS_DATAFIM,'Data Fim');
    Obrigatorio(DateToStr(COS_HORAINICIO),'Data Inicio');
    Obrigatorio(DateToStr(COS_HORAFIM),'Data Fim');

    FormMain.Logar(PrefixLog+'(reagendar) '+COS_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    if DM.TBConsultasCOS_STATUS.Value<>'A' then
    raise Exception.Create('Somente consultas em aberto podem ser reagendadas.');

    //insere uma nova consulta.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'insert into CONSULTAS (COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAFIM, COS_DATAINICIO, COS_DTATUALIZACAO, COS_DTCADASTRO, COS_FIM, COS_HORAFIM, COS_HORAINICIO, '+
      'COS_INICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, COS_USUARIO, COS_VALORTOTAL) values ( '+
      ':cliente, gen_id(GEN_CONSULTAS,1), :convenio, :datafim, :datainicio, :dtatualizacao, :dtcadastro, :fim, :horafim, :horainicio, '+
      ':inicio, :medico, :solicitante, :status, :usuario, :valortotal) returning COS_CODIGO'
    );
    DM.Query1.ParamByName('cliente')      .AsInteger:=DM.TBConsultasCOS_CLIENTE.Value;
    DM.Query1.ParamByName('convenio')     .AsInteger:=DM.TBConsultasCOS_CONVENIO.Value;
    DM.Query1.ParamByName('datafim')      .AsDate:=COS_DATAFIM2;
    DM.Query1.ParamByName('datainicio')   .AsDate:=COS_DATAINICIO2;
    DM.Query1.ParamByName('dtatualizacao').AsDate:=Date;
    DM.Query1.ParamByName('dtcadastro')   .AsDate:=Date;
    DM.Query1.ParamByName('fim')          .AsSQLTimeStamp:=DateTimeToSQLTimeStamp(StrToDateTime(COS_DATAFIM+' '+TimeToStr(COS_HORAFIM),DataModFirenet.FS));
    DM.Query1.ParamByName('horafim')      .AsTime:=COS_HORAFIM;
    DM.Query1.ParamByName('horainicio')   .AsTime:=COS_HORAINICIO;
    DM.Query1.ParamByName('inicio')       .AsSQLTimeStamp:=DateTimeToSQLTimeStamp(StrToDateTime(COS_DATAINICIO+' '+TimeToStr(COS_HORAINICIO),DataModFirenet.FS));
    DM.Query1.ParamByName('medico')       .AsInteger:=DM.TBConsultasCOS_MEDICO.Value;
    DM.Query1.ParamByName('solicitante')  .AsInteger:=DM.TBConsultasCOS_SOLICITANTE.Value;
    DM.Query1.ParamByName('status')       .AsString:='A';
    DM.Query1.ParamByName('usuario')      .AsString:=Usuario.GetValue<String>('USU_APELIDO');
    DM.Query1.ParamByName('valortotal')   .AsFMTBCD:=DM.TBConsultasCOS_VALORTOTAL.AsExtended;
    DM.Query1.Open;

    //insere os itens da consulta
    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'insert into CONSULTASITENS (CSI_CODIGO, CSI_CONSULTA, CSI_DESCRICAO, CSI_EXAME, CSI_SIGLA, CSI_VALOR) values ( '+
      'gen_id(GEN_CONSULTASITENS,1), :consulta, :descricao, :exame, :sigla, :valor)'
    );
    DM.TBConsultasItens.Open;
    DM.TBConsultasItens.First;
    while not DM.TBConsultasItens.Eof do
    begin
      DM.Query2.Close;
      DM.Query2.ParamByName('consulta').AsInteger:=DM.Query1.FieldByName('COS_CODIGO').AsInteger;
      DM.Query2.ParamByName('descricao').AsString:=DM.TBConsultasItensCSI_DESCRICAO.Value;
      DM.Query2.ParamByName('exame').AsInteger:=DM.TBConsultasItensCSI_EXAME.Value;
      DM.Query2.ParamByName('sigla').AsString:=DM.TBConsultasItensCSI_SIGLA.Value;
      DM.Query2.ParamByName('valor').AsFMTBCD:=DM.TBConsultasItensCSI_VALOR.AsExtended;
      DM.Query2.ExecSQL;
      DM.TBConsultasItens.Next;
    end;
    DM.TBConsultasItens.Close;

    //atualizar a consulta atual para reagendada.
    DM.TBConsultas.Edit;
    DM.TBConsultasCOS_DTATUALIZACAO.Value:=Date;
    DM.TBConsultasCOS_HRATUALIZACAO.Value:=Time;
    DM.TBConsultasCOS_STATUS.Value:='R';
    DM.TBConsultasCOS_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBConsultas.Post;

    Result:=Visualizar(DM,Req);
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

function Agenda(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Where, VEN_CODIGO, CLI_NOME, CorStatus, Status, JSONItensStr: String;
  DataInicial, DataFinal: TDate;
  Listagem, Itens: TJSONArray;
  Retorno, Registro: TJSONObject;
begin
  try
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    VEN_CODIGO :=San(Req.ContentFields.Field('VEN_CODIGO').AsString);
    CLI_NOME   :=San(Req.ContentFields.Field('CLI_NOME').AsString);

    Where:=' (COS_DATAINICIO between :datainicial and :datafinal)';
    if VEN_CODIGO<>'TODOS' then Where:=Where+' and COS_MEDICO='+VEN_CODIGO;
    if CLI_NOME<>''        then Where:=Where+' and CLI_NOME like '+QuotedStr(CLI_NOME+'%');

    FormMain.Logar(PrefixLog+'(agenda) Datas: '+DateToStr(DataInicial)+', '+DateToStr(DataFinal)+', Médico: '+VEN_CODIGO+', Cliente: '+CLI_NOME);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('SELECT COS_CODIGO as id, CLI_NOME as title, COS_DATAINICIO, COS_DATAFIM, COS_HORAINICIO, COS_HORAFIM, VEN_COR, VEN_NOME, '+
      'cast(COS_DATAINICIO as varchar(10)) || ''T'' || left(cast(COS_HORAINICIO as varchar(13)),8) as "start", '+
      'cast(COS_DATAFIM as varchar(10)) || ''T'' || left(cast(COS_HORAFIM as varchar(13)),8) as "end", '+
      'case COS_STATUS when ''A'' then ''ABERTO'' when ''B'' then ''BAIXADO'' when ''C'' then ''CANCELADO'' when ''R'' then ''REAGENDADO'' end as COS_STATUS, '+
      'case COS_STATUS when ''A'' then ''#6ed74e'' when ''B'' then ''#5384e6'' when ''C'' then ''#ff3a3a'' when ''R'' then ''#ffc107'' end as COR_STATUS, '+
      '(select ''['' || list(''{"CSI_EXAME":'' || coalesce(CSI_EXAME, '''') || '+
      ' '',"CSI_DESCRICAO":"'' || coalesce(CSI_DESCRICAO, '''') || ''"}'') || '']'' from CONSULTASITENS where CSI_CONSULTA = COS_CODIGO) as ITENS '+
      'from CONSULTAS '+
      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
      'where '+Where+' order by COS_CODIGO'
    );
//      'select COS_CLIENTE, COS_CODIGO, COS_DATAINICIO, COS_DATAFIM, COS_FIM, COS_HORAINICIO, COS_HORAFIM, COS_INICIO, COS_MEDICO, COS_STATUS, CLI_NOME, VEN_NOME, VEN_COR from CONSULTAS '+
//      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO '+
//      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO where '+Where+' order by COS_CODIGO'

    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
    DM.Query1.Open;
    //Listagem:=DM.Query1.ToJSONArray;

    Listagem:=TJSONArray.Create;
    while not DM.Query1.Eof do
    begin
      Registro := TJSONObject.Create;
      Registro.AddPair('id', DM.Query1.FieldByName('id').AsInteger);
      Registro.AddPair('title', DM.Query1.FieldByName('title').AsString);
      Registro.AddPair('start', DM.Query1.FieldByName('start').AsString);
      Registro.AddPair('end', DM.Query1.FieldByName('end').AsString);
      Registro.AddPair('cor_status', DM.Query1.FieldByName('COR_STATUS').AsString);
      Registro.AddPair('COS_DATAINICIO',DM.Query1.FieldByName('COS_DATAINICIO').AsString);
      Registro.AddPair('COS_DATAFIM',DM.Query1.FieldByName('COS_DATAFIM').AsString);
      Registro.AddPair('COS_HORAINICIO',DM.Query1.FieldByName('COS_HORAINICIO').AsString);
      Registro.AddPair('COS_HORAFIM',DM.Query1.FieldByName('COS_HORAFIM').AsString);
      Registro.AddPair('COS_STATUS', DM.Query1.FieldByName('COS_STATUS').AsString);
      Registro.AddPair('VEN_COR',DM.Query1.FieldByName('VEN_COR').AsString);
      Registro.AddPair('VEN_NOME',DM.Query1.FieldByName('VEN_NOME').AsString);

      // Trata a string de itens que veio do SQL
      JSONItensStr := DM.Query1.FieldByName('ITENS').AsString;
      if (JSONItensStr = '') or (JSONItensStr = '[]') then
      Registro.AddPair('ITENS', TJSONArray.Create) else
      Registro.AddPair('ITENS', TJSONObject.ParseJSONValue(JSONItensStr) as TJSONArray);

      Listagem.Add(Registro);
      DM.Query1.Next;
    end;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
    Result:=Retorno;

  except on ex:exception do
    begin
      if Assigned(Listagem) then Listagem.Free; // Se ocorrer um erro antes do fluxo terminar, precisamos limpar o que foi criado
      FormMain.Logar(PrefixLog+'(agenda) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function AgendaORI(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Where, VEN_CODIGO, CLI_NOME, CorStatus, Status: String;
  DataInicial, DataFinal: TDate;
  Listagem, Itens: TJSONArray;
  Retorno, Registro: TJSONObject;
begin
  try
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    VEN_CODIGO :=San(Req.ContentFields.Field('VEN_CODIGO').AsString);
    CLI_NOME   :=San(Req.ContentFields.Field('CLI_NOME').AsString);

    Where:=' (COS_DATAINICIO between :datainicial and :datafinal)';
    if VEN_CODIGO<>'TODOS' then Where:=Where+' and COS_MEDICO='+VEN_CODIGO;
    if CLI_NOME<>''        then Where:=Where+' and CLI_NOME like '+QuotedStr(CLI_NOME+'%');

    FormMain.Logar(PrefixLog+'(agenda) Datas: '+DateToStr(DataInicial)+', '+DateToStr(DataFinal)+', Médico: '+VEN_CODIGO+', Cliente: '+CLI_NOME);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select COS_CLIENTE, COS_CODIGO, COS_DATAINICIO, COS_DATAFIM, COS_FIM, COS_HORAINICIO, COS_HORAFIM, COS_INICIO, COS_MEDICO, COS_STATUS, CLI_NOME, VEN_NOME, VEN_COR from CONSULTAS '+
      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO where '+Where+' order by COS_CODIGO'
    );
    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
    DM.Query1.Open;
    DM.Query1.First;
    Listagem:=TJSONArray.Create;
    //Itens:=TJSONArray.Create;

    while not DM.Query1.Eof do
    begin
      CorStatus:='#6ed74e';
      Status:='A';
      if DM.Query1.FieldByName('COS_STATUS').AsString='A' then
      begin
        CorStatus:='#6ed74e';
        Status:='ABERTO';
      end else
      if DM.Query1.FieldByName('COS_STATUS').AsString='B' then
      begin
        CorStatus:='#5384e6';
        Status:='BAIXADO';
      end else
      if DM.Query1.FieldByName('COS_STATUS').AsString='C' then
      begin
        CorStatus:='#ff3a3a';
        Status:='CANCELADO';
      end else
      if DM.Query1.FieldByName('COS_STATUS').AsString='R' then
      begin
        CorStatus:='#ffc107';
        Status:='REAGENDADO';
      end;

      DM.TBConsultas.Close;
      DM.TBConsultas.ParamByName('codigo').AsInteger:=DM.Query1.FieldByName('COS_CODIGO').AsInteger;
      DM.TBConsultas.Open;
      DM.TBConsultasItens.Open;
      if DM.TBConsultasItens.IsEmpty then
      Itens:=TJSONArray.Create else
      Itens:=DM.TBConsultasItens.ToJSONArray;

      Registro:=TJSONObject.Create;
      Registro.AddPair('id',DM.Query1.FieldByName('COS_CODIGO').AsInteger);
      Registro.AddPair('title',DM.Query1.FieldByName('CLI_NOME').AsString);
      Registro.AddPair('start',FormatDateTime('yyyy-mm-dd"T"hh:nn:ss',DM.Query1.FieldByName('COS_INICIO').AsDateTime));
      Registro.AddPair('end',FormatDateTime('yyyy-mm-dd"T"hh:nn:ss',DM.Query1.FieldByName('COS_FIM').AsDateTime));
      Registro.AddPair('cor_status',CorStatus);
      Registro.AddPair('COS_CODIGO',DM.Query1.FieldByName('COS_CODIGO').AsString);
      Registro.AddPair('COS_DATAINICIO',DM.Query1.FieldByName('COS_DATAINICIO').AsString);
      Registro.AddPair('COS_DATAFIM',DM.Query1.FieldByName('COS_DATAFIM').AsString);
      Registro.AddPair('COS_HORAINICIO',DM.Query1.FieldByName('COS_HORAINICIO').AsString);
      Registro.AddPair('COS_HORAFIM',DM.Query1.FieldByName('COS_HORAFIM').AsString);
      Registro.AddPair('COS_STATUS',Status);
      Registro.AddPair('VEN_COR',DM.Query1.FieldByName('VEN_COR').AsString);
      Registro.AddPair('VEN_NOME',DM.Query1.FieldByName('VEN_NOME').AsString);
      Registro.AddPair('ITENS',Itens);

      Listagem.Add(Registro);

      DM.Query1.Next;
    end;
    DM.Query1.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
    Result:=Retorno;

  except on ex:exception do
    begin
      if Assigned(Listagem) then Listagem.Free; // Se ocorrer um erro antes do fluxo terminar, precisamos limpar o que foi criado
      FormMain.Logar(PrefixLog+'(agenda) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

//###### ITENS #######
function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  COS_CODIGO, CSI_CODIGO: Integer;
begin
  try
    COS_CODIGO:=SoNumeros(Req.ContentFields.Field('COS_CODIGO').AsString);
    CSI_CODIGO:=SoNumeros(Req.ContentFields.Field('CSI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Consulta: '+COS_CODIGO.ToString+' Item: '+CSI_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConsultasItens.Open;
    DM.TBConsultasItens.Locate('CSI_CODIGO',CSI_CODIGO,[]);

    Registro:=DM.TBConsultasItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBConsultas.Close;
    DM.TBConsultasItens.Close;

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

function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  CSI_CODIGO, CSI_CONSULTA, CSI_EXAME: Integer;
begin
  try
    CSI_CODIGO  :=SoNumeros(Req.ContentFields.Field('CSI_CODIGO').AsString);
    CSI_CONSULTA:=SoNumeros(Req.ContentFields.Field('CSI_CONSULTA').AsString);
    CSI_EXAME   :=SoNumeros(Req.ContentFields.Field('CSI_EXAME').AsString);

    Obrigatorio(CSI_CONSULTA.ToString,'Consulta','0');
    Obrigatorio(CSI_CODIGO.ToString,'Código Item','0');
    Obrigatorio(CSI_EXAME.ToString,'Exame','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Consulta: '+CSI_CONSULTA.ToString+' Item: '+CSI_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=CSI_CONSULTA;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Consulta não encontrada.');

    DM.TBConsultasItens.Open;
    if not DM.TBConsultasItens.Locate('CSI_CODIGO',CSI_CODIGO,[]) then
    raise Exception.Create('Erro ao encontrar o registro para alteração. '+CSI_CODIGO.ToString);

    DM.TBConsultasItens.Edit;
    DM.TBConsultasItensCSI_DESCRICAO.Value:=Req.ContentFields.Field('CSI_DESCRICAO').AsString;
    DM.TBConsultasItensCSI_EXAME.Value:=CSI_EXAME;
    DM.TBConsultasItensCSI_SIGLA.Value:=Req.ContentFields.Field('CSI_SIGLA').AsString;
    DM.TBConsultasItensCSI_VALOR.Value:=Req.ContentFields.Field('CSI_VALOR').AsExtended;
    DM.TBConsultasItens.Post;
    DM.TBConsultasItens.Close;

    DM.TBConsultas.Close;

    AtualizarTotaisConsulta(DM,CSI_CONSULTA);

    Result:=Visualizar(DM,Req); //req contem COS_CODIGO.

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

function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  CSI_CONSULTA, CSI_EXAME: Integer;
  CPI_PORCENTAGEM: Extended;
begin
  try
    CSI_CONSULTA:=SoNumeros(Req.ContentFields.Field('CSI_CONSULTA').AsString);
    CSI_EXAME   :=SoNumeros(Req.ContentFields.Field('CSI_EXAME').AsString);

    Obrigatorio(CSI_CONSULTA.ToString,'Consulta','0');
    Obrigatorio(CSI_EXAME.ToString,'Exame','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserirItem) Consulta: '+CSI_CONSULTA.ToString+' Exame: '+CSI_EXAME.ToString);

    DM.TBConsultasItens.Open;
    DM.TBConsultasItens.Insert;
    //DM.TBConsultasItensCSI_CODIGO.Value:=
    DM.TBConsultasItensCSI_CONSULTA.Value:=CSI_CONSULTA;
    DM.TBConsultasItensCSI_EXAME.Value:=CSI_EXAME;
    DM.TBConsultasItensCSI_DESCRICAO.Value:=San(Req.ContentFields.Field('CSI_DESCRICAO').AsString);
    DM.TBConsultasItensCSI_SIGLA.Value:=San(Req.ContentFields.Field('CSI_SIGLA').AsString);
    DM.TBConsultasItensCSI_VALOR.Value:=Req.ContentFields.Field('CSI_VALOR').AsExtended;
    DM.TBConsultasItens.Post;
    DM.TBConsultasItens.Close;

    AtualizarTotaisConsulta(DM,CSI_CONSULTA);

    Result:=Visualizar(DM,Req); //req contem COS_CODIGO.

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

function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  COS_CODIGO, CSI_CODIGO: Integer;
begin
  try
    COS_CODIGO:=SoNumeros(Req.ContentFields.Field('COS_CODIGO').AsString);
    CSI_CODIGO:=SoNumeros(Req.ContentFields.Field('CSI_CODIGO').AsString);
    if COS_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) '+CSI_CODIGO.ToString);

    DM.TBConsultas.Close;
    DM.TBConsultas.ParamByName('codigo').AsInteger:=COS_CODIGO;
    DM.TBConsultas.Open;
    if DM.TBConsultas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBConsultasItens.Open;
    if DM.TBConsultasItens.Locate('CSI_CODIGO',CSI_CODIGO,[]) then
    DM.TBConsultasItens.Delete else
    raise Exception.Create('Erro ao eliminar o registro '+CSI_CODIGO.ToString);

    AtualizarTotaisConsulta(DM,COS_CODIGO);
    Result:=Visualizar(DM,Req); //req contem COS_CODIGO.

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

function AtualizarTotaisConsulta(DM: TDMFirenet; Consulta: Integer): Boolean;
begin
  if not Consulta>0 then
  begin
    Result:=False;
    Exit;
  end;

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select sum(CSI_VALOR) as VALOR, count(*) as QTDE from CONSULTASITENS where CSI_CONSULTA=:consulta');
  DM.Query1.ParamByName('consulta').AsInteger:=Consulta;
  DM.Query1.Open;

  if DM.Query1.FieldByName('QTDE').AsInteger > 0 then
  begin
    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add('update CONSULTAS set COS_VALORTOTAL=:valortotal where COS_CODIGO=:consulta');
    DM.Query2.ParamByName('consulta').AsInteger:=consulta;
    DM.Query2.ParamByName('valortotal').AsFMTBCD:=DM.Query1.FieldByName('VALOR').AsExtended;
    DM.Query2.ExecSQL;
  end;
  Result:=True;
end;

//###### RELATORIOS #######
function Relatorio01(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
var Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
  Where, ArquivoTemp, COS_STATUS: String;
  COS_CLIENTE, COS_MEDICO, COS_SOLICITANTE, COS_CONVENIO: Integer;
  FormConsultasFast: TFormConsultasFast;
begin
  Result:=nil;
  Retorno:=nil;
  Usuario:=nil;
  FormConsultasFast:=nil;
  try
    {$REGION 'Variaveis'}
    DataInicial    :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal      :=Req.ContentFields.Field('datafinal').AsDate;
    COS_STATUS     :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;

    Where:='';
    if COS_STATUS='ABERTAS'    then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if COS_STATUS='BAIXADAS'   then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if COS_STATUS='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    if COS_CLIENTE<>0          then Where:=Where+' and COS_CLIENTE='+QuotedStr(COS_CLIENTE.ToString);
    if COS_MEDICO<>0           then Where:=Where+' and COS_MEDICO='+QuotedStr(COS_MEDICO.ToString);
    if COS_SOLICITANTE<>0      then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(COS_SOLICITANTE.ToString);
    if COS_CONVENIO<>0         then Where:=Where+' and COS_CONVENIO='+QuotedStr(COS_CONVENIO.ToString);
    {$ENDREGION}

    Usuario:=GetUserFromToken(Req);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    FormConsultasFast:=TFormConsultasFast.Create(nil);
    try
      {$REGION 'Variaveis report'}
      FormConsultasFast.QY01.Close;
      FormConsultasFast.QY01.SQL.Clear;
      FormConsultasFast.QY01.SQL.Add(
        'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
        'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
        'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
        'order by CLI_NOME, COS_DATAINICIO, COS_HORAINICIO');
      FormConsultasFast.QY01.ParamByName('datainicial').AsDate:=DataInicial;
      FormConsultasFast.QY01.ParamByName('datafinal').AsDate:=DataFinal;
      FormConsultasFast.QY01.Open;
      FormConsultasFast.frxReport1.Variables['TITULO']       :=QuotedStr('Consultas por Cliente');
      CarregarLogoSVGFast(DM,FormConsultasFast.frxReport1);
      FormConsultasFast.frxReport1.Variables['USUARIO']      :=QuotedStr(Usuario.GetValue<String>('USU_APELIDO'));
      FormConsultasFast.frxReport1.Variables['HEADER1']      :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
      FormConsultasFast.frxReport1.Variables['HEADER2']      :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
      FormConsultasFast.frxReport1.Variables['HEADER3']      :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
      FormConsultasFast.frxReport1.Variables['DATAINICIAL']  :=QuotedStr(DateToStr(DataInicial));
      FormConsultasFast.frxReport1.Variables['DATAFINAL']    :=QuotedStr(DateToStr(DataFinal));
      FormConsultasFast.frxReport1.Variables['COS_STATUS']   :=QuotedStr(COS_STATUS);
      FormConsultasFast.frxReport1.Variables['CLI_CODIGO']   :=QuotedStr(COS_CLIENTE.ToString);
      FormConsultasFast.frxReport1.Variables['CLI_NOME']     :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME').AsString));
      FormConsultasFast.frxReport1.Variables['CLI_CODIGO2']  :=QuotedStr(COS_SOLICITANTE.ToString);
      FormConsultasFast.frxReport1.Variables['CLI_NOME2']    :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME1').AsString));
      FormConsultasFast.frxReport1.Variables['VEN_CODIGO']   :=QuotedStr(COS_MEDICO.ToString);
      FormConsultasFast.frxReport1.Variables['VEN_NOME']     :=QuotedStr(San(Req.ContentFields.Field('VEN_NOME').AsString));
      FormConsultasFast.frxReport1.Variables['COV_CODIGO']   :=QuotedStr(COS_CONVENIO.ToString);
      FormConsultasFast.frxReport1.Variables['COV_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('COV_DESCRICAO').AsString));
      {$ENDREGION}

      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg',ExportarRelatorioBase64(FormConsultasFast.frxReport1,FormConsultasFast.frxPDFExport1));
      Result:=Retorno;
    finally
      FreeAndNil(FormConsultasFast);
      if Assigned(Usuario) then FreeAndNil(Usuario);
    end;

  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(rel01) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Relatorio02(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
var Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
  Where, ArquivoTemp, COS_STATUS: String;
  COS_CLIENTE, COS_MEDICO, COS_SOLICITANTE, COS_CONVENIO: Integer;
  FormConsultasFast: TFormConsultasFast;
begin
  Result:=nil;
  Retorno:=nil;
  Usuario:=nil;
  FormConsultasFast:=nil;
  try
    {$REGION 'Variaveis'}
    DataInicial    :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal      :=Req.ContentFields.Field('datafinal').AsDate;
    COS_STATUS     :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;

    if COS_STATUS='ABERTAS'    then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if COS_STATUS='BAIXADAS'   then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if COS_STATUS='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    if COS_CLIENTE<>0          then Where:=Where+' and COS_CLIENTE='+QuotedStr(COS_CLIENTE.ToString);
    if COS_MEDICO<>0           then Where:=Where+' and COS_MEDICO='+QuotedStr(COS_MEDICO.ToString);
    if COS_SOLICITANTE<>0      then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(COS_SOLICITANTE.ToString);
    if COS_CONVENIO<>0         then Where:=Where+' and COS_CONVENIO='+QuotedStr(COS_CONVENIO.ToString);
    {$ENDREGION}

    Usuario:=GetUserFromToken(Req);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    FormConsultasFast:=TFormConsultasFast.Create(nil);
    try
      {$REGION 'Variaveis report'}
      FormConsultasFast.QY02.Close;
      FormConsultasFast.QY02.SQL.Clear;
      FormConsultasFast.QY02.SQL.Add(
        'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
        'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
        'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
        'order by VEN_NOME, COS_DATAINICIO, COS_HORAINICIO');
      FormConsultasFast.QY02.ParamByName('datainicial').AsDate:=DataInicial;
      FormConsultasFast.QY02.ParamByName('datafinal').AsDate:=DataFinal;
      FormConsultasFast.QY02.Open;
      FormConsultasFast.frxReport2.Variables['TITULO']       :=QuotedStr('Consultas por Médico');
      CarregarLogoSVGFast(DM,FormConsultasFast.frxReport2);
      FormConsultasFast.frxReport2.Variables['USUARIO']      :=QuotedStr(Usuario.GetValue<String>('USU_APELIDO'));
      FormConsultasFast.frxReport2.Variables['HEADER1']      :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
      FormConsultasFast.frxReport2.Variables['HEADER2']      :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
      FormConsultasFast.frxReport2.Variables['HEADER3']      :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
      FormConsultasFast.frxReport2.Variables['DATAINICIAL']  :=QuotedStr(DateToStr(DataInicial));
      FormConsultasFast.frxReport2.Variables['DATAFINAL']    :=QuotedStr(DateToStr(DataFinal));
      FormConsultasFast.frxReport2.Variables['COS_STATUS']   :=QuotedStr(COS_STATUS);
      FormConsultasFast.frxReport2.Variables['CLI_CODIGO']   :=QuotedStr(COS_CLIENTE.ToString);
      FormConsultasFast.frxReport2.Variables['CLI_NOME']     :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME').AsString));
      FormConsultasFast.frxReport2.Variables['CLI_CODIGO2']  :=QuotedStr(COS_SOLICITANTE.ToString);
      FormConsultasFast.frxReport2.Variables['CLI_NOME2']    :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME1').AsString));
      FormConsultasFast.frxReport2.Variables['VEN_CODIGO']   :=QuotedStr(COS_MEDICO.ToString);
      FormConsultasFast.frxReport2.Variables['VEN_NOME']     :=QuotedStr(San(Req.ContentFields.Field('VEN_NOME').AsString));
      FormConsultasFast.frxReport2.Variables['COV_CODIGO']   :=QuotedStr(COS_CONVENIO.ToString);
      FormConsultasFast.frxReport2.Variables['COV_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('COV_DESCRICAO').AsString));
      {$ENDREGION}

      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg',ExportarRelatorioBase64(FormConsultasFast.frxReport2,FormConsultasFast.frxPDFExport1));
      Result:=Retorno;
    finally
      FreeAndNil(FormConsultasFast);
      if Assigned(Usuario) then FreeAndNil(Usuario);
    end;
  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(rel02) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Relatorio03(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
var Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
  Where, ArquivoTemp, COS_STATUS: String;
  COS_CLIENTE, COS_MEDICO, COS_SOLICITANTE, COS_CONVENIO: Integer;
  FormConsultasFast: TFormConsultasFast;
begin
  Result:=nil;
  Retorno:=nil;
  Usuario:=nil;
  FormConsultasFast:=nil;
  try
    {$REGION 'Variaveis'}
    DataInicial    :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal      :=Req.ContentFields.Field('datafinal').AsDate;
    COS_STATUS     :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;

    if COS_STATUS='ABERTAS'    then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if COS_STATUS='BAIXADAS'   then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if COS_STATUS='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    if COS_CLIENTE<>0          then Where:=Where+' and COS_CLIENTE='+QuotedStr(COS_CLIENTE.ToString);
    if COS_MEDICO<>0           then Where:=Where+' and COS_MEDICO='+QuotedStr(COS_MEDICO.ToString);
    if COS_SOLICITANTE<>0      then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(COS_SOLICITANTE.ToString);
    if COS_CONVENIO<>0         then Where:=Where+' and COS_CONVENIO='+QuotedStr(COS_CONVENIO.ToString);
    {$ENDREGION}

    Usuario:=GetUserFromToken(Req);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    FormConsultasFast:=TFormConsultasFast.Create(nil);
    try
      {$REGION 'Variaveis report'}
      FormConsultasFast.QY03.Close;
      FormConsultasFast.QY03.SQL.Clear;
      FormConsultasFast.QY03.SQL.Add(
        'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
        'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
        'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
        'order by CLI_NOMESOLICITANTE, COS_DATAINICIO, COS_HORAINICIO');
      FormConsultasFast.QY03.ParamByName('datainicial').AsDate:=DataInicial;
      FormConsultasFast.QY03.ParamByName('datafinal').AsDate:=DataFinal;
      FormConsultasFast.QY03.Open;
      FormConsultasFast.frxReport3.Variables['TITULO']       :=QuotedStr('Consultas por Solicitante');
      CarregarLogoSVGFast(DM,FormConsultasFast.frxReport3);
      FormConsultasFast.frxReport3.Variables['USUARIO']      :=QuotedStr(Usuario.GetValue<String>('USU_APELIDO'));
      FormConsultasFast.frxReport3.Variables['HEADER1']      :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
      FormConsultasFast.frxReport3.Variables['HEADER2']      :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
      FormConsultasFast.frxReport3.Variables['HEADER3']      :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
      FormConsultasFast.frxReport3.Variables['DATAINICIAL']  :=QuotedStr(DateToStr(DataInicial));
      FormConsultasFast.frxReport3.Variables['DATAFINAL']    :=QuotedStr(DateToStr(DataFinal));
      FormConsultasFast.frxReport3.Variables['COS_STATUS']   :=QuotedStr(COS_STATUS);
      FormConsultasFast.frxReport3.Variables['CLI_CODIGO']   :=QuotedStr(COS_CLIENTE.ToString);
      FormConsultasFast.frxReport3.Variables['CLI_NOME']     :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME').AsString));
      FormConsultasFast.frxReport3.Variables['CLI_CODIGO2']  :=QuotedStr(COS_SOLICITANTE.ToString);
      FormConsultasFast.frxReport3.Variables['CLI_NOME2']    :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME1').AsString));
      FormConsultasFast.frxReport3.Variables['VEN_CODIGO']   :=QuotedStr(COS_MEDICO.ToString);
      FormConsultasFast.frxReport3.Variables['VEN_NOME']     :=QuotedStr(San(Req.ContentFields.Field('VEN_NOME').AsString));
      FormConsultasFast.frxReport3.Variables['COV_CODIGO']   :=QuotedStr(COS_CONVENIO.ToString);
      FormConsultasFast.frxReport3.Variables['COV_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('COV_DESCRICAO').AsString));
      {$ENDREGION}

      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg',ExportarRelatorioBase64(FormConsultasFast.frxReport3,FormConsultasFast.frxPDFExport1));
      Result:=Retorno;
    finally
      FreeAndNil(FormConsultasFast);
      if Assigned(Usuario) then FreeAndNil(Usuario);
    end;
  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(rel03) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Relatorio04(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
var Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
  Where, ArquivoTemp, COS_STATUS: String;
  COS_CLIENTE, COS_MEDICO, COS_SOLICITANTE, COS_CONVENIO: Integer;
  FormConsultasFast: TFormConsultasFast;
begin
  Result:=nil;
  Retorno:=nil;
  Usuario:=nil;
  FormConsultasFast:=nil;
  try
    {$REGION 'Variaveis'}
    DataInicial    :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal      :=Req.ContentFields.Field('datafinal').AsDate;
    COS_STATUS     :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;

    if COS_STATUS='ABERTAS'    then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if COS_STATUS='BAIXADAS'   then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if COS_STATUS='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    if COS_CLIENTE<>0          then Where:=Where+' and COS_CLIENTE='+QuotedStr(COS_CLIENTE.ToString);
    if COS_MEDICO<>0           then Where:=Where+' and COS_MEDICO='+QuotedStr(COS_MEDICO.ToString);
    if COS_SOLICITANTE<>0      then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(COS_SOLICITANTE.ToString);
    if COS_CONVENIO<>0         then Where:=Where+' and COS_CONVENIO='+QuotedStr(COS_CONVENIO.ToString);
    {$ENDREGION}

    Usuario:=GetUserFromToken(Req);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    FormConsultasFast:=TFormConsultasFast.Create(nil);
    try
      {$REGION 'Variaveis report'}
      FormConsultasFast.QY04.Close;
      FormConsultasFast.QY04.SQL.Clear;
      FormConsultasFast.QY04.SQL.Add(
        'select COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, COS_STATUS, '+
        'COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME from CONSULTAS '+
        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
        'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
        'order by COV_DESCRICAO, COS_DATAINICIO, COS_HORAINICIO');
      FormConsultasFast.QY04.ParamByName('datainicial').AsDate:=DataInicial;
      FormConsultasFast.QY04.ParamByName('datafinal').AsDate:=DataFinal;
      FormConsultasFast.QY04.Open;
      FormConsultasFast.frxReport4.Variables['TITULO']       :=QuotedStr('Consultas por Convênio');
      CarregarLogoSVGFast(DM,FormConsultasFast.frxReport4);
      FormConsultasFast.frxReport4.Variables['USUARIO']      :=QuotedStr(Usuario.GetValue<String>('USU_APELIDO'));
      FormConsultasFast.frxReport4.Variables['HEADER1']      :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
      FormConsultasFast.frxReport4.Variables['HEADER2']      :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
      FormConsultasFast.frxReport4.Variables['HEADER3']      :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
      FormConsultasFast.frxReport4.Variables['DATAINICIAL']  :=QuotedStr(DateToStr(DataInicial));
      FormConsultasFast.frxReport4.Variables['DATAFINAL']    :=QuotedStr(DateToStr(DataFinal));
      FormConsultasFast.frxReport4.Variables['COS_STATUS']   :=QuotedStr(COS_STATUS);
      FormConsultasFast.frxReport4.Variables['CLI_CODIGO']   :=QuotedStr(COS_CLIENTE.ToString);
      FormConsultasFast.frxReport4.Variables['CLI_NOME']     :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME').AsString));
      FormConsultasFast.frxReport4.Variables['CLI_CODIGO2']  :=QuotedStr(COS_SOLICITANTE.ToString);
      FormConsultasFast.frxReport4.Variables['CLI_NOME2']    :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME1').AsString));
      FormConsultasFast.frxReport4.Variables['VEN_CODIGO']   :=QuotedStr(COS_MEDICO.ToString);
      FormConsultasFast.frxReport4.Variables['VEN_NOME']     :=QuotedStr(San(Req.ContentFields.Field('VEN_NOME').AsString));
      FormConsultasFast.frxReport4.Variables['COV_CODIGO']   :=QuotedStr(COS_CONVENIO.ToString);
      FormConsultasFast.frxReport4.Variables['COV_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('COV_DESCRICAO').AsString));
      {$ENDREGION}

      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg',ExportarRelatorioBase64(FormConsultasFast.frxReport4,FormConsultasFast.frxPDFExport1));
      Result:=Retorno;
    finally
      FreeAndNil(FormConsultasFast);
      if Assigned(Usuario) then FreeAndNil(Usuario);
    end;
  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(rel04) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Relatorio07(DM: TDMFirenet; Req: THorseRequest; Res: THorseResponse): TJSONObject;
var Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
  Where, ArquivoTemp, COS_STATUS: String;
  COS_CLIENTE, COS_MEDICO, COS_SOLICITANTE, COS_CONVENIO, EXT_CODIGO: Integer;
  FormConsultasFast: TFormConsultasFast;
begin
  Result:=nil;
  Retorno:=nil;
  Usuario:=nil;
  FormConsultasFast:=nil;
  try
    {$REGION 'Variaveis'}
    DataInicial    :=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal      :=Req.ContentFields.Field('datafinal').AsDate;
    COS_STATUS     :=San(Req.ContentFields.Field('COS_STATUS').AsString);
    COS_CLIENTE    :=Req.ContentFields.Field('COS_CLIENTE').AsInteger;
    COS_MEDICO     :=Req.ContentFields.Field('COS_MEDICO').AsInteger;
    COS_SOLICITANTE:=Req.ContentFields.Field('COS_SOLICITANTE').AsInteger;
    COS_CONVENIO   :=Req.ContentFields.Field('COS_CONVENIO').AsInteger;
    EXT_CODIGO     :=Req.ContentFields.Field('EXT_CODIGO').AsInteger;

    if COS_STATUS='ABERTAS'    then Where:=Where+' and COS_STATUS='+QuotedStr('A') else
    if COS_STATUS='BAIXADAS'   then Where:=Where+' and COS_STATUS='+QuotedStr('B') else
    if COS_STATUS='CANCELADAS' then Where:=Where+' and COS_STATUS='+QuotedStr('C');
    if COS_CLIENTE<>0          then Where:=Where+' and COS_CLIENTE='+QuotedStr(COS_CLIENTE.ToString);
    if COS_MEDICO<>0           then Where:=Where+' and COS_MEDICO='+QuotedStr(COS_MEDICO.ToString);
    if COS_SOLICITANTE<>0      then Where:=Where+' and COS_SOLICITANTE='+QuotedStr(COS_SOLICITANTE.ToString);
    if COS_CONVENIO<>0         then Where:=Where+' and COS_CONVENIO='+QuotedStr(COS_CONVENIO.ToString);
    if EXT_CODIGO<>0           then Where:=Where+' and CSI_EXAME='+QuotedStr(EXT_CODIGO.ToString);
    {$ENDREGION}

    Usuario:=GetUserFromToken(Req);

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    FormConsultasFast:=TFormConsultasFast.Create(nil);
    try
      {$REGION 'Variaveis report'}
      FormConsultasFast.QY07.Close;
      FormConsultasFast.QY07.SQL.Clear;
      FormConsultasFast.QY07.SQL.Add(
        'select CSI_EXAME, COS_CLIENTE, COS_CODIGO, COS_CONVENIO, COS_DATAINICIO, COS_HORAINICIO, COS_MEDICO, COS_SOLICITANTE, '+
        'COS_STATUS, COS_VALORTOTAL, A.CLI_NOME, B.CLI_NOME as CLI_NOMESOLICITANTE, COV_DESCRICAO, VEN_NOME, EXT_DESCRICAO from CONSULTASITENS '+
        'left join CONSULTAS on CSI_CONSULTA=COS_CODIGO '+
        'left join EXAMESTIPOS on CSI_EXAME=EXT_CODIGO '+
        'left join CLIENTES A on COS_CLIENTE=A.CLI_CODIGO '+
        'left join CLIENTES B on COS_SOLICITANTE=B.CLI_CODIGO '+
        'left join CONVENIOS on COS_CONVENIO=COV_CODIGO '+
        'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
        'where COS_DATAINICIO between :datainicial and :datafinal '+Where+' '+
        'order by EXT_DESCRICAO, COS_DATAINICIO, COS_HORAINICIO'
      );
      FormConsultasFast.QY07.ParamByName('datainicial').AsDate:=DataInicial;
      FormConsultasFast.QY07.ParamByName('datafinal').AsDate:=DataFinal;
      FormConsultasFast.QY07.Open;
      FormConsultasFast.frxReport7.Variables['TITULO']       :=QuotedStr('Consultas por Tipo de Exame');
      CarregarLogoSVGFast(DM,FormConsultasFast.frxReport7);
      FormConsultasFast.frxReport7.Variables['USUARIO']      :=QuotedStr(Usuario.GetValue<String>('USU_APELIDO'));
      FormConsultasFast.frxReport7.Variables['HEADER1']      :=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
      FormConsultasFast.frxReport7.Variables['HEADER2']      :=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
      FormConsultasFast.frxReport7.Variables['HEADER3']      :=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
      FormConsultasFast.frxReport7.Variables['DATAINICIAL']  :=QuotedStr(DateToStr(DataInicial));
      FormConsultasFast.frxReport7.Variables['DATAFINAL']    :=QuotedStr(DateToStr(DataFinal));
      FormConsultasFast.frxReport7.Variables['COS_STATUS']   :=QuotedStr(COS_STATUS);
      FormConsultasFast.frxReport7.Variables['CLI_CODIGO']   :=QuotedStr(COS_CLIENTE.ToString);
      FormConsultasFast.frxReport7.Variables['CLI_NOME']     :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME').AsString));
      FormConsultasFast.frxReport7.Variables['CLI_CODIGO2']  :=QuotedStr(COS_SOLICITANTE.ToString);
      FormConsultasFast.frxReport7.Variables['CLI_NOME2']    :=QuotedStr(San(Req.ContentFields.Field('CLI_NOME1').AsString));
      FormConsultasFast.frxReport7.Variables['VEN_CODIGO']   :=QuotedStr(COS_MEDICO.ToString);
      FormConsultasFast.frxReport7.Variables['VEN_NOME']     :=QuotedStr(San(Req.ContentFields.Field('VEN_NOME').AsString));
      FormConsultasFast.frxReport7.Variables['COV_CODIGO']   :=QuotedStr(COS_CONVENIO.ToString);
      FormConsultasFast.frxReport7.Variables['COV_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('COV_DESCRICAO').AsString));
      FormConsultasFast.frxReport7.Variables['EXT_CODIGO']   :=QuotedStr(EXT_CODIGO.ToString);
      FormConsultasFast.frxReport7.Variables['EXT_DESCRICAO']:=QuotedStr(San(Req.ContentFields.Field('EXT_DESCRICAO').AsString));
      {$ENDREGION}

        Retorno:=TJSONObject.Create;
        Retorno.AddPair('erro','N');
        Retorno.AddPair('msg',ExportarRelatorioBase64(FormConsultasFast.frxReport7,FormConsultasFast.frxPDFExport1));
        Result:=Retorno;
    finally
      FreeAndNil(FormConsultasFast);
      if Assigned(Usuario) then FreeAndNil(Usuario);
    end;
  except on ex:Exception do
    begin
      FormMain.Logar(PrefixLog+'(rel07) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
