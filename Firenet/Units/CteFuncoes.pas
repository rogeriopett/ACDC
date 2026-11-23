unit CteFuncoes;

interface

uses DataMod, DataMod2, CTe_Util_TLB, Dialogs, System.SysUtils;

procedure EnviarCTeSincronoRTC;
procedure ExibirRetorno(cStat: Integer; MsgResultado, Protocolo, ProtocoloDH: String);
procedure GerarArquivoXMLCTe;
function MontarXMLCTe: WideString;
function EnviarXML(const XMLCTe: WideString; out XMLCTeAss, MsgDados, RetWS: WideString; out cStat: Integer; out MsgResultado, Protocolo, ProtocoloDH: WideString): WideString;
procedure GravarArquivos(const XMLCTe, XMLCTeAss, ProcCTe, MsgDados: WideString);
procedure SalvarArquivo(const FileName, Conteudo: WideString);
procedure AtualizarProtocoloCTe(const Protocolo, ProtocoloDH: WideString);

function ValidarCTe: Boolean;
procedure PrepararInterfaceEnvio;

function MontarIdentificacao(U: CTe_Util_Interface): WideString;
function MontarTomador(const U: CTe_Util_Interface): WideString;
//complementares!?
function MontarEmitente(U: CTe_Util_Interface): WideString;
function MontarRemetente(U: CTe_Util_Interface): WideString;
function MontarExpedidor(U: CTe_Util_Interface): WideString;
function MontarRecebedor(U: CTe_Util_Interface): WideString;
function MontarDestinatario(U: CTe_Util_Interface): WideString;
function MontarValoresPrestacao(U: CTe_Util_Interface): WideString;
function MontarIBSCBS(U: CTe_Util_Interface): WideString;
function MontarImpostos(U: CTe_Util_Interface): WideString;
function MontarCTeNormalSubstituto(U: CTe_Util_Interface): WideString;
//12.12. informações do CT-e Complementado
function MontarAutorizados(U: CTe_Util_Interface): WideString;
function MontarResponsavelTecnico(U: CTe_Util_Interface): WideString;
function MontarInfoSuplementar(U: CTe_Util_Interface): WideString; //qrcode.

//subrotinas para CTE Normal Substituto
function MontarInfoCarga(U: CTe_Util_Interface): WideString;
function MontarDoctoCarga(U: CTe_Util_Interface): WideString;

implementation
uses Funcoes1, Conhecimentos, FuncoesFirenet;

procedure EnviarCTeSincronoRTC;
var XMLCTe, XMLCTeAss, MsgDados, MsgResultado, ProcCTe, Protocolo, ProtocoloDH, RetWS: WideString;
  cStat: Integer;
begin
  if not ValidarCTe then Exit;
  PrepararInterfaceEnvio;
  XMLCTEAss:='';
  ProcCTe:='';
  MsgDados:='';

  // Montagem do XML
  XMLCTE:=MontarXMLCTe;
  XMLCTE:=RemoveAcentosXML(XMLCTe);

  // Envio síncrono
  ProcCTe:=EnviarXML(XMLCTe, XMLCTeAss, MsgDados, RetWS, cStat, MsgResultado, Protocolo, ProtocoloDH);

  ExibirRetorno(cStat, MsgResultado, Protocolo, ProtocoloDH);

  GravarArquivos(XMLCTe, XMLCTeAss, ProcCTe, MsgDados);

  if ProcCTe <> '' then
  AtualizarProtocoloCTe(Protocolo, ProtocoloDH);
end;

function MontarXMLCTe: WideString;
var U: CTe_Util_Interface;
  Identificacao, Tomador, Emitente, Remetente, Expedidor, Recebedor, Destinatario, 
  ValoresPrestacao, Impostos, InfoCte, Autorizados, RespTecnico, InfoSuplementar: WideString;
begin
  U:=CoUtil.Create;
  try
    Identificacao   :=MontarIdentificacao(U);
    Tomador         :=MontarTomador(U);
    Emitente        :=MontarEmitente(U);
    Remetente       :=MontarRemetente(U);
    Expedidor       :=MontarExpedidor(U);
    Recebedor       :=MontarRecebedor(U);
    Destinatario    :=MontarDestinatario(U);
    ValoresPrestacao:=MontarValoresPrestacao(U);
    Impostos        :=MontarImpostos(U);
    InfoCte         :=MontarCTeNormalSubstituto(U);
    Autorizados     :=MontarAutorizados(U);
    RespTecnico     :=MontarResponsavelTecnico(U);
    InfoSuplementar :=MontarInfoSuplementar(U);

    Result:=U.CTe_v3a(
      DM.TBParametrosPAR_VERSAOXMLCTE.Value,
      DM2.TBCteCTE_CHAVEACESSO.Value,
      Identificacao, 
      '',
      Emitente,
      Remetente, 
      Expedidor,
      Recebedor,
      Destinatario,
      ValoresPrestacao,
      Impostos,
      InfoCte,
      Autorizados,
      RespTecnico,
      InfoSuplementar
    );

  finally
    U:=nil;
  end;
end;

function EnviarXML(const XMLCTe: WideString; out XMLCTeAss, MsgDados, RetWS: WideString; out cStat: Integer; out MsgResultado, Protocolo, ProtocoloDH: WideString): WideString;
var U: CTe_Util_Interface;
  Proxy: String;
