unit NfeFuncoes;

interface

uses DataMod, NFe_Util_2G_TLB, Dialogs, System.SysUtils, System.Classes,
  System.DateUtils, System.RegularExpressions, Xml.XMLDoc, Xml.XMLIntf;

procedure GerarArquivoXMLNFe;

procedure EnviarNFeSincronoRTC;
procedure ExibirRetorno(cStat: Integer; MsgResultado, Protocolo, ProtocoloDH: String);
function ValidarNFe: Boolean;
procedure CriarDiretorioRepositorio;
procedure PrepararInterfaceEnvio;
function MontarXMLNFe: WideString;
function EnviarXML(const XMLNFE: WideString; out XMLNFEAss, MsgDados, RetWS: WideString; out cStat: Integer; out MsgResultado, Protocolo, ProtocoloDH: WideString): WideString;
procedure GravarArquivos(const XMLNFE, XMLNFEAss, ProcNFe, MsgDados: WideString);
procedure SalvarArquivo(const FileName, Conteudo: WideString);
procedure AtualizarProtocoloNFe(const Protocolo, ProtocoloDH: WideString);
function TraduzirErroSchemaSEFAZ(const AErroBruto: String): String;

function MontarReferenciadas(const U: NFe_Util_2G_Interface): WideString;
function MontarIdentificacao(const U: NFe_Util_2G_Interface): WideString;
function MontarEmitente(const U: NFe_Util_2G_Interface): WideString;
function MontarDestinatario(const U: NFe_Util_2G_Interface): WideString;
function MontarProdutos(const U: NFe_Util_2G_Interface): WideString;
function MontarTotais(const U: NFe_Util_2G_Interface): WideString;
function MontarTransportadora(const U: NFe_Util_2G_Interface): WideString;
function MontarCobranca(const U: NFe_Util_2G_Interface): WideString;
function MontarPagamento(const U: NFe_Util_2G_Interface): WideString;
function MontarInfoAdicional(const U: NFe_Util_2G_Interface): WideString;
function MontarExportacao(const U: NFe_Util_2G_Interface): WideString;
function MontarCompra(const U: NFe_Util_2G_Interface): WideString;
function MontarRetirada(const U: NFe_Util_2G_Interface): WideString;
function MontarEntrega(const U: NFe_Util_2G_Interface): WideString;
function MontarAutXML(const U: NFe_Util_2G_Interface): WideString;
function MontarRespTecnico(const U: NFe_Util_2G_Interface): WideString;
function MontarIntermediador(const U: NFe_Util_2G_Interface): WideString;
function MontarAgropecuario(const U: NFe_Util_2G_Interface): WideString;

//para o detalhamento dos produtos.
function MontarItem(const U: NFe_Util_2G_Interface): WideString;
function MontarItemRastro(const U: NFe_Util_2G_Interface): WideString; //chamado dentro de montaritem.
function MontarItemDetExportacao(const U: NFe_Util_2G_Interface): WideString; //chamado dentro de montaritem.
function MontarItemDI(const U: NFe_Util_2G_Interface): WideString; //chamado dentro de montaritem.
function MontarItemPIS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemPISST(const U: NFe_Util_2G_Interface): WideString;
function MontarItemCOFINS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemCOFINSST(const U: NFe_Util_2G_Interface): WideString;
function MontarItemIPI(const U: NFe_Util_2G_Interface): WideString;
function MontarItemII(const U: NFe_Util_2G_Interface): WideString;
function MontarItemISS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemICMS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemICMSUFDest(const U: NFe_Util_2G_Interface): WideString;
function MontarItemIS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemIBSCBS(const U: NFe_Util_2G_Interface): WideString;
function MontarItemImposto(const U: NFe_Util_2G_Interface; ICMS, IPI, II, PIS, PISST, COFINS, COFINSST, ISS, ICMSUFDest, IS_, IBSCBS: WideString): WideString;

//funcoes para a manifestacao do destinatário.
type
  TResNFeData = record
    ChNFe: String;
    CNPJ: String;
    XNome: String;
    IE: String;
    DhEmi: TDateTime;
    TpNF: Integer;
    VNF: Currency;
    DigVal: String;
    DhRecbto: TDateTime;
    NProt: String;
    CSitNFe: Integer;
  end;
function LerXMLResNFe(const AXMLStr: String): TResNFeData;

type
  TResEventoData = record
    COrgao: Integer;
    CNPJ: String;
    ChNFe: String;
    DhEvento: TDateTime;
    TpEvento: Integer;
    NSeqEvento: Integer;
    XEvento: String;
    DhRecbto: TDateTime;
    NProt: String;
  end;
function LerXMLResEvento(const AXMLStr: string): TResEventoData;

type
  TProcEventoNFeData = record
    // Dados Gerais do Evento
    ChNFe: string;
    TpEvento: Integer;
    NSeqEvento: Integer;
    COrgao: Integer;
    CNPJ: string;
    DhEvento: TDateTime;
    DescEvento: string;

    // Detalhes específicos do Comprovante de Entrega (Grupo CTe)
    ChCTe: string;
    NProtCTe: string;
    DhEntrega: TDateTime;
    XNomeRecebedor: string;

    // Retorno da SEFAZ
    CStat: Integer;
    XMotivo: string;
    NProt: string;
    DhRegEvento: TDateTime;
  end;
function LerXMLProcEventoNFe(const AXMLStr: String): TProcEventoNFeData;

implementation
uses Funcoes1, Nfe;
//var U: NFe_Util_2G_Interface;
//  F: TextFile;
//  Proxy, ProcNFe, XMLNFE: WideString;
//begin
//  Proxy:='';
//  if DM.TBParametrosPAR_PROXY.Value='S' then
//  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value+':'+IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);
//
//  ProcNFe:=U.EnviaNFSincrono(
//    DM.TBParametrosPAR_SIGLAWS.Value,
//    XMLNFE,
//    DM.TBParametrosPAR_NOMECERTIFICADO.Value,
//    DM.TBParametrosPAR_VERSAOXML.Value,
//    MsgDados,
//    RetWS,
//    cStat,
//    MsgResultado,
//    Protocolo,
//    ProtocoloDH,
//    XMLNFEAss,
//    Proxy,
//    DM.TBParametrosPAR_PROXYUSER.Value,
//    DM.TBParametrosPAR_PROXYPASSWORD.Value,
//    M.TBParametrosPAR_LICENCADLL.Value
//  );
//
//end;

procedure GerarArquivoXMLNFe;
var XMLNFE, XMLNFEAss, msgResultado: WideString;
  A, M, D: Word;
  PathBase, Arquivo: String;
  F: TextFile;
  Resultado: Integer;
  U: NFe_Util_2G_Interface;
begin
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value, A, M, D);
  ForceDirectories(Format('%s\%d\%d', [DM.TBParametrosPAR_REPOSITORIONFE.Value, A, M]));
  PathBase:=Format('%s\%d\%d\', [DM.TBParametrosPAR_REPOSITORIONFE.Value, A, M]);
  Arquivo:=DM.TBNfeNFE_CHAVEACESSO.Value + '-nfe.xml';
  XMLNFE:=MontarXMLNFe;
  XMLNFE:=RemoveAcentosXML(XMLNFE);

  U:=CoUtil.Create;
  XMLNFEAss:=U.Assinar(XMLNFE,'infNFe',DM.TBParametrosPAR_NOMECERTIFICADO.Value,Resultado,msgResultado);
  U:=nil;

  AssignFile(F, PathBase + Arquivo, CP_UTF8);
  Rewrite(F);
  Write(F,XMLNFEAss);
  CloseFile(F);
end;

//##############################################################################
// envio da nfe.
//##############################################################################
procedure EnviarNFeSincronoRTC;
var cStat: Integer;
  XMLNFE, XMLNFEAss, ProcNFe, MsgDados, RetWS, MsgResultado, Protocolo, ProtocoloDH: WideString;
begin
  if not ValidarNFe then Exit;

  CriarDiretorioRepositorio;

//  if not VerificarEstoque then Exit;

  PrepararInterfaceEnvio;

  XMLNFEAss:='';
  ProcNFe:='';
  MsgDados:='';

  // Montagem do XML
  XMLNFE:=MontarXMLNFe;
  XMLNFE:=RemoveAcentosXML(XMLNFE);

  // Envio síncrono
  ProcNFe:=EnviarXML(XMLNFE, XMLNFEAss, MsgDados, RetWS, cStat, MsgResultado, Protocolo, ProtocoloDH);

  ExibirRetorno(cStat, MsgResultado, Protocolo, ProtocoloDH);

  GravarArquivos(XMLNFE, XMLNFEAss, ProcNFe, MsgDados);

  if ProcNFe <> '' then
  AtualizarProtocoloNFe(Protocolo, ProtocoloDH);
end;

procedure ExibirRetorno(cStat: Integer; MsgResultado, Protocolo, ProtocoloDH: String);
begin
  FormNfe.Memo1.Lines.Add('Retorno....: '+cStat.ToString+' - '+MsgResultado);

  if cStat<>100 then //diferente de autorizada?
  FormNfe.Memo1.Lines.Add(TraduzirErroSchemaSEFAZ(MsgResultado));

  if Protocolo<>'' then
  begin
    FormNfe.Memo1.Lines.Add('Protocolo..: '+Protocolo);
    FormNfe.Memo1.Lines.Add('Data/Hora..: '+ProtocoloDH);
  end;
end;

function ValidarNFe: Boolean;
begin
  Result:=False;
  if DM.TBNfe.IsEmpty                   then Exit(Erro('Nenhuma NFe selecionada.'));
  if DM.TBNfeItens.IsEmpty              then Exit(Erro('Esta NFe não contém itens.'));
  if DM.TBNfeNFE_CHAVEACESSO.Value = '' then Exit(Erro('NFe sem chave de acesso. Recrie a chave.'));
  if DM.TBNfeNFE_STATUS.Value = 'F'     then Exit(Erro('NFe já finalizada.'));
  if DM.TBNfeNFE_PROTOCOLO.Value <> ''  then Exit(Erro('NFe já autorizada.'));
  Result:=True;
end;

procedure CriarDiretorioRepositorio;
var A, M, D: Word;
begin
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value, A, M, D);
  ForceDirectories(Format('%s\%d\%d', [DM.TBParametrosPAR_REPOSITORIONFE.Value, A, M]));
end;

procedure PrepararInterfaceEnvio;
begin
  FormNfe.PageControl1.ActivePageIndex := 6;
  FormNfe.Memo1.Lines.Clear;
  FormNfe.Memo1.Lines.Add('Envio de NFe...');
  //Application.ProcessMessages;
end;

function MontarXMLNFe: WideString;
var
  U: NFe_Util_2G_Interface;
  Identificacao, Emitente, Destinatario, Detalhes,
  Transportadora, TotalNota, Cobranca, Pagamento,
  InfoAdicional, Exporta, Compra, AutXML, InfoRespTecnico,
  InfIntermed, Agropecuario: WideString;
