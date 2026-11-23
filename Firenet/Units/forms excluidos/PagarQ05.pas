unit PagarQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt;

type
  TFormPagarQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText9: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRBand5: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1PAGREC: TIBStringField;
    IBQuery1AGR_CODIGO: TIntegerField;
    IBQuery1AGR_DESCRICAO: TIBStringField;
    IBQuery1CODIGO: TIntegerField;
    IBQuery1DESCRICAO: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VALOR: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  FormPagarQ05: TFormPagarQ05;
  Total, SubTotal, GrandTotalPagar, GrandTotalReceber: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormPagarQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormPagarQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
end;

procedure TFormPagarQ05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //QRLabel3.Caption:='Total '+IBQuery1AGR_DESCRICAO.Value;
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormPagarQ05.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormPagarQ05.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if IBQuery1PAGREC.Value='CONTAS A PAGAR  ' then //os dois espaços no final são para igualar o tamanho da string com a maior.
  begin
    QRLabel5.Caption:='TOTAL CONTAS A PAGAR:';
    GrandTotalPagar:=SubTotal;
  end else
  if IBQuery1PAGREC.Value='CONTAS A RECEBER' then
  begin
    QRLabel5.Caption:='TOTAL CONTAS A RECEBER:';
    GrandTotalReceber:=SubTotal;
  end;
  QRLabel10.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormPagarQ05.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormPagarQ05.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  Total:=Total+IBQuery1VALOR.AsExtended;
  SubTotal:=SubTotal+IBQuery1VALOR.AsExtended;
end;

procedure TFormPagarQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=Format('%m',[GrandTotalReceber]);
  QRLabel20.Caption:=Format('%m',[GrandTotalPagar]);
  QRLabel21.Caption:=Format('%m',[GrandTotalReceber-GrandTotalPagar]);
end;

procedure TFormPagarQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  GrandTotalPagar:=0;
  GrandTotalReceber:=0;
end;

end.
