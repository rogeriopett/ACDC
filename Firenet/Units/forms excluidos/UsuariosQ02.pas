unit UsuariosQ02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, QRExport, IBQuery, IBDatabase, Qrctrls, QuickRpt,
  ExtCtrls, QRPDFFilt;

type
  TFormUsuariosQ02 = class(TForm)
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1LOG_CODIGO: TIntegerField;
    IBQuery1LOG_USUARIO: TIBStringField;
    IBQuery1LOG_DATA: TDateField;
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    IBQuery1LOG_NOME: TIBStringField;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    IBQuery1LOG_TEMPO: TIntegerField;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosQ02: TFormUsuariosQ02;
  Conta, ContaAcessos: Integer;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.DFM}

procedure TFormUsuariosQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+IBQuery1LOG_TEMPO.Value;
  ContaAcessos:=ContaAcessos+1;
end;

procedure TFormUsuariosQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Tempo Total: '+MinToHour(Conta);
  QRLabel9.Caption:='Acessos: '+IntToStr(ContaAcessos);
end;

procedure TFormUsuariosQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
  ContaAcessos:=0;
end;

procedure TFormUsuariosQ02.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=MinToHour(IBQuery1LOG_TEMPO.Value);
end;

procedure TFormUsuariosQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormUsuariosQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
end;

end.
