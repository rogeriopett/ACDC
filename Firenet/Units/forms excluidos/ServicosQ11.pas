unit ServicosQ11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QuickRpt, QRCtrls, Vcl.ExtCtrls;

type
  TFormServicosQ11 = class(TForm)
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
    QRLabel5: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    IBQuery1: TIBQuery;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_PRODUTO: TIBStringField;
    IBQuery1SER_SERIE: TIBStringField;
    IBQuery1SER_STATUS: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    QRExcelFilter1: TQRExcelFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRSubDetail2: TQRSubDetail;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    IBQuery2SEI_PRODUTO: TIntegerField;
    IBQuery2SEI_DESCRICAO: TIBStringField;
    IBQuery2SEI_UNIDADE: TIBStringField;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    DataSource1: TDataSource;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand4: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand5: TQRBand;
    QRBand6: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel19: TQRLabel;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    IBQuery2SEI_QUANTIDADE: TFMTBCDField;
    IBQuery2SEI_VALORUNIT: TFMTBCDField;
    IBQuery2SEI_VALORTOTAL: TFMTBCDField;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand6BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand6AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ11: TFormServicosQ11;
  Conta: Integer;
  Total, Subtotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ11.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ11);
  QRLabel9.Caption:='Usuário: '+UsuarioLogado;
  Conta:=0;
  Total:=0;
  Subtotal:=0;
end;

procedure TFormServicosQ11.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Subtotal:=0;
end;

procedure TFormServicosQ11.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=Format('%m',[Subtotal]);
end;

procedure TFormServicosQ11.QRBand6AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormServicosQ11.QRBand6BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Ordens de Serviço: '+IntToStr(Conta);
  QRLabel19.Caption:=Format('%m',[Total]);
end;

procedure TFormServicosQ11.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
  Total:=Total+IBQuery1SER_VALORTOTAL.AsExtended;
  Subtotal:=Subtotal+IBQuery1SER_VALORTOTAL.AsExtended;
end;

end.
