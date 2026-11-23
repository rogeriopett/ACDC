unit ConhecimentosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, frxClass, frxDBSet, frxExportPDF,
  frxExportXLSX, frxExportBaseDialog, frxExportCSV, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frCoreClasses;

type
  TFormConhecimentosFast = class(TForm)
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    TBCte: TClientDataSet;
    TBCteDE: TIntegerField;
    TBCteATE: TIntegerField;
    TBCteQUANTIDADE: TIntegerField;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    TR03: TFDTransaction;
    QY03: TFDQuery;
    TR04: TFDTransaction;
    QY04: TFDQuery;
    TR05: TFDTransaction;
    QY05: TFDQuery;
    TR05a: TFDTransaction;
    QY05a: TFDQuery;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    QY05DE: TLargeintField;
    QY05ATE: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabela;
  end;

var
  FormConhecimentosFast: TFormConhecimentosFast;

implementation

{$R *.dfm}

uses DataMod;

procedure TFormConhecimentosFast.CriarTabela;
begin
  TBCte.EmptyDataSet;
  TBCte.Open;
  QY05a.DisableControls;
  QY05.DisableControls;
  QY05.First;
  while not QY05.Eof do
  begin
    //verifica se existe algum registro na tabela de nfe inutilizadas.
    QY05a.Close;
    QY05a.ParamByName('de').AsInteger:=QY05DE.Value;
    QY05a.ParamByName('ate').AsInteger:=QY05ATE.Value;
    QY05a.Open;
    if QY05a.IsEmpty then //se estiver vazio é pq não foi encontrado na tabela de inutilizacoes, então inclui na tabela temporaria.
    begin
      TBCte.Insert;
      TBCteDE.Value:=QY05DE.Value;
      TBCteATE.Value:=QY05ATE.Value;
      TBCteQUANTIDADE.Value:=QY05ATE.Value - QY05DE.Value + 1;
      TBCte.Post;
    end;
    QY05.Next;
  end;
  QY05.EnableControls;
  QY05a.EnableControls;
  QY05a.Close;
  TBCte.First;
end;

end.
