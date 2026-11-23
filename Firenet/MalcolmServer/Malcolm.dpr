program Malcolm;

uses
  Vcl.Forms,
  System.SysUtils,
  Winapi.Windows, Vcl.Dialogs,
  Main in 'Units\Main.pas' {FormMain},
  DataMod in 'Units\DataMod.pas' {DM: TDataModule},
  Funcoes1 in 'Units\Funcoes1.pas',
  Parametros in 'Units\Parametros.pas' {FormParametros},
  MesAno in 'Units\MesAno.pas' {FormMesAno},
  BlocoX in 'Units\BlocoX.pas' {FormBlocoX};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Malcolm Server';

  CreateMutex(nil, False, 'Malcolm Server'); // Substitua 'Programa' pelo nome do seu aplicativo.
  //verifica se houve erro na criação
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    MessageDlg('O Malcolm já está sendo executado.', mtError,[mbOK],0);
    Halt(0); // cancela execução
  end;

  if UpperCase(ParamStr(1))='CONFIG' then
  begin
    Application.CreateForm(TFormParametros, FormParametros);
    FormParametros.ShowModal;
    FormParametros.Free;
    FormParametros:=nil;
    Application.Terminate;
    Exit;
  end;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
