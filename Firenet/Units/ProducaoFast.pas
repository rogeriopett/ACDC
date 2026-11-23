unit ProducaoFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, frxClass, frCoreClasses, frxDBSet,
  frxExportPDF, frxExportXLSX, frxExportBaseDialog, frxExportCSV, Vcl.StdCtrls,
  Datasnap.DBClient;

type
  TFormProducaoFast = class(TForm)
    Memo1: TMemo;
    frxCSVExport1: TfrxCSVExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxDBDataset1a: TfrxDBDataset;
    QY01a: TFDQuery;
    TR01a: TFDTransaction;
    DS01: TDataSource;
    frxDBDataset3: TfrxDBDataset;
    frxReport3: TfrxReport;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    DS03: TDataSource;
    frxDBDataset3a: TfrxDBDataset;
    QY03a: TFDQuery;
    TR03a: TFDTransaction;
    frxDBDataset4: TfrxDBDataset;
    frxReport4: TfrxReport;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    frxDBDataset5: TfrxDBDataset;
    frxReport5: TfrxReport;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    frxDBDataset6: TfrxDBDataset;
    frxReport6: TfrxReport;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    DS06: TDataSource;
    frxDBDataset6a: TfrxDBDataset;
    QY06a: TFDQuery;
    TR06a: TFDTransaction;
    DS06a: TDataSource;
    frxDBDataset6b: TfrxDBDataset;
    QY06b: TFDQuery;
    TR06b: TFDTransaction;
    DS06b: TDataSource;
    TBProdutos: TClientDataSet;
    TBProdutosPRO_CODIGO: TIntegerField;
    TBProdutosPRO_NOME: TStringField;
    TBProdutosPRO_ESTOQUEATUAL: TFloatField;
    TBProdutosPRO_NECESSARIO: TFloatField;
    TBProdutosPRO_DIFERENCA: TFloatField;
    frxDBDataset6c: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxReport7: TfrxReport;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    DS07: TDataSource;
    frxDBDataset7a: TfrxDBDataset;
    QY07a: TFDQuery;
    TR07a: TFDTransaction;
    frxDBDataset7b: TfrxDBDataset;
    QY07b: TFDQuery;
    TR07b: TFDTransaction;
    DS07b: TDataSource;
    frxDBDataset7c: TfrxDBDataset;
    QY07c: TFDQuery;
    TR07c: TFDTransaction;
    frxDBDataset8: TfrxDBDataset;
    frxReport8: TfrxReport;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    frxDBDataset8a: TfrxDBDataset;
    QY08a: TFDQuery;
    TR08a: TFDTransaction;
    DS08: TDataSource;
    Label1: TLabel;
    TBProdutos2: TClientDataSet;
    frxDBDataset9: TfrxDBDataset;
    frxReport9: TfrxReport;
    QY09: TFDQuery;
    TR09: TFDTransaction;
    frxDBDataset9a: TfrxDBDataset;
    QY09a: TFDQuery;
    TR09a: TFDTransaction;
    TBProdutos2PRO_CODIGO: TIntegerField;
    TBProdutos2PRO_NOME: TStringField;
    TBProdutos2PRO_ESTOQUEATUAL: TFloatField;
    TBProdutos2PRO_NECESSARIO: TFloatField;
    TBProdutos2PRO_DIFERENCA: TFloatField;
    TBProdutos2M5_CONSUMO: TExtendedField;
    TBProdutos2M4_CONSUMO: TExtendedField;
    TBProdutos2M3_CONSUMO: TExtendedField;
    TBProdutos2M2_CONSUMO: TExtendedField;
    TBProdutos2M1_CONSUMO: TExtendedField;
    TBProdutos2M0_CONSUMO: TExtendedField;
    TBProdutos2CONSUMO_MEDIO: TExtendedField;
    TBProdutos2M6_NECESSARIO: TExtendedField;
    TBProdutos2M5_NECESSARIO: TExtendedField;
    TBProdutos2M4_NECESSARIO: TExtendedField;
    TBProdutos2M3_NECESSARIO: TExtendedField;
    TBProdutos2M2_NECESSARIO: TExtendedField;
    TBProdutos2M1_NECESSARIO: TExtendedField;
    TBProdutos2M0_NECESSARIO: TExtendedField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CriarTabelaProdutosEstoque(DataInicial, DataFinal: TDateTime);
    procedure CriarTabelaProdutosEstoqueConsumo(DataInicial, DataFinal: TDateTime);
  end;

var
  FormProducaoFast: TFormProducaoFast;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormProducaoFast.CriarTabelaProdutosEstoque(DataInicial, DataFinal: TDateTime);
