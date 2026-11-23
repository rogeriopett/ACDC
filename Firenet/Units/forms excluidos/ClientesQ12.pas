unit ClientesQ12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormClientesQ12 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
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
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    IBQuery1REE_CLIENTE: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_BLOQUEARVENDA: TIBStringField;
    IBQuery1CLI_MENSALISTA: TIBStringField;
    IBQuery1CLI_DIACOBRANCA: TIntegerField;
    QRLabel12: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel14: TQRLabel;
    IBQuery1CLI_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    IBQuery2: TIBQuery;
    IBQuery3: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBTransaction3: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery1DATA: TDateField;
    IBQuery1CLI_LIMITECREDITO: TFMTBCDField;
    IBQuery2VENCIDOS: TFMTBCDField;
    IBQuery2AVENCER: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ12: TFormClientesQ12;
  TotalVencer, TotalVencido, SubTotalVencer, SubTotalVencido: Currency;
  Qtde, SubQtde: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ12.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ12);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  SubQtde:=0;
  TotalVencer:=0;
  TotalVencido:=0;
  SubTotalVencer:=0;
  SubTotalVencido:=0;
end;

procedure TFormClientesQ12.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
//  SubQtde:=0;
  TotalVencer:=0;
  TotalVencido:=0;
//  SubTotalVencer:=0;
//  SubTotalVencido:=0;
end;

procedure TFormClientesQ12.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Qtde);
  QRLabel17.Caption:=Format('%m',[TotalVencido]);
  QRLabel5.Caption:=Format('%m',[TotalVencer]);
end;

procedure TFormClientesQ12.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  SubQtde:=0;
  TotalVencer:=0;
  TotalVencido:=0;
  SubTotalVencer:=0;
  SubTotalVencido:=0;
end;

procedure TFormClientesQ12.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubQtde);
  QRLabel19.Caption:=Format('%m',[SubTotalVencido]);
  QRLabel10.Caption:=Format('%m',[SubTotalVencer]);
end;

procedure TFormClientesQ12.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=Qtde+1;
  SubQtde:=SubQtde+1;
  TotalVencer:=TotalVencer+IBQuery2AVENCER.AsExtended;
  SubTotalVencer:=SubTotalVencer+IBQuery2AVENCER.AsExtended;
  TotalVencido:=TotalVencido+IBQuery2VENCIDOS.AsExtended;
  SubTotalVencido:=SubTotalVencido+IBQuery2VENCIDOS.AsExtended;
end;

end.
