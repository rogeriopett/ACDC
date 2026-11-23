unit CTeCCeQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QuickRpt,
  QRPDFFilt, IBX.IBDatabase, IBX.IBQuery, QRCtrls, qrBarcode, Vcl.ExtCtrls;

type
  TFormCteCCeQ01 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    IMAGEM: TQRImage;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRShape7: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape9: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRDBText15: TQRDBText;
    QRAsBarcode1: TQRAsBarcode;
    QRShape12: TQRShape;
    QRLabel29: TQRLabel;
    QRShape88: TQRShape;
    QRShape13: TQRShape;
    QRDBText19: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape1: TQRShape;
    QRDBText9: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel125: TQRLabel;
    QRLabel1: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel106: TQRLabel;
    QRShape55: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRLabel107: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText55: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText56: TQRDBText;
    QRBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    QRShape27: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape26: TQRShape;
    QRDBText34: TQRDBText;
    QRLabel119: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery2CTX_CODIGO: TIntegerField;
    IBQuery2CTX_CCE: TIntegerField;
    IBQuery2CTX_CAMPO: TIBStringField;
    IBQuery2CTX_GRUPO: TIBStringField;
    IBQuery2CTX_NUMITEM: TIntegerField;
    IBQuery2CTX_VALOR: TIBStringField;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    IBQuery1CTC_CODIGO: TIntegerField;
    IBQuery1CTC_PROTOCOLO: TIBStringField;
    IBQuery1CTC_PROTOCOLODH: TIBStringField;
    IBQuery1CTC_SEQUENCIAL: TIntegerField;
    IBQuery1CTE_CHAVEACESSO: TIBStringField;
    IBQuery1CTE_MODELO: TIntegerField;
    IBQuery1CTE_SERIE: TIntegerField;
    IBQuery1CTE_DTEMISSAO: TDateField;
    IBQuery1CTE_REMNOME: TIBStringField;
    IBQuery1CTE_DESNOME: TIBStringField;
    IBQuery1CTE_EXPNOME: TIBStringField;
    IBQuery1CTE_RECNOME: TIBStringField;
    IBQuery1CTE_CODIGO: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCteCCeQ01: TFormCteCCeQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCteCCeQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCteCCeQ01);
  QRLabel6.Caption:='Usuário: '+UsuarioLogado;
end;

end.
