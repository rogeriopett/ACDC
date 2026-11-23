unit ClientesQ13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  QRPDFFilt, QRExport, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase;

type
  TFormClientesQ13 = class(TForm)
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand4: TQRBand;
    EMPRESA: TQRDBText;
    FONE1: TQRDBText;
    EMAIL: TQRDBText;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    CNPJ: TQRDBText;
    IMAGEM: TQRImage;
    QRGroup1: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ13: TFormClientesQ13;
  TotalLocal, TotalVendedor, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ13.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ13);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalLocal:=0; //total do grupo local de trabalho.
  TotalVendedor:=0; //total do grupo vendedor.
  SubTotal:=0;
end;

procedure TFormClientesQ13.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalVendedor:=0; //nao zera o subtotal.
end;

procedure TFormClientesQ13.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption:=IntToStr(TotalVendedor);
end;

procedure TFormClientesQ13.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormClientesQ13.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

procedure TFormClientesQ13.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalLocal:=0;
end;

procedure TFormClientesQ13.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(TotalLocal);
end;

procedure TFormClientesQ13.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalLocal:=TotalLocal+1;
  TotalVendedor:=TotalVendedor+1;
  SubTotal:=SubTotal+1;
end;

end.
