unit TurmasAlunos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBSBtn, ExtCtrls, Menus, DB, System.UITypes, Grids, DBGrids,
  DBCtrls, StdCtrls, ImgList, PngImageList, PngSpeedButton, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormTurmasAlunos = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    dbSBtnFirst1: TDBSpeedButton;
    dbSBtnPrior1: TDBSpeedButton;
    dbSBtnNext1: TDBSpeedButton;
    dbSBtnLast1: TDBSpeedButton;
    SpeedButton5: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    SpeedButton2: TPngSpeedButton;
    SpeedButton3: TPngSpeedButton;
    DBGrid1: TDBGrid;
    DSMatriculas: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Alterarostatusdasmatrculas1: TMenuItem;
    Abertas1: TMenuItem;
    Baixadas1: TMenuItem;
    Desistentes1: TMenuItem;
    Prematrcula1: TMenuItem;
    N1: TMenuItem;
    SpeedButton1: TPngSpeedButton;
    SpeedButton4: TPngSpeedButton;
    SpeedButton6: TPngSpeedButton;
    PopupMenu1: TPopupMenu;
    AlterarstatusparaAberta1: TMenuItem;
    AlterarstatusparaBaixada1: TMenuItem;
    AlterarstatusparaDesistente1: TMenuItem;
    AlterarstatusparaPrmatrcula1: TMenuItem;
    PngImageList1: TPngImageList;
    DSQtdeAlunos: TDataSource;
    Label2: TLabel;
    DBText3: TDBText;
    QYMatriculas: TFDQuery;
    TRMatriculas: TFDTransaction;
    TRQtdeAlunos: TFDTransaction;
    QYQtdeAlunos: TFDQuery;
    QYMatriculasMAT_CODIGO: TIntegerField;
    QYMatriculasMAT_CLIENTE: TIntegerField;
    QYMatriculasMAT_STATUS: TStringField;
    QYMatriculasMAT_APROVADO: TStringField;
    QYMatriculasCLI_NOME: TStringField;
    QYQtdeAlunosQTDE: TLargeintField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure Abertas1Click(Sender: TObject);
    procedure Baixadas1Click(Sender: TObject);
    procedure Desistentes1Click(Sender: TObject);
    procedure Prematrcula1Click(Sender: TObject);
    procedure AlterarstatusparaAberta1Click(Sender: TObject);
    procedure AlterarstatusparaBaixada1Click(Sender: TObject);
    procedure AlterarstatusparaDesistente1Click(Sender: TObject);
    procedure AlterarstatusparaPrmatrcula1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasAlunos: TFormTurmasAlunos;

implementation
uses DataMod2, Funcoes1, DataMod;
{$R *.dfm}

procedure TFormTurmasAlunos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DBGrid1.Columns.SaveToFile(GetTempDir+'FormTurmasAlunos.txt');

  //QYMatriculas.DataSource:=nil;
  QYMatriculas.Close;

  //QYQtdeAlunos.DataSource:=nil;
  QYQtdeAlunos.Close;
end;

procedure TFormTurmasAlunos.FormCreate(Sender: TObject);
begin
  if FileExists(GetTempDir+'FormTurmasAlunos.txt') then
  DBGrid1.Columns.LoadFromFile(GetTempDir+'FormTurmasAlunos.txt');

  //QYMatriculas.DataSource:=DM2.DSTurmas;
  QYMatriculas.Open;

  //QYQtdeAlunos.DataSource:=DM2.DSTurmas;
  QYQtdeAlunos.Open;
end;

