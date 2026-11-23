unit AlterarSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, PngBitBtn, System.UITypes;

type
  TFormAlterarSenha = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel1: TBevel;
    Image1: TImage;
    Label4: TLabel;
    DBText1: TDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Bevel2: TBevel;
    PngBitBtn1: TPngBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure PngBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    CancelarFecharAplicacao: Boolean;
  end;

var
  FormAlterarSenha: TFormAlterarSenha;

implementation
uses DataMod, Main, Funcoes1, MD5;
{$R *.dfm}

procedure TFormAlterarSenha.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormAlterarSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //quando o usuario faz login e a senha está expirada, se clicar no cancelar fecha o sistema.
  //se esta expirada, é pra trocar a senha mesmo.
  if CancelarFecharAplicacao=True then
  Application.Terminate;
end;

procedure TFormAlterarSenha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#27 then
  begin
    Key:=#0;
    Close;
  end;
end;

procedure TFormAlterarSenha.PngBitBtn1Click(Sender: TObject);
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
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=MD5Print(MD5String(Edit2.Text));
    DM.TBUsuariosUSU_SENHAEXPIRADA.Value:='N';
    DM.TBUsuarios.Post;
    Edit1.Text:='';
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

procedure TFormAlterarSenha.BitBtn1Click(Sender: TObject);
begin
  if MD5Print(MD5String(Edit1.Text))<>DM.TBUsuariosUSU_PASSWORD.Value then
  begin
    MessageDlg('Senha Atual não confere.',mtError,[mbOk],0);
    Edit1.SetFocus;
    Edit1.SelectAll;
    Exit;
  end;
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
    DM.TBUsuarios.Edit;
    DM.TBUsuariosUSU_PASSWORD.Value:=MD5Print(MD5String(Edit2.Text));
    DM.TBUsuariosUSU_SENHAEXPIRADA.Value:='N';
    DM.TBUsuarios.Post;
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    MessageDlg('Senha alterada com sucesso.',mtInformation,[mbOk],0);
    CancelarFecharAplicacao:=False; //nao fecha a aplicacao depois de salvar a senha.
    Close;
    except on exception do
    begin
      MessageDlg('Erro na alteração de senha.',mtError,[mbOk],0);
    end;
  end; //try.
end;

procedure TFormAlterarSenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    Key:=#0;
    Perform(WM_NEXTDLGCTL,0,0);
  end;  
end;

end.
