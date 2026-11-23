//Atualizacoes:
//2026.11.19 - Logo do relatorio (PDF) pelo CarregarLogoSVGFast (EMP_LOGOSVG), no lugar do logo_empresa_120x60.jpg.
//2026.11.18 - Filtro de datas do listar lido com .AsDate (aaaa-mm-dd, formato do PettFieldDate do Brian) no lugar do StrToDate (dd/mm/aaaa).
unit Firenet.Receber;

interface

uses Horse, System.JSON, System.SysUtils, System.Classes, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function PreBaixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function EnviarPDF(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.RECEBER: ';
  Campos='REE_CODIGO, REE_CLIENTE, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_STATUS, REE_VALOR, CLI_NOME';

implementation
uses Funcoes, FuncoesFirenet, ReceberFast;

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

      if Operacao='listar'      then Res.Send( Listar(DM,Req)      ).Status(200) else
      if Operacao='visualizar'  then Res.Send( Visualizar(DM,Req)  ).Status(200) else
      if Operacao='prebaixar'   then Res.Send( PreBaixar(DM,Req)   ).Status(200) else
      if Operacao='enviarpdf'   then Res.Send( EnviarPDF(DM,Req)   ).Status(200) else
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
  Where, Pesquisa, Status, DataCampo: String;
  DataInicial, DataFinal: TDate;
  Listagem: TJSONArray;
  Retorno, Registro, Usuario: TJSONObject;
begin
  try
    DataInicial:=StrToDate('01/01/2000');
    DataFinal:=StrToDate('01/01/2030');

    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    DataCampo  :=San(Req.ContentFields.Field('dataCampo').AsString);
    DataInicial:=Req.ContentFields.Field('dataInicial').AsDate;
    DataFinal:=Req.ContentFields.Field('dataFinal').AsDate;
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);
    Status     :=San(Req.ContentFields.Field('status').AsString);
    Usuario    :=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Pesquisa: '+Pesquisa+', Status: '+Status+', Datas: '+DateToStr(DataInicial)+' '+DateToStr(DataFinal));

    Where:='';
    if DataCampo='EMISSAO'    then Where:=Where+' and (REE_DTEMISSAO between :datainicial and :datafinal)' else
    if DataCampo='VENCIMENTO' then Where:=Where+' and (REE_DTVENCIMENTO between :datainicial and :datafinal)' else
    if DataCampo='PAGAMENTO'  then Where:=Where+' and (REE_DTPAGAMENTO between :datainicial and :datafinal)';
    if Pesquisa<>''           then Where:=Where+' and CLI_NOME like '+QuotedStr(Pesquisa+'%');
    if Status  <>'TODAS'      then Where:=Where+' and REE_STATUS='+QuotedStr(Status);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from RECEBER '+
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
      'where CLI_VENDEDOR=:vendedor '+Where+' order by CLI_NOME'
    );
    DM.Query1.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query1.ParamByName('datafinal').AsDate:=DataFinal;
    DM.Query1.ParamByName('vendedor').AsInteger:=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.Query1.Open;
    DM.Query1.FetchAll;

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'select '+
      '  cast( sum(iif(REE_STATUS=''A'',REE_VALOR,0)) as DOUBLE PRECISION) as VALORABERTOS, '+
      '  cast( sum(iif(REE_STATUS=''B'',REE_VALOR,0)) as DOUBLE PRECISION) as VALORBAIXADOS, '+
      '  cast( sum(iif(REE_STATUS=''C'',REE_VALOR,0)) as DOUBLE PRECISION) as VALORCANCELADOS, '+
      '  cast( sum(iif(REE_STATUS=''P'',REE_VALOR,0)) as DOUBLE PRECISION) as VALORPREBAIXADOS, '+
      '  cast( sum(REE_VALOR) as DOUBLE PRECISION) as VALORTOTAL, '+
      '  cast( sum(REE_VALORPAGO) as DOUBLE PRECISION) as VALORTOTALPAGO '+
      'from RECEBER '+
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
      'where CLI_VENDEDOR=:vendedor '+Where
    );
    DM.Query2.ParamByName('datainicial').AsDate:=DataInicial;
    DM.Query2.ParamByName('datafinal').AsDate:=DataFinal;
    DM.Query2.ParamByName('vendedor').AsInteger:=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.Query2.Open;
    DM.Query2.FetchAll;

    Registro:=TJSONObject.Create;
    Registro.AddPair('listagem', DM.Query1.ToJSONArray);
    Registro.AddPair('totais', DM.Query2.ToJSONObject);

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('rpp',FormMain.Edit2.Text);
    Retorno.AddPair('contador',DM.Query1.RecordCount);
    Retorno.AddPair('msg',Registro);

    Result:=Retorno;

    DM.Query1.Close;
    DM.Query2.Close;

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

function PreBaixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  REE_CODIGO: Integer;
  REE_DTPAGAMENTO: TDateTime;
  REE_VALORPAGO: Extended;
  Retorno, Usuario: TJSONObject;
begin
  try
    REE_CODIGO:=Req.ContentFields.Field('REE_CODIGO').AsInteger;
    //REE_DTPAGAMENTO:=Req.ContentFields.Field('REE_DTPAGAMENTO').AsDate;
    REE_VALORPAGO:=Req.ContentFields.Field('REE_VALORPAGO').AsCurrency;

    Obrigatorio(REE_CODIGO.ToString,'Código','0');
    //Obrigatorio(Req.ContentFields.Field('REE_DTPAGAMENTO').AsString,'Data Pagamento');
    Obrigatorio(Req.ContentFields.Field('REE_VALORPAGO').AsString,'Valor Pagamento');

    FormMain.Logar(PrefixLog+'(prebaixar) '+REE_CODIGO.ToString);

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
    DM.TBReceberREE_BAIXADOPOR.Value:=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBReceberREE_DTATUALIZACAO.Value:=Date;
    DM.TBReceberREE_DTPAGAMENTO.Value:=Date; //Req.ContentFields.Field('REE_DTPAGAMENTO').AsDate;
    DM.TBReceberREE_HRATUALIZACAO.Value:=Time;
    DM.TBReceberREE_STATUS.Value:='P';
    //DM.TBReceberREE_TIPOBAIXA.Value:='T';
    //DM.TBReceberREE_TIPODOCTO.Value:=San(Req.ContentFields.Field('REE_TIPODOCTO').AsString);
    DM.TBReceberREE_USUARIO.Value:=Usuario.GetValue<String>('USU_LOGIN');
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

