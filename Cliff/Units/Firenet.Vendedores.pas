unit Firenet.Vendedores;

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
function Combo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Saldo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.VENDEDORES: ';
  Campos='VEN_CNPJ, VEN_CODIGO, VEN_COMISSAO, VEN_COMISSAOTIPO, VEN_COR, VEN_CPF, VEN_EMAIL, VEN_FONE1, VEN_FONE2, VEN_FONE3, VEN_NOME, VEN_SALARIOBASE, VEN_STATUS';

implementation

uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/vendedores', VerificarOperacao);
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
      if Operacao='excluir'    then Res.Send( Excluir(DM,Req)    ).Status(200) else
      if Operacao='localizar'  then Res.Send( Localizar(DM,Req)  ).Status(200) else
      if Operacao='combo'      then Res.Send( Combo(DM,Req)      ).Status(200) else
      if Operacao='saldo'      then Res.Send( Saldo(DM,Req)      ).Status(200) else
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
  Pagina, Registros, Skip, VEN_CODIGO: Integer;
  Where, VEN_EMAIL, VEN_NOME, Pesquisa: String;
  Listagem: TJSONArray;
  Retorno: TJSONObject;
begin
  try
    Pagina     :=SoNumeros(Req.ContentFields.Field('pagina').AsString);
    VEN_CODIGO :=SoNumeros(Req.ContentFields.Field('VEN_CODIGO').AsString);
    VEN_EMAIL  :=San(Req.ContentFields.Field('VEN_EMAIL').AsString);
    VEN_NOME   :=San(Req.ContentFields.Field('VEN_NOME').AsString);
    Pesquisa   :=San(Req.ContentFields.Field('pesquisa').AsString);
    Where:='';
    if VEN_CODIGO<>0 then Where:=Where+' and VEN_CODIGO='+VEN_CODIGO.ToString;
    if VEN_EMAIL<>'' then Where:=Where+' and VEN_EMAIL like '+QuotedStr(VEN_EMAIL+'%');
    if VEN_NOME<>''  then Where:=Where+' and VEN_NOME like '+QuotedStr(VEN_NOME+'%');

    //se mandar pesquisa, refaz o where.
    if Pesquisa<>'' then Where:=' and ( (VEN_NOME like '+QuotedStr(Pesquisa+'%')+') or (VEN_EMAIL like '+QuotedStr(Pesquisa+'%')+') or (VEN_CODIGO like '+QuotedStr(Pesquisa+'%')+') )';


    FormMain.Logar(PrefixLog+'(listar) Pagina: '+Pagina.ToString+', CODIGO: '+VEN_CODIGO.ToString+', NOME: '+VEN_NOME);

    Registros:=StrToInt(FormMain.Edit2.Text);
    Skip:=Registros * (Pagina - 1);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select first('+Registros.ToString+') skip('+Skip.ToString+') '+Campos+' from VENDEDORES where 1=1 '+Where+' order by VEN_NOME');
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
  VEN_CODIGO: Integer;
begin
  try
    VEN_CODIGO:=SoNumeros(Req.ContentFields.Field('VEN_CODIGO').AsString);

    FormMain.Logar(PrefixLog+'(visualizar) '+VEN_CODIGO.ToString);

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=VEN_CODIGO;
    DM.TBVendedores.Open;
    if DM.TBVendedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBVendedores.ToJSONObject;
    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Registro);

    DM.TBVendedores.Close;
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
  VEN_NOME: String;
  VEN_CODIGO, VEN_EMAILCONTA: Integer;
