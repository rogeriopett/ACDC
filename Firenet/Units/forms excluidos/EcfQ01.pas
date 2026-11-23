unit EcfQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormEcfQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
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
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBTransaction1: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEcfQ01: TFormEcfQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEcfQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEcfQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
