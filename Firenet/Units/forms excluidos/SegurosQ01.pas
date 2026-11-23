unit SegurosQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBDatabase, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormSegurosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1SEG_CODIGO: TIntegerField;
    IBQuery1SEG_CLIENTE: TIntegerField;
    IBQuery1SEG_DTEMISSAO: TDateField;
    IBQuery1SEG_SEGURADORA: TIntegerField;
    IBQuery1SEG_VALORTOTAL: TFMTBCDField;
    IBQuery1SEG_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1SEG_STATUS: TIBStringField;
    IBQuery1SEG_DTCADASTRO: TDateField;
    IBQuery1SEG_DTINICIO: TDateField;
    IBQuery1SEG_DTTERMINO: TDateField;
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
  FormSegurosQ01: TFormSegurosQ01;
  Total, SubTotal: Currency;
  Qtde, QtdeSub: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormSegurosQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  QtdeSub:=0;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormSegurosQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
end;

procedure TFormSegurosQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=IntToStr(Qtde);
  QRLabel18.Caption:=Format('%m',[Total]);
end;

procedure TFormSegurosQ01.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  QtdeSub:=0;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormSegurosQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(QtdeSub);
  QRLabel19.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormSegurosQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1SEG_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1SEG_VALORTOTAL.AsExtended;
  Qtde:=Qtde+1;
  QtdeSub:=QtdeSub+1;
end;

end.
