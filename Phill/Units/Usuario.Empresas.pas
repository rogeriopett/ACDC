unit Usuario.Empresas;

interface

uses Main, DataModAngus, Horse, System.SysUtils, System.JSON, DataSet.Serialize, System.Hash;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Visualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;

const
  PrefixLog='USUARIO.EMPRESAS: ';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.Post('/usuario/empresas', VerificarOperacao);
  FormMain.Logar(PrefixLog+'Registrou rotas.');
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
    begin
      FormMain.Logar(PrefixLog+'sem op.');
      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','S');
      //Retorno.AddPair('token','valido');
      Retorno.AddPair('msg','Recurso não encontrado');
      Res.Send<TJSONObject>(Retorno).Status(404);
    end;

  finally
     FreeAndNil(DM);
  end;
end;

function Listar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var Usuario, Retorno: TJSONObject;
begin
  Usuario:=GetUserFromToken(Req);

  FormMain.Logar(PrefixLog+'(listar) USU_CODIGO: '+Usuario.GetValue<String>('USU_CODIGO'));

  DM.Query1.Close;
  DM.Query1.SQL.Clear;
  DM.Query1.SQL.Add('select * from USUEMP left join EMPRESAS on USE_EMPRESA=EMP_CODIGO where USE_USUARIO=:codigo order by EMP_NOME');
  DM.Query1.ParamByName('codigo').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
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
  EMP_CODIGO: String;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=Req.ContentFields.Field('EMP_CODIGO').AsString;
    if EMP_CODIGO='' then
    raise Exception.Create('Código de empresa não informado.');

    FormMain.Logar(PrefixLog+'(visualizar) '+EMP_CODIGO);

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add(
      'select EMP_CNPJ, EMP_CODIGO, EMP_FONE1, EMP_HASH, EMP_DTATUALIZACAO, EMP_DTCADASTRO, EMP_NOME, EMP_RESPONSAVEL, '+
      'EMP_STATUS, USU_NOME from EMPRESAS '+
      'left join USUARIOS on EMP_RESPONSAVEL=USU_CODIGO where EMP_HASH=:hash order by EMP_CODIGO');
    DM.Query1.ParamByName('hash').AsString:=EMP_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Empresa não encontrada.');

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