begin
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value = 'S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+DM.TBParametrosPAR_PROXYPORTA.Value.ToString;

  U:=CoUtil.Create;
  try
    Result:=U.EnviaCTeSinc(
      DM.TBParametrosPAR_SIGLAWSCTE.Value,
      DM.TBParametrosPAR_VERSAOXMLCTE.Value,
      DM.TBParametrosPAR_NOMECERTIFICADO.Value,
      XMLCTE,
      MsgDados, RetWS, cStat, MsgResultado, XMLCTeAss, Protocolo, ProtocoloDH,
      Proxy,
      DM.TBParametrosPAR_PROXYUSER.Value,
      DM.TBParametrosPAR_PROXYPASSWORD.Value,
      DM.TBParametrosPAR_LICENCADLLCTE.Value
    );
  finally
    U:=nil;
  end;
end;

procedure GerarArquivoXMLCTe;
var XMLCTe, XMLCTeAss, msgResultado: WideString;
  A, M, D: Word;
  Pasta, Arquivo: String;
  F: TextFile;
  Resultado: Integer;
  U: CTe_Util_Interface;
begin
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value, A, M, D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+A.ToString+'\'+M.ToString+'\';
  ForceDirectories(Pasta);
  Arquivo:=DM2.TBCteCTE_CHAVEACESSO.Value+'-cte.xml';
  XMLCTe:=MontarXMLCTe;
  XMLCTe:=RemoveAcentosXML(XMLCTe);

  U:=CoUtil.Create;
  Resultado:=U.Assinar(XMLCTe,'infCTe',DM.TBParametrosPAR_NOMECERTIFICADO.Value,XMLCTeAss,msgResultado);
  U:=nil;

  if Resultado=0 then
  begin
    AssignFile(F, Pasta+Arquivo, CP_UTF8);
    Rewrite(F);
    Write(F,XMLCTeAss);
    CloseFile(F);
  end;
end;

function MontarTomador(const U: CTe_Util_Interface): WideString;
var Tomador: WideString;
  CodigoClienteTomador: Integer;
