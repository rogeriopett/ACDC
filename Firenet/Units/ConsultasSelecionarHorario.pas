unit ConsultasSelecionarHorario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormConsultasSelecionarHorario = class(TForm)
    ListBox1: TListBox;
    MonthCalendar1: TMonthCalendar;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit1: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultasSelecionarHorario: TFormConsultasSelecionarHorario;

implementation

{$R *.dfm}

uses DataMod, DataMod2;

procedure TFormConsultasSelecionarHorario.BitBtn1Click(Sender: TObject);
begin

  Close;
end;

procedure TFormConsultasSelecionarHorario.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConsultasSelecionarHorario.ListBox1DblClick(Sender: TObject);
begin
  if ListBox1.ItemIndex > -1 then
  begin
    DM2.TBConsultasCOS_DATAINICIO.Value:=MonthCalendar1.Date;
    DM2.TBConsultasCOS_HORAINICIO.Value:=StrToTime(ListBox1.Items[ListBox1.ItemIndex]);
    Close;
  end;
end;

procedure TFormConsultasSelecionarHorario.MonthCalendar1DblClick(Sender: TObject);
var LS: TStringList;
begin
  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select COS_HORAINICIO from CONSULTAS where COS_DATAINICIO=:data order by COS_HORAINICIO');
  DM.QYAux.ParamByName('data').AsDate:=MonthCalendar1.Date;
  DM.QYAux.Open;
  LS:=TStringList.Create;
  while not DM.QYAux.Eof do
  begin
    LS.Add(DM.QYAux.FieldByName('COS_HORAINICIO').AsString);
    DM.QYAux.Next;
  end;
  DM.QYAux.Close;
  ListBox1.Clear;
  if LS.IndexOf('07:00:00')<0 then ListBox1.Items.Add('07:00:00');
  if LS.IndexOf('08:00:00')<0 then ListBox1.Items.Add('08:00:00');
  if LS.IndexOf('09:00:00')<0 then ListBox1.Items.Add('09:00:00');
  if LS.IndexOf('10:00:00')<0 then ListBox1.Items.Add('10:00:00');
  if LS.IndexOf('11:00:00')<0 then ListBox1.Items.Add('11:00:00');
  if LS.IndexOf('12:00:00')<0 then ListBox1.Items.Add('12:00:00');
  if LS.IndexOf('13:00:00')<0 then ListBox1.Items.Add('13:00:00');
  if LS.IndexOf('14:00:00')<0 then ListBox1.Items.Add('14:00:00');
  if LS.IndexOf('15:00:00')<0 then ListBox1.Items.Add('15:00:00');
  if LS.IndexOf('16:00:00')<0 then ListBox1.Items.Add('16:00:00');
  if LS.IndexOf('17:00:00')<0 then ListBox1.Items.Add('17:00:00');
  if LS.IndexOf('18:00:00')<0 then ListBox1.Items.Add('18:00:00');
  if LS.IndexOf('19:00:00')<0 then ListBox1.Items.Add('19:00:00');
  if LS.IndexOf('20:00:00')<0 then ListBox1.Items.Add('20:00:00');
  LS.Destroy;
end;

end.