procedure TFormTurmasAlunos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormTurmasAlunos.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTurmasAlunos.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormTurmasAlunos.Abertas1Click(Sender: TObject);
begin
  if MessageDlg('Alterar o status de todas as matrículas dessa turma para Aberta?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYMatriculas.First;
    while not QYMatriculas.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
      DM2.TBMatriculas.Open;
      DM2.TBMatriculas.Edit;
      DM2.TBMatriculasMAT_STATUS.Value:='A';
      DM2.TBMatriculas.Post;
      QYMatriculas.Next;
    end;
    QYMatriculas.Close;
    QYMatriculas.Open;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmasAlunos.Baixadas1Click(Sender: TObject);
begin
  if MessageDlg('Alterar o status de todas as matrículas dessa turma para Baixada?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYMatriculas.First;
    while not QYMatriculas.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
      DM2.TBMatriculas.Open;
      DM2.TBMatriculas.Edit;
      DM2.TBMatriculasMAT_STATUS.Value:='B';
      DM2.TBMatriculas.Post;
      QYMatriculas.Next;
    end;
    QYMatriculas.Close;
    QYMatriculas.Open;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmasAlunos.Desistentes1Click(Sender: TObject);
begin
  if MessageDlg('Alterar o status de todas as matrículas dessa turma para Desistente?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYMatriculas.First;
    while not QYMatriculas.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
      DM2.TBMatriculas.Open;
      DM2.TBMatriculas.Edit;
      DM2.TBMatriculasMAT_STATUS.Value:='D';
      DM2.TBMatriculas.Post;
      QYMatriculas.Next;
    end;
    QYMatriculas.Close;
    QYMatriculas.Open;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmasAlunos.Prematrcula1Click(Sender: TObject);
begin
  if MessageDlg('Alterar o status de todas as matrículas dessa turma para Pré matrícula?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    QYMatriculas.First;
    while not QYMatriculas.Eof do
    begin
      DM2.TBMatriculas.Close;
      DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
      DM2.TBMatriculas.Open;
      DM2.TBMatriculas.Edit;
      DM2.TBMatriculasMAT_STATUS.Value:='P';
      DM2.TBMatriculas.Post;
      QYMatriculas.Next;
    end;
    QYMatriculas.Close;
    QYMatriculas.Open;
    MessageDlg('Processo concluído.',mtInformation,[mbOk],0);
  end;
end;

procedure TFormTurmasAlunos.AlterarstatusparaAberta1Click(Sender: TObject);
begin
  DM2.TBMatriculas.Close;
  DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
  DM2.TBMatriculas.Open;
  DM2.TBMatriculas.Edit;
  DM2.TBMatriculasMAT_STATUS.Value:='A';
  DM2.TBMatriculas.Post;
  QYMatriculas.Close;
  QYMatriculas.Open;
end;

procedure TFormTurmasAlunos.AlterarstatusparaBaixada1Click(
  Sender: TObject);
begin
  DM2.TBMatriculas.Close;
  DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
  DM2.TBMatriculas.Open;
  DM2.TBMatriculas.Edit;
  DM2.TBMatriculasMAT_STATUS.Value:='B';
  DM2.TBMatriculas.Post;
  QYMatriculas.Close;
  QYMatriculas.Open;
end;

procedure TFormTurmasAlunos.AlterarstatusparaDesistente1Click(
  Sender: TObject);
begin
  DM2.TBMatriculas.Close;
  DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
  DM2.TBMatriculas.Open;
  DM2.TBMatriculas.Edit;
  DM2.TBMatriculasMAT_STATUS.Value:='D';
  DM2.TBMatriculas.Post;
  QYMatriculas.Close;
  QYMatriculas.Open;
end;

procedure TFormTurmasAlunos.AlterarstatusparaPrmatrcula1Click(
  Sender: TObject);
begin
  DM2.TBMatriculas.Close;
  DM2.TBMatriculas.ParamByName('codigo').AsInteger:=QYMatriculasMAT_CODIGO.Value;
  DM2.TBMatriculas.Open;
  DM2.TBMatriculas.Edit;
  DM2.TBMatriculasMAT_STATUS.Value:='P';
  DM2.TBMatriculas.Post;
  QYMatriculas.Close;
  QYMatriculas.Open;
end;

initialization
  RegisterClass(TFormTurmasAlunos);

finalization
  UnRegisterClass(TFormTurmasAlunos);

end.
