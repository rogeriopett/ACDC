unit BoletosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormBoletosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
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
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
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
    QRSubDetail2: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    DataSource1: TDataSource;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1BOL_CODIGO: TIntegerField;
    IBQuery1BOL_CLIENTE: TIntegerField;
    IBQuery1BOL_NOME: TIBStringField;
    IBQuery1BOL_DTVENCIMENTO: TDateField;
    IBQuery1BOL_CONTA: TIntegerField;
    IBQuery1CON_NOME: TIBStringField;
    IBQuery2: TIBQuery;
    IBQuery2BOI_RECEBER: TIntegerField;
    IBQuery2REE_CLIENTE: TIntegerField;
    IBQuery2REE_CONTA: TIntegerField;
    IBQuery2REE_DESCRICAO: TIBStringField;
    IBQuery2REE_DTEMISSAO: TDateField;
    IBQuery2REE_DTVENCIMENTO: TDateField;
    IBQuery2REE_NUMDOCTO: TIBStringField;
    IBQuery2REE_TIPODOCTO: TIBStringField;
    IBQuery2REE_PARCELANUM: TIntegerField;
    IBQuery2REE_PARCELAQTDE: TIntegerField;
    IBQuery2REE_STATUS: TIBStringField;
    IBTransaction2: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel24: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText23: TQRDBText;
    IBQuery1BOL_DTPAGAMENTO: TDateField;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    IBQuery1BOL_VALORITENS: TFMTBCDField;
    IBQuery1BOL_VALORBOLETO: TFMTBCDField;
    IBQuery1BOL_VALORTOTAL: TFMTBCDField;
    IBQuery1BOL_VALORPAGO: TFMTBCDField;
    IBQuery2REE_VALOR: TFMTBCDField;
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
  FormBoletosQ02: TFormBoletosQ02;
  Total, TotalPago, SubTotal, SubTotalPago: Currency;
  Qtde, SubQtde: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormBoletosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormBoletosQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ02.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
  TotalPago:=0;
  Qtde:=0;
end;

procedure TFormBoletosQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel25.Caption:=Format('%m',[TotalPago]);
  QRLabel29.Caption:=IntToStr(Qtde);
end;

procedure TFormBoletosQ02.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
  TotalPago:=0;
  SubTotalPago:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormBoletosQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel26.Caption:=Format('%m',[SubTotalPago]);
  QRLabel31.Caption:=IntToStr(SubQtde);
end;

procedure TFormBoletosQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1BOL_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1BOL_VALORTOTAL.AsExtended;
  TotalPago:=TotalPago+IBQuery1BOL_VALORPAGO.AsExtended;
  SubTotalPago:=SubTotalPago+IBQuery1BOL_VALORPAGO.AsExtended;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

end.
