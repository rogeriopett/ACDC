unit ServicosQ12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBDatabase, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormServicosQ12 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
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
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
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
    IBTransaction1: TIBTransaction;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_VALORTOTAL: TFMTBCDField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SEI_PRODUTO: TIntegerField;
    IBQuery1SEI_VALORUNIT: TFMTBCDField;
    IBQuery1SEI_QUANTIDADE: TFMTBCDField;
    IBQuery1SEI_VALORTOTAL: TFMTBCDField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1PRO_NOME: TIBStringField;
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
  FormServicosQ12: TFormServicosQ12;
  Qtde, Total: Currency;
  Conta, SubConta: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ12.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ12);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  Total:=0;
  Conta:=0;
  SubConta:=0;
end;

procedure TFormServicosQ12.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
  Conta:=0;
end;

procedure TFormServicosQ12.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=FloatToStr(Qtde);
  QRLabel2.Caption:=Format('%m',[Total]);
  QRLabel13.Caption:=Format('%m',[Total/Qtde]);
  QRLabel15.Caption:=IntToStr(Conta);
end;

procedure TFormServicosQ12.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubConta:=0;
end;

procedure TFormServicosQ12.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(SubConta);
end;

procedure TFormServicosQ12.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=Qtde+IBQuery1SEI_QUANTIDADE.AsExtended;
  Total:=Total+IBQuery1SEI_VALORTOTAL.AsExtended;
  Conta:=Conta+1;
  SubConta:=SubConta+1;
end;

end.
