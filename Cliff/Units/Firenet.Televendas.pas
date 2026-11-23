//Atualizacoes:
//2026.11.18 - Datas em aaaa-mm-dd (PettFieldDate do Brian): filtro do listar com .AsDate; TEV_DATAPROX com SetData (vazio grava nulo).
unit Firenet.Televendas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Baixar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Reabrir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.TELEVENDAS: ';
  Campos='TEV_CODIGO, TEV_CLIENTE, TEV_DATAPROX, TEV_DESCRICAO, TEV_HORAPROX, TEV_MOTIVO, TEV_STATUS, TEV_VENDEDOR, TEV_VIA, CLI_NOME, MOT_DESCRICAO, VEN_NOME, VIA_DESCRICAO';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/televendas', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMFirenet;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    try
      DM:=TDMFirenet.Create(nil);

      Operacao:=San(Req.ContentFields.Field('op').AsString);

      if Operacao='listar'         then Res.Send( Listar(DM,Req)         ).Status(200) else
      if Operacao='visualizar'     then Res.Send( Visualizar(DM,Req)     ).Status(200) else
      if Operacao='atualizar'      then Res.Send( Atualizar(DM,Req)      ).Status(200) else
      if Operacao='inserir'        then Res.Send( Inserir(DM,Req)        ).Status(200) else
      if Operacao='baixar'         then Res.Send( Baixar(DM,Req)         ).Status(200) else
      if Operacao='reabrir'        then Res.Send( Reabrir(DM,Req)        ).Status(200) else
//      if Operacao='excluir'        then Res.Send( Excluir(DM,Req)        ).Status(200) else
//      if Operacao='localizar'      then Res.Send( Localizar(DM,Req)      ).Status(200) else
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
  Where, Status, Andamento, Pesquisa: String;
  DataInicial, DataFinal: TDateTime;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Status     :=San(Req.ContentFields.Field('status').AsString);
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);
    DataInicial:=Req.ContentFields.Field('datainicial').AsDate;
    DataFinal:=Req.ContentFields.Field('datafinal').AsDate;

    Where:='';
    if Status   <>'TODOS' then Where:=Where+' and TEV_STATUS='+QuotedStr(Status);
    if Pesquisa <>''      then Where:=Where+' and CLI_NOME like '+QuotedStr(Pesquisa+'%');

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Status: '+Status+', Pesquisa: '+Pesquisa);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from TELEVENDAS '+
      'left join MOTIVOS on TEV_MOTIVO=MOT_CODIGO '+
      'left join CLIENTES on TEV_CLIENTE=CLI_CODIGO '+
      'left join VENDEDORES on TEV_VENDEDOR=VEN_CODIGO '+
      'left join VIAS on TEV_VIA=VIA_CODIGO '+
      'where TEV_DATA between :datainicial and :datafinal '+Where+
      'order by CLI_NOME'
    );
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
  TEV_CODIGO: Integer;
