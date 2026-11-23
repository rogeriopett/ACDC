unit Calendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TFormCalendario = class(TForm)
    MonthCalendar1: TMonthCalendar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalendario: TFormCalendario;

implementation

uses DataMod;

{$R *.dfm}

procedure TFormCalendario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  Close;
end;

procedure TFormCalendario.FormCreate(Sender: TObject);
begin
  MonthCalendar1.Date:=DM.ServerDate;
  MonthCalendar1.EndDate:=DM.ServerDate;
end;

end.
