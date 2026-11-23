unit OpcionaisQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRCtrls, QuickRpt, ExtCtrls, QRExport,
  IBDatabase, IBQuery, QRPDFFilt;

type
  TFormOpcionaisQ01 = class(TForm)
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    IBQuery1OPC_CODIGO: TIntegerField;
    IBQuery1OPC_DESCRICAO: TIBStringField;
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
  FormOpcionaisQ01: TFormOpcionaisQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormOpcionaisQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormOpcionaisQ01);
  QRLabel9.Caption:='Usuário: '+UsuarioLogado;
end;

end.