begin
  {$REGION 'TOMADOR - REMETENTE'}
  if DM2.TBCteCTE_TOMADOR.Value='0 - REMETENTE' then
  begin
    Tomador:=U.tomador300(
      StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
      LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
      LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
      LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
      DM2.TBCteCTE_REMNOME.Value,
      '',
      LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
      DM2.TBCteCTE_REMENDERECO.Value,
      DM2.TBCteCTE_REMNUMERO.Value,
      DM2.TBCteCTE_REMCOMPLEMENTO.Value,
      DM2.TBCteCTE_REMBAIRRO.Value,
      DM2.TBCteCTE_REMCIDADECODIGO.Value.ToString,
      DM2.TBCteCTE_REMCIDADE.Value,
      LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
      DM2.TBCteCTE_REMESTADO.Value,
      DM2.TBCteCTE_REMPAISCODIGO.Value.ToString,
      DM2.TBCteCTE_REMPAIS.Value,
      ''
    );
    CodigoClienteTomador:=DM2.TBCteCTE_REMETENTE.Value;
  end;
  {$ENDREGION}

  {$REGION 'TOMADOR - EXPEDIDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='1 - EXPEDIDOR' then
  begin
    Tomador:=U.tomador300(
      StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
      LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
      LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
      LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
      DM2.TBCteCTE_EXPNOME.Value,
      '',
      LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
      DM2.TBCteCTE_EXPENDERECO.Value,
      DM2.TBCteCTE_EXPNUMERO.Value,
      DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
      DM2.TBCteCTE_EXPBAIRRO.Value,
      DM2.TBCteCTE_EXPCIDADECODIGO.Value.ToString,
      DM2.TBCteCTE_EXPCIDADE.Value,
      LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
      DM2.TBCteCTE_EXPESTADO.Value,
      DM2.TBCteCTE_EXPPAISCODIGO.Value.ToString,
      DM2.TBCteCTE_EXPPAIS.Value,
      ''
    );
    CodigoClienteTomador:=DM2.TBCteCTE_EXPEDIDOR.Value;
  end;
  {$ENDREGION}

  {$REGION 'TOMADOR - RECEBEDOR'}
  if DM2.TBCteCTE_TOMADOR.Value='2 - RECEBEDOR' then
  begin
    Tomador:=U.tomador300(
      StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
      LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
      LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
      LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
      DM2.TBCteCTE_RECNOME.Value,
      '',
      LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
      DM2.TBCteCTE_RECENDERECO.Value,
      DM2.TBCteCTE_RECNUMERO.Value,
      DM2.TBCteCTE_RECCOMPLEMENTO.Value,
      DM2.TBCteCTE_RECBAIRRO.Value,
      DM2.TBCteCTE_RECCIDADECODIGO.Value.ToString,
      DM2.TBCteCTE_RECCIDADE.Value,
      LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
      DM2.TBCteCTE_RECESTADO.Value,
      DM2.TBCteCTE_RECPAISCODIGO.Value.ToString,
      DM2.TBCteCTE_RECPAIS.Value,
      ''
    );
    CodigoClienteTomador:=DM2.TBCteCTE_RECEBEDOR.Value;
  end;
  {$ENDREGION}

  {$REGION 'TOMADOR - DESTINATARIO'}
  if DM2.TBCteCTE_TOMADOR.Value='3 - DESTINATARIO' then
  begin
    Tomador:=U.tomador300(
      StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
      LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
      LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
      LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
      DM2.TBCteCTE_DESNOME.Value,
      '',
      LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
      DM2.TBCteCTE_DESENDERECO.Value,
      DM2.TBCteCTE_DESNUMERO.Value,
      DM2.TBCteCTE_DESCOMPLEMENTO.Value,
      DM2.TBCteCTE_DESBAIRRO.Value,
      DM2.TBCteCTE_DESCIDADECODIGO.Value.ToString,
      DM2.TBCteCTE_DESCIDADE.Value,
      LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
      DM2.TBCteCTE_DESESTADO.Value,
      DM2.TBCteCTE_DESPAISCODIGO.Value.ToString,
      DM2.TBCteCTE_DESPAIS.Value,
      ''
    );
    CodigoClienteTomador:=DM2.TBCteCTE_DESTINATARIO.Value;
  end;
  {$ENDREGION}

  {$REGION 'TOMADOR - OUTROS'}
  if DM2.TBCteCTE_TOMADOR.Value='4 - OUTROS' then
  begin
    Tomador:=U.tomador300(
      StrToInt(Copy(DM2.TBCteCTE_TOMADOR.Value,1,1)),
      LimparFormatacao(DM2.TBCteCTE_TOMADORCNPJ.Value),
      LimparFormatacao(DM2.TBCteCTE_TOMADORCPF.Value),
      LimparFormatacao(DM2.TBCteCTE_TOMADORIE.Value),
      DM2.TBCteCTE_TOMADORNOME.Value,
      '',
      LimparFormatacao(DM2.TBCteCTE_TOMADORFONE.Value),
      DM2.TBCteCTE_TOMADORENDERECO.Value,
      DM2.TBCteCTE_TOMADORNUMERO.Value,
      DM2.TBCteCTE_TOMADORCOMPLEMENTO.Value,
      DM2.TBCteCTE_TOMADORBAIRRO.Value,
      DM2.TBCteCTE_TOMADORCIDADECODIGO.Value.ToString,
      DM2.TBCteCTE_TOMADORCIDADE.Value,
      LimparFormatacao(DM2.TBCteCTE_TOMADORCEP.Value),
      DM2.TBCteCTE_TOMADORESTADO.Value,
      DM2.TBCteCTE_TOMADORPAISCODIGO.Value.ToString,
      DM2.TBCteCTE_TOMADORPAIS.Value,
      ''
    );
    CodigoClienteTomador:=DM2.TBCteCTE_TOMADORCODIGO.Value;
  end;
  {$ENDREGION}

  Result:=Tomador;
end;

function MontarIdentificacao(U: CTe_Util_Interface): WideString;
var Identificacao, Tomador, ComprasGov, indIETomador: WideString;
  Retira, CodigoClienteTomador: Integer;
  DataHora: String;
begin
  Identificacao:='';
  Tomador:=MontarTomador(U);
  ComprasGov:='';
  Retira:=1;

  if DM2.TBCteCTE_TOMADOR.Value='0 - REMETENTE'    then CodigoClienteTomador:=DM2.TBCteCTE_REMETENTE.Value;
  if DM2.TBCteCTE_TOMADOR.Value='1 - EXPEDIDOR'    then CodigoClienteTomador:=DM2.TBCteCTE_EXPEDIDOR.Value;
  if DM2.TBCteCTE_TOMADOR.Value='2 - RECEBEDOR'    then CodigoClienteTomador:=DM2.TBCteCTE_RECEBEDOR.Value;
  if DM2.TBCteCTE_TOMADOR.Value='3 - DESTINATARIO' then CodigoClienteTomador:=DM2.TBCteCTE_DESTINATARIO.Value;
  if DM2.TBCteCTE_TOMADOR.Value='4 - OUTROS'       then CodigoClienteTomador:=DM2.TBCteCTE_TOMADORCODIGO.Value;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select CLI_CONTRIBUINTEICMS from CLIENTES where CLI_CODIGO=:codigo');
  DM.QYAux.ParamByName('codigo').AsInteger:=CodigoClienteTomador;
  DM.QYAux.Open;
  indIETomador:=DM.QYAux.FieldByName('CLI_CONTRIBUINTEICMS').AsString;
  DM.QYAux.Close;

  if DM2.TBCteCTE_RETIRA.Value='S' then Retira:=0 else Retira:=1;
  DataHora:=Copy(DM2.TBCteCTE_DATAHORA.Value,1,4)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,6,2)+'-'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,9,2)+'T'+
            Copy(DM2.TBCteCTE_DATAHORA.Value,12,8)+DM.TBParametrosPAR_FUSOHORARIO.Value;
  Identificacao:=U.identificadorRT(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    StrToInt(DM2.TBCteCTE_CODIGONUMERICO.Value),
    DM2.TBCteCTE_CFOP.Value.ToString,
    DM2.TBCteCTE_CFOPDESC.Value,
    DM2.TBCteCTE_MODELO.Value,
    DM2.TBCteCTE_SERIE.Value,
    DM2.TBCteCTE_CODIGO.Value,
    DataHora,
    1, //dacte 1=retrato - 2=paisagem.
    StrToInt(Copy(DM2.TBCteCTE_TIPOEMISSAO.Value,1,1)),
    StrToInt(Copy(DM2.TBCteCTE_CHAVEACESSO.Value,44,1)),
    StrToInt(Copy(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value,1,1)),
    StrToInt(Copy(DM2.TBCteCTE_FINALIDADE.Value,1,1)),
    0, //0=aplicativo do contribuinte.
    '15', //versão do firenet.
    ' ', //ind globalizado.
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    DM.TBEmpresaEMP_CIDADE.Value,
    DM.TBEmpresaEMP_ESTADO.Value,
    Copy(DM2.TBCteCTE_MODAL.Value,1,2),
    StrToInt(Copy(DM2.TBCteCTE_TIPOSERVICO.Value,1,1)),
    DM2.TBCteCTE_REMCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_REMCIDADE.Value,
    DM2.TBCteCTE_REMESTADO.Value,
    DM2.TBCteCTE_DESCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_DESCIDADE.Value,
    DM2.TBCteCTE_DESESTADO.Value,
    Retira,
    DM2.TBCteCTE_RETIRADETALHES.Value,
    StrToInt(Copy(indIETomador,1,1)),
    Tomador,
    '',
    '',
    ComprasGov
  );
  Result:=Identificacao;
