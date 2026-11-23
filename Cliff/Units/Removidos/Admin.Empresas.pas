unit Admin.Empresas;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModAngus, System.Hash;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Localizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  Campos='EMP_BASEDADOS, EMP_CNPJ, EMP_CODIGO, EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_FONE1, EMP_HASH, EMP_NOME, EMP_RESPONSAVEL, EMP_STATUS, USU_NOME';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/admin/empresas', VerificarOperacao);
  //THorse.Post('/admin/usuarios', VerificarOperacao);
  FormMain.Logar('ADMIN.EMPRESAS: Registrou rotas.');
end;

procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  DM: TDMAngus;
  Retorno: TJSONObject;
  Operacao: String;
begin
  try
    DM:=TDMAngus.Create(nil);

    Operacao:=Req.ContentFields.Field('op').AsString;

    if Operacao='listar'     then Res.Send( Listar(DM,Req)     ).Status(200) else
    if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
    if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
    if Operacao='inserir'    then Res.Send( Inserir(DM,Req)    ).Status(200) else
    if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
    if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
    begin
      FormMain.Logar('ADMIN.EMPRESAS: sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado.');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Body: TJSONObject;
  Pagina, Registros, Skip, EMP_CODIGO: Integer;
  Where, EMP_CNPJ, EMP_NOME: String;
  Retorno: TJSONObject;
begin
  Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
  EMP_CNPJ   :=FormatarCPFCNPJ(Req.ContentFields.Field('EMP_CNPJ').AsString);
  EMP_CODIGO :=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);
  EMP_NOME   :=San(Req.ContentFields.Field('EMP_NOME').AsString);
  Where:='';
  if EMP_CODIGO<>0 then Where:=Where+' and EMP_CODIGO='+EMP_CODIGO.ToString;
  if EMP_CNPJ<>''  then Where:=Where+' and EMP_CNPJ='+QuotedStr(EMP_CNPJ);
  if EMP_NOME<>''  then Where:=Where+' and upper(EMP_NOME) like '+QuotedStr(UpperCase(EMP_NOME)+'%');

  FormMain.Logar('ADMIN.EMPRESAS: (listar) Pagina: '+Pagina.ToString+', CODIGO: '+EMP_CODIGO.ToString+', NOME: '+EMP_NOME+', CNPJ: '+EMP_CNPJ);

  Registros:=StrToInt(FormMain.Edit2.Text);
  Skip:=Registros * (Pagina - 1);

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from EMPRESAS left join USUARIOS on EMP_RESPONSAVEL=USU_CODIGO where 1=1 '+Where+' order by EMP_NOME');
  DM.Query1.Open;
  DM.Query1.FetchAll;

  Retorno:=TJSONObject.Create;
  Retorno.AddPair('erro','N');
  Retorno.AddPair('rpp',FormMain.Edit2.Text);
  Retorno.AddPair('contador',DM.Query1.RecordCount);
  Retorno.AddPair('msg',DM.Query1.ToJSONArray);

  DM.Query1.Close;
  Result:=Retorno;
end;

