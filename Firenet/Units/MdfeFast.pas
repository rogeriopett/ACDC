unit MdfeFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, Vcl.StdCtrls, frxExportCSV,
  frxExportXLSX, frxExportBaseDialog, frxExportPDF, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormMdfeFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    DS01: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    Label1: TLabel;
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
  FormMdfeFast: TFormMdfeFast;

implementation

{$R *.dfm}

uses DataMod;

end.
