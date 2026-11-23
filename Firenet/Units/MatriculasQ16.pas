unit MatriculasQ16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormMatriculasQ16 = class(TForm)
    QuickRep1: TQuickRep;
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
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRRTFFilter1: TQRRTFFilter;
    QRDBText9: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText25: TQRDBText;
    DataSource1: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText4: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText26: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery3: TFDQuery;
    FDTransaction4: TFDTransaction;
    FDQuery4: TFDQuery;
    FDTransaction5: TFDTransaction;
    FDQuery5: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMatriculasQ16: TFormMatriculasQ16;
  AulasDadas: Integer;
implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormMatriculasQ16.FormCreate(Sender: TObject);
begin
  LogoTipo(FormMatriculasQ16);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
end;

procedure TFormMatriculasQ16.QRGroup1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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
  QRLabel20.Caption:=Dias;

  AulasDadas:=FDQuery5.FieldByName('AULASDADAS').AsInteger;
  if FDQuery3.FieldByName('PRESENCAS').AsInteger<>0 then
  QRLabel18.Caption:=FormatFloat('00.00',(FDQuery3.FieldByName('PRESENCAS').AsInteger*100)/AulasDadas)+'%' else // FloatToStr((FDQuery3.FieldByName('PRESENCAS').AsInteger*100)/AulasDadas)+'%' else
  QRLabel18.Caption:='0%';
end;

end.