begin
  try
    TEV_CODIGO:=SoNumeros(Req.ContentFields.Field('TEV_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+TEV_CODIGO.ToString);

    DM.TBTelevendas.Close;
    DM.TBTelevendas.ParamByName('codigo').AsInteger:=TEV_CODIGO;
    DM.TBTelevendas.Open;
    if DM.TBTelevendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBTelevendas.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBTelevendas.Close;

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
  TEV_CLIENTE, TEV_CODIGO, TEV_MOTIVO, TEV_VIA: Integer;
  //: String;
begin
  try
    TEV_CLIENTE:=Req.ContentFields.Field('TEV_CLIENTE').AsInteger;
    TEV_CODIGO :=Req.ContentFields.Field('TEV_CODIGO').AsInteger;
    TEV_MOTIVO :=Req.ContentFields.Field('TEV_MOTIVO').AsInteger;
    TEV_VIA    :=Req.ContentFields.Field('TEV_VIA').AsInteger;

    Obrigatorio(TEV_CODIGO.ToString,'Código','0');
    Obrigatorio(TEV_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(TEV_MOTIVO.ToString,'Motivo','0');
    Obrigatorio(TEV_VIA.ToString,'Via','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+TEV_CODIGO.ToString+', data: '+Req.ContentFields.Field('TEV_DATAPROX').AsString);

    DM.TBTelevendas.Close;
    DM.TBTelevendas.ParamByName('codigo').AsInteger:=TEV_CODIGO;
    DM.TBTelevendas.Open;
    if DM.TBTelevendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTelevendas.Edit;
    //DM.TBTelevendasTEV_BAIXADOPOR.Value   :=
    DM.TBTelevendasTEV_CLIENTE.Value        :=TEV_CLIENTE;
    //DM.TBTelevendasTEV_CODIGO.Value       :=
    DM.TBTelevendasTEV_DATA.Value           :=Date;
    //DM.TBTelevendasTEV_DATABAIXA.Value    :=
    SetData(DM.TBTelevendasTEV_DATAPROX, Req.ContentFields.Field('TEV_DATAPROX').AsString);
    //DM.TBTelevendasTEV_DEMODATA.Value     :=
    //DM.TBTelevendasTEV_DEMOHORA.Value     :=
    DM.TBTelevendasTEV_DESCRICAO.Value      :=San(Req.ContentFields.Field('TEV_DESCRICAO').AsString);
    DM.TBTelevendasTEV_DTATUALIZACAO.Value  :=Date;
    //DM.TBTelevendasTEV_DTCADASTRO.Value   :=
    //DM.TBTelevendasTEV_FIXA.Value         :='N';
    DM.TBTelevendasTEV_HORAPROX.Value       :=StrToTime(FormatarHora(Req.ContentFields.Field('TEV_HORAPROX').AsString));
    //DM.TBTelevendasTEV_HRATUALIZACAO.Value:=
    //DM.TBTelevendasTEV_HRCADASTRO.value   :=
    DM.TBTelevendasTEV_MOTIVO.Value         :=TEV_MOTIVO;
    DM.TBTelevendasTEV_OBSERVACOES.Value    :=San(Req.ContentFields.Field('TEV_OBSERVACOES').AsString,0);
    //DM.TBTelevendasTEV_REAGENDADO.Value   :='N';
    //DM.TBTelevendasTEV_STATUS.Value       :='A';
    DM.TBTelevendasTEV_TEMPERATURA.Value    :='01 - SUPER QUENTE';
    DM.TBTelevendasTEV_TEMPERATURADATA.Value:=Date;
    DM.TBTelevendasTEV_TEMPERATURA.Value    :='N';
    DM.TBTelevendasTEV_USUARIO.Value        :=Usuario.GetValue<String>('USU_LOGIN');
    //DM.TBTelevendasTEV_VENDA.Value        :=
    DM.TBTelevendasTEV_VENDEDOR.Value       :=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBTelevendasTEV_VIA.Value            :=TEV_VIA;
    DM.TBTelevendas.Post;

    Registro:=DM.TBTelevendas.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBTelevendas.Close;
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
  TEV_CLIENTE, TEV_MOTIVO, TEV_VIA: Integer;
begin
  try
    TEV_CLIENTE:=SoNumeros(Req.ContentFields.Field('TEV_CLIENTE').AsString);
    TEV_MOTIVO :=SoNumeros(Req.ContentFields.Field('TEV_MOTIVO').AsString);
    TEV_VIA    :=SoNumeros(Req.ContentFields.Field('TEV_VIA').AsString);

    Obrigatorio(TEV_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(TEV_MOTIVO.ToString,'Motivo','0');
    Obrigatorio(TEV_VIA.ToString,'Via de Contato','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) Cliente: '+TEV_CLIENTE.ToString+', Motivo: '+TEV_MOTIVO.ToString+', Via: '+TEV_VIA.ToString);

    DM.TBTelevendas.Open;
    DM.TBTelevendas.Insert;
    //DM.TBTelevendasTEV_BAIXADOPOR.Value   :=
    DM.TBTelevendasTEV_CLIENTE.Value        :=TEV_CLIENTE;
    //DM.TBTelevendasTEV_CODIGO.Value       :=
    DM.TBTelevendasTEV_DATA.Value           :=Date;
    //DM.TBTelevendasTEV_DATABAIXA.Value    :=
    SetData(DM.TBTelevendasTEV_DATAPROX, Req.ContentFields.Field('TEV_DATAPROX').AsString);
    //DM.TBTelevendasTEV_DEMODATA.Value     :=
    //DM.TBTelevendasTEV_DEMOHORA.Value     :=
    DM.TBTelevendasTEV_DESCRICAO.Value      :=San(Req.ContentFields.Field('TEV_DESCRICAO').AsString);
    DM.TBTelevendasTEV_DTATUALIZACAO.Value  :=Date;
    DM.TBTelevendasTEV_DTCADASTRO.Value     :=Date;
    DM.TBTelevendasTEV_FIXA.Value           :='N';
    DM.TBTelevendasTEV_HORAPROX.Value       :=StrToTime(FormatarHora(Req.ContentFields.Field('TEV_HORAPROX').AsString));
    DM.TBTelevendasTEV_HRATUALIZACAO.Value  :=Time;
    DM.TBTelevendasTEV_HRCADASTRO.value     :=Time;
    DM.TBTelevendasTEV_MOTIVO.Value         :=TEV_MOTIVO;
    DM.TBTelevendasTEV_OBSERVACOES.Value    :=San(Req.ContentFields.Field('TEV_OBSERVACOES').AsString,0);
    DM.TBTelevendasTEV_REAGENDADO.Value     :='N';
    DM.TBTelevendasTEV_STATUS.Value         :='A';
    DM.TBTelevendasTEV_TEMPERATURA.Value    :='01 - SUPER QUENTE';
    DM.TBTelevendasTEV_TEMPERATURADATA.Value:=Date;
    DM.TBTelevendasTEV_TEMPERATURA.Value    :='N';
    DM.TBTelevendasTEV_USUARIO.Value        :=Usuario.GetValue<String>('USU_LOGIN');
    //DM.TBTelevendasTEV_VENDA.Value        :=
    DM.TBTelevendasTEV_VENDEDOR.Value       :=Usuario.GetValue<Integer>('USU_VENDEDOR');
    DM.TBTelevendasTEV_VIA.Value            :=TEV_VIA;
    DM.TBTelevendas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBTelevendas.ToJSONObject);
    DM.TBTelevendas.Close;
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
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  TEV_CODIGO: Integer;
begin
  try
    TEV_CODIGO :=Req.ContentFields.Field('TEV_CODIGO').AsInteger;

    Obrigatorio(TEV_CODIGO.ToString,'Código','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(baixar) '+TEV_CODIGO.ToString);

    DM.TBTelevendas.Close;
    DM.TBTelevendas.ParamByName('codigo').AsInteger:=TEV_CODIGO;
    DM.TBTelevendas.Open;
    if DM.TBTelevendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTelevendas.Edit;
    DM.TBTelevendasTEV_BAIXADOPOR.Value   :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBTelevendasTEV_DTATUALIZACAO.Value:=Date;
    DM.TBTelevendasTEV_HRATUALIZACAO.Value:=Time;
    DM.TBTelevendasTEV_STATUS.Value       :='B';
    DM.TBTelevendasTEV_USUARIO.Value      :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBTelevendas.Post;

    Registro:=DM.TBTelevendas.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBTelevendas.Close;
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

function Reabrir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
  TEV_CODIGO: Integer;
begin
  try
    TEV_CODIGO :=Req.ContentFields.Field('TEV_CODIGO').AsInteger;

    Obrigatorio(TEV_CODIGO.ToString,'Código','0');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(baixar) '+TEV_CODIGO.ToString);

    DM.TBTelevendas.Close;
    DM.TBTelevendas.ParamByName('codigo').AsInteger:=TEV_CODIGO;
    DM.TBTelevendas.Open;
    if DM.TBTelevendas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTelevendas.Edit;
//    DM.TBTelevendasTEV_BAIXADOPOR.Value   :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBTelevendasTEV_DTATUALIZACAO.Value:=Date;
    DM.TBTelevendasTEV_HRATUALIZACAO.Value:=Time;
    DM.TBTelevendasTEV_STATUS.Value       :='A';
    DM.TBTelevendasTEV_USUARIO.Value      :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBTelevendas.Post;

    Registro:=DM.TBTelevendas.ToJSONObject;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBTelevendas.Close;
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

//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var
//  CPG_CODIGO: Integer;
//  Retorno: TJSONObject;
//begin
//  try
//    CPG_CODIGO:=SoNumeros(Req.ContentFields.Field('CPG_CODIGO').AsString);
//    if CPG_CODIGO=0 then
//    raise Exception.Create('Código não informado');
//
//    FormMain.Logar(PrefixLog+'(excluir) '+CPG_CODIGO.ToString);
//
//    DM.TBCondicoes.Close;
//    DM.TBCondicoes.ParamByName('codigo').AsInteger:=CPG_CODIGO;
//    DM.TBCondicoes.Open;
//    if DM.TBCondicoes.IsEmpty then
//    raise Exception.Create('Registro não encontrado.');
//
//    DM.TBCondicoes.Delete;
//
//    Retorno:=TJSONObject.Create;
//    Retorno.AddPair('erro','N');
//    Retorno.AddPair('msg','Registro eliminado com sucesso.');
//
//    Result:=Retorno;
//
//  except on ex:exception do
//    begin
//      Retorno:=TJSONObject.Create;
//      Retorno.AddPair('erro','S');
//      Retorno.AddPair('token','valido');
//      Retorno.AddPair('msg',ex.Message);
//      Result:=Retorno;
//    end;
//  end;
//end;

//function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var
//  CPG_CODIGO: Integer;
//  Retorno: TJSONObject;
//begin
//  try
//    CPG_CODIGO:=Req.ContentFields.Field('CPG_CODIGO').AsInteger;
//    if CPG_CODIGO.ToString='0' then
//    raise Exception.Create('Código não informado');
//
//    FormMain.Logar(PrefixLog+'(localizar) '+CPG_CODIGO.ToString);
//
//    DM.Query1.Close;
//    DM.Query1.SQL.Clear;
//    DM.Query1.SQL.Add('select CPG_CODIGO, CPG_DESCRICAO from CONDICOES where CPG_CODIGO=:codigo');
//    DM.Query1.ParamByName('codigo').AsInteger:=CPG_CODIGO;
//    DM.Query1.Open;
//    if DM.Query1.IsEmpty then
//    raise Exception.Create('Registro não localizado.');
//
//    Retorno:=TJSONObject.Create;
//    Retorno.AddPair('erro','N');
//    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
//    Result:=Retorno;
//
//  except on ex:exception do
//    begin
//      Retorno:=TJSONObject.Create;
//      Retorno.AddPair('erro','S');
//      Retorno.AddPair('token','valido');
//      Retorno.AddPair('msg',ex.Message);
//      Result:=Retorno;
//    end;
//  end;
//end;

end.
