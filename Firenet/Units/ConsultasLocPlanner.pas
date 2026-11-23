unit ConsultasLocPlanner;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBPlanner, Vcl.ComCtrls,
  Planner, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Grids, Vcl.DBGrids, DateUtils, Vcl.Buttons, PngBitBtn,
  Datasnap.DBClient, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormConsultasLocPlanner = class(TForm)
    DBPlanner1: TDBPlanner;
    StatusBar1: TStatusBar;
    DSConsultas: TDataSource;
    MonthCalendar1: TMonthCalendar;
    DBDaySource1: TDBDaySource;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    PngBitBtn1: TPngBitBtn;
    TBVendedoresTemp: TClientDataSet;
    TBVendedoresTempVEN_COR: TIntegerField;
    TBVendedoresTempVEN_NOME: TStringField;
    TBVendedoresTempVEN_CODIGO: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    DSVendedoresTemp: TDataSource;
    DBGrid1: TDBGrid;
    TBVendedoresTempVEN_STATUS: TStringField;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    TRConsultas: TFDTransaction;
    TBConsultas: TFDQuery;
    TBConsultasCOS_CODIGO: TIntegerField;
    TBConsultasCOS_FIM: TSQLTimeStampField;
    TBConsultasCOS_INICIO: TSQLTimeStampField;
    TBConsultasCOS_MEDICO: TIntegerField;
    TBConsultasCOS_STATUS: TStringField;
    TBConsultasCLI_FONE1: TStringField;
    TBConsultasCLI_NOME: TStringField;
    TBConsultasVEN_COR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBPlanner1PlannerDblClick(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
      ToSelPrecise: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBPlanner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure AtualizarSelecao;
  public
    { Public declarations }
  end;

var
  FormConsultasLocPlanner: TFormConsultasLocPlanner;
  Procurar: Boolean = False;

implementation
uses DataMod, Funcoes1, FuncoesFirenet, DataMod2;
{$R *.dfm}

procedure TFormConsultasLocPlanner.AtualizarSelecao;
var Vendedores: String;
  BM: TBookmark;
begin
  Vendedores:='0'; //zero nunca tem.
  BM:=TBVendedoresTemp.GetBookmark;
  TBVendedoresTemp.DisableControls;
  TBVendedoresTemp.First;
  while not TBVendedoresTemp.Eof do
  begin
    if TBVendedoresTempVEN_STATUS.Value='S' then
    Vendedores:=Vendedores+','+IntToStr(TBVendedoresTempVEN_CODIGO.Value);
    TBVendedoresTemp.Next;
  end;
  TBVendedoresTemp.EnableControls;
  TBVendedoresTemp.GotoBookmark(BM);
  TBConsultas.Close;
  TBConsultas.SQL.Clear;
  TBConsultas.SQL.Add('select COS_CODIGO, COS_FIM, COS_INICIO, COS_MEDICO, COS_STATUS, CLI_FONE1, CLI_NOME, VEN_COR from CONSULTAS '+
                      'left join CLIENTES on COS_CLIENTE=CLI_CODIGO '+
                      'left join VENDEDORES on COS_MEDICO=VEN_CODIGO '+
                      'where COS_INICIO between :datainicial and :datafinal and COS_MEDICO in ('+Vendedores+') '+
                      'order by COS_DATAINICIO, COS_HORAINICIO');
  //TBConsultas.ParamByName('vendedores').AsVariant:=Vendedores;
  if CheckBox2.Checked then
  begin
    TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date); //domingo.
    TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date); //sabado.
  end else
  begin
    TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date)+1; //segunda.
    TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date)-1; //sexta.
  end;
  TBConsultas.Open;
end;

procedure TFormConsultasLocPlanner.CheckBox1Click(Sender: TObject);
var h,m,s,ms: Word;
begin
  if CheckBox1.Checked then
  begin
    DBPlanner1.Display.DisplayStart:=0;
    DBPlanner1.Display.DisplayEnd:=47;
  end else
  begin
    DecodeTime(DM.TBParametrosPAR_HRCOMERCIALINICIO.Value,h,m,s,ms);
    DBPlanner1.Display.DisplayStart:=h * 2; //*2 pq cada hora no planner tem 2 linhas... entao se começa em 6 horas, o inicial será 12.
    DecodeTime(DM.TBParametrosPAR_HRCOMERCIALFIM.Value,h,m,s,ms);
    DBPlanner1.Display.DisplayEnd:=(h * 2)+1; //mais um pra pegar a linha dos 30 minutos tb.
  end;
