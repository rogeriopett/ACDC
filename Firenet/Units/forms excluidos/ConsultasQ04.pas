unit ConsultasQ04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormConsultasQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBQuery1COS_CODIGO: TIntegerField;
    IBQuery1COS_CLIENTE: TIntegerField;
    IBQuery1COS_MEDICO: TIntegerField;
    IBQuery1COS_SOLICITANTE: TIntegerField;
    IBQuery1COS_VALORTOTAL: TFMTBCDField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_NOMESOLICITANTE: TIBStringField;
    IBQuery1COV_DESCRICAO: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1COS_CONVENIO: TIntegerField;
    IBQuery1COS_STATUS: TIBStringField;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    IBQuery1COS_DATAINICIO: TDateField;
    IBQuery1COS_HORAINICIO: TTimeField;
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
  FormConsultasQ04: TFormConsultasQ04;
  Total, SubTotal: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormConsultasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormConsultasQ04);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormConsultasQ04.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormConsultasQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=Format('%m',[Total]);
end;

procedure TFormConsultasQ04.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormConsultasQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormConsultasQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1COS_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1COS_VALORTOTAL.AsExtended;
end;

end.
