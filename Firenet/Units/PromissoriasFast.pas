//Atualizacoes:
//2026.11.24 - Nota promissoria no FastReport (PRM01, antigo FormPromissoriasQ01), procedure Mostrar e evento do valor por extenso.
unit PromissoriasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF;

type
  TFormPromissoriasFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    procedure frxReport1BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(Relatorio: TfrxReport; const Titulo: String);
  end;

var
  FormPromissoriasFast: TFormPromissoriasFast;

implementation
uses DataMod, Funcoes1;

{$R *.dfm}

//preenche as variaveis do cabecalho, aplica os parametros da promissoria e mostra o relatorio.
procedure TFormPromissoriasFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  if Relatorio=frxReport1 then
  begin
    //logotipo so quando o parametro mandar imprimir.
    TfrxPictureView(frxReport1.FindObject('Picture1')).Visible:=(DM.TBParametrosPAR_IMPRIMIRLOGOTIPO.Value='S');
    //numero da promissoria (no QuickReport ficava com a fonte branca).
    TfrxMemoView(frxReport1.FindObject('MemoQRLabel11')).Visible:=(DM.TBParametrosPAR_PROMISSORIASCODIGO.Value<>'N');
    TfrxMemoView(frxReport1.FindObject('MemoQRDBText4')).Visible:=(DM.TBParametrosPAR_PROMISSORIASCODIGO.Value<>'N');
  end;
  Relatorio.ShowReport;
end;

//valor da promissoria por extenso.
procedure TFormPromissoriasFast.frxReport1BeforePrint(Sender: TfrxReportComponent);
begin
  if Sender.Name='MemoQRLabel3' then
  TfrxMemoView(Sender).Text:=Extenso(QY01.FieldByName('PRM_VALOR').AsExtended);
end;

end.