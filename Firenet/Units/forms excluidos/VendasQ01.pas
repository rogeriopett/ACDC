unit VendasQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls,
  IBCustomDataSet, IBDatabase, IBQuery, QRPDFFilt;

type
  TFormVendasQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRExcelFilter1: TQRExcelFilter;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VEN_NOME: TIBStringField;
    QRExcelFilter2: TQRExcelFilter;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1TOTAL: TFMTBCDField;
    IBQuery1QTDE: TLargeintField;
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ01: TFormVendasQ01;
  Valor, ValorTotal: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Valor:=Valor+IBQuery1TOTAL.AsExtended;
  ValorTotal:=ValorTotal+IBQuery1TOTAL.AsExtended;
end;

procedure TFormVendasQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total: '+Format('%m',[Valor]);
end;

procedure TFormVendasQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Valor:=0;
end;

procedure TFormVendasQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel7.Caption:='Subtotal: '+Format('%m',[ValorTotal]);
end;

procedure TFormVendasQ01.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ValorTotal:=0;
end;

procedure TFormVendasQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ01);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
end;

end.
