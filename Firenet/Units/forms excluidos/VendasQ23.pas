unit VendasQ23;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ23 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_DTSAIDA: TDateField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VED_PESOLIQ: TIBBCDField;
    IBQuery1VED_PESOBRUTO: TIBBCDField;
    IBQuery1VED_TRANSPORTADORA: TIntegerField;
    IBQuery1VED_CONDICAO: TIntegerField;
    IBQuery1VED_OBSERVACOES: TMemoField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_ENDERECO: TIBStringField;
    IBQuery1VED_BAIRRO: TIBStringField;
    IBQuery1VED_CIDADE: TIBStringField;
    IBQuery1VED_ESTADO: TIBStringField;
    IBQuery1VED_CEP: TIBStringField;
    IBQuery1VED_CNPJ: TIBStringField;
    IBQuery1VED_CPF: TIBStringField;
    IBQuery1VED_IE: TIBStringField;
    IBQuery1VED_FONE1: TIBStringField;
    IBQuery1VED_CONTATO: TIBStringField;
    IBQuery1VED_COMPLEMENTO: TIBStringField;
    IBQuery1VED_NOTA: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    IBQuery1VED_NFE: TIntegerField;
    IBQuery1VED_VEICULOPLACA: TIBStringField;
    IBQuery1VED_VEICULOPLACAUF: TIBStringField;
    IBQuery1VED_TRANSPNOME: TIBStringField;
    IBQuery1VED_VOLUMES: TIntegerField;
    IBQuery1CLI_FONE2: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    IBQuery2VEI_PRODUTO: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_TIPO: TIBStringField;
    IBQuery2VEI_UNIDADE: TIBStringField;
    IBQuery1VED_FRETE: TIBStringField;
    IBQuery4: TIBQuery;
    IBTransaction4: TIBTransaction;
    IBQuery3: TIBQuery;
    IBQuery3REE_NUMDOCTO: TIBStringField;
    IBQuery3REE_DESCRICAO: TIBStringField;
    IBQuery3REE_DTEMISSAO: TDateField;
    IBQuery3REE_DTVENCIMENTO: TDateField;
    IBQuery3REE_STATUS: TIBStringField;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape57: TQRShape;
    QRShape66: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText19: TQRDBText;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
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
    QRSubDetail1: TQRSubDetail;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel32: TQRLabel;
    QRDBText29: TQRDBText;
    QRBand1: TQRBand;
    QRSubDetail4: TQRSubDetail;
    QRDBText30: TQRDBText;
    QRSubDetail5: TQRSubDetail;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRLabel34: TQRLabel;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRShape114: TQRShape;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRDBText36: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
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
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText88: TQRDBText;
    QRDBText89: TQRDBText;
    QRDBText90: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
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
    QRLabel72: TQRLabel;
    QRLabel76: TQRLabel;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText93: TQRDBText;
    QRLabel78: TQRLabel;
    QRDBText94: TQRDBText;
    IBTransaction3: TIBTransaction;
    QRLabel14: TQRLabel;
    QRLabel52: TQRLabel;
    QRBand5: TQRBand;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel132: TQRLabel;
    IBQuery1VED_NUMERO: TIBStringField;
    QRShape15: TQRShape;
    QRLabel59: TQRLabel;
    QRDBText37: TQRDBText;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRDBText53: TQRDBText;
    QRLabel66: TQRLabel;
    QRShape20: TQRShape;
    IBQuery2VEI_LOTE: TIBStringField;
    IBQuery2VEI_COMPLEMENTO: TIBStringField;
    IBQuery1VED_BASEICMS: TFMTBCDField;
    IBQuery1VED_BASEICMSST: TFMTBCDField;
    IBQuery1VED_DESCPORC: TFMTBCDField;
    IBQuery1VED_DESCVALOR: TFMTBCDField;
    IBQuery1VED_TOTALICMS: TFMTBCDField;
    IBQuery1VED_TOTALICMSST: TFMTBCDField;
    IBQuery1VED_TOTALIPI: TFMTBCDField;
    IBQuery1VED_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1VED_TOTALSERVICOS: TFMTBCDField;
    IBQuery1VED_VALORFRETE: TFMTBCDField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1CLI_PONTOS: TFMTBCDField;
    IBQuery2VEI_ALIQICMS: TFMTBCDField;
    IBQuery2VEI_ALIQICMSST: TFMTBCDField;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    IBQuery2VEI_VALORICMSST: TFMTBCDField;
    IBQuery2VEI_VALORTOTAL: TFMTBCDField;
    IBQuery2VEI_VALORUNIT: TFMTBCDField;
    IBQuery3REE_VALOR: TFMTBCDField;
    IBQuery4VALOR: TFMTBCDField;
    QRLabel4: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel64: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ23: TFormVendasQ23;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ23.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ23);
  QuickRep1.ReportTitle:=FormVendasQ23.Caption;
end;

procedure TFormVendasQ23.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //total bruto.
  QRLabel33.Caption:=Format('%m',[IBQuery1VED_TOTALPRODUTOS.AsExtended+IBQuery1VED_DESCVALOR.AsExtended]);
end;

procedure TFormVendasQ23.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Saldo devedor acumulado: '+Format('%m',[IBQuery4VALOR.AsExtended]);
end;

procedure TFormVendasQ23.QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel4.Caption:=DM.TBEmpresaEMP_ENDERECO.Value+', '+
                    DM.TBEmpresaEMP_NUMERO.Value+' - '+
                    DM.TBEmpresaEMP_BAIRRO.Value;

  QRLabel21.Caption:=DM.TBEmpresaEMP_CIDADE.Value+'/'+
                     DM.TBEmpresaEMP_ESTADO.Value+' - CEP: '+
                     DM.TBEmpresaEMP_CEP.Value;

  QRLabel64.Caption:=DM.TBEmpresaEMP_CNPJ.Value+' - '+
                     DM.TBEmpresaEMP_FONE1.Value+' - '+
                     DM.TBEmpresaEMP_EMAIL.Value;

end;

procedure TFormVendasQ23.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel32.Caption:=IBQuery2VEI_DESCRICAO.Value+' '+IBQuery2VEI_COMPLEMENTO.Value;
  if IBQuery2VEI_LOTE.Value<>'' then
  QRLabel32.Caption:=QRLabel32.Caption+' Lote: '+IBQuery2VEI_LOTE.Value;
end;

procedure TFormVendasQ23.QRSubDetail5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery3REE_STATUS.Value='A' then QRLabel34.Caption:='Em aberto';
  if IBQuery3REE_STATUS.Value='B' then QRLabel34.Caption:='Pago';
  if IBQuery3REE_STATUS.Value='C' then QRLabel34.Caption:='Cancelado';
end;

end.
