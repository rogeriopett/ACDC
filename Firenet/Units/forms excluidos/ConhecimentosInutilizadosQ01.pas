unit ConhecimentosInutilizadosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormConhecimentosInutilizadosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand2: TQRBand;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel10: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosInutilizadosQ01: TFormConhecimentosInutilizadosQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosInutilizadosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConhecimentosInutilizadosQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
