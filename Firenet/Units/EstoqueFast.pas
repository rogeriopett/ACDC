unit EstoqueFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxExportCSV, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormEstoqueFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport2: TfrxReport;
    frxXLSXExport1: TfrxXLSXExport;
    frxDBDataset2: TfrxDBDataset;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstoqueFast: TFormEstoqueFast;

implementation

{$R *.dfm}

uses DataMod;

end.
