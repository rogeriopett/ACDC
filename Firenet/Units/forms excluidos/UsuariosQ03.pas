unit UsuariosQ03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRExport, Db, IBCustomDataSet, IBQuery, IBDatabase, Qrctrls, QuickRpt,
  ExtCtrls, QRPDFFilt;

type
  TFormUsuariosQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    SummaryBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText6: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1TOTALTEMPO: TLargeintField;
    IBQuery1LOG_USUARIO: TIBStringField;
    IBQuery1LOG_NOME: TIBStringField;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosQ03: TFormUsuariosQ03;
  Conta: Integer;
implementation
uses DataMod, FuncoesFirenet, Funcoes1;
{$R *.DFM}

procedure TFormUsuariosQ03.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=MinToHour(IBQuery1TOTALTEMPO.Value);
end;

procedure TFormUsuariosQ03.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+IBQuery1TOTALTEMPO.Value;
end;

procedure TFormUsuariosQ03.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:='Tempo Total: '+MinToHour(Conta);
end;

procedure TFormUsuariosQ03.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormUsuariosQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormUsuariosQ03);
  QRLabel7.Caption:='Usuário: '+UsuarioLogado;
end;

end.
