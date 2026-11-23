unit TurmasQ02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormTurmasQ02 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRBand3: TQRBand;
    QRDBText11: TQRDBText;
    QRLabel4: TQRLabel;
    QRGroup2: TQRGroup;
    QRDBText13: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    QRBand4: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData4: TQRSysData;
    IMAGEM: TQRImage;
    EMPRESA: TQRDBText;
    EMAIL: TQRDBText;
    CNPJ: TQRDBText;
    FONE1: TQRDBText;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape2: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape4: TQRShape;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText8: TQRDBText;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText10: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDQuery2CAL_CODIGO: TIntegerField;
    FDQuery2CAL_CONTADOR: TIntegerField;
    FDQuery2CAL_DATA: TDateField;
    FDQuery2CAL_STATUSCHAMADA: TStringField;
    FDQuery2CAL_TIPO: TStringField;
    FDQuery2CAL_TURMA: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasQ02: TFormTurmasQ02;
  MesesMatriz: array[1..12] of String;
  TotalAlunos: Integer;
implementation
uses DataMod, DataMod2, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasQ02.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTurmasQ02);
  QRLabel4.Caption:='Usuario: '+DM.UsuarioLogin;

  MesesMatriz[1]:='JAN';
  MesesMatriz[2]:='FEV';
  MesesMatriz[3]:='MAR';
  MesesMatriz[4]:='ABR';
  MesesMatriz[5]:='MAI';
  MesesMatriz[6]:='JUN';
  MesesMatriz[7]:='JUL';
  MesesMatriz[8]:='AGO';
  MesesMatriz[9]:='SET';
  MesesMatriz[10]:='OUT';
  MesesMatriz[11]:='NOV';
  MesesMatriz[12]:='DEZ';
end;

procedure TFormTurmasQ02.QRGroup2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Dia: Word;
  Dias, Meses, Normais, Compensadas, Feriados, Outros, Espacos: String;
begin
  FDQuery2.Close;
  FDQuery2.ParamByName('turma').AsInteger:=FDQuery1.FieldByName('MAT_TURMA').AsInteger;
  FDQuery2.Open;

  Dias:='';
  Espacos:='';
  Meses:='';
  Normais:='';
  Compensadas:='';
  Feriados:='';
  Outros:='';

  //monta string com os dias.
  if FDQuery1.FieldByName('TUR_DOMINGO').AsString='S' then Dias:=Dias+'DOM - ';
  if FDQuery1.FieldByName('TUR_SEGUNDA').AsString='S' then Dias:=Dias+'SEG - ';
  if FDQuery1.FieldByName('TUR_TERCA').AsString='S' then Dias:=Dias+'TER - ';
  if FDQuery1.FieldByName('TUR_QUARTA').AsString='S' then Dias:=Dias+'QUA - ';
  if FDQuery1.FieldByName('TUR_QUINTA').AsString='S' then Dias:=Dias+'QUI - ';
  if FDQuery1.FieldByName('TUR_SEXTA').AsString='S' then Dias:=Dias+'SEX - ';
  if FDQuery1.FieldByName('TUR_SABADO').AsString='S' then Dias:=Dias+'SAB - ';
  Delete(Dias,Length(Dias)-2,3);
  QRLabel12.Caption:=Dias;

  FDQuery2.First;
  Meses:='|'+MesesMatriz[StrToInt(Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),4,2))];
  Normais:='|';
  Feriados:=' ';
  Compensadas:=' ';
  Outros:=' ';
  Espacos:='|';

  Dia:=StrToInt(Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)); //primeiro dia de aula.
  while not FDQuery2.Eof do
  begin
    if FDQuery2CAL_TIPO.Value='NORMAL' then
    begin
      Normais:=Normais+Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)+' ';
      Feriados:=Feriados+'   ';
      Compensadas:=Compensadas+'   ';
      Outros:=Outros+'   ';
    end else
    if FDQuery2CAL_TIPO.Value='FERIADO' then
    begin
      Normais:=Normais+'   ';
      Feriados:=Feriados+Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)+' ';
      Compensadas:=Compensadas+'   ';
      Outros:=Outros+'   ';
    end else
    if FDQuery2CAL_TIPO.Value='COMPENSADA' then
    begin
      Normais:=Normais+'   ';
      Feriados:=Feriados+'   ';
      Compensadas:=Compensadas+Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)+' ';
      Outros:=Outros+'   ';
    end else
    if FDQuery2CAL_TIPO.Value='OUTRO' then
    begin
      Normais:=Normais+'   ';
      Feriados:=Feriados+'   ';
      Compensadas:=Compensadas+'   ';
      Outros:=Outros+Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)+' ';
    end;
    Espacos:=Espacos+'  |';

    if StrToInt(Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2))<Dia then
    begin
      Meses:=Copy(Meses,1,(Length(Meses)-4))+'|'+MesesMatriz[StrToInt(Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),4,2))]+'   ';
      Normais:=Copy(Normais,1,Length(Normais)-4)+'|'+Copy(Normais,Length(Normais)-2,Length(Normais));
    end else
    begin
      Meses:=Meses+'   ';
    end;
    Dia:=StrToInt(Copy(DateToStr(FDQuery2CAL_DATA.Value,FS),1,2)); //demais dias.
    FDQuery2.Next;
  end;
  Normais:=Copy(Normais,1,Length(Normais)-1)+'|';
  QRLabel3.Caption:=Espacos;
  QRLabel5.Caption:=Meses;
  QRLabel7.Caption:=Normais;
  QRLabel18.Caption:=Compensadas;
  QRLabel13.Caption:=Feriados;
  QRLabel14.Caption:=Outros;
end;

procedure TFormTurmasQ02.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=TotalAlunos+1;
end;

procedure TFormTurmasQ02.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:='Total Alunos: '+IntToStr(TotalAlunos);
end;

procedure TFormTurmasQ02.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=0;
end;

end.
