unit ChequesQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormChequesQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
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
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1CHE_CODIGO: TIntegerField;
    IBQuery1CHE_CLIENTE: TIntegerField;
    IBQuery1CHE_BANCO: TIntegerField;
    IBQuery1CHE_AGENCIA: TIBStringField;
    IBQuery1CHE_CONTA: TIBStringField;
    IBQuery1CHE_NUMERO: TIntegerField;
    IBQuery1CHE_PREDATADO: TIBStringField;
    IBQuery1CHE_BOMPARA: TDateField;
    IBQuery1CHE_DTCADASTRO: TDateField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1BAN_NOME: TIBStringField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText12: TQRDBText;
    IBQuery1CHE_STATUS: TIBStringField;
    QRLabel19: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CHE_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChequesQ01: TFormChequesQ01;
  Qtde, SubQtde: Integer;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormChequesQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormChequesQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  SubQtde:=0;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormChequesQ01.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+IBQuery1CHE_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1CHE_VALOR.AsExtended;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

procedure TFormChequesQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Qtde);
  QRLabel5.Caption:=Format('%m',[Total]);
end;

procedure TFormChequesQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
end;

procedure TFormChequesQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubQtde);
  QRLabel10.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormChequesQ01.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

end.
