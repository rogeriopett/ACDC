unit ReceberQ14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormReceberQ14 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
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
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
    IBQuery1REE_RECEITA: TIntegerField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REC_DESCRICAO: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText3: TQRDBText;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ14: TFormReceberQ14;
  Total, TotalCorrigido, SubTotal, SubTotalCorrigido, ValorCorrigido, JurosDiario: Currency;
  Dias: Integer;
  DataAte: TDate;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceberQ14.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ14);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  TotalCorrigido:=0;
end;

procedure TFormReceberQ14.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
  TotalCorrigido:=0;
end;

procedure TFormReceberQ14.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel19.Caption:=Format('%m',[TotalCorrigido]);
end;

procedure TFormReceberQ14.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotalCorrigido:=0;
end;

procedure TFormReceberQ14.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=Format('%m',[SubTotal]);
  QRLabel20.Caption:=Format('%m',[SubTotalCorrigido]);
end;

procedure TFormReceberQ14.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1REE_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1REE_VALOR.AsExtended;

  TotalCorrigido:=TotalCorrigido+ValorCorrigido;
  SubTotalCorrigido:=SubTotalCorrigido+ValorCorrigido;
end;

procedure TFormReceberQ14.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
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
