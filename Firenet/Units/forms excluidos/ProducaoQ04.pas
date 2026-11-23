unit ProducaoQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormProducaoQ04 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData3: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel7: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRBand2: TQRBand;
    QRLabel14: TQRLabel;
    QRBand3: TQRBand;
    QRDBText8: TQRDBText;
    QRLabel9: TQRLabel;
    DataSource1: TDataSource;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRDBText1: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    DataSource3: TDataSource;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery3: TFDQuery;
    FDTransaction4: TFDTransaction;
    FDQuery4: TFDQuery;
    FDQuery1PDI_PRODUTO: TIntegerField;
    FDQuery1PRO_NOME: TStringField;
    FDQuery1TOTAL: TFMTBCDField;
    FDQuery2PRO_ESTOQUEATUAL: TFMTBCDField;
    FDQuery3PRC_PRODUTOCOMP: TIntegerField;
    FDQuery3PRO_NOME: TStringField;
    FDQuery3PRC_QUANTIDADE: TFMTBCDField;
    FDQuery4PRO_ESTOQUEATUAL: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
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
  FormProducaoQ04: TFormProducaoQ04;
  TotalItens: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormProducaoQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormProducaoQ04);
  QRLabel9.Caption:='Usuário: '+UsuarioLogin;
end;

procedure TFormProducaoQ04.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel15.Caption:=FloatToStr(FDQuery2PRO_ESTOQUEATUAL.AsExtended-FDQuery1TOTAL.AsExtended);
end;

procedure TFormProducaoQ04.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel3.Caption:=FloatToStr(FDQuery1TOTAL.AsExtended*FDQuery3PRC_QUANTIDADE.AsExtended);
end;

procedure TFormProducaoQ04.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=TotalItens+1;
end;

procedure TFormProducaoQ04.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:='Total de Itens: '+IntToStr(TotalItens);
end;

procedure TFormProducaoQ04.QRBand2AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalItens:=0;
end;

end.
