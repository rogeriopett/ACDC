unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, jpeg, ShellAPI, PngBitBtn, pngimage,
  PngSpeedButton, System.UITypes, Data.DB, Vcl.Menus, Vcl.Themes, Vcl.Styles;

type
  TFormLogin = class(TForm)
    Label2: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Edit2: TEdit;
    BitBtn1: TPngBitBtn;
    BitBtn2: TPngBitBtn;
    Edit1: TEdit;
    Bevel2: TBevel;
    Label3: TLabel;
    Image2: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    PngSpeedButton1: TPngSpeedButton;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
    procedure Cadastro1Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarDataModulo;
  public
    { Public declarations }
    LoginOK: Boolean;
  end;

var
  FormLogin: TFormLogin;
  Fechar: Boolean = False;

implementation
uses DataMod, DataMod2, DataModSearch, AtualizacoesBase, Main, IniFiles, Funcoes1, MD5, AlterarSenha, Sysdba, IB,
  Conexoes, Cadastro, TelasAtualizarComponentes, UsuariosAcessosAtualizar;
{$R *.DFM}

procedure ShakeForm;
var I: Byte;
begin
  //move 50 pra esquerda e 50 pra direita e volta pro centro.
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
  //repete o processo.
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
  //repete o processo ultima vez.
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left+1;
    Application.ProcessMessages;
  end;
  for I:=1 to 50 do
  begin
    FormLogin.Left:=FormLogin.Left-1;
    Application.ProcessMessages;
  end;
end;

procedure TFormLogin.Cadastro1Click(Sender: TObject);
var Senha: String;
begin
  repeat
    Senha:=PasswordInputBox('Acesso restrito','Digite a senha de acesso:');
    if not (Senha=TodaysPassword) then MessageDlg('Senha incorreta!!!',mtError,[mbOk],0);
  until (Senha=TodaysPassword) or (Senha='');
  if Senha=TodaysPassword then
  begin
    DM.TBEmpresa.Open;
    Application.CreateForm(TFormCadastro, FormCadastro);
    FormCadastro.ShowModal;
    FormCadastro.Free;
    FormCadastro:=nil;
    DM.TBEmpresa.Close;
  end;
end;

procedure TFormLogin.ConfigurarDataModulo;
begin
  DM.FDConnection1.Connected:=False;
  FreeAndNil(DM2);
  FreeAndNil(DMS);

  DM.FDConnection1.Params.Clear;
  DM.FDConnection1.Params.Add('User_Name='+DM.BaseUsuario);
  DM.FDConnection1.Params.Add('Password='+DM.BaseSenha);
  DM.FDConnection1.Params.Add('Database='+DM.BaseBase);
  DM.FDConnection1.Params.Add('Server='+DM.BaseServidor);
  DM.FDConnection1.Params.Add('Port=3050');
  DM.FDConnection1.Params.Add('Protocol=TCPIP');
  DM.FDConnection1.Params.Add('DriverID=FB');

  if not DM.FDConnection1.Connected then
  begin
    try
      DM.FDConnection1.Connected:=True;
      DM.TBVersao.Open;

      AtualizarBaseDados;

      Application.CreateForm(TDM2, DM2);
      Application.CreateForm(TDMS, DMS);
      DM.AbrirTabelas;

      except on E:Exception do
      begin
        MessageDlg(E.Message,mtError,[mbOk],0);
        raise;
      end;
    end; //try.
  end;
end;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
begin
  try
    ConfigurarDataModulo;
  except
    Exit;
  end;

  if DM.AtualizarComponentes then
  begin
    //MessageDlg('Será atualizado a listagem de componentes de acesso.',mtInformation,[mbOk],0);
    Application.CreateForm(TFormTelasAtualizarComponentes, FormTelasAtualizarComponentes);
    FormTelasAtualizarComponentes.ShowModal;
    FormTelasAtualizarComponentes.Free;
    FormTelasAtualizarComponentes:=nil;
    DM.AtualizarComponentes:=False;
  end;

  if DM.AtualizarUsuariosAcessos then
  begin
    //MessageDlg('Será atualizado a lista de controle de acesso de cada usuário.',mtInformation,[mbOk],0);
    Application.CreateForm(TFormUsuariosAcessosAtualizar, FormUsuariosAcessosAtualizar);
    FormUsuariosAcessosAtualizar.ShowModal;
    FormUsuariosAcessosAtualizar.Free;
    FormUsuariosAcessosAtualizar:=nil;
    DM.AtualizarUsuariosAcessos:=False;
  end;

  DM.QYAux.Close;
  DM.QYAux.SQL.Clear;
  DM.QYAux.SQL.Add('select * from USUARIOS where USU_LOGIN=:login');
  DM.QYAux.ParamByName('login').AsString:=Edit1.Text;
  DM.QYAux.Open;
//  DM.TBUsuarios.Close;
//  DM.TBUsuarios.ParamByName('codigo').AsString:=Edit1.Text;
//  DM.TBUsuarios.Open;
//  if DM.TBUsuarios.IsEmpty then
  if DM.QYAux.IsEmpty then
  begin
    ShakeForm;
    MessageDlg('Usuário inválido!',mtWarning,[mbOk],0);
    Edit1.SetFocus;
    Edit1.SelectAll;
    Exit;
  end;
//  if DM.TBUsuariosUSU_STATUS.Value='I' then
  AbortIf(DM.QYAux.FieldByName('USU_STATUS').AsString='I','Este usuário está Inativo.');

