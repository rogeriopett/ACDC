unit ProcessosQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormProcessosQ03 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
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
    QRLabel12: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosQ03: TFormProcessosQ03;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet, ProcessosQ02;
{$R *.dfm}

procedure TFormProcessosQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProcessosQ03);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormProcessosQ03.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormProcessosQ03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Total);
end;

procedure TFormProcessosQ03.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormProcessosQ03.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

end.
