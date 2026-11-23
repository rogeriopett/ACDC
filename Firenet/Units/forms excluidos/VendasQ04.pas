unit VendasQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls,
  IBCustomDataSet, IBDatabase, IBQuery, QRPDFFilt;

type
  TFormVendasQ04 = class(TForm)
    DataSource1: TDataSource;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QuickRep1: TQuickRep;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel20: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery2VEI_CODIGO: TIntegerField;
    IBQuery2VEI_VENDA: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_PRODUTO: TIntegerField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery2VEI_PRECOCUSTO: TFMTBCDField;
    IBQuery2VEI_PRECOCUSTOTOTAL: TFMTBCDField;
    IBQuery2VEI_LUCROPORC: TFMTBCDField;
    IBQuery2VEI_LUCROVALOR: TFMTBCDField;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    IBQuery2VEI_VALORUNIT: TFMTBCDField;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1QTDE: TFMTBCDField;
    IBQuery1VALORTOTAL: TFMTBCDField;
    IBQuery1VALORCOMISSAO: TFMTBCDField;
    IBQuery1VALORUNIT: TFMTBCDField;
    IBQuery1PRECOCUSTO: TFMTBCDField;
    IBQuery1PRO_NOME: TIBStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    TotalCusto: Currency;
    TotalVendas: Currency;
    TotalComissao: Currency;
  public
    { Public declarations }
  end;

var
  FormVendasQ04: TFormVendasQ04;
  //Margem: Currency;
  //MargemPorc: Real;
  //TotalProduto: Currency;

implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.dfm}

procedure TFormVendasQ04.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var CustoTotal, Margem: Currency;
  MargemPorc: Extended;
begin
  CustoTotal:=Decimais(IBQuery1QTDE.AsExtended * IBQuery1PRECOCUSTO.AsExtended,2);
  Margem:=IBQuery1VALORTOTAL.AsExtended - CustoTotal;
  if CustoTotal>0 then
  MargemPorc:=Decimais((Margem * 100) / CustoTotal,2) else
  MargemPorc:=0;

  QRLabel2.Caption:=Format('%m',[CustoTotal]);
  QRLabel3.Caption:=Format('%m',[Margem]);
  QRLabel6.Caption:=FormatFloat('#0.00',MargemPorc);
//  Margem:=(IBQuery2VEI_QUANTIDADE.Value*IBQuery2VEI_VALORUNIT.Value)-IBQuery2.FieldByName('CUSTOTOTAL').AsExtended;
//  QRLabel21.Caption:=Format('%m',[Margem]);
//  TotalProduto:=IBQuery2VEI_QUANTIDADE.Value*IBQuery2VEI_VALORUNIT.Value;
//  if TotalProduto=0 then
//  MargemPorc:=0 else
//  MargemPorc:=(Margem / TotalProduto)*100;
//  if MargemPorc<>0 then
//  QRLabel22.Caption:=Format('%f',[MargemPorc]) else
//  QRLabel22.Caption:='Error'; //not a number.

  TotalCusto:=TotalCusto+Decimais(IBQuery1QTDE.AsExtended * IBQuery1PRECOCUSTO.AsExtended,2);
  TotalVendas:=TotalVendas+IBQuery1VALORTOTAL.AsExtended;
  TotalComissao:=TotalComissao+IBQuery1VALORCOMISSAO.AsExtended;
end;

procedure TFormVendasQ04.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCusto:=0;
  TotalVendas:=0;
  TotalComissao:=0;
end;

procedure TFormVendasQ04.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:=Format('%m',[TotalVendas]);
  QRLabel9.Caption:=Format('%m',[TotalCusto]);
  QRLabel10.Caption:=Format('%m',[TotalComissao]);
end;

procedure TFormVendasQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
//  Margem:=0;
//  MargemPorc:=0;
end;

procedure TFormVendasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ04);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
  TotalCusto:=0;
  TotalVendas:=0;
  TotalComissao:=0;
end;

end.
