unit ExerciciosTurmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Grids, DBGrids,
  DBCtrls, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormExerciciosTurmas = class(TForm)
    TBExercicios: TClientDataSet;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    DSQtdeAlunos: TDataSource;
    DSExercicios: TDataSource;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    DSMatriculas: TDataSource;
    Label5: TLabel;
    QYMatriculas: TFDQuery;
    TRMatriculas: TFDTransaction;
    TRQtdeAlunos: TFDTransaction;
    QYQtdeAlunos: TFDQuery;
    QYQtdeAlunosQTDE: TLargeintField;
    QYMatriculasMAT_CODIGO: TIntegerField;
    QYMatriculasMAT_CLIENTE: TIntegerField;
    QYMatriculasMAT_STATUS: TStringField;
    QYMatriculasMAT_APROVADO: TStringField;
    QYMatriculasCLI_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExerciciosTurmas: TFormExerciciosTurmas;

implementation
uses DataMod, DataMod2, Funcoes1;
{$R *.dfm}

procedure TFormExerciciosTurmas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44;
  if Key=#13 then
  begin
    if (DBGrid1.SelectedIndex=0) or
       (DBGrid1.SelectedIndex=1) or
       (DBGrid1.SelectedIndex=2) then
    DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1 else
    begin
      if not TBExercicios.Eof then
      TBExercicios.Next else
      TBExercicios.First;
    end;
  end;
end;

procedure TFormExerciciosTurmas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //QYMatriculas.DataSource:=nil;
  QYMatriculas.Close;

  //QYQtdeAlunos.DataSource:=nil;
  QYQtdeAlunos.Close;
end;

procedure TFormExerciciosTurmas.FormCreate(Sender: TObject);
begin
  //QYQtdeAlunos.DataSource:=DM2.DSTurmas;
  QYQtdeAlunos.Open;

  //QYMatriculas.DataSource:=DM2.DSTurmas;
  QYMatriculas.Open;

  TBExercicios.CreateDataSet;
  QYMatriculas.First;
  while not QYMatriculas.Eof do
  begin
    TBExercicios.Insert;
    TBExercicios.FieldByName('Matricula').AsInteger:=QYMatriculasMAT_CODIGO.Value;
    TBExercicios.FieldByName('Aluno').AsInteger:=QYMatriculasMAT_CLIENTE.Value;
    TBExercicios.FieldByName('Nome').AsString:=QYMatriculasCLI_NOME.Value;
    TBExercicios.Post;
    QYMatriculas.Next;
  end;
  TBExercicios.First;
  DBGrid1.Columns[0].Width:=65;
  DBGrid1.Columns[1].Width:=65;
  DBGrid1.Columns[2].Width:=250;
  DBGrid1.Columns[3].Width:=65;
  DBGrid1.Columns[4].Width:=65;
  DBGrid1.Columns[0].ReadOnly:=True;
  DBGrid1.Columns[1].ReadOnly:=True;
  DBGrid1.Columns[2].ReadOnly:=True;
end;

procedure TFormExerciciosTurmas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    if MessageDlg('Cancelar a inclusão de notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
    begin
      Close;
    end;
  end;
end;

procedure TFormExerciciosTurmas.PngBitBtn1Click(Sender: TObject);
begin
  AbortIf(Edit1.Text='','Digite a descrição para as notas.');

  if MessageDlg('Confirma a gravação das notas inseridas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //DM2.TBExercicios.DataSource:=DM2.DSMatriculas;
    TBExercicios.First;
    while not TBExercicios.Eof do
    begin
      if not TBExercicios.FieldByName('Exercicio').IsNull then
      begin
        DM2.TBMatriculas.Close;
        DM2.TBMatriculas.ParamByName('codigo').AsInteger:=TBExercicios.FieldByName('Matricula').AsInteger;
        DM2.TBMatriculas.Open;

        DM2.TBExercicios.Insert;
        DM2.TBExerciciosEXE_NOTA.Value:=TBExercicios.FieldByName('Exercicio').AsFloat;
        DM2.TBExerciciosEXE_NOTAREVISAO.Value:=TBExercicios.FieldByName('Revisao').AsFloat;
        DM2.TBExerciciosEXE_DESCRICAO.Value:=Edit1.Text;
        DM2.TBExercicios.Post;
      end;
      TBExercicios.Next;
    end;
    //DM2.TBExercicios.DataSource:=nil;
    MessageDlg('Notas cadastradas!',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormExerciciosTurmas.PngBitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Cancelar a inclusão de notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Close;
  end;
end;

end.
