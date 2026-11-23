unit PontosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormPontosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
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
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    IBQuery1PTS_CODIGO: TIntegerField;
    IBQuery1PTS_DESCRICAO: TIBStringField;
    IBQuery1PTS_ENTRADASAIDA: TIBStringField;
    IBQuery1PTS_CLIENTE: TIntegerField;
    IBQuery1PTS_NUMDOCTO: TIBStringField;
    IBQuery1PTS_DTCADASTRO: TDateField;
    IBQuery1CLI_NOME: TIBStringField;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1PTS_VALOR: TFMTBCDField;
    IBQuery1PTS_COTACAO: TFMTBCDField;
    IBQuery1PTS_PONTOS: TFMTBCDField;
    IBQuery1PTS_SALDOANTERIOR: TFMTBCDField;
    IBQuery1PTS_SALDOPOSTERIOR: TFMTBCDField;
    IBQuery1CLI_PONTOS: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPontosQ01: TFormPontosQ01;
  EPontos, SPontos, EValor, SValor, Cotacao: Currency;
  Qtde: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPontosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPontosQ01);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  EPontos:=0;
  SPontos:=0;
  EValor:=0;
  SValor:=0;
  Cotacao:=0;
  Qtde:=0;
end;

procedure TFormPontosQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=FloatToStr(EPontos);
  QRLabel15.Caption:=FloatToStr(SPontos);
  QRLabel8.Caption:=Format('%m',[EValor]);
  QRLabel14.Caption:=Format('%m',[SValor]);
  QRLabel20.Caption:=Format('%m',[Cotacao/Qtde]);
end;

procedure TFormPontosQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  EPontos:=0;
  SPontos:=0;
  EValor:=0;
  SValor:=0;
  Qtde:=0;
  Cotacao:=0;
end;

procedure TFormPontosQ01.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Cotacao:=Cotacao+IBQuery1PTS_COTACAO.AsExtended;
  Qtde:=Qtde+1;
  if IBQuery1PTS_ENTRADASAIDA.Value='S' then
  begin
    SPontos:=SPontos+IBQuery1PTS_PONTOS.AsExtended;
    SValor:=SValor+IBQuery1PTS_VALOR.AsExtended;
  end else
  if IBQuery1PTS_ENTRADASAIDA.Value='E' then
  begin
    EPontos:=EPontos+IBQuery1PTS_PONTOS.AsExtended;
    EValor:=EValor+IBQuery1PTS_VALOR.AsExtended;
  end;
end;

end.
