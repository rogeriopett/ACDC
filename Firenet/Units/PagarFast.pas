unit PagarFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportPDF, frxExportXLSX,
  frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormPagarFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    QY10: TFDQuery;
    TR10: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPagarFast: TFormPagarFast;

implementation

{$R *.dfm}

uses DataMod;

end.
