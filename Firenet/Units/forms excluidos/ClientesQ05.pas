unit ClientesQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, QRExport, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormClientesQ05 = class(TForm)
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
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
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
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    IBQuery1CLI_CODIGO: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1CLI_ENDERECO: TIBStringField;
    IBQuery1CLI_BAIRRO: TIBStringField;
    IBQuery1CLI_CIDADE: TIBStringField;
    IBQuery1CLI_ESTADO: TIBStringField;
    IBQuery1CLI_CEP: TIBStringField;
    IBQuery1CLI_CNPJ: TIBStringField;
    IBQuery1CLI_CPF: TIBStringField;
    IBQuery1CLI_TIPOPESSOA: TIBStringField;
    IBQuery1CLI_FONE1: TIBStringField;
    IBQuery1VEN_CODIGO: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CLI_NUMERO: TIBStringField;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ05: TFormClientesQ05;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ05.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1CLI_TIPOPESSOA.Value='J' then
  QRLabel20.Caption:=IBQuery1CLI_CNPJ.Value else
  if IBQuery1CLI_TIPOPESSOA.Value='F' then
  QRLabel20.Caption:=IBQuery1CLI_CPF.Value;
end;

procedure TFormClientesQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormClientesQ05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Total);
end;

procedure TFormClientesQ05.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormClientesQ05.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormClientesQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

procedure TFormClientesQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

end.
