unit ClientesQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRExport, DB, IBDatabase,
  IBCustomDataSet, IBQuery, QRPDFFilt;

type
  TFormClientesQ04 = class(TForm)
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand2: TQRBand;
    QRSysData3: TQRSysData;
    QRExcelFilter1: TQRExcelFilter;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand3: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ04: TFormClientesQ04;
  Clientes: String;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ04);
  QRLabel1.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormClientesQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
end;

procedure TFormClientesQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Clientes: '+IntToStr(Total);
end;

procedure TFormClientesQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

end.
