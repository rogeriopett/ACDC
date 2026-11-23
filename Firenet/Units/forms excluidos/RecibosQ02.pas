unit RecibosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormRecibosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
    IBQuery1RCB_CODIGO: TIntegerField;
    IBQuery1RCB_CNOME: TIBStringField;
    IBQuery1RCB_CENDERECO: TIBStringField;
    IBQuery1RCB_CBAIRRO: TIBStringField;
    IBQuery1RCB_CCIDADE: TIBStringField;
    IBQuery1RCB_CCEP: TIBStringField;
    IBQuery1RCB_CCNPJCPF: TIBStringField;
    IBQuery1RCB_CFONE1: TIBStringField;
    IBQuery1RCB_SNOME: TIBStringField;
    IBQuery1RCB_SENDERECO: TIBStringField;
    IBQuery1RCB_SBAIRRO: TIBStringField;
    IBQuery1RCB_SCIDADE: TIBStringField;
    IBQuery1RCB_SCEP: TIBStringField;
    IBQuery1RCB_SCNPJCPF: TIBStringField;
    IBQuery1RCB_SFONE1: TIBStringField;
    IBQuery1RCB_PROVENIENTE: TIBStringField;
    IBQuery1RCB_VALOREXTENSO: TIBStringField;
    IBQuery1RCB_DATA: TDateField;
    IBQuery1RCB_DTATUALIZACAO: TDateField;
    IBQuery1RCB_USUARIO: TIBStringField;
    QRDBText2: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1RCB_CNUMERO: TIBStringField;
    IBQuery1RCB_SNUMERO: TIBStringField;
    IBQuery1RCB_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosQ02: TFormRecibosQ02;
  Total, SubTotal: Currency;
  Qtde, SubQtde: Integer;
implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormRecibosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormRecibosQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormRecibosQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
  Total:=Total+IBQuery1RCB_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1RCB_VALOR.AsExtended;
end;

procedure TFormRecibosQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Qtde);
  QRLabel5.Caption:=Format('%m',[Total]);
  Qtde:=0;
  Total:=0;
end;

procedure TFormRecibosQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubQtde);
  QRLabel10.Caption:=Format('%m',[SubTotal]);
  Qtde:=0;
  SubQtde:=0;
  Total:=0;
  SubTotal:=0;
end;

end.
