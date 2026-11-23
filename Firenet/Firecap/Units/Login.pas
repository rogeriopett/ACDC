unit Login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, jpeg, ShellAPI, PngBitBtn, pngimage,
  PngSpeedButton, System.UITypes, Data.DB;

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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure PngSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarDataModulo;
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  Fechar: Boolean = False;

implementation
uses DataMod, Main, IniFiles, Funcoes1, MD5, AlterarSenha, Conexoes, IB;
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

procedure TFormLogin.ConfigurarDataModulo;
begin
  DM.IBDatabase1.Connected:=False;
  //if DM2<>nil then
  //DM2.Destroy;
  //if DMS<>nil then
  //DMS.Destroy;

  //Rotina do datamodule create.
  //DM.Variaveis('LOAD');
  DM.IBDatabase1.Params.Clear;
  DM.IBDatabase1.Params.Add('user_name='+BaseUsuario);
  DM.IBDatabase1.Params.Add('password='+BaseSenha);
  DM.IBDatabase1.DatabaseName:=BaseServidor+':'+BaseBase;
  if not DM.IBDatabase1.Connected then
  begin
    try
      DM.IBDatabase1.Connected:=True;
      DM.TBVersao.Open;
      //AtualizarBaseDados;
      //cria o segundo datamodule e o datamodule de pesquisas.
      //Application.CreateForm(TDM2, DM2);
      //Application.CreateForm(TDMS, DMS);
      DM.AbrirTabelas;

      except on E:EIBInterBaseError do //ainda nao sei o por que do E:
      begin
        if UpperCase(E.Message)='UNAVAILABLE DATABASE' then
        ShowMessage('Banco de dados não disponível! Verifique se o Firebird está rodando e se sua conexão de rede com o servidor está funcionando corretamente.') else
        if UpperCase(E.Message)='CANNOT ATTACH TO SERVICES MANAGER' then
        ShowMessage('Não foi possível acessar o gerenciador de serviços.') else
        if UpperCase(E.Message)='YOUR USER NAME AND PASSWORD ARE NOT DEFINED. ASK YOUR DATABASE ADMINISTRATOR TO SET UP AN INTERBASE LOGIN' then
        ShowMessage('Nome de usuário e senha inválidos. Entre em contato com seu suporte técnico.') else
        if UpperCase(E.Message)='UNABLE TO PERFORM OPERATION.  YOU MUST BE EITHER SYSDBA OR OWNER OF THE DATABASE' then
        ShowMessage('Não foi possível realizar a operação. Você não tem permissão para realizar a operação.') else
        ShowMessage(E.Message);
        Application.Terminate;
      end;
    end; //try.
  end;
end;

procedure TFormLogin.BitBtn1Click(Sender: TObject);
begin
  ConfigurarDataModulo;

  DM.TBUsuarios.Close;
  DM.TBUsuarios.ParamByName('codigo').AsString:=Edit1.Text;
  DM.TBUsuarios.Open;
  if DM.TBUsuarios.IsEmpty then
  begin
    ShakeForm;
    MessageDlg('Usuário inválido!',mtWarning,[mbOk],0);
    Edit1.SetFocus;
    Edit1.SelectAll;
    Exit;
  end;
  if DM.TBUsuariosUSU_STATUS.Value='I' then
  begin
    MessageDlg('Este usuário está Inativo.',mtWarning,[mbOk],0);
    Exit;
  end;
  if MD5Print(MD5String(Edit2.Text))=DM.TBUsuariosUSU_PASSWORD.Value then
  begin
    UsuarioLogado:=DM.TBUsuariosUSU_LOGIN.Value; //variavel no DataMod.
    UsuarioNome:=DM.TBUsuariosUSU_NOME.Value; //variavel no DataMod.
    UsuarioVendedor:=DM.TBUsuariosUSU_VENDEDOR.Value;
    if UsuarioVendedor=0 then UsuarioVendedor:=1;
//    LoginOK:=True; //variavel no DataMod.

    DM.QYAux.SQL.Clear;
    DM.QYAux.SQL.Add('update USUARIOS set USU_DTLOGIN=:data, USU_HRLOGIN=:hora where USU_LOGIN=:login');
    DM.QYAux.ParamByName('data').AsDate:=DM.ServerDate;
    DM.QYAux.ParamByName('hora').AsTime:=DM.ServerTime;
    DM.QYAux.ParamByName('login').AsString:=UsuarioLogado;
    DM.QYAux.ExecSQL;
    DM.TRAux.Commit;
    DM.TBUsuarios.Close;
    DM.TBUsuarios.Open;

    //DM.TBUsuarios.Edit;
    //DM.TBUsuariosUSU_LOGADO.Value:='S';
    //DM.TBUsuariosUSU_DTLOGIN.Value:=DM.ServerDate;
    //DM.TBUsuariosUSU_HRLOGIN.Value:=DM.ServerTime;
    //DM.TBUsuarios.Post;
    Fechar:=True;  //pode fechar o form.
    //salva o usuario default e a última conexão utilizada.;
    DefaultUser:=Edit1.Text;
    DM.Variaveis('SAVE');
    //verifica se a senha tá expirada.
    if DM.TBUsuariosUSU_SENHAEXPIRADA.Value='S' then
    begin
      MessageDlg('Sua senha expirou. Clique em OK e troque-a agora mesmo.',mtInformation,[mbOk],0);
      Application.CreateForm(TFormAlterarSenha, FormAlterarSenha);
      FormAlterarSenha.ShowModal;
      FormAlterarSenha.Free;
      FormAlterarSenha:=nil;
    end;
    //...
    Close;
  end else
  begin
    ShakeForm;
//    MessageDlg('Senha Inválida!',mtWarning,[mbOk],0);
    Edit2.SelectAll;
  end;
end;

procedure TFormLogin.FormActivate(Sender: TObject);
begin
  Edit2.SetFocus;
  Edit3.Text:=DataMod.BaseDescricao;
end;

procedure TFormLogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormLogin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var Data : TDate;
    Dia, Mes, Ano : Word;
begin //caso nao exista usuario cadastrado, permite entrar no sistema usando CTRL+ENTER e a senha Dia*Mes*Ano.
  //if (ssCtrl in Shift) and (Chr(Key) in [#13]) then
  if (ssCtrl in Shift) and (CharInSet(Chr(Key),[#13])) then
  begin
    Data:=DM.ServerDate;
    DecodeDate(Data,Ano,Mes,Dia);
    if Edit2.Text=IntToStr(Dia*Mes*Ano) then
    begin
//      if FormMain<>nil then
//      FormMain.StatusBar1.Panels[0].Text:='Usuário: CRACKED!!!';
      DataMod.UsuarioLogado:='CRACKED!!!';
      Fechar:=True; //pode fechar o form.
      Close;
    end;
  end;
end;

procedure TFormLogin.FormCreate(Sender: TObject);
begin
  Edit1.Text:=DataMod.DefaultUser;
  Edit3.Text:=BaseDescricao;
end;

procedure TFormLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=Fechar; //soh fecha o form se o usuario clicar no botao ok e a senha estiver correta.
end;

procedure TFormLogin.Label4Click(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow,'open',PChar('www.runtimesistemas.com.br'),nil,nil,sw_ShowNormal);
end;

procedure TFormLogin.PngSpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TFormConexoes, FormConexoes);
  FormConexoes.ShowModal;
  FormConexoes.Free;
  FormConexoes:=nil;
  Edit3.Text:=BaseDescricao;
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

end.
