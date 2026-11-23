unit Firenet.Metas;

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
function Recalcular(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Baixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Reabrir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.METAS: ';
  Campos='MET_CODIGO, MET_DTATUALIZACAO, MET_DTCADASTRO, MET_DTFIM, MET_DTINICIO, MET_METAATINGIDA, MET_METAVALOR, MET_STATUS, MET_VENDEDOR, VEN_NOME';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/metas', VerificarOperacao);
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
      if Operacao='recalcular' then Res.Send( Recalcular(DM,Req) ).Status(200) else
      if Operacao='baixar'     then Res.Send( Baixar(DM,Req)     ).Status(200) else
      if Operacao='reabrir'    then Res.Send( Reabrir(DM,Req)    ).Status(200) else
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
  Pagina, Registros, Skip, MET_CODIGO, MET_VENDEDOR: Integer;
  Where, VEN_NOME: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina       :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    MET_CODIGO   :=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    MET_VENDEDOR :=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    VEN_NOME     :=San(Req.ContentFields.Field('VEN_NOME').AsString);

    Where:='';
    if MET_CODIGO<>0   then Where:=Where+' and MET_CODIGO='+MET_CODIGO.ToString;
    if MET_VENDEDOR<>0 then Where:=Where+' and MET_VENDEDOR='+MET_CODIGO.ToString;
    if VEN_NOME<>''    then Where:=Where+' and VEN_NOME like '+QuotedStr(VEN_NOME+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+MET_CODIGO.ToString+', VENDEDOR: '+MET_CODIGO.ToString+', NOME: '+VEN_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from METAS left join VENDEDORES on MET_VENDEDOR=VEN_CODIGO where 1=1 '+Where+' order by VEN_NOME');
    DM.Query1.Open;
    DM.Query1.FetchAll;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('rpp',FormMain.Edit2.Text);
    Retorno.AddPair('contador',DM.Query1.RecordCount);
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);

    Result:=Retorno;

    DM.Query1.Close;
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
  MET_CODIGO: Integer;
begin
  try
    MET_CODIGO:=SoNumeros(Req.ContentFields.Field('MET_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBMetas.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBMetas.Close;

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
  MET_CODIGO, MET_VENDEDOR: Integer;
  MET_DTINICIO, MET_DTFIM: TDate;
  MET_METAVALOR: Extended;
begin
  try
    MET_CODIGO    :=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    MET_VENDEDOR  :=Req.ContentFields.Field('MET_VENDEDOR').AsInteger;
    MET_DTINICIO  :=Req.ContentFields.Field('MET_DTINICIO').AsDate;
    MET_DTFIM     :=Req.ContentFields.Field('MET_DTFIM').AsDate;
    MET_METAVALOR :=Req.ContentFields.Field('MET_METAVALOR').AsExtended;

    Obrigatorio(MET_CODIGO.ToString,'Código','0');
    Obrigatorio(MET_VENDEDOR.ToString,'Vendedor','0');
    //Obrigatorio(MET_DT,'Tipo');
    Obrigatorio(MET_METAVALOR.ToString,'Valor','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMetas.Edit;
    //DM.TBMetasMET_BONUSPORC.Value               :=
    //DM.TBMetasMET_BONUSVALOR.Value              :=
    //DM.TBMetasMET_CODIGO.Value                  :=
    //DM.TBMetasMET_COMISSAO.Value                :=
    //DM.TBMetasMET_COMISSAOTIPO.Value            :=
    DM.TBMetasMET_DTATUALIZACAO.Value           :=Date;
    //DM.TBMetasMET_DTBAIXA.Value               :=
    //DM.TBMetasMET_DTCADASTRO.Value            :=
    DM.TBMetasMET_DTFIM.Value	                  :=MET_DTFIM;
    DM.TBMetasMET_DTINICIO.Value                :=MET_DTINICIO;
    DM.TBMetasMET_HRATUALIZACAO.Value           :=Time;
    //DM.TBMetasMET_HRCADASTRO.Value            :=
    //DM.TBMetasMET_METAATINGIDA.Value            :=
    DM.TBMetasMET_METAVALOR.Value               :=MET_METAVALOR;
    //DM.TBMetasMET_SALARIOBASE.Value             :=
    //DM.TBMetasMET_STATUS.Value                  :=MET_STATUS;
    //DM.TBMetasMET_TOTALCOMISSAO.Value           :=
    //DM.TBMetasMET_TOTALLIQUIDADO.Value          :=
    //DM.TBMetasMET_TOTALVENDAS.Value             :=
    //DM.TBMetasMET_TOTALVENDASCOMISSIONADAS.Value:=
    DM.TBMetasMET_USUARIO.Value                 :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMetasMET_VENDEDOR.Value                :=MET_VENDEDOR;
    DM.TBMetas.Post;

    Registro:=DM.TBMetas.ToJSONObject;
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
  MET_VENDEDOR: Integer;
  MET_DTINICIO, MET_DTFIM: TDate;
  MET_METAVALOR: Extended;
begin
  try
    MET_VENDEDOR :=Req.ContentFields.Field('MET_VENDEDOR').AsInteger;
    MET_DTINICIO :=Req.ContentFields.Field('MET_DTINICIO').AsDate;
    MET_DTFIM    :=Req.ContentFields.Field('MET_DTFIM').AsDate;
    MET_METAVALOR:=Req.ContentFields.Field('MET_METAVALOR').AsExtended;

    Obrigatorio(MET_VENDEDOR.ToString,'Vendedor','0');
    Obrigatorio(MET_METAVALOR.ToString,'Valor','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) ');

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=MET_VENDEDOR;
    DM.TBVendedores.Open;

    DM.TBMetas.Open;
    DM.TBMetas.Insert;
    //DM.TBMetasMET_BONUSPORC.Value               :=
    //DM.TBMetasMET_BONUSVALOR.Value              :=
    //DM.TBMetasMET_CODIGO.Value                  :=
    DM.TBMetasMET_COMISSAO.Value                :=DM.TBVendedoresVEN_COMISSAO.Value;
    DM.TBMetasMET_COMISSAOTIPO.Value            :=DM.TBVendedoresVEN_COMISSAOTIPO.Value;
    DM.TBMetasMET_DTATUALIZACAO.Value           :=Date;
    //DM.TBMetasMET_DTBAIXA.Value               :=
    DM.TBMetasMET_DTCADASTRO.Value              :=Date;
    DM.TBMetasMET_DTFIM.Value	                  :=MET_DTFIM;
    DM.TBMetasMET_DTINICIO.Value                :=MET_DTINICIO;
    DM.TBMetasMET_HRATUALIZACAO.Value           :=Time;
    DM.TBMetasMET_HRCADASTRO.Value              :=Time;
    //DM.TBMetasMET_METAATINGIDA.Value            :=
    DM.TBMetasMET_METAVALOR.Value               :=MET_METAVALOR;
    DM.TBMetasMET_SALARIOBASE.Value             :=DM.TBVendedoresVEN_SALARIOBASE.Value;
    DM.TBMetasMET_STATUS.Value                  :='A';
    //DM.TBMetasMET_TOTALCOMISSAO.Value           :=
    //DM.TBMetasMET_TOTALLIQUIDADO.Value          :=
    //DM.TBMetasMET_TOTALVENDAS.Value             :=
    //DM.TBMetasMET_TOTALVENDASCOMISSIONADAS.Value:=
    DM.TBMetasMET_USUARIO.Value                 :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBMetasMET_VENDEDOR.Value                :=MET_VENDEDOR;
    DM.TBMetas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMetas.ToJSONObject);

    DM.TBVendedores.Close;
    DM.TBMetas.Close;

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
  MET_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MET_CODIGO:=SoNumeros(Req.ContentFields.Field('MET_CODIGO').AsString);
    if MET_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBMetas.Delete;

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
  MET_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MET_CODIGO:=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    if MET_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+MET_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select MET_CODIGO, MET_DESCRICAO from METAS where MET_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=MET_CODIGO;
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

function Recalcular(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  MET_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MET_CODIGO:=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    if MET_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(recalcular) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBMetasMET_STATUS.Value='B' then
    raise Exception.Create('Meta já baixada.');

    //totaliza as vendas finalizadas do vendedor.
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    //alterado VED_VALORTOTAL para VED_TOTALITENS.
//    DM.QYAux.SQL.Add(
//      'select coalesce(sum(VED_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(VED_TOTALITENS),0) as TOTALVENDAS from VENDAS '+
//      'where VED_STATUS=''F'' and VED_ENTRADASAIDA=''S'' and VED_VENDEDOR=:vendedor and VED_DTEMISSAO between :datainicial and :datafinal');
    //alterado para fazer a consulta na tabela de NFE.
    DM.Query1.SQL.Add(
      'select coalesce(sum(NFE_TOTALCOMISSAO),0) as TOTALCOMISSAO, coalesce(sum(NFE_TOTALITENS),0) as TOTALVENDAS, '+
      'coalesce(sum( iif(NFE_TOTALCOMISSAO > 0, NFE_TOTALITENS, 0)), 0) as TOTALVENDASCOMISSIONADAS from NFE '+
      'where NFE_STATUS=''F'' and NFE_ENTRADASAIDA=''S'' and NFE_VENDEDOR=:vendedor and NFE_DTEMISSAO between :datainicial and :datafinal');
    DM.Query1.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
    DM.Query1.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
    DM.Query1.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
    DM.Query1.Open;

    //totaliza as contas a receber baixadas do vendedor.
    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add(
      'select coalesce(sum(REE_VALOR),0) as TOTALLIQUIDADO from RECEBER '+
      'where REE_STATUS=''B'' and REE_VENDEDOR=:vendedor and REE_DTPAGAMENTO between :datainicial and :datafinal');
    DM.Query2.ParamByName('datainicial').AsDate:=DM.TBMetasMET_DTINICIO.Value;
    DM.Query2.ParamByName('datafinal').AsDate:=DM.TBMetasMET_DTFIM.Value;
    DM.Query2.ParamByName('vendedor').AsInteger:=DM.TBMetasMET_VENDEDOR.Value;
    DM.Query2.Open;

    //atualiza a meta.
    DM.TBMetas.Edit;

    if DM.TBMetasMET_COMISSAOTIPO.Value='FATURAMENTO' then
    DM.TBMetasMET_TOTALCOMISSAO.Value:=DM.Query1.FieldByName('TOTALCOMISSAO').AsExtended;

    if DM.TBMetasMET_COMISSAOTIPO.Value='RECEBIMENTO' then
    DM.TBMetasMET_TOTALCOMISSAO.Value:=(DM.Query2.FieldByName('TOTALLIQUIDADO').AsExtended / 100) * DM.TBMetasMET_COMISSAO.AsExtended;

    DM.TBMetasMET_TOTALLIQUIDADO.Value:=DM.Query2.FieldByName('TOTALLIQUIDADO').AsExtended;
    DM.TBMetasMET_TOTALVENDAS.Value:=DM.Query1.FieldByName('TOTALVENDAS').AsExtended;
    DM.TBMetasMET_TOTALVENDASCOMISSIONADAS.Value:=DM.Query1.FieldByName('TOTALVENDASCOMISSIONADAS').AsExtended;

    DM.TBMetasMET_METAATINGIDA.Value:=0;
    if DM.TBMetasMET_TOTALVENDAS.Value>0 then
    DM.TBMetasMET_METAATINGIDA.Value:=Decimais(((DM.TBMetasMET_TOTALVENDAS.AsExtended * 100) / DM.TBMetasMET_METAVALOR.AsExtended),2);

    //seleciona a faixa da meta atingida.
    DM.Query3.Close;
    DM.Query3.SQL.Clear;
    DM.Query3.SQL.Add('select MTG_PORCENTAGEM from METASCONFIG where :meta between MTG_INICIO and MTG_FIM');
    DM.Query3.ParamByName('meta').AsFMTBCD:=DM.TBMetasMET_METAATINGIDA.Value;
    DM.Query3.Open;

    DM.TBMetasMET_BONUSPORC.Value:=DM.Query3.FieldByName('MTG_PORCENTAGEM').AsFloat;
    DM.TBMetasMET_BONUSVALOR.Value:=Decimais(((DM.TBMetasMET_SALARIOBASE.AsExtended / 100) * DM.TBMetasMET_BONUSPORC.AsExtended),2);

    DM.TBMetas.Post;
    DM.Query1.Close;
    DM.Query2.Close;
    DM.Query3.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMetas.ToJSONObject);
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
  MET_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MET_CODIGO:=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    if MET_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(baixar) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBMetasMET_STATUS.Value='B' then
    raise Exception.Create('Meta já baixada.');

    DM.TBMetas.Edit;
    DM.TBMetasMET_STATUS.Value:='B';
    DM.TBMetas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMetas.ToJSONObject);
    Result:=Retorno;
    DM.TBMetas.Close;
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
  MET_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    MET_CODIGO:=Req.ContentFields.Field('MET_CODIGO').AsInteger;
    if MET_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(reabrir) '+MET_CODIGO.ToString);

    DM.TBMetas.Close;
    DM.TBMetas.ParamByName('codigo').AsInteger:=MET_CODIGO;
    DM.TBMetas.Open;
    if DM.TBMetas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    if DM.TBMetasMET_STATUS.Value='A' then
    raise Exception.Create('Meta já aberta.');

    DM.TBMetas.Edit;
    DM.TBMetasMET_STATUS.Value:='A';
    DM.TBMetas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBMetas.ToJSONObject);
    Result:=Retorno;
    DM.TBMetas.Close;
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
