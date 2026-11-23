unit LotesGerar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, ExtCtrls, DBCtrls, Mask, System.UITypes;

type
  TFormLotesGerar = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Label3: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    MaskEdit1: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLotesGerar: TFormLotesGerar;

implementation
uses DataMod, Funcoes1;
{$R *.dfm}

procedure TFormLotesGerar.BitBtn1Click(Sender: TObject);
var I: Integer;
begin
  AbortIf((Edit1.Text='') or (Edit2.Text=''),'Informe o código inicial e final.');
  AbortIf(Edit1.Text=Edit2.Text,'O código inicial e final não podem ser iguais.');
  AbortIf(StrToInt(Edit2.Text) < StrToInt(Edit1.Text),'O codigo do lote final não pode ser menor que o inicial.');

  try
    StrToDate(MaskEdit1.Text)
    except on exception do
    begin
      MessageDlg('Data inválida.',mtError,[mbOk],0);
      Exit;
    end;
  end;
  if MessageDlg('Confirma a geração dos lotes '+Edit1.Text+' a '+Edit2.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBLotes.DisableControls;
    for I:=StrToInt(Edit1.Text) to StrToInt(Edit2.Text) do
    begin
      DM.TBLotes.Insert;
      DM.TBLotesLOT_LOTE.Value:=IntToStr(I);
      DM.TBLotesLOT_VALIDADE.Value:=StrToDate(MaskEdit1.Text);
      DM.TBLotesLOT_PROPRIO.Value:='S';
      DM.TBLotesLOT_QUANTIDADE.Value:=StrToFloat(Edit3.Text);
      DM.TBLotes.Post;
    end;
    DM.TBLotes.EnableControls;
    Close;
  end;
end;

procedure TFormLotesGerar.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormLotesGerar.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormLotesGerar.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
end;

procedure TFormLotesGerar.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key,['0'..'9',#8,#13,#44]) then Key:=#0;
end;

procedure TFormLotesGerar.FormCreate(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  MaskEdit1.Text:=DateToStr(Date);
end;

procedure TFormLotesGerar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

initialization
  RegisterClass(TFormLotesGerar);

finalization
  UnRegisterClass(TFormLotesGerar);

end.
