unit ObjetosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, Data.DB, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormObjetosFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    TR01: TFDTransaction;
    QY01: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObjetosFast: TFormObjetosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
