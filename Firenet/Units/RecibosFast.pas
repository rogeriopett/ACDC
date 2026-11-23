unit RecibosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, frxClass, frxDBSet, frxExportCSV,
  frxExportXLSX, frxExportBaseDialog, frxExportPDF, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormRecibosFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    TR02: TFDTransaction;
    QY02: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecibosFast: TFormRecibosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
