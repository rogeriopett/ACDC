unit ComprasQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, IBDatabase, DB, IBCustomDataSet, IBQuery,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormComprasQ03 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    QRExcelFilter2: TQRExcelFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1COI_PRODUTO: TIntegerField;
    IBQuery1COI_DESCRICAO: TIBStringField;
    IBQuery1COI_UNIDADE: TIBStringField;
    IBQuery1COI_COMPRA: TIntegerField;
    IBQuery1COM_FORNECEDOR: TIntegerField;
    IBQuery1COM_NOME: TIBStringField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    IBQuery1COM_DTENTRADA: TDateField;
    IBQuery1COI_QUANTIDADE: TFMTBCDField;
    IBQuery1COI_VALORUNIT: TFMTBCDField;
    IBQuery1COI_VALORTOTAL: TFMTBCDField;
    IBQuery1COM_VALORTOTAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
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
  FormComprasQ03: TFormComprasQ03;
  TotalItens, TotalNotas, SubTotalNotas: Currency;
  TotalQtde: Double;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormComprasQ03);
  QRLabel4.Caption:='Usuário: '+DataMod.UsuarioLogado;
  TotalItens:=0;
  TotalNotas:=0;
  SubTotalNotas:=0;
  TotalQtde:=0;
end;

procedure TFormComprasQ03.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=0;
  TotalNotas:=0;
  TotalQtde:=0;
end;

procedure TFormComprasQ03.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=FloatToStr(TotalQtde);
  QRLabel13.Caption:=Format('%m',[TotalItens]);
  QRLabel14.Caption:=Format('%m',[TotalNotas]);
end;

procedure TFormComprasQ03.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=0;
  TotalQtde:=0;
  SubTotalNotas:=0;
end;

procedure TFormComprasQ03.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel18.Caption:=Format('%m',[SubTotalNotas]);
end;

procedure TFormComprasQ03.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=TotalItens+IBQuery1COI_VALORTOTAL.AsExtended;
  TotalNotas:=TotalNotas+IBQuery1COM_VALORTOTAL.AsExtended;
  SubTotalNotas:=SubTotalNotas+IBQuery1COM_VALORTOTAL.AsExtended;
  TotalQtde:=TotalQtde+IBQuery1COI_QUANTIDADE.AsExtended;
end;

end.
