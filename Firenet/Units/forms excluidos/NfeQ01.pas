unit NfeQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, qrBarcode, DB, IBDatabase,
  IBCustomDataSet, IBQuery, QRPDFFilt, pngimage, qrFramelines, grimgctrl;

type
  TFormNfeQ01 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape6: TQRShape;
    IMAGEM: TQRImage;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape8: TQRShape;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRShape9: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRLabel17: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape26: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRLabel35: TQRLabel;
    QRShape27: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText40: TQRDBText;
    QRLabel84: TQRLabel;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel114: TQRLabel;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRLabel119: TQRLabel;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRDBText68: TQRDBText;
    QRLabel101: TQRLabel;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    //QRAsBarcode1: TQRAsBarcode;
    QRShape83: TQRShape;
    QRLabel123: TQRLabel;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRLabel124: TQRLabel;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery2NFI_PRODUTO: TIntegerField;
    IBQuery2NFI_CODIGOFAB: TIBStringField;
    IBQuery2NFI_CFOP: TIntegerField;
    IBQuery2NFI_UNIDADE: TIBStringField;
    IBQuery2NFI_ORIGEM: TIBStringField;
    IBQuery2NFI_LOTE: TIBStringField;
    IBQuery2NFI_CSTICMS: TIntegerField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRShape88: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel125: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel126: TQRLabel;
    IBQuery3: TIBQuery;
    IBTransaction3: TIBTransaction;
    IBQuery3REE_DTVENCIMENTO: TDateField;
    QRLabel127: TQRLabel;
    QRDBText6: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel122: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    IBQuery2NFI_COMPLEMENTO: TIBStringField;
    QRShape80: TQRShape;
    QRLabel131: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRFrameline1: TQRFrameline;
    QRFrameline2: TQRFrameline;
    QRFrameline3: TQRFrameline;
    QRFrameline4: TQRFrameline;
    QRFrameline5: TQRFrameline;
    QRFrameline6: TQRFrameline;
    QRFrameline7: TQRFrameline;
    QRFrameline8: TQRFrameline;
    QRFrameline9: TQRFrameline;
    QRFrameline10: TQRFrameline;
    QRFrameline11: TQRFrameline;
    QRFrameline12: TQRFrameline;
    QRFrameline13: TQRFrameline;
    QRFrameline14: TQRFrameline;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    IBQuery2NFI_CODIGO: TIntegerField;
    IBQuery2NFI_DESCRICAO: TIBStringField;
    IBQuery1NFE_BAIRRO: TIBStringField;
    IBQuery1NFE_CEP: TIBStringField;
    IBQuery1NFE_CFOP: TIntegerField;
    IBQuery1NFE_CFOPDESC: TIBStringField;
    IBQuery1NFE_CHAVEACESSO: TIBStringField;
    IBQuery1NFE_CIDADE: TIBStringField;
    IBQuery1NFE_CNPJ: TIBStringField;
    IBQuery1NFE_CODIGO: TIntegerField;
    IBQuery1NFE_CPF: TIBStringField;
    IBQuery1NFE_DTEMISSAO: TDateField;
    IBQuery1NFE_DTSAIDA: TDateField;
    IBQuery1NFE_ENDERECO: TIBStringField;
    IBQuery1NFE_ENTRADASAIDA: TIBStringField;
    IBQuery1NFE_ESPECIE: TIBStringField;
    IBQuery1NFE_ESTADO: TIBStringField;
    IBQuery1NFE_FONE1: TIBStringField;
    IBQuery1NFE_FRETE: TIBStringField;
    IBQuery1NFE_IE: TIBStringField;
    IBQuery1NFE_INFOADICFISCO: TWideMemoField;
    IBQuery1NFE_MARCA: TIBStringField;
    IBQuery1NFE_NOME: TIBStringField;
    IBQuery1NFE_NUMERO: TIBStringField;
    IBQuery1NFE_PEDIDOCLIENTE: TIBStringField;
    IBQuery1NFE_PESOBRUTO: TIBBCDField;
    IBQuery1NFE_PESOLIQ: TIBBCDField;
    IBQuery1NFE_PROTOCOLO: TIBStringField;
    IBQuery1NFE_PROTOCOLODH: TIBStringField;
    IBQuery1NFE_SERIE: TIntegerField;
    IBQuery1NFE_TRANSPCIDADE: TIBStringField;
    IBQuery1NFE_TRANSPCNPJ: TIBStringField;
    IBQuery1NFE_TRANSPENDERECO: TIBStringField;
    IBQuery1NFE_TRANSPESTADO: TIBStringField;
    IBQuery1NFE_TRANSPIE: TIBStringField;
    IBQuery1NFE_TRANSPNOME: TIBStringField;
    IBQuery1NFE_VEICULOPLACA: TIBStringField;
    IBQuery1NFE_VEICULOPLACAUF: TIBStringField;
    IBQuery1NFE_VEICULORNTC: TIBStringField;
    IBQuery1NFE_VENDA: TIntegerField;
    IBQuery1NFE_VOLUMES: TIntegerField;
    IBQuery1NFE_VOLUMESNUM: TIBStringField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    IBQuery1NFE_CLIENTE: TIntegerField;
    QRShape67: TQRShape;
    QRLabel139: TQRLabel;
    IBQuery1NFE_ALIQICMSCREDSN: TFMTBCDField;
    IBQuery1NFE_BASEICMS: TFMTBCDField;
    IBQuery1NFE_BASEICMSST: TFMTBCDField;
    IBQuery1NFE_BASEISS: TFMTBCDField;
    IBQuery1NFE_TOTALFCP: TFMTBCDField;
    IBQuery1NFE_TOTALFCPST: TFMTBCDField;
    IBQuery1NFE_TOTALICMS: TFMTBCDField;
    IBQuery1NFE_TOTALICMSCREDSN: TFMTBCDField;
    IBQuery1NFE_TOTALICMSST: TFMTBCDField;
    IBQuery1NFE_TOTALIPI: TFMTBCDField;
    IBQuery1NFE_TOTALISS: TFMTBCDField;
    IBQuery1NFE_TOTALSERVICOS: TFMTBCDField;
    IBQuery1NFE_TOTALTRIBUTOS: TFMTBCDField;
    IBQuery1NFE_TOTALTRIBUTOSEST: TFMTBCDField;
    IBQuery1NFE_TOTALTRIBUTOSFED: TFMTBCDField;
    IBQuery1NFE_TOTALTRIBUTOSMUN: TFMTBCDField;
    IBQuery1NFE_VALORDESPACES: TFMTBCDField;
    IBQuery1NFE_VALORFRETE: TFMTBCDField;
    IBQuery1NFE_VALORSEGURO: TFMTBCDField;
    IBQuery1NFE_VALORTOTAL: TFMTBCDField;
    IBQuery1NFE_DESCVALOR: TFMTBCDField;
    IBQuery2NFI_ALIQICMS: TFMTBCDField;
    IBQuery2NFI_ALIQIPI: TFMTBCDField;
    IBQuery2NFI_BASEICMS: TFMTBCDField;
    IBQuery2NFI_DESCVALOR: TFMTBCDField;
    IBQuery2NFI_QUANTIDADE: TFMTBCDField;
    IBQuery2NFI_QUANTIDADETROCA: TFMTBCDField;
    IBQuery2NFI_VALORICMS: TFMTBCDField;
    IBQuery2NFI_VALORTOTAL: TFMTBCDField;
    IBQuery2NFI_VALORUNIT: TFMTBCDField;
    IBQuery3REE_VALOR: TFMTBCDField;
    IBQuery2NFI_CLASSFISCAL: TIBStringField;
    QRAsBarcode1: TQRAsBarcode;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeQ01: TFormNfeQ01;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeQ01.FormCreate(Sender: TObject);
