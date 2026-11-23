unit ClientesAlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, PngBitBtn, DBCtrls, ExtCtrls, System.UITypes;

type
  TFormClientesAlterarSenha = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    Label4: TLabel;
    DBText1: TDBText;
    Bevel2: TBevel;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientesAlterarSenha: TFormClientesAlterarSenha;

implementation
uses DataMod, MD5;
{$R *.dfm}

procedure TFormClientesAlterarSenha.BitBtn1Click(Sender: TObject);
begin
  if (Edit2.Text='') and (Edit3.Text='') then
  begin
    MessageDlg('Digite a nova senha.',mtWarning,[mbOk],0);
    Edit2.SetFocus;
    Exit;
  end;
  if (Edit2.Text<>Edit3.Text) then
  begin
    MessageDlg('Confirmação da nova senha não confere.',mtError,[mbOk],0);
    Edit2.SetFocus;
    Edit2.SelectAll;
    Exit;
  end;
  try
    DM.TBClientes.Edit;
    DM.TBClientesCLI_PASSWORD.Value:=MD5Print(MD5String(Edit2.Text));
    DM.TBClientes.Post;
    Edit2.Text:='';
    Edit3.Text:='';
    MessageDlg('Senha alterada com sucesso.',mtInformation,[mbOk],0);
    Close;
    except on exception do
    begin
      MessageDlg('Erro na alteração de senha.',mtError,[mbOk],0);
    end;
  end; //try.
end;

procedure TFormClientesAlterarSenha.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormClientesAlterarSenha.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;
end;

procedure TFormClientesAlterarSenha.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

end.
