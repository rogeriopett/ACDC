unit ClassificadosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls,
  IBDatabase, QRExport, QRPDFFilt;

type
  TFormClassificadosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    IBQuery1: TIBQuery;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClassificadosQ01: TFormClassificadosQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClassificadosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClassificadosQ01);
  QRLabel2.Caption:='Usuário: '+UsuarioLogado;
end;

end.