begin
  QRLabel48.Font.Color:=clWhite;
  QRLabel49.Font.Color:=clWhite;
  QRLabel50.Font.Color:=clWhite;
  QRLabel51.Font.Color:=clWhite;
  QRLabel52.Font.Color:=clWhite;
  QRLabel53.Font.Color:=clWhite;
  QRLabel54.Font.Color:=clWhite;
  QRLabel55.Font.Color:=clWhite;
  QRLabel56.Font.Color:=clWhite;
  QRLabel57.Font.Color:=clWhite;
  QRLabel58.Font.Color:=clWhite;
  QRLabel59.Font.Color:=clWhite;
  QRLabel60.Font.Color:=clWhite;
  QRLabel61.Font.Color:=clWhite;
  QRLabel62.Font.Color:=clWhite;
  QRLabel63.Font.Color:=clWhite;
  QRLabel64.Font.Color:=clWhite;
  QRLabel65.Font.Color:=clWhite;
  QRLabel66.Font.Color:=clWhite;
  QRLabel67.Font.Color:=clWhite;
  QRLabel68.Font.Color:=clWhite;
  QRLabel69.Font.Color:=clWhite;
  QRLabel70.Font.Color:=clWhite;
  QRLabel71.Font.Color:=clWhite;
  LogoTipo(FormNfeQ01);
  if IBQuery1NFE_CNPJ.Value<>'' then
  QRDBText19.DataField:='NFE_CPF';
end;

procedure TFormNfeQ01.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  QRLabel139.Caption:='NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  QRLabel139.Caption:=IBQuery1NFE_NOME.Value;
end;

