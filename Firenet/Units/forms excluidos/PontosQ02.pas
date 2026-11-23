unit PontosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormPontosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
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
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBQuery1PTS_CLIENTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    IBTransaction2: TIBTransaction;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    DataSource1: TDataSource;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VALORTOTAL: TFMTBCDField;
    IBQuery1TOTALPONTOS: TFMTBCDField;
    IBQuery1CLI_PONTOS: TFMTBCDField;
    IBQuery2VALORTOTAL: TFMTBCDField;
    IBQuery2TOTALPONTOS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPontosQ02: TFormPontosQ02;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPontosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPontosQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
