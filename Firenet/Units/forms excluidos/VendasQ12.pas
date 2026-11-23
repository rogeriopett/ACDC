unit VendasQ12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBDatabase, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ12 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_FORMAPAGTO: TIBStringField;
    IBQuery1VED_EXPEDIDOPOR: TIntegerField;
    IBQuery1VEN_NOME1: TIBStringField;
    IBQuery1VED_CODIGO: TIntegerField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    IBQuery1VED_NFE: TIntegerField;
    IBQuery1CLI_FANTASIA: TIBStringField;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1VED_TOTALSERVICOS: TFMTBCDField;
    IBQuery1VED_DESCPORC: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
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
  FormVendasQ12: TFormVendasQ12;
  TotPro, TotSer, TotVal: Currency;
  SubPro, SubSer, SubVal: Currency;
  Qtde, QtdeSub: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ12.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ12);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormVendasQ12.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotPro:=TotPro+IBQuery1VED_TOTALPRODUTOS.AsExtended;
  TotSer:=TotSer+IBQuery1VED_TOTALSERVICOS.AsExtended;
  TotVal:=TotVal+IBQuery1VED_VALORTOTAL.AsExtended;
  SubPro:=SubPro+IBQuery1VED_TOTALPRODUTOS.AsExtended;
  SubSer:=SubSer+IBQuery1VED_TOTALSERVICOS.AsExtended;
  SubVal:=SubVal+IBQuery1VED_VALORTOTAL.AsExtended;
  Qtde:=Qtde+1;
  QtdeSub:=QtdeSub+1;
end;

procedure TFormVendasQ12.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[TotPro]);
  QRLabel16.Caption:=Format('%m',[TotSer]);
  QRLabel13.Caption:=Format('%m',[TotVal]);
  QRLabel14.Caption:=IntToStr(Qtde);
end;

procedure TFormVendasQ12.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotPro:=0;
  TotSer:=0;
  TotVal:=0;
  Qtde:=0;
end;

procedure TFormVendasQ12.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=Format('%m',[SubPro]);
  QRLabel20.Caption:=Format('%m',[SubSer]);
  QRLabel21.Caption:=Format('%m',[SubVal]);
  QRLabel15.Caption:=IntToStr(QtdeSub);
end;

procedure TFormVendasQ12.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubPro:=0;
  SubSer:=0;
  SubVal:=0;
  QtdeSub:=0;
end;

end.
