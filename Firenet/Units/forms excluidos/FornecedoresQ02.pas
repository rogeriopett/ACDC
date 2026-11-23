unit FornecedoresQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, IBCustomDataSet, IBDatabase, IBQuery, QRExport, QRPDFFilt,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormFornecedoresQ02 = class(TForm)
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
    IBTransaction1: TIBTransaction;
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
  FormFornecedoresQ02: TFormFornecedoresQ02;
  Total, SubTotal: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormFornecedoresQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormFornecedoresQ02);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
end;

procedure TFormFornecedoresQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
end;

procedure TFormFornecedoresQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:='Total de Fornecedores: '+IntToStr(Total);
end;

procedure TFormFornecedoresQ02.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  SubTotal:=0;
end;

procedure TFormFornecedoresQ02.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:='Total de Fornecedores: '+IntToStr(SubTotal);
end;

procedure TFormFornecedoresQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+1;
  SubTotal:=SubTotal+1;
end;

end.