end;

function MontarEmitente(U: CTe_Util_Interface): WideString;
var Emitente: WideString;
begin
  Emitente:='';
  {$REGION 'emi - EMITENTE'}
  Emitente:=U.emitenteCRT(
    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
    '', //IE St.
    DM.TBEmpresaEMP_NOME.Value,
    DM.TBEmpresaEMP_NOMEFANTASIA.Value,
    DM.TBEmpresaEMP_ENDERECO.Value,
    DM.TBEmpresaEMP_NUMERO.Value,
    '', //complemento.
    DM.TBEmpresaEMP_BAIRRO.Value,
    DM.TBEmpresaEMP_CIDADECODIGO.Value.ToString,
    DM.TBEmpresaEMP_CIDADE.Value,
    LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
    DM.TBEmpresaEMP_ESTADO.Value,
    LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
    Copy(DM.TBEmpresaEMP_ENQUADRAMENTO.Value,1,1)
  );

  {$ENDREGION}
  Result:=Emitente;
end;

function MontarRemetente(U: CTe_Util_Interface): WideString;
var Remetente: WideString;
begin
  Remetente:='';
  Remetente:=U.remetente300(
    LimparFormatacao(DM2.TBCteCTE_REMCNPJ.Value),
    LimparFormatacao(DM2.TBCteCTE_REMCPF.Value),
    LimparFormatacao(DM2.TBCteCTE_REMIE.Value),
    ift(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1',DM2.TBCteCTE_REMNOME.Value,'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'),
    '',
    LimparFormatacao(DM2.TBCteCTE_REMFONE.Value),
    DM2.TBCteCTE_REMENDERECO.Value,
    DM2.TBCteCTE_REMNUMERO.Value,
    DM2.TBCteCTE_REMCOMPLEMENTO.Value,
    DM2.TBCteCTE_REMBAIRRO.Value,
    DM2.TBCteCTE_REMCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_REMCIDADE.Value,
    LimparFormatacao(DM2.TBCteCTE_REMCEP.Value),
    DM2.TBCteCTE_REMESTADO.Value,
    DM2.TBCteCTE_REMPAISCODIGO.Value.ToString,
    DM2.TBCteCTE_REMPAIS.Value,
    ''
  );
  Result:=Remetente;
end;

function MontarExpedidor(U: CTe_Util_Interface): WideString;
var Expedidor: WideString;
begin
  Expedidor:='';
  Expedidor:=U.expedidor300(
    LimparFormatacao(DM2.TBCteCTE_EXPCNPJ.Value),
    LimparFormatacao(DM2.TBCteCTE_EXPCPF.Value),
    LimparFormatacao(DM2.TBCteCTE_EXPIE.Value),
    ift(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1',DM2.TBCteCTE_EXPNOME.Value,'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'),
    LimparFormatacao(DM2.TBCteCTE_EXPFONE.Value),
    DM2.TBCteCTE_EXPENDERECO.Value,
    DM2.TBCteCTE_EXPNUMERO.Value,
    DM2.TBCteCTE_EXPCOMPLEMENTO.Value,
    DM2.TBCteCTE_EXPBAIRRO.Value,
    DM2.TBCteCTE_EXPCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_EXPCIDADE.Value,
    LimparFormatacao(DM2.TBCteCTE_EXPCEP.Value),
    DM2.TBCteCTE_EXPESTADO.Value,
    DM2.TBCteCTE_EXPPAISCODIGO.Value.ToString,
    DM2.TBCteCTE_EXPPAIS.Value,
    ''
  );
  Result:=Expedidor;
end;

function MontarRecebedor(U: CTe_Util_Interface): WideString;
var Recebedor: WideString;
begin
  Recebedor:='';
  Recebedor:=U.recebedor300(
    LimparFormatacao(DM2.TBCteCTE_RECCNPJ.Value),
    LimparFormatacao(DM2.TBCteCTE_RECCPF.Value),
    LimparFormatacao(DM2.TBCteCTE_RECIE.Value),
    ift(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1',DM2.TBCteCTE_RECNOME.Value,'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'),
    LimparFormatacao(DM2.TBCteCTE_RECFONE.Value),
    DM2.TBCteCTE_RECENDERECO.Value,
    DM2.TBCteCTE_RECNUMERO.Value,
    DM2.TBCteCTE_RECCOMPLEMENTO.Value,
    DM2.TBCteCTE_RECBAIRRO.Value,
    DM2.TBCteCTE_RECCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_RECCIDADE.Value,
    LimparFormatacao(DM2.TBCteCTE_RECCEP.Value),
    DM2.TBCteCTE_RECESTADO.Value,
    DM2.TBCteCTE_RECPAISCODIGO.Value.ToString,
    DM2.TBCteCTE_RECPAIS.Value,
    ''
  );
  Result:=Recebedor;
end;

function MontarDestinatario(U: CTe_Util_Interface): WideString;
var Destinatario: WideString;
begin
  Destinatario:='';
  Destinatario:=U.destinatario300(
    LimparFormatacao(DM2.TBCteCTE_DESCNPJ.Value),
    LimparFormatacao(DM2.TBCteCTE_DESCPF.Value),
    LimparFormatacao(DM2.TBCteCTE_DESIE.Value),
    ift(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value='1',DM2.TBCteCTE_DESNOME.Value,'CT-E EMITIDO EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'),
    LimparFormatacao(DM2.TBCteCTE_DESFONE.Value),
    '',
    DM2.TBCteCTE_DESENDERECO.Value,
    DM2.TBCteCTE_DESNUMERO.Value,
    DM2.TBCteCTE_DESCOMPLEMENTO.Value,
    DM2.TBCteCTE_DESBAIRRO.Value,
    DM2.TBCteCTE_DESCIDADECODIGO.Value.ToString,
    DM2.TBCteCTE_DESCIDADE.Value,
    LimparFormatacao(DM2.TBCteCTE_DESCEP.Value),
    DM2.TBCteCTE_DESESTADO.Value,
    DM2.TBCteCTE_DESPAISCODIGO.Value.ToString,
    DM2.TBCteCTE_DESPAIS.Value,
    ''
  );
  Result:=Destinatario;
end;

function MontarValoresPrestacao(U: CTe_Util_Interface): WideString;
var CompPrestacao, Valores: WideString;
begin
  Valores:='';
  CompPrestacao:=              U.compVPrest('FRETE',  DM2.TBCteCTE_VALORFRETE.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('SEGURO', DM2.TBCteCTE_VALORSEGURO.AsExtended);
  CompPrestacao:=CompPrestacao+U.compVPrest('OUTROS', DM2.TBCteCTE_VALOROUTROS.AsExtended);
  Valores:=U.vPrest(
    (DM2.TBCteCTE_VALORFRETE.AsExtended+DM2.TBCteCTE_VALORSEGURO.AsExtended+DM2.TBCteCTE_VALOROUTROS.AsExtended),
    DM2.TBCteCTE_VALORTOTAL.AsExtended,
    CompPrestacao
  );
  Result:=Valores;
end;

function MontarIBSCBS(U: CTe_Util_Interface): WideString;
var gEstornoCred, gIBSCBS, gIBSUF, gIBSMun, gCBS, gTribRegular, gTribCompraGov: WideString;
begin
  gIBSUF:=''; //U.gIBSUF(
  gIBSMun:='';
  gCBS:='';
  gTribRegular:='';
  gTribCompraGov:='';

//  gIBSCBS:=U.gIBSCBSv110(
//    DM2.TBCteCTE_BASEIBSCBS.Value, //criar
//    gIBSUF,
//    gIBSMun,
//    DM2.TBCteCTE_VALORIBS.Value, //criar
//    gCBS,
//    gTribRegular,
//    gTribCompraGov
//  );

  Result:='';
//  Result:=U.IBSCBSv110(
//      CST,
//      CLASSTRIB,
//      DOACAO,
//      gIBSCBS
//      gestornocred
//  );

end;

function MontarImpostos(U: CTe_Util_Interface): WideString;
var IBSCBS, ICMSUFFim, Imposto, InfoAdicional: WideString;
begin
  InfoAdicional:=DeleteLineBreaks(DM2.TBCteCTE_INFOADICFISCO.Value);
  IBSCBS:=MontarIBSCBS(U);
  ICMSUFFim:=''; //informações exigidas nas prestações de serviço de transporte interestaduais para consumidor final, não contribuinte do ICMS NT2015/003,

  DM.TBNaturezas.Close;
  DM.TBNaturezas.ParamByName('codigo').AsInteger:=DM2.TBCteCTE_CFOP.Value;
  DM.TBNaturezas.Open;

  if DM.TBNaturezasNAT_INFORMADIFAL.Value='S' then //se informa difal é pq é de outro estado, certo?
  ICMSUFFim:=U.ICMSUFFim(
    DM2.TBCteCTE_BASEICMS.AsExtended,
    DM2.TBCteCTE_ALIQICMSUFFIM.AsExtended,
    DM2.TBCteCTE_ALIQFCP.AsExtended,
    DM2.TBCteCTE_ALIQICMSINTER.AsExtended,
    DM2.TBCteCTE_ALIQICMSINTERPART.AsExtended,
    DM2.TBCteCTE_TOTALFCP.AsExtended,
    DM2.TBCteCTE_TOTALICMSUFFIM.AsExtended,
    DM2.TBCteCTE_TOTALICMSUFINI.AsExtended
  );

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value<>'1 - SIMPLES NACIONAL' then
  begin
    if DM2.TBCteCTE_CSTICMS.Value=0 then
    Imposto:=U.ImpCST00(
      '00',
      DM2.TBCteCTE_BASEICMS.AsExtended,
      DM2.TBCteCTE_ALIQICMS.AsExtended,
      DM2.TBCteCTE_TOTALICMS.AsExtended,
      DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
      InfoAdicional,
      ICMSUFFim,
      IBSCBS,
      0 //criar campo total (vprest + total ibs + total cbs)
    );

    if DM2.TBCteCTE_CSTICMS.Value=20 then
    Imposto:=U.ImpCST20(
      '20',
      DM2.TBCteCTE_ALIQICMSRED.AsExtended,
      DM2.TBCteCTE_BASEICMSRED.AsExtended,
      DM2.TBCteCTE_ALIQICMS.AsExtended,
      DM2.TBCteCTE_TOTALICMS.AsExtended,
      DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
      InfoAdicional,
      ICMSUFFim,
      0,
      '', //cbenef
      IBSCBS,
      0 //criar campo total (vprest + total ibs + total cbs)
    );

    if (DM2.TBCteCTE_CSTICMS.Value=40) or (DM2.TBCteCTE_CSTICMS.Value=41) or (DM2.TBCteCTE_CSTICMS.Value=51) then
    Imposto:=U.ImpCST45(
      DM2.TBCteCTE_CSTICMS.Value.ToString,
      DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
      InfoAdicional,
      ICMSUFFim,
      0,
      '', //cbenef
      IBSCBS,
      0 //criar campo total (vprest + total ibs + total cbs)
    );

    if DM2.TBCteCTE_CSTICMS.Value=60 then
    Imposto:=U.ImpCST60(
      '60',
      DM2.TBCteCTE_BASEICMSST.AsExtended,
      DM2.TBCteCTE_ALIQICMSST.AsExtended,
      DM2.TBCteCTE_TOTALICMSST.AsExtended,
      DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,
      DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
      InfoAdicional,
      ICMSUFFim,
      0, //icms desonerado.
      '', //cbenef. criar campo.
      IBSCBS,
      0 //criar campo total (vprest + total ibs + total cbs)
    );

    if (DM2.TBCteCTE_CSTICMS.Value=90) then
    begin
      if DM2.TBCteCTE_REMESTADO.Value=DM.TBEmpresaEMP_ESTADO.Value then
      Imposto:=U.ImpCST90(
        '90',
        DM2.TBCteCTE_ALIQICMSRED.AsExtended,
        DM2.TBCteCTE_BASEICMS.AsExtended,
        DM2.TBCteCTE_ALIQICMS.AsExtended,
        DM2.TBCteCTE_TOTALICMS.AsExtended,
        DM2.TBCteCTE_VALORCREDITOICMS.AsExtended,
        DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
        InfoAdicional,
        ICMSUFFim,
        0, //icms desonerado
        '', //cbenef
        IBSCBS,
        0 //criar campo total (vprest + total ibs + total cbs)
      ) else
      Imposto:=U.ImpCSTOutraUF(
        '90',
        DM2.TBCteCTE_ALIQICMSRED.AsExtended,
        DM2.TBCteCTE_BASEICMS.AsExtended,
        DM2.TBCteCTE_ICMSALIQUOTAUF.AsExtended,
        DM2.TBCteCTE_TOTALICMS.AsExtended,
        DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
        InfoAdicional,
        ICMSUFFim,
        0, //icms desonerado
        '', //cbenef
        IBSCBS,
        0 //criar campo total (vprest + total ibs + total cbs)
      );
    end;
  end else
  Imposto:=U.ImpCSTSN(
    DM2.TBCteCTE_TOTALTRIBUTOS.AsExtended,
    InfoAdicional,
    ICMSUFFim,
    IBSCBS,
    0 //criar campo total (vprest + total ibs + total cbs)
  );
  Result:=Imposto;
end;

function MontarAutorizados(U: CTe_Util_Interface): WideString;
var Autorizados: WideString;
begin
  Autorizados:='';
  if DM.TBEmpresaFOR_CNPJ.Value<>'' then
  Autorizados:=Autorizados+U.autXML(LimparFormatacao(DM.TBEmpresaFOR_CNPJ.Value),'');
  Result:=Autorizados;
end;

function MontarResponsavelTecnico(U: CTe_Util_Interface): WideString;
var Responsavel: WideString;
begin
  Responsavel:=U.infRespTec2(
    '12843516000187',
    'Rogerio',
    'rogerio@pett.com.br',
    '47991963060',
    '',
    '',
    ''
  );
  //token (hash) gerado em https://updweb.fazenda.pr.gov.br/upd/solicitacao_token_fornecedor. sistema UPD.
  if DM.TBParametrosPAR_CSRT.Value<>'' then
  Responsavel:=U.infRespTec2(
    '12843516000187',
    'Rogerio',
    'rogerio@pett.com.br',
    '47991963060',
    DM.TBParametrosPAR_CSRTID.Value.ToString,
    DM.TBParametrosPAR_CSRT.Value,
    DM2.TBCteCTE_CHAVEACESSO.Value
  );
  Result:=Responsavel;
end;

function MontarInfoSuplementar(U: CTe_Util_Interface): WideString;
var Info, msgResultado, qrCode: WideString;
  Resultado: Integer;
begin
  //vide: https://dfe-portal.svrs.rs.gov.br/CTE/Servicos
  Info:=U.infCTeSupl(
    'https://dfe-portal.svrs.rs.gov.br/cte/qrCode',
    DM2.TBCteCTE_CHAVEACESSO.Value,
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value),
    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
    qrCode,
    Resultado,
    msgResultado
  );
  Result:=Info;
end;

function MontarInfoCarga(U: CTe_Util_Interface): WideString;
var InfoCarga, QuantidadeCarga: WideString;
begin
  InfoCarga:='';
  QuantidadeCarga:='';
  DM2.TBCteCarga.First;
  while not DM2.TBCteCarga.Eof do
  begin
    QuantidadeCarga:=QuantidadeCarga+U.infQ(
      Copy(DM2.TBCteCargaCCG_UNIDADEMEDIDA.Value,1,2),
      DM2.TBCteCargaCCG_TIPOMEDIDA.Value,
      DM2.TBCteCargaCCG_QUANTIDADE.AsExtended
    );
    DM2.TBCteCarga.Next;
  end;
  InfoCarga:=U.infCarga300(
    DM2.TBCteCTE_VALORNOTAS.AsExtended,
    DM2.TBCteCTE_PRODUTOPREDOM.Value,
    DM2.TBCteCTE_CARGAOUTRASCARAC.Value,
    QuantidadeCarga,
    0
  );
  Result:=InfoCarga;
end;

function MontarDoctoCarga(U: CTe_Util_Interface): WideString;
var DoctoCarga, InfNF, InfNFE: WideString;
begin
  DoctoCarga:='';
  DM2.TBCteNotas.First;
  while not DM2.TBCteNotas.Eof do
  begin
    case StrToInt(Copy(DM2.TBCteNotasCTN_TIPONOTA.Value,1,1)) of
      01: begin //nota fiscal.
            DoctoCarga:=DoctoCarga+U.infNF_2G(
              '',
              '',
              DM2.TBCteNotasCTN_MODELO.Value.ToString,
              DM2.TBCteNotasCTN_SERIE.Value.ToString,
              DM2.TBCteNotasCTN_NUMERO.Value.ToString,
              DM2.TBCteNotasCTN_DTEMISSAO.Value,
              DM2.TBCteNotasCTN_BASEICMS.AsExtended,
              DM2.TBCteNotasCTN_TOTALICMS.AsExtended,
              DM2.TBCteNotasCTN_BASEICMSST.AsExtended,
              DM2.TBCteNotasCTN_TOTALICMSST.AsExtended,
              DM2.TBCteNotasCTN_TOTALPRODUTOS.AsExtended,
              DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
              DM2.TBCteNotasCTN_CFOP.Value,
              DM2.TBCteNotasCTN_PESO.AsExtended,
              DM2.TBCteNotasCTN_SUFRAMA.Value,
              0,
              ''
            );
          end;
      02: begin //Nota Fiscal Eletrônica.
            DoctoCarga:=DoctoCarga+U.infNFe_2G(
              DM2.TBCteNotasCTN_CHAVEACESSO.Value,
              DM2.TBCteNotasCTN_SUFRAMA.Value,
              0,
              ''
            );
          end;
      03: begin //Outros Tipos de Documentos.
            DoctoCarga:=DoctoCarga+U.infOutros_2G(
              Copy(DM2.TBCteNotasCTN_TIPOOUTROS.Value,1,2),
              DM2.TBCteNotasCTN_DESCRICAODOC.Value,
              DM2.TBCteNotasCTN_NUMERO.Value.ToString,
              DM2.TBCteNotasCTN_DTEMISSAO.Value,
              DM2.TBCteNotasCTN_VALORTOTAL.AsExtended,
              0,
              ''
            );
          end;
    end;
    DM2.TBCteNotas.Next;
  end;
  Result:=DoctoCarga;
end;

function MontarInfoModal(U: CTe_Util_Interface): WideString;
var InfoModal: WideString;
begin
  InfoModal:='';
  
  if DM2.TBCteCTE_MODAL.Value='01 - RODOVIARIO' then
  begin
    InfoModal:=U.rod300(
      DM.TBParametrosPAR_VERSAOXMLCTE.Value,
      DM.TBParametrosPAR_RNTRC.Value,
      '' //ordens de coleta.
    );
  end;

  if DM2.TBCteCTE_MODAL.Value='02 - AEREO' then
  begin
    InfoModal:=U.aereo300(
      DM.TBParametrosPAR_VERSAOXMLCTE.Value,
      DM2.TBCteCTE_AEREOMINUTA.Value.ToString,
      DM2.TBCteCTE_AEREOOCA.Value,
      DM2.TBCteCTE_AEREODTPREVISTA.Value,
      DM2.TBCteCTE_AEREODIMENSAO.Value,
      '', //InfoManuseio,
      Copy(DM2.TBCteCTE_AEREOTARIFACLASSE.Value,0,1),
      DM2.TBCteCTE_AEREOTARIFACODIGO.Value.ToString,
      DM2.TBCteCTE_AEREOTARIFAVALOR.AsExtended,
      '' //ProdutosPerigosos
    );
    //InfoModal:=StringReplace(InfoModal,'dPrev','dPrevAereo',[rfReplaceAll]); //bug na DLL?s
  end;

  Result:=InfoModal;
end;

function MontarCTeNormalSubstituto(U: CTe_Util_Interface): WideString;
var InfoCarga, InfoCteNormal, DoctoCarga, DoctoAnterior, InfoModal: WideString;
begin
  InfoCarga:=MontarInfoCarga(U);
  DoctoCarga:=MontarDoctoCarga(U);
  DoctoAnterior:='';
  InfoModal:=MontarInfoModal(U);

  InfoCteNormal:=U.infCTeNorm300(
    InfoCarga,
    DoctoCarga,
    DoctoAnterior,
    InfoModal,
    '', //VeiculosTransportados,
    '', //Cobranca,
    '', //CTeSubstituto,
    '',
    ''
  );

  Result:=InfoCteNormal;
end;

function ValidarCTe: Boolean;
var A, M, D: Word;
  Pasta: String;
begin
  Result:=False;
  if CTeUtilRegistrada=False              then Exit(Erro('Um erro ocorreu ao tentar utilizar a DLL CTE_UTIL.'+#13#10+#13#10+'Faça a instalação da DLL pelo menu Arquivo -> FlexDocs -> Instalar CTE_UTIL na tela principal.'));
  if not CTeUtilAtualizada                then Exit(Erro('A DLL CTE_UTIL não está atualizada.'+#13#10+#13#10+'Atualize a DLL pelo menu Arquivo -> FlexDocs -> Instalar CTE_UTIL na tela principal.'));
  if DM2.TBCte.IsEmpty                    then Exit(Erro('Nenhum CTe selecionada.'));
  if DM2.TBCteCTE_PROTOCOLO.Value <> ''   then Exit(Erro('CTe já autorizado.'));
  if DM2.TBCteCTE_PROTOCOLOCANC.Value<>'' then Exit(Erro('CTe já cancelado.'));
  if DM2.TBCteCTE_PROTOCOLOINUT.Value<>'' then Exit(Erro('CTe já inutilizado.'));
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value,A,M,D);
  Pasta:=DM.TBParametrosPAR_REPOSITORIOCTE.Value+'\'+IntToStr(A)+'\'+IntToStr(M); 
  if not System.SysUtils.DirectoryExists(Pasta) then
  begin
    if not System.SysUtils.ForceDirectories(Pasta) then Exit(Erro('Não foi possível criar subpastas para gravação do arquivo.'));
  end;

  Result:=True;
end;

procedure PrepararInterfaceEnvio;
begin
  FormConhecimentos.PageControl1.ActivePageIndex := 6;
  FormConhecimentos.Memo1.Lines.Clear;
  FormConhecimentos.Memo1.Lines.Add('Envio de CTe...');
  //Application.ProcessMessages;
end;

procedure ExibirRetorno(cStat: Integer; MsgResultado, Protocolo, ProtocoloDH: String);
begin
  FormConhecimentos.Memo1.Lines.Add('Retorno....: '+cStat.ToString+' - '+MsgResultado);
  if Protocolo<>'' then
  begin
    FormConhecimentos.Memo1.Lines.Add('Protocolo..: '+Protocolo);
    FormConhecimentos.Memo1.Lines.Add('Data/Hora..: '+ProtocoloDH);
  end;
end;

procedure GravarArquivos(const XMLCTe, XMLCTeAss, ProcCTe, MsgDados: WideString);
var A, M, D: Word;
  F: TextFile;
  PathBase: String;
begin
  DecodeDate(DM2.TBCteCTE_DTEMISSAO.Value, A, M, D);
  PathBase:=Format('%s\%d\%d\', [DM.TBParametrosPAR_REPOSITORIOCTE.Value, A, M]);

  AssignFile(F, PathBase + DM2.TBCTeCTE_CHAVEACESSO.Value + '-env-lot.xml', CP_UTF8);
  Rewrite(F);
  if MsgDados<>'' then
  Write(F, AnsiToUtf8(MsgDados)) else
  Write(F, AnsiToUtf8(XMLCTe));
  CloseFile(F);

  if ProcCTe <> '' then
  begin
    SalvarArquivo(PathBase + DM2.TBCteCTE_CHAVEACESSO.Value + '-CTe.xml', XMLCTeAss);
    SalvarArquivo(PathBase + DM2.TBCteCTE_CHAVEACESSO.Value + '-procCTe.xml', ProcCTe);
  end;
end;

procedure SalvarArquivo(const FileName, Conteudo: WideString);
var F: TextFile;
begin
  AssignFile(F, FileName, CP_UTF8);
  Rewrite(F);
  Write(F, UTF8Encode(Conteudo));
  CloseFile(F);
end;

procedure AtualizarProtocoloCTe(const Protocolo, ProtocoloDH: WideString);
begin
  //DM.TBNfe.Close;
  //DM.TBNfe.Open;
  DM2.TBCte.Edit;
  DM2.TBCteCTE_PROTOCOLO.Value   := Protocolo;
  DM2.TBCteCTE_PROTOCOLODH.Value := ProtocoloDH;
  DM2.TBCteCTE_CONSULTADA.Value  := 'F';
  DM2.TBCte.Post;
end;

end.
