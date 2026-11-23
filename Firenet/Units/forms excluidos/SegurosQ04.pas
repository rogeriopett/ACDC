unit SegurosQ04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormSegurosQ04 = class(TForm)
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
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
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
    IBQuery1SEG_CODIGO: TIntegerField;
    IBQuery1SEG_CLIENTE: TIntegerField;
    IBQuery1SEG_DTCADASTRO: TDateField;
    IBQuery1SEG_DTEMISSAO: TDateField;
    IBQuery1SEG_DTINICIO: TDateField;
    IBQuery1SEG_DTTERMINO: TDateField;
    IBQuery1SEG_SEGURADORA: TIntegerField;
    IBQuery1SEG_STATUS: TIBStringField;
    IBQuery1SEG_VALORTOTAL: TFMTBCDField;
    IBQuery1SEG_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1FOR_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    procedure FormCreate(Sender: TObject);
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
  FormSegurosQ04: TFormSegurosQ04;
  Total: Currency;
  Qtde: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormSegurosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormSegurosQ04);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Qtde:=0;
  Total:=0;
end;

procedure TFormSegurosQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Qtde:=0;
  Total:=0;
end;

procedure TFormSegurosQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(Qtde);
  QRLabel19.Caption:=Format('%m',[Total]);
end;

procedure TFormSegurosQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1SEG_VALORTOTAL.AsExtended;
  Qtde:=Qtde+1;
end;

end.
