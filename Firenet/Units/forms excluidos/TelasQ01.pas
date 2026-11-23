unit TelasQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormTelasQ01 = class(TForm)
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
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1TEL_NOMEFORM: TIBStringField;
    IBQuery1TEL_DESCRICAO: TIBStringField;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    IBQuery1TEL_STATUS: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    IBQuery1MOD_NOME: TIBStringField;
    IBQuery1TEL_MODULO: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTelasQ01: TFormTelasQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTelasQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTelasQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