//  if MD5Print(MD5String(Edit2.Text))=DM.TBUsuariosUSU_PASSWORD.Value then
  if MD5Print(MD5String(Edit2.Text))=DM.QYAux.FieldByName('USU_PASSWORD').AsString then
  begin
    //atualiza data e hora login.
    DM.QYAux2.Close;
    DM.QYAux2.SQL.Clear;
    DM.QYAux2.SQL.Add('update USUARIOS set USU_DTLOGIN=:data, USU_HRLOGIN=:hora where USU_CODIGO=:codigo');
    DM.QYAux2.ParamByName('data').AsDate:=DM.ServerDate;
    DM.QYAux2.ParamByName('hora').AsTime:=DM.ServerTime;
    DM.QYAux2.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('USU_CODIGO').AsInteger;
    DM.QYAux2.ExecSQL;
    DM.QYAux2.Close;

    DM.TBUsuarios.Close;
    DM.TBUsuarios.ParamByName('codigo').AsInteger:=DM.QYAux.FieldByName('USU_CODIGO').AsInteger;
    DM.TBUsuarios.Open;
    DM.QYAux.Close;

    DM.UsuarioLogado:=DM.TBUsuariosUSU_CODIGO.Value; //variavel no DataMod.
    DM.UsuarioLogin:=DM.TBUsuariosUSU_LOGIN.Value; //variavel no DataMod.
    DM.UsuarioNome:=DM.TBUsuariosUSU_NOME.Value; //variavel no DataMod.
    DM.UsuarioVendedor:=DM.TBUsuariosUSU_VENDEDOR.Value;
    if DM.UsuarioVendedor=0
    then DM.UsuarioVendedor:=1;

    Fechar:=True; //pode fechar o form.
    //salva o usuario default e a última conexão utilizada.;
    DM.DefaultUser:=Edit1.Text;
    DM.Variaveis('SAVE');
    //verifica se a senha tá expirada.
    if DM.TBUsuariosUSU_SENHAEXPIRADA.Value='S' then
    begin
      MessageDlg('Sua senha expirou. Clique em OK e troque-a agora mesmo.',mtInformation,[mbOk],0);
      Application.CreateForm(TFormAlterarSenha, FormAlterarSenha);
      FormAlterarSenha.CancelarFecharAplicacao:=True; //se cancelar fecha a aplicação.
      FormAlterarSenha.ShowModal;
      FormAlterarSenha.Free;
      FormAlterarSenha:=nil;
    end;
    //...

    if (DM.TBUsuariosUSU_TEMA.Value<>'') and (DM.TBUsuariosUSU_TEMA.Value <> '00 - Windows') then
    TStyleManager.TrySetStyle(Copy(DM.TBUsuariosUSU_TEMA.Value,6,Length(DM.TBUsuariosUSU_TEMA.Value)));

    LoginOK:=True; //variavel no DataMod.
    Close;
  end else
  begin
    ShakeForm;
    Edit2.SelectAll;
  end;
end;

procedure TFormLogin.FormActivate(Sender: TObject);
begin
  Edit2.SetFocus;
  Edit3.Text:=DM.BaseDescricao;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  LoginOK:=False;
  Application.Terminate;
end;

procedure TFormLogin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var Data : TDate;
  Dia, Mes, Ano : Word;
begin
  //caso nao exista usuario cadastrado, permite entrar no sistema usando CTRL+ENTER e a senha Dia*Mes*Ano.
  if (ssCtrl in Shift) and (CharInSet(Chr(Key),[#13])) then
  begin
    Data:=DM.ServerDate;
    DecodeDate(Data,Ano,Mes,Dia);
    if Edit2.Text=IntToStr(Dia*Mes*Ano) then
    begin
      DM.UsuarioLogado:=1;
      DM.UsuarioLogin:='RUNTIME';
      Fechar:=True; //pode fechar o form.
      Close;
    end;
  end;
end;

procedure TFormLogin.Image1DblClick(Sender: TObject);
var PT: TPoint;
begin
  if GetKeyState(VK_CONTROL) and 128>0 then
  begin
    GetCursorPos(PT);
    PopupMenu1.Popup(PT.X,PT.Y);
  end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  LoginOK:=False;
  Edit1.Text:=DM.DefaultUser;
  Edit3.Text:=DM.BaseDescricao;
end;

procedure TFormLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=Fechar; //soh fecha o form se o usuario clicar no botao ok e a senha estiver correta.
end;

procedure TFormLogin.Label4Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('https://runtimesistemas.com.br'),nil,nil,sw_ShowNormal);
end;

procedure TFormLogin.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConexoes, FormConexoes);
  FormConexoes.ShowModal;
  FormConexoes.Free;
  FormConexoes:=nil;
  Edit3.Text:=DM.BaseDescricao;
  Edit2.SetFocus;
end;

procedure TFormLogin.Edit1Enter(Sender: TObject);
begin
  Edit1.SelectAll;
end;

procedure TFormLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#32 then Key:=#0;
  if Key=#13 then Edit2.SetFocus;
end;

procedure TFormLogin.Edit2Enter(Sender: TObject);
begin
  Edit2.SelectAll;
end;

procedure TFormLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#32 then Key:=#0;
end;

procedure TFormLogin.Edit3Click(Sender: TObject);
begin
  PngSpeedButton1.Click;
end;

end.
