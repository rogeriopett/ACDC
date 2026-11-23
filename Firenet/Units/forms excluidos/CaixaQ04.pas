unit CaixaQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBDatabase, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormCaixaQ04 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
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
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel5: TQRLabel;
    IBQuery1VEN_CODIGO: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VEN_SALDOATUAL: TFMTBCDField;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
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
  FormCaixaQ04: TFormCaixaQ04;
  SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ04);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  SubTotal:=0;
end;

procedure TFormCaixaQ04.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=SubTotal+IBQuery1VEN_SALDOATUAL.AsExtended;
end;

procedure TFormCaixaQ04.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel25.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormCaixaQ04.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
