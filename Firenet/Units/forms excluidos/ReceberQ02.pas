unit ReceberQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ02 = class(TForm)
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
    QRDBText13: TQRDBText;
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
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1REE_CODIGO: TIntegerField;
    IBQuery1REE_CONTA: TIntegerField;
    IBQuery1REE_DESCRICAO: TIBStringField;
    IBQuery1REE_RECEITA: TIntegerField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1REE_TIPODOCTO: TIBStringField;
    IBQuery1REE_NUMDOCTO: TIBStringField;
    IBQuery1REE_VALORPAGO: TFMTBCDField;
    IBQuery1REE_BAIXADOPOR: TIBStringField;
    IBQuery1REE_DTPAGAMENTO: TDateField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1REC_DESCRICAO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
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
  FormReceberQ02: TFormReceberQ02;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceberQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
end;

procedure TFormReceberQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormReceberQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormReceberQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1REE_VALORPAGO.AsExtended;
  SubTotal:=SubTotal+IBQuery1REE_VALORPAGO.AsExtended;
end;

procedure TFormReceberQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormReceberQ02.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
