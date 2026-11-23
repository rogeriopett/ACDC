unit AvaliacoesTurmas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBClient, Buttons, PngBitBtn, Grids, DBGrids,
  ExtCtrls, PngSpeedButton, System.UITypes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormAvaliacoesTurmas = class(TForm)
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    TBAvaliacoes: TClientDataSet;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText3: TDBText;
    DBText2: TDBText;
    DSQtdeAlunos: TDataSource;
    DSAvaliacoes: TDataSource;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    DSMatriculas: TDataSource;
    DBCheckBox1: TDBCheckBox;
    Edit2: TEdit;
    SpeedButton1: TPngSpeedButton;
    TRMatriculas: TFDTransaction;
    QYMatriculas: TFDQuery;
    QYQtdeAlunos: TFDQuery;
    TRQtdeAlunos: TFDTransaction;
    QYMatriculasMAT_CODIGO: TIntegerField;
    QYMatriculasMAT_CLIENTE: TIntegerField;
    QYMatriculasMAT_STATUS: TStringField;
    QYMatriculasMAT_APROVADO: TStringField;
    QYMatriculasCLI_NOME: TStringField;
    QYQtdeAlunosQTDE: TLargeintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TBAvaliacoesBeforePost(DataSet: TDataSet);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvaliacoesTurmas: TFormAvaliacoesTurmas;

implementation
uses DataMod, DataMod2, AvaliacoesTipoLoc, DataModSearch;
{$R *.dfm}

procedure TFormAvaliacoesTurmas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  Key:=UpCase(Key);
  if Key=#46 then Key:=#44;
  if Key=#13 then
  begin
    if (DBGrid1.SelectedIndex=0) or
       (DBGrid1.SelectedIndex=1) or
       (DBGrid1.SelectedIndex=2) then
    DBGrid1.SelectedIndex:=DBGrid1.SelectedIndex+1 else
    begin
      if not TBAvaliacoes.Eof then
      TBAvaliacoes.Next else
      TBAvaliacoes.First;
    end;
  end;
end;

procedure TFormAvaliacoesTurmas.Edit1Enter(Sender: TObject);
begin
  DM.CodigosOld:=(Sender as TEdit).Text;
end;

procedure TFormAvaliacoesTurmas.Edit1Exit(Sender: TObject);
begin
  if (Sender as TEdit).Text='' then
  begin
    Edit1.Clear;
    Edit2.Clear;
    Exit;
  end;
  if DM.CodigosOld=(Sender as TEdit).Text then
  Exit;
  if (Sender as TEdit).Text<>'' then
  begin
    DMS.QYAvaliacoesTipo.Close;
    DMS.QYAvaliacoesTipo.ParamByName('codigo').AsInteger:=StrToInt((Sender as TEdit).Text);
    DMS.QYAvaliacoesTipo.Open;
    if not DMS.QYAvaliacoesTipo.IsEmpty then
    begin
      Edit1.Text:=IntToStr(DMS.QYAvaliacoesTipoAVT_CODIGO.Value);
      Edit2.Text:=DMS.QYAvaliacoesTipoAVT_DESCRICAO.Value;
    end else
    begin
      Edit1.Clear;
      Edit2.Clear;
      MessageDlg('Tipo de avaliação não encontrado.',mtInformation,[mbOk],0);
      (Sender as TEdit).SetFocus;
    end;
    DMS.QYAvaliacoesTipo.Close;
  end;
end;

procedure TFormAvaliacoesTurmas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (not (ssCTRL in Shift)) and (Key=VK_RETURN) then
  Perform(WM_NEXTDLGCTL,0,0);
  if (ssCTRL in Shift) and (Key=VK_RETURN) then //CTRL + ENTER.
  SpeedButton1.Click;
end;

procedure TFormAvaliacoesTurmas.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  if Key=#8 then DM.CodigosOld:='';
end;

procedure TFormAvaliacoesTurmas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //QYMatriculas.DataSource:=nil;
  QYMatriculas.Close;

  //QYQtdeAlunos.DataSource:=nil;
  QYQtdeAlunos.Close;
end;

