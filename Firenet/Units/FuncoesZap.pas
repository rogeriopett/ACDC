unit FuncoesZap;

interface

uses Dialogs, System.SysUtils,
  FireDAC.Comp.Client,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  FireDAC.Stan.Intf,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef;

procedure ConfigurarConexao;
procedure EnviarZap(Destinatario, Mensagem, Arquivo: String);
procedure EnviarZapi(Destinatario, Mensagem, Arquivo: String);

var
  FDConnectionZap: TFDConnection;
  FDQueryZap: TFDQuery;

implementation
uses DataMod, Funcoes1, Data.DB, DataMod2;

procedure ConfigurarConexao;
begin
  DM.TBParametros.Close;
  DM.TBParametros.Open;

  FDConnectionZap:=TFDConnection.Create(nil);
  FDConnectionZap.Connected:=False;
  FDConnectionZap.Params.Clear;
  FDConnectionZap.Params.DriverID:='FB';
  FDConnectionZap.Params.Add('User_Name='+DM.TBParametrosPAR_ZAPUSUARIO.Value);
  FDConnectionZap.Params.Add('Password='+DM.TBParametrosPAR_ZAPSENHA.Value);
  FDConnectionZap.Params.Add('Database='+DM.TBParametrosPAR_ZAPBASE.Value);
  FDConnectionZap.Params.Add('Server='+DM.TBParametrosPAR_ZAPSERVIDOR.Value);
  FDConnectionZap.Params.Add('Port=3050');
  FDConnectionZap.Params.Add('Protocol=TCPIP');
  FDConnectionZap.Params.Add('DriverID=FB');
  //FDConnectionZap.Params.Add('CharacterSet=ISO8859_1')
end;

procedure EnviarZap(Destinatario, Mensagem, Arquivo: String);
var xArquivo, NumeroZap, NomeArquivo, ZapVendedor: String;
begin

  {$REGION 'Checa número do destinatário.'}
  NumeroZap:=RemoveZerosIniciais(SoNumeros(Destinatario));
  AbortIf(Length(NumeroZap) < 10,'Número destinatário inválido!');

  // Remove 9º dígito se tiver 11 dígitos
  if Length(NumeroZap) = 11 then
  NumeroZap:=Copy(NumeroZap, 1, 2) + Copy(NumeroZap, 4, Length(NumeroZap));
  {$ENDREGION}

  {$REGION 'Checa número do vendedor.'}
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
  DM.TBVendedores.Open;
  ZapVendedor:=RemoveZerosIniciais(SoNumeros(DM.TBVendedoresVEN_FONE1.Value));
  AbortIf(Length(ZapVendedor) < 10,'Nenhum número de whatsapp informado no cadastro do vendedor.');

  // Remove 9º dígito se tiver 11 dígitos
  if Length(ZapVendedor) = 11 then
  ZapVendedor:=Copy(ZapVendedor, 1, 2) + Copy(ZapVendedor, 4, Length(ZapVendedor));
  {$ENDREGION}

  if (Trim(Arquivo) <> '') and (FileExists(Arquivo)) then
  NomeArquivo:=ExtractFileName(Arquivo) else
  NomeArquivo:='';

  try
    ConfigurarConexao;
    FDConnectionZap.Connected := True;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao conectar: '+E.Message,mtError,[mbOk],0);
      Exit;
    end;
  end;

  try
    FDQueryZap:=TFDQuery.Create(nil);
    FDQueryZap.Connection:=FDConnectionZap;
    FDQueryZap.SQL.Clear;
    FDQueryZap.SQL.Text:=
      'INSERT INTO MENSAGENS (MSG_ARQUIVO, MSG_ARQUIVONOME, MSG_CODIGO, MSG_DESTINO, MSG_DTSOLICITACAO, MSG_HRSOLICITACAO, MSG_MENSAGEM, MSG_ORIGEM, MSG_STATUS) VALUES '+
      '(:arquivo, :arquivonome, gen_id(GEN_MENSAGENS,1), :destino, :dtsolicitacao, :hrsolicitacao, :mensagem, :origem, :status)'
    ;
    FDQueryZap.ParamByName('arquivonome').AsString:=NomeArquivo;
    FDQueryZap.ParamByName('destino').AsString:=NumeroZap;
    FDQueryZap.ParamByName('dtsolicitacao').AsDate:=Date;
    FDQueryZap.ParamByName('hrsolicitacao').AsTime:=Time;
    FDQueryZap.ParamByName('mensagem').AsString:=Mensagem;
    FDQueryZap.ParamByName('origem').AsString:=ZapVendedor;
    FDQueryZap.ParamByName('status').AsString:='P'; //Pendente, Finalizada, Cancelada.

    if (Arquivo<>'') and FileExists(Arquivo) then
    FDQueryZap.ParamByName('arquivo').LoadFromFile(Arquivo, ftBlob) else
    FDQueryZap.ParamByName('arquivo').Clear;

    FDQueryZap.ExecSQL;
  except
    on E: Exception do
    MessageDlg('Erro ao inserir registro: '+E.Message,mtError,[mbOk],0);
  end;
