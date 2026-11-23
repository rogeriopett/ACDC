unit ContratosPartes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, Menus, Mask, DBCtrls,
  PngSpeedButton;

type
  TFormContratosPartes = class(TForm)
    SpeedButton9: TPngSpeedButton;
    Label1: TLabel;
    Label19: TLabel;
    DBText1: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    Label22: TLabel;
    DBText6: TDBText;
    DBEdit5: TDBEdit;
    DBEdit32: TDBEdit;
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label2: TLabel;
    DBText7: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    DBText5: TDBText;
    Label5: TLabel;
    DBText8: TDBText;
    Label6: TLabel;
    DBText9: TDBText;
    Label7: TLabel;
    DBText10: TDBText;
    Label8: TLabel;
    DBText11: TDBText;
    Label9: TLabel;
    DBText12: TDBText;
    Label10: TLabel;
    DBText13: TDBText;
    DBText14: TDBText;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContratosPartes: TFormContratosPartes;

implementation
uses DataMod2, DataMod, DB;
{$R *.dfm}

procedure TFormContratosPartes.BitBtn1Click(Sender: TObject);
begin
  DM2.TBContratosPartes.Post;
  Close;
end;

procedure TFormContratosPartes.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormContratosPartes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBContratosPartes.State in [dsInsert, dsEdit] then
  DM2.TBContratosPartes.Cancel;
end;

procedure TFormContratosPartes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
