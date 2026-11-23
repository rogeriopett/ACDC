unit NfeQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRExport, DB, IBCustomDataSet, IBQuery, IBDatabase,
  QRCtrls, QuickRpt, ExtCtrls;

type
  TFormNfeQ04 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    IBTransaction1: TIBTransaction;
    IBQuery1: TIBQuery;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    IBQuery1NFE_CODIGO: TIntegerField;
    IBQuery1NFE_CLIENTE: TIntegerField;
    IBQuery1NFE_CFOP: TIntegerField;
    IBQuery1NFE_CFOPDESC: TIBStringField;
    IBQuery1NFE_DTEMISSAO: TDateField;
    IBQuery1NFE_STATUS: TIBStringField;
    IBQuery1NFE_NOME: TIBStringField;
    IBQuery1NFE_CONDICAO: TIntegerField;
    IBQuery1CPG_DESCRICAO: TIBStringField;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand5: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    IBQuery1NFE_CHAVEACESSO: TIBStringField;
    QRLabel12: TQRLabel;
    IBQuery1CLI_NOME: TIBStringField;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    IBQuery1NFE_DESCVALOR: TFMTBCDField;
    IBQuery1NFE_VALORTOTAL: TFMTBCDField;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand5AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfeQ04: TFormNfeQ04;
  TotalCliente, TotalCFOP, SubTotal: Currency;
  TotalClienteDesc, TotalCFOPDesc, SubTotalDesc: Currency;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormNfeQ04.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCliente:=TotalCliente+IBQuery1NFE_VALORTOTAL.AsExtended;
  TotalCFOP:=TotalCFOP+IBQuery1NFE_VALORTOTAL.AsExtended;
  SubTotal:=SubTotal+IBQuery1NFE_VALORTOTAL.AsExtended;

  TotalClienteDesc:=TotalClienteDesc+IBQuery1NFE_DESCVALOR.AsExtended;
  TotalCFOPDesc:=TotalCFOPDesc+IBQuery1NFE_DESCVALOR.AsExtended;
  SubTotalDesc:=SubTotalDesc+IBQuery1NFE_DESCVALOR.AsExtended;
end;

procedure TFormNfeQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormNfeQ04);
  QRLabel4.Caption:='Usuário: '+UsuarioLogado;
  TotalCliente:=0;
  TotalCFOP:=0;
  SubTotal:=0;
  TotalClienteDesc:=0;
  TotalCFOPDesc:=0;
  SubTotalDesc:=0;
  ColumnHeaderBand1.Height:=0; //foi colocado um headerband para aparecer as colunas do primeiro registro do relatorio.
end;

procedure TFormNfeQ04.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCFOP:=0;
  TotalCFOPDesc:=0;
end;

procedure TFormNfeQ04.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel2.Caption:=Format('%m',[TotalCFOP]);
  QRLabel16.Caption:=Format('%m',[TotalCFOPDesc]);
end;

procedure TFormNfeQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCliente:=0;
  TotalCFOP:=0;
  SubTotal:=0;
  TotalClienteDesc:=0;
  TotalCFOPDesc:=0;
  SubTotalDesc:=0;
end;

procedure TFormNfeQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel5.Caption:=Format('%m',[SubTotal]);
  QRLabel17.Caption:=Format('%m',[SubTotalDesc]);
end;

procedure TFormNfeQ04.QRBand5AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalCliente:=0;
  TotalClienteDesc:=0;
end;

procedure TFormNfeQ04.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel11.Caption:=Format('%m',[TotalCliente]);
  QRLabel15.Caption:=Format('%m',[TotalClienteDesc]);
end;

end.