procedure TFormNfeQ01.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var ValoresFCP: String;
begin
  ValoresFCP:='';
  if IBQuery1NFE_TOTALFCP.Value > 0 then ValoresFCP:=ValoresFCP+'Total FCP: '+Format('%m',[IBQuery1NFE_TOTALFCP.AsExtended]);
  if IBQuery1NFE_TOTALFCPST.Value > 0 then ValoresFCP:=ValoresFCP+' Total FCP-ST: '+Format('%m',[IBQuery1NFE_TOTALFCPST.AsExtended]);

  if IBQuery1NFE_TOTALICMSCREDSN.Value>0 then
  QRLabel133.Caption:=DeleteLineBreaks(IBQuery1NFE_INFOADICFISCO.Value)+' Permite o aproveitamento do credito de ICMS no valor de '+Format('%m',[IBQuery1NFE_TOTALICMSCREDSN.AsExtended])+' correspondente '+
  'a alíquota de '+IBQuery1NFE_ALIQICMSCREDSN.AsString+'% nos termos do art. 23 da LC 123.'+' - Pedido: '+IntToStr(IBQuery1NFE_VENDA.Value) else
  QRLabel133.Caption:=DeleteLineBreaks(IBQuery1NFE_INFOADICFISCO.Value+' - Pedido: '+IntToStr(IBQuery1NFE_VENDA.Value));
  QRLabel133.Caption:=QRLabel133.Caption+' - Tributos aprox: '+IBQuery1NFE_TOTALTRIBUTOSFED.AsString+' Fed. '+IBQuery1NFE_TOTALTRIBUTOSEST.AsString+' Est. e '+IBQuery1NFE_TOTALTRIBUTOSMUN.AsString+' Mun. Fonte: IBPT';
  QRLabel133.Caption:=QRLabel133.Caption+ValoresFCP;

  if DM.TBParametrosPAR_IMPRIMIRNOMEFANTASIA.Value='S' then
  begin
    DM.TBClientes.Close;
    DM.TBClientes.ParamByName('codigo').AsInteger:=IBQuery1NFE_CLIENTE.Value;
    DM.TBClientes.Open;
    if DM.TBClientesCLI_TIPOPESSOA.Value='J' then //pessoa jurídica... pessoa física não tem nome fantasia.
    QRLabel133.Caption:=QRLabel133.Caption+' - Nome Fantasia: '+DM.TBClientesCLI_FANTASIA.Value;
  end;
  if DM.TBParametrosPAR_IMPRIMIRCONDICAO.Value='S' then
  QRLabel133.Caption:=QRLabel133.Caption+' - Condição pagamento: '+IBQuery1CPG_DESCRICAO.Value;
  if DM.TBParametrosPAR_IMPRIMIRNUMPEDIDO.Value='S' then
  QRLabel133.Caption:=QRLabel133.Caption+' - Num. Pedido Cliente: '+IBQuery1NFE_PEDIDOCLIENTE.Value;
end;

procedure TFormNfeQ01.ColumnHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if DM.TBParametrosPAR_TIPOAMBIENTE.Value='2' then
  QRLabel136.Caption:='NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL' else
  QRLabel136.Caption:=IBQuery1NFE_NOME.Value;

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  QRLabel105.Caption:='CSOSN' else
  QRLabel105.Caption:='CST';
end;

procedure TFormNfeQ01.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var DescricaoProduto: String;
begin
  DescricaoProduto:=IBQuery2NFI_DESCRICAO.Value+' '+IBQuery2NFI_COMPLEMENTO.Value;
  if IBQuery2NFI_LOTE.Value<>'' then
  DescricaoProduto:=DescricaoProduto+' Lt: '+IBQuery2NFI_LOTE.Value;
  if IBQuery2NFI_QUANTIDADETROCA.Value>0 then
  DescricaoProduto:=DescricaoProduto+' - Abatimento Ref. Troca: '+IBQuery2NFI_DESCVALOR.AsString+' Qtde: '+IBQuery2NFI_QUANTIDADETROCA.AsString;
  QRLabel126.Caption:=DescricaoProduto;

  if DM.TBEmpresaEMP_ENQUADRAMENTO.Value='1 - SIMPLES NACIONAL' then
  QRLabel135.Caption:=Copy(IBQuery2NFI_ORIGEM.Value,1,1)+IntToStr(IBQuery2NFI_CSTICMS.Value) else
  QRLabel135.Caption:=IntToStr(IBQuery2NFI_CSTICMS.Value);

  //seleciona o codigo do firenet ou o código do fabricante/cliente.
  QRLabel137.Caption:=IntToStr(IBQuery2NFI_PRODUTO.Value);
  if (DM.TBParametrosPAR_USARCODIGOFAB.Value='S') and (IBQuery2NFI_CODIGOFAB.Value<>'') then
  QRLabel137.Caption:=IBQuery2NFI_CODIGOFAB.Value;

  // 25 is the box size in invoice lines
  // 64.0 is the original height of the band in tenth mm
  // if this is the last sub-detail, expand the band
  //testar...
{  if IBQuery2.RecNo = (IBQuery2.RecordCount) then
  begin
    DetailBand1.Size.Height:=(22 - IBQuery2.Recno) * 28.0;
    //if Length(DescricaoProduto) > 48 then
    //DetailBand1.Size.Height:=(22 - IBQuery2.Recno) * 28.0;
  end else
  begin
    DetailBand1.Size.Height:=28.0;
    //if Length(DescricaoProduto) > 48 then
    //DetailBand1.Size.Height:=28.0;
  end;}
end;

end.