begin
  TBProdutos.Close;
  TBProdutos.CreateDataSet; //cria a estrutura da tabela.
  TBProdutos.Open;

  QY06.ParamByName('datainicial').AsDate:=DataInicial;
  QY06.ParamByName('datafinal').AsDate:=DataFinal;
  QY06.Open;
  QY06a.Open;
  QY06b.Open;

  QY06.First;
  while not QY06.Eof do
  begin
    QY06a.First;
    while not QY06a.Eof do
    begin
      if not TBProdutos.Locate('PRO_CODIGO',QY06a.FieldByName('PRC_PRODUTOCOMP').asInteger,[]) then
      begin
        TBProdutos.Insert;
        TBProdutos.FieldByName('PRO_CODIGO').AsInteger:=QY06a.FieldByName('PRC_PRODUTOCOMP').AsInteger;
        TBProdutos.FieldByName('PRO_NOME').AsString:=QY06a.FieldByName('PRO_NOME').AsString;
        TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat:=QY06a.FieldByName('PRC_QUANTIDADE').AsExtended * QY06.FieldByName('TOTAL').AsExtended;
        TBProdutos.FieldByName('PRO_ESTOQUEATUAL').AsFloat:=QY06b.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
        TBProdutos.FieldByName('PRO_DIFERENCA').AsFloat:=TBProdutos.FieldByName('PRO_ESTOQUEATUAL').AsFloat - TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat;
        TBProdutos.Post;
      end else
      begin
        TBProdutos.Edit;
        TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat:=TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat+(QY06a.FieldByName('PRC_QUANTIDADE').AsExtended * QY06.FieldByName('TOTAL').AsExtended);
        TBProdutos.FieldByName('PRO_DIFERENCA').AsFloat:=TBProdutos.FieldByName('PRO_ESTOQUEATUAL').AsFloat - TBProdutos.FieldByName('PRO_NECESSARIO').AsFloat;
        TBProdutos.Post;
      end;
      QY06a.Next;
    end;
    QY06.Next;
  end;

//  QRDBText4.DataField:='PRO_CODIGO';
//  QRDBText3.DataField:='PRO_NOME';
//  QRDBText1.DataField:='PRO_NECESSARIO';
//  QRDBText7.DataField:='PRO_ESTOQUEATUAL';
end;


procedure TFormProducaoFast.CriarTabelaProdutosEstoqueConsumo(DataInicial, DataFinal: TDateTime);
begin
  TBProdutos2.Close;
  TBProdutos2.CreateDataSet; //cria a estrutura da tabela.
  TBProdutos2.Open;

  //QY09.ParamByName('datainicial').AsDate:=DataInicial;
  //QY09.ParamByName('datafinal').AsDate:=DataFinal;
  QY09.Open; //query que lista a soma mes a mes do consumo nas OPs abertas nos próximos 6 meses (data previsao)
  QY09a.Open;

  QY09.First;
  while not QY09.Eof do
  begin
    TBProdutos2.Insert;
    TBProdutos2.FieldByName('PRO_CODIGO').AsInteger       :=QY09.FieldByName('PDC_PRODUTO').AsInteger;
    TBProdutos2.FieldByName('PRO_NOME').AsString          :=QY09.FieldByName('PRO_NOME').AsString;
    TBProdutos2.FieldByName('PRO_ESTOQUEATUAL').AsExtended:=QY09.FieldByName('PRO_ESTOQUEATUAL').AsExtended;
    TBProdutos2.FieldByName('PRO_NECESSARIO').AsExtended  :=QY09.FieldByName('TOTAL_NECESSARIO').AsExtended;
    TBProdutos2.FieldByName('PRO_DIFERENCA').AsExtended   :=QY09.FieldByName('TOTAL_NECESSARIO').AsExtended;
    TBProdutos2.FieldByName('M6_NECESSARIO').AsExtended   :=QY09.FieldByName('M6').AsFloat;
    TBProdutos2.FieldByName('M5_NECESSARIO').AsExtended   :=QY09.FieldByName('M5').AsFloat;
    TBProdutos2.FieldByName('M4_NECESSARIO').AsExtended   :=QY09.FieldByName('M4').AsFloat;
    TBProdutos2.FieldByName('M3_NECESSARIO').AsExtended   :=QY09.FieldByName('M3').AsFloat;
    TBProdutos2.FieldByName('M2_NECESSARIO').AsExtended   :=QY09.FieldByName('M2').AsFloat;
    TBProdutos2.FieldByName('M1_NECESSARIO').AsExtended   :=QY09.FieldByName('M1').AsFloat;

    //Busca a media consumida nos ultimos 6 meses
    if QY09a.Locate('PDC_PRODUTO', QY09.FieldByName('PDC_PRODUTO').AsInteger, []) then
    TBProdutos2.FieldByName('CONSUMO_MEDIO').AsExtended   :=QY09a.FieldByName('MEDIA_CONSUMIDO').AsExtended else
    TBProdutos2.FieldByName('CONSUMO_MEDIO').AsExtended   := 0;
    TBProdutos2.Post;

    QY09.Next;
  end;
  TBProdutos.First;
end;

end.
