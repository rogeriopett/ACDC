unit CupomQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBCustomDataSet, QRPDFFilt,
  QRExport, IBX.IBQuery, IBX.IBDatabase, QRCtrls, QuickRpt, Vcl.ExtCtrls;

type
  TFormCupomQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel13: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1CUP_CCF: TIntegerField;
    IBQuery1CUP_CLIENTE: TIntegerField;
    IBQuery1CUP_CODIGO: TIntegerField;
    IBQuery1CUP_COO: TIntegerField;
    IBQuery1CUP_DTEMISSAO: TDateField;
    IBQuery1CUP_ECF: TIntegerField;
    IBQuery1CUP_STATUS: TIBStringField;
    IBQuery1CLI_NOME: TIBStringField;
    IBQuery1VEN_NOME: TIBStringField;
    IBQuery1CUP_VALORTOTAL: TIBBCDField;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    IBQuery1CUP_VENDEDOR: TIntegerField;
    QRDBText9: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    IBQuery1CUP_DESCVALOR: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCupomQ01: TFormCupomQ01;
  Total, TotalDesc, SubTotal, SubTotalDesc: Currency;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormCupomQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormCupomQ01);
  QRLabel4.Caption:='Usuario: '+UsuarioLogado;
  Total:=0;
  SubTotal:=0;
  TotalDesc:=0;
  SubTotalDesc:=0;
end;

procedure TFormCupomQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=0;
  TotalDesc:=0;
end;

procedure TFormCupomQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=Format('%m',[TotalDesc]);
  QRLabel13.Caption:=Format('%m',[Total]);
end;

procedure TFormCupomQ01.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  SubTotal:=0;
  SubTotalDesc:=0;
end;

procedure TFormCupomQ01.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=Format('%m',[SubTotalDesc]);
  QRLabel17.Caption:=Format('%m',[SubTotal]);
end;

procedure TFormCupomQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Total:=Total+IBQuery1CUP_VALORTOTAL.Value;
  TotalDesc:=TotalDesc+IBQuery1CUP_DESCVALOR.Value;
  SubTotal:=SubTotal+IBQuery1CUP_VALORTOTAL.Value;
  SubTotalDesc:=SubTotalDesc+IBQuery1CUP_DESCVALOR.Value;
end;

end.
