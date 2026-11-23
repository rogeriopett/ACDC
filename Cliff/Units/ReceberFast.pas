unit ReceberFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF;

type
  TFormReceberFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    QY12: TFDQuery;
    TR12: TFDTransaction;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReceberFast: TFormReceberFast;

implementation

{$R *.dfm}

uses DataModFirenet;

end.
