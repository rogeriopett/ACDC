unit FuncoesFirenet;

interface

uses System.SysUtils, System.Classes, DataModFirenet, FireDAC.Comp.Client, Funcoes;

function AtualizarSaldoVendedor(DM: TDMFirenet; Vendedor: Integer; Transacao: String; Valor: Extended): Boolean;
function EnviarEmailSimples(DM: TDMFirenet; Conta: Integer; Destinatarios, Assunto, Mensagem: String; Anexos: TStrings; HTML: Boolean=True): Boolean;
//function LancarFluxoCaixa(DM: TDMFirenet; Valor: Extended; Conta, Vendedor, Cliente, Fornecedor: Integer; CliNome, ForNome, Transacao, Descricao, Origem, TipoDocto, NumDocto, Usuario: String): Boolean;
//procedure GerarFluxoCaixa(DM: TDMFirenet; TipoDocto, NumDocto, Descricao, ES, Origem, ClienteNome, FornecedorNome: String; Vendedor, Conta, Cliente, Fornecedor: Integer; Data: TDate; Valor: Currency);

implementation

//procedure GerarFluxoCaixa(DM: TDMFirenet; TipoDocto, NumDocto, Descricao, ES, Origem, ClienteNome, FornecedorNome: String; Vendedor, Conta, Cliente, Fornecedor: Integer; Data: TDate; Valor: Currency);
//begin
//  DM.TBCaixa.Insert;
//  DM.TBCaixaCAI_DATA.Value:=Data;
//  DM.TBCaixaCAI_TIPODOCTO.Value:=TipoDocto;
//  DM.TBCaixaCAI_NUMDOCTO.Value:=NumDocto;
////  DM.TBCaixaCAI_SALDOANTERIOR.Value:=Cliente;
////  DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=Receita;
//  DM.TBCaixaCAI_VALOR.Value:=Valor;
//  DM.TBCaixaCAI_ENTRADASAIDA.Value:=ES;
//  DM.TBCaixaCAI_ORIGEM.Value:=Origem;
//  DM.TBCaixaCAI_DESCRICAO.Value:=Descricao;
//  DM.TBCaixaCAI_VENDEDOR.Value:=Vendedor;
//  if Cliente<>0 then DM.TBCaixaCAI_CLIENTE.Value:=Cliente;
//  DM.TBCaixaCAI_CLIENTENOME.Value:=ClienteNome;
//  if Fornecedor<>0 then DM.TBCaixaCAI_FORNECEDOR.Value:=Fornecedor;
//  DM.TBCaixaCAI_FORNECEDORNOME.Value:=FornecedorNome;
//  DM.TBCaixaCAI_CONTA.Value:=Conta;
//  DM.TBCaixa.Post;
//end;

function AtualizarSaldoVendedor(DM: TDMFirenet; Vendedor: Integer; Transacao: String; Valor: Extended): Boolean;
var Saldo: Extended;
begin
  DM.TBVendedores.Close;
  DM.TBVendedores.ParamByName('codigo').AsInteger:=Vendedor;
  DM.TBVendedores.Open;

  Saldo:=0;
  if Transacao='E' then Saldo:=DM.TBVendedoresVEN_SALDOATUAL.AsExtended + Valor else
  if Transacao='S' then Saldo:=DM.TBVendedoresVEN_SALDOATUAL.AsExtended - Valor;

  DM.TBVendedores.Edit;
  DM.TBVendedoresVEN_SALDOATUAL.Value:=Saldo;
  DM.TBVendedores.Post;
end;

