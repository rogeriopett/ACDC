unit VeiculosVendaQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QuickRpt, QRCtrls, ExtCtrls, QRExport, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosVendaQ04 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel6: TQRLabel;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRRTFFilter1: TQRRTFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1VEV_TIPO: TStringField;
    FDQuery1VEV_ANOFAB: TStringField;
    FDQuery1VEV_ANOMOD: TStringField;
    FDQuery1VEV_PLACA: TStringField;
    FDQuery1VEV_DESPESAS: TFMTBCDField;
    FDQuery1VEV_VALORCOMPRA: TFMTBCDField;
    FDQuery1CUSTO: TFMTBCDField;
    FDQuery1VEV_VALORVENDA: TFMTBCDField;
    FDQuery1LUCRO: TFMTBCDField;
    FDQuery1VEL_DESCRICAO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaQ04: TFormVeiculosVendaQ04;
  Compra, Despesa, Custo, Venda, Lucro: Currency;
  TotalCompra, TotalDespesa, TotalCusto, TotalVenda, TotalLucro: Currency;  
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosVendaQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosVendaQ04);
  QRLabel7.Caption:='Usuário: '+DM.UsuarioLogin;
  Compra:=0;
  Despesa:=0;
  Custo:=0;
  Venda:=0;
  Lucro:=0;
end;

procedure TFormVeiculosVendaQ04.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Compra:=Compra+FDQuery1VEV_VALORCOMPRA.AsExtended;
  Despesa:=Despesa+FDQuery1VEV_DESPESAS.AsExtended;
  Custo:=Custo+FDQuery1CUSTO.AsExtended;
  Venda:=Venda+FDQuery1VEV_VALORVENDA.AsExtended;
  Lucro:=Lucro+FDQuery1LUCRO.AsExtended;

  TotalCompra:=TotalCompra+FDQuery1VEV_VALORCOMPRA.AsExtended;
  TotalDespesa:=TotalDespesa+FDQuery1VEV_DESPESAS.AsExtended;
  TotalCusto:=TotalCusto+FDQuery1CUSTO.AsExtended;
  TotalVenda:=TotalVenda+FDQuery1VEV_VALORVENDA.AsExtended;
  TotalLucro:=TotalLucro+FDQuery1LUCRO.AsExtended;
end;

procedure TFormVeiculosVendaQ04.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel10.Caption:=Format('%m',[Lucro]);
  QRLabel17.Caption:=Format('%m',[Venda]);
  QRLabel18.Caption:=Format('%m',[Custo]);
  QRLabel19.Caption:=Format('%m',[Despesa]);
  QRLabel20.Caption:=Format('%m',[Compra]);
end;

procedure TFormVeiculosVendaQ04.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Compra:=0;
  Despesa:=0;
  Custo:=0;
  Venda:=0;
  Lucro:=0;
end;

procedure TFormVeiculosVendaQ04.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if FDQuery1VEV_TIPO.Value='P' then
  QRLabel16.Caption:='VEÍCULOS PRÓPRIOS' else
  if FDQuery1VEV_TIPO.Value='T' then
  QRLabel16.Caption:='VEÍCULOS DE TERCEIROS';
end;

end.
