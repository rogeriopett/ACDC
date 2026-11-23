unit DeliveryQ02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormDeliveryQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
    IBQuery1DLV_CARTAO: TFMTBCDField;
    IBQuery1DLV_CLIENTE: TIntegerField;
    IBQuery1DLV_CODIGO: TIntegerField;
    IBQuery1DLV_DINHEIRO: TFMTBCDField;
    IBQuery1DLV_DTCADASTRO: TDateField;
    IBQuery1DLV_TROCO: TFMTBCDField;
    IBQuery1DLV_VALORTOTAL: TFMTBCDField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1DLV_ENTREGADOR: TIntegerField;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText2: TQRDBText;
    IBQuery1DLV_TAXAVALOR: TFMTBCDField;
    QRDBText3: TQRDBText;
    QRLabel25: TQRLabel;
    IBQuery1DLV_STATUS: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDeliveryQ02: TFormDeliveryQ02;
  TotalCartao, TotalDinheiro, TotalTroco, TotalValor, TotalTaxa: Currency;
  SubCartao, SubDinheiro, SubTroco, SubValor, SubTaxa: Currency;
  Qtde, QtdeSub: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormDeliveryQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormDeliveryQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalCartao:=0;
  TotalDinheiro:=0;
  TotalTroco:=0;
  TotalValor:=0;
  TotalTaxa:=0;
  SubCartao:=0;
  SubDinheiro:=0;
  SubTroco:=0;
  SubValor:=0;
  SubTaxa:=0;
  Qtde:=0;
  QtdeSub:=0;
end;

procedure TFormDeliveryQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCartao:=0;
  TotalDinheiro:=0;
  TotalTroco:=0;
  TotalValor:=0;
  TotalTaxa:=0;
  Qtde:=0;
end;

procedure TFormDeliveryQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=IntToStr(Qtde);
  QRLabel18.Caption:=Format('%m',[TotalValor]);
  QRLabel16.Caption:=Format('%m',[TotalCartao]);
  QRLabel1.Caption:=Format('%m',[TotalDinheiro]);
  QRLabel13.Caption:=Format('%m',[TotalTroco]);
  QRLabel22.Caption:=Format('%m',[TotalTaxa]);
end;

procedure TFormDeliveryQ02.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubCartao:=0;
  SubDinheiro:=0;
  SubTroco:=0;
  SubValor:=0;
  SubTaxa:=0;
  QtdeSub:=0;
end;

procedure TFormDeliveryQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(QtdeSub);
  QRLabel19.Caption:=Format('%m',[SubValor]);
  QRLabel20.Caption:=Format('%m',[SubCartao]);
  QRLabel6.Caption:=Format('%m',[SubDinheiro]);
  QRLabel21.Caption:=Format('%m',[SubTroco]);
  QRLabel23.Caption:=Format('%m',[SubTaxa]);
end;

procedure TFormDeliveryQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCartao:=TotalCartao+IBQuery1DLV_CARTAO.AsExtended;
  TotalDinheiro:=TotalDinheiro+IBQuery1DLV_DINHEIRO.AsExtended;
  TotalTroco:=TotalTroco+IBQuery1DLV_TROCO.AsExtended;
  TotalValor:=TotalValor+IBQuery1DLV_VALORTOTAL.AsExtended;
  TotalTaxa:=TotalTaxa+IBQuery1DLV_TAXAVALOR.AsExtended;
  SubCartao:=SubCartao+IBQuery1DLV_CARTAO.AsExtended;
  SubDinheiro:=SubDinheiro+IBQuery1DLV_DINHEIRO.AsExtended;
  SubTroco:=SubTroco+IBQuery1DLV_TROCO.AsExtended;
  SubValor:=SubValor+IBQuery1DLV_VALORTOTAL.AsExtended;
  SubTaxa:=SubTaxa+IBQuery1DLV_TAXAVALOR.AsExtended;
  Qtde:=Qtde+1;
  QtdeSub:=QtdeSub+1;
end;

end.
