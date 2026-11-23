unit VendasQ25;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery,
  IBDatabase, QuickRpt, ExtCtrls;

type
  TFormVendasQ25 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
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
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRDBText16: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel6: TQRLabel;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NFE: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_DTSAIDA: TDateField;
    IBQuery1VED_CONTATO: TIBStringField;
    IBQuery1VED_OBSERVACOES: TWideMemoField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText4: TQRDBText;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1VEI_DESCRICAO: TIBStringField;
    IBQuery1VEI_TIPO: TIBStringField;
    IBQuery1VEI_UNIDADE: TIBStringField;
    IBQuery1VEI_LOCALIZACAO: TIBStringField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText43: TQRDBText;
    QRDBText12: TQRDBText;
    IBQuery1VED_TRANSPORTADORA: TIntegerField;
    IBQuery1VED_TRANSPNOME: TIBStringField;
    QRDBText13: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    IBQuery1VEI_QUANTIDADE: TFMTBCDField;
    IBQuery1VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    QRLabel10: TQRLabel;
    QRDBText14: TQRDBText;
    IBQuery1VEI_SEQUENCIA: TIntegerField;
    QRShape23: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRLabel19: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    QRShape6: TQRShape;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText17: TQRDBText;
    IBQuery1VEI_PESO: TIBBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ25: TFormVendasQ25;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ25.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ25);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