begin
  U := CoUtil.Create;
  try
    Identificacao  := MontarIdentificacao(U);
    Emitente       := MontarEmitente(U);
    Destinatario   := MontarDestinatario(U);
    Detalhes       := MontarProdutos(U);
    Transportadora := MontarTransportadora(U);
    TotalNota      := MontarTotais(U);
    Cobranca       := MontarCobranca(U);
    Pagamento      := MontarPagamento(U);
    InfoAdicional  := MontarInfoAdicional(U);
    Exporta        := MontarExportacao(U);
    Compra         := MontarCompra(U);
    AutXML         := MontarAutXML(U);
    InfoRespTecnico:= MontarRespTecnico(U);
    InfIntermed    := MontarIntermediador(U);
    Agropecuario   := MontarAgropecuario(U);

//    Result:=U.NFe202006(
//      DM.TBParametrosPAR_VERSAOXML.Value,
//      DM.TBNfeNFE_CHAVEACESSO.Value,
//      Identificacao, Emitente, '', Destinatario, '', '',
//      Detalhes, TotalNota, Transportadora, Cobranca, Pagamento,
//      InfoAdicional, Exporta, Compra, '', AutXML, InfoRespTecnico, InfIntermed
//    );
    Result:=U.NFe2024003(
      DM.TBParametrosPAR_VERSAOXML.Value,
      DM.TBNfeNFE_CHAVEACESSO.Value,
      Identificacao, Emitente, '', Destinatario, '', '',
      Detalhes, TotalNota, Transportadora, Cobranca, Pagamento,
      InfoAdicional, Exporta, Compra, '', AutXML, InfoRespTecnico,
      InfIntermed, Agropecuario
    );

  finally
    U:=nil;
  end;
end;

function EnviarXML(const XMLNFE: WideString; out XMLNFEAss, MsgDados, RetWS: WideString; out cStat: Integer; out MsgResultado, Protocolo, ProtocoloDH: WideString): WideString;
var U: NFe_Util_2G_Interface;
  Proxy: String;
begin
  Proxy:='';
  if DM.TBParametrosPAR_PROXY.Value = 'S' then
  Proxy:=DM.TBParametrosPAR_PROXYENDERECO.Value + ':' + IntToStr(DM.TBParametrosPAR_PROXYPORTA.Value);

  U:=CoUtil.Create;
  try
    Result:=U.EnviaNFSincrono(
      DM.TBParametrosPAR_SIGLAWS.Value, XMLNFE,
      DM.TBParametrosPAR_NOMECERTIFICADO.Value,
      DM.TBParametrosPAR_VERSAOXML.Value,
      MsgDados, RetWS, cStat, MsgResultado, Protocolo, ProtocoloDH,
      XMLNFEAss, Proxy,
      DM.TBParametrosPAR_PROXYUSER.Value,
      DM.TBParametrosPAR_PROXYPASSWORD.Value,
      DM.TBParametrosPAR_LICENCADLL.Value
    );
  finally
    U:=nil;
  end;
end;

procedure GravarArquivos(const XMLNFE, XMLNFEAss, ProcNFe, MsgDados: WideString);
var A, M, D: Word;
  F: TextFile;
  PathBase: String;
