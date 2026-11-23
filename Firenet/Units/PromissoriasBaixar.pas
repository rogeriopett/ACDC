unit PromissoriasBaixar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, PngBitBtn, System.UITypes;

type
  TFormPromissoriasBaixar = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label1: TLabel;
    DBText4: TDBText;
    Label5: TLabel;
    Edit1: TEdit;
    DBText5: TDBText;
    Label6: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPromissoriasBaixar: TFormPromissoriasBaixar;

implementation
uses DataMod, DataMod2;
{$R *.dfm}

procedure TFormPromissoriasBaixar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormPromissoriasBaixar.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormPromissoriasBaixar.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormPromissoriasBaixar.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Confirma baixa da nota promissória?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM2.TBPromissorias.Edit;
    DM2.TBPromissoriasPRM_VALORBAIXADO.Value:=StrToCurr(Edit1.Text);
    DM2.TBPromissoriasPRM_STATUS.Value:='B';
    DM2.TBPromissorias.Post;
    Close;
  end;
end;

procedure TFormPromissoriasBaixar.FormCreate(Sender: TObject);
begin
  Edit1.SelectAll;
end;

end.


