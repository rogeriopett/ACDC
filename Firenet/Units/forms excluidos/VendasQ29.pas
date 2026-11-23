unit VendasQ29;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRPDFFilt, IBQuery, IBDatabase, QRExport,
  QuickRpt, QRCtrls, ExtCtrls;

type
  TFormVendasQ29 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    IBQuery2TOTALVENDAREAL: TFMTBCDField;
    IBQuery1FAM_CODIGO: TIntegerField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    IBQuery1GRU_CODIGO: TIntegerField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1VEI_PRODUTO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1PRO_PRECOCUSTO: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1QTDEVENDIDA: TFMTBCDField;
    IBQuery1TOTALVENDA: TIBBCDField;
    IBQuery1TOTALVENDAREAL: TIBBCDField;
    IBQuery1PRECOVENDAMEDIO: TIBBCDField;
    IBQuery1TOTALCUSTO: TIBBCDField;
    IBQuery1CMV: TIBBCDField;
    IBQuery1MARGEM: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ29: TFormVendasQ29;
  Total: Integer;
  TotalPorc: Extended;
  Qtde, Venda, VendaReal, Custo: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ29.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  Qtde:=Qtde+IBQuery1QTDEVENDIDA.AsExtended;
  Venda:= Venda + IBQuery1.FieldByName('TOTALVENDA').AsExtended;
  VendaReal:=VendaReal+IBQuery1TOTALVENDAREAL.AsExtended;
  Custo:=Custo+IBQuery1.FieldByName('TOTALCUSTO').AsExtended;
end;

procedure TFormVendasQ29.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var C: Extended;
begin
  C:=(IBQuery1TOTALVENDAREAL.AsExtended* 100) / IBQuery2TOTALVENDAREAL.AsExtended;
  QRLabel22.Caption:=Format('%3.2f',[C]);
  TotalPorc:=TotalPorc+C;
end;

procedure TFormVendasQ29.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ29);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  TotalPorc:=0;
  Qtde:=0;
  Venda:=0;
  VendaReal:=0;
  Custo:=0;
end;

procedure TFormVendasQ29.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalPorc:=0;
  Qtde:=0;
  Venda:=0;
  VendaReal:=0;
  Custo:=0;
end;

procedure TFormVendasQ29.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(Total);
  QRLabel23.Caption:=Format('%3.2f',[TotalPorc]);
  QRLabel15.Caption:=Format('%m',[Custo]);
  QRLabel25.Caption:=Format('%m',[VendaReal]);
  QRLabel26.Caption:=Format('%m',[Venda]);
  QRLabel27.Caption:=FloatToStr(Qtde);
  QRLabel16.Caption:=Format('%3.2f',[((Custo / VendaReal) * 100)]); //CMV = ((PRO_PRECOCUSTO * (sum(VEI_QUANTIDADE))) / sum(VEI_VALORTOTAL)) * 100.
  QRLabel24.Caption:=Format('%3.2f',[(((VendaReal*100)/Custo)-100)]); //Margem =  ((sum(VEI_VALORTOTAL)*100) / (PRO_PRECOCUSTO * (sum(VEI_QUANTIDADE)))) - 100.
end;

end.
