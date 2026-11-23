unit ConhecimentosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormConhecimentosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
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
    IBQuery1CTE_CODIGO: TIntegerField;
    IBQuery1CTE_REMETENTE: TIntegerField;
    IBQuery1CTE_REMNOME: TIBStringField;
    IBQuery1CTE_DTEMISSAO: TDateField;
    IBQuery1CTE_STATUS: TIBStringField;
    IBQuery1CTE_CHAVEACESSO: TIBStringField;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel8: TQRLabel;
    IBQuery1STATUS: TIBStringField;
    IBQuery1CTE_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosQ02: TFormConhecimentosQ02;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConhecimentosQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormConhecimentosQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormConhecimentosQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormConhecimentosQ02.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormConhecimentosQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormConhecimentosQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1CTE_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1CTE_VALORTOTAL.AsExtended;
end;

end.
