unit AssuntosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormAssuntosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAssuntosQ01: TFormAssuntosQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormAssuntosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormAssuntosQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
