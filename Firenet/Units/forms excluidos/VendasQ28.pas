unit VendasQ28;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormVendasQ28 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel18: TQRLabel;
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
    IBQuery1VED_CODIGO: TIntegerField;
    IBQuery1VED_CLIENTE: TIntegerField;
    IBQuery1VED_DTEMISSAO: TDateField;
    IBQuery1VED_VENDEDOR: TIntegerField;
    IBQuery1CLI_NOME: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel10: TQRLabel;
    IBTransaction2: TIBTransaction;
    IBQuery2: TIBQuery;
    IBQuery2VEI_CODIGO: TIntegerField;
    IBQuery2VEI_PRODUTO: TIntegerField;
    IBQuery2VEI_DESCRICAO: TIBStringField;
    IBQuery2VEI_UNIDADE: TIBStringField;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    DataSource1: TDataSource;
    QRBand5: TQRBand;
    QRDBText17: TQRDBText;
    IBQuery1VEN_NOME: TIBStringField;
    QRLabel16: TQRLabel;
    QRDBText2: TQRDBText;
    IBQuery2VEI_QUANTIDADE: TFMTBCDField;
    IBQuery2VEI_VALORUNIT: TFMTBCDField;
    IBQuery2VEI_VALORTOTAL: TFMTBCDField;
    IBQuery1VED_TOTALITENS: TFMTBCDField;
    IBQuery1VED_DESCVALOR: TFMTBCDField;
    IBQuery1VED_VALORTOTAL: TFMTBCDField;
    QRLabel17: TQRLabel;
    IBQuery2VEI_COMPLEMENTO: TIBStringField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasQ28: TFormVendasQ28;
  Total, SubTotal: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVendasQ28.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1VED_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1VED_VALORTOTAL.AsExtended;
end;

procedure TFormVendasQ28.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVendasQ28);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormVendasQ28.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormVendasQ28.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[Total]);
end;

procedure TFormVendasQ28.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormVendasQ28.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormVendasQ28.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IBQuery2VEI_DESCRICAO.Value+' '+IBQuery2VEI_COMPLEMENTO.Value;
end;

end.