begin
  DecodeDate(DM.TBNfeNFE_DTEMISSAO.Value, A, M, D);
  PathBase:=Format('%s\%d\%d\', [DM.TBParametrosPAR_REPOSITORIONFE.Value, A, M]);

  AssignFile(F, PathBase + DM.TBNfeNFE_CHAVEACESSO.Value + '-env-lot.xml', CP_UTF8);
  Rewrite(F);
  if MsgDados<>'' then
  Write(F, AnsiToUtf8(MsgDados)) else
  Write(F, AnsiToUtf8(XMLNFE));
  CloseFile(F);

  if ProcNFe <> '' then
  begin
    SalvarArquivo(PathBase + DM.TBNfeNFE_CHAVEACESSO.Value + '-NFe.xml', XMLNFEAss);
    SalvarArquivo(PathBase + DM.TBNfeNFE_CHAVEACESSO.Value + '-procNFe.xml', ProcNFe);
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

procedure AtualizarProtocoloNFe(const Protocolo, ProtocoloDH: WideString);
begin
  //DM.TBNfe.Close;
  //DM.TBNfe.Open;
  DM.TBNfe.Edit;
  DM.TBNfeNFE_PROTOCOLO.Value   := Protocolo;
  DM.TBNfeNFE_PROTOCOLODH.Value := ProtocoloDH;
  DM.TBNfeNFE_CONSULTADA.Value  := 'F';
  DM.TBNfe.Post;
end;

function MontarReferenciadas(const U: NFe_Util_2G_Interface): WideString;
var NFRef: WideString;
begin
  NFRef:='';
  DM.TBNfeRef.DisableControls;
  DM.TBNfeRef.First;
  while not DM.TBNfeRef.Eof do
  begin
    if DM.TBNfeRefNFR_TIPO.Value='CF'  then NFRef:=NFRef+U.ECFRef(DM.TBNfeRefNFR_MODELO.Value, DM.TBNfeRefNFR_NUMERO.Value, DM.TBNfeRefNFR_COO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='CTE' then NFRef:=NFRef+U.CTeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFE' then NFRef:=NFRef+U.NFeRef(DM.TBNfeRefNFR_CHAVEACESSO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NFP' then NFRef:=NFRef+U.NFRefP(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                                                                  DM.TBNfeRefNFR_ANOMES.Value,
                                                                  LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                                                                  LimparFormatacao(DM.TBNfeRefNFR_CPFEMITENTE.Value),
                                                                  LimparFormatacao(DM.TBNfeRefNFR_IEEMITENTE.Value),
                                                                  StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                                                                  DM.TBNfeRefNFR_SERIE.Value,
                                                                  DM.TBNfeRefNFR_NUMERO.Value);
    if DM.TBNfeRefNFR_TIPO.Value='NF'  then NFRef:=NFRef+U.NFRef(DM.TBNfeRefNFR_ESTADOCODIGO.Value,
                                                                 DM.TBNfeRefNFR_ANOMES.Value,
                                                                 LimparFormatacao(DM.TBNfeRefNFR_CNPJEMITENTE.Value),
                                                                 StrToInt(DM.TBNfeRefNFR_MODELO.Value),
                                                                 DM.TBNfeRefNFR_SERIE.Value,
                                                                 DM.TBNfeRefNFR_NUMERO.Value);
    DM.TBNfeRef.Next;
  end;
  DM.TBNfeRef.EnableControls;
  Result:=NFRef;
end;

function MontarIdentificacao(const U: NFe_Util_2G_Interface): WideString;
var idDest, tpNF: Integer;
  cMunFG, dhCont, xJust, tpNFCredito, tpNFDebito: String;
  NFRef, gCompraGov, gPagAntecipado: WideString;
begin
  NFRef:=MontarReferenciadas(U);

  tpNF:=0; //0:entrada 1:saida.
  if DM.TBNfeNFE_ENTRADASAIDA.Value='S' then
  tpNF:=1;
  dhCont:='';
  xJust:='';
  if DM.TBNfeNFE_TIPOEMISSAO.Value<>'1 - NORMAL' then
  begin
    dhCont:=UTC(DM.TBParametrosPAR_NFECONTINGENCIADATA.Value,DM.TBParametrosPAR_NFECONTINGENCIAHORA.Value,DM.TBParametrosPAR_FUSOHORARIO.Value);
    xJust:=DM.TBParametrosPAR_NFECONTINGENCIAJUST.Value;
  end;

  idDest:=1; //1=operação interna... se estado do cliente é diferente do estado da empresa, op interestadual (2).
  if DM.TBEmpresaEMP_ESTADO.Value<>DM.TBNfeNFE_ESTADO.Value then
  idDest:=2;
  if DM.TBNfeNFE_ESTADO.Value='EX' then //se estado=EX=Exterior.
  idDest:=3;

  tpNFCredito:='';
  if DM.TBNfeNFE_NOTACREDITO.Value<>'00 - NENHUM' then
  tpNFCredito:=Copy(DM.TBNfeNFE_NOTACREDITO.Value,1,2);

  tpNFDebito:='';
  if DM.TBNfeNFE_NOTADEBITO.Value<>'00 - NENHUM' then
  tpNFDebito:=Copy(DM.TBNfeNFE_NOTADEBITO.Value,1,2);

  cMunFG:='';
  if DM.TBNfeNFE_TIPOATENDIMENTO.Value='5 - OPERACAO PRESENCIAL FORA DO ESTABELECIMENTO' then
  cMunFG:=DM.TBNfeNFE_CIDADECODIGO.Value.ToString; //ver futuramente se precisa criar campo especifico ou mantemos no cadastro do cliente.

  gCompraGov:='';
  if DM.TBNfeNFE_GOVERNAMENTAL.Value<>'0 - NENHUM' then
  gCompraGov:=U.gCompraGov(
    StrToInt(Copy(DM.TBNfeNFE_GOVERNAMENTAL.Value,1,1)),
    DM.TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended,
    StrToInt(Copy(DM.TBNfeNFE_GOVERNAMENTALOP.Value,1,1))
  );
//  gCompraGov:=U.gCompraGov(
//    ift(DM.TBNfeNFE_GOVERNAMENTAL.Value='0 - NENHUM', '0', Copy(DM.TBNfeNFE_GOVERNAMENTAL.Value,1,1) ),
//    DM.TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended,
//    ift(DM.TBNfeNFE_GOVERNAMENTAL.Value='0 - NENHUM', '0', StrToInt(Copy(DM.TBNfeNFE_GOVERNAMENTALOP.Value,1,1)) )
//  );

  gPagAntecipado:='';

  Result:=U.identificadorRTC(
    DM.TBEmpresaEMP_ESTADOCODIGO.Value,
    StrToInt(DM.TBNfeNFE_CODIGONUMERICO.Value),
    DM.TBNfeNFE_CFOPDESC.Value,
    DM.TBNfeNFE_MODELO.Value,
    DM.TBNfeNFE_SERIE.Value,
    DM.TBNfeNFE_CODIGO.Value,
    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    UTC(DM.TBNfeNFE_DTEMISSAO.Value,Time,DM.TBParametrosPAR_FUSOHORARIO.Value),
    tpNF,
    idDest, //1:op interna 2:op interestadual 3:op com exterior.
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    NFRef,
    1, //1:retrato 2:paisagem.
    StrToInt(Copy(DM.TBNfeNFE_TIPOEMISSAO.Value,1,1)),
    StrToInt(Copy(DM.TBNfeNFE_CHAVEACESSO.Value,Length(DM.TBNfeNFE_CHAVEACESSO.Value),1)),
    StrToInt(DM.TBParametrosPAR_TIPOAMBIENTE.Value),
    StrToInt(Copy(DM.TBNfeNFE_FINALIDADE.Value,1,1)),
    StrToInt(Copy(DM.TBNfeNFE_TIPOCONSUMIDOR.Value,1,1)), //0:nao consumidor final 1:consumidor final.
    StrToInt(Copy(DM.TBNfeNFE_TIPOATENDIMENTO.Value,1,1)), //0:nao se aplica 1:op presencial 2:op nao presencial pela internet 3:op nao presencial teleatendimento 4:NFC-e em op de entrega a domicilio 5:op nao presencial, outros.
    0, //0-app proprio, 1-avulsa pelo fisco, 2-avulsa pelo cont. pelo site, 3-app do fisco.
    'Runtime',
    dhCont,
    xJust,
    StrToInt(Copy(DM.TBNfeNFE_INTERMEDIADOR.Value,1,1)),
    cMunFG,
    tpNFDebito,
    tpNFCredito,
    gCompraGov,
    gPagAntecipado
  );
end;

function MontarEmitente(const U: NFe_Util_2G_Interface): WideString;
var IM: String;
begin
  DM.TBAliquotas.Locate('ALI_ESTADO',DM.TBNfeNFE_ESTADO.Value,[]); //localiza o estado do cliente na tabela de aliquotas para preencher a IE ST.   //a empresa pode ter uma IE ST para cada estado.
  IM:='';
  if (DM.TBEmpresaEMP_IMINFORMAR.Value='EM AMBAS') or (DM.TBEmpresaEMP_IMINFORMAR.Value='NA NFE') then
  IM:=LimparFormatacao(DM.TBEmpresaEMP_IM.Value);
  Result:=U.Emitente2G(
    LimparFormatacao(DM.TBEmpresaEMP_CNPJ.Value),
    '',
    DM.TBEmpresaEMP_NOME.Value,
    DM.TBEmpresaEMP_NOMEFANTASIA.Value,
    DM.TBEmpresaEMP_ENDERECO.Value,
    DM.TBEmpresaEMP_NUMERO.Value,
    '',
    DM.TBEmpresaEMP_BAIRRO.Value,
    IntToStr(DM.TBEmpresaEMP_CIDADECODIGO.Value),
    DM.TBEmpresaEMP_CIDADE.Value,
    DM.TBEmpresaEMP_ESTADO.Value,
    LimparFormatacao(DM.TBEmpresaEMP_CEP.Value),
    IntToStr(DM.TBEmpresaEMP_PAISCODIGO.Value),
    DM.TBEmpresaEMP_PAIS.Value,
    LimparFormatacao(DM.TBEmpresaEMP_FONE1.Value),
    LimparFormatacao(DM.TBEmpresaEMP_IE.Value),
    LimparFormatacao(DM.TBAliquotasALI_IEST.Value),
    IM,
    LimparFormatacao(DM.TBEmpresaEMP_CNAE.Value),
    Copy(DM.TBEmpresaEMP_ENQUADRAMENTO.Value,1,1)
  );
end;

function MontarDestinatario(const U: NFe_Util_2G_Interface): WideString;
var CNPJ, CPF, Fone, IDEstrangeiro, IndIEDest, NumeroCob, xNome: String;
begin
  DM.TBClientes.Close;
  DM.TBClientes.ParamByName('codigo').AsInteger:=DM.TBNfeNFE_CLIENTE.Value;
  DM.TBClientes.Open;
  if DM.TBClientesCLI_IDESTRANGEIRO.Value<>'' then
  begin
    IDEstrangeiro:=DM.TBClientesCLI_IDESTRANGEIRO.Value;
    CNPJ:='';
    CPF:='';
  end else
  begin
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then
    //estava dando problema com nulo e vazio... if (not DM.TBNfeNFE_CNPJ.IsNull) and (DM.TBNfeNFE_CNPJ.Value<>'  .   .   /    -  ') then
    begin
      IDEstrangeiro:='';
      CNPJ:=LimparFormatacao(DM.TBNfeNFE_CNPJ.Value);
      CPF:='';
    end else
    begin
      IDEstrangeiro:='';
      CNPJ:='';
      CPF:=LimparFormatacao(DM.TBNfeNFE_CPF.Value);
    end;
  end;

  //1 - CONTRIBUINTE ICMS
  //2 - CONTRIBUINTE ISENTO DE INSCRICAO
  //9 - NAO CONTRIBUINTE
  IndIEDest:=Copy(DM.TBClientesCLI_CONTRIBUINTEICMS.Value,1,1);

  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  xNome:='NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  xNome:=DM.TBNfeNFE_NOME.Value;
  NumeroCob:=DM.TBNfeNFE_NUMERO.Value;
  if NumeroCob='' then NumeroCob:='SN'; //chega desse erro idiota.
  Fone:=LimparFormatacao(DM.TBNfeNFE_FONE1.Value);
  if Fone.Length<11 then
  Fone:=''; //chega desse erro idiota também.
  Result:=U.destinatario310(
    CNPJ, CPF, IDEstrangeiro, xNome, DM.TBNfeNFE_ENDERECO.Value, NumeroCob, DM.TBNfeNFE_COMPLEMENTO.Value,
    DM.TBNfeNFE_BAIRRO.Value, IntToStr(DM.TBNfeNFE_CIDADECODIGO.Value), DM.TBNfeNFE_CIDADE.Value,
    DM.TBNfeNFE_ESTADO.Value, LimparFormatacao(DM.TBNfeNFE_CEP.Value),
    IntToStr(DM.TBNfeNFE_PAISCODIGO.Value), DM.TBNfeNFE_PAIS.Value, Fone,
    IndIEDest, LimparFormatacao(DM.TBNfeNFE_IE.Value), LimparFormatacao(DM.TBClientesCLI_SUFRAMA.Value), '', ''
  );
end;

function MontarProdutos(const U: NFe_Util_2G_Interface): WideString;
var Item: Integer;
  COFINS, COFINSST, Detalhes, IBSCBS, ICMS, ICMSUFDest, II, Imposto, IPI, ISS, IS_, ItemDetalhe, PIS, PISST, DFeReferenciado, Produto: WideString;
  InfAdProd: String;
begin
  Detalhes:='';
  DM.TBNfeItens.DisableControls;
  DM.TBNfeItens.First;
  Item:=0;
  while not DM.TBNfeItens.Eof do
  begin
    Item      :=Item+1;

    PIS       :=MontarItemPIS(U); //.PIS(AlignText(DM.TBNfeItensNFI_CSTPIS.AsString,'0',2,taRight), DM.TBNfeItensNFI_BASEPIS.AsExtended, DM.TBNfeItensNFI_ALIQPIS.AsExtended, DM.TBNfeItensNFI_VALORPIS.AsExtended,0,0);
    PISST     :=MontarItemPISST(U);
    COFINS    :=MontarItemCOFINS(U);
    COFINSST  :=MontarItemCOFINSST(U);
    IPI       :=MontarItemIPI(U);
    II        :=MontarItemII(U);
    ISS       :=MontarItemISS(U);
    ICMS      :=MontarItemICMS(U);
    ICMSUFDest:=MontarItemICMSUFDest(U);
    IS_       :=MontarItemIS(U); //rtc
    IBSCBS    :=MontarItemIBSCBS(U); //rtc

    if (DM.TBNfeNFE_FINALIDADE.Value='5 - NOTA DE CREDITO') or (DM.TBNfeNFE_FINALIDADE.Value='6 - NOTA DE DEBITO') then
    begin
      ICMS:='';
      IPI:='';
      II:='';
      PIS:='';
      PISST:='';
      COFINS:='';
      COFINSST:='';
      ICMSUFDest:='';
      ISS:='';
    end;

    Imposto:=MontarItemImposto(U, ICMS, IPI, II, PIS, PISST, COFINS, COFINSST, ISS, ICMSUFDest, IS_, IBSCBS);

    Produto:=MontarItem(U);

    InfAdProd:='';
    if DM.TBNfeItensNFI_QUANTIDADETROCA.Value>0 then
    InfAdProd:='Abatimento Ref. Troca: '+DM.TBNfeItensNFI_DESCVALOR.AsString+' Qtde: '+DM.TBNfeItensNFI_QUANTIDADETROCA.AsString;

    DFeReferenciado:='';
    if DM.TBNfeItensNFI_DFEREF.Value<>'' then
    DFeReferenciado:=U.DFeReferenciado(DM.TBNfeItensNFI_DFEREF.Value,DM.TBNfeItensNFI_DFEREFITEM.Value);

    ItemDetalhe:=U.detalheRTC(
      Item,
      Produto,
      Imposto,
      InfAdProd,
      0,
      0,
      '', //obsContItem... funcao: obsCont()
      '', //obsFiscoItem... funcao: obsFisco
      DM.TBNfeItensNFI_VALORTOTAL.AsExtended,
      DFeReferenciado
    );

    Detalhes:=Detalhes+ItemDetalhe;

    DM.TBNfeItens.Next;
  end;
  DM.TBNfeItens.EnableControls;
  Result:=Detalhes;
end;

function MontarTotais(const U: NFe_Util_2G_Interface): WideString;
var vBC, vCOFINS, vICMS, vPIS: Currency;
  ICMSTot, ISSQNTot, retTrib, IBSCBSTot, gIBS, gCBS, gIS, gMono: WideString;
  A, M, D: Word;
begin
  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  begin
    if DM.TBNfeNFE_DESTACARIMPOSTOS.Value='S' then
    begin
      vBC:=DM.TBNfeNFE_BASEICMS.AsExtended; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
      vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
    end else
    begin
      vBC:=0; //não destacar esses impostos para simples nacional... nas devolucoes deve destacar o IPI.
      vICMS:=0;
      vPIS:=0; //nao preencher pis e cofins para simples nacional.
      vCOFINS:=0;
    end;
  end else
  begin //demais empresas.
    vBC:=DM.TBNfeNFE_BASEICMS.AsExtended;
    vICMS:=DM.TBNfeNFE_TOTALICMS.AsExtended;
    vPIS:=DM.TBNfeNFE_TOTALPIS.AsExtended;
    vCOFINS:=DM.TBNfeNFE_TOTALCOFINS.AsExtended;
  end;

  {$REGION 'Grupo ICMSTot'}
  ICMSTot:=U.totalICMSNT2023001(
    vBC, vICMS, DM.TBNfeNFE_BASEICMSST.AsExtended, DM.TBNfeNFE_TOTALICMSST.AsExtended,
    DM.TBNfeNFE_TOTALPRODUTOS.AsExtended+DM.TBNfeNFE_DESCVALOR.AsExtended,
    DM.TBNfeNFE_VALORFRETE.AsExtended, DM.TBNfeNFE_VALORSEGURO.AsExtended,
    DM.TBNfeNFE_DESCVALOR.AsExtended, DM.TBNfeNFE_TOTALII.AsExtended,
    DM.TBNfeNFE_TOTALIPI.AsExtended, vPIS, vCOFINS,
    DM.TBNfeNFE_VALORDESPACES.AsExtended, DM.TBNfeNFE_VALORTOTAL.AsExtended,
    DM.TBNfeNFE_TOTALTRIBUTOS.AsExtended, 0, DM.TBNfeNFE_TOTALICMSUFDEST.AsExtended,
    DM.TBNfeNFE_TOTALICMSUFREMET.AsExtended, 0, DM.TBNfeNFE_TOTALFCP.AsExtended,
    DM.TBNfeNFE_TOTALFCPST.AsExtended, 0, 0, 0, 0, 0, 0, 0, 0
  );
  {$ENDREGION}

  {$REGION 'Grupo ISSQNTot'}
  ISSQNTot:=U.totalISS310(
    DM.TBNfeNFE_TOTALSERVICOS.AsExtended, DM.TBNfeNFE_BASEISS.AsExtended,
    DM.TBNfeNFE_TOTALISS.AsExtended,
    0, //total pis sobre servico.
    0, //total cofins sobre servico.
    DateToFBDate(DM.TBNfeNFE_DTPRESTSERVICO.Value), DM.TBNfeNFE_TOTALISSDEDUCAO.AsExtended,
    DM.TBNfeNFE_TOTALISSOUTROS.AsExtended, DM.TBNfeNFE_TOTALISSDESCINCOND.AsExtended,
    DM.TBNfeNFE_TOTALISSDESCCOND.AsExtended, DM.TBNfeNFE_TOTALISSRETENCAO.AsExtended,
    Copy(DM.TBEmpresaEMP_ENQUADRAMENTOISS.Value,1,1)
  );
  {$ENDREGION}

  retTrib:=U.tributoRetido(0,0,0,DM.TBNfeNFE_BASEIRRF.AsExtended,DM.TBNfeNFE_TOTALIRRF.AsExtended,0,0);

  {$REGION 'Grupo IBSCBStot'}
  gIBS:=U.gIBSTot(
    DM.TBNfeNFE_IBSUFDIFERIMENTO.AsExtended,
    DM.TBNfeNFE_IBSUFDEVOLUCAO.AsExtended,
    DM.TBNfeNFE_IBSUFVALOR.AsExtended,
    DM.TBNfeNFE_IBSMUNDIFERIMENTO.AsExtended,
    DM.TBNfeNFE_IBSMUNDEVOLUCAO.AsExtended,
    DM.TBNfeNFE_IBSMUNVALOR.AsExtended,
    DM.TBNfeNFE_IBSVALOR.AsExtended,
    DM.TBNfeNFE_IBSCREDPRES.AsExtended,
    DM.TBNfeNFE_IBSCREDPRESSUS.AsExtended
  );

  gCBS:=U.gCBSTot(
    DM.TBNfeNFE_CBSDIFERIMENTO.AsExtended,
    DM.TBNfeNFE_CBSDEVOLUCAO.AsExtended,
    DM.TBNfeNFE_CBSVALOR.AsExtended,
    DM.TBNfeNFE_CBSCREDPRES.AsExtended,
    DM.TBNfeNFE_CBSCREDPRESSUS.AsExtended
  );

  gMono:=U.gMonoTot(
    DM.TBNfeNFE_IBSMONO.AsExtended,
    DM.TBNfeNFE_CBSMONO.AsExtended,
    DM.TBNfeNFE_IBSMONORETENCAO.AsExtended,
    DM.TBNfeNFE_CBSMONORETENCAO.AsExtended,
    DM.TBNfeNFE_IBSMONORETIDO.AsExtended,
    DM.TBNfeNFE_CBSMONORETIDO.AsExtended
  );

  if DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA' then
  IBSCBSTot:=U.IBSCBSTot(DM.TBNfeNFE_BASEIBSCBS.AsExtended, gIBS, gCBS, gMono) else
  IBSCBSTot:=U.IBSCBSTot(DM.TBNfeNFE_BASEIBSCBS.AsExtended, '', '', '');
  {$ENDREGION}

//  if (DM.TBNfeNFE_FINALIDADE.Value='5 - NOTA DE CREDITO') or (DM.TBNfeNFE_FINALIDADE.Value='6 - NOTA DE DEBITO') then
//  begin
//    //ICMSTot:='';
//    //ISSQNTot:='';
//    //retTrib:='';
//    //IBSCBSTot:='';
//  end;

  DecodeDate(Now,A,M,D);
  if A > 2025 then //remover em 2026.
  begin
    Result:=U.totalRTC(
      ICMSTot,
      ISSQNTot,
      retTrib,
      DM.TBNfeNFE_TOTALIS.AsExtended,
      IBSCBSTot,
      DM.TBNfeNFE_VALORTOTALRTC.AsExtended
    );
  end else
  begin
    Result:=U.totalRTC(
      ICMSTot,
      ISSQNTot,
      retTrib,
      DM.TBNfeNFE_TOTALIS.AsExtended,
      IBSCBSTot,
      (DM.TBNfeNFE_VALORTOTAL.AsExtended - DM.TBNfeNFE_TOTALIPI.AsExtended)
      //DM.TBNfeNFE_VALORTOTALRTC.AsExtended
    );
  end;

end;

function MontarTransportadora(const U: NFe_Util_2G_Interface): WideString;
var CPF, CNPJ: String;
  EmpTransp, Lacres, Reboque, Veiculo, Volumes: WideString;
begin
  if (not DM.TBNfeNFE_TRANSPCNPJ.IsNull) and (DM.TBNfeNFE_TRANSPCNPJ.Value<>'  .   .   /    -  ') then
  begin
    CNPJ:=LimparFormatacao(DM.TBNfeNFE_TRANSPCNPJ.Value);
    CPF:='';
  end else
  begin
    CNPJ:='';
    CPF:=LimparFormatacao(DM.TBNfeNFE_TRANSPCPF.Value);
  end;

  if DM.TBNfeNFE_TRANSPNOME.Value<>'' then
  EmpTransp:=U.Transporta(CNPJ,CPF,DM.TBNfeNFE_TRANSPNOME.Value,LimparFormatacao(DM.TBNfeNFE_TRANSPIE.Value),DM.TBNfeNFE_TRANSPENDERECO.Value,DM.TBNfeNFE_TRANSPCIDADE.Value,DM.TBNfeNFE_TRANSPESTADO.Value);

  if DM.TBNfeNFE_VEICULOPLACA.Value<>'' then
  Veiculo:=U.VeicTransp(LimparFormatacao(DM.TBNfeNFE_VEICULOPLACA.Value),DM.TBNfeNFE_VEICULOPLACAUF.Value,DM.TBNfeNFE_VEICULORNTC.Value);

  if DM.TBNfeNFE_REBOQUEPLACA.Value<>'' then
  Reboque:=U.Reboque(LimparFormatacao(DM.TBNfeNFE_REBOQUEPLACA.Value),DM.TBNfeNFE_REBOQUEPLACAUF.Value,DM.TBNfeNFE_REBOQUERNTC.Value);

  Lacres:='';
  if not DM.TBNfeNFE_LACRES.IsNull then
  Lacres:=U.lacres(DM.TBNfeNFE_LACRES.Value);

  if not DM.TBNfeNFE_VOLUMES.IsNull then
  Volumes:=U.vol(DM.TBNfeNFE_VOLUMES.Value,DM.TBNfeNFE_ESPECIE.Value,DM.TBNfeNFE_MARCA.Value,DM.TBNfeNFE_VOLUMESNUM.Value,DM.TBNfeNFE_PESOLIQ.AsExtended,DM.TBNfeNFE_PESOBRUTO.AsExtended,Lacres);

  Result:=U.transportador2G(
    Copy(DM.TBNfeNFE_FRETE.Value,1,1),
    EmpTransp,
    '',
    Veiculo,
    Reboque,
    '',
    '',
    Volumes
  ); //Omitindo retTransp, vagao, balsa.
end;

function MontarCobranca(const U: NFe_Util_2G_Interface): WideString;
var Duplicatas: WideString;
  TipoIntegracao, TipoPagamento, ValorDuplicata: String;
  vDesc, vOrig, vLiq: Currency;
  indPag, I: Integer;
begin
  Duplicatas:='';
  Result:='';

  indPag:=StrToInt(Copy(DM.TBNfeCPG_TIPOPAGAMENTO.Value,1,1));
  if IndPag=0 then //0=a vista, nao informa cobrança.
  Result:='' else
  begin
    if DM.TBNfeNFE_MOVIMENTAFINANCEIRO.Value='S' then
    begin
      for I:=3 to FormNfe.DBMemo2.Lines.Count-1 do //descarta as 3 primeiras linhas.
      begin
        //AlignText(IntToStr(ParcelaAtual),' ',8,taLeft)+DateToStr(Vencimento,FS)+AlignText(Format('%m',[ValorParcela]),' ',15,taRight)
        ValorDuplicata:=Trim(Copy(FormNfe.DBMemo2.Lines[I],19,15));
        if Copy(ValorDuplicata,1,2)='R$' then Delete(ValorDuplicata,1,2); //retira o R$
        ValorDuplicata:=Trim(ValorDuplicata); //dá mais um trim para ter certeza que nao ficou espaço depois do R$.
        Duplicatas:=Duplicatas+U.dup(
          AlignText(Trim(Copy(FormNfe.DBMemo2.Lines[I],1,8)),'0',3,taRight),
          StrToDate(Copy(FormNfe.DBMemo2.Lines[I],9,10)),
          StrToFloat(EliminarPontos(ValorDuplicata))
        );
      end;
    end;
    //se o valor do desconto for zero, chama novamente a funcao passando 0.001 para gerar a tag vDesc com valor zerado.
    vDesc:=DM.TBNfeNFE_DESCVALOR.AsExtended;
    vOrig:=DM.TBNfeNFE_VALORTOTAL.AsExtended+vDesc;
    vLiq:=DM.TBNfeNFE_VALORTOTAL.AsExtended;
    if vDesc=0 then vDesc:=0.001;
    if vOrig=0 then vOrig:=0.001;
    if vLiq=0  then  vLiq:=0.001;

    if DM.TBNfeNFE_FINALIDADE.Value<>'2 - NFE COMPLEMENTAR' then
    Result:=U.cobr(IntToStr(DM.TBNfeNFE_CODIGO.Value),vOrig,vDesc,vLiq,Duplicatas);
  end;
end;

function MontarPagamento(const U: NFe_Util_2G_Interface): WideString;
var PagamentoDetalhe: WideString;
  TipoIntegracao, TipoPagamento: String;
  ValorPagto: Currency;
begin
  Result:='';

  if (DM.TBNfeNFE_FINALIDADE.Value='3 - NFE DE AJUSTE') or
     (DM.TBNfeNFE_FINALIDADE.Value='4 - DEVOLUCAO DE MERCADORIA') then
  TipoPagamento:='90' else
  TipoPagamento:=Copy(DM.TBNfeCPG_MEIOPAGAMENTO.Value,1,2);

  TipoIntegracao:='';
  if DM.TBNfeCPG_TIPOINTEGRACAO.Value<>'0 - NAO INFORMAR' then
  TipoIntegracao:=Copy(DM.TBNfeCPG_TIPOINTEGRACAO.Value,1,1);

  ValorPagto:=DM.TBNfeNFE_VALORTOTAL.AsExtended;
  if TipoPagamento='90' then ValorPagto:=0;

  PagamentoDetalhe:=U.detPag(
    Copy(DM.TBNfeCPG_TIPOPAGAMENTO.Value,1,1),
    TipoPagamento,
    ValorPagto,
    TipoIntegracao, '', '', ''
  ); //2=idem acima.

  Result:=U.pagamento400(PagamentoDetalhe,0);
end;

function MontarInfoAdicional(const U: NFe_Util_2G_Interface): WideString;
var InfoComplementar: WideString;
begin
  InfoComplementar:=DeleteLineBreaks(DM.TBNfeNFE_INFOCOMPLEMENTAR.Value);
  //se total ICMS crédito SN maior que zero, então insere mensagem sobre permissão de crédito...
  if DM.TBNfeNFE_TOTALICMSCREDSN.Value>0 then
  Result:=U.infAdic2G(
    DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value)+' Permite o aproveitamento do credito de ICMS no valor de '+Format('%m',[DM.TBNfeNFE_TOTALICMSCREDSN.AsExtended])+' correspondente '+
    'a aliquota de '+DM.TBNfeNFE_ALIQICMSCREDSN.AsString+'% nos termos do art. 23 da LC 123.',InfoComplementar,'','',''
  ) else
  Result:=U.infAdic2G(DeleteLineBreaks(DM.TBNfeNFE_INFOADICFISCO.Value),InfoComplementar,'','','');
end;

function MontarExportacao(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeNFE_EXUFSAIDA.Value<>'' then
  Result:=U.exporta310(DM.TBNfeNFE_EXUFSAIDA.Value,DM.TBNfeNFE_EXLOCAL.Value,'');
end;

function MontarCompra(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
end;

function MontarRetirada(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
end;

function MontarEntrega(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
end;

function MontarAutXML(const U: NFe_Util_2G_Interface): WideString;
var AutXML: WideString;
begin
  AutXML:='';
  if (DM.TBEmpresaFOR_CNPJ.Value<>'') and (DM.TBEmpresaFOR_CNPJ.Value<>DM.TBNfeNFE_CNPJ.Value) then
  AutXML:=AutXML+U.autXML(LimparFormatacao(DM.TBEmpresaFOR_CNPJ.Value),'');

  //Autoriza o CNPJ da transportadora a baixar o XML.
  if (DM.TBNfeNFE_TRANSPCNPJ.Value<>'') and (DM.TBNfeNFE_TRANSPCNPJ.Value<>DM.TBNfeNFE_CNPJ.Value) then
  AutXML:=AutXML+U.autXML(LimparFormatacao(DM.TBNfeNFE_TRANSPCNPJ.Value),'');

  Result:=AutXML;
end;

function MontarRespTecnico(const U: NFe_Util_2G_Interface): WideString;
begin
  //responsável técnico pelo software.
  Result:=U.infRespTec('12843516000187','Rogerio','rogeriopett@gmail.com','47991963060','','','');
  //token (hash) gerado em https://updweb.fazenda.pr.gov.br/upd/solicitacao_token_fornecedor. sistema UPD.
  if DM.TBParametrosPAR_CSRT.Value<>'' then
  Result:=U.infRespTec('12843516000187','Rogerio','rogeriopett@gmail.com','47991963060',DM.TBParametrosPAR_CSRTID.Value.ToString,DM.TBParametrosPAR_CSRT.Value,DM.TBNfeNFE_CHAVEACESSO.Value);
end;

function MontarIntermediador(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.infIntermed(
    LimparFormatacao(DM.TBNfeNFE_INTERMEDIADORCNPJ.Value),
    DM.TBNfeNFE_INTERMEDIADORCAD.Value
  );
end;

function MontarAgropecuario(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
//  Result:=U.InfAgropecuario(
//    LimparFormatacao(DM.TBNfeNFE_INTERMEDIADORCNPJ.Value),
//    DM.TBNfeNFE_INTERMEDIADORCAD.Value
//  );
end;

//##############################################################################
//para detalhamento dos produtos.
//##############################################################################
function MontarItem(const U: NFe_Util_2G_Interface): WideString;
var IndTot, indBemMovelUsado: Integer;
  ProdutoCodigo, vUnCom: String;
  credPresumido, DetExportacao, DI, Rastro: WideString;
begin
  //indtot 0:nao compoe o valor total da nf. 1:compoe o total.
  if (DM.TBNfeItensNFI_COMPOETOTAL.Value='S') or (DM.TBNfeItensNFI_COMPOETOTAL.IsNull) then
  IndTot:=1 else
  IndTot:=0;

//  cEAN:='SEM GTIN';
//  if DM.TBNfeItensNFI_CODIGOBARRAS.Value<>'' then
//  cEAN:=DM.TBNfeItensNFI_CODIGOBARRAS.Value;

  ProdutoCodigo:=IntToStr(DM.TBNfeItensNFI_PRODUTO.Value);
  if (DM.TBParametrosPAR_USARCODIGOFAB.Value='S') and (DM.TBNfeItensNFI_CODIGOFAB.Value<>'') then
  ProdutoCodigo:=DM.TBNfeItensNFI_CODIGOFAB.Value;

  vUnCom:=Decimais2(DM.TBNfeItensNFI_VALORUNIT.AsExtended,8); //o campo na funcao nao é float como valor total.
  vUnCom:=StringReplace(vUnCom,',','.',[rfReplaceAll]);

  Rastro:=MontarItemRastro(U);
  DI:=MontarItemDI(U);
  DetExportacao:=MontarItemDetExportacao(U);
  credPresumido:='';
  indBemMovelUsado:=0;

  Result:=U.produtoRTC(
    ProdutoCodigo,
    ift(DM.TBNfeItensNFI_CODIGOBARRAS.Value<>'', DM.TBNfeItensNFI_CODIGOBARRAS.Value, 'SEM GTIN'),
    DM.TBNfeItensNFI_DESCRICAO.Value,
    DM.TBNfeItensNFI_CLASSFISCAL.Value,
    '', //nve
    DM.TBNfeItensNFI_CEST.Value,
    '',
    '',
    DM.TBNfeItensNFI_BENEFICIO.Value,
    '',
    DM.TBNfeItensNFI_CFOP.Value,
    DM.TBNfeItensNFI_UNIDADE.Value,
    DM.TBNfeItensNFI_QUANTIDADE.AsString,
    vUnCom,
    DM.TBNfeItensNFI_VALORTOTALBRUTO.AsExtended,
    ift(DM.TBNfeItensNFI_CODIGOBARRAS.Value<>'', DM.TBNfeItensNFI_CODIGOBARRAS.Value, 'SEM GTIN'), //eantrib
    DM.TBNfeItensNFI_UNIDADE.Value,
    DM.TBNfeItensNFI_QUANTIDADE.AsString,
    vUnCom,
    DM.TBNfeItensNFI_VALORFRETE.AsExtended,
    DM.TBNfeItensNFI_VALORSEGURO.AsExtended,
    DM.TBNfeItensNFI_DESCVALOR.AsExtended,
    DM.TBNfeItensNFI_VALORACESSORIAS.AsExtended,
    IndTot,
    DI,
    DetExportacao,
    '',
    DM.TBNfeItensNFI_PEDIDOCLIENTE.Value,
    DM.TBNfeItensNFI_PEDIDOCLIENTEITEM.Value.ToString,
    DM.TBNfeItensNFI_FCI.Value,
    Rastro,
    credPresumido,
    indBemMovelUsado
  );
end;

function MontarItemRastro(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeItensNFI_LOTE.Value<>'' then
  begin
    DM.QYAux4.Close;
    DM.QYAux4.SQL.Clear;
    DM.QYAux4.SQL.Add('select LOT_CODIGO, LOT_FABRICACAO, LOT_LOTE, LOT_VALIDADE from LOTES where LOT_PRODUTO=:produto and LOT_CODIGO=:codigo');
    DM.QYAux4.ParamByName('produto').AsInteger:=DM.TBNfeItensNFI_PRODUTO.Value;
    DM.QYAux4.ParamByName('codigo').AsInteger:=StrToInt(DM.TBNfeItensNFI_LOTE.Value);
    DM.QYAux4.Open;
    Result:=U.rastro(
      DM.TBNfeItensNFI_LOTE.Value,
      DM.TBNfeItensNFI_QUANTIDADE.AsExtended,
      DM.QYAux4.FieldByName('LOT_FABRICACAO').AsDateTime,
      DM.QYAux4.FieldByName('LOT_VALIDADE').AsDateTime,
      DM.QYAux4.FieldByName('LOT_LOTE').AsString
    );
    DM.QYAux4.Close;
  end;
end;

function MontarItemDetExportacao(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeItensNFI_EXDRAWBACK.Value<>'' then
  Result:=U.detExport(
    DM.TBNfeItensNFI_EXDRAWBACK.Value,
    DM.TBNfeItensNFI_EXREGISTRO.Value,
    DM.TBNfeItensNFI_EXCHAVEACESSO.Value,
    FloatToStr(DM.TBNfeItensNFI_EXQUANTIDADE.AsExtended)
  );
end;

function MontarItemDI(const U: NFe_Util_2G_Interface): WideString;
var Adicoes: WideString;
begin
  Result:='';
  Adicoes:='';
  if DM.TBNfeItensNFI_DINUMERO.Value<>'' then //se tiver declaração de importação...
  begin

    DM.TBNfeItensAdicoes.Open;
    DM.TBNfeItensAdicoes.DisableControls;
    DM.TBNfeItensAdicoes.First;
    while not DM.TBNfeItensAdicoes.Eof do
    begin
      Adicoes:=Adicoes+U.adi310(
        DM.TBNfeItensAdicoesNFA_NUMERO.Value,
        DM.TBNfeItensAdicoesNFA_SEQUENCIA.Value,
        DM.TBNfeItensAdicoesNFA_FABRICANTE.Value,
        DM.TBNfeItensAdicoesNFA_DESCONTODI.AsExtended,
        DM.TBNfeItensAdicoesNFA_DRAWBACK.Value
      );
      DM.TBNfeItensAdicoes.Next;
    end;
    DM.TBNfeItensAdicoes.EnableControls;
    DM.TBNfeItensAdicoes.Close;

    Result:=U.DI310(
      DM.TBNfeItensNFI_DINUMERO.Value,
      DateToFBDate(DM.TBNfeItensNFI_DIDATA.Value),
      DM.TBNfeItensNFI_DIDESEMBARACOLOCAL.Value,
      DM.TBNfeItensNFI_DIDESEMBARACOUF.Value,
      DateToFBDate(DM.TBNfeItensNFI_DIDESEMBARACODATA.Value),
      StrToInt(Copy(DM.TBNfeItensNFI_DITRANSPORTE.Value,1,2)),
      DM.TBNfeItensNFI_DIVALORAFRMM.AsExtended,
      StrToInt(Copy(DM.TBNfeItensNFI_DIINTERMEDIO.Value,1,1)),
      LimparFormatacao(DM.TBNfeItensNFI_DICNPJ.Value),
      DM.TBNfeItensNFI_DITERCEIROUF.Value,
      DM.TBNfeItensNFI_DIEXPORTADORCOD.Value,
      Adicoes
    );
  end;
end;

function MontarItemPIS(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.PIS(AlignText(DM.TBNfeItensNFI_CSTPIS.AsString,'0',2,taRight), DM.TBNfeItensNFI_BASEPIS.AsExtended, DM.TBNfeItensNFI_ALIQPIS.AsExtended, DM.TBNfeItensNFI_VALORPIS.AsExtended,0,0);
end;

function MontarItemPISST(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeItensNFI_ALIQPISST.Value>0 then
  begin
    if DM.TBNfeItensNFI_SOMAPISST.Value='S' then
    Result:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,1) else
    Result:=U.PISSTNT2020005(DM.TBNfeItensNFI_BASEPISST.AsExtended,DM.TBNfeItensNFI_ALIQPISST.AsExtended,DM.TBNfeItensNFI_VALORPISST.AsExtended,0,0,0);
  end;
end;

function MontarItemCOFINS(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.COFINS(AlignText(DM.TBNfeItensNFI_CSTCOFINS.AsString,'0',2,taRight), DM.TBNfeItensNFI_BASECOFINS.AsExtended, DM.TBNfeItensNFI_ALIQCOFINS.AsExtended, DM.TBNfeItensNFI_VALORCOFINS.AsExtended,0,0);
end;

function MontarItemCOFINSST(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeItensNFI_ALIQCOFINSST.Value>0 then
  begin
    if DM.TBNfeItensNFI_SOMACOFINSST.Value='S' then
    Result:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,1) else
    Result:=U.COFINSSTNT2020005(DM.TBNfeItensNFI_BASECOFINSST.AsExtended,DM.TBNfeItensNFI_ALIQCOFINSST.AsExtended,DM.TBNfeItensNFI_VALORCOFINSST.AsExtended,0,0,0);
  end;
end;

function MontarItemIPI(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.IPI400(
    '',
    '',
    0,
    IntToStr(DM.TBNfeItensNFI_ENQUADRAMENTOIPI.Value), //código de enquadramento legal do IPI - tabela a ser criada pela RFB.
    AlignText(IntToStr(DM.TBNfeItensNFI_CSTIPI.Value),'0',2,taRight),
    DM.TBNfeItensNFI_BASEIPI.AsExtended,
    DM.TBNfeItensNFI_ALIQIPI.AsExtended,
    DM.TBNfeItensNFI_VALORIPI.AsExtended,
    0,
    0
  );
end;

function MontarItemII(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.II(
    DM.TBNfeItensNFI_BASEII.AsExtended,
    DM.TBNfeItensNFI_VALORADUANA.AsExtended,
    DM.TBNfeItensNFI_VALORII.AsExtended,
    DM.TBNfeItensNFI_VALORIOF.AsExtended
  );
end;

function MontarItemISS(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.ISSQN310(
    DM.TBNfeItensNFI_BASEISS.AsExtended,
    DM.TBNfeItensNFI_ALIQISS.AsExtended,
    DM.TBNfeItensNFI_VALORISS.AsExtended,
    IntToStr(DM.TBNfeNFE_CIDADECODIGO.Value),
    DM.TBNfeItensNFI_TIPOISS.Value,
    DM.TBNfeItensNFI_VALORISSDEDUCAO.AsExtended,
    DM.TBNfeItensNFI_VALORISSOUTROS.AsExtended,
    DM.TBNfeItensNFI_VALORISSDESCINCOND.AsExtended,
    DM.TBNfeItensNFI_VALORISSDESCCOND.AsExtended,
    DM.TBNfeItensNFI_VALORISSRETENCAO.AsExtended,
    Copy(DM.TBNfeItensNFI_INDICADORISS.Value,1,1),
    DM.TBNfeItensNFI_SERVICOISS.Value,
    IntToStr(DM.TBNfeItensNFI_CIDADEISS.Value),
    IntToStr(DM.TBNfeItensNFI_PAISISS.Value),
    DM.TBNfeItensNFI_PROCESSOISS.Value,
    ift(DM.TBNfeItensNFI_INCENTIVOISS.Value='S', '1', '2')
  );
end;

function MontarItemICMS(const U: NFe_Util_2G_Interface): WideString;
var CSTIcms: String;
  BCFCP, BCFCPST: Currency;
begin
  CSTIcms:=DM.TBNfeItensNFI_CSTICMS.Value.ToString;
  if CSTIcms.Length < 2 then // se tem menos de 2 digitos preenche com zero a esquerda.
  CSTIcms:=AlignText(CSTIcms,'0',2,taRight);

  BCFCP:=DM.TBNfeItensNFI_BASEICMS.AsExtended;
  if DM.TBNfeItensNFI_ALIQFCP.AsExtended=0 then BCFCP:=0;

  BCFCPST:=DM.TBNfeItensNFI_BASEICMSST.AsExtended;
  if DM.TBNfeItensNFI_ALIQFCPST.AsExtended=0 then BCFCPST:=0;

  if (DM.TBNfeItensNFI_CSTICMS.Value=60) or (DM.TBNfeItensNFI_CSTICMS.Value=500) then
  begin
    Result:=U.icmsEfetNT201805(
      DM.TBNfeItensNFI_ORIGEM.Value, CSTIcms, DM.TBNfeItensNFI_BASEICMSSTRET.AsExtended,
      DM.TBNfeItensNFI_ALIQICMSSTRET.AsExtended, DM.TBNfeItensNFI_VALORICMSSUBSTITUTO.AsExtended,
      DM.TBNfeItensNFI_VALORICMSSTRET.AsExtended, 0, 0, 0, 0, 0, 0, 0, 0, 0
    );
  end else
  begin
    Result:=U.icmsNT2020005(
      DM.TBNfeItensNFI_ORIGEM.Value, CSTIcms, StrToInt(Copy(DM.TBNfeItensNFI_MODICMS.Value,1,1)),
      DM.TBNfeItensNFI_ALIQICMSRED.AsExtended, DM.TBNfeItensNFI_BASEICMS.AsExtended, DM.TBNfeItensNFI_ALIQICMS.AsExtended,
      DM.TBNfeItensNFI_VALORICMS.AsExtended, StrToInt(Copy(DM.TBNfeItensNFI_MODICMSST.Value,1,1)),
      DM.TBNfeItensNFI_ALIQICMSADICST.AsExtended, DM.TBNfeItensNFI_ALIQICMSRED.AsExtended,
      DM.TBNfeItensNFI_BASEICMSST.AsExtended, DM.TBNfeItensNFI_ALIQICMSST.AsExtended, DM.TBNfeItensNFI_VALORICMSST.AsExtended,
      DM.TBNfeItensNFI_BASEICMSSTRET.AsExtended,DM.TBNfeItensNFI_VALORICMSSTRET.AsExtended,0,0,
      StrToInt(Copy(DM.TBNfeItensNFI_DESONERACAO.Value,1,2)),0,DM.TBNfeNFE_ESTADO.Value,
      DM.TBNfeNFE_ALIQICMSCREDSN.AsExtended, DM.TBNfeItensNFI_VALORICMSCREDSN.AsExtended,
      DM.TBNfeItensNFI_VALORICMSDESONERADO.AsExtended, 0, 0, 0, BCFCP, DM.TBNfeItensNFI_ALIQFCP.AsExtended,
      DM.TBNfeItensNFI_VALORFCP.AsExtended, BCFCPST, DM.TBNfeItensNFI_ALIQFCPST.AsExtended,
      DM.TBNfeItensNFI_VALORFCPST.AsExtended, 0, 0, 0, 0, DM.TBNfeItensNFI_ALIQFCP.AsExtended,
      DM.TBNfeItensNFI_VALORFCP.AsExtended, DM.TBNfeItensNFI_VALORFCP.AsExtended,
      DM.TBNfeItensNFI_VALORICMSDESONERADO.AsExtended, StrToInt(Copy(DM.TBNfeItensNFI_DESONERACAO.Value,1,2))
    );
  end;
end;

function MontarItemICMSUFDest(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:=U.ICMSUFDest400(
    DM.TBNfeItensNFI_BASEICMS.AsExtended,
    DM.TBNfeItensNFI_BASEICMS.AsExtended,
    DM.TBNfeItensNFI_ALIQFCP.AsExtended,
    DM.TBNfeItensNFI_ALIQICMSINTER.AsExtended,
    DM.TBNfeItensNFI_ALIQICMS.AsExtended,
    DM.TBNfeItensNFI_ALIQICMSINTERPART.AsExtended,
    DM.TBNfeItensNFI_VALORFCP.AsExtended,
    DM.TBNfeItensNFI_VALORICMSUFDEST.AsExtended,
    DM.TBNfeItensNFI_VALORICMSUFREMET.AsExtended
  );
end;

function MontarItemIS(const U: NFe_Util_2G_Interface): WideString;
begin
  Result:='';
  if DM.TBNfeItensNFI_VALORIS.Value > 0 then
  Result:=U.IS_(
    DM.TBNfeItensNFI_CSTIS.Value,
    DM.TBNfeItensNFI_CLASSTRIBIS.Value,
    DM.TBNfeItensNFI_BASEIS.AsExtended,
    DM.TBNfeItensNFI_ALIQIS.AsExtended,
    DM.TBNfeItensNFI_ALIQISESP.AsExtended,
    DM.TBNfeItensNFI_UNIDADE.Value,
    DM.TBNfeItensNFI_QUANTIDADE.AsExtended,
    DM.TBNfeItensNFI_VALORIS.AsExtended
  );
end;

function MontarItemIBSCBS(const U: NFe_Util_2G_Interface): WideString;
var gCBSCredPres, gCredPresIBSZFM, gTribCompraGov, gTribRegular, gTributo, gCBS, gIBSCredPres, gIBSUF, gIBSMun: WideString;
begin
  DM.TBClassTrib.Close;
  DM.TBClassTrib.ParamByName('codigo').AsString:=DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value;
  DM.TBClassTrib.Open;

//vou precisar?  DM.TBCst.Close;
//  DM.TBCst.ParamByName('codigo').AsString:=Copy(DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value,1,3);
//  DM.TBCst.Open;

//  DM.TBRegrasFiscais.Close;
//  DM.TBRegrasFiscais.ParamByName('codigo').AsInteger:=DM.TBNfeItenspro_CLASSTRIBIBSCBS.Value;
//  DM.TBRegrasFiscais.Open;

  //OBS: a regra fiscal utilizada nao fica gravada nos itens.

//  IBSUF:='';
//  IBSMun:='';
//  CBS:='';

  gIBSUF:=U.gIBSUF(
    DM.TBNfeItensNFI_ALIQIBSUF.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSUFDIF.AsExtended,
    DM.TBNfeItensNFI_VALORIBSUFDIF.AsExtended,
    DM.TBNfeItensNFI_VALORIBSUFDEV.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSUFRED.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSUFEFE.AsExtended,
    DM.TBNfeItensNFI_VALORIBSUF.AsExtended
  );

  gIBSMun:=U.gIBSMun(
    DM.TBNfeItensNFI_ALIQIBSMUN.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSMUNDIF.AsExtended,
    DM.TBNfeItensNFI_VALORIBSMUNDIF.AsExtended,
    DM.TBNfeItensNFI_VALORIBSMUNDEV.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSMUNRED.AsExtended,
    DM.TBNfeItensNFI_ALIQIBSMUNEFE.AsExtended,
    DM.TBNfeItensNFI_VALORIBSMUN.AsExtended
  );

  gCBS:=U.gCBS(
    DM.TBNfeItensNFI_ALIQCBS.AsExtended,
    DM.TBNfeItensNFI_ALIQCBSDIF.AsExtended,
    DM.TBNfeItensNFI_VALORCBSDIF.AsExtended,
    DM.TBNfeItensNFI_VALORCBSDEV.AsExtended,
    DM.TBNfeItensNFI_ALIQCBSRED.AsExtended,
    DM.TBNfeItensNFI_ALIQCBSEFE.AsExtended,
    DM.TBNfeItensNFI_VALORCBS.AsExtended
  );

  if DM.TBClassTribCLT_TIPOALIQUOTA.Value='3 - SEM ALIQUOTA' then
  begin
    gIBSUF:=U.gIBSUF(0,0,0,0,0,0,0);
    gIBSMun:=U.gIBSMun(0,0,0,0,0,0,0);
    gCBS:=U.gCBS(0,0,0,0,0,0,0);
  end;

  gTribRegular:='';
  if DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S' then
  begin
    gTribRegular:=U.gTribRegular(
      Copy(DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value,1,3),
      DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value,
      Decimais(DM.TBNfeItensNFI_ALIQIBSUF.AsExtended * (1-DM.TBNfeItensNFI_ALIQIBSUFRED.AsExtended/100),2), //calcula a aliquota efetiva na hora pq na tributacao normal, ele nao calcula e nao pode enviar a tag de reducao.
      DM.TBNfeItensNFI_VALORIBSUF.AsExtended,
      Decimais(DM.TBNfeItensNFI_ALIQIBSMUN.AsExtended * (1-DM.TBNfeItensNFI_ALIQIBSMUNRED.AsExtended/100),2),
      DM.TBNfeItensNFI_VALORIBSMUN.AsExtended,
      Decimais(DM.TBNfeItensNFI_ALIQCBS.AsExtended * (1-DM.TBNfeItensNFI_ALIQCBSRED.AsExtended/100),2),
      DM.TBNfeItensNFI_VALORCBS.AsExtended
    );
  end;

  gIBSCredPres:=''; //caiu fora?
  gCBSCredPres:=''; //caiu fora?

  gTribCompraGov:='';
  if DM.TBNfeNFE_GOVERNAMENTAL.Value<>'0 - NENHUM' then
  begin
    gTribCompraGov:=U.gCompraGov(
      StrToInt(Copy(DM.TBNfeNFE_GOVERNAMENTAL.Value,1,1)),
      DM.TBNfeNFE_GOVERNAMENTALALIQRED.AsExtended,
      StrToInt(Copy(DM.TBNfeNFE_GOVERNAMENTALOP.Value,1,1))
    );
  end;

  gTributo:=U.gIBSCBS(
    DM.TBNfeItensNFI_BASEIBSCBS.AsExtended,
    gIBSUF,
    gIBSMun,
    ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value='3 - SEM ALIQUOTA',0,DM.TBNfeItensNFI_VALORIBS.AsExtended),
    gCBS,
    gTribRegular,
    gIBSCredPres,
    gCBSCredPres,
    gTribCompraGov
  );

//  gTributo:=U.gIBSCBS(
//    (ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA', DM.TBNfeItensNFI_BASEIBSCBS.AsExtended, 0)),
//    (ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA', IBSUF, '')),
//    (ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA', IBSMun, '')),
//    (ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA', DM.TBNfeItensNFI_VALORIBS.AsExtended, 0)),
//    (ift(DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA', CBS, '')),
//    (ift(DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S', TribRegular, '')),
//    (ift(DM.TBClassTribCLT_CREDITOPRESUMIDO.Value='S', IBSCredPres, '')),
//    (ift(DM.TBClassTribCLT_CREDITOPRESUMIDO.Value='S', CBSCredPres, '')),
//    gTribCompraGov
//  );

//  gTributo:=U.gIBSCBS(
//    DM.TBNfeItensNFI_BASEIBSCBS.AsExtended,
//    (ift( (DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA') or (DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S'), IBSUF, '')),
//    (ift( (DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA') or (DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S'), IBSMun, '')),
//    DM.TBNfeItensNFI_VALORIBS.AsExtended,
//    (ift( (DM.TBClassTribCLT_TIPOALIQUOTA.Value<>'3 - SEM ALIQUOTA') or (DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S'), CBS, '')),
//    (ift(DM.TBClassTribCLT_TRIBUTACAOREGULAR.Value='S', TribRegular, '')),
//    (ift(DM.TBClassTribCLT_CREDITOPRESUMIDO.Value='S', IBSCredPres, '')),
//    (ift(DM.TBClassTribCLT_CREDITOPRESUMIDO.Value='S', CBSCredPres, '')),
//    gTribCompraGov
//  );

  gCredPresIBSZFM:='';

  Result:=U.IBSCBS(
    DM.TBNfeItensNFI_CSTIBSCBS.Value,
    DM.TBNfeItensNFI_CLASSTRIBIBSCBS.Value,
    gTributo,
    gCredPresIBSZFM
  );
end;

function MontarItemImposto(const U: NFe_Util_2G_Interface; ICMS, IPI, II, PIS, PISST, COFINS, COFINSST, ISS, ICMSUFDest, IS_, IBSCBS: WideString): WideString;
begin
  if DM.TBNfeItensNFI_TIPO.Value='P' then
  begin
    //Só informa o grupo ICMSUFDest se for operação interestadual e se for nota de saida. Nota de devolução não informa.
    if (DM.TBNfeNFE_ESTADO.Value<>DM.TBEmpresaEMP_ESTADO.Value) and (DM.TBNfeItensNAT_INFORMADIFAL.Value='S') then
    Result:=U.impostoRTC(DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,ICMS,IPI,II,PIS,PISST,COFINS,COFINSST,'',ICMSUFDest,IS_,IBSCBS) else
    Result:=U.impostoRTC(DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,ICMS,IPI,II,PIS,PISST,COFINS,COFINSST,'','',IS_,IBSCBS);
  end else

  if DM.TBNfeItensNFI_TIPO.Value='S' then
  Result:=U.impostoRTC(
    DM.TBNfeItensNFI_VALORTRIBUTOS.AsExtended,
    ICMS, //icms
    IPI, //ipi
    II, //ii
    PIS,
    PISST,
    COFINS,
    COFINSST,
    ISS,
    ICMSUFDest, //icmsufdest
    IS_, //is
    IBSCBS
  );
end;

function LerXMLResNFe(const AXMLStr: String): TResNFeData;
var
  LXMLDoc: IXMLDocument;
  LRoot: IXMLNode;
  LFS: TFormatSettings;

  // Função interna auxiliar para ler a tag ignorando o Namespace (xmlns)
  function GetNodeText(const ANodeName: string): string;
  var I: Integer;
  begin
    Result:='';
    for I:=0 to LRoot.ChildNodes.Count-1 do
    begin
      if SameText(LRoot.ChildNodes[I].LocalName, ANodeName) then
      begin
        Result:=LRoot.ChildNodes[I].Text;
        Exit;
      end;
    end;
  end;

begin
  LXMLDoc:=NewXMLDocument;
  LXMLDoc.LoadFromXML(AXMLStr);
  LRoot:=LXMLDoc.DocumentElement;

  // Configuração regional invariante (Garante ponto '.' como separador decimal do XML)
  LFS:=TFormatSettings.Invariant;

  // Mapeamento dos campos estruturados
  Result.ChNFe   :=GetNodeText('chNFe');
  Result.CNPJ    :=GetNodeText('CNPJ');
  Result.XNome   :=GetNodeText('xNome');
  Result.IE      :=GetNodeText('IE');

  // ISO8601ToDateTime converte nativamente o formato "2026-03-10T11:26:39-03:00"
  Result.DhEmi   :=ISO8601ToDate(GetNodeText('dhEmi'));
  Result.TpNF    :=StrToIntDef(GetNodeText('tpNF'), 0);
  Result.VNF     :=StrToCurrDef(GetNodeText('vNF'), 0, LFS);
  Result.DigVal  :=GetNodeText('digVal');
  Result.DhRecbto:=ISO8601ToDate(GetNodeText('dhRecbto'));
  Result.NProt   :=GetNodeText('nProt');
  Result.CSitNFe :=StrToIntDef(GetNodeText('cSitNFe'), 0);
end;

function LerXMLResEvento(const AXMLStr: string): TResEventoData;
var
  LXMLDoc: IXMLDocument;
  LRoot: IXMLNode;

  // Função interna para varrer os filhos ignorando a URL do xmlns
  function GetNodeText(const ANodeName: string): string;
  var
    I: Integer;
  begin
    Result:='';
    for I:=0 to LRoot.ChildNodes.Count-1 do
    begin
      if SameText(LRoot.ChildNodes[I].LocalName, ANodeName) then
      begin
        Result := LRoot.ChildNodes[I].Text;
        Exit;
      end;
    end;
  end;

begin
  LXMLDoc := NewXMLDocument;
  LXMLDoc.LoadFromXML(AXMLStr);
  LRoot := LXMLDoc.DocumentElement;

  // Extração e tipagem dos dados do evento
  Result.COrgao     := StrToIntDef(GetNodeText('cOrgao'), 0);
  Result.CNPJ       := GetNodeText('CNPJ');
  Result.ChNFe      := GetNodeText('chNFe');
  Result.DhEvento   := ISO8601ToDate(GetNodeText('dhEvento'));
  Result.TpEvento   := StrToIntDef(GetNodeText('tpEvento'), 0);
  Result.NSeqEvento := StrToIntDef(GetNodeText('nSeqEvento'), 0);
  Result.XEvento    := GetNodeText('xEvento');
  Result.DhRecbto   := ISO8601ToDate(GetNodeText('dhRecbto'));
  Result.NProt      := GetNodeText('nProt');
end;

function LerXMLProcEventoNFe(const AXMLStr: String): TProcEventoNFeData;
var
  LXMLDoc: IXMLDocument;
  LRoot: IXMLNode;
  LEvento, LInfEvento, LDetEvento, LCTe: IXMLNode;
  LRetEvento, LInfRet: IXMLNode;

  // Função auxiliar para encontrar um nó pelo LocalName puro
  function EncontrarNo(ANode: IXMLNode; const ALocalName: string): IXMLNode;
  var I: Integer;
  begin
    Result:=nil;
    if ANode=nil then Exit;
    for I:=0 to ANode.ChildNodes.Count-1 do
    begin
      if SameText(ANode.ChildNodes[I].LocalName, ALocalName) then
      begin
        Result := ANode.ChildNodes[I];
        Exit;
      end;
    end;
  end;

  // Função auxiliar para obter o texto de um nó filho direto
  function GetNodeText(ANode: IXMLNode; const ALocalName: string): string;
  var LFound: IXMLNode;
  begin
    Result:='';
    LFound:=EncontrarNo(ANode, ALocalName);
    if LFound<>nil then
    Result:=LFound.Text;
  end;

begin
  // Inicializa a estrutura limpa
  FillChar(Result, SizeOf(Result), 0);

  LXMLDoc:=NewXMLDocument;
  LXMLDoc.LoadFromXML(AXMLStr);
  LRoot:=LXMLDoc.DocumentElement;

  // 1. NAVEGAÇÃO NO BLOCO DO EVENTO (DADOS DO EMISSOR)
  LEvento   :=EncontrarNo(LRoot, 'evento');
  LInfEvento:=EncontrarNo(LEvento, 'infEvento');

  if LInfEvento <> nil then
  begin
    Result.COrgao    :=StrToIntDef(GetNodeText(LInfEvento, 'cOrgao'), 0);
    Result.CNPJ      :=GetNodeText(LInfEvento, 'CNPJ');
    Result.ChNFe     :=GetNodeText(LInfEvento, 'chNFe');
    Result.DhEvento  :=ISO8601ToDate(GetNodeText(LInfEvento, 'dhEvento'));
    Result.TpEvento  :=StrToIntDef(GetNodeText(LInfEvento, 'tpEvento'), 0);
    Result.NSeqEvento:=StrToIntDef(GetNodeText(LInfEvento, 'nSeqEvento'), 0);

    // Desce para os detalhes do evento
    LDetEvento:=EncontrarNo(LInfEvento, 'detEvento');
    if LDetEvento<>nil then
    begin
      Result.DescEvento:=GetNodeText(LDetEvento, 'descEvento');

      // Desce para o grupo específico do CT-e se houver
      LCTe := EncontrarNo(LDetEvento, 'CTe');
      if LCTe <> nil then
      begin
        Result.ChCTe         :=GetNodeText(LCTe, 'chCTe');
        Result.NProtCTe      :=GetNodeText(LCTe, 'nProtCTe');
        Result.DhEntrega     :=ISO8601ToDate(GetNodeText(LCTe, 'dhEntrega'));
        Result.XNomeRecebedor:=GetNodeText(LCTe, 'xNome');
      end;
    end;
  end;

  // 2. NAVEGAÇÃO NO BLOCO DE RETORNO (DADOS DA SEFAZ)
  LRetEvento:=EncontrarNo(LRoot, 'retEvento');
  LInfRet   :=EncontrarNo(LRetEvento, 'infEvento');

  if LInfRet <> nil then
  begin
    Result.CStat      :=StrToIntDef(GetNodeText(LInfRet, 'cStat'), 0);
    Result.XMotivo    :=GetNodeText(LInfRet, 'xMotivo');
    Result.NProt      :=GetNodeText(LInfRet, 'nProt');
    Result.DhRegEvento:=ISO8601ToDate(GetNodeText(LInfRet, 'dhRegEvento'));
  end;
end;

//function LerXMLManifestacaoDest(const AXMLStr: string): TProcEventoMDFData;
//var
//  LXMLDoc: IXMLDocument;
//  LRoot: IXMLNode;
//  LEvento, LInfEvento, LDetEvento: IXMLNode;
//  LRetEvento, LInfRet: IXMLNode;
//
//  // Localiza um nó filho direto apenas pelo LocalName (ignora o xmlns)
//  function EncontrarNoFilho(ANode: IXMLNode; const ALocalName: string): IXMLNode;
//  var
//    I: Integer;
//  begin
//    Result := nil;
//    if ANode = nil then Exit;
//    for I := 0; I < ANode.ChildNodes.Count do
//    begin
//      if SameText(ANode.ChildNodes[I].LocalName, ALocalName) then
//      begin
//        Result := ANode.ChildNodes[I];
//        Exit;
//      end;
//    end;
//  end;
//
//  // Captura o texto interno de um nó filho direto
//  function GetNodeText(ANode: IXMLNode; const ALocalName: string): string;
//  var
//    LFound: IXMLNode;
//  begin
//    Result := '';
//    LFound := EncontrarNoFilho(ANode, ALocalName);
//    if LFound <> nil then
//      Result := LFound.Text;
//  end;
//
//begin
//  FillChar(Result, SizeOf(Result), 0);
//
//  LXMLDoc := NewXMLDocument;
//  LXMLDoc.LoadFromXML(AXMLStr);
//  LRoot := LXMLDoc.DocumentElement;
//
//  // 1. EXTRAÇÃO DOS DADOS DO EVENTO (SOLICITAÇÃO)
//  LEvento := EncontrarNoFilho(LRoot, 'evento');
//  LInfEvento := EncontrarNoFilho(LEvento, 'infEvento');
//
//  if LInfEvento <> nil then
//  begin
//    // Captura do atributo ID se necessário
//    if LInfEvento.HasAttribute('Id') then
//      Result.IdEvento := LInfEvento.Attributes['Id'];
//
//    Result.COrgao     := StrToIntDef(GetNodeText(LInfEvento, 'cOrgao'), 0);
//    Result.TpAmb      := StrToIntDef(GetNodeText(LInfEvento, 'tpAmb'), 0);
//    Result.CNPJAutor  := GetNodeText(LInfEvento, 'CNPJ');
//    Result.ChNFe      := GetNodeText(LInfEvento, 'chNFe');
//    Result.DhEvento   := ISO8601ToDateTime(GetNodeText(LInfEvento, 'dhEvento'));
//    Result.TpEvento   := StrToIntDef(GetNodeText(LInfEvento, 'tpEvento'), 0);
//    Result.NSeqEvento := StrToIntDef(GetNodeText(LInfEvento, 'nSeqEvento'), 0);
//
//    LDetEvento := EncontrarNoFilho(LInfEvento, 'detEvento');
//    if LDetEvento <> nil then
//      Result.DescEvento := GetNodeText(LDetEvento, 'descEvento');
//  end;
//
//  // 2. EXTRAÇÃO DOS DADOS DO RETORNO (AUTORIZAÇÃO SEFAZ)
//  LRetEvento := EncontrarNoFilho(LRoot, 'retEvento');
//  LInfRet    := EncontrarNoFilho(LRetEvento, 'infEvento');
//
//  if LInfRet <> nil then
//  begin
//    Result.CStat       := StrToIntDef(GetNodeText(LInfRet, 'cStat'), 0);
//    Result.XMotivo     := GetNodeText(LInfRet, 'xMotivo');
//    Result.CNPJDest    := GetNodeText(LInfRet, 'CNPJDest');
//    Result.DhRegEvento := ISO8601ToDateTime(GetNodeText(LInfRet, 'dhRegEvento'));
//    Result.NProt       := GetNodeText(LInfRet, 'nProt');
//  end;
//end;

function TraduzirErroSchemaSEFAZ(const AErroBruto: String): String;
var
  vMatches: TMatchCollection;
  vMatch: TMatch;
  vListaErros: TStringList;
  vCampo, vConteudo, vErroTraduzido: String;
begin
  Result:='';
  vListaErros:=TStringList.Create;
  try
    // Expressão regular para capturar o Campo, Conteúdo e a mensagem de Erro interna
    // Ela procura por padrões como: Campo:[NCM] Conteúdo:[0] Erro:...
    vMatches:=TRegEx.Matches(AErroBruto, 'Campo:\[(.*?)\]\s+Conteúdo:\[(.*?)\]\s+Erro:(.*?)(?=(?:\s+\d+\s+-|\s*\]|$))');

    for vMatch in vMatches do
    begin
      vCampo    := vMatch.Groups[1].Value;
      vConteudo := vMatch.Groups[2].Value;
      vErroTraduzido := vMatch.Groups[3].Value;

      // ---- TRADUÇÃO DOS TERMOS TÉCNICOS DA SEFAZ ----
      if Pos('Falha na restrição Pattern',    vErroTraduzido) > 0 then vErroTraduzido:='O formato digitado está incorreto ou fora do padrão permitido.' else
      if Pos('O valor ''0'' é inválido',      vErroTraduzido) > 0 then vErroTraduzido:='Este campo não pode ser enviado com o valor zero.' else
      if Pos('apresenta conteúdo incompleto', vErroTraduzido) > 0 then vErroTraduzido:='Faltam informações obrigatórias para completar este grupo.' else
      if Pos('is not a valid value',          vErroTraduzido) > 0 then vErroTraduzido:='O valor informado não é aceito pelo sistema da Receita.';

      // Limpa espaços extras
      vErroTraduzido:=Trim(vErroTraduzido);

      // Monta uma linha elegante para o usuário final
      vListaErros.Add(Format('• Campo [%s]: %s (Informado: "%s")', [vCampo, vErroTraduzido, vConteudo]));
    end;

    // Tratamento caso a RegEx não pegue o formato específico, mas ainda seja erro de Schema
    if vListaErros.Count = 0 then
    begin
      if Pos('infNFeSupl', AErroBruto) > 0 then
      vListaErros.Add('• Falha na estrutura do QR-Code ou assinatura da Nota Fiscal.') else
      vListaErros.Add('• O XML gerado possui campos obrigatórios ausentes ou com caracteres inválidos.');
    end;

    // Retorna todos os erros encontrados separados por quebra de linha
    Result:='Atenção! A Nota Fiscal foi rejeitada pela Receita pelos seguintes motivos:'#13#10 + vListaErros.Text;
  finally
    vListaErros.Free;
  end;
end;

end.
