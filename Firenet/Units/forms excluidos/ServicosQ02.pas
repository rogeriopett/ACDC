unit ServicosQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRCtrls, QuickRpt, ExtCtrls,
  IBDatabase, QRExport, QRPDFFilt;

type
  TFormServicosQ02 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText15: TQRDBText;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    IBQuery1: TIBQuery;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    QRDBText11: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel16: TQRLabel;
    IBQuery1SER_CODIGO: TIntegerField;
    IBQuery1SER_CLIENTE: TIntegerField;
    IBQuery1SER_TECNICO: TIntegerField;
    IBQuery1SER_DTENTRADA: TDateField;
    IBQuery1SER_PRODUTO: TIBStringField;
    IBQuery1SER_MARCA: TIBStringField;
    IBQuery1SER_MODELO: TIBStringField;
    IBQuery1SER_LOCALIZACAO: TIBStringField;
    IBQuery1SER_DTPREVISAO: TDateField;
    IBQuery1SER_STATUS: TIBStringField;
    IBQuery1CLI_CODIGO: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    QRExcelFilter1: TQRExcelFilter;
    IBQuery1VEN_CODIGO: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1SER_DTTECNICO: TDateField;
    IBQuery1SER_DTSAIDA: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosQ02: TFormServicosQ02;
  Conta: Integer = 0;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormServicosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormServicosQ02);
  QRLabel9.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormServicosQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
end;

procedure TFormServicosQ02.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormServicosQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Ordens de Serviço: '+IntToStr(Conta);
end;

end.
