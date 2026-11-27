//Atualizacoes:
//2026.11.24 - Marca d'agua CANCELADA do DAMDFE pela variavel OVERLAY e script Overlay1OnBeforePrint (modelo da DANFE).
//2026.11.24 - DAMDFE rodoviario (MDF01, antigo FormMdfeQ01Rodoviario) e MDFe emitidos (MDF02, antigo FormMdfeQ02) no FastReport; procedures Mostrar e GerarDAMDFE.
unit MdfeFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF, frxBarcode;

type
  TFormMdfeFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(Relatorio: TfrxReport; const Titulo: String);
    procedure GerarDAMDFE(Codigo: Integer; Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
  end;

var
  FormMdfeFast: TFormMdfeFast;

implementation
uses DataMod;

{$R *.dfm}

//preenche as variaveis do cabecalho e mostra o relatorio.
procedure TFormMdfeFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  Relatorio.ShowReport;
end;

//DAMDFE (MDF01): visualiza ou imprime (PAR_NFEVISUALIZARDANFE) e/ou gera o PDF em ArquivoPDF.
procedure TFormMdfeFast.GerarDAMDFE(Codigo: Integer; Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
begin
  QY01.Close;
  QY01.ParamByName('codigo').AsInteger:=Codigo;
  QY01.Open;
  frxReport1.Variables['TITULO']:=QuotedStr('DAMDFE');
  //marca d'agua do MDF-e cancelado (mesmo modelo da DANFE).
  if QY01.FieldByName('MDF_STATUS').AsString='C' then
  frxReport1.Variables['OVERLAY']:=QuotedStr('CANCELADA') else
  frxReport1.Variables['OVERLAY']:=QuotedStr('');
  frxReport1.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_NFEVISUALIZARDANFE.Value='S' then
    frxReport1.ShowReport else
    begin
      frxReport1.PrintOptions.ShowDialog:=False;
      frxReport1.PrepareReport;
      frxReport1.Print;
    end;
  end;

  if GerarPDF then
  begin
    frxReport1.PrepareReport;
    frxPDFExport1.FileName:=ArquivoPDF;
    frxPDFExport1.ShowDialog:=False;
    frxPDFExport1.OpenAfterExport:=False;
    frxReport1.Export(frxPDFExport1);
  end;
end;

end.