end;

procedure TFormConsultasLocPlanner.CheckBox2Click(Sender: TObject);
begin
  //TBConsultas.Close;
  if CheckBox2.Checked then
  begin
    DBDaySource1.NumberOfDays:=7;
    DBDaySource1.Day:=PrimeiroDiaSemana(MonthCalendar1.Date);

    //TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date); //domingo.
    //TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date); //sabado.
  end else
  begin
    DBDaySource1.NumberOfDays:=5;
    DBDaySource1.Day:=PrimeiroDiaSemana(MonthCalendar1.Date)+1;
    //TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date)+1; //segunda.
    //TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date)-1; //sexta.
  end;
  AtualizarSelecao;
  //TBConsultas.Open;
end;

procedure TFormConsultasLocPlanner.CheckListBox1DrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  myColor: TColor;
  myBrush: TBrush;
begin
  with (Control as TCheckListBox) do
  begin
    if Checked[Index] then
    Canvas.Font.Color := clRed else
    begin
      if Selected[Index] then
      Canvas.Font.Color := clWhite else
      Canvas.Font.Color := clBlack;
    end;
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left, Rect.Top, (Control as TCheckListBox).Items[Index]);
  end;
end;

procedure TFormConsultasLocPlanner.DBCheckBox1Click(Sender: TObject);
begin
  //if DBCheckBox1.Checked then
  //DBCheckBox1.Caption:=DBCheckBox1.ValueChecked else
  //DBCheckBox1.Caption:=DBCheckBox1.ValueUnChecked;
end;

procedure TFormConsultasLocPlanner.DBDaySource1FieldsToItem(Sender: TObject; Fields: TFields; Item: TPlannerItem);
begin
  Item.TrackColor:=TColor(Fields.FieldByName('VEN_COR').AsInteger);
  if Fields.FieldByName('CLI_FONE1').AsString<>'' then
  Item.CaptionText:=Fields.FieldByName('CLI_FONE1').AsString else
  Item.CaptionText:='SEM FONE DEFINIDO';
  if Fields.FieldByName('COS_STATUS').AsString='A' then
  begin
    Item.CaptionBkg:=TColor(9109365);
    Item.CaptionBkgTo:=TColor(9109365);
  end else
  if Fields.FieldByName('COS_STATUS').AsString='B' then
  begin
    Item.CaptionBkg:=TColor(16773047);
    Item.CaptionBkgTo:=TColor(16773047);
  end else
  if Fields.FieldByName('COS_STATUS').AsString='C' then
  begin
    Item.CaptionBkg:=TColor(12303359);
    Item.CaptionBkgTo:=TColor(12303359);
  end;
end;

procedure TFormConsultasLocPlanner.DBGrid1ColExit(Sender: TObject);
begin
  //if DBGrid1.SelectedField.FieldName=DBCheckBox1.DataField then
  //DBCheckBox1.Visible:=False;
end;

procedure TFormConsultasLocPlanner.DBGrid1DblClick(Sender: TObject);
begin
  if TBVendedoresTemp.IsEmpty then Exit;
  if (TBVendedoresTempVEN_STATUS.Value='S') then
  begin
    TBVendedoresTemp.Edit;
    TBVendedoresTempVEN_STATUS.Value:='N';
    TBVendedoresTemp.Post;
  end else
  begin
    TBVendedoresTemp.Edit;
    TBVendedoresTempVEN_STATUS.Value:='S';
    TBVendedoresTemp.Post;
  end;
  AtualizarSelecao;
end;

procedure TFormConsultasLocPlanner.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
const IsChecked: array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  //pinta o fundo da celula com a cor do vendedor.
  if Column.Field=TBVendedoresTempVEN_COR then
  begin
    DBGrid1.Canvas.Font.Color:=TColor(TBVendedoresTempVEN_COR.Value);
    DBGrid1.Canvas.Brush.Color:=TColor(TBVendedoresTempVEN_COR.Value);
    DBGrid1.Canvas.FillRect(Rect);
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
  end;

  //coloca o checkbox em cada linha do grid.
  { TODO -orogerio : Verificar o uso de checkbox no dbgrid }
  {if (gdFocused in State) then
  begin

    if (Column.Field.FieldName=DBCheckBox1.DataField) then
    begin
      DBCheckBox1.Left:=Rect.Left+DBGrid1.Left+2;
      DBCheckBox1.Top:=Rect.Top+DBGrid1.Top+2;
      DBCheckBox1.Width:=Rect.Right-Rect.Left;
      DBCheckBox1.Height:=Rect.Bottom-Rect.Top;
      DBCheckBox1.Visible:=True;
    end
  end else
  begin
    if (Column.Field.FieldName=DBCheckBox1.DataField) then
    begin
      DrawRect:=Rect;
      InflateRect(DrawRect,-1,-1);
      //if Column.Field.AsBoolean=True then
      DrawState:=ISChecked[Column.Field.AsBoolean];
      DBGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
    end;
  end; }
