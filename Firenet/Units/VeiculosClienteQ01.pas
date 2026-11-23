unit VeiculosClienteQ01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QuickRpt, QRCtrls, ExtCtrls, QRExport, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormVeiculosClienteQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRGroup1: TQRGroup;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVeiculosClienteQ01: TFormVeiculosClienteQ01;
  Conta: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormVeiculosClienteQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormVeiculosClienteQ01);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  Conta:=0;
end;

procedure TFormVeiculosClienteQ01.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel4.Caption:='Total de Veículos: '+IntToStr(Conta);
end;

procedure TFormVeiculosClienteQ01.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  Conta:=0;
end;

procedure TFormVeiculosClienteQ01.DetailBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  Conta:=Conta+1;
end;

end.
