unit HorasQ02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBQuery, IBX.IBDatabase, QuickRpt, QRCtrls, Vcl.ExtCtrls;

type
  TFormHorasQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel4: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1HOR_CODIGO: TIntegerField;
    IBQuery1HOR_DESCRICAO: TIBStringField;
    IBQuery1HOR_DTCADASTRO: TDateField;
    IBQuery1HOR_QUANTIDADE: TIBBCDField;
    IBQuery1HOR_SALDOANTERIOR: TIBBCDField;
    IBQuery1HOR_SALDOPOSTERIOR: TIBBCDField;
    IBQuery1HOR_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VEN_SALDOHORAS: TIBBCDField;
    IBQuery1HOR_TRANSACAO: TIBStringField;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel7: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorasQ02: TFormHorasQ02;
  Creditos, Debitos, SubCreditos, SubDebitos: Currency;

implementation
uses DataMod, FuncoesFirenet;

{$R *.dfm}

procedure TFormHorasQ02.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if IBQuery1HOR_TRANSACAO.Value='C' then
  begin
    Creditos:=Creditos+IBQuery1HOR_QUANTIDADE.Value;
    SubCreditos:=SubCreditos+IBQuery1HOR_QUANTIDADE.Value;
  end else
  if IBQuery1HOR_TRANSACAO.Value='D' then
  begin
    Debitos:=Debitos+IBQuery1HOR_QUANTIDADE.Value;
    SubDebitos:=SubDebitos+IBQuery1HOR_QUANTIDADE.Value;
  end;
end;

procedure TFormHorasQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormHorasQ02);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Creditos:=0;
  Debitos:=0;
  SubCreditos:=0;
  SubDebitos:=0;
end;

procedure TFormHorasQ02.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Creditos:=0;
  Debitos:=0;
end;

procedure TFormHorasQ02.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=FloatToStr(Debitos);
  QRLabel20.Caption:=FloatToStr(Creditos);
end;

procedure TFormHorasQ02.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubCreditos:=0;
  SubDebitos:=0;
end;

procedure TFormHorasQ02.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel21.Caption:=FloatToStr(SubDebitos);
  QRLabel22.Caption:=FloatToStr(SubCreditos);
end;

end.
