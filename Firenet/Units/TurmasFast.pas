//Atualizacoes:
//2026.11.23 - Relatorio TUR01 (turmas por professor), migrado do TurmasQ01 (QuickReport).
//2026.11.23 - Relatorio TUR02 (ficha de chamada), migrado do TurmasQ08 (QuickReport); frxReport2BeforePrint monta os dias pelo calendario da turma.
//2026.11.23 - Relatorio TUR03 (ficha de chamada preenchida), migrado do TurmasQ09 (QuickReport); MontarCalendarioTurma comum as duas fichas.
//2026.11.23 - Relatorio TUR04 (frequencia), migrado do TurmasQ03 (QuickReport); DiasDaTurma e ContarTurmas.
//2026.11.23 - Relatorios TUR05 (turmas por professor e periodo, TurmasQ04), TUR06 (conteudos, TurmasQ05), TUR07 (turmas sem calendario, TurmasQ06) e TUR08 (planilha de notas, TurmasQ07).
unit TurmasFast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  frCoreClasses, frxExportCSV, frxExportXLSX, frxExportBaseDialog, frxExportPDF;

type
  TFormTurmasFast = class(TForm)
    frxPDFExport1: TfrxPDFExport;
    frxXLSXExport1: TfrxXLSXExport;
    frxCSVExport1: TfrxCSVExport;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    QY01: TFDQuery;
    TR01: TFDTransaction;
    Memo1: TMemo;
    frxReport2: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    QY02: TFDQuery;
    TR02: TFDTransaction;
    QY02a: TFDQuery;
    TR02a: TFDTransaction;
    frxReport3: TfrxReport;
    frxDBDataset3: TfrxDBDataset;
    QY03: TFDQuery;
    TR03: TFDTransaction;
    QY03a: TFDQuery;
    TR03a: TFDTransaction;
    QY03b: TFDQuery;
    TR03b: TFDTransaction;
    QY03c: TFDQuery;
    TR03c: TFDTransaction;
    frxReport4: TfrxReport;
    frxDBDataset4: TfrxDBDataset;
    QY04: TFDQuery;
    TR04: TFDTransaction;
    frxReport5: TfrxReport;
    frxDBDataset5: TfrxDBDataset;
    QY05: TFDQuery;
    TR05: TFDTransaction;
    frxReport6: TfrxReport;
    frxDBDataset6: TfrxDBDataset;
    QY06: TFDQuery;
    TR06: TFDTransaction;
    frxReport7: TfrxReport;
    frxDBDataset7: TfrxDBDataset;
    QY07: TFDQuery;
    TR07: TFDTransaction;
    frxReport8: TfrxReport;
    frxDBDataset8: TfrxDBDataset;
    QY08: TFDQuery;
    TR08: TFDTransaction;
    QY08a: TFDQuery;
    TR08a: TFDTransaction;
    QY08b: TFDQuery;
    TR08b: TFDTransaction;
    procedure frxReport2BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport3BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport4BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport6BeforePrint(Sender: TfrxReportComponent);
    procedure frxReport8BeforePrint(Sender: TfrxReportComponent);
  private
    { Private declarations }
    FCalCodigo: array[1..45] of Integer;  //CAL_CODIGO de cada coluna da ficha.
    FCalFechado: array[1..45] of Boolean; //chamada feita (CAL_STATUSCHAMADA='F') em cada coluna.
    procedure MontarCalendarioTurma(Relatorio: TfrxReport; Matriculas, Calendario: TFDQuery; Colunas: Integer);
    function DiasDaTurma(DataSet: TDataSet): String;
  public
    { Public declarations }
    Preenchida: Boolean; //planilha de notas (TUR08): True mostra as notas e a media do aluno.
    function ContarTurmas(DataSet: TDataSet): Integer;
  end;

var
  FormTurmasFast: TFormTurmasFast;

implementation

uses System.DateUtils;

{$R *.dfm}

procedure TFormTurmasFast.MontarCalendarioTurma(Relatorio: TfrxReport; Matriculas, Calendario: TFDQuery; Colunas: Integer);
// Cabecalho de cada turma nas fichas de chamada (TUR02 e TUR03), como no TurmasQ08/TurmasQ09: os dias da semana
// e, nas colunas MemoDia/MemoMes, o dia do calendario da turma, com a cor pelo tipo do dia, e o mes na primeira
// coluna e quando muda. As colunas sem aula ficam em branco. Guarda em FCalCodigo/FCalFechado o calendario de
// cada coluna, que a ficha preenchida usa para buscar a chamada do aluno.
const
  Meses: array[1..12] of String = ('JAN','FEV','MAR','ABR','MAI','JUN','JUL','AGO','SET','OUT','NOV','DEZ');
var
  Tipo: String;
  Coluna, MesAnterior: Integer;
  Data: TDateTime;
  MemoDia, MemoMes: TfrxMemoView;
