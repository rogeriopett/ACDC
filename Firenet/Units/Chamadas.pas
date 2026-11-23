unit Chamadas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Buttons, DBSBtn, ExtCtrls,
  Menus, ImgList, PngImageList, PngSpeedButton, Data.DB, System.ImageList,
  System.UITypes;

type
  TFormChamadas = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Localizar1: TMenuItem;
    N1: TMenuItem;
    N3: TMenuItem;
    Fechar1: TMenuItem;
    Navegacao1: TMenuItem;
    Relatorios1: TMenuItem;
    Relatorios2: TMenuItem;
    Ajuda1: TMenuItem;
    Ajuda2: TMenuItem;
    Panel2: TPanel;
    Bevel4: TBevel;
    Fechar1Button: TPngSpeedButton;
    Bevel7: TBevel;
    Bevel1: TBevel;
    Relatorios2Button: TPngSpeedButton;
    Localizar1Button: TPngSpeedButton;
    DBText1: TDBText;
    DBText2: TDBText;
    Ajuda2Button: TPngSpeedButton;
    ReabrirChamada1Button: TPngSpeedButton;
    FecharChamada1Button: TPngSpeedButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText7: TDBText;
    DBText8: TDBText;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    FecharChamada1: TMenuItem;
    ReabrirChamada1: TMenuItem;
    PrimeiroRegistro1Button: TDBSpeedButton;
    RegistroAnterior1Button: TDBSpeedButton;
    ProximoRegistro1Button: TDBSpeedButton;
    UltimoRegistro1Button: TDBSpeedButton;
    PrimeiroRegistro1: TMenuItem;
    RegistroAnterior1: TMenuItem;
    ProximoRegistro1: TMenuItem;
    UltimoRegistro1: TMenuItem;
    MarcarPresencaATodos1: TMenuItem;
    MarcarPresencaATodos1Button: TPngSpeedButton;
    PngImageList1: TPngImageList;
    FecharTodasAsChamadas1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Fechar1Click(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure Relatorios2Click(Sender: TObject);
    procedure Ajuda2Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FecharChamada1Click(Sender: TObject);
    procedure ReabrirChamada1Click(Sender: TObject);
    procedure MarcarPresencaATodos1Click(Sender: TObject);
    procedure FecharTodasAsChamadas1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChamadas: TFormChamadas;

implementation
uses DataMod, DataMod2, Funcoes1, TurmasLoc, Main;
{$R *.dfm}

procedure TFormChamadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBChamadas.State in [dsInsert, dsEdit] then
  begin
    MessageDlg('Salve os dados antes de fechar.',mtWarning,[mbOk],0);
    Action:=caNone;
  end;
end;

procedure TFormChamadas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormChamadas.FormShow(Sender: TObject);
begin
  FormMain.DesabilitarControles(FormChamadas);
end;

procedure TFormChamadas.Fechar1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormChamadas.Localizar1Click(Sender: TObject);
begin
  Application.CreateForm(TFormTurmasLoc, FormTurmasLoc);
  FormTurmasLoc.ShowModal;
  if TurmasLoc.Procurar then
  begin
    DM2.TBTurmas.Close;
    DM2.TBTurmas.ParamByName('codigo').AsInteger:=FormTurmasLoc.QYTurmasTUR_CODIGO.Value;
    DM2.TBTurmas.Open;
  end;
  FormTurmasLoc.Free;
  FormTurmasLoc:=nil;
end;

procedure TFormChamadas.Relatorios2Click(Sender: TObject);
begin
  MessageDlg('Ainda não disponível.',mtInformation,[mbOk],0);
end;

procedure TFormChamadas.Ajuda2Click(Sender: TObject);
begin
  MostrarAjuda('');
end;

procedure TFormChamadas.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const IsChecked: array[Boolean] of Integer=(DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (gdFocused in State) then
  begin
    if (Column.Field.FieldName=DBCheckBox1.DataField) then
    begin
     DBCheckBox1.Left:=Rect.Left+DBGrid2.Left+2;
     DBCheckBox1.Top:=Rect.Top+DBGrid2.Top+2;
     DBCheckBox1.Width:=Rect.Right-Rect.Left;
     DBCheckBox1.Height:=Rect.Bottom-Rect.Top;
     DBCheckBox1.Visible:=True;
    end;
  end else
  begin
    if (Column.Field.FieldName=DBCheckBox1.DataField) then
    begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);
      if Column.Field.AsString='P' then
      DrawState:=IsChecked[True] else
      DrawState:=IsChecked[False];
//      DrawState:=IsChecked[Column.Field.AsBoolean];
      DBGrid2.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid2.Canvas.Handle,DrawRect,DFC_BUTTON,DrawState);
    end;
  end;
end;

procedure TFormChamadas.DBGrid2ColExit(Sender: TObject);
begin
  if DBGrid2.SelectedField.FieldName=DBCheckBox1.DataField then
  DBCheckBox1.Visible:=False;
