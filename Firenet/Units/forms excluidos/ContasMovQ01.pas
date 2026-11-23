unit ContasMovQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, IBDatabase, DB, IBCustomDataSet,
  IBQuery, QRExport, QRPDFFilt;

type
  TFormContasMovQ01 = class(TForm)
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    IBQuery1CMO_CODIGO: TIntegerField;
    IBQuery1CMO_CONTA: TIntegerField;
    IBQuery1CMO_DTMOVIMENTO: TDateField;
    IBQuery1CMO_TIPODOCTO: TIBStringField;
    IBQuery1CMO_NUMDOCTO: TIBStringField;
    IBQuery1CMO_ENTRADASAIDA: TIBStringField;
    IBQuery1CMO_DESCRICAO: TIBStringField;
    IBQuery1CON_NOME: TIBStringField;
    QRLabel17: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CMO_SALDOANTERIOR: TFMTBCDField;
    IBQuery1CMO_SALDOPOSTERIOR: TFMTBCDField;
    IBQuery1CMO_VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasMovQ01: TFormContasMovQ01;
  Entradas, Saidas: Currency;
  Movim: Integer; 
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormContasMovQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormContasMovQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
  Movim:=0;
end;

procedure TFormContasMovQ01.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1CMO_ENTRADASAIDA.Value='E' then
  Entradas:=Entradas+IBQuery1CMO_VALOR.AsExtended else
  if IBQuery1CMO_ENTRADASAIDA.Value='S' then
  Saidas:=Saidas+IBQuery1CMO_VALOR.AsExtended;

  Movim:=Movim+1;
end;

procedure TFormContasMovQ01.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=IntToStr(Movim);
  QRLabel20.Caption:=Format('%m',[Entradas]);
  QRLabel21.Caption:=Format('%m',[Saidas]);
end;

procedure TFormContasMovQ01.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Entradas:=0;
  Saidas:=0;
  Movim:=0;
end;

procedure TFormContasMovQ01.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //localiza a conta para mostrar o saldo atual.
  DM.TBContas.Close;
  DM.TBContas.ParamByName('codigo').AsInteger:=IBQuery1CMO_CONTA.Value;
  DM.TBContas.Open;
  QRLabel22.Caption:=Format('%m',[DM.TBContasCON_SALDO.AsExtended]);
end;

end.
