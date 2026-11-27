unit OdontogramasOpcoesQ01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRPDFFilt, QRExport, Data.DB,
  QRCtrls, QuickRpt, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormOdontogramasOpcoesQ01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRPDFFilter1: TQRPDFFilter;
    QRShape1: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOdontogramasOpcoesQ01: TFormOdontogramasOpcoesQ01;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormOdontogramasOpcoesQ01.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  QRShape1.Brush.Color:=TColor(FDQuery1.FieldByName('ODP_COR').AsInteger);
  QRShape1.Brush.Style:=TBrushStyle(StrToInt(StrToBrushStyle2(FDQuery1.FieldByName('ODP_ESTILO').AsString)));
end;

procedure TFormOdontogramasOpcoesQ01.FormCreate(Sender: TObject);
begin
  LogoTipo(FormOdontogramasOpcoesQ01);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
end;

end.
