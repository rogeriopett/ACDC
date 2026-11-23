unit CaixaQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet,
  IBQuery, IBDatabase, QRPDFFilt;

type
  TFormCaixaQ02 = class(TForm)
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
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
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1CAI_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CAI_TIPODOCTO: TIBStringField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VEN_SALDOATUAL: TFMTBCDField;
    IBQuery1ENTRADAS: TFMTBCDField;
    IBQuery1SAIDAS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
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
  FormCaixaQ02: TFormCaixaQ02;
  Entradas, Saidas, SubEntradas, SubSaidas, TotalSaldoAtual: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
  SubEntradas:=0;
  SubSaidas:=0;
  TotalSaldoAtual:=0;
end;

procedure TFormCaixaQ02.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption:=Format('%m',[IBQuery1ENTRADAS.AsExtended-IBQuery1SAIDAS.AsExtended]);
  Entradas:=Entradas+IBQuery1ENTRADAS.AsExtended;
  Saidas:=Saidas+IBQuery1SAIDAS.AsExtended;
  SubEntradas:=SubEntradas+IBQuery1ENTRADAS.AsExtended;
  SubSaidas:=SubSaidas+IBQuery1SAIDAS.AsExtended;
end;

procedure TFormCaixaQ02.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=Format('%m',[Entradas]);
  QRLabel20.Caption:=Format('%m',[Saidas]);
  QRLabel25.Caption:=Format('%m',[Entradas-Saidas]);
end;

procedure TFormCaixaQ02.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Entradas:=0;
  Saidas:=0;
  TotalSaldoAtual:=TotalSaldoAtual+IBQuery1VEN_SALDOATUAL.AsExtended;
end;

procedure TFormCaixaQ02.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=Format('%m',[SubEntradas]);
  QRLabel22.Caption:=Format('%m',[SubSaidas]);
  QRLabel17.Caption:=Format('%m',[SubEntradas-SubSaidas]);
  QRLabel9.Caption:=Format('%m',[TotalSaldoAtual]);
end;

procedure TFormCaixaQ02.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubEntradas:=0;
  SubSaidas:=0;
  TotalSaldoAtual:=0;
end;

end.
