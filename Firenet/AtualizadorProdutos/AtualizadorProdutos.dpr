program AtualizadorProdutos;

uses
  Forms,
  Main in 'Units\Main.pas' {FormMain},
  Funcoes1 in '..\Units\Funcoes1.pas',
  DataMod in 'Units\DataMod.pas' {DM: TDataModule},
  Config in 'Units\Config.pas' {FormConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Atualizador de Produtos';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