//function LancarFluxoCaixa(DM: TDMFirenet; Valor: Extended; Conta, Vendedor, Cliente, Fornecedor: Integer; CliNome, ForNome, Transacao, Descricao, Origem, TipoDocto, NumDocto, Usuario: String): Boolean;
//var SaldoAnterior, SaldoPosterior: Extended;
//begin
//  try
//    DM.TBContas.Close;
//    DM.TBContas.ParamByName('codigo').AsInteger:=Conta;
//    DM.TBContas.Open;
//    if DM.TBContas.IsEmpty then
//    raise Exception.Create('Conta não encontrada.');
//
//    SaldoAnterior:=DM.TBContasCON_SALDO.AsExtended;
//    if Transacao='E' then SaldoPosterior := SaldoAnterior + Valor else
//    if Transacao='S' then SaldoPosterior := SaldoAnterior - Valor else
//    raise Exception.Create('Tipo de transação inválido.');
//
//    DM.TBCaixa.Open;
//    DM.TBCaixa.Insert;
//    if Cliente<>0 then DM.TBCaixaCAI_CLIENTE.Value:=Cliente;
//    DM.TBCaixaCAI_CLIENTENOME.Value:=CliNome;
//    DM.TBCaixaCAI_CONTA.Value:=Conta;
//    DM.TBCaixaCAI_DATA.Value:=Date;
//    DM.TBCaixaCAI_DESCRICAO.Value:=Descricao;
//    DM.TBCaixaCAI_DTATUALIZACAO.Value:=Date;
//    DM.TBCaixaCAI_DTCADASTRO.Value:=Date;
//    DM.TBCaixaCAI_ENTRADASAIDA.Value:=Transacao;
//    if Fornecedor<>0 then DM.TBCaixaCAI_FORNECEDOR.Value:=Fornecedor;
//    DM.TBCaixaCAI_FORNECEDORNOME.Value:=ForNome;
//    DM.TBCaixaCAI_HRATUALIZACAO.Value:=Time;
//    DM.TBCaixaCAI_HRCADASTRO.Value:=Time;
//    DM.TBCaixaCAI_NUMCHEQUE.Value:='';
//    DM.TBCaixaCAI_NUMDOCTO.Value:=NumDocto;
//    DM.TBCaixaCAI_ORIGEM.Value:=Origem;
//    DM.TBCaixaCAI_SALDOANTERIOR.Value:=SaldoAnterior;
//    DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=SaldoPosterior;
//    DM.TBCaixaCAI_TIPODOCTO.Value:=TipoDocto;
//    DM.TBCaixaCAI_USUARIO.Value:=Usuario;
//    DM.TBCaixaCAI_VALOR.Value:=Valor;
//    DM.TBCaixaCAI_VENDEDOR.Value:=Vendedor;
//    DM.TBCaixa.Post;
//
//    // Passo 3: Atualizar o saldo da conta
//    DM.Query1.Close;
//    DM.Query1.SQL.Clear;
//    DM.Query1.SQL.Add('update CONTAS set CON_SALDO=:saldo where CON_CODIGO=:conta');
//    DM.Query1.ParamByName('saldo').AsFMTBCD:=SaldoPosterior;
//    DM.Query1.ParamByName('conta').AsInteger:=Conta;
//    DM.Query1.ExecSQL;
//
//    Result:=True;
//  except on ex:exception do
//    Result:=False;
//  end;
//end;

function EnviarEmailSimples(DM: TDMFirenet; Conta: Integer; Destinatarios, Assunto, Mensagem: String; Anexos: TStrings; HTML: Boolean=True): Boolean;
var S, E: String;
  I: Word;
begin
  Result:=False;

  DM.TBEmailsContas.Close;
  DM.TBEmailsContas.ParamByName('codigo').AsInteger:=Conta;
  DM.TBEmailsContas.Open;

  DM.ACBrMail1.Clear;
  DM.ACBrMail1.From:=DM.TBEmailscontasemc_EMAIL.Value;
  DM.ACBrMail1.FromName:=UCWords(DM.TBEmailsContasEMC_NOME.Value);

  DM.ACBrMail1.Host:=DM.TBEmailsContasEMC_SMTP.Value;
  DM.ACBrMail1.Username:=DM.TBEmailsContasEMC_LOGIN.Value;
  DM.ACBrMail1.Password:=DM.TBEmailsContasEMC_SENHA.Value;
  DM.ACBrMail1.Port:=IntToStr(DM.TBEmailsContasEMC_SMTPPORTA.Value);
  DM.ACBrMail1.Attempts:=1;

  if DM.TBEmailsContasEMC_SSL.Value='S' then
  DM.ACBrMail1.SetSSL:=True else
  DM.ACBrMail1.SetSSL:=False;

  if DM.TBEmailsContasEMC_TLS.Value='S' then
  DM.ACBrMail1.SetTLS:=True else
  DM.ACBrMail1.SetTLS:=False;

  if DM.TBEmailsContasEMC_CONFIRMACAO.Value='S' then
  DM.ACBrMail1.ReadingConfirmation:=True else
  DM.ACBrMail1.ReadingConfirmation:=False;

  //verifica se tem mais de um destinatário e adiciona cada um deles.
  while Pos(',',Destinatarios)>1 do
  begin
    E:=Copy(Destinatarios,1,Pos(',',Destinatarios)-1);
    Delete(Destinatarios,1,Pos(',',Destinatarios));
    DM.ACBrMail1.AddAddress(E,'');
  end;
  DM.ACBrMail1.AddAddress(Destinatarios,''); //o último ou o único.

  //DM.ACBrMail1.AddBCC(S); //o último ou o único.

  if HTML then
  begin
    DM.ACBrMail1.IsHTML:=True;
    DM.ACBrMail1.AltBody.Text:='Esta mensagem foi gerada em HTML.';
  end else
  begin
    DM.ACBrMail1.IsHTML:=False;
    DM.ACBrMail1.AltBody.Text:=Mensagem;
  end;

  DM.ACBrMail1.Subject:=Assunto;
  DM.ACBrMail1.Body.Text:=Mensagem;

  for I:=0 to Pred(Anexos.Count) do
  begin
    if FileExists(Anexos[I]) then
    DM.ACBrMail1.AddAttachment(Anexos[I]);
  end;

  try
    DM.ACBrMail1.Send;
    Result:=True;
  except on E:Exception do
    raise Exception.Create('Erro ao enviar email: '+E.Message);
  end;
end;

end.
