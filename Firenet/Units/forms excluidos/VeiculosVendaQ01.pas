unit VeiculosVendaQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls, QRExport, QRPDFFilt,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormVeiculosVendaQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel16: TQRLabel;
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
    FDQuery1VEV_KM: TIntegerField;
    FDQuery1VEV_COR: TStringField;
    FDQuery1VEV_COMBUSTIVEL: TStringField;
    FDQuery1VEV_PLACA: TStringField;
    FDQuery1VEV_DTENTRADA: TDateField;
    FDQuery1VEV_VALORVENDA: TFMTBCDField;
    FDQuery1VEV_OPCIONAIS: TMemoField;
    FDQuery1VEL_DESCRICAO: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosVendaQ01: TFormVeiculosVendaQ01;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosVendaQ01.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var S: String;
begin
  S:=FDQuery1VEV_OPCIONAIS.Value;
  S:=RemoveCR(S,' - ');
  QRLabel5.Caption:=S;
end;

procedure TFormVeiculosVendaQ01.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  QRLabel5.Caption:='';
end;

procedure TFormVeiculosVendaQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosVendaQ01);
  QRLabel7.Caption:='Usuário: '+DM.UsuarioLogin;
end;

procedure TFormVeiculosVendaQ01.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  if FDQuery1VEV_TIPO.Value='P' then
  QRLabel16.Caption:='VEÍCULOS PRÓPRIOS' else
  if FDQuery1VEV_TIPO.Value='T' then
  QRLabel16.Caption:='VEÍCULOS DE TERCEIROS';
end;

end.
