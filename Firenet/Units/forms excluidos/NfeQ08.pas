unit NfeQ08;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, QRExport, QRPDFFilt, QRCtrls, QuickRpt,
  Vcl.ExtCtrls;

type
  TFormNfeQ08 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
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
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
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
    IBQuery2: TIBQuery;
    IBTransaction2: TIBTransaction;
    IBQuery2NFI_CFOP: TIntegerField;
    IBQuery2NFI_DESCRICAO: TIBStringField;
    IBQuery2NFI_PRODUTO: TIntegerField;
    IBQuery2NFI_SEQUENCIA: TIntegerField;
    IBQuery2NFI_VALORCOFINS: TFMTBCDField;
    IBQuery2NFI_VALORICMS: TFMTBCDField;
    IBQuery2NFI_VALORICMSST: TFMTBCDField;
    IBQuery2NFI_VALORIPI: TFMTBCDField;
    IBQuery2NFI_VALORPIS: TFMTBCDField;
    IBQuery2NFI_VALORTOTAL: TFMTBCDField;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    DataSource1: TDataSource;
    IBQuery1NFE_CODIGO: TIntegerField;
    IBQuery1NFE_CLIENTE: TIntegerField;
    IBQuery1NFE_DTEMISSAO: TDateField;
    IBQuery1NFE_NOME: TIBStringField;
    IBQuery1NFE_TOTALCOFINS: TFMTBCDField;
    IBQuery1NFE_TOTALICMS: TFMTBCDField;
    IBQuery1NFE_TOTALICMSST: TFMTBCDField;
    IBQuery1NFE_TOTALIPI: TFMTBCDField;
    IBQuery1NFE_TOTALPIS: TFMTBCDField;
    IBQuery1NFE_VALORTOTAL: TFMTBCDField;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
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
    QRLabel34: TQRLabel;
    QRDBText20: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
    TotalICMS, TotalICMSST, TotalIPI, TotalPIS, TotalCOFINS, TotalValor: Currency;
    Contador: Integer;
  public
    { Public declarations }
  end;

var
  FormNfeQ08: TFormNfeQ08;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeQ08.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalICMS:=TotalICMS+IBQuery1NFE_TOTALICMS.AsExtended;
  TotalICMSST:=TotalICMSST+IBQuery1NFE_TOTALICMSST.AsExtended;
  TotalIPI:=TotalIPI+IBQuery1NFE_TOTALIPI.AsExtended;
  TotalPIS:=TotalPIS+IBQuery1NFE_TOTALPIS.AsExtended;
  TotalCOFINS:=TotalCOFINS+IBQuery1NFE_TOTALCOFINS.AsExtended;
  TotalValor:=TotalValor+IBQuery1NFE_VALORTOTAL.AsExtended;
  Inc(Contador);
end;

procedure TFormNfeQ08.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfeQ08);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalICMS:=0;
  TotalICMSST:=0;
  TotalIPI:=0;
  TotalPIS:=0;
  TotalCOFINS:=0;
  TotalValor:=0;
  Contador:=0;
end;

procedure TFormNfeQ08.QRBand2AfterPrint(Sender: TQRCustomBand;
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

procedure TFormNfeQ08.QRBand2BeforePrint(Sender: TQRCustomBand;
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