begin
  //dias da semana da turma.
  TfrxMemoView(Relatorio.FindObject('MemoDias')).Text:=DiasDaTurma(Matriculas);

  //calendario da turma.
  Calendario.Close;
  Calendario.ParamByName('turma').AsInteger:=Matriculas.FieldByName('MAT_TURMA').AsInteger;
  Calendario.Open;

  MesAnterior:=0;
  for Coluna:=1 to Colunas do
  begin
    FCalCodigo[Coluna]:=0;
    FCalFechado[Coluna]:=False;
    MemoDia:=TfrxMemoView(Relatorio.FindObject('MemoDia'+IntToStr(Coluna)));
    MemoMes:=TfrxMemoView(Relatorio.FindObject('MemoMes'+IntToStr(Coluna)));
    if Calendario.Eof then
    begin
      //colunas sem aula ficam em branco.
      MemoDia.Text:='';
      MemoMes.Text:='';
      MemoMes.Frame.Typ:=[];
      Continue;
    end;

    if Calendario.FindField('CAL_CODIGO')<>nil then
    begin
      FCalCodigo[Coluna]:=Calendario.FieldByName('CAL_CODIGO').AsInteger;
      FCalFechado[Coluna]:=Calendario.FieldByName('CAL_STATUSCHAMADA').AsString='F';
    end;

    Data:=Calendario.FieldByName('CAL_DATA').AsDateTime;
    Tipo:=Calendario.FieldByName('CAL_TIPO').AsString;
    MemoDia.Text:=FormatDateTime('dd',Data);
    if Tipo='FERIADO' then MemoDia.Font.Color:=clRed else
    if Tipo='COMPENSADA' then MemoDia.Font.Color:=clGreen else
    if Tipo='OUTRO' then MemoDia.Font.Color:=clBlue else
    MemoDia.Font.Color:=clBlack;

    //o mes aparece na primeira coluna e quando muda, com uma linha a esquerda.
    if MonthOf(Data)<>MesAnterior then
    begin
      MemoMes.Text:=Meses[MonthOf(Data)];
      MemoMes.Frame.Typ:=[ftLeft];
    end else
    begin
      MemoMes.Text:='';
      MemoMes.Frame.Typ:=[];
    end;
    MesAnterior:=MonthOf(Data);
    Calendario.Next;
  end;
end;

procedure TFormTurmasFast.frxReport2BeforePrint(Sender: TfrxReportComponent);
// Ficha de chamada (TUR02): 45 colunas de dias, como o TurmasQ08.
// Roda no MemoTurma, o primeiro objeto do GroupHeader1, para os demais ja sairem preenchidos.
begin
  if Sender.Name='MemoTurma' then
  MontarCalendarioTurma(frxReport2,QY02,QY02a,45);
end;

procedure TFormTurmasFast.frxReport3BeforePrint(Sender: TfrxReportComponent);
// Ficha de chamada preenchida (TUR03): 43 colunas de dias e, nas duas ultimas, o total de presencas (P)
// e de faltas (X) do aluno, como o TurmasQ09. Roda no MemoTurma (primeiro objeto do GroupHeader1) e no
// MemoMatricula (primeiro objeto do MasterData1), para os demais ja sairem preenchidos.
var
  Coluna: Integer;
  Memo: TfrxMemoView;
begin
  if Sender.Name='MemoTurma' then
  begin
    MontarCalendarioTurma(frxReport3,QY03,QY03a,43);
    //colunas P e X: sem mes.
    for Coluna:=44 to 45 do
    begin
      Memo:=TfrxMemoView(frxReport3.FindObject('MemoMes'+IntToStr(Coluna)));
      Memo.Text:='';
      Memo.Frame.Typ:=[];
    end;
  end else
  if Sender.Name='MemoMatricula' then
  begin
    //chamadas do aluno: P ou X so nos dias com a chamada feita.
    QY03b.Close;
    QY03b.ParamByName('matricula').AsInteger:=QY03.FieldByName('MAT_CODIGO').AsInteger;
    QY03b.Open;
    for Coluna:=1 to 43 do
    begin
      Memo:=TfrxMemoView(frxReport3.FindObject('MemoCel'+IntToStr(Coluna)));
      if FCalFechado[Coluna] and QY03b.Locate('CHA_CALENDARIO',FCalCodigo[Coluna],[]) then
      Memo.Text:=QY03b.FieldByName('CHA_PRESENCA').AsString else
      Memo.Text:='';
    end;

    //totais de presencas e faltas do aluno (chamadas feitas).
    QY03c.Close;
    QY03c.ParamByName('matricula').AsInteger:=QY03.FieldByName('MAT_CODIGO').AsInteger;
    QY03c.Open;
    TfrxMemoView(frxReport3.FindObject('MemoCel44')).Text:=QY03c.FieldByName('PRESENCAS').AsString;
    TfrxMemoView(frxReport3.FindObject('MemoCel45')).Text:=QY03c.FieldByName('FALTAS').AsString;
  end;
