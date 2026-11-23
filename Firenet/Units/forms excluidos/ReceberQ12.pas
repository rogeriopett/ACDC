unit ReceberQ12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DateUtils, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormReceberQ12 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
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
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1REE_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ12: TFormReceberQ12;
  Total, TotalCorrigido, SubTotal, SubTotalCorrigido, ValorCorrigido, JurosDiario: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceberQ12.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ12);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  TotalCorrigido:=0;
end;

procedure TFormReceberQ12.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
  TotalCorrigido:=0;
end;

procedure TFormReceberQ12.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel19.Caption:=Format('%m',[TotalCorrigido]);
end;

procedure TFormReceberQ12.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotalCorrigido:=0;
end;

procedure TFormReceberQ12.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel20.Caption:=Format('%m',[SubTotalCorrigido]);
end;

procedure TFormReceberQ12.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1REE_DTVENCIMENTO.Value<Date then
  QRLabel15.Caption:=IntToStr(DaysBetween(Date,IBQuery1REE_DTVENCIMENTO.Value)) else
  QRLabel15.Caption:='0'; //zero dias em atraso.
end;

procedure TFormReceberQ12.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1REE_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1REE_VALOR.AsExtended;

  TotalCorrigido:=TotalCorrigido+ValorCorrigido;
  SubTotalCorrigido:=SubTotalCorrigido+ValorCorrigido;
end;

procedure TFormReceberQ12.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
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
end;

end.
