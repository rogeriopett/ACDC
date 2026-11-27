unit ImoveisFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, frxClass, frxDBSet, frxExportPDF,
  frxExportXLSX, frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls;

type
  TFormImoveisFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    QY01: TIBQuery;
    TR01: TIBTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImoveisFast: TFormImoveisFast;

implementation

{$R *.dfm}

end.