begin
  try
    VEN_CODIGO     :=SoNumeros(Req.ContentFields.Field('VEN_CODIGO').AsString);
    VEN_EMAILCONTA :=SoNumeros(Req.ContentFields.Field('VEN_EMAILCONTA').AsString);
    VEN_NOME       :=San(Req.ContentFields.Field('VEN_NOME').AsString);

    Obrigatorio(VEN_EMAILCONTA.ToString,'Conta de email','0');
    Obrigatorio(VEN_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar) '+VEN_CODIGO.ToString);

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=VEN_CODIGO;
    DM.TBVendedores.Open;
    if DM.TBVendedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendedores.Edit;
    DM.TBVendedoresVEN_ATUALIZAR.Value      :='S';
    DM.TBVendedoresVEN_BAIRRO.Value         :=San(Req.ContentFields.Field('VEN_BAIRRO').AsString);
    DM.TBVendedoresVEN_CEP.Value            :=FormatarCEP(Req.ContentFields.Field('VEN_CEP').AsString);
    DM.TBVendedoresVEN_CIDADE.Value         :=San(Req.ContentFields.Field('VEN_CIDADE').AsString);
    DM.TBVendedoresVEN_CIDADECODIGO.Value   :=SoNumeros(Req.ContentFields.Field('VEN_CIDADECODIGO').AsString);
    DM.TBVendedoresVEN_CNPJ.Value           :=FormatarCPFCNPJ(Req.ContentFields.Field('VEN_CNPJ').AsString);
    DM.TBVendedoresVEN_COMISSAO.Value       :=Req.ContentFields.Field('VEN_COMISSAO').AsExtended;
    DM.TBVendedoresVEN_COMISSAOTIPO.Value   :=San(Req.ContentFields.Field('VEN_COMISSAOTIPO').AsString);
    DM.TBVendedoresVEN_COMPLEMENTO.Value    :=San(Req.ContentFields.Field('VEN_COMPLEMENTO').AsString);
    DM.TBVendedoresVEN_CONTATO.Value        :=San(Req.ContentFields.Field('VEN_CONTATO').AsString);
    DM.TBVendedoresVEN_COR.Value            :=San(Req.ContentFields.Field('VEN_COR').AsString);
    DM.TBVendedoresVEN_CPF.Value            :=FormatarCPFCNPJ(Req.ContentFields.Field('VEN_CPF').AsString);
    DM.TBVendedoresVEN_DTATUALIZACAO.Value  :=Date;
    DM.TBVendedoresVEN_EMAIL.Value          :=San(Req.ContentFields.Field('VEN_EMAIL').AsString);
    DM.TBVendedoresVEN_EMAILCONTA.Value     :=SoNumeros(Req.ContentFields.Field('VEN_EMAILCONTA').AsString);
    DM.TBVendedoresVEN_ENDERECO.Value       :=San(Req.ContentFields.Field('VEN_ENDERECO').AsString);
    DM.TBVendedoresVEN_ESTADO.Value         :=San(Req.ContentFields.Field('VEN_ESTADO').AsString);
    DM.TBVendedoresVEN_ESTADOCIVIL.Value    :=San(Req.ContentFields.Field('VEN_ESTADOCIVIL').AsString);
    DM.TBVendedoresVEN_FONE1.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE1').AsString);
    DM.TBVendedoresVEN_FONE2.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE2').AsString);
    DM.TBVendedoresVEN_FONE3.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE3').AsString);
    DM.TBVendedoresVEN_HRATUALIZACAO.Value  :=Time;
    DM.TBVendedoresVEN_IE.Value             :=San(Req.ContentFields.Field('VEN_IE').AsString);
    DM.TBVendedoresVEN_MOSTRARAGENDA.Value  :=San(Req.ContentFields.Field('VEN_MOSTRARAGENDA').AsString);
    DM.TBVendedoresVEN_NOME.Value           :=VEN_NOME;
    DM.TBVendedoresVEN_NUMERO.Value         :=San(Req.ContentFields.Field('VEN_NUMERO').AsString);
    DM.TBVendedoresVEN_OBSERVACOES.Value    :=San(Req.ContentFields.Field('VEN_OBSERVACOES').AsString,0);
    DM.TBVendedoresVEN_REGPROFISSIONAL.Value:=San(Req.ContentFields.Field('VEN_REGPROFISSIONAL').AsString);
    DM.TBVendedoresVEN_RG.Value             :=San(Req.ContentFields.Field('VEN_RG').AsString);
    DM.TBVendedoresVEN_SALARIOBASE.Value    :=Req.ContentFields.Field('VEN_SALARIOBASE').AsExtended;
    //DM.TBVendedoresVEN_SALDOATUAL.Value   :=
    //DM.TBVendedoresVEN_SALDOHORAS.Value   :=
    DM.TBVendedoresVEN_SITE.Value           :=San(Req.ContentFields.Field('VEN_SITE').AsString,0);
    DM.TBVendedoresVEN_STATUS.Value         :=San(Req.ContentFields.Field('VEN_STATUS').AsString,2);
    DM.TBVendedoresVEN_TIPOPESSOA.Value     :=San(Req.ContentFields.Field('VEN_TIPOPESSOA').AsString);
    DM.TBVendedoresVEN_USUARIO.Value        :=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBVendedores.Post;

    Registro:=DM.TBVendedores.ToJSONObject;
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
  VEN_NOME: String;
  VEN_EMAILCONTA: Integer;
