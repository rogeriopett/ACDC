unit ProdutosQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ05 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_FAMILIA: TIntegerField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRGroup1: TQRGroup;
    QRBand5: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    IBQuery1PRO_CODIGOFAB: TIBStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMAX: TFMTBCDField;
    IBQuery1PRO_ESTOQUEMIN: TFMTBCDField;
    IBQuery1PRO_PRECOCUSTO: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
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
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ05: TFormProdutosQ05;
  CustoFamilia, CustoGrupo, CustoGeral, CustoProduto: Currency;
  TotalFamilia, TotalGrupo, TotalGeral: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ05);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalFamilia:=0;
  TotalGrupo:=0;
  TotalGeral:=0;
  CustoFamilia:=0;
  CustoGrupo:=0;
  CustoGeral:=0;
  CustoProduto:=0;
end;

procedure TFormProdutosQ05.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalFamilia:=TotalFamilia+1;
  TotalGrupo:=TotalGrupo+1;
  TotalGeral:=TotalGeral+1;
end;

procedure TFormProdutosQ05.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel6.Caption:=IntToStr(TotalFamilia);
  QRLabel19.Caption:=Format('%m',[CustoFamilia]);
end;

procedure TFormProdutosQ05.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  CustoFamilia:=0;
  TotalFamilia:=0;
end;

procedure TFormProdutosQ05.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(TotalGeral);
  QRLabel12.Caption:=Format('%m',[CustoGeral]);
end;

procedure TFormProdutosQ05.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  CustoGrupo:=0;
  TotalGrupo:=0;
end;

procedure TFormProdutosQ05.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=IntToStr(TotalGrupo);
  QRLabel11.Caption:=Format('%m',[CustoGrupo]);
end;

procedure TFormProdutosQ05.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalGeral:=0;
  CustoGeral:=0;
end;

procedure TFormProdutosQ05.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  CustoProduto:=IBQuery1PRO_ESTOQUEATUAL.AsExtended*IBQuery1PRO_PRECOCUSTO.AsExtended;
  CustoFamilia:=CustoFamilia+CustoProduto;
  CustoGrupo:=CustoGrupo+CustoProduto;
  CustoGeral:=CustoGeral+CustoProduto;
  QRLabel8.Caption:=Format('%m',[CustoProduto]);
end;

end.
