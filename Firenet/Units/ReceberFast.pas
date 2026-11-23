unit ReceberFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, Data.DB, frxDBSet, frxExportCSV, frxExportXLSX,
  frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormReceberFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    Memo1: TMemo;
    MemoOLD: TMemo;
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
    Label1: TLabel;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    TR12: TFDTransaction;
    QY12: TFDQuery;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    TR06: TFDTransaction;
    QY06: TFDQuery;
    TR07: TFDTransaction;
    QY07: TFDQuery;
    TR08: TFDTransaction;
    QY08: TFDQuery;
    TR09: TFDTransaction;
    QY09: TFDQuery;
    TR10: TFDTransaction;
    QY10: TFDQuery;
    TR11: TFDTransaction;
    QY11: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberFast: TFormReceberFast;

implementation

{$R *.dfm}

uses DataMod;

end.
