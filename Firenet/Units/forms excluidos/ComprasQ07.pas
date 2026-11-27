unit ComprasQ07;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRPDFFilt, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormComprasQ07 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    DataSource1: TDataSource;
    IBQuery1COM_CODIGO: TIntegerField;
    IBQuery1COM_FORNECEDOR: TIntegerField;
    IBQuery1COM_NOTADATA: TDateField;
    IBQuery1COM_NOTANUMERO: TIntegerField;
    IBQuery1COM_NOME: TIBStringField;
    IBQuery1COM_TOTALCOFINS: TFMTBCDField;
    IBQuery1COM_TOTALICMS: TFMTBCDField;
    IBQuery1COM_TOTALICMSST: TFMTBCDField;
    IBQuery1COM_TOTALIPI: TFMTBCDField;
    IBQuery1COM_TOTALPIS: TFMTBCDField;
    IBQuery1COM_VALORTOTAL: TFMTBCDField;
    IBQuery2COI_CFOP: TIntegerField;
    IBQuery2COI_DESCRICAO: TIBStringField;
    IBQuery2COI_PRODUTO: TIntegerField;
    IBQuery2COI_VALORCOFINS: TFMTBCDField;
    IBQuery2COI_VALORICMS: TFMTBCDField;
    IBQuery2COI_VALORICMSST: TFMTBCDField;
    IBQuery2COI_VALORIPI: TFMTBCDField;
    IBQuery2COI_VALORPIS: TFMTBCDField;
    IBQuery2COI_VALORTOTAL: TFMTBCDField;
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    TotalICMS, TotalICMSST, TotalIPI, TotalPIS, TotalCOFINS, TotalValor: Currency;
    Contador: Integer;
  public
    { Public declarations }
  end;

var
  FormComprasQ07: TFormComprasQ07;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormComprasQ07.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalICMS:=TotalICMS+IBQuery1COM_TOTALICMS.AsExtended;
  TotalICMSST:=TotalICMSST+IBQuery1COM_TOTALICMSST.AsExtended;
  TotalIPI:=TotalIPI+IBQuery1COM_TOTALIPI.AsExtended;
  TotalPIS:=TotalPIS+IBQuery1COM_TOTALPIS.AsExtended;
  TotalCOFINS:=TotalCOFINS+IBQuery1COM_TOTALCOFINS.AsExtended;
  TotalValor:=TotalValor+IBQuery1COM_VALORTOTAL.AsExtended;
  Inc(Contador);
end;

procedure TFormComprasQ07.FormCreate(Sender: TObject);
begin
  LogoTipo(FormComprasQ07);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalICMS:=0;
  TotalICMSST:=0;
  TotalIPI:=0;
  TotalPIS:=0;
  TotalCOFINS:=0;
  TotalValor:=0;
  Contador:=0;
end;

procedure TFormComprasQ07.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalICMS:=0;
  TotalICMSST:=0;
  TotalIPI:=0;
  TotalPIS:=0;
  TotalCOFINS:=0;
  TotalValor:=0;
  Contador:=0;
end;

procedure TFormComprasQ07.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel27.Caption:=Format('%m',[TotalICMS]);
  QRLabel5.Caption:=Format('%m',[TotalICMSST]);
  QRLabel7.Caption:=Format('%m',[TotalIPI]);
  QRLabel24.Caption:=Format('%m',[TotalPIS]);
  QRLabel25.Caption:=Format('%m',[TotalCOFINS]);
  QRLabel26.Caption:=Format('%m',[TotalValor]);
  QRLabel2.Caption:='Quantidade: '+Contador.ToString;
end;

end.
