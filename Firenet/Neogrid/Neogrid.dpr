program Neogrid;

uses
  Vcl.Forms,
  Main in 'Units\Main.pas' {FormMain},
  DataMod in 'Units\DataMod.pas' {DM: TDataModule},
  Funcoes1 in 'Units\Funcoes1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
