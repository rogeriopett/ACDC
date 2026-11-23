unit BoletosQ07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormBoletosQ07 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
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
    IBQuery1BOL_CODIGO: TIntegerField;
    IBQuery1BOL_CONTA: TIntegerField;
    IBQuery1BOL_CLIENTE: TIntegerField;
    IBQuery1BOL_DTPAGAMENTO: TDateField;
    IBQuery1BOL_DTVENCIMENTO: TDateField;
    IBQuery1BOL_NOME: TIBStringField;
    IBQuery1BOL_VALORITENS: TIBBCDField;
    IBQuery1BOL_VALORBOLETO: TIBBCDField;
    IBQuery1BOL_VALORPAGO: TIBBCDField;
    IBQuery1BOL_VALORTOTAL: TIBBCDField;
    IBQuery1CON_NOME: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBoletosQ07: TFormBoletosQ07;
  Total, TotalPago, SubTotal, SubTotalPago: Currency;
  Qtde, SubQtde: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosQ07.FormCreate(Sender: TObject);
begin
  LogoTipo(FormBoletosQ07);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ07.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalPago:=0;
  Qtde:=0;
end;

procedure TFormBoletosQ07.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel10.Caption:=Format('%m',[TotalPago]);
  QRLabel29.Caption:=IntToStr(Qtde);
end;

procedure TFormBoletosQ07.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  TotalPago:=0;
  SubTotalPago:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ07.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel12.Caption:=Format('%m',[SubTotalPago]);
  QRLabel16.Caption:=IntToStr(SubQtde);
end;

procedure TFormBoletosQ07.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1BOL_VALORTOTAL.Value;
  SubTotal:=SubTotal+IBQuery1BOL_VALORTOTAL.Value;
  TotalPago:=TotalPago+IBQuery1BOL_VALORPAGO.Value;
  SubTotalPago:=SubTotalPago+IBQuery1BOL_VALORPAGO.Value;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

end.