end;

procedure EnviarZapi(Destinatario, Mensagem, Arquivo: String);
var xArquivo, NumeroZap, NomeArquivo, ZapVendedor: String;
begin

  {$REGION 'Checa número do destinatário.'}
  //NumeroZap:=RemoveZerosIniciais(SoNumeros(Destinatario));
  NumeroZap:=SoNumeros(Destinatario);
  AbortIf(Length(NumeroZap) < 10,'Número destinatário inválido!');

  // Remove 9º dígito se tiver 11 dígitos
//testar sem  if Length(NumeroZap) = 11 then
//  NumeroZap:=Copy(NumeroZap, 1, 2) + Copy(NumeroZap, 4, Length(NumeroZap));
  {$ENDREGION}

  {$REGION 'Checa número do vendedor.'}
//  DM.TBVendedores.Close;
//  DM.TBVendedores.ParamByName('codigo').AsInteger:=DM.UsuarioVendedor;
//  DM.TBVendedores.Open;
//  ZapVendedor:=RemoveZerosIniciais(SoNumeros(DM.TBVendedoresVEN_FONE1.Value));
//  AbortIf(Length(ZapVendedor) < 10,'Nenhum número de whatsapp informado no cadastro do vendedor.');
//
//  // Remove 9º dígito se tiver 11 dígitos
//  if Length(ZapVendedor) = 11 then
//  ZapVendedor:=Copy(ZapVendedor, 1, 2) + Copy(ZapVendedor, 4, Length(ZapVendedor));
  {$ENDREGION}

  if (Trim(Arquivo) <> '') and (FileExists(Arquivo)) then
  NomeArquivo:=ExtractFileName(Arquivo) else
  NomeArquivo:='';

  try
    DM2.TBZapMensagens.Insert;
    if (Arquivo<>'') and FileExists(Arquivo) then
    begin
      DM2.TBZapMensagensZAM_ARQUIVO.LoadFromFile(Arquivo);
      DM2.TBZapMensagensZAM_ARQUIVONOME.Value:=Arquivo;
    end;
    DM2.TBZapMensagensZAM_CONTEUDO.Value:=Mensagem;
    DM2.TBZapMensagensZAM_DESTINO.Value:=NumeroZap;
//    DM2.TBZapMensagensZAM_STATUS.Value:='P'; //Pendente, Finalizada, Cancelada.
//    DM2.TBZapMensagensZAM_VENDEDOR.Value:=DM.UsuarioVendedor;
//    DM2.TBZapMensagensZAM_ZAPINSTANCIA.Value:=DM2.TBZapInstanciasZIN_CODIGO.Value;
    DM2.TBZapMensagens.Post;
  except on E: Exception do
    MessageDlg('Erro ao inserir registro: '+E.Message,mtError,[mbOk],0);
  end;
end;

end.
