//Atualizacoes:
//2026.11.23 - Representante (VED_REPRESENTANTE) e comissoes do representante na venda; VEI_COMISSAO/VEI_COMISSAOREP pelo PAR_COMISSAOPOR (V = da capa), como no Firenet; ICM_CALCULACREDITOSN do item pelo CST do produto.
//2026.11.19 - Logo do pedido (PDF) pelo CarregarLogoSVGFast (EMP_LOGOSVG), no lugar do logo_empresa_120x60.jpg.
//2026.11.18 - Filtro de datas do listar lido com .AsDate (aaaa-mm-dd, formato do PettFieldDate do Brian) no lugar do StrToDate (dd/mm/aaaa).
unit Firenet.Vendas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ListarConferencia(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function VisualizarConferencia(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inutilizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function FecharVenda(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Conferido(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function EnviarPorEmail(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

function ImprimirPedidoDeVendaFast(DM: TDMFirenet; Titulo, ArquivoPDF, Usuario: String): Boolean;
procedure GerarEmailVenda(DM: TDMFirenet; Email, Usuario, Arquivo: String);
function EnviarEmailAutomaticoACBr(DM: TDMFirenet): Boolean;

function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function AtualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function InserirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function ExcluirItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
procedure ReordenarItens(DM: TDMFirenet; Venda: Integer);

const
  PrefixLog='FIRENET.VENDAS: ';
  Campos='VED_CLIENTE, VED_CODIGO, VED_DTCADASTRO, VED_DTEMISSAO, VED_NFE, VED_NOME, VED_PEDIDOCLIENTE, VED_STATUS, VED_VALORTOTAL, VED_VENDEDOR, VED_VIAINTERNET, VED_VIAINTERNETSTATUS, VEN_NOME';

implementation

uses Funcoes, System.Math, Vcl.StdCtrls, System.Classes, VendasFast;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/vendas', VerificarOperacao);
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

      if Operacao='listar'                 then Res.Send( Listar(DM,Req)                ).Status(200) else
      if Operacao='listarConferencia'      then Res.Send( ListarConferencia(DM,Req)     ).Status(200) else
      if Operacao='visualizar'             then Res.Send( Visualizar(DM,Req)            ).Status(200) else
      if Operacao='visualizarConferencia'  then Res.Send( VisualizarConferencia(DM,Req) ).Status(200) else
      if Operacao='atualizar'              then Res.Send( Atualizar(DM,Req)             ).Status(200) else
      if Operacao='inserir'                then Res.Send( Inserir(DM,Req)               ).Status(200) else
      if Operacao='excluir'                then Res.Send( Excluir(DM,Req)               ).Status(200) else
      if Operacao='localizar'              then Res.Send( Localizar(DM,Req)             ).Status(200) else
      if Operacao='parametros'             then Res.Send( Parametros(DM,Req)            ).Status(200) else
      if Operacao='inutilizar'             then Res.Send( Inutilizar(DM,Req)            ).Status(200) else
      if Operacao='fecharVenda'            then Res.Send( FecharVenda(DM,Req)           ).Status(200) else
      if Operacao='conferido'              then Res.Send( Conferido(DM,Req)             ).Status(200) else
      if Operacao='enviar'                 then Res.Send( EnviarPorEmail(DM,Req)        ).Status(200) else

      if Operacao='visualizarItem'         then Res.Send( VisualizarItem(DM,Req)        ).Status(200) else
      if Operacao='atualizarItem'          then Res.Send( AtualizarItem(DM,Req)         ).Status(200) else
      if Operacao='inserirItem'            then Res.Send( InserirItem(DM,Req)           ).Status(200) else
      if Operacao='inserirItemCodigo'      then Res.Send( InserirItem(DM,Req)           ).Status(200) else
      if Operacao='excluirItem'            then Res.Send( ExcluirItem(DM,Req)           ).Status(200) else
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
  Pagina, Registros, Skip: Integer;
  Where, ViaInternet, Status, Vendedor, DataCampo, Pesquisa: String;
  Listagem: TJSONArray;
  Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDate;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Status     :=San(Req.ContentFields.Field('status').AsString);
    ViaInternet:=San(Req.ContentFields.Field('viainternet').AsString);
    Vendedor   :=San(Req.ContentFields.Field('vendedor').AsString);
    DataCampo  :=San(Req.ContentFields.Field('dataCampo').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal:=Req.ContentFields.Field('datafinal').AsDate;
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);

    Usuario:=GetUserFromToken(Req);

    if DataCampo='CADASTRO' then Where:=' (VED_DTCADASTRO between :datainicial and :datafinal)' else
    if DataCampo='EMISSAO'  then Where:=' (VED_DTEMISSAO between :datainicial and :datafinal)' else
    if DataCampo='BAIXA'    then Where:=' (VED_DTBAIXA between :datainicial and :datafinal)' else
    Where:=' (VED_DTCADASTRO between :datainicial and :datafinal)';

    if Vendedor   <>'TODOS' then Where:=Where+' and VED_VENDEDOR='+QuotedStr(Usuario.GetValue<String>('USU_VENDEDOR'));
    if ViaInternet<>'TODOS' then Where:=Where+' and VED_VIAINTERNET='+QuotedStr(ViaInternet);
    if Status     <>'TODOS' then Where:=Where+' and VED_STATUS='+QuotedStr(Status);
    if Pesquisa   <>''      then Where:=Where+' and VED_NOME like '+QuotedStr(Pesquisa+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Status: '+Status+', ViaInternet: '+ViaInternet+', Vendedor: '+Vendedor+', Datas: '+DataCampo+': '+DateToStr(DataInicial)+'-'+DateToStr(DataFinal)+', Pesquisa: '+Pesquisa);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
      'where '+Where+' order by VED_CODIGO desc, VED_NOME');
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

function ListarConferencia(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Pagina, Registros, Skip: Integer;
  Where, Pesquisa: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);

    Where:=' VED_STATUS=''A'' ';
    if Pesquisa<>'' then Where:=Where+' and VED_NOME like '+QuotedStr(Pesquisa+'%')+' or VED_CODIGO like '+QuotedStr(Pesquisa+'%');

    FormMain.Logar(PrefixLog+'(listarConferencia) Pagina: '+Pagina.ToString+' Pesquisa: '+Pesquisa);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+
      'VED_CODIGO, VED_CLIENTE, VED_CONFERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_DTEMISSAO, VED_NOME '+
      ' from VENDAS '+
      'left join CLIENTES on VED_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on VED_VENDEDOR=VEN_CODIGO '+
      'where '+Where+' order by VED_CODIGO desc, VED_NOME');
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
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBVendas.ToJSONObject;

    DM.TBVendasItens.Open;
    Itens:=TJSONArray.Create;
    Itens:=DM.TBVendasItens.ToJSONArray;

    Registro.AddPair('ITENS',Itens);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBVendasItens.Close;
    DM.TBVendas.Close;

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

function VisualizarConferencia(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarConferencia) '+VED_CODIGO.ToString);

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'select VEI_CODIGO, VEI_CODIGOBARRAS, VEI_DESCRICAO, VEI_PRODUTO, VEI_QUANTIDADE, VEI_SEQUENCIA, VEI_UNIDADE, '+
      '''0'' as QTDECONFERIDA, ''---'' as STATUSCONFERENCIA '+
      'from VENDASITENS where VEI_VENDA=:venda order by VEI_SEQUENCIA'
    );
    DM.Query2.ParamByName('venda').AsInteger:=VED_CODIGO;
    DM.Query2.Open;
    DM.Query2.FetchAll;

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select VED_DTEMISSAO, VED_CODIGO, VED_CLIENTE, VED_CONFERIDO, VED_CONFERIDODATA, VED_CONFERIDOPOR, VED_DTCADASTRO, VED_NOME '+
      'from VENDAS where VED_CODIGO=:venda order by VED_CODIGO'
    );
    DM.Query1.ParamByName('venda').AsInteger:=VED_CODIGO;
    DM.Query1.Open;
    DM.Query1.FetchAll;

    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.Query1.ToJSONObject;
    Registro.AddPair('ITENS',DM.Query2.ToJSONArray);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.Query1.Close;
    DM.Query2.Close;

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
  VED_CODIGO, VED_CONDICAO: Integer;
  VED_DESCRICAO, VED_STATUS, VED_TIPO: String;
  VED_VALOR: Extended;
begin
  try
    VED_CODIGO:=Req.ContentFields.Field('VED_CODIGO').AsInteger;
    VED_CONDICAO:=Req.ContentFields.Field('VED_CONDICAO').AsInteger;

    Obrigatorio('VED_CODIGO','Código','0');
    Obrigatorio('VED_CONDICAO','Condicao','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendas.Edit;
    DM.TBVendasVED_CONDICAO.Value   :=Req.ContentFields.Field('VED_CONDICAO').AsInteger;
    DM.TBVendasVED_OBSERVACOES.Value:=San(Req.ContentFields.Field('VED_OBSERVACOES').AsString);
    DM.TBVendasVED_USUARIO.Value    :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBVendas.Post;

    DM.TBVendas.Close;
    DM.TBVendas.Open; //atualiza campos derivados.
    DM.TBVendasItens.Close;
    DM.TBVendasItens.Open;

    Registro:=DM.TBVendas.ToJSONObject;
    Registro.AddPair('ITENS',DM.TBVendasItens.ToJSONObject);

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
  VED_CLIENTE, VED_CONDICAO: Integer;
  VED_FORMAPAGTO: String;
  VED_VALOR: Extended;
begin
  try
    VED_CLIENTE:=Req.ContentFields.Field('VED_CLIENTE').AsInteger;
    VED_CONDICAO:=Req.ContentFields.Field('VED_CONDICAO').AsInteger;
    VED_FORMAPAGTO:=San(Req.ContentFields.Field('VED_FORMAPAGTO').AsString);

    Obrigatorio(VED_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(VED_CONDICAO.ToString,'Condição','0');
    Obrigatorio(VED_FORMAPAGTO,'Forma Pagamento');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) Cliente: '+VED_CLIENTE.ToString+', Condicao: '+VED_CONDICAO.ToString+', Forma Pagto: '+VED_FORMAPAGTO);

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=VED_CLIENTE;
    DM.TBClientes.Open;

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBVendedores.Open;

    DM.TBVendas.Open;
    DM.TBVendas.Insert;
    DM.TBVendasVED_BAIRRO.Value             :=DM.TBClientesCLI_BAIRROCOB.Value;
    DM.TBVendasVED_CEP.Value                :=DM.TBClientesCLI_CEPCOB.Value;
    DM.TBVendasVED_CIDADE.Value             :=DM.TBClientesCLI_CIDADECOB.Value;
    DM.TBVendasVED_CIDADECODIGO.Value       :=DM.TBClientesCLI_CIDADECODIGOCOB.Value;
    DM.TBVendasVED_CLIENTE.Value            :=VED_CLIENTE;
    DM.TBVendasVED_CNPJ.Value               :=DM.TBClientesCLI_CNPJCOB.Value;
    DM.TBVendasVED_COMISSAO.Value           :=DM.TBVendedoresVEN_COMISSAO.Value;
    DM.TBVendasVED_COMISSAOREP.Value        :=DM.TBVendedoresVEN_COMISSAO.Value; //representante = vendedor (ver VED_REPRESENTANTE).
    DM.TBVendasVED_COMPLEMENTO.Value        :=DM.TBClientesCLI_COMPLEMENTOCOB.Value;
    DM.TBVendasVED_CONDICAO.Value           :=VED_CONDICAO;
    DM.TBVendasVED_CONTATO.Value            :=DM.TBClientesCLI_CONTATO.Value;
    DM.TBVendasVED_CPF.Value                :=DM.TBClientesCLI_CPF.Value;
    DM.TBVendasVED_DIAPREFERENCIAL.Value    :=0;
    DM.TBVendasVED_ENDERECO.Value           :=DM.TBClientesCLI_ENDERECOCOB.Value;
    DM.TBVendasVED_ESTADO.Value             :=DM.TBClientesCLI_ESTADOCOB.Value;
    DM.TBVendasVED_ESTADOCODIGO.Value       :=DM.TBClientesCLI_ESTADOCODIGOCOB.Value;
    DM.TBVendasVED_EXPEDIDOPOR.Value        :=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBVendasVED_FONE1.Value              :=DM.TBClientesCLI_FONE1.Value;
    DM.TBVendasVED_FORMAPAGTO.Value         :=VED_FORMAPAGTO;
    DM.TBVendasVED_IE.Value                 :=DM.TBClientesCLI_IECOB.Value;
    DM.TBVendasVED_NOME.Value               :=DM.TBClientesCLI_NOME.Value;
    DM.TBVendasVED_NUMERO.Value             :=DM.TBClientesCLI_NUMEROCOB.Value;
    DM.TBVendasVED_OBSERVACOES.Value        :=San(Req.ContentFields.Field('VED_OBSERVACOES').AsString,0);
    DM.TBVendasVED_PAIS.Value               :=DM.TBClientesCLI_PAIS.Value;
    DM.TBVendasVED_PAISCODIGO.Value         :=DM.TBClientesCLI_PAISCODIGO.Value;
    DM.TBVendasVED_RG.Value                 :=DM.TBClientesCLI_RG.Value;
    DM.TBVendasVED_REPRESENTANTE.Value      :=Usuario.GetValue<Integer>('USU_VENDEDOR'); //o Brian ainda nao tem o campo representante: vai o proprio vendedor.
    DM.TBVendasVED_SUFRAMA.Value            :=DM.TBClientesCLI_SUFRAMA.Value;
    DM.TBVendasVED_TABELAPRECO.Value        :=DM.TBClientesCLI_TABELAPRECO.Value;
    DM.TBVendasVED_TIPOCONSUMIDOR.Value     :=DM.TBClientesCLI_TIPOCONSUMIDOR.Value;
    DM.TBVendasVED_USUARIO.Value            :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBVendasVED_VENDEDOR.Value           :=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBVendasVED_VIAINTERNET.Value        :='S';
    DM.TBVendasVED_VIAINTERNETSTATUS.Value  :='A';
    DM.TBVendas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBVendas.ToJSONObject);

    DM.TBVendas.Close;

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
  VED_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    if VED_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+VED_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendas.Delete;

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
  VED_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VED_CODIGO:=Req.ContentFields.Field('VED_CODIGO').AsInteger;
    if VED_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+VED_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select VED_CODIGO, VED_DESCRICAO from VENDAS where VED_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=VED_CODIGO;
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

function Parametros(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(parametros)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select PAR_CONDICAOPADRAO, PAR_CFOPPADRAO, PAR_CREDITOICMSSN, PAR_COMISSAOPOR, PAR_ESPECIEPADRAO, PAR_FRETEPORCONTA, PAR_MARCAPADRAO, PAR_TABELAPRECO, '+
      'PAR_NFETIPOATENDIMENTO, PAR_NFETIPOCONSUMIDOR, NAT_DESCRICAO, NAT_DESTACARIMPOSTOS, NAT_ENTRADASAIDA, NAT_OBSERVACOES, NAT_MOVIMENTAESTOQUE, NAT_MOVIMENTAFINANCEIRO '+
      'from PARAMETROS '+
      'left join NATUREZAS on PAR_CFOPPADRAO=NAT_CODIGO '+
      'where PAR_CODIGO=1'
    );
    DM.Query1.Open;

    Registro:=DM.Query1.ToJSONObject;
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

function Inutilizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(inutilizar) '+VED_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBVendasVED_STATUS.Value<>'A' then
    raise Exception.Create('Somente pedidos em aberto podem ser inutilizados.');

    DM.TBVendas.Edit;
    DM.TBVendasVED_STATUS.Value:='I';
    DM.TBVendasVED_DTATUALIZACAO.Value:=Date;
    DM.TBVendasVED_HRATUALIZACAO.Value:=Time;
    DM.TBVendasVED_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBVendas.Post;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

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

function FecharVenda(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    Obrigatorio('VED_CODIGO','Código','0');

    FormMain.Logar(PrefixLog+'(fecharVenda) '+VED_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBVendasVED_VIAINTERNETSTATUS.Value='F' then
    raise Exception.Create('Pedido já fechado.');

    if DM.TBVendasVED_VIAINTERNET.Value='N' then
    raise Exception.Create('Este pedido não foi feito pelo App.');

    DM.TBVendas.Edit;
    DM.TBVendasVED_VIAINTERNETSTATUS.Value:='F';
    DM.TBVendasVED_DTATUALIZACAO.Value:=Date;
    DM.TBVendasVED_HRATUALIZACAO.Value:=Time;
    DM.TBVendasVED_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBVendas.Post;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

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

function Conferido(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);

    Obrigatorio('VED_CODIGO','Código','0');

    FormMain.Logar(PrefixLog+'(conferido) '+VED_CODIGO.ToString);

    Usuario:=GetUserFromToken(Req);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if ((DM.TBVendasVED_CONFERIDO.Value='N') and (DM.tbvendasVED_STATUS.Value='A')) then
    begin
      DM.TBVendas.Edit;
      DM.TBVendasVED_CONFERIDO.Value:='S';
      DM.TBVendasVED_CONFERIDODATA.Value:=DM.ServerDate;
      DM.TBVendasVED_CONFERIDOPOR.Value:=Usuario.GetValue<String>('USU_LOGIN');
      DM.TBVendasVED_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
      DM.TBVendas.Post;
    end;

    Result:=VisualizarConferencia(DM,Req); //req contem VED_CODIGO.

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

function EnviarPorEmail(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  VED_CODIGO: Integer;
  Arquivo, CLI_EMAIL: String;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    CLI_EMAIL:=San(Req.ContentFields.Field('CLI_EMAIL').AsString);

    Obrigatorio('VED_CODIGO','Código','0');
    Obrigatorio('CLI_EMAIL','Email','');

    FormMain.Logar(PrefixLog+'(enviar) Venda: '+VED_CODIGO.ToString+', Email: '+CLI_EMAIL);

    Usuario:=GetUserFromToken(Req);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Arquivo:=ExtractFilePath(ParamStr(0))+'Print\PedidoVenda'+DM.TBVendasVED_CODIGO.Value.ToString+'.pdf';

    if not ImprimirPedidoDeVendaFast(DM,'Pedido de Venda',Arquivo,Usuario.GetValue<String>('USU_LOGIN')) then //gera o arquivo PDF somente.
    raise Exception.Create('Erro ao gerar o PDF do pedido.');

    GerarEmailVenda(DM,CLI_EMAIL,Usuario.GetValue<String>('USU_LOGIN'),Arquivo);

    if not EnviarEmailAutomaticoACBr(DM) then
    raise Exception.Create('Erro ao enviar o email.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Enviado com sucesso.');
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

function ImprimirPedidoDeVendaFast(DM: TDMFirenet; Titulo, ArquivoPDF, Usuario: String): Boolean;
var FormVendasFast: TFormVendasFast;
begin
  DM.TBEmpresa.Close;
  DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
  DM.TBEmpresa.Open;
  FormVendasFast:=TFormVendasFast.Create(nil);
  //Application.CreateForm(TFormVendasFast, FormVendasFast);
  FormVendasFast.QY30.Close;
  FormVendasFast.QY30a.Close;
  FormVendasFast.QY30b.Close;
  FormVendasFast.QY30c.Close;

  FormVendasFast.QY30.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;
  FormVendasFast.QY30a.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value;

  FormVendasFast.QY30b.SQL.Clear;
  if not DM.TBVendasVED_NOTA.IsNull then
  FormVendasFast.QY30b.SQL.Add(
    'select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, '+
    'case when REE_STATUS=''A'' then ''ABERTO'' when REE_STATUS=''B'' then ''BAIXADO'' when REE_STATUS=''C'' then ''CANCELADO'' else ''---'' end as STATUS from RECEBER '+
    'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
    'and REE_NUMDOCTO like '+QuotedStr('NF-'+IntToStr(DM.TBVendasVED_NOTA.Value)+'/%')+' order by REE_DTVENCIMENTO'
  ) else
  if not DM.TBVendasVED_NFE.IsNull then
  FormVendasFast.QY30b.SQL.Add(
    'select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, '+
    'case when REE_STATUS=''A'' then ''ABERTO'' when REE_STATUS=''B'' then ''BAIXADO'' when REE_STATUS=''C'' then ''CANCELADO'' else ''---'' end as STATUS from RECEBER '+
    'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
    'and REE_NUMDOCTO like '+QuotedStr('NFE-'+IntToStr(DM.TBVendasVED_NFE.Value)+'/%')+' order by REE_DTVENCIMENTO'
  ) else
  FormVendasFast.QY30b.SQL.Add(
    'select REE_NUMDOCTO, REE_DESCRICAO, REE_DTEMISSAO, REE_DTVENCIMENTO, REE_VALOR, '+
    'case when REE_STATUS=''A'' then ''ABERTO'' when REE_STATUS=''B'' then ''BAIXADO'' when REE_STATUS=''C'' then ''CANCELADO'' else ''---'' end as STATUS from RECEBER '+
    'where REE_CLIENTE='+QuotedStr(IntToStr(DM.TBVendasVED_CLIENTE.Value))+' '+
    'and REE_NUMDOCTO like '+QuotedStr(IntToStr(DM.TBVendasVED_CODIGO.Value)+'/%')+' order by REE_DTVENCIMENTO'
  );

  if DM.TBVendasVED_STATUS.Value='A' then
  FormVendasFast.QY30c.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CODIGO.Value else
  FormVendasFast.QY30c.ParamByName('codigo').AsInteger:=0; //abre dataset sem dados.

  FormVendasFast.QY30.Open;
  FormVendasFast.QY30a.Open;
  FormVendasFast.QY30b.Open;
  FormVendasFast.QY30c.Open;
  FormVendasFast.frxReport30.Variables['TITULO']:=QuotedStr(Titulo);
  FormVendasFast.frxReport30.Variables['USUARIO']:=QuotedStr(Usuario);
  FormVendasFast.frxReport30.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormVendasFast.frxReport30.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_ENDERECO.Value+', '+DM.TBEmpresaEMP_NUMERO.Value+' - '+DM.TBEmpresaEMP_BAIRRO.Value);
  FormVendasFast.frxReport30.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CIDADE.Value+'/'+DM.TBEmpresaEMP_ESTADO.Value+' - '+DM.TBEmpresaEMP_CEP.Value);
  FormVendasFast.frxReport30.Variables['HEADER4']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value+' - '+DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  FormVendasFast.frxReport30.Variables['EMP_NOME']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  FormVendasFast.frxReport30.Variables['EMP_ENQUADRAMENTO']:=QuotedStr(DM.TBEmpresaEMP_ENQUADRAMENTO.Value);
  FormVendasFast.frxReport30.Variables['OVERLAY']:=QuotedStr('');
  if DM.TBVendasVED_STATUS.Value='I' then FormVendasFast.frxReport30.Variables['OVERLAY']:=QuotedStr('INUTILIZADO') else
  if DM.TBVendasVED_STATUS.Value='C' then FormVendasFast.frxReport30.Variables['OVERLAY']:=QuotedStr('CANCELADO');
  FormVendasFast.frxReport30.Variables['SALDOACUMULADO']:=QuotedStr('AAA');

  DM.TBParametros.Open;
  if (DM.TBParametrosPAR_IMPRIMIRSALDOAC.Value='S') and (DM.TBVendasVED_STATUS.Value<>'F') then
  begin
    DM.QYAux.Close;
    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('select sum(REE_VALOR) as VALOR from RECEBER where REE_CLIENTE=:codigo and REE_STATUS=''A'' ');
    DM.QYAux.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
    DM.QYAux.Open;
    FormVendasFast.frxReport30.Variables['SALDOACUMULADO']:=QuotedStr('- SALDO DEVEDOR ACUMULADO: '+Format('%m',[DM.QYAux.FieldByName('VALOR').AsExtended]));
    DM.QYAux.Close;
  end;
  FormVendasFast.frxReport30.Variables['CANHOTO']:=QuotedStr('SIM');
  FormVendasFast.frxPDFExport1.FileName:=ArquivoPDF;
  FormVendasFast.frxPDFExport1.ShowDialog:=False;
  FormVendasFast.frxReport30.PrintOptions.ShowDialog:=False;
  CarregarLogoSVGFast(DM,FormVendasFast.frxReport30);
  FormVendasFast.frxReport30.PrepareReport;

  if FormVendasFast.frxReport30.Export(FormVendasFast.frxPDFExport1) then
  Result:=True else
  Result:=False;

  FormVendasFast.Free;
  FormVendasFast:=nil;
  DM.TBEmpresa.Close;
end;

procedure GerarEmailVenda(DM: TDMFirenet; Email, Usuario, Arquivo: String);
var MM: TStringList;
begin
  DM.TBParametros.Open;

  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBVendasVED_CLIENTE.Value;
  DM.TBClientes.Open;
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.TBVendasVED_VENDEDOR.Value;
  DM.TBVendedores.Open;
  //localiza o assunto e a conta de email padrao para o envio.
  DM.TBAssuntos.Close;
  DM.TBAssuntos.ParamByName('codigo').AsInteger:=DM.TBParametrosPAR_VENDAEMAILASSUNTO.Value;
  DM.TBAssuntos.Open;
  DM.TBEmailsContas.Close;
  DM.TBEmailsContas.ParamByName('codigo').AsInteger:=DM.TBVendedoresVEN_EMAILCONTA.Value;
  DM.TBEmailsContas.Open;

  //substitui as palavras-chave no texto padrão.
  //MM:=TMemo.CreateParented(Application.Handle);
  //MM:=TMemo.CreateParented(Self);
  MM:=TStringList.Create;
  //MM.WordWrap:=False; //funcionou?!
  MM.Add(DM.TBAssuntosASS_TEXTO.Value);
  MM.Text:=StringReplace(MM.Text,'|VED_CODIGO|',IntToStr(DM.TBVendasVED_CODIGO.Value),[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_CONTATO|',DM.TBVendasVED_CONTATO.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VED_NOME|',DM.TBVendasVED_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|VEN_NOME|',DM.TBVendasVEN_NOME.Value,[rfReplaceAll]);
  MM.Text:=StringReplace(MM.Text,'|EMP_NOME|',DM.TBEmpresaEMP_NOME.Value,[rfReplaceAll]);

  DM.TBEmails.Open;
  DM.TBEmails.Insert;
  DM.TBEmailsEMA_ANEXO.Value:=Arquivo;
  DM.TBEmailsEMA_ASSINATURA.Value:=DM.TBEmailsContasEMC_ASSINATURA.Value;
  DM.TBEmailsEMA_ASSUNTO.Value:=DM.TBAssuntosASS_CODIGO.Value;
  DM.TBEmailsEMA_CLIENTE.Value:=DM.TBClientesCLI_CODIGO.Value;
  DM.TBEmailsEMA_COPIAOCULTA.Value:='';
  DM.TBEmailsEMA_DESTINATARIOS.Value:=Email;
  DM.TBEmailsEMA_DTULTENVIO.Value:=DM.ServerDate;
  DM.TBEmailsEMA_EMAILCONTA.Value:=DM.TBEmailsContasEMC_CODIGO.Value;
  DM.TBEmailsEMA_HTML.Value:='S';
  DM.TBEmailsEMA_MENSAGEM.Value:=MM.Text; //memo com texto substituido.
  DM.TBEmailsEMA_VENDEDOR.Value:=DM.TBVendasVED_VENDEDOR.Value;

  //campos derivados.
  DM.TBEmailsASS_DESCRICAO.Value:=DM.TBAssuntosASS_DESCRICAO.Value;
  DM.TBEmailsCLI_NOME.Value:=DM.TBClientesCLI_NOME.Value;
  DM.TBEmailsEMC_CONFIRMACAO.Value:=DM.TBEmailsContasEMC_CONFIRMACAO.Value;
  DM.TBEmailsEMC_EMAIL.Value:=DM.TBEmailsContasEMC_EMAIL.Value;
  DM.TBEmailsEMC_LOGIN.Value:=DM.TBEmailsContasEMC_LOGIN.Value;
  DM.TBEmailsEMC_NOME.Value:=DM.TBEmailsContasEMC_NOME.Value;
  DM.TBEmailsEMC_POP.Value:=DM.TBEmailsContasEMC_POP.Value;
  DM.TBEmailsEMC_POPPORTA.Value:=DM.TBEmailsContasEMC_POPPORTA.Value;
  DM.TBEmailsEMC_REPLYTO.Value:=DM.TBEmailsContasEMC_REPLYTO.Value;
  DM.TBEmailsEMC_SENHA.Value:=DM.TBEmailsContasEMC_SENHA.Value;
  DM.TBEmailsEMC_SMTP.Value:=DM.TBEmailsContasEMC_SMTP.Value;
  DM.TBEmailsEMC_SMTPPORTA.Value:=DM.TBEmailsContasEMC_SMTPPORTA.Value;
  DM.TBEmailsEMC_SSL.Value:=DM.TBEmailsContasEMC_SSL.Value;
  DM.TBEmailsEMC_TLS.Value:=DM.TBEmailsContasEMC_TLS.Value;
  DM.TBEmailsVEN_NOME.Value:=DM.TBVendasVEN_NOME.Value;
  DM.TBEmails.Post;

  MM.Destroy;
end;

function EnviarEmailAutomaticoACBr(DM: TDMFirenet): Boolean;
var S, E: String;
begin
  //tabela emails já deve estar aberta neste momento com o registro em cursor.

  DM.ACBrMail1.Clear;
  DM.ACBrMail1.From:=DM.TBEmailsEMC_EMAIL.Value;
  //alterado para mostrar o nome que está na conta de email. ACBrMail1.FromName:=UCWords(DM2.TBEmailsVEN_NOME.Value);
  DM.ACBrMail1.FromName:=UCWords(DM.TBEmailsEMC_NOME.Value);
  //ACBrMail1.AddReplyTo(DM2.TBEmailsEMC_REPLYTO.Value);

  DM.ACBrMail1.Host:=DM.TBEmailsEMC_SMTP.Value;
  DM.ACBrMail1.Username:=DM.TBEmailsEMC_LOGIN.Value;
  DM.ACBrMail1.Password:=DM.TBEmailsEMC_SENHA.Value;
  DM.ACBrMail1.Port:=IntToStr(DM.TBEmailsEMC_SMTPPORTA.Value);
  DM.ACBrMail1.Attempts:=1;

  if DM.TBEmailsEMC_SSL.Value='S' then
  DM.ACBrMail1.SetSSL:=True else
  DM.ACBrMail1.SetSSL:=False;

  if DM.TBEmailsEMC_TLS.Value='S' then
  DM.ACBrMail1.SetTLS:=True else
  DM.ACBrMail1.SetTLS:=False;

  if DM.TBEmailsEMA_CONFIRMACAO.Value='S' then
  DM.ACBrMail1.ReadingConfirmation:=True else
  DM.ACBrMail1.ReadingConfirmation:=False;

  S:=DM.TBEmailsEMA_DESTINATARIOS.Value;
  //verifica se o ultimo caracter é virgula e se for, remove.
  if S[Length(S)]=',' then
  Delete(S,Length(S),1);

  //verifica se tem mais de um destinatário e adiciona cada um deles.
  while Pos(',',S)>1 do
  begin
    E:=Copy(S,1,Pos(',',S)-1);
    Delete(S,1,Pos(',',S));
    DM.ACBrMail1.AddAddress(E,'');
  end;
  DM.ACBrMail1.AddAddress(S,''); //o último ou o único.

  S:=DM.TBEmailsEMA_COPIAOCULTA.Value;
  if S<>'' then
  begin
    //verifica se o ultimo caracter é virgula e se for, remove.
    if S[Length(S)]=',' then
    Delete(S,Length(S),1);

    //verifica se tem mais de um destinatário e adiciona cada um deles.
    while Pos(',',S)>1 do
    begin
      E:=Copy(S,1,Pos(',',S)-1);
      Delete(S,1,Pos(',',S));
      DM.ACBrMail1.AddBCC(E);
    end;
    DM.ACBrMail1.AddBCC(S); //o último ou o único.
  end;

  if DM.TBEmailsEMA_HTML.Value='S' then
  begin
    DM.ACBrMail1.IsHTML:=True;
    DM.ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';
  end else
  begin
    DM.ACBrMail1.IsHTML:=False;
    DM.ACBrMail1.AltBody.Text:=DM.TBEmailsEMA_MENSAGEM.Value+DM.TBEmailsEMA_ASSINATURA.Value;
  end;

  DM.ACBrMail1.Subject:=DM.TBEmailsASS_DESCRICAO.Value;
  DM.ACBrMail1.Body.Text:=DM.TBEmailsEMA_MENSAGEM.Value+DM.TBEmailsEMA_ASSINATURA.Value;

  if (DM.TBEmailsEMA_ANEXO.Value<>'') and (FileExists(DM.TBEmailsEMA_ANEXO.Value)) then
  DM.ACBrMail1.AddAttachment(DM.TBEmailsEMA_ANEXO.Value,'');

  if (DM.TBEmailsEMA_ANEXO2.Value<>'') and (FileExists(DM.TBEmailsEMA_ANEXO2.Value)) then
  DM.ACBrMail1.AddAttachment(DM.TBEmailsEMA_ANEXO2.Value,'');

  if (DM.TBEmailsEMA_ANEXO3.Value<>'') and (FileExists(DM.TBEmailsEMA_ANEXO3.Value)) then
  DM.ACBrMail1.AddAttachment(DM.TBEmailsEMA_ANEXO3.Value,'');

  try
    if DM.TBEmailsEMA_COPIAOCULTA.Value<>'' then
    FormMain.Logar(PrefixLog+'Enviando para '+DM.TBEmailsEMA_DESTINATARIOS.Value+' com cópia para '+DM.TBParametrosPAR_NFEEMAILBCC.Value) else
    FormMain.Logar(PrefixLog+'Enviando para '+DM.TBEmailsEMA_DESTINATARIOS.Value);
    DM.ACBrMail1.Send;
    FormMain.Logar(PrefixLog+'Email enviado!');
  except on E:Exception do
    FormMain.Logar(PrefixLog+'ERRO: '+E.Message);
  end;

  Result:=True;
end;

//###### ITENS #######
function VisualizarItem(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
  Itens: TJSONArray;
  VED_CODIGO, VEI_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO:=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizarItem) Venda: '+VED_CODIGO.ToString+' Item: '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendasItens.Open;
    DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]);

    Registro:=DM.TBVendasItens.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBVendas.Close;
    DM.TBVendasItens.Close;

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
  VED_CODIGO, VEI_CODIGO, VEI_PRODUTO: Integer;
  ALTERAR_VALOR_UNITARIO, DESCONTO_EM_VALOR: Boolean;
  Aux: Extended;
begin
  try
    VED_CODIGO            :=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO            :=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);
    VEI_PRODUTO           :=SoNumeros(Req.ContentFields.Field('VEI_PRODUTO').AsString);
    ALTERAR_VALOR_UNITARIO:=Req.ContentFields.Field('ALTERAR_VALOR_UNITARIO').AsBoolean;
    DESCONTO_EM_VALOR     :=Req.ContentFields.Field('DESCONTO_EM_VALOR').AsBoolean;

    Obrigatorio(VEI_CODIGO.ToString,'Código Item','0');
    Obrigatorio(VED_CODIGO.ToString,'Venda','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizarItem) Venda: '+VED_CODIGO.ToString+' Item: '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Venda não encontrada.');

    DM.TBVendasItens.Open;
    if not DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro do item para alteração. '+VEI_CODIGO.ToString);

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=VEI_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não localizado.');

    DM.TBVendasItens.Edit;
//    DM.TBVendasItensVEI_ALIQCOFINS.Value         :=Req.ContentFields.Field('VEI_ALIQCOFINS').AsExtended;
//    DM.TBVendasItensVEI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('VEI_ALIQCOFINSST').AsExtended;
//    DM.TBVendasItensVEI_ALIQFCP.Value            :=Req.ContentFields.Field('VEI_ALIQFCP').AsExtended;
//    DM.TBVendasItensVEI_ALIQFCPST.Value          :=Req.ContentFields.Field('VEI_ALIQFCPST').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMS.Value           :=Req.ContentFields.Field('VEI_ALIQICMS').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('VEI_ALIQICMSADICST').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSINTER.Value      :=Req.ContentFields.Field('VEI_ALIQICMSINTER').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSINTERPART.Value  :=Req.ContentFields.Field('VEI_ALIQICMSINTERPART').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSRED.Value        :=Req.ContentFields.Field('VEI_ALIQICMSRED').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSST.Value         :=Req.ContentFields.Field('VEI_ALIQICMSST').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('VEI_ALIQICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_ALIQII.Value             :=Req.ContentFields.Field('VEI_ALIQII').AsExtended;
//    DM.TBVendasItensVEI_ALIQIPI.Value            :=Req.ContentFields.Field('VEI_ALIQIPI').AsExtended;
//    DM.TBVendasItensVEI_ALIQISS.Value            :=Req.ContentFields.Field('VEI_ALIQISS').AsExtended;
//    DM.TBVendasItensVEI_ALIQPIS.Value            :=Req.ContentFields.Field('VEI_ALIQPIS').AsExtended;
//    DM.TBVendasItensVEI_ALIQPISST.Value          :=Req.ContentFields.Field('VEI_ALIQPISST').AsExtended;
//    DM.TBVendasItensVEI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('VEI_ALMOXARIFADO').AsInteger;
//    DM.TBVendasItensVEI_BASECOFINS.Value         :=Req.ContentFields.Field('VEI_BASECOFINS').AsExtended;
//    DM.TBVendasItensVEI_BASECOFINSST.Value       :=Req.ContentFields.Field('VEI_BASECOFINSST').AsExtended;
//    DM.TBVendasItensVEI_BASEICMS.Value           :=Req.ContentFields.Field('VEI_BASEICMS').AsExtended;
//    DM.TBVendasItensVEI_BASEICMSRED.Value        :=Req.ContentFields.Field('VEI_BASEICMSRED').AsExtended;;
//    DM.TBVendasItensVEI_BASEICMSST.Value         :=Req.ContentFields.Field('VEI_BASEICMSST').AsExtended;
//    DM.TBVendasItensVEI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('VEI_BASEICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_BASEII.Value             :=Req.ContentFields.Field('VEI_BASEII').AsExtended;
//    DM.TBVendasItensVEI_BASEIPI.Value            :=Req.ContentFields.Field('VEI_BASEIPI').AsExtended;
//    DM.TBVendasItensVEI_BASEISS.Value            :=Req.ContentFields.Field('VEI_BASEISS').AsExtended;
//    DM.TBVendasItensVEI_BASEPIS.Value            :=Req.ContentFields.Field('VEI_BASEPIS').AsExtended;
//    DM.TBVendasItensVEI_BASEPISST.Value          :=Req.ContentFields.Field('VEI_BASEPISST').AsExtended;
    DM.TBVendasItensVEI_BENEFICIO.Value          :=DM.TBProdutosPRO_BENEFICIO.Value;
    DM.TBVendasItensVEI_CEST.Value               :=DM.TBProdutosPRO_CEST.Value;
//    DM.TBVendasItensVEI_CFOP.Value               :=Req.ContentFields.Field('VEI_CFOP').AsInteger;
//    DM.TBVendasItensVEI_CIDADEISS.Value          :=Req.ContentFields.Field('VEI_CIDADEISS').AsInteger;
    DM.TBVendasItensVEI_CLASSFISCAL.Value        :=DM.TBProdutosPRO_CLASSFISCAL.Value;
    //DM.TBVendasItensVEI_CODIGO.Value             :=Req.ContentFields.Field('VEI_CODIGO').AsInteger';
//    DM.TBVendasItensVEI_CODIGOBARRAS.Value       :=San(Req.ContentFields.Field('VEI_CODIGOBARRAS').AsString);
//    DM.TBVendasItensVEI_CODIGOFAB.Value          :=San(Req.ContentFields.Field('VEI_CODIGOFAB').AsString);
    if DM.TBVendasVED_COMISSAOPOR.Value='V' then //pela comissao da capa (vendedor e representante), senao pela do produto, como no Firenet.
    begin
      DM.TBVendasItensVEI_COMISSAO.Value         :=DM.TBVendasVED_COMISSAO.Value;
      DM.TBVendasItensVEI_COMISSAOREP.Value      :=DM.TBVendasVED_COMISSAOREP.Value;
    end else
    begin
      DM.TBVendasItensVEI_COMISSAO.Value         :=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBVendasItensVEI_COMISSAOREP.Value      :=DM.TBProdutosPRO_COMISSAO.Value;
    end;
    DM.TBVendasItensVEI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VEI_COMPLEMENTO').AsString);
//    DM.TBVendasItensVEI_COMPOEBASEICMS.Value     :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMS').AsString);
//    DM.TBVendasItensVEI_COMPOEBASEICMSST.Value   :=San(Req.ContentFields.Field('VEI_COMPOEBASEICMSST').AsString);
//    DM.TBVendasItensVEI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('VEI_COMPOETOTAL').AsString);
//    DM.TBVendasItensVEI_CONVERSAO.Value          :=Req.ContentFields.Field('VEI_CONVERSAO').AsExtended;
    DM.TBVendasItensVEI_CSTCOFINS.Value          :=DM.TBProdutosPRO_CSTCOFINS.Value;
    DM.TBVendasItensVEI_CSTICMS.Value            :=DM.TBProdutosPRO_CSTICMS.Value;
    DM.TBVendasItensICM_CALCULACREDITOSN.Value   :=DM.TBProdutosICM_CALCULACREDITOSN.Value; //o join do item nao acompanha o CST novo (o Firenet le o TBIcms no calculo do credito SN).
    DM.TBVendasItensVEI_CSTIPI.Value             :=DM.TBProdutosPRO_CSTIPI.Value;
    DM.TBVendasItensVEI_CSTPIS.Value             :=DM.TBProdutosPRO_CSTPIS.Value;
    DM.TBVendasItensVEI_DESCMAX.Value            :=DM.TBProdutosPRO_DESCMAX.Value;
    DM.TBVendasItensVEI_DESCPORC.Value           :=Req.ContentFields.Field('VEI_DESCPORC').AsExtended;
    DM.TBVendasItensVEI_DESCRICAO.Value          :=San(Req.ContentFields.Field('VEI_DESCRICAO').AsString);
    DM.TBVendasItensVEI_DESCVALOR.Value          :=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
//    DM.TBVendasItensVEI_DESONERACAO.Value        :=San(Req.ContentFields.Field('VEI_DESONERACAO').AsString);
//    DM.TBVendasItensVEI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('VEI_DICNPJ').AsString);
//    DM.TBVendasItensVEI_DIDATA.Value             :=Req.ContentFields.Field('VEI_DIDATA').AsDate;
//    DM.TBVendasItensVEI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('VEI_DIDESEMBARACODATA').AsDate;
//    DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('VEI_DIDESENBARACOLOCAL').AsString);
//    DM.TBVendasItensVEI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('VEI_DIDESEMBARACOUF').AsString);
//    DM.TBVendasItensVEI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('VEI_DIEXPORTADORCOD').AsString);
//    DM.TBVendasItensVEI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('VEI_DIINTERMEDIO').AsString);
//    DM.TBVendasItensVEI_DINUMERO.Value           :=San(Req.ContentFields.Field('VEI_DINUMERO').AsString);
//    DM.TBVendasItensVEI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('VEI_DITERCEIROUF').AsString);
//    DM.TBVendasItensVEI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('VEI_DITRANSPORTE').AsString);
//    DM.TBVendasItensVEI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('VEI_DIVALORAFRMM').AsExtended;
    DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value   :=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
    DM.TBVendasItensVEI_EXCECAO.Value            :=DM.TBProdutosPRO_EXCECAO.Value;
//    DM.TBVendasItensVEI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('VEI_EXCHAVEACESSO').AsString);
//    DM.TBVendasItensVEI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('VEI_EXDRAWBACK').AsString);
//    DM.TBVendasItensVEI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('VEI_EXQUANTIDADE').AsExtended;
//    DM.TBVendasItensVEI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('VEI_EXREGISTRO').AsString);
    DM.TBVendasItensVEI_FCI.Value                :=DM.TBProdutosPRO_FCI.Value;
    DM.TBVendasItensVEI_INCENTIVOISS.Value       :=DM.TBProdutosPRO_INCENTIVOISS.Value;
    DM.TBVendasItensVEI_INDICADORISS.Value       :=DM.TBProdutosPRO_INDICADORISS.Value;
//    DM.TBVendasItensVEI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('VEI_INFOADICIONAL').AsString,0);
    DM.TBVendasItensVEI_LOCALIZACAO.Value        :=DM.TBProdutosPRO_LOCALIZACAO.Value;
//    DM.TBVendasItensVEI_LOTE.Value               :=San(Req.ContentFields.Field('VEI_LOTE').AsString);
//    DM.TBVendasItensVEI_LUCROPORC.Value          :=Req.ContentFields.Field('VEI_LUCROPORC').AsExtended;
//    DM.TBVendasItensVEI_LUCROVALOR.Value         :=Req.ContentFields.Field('VEI_LUCROVALOR').AsExtended;
//    DM.TBVendasItensVEI_MODICMS.Value            :=San(Req.ContentFields.Field('VEI_MODICMS').AsString);
//    DM.TBVendasItensVEI_MODICMSST.Value          :=San(Req.ContentFields.Field('VEI_MODICMSST').AsString);
//    DM.TBVendasItensVEI_ORIGEM.Value             :=San(Req.ContentFields.Field('VEI_ORIGEM').AsString);
//    DM.TBVendasItensVEI_PAISISS.Value            :=Req.ContentFields.Field('VEI_PAISISS').AsInteger;
//    DM.TBVendasItensVEI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VEI_PEDIDOCLIENTE').AsString);
//    DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('VEI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBVendasItensVEI_PESO.Value               :=DM.TBProdutosPRO_PESO.Value;
//    DM.TBVendasItensVEI_PESOTOTAL.Value          :=Req.ContentFields.Field('VEI_PESOTOTAL').AsExtended;
//    DM.TBVendasItensVEI_PRECOCUSTO.Value         :=Req.ContentFields.Field('VEI_PRECOCUSTO').AsExtended;
//    DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('VEI_PRECOCUSTOTOTAL').AsExtended;
//    DM.TBVendasItensVEI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('VEI_PROCESSOISS').AsString);
    DM.TBVendasItensVEI_PRODUTO.Value            :=Req.ContentFields.Field('VEI_PRODUTO').AsInteger;
//    DM.TBVendasItensVEI_PRODUTOREAL.Value        :=Req.ContentFields.Field('VEI_PRODUTOREAL').AsInteger;
    DM.TBVendasItensVEI_QUANTIDADE.Value         :=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;
//    DM.TBVendasItensVEI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('VEI_QUANTIDADETROCA').AsExtended;
//    //DM.TBVendasItensVEI_SEQUENCIA.Value          := setado no after insert.
    DM.TBVendasItensVEI_SERVICOISS.Value         :=DM.TBProdutosPRO_TIPOISS.Value;
//    DM.TBVendasItensVEI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('VEI_SOMACOFINSST').AsString);
//    DM.TBVendasItensVEI_SOMAPISST.Value          :=San(Req.ContentFields.Field('VEI_SOMAPISST').AsString);
    DM.TBVendasItensVEI_TIPO.Value               :=DM.TBProdutosPRO_TIPO.Value;
    DM.TBVendasItensVEI_TIPOISS.Value            :=DM.TBProdutosPRO_TIPOISS.Value;
    DM.TBVendasItensVEI_UNIDADE.Value            :=DM.TBProdutosPRO_UNIDADE.Value;
//    DM.TBVendasItensVEI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('VEI_VALORACESSORIAS').AsExtended;
//    DM.TBVendasItensVEI_VALORADUANA.Value        :=Req.ContentFields.Field('VEI_VALORADUANA').AsExtended;
//    DM.TBVendasItensVEI_VALORCOFINS.Value        :=Req.ContentFields.Field('VEI_VALORCOFINS').AsExtended;
//    DM.TBVendasItensVEI_VALORCOFINSST.Value      :=Req.ContentFields.Field('VEI_VALORCOFINSST').AsExtended;
//    DM.TBVendasItensVEI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('VEI_VALORCOMISSAO').AsExtended;
//    DM.TBVendasItensVEI_VALORFCP.Value           :=Req.ContentFields.Field('VEI_VALORFCP').AsExtended;
//    DM.TBVendasItensVEI_VALORFCPST.Value         :=Req.ContentFields.Field('VEI_VALORFCPST').AsExtended;
//    DM.TBVendasItensVEI_VALORFRETE.Value         :=Req.ContentFields.Field('VEI_VALORFRETE').AsExtended;
//    DM.TBVendasItensVEI_VALORICMS.Value          :=Req.ContentFields.Field('VEI_VALORICMS').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('VEI_VALORICMSCREDSN').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('VEI_VALORICMSDESONERADO').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSST.Value        :=Req.ContentFields.Field('VEI_VALORICMSST').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('VEI_VALORICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('VEI_VALORICMSSUBSTITUTO').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('VEI_VALORICMSUFDEST').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('VEI_VALORICMSUFREMET').AsExtended;
//    DM.TBVendasItensVEI_VALORII.Value            :=Req.ContentFields.Field('VEI_VALORII').AsExtended;
//    DM.TBVendasItensVEI_VALORIOF.Value           :=Req.ContentFields.Field('VEI_VALORIOF').AsExtended;
//    DM.TBVendasItensVEI_VALORIPI.Value           :=Req.ContentFields.Field('VEI_VALORIPI').AsExtended;
//    DM.TBVendasItensVEI_VALORISS.Value           :=Req.ContentFields.Field('VEI_VALOISS').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('VEI_VALORISSDEDUCAO').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('VEI_VALORISSDESCCOND').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('VEI_VALORISSDESCINCOND').AsExtended;
//    DM.TBVendasItensVEI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('VEI_VALORISSOUTROS').AsExtended;
//    DM.TBVendasItensVEI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('VEI_VALORISSRETENCAO').AsExtended;
//    DM.TBVendasItensVEI_VALORPIS.Value           :=Req.ContentFields.Field('VEI_VALORPIS').AsExtended;
//    DM.TBVendasItensVEI_VALORPISST.Value         :=Req.ContentFields.Field('VEI_VALORPISST').AsExtended;
//    DM.TBVendasItensVEI_VALORSEGURO.Value        :=Req.ContentFields.Field('VEI_VALORSEGURO').AsExtended;
//    DM.TBVendasItensVEI_VALORTOTAL.Value         :=Req.ContentFields.Field('VEI_VALORTOTAL').AsExtended;
//    DM.TBVendasItensVEI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('VEI_VALORTOTALBRUTO').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('VEI_VALORTRIBUTOS').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSEST').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSFED').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSIMP').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSMUN').AsExtended;

    if ALTERAR_VALOR_UNITARIO=false then
    begin
      if DM.TBVendasVED_TABELAPRECO.Value='V' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='1' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='2' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='3' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='4' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='5' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='6' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
    end else
    DM.TBVendasItensVEI_VALORUNIT.Value:=Req.ContentFields.Field('VEI_VALORUNIT').AsExtended;

    if DESCONTO_EM_VALOR=True  then
    begin
      //lógica pra quando informa o desconto em valor.
      DM.TBVendasItensVEI_DESCVALOR.Value:=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
      DM.TBVendasItensVEI_DESCPORC.Value:=round(
        (100.0 / ((DM.TBVendasItensVEI_QUANTIDADE.AsExtended * DM.TBVendasItensVEI_VALORUNIT.AsExtended)
        + DM.TBVendasItensVEI_VALORFRETE.AsExtended
        + DM.TBVendasItensVEI_VALORSEGURO.AsExtended
        + DM.TBVendasItensVEI_VALORACESSORIAS.AsExtended))
        * DM.TBVendasItensVEI_DESCVALOR.AsExtended
      );
    end else
    begin
      //lógica pra quando informa o desconto em porcentagem.
      if DM.TBVendasItensVEI_DESCPORC.Value > DM.TBProdutosPRO_DESCMAX.Value then
      DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBProdutosPRO_DESCMAX.Value;
      Aux:=(DM.TBVendasItensVEI_QUANTIDADE.AsExtended * DM.TBVendasItensVEI_VALORUNIT.AsExtended);
      DM.TBVendasItensVEI_DESCVALOR.AsExtended:=round((Aux / 100) * DM.TBVendasItensVEI_DESCPORC.AsExtended);
    end;

    DM.TBVendasItens.Post;
    DM.TBVendasItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBVendas.Close;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

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
  VEI_PRODUTO, VED_CODIGO: Integer;
  VEI_QUANTIDADE: Extended;
  ALTERAR_VALOR_UNITARIO, DESCONTO_EM_VALOR: Boolean;
  Aux: Extended;
begin
  try
    VEI_PRODUTO           :=SoNumeros(Req.ContentFields.Field('VEI_PRODUTO').AsString);
    VED_CODIGO            :=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_QUANTIDADE        :=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;
    ALTERAR_VALOR_UNITARIO:=Req.ContentFields.Field('ALTERAR_VALOR_UNITARIO').AsBoolean;
    DESCONTO_EM_VALOR     :=Req.ContentFields.Field('DESCONTO_EM_VALOR').AsBoolean;

    Obrigatorio(VEI_PRODUTO.ToString,'Produto','0');
    Obrigatorio(VED_CODIGO.ToString,'Venda','0');

    Usuario:=GetUserFromToken(Req);

    if VEI_QUANTIDADE<=0 then
    raise Exception.Create('A quantidade não pode ser menor ou igual a zero');

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Pedido de venda não localizado.');

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBVendedores.Open;
    if DM.TBVendedores.IsEmpty then
    raise Exception.Create('Vendedor não localizado.');

    DM.TBProdutos.Close;
    DM.TBProdutos.ParamByName('codigo').AsInteger:=VEI_PRODUTO;
    DM.TBProdutos.Open;
    if DM.TBProdutos.IsEmpty then
    raise Exception.Create('Produto não localizado.');

    DM.TBProdutosQtde.Open;
    if DM.TBProdutosQtde.IsEmpty then
    raise Exception.Create('Não existe almoxarifado cadastrado para este produto.');

    DM.TBAliquotas.Close;
    DM.TBAliquotas.ParamByName('codigo').AsString:=DM.TBVendasVED_ESTADO.Value;
    DM.TBAliquotas.Open;

    DM.TBRegrasFiscais.Close;
    DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBProdutosPRO_REGRAFISCAL.Value;
    DM.TBRegrasFiscais.Open;

    DM.TBParametros.Close;
    DM.TBParametros.Open;

    FormMain.Logar(PrefixLog+'(inserirItem) Venda: '+VED_CODIGO.ToString+' Produto: '+VEI_PRODUTO.ToString);

    DM.TBVendasItens.Open;
    DM.TBVendasItens.Insert;
//    DM.TBVendasItensVEI_ALIQCOFINS.Value         :=Req.ContentFields.Field('VEI_ALIQCOFINS').AsExtended;
//    DM.TBVendasItensVEI_ALIQCOFINSST.Value       :=Req.ContentFields.Field('VEI_ALIQCOFINSST').AsExtended;
//    DM.TBVendasItensVEI_ALIQFCP.Value            :=Req.ContentFields.Field('VEI_ALIQFCP').AsExtended;
//    DM.TBVendasItensVEI_ALIQFCPST.Value          :=Req.ContentFields.Field('VEI_ALIQFCPST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMS.Value           :=DM.TBAliquotasALI_ALIQICMSINTER.Value; // Req.ContentFields.Field('VEI_ALIQICMS').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSADICST.Value     :=Req.ContentFields.Field('VEI_ALIQICMSADICST').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTER.Value      :=DM.TBAliquotasALI_ALIQICMSINTER.Value; // Req.ContentFields.Field('VEI_ALIQICMSINTER').AsExtended;
    DM.TBVendasItensVEI_ALIQICMSINTERPART.Value  :=DM.TBAliquotasALI_ALIQICMSINTERPART.Value; // Req.ContentFields.Field('VEI_ALIQICMSINTERPART').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSRED.Value        :=Req.ContentFields.Field('VEI_ALIQICMSRED').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSST.Value         :=Req.ContentFields.Field('VEI_ALIQICMSST').AsExtended;
//    DM.TBVendasItensVEI_ALIQICMSSTRET.Value      :=Req.ContentFields.Field('VEI_ALIQICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_ALIQII.Value             :=Req.ContentFields.Field('VEI_ALIQII').AsExtended;
//    DM.TBVendasItensVEI_ALIQIPI.Value            :=Req.ContentFields.Field('VEI_ALIQIPI').AsExtended;
//    DM.TBVendasItensVEI_ALIQISS.Value            :=Req.ContentFields.Field('VEI_ALIQISS').AsExtended;
//    DM.TBVendasItensVEI_ALIQPIS.Value            :=Req.ContentFields.Field('VEI_ALIQPIS').AsExtended;
//    DM.TBVendasItensVEI_ALIQPISST.Value          :=Req.ContentFields.Field('VEI_ALIQPISST').AsExtended;
//    DM.TBVendasItensVEI_ALMOXARIFADO.Value       :=Req.ContentFields.Field('VEI_ALMOXARIFADO').AsInteger;
//    DM.TBVendasItensVEI_BASECOFINS.Value         :=Req.ContentFields.Field('VEI_BASECOFINS').AsExtended;
//    DM.TBVendasItensVEI_BASECOFINSST.Value       :=Req.ContentFields.Field('VEI_BASECOFINSST').AsExtended;
//    DM.TBVendasItensVEI_BASEICMS.Value           :=Req.ContentFields.Field('VEI_BASEICMS').AsExtended;
//    DM.TBVendasItensVEI_BASEICMSRED.Value        :=Req.ContentFields.Field('VEI_BASEICMSRED').AsExtended;;
//    DM.TBVendasItensVEI_BASEICMSST.Value         :=Req.ContentFields.Field('VEI_BASEICMSST').AsExtended;
//    DM.TBVendasItensVEI_BASEICMSSTRET.Value      :=Req.ContentFields.Field('VEI_BASEICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_BASEII.Value             :=Req.ContentFields.Field('VEI_BASEII').AsExtended;
//    DM.TBVendasItensVEI_BASEIPI.Value            :=Req.ContentFields.Field('VEI_BASEIPI').AsExtended;
//    DM.TBVendasItensVEI_BASEISS.Value            :=Req.ContentFields.Field('VEI_BASEISS').AsExtended;
//    DM.TBVendasItensVEI_BASEPIS.Value            :=Req.ContentFields.Field('VEI_BASEPIS').AsExtended;
//    DM.TBVendasItensVEI_BASEPISST.Value          :=Req.ContentFields.Field('VEI_BASEPISST').AsExtended;
    DM.TBVendasItensVEI_BENEFICIO.Value          :=DM.TBProdutosPRO_BENEFICIO.Value;
    DM.TBVendasItensVEI_CEST.Value               :=DM.TBProdutosPRO_CEST.Value;
//    DM.TBVendasItensVEI_CFOP.Value               :=Req.ContentFields.Field('VEI_CFOP').AsInteger;
//    DM.TBVendasItensVEI_CIDADEISS.Value          :=Req.ContentFields.Field('VEI_CIDADEISS').AsInteger;
    DM.TBVendasItensVEI_CLASSFISCAL.Value        :=DM.TBProdutosPRO_CLASSFISCAL.Value;
    //DM.TBVendasItensVEI_CODIGO.Value             :=Req.ContentFields.Field('VEI_CODIGO').AsInteger';
    DM.TBVendasItensVEI_CODIGOBARRAS.Value       :=DM.TBProdutosPRO_CODIGOBARRAS.Value; // San(Req.ContentFields.Field('VEI_CODIGOBARRAS').AsString);
    DM.TBVendasItensVEI_CODIGOFAB.Value          :=DM.TBProdutosPRO_CODIGOFAB.Value; // San(Req.ContentFields.Field('VEI_CODIGOFAB').AsString);
    if DM.TBVendasVED_COMISSAOPOR.Value='V' then //pela comissao da capa (vendedor e representante), senao pela do produto, como no Firenet.
    begin
      DM.TBVendasItensVEI_COMISSAO.Value         :=DM.TBVendasVED_COMISSAO.Value;
      DM.TBVendasItensVEI_COMISSAOREP.Value      :=DM.TBVendasVED_COMISSAOREP.Value;
    end else
    begin
      DM.TBVendasItensVEI_COMISSAO.Value         :=DM.TBProdutosPRO_COMISSAO.Value;
      DM.TBVendasItensVEI_COMISSAOREP.Value      :=DM.TBProdutosPRO_COMISSAO.Value;
    end;
    DM.TBVendasItensVEI_COMPLEMENTO.Value        :=San(Req.ContentFields.Field('VEI_COMPLEMENTO').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMS.Value     :=DM.TBProdutosPRO_COMPOEBASEICMS.Value; // San(Req.ContentFields.Field('VEI_COMPOEBASEICMS').AsString);
    DM.TBVendasItensVEI_COMPOEBASEICMSST.Value   :=DM.TBProdutosPRO_COMPOEBASEICMSST.Value; // San(Req.ContentFields.Field('VEI_COMPOEBASEICMSST').AsString);
//    DM.TBVendasItensVEI_COMPOETOTAL.Value        :=San(Req.ContentFields.Field('VEI_COMPOETOTAL').AsString);
//    DM.TBVendasItensVEI_CONVERSAO.Value          :=Req.ContentFields.Field('VEI_CONVERSAO').AsExtended;
    DM.TBVendasItensVEI_CSTCOFINS.Value          :=DM.TBProdutosPRO_CSTCOFINS.Value;
    DM.TBVendasItensVEI_CSTICMS.Value            :=DM.TBProdutosPRO_CSTICMS.Value;
    DM.TBVendasItensICM_CALCULACREDITOSN.Value   :=DM.TBProdutosICM_CALCULACREDITOSN.Value; //o join do item nao acompanha o CST novo (o Firenet le o TBIcms no calculo do credito SN).
    DM.TBVendasItensVEI_CSTIPI.Value             :=DM.TBProdutosPRO_CSTIPI.Value;
    DM.TBVendasItensVEI_CSTPIS.Value             :=DM.TBProdutosPRO_CSTPIS.Value;
    DM.TBVendasItensVEI_DESCMAX.Value            :=DM.TBProdutosPRO_DESCMAX.Value;
    DM.TBVendasItensVEI_DESCPORC.Value           :=Req.ContentFields.Field('VEI_DESCPORC').AsExtended;
    DM.TBVendasItensVEI_DESCRICAO.Value          :=DM.TBProdutosPRO_NOME.Value;
    DM.TBVendasItensVEI_DESCVALOR.Value          :=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
//    DM.TBVendasItensVEI_DESONERACAO.Value        :=San(Req.ContentFields.Field('VEI_DESONERACAO').AsString);
//    DM.TBVendasItensVEI_DICNPJ.Value             :=FormatarCPFCNPJ(Req.ContentFields.Field('VEI_DICNPJ').AsString);
//    DM.TBVendasItensVEI_DIDATA.Value             :=Req.ContentFields.Field('VEI_DIDATA').AsDate;
//    DM.TBVendasItensVEI_DIDESEMBARACODATA.Value  :=Req.ContentFields.Field('VEI_DIDESEMBARACODATA').AsDate;
//    DM.TBVendasItensVEI_DIDESEMBARACOLOCAL.Value :=San(Req.ContentFields.Field('VEI_DIDESENBARACOLOCAL').AsString);
//    DM.TBVendasItensVEI_DIDESEMBARACOUF.Value    :=San(Req.ContentFields.Field('VEI_DIDESEMBARACOUF').AsString);
//    DM.TBVendasItensVEI_DIEXPORTADORCOD.Value    :=San(Req.ContentFields.Field('VEI_DIEXPORTADORCOD').AsString);
//    DM.TBVendasItensVEI_DIINTERMEDIO.Value       :=San(Req.ContentFields.Field('VEI_DIINTERMEDIO').AsString);
//    DM.TBVendasItensVEI_DINUMERO.Value           :=San(Req.ContentFields.Field('VEI_DINUMERO').AsString);
//    DM.TBVendasItensVEI_DITERCEIROUF.Value       :=San(Req.ContentFields.Field('VEI_DITERCEIROUF').AsString);
//    DM.TBVendasItensVEI_DITRANSPORTE.Value       :=San(Req.ContentFields.Field('VEI_DITRANSPORTE').AsString);
//    DM.TBVendasItensVEI_DIVALORAFRMM.Value       :=Req.ContentFields.Field('VEI_DIVALORAFRMM').AsExtended;
    DM.TBVendasItensVEI_ENQUADRAMENTOIPI.Value   :=DM.TBProdutosPRO_ENQUADRAMENTOIPI.Value;
    DM.TBVendasItensVEI_EXCECAO.Value            :=DM.TBProdutosPRO_EXCECAO.Value;
//    DM.TBVendasItensVEI_EXCHAVEACESSO.Value      :=San(Req.ContentFields.Field('VEI_EXCHAVEACESSO').AsString);
//    DM.TBVendasItensVEI_EXDRAWBACK.Value         :=San(Req.ContentFields.Field('VEI_EXDRAWBACK').AsString);
//    DM.TBVendasItensVEI_EXQUANTIDADE.Value       :=Req.ContentFields.Field('VEI_EXQUANTIDADE').AsExtended;
//    DM.TBVendasItensVEI_EXREGISTRO.Value         :=San(Req.ContentFields.Field('VEI_EXREGISTRO').AsString);
    DM.TBVendasItensVEI_FCI.Value                :=DM.TBProdutosPRO_FCI.Value;
    DM.TBVendasItensVEI_INCENTIVOISS.Value       :=DM.TBProdutosPRO_INCENTIVOISS.Value;
    DM.TBVendasItensVEI_INDICADORISS.Value       :=DM.TBProdutosPRO_INDICADORISS.Value;
//    DM.TBVendasItensVEI_INFOADICIONAL.Value      :=San(Req.ContentFields.Field('VEI_INFOADICIONAL').AsString,0);
    DM.TBVendasItensVEI_LOCALIZACAO.Value        :=DM.TBProdutosPRO_LOCALIZACAO.Value;
//    DM.TBVendasItensVEI_LOTE.Value               :=San(Req.ContentFields.Field('VEI_LOTE').AsString);
//    DM.TBVendasItensVEI_LUCROPORC.Value          :=Req.ContentFields.Field('VEI_LUCROPORC').AsExtended;
//    DM.TBVendasItensVEI_LUCROVALOR.Value         :=Req.ContentFields.Field('VEI_LUCROVALOR').AsExtended;
    DM.TBVendasItensVEI_MODICMS.Value            :=DM.TBProdutosPRO_MODICMS.Value; // San(Req.ContentFields.Field('VEI_MODICMS').AsString);
    DM.TBVendasItensVEI_MODICMSST.Value          :=DM.TBProdutosPRO_MODICMSST.Value; // San(Req.ContentFields.Field('VEI_MODICMSST').AsString);
//    DM.TBVendasItensVEI_ORIGEM.Value             :=San(Req.ContentFields.Field('VEI_ORIGEM').AsString);
//    DM.TBVendasItensVEI_PAISISS.Value            :=Req.ContentFields.Field('VEI_PAISISS').AsInteger;
//    DM.TBVendasItensVEI_PEDIDOCLIENTE.Value      :=San(Req.ContentFields.Field('VEI_PEDIDOCLIENTE').AsString);
//    DM.TBVendasItensVEI_PEDIDOCLIENTEITEM.Value  :=Req.ContentFields.Field('VEI_PEDIDOCLIENTEITEM').AsInteger;
    DM.TBVendasItensVEI_PESO.Value               :=DM.TBProdutosPRO_PESO.Value;
//    DM.TBVendasItensVEI_PESOTOTAL.Value          :=Req.ContentFields.Field('VEI_PESOTOTAL').AsExtended;
//    DM.TBVendasItensVEI_PRECOCUSTO.Value         :=Req.ContentFields.Field('VEI_PRECOCUSTO').AsExtended;
//    DM.TBVendasItensVEI_PRECOCUSTOTOTAL.Value    :=Req.ContentFields.Field('VEI_PRECOCUSTOTOTAL').AsExtended;
//    DM.TBVendasItensVEI_PROCESSOISS.Value        :=San(Req.ContentFields.Field('VEI_PROCESSOISS').AsString);
    DM.TBVendasItensVEI_PRODUTO.Value            :=Req.ContentFields.Field('VEI_PRODUTO').AsInteger;
//    DM.TBVendasItensVEI_PRODUTOREAL.Value        :=Req.ContentFields.Field('VEI_PRODUTOREAL').AsInteger;
    DM.TBVendasItensVEI_QUANTIDADE.Value         :=Req.ContentFields.Field('VEI_QUANTIDADE').AsExtended;
//    DM.TBVendasItensVEI_QUANTIDADETROCA.Value    :=Req.ContentFields.Field('VEI_QUANTIDADETROCA').AsExtended;
//    //DM.TBVendasItensVEI_SEQUENCIA.Value          := setado no after insert.
    DM.TBVendasItensVEI_SERVICOISS.Value         :=DM.TBProdutosPRO_TIPOISS.Value;
//    DM.TBVendasItensVEI_SOMACOFINSST.Value       :=San(Req.ContentFields.Field('VEI_SOMACOFINSST').AsString);
//    DM.TBVendasItensVEI_SOMAPISST.Value          :=San(Req.ContentFields.Field('VEI_SOMAPISST').AsString);
    DM.TBVendasItensVEI_TIPO.Value               :=DM.TBProdutosPRO_TIPO.Value;
    DM.TBVendasItensVEI_TIPOISS.Value            :=DM.TBProdutosPRO_TIPOISS.Value;
    DM.TBVendasItensVEI_UNIDADE.Value            :=DM.TBProdutosPRO_UNIDADE.Value;
//    DM.TBVendasItensVEI_VALORACESSORIAS.Value    :=Req.ContentFields.Field('VEI_VALORACESSORIAS').AsExtended;
//    DM.TBVendasItensVEI_VALORADUANA.Value        :=Req.ContentFields.Field('VEI_VALORADUANA').AsExtended;
//    DM.TBVendasItensVEI_VALORCOFINS.Value        :=Req.ContentFields.Field('VEI_VALORCOFINS').AsExtended;
//    DM.TBVendasItensVEI_VALORCOFINSST.Value      :=Req.ContentFields.Field('VEI_VALORCOFINSST').AsExtended;
//    DM.TBVendasItensVEI_VALORCOMISSAO.Value      :=Req.ContentFields.Field('VEI_VALORCOMISSAO').AsExtended;
//    DM.TBVendasItensVEI_VALORFCP.Value           :=Req.ContentFields.Field('VEI_VALORFCP').AsExtended;
//    DM.TBVendasItensVEI_VALORFCPST.Value         :=Req.ContentFields.Field('VEI_VALORFCPST').AsExtended;
//    DM.TBVendasItensVEI_VALORFRETE.Value         :=Req.ContentFields.Field('VEI_VALORFRETE').AsExtended;
//    DM.TBVendasItensVEI_VALORICMS.Value          :=Req.ContentFields.Field('VEI_VALORICMS').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSCREDSN.Value    :=Req.ContentFields.Field('VEI_VALORICMSCREDSN').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSDESONERADO.Value:=Req.ContentFields.Field('VEI_VALORICMSDESONERADO').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSST.Value        :=Req.ContentFields.Field('VEI_VALORICMSST').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSSTRET.Value     :=Req.ContentFields.Field('VEI_VALORICMSSTRET').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSSUBSTITUTO.Value:=Req.ContentFields.Field('VEI_VALORICMSSUBSTITUTO').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSUFDEST.Value    :=Req.ContentFields.Field('VEI_VALORICMSUFDEST').AsExtended;
//    DM.TBVendasItensVEI_VALORICMSUFREMET.Value   :=Req.ContentFields.Field('VEI_VALORICMSUFREMET').AsExtended;
//    DM.TBVendasItensVEI_VALORII.Value            :=Req.ContentFields.Field('VEI_VALORII').AsExtended;
//    DM.TBVendasItensVEI_VALORIOF.Value           :=Req.ContentFields.Field('VEI_VALORIOF').AsExtended;
//    DM.TBVendasItensVEI_VALORIPI.Value           :=Req.ContentFields.Field('VEI_VALORIPI').AsExtended;
//    DM.TBVendasItensVEI_VALORISS.Value           :=Req.ContentFields.Field('VEI_VALOISS').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDEDUCAO.Value    :=Req.ContentFields.Field('VEI_VALORISSDEDUCAO').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDESCCOND.Value   :=Req.ContentFields.Field('VEI_VALORISSDESCCOND').AsExtended;
//    DM.TBVendasItensVEI_VALORISSDESCINCOND.Value :=Req.ContentFields.Field('VEI_VALORISSDESCINCOND').AsExtended;
//    DM.TBVendasItensVEI_VALORISSOUTROS.Value     :=Req.ContentFields.Field('VEI_VALORISSOUTROS').AsExtended;
//    DM.TBVendasItensVEI_VALORISSRETENCAO.Value   :=Req.ContentFields.Field('VEI_VALORISSRETENCAO').AsExtended;
//    DM.TBVendasItensVEI_VALORPIS.Value           :=Req.ContentFields.Field('VEI_VALORPIS').AsExtended;
//    DM.TBVendasItensVEI_VALORPISST.Value         :=Req.ContentFields.Field('VEI_VALORPISST').AsExtended;
//    DM.TBVendasItensVEI_VALORSEGURO.Value        :=Req.ContentFields.Field('VEI_VALORSEGURO').AsExtended;
//    DM.TBVendasItensVEI_VALORTOTAL.Value         :=Req.ContentFields.Field('VEI_VALORTOTAL').AsExtended;
//    DM.TBVendasItensVEI_VALORTOTALBRUTO.Value    :=Req.ContentFields.Field('VEI_VALORTOTALBRUTO').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOS.Value      :=Req.ContentFields.Field('VEI_VALORTRIBUTOS').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSEST.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSEST').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSFED.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSFED').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSIMP.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSIMP').AsExtended;
//    DM.TBVendasItensVEI_VALORTRIBUTOSMUN.Value   :=Req.ContentFields.Field('VEI_VALORTRIBUTOSMUN').AsExtended;

      //campos da reforma tributaria.
      DM.TBVendasItensVEI_ALIQCBS.Value:=DM.TBRegrasFiscaisRGF_ALIQCBS.Value;
      //DM.TBVendasItensVEI_ALIQCBSCREDPRES.Value:=
      //DM.TBVendasItensVEI_ALIQCBSDIF.Value:=
      //DM.TBVendasItensVEI_ALIQCBSEFE.Value:=
      DM.TBVendasItensVEI_ALIQCBSRED.Value:=DM.TBRegrasFiscaisCLT_ALIQCBSRED_IC.Value;
      //DM.TBVendasItensVEI_ALIQIBSCREDPRES.Value:=
      DM.TBVendasItensVEI_ALIQIBSMUN.Value:=DM.TBRegrasFiscaisRGF_ALIQIBSMUN.Value;
      //DM.TBVendasItensVEI_ALIQIBSMUNDIF.Value:=
      //DM.TBVendasItensVEI_ALIQIBSMUNEFE.Value:=
      DM.TBVendasItensVEI_ALIQIBSMUNRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
      DM.TBVendasItensVEI_ALIQIBSUF.Value:=DM.TBAliquotasALI_ALIQIBSUF.Value; //alterado para pegar da tabela de aliquotas. DM.TBRegrasFiscaisRGF_ALIQIBSUF.Value;
      //DM.TBVendasItensVEI_ALIQIBSUFDIF.Value:=
      //DM.TBVendasItensVEI_ALIQIBSUFEFE.Value:=
      DM.TBVendasItensVEI_ALIQIBSUFRED.Value:=DM.TBRegrasFiscaisCLT_ALIQIBSRED_IC.Value; //mesmo para mun e uf?
      DM.TBVendasItensVEI_ALIQIS.Value:=DM.TBRegrasFiscaisRGF_ALIQIS.Value;
      //DM.TBVendasItensVEI_ALIQISESP.Value:=
      //DM.TBVendasItensVEI_BASEIBSCBS.Value:=
      //DM.TBVendasItensVEI_BASEIS.Value:=
      //DM.TBVendasItensVEI_CBSCREDITOPRES.Value:=
      DM.TBVendasItensVEI_CLASSTRIBIBSCBS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value;
      DM.TBVendasItensVEI_CLASSTRIBIS.Value:=DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value;
      DM.TBVendasItensVEI_CSTIBSCBS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIBSCBS.Value,1,3);
      DM.TBVendasItensVEI_CSTIS.Value:=Copy(DM.TBRegrasFiscaisRGF_CLASSTRIBIS.Value,1,3);
      DM.TBVendasItensVEI_IBSCREDITOPRES.Value:=DM.TBRegrasFiscaisRGF_CREDITOPRES.Value;
    //  DM.TBVendasItensVEI_VALORCBS.Value:=
    //  DM.TBVendasItensVEI_VALORCBSCREDPRES.Value:=
    //  DM.TBVendasItensVEI_VALORCBSCREDPRESSUS.Value:=
    //  DM.TBVendasItensVEI_VALORCBSDEV.Value:=
    //  DM.TBVendasItensVEI_VALORCBSDIF.Value:=
    //  DM.TBVendasItensVEI_VALORIBS.Value:=
    //  DM.TBVendasItensVEI_VALORIBSCREDPRES.Value:=
    //  DM.TBVendasItensVEI_VALORIBSCREDPRESSUS.Value:=
    //  DM.TBVendasItensVEI_VALORIBSMUN.Value:=
    //  DM.TBVendasItensVEI_VALORIBSMUNDEV.Value:=
    //  DM.TBVendasItensVEI_VALORIBSMUNDIF.Value:=
    //  DM.TBVendasItensVEI_VALORIBSUF.Value:=
    //  DM.TBVendasItensVEI_VALORIBSUFDEV.Value:=
    //  DM.TBVendasItensVEI_VALORIBSUFDIF.Value:=
    //  DM.TBVendasItensVEI_VALORIS.Value:=

    if ALTERAR_VALOR_UNITARIO=false then
    begin
      if DM.TBVendasVED_TABELAPRECO.Value='V' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECOVENDA.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='1' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO1.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='2' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO2.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='3' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO3.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='4' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO4.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='5' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO5.Value else
      if DM.TBVendasVED_TABELAPRECO.Value='6' then DM.TBVendasItensVEI_VALORUNIT.Value:=DM.TBProdutosPRO_PRECO6.Value;
    end else
    DM.TBVendasItensVEI_VALORUNIT.Value:=Req.ContentFields.Field('VEI_VALORUNIT').AsExtended;

    if DESCONTO_EM_VALOR=true  then
    begin
      //lógica pra quando informa o desconto em valor.
      DM.TBVendasItensVEI_DESCVALOR.Value:=Req.ContentFields.Field('VEI_DESCVALOR').AsExtended;
      DM.TBVendasItensVEI_DESCPORC.Value:=round(
        (100.0 / ((DM.TBVendasItensVEI_QUANTIDADE.AsExtended * DM.TBVendasItensVEI_VALORUNIT.AsExtended)
        + DM.TBVendasItensVEI_VALORFRETE.AsExtended
        + DM.TBVendasItensVEI_VALORSEGURO.AsExtended
        + DM.TBVendasItensVEI_VALORACESSORIAS.AsExtended))
        * DM.TBVendasItensVEI_DESCVALOR.AsExtended
      );
    end else
    begin
      //lógica pra quando informa o desconto em porcentagem.
      DM.TBVendasItensVEI_DESCPORC.Value:=DM.TBVendasItensVEI_DESCPORC.Value;
      Aux:=(DM.TBVendasItensVEI_QUANTIDADE.AsExtended * DM.TBVendasItensVEI_VALORUNIT.AsExtended);
      DM.TBVendasItensVEI_DESCVALOR.AsExtended:=round((Aux / 100) * DM.TBVendasItensVEI_DESCPORC.AsExtended);
    end;

    //DM.TBVendasItensVEI_VENDA.Value:=DM.TBVendasVED_CODIGO.Value; //Req.ContentFields.Field('VEI_VENDA').AsInteger;
    DM.TBVendasItens.Post;
    DM.TBVendasItens.Close;

    DM.CalcularTotaisVenda(True);

    DM.TBVendas.Close;
    DM.TBParametros.Close;
    DM.TBProdutos.Close;
    DM.TBAliquotas.Close;

    Result:=Visualizar(DM,Req); //req contem VED_CODIGO.

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
  VED_CODIGO, VEI_CODIGO: Integer;
begin
  try
    VED_CODIGO:=SoNumeros(Req.ContentFields.Field('VED_CODIGO').AsString);
    VEI_CODIGO:=SoNumeros(Req.ContentFields.Field('VEI_CODIGO').AsString);
    if VED_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluirItem) '+VEI_CODIGO.ToString);

    DM.TBVendas.Close;
    DM.TBVendas.ParamByName('codigo').AsInteger:=VED_CODIGO;
    DM.TBVendas.Open;
    if DM.TBVendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBVendasVED_STATUS.Value<>'A' then
    raise Exception.Create('Este pedido de venda não está em aberto.');

    DM.TBVendasItens.Open;
    if not DM.TBVendasItens.Locate('VEI_CODIGO',VEI_CODIGO,[]) then
    raise Exception.Create('Erro ao localizar o registro.');

    DM.TBVendasItens.Delete;
    DM.TBVendasItens.Open;

    DM.CalcularTotaisVenda(True);
    ReordenarItens(DM,VED_CODIGO);

    //AtualizarTotaisConsulta(DM,COS_CODIGO);
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

procedure ReordenarItens(DM: TDMFirenet; Venda: Integer);
begin
  //atualiza a sequencia dos itens.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add(
    'merge into VENDASITENS VENDASITENS_DESTINO '+
    'using ( '+
    '  select '+
    '    RDB$DB_KEY as db_key, '+
    '    VEI_CODIGO, '+
    '    VEI_VENDA, '+
    '    row_number() over(partition by VEI_VENDA order by VEI_VENDA, VEI_CODIGO) as SEQ '+
    'from VENDASITENS where VEI_VENDA=:codigo order by VEI_VENDA, VEI_CODIGO) VENDASITENS_ORIGEM '+
    'on VENDASITENS_DESTINO.RDB$DB_KEY = VENDASITENS_ORIGEM.db_key '+
    'when matched then update set VENDASITENS_DESTINO.VEI_SEQUENCIA = VENDASITENS_ORIGEM.SEQ'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  //DM.TRQuery1.Commit;

  //atualiza o total de itens.
  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add(
    'update VENDAS set VED_SEQUENCIAITEM=(select max(VEI_SEQUENCIA) as SEQ from VENDASITENS where VEI_VENDA=VED_CODIGO) where VED_CODIGO=:codigo'
  );
  DM.Query1.ParamByName('codigo').AsInteger:=Venda;
  DM.Query1.ExecSQL;
  //DM.TRQuery1.Commit;
end;

end.
