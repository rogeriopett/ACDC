unit TurmasQ05;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormTurmasQ05 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
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
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    DataSource1: TDataSource;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasQ05: TFormTurmasQ05;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasQ05.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTurmasQ05);
  QRLabel8.Caption:='Usuario: '+DM.UsuarioLogin
end;

procedure TFormTurmasQ05.QRGroup1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var Dias: String;
begin
  Dias:='';
  if FDQuery1.FieldByName('TUR_DOMINGO').AsString='S' then Dias:=Dias+'DOM - ';
  if FDQuery1.FieldByName('TUR_SEGUNDA').AsString='S' then Dias:=Dias+'SEG - ';
  if FDQuery1.FieldByName('TUR_TERCA').AsString='S' then Dias:=Dias+'TER - ';
  if FDQuery1.FieldByName('TUR_QUARTA').AsString='S' then Dias:=Dias+'QUA - ';
  if FDQuery1.FieldByName('TUR_QUINTA').AsString='S' then Dias:=Dias+'QUI - ';
  if FDQuery1.FieldByName('TUR_SEXTA').AsString='S' then Dias:=Dias+'SEX - ';
  if FDQuery1.FieldByName('TUR_SABADO').AsString='S' then Dias:=Dias+'SAB - ';
  Delete(Dias,Length(Dias)-2,3);
  QRLabel18.Caption:=Dias;
end;

end.
