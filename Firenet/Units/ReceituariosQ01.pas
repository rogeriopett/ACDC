unit ReceituariosQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB, QRCtrls, QuickRpt,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormReceituariosQ01 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape33: TQRShape;
    QRLabel31: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery1RCT_CLIENTE: TIntegerField;
    FDQuery1RCT_DIA01: TStringField;
    FDQuery1RCT_DIA02: TStringField;
    FDQuery1RCT_DIA03: TStringField;
    FDQuery1RCT_DIA04: TStringField;
    FDQuery1RCT_DIA05: TStringField;
    FDQuery1RCT_DIA06: TStringField;
    FDQuery1RCT_DIA07: TStringField;
    FDQuery1RCT_DIA08: TStringField;
    FDQuery1RCT_DIA09: TStringField;
    FDQuery1RCT_DIA10: TStringField;
    FDQuery1RCT_DIA11: TStringField;
    FDQuery1RCT_DIA12: TStringField;
    FDQuery1RCT_DIA13: TStringField;
    FDQuery1RCT_DIA14: TStringField;
    FDQuery1RCT_DIA15: TStringField;
    FDQuery1RCT_DIA16: TStringField;
    FDQuery1RCT_DIA17: TStringField;
    FDQuery1RCT_DIA18: TStringField;
    FDQuery1RCT_DIA19: TStringField;
    FDQuery1RCT_DIA20: TStringField;
    FDQuery1RCT_DIA21: TStringField;
    FDQuery1RCT_DIA22: TStringField;
    FDQuery1RCT_DIA23: TStringField;
    FDQuery1RCT_DIA24: TStringField;
    FDQuery1RCT_DIA25: TStringField;
    FDQuery1RCT_DIA26: TStringField;
    FDQuery1RCT_DIA27: TStringField;
    FDQuery1RCT_DIA28: TStringField;
    FDQuery1RCT_DIA29: TStringField;
    FDQuery1RCT_DIA30: TStringField;
    FDQuery1RCT_DIA31: TStringField;
    FDQuery1RCT_DOSAGEM: TStringField;
    FDQuery1RCT_MEDICAMENTO: TIntegerField;
    FDQuery1RCT_ORDEM: TIntegerField;
    FDQuery1CLI_CONTATO: TStringField;
    FDQuery1CLI_FONE1: TStringField;
    FDQuery1CLI_FONE2: TStringField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1CLI_DTNASC: TDateField;
    FDQuery1MTO_NOME: TStringField;
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceituariosQ01: TFormReceituariosQ01;
  TotalMedicamentos: Integer;

implementation
uses DataMod, FuncoesFirenet, DateUtils;
{$R *.dfm}

procedure TFormReceituariosQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormReceituariosQ01);
  QRLabel4.Caption:='Usuario: '+DM.UsuarioLogin;
  TotalMedicamentos:=0;
end;

procedure TFormReceituariosQ01.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalMedicamentos:=0;
end;

procedure TFormReceituariosQ01.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:='Total Medicamentos: '+IntToStr(TotalMedicamentos);
end;

procedure TFormReceituariosQ01.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel12.Caption:=FDQuery1CLI_FONE1.Value+' - '+FDQuery1CLI_FONE2.Value;
  QRLabel10.Caption:=DateToStr(FDQuery1CLI_DTNASC.Value)+' - '+IntToStr(YearsBetween(Date,FDQuery1CLI_DTNASC.Value))+' anos';
end;

procedure TFormReceituariosQ01.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalMedicamentos:=TotalMedicamentos+1;
end;

end.
