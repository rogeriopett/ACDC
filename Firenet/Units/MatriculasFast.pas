//Atualizacoes:
//2026.11.24 - Relatorios de matriculas no FastReport (MAT01 a MAT23, antigos FormMatriculasQ01 a Q23) e procedure Mostrar.
unit MatriculasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  frxExportCSV, frxExportXLSX, frxClass, frxExportBaseDialog, frxExportPDF,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxDBSet, frCoreClasses;

type
  TFormMatriculasFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    DS08: TDataSource;
    frxDBDataset8a: TfrxDBDataset;
    QY08A: TFDQuery;
    TR08A: TFDTransaction;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    QY10: TFDQuery;
    TR10: TFDTransaction;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    QY12: TFDQuery;
    TR12: TFDTransaction;
    frxReport13: TfrxReport;
    frxDBDataset13: TfrxDBDataset;
    QY13: TFDQuery;
    TR13: TFDTransaction;
    frxReport14: TfrxReport;
    frxDBDataset14: TfrxDBDataset;
    QY14: TFDQuery;
    TR14: TFDTransaction;
    frxReport15: TfrxReport;
    frxDBDataset15: TfrxDBDataset;
    QY15: TFDQuery;
    TR15: TFDTransaction;
    frxReport16: TfrxReport;
    frxDBDataset16: TfrxDBDataset;
    QY16: TFDQuery;
    TR16: TFDTransaction;
    DS16: TDataSource;
    frxDBDataset16a: TfrxDBDataset;
    QY16A: TFDQuery;
    TR16A: TFDTransaction;
    frxReport18: TfrxReport;
    frxDBDataset18: TfrxDBDataset;
    QY18: TFDQuery;
    TR18: TFDTransaction;
    frxReport19: TfrxReport;
    frxDBDataset19: TfrxDBDataset;
    QY19: TFDQuery;
    TR19: TFDTransaction;
    frxReport20: TfrxReport;
    frxDBDataset20: TfrxDBDataset;
    QY20: TFDQuery;
    TR20: TFDTransaction;
    frxReport21: TfrxReport;
    frxDBDataset21: TfrxDBDataset;
    QY21: TFDQuery;
    TR21: TFDTransaction;
    frxReport22: TfrxReport;
    frxDBDataset22: TfrxDBDataset;
    QY22: TFDQuery;
    TR22: TFDTransaction;
    frxReport23: TfrxReport;
    frxDBDataset23: TfrxDBDataset;
    QY23: TFDQuery;
    TR23: TFDTransaction;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(Relatorio: TfrxReport; const Titulo: String);
  end;

var
  FormMatriculasFast: TFormMatriculasFast;

implementation
uses DataMod;

{$R *.dfm}

//preenche as variaveis do cabecalho e mostra o relatorio.
procedure TFormMatriculasFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  Relatorio.ShowReport;
end;

end.