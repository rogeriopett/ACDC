program Firecap;

uses
  Forms,
  Dialogs,
  SysUtils,
  Main in 'Units\Main.pas' {FormMain},
  VideoQuality in 'Units\VideoQuality.pas' {FormVideoQuality},
  CameraControl in 'Units\CameraControl.pas' {FormCameraControl},
  DataMod in 'Units\DataMod.pas' {DM: TDataModule},
  ConsultasLoc in 'Units\ConsultasLoc.pas' {FormConsultasLoc},
  FuncoesFirecap in 'Units\FuncoesFirecap.pas',
  Login in 'Units\Login.pas' {FormLogin},
  AlterarSenha in 'Units\AlterarSenha.pas' {FormAlterarSenha},
  Conexoes in 'Units\Conexoes.pas' {FormConexoes},
  Funcoes1 in 'Units\Funcoes1.pas',
  MD5 in 'Units\MD5.pas',
  Sysdba in 'Units\Sysdba.pas' {FormSysdba},
  ConsultasQ05 in 'Units\ConsultasQ05.pas' {FormConsultasQ05},
  ConsultasQ06 in 'Units\ConsultasQ06.pas' {FormConsultasQ06};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title:='FireCap';
  //FormatSettings.ShortDateFormat:='dd/mm/yyyy';

  if UpperCase(ParamStr(1))='CONFIG' then
  begin
    Application.CreateForm(TFormSysdba, FormSysdba);
    FormSysdba.ShowModal;
    FormSysdba.Free;
    FormSysdba:=nil;
    Application.Terminate;
    Exit;
  end;

  if not FileExists(ExtractFilePath(Application.ExeName)+ParamFile) then
  begin
    MessageDlg('Arquivo "'+ParamFile+'" não encontrado!!!.'+#13#13+'Contate seu suporte técnico!',mtError,[mbOk],0);
    Application.ShowMainForm:=False;
    Application.Terminate;
    Exit;
  end;

  Application.CreateForm(TDM, DM);

  Application.CreateForm(TFormLogin, FormLogin);
  FormLogin.ShowModal;
  FormLogin.Free;
  FormLogin:=nil;

  if UsuarioLogado<>'' then
  begin
    Application.CreateForm(TFormMain, FormMain);
    //FormMain.DesabilitarControles(FormMain);
    FormMain.StatusBar1.Panels[0].Text:='Usuario: '+UsuarioLogado;
  end;

  Application.Run;
end.
