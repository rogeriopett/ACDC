unit ProdutosQ08;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ08 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    IBQuery1: TIBQuery;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBTransaction1: TIBTransaction;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    IBQuery1ALM_DESCRICAO: TIBStringField;
    IBQuery1PRQ_ALMOXARIFADO: TIntegerField;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup2: TQRGroup;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand4: TQRBand;
    IBQuery1PRO_FAMILIA: TIntegerField;
    QRLabel11: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMIN: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMAX: TFMTBCDField;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    IBQuery1PRQ_QUANTIDADE: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
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
  FormProdutosQ08: TFormProdutosQ08;
  Familia, Almox, Geral: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ08);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Familia:=0;
  Almox:=0;
  Geral:=0;
end;

procedure TFormProdutosQ08.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Familia:=Familia+1;
  Almox:=Almox+1;
  Geral:=Geral+1;
end;

procedure TFormProdutosQ08.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=IntToStr(Almox);
end;

procedure TFormProdutosQ08.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Familia:=0;
end;

procedure TFormProdutosQ08.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel13.Caption:=IntToStr(Familia);
end;

procedure TFormProdutosQ08.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Geral:=0;
end;

procedure TFormProdutosQ08.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(Geral);
end;

procedure TFormProdutosQ08.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Almox:=0;
end;

end.
