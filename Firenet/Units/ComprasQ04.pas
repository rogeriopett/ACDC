unit ComprasQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBDatabase, DB, IBCustomDataSet, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormComprasQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel18: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRExcelFilter2: TQRExcelFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    DetailBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery2COI_PRODUTO: TIntegerField;
    IBQuery2COI_DESCRICAO: TIBStringField;
    IBQuery2COI_UNIDADE: TIBStringField;
    QRBand5: TQRBand;
    IBQuery1COM_CODIGO: TIntegerField;
    IBQuery1COM_FORNECEDOR: TIntegerField;
    IBQuery1COM_NOME: TIBStringField;
    IBQuery1COM_CFOP: TIntegerField;
    IBQuery1COM_CFOPDESC: TIBStringField;
    IBQuery1COM_DTCADASTRO: TDateField;
    IBQuery1COM_VALORTOTAL: TFMTBCDField;
    IBQuery1COM_CONDICAO: TIntegerField;
    IBQuery1COM_STATUS: TIBStringField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    IBQuery2COI_QUANTIDADE: TFMTBCDField;
    IBQuery2COI_VALORTOTAL: TFMTBCDField;
    IBQuery2COI_VALORUNIT: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
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
  FormComprasQ04: TFormComprasQ04;
  Total, SubTotal: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasQ04.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1COM_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1COM_VALORTOTAL.AsExtended;

end;

procedure TFormComprasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormComprasQ04);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormComprasQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormComprasQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=Format('%m',[Total]);
end;

procedure TFormComprasQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
end;

procedure TFormComprasQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[SubTotal]);
end;

end.
