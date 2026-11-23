unit TurmasQ04;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, QRExport, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormTurmasQ04 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
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
    QRDBText13: TQRDBText;
    QRDBText9: TQRDBText;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRRTFFilter1: TQRRTFFilter;
    QRExcelFilter1: TQRExcelFilter;
    QRTextFilter1: TQRTextFilter;
    QRCSVFilter1: TQRCSVFilter;
    QRGroup2: TQRGroup;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    DataSource1: TDataSource;
    QRDBText18: TQRDBText;
    QRBand4: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText23: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    FDQuery1: TFDQuery;
    FDTransaction1: TFDTransaction;
    FDTransaction2: TFDTransaction;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDTransaction3: TFDTransaction;
    FDQuery4: TFDQuery;
    FDTransaction4: TFDTransaction;
    FDQuery5: TFDQuery;
    FDTransaction5: TFDTransaction;
    procedure FormCreate(Sender: TObject);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
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
  FormTurmasQ04: TFormTurmasQ04;
  TotalAlunosPeriodo: Integer;
  TotalTurmasPeriodo: Integer;
  TotalTurmasProfessor: Integer;
  TotalAlunosProfessor: Integer;
  SubTotalAlunos: Integer;
  SubTotalTurmas: Integer;

implementation
uses DataMod, FuncoesFirenet;
{$R *.dfm}

procedure TFormTurmasQ04.FormCreate(Sender: TObject);
begin
  LogoTipo(FormTurmasQ04);
  QRLabel8.Caption:='Usuário: '+DM.UsuarioLogin;
  TotalAlunosProfessor:=0;
  TotalTurmasProfessor:=0;
  TotalTurmasPeriodo:=0;
  TotalAlunosPeriodo:=0;
  SubTotalAlunos:=0;
  SubTotalTurmas:=0;
end;

procedure TFormTurmasQ04.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunosPeriodo:=TotalAlunosPeriodo+FDQuery2.FieldByName('ALUNOS').AsInteger;
  TotalTurmasPeriodo:=TotalTurmasPeriodo+1;
  TotalAlunosProfessor:=TotalAlunosProfessor+FDQuery2.FieldByName('ALUNOS').AsInteger;
  TotalTurmasProfessor:=TotalTurmasProfessor+1;
  SubTotalAlunos:=SubTotalAlunos+FDQuery2.FieldByName('ALUNOS').AsInteger;
  SubTotalTurmas:=SubTotalTurmas+1;
end;

procedure TFormTurmasQ04.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel23.Caption:=IntToStr(TotalTurmasPeriodo);
  QRLabel24.Caption:=IntToStr(TotalAlunosPeriodo);
end;

procedure TFormTurmasQ04.QRBand4AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalTurmasPeriodo:=0;
  TotalAlunosPeriodo:=0;
end;

procedure TFormTurmasQ04.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel16.Caption:=IntToStr(TotalTurmasProfessor);
  QRLabel25.Caption:=IntToStr(TotalAlunosProfessor);
end;

procedure TFormTurmasQ04.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabel17.Caption:=IntToStr(SubTotalTurmas);
  QRLabel26.Caption:=IntToStr(SubTotalAlunos);
end;

procedure TFormTurmasQ04.QRBand3AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunosProfessor:=0;
  TotalTurmasProfessor:=0;
end;

procedure TFormTurmasQ04.SummaryBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  TotalAlunosProfessor:=0;
  TotalTurmasProfessor:=0;
  TotalTurmasPeriodo:=0;
  TotalAlunosPeriodo:=0;
  SubTotalAlunos:=0;
  SubTotalTurmas:=0;
end;

end.
