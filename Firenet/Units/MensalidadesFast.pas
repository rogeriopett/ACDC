unit MensalidadesFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, frxExportCSV, frxExportXLSX,
  frxClass, frxExportBaseDialog, frxExportPDF, Data.DB, frxDBSet, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormMensalidadesFast = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    TR02: TFDTransaction;
    QY02: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensalidadesFast: TFormMensalidadesFast;

implementation

{$R *.dfm}

uses DataMod;

end.
