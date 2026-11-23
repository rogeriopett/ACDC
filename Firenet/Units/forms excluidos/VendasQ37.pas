unit VendasQ37;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery,
  QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormVendasQ37 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1QRExcelFilter: TQRExcelFilter;
    IBQuery1QRCSVFilter: TQRCSVFilter;
    IBQuery1QRTextFilter: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1CLI_ATIVIDADE: TIntegerField;
    IBQuery1ATI_DESCRICAO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    QRLabel5: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText4: TQRDBText;
    IBQuery1CLI_LOCALTRABALHO: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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
  FormVendasQ37: TFormVendasQ37;
  Total, SubTotal: Currency;
  Conta, SubConta: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ37.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ37);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Conta:=0;
  Total:=0;
  SubConta:=0;
  SubTotal:=0;
end;

procedure TFormVendasQ37.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Conta:=0;
  Total:=0;
end;

procedure TFormVendasQ37.QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel15.Caption:=FloatToStr(Conta);
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormVendasQ37.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubConta:=0;
end;

procedure TFormVendasQ37.QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(SubConta);
  QRLabel5.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormVendasQ37.QRSubDetail1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1VED_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1VED_VALORTOTAL.AsExtended;
  Conta:=Conta+1;
  SubConta:=SubConta+1;
end;

end.
