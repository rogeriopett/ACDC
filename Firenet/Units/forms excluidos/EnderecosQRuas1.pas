unit EnderecosQRuas1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QuickRpt, QRCtrls, ExtCtrls, IBQuery,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormEnderecosQRuas1 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel7: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    IBQuery1: TIBQuery;
    IBQuery1RUA_CODIGO: TIntegerField;
    IBQuery1RUA_NOME: TIBStringField;
    IBQuery1RUA_CEP: TIBStringField;
    IBQuery1RUA_BAIRRO: TIntegerField;
    IBQuery1RUA_CIDADE: TIntegerField;
    IBQuery1RUA_ESTADO: TIntegerField;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IBQuery1BAI_CODIGO: TIntegerField;
    IBQuery1BAI_NOME: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosQRuas1: TFormEnderecosQRuas1;
  Conta: Integer = 0;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosQRuas1.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
end;

procedure TFormEnderecosQRuas1.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormEnderecosQRuas1.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Ruas: '+IntToStr(Conta);
end;

procedure TFormEnderecosQRuas1.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEnderecosQRuas1);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
