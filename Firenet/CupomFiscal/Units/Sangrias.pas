unit Sangrias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, PngBitBtn, DBCtrls,
  Data.DB;

type
  TFormSangrias = class(TForm)
    PngBitBtn1: TPngBitBtn;
    PngBitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText4: TDBText;
    procedure PngBitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSangrias: TFormSangrias;

implementation
uses DataMod;
{$R *.dfm}

procedure TFormSangrias.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',#8,#13,#44,#46]) then Key:=#0;
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormSangrias.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormSangrias.PngBitBtn1Click(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    MessageDlg('Informe o valor da sangria.',mtWarning,[mbOk],0);
    Exit;
  end;
  if MessageDlg('Deseja realizar a sangria de '+Edit1.Text+'?',mtConfirmation,[mbOk,mbCancel],0)=mrOk then
  begin
    DM.TBSangrias.Insert;
    DM.TBSangriasSAN_VALOR.Value:=StrToFloat(Edit1.Text);
    DM.TBSangrias.Post;
    DM.TBMovimentos.Edit;
    DM.TBMovimentosMOV_TOTALSANGRIA.Value:=DM.TBMovimentosMOV_TOTALSANGRIA.Value+StrToFloat(Edit1.Text);
    DM.TBMovimentos.Post;
    Close;
  end;
end;

procedure TFormSangrias.PngBitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
