unit ClientesQ02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, QuickRpt, Qrctrls, ExtCtrls, IBCustomDataSet, IBQuery,
  IBDatabase, QRPDFFilt, QRExport;

type
  TFormClientesQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRDBText7: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ02: TFormClientesQ02;

implementation
uses DataMod;
{$R *.DFM}

end.
