unit ProdutosQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText9: TQRDBText;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRGroup1: TQRGroup;
    IBQuery1PRO_GRUPO: TIntegerField;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    IBQuery1PRO_DTCADASTRO: TDateField;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText10: TQRDBText;
    IBQuery1PRO_FORNECEDOR: TIntegerField;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    IBQuery1PRO_FAMILIA: TIntegerField;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    IBQuery1MAR_DESCRICAO: TIBStringField;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMIN: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMAX: TFMTBCDField;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ01: TFormProdutosQ01;
  TotalFam,TotalGru,SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ01);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  TotalFam:=0;
  TotalGru:=0;
  SubTotal:=0;
end;

procedure TFormProdutosQ01.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFam:=TotalFam+1;
  TotalGru:=TotalGru+1;
  SubTotal:=SubTotal+1;
end;

procedure TFormProdutosQ01.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(TotalFam);
end;

procedure TFormProdutosQ01.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalGru:=0;
end;

procedure TFormProdutosQ01.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(TotalGru);
end;

procedure TFormProdutosQ01.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFam:=0;
end;

procedure TFormProdutosQ01.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(SubTotal);
end;

procedure TFormProdutosQ01.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFam:=0;
  TotalGru:=0;
  SubTotal:=0;
end;

end.
