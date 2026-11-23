unit ComprasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportPDF, frxExportXLSX,
  frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormComprasFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    DS03: TDataSource;
    frxDBDataset3a: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    DS05: TDataSource;
    frxDBDataset5a: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    TR01a: TFDTransaction;
    QY01a: TFDQuery;
    TR02: TFDTransaction;
    QY02: TFDQuery;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR03a: TFDTransaction;
    QY03a: TFDQuery;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    TR05a: TFDTransaction;
    QY05a: TFDQuery;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComprasFast: TFormComprasFast;

implementation

{$R *.dfm}

uses DataMod;

end.
