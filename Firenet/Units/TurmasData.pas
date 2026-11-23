unit TurmasData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, PngBitBtn;

type
  TFormTurmasData = class(TForm)
    DBEdit1: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTurmasData: TFormTurmasData;
  Inserindo: Boolean;
implementation
uses DataMod2, Turmas;
{$R *.dfm}

procedure TFormTurmasData.BitBtn2Click(Sender: TObject);
begin
  DM2.TBCalendarios.Cancel;
  Close;
end;

procedure TFormTurmasData.BitBtn1Click(Sender: TObject);
begin
  DM2.TBCalendarios.Post;
  if Inserindo then
  FormTurmas.GerarListagemAlunosChamadaUmDia;
  Close;
end;

procedure TFormTurmasData.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    DM2.TBCalendariosCAL_DATA.Clear;
  end;
end;

end.
