unit ClientesQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt,
  ExtCtrls, IBDatabase, QRPDFFilt;

type
  TFormClientesQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ01: TFormClientesQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
