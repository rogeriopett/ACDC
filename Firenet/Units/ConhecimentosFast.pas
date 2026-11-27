//Atualizacoes:
//2026.11.24 - DACTEs no FastReport: aereo (frxReport7), rodoviario lotacao (frxReport8) e rodoviario fracionada (frxReport9), antigos ConhecimentosQ01*; procedures GerarDACTE e Texto.
unit ConhecimentosFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, frxClass, frxDBSet, frxExportPDF,
  frxExportXLSX, frxExportBaseDialog, frxExportCSV, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  frCoreClasses, frxBarcode;

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
    frxReport7: TfrxReport;
    frxReport8: TfrxReport;
    frxReport9: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    frxDBDataset7a: TfrxDBDataset;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    QY07a: TFDQuery;
    TR07a: TFDTransaction;
    QY07b: TFDQuery;
    TR07b: TFDTransaction;
    QY07c: TFDQuery;
    TR07c: TFDTransaction;
  private
    { Private declarations }
    procedure Texto(Relatorio: TfrxReport; const Nome, Valor: String);
  public
    { Public declarations }
    procedure CriarTabela;
    procedure GerarDACTE(Relatorio: TfrxReport; Codigo: Integer; Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
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

//texto montado no Delphi (cargas, veiculos e tributos), sem avaliar expressoes do FastReport.
procedure TFormConhecimentosFast.Texto(Relatorio: TfrxReport; const Nome, Valor: String);
var M: TfrxMemoView;
begin
  M:=TfrxMemoView(Relatorio.FindObject(Nome));
  if M=nil then Exit;
  M.AllowExpressions:=False;
  M.Text:=Valor;
end;

//DACTE: frxReport7 (aereo), frxReport8 (rodoviario lotacao) ou frxReport9 (rodoviario fracionada).
//visualiza ou imprime (PAR_CTEVISUALIZARDACTE) e/ou gera o PDF em ArquivoPDF.
procedure TFormConhecimentosFast.GerarDACTE(Relatorio: TfrxReport; Codigo: Integer; Visualizar, GerarPDF: Boolean; ArquivoPDF: String);
const
  CargaAereo: array[0..17] of String = ('MemoQRLabel151','MemoQRLabel8','MemoQRLabel9','MemoQRLabel155',
    'MemoQRLabel156','MemoQRLabel157','MemoQRLabel158','MemoQRLabel159','MemoQRLabel160','MemoQRLabel161',
    'MemoQRLabel162','MemoQRLabel163','MemoQRLabel164','MemoQRLabel165','MemoQRLabel166','MemoQRLabel167',
    'MemoQRLabel168','MemoQRLabel169');
  CargaRodoviario: array[0..17] of String = ('MemoQRLabel151','MemoQRLabel141','MemoQRLabel79','MemoQRLabel155',
    'MemoQRLabel156','MemoQRLabel157','MemoQRLabel158','MemoQRLabel159','MemoQRLabel160','MemoQRLabel161',
    'MemoQRLabel162','MemoQRLabel163','MemoQRLabel164','MemoQRLabel165','MemoQRLabel166','MemoQRLabel167',
    'MemoQRLabel168','MemoQRLabel169');
  Veiculos: array[0..11] of String = ('MemoQRLabel119','MemoQRLabel154','MemoQRLabel178','MemoQRLabel181',
    'MemoQRLabel152','MemoQRLabel170','MemoQRLabel179','MemoQRLabel182',
    'MemoQRLabel153','MemoQRLabel177','MemoQRLabel180','MemoQRLabel183');
var I: Integer;
  M: TfrxMemoView;

  function NomeCarga(N: Integer): String;
  begin
    if Relatorio=frxReport7 then Result:=CargaAereo[N] else Result:=CargaRodoviario[N];
  end;

begin
  QY07.Close;
  QY07.ParamByName('codigo').AsInteger:=Codigo;
  QY07.Open;
  QY07a.Close;
  QY07a.ParamByName('codigo').AsInteger:=Codigo;
  QY07a.Open;

  //informacoes da carga (maximo 9 elementos).
  for I:=0 to 17 do Texto(Relatorio,NomeCarga(I),'');
  QY07b.Close;
  QY07b.ParamByName('codigo').AsInteger:=Codigo;
  QY07b.Open;
  I:=0;
  while (not QY07b.Eof) and (I<9) do
  begin
    Texto(Relatorio,NomeCarga(I*2),QY07b.FieldByName('CCG_TIPOMEDIDA').AsString);
    Texto(Relatorio,NomeCarga(I*2+1),QY07b.FieldByName('CCG_QUANTIDADE').AsString+' '+
      Copy(QY07b.FieldByName('CCG_UNIDADEMEDIDA').AsString,6,Length(QY07b.FieldByName('CCG_UNIDADEMEDIDA').AsString)));
    Inc(I);
    QY07b.Next;
  end;
  QY07b.Close;

  //veiculos do conjunto transportador (rodoviario lotacao, maximo 3).
  if Relatorio=frxReport8 then
  begin
    for I:=0 to 11 do Texto(Relatorio,Veiculos[I],'');
    QY07c.Close;
    QY07c.ParamByName('codigo').AsInteger:=Codigo;
    QY07c.Open;
    I:=0;
    while (not QY07c.Eof) and (I<3) do
    begin
      Texto(Relatorio,Veiculos[I*4],  QY07c.FieldByName('CTV_TIPOVEICULO').AsString);
      Texto(Relatorio,Veiculos[I*4+1],QY07c.FieldByName('CTV_PLACA').AsString);
      Texto(Relatorio,Veiculos[I*4+2],QY07c.FieldByName('CTV_ESTADO').AsString);
      Texto(Relatorio,Veiculos[I*4+3],QY07c.FieldByName('CTV_RNTRC').AsString);
      Inc(I);
      QY07c.Next;
    end;
    QY07c.Close;
  end;

  Texto(Relatorio,'MemoQRLabel150',QY07.FieldByName('CTE_INFOADICFISCO').AsString+
    'O valor aproximado dos tributos incidentes sobre o preço deste serviço é de '+
    Format('%m',[QY07.FieldByName('CTE_TOTALTRIBUTOS').AsExtended])+' ('+
    FloatToStr(QY07.FieldByName('CTE_ALIQTRIBUTOS').AsExtended)+'%) Fonte: IBPT');

  //aviso de homologacao so fora do ambiente de producao.
  M:=TfrxMemoView(Relatorio.FindObject('MemoQRLabel174'));
  if M<>nil then M.Visible:=(DM.TBParametrosPAR_TIPOAMBIENTECTE.Value<>'1');

  Relatorio.Variables['TITULO']:=QuotedStr('DACTE');
  Relatorio.Variables['USUARIO']:=QuotedStr(DM.UsuarioLogin);

  if Visualizar then
  begin
    if DM.TBParametrosPAR_CTEVISUALIZARDACTE.Value='S' then
    Relatorio.ShowReport else
    begin
      Relatorio.PrintOptions.ShowDialog:=False;
      Relatorio.PrepareReport;
      Relatorio.Print;
    end;
  end;

  if GerarPDF then
  begin
    Relatorio.PrepareReport;
    frxPDFExport1.FileName:=ArquivoPDF;
    frxPDFExport1.ShowDialog:=False;
    frxPDFExport1.OpenAfterExport:=False;
    Relatorio.Export(frxPDFExport1);
  end;
end;

end.
