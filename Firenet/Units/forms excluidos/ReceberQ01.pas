unit ReceberQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
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
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
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
    IBQuery1REE_CODIGO: TIntegerField;
    IBQuery1REE_CONTA: TIntegerField;
    IBQuery1REE_DESCRICAO: TIBStringField;
    IBQuery1REE_RECEITA: TIntegerField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1REE_TIPODOCTO: TIBStringField;
    IBQuery1REE_NUMDOCTO: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1REC_DESCRICAO: TIBStringField;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1REE_VALOR: TFMTBCDField;
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
  FormReceberQ01: TFormReceberQ01;
  Total, TotalCorrigido, TotalCorrigidoAte, SubTotal, SubTotalCorrigido, SubTotalCorrigidoAte, ValorCorrigido, ValorCorrigidoAte, JurosDiario: Currency;
  Dias: Integer;
  DataAte: TDate;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceberQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  TotalCorrigido:=0;
  TotalCorrigidoAte:=0;
end;

procedure TFormReceberQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel19.Caption:=Format('%m',[TotalCorrigido]);
  QRLabel22.Caption:=Format('%m',[TotalCorrigidoAte]);
end;

procedure TFormReceberQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
  TotalCorrigido:=0;
  TotalCorrigidoAte:=0;
end;

procedure TFormReceberQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1REE_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1REE_VALOR.AsExtended;

  TotalCorrigido:=TotalCorrigido+ValorCorrigido;
  SubTotalCorrigido:=SubTotalCorrigido+ValorCorrigido;

  TotalCorrigidoAte:=TotalCorrigidoAte+ValorCorrigidoAte;
  SubTotalCorrigidoAte:=SubTotalCorrigidoAte+ValorCorrigidoAte;
end;

procedure TFormReceberQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel20.Caption:=Format('%m',[SubTotalCorrigido]);
  QRLabel23.Caption:=Format('%m',[SubTotalCorrigidoAte]);
end;

procedure TFormReceberQ01.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotalCorrigido:=0;
  SubTotalCorrigidoAte:=0;
end;

procedure TFormReceberQ01.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1REE_DTVENCIMENTO.Value<Date then
  begin
    JurosDiario:=((IBQuery1REE_VALOR.AsExtended/100)*DM.TBParametrosPAR_JUROSMENSAL.AsExtended)/30;
    ValorCorrigido:=IBQuery1REE_VALOR.AsExtended+((Date-IBQuery1REE_DTVENCIMENTO.Value)*JurosDiario);
    QRLabel12.Caption:=Format('%m',[ValorCorrigido]);
  end else
  begin
    ValorCorrigido:=IBQuery1REE_VALOR.AsExtended;
    QRLabel12.Caption:=Format('%m',[ValorCorrigido]);
  end;

  if IBQuery1REE_DTVENCIMENTO.Value<DataAte then
  begin
    JurosDiario:=((IBQuery1REE_VALOR.AsExtended/100)*DM.TBParametrosPAR_JUROSMENSAL.AsExtended)/30;
    ValorCorrigidoAte:=IBQuery1REE_VALOR.AsExtended+((DataAte-IBQuery1REE_DTVENCIMENTO.Value)*JurosDiario);
    QRLabel21.Caption:=Format('%m',[ValorCorrigidoAte]);
  end else
  begin
    ValorCorrigidoAte:=IBQuery1REE_VALOR.AsExtended;
    QRLabel21.Caption:=Format('%m',[ValorCorrigidoAte]);
  end;
end;

end.
