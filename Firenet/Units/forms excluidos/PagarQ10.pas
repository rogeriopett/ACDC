unit PagarQ10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormPagarQ10 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1PAG_CODIGO: TIntegerField;
    IBQuery1PAG_CONTA: TIntegerField;
    IBQuery1PAG_DESCRICAO: TIBStringField;
    IBQuery1PAG_DESPESA: TIntegerField;
    IBQuery1PAG_DTEMISSAO: TDateField;
    IBQuery1PAG_DTVENCIMENTO: TDateField;
    IBQuery1PAG_FORNECEDOR: TIntegerField;
    IBQuery1PAG_TIPODOCTO: TIBStringField;
    IBQuery1PAG_NUMDOCTO: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1DES_DESCRICAO: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText3: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel6: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1PAG_VALOR: TFMTBCDField;
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarQ10: TFormPagarQ10;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPagarQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ10);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
end;

procedure TFormPagarQ10.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormPagarQ10.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormPagarQ10.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormPagarQ10.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormPagarQ10.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1PAG_DTVENCIMENTO.Value<Date then
  QRLabel15.Caption:=IntToStr(DaysBetween(Date,IBQuery1PAG_DTVENCIMENTO.Value)) else
  QRLabel15.Caption:='0'; //zero dias em atraso.
end;

procedure TFormPagarQ10.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1PAG_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1PAG_VALOR.AsExtended;
end;

end.
