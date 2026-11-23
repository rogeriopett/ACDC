unit ChecklistsItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormChecklistsItens = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label21: TLabel;
    DBComboBox7: TDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChecklistsItens: TFormChecklistsItens;

implementation
uses DataMod, DB;
{$R *.dfm}

procedure TFormChecklistsItens.BitBtn1Click(Sender: TObject);
begin
  DM.TBChecklistsItens.Post;
  Close;
end;

procedure TFormChecklistsItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormChecklistsItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.TBChecklistsItens.State in [dsInsert, dsEdit] then
  DM.TBChecklistsItens.Cancel;
end;

procedure TFormChecklistsItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
