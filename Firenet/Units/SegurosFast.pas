unit SegurosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportCSV, frxExportXLSX,
  frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormSegurosFast = class(TForm)
    Memo1: TMemo;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    QY01: TFDQuery;
    TR01: TFDTransaction;
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
  FormSegurosFast: TFormSegurosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
