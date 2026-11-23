unit ProdutosQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase, QRCtrls,
  QuickRpt, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
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
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1PRO_TIPO: TIBStringField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_FAMILIA: TIntegerField;
    IBQuery1PRO_UNIDADE: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBQuery1FAM_DESCRICAO: TIBStringField;
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
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    IBQuery1PRO_PRECO1: TFMTBCDField;
    IBQuery1PRO_PRECO2: TFMTBCDField;
    IBQuery1PRO_PRECO3: TFMTBCDField;
    IBQuery1PRO_PRECO4: TFMTBCDField;
    IBQuery1PRO_PRECO5: TFMTBCDField;
    IBQuery1PRO_PRECO6: TFMTBCDField;
    IBQuery1PRO_ESTOQUEATUAL: TFMTBCDField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ04: TFormProdutosQ04;
  Conta, Total: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ04);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Conta:=0;
  Total:=0;
end;

procedure TFormProdutosQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
  Total:=Total+1;
end;

procedure TFormProdutosQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Produtos: '+IntToStr(Conta);
end;

procedure TFormProdutosQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormProdutosQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total de Produtos: '+IntToStr(Total);
end;

procedure TFormProdutosQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
  Total:=0;
end;

end.
