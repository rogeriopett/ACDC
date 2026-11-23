unit TurmasQ03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormTurmasQ03 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
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
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRGroup1: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel19: TQRLabel;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    DataSource1: TDataSource;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery3: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery4: TFDQuery;
    FDTransaction4: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasQ03: TFormTurmasQ03;
  AulasDadas, TotalTurmas, TotalAlunos, SubTotalAlunos: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasQ03.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTurmasQ03);
  QRLabel8.Caption:='Usuario: '+DM.UsuarioLogin;
  AulasDadas:=0;
  TotalAlunos:=0;
  SubTotalAlunos:=0;
  TotalTurmas:=0;
end;

procedure TFormTurmasQ03.QRGroup1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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
  QRLabel1.Caption:=Dias;

  AulasDadas:=FDQuery4.FieldByName('AULASDADAS').AsInteger;
  QRLabel13.Caption:=IntToStr(AulasDadas);

  TotalTurmas:=TotalTurmas+1;
end;

procedure TFormTurmasQ03.DetailBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  TotalAlunos:=TotalAlunos+1;
  SubTotalAlunos:=SubTotalAlunos+1;
  //se o resultado do calculo der erro, o relatório nao aparece no preview.
  if FDQuery2.FieldByName('PRESENCAS').AsInteger<>0 then
  QRLabel24.Caption:=FloatToStr((FDQuery2.FieldByName('PRESENCAS').AsInteger*100)/AulasDadas) else
  QRLabel24.Caption:='0';
end;

procedure TFormTurmasQ03.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(TotalAlunos);
end;

procedure TFormTurmasQ03.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel14.Caption:=IntToStr(SubTotalAlunos);
  QRLabel17.Caption:=IntToStr(TotalTurmas);
end;

procedure TFormTurmasQ03.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=0;
  SubTotalAlunos:=0;
  TotalTurmas:=0;
end;

procedure TFormTurmasQ03.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=0;
end;

end.
