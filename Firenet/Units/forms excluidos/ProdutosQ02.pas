unit ProdutosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_DESCRICAO: TMemoField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ02: TFormProdutosQ02;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