function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);
    if EMP_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.EMPRESAS: (visualizar) '+EMP_CODIGO.ToString);

    DM.TBEmpresas.Close;
    DM.TBEmpresas.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.TBEmpresas.Open;
    if DM.TBEmpresas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEmpresas.ToJSONObject);

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.EMPRESAS: (visualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);

    if EMP_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.EMPRESAS: (atualizar): '+EMP_CODIGO.ToString);

    DM.TBEmpresas.Close;
    DM.TBEmpresas.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.TBEmpresas.Open;
    if DM.TBEmpresas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBEmpresas.Edit;
    DM.TBEmpresasEMP_API.Value:=San(Req.ContentFields.Field('EMP_API').AsString);
    DM.TBEmpresasEMP_BASEDADOS.Value:=San(Req.ContentFields.Field('EMP_BASEDADOS').AsString,0);
    DM.TBEmpresasEMP_CNPJ.Value:=FormatarCPFCNPJ(Req.ContentFields.Field('EMP_CNPJ').AsString);
    //DM.TBEmpresasEMP_CODIGO.Value:=
    DM.TBEmpresasEMP_DTATUALIZACAO.Value:=Date;
    //DM.TBEmpresasEMP_DTCADASTRO.Value:=
    DM.TBEmpresasEMP_FONE1.Value:=FormatarFone(Req.ContentFields.Field('EMP_FONE1').AsString);
    DM.TBEmpresasEMP_HASH.Value:=THashMD5.GetHashString('EMP_'+DM.TBEmpresasEMP_CODIGO.Value.ToString);
    DM.TBEmpresasEMP_HRATUALIZACAO.Value:=Time;
    //DM.TBEmpresasEMP_HRCADASTRO.Value:=
    DM.TBEmpresasEMP_NOME.Value:=San(Req.ContentFields.Field('EMP_NOME').AsString);
    DM.TBEmpresasEMP_RESPONSAVEL.Value:=Req.ContentFields.Field('EMP_RESPONSAVEL').AsInteger;
    DM.TBEmpresasEMP_STATUS.Value:=San(Req.ContentFields.Field('EMP_STATUS').AsString);
    DM.TBEmpresas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEmpresas.ToJSONObject);

    DM.TBEmpresas.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.EMPRESAS: (atualizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  Retorno: TJSONObject;
  EMP_DESCRICAO: String;
begin
  try
    EMP_DESCRICAO:=San(Req.ContentFields.Field('EMP_DESCRICAO').AsString);
    Obrigatorio(EMP_DESCRICAO,'Descrição');

    FormMain.Logar('ADMIN.EMPRESAS: (inserir) '+EMP_DESCRICAO);

    DM.TBEmpresas.Open;
    DM.TBEmpresas.Insert;
    DM.TBEmpresasEMP_API.Value:=San(Req.ContentFields.Field('EMP_API').AsString);
    DM.TBEmpresasEMP_BASEDADOS.Value:=San(Req.ContentFields.Field('EMP_BASEDADOS').AsString,0);
    DM.TBEmpresasEMP_CNPJ.Value:=FormatarCPFCNPJ(Req.ContentFields.Field('EMP_CNPJ').AsString);
    //DM.TBEmpresasEMP_CODIGO.Value:=
    DM.TBEmpresasEMP_DTATUALIZACAO.Value:=Date;
    DM.TBEmpresasEMP_DTCADASTRO.Value:=Date;
    DM.TBEmpresasEMP_FONE1.Value:=FormatarFone(Req.ContentFields.Field('EMP_FONE1').AsString);
    DM.TBEmpresasEMP_HASH.Value:='';
    DM.TBEmpresasEMP_HRATUALIZACAO.Value:=Time;
    DM.TBEmpresasEMP_HRCADASTRO.Value:=Time;
    DM.TBEmpresasEMP_NOME.Value:=San(Req.ContentFields.Field('EMP_NOME').AsString);
    DM.TBEmpresasEMP_RESPONSAVEL.Value:=Req.ContentFields.Field('EMP_RESPONSAVEL').AsInteger;
    DM.TBEmpresasEMP_STATUS.Value:=San(Req.ContentFields.Field('EMP_STATUS').AsString);
    DM.TBEmpresas.Post;

    DM.TBEmpresas.Edit;
    DM.TBEmpresasEMP_HASH.Value:=THashMD5.GetHashString('EMP_'+DM.TBEmpresasEMP_CODIGO.Value.ToString);
    DM.TBEmpresas.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBEmpresas.ToJSONObject);

    DM.TBEmpresas.Close;

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.EMPRESAS: (inserir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=SoNumeros(Req.ContentFields.Field('EMP_CODIGO').AsString);
    if EMP_CODIGO=0 then
    raise Exception.Create('Código não informado.');

    FormMain.Logar('ADMIN.EMPRESAS: (excluir) '+EMP_CODIGO.ToString);

    DM.TBEmpresas.Close;
    DM.TBEmpresas.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.TBEmpresas.Open;
    if DM.TBEmpresas.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBEmpresas.Delete;
    DM.TBEmpresas.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg','Usuário eliminado com sucesso.');

    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.EMPRESAS: (excluir) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

function Localizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=Req.ContentFields.Field('EMP_CODIGO').AsInteger;
    if EMP_CODIGO.ToString='0' then
    raise Exception.Create('Código não informado');

    FormMain.Logar('ADMIN.EMPRESAS: (localizar) '+EMP_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select EMP_CODIGO, EMP_NOME from EMPRESAS where EMP_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=EMP_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query1.ToJSONObject);
    Result:=Retorno;

  except on ex:exception do
    begin
      FormMain.Logar('ADMIN.EMPRESAS: (localizar) exception: '+ex.Message);
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      Retorno.AddPair('token','valido');
      Retorno.AddPair('msg',ex.Message);
      Result:=Retorno;
    end;
  end;
end;

end.
