unit ProdutosQ07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QRCtrls, QuickRpt, ExtCtrls, IBDatabase, DB,
  IBCustomDataSet, IBQuery, QRPDFFilt;

type
  TFormProdutosQ07 = class(TForm)
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
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
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1PRQ_PRODUTO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1TOTALALMOXARIFADOS: TFMTBCDField;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ07: TFormProdutosQ07;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ07.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ07);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
