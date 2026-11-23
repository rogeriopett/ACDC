unit NfeCCeFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportPDF, frxExportXLSX, frxClass,
  frxExportBaseDialog, frxExportCSV, Data.DB, frxDBSet, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormNfeCCeFast = class(TForm)
    Memo1: TMemo;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
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
  FormNfeCCeFast: TFormNfeCCeFast;

implementation

{$R *.dfm}

uses DataMod;

end.
