unit CTeCCeFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxExportPDF,
  frxExportXLSX, frxClass, frxExportBaseDialog, frxExportCSV, Data.DB, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormCTeCCeFast = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    Memo1: TMemo;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY01a: TFDQuery;
    TR01a: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCTeCCeFast: TFormCTeCCeFast;

implementation

{$R *.dfm}

uses DataMod;

end.
