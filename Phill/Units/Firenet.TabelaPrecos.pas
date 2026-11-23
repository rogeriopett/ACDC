unit Firenet.TabelaPrecos;

interface

uses Horse, System.JSON, System.SysUtils, DataSet.Serialize, Main, DataModFirenet;

procedure RegistrarRotas;
procedure VerificarOperacao(Req: THorseRequest; Res: THorseResponse; Next: TProc);

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;

const
  PrefixLog='FIRENET.TABPRECO: ';
  Campos='TAB_CODIGO, TAB_DESCRICAO, TAB_DTATUALIZACAO, TAB_DTCADASTRO, TAB_STATUS, TAB_TIPO, TAB_USUARIO, TAB_VALOR';

implementation
uses Funcoes;

procedure RegistrarRotas;
begin
  THorse.AddCallback(FormMain.Privado()).Post('/firenet/tabelaprecos', VerificarOperacao);
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

      if Operacao='visualizar' then Res.Send( Visualizar(DM,Req) ).Status(200) else
      if Operacao='atualizar'  then Res.Send( Atualizar(DM,Req)  ).Status(200) else
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

function Visualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro: TJSONObject;
begin
  try
    FormMain.Logar(PrefixLog+'(visualizar)');

    DM.TBTabPreco.Close;
    DM.TBTabPreco.ParamByName('codigo').AsInteger:=1; //tabela unica.
    DM.TBTabPreco.Open;
    if DM.TBTabPreco.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    Registro:=DM.TBTabPreco.ToJSONObject;
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

function Atualizar(DM: TDMFirenet; Req: THorseRequest): TJSONObject;
var
  Retorno, Registro, Usuario: TJSONObject;
  Listagem: TJSONArray;
begin
  try
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO1').AsString),'Descrição 01');
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO2').AsString),'Descrição 02');
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO3').AsString),'Descrição 03');
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO4').AsString),'Descrição 04');
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO5').AsString),'Descrição 05');
    Obrigatorio(San(Req.ContentFields.Field('TAB_DESCRICAO6').AsString),'Descrição 06');

    Usuario:=GetUserFromToken(Req);

    FormMain.Logar(PrefixLog+'(atualizar)');

    DM.TBTabPreco.Close;
    DM.TBTabPreco.ParamByName('codigo').AsInteger:=1; //TAB_CODIGO;
    DM.TBTabPreco.Open;
    if DM.TBTabPreco.IsEmpty then
    raise Exception.Create('Registro não encontrado.');

    DM.TBTabPreco.Edit;
    DM.TBTabPrecoTAB_DESCRICAO1.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO1').AsString);
    DM.TBTabPrecoTAB_DESCRICAO2.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO2').AsString);
    DM.TBTabPrecoTAB_DESCRICAO3.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO3').AsString);
    DM.TBTabPrecoTAB_DESCRICAO4.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO4').AsString);
    DM.TBTabPrecoTAB_DESCRICAO5.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO5').AsString);
    DM.TBTabPrecoTAB_DESCRICAO6.Value:=San(Req.ContentFields.Field('TAB_DESCRICAO6').AsString);
    DM.TBTabPrecoTAB_DTATUALIZACAO.Value:=Date;
    DM.TBTabPrecoTAB_HRATUALIZACAO.Value:=Time;
    DM.TBTabPrecoTAB_MARGEM1.Value:=Req.ContentFields.Field('TAB_MARGEM1').AsExtended;
    DM.TBTabPrecoTAB_MARGEM2.Value:=Req.ContentFields.Field('TAB_MARGEM2').AsExtended;
    DM.TBTabPrecoTAB_MARGEM3.Value:=Req.ContentFields.Field('TAB_MARGEM3').AsExtended;
    DM.TBTabPrecoTAB_MARGEM4.Value:=Req.ContentFields.Field('TAB_MARGEM4').AsExtended;
    DM.TBTabPrecoTAB_MARGEM5.Value:=Req.ContentFields.Field('TAB_MARGEM5').AsExtended;
    DM.TBTabPrecoTAB_MARGEM6.Value:=Req.ContentFields.Field('TAB_MARGEM6').AsExtended;
    DM.TBTabPrecoTAB_USUARIO.Value:=Usuario.GetValue<String>('USU_APELIDO');
    DM.TBTabPreco.Post;

    Registro:=DM.TBTabPreco.ToJSONObject;
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

end.
