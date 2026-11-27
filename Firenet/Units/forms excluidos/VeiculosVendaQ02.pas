unit VeiculosVendaQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QuickRpt, QRCtrls, ExtCtrls, QRExport, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosVendaQ02 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
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
    FDQuery1VEV_VENDEDOR: TIntegerField;
    FDQuery1VEV_ANOFAB: TStringField;
    FDQuery1VEV_ANOMOD: TStringField;
    FDQuery1VEV_PLACA: TStringField;
    FDQuery1VEV_DTVENDA: TDateField;
    FDQuery1VEV_VALORVENDIDO: TFMTBCDField;
    FDQuery1VEL_DESCRICAO: TStringField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery1LUCRO: TFMTBCDField;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaQ02: TFormVeiculosVendaQ02;
  Valor: Currency;
  Conta: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosVendaQ02.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel9.Caption:=Format('%m',[Valor]);
  QRLabel4.Caption:='Total de Veículos: '+IntToStr(Conta);
end;

procedure TFormVeiculosVendaQ02.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Valor:=0;
  Conta:=0;
end;

procedure TFormVeiculosVendaQ02.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Valor:=Valor+FDQuery1LUCRO.AsExtended;
  Conta:=Conta+1;
end;

procedure TFormVeiculosVendaQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosVendaQ02);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
end;

end.
