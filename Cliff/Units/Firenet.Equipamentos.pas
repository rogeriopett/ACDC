//Atualizacoes:
//2026.11.18 - EQP_DTGERAL, EQP_DTFILTRO e EQP_DTLIMPEZA com SetData (aaaa-mm-dd; vazio grava nulo em vez de 30/12/1899).
unit Firenet.Equipamentos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.EQUIPAMENTOS: ';
  Campos='EQP_ANOFAB, EQP_ANOMOD, EQP_CHASSI, EQP_CODIGO, EQP_COMBUSTIVEL, EQP_COR, EQP_DESCRICAO, EQP_MARCA, EQP_MODELO, EQP_SERIE';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/equipamentos', VerificarOperacao);
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

      if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
      if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
      //if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
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
  Where, Pesquisa: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina  :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    Pesquisa:=San(Req.ContentFields.Field('pesquisa').AsString);

    Where:='';
    if Pesquisa<>'' then Where:=Where+' and ((EQP_DESCRICAO like '+QuotedStr('%'+Pesquisa+'%')+') or (EQP_SERIE like '+QuotedStr('%'+Pesquisa+'%')+'))';

    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', Pesquisa: '+Pesquisa);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from EQUIPAMENTOS where EQP_STATUS=''A'' '+Where+' order by EQP_DESCRICAO');
    DM.Query1.Open;
    DM.Query1.FetchAll;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('rpp',FormMain.Edit2.Text);
    Retorno.AddPair('contador',DM.Query1.RecordCount);
    Retorno.AddPair('msg',DM.Query1.ToJSONArray);
    DM.Query1.Close;
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
  EQP_CODIGO: Integer;
