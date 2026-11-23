unit EnderecosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet, frxExportPDF, frxExportXLSX,
  frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormEnderecosFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    QY05: TFDQuery;
    TR05: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEnderecosFast: TFormEnderecosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
