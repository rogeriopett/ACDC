unit MarkupsItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, PngBitBtn, Vcl.ExtCtrls, System.UITypes;

type
  TFormMarkupsItens = class(TForm)
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMarkupsItens: TFormMarkupsItens;

implementation
uses DataMod2, DB;
{$R *.dfm}

procedure TFormMarkupsItens.BitBtn1Click(Sender: TObject);
begin
  if DM2.TBMarkupsItensMKI_PORCENTAGEM.Value<=0 then
  begin
    MessageDlg('A porcentagem não pode ser menor ou igual a zero.',mtError,[mbOk],0);
    DBEdit5.SelectAll;
    DBEdit5.SetFocus;
    Exit;
  end;
  DM2.TBMarkupsItens.Post;
  Close;
end;

procedure TFormMarkupsItens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormMarkupsItens.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
end;

procedure TFormMarkupsItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DM2.TBMarkupsItens.State in [dsInsert, dsEdit] then
  DM2.TBMarkupsItens.Cancel;
end;

procedure TFormMarkupsItens.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
