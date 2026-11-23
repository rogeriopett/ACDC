unit AtendimentosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, frxClass, frxDBSet,
  frxExportPDF, frxExportXLSX, frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frCoreClasses;

type
  TFormAtendimentosFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR01: TFDTransaction;
    QY01: TFDQuery;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    TR03: TFDTransaction;
    QY03: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAtendimentosFast: TFormAtendimentosFast;

implementation

{$R *.dfm}

uses DataMod;

end.
