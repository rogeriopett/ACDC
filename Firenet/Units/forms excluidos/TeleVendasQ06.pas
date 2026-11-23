unit TeleVendasQ06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormTeleVendasQ06 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
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
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeleVendasQ06: TFormTeleVendasQ06;
  Total, Total01, Total02, Total03, Total04, Total05,
  SubTotal, SubTotal01, SubTotal02, SubTotal03, SubTotal04, SubTotal05: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTeleVendasQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTeleVendasQ06);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  Total01:=0;
  Total02:=0;
  Total03:=0;
  Total04:=0;
  Total05:=0;
  SubTotal:=0;
  SubTotal01:=0;
  SubTotal02:=0;
  SubTotal03:=0;
  SubTotal04:=0;
  SubTotal05:=0;
end;

procedure TFormTeleVendasQ06.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
  Total01:=0;
  Total02:=0;
  Total03:=0;
  Total04:=0;
  Total05:=0;
end;

procedure TFormTeleVendasQ06.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Total);
  QRLabel12.Caption:=IntToStr(Total01);
  QRLabel20.Caption:=IntToStr(Total02);
  QRLabel21.Caption:=IntToStr(Total03);
  QRLabel22.Caption:=IntToStr(Total04);
  QRLabel23.Caption:=IntToStr(Total05);
end;

procedure TFormTeleVendasQ06.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotal01:=0;
  SubTotal02:=0;
  SubTotal03:=0;
  SubTotal04:=0;
  SubTotal05:=0;
end;

procedure TFormTeleVendasQ06.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
  QRLabel25.Caption:=IntToStr(SubTotal01);
  QRLabel30.Caption:=IntToStr(SubTotal02);
  QRLabel31.Caption:=IntToStr(SubTotal03);
  QRLabel32.Caption:=IntToStr(SubTotal04);
  QRLabel33.Caption:=IntToStr(SubTotal05);
end;

procedure TFormTeleVendasQ06.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormTeleVendasQ06.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1.FieldByName('TEV_TEMPERATURA').AsString='01 - SUPER QUENTE' then
  begin
    QRDBText2.Font.Color:=clRed;
    Total01:=Total01+1;
    SubTotal01:=SubTotal01+1;
  end else
  if IBQuery1.FieldByName('TEV_TEMPERATURA').AsString='02 - QUENTE' then
  begin
    QRDBText2.Font.Color:=$000080FF;
    Total02:=Total02+1;
    SubTotal02:=SubTotal02+1;
  end else
  if IBQuery1.FieldByName('TEV_TEMPERATURA').AsString='03 - MORNO' then
  begin
    QRDBText2.Font.Color:=clGreen;
    Total03:=Total03+1;
    SubTotal03:=SubTotal03+1;
  end else
  if IBQuery1.FieldByName('TEV_TEMPERATURA').AsString='04 - FRIO' then
  begin
    QRDBText2.Font.Color:=$00A00000;
    Total04:=Total04+1;
    SubTotal04:=SubTotal04+1;
  end else
  if IBQuery1.FieldByName('TEV_TEMPERATURA').AsString='05 - SUPER FRIO' then
  begin
    QRDBText2.Font.Color:=clBlue;
    Total05:=Total05+1;
    SubTotal05:=SubTotal05+1;
  end;
end;

end.
