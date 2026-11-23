unit UsuariosRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, ExtCtrls, PngBitBtn;

type
  TFormUsuariosRel = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUsuariosRel: TFormUsuariosRel;

implementation
uses DataMod, Funcoes1;

{$R *.DFM}

procedure TFormUsuariosRel.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          MaskEdit1.Enabled:=False;
          MaskEdit2.Enabled:=False;
        end;
    01: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
        end;
    02: begin
          MaskEdit1.Enabled:=True;
          MaskEdit2.Enabled:=True;
        end;
  end; //case.
end;

procedure TFormUsuariosRel.FormCreate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  MaskEdit1.Text:=DateToStr(PrimeiroDia(Date),FS);
  MaskEdit2.Text:=DateToStr(UltimoDia(Date),FS);
end;

procedure TFormUsuariosRel.BitBtn1Click(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
    00: begin
          Application.CreateForm(TFormUsuariosQ01, FormUsuariosQ01);
          FormUsuariosQ01.IBQuery1.Active:=True;
          FormUsuariosQ01.QuickRep1.PreviewModal;
          FormUsuariosQ01.Free;
          FormUsuariosQ01:=nil;
        end;
  end; //case.
end;

procedure TFormUsuariosRel.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit1.Clear;
end;

procedure TFormUsuariosRel.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#8 then MaskEdit2.Clear;
end;

procedure TFormUsuariosRel.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormUsuariosRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;    
end;

end.
