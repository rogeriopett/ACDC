unit ReceberQ15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormReceberQ15 = class(TForm)
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
    QRLabel19: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
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
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText5: TQRDBText;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1REE_CODIGO: TIntegerField;
    IBQuery1REE_DTEMISSAO: TDateField;
    IBQuery1REE_DTVENCIMENTO: TDateField;
    IBQuery1REE_NUMDOCTO: TIBStringField;
    IBQuery1REE_TIPODOCTO: TIBStringField;
    IBQuery1REE_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    IBQuery1REE_STATUS: TIBStringField;
    IBQuery1REE_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberQ15: TFormReceberQ15;
  Total, SubTotal: Currency;
  Qtde, SubQtde: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormReceberQ15.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceberQ15);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormReceberQ15.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
end;

procedure TFormReceberQ15.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=IntToStr(Qtde);
  QRLabel19.Caption:=Format('%m',[Total]);
end;

procedure TFormReceberQ15.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  SubQtde:=0;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormReceberQ15.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubQtde);
  QRLabel20.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormReceberQ15.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1REE_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1REE_VALOR.AsExtended;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

end.