end;

procedure TFormChamadas.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if DM2.TBChamadas.IsEmpty then Exit;
  if Key=#13 then
  begin
    Key:=#0;
    AbortIf(DM2.TBCalendariosCAL_STATUSCHAMADA.Value='F','A chamada para este dia já foi fechada.');

    if (DM2.TBChamadasCHA_PRESENCA.Value='X') or (DM2.TBChamadasCHA_PRESENCA.Value='') then
    begin
      DM2.TBChamadas.Edit;
      DM2.TBChamadasCHA_PRESENCA.Value:='P';
      DM2.TBChamadas.Post;
    end else
    if (DM2.TBChamadasCHA_PRESENCA.Value='P') then
    begin
      DM2.TBChamadas.Edit;
      DM2.TBChamadasCHA_PRESENCA.Value:='X';
      DM2.TBChamadas.Post;
    end;
  end;
end;

procedure TFormChamadas.DBGrid2DblClick(Sender: TObject);
begin
  if DM2.TBChamadas.IsEmpty then Exit;
  AbortIf(DM2.TBCalendariosCAL_STATUSCHAMADA.Value='F','A chamada para este dia já foi fechada.');

  if (DM2.TBChamadasCHA_PRESENCA.Value='X') or (DM2.TBChamadasCHA_PRESENCA.Value='') then
  begin
    if DM2.TBChamadasMAT_STATUS.Value='A' then
    begin
      DM2.TBChamadas.Edit;
      DM2.TBChamadasCHA_PRESENCA.Value:='P';
      DM2.TBChamadas.Post;
    end;
  end else
  if (DM2.TBChamadasCHA_PRESENCA.Value='P') then
  begin
    if DM2.TBChamadasMAT_STATUS.Value='A' then
    begin
      DM2.TBChamadas.Edit;
      DM2.TBChamadasCHA_PRESENCA.Value:='X';
      DM2.TBChamadas.Post;
    end;
  end;
end;

procedure TFormChamadas.FecharChamada1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,                        'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,                   'Nenhuma data selecionada.');
  AbortIf(DM2.TBCalendariosCAL_STATUSCHAMADA.Value='F','Esta chamada já está fechada.');

  if MessageDlg('Deseja realmente fechar a chamada para o encontro número '+IntToStr(DM2.TBCalendariosCAL_CONTADOR.Value)+', dia '+DateToStr(DM2.TBCalendariosCAL_DATA.Value,FS)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCalendarios.Edit;
    DM2.TBCalendariosCAL_STATUSCHAMADA.Value:='F';
    DM2.TBCalendarios.Post;
  end;
end;

procedure TFormChamadas.FecharTodasAsChamadas1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,     'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');

  if MessageDlg('Deseja realmente fechar todas as chamadas desta turma?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCalendarios.First;
    while not DM2.TBCalendarios.Eof do
    begin
      if DM2.TBCalendariosCAL_STATUSCHAMADA.Value<>'F' then
      begin
        DM2.TBCalendarios.Edit;
        DM2.TBCalendariosCAL_STATUSCHAMADA.Value:='F';
        DM2.TBCalendarios.Post;
      end;
      DM2.TBCalendarios.Next;
    end;
  end;
end;

procedure TFormChamadas.ReabrirChamada1Click(Sender: TObject);
begin
  AbortIf(DM2.TBTurmas.IsEmpty,'Nenhuma turma selecionada.');
  AbortIf(DM2.TBCalendarios.IsEmpty,'Nenhuma data selecionada.');
  AbortIf(DM2.TBCalendariosCAL_STATUSCHAMADA.Value='A','Esta chamada já está aberta.');

  if MessageDlg('Deseja realmente reabrir a chamada para o encontro número '+IntToStr(DM2.TBCalendariosCAL_CONTADOR.Value)+', dia '+DateToStr(DM2.TBCalendariosCAL_DATA.Value,FS)+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBCalendarios.Edit;
    DM2.TBCalendariosCAL_STATUSCHAMADA.Value:='A';
    DM2.TBCalendarios.Post;
  end;
end;

procedure TFormChamadas.MarcarPresencaATodos1Click(Sender: TObject);
begin
  AbortIf(DM2.TBChamadas.IsEmpty,'Nenhum aluno para marcar presença.');
  AbortIf(DM2.TBCalendariosCAL_STATUSCHAMADA.Value='F','Esta chama já está fechada.');

  DM2.TBChamadas.First;
  while not DM2.TBChamadas.Eof do
  begin
    if DM2.TBChamadasMAT_STATUS.Value='A' then
    begin
      DM2.TBChamadas.Edit;
      DM2.TBChamadasCHA_PRESENCA.Value:='P';
      DM2.TBChamadas.Post;
    end;
    DM2.TBChamadas.Next;
  end;
end;

initialization
  RegisterClass(TFormChamadas);

finalization
  UnRegisterClass(TFormChamadas);

end.
