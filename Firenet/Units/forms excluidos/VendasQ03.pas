unit VendasQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, IBDatabase,
  IBCustomDataSet, IBQuery, QRPDFFilt;

type
  TFormVendasQ03 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    DataSource1: TDataSource;
    QRExcelFilter1: TQRExcelFilter;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBTransaction2: TIBTransaction;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery2VEI_CODIGO: TIntegerField;
    IBQuery2VEI_VENDA: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_PRODUTO: TIntegerField;
    QRRTFFilter1: TQRRTFFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    IBQuery1VED_TOTALCOMISSAO: TFMTBCDField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_LUCROPORC: TFMTBCDField;
    IBQuery1VED_LUCROVALOR: TFMTBCDField;
    IBQuery1VED_CUSTOTOTAL: TFMTBCDField;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    IBQuery2VEI_VALORUNIT: TFMTBCDField;
    IBQuery2VEI_VALORCOMISSAO: TFMTBCDField;
    IBQuery2PRO_PRECOCUSTO: TFMTBCDField;
    IBQuery2CUSTOTOTAL: TFMTBCDField;
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ03: TFormVendasQ03;
  TotalComissao: Currency;
  TotalVenda: Currency;
  TotalCusto: Currency;
  TotalMargem: Currency;
  SubComissao: Currency;
  SubVenda: Currency;
  SubCusto: Currency;
  SubMargem: Currency;

implementation
uses DataMod, FuncoesFirenet;

{$R *.dfm}

procedure TFormVendasQ03.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
//  QRLabel11.Caption:=Format('%m',[CustoTotalNota]);
//  QRLabel21.Caption:=Format('%m',[IBQuery1VED_VALORTOTAL.Value-CustoTotalNota]); //margem.
//  if IBQuery1VED_VALORTOTAL.Value<>0 then
//  QRLabel22.Caption:=Format('%f',[((IBQuery1VED_VALORTOTAL.Value-CustoTotalNota) / IBQuery1VED_VALORTOTAL.Value) * 100]) else //margem %.
//  QRLabel22.Caption:='Error';
end;

procedure TFormVendasQ03.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalComissao:=TotalComissao+IBQuery1VED_TOTALCOMISSAO.AsExtended;
  TotalVenda:=TotalVenda+IBQuery1VED_VALORTOTAL.AsExtended;
  TotalCusto:=TotalCusto+IBQuery1VED_CUSTOTOTAL.AsExtended;
  TotalMargem:=TotalMargem+IBQuery1VED_LUCROVALOR.AsExtended;
  SubComissao:=SubComissao+IBQuery1VED_TOTALCOMISSAO.AsExtended;
  SubVenda:=SubVenda+IBQuery1VED_VALORTOTAL.AsExtended;
  SubCusto:=SubCusto+IBQuery1VED_CUSTOTOTAL.AsExtended;
  SubMargem:=SubMargem+IBQuery1VED_LUCROVALOR.AsExtended;
end;

procedure TFormVendasQ03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[TotalComissao]);
  QRLabel25.Caption:=Format('%m',[TotalVenda]);
  QRLabel27.Caption:=Format('%m',[TotalCusto]);
  QRLabel24.Caption:=Format('%m',[TotalMargem]);
  QRLabel26.Caption:=Format('%f',[((TotalVenda-TotalCusto) / TotalVenda) * 100]);
end;

procedure TFormVendasQ03.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalComissao:=0;
  TotalVenda:=0;
  TotalCusto:=0;
  TotalMargem:=0;
end;

procedure TFormVendasQ03.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubComissao:=0;
  SubVenda:=0;
  SubCusto:=0;
  SubMargem:=0;
end;

procedure TFormVendasQ03.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel32.Caption:=Format('%m',[SubComissao]);
  QRLabel31.Caption:=Format('%m',[SubVenda]);
  QRLabel30.Caption:=Format('%m',[SubCusto]);
  QRLabel18.Caption:=Format('%m',[SubMargem]);
  QRLabel28.Caption:=Format('%f',[((SubVenda-SubCusto) / SubVenda) * 100]);
end;

procedure TFormVendasQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ03);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

end.
