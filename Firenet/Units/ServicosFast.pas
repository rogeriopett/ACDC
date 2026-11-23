unit ServicosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportPDF, frxExportXLSX,
  frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormServicosFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset8b: TfrxDBDataset;
    DS08: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    DS02: TDataSource;
    frxDBDataset2b: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport6: TfrxReport;
    DS06: TDataSource;
    frxDBDataset6b: TfrxDBDataset;
    frxDBDataset6c: TfrxDBDataset;
    QY12: TFDQuery;
    TR12: TFDTransaction;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY02b: TFDQuery;
    TR02b: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY06b: TFDQuery;
    TR06b: TFDTransaction;
    QY06c: TFDQuery;
    TR06c: TFDTransaction;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    QY08b: TFDQuery;
    TR08b: TFDTransaction;
    QY10: TFDQuery;
    TR10: TFDTransaction;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    QY09: TFDQuery;
    TR09: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicosFast: TFormServicosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
