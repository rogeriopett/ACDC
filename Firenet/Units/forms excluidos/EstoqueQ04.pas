unit EstoqueQ04;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, IBX.IBDatabase,
  Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormEstoqueQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
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
    IBQuery1EST_CLIENTE: TIntegerField;
    IBQuery1EST_CODIGO: TIntegerField;
    IBQuery1EST_DATA: TDateField;
    IBQuery1EST_NUMDOCTO: TIBStringField;
    IBQuery1EST_PRODUTO: TIntegerField;
    IBQuery1EST_TRANSACAO: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    IBQuery1PRO_FAMILIA: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1EST_QUANTIDADE: TFMTBCDField;
    IBQuery1EST_VALORUNIT: TFMTBCDField;
    IBQuery1EST_ESTOQUEANTERIOR: TFMTBCDField;
    IBQuery1EST_ESTOQUEPOSTERIOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueQ04: TFormEstoqueQ04;
  QtdeEntrada, QtdeSaida: Extended;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormEstoqueQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormEstoqueQ04);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormEstoqueQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QtdeEntrada:=0;
  QtdeSaida:=0;
end;

procedure TFormEstoqueQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Quantidade Entrada: '+FloatToStr(QtdeEntrada);
  QRLabel16.Caption:='Quantidade Saída: '+FloatToStr(QtdeSaida);
end;

procedure TFormEstoqueQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  if IBQuery1EST_TRANSACAO.Value='E' then
  QtdeEntrada:=QtdeEntrada+IBQuery1EST_QUANTIDADE.AsExtended else
  if IBQuery1EST_TRANSACAO.Value='S' then
  QtdeSaida:=QtdeSaida+IBQuery1EST_QUANTIDADE.AsExtended;
end;

end.
