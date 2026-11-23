unit VendasQ34;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QuickRpt, QRCtrls,
  Vcl.ExtCtrls;

type
  TFormVendasQ34 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRLabel78: TQRLabel;
    QRDBText94: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel52: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
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
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
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
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText48: TQRDBText;
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
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel76: TQRLabel;
    QRDBText91: TQRDBText;
    QRDBText92: TQRDBText;
    QRLabel77: TQRLabel;
    QRDBText93: TQRDBText;
    QRLabel132: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_DTSAIDA: TDateField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_VENDEDOR: TIntegerField;
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
    IBQuery1VED_NUMERO: TIBStringField;
    IBQuery1VED_NOTA: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    IBQuery1VED_NFE: TIntegerField;
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
    IBQuery4: TIBQuery;
    IBTransaction4: TIBTransaction;
    IBQuery2VEI_COMPLEMENTO: TIBStringField;
    IBQuery2VEI_LOTE: TIBStringField;
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
    IBQuery1VED_PESOBRUTO: TIBBCDField;
    IBQuery1VED_PESOLIQ: TIBBCDField;
    IBQuery4VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ34: TFormVendasQ34;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ34.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ34);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  QuickRep1.ReportTitle:=FormVendasQ34.Caption;
end;

procedure TFormVendasQ34.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //total bruto.
  QRLabel33.Caption:=Format('%m',[IBQuery1VED_TOTALPRODUTOS.AsExtended+IBQuery1VED_DESCVALOR.AsExtended]);
end;

procedure TFormVendasQ34.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Saldo devedor acumulado: '+Format('%m',[IBQuery4VALOR.AsExtended]);
end;

procedure TFormVendasQ34.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel32.Caption:=IBQuery2VEI_DESCRICAO.Value+' '+IBQuery2VEI_COMPLEMENTO.Value;
  if IBQuery2VEI_LOTE.Value<>'' then
  QRLabel32.Caption:=QRLabel32.Caption+' Lote: '+IBQuery2VEI_LOTE.Value;
end;

end.
