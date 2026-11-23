unit ClientesFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls, frxExportXLSX, frxExportCSV, frxExportMail,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frCoreClasses;

type
  TFormClientesFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport2: TfrxReport;
    Memo1: TMemo;
    frxXLSXExport1: TfrxXLSXExport;
    frxDBDataset2: TfrxDBDataset;
    frxCSVExport1: TfrxCSVExport;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    TR12: TFDTransaction;
    QY12: TFDQuery;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    QY10: TFDQuery;
    TR10: TFDTransaction;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    frxReport13: TfrxReport;
    frxDBDataset13: TfrxDBDataset;
    QY13: TFDQuery;
    TR13: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesFast: TFormClientesFast;

implementation
uses DataMod;

{$R *.dfm}


end.