end;

procedure TFormConsultasLocPlanner.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  //if (key = Chr(9)) then
  //Exit;
  //if (DBGrid1.SelectedField.FieldName=DBCheckBox1.DataField) then
  //begin
  //  DBCheckBox1.SetFocus;
  //  SendMessage(DBCheckBox1.Handle, WM_Char, word(Key), 0);
  //end;

  if TBVendedoresTemp.IsEmpty then Exit;
  if Key=#13 then
  begin
    Key:=#0;
    if TBVendedoresTempVEN_STATUS.Value='S' then
    begin
      TBVendedoresTemp.Edit;
      TBVendedoresTempVEN_STATUS.Value:='N';
      TBVendedoresTemp.Post;
    end else
    begin
      TBVendedoresTemp.Edit;
      TBVendedoresTempVEN_STATUS.Value:='S';
      TBVendedoresTemp.Post;
    end;
    AtualizarSelecao;
  end;
end;

procedure TFormConsultasLocPlanner.DBPlanner1ItemDblClick(Sender: TObject; Item: TPlannerItem);
begin
  if not TBConsultas.IsEmpty then
  begin
    Procurar:=True;
    Close;
  end;
end;

procedure TFormConsultasLocPlanner.DBPlanner1PlannerDblClick(Sender: TObject; Position, FromSel, FromSelPrecise, ToSel,
  ToSelPrecise: Integer);
