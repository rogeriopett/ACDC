unit InputNumber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, PngBitBtn, System.UITypes;

type
  TFormInputNumber = class(TForm)
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputNumber: TFormInputNumber;
  AceitaVirgula: Boolean = False;
  Titulo, Etiqueta, DefaultValue, Retorno: String;
implementation

{$R *.dfm}

procedure TFormInputNumber.BitBtn1Click(Sender: TObject);
begin
  if Edit1.Text='' then
  begin
    MessageDlg(Label1.Caption,mtError,[mbOk],0);
    Exit;
  end;
  Retorno:=Edit1.Text;
  Close;
end;

procedure TFormInputNumber.BitBtn2Click(Sender: TObject);
begin
  Retorno:='';
  Close;
end;

procedure TFormInputNumber.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if AceitaVirgula then
  begin
    if not CharInSet(Key,['0'..'9',#8,#13,#44,#46]) then Key:=#0;
  end else
  begin
    if not CharInSet(Key,['0'..'9',#8,#13]) then Key:=#0;
  end;
  if Key=#46 then Key:=#44; //troca ponto por virgula.
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormInputNumber.FormCreate(Sender: TObject);
begin
  Retorno:='';
  AceitaVirgula:=False;
end;

procedure TFormInputNumber.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Retorno:='';
    Close;
  end;
end;

procedure TFormInputNumber.FormShow(Sender: TObject);
begin
  FormInputNumber.Caption:=Titulo;
  Label1.Caption:=Etiqueta;
  Edit1.Text:=DefaultValue;
end;

end.
