unit ConhecimentosQ06;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  IBX.IBDatabase, IBX.IBQuery, QRExport, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormConhecimentosQ06 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
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
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    IBQuery1CTE_CODIGO: TIntegerField;
    IBQuery1CTE_DTEMISSAO: TDateField;
    IBQuery1CTE_DESNOME: TIBStringField;
    IBQuery1CTE_STATUS: TIBStringField;
    IBQuery1CTE_CHAVEACESSO: TIBStringField;
    IBQuery1STATUS: TIBStringField;
    IBQuery1CTE_REMNOME: TIBStringField;
    IBQuery1CTE_ALIQICMS: TFMTBCDField;
    IBQuery1CTE_ALIQICMSST: TFMTBCDField;
    IBQuery1CTE_TOTALICMS: TFMTBCDField;
    IBQuery1CTE_TOTALICMSST: TFMTBCDField;
    IBQuery1CTE_VALORTOTAL: TFMTBCDField;
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
  FormConhecimentosQ06: TFormConhecimentosQ06;
  Total, TotalICMS, TotalICMSST, SubTotal, SubTotalICMS, SubTotalICMSST: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormConhecimentosQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConhecimentosQ06);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  TotalICMS:=0;
  TotalICMSST:=0;
  SubTotal:=0;
  SubTotalICMS:=0;
  SubTotalICMSST:=0;
end;

procedure TFormConhecimentosQ06.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalICMS:=0;
  TotalICMSST:=0;
end;

procedure TFormConhecimentosQ06.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel18.Caption:=Format('%m',[TotalICMS]);
  QRLabel21.Caption:=Format('%m',[TotalICMSST]);
end;

procedure TFormConhecimentosQ06.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotalICMS:=0;
  SubTotalICMSST:=0;
end;

procedure TFormConhecimentosQ06.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=Format('%m',[SubTotal]);
  QRLabel20.Caption:=Format('%m',[SubTotalICMS]);
  QRLabel22.Caption:=Format('%m',[SubTotalICMSST]);
end;

procedure TFormConhecimentosQ06.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1CTE_VALORTOTAL.AsExtended;
  TotalICMS:=TotalICMS+IBQuery1CTE_TOTALICMS.AsExtended;
  TotalICMSST:=TotalICMSST+IBQuery1CTE_TOTALICMSST.AsExtended;
  SubTotal:=SubTotal+IBQuery1CTE_VALORTOTAL.AsExtended;
  SubTotalICMS:=SubTotalICMS+IBQuery1CTE_TOTALICMS.AsExtended;
  SubTotalICMSST:=SubTotalICMSST+IBQuery1CTE_TOTALICMSST.AsExtended;
end;

end.