var HoraInicio: String;
begin
  case FromSel of
    00: HoraInicio:='00:00:00';
    01: HoraInicio:='00:30:00';
    02: HoraInicio:='01:00:00';
    03: HoraInicio:='01:30:00';
    04: HoraInicio:='02:00:00';
    05: HoraInicio:='02:30:00';
    06: HoraInicio:='03:00:00';
    07: HoraInicio:='03:30:00';
    08: HoraInicio:='04:00:00';
    09: HoraInicio:='04:30:00';
    10: HoraInicio:='05:00:00';
    11: HoraInicio:='05:30:00';
    12: HoraInicio:='06:00:00';
    13: HoraInicio:='06:30:00';
    14: HoraInicio:='07:00:00';
    15: HoraInicio:='07:30:00';
    16: HoraInicio:='08:00:00';
    17: HoraInicio:='08:30:00';
    18: HoraInicio:='09:00:00';
    19: HoraInicio:='09:30:00';
    20: HoraInicio:='10:00:00';
    21: HoraInicio:='10:30:00';
    22: HoraInicio:='11:00:00';
    23: HoraInicio:='11:30:00';
    24: HoraInicio:='12:00:00';
    25: HoraInicio:='12:30:00';
    26: HoraInicio:='13:00:00';
    27: HoraInicio:='13:30:00';
    28: HoraInicio:='14:00:00';
    29: HoraInicio:='14:30:00';
    30: HoraInicio:='15:00:00';
    31: HoraInicio:='15:30:00';
    32: HoraInicio:='16:00:00';
    33: HoraInicio:='16:30:00';
    34: HoraInicio:='17:00:00';
    35: HoraInicio:='17:30:00';
    36: HoraInicio:='18:00:00';
    37: HoraInicio:='18:30:00';
    38: HoraInicio:='19:00:00';
    39: HoraInicio:='19:30:00';
    40: HoraInicio:='20:00:00';
    41: HoraInicio:='20:30:00';
    42: HoraInicio:='21:00:00';
    43: HoraInicio:='21:30:00';
    44: HoraInicio:='22:00:00';
    45: HoraInicio:='22:30:00';
    46: HoraInicio:='23:00:00';
    47: HoraInicio:='23:30:00';
  end;
  if MessageDlg('Deseja incluir um agendamento neste dia/horário? '+DateToStr(DBDaySource1.Day+Position)+' - '+HoraInicio,mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBConsultas.Insert;
    DM2.TBConsultasCOS_DATAINICIO.Value:=DBDaySource1.Day+Position;
    DM2.TBConsultasCOS_DATAFIM.Value:=DM2.TBConsultasCOS_DATAINICIO.Value;
    DM2.TBConsultasCOS_HORAINICIO.Value:=StrToTime(HoraInicio);
    DM2.TBConsultasCOS_HORAFIM.Value:=IncMinute(StrToTime(HoraInicio),DM.TBParametrosPAR_TEMPOPADRAO.Value);
    Close;
  end;
end;

procedure TFormConsultasLocPlanner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TBVendedoresTemp.Close;
  SalvarTamanhoForm(Self.Name,DM.UsuarioLogado,Self.Width,Self.Height,Self.Top,Self.Left);
end;

procedure TFormConsultasLocPlanner.FormCreate(Sender: TObject);
var h,m,s,ms: Word;
begin
  Procurar:=False;
  MaskEdit1.Text:=DateToStr(Date);
  DecodeTime(DM.TBParametrosPAR_HRCOMERCIALINICIO.Value,h,m,s,ms);
  DBPlanner1.Display.DisplayStart:=h * 2; //*2 pq cada hora no planner tem 2 linhas... entao se começa em 6 horas, o inicial será 12.
  DecodeTime(DM.TBParametrosPAR_HRCOMERCIALFIM.Value,h,m,s,ms);
  DBPlanner1.Display.DisplayEnd:=(h * 2)+1; //mais um pra pegar a linha dos 30 minutos tb.

  DBCheckBox1.Color:=DBGrid1.Color;
  DBCheckBox1.Caption:='';

  Shape1.Brush.Color:=TColor(9109365); //verde - Aberto.
  Shape2.Brush.Color:=TColor(16773047); //azul - Baixado.
  Shape3.Brush.Color:=TColor(12303359); //vermelho - Cancelado.

  RestaurarTamanhoForm(Self,DM.UsuarioLogado);

  //cria os dados do grid de vendedores.
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select VEN_CODIGO, VEN_COR, VEN_NOME from VENDEDORES where VEN_STATUS=''A'' and VEN_MOSTRARAGENDA=''S'' order by VEN_NOME');
  DM.QYAux.Open;
  TBVendedoresTemp.EmptyDataSet;
  while not DM.QYAux.Eof do
  begin
    TBVendedoresTemp.Insert;
    TBVendedoresTempVEN_CODIGO.Value:=DM.QYAux.FieldByName('VEN_CODIGO').AsInteger;
    TBVendedoresTempVEN_COR.Value:=DM.QYAux.FieldByName('VEN_COR').AsInteger;
    TBVendedoresTempVEN_NOME.Value:=DM.QYAux.FieldByName('VEN_NOME').AsString;
    TBVendedoresTempVEN_STATUS.Value:='S';
    TBVendedoresTemp.Post;
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;

  //TBConsultas.Close;
  //TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date)+1;
  //TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date)-1;
  //TBConsultas.Open;
  if not DM2.TBConsultas.IsEmpty then
  MonthCalendar1.Date:=DM2.TBConsultasCOS_DATAINICIO.Value;

  DBDaySource1.Day:=PrimeiroDiaSemana(MonthCalendar1.Date)+1;
  AtualizarSelecao;
end;

procedure TFormConsultasLocPlanner.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormConsultasLocPlanner.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    MonthCalendar1.Date:=StrToDate(MaskEdit1.Text);
    MonthCalendar1DblClick(Self);
  end;
end;

procedure TFormConsultasLocPlanner.MonthCalendar1DblClick(Sender: TObject);
begin
  TBConsultas.Close;
  if CheckBox2.Checked then
  begin
    TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date); //domingo.
    TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date); //sabado.
    DBDaySource1.Day:=PrimeiroDiaSemana(MonthCalendar1.Date);
  end else
  begin
    TBConsultas.ParamByName('datainicial').AsDate:=PrimeiroDiaSemana(MonthCalendar1.Date)+1; //segunda.
    TBConsultas.ParamByName('datafinal').AsDate:=UltimoDiaSemana(MonthCalendar1.Date)-1; //sexta.
    DBDaySource1.Day:=PrimeiroDiaSemana(MonthCalendar1.Date)+1;
  end;
  TBConsultas.Open;
end;

procedure TFormConsultasLocPlanner.PngBitBtn1Click(Sender: TObject);
begin
  MonthCalendar1.Date:=Now;
  MonthCalendar1DblClick(Self);
end;

initialization
  RegisterClass(TFormConsultasLocPlanner);

finalization
  UnRegisterClass(TFormConsultasLocPlanner);

end.
