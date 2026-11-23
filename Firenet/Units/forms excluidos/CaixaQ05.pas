unit CaixaQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormCaixaQ05 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel1: TQRLabel;
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
    QRLabel4: TQRLabel;
    IBQuery1: TIBQuery;
    IBQuery1CAI_TIPODOCTO: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    ColumnHeaderBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    IBQuery1ENTRADAS: TFMTBCDField;
    IBQuery1SAIDAS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  FormCaixaQ05: TFormCaixaQ05;
  Entradas, Saidas: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ05.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel1.Caption:=Format('%m',[IBQuery1ENTRADAS.AsExtended-IBQuery1SAIDAS.AsExtended]);
  Entradas:=Entradas+IBQuery1ENTRADAS.AsExtended;
  Saidas:=Saidas+IBQuery1SAIDAS.AsExtended;
end;

procedure TFormCaixaQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ05);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
end;

procedure TFormCaixaQ05.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Entradas:=0;
  Saidas:=0;
end;

procedure TFormCaixaQ05.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=Format('%m',[Entradas]);
  QRLabel22.Caption:=Format('%m',[Saidas]);
  QRLabel17.Caption:=Format('%m',[Entradas-Saidas]);
end;

end.
