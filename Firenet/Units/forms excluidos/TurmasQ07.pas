unit TurmasQ07;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRExport, DB, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormTurmasQ07 = class(TForm)
    QuickRep1: TQuickRep;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRDBText1: TQRDBText;
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
    QRLabel10: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel25: TQRLabel;
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
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
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
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape32: TQRShape;
    QRLabel30: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
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
    QRLabel31: TQRLabel;
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
    QRShape62: TQRShape;
    QRLabel46: TQRLabel;
    QRShape72: TQRShape;
    QRLabel52: TQRLabel;
    QRShape73: TQRShape;
    QRShape63: TQRShape;
    QRLabel47: TQRLabel;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape64: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape1: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRDBText10: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDQuery2: TFDQuery;
    FDTransaction2: TFDTransaction;
    FDQuery3: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery1MAT_CODIGO: TIntegerField;
    FDQuery1MAT_CLIENTE: TIntegerField;
    FDQuery1MAT_MEDIAFINAL: TFMTBCDField;
    FDQuery1MAT_TURMA: TIntegerField;
    FDQuery1CLI_NOME: TStringField;
    FDQuery1TUR_DESCRICAO: TStringField;
    FDQuery1TUR_PROFESSOR: TIntegerField;
    FDQuery1TUR_SALA: TStringField;
    FDQuery1TUR_DTINICIO: TDateField;
    FDQuery1TUR_DTTERMINO: TDateField;
    FDQuery1TUR_HORARIO: TStringField;
    FDQuery1TUR_DOMINGO: TStringField;
    FDQuery1TUR_SEGUNDA: TStringField;
    FDQuery1TUR_TERCA: TStringField;
    FDQuery1TUR_QUARTA: TStringField;
    FDQuery1TUR_QUINTA: TStringField;
    FDQuery1TUR_SEXTA: TStringField;
    FDQuery1TUR_SABADO: TStringField;
    FDQuery1TUR_PERIODO: TIntegerField;
    FDQuery1TUR_ANO: TStringField;
    FDQuery1TUR_ENCONTROS: TIntegerField;
    FDQuery1VEN_NOME: TStringField;
    FDQuery2EXE_NOTA: TFMTBCDField;
    FDQuery3MEDIA: TFMTBCDField;
    procedure FormCreate(Sender: TObject);
    procedure QRSubDetail1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasQ07: TFormTurmasQ07;
  TotalAlunos: Integer;
  Preenchida: Boolean = False;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasQ07.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTurmasQ07);
  QRLabel4.Caption:='Usuário: '+DM.UsuarioLogin;
  TotalAlunos:=0;

  if Preenchida=False then
  begin
    QRLabel53.Font.Color:=clWhite;
    QRLabel54.Font.Color:=clWhite;
    QRLabel55.Font.Color:=clWhite;
    QRLabel56.Font.Color:=clWhite;
    QRLabel57.Font.Color:=clWhite;
    QRLabel58.Font.Color:=clWhite;
    QRLabel59.Font.Color:=clWhite;
    QRLabel60.Font.Color:=clWhite;
    QRLabel61.Font.Color:=clWhite;
    QRLabel62.Font.Color:=clWhite;
    QRLabel63.Font.Color:=clWhite;
    QRLabel64.Font.Color:=clWhite;
    QRLabel65.Font.Color:=clWhite;
    QRLabel66.Font.Color:=clWhite;
    QRLabel67.Font.Color:=clWhite;
    QRLabel68.Font.Color:=clWhite;
  end else
  begin
    FDQuery2.Open;
    FDQuery3.Open;
  end;
end;

procedure TFormTurmasQ07.QRSubDetail1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=TotalAlunos+1;
end;

procedure TFormTurmasQ07.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Notas: array[1..15] of Extended;
  NotasOK: array[1..15] of Boolean; //Somente para informar se tem nota ou não. Se não tiver nota, evita de formatar o caption para 0,00.
  I: Word;
begin
  if Preenchida=True then
  begin
    //zera matriz de notas.
    for I:=1 to 15 do
    begin
      Notas[I]:=0;
      NotasOK[I]:=False;
    end;
    //percorre a tabela de notas e monta a matriz de notas.
    I:=0;
    FDQuery2.First;
    while not FDQuery2.Eof do
    begin
      Inc(I);
      Notas[I]:=FDQuery2EXE_NOTA.AsExtended;
      NotasOK[I]:=True;
      FDQuery2.Next;
    end;
    //preenche os campos.
    if NotasOK[1] then QRLabel53.Caption:=FormatFloat('#00.00',Notas[1]) else QRLabel53.Caption:='';
    if NotasOK[2] then QRLabel54.Caption:=FormatFloat('#00.00',Notas[2]) else QRLabel54.Caption:='';
    if NotasOK[3] then QRLabel55.Caption:=FormatFloat('#00.00',Notas[3]) else QRLabel55.Caption:='';
    if NotasOK[4] then QRLabel56.Caption:=FormatFloat('#00.00',Notas[4]) else QRLabel56.Caption:='';
    if NotasOK[5] then QRLabel57.Caption:=FormatFloat('#00.00',Notas[5]) else QRLabel57.Caption:='';
    if NotasOK[6] then QRLabel58.Caption:=FormatFloat('#00.00',Notas[6]) else QRLabel58.Caption:='';
    if NotasOK[7] then QRLabel59.Caption:=FormatFloat('#00.00',Notas[7]) else QRLabel59.Caption:='';
    if NotasOK[8] then QRLabel60.Caption:=FormatFloat('#00.00',Notas[8]) else QRLabel60.Caption:='';
    if NotasOK[9] then QRLabel61.Caption:=FormatFloat('#00.00',Notas[9]) else QRLabel61.Caption:='';
    if NotasOK[10] then QRLabel62.Caption:=FormatFloat('#00.00',Notas[10]) else QRLabel62.Caption:='';
    if NotasOK[11] then QRLabel63.Caption:=FormatFloat('#00.00',Notas[11]) else QRLabel63.Caption:='';
    if NotasOK[12] then QRLabel64.Caption:=FormatFloat('#00.00',Notas[12]) else QRLabel64.Caption:='';
    if NotasOK[13] then QRLabel65.Caption:=FormatFloat('#00.00',Notas[13]) else QRLabel65.Caption:='';
    if NotasOK[14] then QRLabel66.Caption:=FormatFloat('#00.00',Notas[14]) else QRLabel66.Caption:='';
    if NotasOK[15] then QRLabel67.Caption:=FormatFloat('#00.00',Notas[15]) else QRLabel67.Caption:='';
    QRLabel68.Caption:=FormatFloat('#00.00',FDQuery3MEDIA.AsExtended); // FDQuery1.FieldByName('MAT_MEDIAFINAL').AsString;
  end;
end;

procedure TFormTurmasQ07.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel22.Caption:='Total Alunos: '+IntToStr(TotalAlunos);
end;

procedure TFormTurmasQ07.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunos:=0;
end;

procedure TFormTurmasQ07.QRGroup2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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
  QRLabel12.Caption:=Dias;
end;

end.
