unit NfseFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxExportXLSX, frxClass, frxExportBaseDialog,
  frxExportCSV, Vcl.StdCtrls, Data.DB, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormNfseFast = class(TForm)
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    TR01a: TFDTransaction;
    QY01a: TFDQuery;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    DS03: TDataSource;
    frxDBDataset3a: TfrxDBDataset;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR03a: TFDTransaction;
    QY03a: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNfseFast: TFormNfseFast;

implementation

{$R *.dfm}

uses DataMod;

end.
