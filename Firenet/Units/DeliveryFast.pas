unit DeliveryFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportCSV, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormDeliveryFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
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
  FormDeliveryFast: TFormDeliveryFast;

implementation

{$R *.dfm}

uses DataMod;

end.
