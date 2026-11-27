//Atualizacoes:
//2026.11.26 - frxReport1 refeito para o DRE (FormDre.CDSDre): filtros, descrição, valor e % da receita, com destaque dos totais.
unit DreFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  frxExportCSV, frxExportXLSX, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, frxClass, frCoreClasses, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TFormDreFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDreFast: TFormDreFast;

implementation

{$R *.dfm}

end.
