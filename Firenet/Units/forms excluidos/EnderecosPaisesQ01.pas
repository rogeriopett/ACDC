unit EnderecosPaisesQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet,
  IBQuery, QRExport, QRPDFFilt;

type
  TFormEnderecosPaisesQ01 = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    IBQuery1: TIBQuery;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosPaisesQ01: TFormEnderecosPaisesQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosPaisesQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEnderecosPaisesQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
