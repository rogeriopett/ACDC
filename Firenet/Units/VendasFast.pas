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
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    DS02: TDataSource;
    frxDBDataset2a: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    frxReport9: TfrxReport;
    frxDBDataset9: TfrxDBDataset;
    frxReport10: TfrxReport;
    frxDBDataset10: TfrxDBDataset;
    frxReport11: TfrxReport;
    frxDBDataset11: TfrxDBDataset;
    frxReport12: TfrxReport;
    frxDBDataset12: TfrxDBDataset;
    frxReport13: TfrxReport;
    frxDBDataset13: TfrxDBDataset;
    frxReport14: TfrxReport;
    frxDBDataset14: TfrxDBDataset;
    frxReport15: TfrxReport;
    frxDBDataset15: TfrxDBDataset;
    frxReport16: TfrxReport;
    frxDBDataset16: TfrxDBDataset;
    frxReport17: TfrxReport;
    frxDBDataset17: TfrxDBDataset;
    frxReport18: TfrxReport;
    frxDBDataset18: TfrxDBDataset;
    frxReport19: TfrxReport;
    frxDBDataset19: TfrxDBDataset;
    frxReport20: TfrxReport;
    frxDBDataset20: TfrxDBDataset;
    frxReport21: TfrxReport;
    frxDBDataset21: TfrxDBDataset;
    frxReport22: TfrxReport;
    frxDBDataset22: TfrxDBDataset;
    frxReport23: TfrxReport;
    frxDBDataset23: TfrxDBDataset;
    frxReport24: TfrxReport;
    frxDBDataset24: TfrxDBDataset;
    frxReport25: TfrxReport;
    frxDBDataset25: TfrxDBDataset;
    frxDBDataset25a: TfrxDBDataset;
    DS25: TDataSource;
    frxReport26: TfrxReport;
    frxDBDataset26: TfrxDBDataset;
    frxReport27: TfrxReport;
    frxDBDataset27: TfrxDBDataset;
    frxReport28: TfrxReport;
    frxDBDataset28: TfrxDBDataset;
    frxReport29: TfrxReport;
    frxDBDataset29: TfrxDBDataset;
    DS29: TDataSource;
    frxDBDataset1a: TfrxDBDataset;
    frxReport30: TfrxReport;
    frxDBDataset30: TfrxDBDataset;
    DS30: TDataSource;
    frxDBDataset30a: TfrxDBDataset;
    frxDBDataset30b: TfrxDBDataset;
    frxDBDataset30c: TfrxDBDataset;
    frxReport31: TfrxReport;
    frxDBDataset31: TfrxDBDataset;
    DS31: TDataSource;
    frxDBDataset31a: TfrxDBDataset;
    frxReport32: TfrxReport;
    frxDBDataset32: TfrxDBDataset;
    QY33: TClientDataSet;
    frxReport33: TfrxReport;
    frxDBDataset33: TfrxDBDataset;
    QY33NOME: TStringField;
    QY33ENDERECO: TStringField;
    QY33NUMERO: TStringField;
    QY33BAIRRO: TStringField;
    QY33CIDADE: TStringField;
    QY33ESTADO: TStringField;
    QY33CEP: TStringField;
    QY33COMPLEMENTO: TStringField;
    QY33VOLUMES: TStringField;
    QY33VOLUMESNUM: TStringField;
    QY33TRANSPORTADORA: TStringField;
    QY33NOTA: TStringField;
    frxReport34: TfrxReport;
    frxDBDataset34: TfrxDBDataset;
    frxReport35: TfrxReport;
    frxDBDataset35: TfrxDBDataset;
    QY35: TFDQuery;
    TR35: TFDTransaction;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY02a: TFDQuery;
    TR02a: TFDTransaction;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    QY10: TFDQuery;
    TR10: TFDTransaction;
    QY11: TFDQuery;
    TR11: TFDTransaction;
    QY12: TFDQuery;
    TR12: TFDTransaction;
    QY13: TFDQuery;
    TR13: TFDTransaction;
    QY14: TFDQuery;
    TR14: TFDTransaction;
    QY15: TFDQuery;
    TR15: TFDTransaction;
    QY16: TFDQuery;
    TR16: TFDTransaction;
    QY17: TFDQuery;
    TR17: TFDTransaction;
    QY18: TFDQuery;
    TR18: TFDTransaction;
    QY19: TFDQuery;
    TR19: TFDTransaction;
    QY20: TFDQuery;
    TR20: TFDTransaction;
    QY21: TFDQuery;
    TR21: TFDTransaction;
    QY22: TFDQuery;
    TR22: TFDTransaction;
    QY23: TFDQuery;
    TR23: TFDTransaction;
    QY24: TFDQuery;
    TR24: TFDTransaction;
    QY25: TFDQuery;
    TR25: TFDTransaction;
    QY25a: TFDQuery;
    TR25a: TFDTransaction;
    QY26: TFDQuery;
    TR26: TFDTransaction;
    QY27: TFDQuery;
    TR27: TFDTransaction;
    QY28: TFDQuery;
    TR28: TFDTransaction;
    QY29: TFDQuery;
    TR29: TFDTransaction;
    QY29a: TFDQuery;
    TR29a: TFDTransaction;
    QY30: TFDQuery;
    TR30: TFDTransaction;
    QY30a: TFDQuery;
    TR30a: TFDTransaction;
    QY30b: TFDQuery;
    TR30b: TFDTransaction;
    QY30c: TFDQuery;
    TR30c: TFDTransaction;
    QY31: TFDQuery;
    TR31: TFDTransaction;
    QY31a: TFDQuery;
    TR31a: TFDTransaction;
    QY32: TFDQuery;
    TR32: TFDTransaction;
    QY34: TFDQuery;
    TR34: TFDTransaction;
    frxReport36: TfrxReport;
    frxDBDataset36: TfrxDBDataset;
    DS36: TDataSource;
    frxDBDataset36a: TfrxDBDataset;
    QY36: TFDQuery;
    TR36: TFDTransaction;
    QY36a: TFDQuery;
    TR36a: TFDTransaction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendasFast: TFormVendasFast;

implementation

{$R *.dfm}

uses DataMod;

end.
