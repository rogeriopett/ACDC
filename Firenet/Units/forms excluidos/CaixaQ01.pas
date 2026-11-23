unit CaixaQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormCaixaQ01 = class(TForm)
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
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRDBText3: TQRDBText;
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
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRDBText14: TQRDBText;
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
    QRLabel18: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand3: TQRBand;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    IBQuery1CAI_VENDEDOR: TIntegerField;
    IBQuery1CAI_CONTA: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CON_NOME: TIBStringField;
    QRDBText17: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CAI_ORIGEM: TIBStringField;
    QRLabel26: TQRLabel;
    IBQuery1CAI_CLIENTE: TIntegerField;
    IBQuery1CAI_CLIENTENOME: TIBStringField;
    IBQuery1CAI_FORNECEDOR: TIntegerField;
    IBQuery1CAI_FORNECEDORNOME: TIBStringField;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel27: TQRLabel;
    IBQuery1CAI_SALDOANTERIOR: TFMTBCDField;
    IBQuery1CAI_SALDOPOSTERIOR: TFMTBCDField;
    IBQuery1CAI_VALOR: TFMTBCDField;
    IBQuery1VEN_SALDOATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  FormCaixaQ01: TFormCaixaQ01;
  Entradas, Saidas, SubEntradas, SubSaidas, TotalSaldoAtual: Currency;
  Contador: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCaixaQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCaixaQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Entradas:=0;
  Saidas:=0;
  SubEntradas:=0;
  SubSaidas:=0;
end;

procedure TFormCaixaQ01.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1CAI_ENTRADASAIDA.Value='E' then
  begin
    Entradas:=Entradas+IBQuery1CAI_VALOR.AsExtended;
    SubEntradas:=SubEntradas+IBQuery1CAI_VALOR.AsExtended;
//    QRDBText9.DataField:='CAI_CLIENTE';
//    QRDBText17.DataField:='CAI_CLIENTENOME';
  end else
  if IBQuery1CAI_ENTRADASAIDA.Value='S' then
  begin
    Saidas:=Saidas+IBQuery1CAI_VALOR.AsExtended;
    SubSaidas:=SubSaidas+IBQuery1CAI_VALOR.AsExtended;
//    QRDBText9.DataField:='CAI_FORNECEDOR';
//    QRDBText17.DataField:='CAI_FORNECEDORNOME';
  end;
  Contador:=Contador+1;
end;

procedure TFormCaixaQ01.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:='Nº Lançamentos: '+IntToStr(Contador);
  QRLabel15.Caption:=Format('%m',[Entradas]);
  QRLabel20.Caption:=Format('%m',[Saidas]);
  TotalSaldoAtual:=TotalSaldoAtual+IBQuery1VEN_SALDOATUAL.AsExtended;
end;

procedure TFormCaixaQ01.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Contador:=0;
  Entradas:=0;
  Saidas:=0;
end;

procedure TFormCaixaQ01.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:=Format('%m',[SubEntradas]);
  QRLabel23.Caption:=Format('%m',[SubSaidas]);
  QRLabel9.Caption:=Format('%m',[TotalSaldoAtual]);
end;

procedure TFormCaixaQ01.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Contador:=0;
  SubEntradas:=0;
  SubSaidas:=0;
  TotalSaldoAtual:=0;
end;

end.