end;
function TFormTurmasFast.DiasDaTurma(DataSet: TDataSet): String;
// Dias da semana da turma (TUR_DOMINGO..TUR_SABADO = 'S'), como "SEG - QUA - SEX".
begin
  Result:='';
  if DataSet.FieldByName('TUR_DOMINGO').AsString='S' then Result:=Result+'DOM - ';
  if DataSet.FieldByName('TUR_SEGUNDA').AsString='S' then Result:=Result+'SEG - ';
  if DataSet.FieldByName('TUR_TERCA').AsString='S' then Result:=Result+'TER - ';
  if DataSet.FieldByName('TUR_QUARTA').AsString='S' then Result:=Result+'QUA - ';
  if DataSet.FieldByName('TUR_QUINTA').AsString='S' then Result:=Result+'QUI - ';
  if DataSet.FieldByName('TUR_SEXTA').AsString='S' then Result:=Result+'SEX - ';
  if DataSet.FieldByName('TUR_SABADO').AsString='S' then Result:=Result+'SAB - ';
  if Result<>'' then Delete(Result,Length(Result)-2,3);
end;

function TFormTurmasFast.ContarTurmas(DataSet: TDataSet): Integer;
// Quantidade de turmas (MAT_TURMA) de uma consulta ordenada por turma, para o "Total Turmas" do TUR04.
var Turma: Integer;
begin
  Result:=0;
  Turma:=-1;
  DataSet.DisableControls;
  try
    DataSet.First;
    while not DataSet.Eof do
    begin
      if DataSet.FieldByName('MAT_TURMA').AsInteger<>Turma then
      begin
        Inc(Result);
        Turma:=DataSet.FieldByName('MAT_TURMA').AsInteger;
      end;
      DataSet.Next;
    end;
    DataSet.First;
  finally
    DataSet.EnableControls;
  end;
end;

procedure TFormTurmasFast.frxReport4BeforePrint(Sender: TfrxReportComponent);
// Relatorio de frequencia (TUR04): dias da semana no cabecalho de cada turma. Presencas, faltas,
// aulas dadas e percentual ja vem calculados no QY04. Roda no MemoTurma, o primeiro objeto do GroupHeader1.
begin
  if Sender.Name='MemoTurma' then
  TfrxMemoView(frxReport4.FindObject('MemoDias')).Text:=DiasDaTurma(QY04);
end;
procedure TFormTurmasFast.frxReport6BeforePrint(Sender: TfrxReportComponent);
// Relatorio de conteudos (TUR06): dias da semana no cabecalho de cada turma.
// Roda no MemoTurma, o primeiro objeto do GroupHeader1.
begin
  if Sender.Name='MemoTurma' then
  TfrxMemoView(frxReport6.FindObject('MemoDias')).Text:=DiasDaTurma(QY06);
end;

procedure TFormTurmasFast.frxReport8BeforePrint(Sender: TfrxReportComponent);
// Planilha de notas (TUR08), como o TurmasQ07: dias da semana no cabecalho de cada turma e, na
// planilha preenchida (Preenchida=True), as 15 primeiras notas de exercicios do aluno e a media.
// Roda no MemoTurma (primeiro objeto do GroupHeader1) e no MemoMatricula (primeiro do MasterData1).
var
  Nota: Integer;
  Memo: TfrxMemoView;
begin
  if Sender.Name='MemoTurma' then
  TfrxMemoView(frxReport8.FindObject('MemoDias')).Text:=DiasDaTurma(QY08) else
  if Sender.Name='MemoMatricula' then
  begin
    if Preenchida then
    begin
      QY08a.Close;
      QY08a.ParamByName('matricula').AsInteger:=QY08.FieldByName('MAT_CODIGO').AsInteger;
      QY08a.Open;
      QY08b.Close;
      QY08b.ParamByName('matricula').AsInteger:=QY08.FieldByName('MAT_CODIGO').AsInteger;
      QY08b.Open;
    end;
    for Nota:=1 to 15 do
    begin
      Memo:=TfrxMemoView(frxReport8.FindObject('MemoNota'+IntToStr(Nota)));
      if Preenchida and not QY08a.Eof then
      begin
        Memo.Text:=FormatFloat('#00.00',QY08a.FieldByName('EXE_NOTA').AsExtended);
        QY08a.Next;
      end else
      Memo.Text:='';
    end;
    Memo:=TfrxMemoView(frxReport8.FindObject('MemoMedia'));
    if Preenchida and not QY08b.FieldByName('MEDIA').IsNull then
    Memo.Text:=FormatFloat('#00.00',QY08b.FieldByName('MEDIA').AsExtended) else
    Memo.Text:='';
  end;
end;
end.
