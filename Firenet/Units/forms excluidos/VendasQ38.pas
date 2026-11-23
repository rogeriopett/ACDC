unit VendasQ38;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormVendasQ38 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBQuery1VEI_CONVERSAO: TFMTBCDField;
    IBQuery1VEI_DESCRICAO: TIBStringField;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1VEI_PRODUTOREAL: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1QTDE: TFMTBCDField;
    IBQuery1QTDETROCA: TFMTBCDField;
    IBQuery1TOTAL: TFMTBCDField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ38: TFormVendasQ38;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ38.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ38);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormVendasQ38.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormVendasQ38.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel13.Caption:=Format('%m',[Total]);
end;

procedure TFormVendasQ38.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormVendasQ38.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormVendasQ38.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1TOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1TOTAL.AsExtended;
end;

procedure TFormVendasQ38.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=FloatToStr(IBQuery1QTDE.AsExtended*IBQuery1VEI_CONVERSAO.AsExtended);
end;

end.
