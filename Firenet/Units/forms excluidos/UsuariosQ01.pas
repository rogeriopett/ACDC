unit UsuariosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, DB, IBCustomDataSet, IBQuery, ExtCtrls,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormUsuariosQ01 = class(TForm)
    IBQuery1: TIBQuery;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText9: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosQ01: TFormUsuariosQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormUsuariosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormUsuariosQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
