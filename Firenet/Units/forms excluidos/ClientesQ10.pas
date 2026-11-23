unit ClientesQ10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormClientesQ10 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel20: TQRLabel;
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
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
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
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IBQuery1CLI_CIDADECODIGO: TIntegerField;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CLI_NUMERO: TIBStringField;
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesQ10: TFormClientesQ10;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormClientesQ10.FormCreate(Sender: TObject);
begin
  LogoTipo(FormClientesQ10);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormClientesQ10.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0; //nao zera o subtotal.
end;

procedure TFormClientesQ10.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=IntToStr(Total);
end;

procedure TFormClientesQ10.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormClientesQ10.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel8.Caption:=IntToStr(SubTotal);
end;

procedure TFormClientesQ10.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormClientesQ10.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1CLI_TIPOPESSOA.Value='J' then
  QRLabel20.Caption:=IBQuery1CLI_CNPJ.Value else
  if IBQuery1CLI_TIPOPESSOA.Value='F' then
  QRLabel20.Caption:=IBQuery1CLI_CPF.Value;
end;

end.
