unit VendasQ24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ24 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
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
    QRLabel11: TQRLabel;
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
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_NOME: TIBStringField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_EXPEDIDOPOR: TIntegerField;
    IBQuery1VEN_NOME1: TIBStringField;
    IBQuery1VED_CODIGO: TIntegerField;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1VED_FRETE: TIBStringField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_DESCPORC: TFMTBCDField;
    IBQuery1VED_TRANSPNOME: TIBStringField;
    IBQuery1VED_TOTALITENS: TFMTBCDField;
    IBQuery1VED_VALORFRETE: TFMTBCDField;
    QRLabel10: TQRLabel;
    QRDBText2: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ24: TFormVendasQ24;
  TotalFrete, TotalItens, TotalValor: Currency;
  SubFrete, SubItens, SubValor: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ24.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ24);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
end;

procedure TFormVendasQ24.QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  TotalFrete:=0;
  TotalItens:=0;
  TotalValor:=0;
end;

procedure TFormVendasQ24.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[TotalFrete]);
  QRLabel16.Caption:=Format('%m',[TotalItens]);
  QRLabel13.Caption:=Format('%m',[TotalValor]);
end;

procedure TFormVendasQ24.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  SubFrete:=0;
  Subitens:=0;
  SubValor:=0;
end;

procedure TFormVendasQ24.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel19.Caption:=Format('%m',[SubFrete]);
  QRLabel20.Caption:=Format('%m',[SubItens]);
  QRLabel21.Caption:=Format('%m',[SubValor]);
end;

procedure TFormVendasQ24.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFrete:=TotalFrete+IBQuery1VED_VALORFRETE.AsExtended;
  TotalItens:=TotalItens+IBQuery1VED_TOTALITENS.AsExtended;
  TotalValor:=TotalValor+IBQuery1VED_VALORTOTAL.AsExtended;
  SubFrete:=SubFrete+IBQuery1VED_VALORFRETE.AsExtended;
  SubItens:=SubItens+IBQuery1VED_TOTALITENS.AsExtended;
  SubValor:=SubValor+IBQuery1VED_VALORTOTAL.AsExtended;
end;

end.
