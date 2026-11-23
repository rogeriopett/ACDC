unit ProdutosQ17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QRPDFFilt,
  QuickRpt, QRCtrls, ExtCtrls;

type
  TFormProdutosQ17 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
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
    QRLabel16: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
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
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBQuery1PRO_CODIGO: TIntegerField;
    IBQuery1PRO_GRUPO: TIntegerField;
    IBQuery1PRO_NOME: TIBStringField;
    IBQuery1GRU_DESCRICAO: TIBStringField;
    IBTransaction1: TIBTransaction;
    IBQuery1PRO_PRECOCUSTO: TFMTBCDField;
    IBQuery1PRO_PRECOCUSTOCOMP: TFMTBCDField;
    IBQuery1PRO_PRECOVENDA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ17: TFormProdutosQ17;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ17.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ17);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormProdutosQ17.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormProdutosQ17.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Produtos: '+IntToStr(Total);
end;

procedure TFormProdutosQ17.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormProdutosQ17.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total de Produtos: '+IntToStr(SubTotal);
end;

procedure TFormProdutosQ17.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

end.
