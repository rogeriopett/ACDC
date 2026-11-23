unit BoletosQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormBoletosQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBQuery1BOL_CODIGO: TIntegerField;
    IBQuery1BOL_CLIENTE: TIntegerField;
    IBQuery1BOL_NOME: TIBStringField;
    IBQuery1BOL_DTVENCIMENTO: TDateField;
    IBQuery1BOL_VALORITENS: TIBBCDField;
    IBQuery1BOL_VALORBOLETO: TIBBCDField;
    IBQuery1BOL_VALORTOTAL: TIBBCDField;
    IBQuery1BOL_CONTA: TIntegerField;
    IBQuery1CON_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    IBQuery1BOL_DTPAGAMENTO: TDateField;
    IBQuery1BOL_VALORPAGO: TIBBCDField;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
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
  FormBoletosQ05: TFormBoletosQ05;
  Total, TotalPago, SubTotal, SubTotalPago: Currency;
  Qtde, SubQtde: Integer;

implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormBoletosQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  TotalPago:=0;
  SubTotalPago:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ05.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalPago:=0;
  Qtde:=0;
end;

procedure TFormBoletosQ05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel10.Caption:=Format('%m',[TotalPago]);
  QRLabel16.Caption:=IntToStr(Qtde);
end;

procedure TFormBoletosQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  TotalPago:=0;
  SubTotalPago:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel12.Caption:=Format('%m',[SubTotalPago]);
  QRLabel19.Caption:=IntToStr(SubQtde);
end;

procedure TFormBoletosQ05.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
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
