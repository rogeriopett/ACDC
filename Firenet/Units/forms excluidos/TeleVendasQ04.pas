unit TeleVendasQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormTeleVendasQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
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
    IBQuery1TEV_CODIGO: TIntegerField;
    IBQuery1TEV_CLIENTE: TIntegerField;
    IBQuery1TEV_DATA: TDateField;
    IBQuery1TEV_DATAPROX: TDateField;
    IBQuery1TEV_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    IBQuery1TEV_HORARIO: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
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
  FormTeleVendasQ04: TFormTeleVendasQ04;
  Total, SubTotal: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTeleVendasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTeleVendasQ04);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormTeleVendasQ04.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Total);
end;

procedure TFormTeleVendasQ04.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormTeleVendasQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormTeleVendasQ04.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

procedure TFormTeleVendasQ04.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
