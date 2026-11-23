unit ContasQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormContasQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel14: TQRLabel;
    IBQuery1CON_CODIGO: TIntegerField;
    IBQuery1CON_NOME: TIBStringField;
    IBQuery1CON_FONE1: TIBStringField;
    IBQuery1CON_STATUS: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1BAN_NOME: TIBStringField;
    IBQuery1CON_BANCO: TIntegerField;
    IBQuery1AGENCIA: TIBStringField;
    IBQuery1CONTA: TIBStringField;
    IBQuery1CON_SALDO: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasQ01: TFormContasQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormContasQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormContasQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
