unit VendasQ20;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ20 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRDBText43: TQRDBText;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel29: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRShape2: TQRShape;
    QRLabel42: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText15: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    IBQuery2VEI_PRODUTO: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_TIPO: TIBStringField;
    IBQuery2VEI_UNIDADE: TIBStringField;
    IBQuery2VEI_LOCALIZACAO: TIBStringField;
    IBQuery1: TIBQuery;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_DTSAIDA: TDateField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_VENDEDOR: TIntegerField;
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
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VED_NOTA: TIntegerField;
    IBQuery1VED_NFE: TIntegerField;
    IBQuery1CLI_FONE2: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText10: TQRDBText;
    IBQuery1VED_NUMERO: TIBStringField;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ20: TFormVendasQ20;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ20.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ20);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
