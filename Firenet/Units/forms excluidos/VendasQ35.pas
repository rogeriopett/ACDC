unit VendasQ35;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormVendasQ35 = class(TForm)
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
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
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
    IBQuery1TOTALDESC: TFMTBCDField;
    QRLabel2: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
  FormVendasQ35: TFormVendasQ35;
  Total, SubTotal, TotalDesc, SubTotalDesc: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ35.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ35);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormVendasQ35.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalDesc:=0;
end;

procedure TFormVendasQ35.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel13.Caption:=Format('%m',[Total]);
  QRLabel10.Caption:=Format('%m',[TotalDesc]);
end;

procedure TFormVendasQ35.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  TotalDesc:=0;
  SubTotalDesc:=0;
end;

procedure TFormVendasQ35.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=Format('%m',[SubTotal]);
  QRLabel11.Caption:=Format('%m',[SubTotalDesc]);
end;

procedure TFormVendasQ35.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1TOTAL.AsExtended;
  TotalDesc:=TotalDesc+IBQuery1TOTALDESC.AsExtended;
  SubTotal:=SubTotal+IBQuery1TOTAL.AsExtended;
  SubTotalDesc:=SubTotalDesc+IBQuery1TOTALDESC.AsExtended;
end;

procedure TFormVendasQ35.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=FloatToStr(IBQuery1QTDE.AsExtended*IBQuery1VEI_CONVERSAO.AsExtended);
end;

end.
