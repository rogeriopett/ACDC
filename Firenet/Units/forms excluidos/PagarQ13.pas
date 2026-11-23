unit PagarQ13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormPagarQ13 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
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
    QRLabel14: TQRLabel;
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
    IBQuery1PAG_CODIGO: TIntegerField;
    IBQuery1PAG_DTEMISSAO: TDateField;
    IBQuery1PAG_DTVENCIMENTO: TDateField;
    IBQuery1PAG_FORNECEDOR: TIntegerField;
    IBQuery1PAG_NUMDOCTO: TIBStringField;
    IBQuery1PAG_STATUS: TIBStringField;
    IBQuery1PAG_TIPODOCTO: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1PAG_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarQ13: TFormPagarQ13;
  Total, SubTotal: Currency;
  Qtde, SubQtde: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPagarQ13.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ13);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  Qtde:=0;
  SubQtde:=0;
end;

procedure TFormPagarQ13.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
end;

procedure TFormPagarQ13.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=IntToStr(Qtde);
  QRLabel19.Caption:=Format('%m',[Total]);
end;

procedure TFormPagarQ13.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  SubQtde:=0;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormPagarQ13.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubQtde);
  QRLabel20.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormPagarQ13.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1PAG_VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1PAG_VALOR.AsExtended;
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
end;

end.
