unit ServicosQ01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  quickrpt, Qrctrls, ExtCtrls, Db, IBCustomDataSet, IBQuery, StdCtrls,
  IBDatabase, QRPDFFilt;

type
  TFormServicosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRLabel27: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText40: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ01: TFormServicosQ01;

implementation
uses DataMod;
{$R *.DFM}

end.
