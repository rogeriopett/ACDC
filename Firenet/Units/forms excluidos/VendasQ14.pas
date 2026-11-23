unit VendasQ14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormVendasQ14 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand2: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
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
    QRLabel10: TQRLabel;
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
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_COMISSAO: TIBBCDField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_TOTALCOMISSAO: TFMTBCDField;
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
  FormVendasQ14: TFormVendasQ14;
  TotalVendas, TotalComissao: Currency;
  SubTotalVendas, SubTotalComissao: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ14.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ14);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalVendas:=0;
  TotalComissao:=0;
  SubTotalVendas:=0;
  SubTotalComissao:=0;
end;

procedure TFormVendasQ14.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalVendas:=TotalVendas+IBQuery1VED_VALORTOTAL.AsExtended;
  TotalComissao:=TotalComissao+IBQuery1VED_TOTALCOMISSAO.AsExtended;
  SubTotalVendas:=SubTotalVendas+IBQuery1VED_VALORTOTAL.AsExtended;
  SubTotalComissao:=SubTotalComissao+IBQuery1VED_TOTALCOMISSAO.AsExtended;
end;

procedure TFormVendasQ14.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=Format('%m',[TotalVendas]);
  QRLabel13.Caption:=Format('%m',[TotalComissao]);
end;

procedure TFormVendasQ14.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalVendas:=0;
  TotalComissao:=0;
end;

procedure TFormVendasQ14.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel20.Caption:=Format('%m',[SubTotalVendas]);
  QRLabel21.Caption:=Format('%m',[SubTotalComissao]);
end;

procedure TFormVendasQ14.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotalVendas:=0;
  SubTotalComissao:=0;
end;

end.