begin
  try
    VEN_EMAILCONTA :=SoNumeros(Req.ContentFields.Field('VEN_EMAILCONTA').AsString);
    VEN_NOME       :=San(Req.ContentFields.Field('VEN_NOME').AsString);

    Obrigatorio(VEN_EMAILCONTA.ToString,'Conta de email','0');
    Obrigatorio(VEN_NOME,'Nome');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(inserir) Nome: '+VEN_NOME);

    DM.TBVendedores.Open;
    DM.TBVendedores.Insert;
    DM.TBVendedoresVEN_ATUALIZAR.Value      :='S';
    DM.TBVendedoresVEN_BAIRRO.Value         :=San(Req.ContentFields.Field('VEN_BAIRRO').AsString);
    DM.TBVendedoresVEN_CEP.Value            :=FormatarCEP(Req.ContentFields.Field('VEN_CEP').AsString);
    DM.TBVendedoresVEN_CIDADE.Value         :=San(Req.ContentFields.Field('VEN_CIDADE').AsString);
    DM.TBVendedoresVEN_CIDADECODIGO.Value   :=SoNumeros(Req.ContentFields.Field('VEN_CIDADECODIGO').AsString);
    DM.TBVendedoresVEN_CNPJ.Value           :=FormatarCPFCNPJ(Req.ContentFields.Field('VEN_CNPJ').AsString);
    DM.TBVendedoresVEN_COMISSAO.Value       :=Req.ContentFields.Field('VEN_COMISSAO').AsExtended;
    DM.TBVendedoresVEN_COMISSAOTIPO.Value   :=San(Req.ContentFields.Field('VEN_COMISSAOTIPO').AsString);
    DM.TBVendedoresVEN_COMPLEMENTO.Value    :=San(Req.ContentFields.Field('VEN_COMPLEMENTO').AsString);
    DM.TBVendedoresVEN_CONTATO.Value        :=San(Req.ContentFields.Field('VEN_CONTATO').AsString);
    DM.TBVendedoresVEN_COR.Value            :=San(Req.ContentFields.Field('VEN_COR').AsString);
    DM.TBVendedoresVEN_CPF.Value            :=FormatarCPFCNPJ(Req.ContentFields.Field('VEN_CPF').AsString);
    DM.TBVendedoresVEN_DTATUALIZACAO.Value  :=Date;
    DM.TBVendedoresVEN_DTCADASTRO.Value     :=Date;
    DM.TBVendedoresVEN_EMAIL.Value          :=San(Req.ContentFields.Field('VEN_EMAIL').AsString);
    DM.TBVendedoresVEN_EMAILCONTA.Value     :=SoNumeros(Req.ContentFields.Field('VEN_EMAILCONTA').AsString);
    DM.TBVendedoresVEN_ENDERECO.Value       :=San(Req.ContentFields.Field('VEN_ENDERECO').AsString);
    DM.TBVendedoresVEN_ESTADO.Value         :=San(Req.ContentFields.Field('VEN_ESTADO').AsString);
    DM.TBVendedoresVEN_ESTADOCIVIL.Value    :=San(Req.ContentFields.Field('VEN_ESTADOCIVIL').AsString);
    DM.TBVendedoresVEN_FONE1.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE1').AsString);
    DM.TBVendedoresVEN_FONE2.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE2').AsString);
    DM.TBVendedoresVEN_FONE3.Value          :=FormatarFone(Req.ContentFields.Field('VEN_FONE3').AsString);
    DM.TBVendedoresVEN_HRATUALIZACAO.Value  :=Time;
    DM.TBVendedoresVEN_HRCADASTRO.Value     :=Time;
    DM.TBVendedoresVEN_IE.Value             :=San(Req.ContentFields.Field('VEN_IE').AsString);
    DM.TBVendedoresVEN_MOSTRARAGENDA.Value  :=San(Req.ContentFields.Field('VEN_MOSTRARAGENDA').AsString);
    DM.TBVendedoresVEN_NOME.Value           :=VEN_NOME;
    DM.TBVendedoresVEN_NUMERO.Value         :=San(Req.ContentFields.Field('VEN_NUMERO').AsString);
    DM.TBVendedoresVEN_OBSERVACOES.Value    :=San(Req.ContentFields.Field('VEN_OBSERVACOES').AsString,0);
    DM.TBVendedoresVEN_REGPROFISSIONAL.Value:=San(Req.ContentFields.Field('VEN_REGPROFISSIONAL').AsString);
    DM.TBVendedoresVEN_RG.Value             :=San(Req.ContentFields.Field('VEN_RG').AsString);
    DM.TBVendedoresVEN_SALARIOBASE.Value    :=Req.ContentFields.Field('VEN_SALARIOBASE').AsExtended;
    DM.TBVendedoresVEN_SALDOATUAL.Value     :=0;
    DM.TBVendedoresVEN_SALDOHORAS.Value     :=0;
    DM.TBVendedoresVEN_SITE.Value           :=San(Req.ContentFields.Field('VEN_SITE').AsString,0);
    DM.TBVendedoresVEN_STATUS.Value         :=San(Req.ContentFields.Field('VEN_STATUS').AsString,2);
    DM.TBVendedoresVEN_TIPOPESSOA.Value     :=San(Req.ContentFields.Field('VEN_TIPOPESSOA').AsString);
    DM.TBVendedoresVEN_USUARIO.Value        :=Usuario.GetValue<String>('USU_APELIDO');

    DM.TBVendedores.Post;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.TBVendedores.ToJSONObject);

    DM.TBVendedores.Close;

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
  VEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VEN_CODIGO:=SoNumeros(Req.ContentFields.Field('VEN_CODIGO').AsString);
    if VEN_CODIGO=0 then
    raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(excluir) '+VEN_CODIGO.ToString);

    DM.TBVendedores.Close;
    DM.TBVendedores.ParamByName('codigo').AsInteger:=VEN_CODIGO;
    DM.TBVendedores.Open;
    if DM.TBVendedores.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBVendedores.Delete;

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
  VEN_CODIGO: Integer;
  Retorno: TJSONObject;