function EnviarPDF(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario: TJSONObject;
  DataInicial, DataFinal: TDateTime;
  Status, DataCampo, Pesquisa, Order, Where, Arquivo, Email, Mensagem: String;
  Anexos: TStringList;
  FormReceberFast: TFormReceberFast;
begin
  try
    DataInicial:=StrToDate('01/01/2000');
    DataFinal:=StrToDate('01/01/2030');

    DataCampo  :=San(Req.ContentFields.Field('dataCampo').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal  :=Req.ContentFields.Field('datafinal').AsDate;
    Pesquisa   :=San(Req.ContentFields.Field('Pesquisa').AsString);
    Status     :=San(Req.ContentFields.Field('status').AsString);
    Email      :=San(Req.ContentFields.Field('email').AsString);
    Usuario    :=GetUserFromToken(Req);

    Where:='';
    Order:='';
    if DataCampo='EMISSAO'    then Where:=' and REE_DTEMISSAO between :datainicial and :datafinal' else
    if DataCampo='PAGAMENTO'  then Where:=' and REE_DTPAGAMENTO between :datainicial and :datafinal' else
    if DataCampo='VENCIMENTO' then Where:=' and REE_DTVENCIMENTO between :datainicial and :datafinal';

    if DataCampo='EMISSAO'    then Order:=' order by CLI_NOME, REE_DTEMISSAO, REE_CODIGO' else
    if DataCampo='PAGAMENTO'  then Order:=' order by CLI_NOME, REE_DTPAGAMENTO, REE_CODIGO' else
    if DataCampo='VENCIMENTO' then Order:=' order by CLI_NOME, REE_DTVENCIMENTO, REE_CODIGO';

    if Status  <>'TODAS'      then Where:=Where+' and REE_STATUS='+QuotedStr(Status);
    //if ComboBox2.Text<>'TODOS' then Where:=Where+' and REE_TIPODOCTO='+QuotedStr(ComboBox2.Text);
    //if Edit2.Text<>'' then Where:=Where+' and REE_CLIENTE='+Edit1.Text;
    //if Edit4.Text<>'' then Where:=Where+' and REE_VENDEDOR='+Edit3.Text;
    //if Edit8.Text<>'' then Where:=Where+' and REC_AGRUPADOR='+Edit7.Text;
    //if Edit6.Text<>'' then Where:=Where+' and REE_RECEITA='+Edit5.Text;
    if Pesquisa<>''           then Where:=Where+' and CLI_NOME like '+QuotedStr(Pesquisa+'%');

    FormMain.Logar(PrefixLog+'(enviarpdf), Pesquisa: '+Pesquisa+', Status: '+Status+', Datas: '+DateToStr(DataInicial)+' '+DateToStr(DataFinal));

    DM.TBEmpresa.Close;
    DM.TBEmpresa.ParamByName('codigo').AsInteger:=1;
    DM.TBEmpresa.Open;

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBVendedores.Open;

    Arquivo:=ExtractFilePath(ParamStr(0))+'Print\ExtratoReceber.pdf';
    FormReceberFast:=TFormReceberFast.Create(nil);
    FormReceberFast.QY12.Close;
    FormReceberFast.QY12.SQL.Clear;
    FormReceberFast.QY12.SQL.Add(
      'select REE_CLIENTE, REE_CODIGO, REE_CONTA, REE_DTEMISSAO, REE_DTPAGAMENTO, REE_DTVENCIMENTO, REE_NUMDOCTO, REE_RECEITA, '+
      'REE_STATUS, REE_TIPODOCTO, REE_VALOR, REE_VALORPAGO, REE_VENDA, REE_VENDEDOR, CLI_NOME from RECEBER '+
      'left join CLIENTES on REE_CLIENTE=CLI_CODIGO '+
      'where CLI_VENDEDOR=:vendedor '+Where+' '+Order);
    FormReceberFast.QY12.ParamByName('datainicial').AsDate:=DataInicial;
    FormReceberFast.QY12.ParamByName('datafinal').AsDate:=DataFinal;
    FormReceberFast.QY12.ParamByName('vendedor').AsInteger:=DM.TBVendedoresVEN_CODIGO.Value;
    FormReceberFast.QY12.Open;
    FormReceberFast.frxReport12.Variables['TITULO']:=QuotedStr('Contas a Receber por cliente'); //retrato.
    FormReceberFast.frxReport12.Variables['USUARIO']:=QuotedStr(Usuario.GetValue<String>('USU_LOGIN'));
    FormReceberFast.frxReport12.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
    FormReceberFast.frxReport12.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
    FormReceberFast.frxReport12.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
    FormReceberFast.frxReport12.Variables['DATAINICIAL']:=QuotedStr(DateToStr(DataInicial));
    FormReceberFast.frxReport12.Variables['DATAFINAL']:=QuotedStr(DateToStr(DataFinal));
    FormReceberFast.frxReport12.Variables['DATA']:=QuotedStr(DataCampo);
    FormReceberFast.frxReport12.Variables['STATUS']:=QuotedStr(Status);
    FormReceberFast.frxReport12.Variables['TIPODOCTO']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['CLI_CODIGO']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['CLI_NOME']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['VEN_CODIGO']:=QuotedStr(DM.TBVendedoresVEN_CODIGO.Value.ToString);
    FormReceberFast.frxReport12.Variables['VEN_NOME']:=QuotedStr(DM.TBVendedoresVEN_NOME.Value);
    FormReceberFast.frxReport12.Variables['AGR_CODIGO']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['AGR_DESCRICAO']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['REC_CODIGO']:=QuotedStr('');
    FormReceberFast.frxReport12.Variables['REC_DESCRICAO']:=QuotedStr('');
    FormReceberFast.frxPDFExport1.FileName:=Arquivo;
    FormReceberFast.frxPDFExport1.ShowDialog:=False;
    FormReceberFast.frxReport12.PrintOptions.ShowDialog:=False;
    CarregarLogoSVGFast(DM,FormReceberFast.frxReport12);
    FormReceberFast.frxReport12.PrepareReport;

    if not FormReceberFast.frxReport12.Export(FormReceberFast.frxPDFExport1) then
    raise Exception.Create('Erro ao gerar o relatório.');

    FormReceberFast.Free;
    FormReceberFast:=nil;
    DM.TBEmpresa.Close;

    Mensagem:='Olá, <br/><br/>Segue anexo extrato de contas a receber.';

    Anexos:=TStringList.Create;
    Anexos.Add(Arquivo);
    if not EnviarEmailSimples(DM,DM.TBVendedoresVEN_EMAILCONTA.Value,Email,'Extrato',Mensagem,Anexos,True) then
    raise Exception.Create('Erro ao enviar email.');

    DM.TBVendedores.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Extrato enviado com sucesso.');
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