function Atualizar(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CODIGO, EMP_FONE1, EMP_NOME: String;
  Retorno: TJSONObject;
begin
  try
    EMP_CODIGO:=San(Req.ContentFields.Field('EMP_CODIGO').AsString);
    EMP_FONE1:=FormatarFone(Req.ContentFields.Field('EMP_FONE1').AsString);
    EMP_NOME :=San(Req.ContentFields.Field('EMP_NOME').AsString);

    Obrigatorio(EMP_CODIGO,'Código');
    Obrigatorio(EMP_FONE1,'Fone');
    Obrigatorio(EMP_NOME,'Nome');

    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select * from EMPRESAS where EMP_HASH=:hash');
    DM.Query1.ParamByName('hash').AsString:=EMP_CODIGO;
    DM.Query1.Open;
    if DM.Query1.IsEmpty then
    raise Exception.Create('Empresa não encontrada.');

    FormMain.Logar(PrefixLog+'(atualizar): '+EMP_CODIGO);

    DM.TBEmpresas.Close;
    DM.TBEmpresas.ParamByName('codigo').AsInteger:=DM.Query1.FieldByName('EMP_CODIGO').AsInteger;
    DM.TBEmpresas.Open;
    DM.TBEmpresas.Edit;
    DM.TBEmpresasEMP_FONE1.Value:=EMP_FONE1;
    DM.TBEmpresasEMP_NOME.Value:=EMP_NOME;
    DM.TBEmpresas.Post;

    DM.Query1.Close;
    DM.TBEmpresas.Close;

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

function Inserir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
var
  EMP_CNPJ, EMP_FONE1, EMP_NOME: String;
  Retorno, Usuario: TJSONObject;
begin
  try
    EMP_CNPJ :=FormatarCPFCNPJ(Req.ContentFields.Field('EMP_CNPJ').AsString);
    EMP_FONE1:=FormatarFone(Req.ContentFields.Field('EMP_FONE1').AsString);
    EMP_NOME :=San(Req.ContentFields.Field('EMP_NOME').AsString);

    Obrigatorio(EMP_CNPJ,'CNPJ');
    Obrigatorio(EMP_FONE1,'Fone');
    Obrigatorio(EMP_NOME,'Nome');

    if not Cnpj(EMP_CNPJ) then
    raise Exception.Create('CNPJ Inválido.');

    FormMain.Logar(PrefixLog+'(inserir): '+EMP_CNPJ);
    Usuario:=GetUserFromToken(Req);

    {$REGION 'empresa já está cadastrada como cliente da Runtime?'}
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('select * from EMPRESAS where EMP_CNPJ=:cnpj');
    DM.Query1.ParamByName('cnpj').AsString:=EMP_CNPJ;
    DM.Query1.Open;
    if not DM.Query1.IsEmpty then
    begin

      DM.Query2.Close;
      DM.Query2.SQL.Clear;
      DM.Query2.SQL.Add('select count(*) as QTDE from USUEMP left join EMPRESAS on USE_EMPRESA=EMP_CODIGO where USE_USUARIO=:usuario and USE_EMPRESA=:empresa');
      DM.Query2.ParamByName('usuario').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
      DM.Query2.ParamByName('empresa').AsInteger:=DM.Query1.FieldByName('EMP_CODIGO').AsInteger;
      DM.Query2.Open;
      if DM.Query2.FieldByName('QTDE').AsInteger > 0 then
      raise Exception.Create('Empresa já cadastrada.');

      DM.Query2.Close;
      DM.Query2.SQL.Clear;
      DM.Query2.SQL.Add('insert into USUEMP (USE_EMPRESA, USE_USUARIO, USE_ACESSO) values (:EMP_CODIGO, :USU_CODIGO, :USE_ACESSO)');
      DM.Query2.ParamByName('EMP_CODIGO').AsInteger:=DM.Query1.FieldByName('EMP_CODIGO').AsInteger;
      DM.query2.ParamByName('USU_CODIGO').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
      DM.Query2.ParamByName('USE_ACESSO').AsString:='P'; //acesso pendente.
      DM.Query2.ExecSQL;
      DM.TRQuery2.Commit;

      Retorno:=TJSONObject.Create;
      Retorno.AddPair('erro','N');
      Retorno.AddPair('msg','A empresa foi cadastrada, mas seu acesso ainda está pendente de liberação.');

      //enviar email para rogerio@pett.com.br
      EnviarEmailAngus(DM,'rogerio@pett.com.br','','Liberar acesso de usuario para empresa já cadastrada no Angus.',
        'Empresa: '+DM.Query1.FieldByName('EMP_CODIGO').AsString+' - '+DM.Query1.FieldByName('EMP_NOME').AsString+'<br/><br/>'+
        'Usuário: '+Usuario.GetValue<String>('USU_CODIGO')+' - '+Usuario.GetValue<String>('USU_NOME')+'<br/><br/>'
      );

    end else
    {$ENDREGION}

    {$REGION 'empresa ainda não cadastrada na Runtime.'}
    begin
      DM.TBEmpresas.Open;
      DM.TBEmpresas.Insert;
      DM.TBEmpresasEMP_API.Value:='';
      DM.TBEmpresasEMP_BASEDADOS.Value:='';
      DM.TBEmpresasEMP_CNPJ.Value:=EMP_CNPJ;
      DM.TBEmpresasEMP_DTATUALIZACAO.Value:=Date;
      DM.TBEmpresasEMP_DTCADASTRO.Value:=Date;
      DM.TBEmpresasEMP_FONE1.Value:=EMP_FONE1;
      DM.TBEmpresasEMP_HASH.Value:='';
      DM.TBEmpresasEMP_HRATUALIZACAO.Value:=Time;
      DM.TBEmpresasEMP_HRCADASTRO.Value:=Time;
      DM.TBEmpresasEMP_NOME.Value:=EMP_NOME;
      DM.TBEmpresasEMP_RESPONSAVEL.Value:=Usuario.GetValue<Integer>('USU_CODIGO');
      DM.TBEmpresasEMP_STATUS.Value:='N'; //nova.
      DM.TBEmpresas.Post;

      DM.TBEmpresas.Edit;
      DM.TBEmpresasEMP_HASH.Value:=THashMD5.GetHashString('EMP_'+DM.TBEmpresasEMP_CODIGO.Value.ToString);
      DM.TBEmpresas.Post;

      //cadastra a empresa para o usuario com acesso pendente.
      DM.Query2.Close;
      DM.Query2.SQL.Clear;
      DM.Query2.SQL.Add('insert into USUEMP (USE_EMPRESA, USE_USUARIO, USE_ACESSO) values (:EMP_CODIGO, :USU_CODIGO, :USE_ACESSO)');
      DM.Query2.ParamByName('EMP_CODIGO').AsInteger:=DM.TBEmpresasEMP_CODIGO.Value;
      DM.query2.ParamByName('USU_CODIGO').AsInteger:=Usuario.GetValue<Integer>('USU_CODIGO');
      DM.Query2.ParamByName('USE_ACESSO').AsString:='P'; //acesso pendente.
      DM.TRQuery2.StartTransaction;
      DM.Query2.ExecSQL;
      DM.TRQuery2.Commit;

      DM.TBEmpresas.Close;

      //enviar email para rogerio@pett.com.br
      EnviarEmailAngus(DM,'rogerio@pett.com.br','','Nova empresa cadastrada no Angus.',
        'Empresa: '+DM.TBEmpresasEMP_CODIGO.Value.ToString+' - '+DM.TBEmpresasEMP_NOME.Value+'<br/><br/>'+
        'Usuário: '+Usuario.GetValue<String>('USU_CODIGO')+' - '+Usuario.GetValue<String>('USU_NOME')+'<br/><br/>'
      );

      Result:=Listar(DM,Req);
    end;
    {$ENDREGION}
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

function Excluir(DM: TDMAngus; Req: THorseRequest): TJSONObject;
begin
  //ainda nao disponível.
end;

end.
