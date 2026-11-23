unit NfseQ02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormNfseQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText1: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1NFS_CLIENTE: TIntegerField;
    IBQuery1NFS_CODIGO: TIntegerField;
    IBQuery1NFS_DTEMISSAO: TDateField;
    IBQuery1NFS_NUMERONOTA: TIntegerField;
    IBQuery1NFS_STATUS: TIBStringField;
    QRLabel7: TQRLabel;
    QRDBText2: TQRDBText;
    IBQuery1NFS_TOMNOME: TIBStringField;
    QRLabel9: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel11: TQRLabel;
    IBQuery1NFS_VENDEDOR: TIntegerField;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    IBQuery1NFS_TOTALISS: TFMTBCDField;
    IBQuery1NFS_VALORISSRETIDO: TFMTBCDField;
    IBQuery1NFS_VALORLIQUIDO: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseQ02: TFormNfseQ02;
  Liquido, Iss, IssRetido: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfseQ02.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Liquido:=Liquido+IBQuery1NFS_VALORLIQUIDO.AsExtended;
  Iss:=Iss+IBQuery1NFS_TOTALISS.AsExtended;
  IssRetido:=IssRetido+IBQuery1NFS_VALORISSRETIDO.AsExtended;
end;

procedure TFormNfseQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfseQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Liquido:=0;
  Iss:=0;
  IssRetido:=0;
end;

procedure TFormNfseQ02.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Liquido:=0;
  Iss:=0;
  IssRetido:=0;
end;

procedure TFormNfseQ02.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=Format('%m',[Liquido]);
  QRLabel16.Caption:=Format('%m',[Iss]);
  QRLabel13.Caption:=Format('%m',[IssRetido]);
end;

end.
