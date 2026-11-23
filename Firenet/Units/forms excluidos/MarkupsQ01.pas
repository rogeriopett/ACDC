unit MarkupsQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  IBX.IBDatabase, IBX.IBQuery, QRExport, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormMarkupsQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1MKI_DESCRICAO: TIBStringField;
    IBQuery1MKP_CODIGO: TIntegerField;
    IBQuery1MKP_DESCRICAO: TIBStringField;
    QRDBText1: TQRDBText;
    IBQuery1MKP_MARKUP: TFMTBCDField;
    IBQuery1MKI_PORCENTAGEM: TFMTBCDField;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRGroup2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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
  FormMarkupsQ01: TFormMarkupsQ01;
  TotalItens, TotalMarkups: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMarkupsQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMarkupsQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalItens:=0;
  TotalMarkups:=0;
end;

procedure TFormMarkupsQ01.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalItens:=0;
end;

procedure TFormMarkupsQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(TotalItens);
end;

procedure TFormMarkupsQ01.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalMarkups:=0;
end;

procedure TFormMarkupsQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=IntToStr(TotalMarkups);
end;

procedure TFormMarkupsQ01.QRGroup2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalMarkups:=TotalMarkups+1;
end;

procedure TFormMarkupsQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=TotalItens+1;
end;

end.
