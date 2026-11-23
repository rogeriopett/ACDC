unit VendasQ15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ15 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
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
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel5: TQRLabel;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText1: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VALORTOTAL: TFMTBCDField;
    IBQuery1TOTALCOMISSAO: TFMTBCDField;
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
  FormVendasQ15: TFormVendasQ15;
  TotalVendas, TotalComissao: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ15.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ15);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormVendasQ15.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalVendas:=TotalVendas+IBQuery1VALORTOTAL.AsExtended;
  TotalComissao:=TotalComissao+IBQuery1TOTALCOMISSAO.AsExtended;
end;

procedure TFormVendasQ15.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=Format('%m',[TotalVendas]);
  QRLabel16.Caption:=Format('%m',[TotalComissao]);
end;

procedure TFormVendasQ15.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalVendas:=0;
  TotalComissao:=0;
end;

end.
