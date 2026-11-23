unit VendasQ26;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ26 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_FORMAPAGTO: TIBStringField;
    IBQuery1VED_CODIGO: TIntegerField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_CIDADE: TIBStringField;
    IBQuery1VED_CIDADECODIGO: TIntegerField;
    QRGroup1: TQRGroup;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_TOTALPRODUTOS: TFMTBCDField;
    IBQuery1VED_TOTALSERVICOS: TFMTBCDField;
    IBQuery1VED_DESCPORC: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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
  FormVendasQ26: TFormVendasQ26;
  TotProC, TotSerC, TotValC: Currency;
  TotProV, TotSerV, TotValV: Currency;
  SubPro, SubSer, SubVal: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ26.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ26);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormVendasQ26.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotProV:=0;
  TotSerV:=0;
  TotValV:=0;
end;

procedure TFormVendasQ26.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[TotProV]);
  QRLabel16.Caption:=Format('%m',[TotSerV]);
  QRLabel13.Caption:=Format('%m',[TotValV]);
end;

procedure TFormVendasQ26.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubPro:=0;
  SubSer:=0;
  SubVal:=0;
end;

procedure TFormVendasQ26.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=Format('%m',[SubPro]);
  QRLabel20.Caption:=Format('%m',[SubSer]);
  QRLabel21.Caption:=Format('%m',[SubVal]);
end;

procedure TFormVendasQ26.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotProC:=0;
  TotSerC:=0;
  TotValC:=0;
end;

procedure TFormVendasQ26.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:=Format('%m',[TotProC]);
  QRLabel3.Caption:=Format('%m',[TotSerC]);
  QRLabel1.Caption:=Format('%m',[TotValC]);
end;

procedure TFormVendasQ26.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotProV:=TotProV+IBQuery1VED_TOTALPRODUTOS.AsExtended;
  TotSerV:=TotSerV+IBQuery1VED_TOTALSERVICOS.AsExtended;
  TotValV:=TotValV+IBQuery1VED_VALORTOTAL.AsExtended;
  TotProC:=TotProC+IBQuery1VED_TOTALPRODUTOS.AsExtended;
  TotSerC:=TotSerC+IBQuery1VED_TOTALSERVICOS.AsExtended;
  TotValC:=TotValC+IBQuery1VED_VALORTOTAL.AsExtended;
  SubPro:=SubPro+IBQuery1VED_TOTALPRODUTOS.AsExtended;
  SubSer:=SubSer+IBQuery1VED_TOTALSERVICOS.AsExtended;
  SubVal:=SubVal+IBQuery1VED_VALORTOTAL.AsExtended;
end;

end.
