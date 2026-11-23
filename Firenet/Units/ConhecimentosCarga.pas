unit ConhecimentosCarga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, PngSpeedButton, StdCtrls, Mask, DBCtrls, PngBitBtn;

type
  TFormConhecimentosCarga = class(TForm)
    Label66: TLabel;
    DBComboBox12: TDBComboBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConhecimentosCarga: TFormConhecimentosCarga;

implementation
uses DataMod2, DB;
{$R *.dfm}

procedure TFormConhecimentosCarga.BitBtn1Click(Sender: TObject);
begin
  DM2.TBCteCarga.Post;
  Close;
end;

procedure TFormConhecimentosCarga.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormConhecimentosCarga.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormConhecimentosCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBCteCarga.State in [dsInsert, dsEdit] then
  DM2.TBCteCarga.Cancel;
end;

procedure TFormConhecimentosCarga.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