begin
  try
    EQP_CODIGO:=SoNumeros(Req.ContentFields.Field('EQP_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+EQP_CODIGO.ToString);

    DM.TBEquipamentos.Close;
    DM.TBEquipamentos.ParamByName('codigo').AsInteger:=EQP_CODIGO;
    DM.TBEquipamentos.Open;
    if DM.TBEquipamentos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBEquipamentos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBEquipamentos.Close;
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
  EQP_DESCRICAO: String;
  EQP_CODIGO, EQP_CLIENTE: Integer;
begin
  try
    EQP_CODIGO   :=SoNumeros(Req.ContentFields.Field('EQP_CODIGO').AsString);
    EQP_CLIENTE  :=SoNumeros(Req.ContentFields.Field('EQP_CLIENTE').AsString);
    EQP_DESCRICAO:=San(Req.ContentFields.Field('EQP_DESCRICAO').AsString);

    Obrigatorio(EQP_CODIGO.ToString,'Código','0');
    Obrigatorio(EQP_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(EQP_DESCRICAO,'Descrição');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+EQP_CODIGO.ToString);

    DM.TBEquipamentos.Close;
    DM.TBEquipamentos.ParamByName('codigo').AsInteger:=EQP_CODIGO;
    DM.TBEquipamentos.Open;
    if DM.TBEquipamentos.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=EQP_CLIENTE;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    DM.TBEquipamentos.Edit;
    DM.TBEquipamentosEQP_ACESSORIOS.Value :=San(Req.ContentFields.Field('EQP_ACESSORIOS').AsString);
    DM.TBEquipamentosEQP_ANOFAB.Value     :=SoNumeros(Req.ContentFields.Field('EQP_ANOFAB').AsString);
    DM.TBEquipamentosEQP_ANOMOD.Value     :=SoNumeros(Req.ContentFields.Field('EQP_ANOMOD').AsString);
    DM.TBEquipamentosEQP_CHASSI.Value     :=San(Req.ContentFields.Field('EQP_CHASSI').AsString);
    DM.TBEquipamentosEQP_CLIENTE.Value    :=EQP_CLIENTE;
    DM.TBEquipamentosEQP_COMBUSTIVEL.Value:=San(Req.ContentFields.Field('EQP_COMBUSTIVEL').AsString);
    DM.TBEquipamentosEQP_COR.Value        :=San(Req.ContentFields.Field('EQP_COR').AsString);
    DM.TBEquipamentosEQP_DESCRICAO.Value  :=EQP_DESCRICAO;
    SetData(DM.TBEquipamentosEQP_DTFILTRO, Req.ContentFields.Field('EQP_DTFILTRO').AsString);
    SetData(DM.TBEquipamentosEQP_DTGERAL, Req.ContentFields.Field('EQP_DTGERAL').AsString);
    SetData(DM.TBEquipamentosEQP_DTLIMPEZA, Req.ContentFields.Field('EQP_DTLIMPEZA').AsString);
    DM.TBEquipamentosEQP_LOCALIZACAO.Value:=San(Req.ContentFields.Field('EQP_LOCALIZACAO').AsString);
    DM.TBEquipamentosEQP_MARCA.Value      :=San(Req.ContentFields.Field('EQP_MARCA').AsString);
    DM.TBEquipamentosEQP_MODELO.Value     :=San(Req.ContentFields.Field('EQP_MODELO').AsString);
    DM.TBEquipamentosEQP_REVENDEDOR.Value :=San(Req.ContentFields.Field('EQP_REVENDEDOR').AsString);
    DM.TBEquipamentosEQP_SERIE.Value      :=San(Req.ContentFields.Field('EQP_SERIE').AsString);
    DM.TBEquipamentosEQP_STATUS.Value     :=San(Req.ContentFields.Field('EQP_STATUS').AsString);
    DM.TBEquipamentosEQP_TAMANHO.Value    :=San(Req.ContentFields.Field('EQP_TAMANHO').AsString);
    DM.TBEquipamentosEQP_USUARIO.Value    :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBEquipamentos.Post;

    Registro:=DM.TBEquipamentos.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);
    DM.TBEquipamentos.Close;
    DM.TBClientes.Close;
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
  EQP_DESCRICAO: String;
  EQP_CLIENTE: Integer;
begin
  try
    EQP_DESCRICAO:=San(Req.ContentFields.Field('EQP_DESCRICAO').AsString);
    EQP_CLIENTE:=SoNumeros(Req.ContentFields.Field('EQP_CLIENTE').AsString);

    Obrigatorio(EQP_CLIENTE.ToString,'Cliente','0');
    Obrigatorio(EQP_DESCRICAO,'Descrição');

    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=EQP_CLIENTE;
    DM.TBClientes.Open;
    if DM.TBClientes.IsEmpty then
    raise Exception.Create('Cliente não encontrado.');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) Descrição: '+EQP_DESCRICAO+', Cliente: '+EQP_CLIENTE.ToString);

    DM.TBEquipamentos.Open;
    DM.TBEquipamentos.Insert;
    DM.TBEquipamentosEQP_ACESSORIOS.Value :=San(Req.ContentFields.Field('EQP_ACESSORIOS').AsString);
    DM.TBEquipamentosEQP_ANOFAB.Value     :=SoNumeros(Req.ContentFields.Field('EQP_ANOFAB').AsString);
    DM.TBEquipamentosEQP_ANOMOD.Value     :=SoNumeros(Req.ContentFields.Field('EQP_ANOMOD').AsString);
    DM.TBEquipamentosEQP_CHASSI.Value     :=San(Req.ContentFields.Field('EQP_CHASSI').AsString);
    DM.TBEquipamentosEQP_CLIENTE.Value    :=EQP_CLIENTE;
    DM.TBEquipamentosEQP_COMBUSTIVEL.Value:=San(Req.ContentFields.Field('EQP_COMBUSTIVEL').AsString);
    DM.TBEquipamentosEQP_COR.Value        :=San(Req.ContentFields.Field('EQP_COR').AsString);
    DM.TBEquipamentosEQP_DESCRICAO.Value  :=EQP_DESCRICAO;
    SetData(DM.TBEquipamentosEQP_DTFILTRO, Req.ContentFields.Field('EQP_DTFILTRO').AsString);
    SetData(DM.TBEquipamentosEQP_DTGERAL, Req.ContentFields.Field('EQP_DTGERAL').AsString);
    SetData(DM.TBEquipamentosEQP_DTLIMPEZA, Req.ContentFields.Field('EQP_DTLIMPEZA').AsString);
    DM.TBEquipamentosEQP_LOCALIZACAO.Value:=San(Req.ContentFields.Field('EQP_LOCALIZACAO').AsString);
    DM.TBEquipamentosEQP_MARCA.Value      :=San(Req.ContentFields.Field('EQP_MARCA').AsString);
    DM.TBEquipamentosEQP_MODELO.Value     :=San(Req.ContentFields.Field('EQP_MODELO').AsString);
    DM.TBEquipamentosEQP_REVENDEDOR.Value :=San(Req.ContentFields.Field('EQP_REVENDEDOR').AsString);
    DM.TBEquipamentosEQP_SERIE.Value      :=San(Req.ContentFields.Field('EQP_SERIE').AsString);
    DM.TBEquipamentosEQP_STATUS.Value     :=San(Req.ContentFields.Field('EQP_STATUS').AsString);
    DM.TBEquipamentosEQP_TAMANHO.Value    :=San(Req.ContentFields.Field('EQP_TAMANHO').AsString);
    DM.TBEquipamentosEQP_USUARIO.Value    :=Usuario.GetValue<String>('USU_LOGIN');
    DM.TBEquipamentos.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEquipamentos.ToJSONObject);
    DM.TBEquipamentos.Close;
    DM.TBClientes.Close;
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

//function Excluir(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
//var
//  VEN_CODIGO: Integer;
//  Retorno: TJSONObject;
//begin
//  try
//    VEN_CODIGO:=SoNumeros(Req.ContentFields.Field('VEN_CODIGO').AsString);
//    if VEN_CODIGO=0 then
//    raise Exception.Create('Código não informado');
//
//    FormMain.Logar('FIRENET.VENDEDORES: (excluir) '+VEN_CODIGO.ToString);
//
//    DM.TBVendedores.Close;
//    DM.TBVendedores.ParamByName('codigo').AsInteger:=VEN_CODIGO;
//    DM.TBVendedores.Open;
//    if DM.TBVendedores.IsEmpty then
//    raise Exception.Create('Registro não encontrado.');
//
//    DM.TBVendedores.Delete;
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

function Localizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  EQP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EQP_CODIGO:=Req.ContentFields.Field('EQP_CODIGO').AsInteger;
    if EQP_CODIGO.ToString='0' then Exit;
    //raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+EQP_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select '+Campos+' from EQUIPAMENTOS where EQP_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=EQP_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
    DM.Query1.Close;
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