procedure TFormAvaliacoesTurmas.FormCreate(Sender: TObject);
begin
  //QYQtdeAlunos.DataSource:=DM2.DSTurmas;
  QYQtdeAlunos.Open;

  //QYMatriculas.DataSource:=DM2.DSTurmas;
  QYMatriculas.Open;

  TBAvaliacoes.CreateDataSet;
  DBCheckBox1.DataField:='Compoe Media';
  QYMatriculas.First;
  while not QYMatriculas.Eof do
  begin
    TBAvaliacoes.Insert;
    TBAvaliacoes.FieldByName('Matricula').AsInteger:=QYMatriculasMAT_CODIGO.Value;
    TBAvaliacoes.FieldByName('Aluno').AsInteger:=QYMatriculasMAT_CLIENTE.Value;
    TBAvaliacoes.FieldByName('Nome').AsString:=QYMatriculasCLI_NOME.Value;
    TBAvaliacoes.FieldByName('Compoe Media').AsString:='S';
    TBAvaliacoes.Post;
    QYMatriculas.Next;
  end;
  TBAvaliacoes.First;
  DBGrid1.Columns[0].Width:=65;
  DBGrid1.Columns[1].Width:=65;
  DBGrid1.Columns[2].Width:=240;
  DBGrid1.Columns[3].Width:=65;
  DBGrid1.Columns[4].Width:=80;
  DBGrid1.Columns[4].PickList.Add('S');
  DBGrid1.Columns[4].PickList.Add('N');
  DBGrid1.Columns[0].ReadOnly:=True;
  DBGrid1.Columns[1].ReadOnly:=True;
  DBGrid1.Columns[2].ReadOnly:=True;
end;

procedure TFormAvaliacoesTurmas.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TFormAvaliacoesTurmas.PngBitBtn1Click(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    MessageDlg('Selecione o tipo de avaliação.',mtWarning,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Confirma a gravação das notas inseridas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    //DM2.TBAvaliacoes.DataSource:=DM2.DSMatriculas;
    TBAvaliacoes.First;
    while not TBAvaliacoes.Eof do
    begin
      if not TBAvaliacoes.FieldByName('Nota').IsNull then
      begin
        DM2.TBMatriculas.Close;
        DM2.TBMatriculas.ParamByName('codigo').AsInteger:=TBAvaliacoes.FieldByName('Matricula').AsInteger;
        DM2.TBMatriculas.Open;

        DM2.TBAvaliacoes.Insert;
        DM2.TBAvaliacoesAVA_NOTA.Value:=TBAvaliacoes.FieldByName('Nota').AsFloat;
        DM2.TBAvaliacoesAVA_CONTAMEDIA.Value:=TBAvaliacoes.FieldByName('Compoe Media').AsString;
        DM2.TBAvaliacoesAVA_TIPO.Value:=StrToInt(Edit1.Text);
        DM2.TBAvaliacoes.Post;
      end;
      TBAvaliacoes.Next;
    end;
    //DM2.TBAvaliacoes.DataSource:=nil;
    MessageDlg('Notas cadastradas!',mtInformation,[mbOk],0);
    Close;
  end;
end;

procedure TFormAvaliacoesTurmas.PngBitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Cancelar a inclusão de notas?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    Close;
  end;
end;

procedure TFormAvaliacoesTurmas.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormAvaliacoesTipoLoc, FormAvaliacoesTipoLoc);
  FormAvaliacoesTipoLoc.ShowModal;
  if AvaliacoesTipoLoc.Procurar then
  begin
    Edit1.Text:=IntToStr(FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_CODIGO.Value);
    Edit2.Text:=FormAvaliacoesTipoLoc.QYAvaliacoesTipoAVT_DESCRICAO.Value;
  end;
  FormAvaliacoesTipoLoc.Free;
  FormAvaliacoesTipoLoc:=nil;
end;

procedure TFormAvaliacoesTurmas.TBAvaliacoesBeforePost(DataSet: TDataSet);
begin
  if (TBAvaliacoes.FieldByName('Compoe Media').AsString<>'S') and
     (TBAvaliacoes.FieldByName('Compoe Media').AsString<>'N') then
  TBAvaliacoes.FieldByName('Compoe Media').AsString:='S';
end;

end.
