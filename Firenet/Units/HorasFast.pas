unit HorasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.StdCtrls, frxExportCSV,
  frxExportXLSX, frxExportBaseDialog, frxExportPDF, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormHorasFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHorasFast: TFormHorasFast;

implementation

{$R *.dfm}

uses DataMod;

end.
