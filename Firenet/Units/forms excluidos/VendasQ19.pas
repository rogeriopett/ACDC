unit VendasQ19;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ19 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1QRExcelFilter: TQRExcelFilter;
    IBQuery1QRCSVFilter: TQRCSVFilter;
    IBQuery1QRTextFilter: TQRTextFilter;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1PRO_NOME: TIBStringField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    IBQuery1VEI_PRODUTO: TIntegerField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_QUANTIDADE: TFMTBCDField;
    IBQuery1VEI_VALORTOTAL: TFMTBCDField;
    IBQuery1VEI_PRECOCUSTO: TFMTBCDField;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ19: TFormVendasQ19;
  Qtde, Total: Currency;
  Conta, SubConta: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ19.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ19);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  Total:=0;
  Conta:=0;
  SubConta:=0;
end;

procedure TFormVendasQ19.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=Qtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  Total:=Total+IBQuery1VEI_VALORTOTAL.AsExtended;
  Conta:=Conta+1;
  SubConta:=SubConta+1;
end;

procedure TFormVendasQ19.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=FloatToStr(Qtde);
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel13.Caption:=Format('%m',[Total/Qtde]);
  QRLabel15.Caption:=IntToStr(Conta);
end;

procedure TFormVendasQ19.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
  Conta:=0;
end;

procedure TFormVendasQ19.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubConta:=0;
end;

procedure TFormVendasQ19.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(SubConta);
end;

end.
