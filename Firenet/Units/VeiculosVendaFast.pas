//Atualizacoes:
//2026.11.24 - Relatorios de veiculos a venda no FastReport (VEV01 a VEV04, antigos FormVeiculosVendaQ01 a Q04), procedures Mostrar e PrepararFicha.
unit VeiculosVendaFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF;

type
  TFormVeiculosVendaFast = class(TForm)
    Memo1: TMemo;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY03A: TFDQuery;
    TR03A: TFDTransaction;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Mostrar(Relatorio: TfrxReport; const Titulo: String);
    procedure PrepararFicha(Codigo: Integer);
  end;

var
  FormVeiculosVendaFast: TFormVeiculosVendaFast;

implementation
uses DataMod, Funcoes1, FuncoesFirenet;

{$R *.dfm}

//preenche as variaveis do cabecalho e mostra o relatorio.
procedure TFormVeiculosVendaFast.Mostrar(Relatorio: TfrxReport; const Titulo: String);
begin
  Relatorio.Variables['TITULO']:=QuotedStr(Titulo);
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);
  Relatorio.Variables['HEADER1']:=QuotedStr(DM.TBEmpresaEMP_NOME.Value);
  Relatorio.Variables['HEADER2']:=QuotedStr(DM.TBEmpresaEMP_FONE1.Value+' - '+DM.TBEmpresaEMP_EMAIL.Value);
  Relatorio.Variables['HEADER3']:=QuotedStr(DM.TBEmpresaEMP_CNPJ.Value);
  Relatorio.ShowReport;
end;

//abre a ficha de venda (VEV03) e monta a lista de despesas (contas a pagar com numdocto placa/codigo).
procedure TFormVeiculosVendaFast.PrepararFicha(Codigo: Integer);
var S: String;
begin
  QY03.Close;
  QY03.ParamByName('codigo').AsInteger:=Codigo;
  QY03.Open;
  S:='';
  QY03A.Close;
  QY03A.ParamByName('numdocto').AsString:=QY03.FieldByName('VEV_PLACA').AsString+'/'+QY03.FieldByName('VEV_CODIGO').AsString;
  QY03A.Open;
  while not QY03A.Eof do
  begin
    S:=S+DateToStr(QY03A.FieldByName('PAG_DTEMISSAO').AsDateTime,FS)+'  '+
         AlignText(QY03A.FieldByName('PAG_DESCRICAO').AsString,' ',50,taLeft)+
         AlignText(Format('%m',[QY03A.FieldByName('PAG_VALOR').AsExtended]),' ',15,taRight)+#13#10;
    QY03A.Next;
  end;
  QY03A.Close;
  TfrxMemoView(frxReport3.FindObject('MemoQRMemo1')).Text:=S;
end;

end.