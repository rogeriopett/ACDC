unit ClientesQ09;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormClientesQ09 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    EMPRESA: TQRDBText;
    FONE1: TQRDBText;
    EMAIL: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    CNPJ: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    IMAGEM: TQRImage;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRBand5: TQRBand;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
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
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ09: TFormClientesQ09;
  TotalMailing, TotalVendedor, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ09.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ09);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalMailing:=0; //total do grupo mailing.
  TotalVendedor:=0; //total do grupo vendedor.
  SubTotal:=0;
end;

procedure TFormClientesQ09.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel10.Caption:=IntToStr(TotalVendedor);
end;

procedure TFormClientesQ09.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalVendedor:=0; //nao zera o subtotal.
end;

procedure TFormClientesQ09.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalMailing:=TotalMailing+1;
  TotalVendedor:=TotalVendedor+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormClientesQ09.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

procedure TFormClientesQ09.QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalMailing:=0;
end;

procedure TFormClientesQ09.QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(TotalMailing);
end;

procedure TFormClientesQ09.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
