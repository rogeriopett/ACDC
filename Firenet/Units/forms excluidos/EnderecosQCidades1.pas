unit EnderecosQCidades1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QuickRpt, QRCtrls, ExtCtrls, IBQuery,
  QRExport, IBDatabase, QRPDFFilt;

type
  TFormEnderecosQCidades1 = class(TForm)
    IBQuery1: TIBQuery;
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
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRBand3: TQRBand;
    QRDBText7: TQRDBText;
    IBTransaction1: TIBTransaction;
    QRLabel8: TQRLabel;
    QRExcelFilter1: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
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
  FormEnderecosQCidades1: TFormEnderecosQCidades1;
  Conta: Integer = 0;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEnderecosQCidades1.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
end;

procedure TFormEnderecosQCidades1.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormEnderecosQCidades1.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Cidades: '+IntToStr(Conta);
end;

procedure TFormEnderecosQCidades1.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEnderecosQCidades1);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
