unit ProdutosQ13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBQuery, IBDatabase, QRExport, QuickRpt,
  QRCtrls, ExtCtrls, QRPDFFilt;

type
  TFormProdutosQ13 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    QRLabel1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProdutosQ13: TFormProdutosQ13;
  Conta: Integer;
  Qtde: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProdutosQ13.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProdutosQ13);
  QRLabel8.Caption:='Usuário: '+UsuarioLogado;
  Conta:=0;
  Qtde:=0;
end;

procedure TFormProdutosQ13.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=Conta+1;
  Qtde:=Qtde+IBQuery1.FieldByName('PRC_QUANTIDADE').AsFloat;
end;

procedure TFormProdutosQ13.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption:='Total de Produtos: '+IntToStr(Conta);
  QRLabel1.Caption:=FloatToStr(Qtde);
end;

procedure TFormProdutosQ13.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
  Qtde:=0;
end;

end.
