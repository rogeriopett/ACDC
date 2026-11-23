unit CaixaQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, QRExport, IBDatabase, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt;

type
  TFormCaixaQ03 = class(TForm)
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
    QRDBText18: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText17: TQRDBText;
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
    QRSysData2: TQRSysData;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel16: TQRLabel;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1: TIBQuery;
    IBQuery1CAI_CODIGO: TIntegerField;
    IBQuery1CAI_DATA: TDateField;
    IBQuery1CAI_TIPODOCTO: TIBStringField;
    IBQuery1CAI_NUMDOCTO: TIBStringField;
    IBQuery1CAI_DESCRICAO: TIBStringField;
    IBQuery1CAI_NUMCHEQUE: TIBStringField;
    IBQuery1CAI_ENTRADASAIDA: TIBStringField;
    IBQuery1CAI_DTCADASTRO: TDateField;
    IBQuery1CAI_DTATUALIZACAO: TDateField;
    IBQuery1CAI_USUARIO: TIBStringField;
    IBQuery1CAI_VENDEDOR: TIntegerField;
    IBQuery1CAI_CONTA: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CON_NOME: TIBStringField;
    QRGroup2: TQRGroup;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CAI_ORIGEM: TIBStringField;
    IBQuery1CAI_SALDOANTERIOR: TFMTBCDField;
    IBQuery1CAI_SALDOPOSTERIOR: TFMTBCDField;
    IBQuery1CAI_VALOR: TFMTBCDField;
    IBQuery1VEN_SALDOATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaQ03: TFormCaixaQ03;
  Entradas, Saidas, VenEntradas, VenSaidas, SubEntradas, SubSaidas, TotalSaldoAtual: Currency;
  Contador, VenContador: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ03);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
  VenEntradas:=0;
  VenSaidas:=0;
  SubEntradas:=0;
  SubSaidas:=0;
end;

procedure TFormCaixaQ03.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1CAI_ENTRADASAIDA.Value='E' then
  begin
    Entradas:=Entradas+IBQuery1CAI_VALOR.AsExtended;
    VenEntradas:=VenEntradas+IBQuery1CAI_VALOR.AsExtended;
    SubEntradas:=SubEntradas+IBQuery1CAI_VALOR.AsExtended;
  end else
  if IBQuery1CAI_ENTRADASAIDA.Value='S' then
  begin
    Saidas:=Saidas+IBQuery1CAI_VALOR.AsExtended;
    VenSaidas:=VenSaidas+IBQuery1CAI_VALOR.AsExtended;
    SubSaidas:=SubSaidas+IBQuery1CAI_VALOR.AsExtended;
  end;
  Contador:=Contador+1;
  VenContador:=VenContador+1;
end;

procedure TFormCaixaQ03.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel31.Caption:='Nº Movimentações: '+IntToStr(Contador);
  QRLabel27.Caption:=Format('%m',[Entradas]);
  QRLabel29.Caption:=Format('%m',[Saidas]);
end;

procedure TFormCaixaQ03.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Entradas:=0;
  Saidas:=0;
  Contador:=0;
end;

procedure TFormCaixaQ03.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:='Nº Movimentações: '+IntToStr(VenContador);
  QRLabel15.Caption:=Format('%m',[VenEntradas]);
  QRLabel20.Caption:=Format('%m',[VenSaidas]);
  TotalSaldoAtual:=TotalSaldoAtual+IBQuery1VEN_SALDOATUAL.AsExtended;
end;

procedure TFormCaixaQ03.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  VenEntradas:=0;
  VenSaidas:=0;
  VenContador:=0;
end;

procedure TFormCaixaQ03.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:=Format('%m',[SubEntradas]);
  QRLabel23.Caption:=Format('%m',[SubSaidas]);
  QRLabel9.Caption:=Format('%m',[TotalSaldoAtual]);
end;

procedure TFormCaixaQ03.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubEntradas:=0;
  SubSaidas:=0;
  TotalSaldoAtual:=0;
end;

end.
