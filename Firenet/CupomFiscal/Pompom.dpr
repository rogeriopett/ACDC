program Pompom;

uses
  Forms,
  Windows,
  Dialogs,
  Main in 'Units\Main.pas' {FormMain},
  DataMod in 'Units\DataMod.pas' {DM: TDataModule},
  ClientesLoc in 'Units\ClientesLoc.pas' {FormClientesLoc},
  ProdutosLoc in 'Units\ProdutosLoc.pas' {FormProdutosLoc},
  Parametros in 'Units\Parametros.pas' {FormParametros},
  ECF in 'Units\ECF.pas',
  PAF in 'Units\PAF.pas',
  FuncoesPomPom in 'Units\FuncoesPomPom.pas',
  MD5 in 'Units\MD5.pas',
  Movimentos in 'Units\Movimentos.pas' {FormMovimentos},
  Sangrias in 'Units\Sangrias.pas' {FormSangrias},
  Suprimentos in 'Units\Suprimentos.pas' {FormSuprimentos},
  InputValue in 'Units\InputValue.pas' {FormInputValue},
  VendedoresLoc in 'Units\VendedoresLoc.pas' {FormVendedoresLoc},
  FinalizarVenda in 'Units\FinalizarVenda.pas' {FormFinalizarVenda},
  Terminal in 'Units\Terminal.pas' {FormTerminal},
  Lmfc in 'Units\Lmfc.pas' {FormLMFC},
  EAD_Class in 'Units\EAD_Class.pas',
  Lmfs in 'Units\Lmfs.pas' {FormLMFS},
  ArquivoMFD in 'Units\ArquivoMFD.pas' {FormArquivoMFD},
  EspelhoMFD in 'Units\EspelhoMFD.pas' {FormEspelhoMFD},
  MeiosPagamento in 'Units\MeiosPagamento.pas' {FormMeiosPagamento};

{$R *.res}
var PreviousWindow: HWND;

begin
  Application.Initialize;

  PreviousWindow:=FindWindow(nil,PChar('Pompom - Emissor Cupom Fiscal'));
  if PreviousWindow<>0 then
  begin
    MessageDlg('Já existe uma instância do emissor de cupom fiscal sendo executada.',mtWarning,[mbOk],0);
    Application.ShowMainForm:=False;
    Application.Terminate;
    Exit;
  end;

  Application.Title:='Pompom - Emissor Cupom Fiscal';
  Application.CreateForm(TDM, DM);

  //Verifica movimento e login.
  Application.CreateForm(TFormMovimentos, FormMovimentos);
  FormMovimentos.ShowModal;
  FormMovimentos.Free;
  FormMovimentos:=nil;

  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
