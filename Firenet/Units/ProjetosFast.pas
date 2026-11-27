//Atualizacoes:
//2026.11.24 - Relatorios de projetos no FastReport (PRJ01 a PRJ09, antigos FormProjetosQ01 a Q09) e procedure Mostrar.
unit ProjetosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF;

type
  TFormProjetosFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxDBDataset1a: TfrxDBDataset;
    QY01A: TFDQuery;
    TR01A: TFDTransaction;
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
  FormProjetosFast: TFormProjetosFast;

implementation
uses DataMod;

{$R *.dfm}

//preenche as variaveis do cabecalho e mostra o relatorio.
procedure TFormProjetosFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  Relatorio.ShowReport;
end;

end.