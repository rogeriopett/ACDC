unit CaixaFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportCSV,
  frxExportXLSX, frxExportBaseDialog, frxExportPDF, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frCoreClasses;

type
  TFormCaixaFast = class(TForm)
    Memo1: TMemo;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport6: TfrxReport;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    TR02: TFDTransaction;
    QY02: TFDQuery;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    TR06: TFDTransaction;
    QY06: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCaixaFast: TFormCaixaFast;

implementation

{$R *.dfm}

uses DataMod;

end.