begin
  try
    VEN_CODIGO:=Req.ContentFields.Field('VEN_CODIGO').AsInteger;
    if VEN_CODIGO.ToString='0' then Exit;
    //raise Exception.Create('Código não informado');

    FormMain.Logar(PrefixLog+'(localizar) '+VEN_CODIGO.ToString);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select VEN_CODIGO, VEN_COMISSAO, VEN_COMISSAOTIPO, VEN_SALARIOBASE, VEN_NOME from VENDEDORES where VEN_CODIGO=:codigo');
    DM.Query1.ParamByName('codigo').AsInteger:=VEN_CODIGO;
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

function Combo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, TodosObj: TJSONObject;
  Listagem: TJSONArray;
  Todos: Boolean;
begin
  try
    Todos:=Req.ContentFields.Field('todos').AsBoolean;

    FormMain.Logar(PrefixLog+'(combo)');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    if Todos then
    DM.Query1.SQL.Add('select ''TODOS'' as "VALUE", ''TODOS'' as "LABEL", 0 as SORTORDER from RDB$DATABASE union '+
      'select cast(VEN_CODIGO as varchar(15)) as "VALUE", VEN_NOME as "LABEL", 1 as SORTORDER from VENDEDORES order by 3, 2') else
    DM.Query1.SQL.Add('select cast(VEN_CODIGO as varchar(15)) as "VALUE", VEN_NOME as "LABEL" from VENDEDORES order by VEN_NOME');
    DM.Query1.Open;

    Listagem:=TJSONArray.Create;
    Listagem:=DM.Query1.ToJSONArray;
    DM.Query1.Close;

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',Listagem);
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

function Saldo(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Usuario, UsuEmp, UsuFirenet: TJSONObject;
  VEN_CODIGO: Integer;
  Empresa: String;
begin
  try
    Empresa:=San(Req.ContentFields.Field('empresa').AsString);

    Usuario:=GetUserFromToken(Req);

//291   $USU1=GetUsuarioByHash($usuario); //retorna usuario no sistema angus. $usuario contem o hash do usuario.
//292   $USE=GetUsuEmp($empresa,$USU1->USU_CODIGO); //retorna o registro em USUEMP que contem o login no Firenet da empresa selecionada. $empresa contem o hash da empresa.
//293   $USU2=GetUsuarioFirenet($USE->USE_FIRENET); //retorna o usuario com o login no sistema firenet
//294   $VEN=GetVendedor($USU2->USU_VENDEDOR); //finalmente, o registro do vendedor no firenet.
//
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select USU_VENDEDOR from USUARIOS where USU_LOGIN=:codigo'); //codigo do vendedor na tabela de usuarios.
    DM.Query1.ParamByName('codigo').AsString:=UsuEmp.GetValue<String>('USE_FIRENET');
    DM.Query1.Open;

    DM.Query2.Close;
    DM.Query2.SQL.Clear;
    DM.Query2.SQL.Add('select VEN_CODIGO, VEN_NOME, VEN_SALDOATUAL from VENDEDORES where VEN_CODIGO=:codigo');
    DM.Query2.ParamByName('codigo').AsInteger:=DM.Query1.FieldByName('USU_VENDEDOR').AsInteger;
    DM.Query2.Open;

    FormMain.Logar(PrefixLog+'(saldo) '+DM.Query1.FieldByName('USU_VENDEDOR').AsString);

    if DM.Query2.IsEmpty then
    raise Exception.Create('Registro não localizado.');

    Retorno:=TJSONObject.Create;
    Retorno.AddPair('erro','N');
    Retorno.AddPair('msg',DM.Query2.ToJSONObject);
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
