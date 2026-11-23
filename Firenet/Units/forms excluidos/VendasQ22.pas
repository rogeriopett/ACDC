unit VendasQ22;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ22 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
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
    QRGroup1: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand5: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBQuery1VEI_DESCRICAO: TIBStringField;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1VEI_VENDA: TIntegerField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBTransaction1: TIBTransaction;
    IBQuery1PRO_FAMILIA: TIntegerField;
    IBQuery1FAM_CODIGO: TIntegerField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    QRLabel15: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    IBQuery1VEI_QUANTIDADE: TFMTBCDField;
    IBQuery1VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_DESCVALOR: TFMTBCDField;
    IBQuery1VEI_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ22: TFormVendasQ22;
  TotalQtde, SubTotalQtde, GdeTotalQtde: Real;
  TotalDesc, SubTotalDesc, GdeTotalDesc: Currency;
  TotalValor, SubTotalValor, GdeTotalValor: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ22.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ22);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalQtde:=0;
  SubTotalQtde:=0;
  GdeTotalQtde:=0;

  TotalDesc:=0;
  SubTotalDesc:=0;
  GdeTotalDesc:=0;

  TotalValor:=0;
  SubTotalValor:=0;
  GdeTotalValor:=0;
end;

procedure TFormVendasQ22.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotalQtde:=0;
  SubTotalDesc:=0;
  SubTotalValor:=0;
end;

procedure TFormVendasQ22.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=FloatToStr(SubTotalQtde);
  QRLabel21.Caption:=Format('%m',[SubTotalDesc]);
  QRLabel12.Caption:=Format('%m',[SubTotalValor]);
end;

procedure TFormVendasQ22.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=0;
  TotalDesc:=0;
  TotalValor:=0;
  SubTotalQtde:=0;
  SubTotalDesc:=0;
  SubTotalValor:=0;
  GdeTotalQtde:=0;
  GdeTotalDesc:=0;
  GdeTotalValor:=0;
end;

procedure TFormVendasQ22.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=FloatToStr(GdeTotalQtde);
  QRLabel22.Caption:=Format('%m',[GdeTotalDesc]);
  QRLabel8.Caption:=Format('%m',[GdeTotalValor]);
end;

procedure TFormVendasQ22.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=0;
  TotalDesc:=0;
  TotalValor:=0;
end;

procedure TFormVendasQ22.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=FloatToStr(TotalQtde);
  QRLabel20.Caption:=Format('%m',[TotalDesc]);
  QRLabel2.Caption:=Format('%m',[TotalValor]);
end;

procedure TFormVendasQ22.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalQtde:=TotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  SubTotalQtde:=SubTotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;
  GdeTotalQtde:=GdeTotalQtde+IBQuery1VEI_QUANTIDADE.AsExtended;

  TotalDesc:=TotalDesc+IBQuery1VEI_DESCVALOR.AsExtended;
  SubTotalDesc:=SubTotalDesc+IBQuery1VEI_DESCVALOR.AsExtended;
  GdeTotalDesc:=GdeTotalValor+IBQuery1VEI_DESCVALOR.AsExtended;

  TotalValor:=TotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
  SubTotalValor:=SubTotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
  GdeTotalValor:=GdeTotalValor+IBQuery1VEI_VALORTOTAL.AsExtended;
end;

end.
