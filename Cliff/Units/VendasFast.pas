unit VendasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxExportCSV, frxExportXLSX, frxClass, frxExportBaseDialog,
  frxExportPDF, Data.DB, frxDBSet, Vcl.StdCtrls, Datasnap.DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, frCoreClasses;

type
  TFormVendasFast = class(TForm)
    Memo1: TMemo;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport30: TfrxReport;
    frxDBDataset30: TfrxDBDataset;
    DS30: TDataSource;
    frxDBDataset30a: TfrxDBDataset;
    frxDBDataset30b: TfrxDBDataset;
    frxDBDataset30c: TfrxDBDataset;
    QY30: TFDQuery;
    TR30: TFDTransaction;
    QY30a: TFDQuery;
    TR30a: TFDTransaction;
    QY30b: TFDQuery;
    TR30b: TFDTransaction;
    QY30c: TFDQuery;
    TR30c: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasFast: TFormVendasFast;

implementation

{$R *.dfm}

uses DataModFirenet;

end.
