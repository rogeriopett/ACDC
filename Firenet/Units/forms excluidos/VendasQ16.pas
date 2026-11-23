unit VendasQ16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ16 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
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
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1VEI_VENDA: TIntegerField;
    IBQuery1VEI_DESCRICAO: TIBStringField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1PRO_MARCA: TIntegerField;
    IBQuery1MAR_CODIGO: TIntegerField;
    IBQuery1MAR_DESCRICAO: TIBStringField;
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    IBQuery1VED_VENDEDOR: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_VALORTOTAL: TFMTBCDField;
    IBQuery1VEI_QUANTIDADE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand;
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
  FormVendasQ16: TFormVendasQ16;
  TotalQtde, SubTotalQtde, GdeTotalQtde: Real;
  TotalValor, SubTotalValor, GdeTotalValor: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ16.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ16);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalQtde:=0;
  SubTotalQtde:=0;
  GdeTotalQtde:=0;
  TotalValor:=0;
  SubTotalValor:=0;
  GdeTotalValor:=0;
end;

procedure TFormVendasQ16.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=TotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  SubTotalQtde:=SubTotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  GdeTotalQtde:=GdeTotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  TotalValor:=TotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
  SubTotalValor:=SubTotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
  GdeTotalValor:=GdeTotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
end;

procedure TFormVendasQ16.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=FloatToStr(TotalQtde);
  QRLabel2.Caption:=Format('%m',[TotalValor]);
end;

procedure TFormVendasQ16.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=0;
  TotalValor:=0;
end;

procedure TFormVendasQ16.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=FloatToStr(SubTotalQtde);
  QRLabel12.Caption:=Format('%m',[SubTotalValor]);
end;

procedure TFormVendasQ16.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotalQtde:=0;
  SubTotalValor:=0;
end;

procedure TFormVendasQ16.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=FloatToStr(GdeTotalQtde);
  QRLabel8.Caption:=Format('%m',[GdeTotalValor]);
end;

procedure TFormVendasQ16.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=0;
  TotalValor:=0;
  SubTotalQtde:=0;
  SubTotalValor:=0;
  GdeTotalQtde:=0;
  GdeTotalValor:=0;
end;

end.
