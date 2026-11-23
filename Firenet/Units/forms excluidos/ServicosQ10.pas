unit ServicosQ10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBDatabase, IBX.IBQuery, QuickRpt, QRCtrls, Vcl.ExtCtrls;

type
  TFormServicosQ10 = class(TForm)
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
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    IBQuery1: TIBQuery;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_PRODUTO: TIBStringField;
    IBQuery1SER_STATUS: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1SER_SERIE: TIBStringField;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ10: TFormServicosQ10;
  Conta: Integer = 0;
  Total, Subtotal: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ10);
  QRLabel9.Caption:='Usuário: '+UsuarioLogado;
  Conta:=0;
  Total:=0;
  Subtotal:=0;
end;

procedure TFormServicosQ10.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormServicosQ10.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=Format('%m',[Subtotal]);
end;

procedure TFormServicosQ10.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Conta:=0;
  Total:=0;
end;

procedure TFormServicosQ10.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Ordens de Serviço: '+IntToStr(Conta);
  QRLabel6.Caption:=Format('%m',[Total]);
end;

procedure TFormServicosQ10.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
  Total:=Total+IBQuery1SER_VALORTOTAL.AsExtended;
  Subtotal:=Subtotal+IBQuery1SER_VALORTOTAL.AsExtended;
end;

end.
