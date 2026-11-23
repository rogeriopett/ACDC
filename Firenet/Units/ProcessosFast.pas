unit ProcessosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportCSV, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frCoreClasses;

type
  TFormProcessosFast = class(TForm)
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset1b: TfrxDBDataset;
    frxDBDataset1c: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY01b: TFDQuery;
    TR01b: TFDTransaction;
    QY01c: TFDQuery;
    TR01c: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProcessosFast: TFormProcessosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
