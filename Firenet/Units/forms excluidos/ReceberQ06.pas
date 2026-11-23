unit ReceberQ06;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ06 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1REE_CODIGO: TIntegerField;
    IBQuery1REE_CONTA: TIntegerField;
    IBQuery1REE_DESCRICAO: TIBStringField;
    IBQuery1REE_RECEITA: TIntegerField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1REE_TIPODOCTO: TIBStringField;
    IBQuery1REE_NUMDOCTO: TIBStringField;
    IBQuery1REE_VALOR: TFMTBCDField;
    IBQuery1REE_BAIXADOPOR: TIBStringField;
    IBQuery1REE_DTPAGAMENTO: TDateField;
    IBQuery1REE_VENDEDOR: TIntegerField;
    IBQuery1REE_VALORPAGO: TFMTBCDField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1REC_DESCRICAO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ06: TFormReceberQ06;
  TotalValor, TotalValorPago, SubTotalValor, SubTotalValorPago: Currency;
  Conta, ContaTotal, SomaDias: Integer;
implementation
uses DataMod, FuncoesFirenet, DateUtils;

{$R *.dfm}

procedure TFormReceberQ06.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ06);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalValor:=0;
  TotalValorPago:=0;
end;

procedure TFormReceberQ06.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Diferenca: Currency;
begin
  QRLabel19.Caption:=Format('%m',[TotalValor]);
  QRLabel2.Caption:=Format('%m',[TotalValorPago]);
  QRLabel21.Caption:=Format('%m',[TotalValorPago-TotalValor]);
  Diferenca:=TotalValorPago-TotalValor;
  QRLabel24.Caption:=FormatFloat('##0.0000',(Diferenca*100.0000)/TotalValor)+' %';
end;

procedure TFormReceberQ06.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalValor:=0; //nao zera o subtotal.
  TotalValorPago:=0;
end;

procedure TFormReceberQ06.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalValor:=TotalValor+IBQuery1REE_VALOR.AsExtended;
  TotalValorPago:=TotalValorPago+IBQuery1REE_VALORPAGO.AsExtended;
  SubTotalValor:=SubTotalValor+IBQuery1REE_VALOR.AsExtended;
  SubTotalValorPago:=SubTotalValorPago+IBQuery1REE_VALORPAGO.AsExtended;
end;

procedure TFormReceberQ06.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Diferenca: Currency;
begin
  QRLabel20.Caption:=Format('%m',[SubTotalValor]);
  QRLabel8.Caption:=Format('%m',[SubTotalValorPago]);
  QRLabel22.Caption:=Format('%m',[SubTotalValorPago-SubTotalValor]);
  Diferenca:=SubTotalValorPago-SubTotalValor;
  QRLabel23.Caption:=FormatFloat('##0.0000',(Diferenca*100.0000)/SubTotalValor)+' %';

  if (SomaDias<>0) and (Conta<>0) then //nao pode ser zero.
  QRLabel28.Caption:=FormatFloat('#0.00',SomaDias/Conta) else
  QRLabel28.Caption:='0';
  QRLabel30.Caption:='Total de registros: '+IntToStr(ContaTotal);
end;

procedure TFormReceberQ06.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotalValor:=0;
  SubTotalValorPago:=0;
  Conta:=0;
  ContaTotal:=0;
  SomaDias:=0
end;

procedure TFormReceberQ06.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1REE_DTVENCIMENTO.Value<IBQuery1REE_DTPAGAMENTO.Value then
  begin //só soma os dias que sejam positivos.
    SomaDias:=SomaDias+DaysBetween(IBQuery1REE_DTVENCIMENTO.Value,IBQuery1REE_DTPAGAMENTO.Value);
    Conta:=Conta+1; //conta os registros que tem os dias positivos.
    QRLabel13.Caption:=IntToStr(DaysBetween(IBQuery1REE_DTVENCIMENTO.Value,IBQuery1REE_DTPAGAMENTO.Value));
  end else
  QRLabel13.Caption:=IntToStr(DaysBetween(IBQuery1REE_DTVENCIMENTO.Value,IBQuery1REE_DTPAGAMENTO.Value)*(-1)); //torna negativo.
  ContaTotal:=ContaTotal+1; //conta quantos registros tem o relatório.
end;

end.
