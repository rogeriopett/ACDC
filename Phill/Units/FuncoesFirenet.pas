unit FuncoesFirenet;

interface

uses System.SysUtils, DataModFirenet;

function AtualizarSaldoVendedor(DM: TDMFirenet; Vendedor: Integer; Transacao: String; Valor: Extended): Boolean;
function LancarFluxoCaixa(DM: TDMFirenet; Valor: Extended; Conta, Vendedor, Cliente, Fornecedor: Integer; CliNome, ForNome, Transacao, Descricao, Origem, TipoDocto, NumDocto, Usuario: String): Boolean;
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

function LancarFluxoCaixa(DM: TDMFirenet; Valor: Extended; Conta, Vendedor, Cliente, Fornecedor: Integer; CliNome, ForNome, Transacao, Descricao, Origem, TipoDocto, NumDocto, Usuario: String): Boolean;
var SaldoAnterior, SaldoPosterior: Extended;
begin
  try
    DM.TBContas.Close;
    DM.TBContas.ParamByName('codigo').AsInteger:=Conta;
    DM.TBContas.Open;
    if DM.TBContas.IsEmpty then
    raise Exception.Create('Conta não encontrada.');

    SaldoAnterior:=DM.TBContasCON_SALDO.AsExtended;
    if Transacao='E' then SaldoPosterior := SaldoAnterior + Valor else
    if Transacao='S' then SaldoPosterior := SaldoAnterior - Valor else
    raise Exception.Create('Tipo de transação inválido.');

    DM.TBCaixa.Open;
    DM.TBCaixa.Insert;
    if Cliente<>0 then DM.TBCaixaCAI_CLIENTE.Value:=Cliente;
    DM.TBCaixaCAI_CLIENTENOME.Value:=CliNome;
    DM.TBCaixaCAI_CONTA.Value:=Conta;
    DM.TBCaixaCAI_DATA.Value:=Date;
    DM.TBCaixaCAI_DESCRICAO.Value:=Descricao;
    DM.TBCaixaCAI_DTATUALIZACAO.Value:=Date;
    DM.TBCaixaCAI_DTCADASTRO.Value:=Date;
    DM.TBCaixaCAI_ENTRADASAIDA.Value:=Transacao;
    if Fornecedor<>0 then DM.TBCaixaCAI_FORNECEDOR.Value:=Fornecedor;
    DM.TBCaixaCAI_FORNECEDORNOME.Value:=ForNome;
    DM.TBCaixaCAI_HRATUALIZACAO.Value:=Time;
    DM.TBCaixaCAI_HRCADASTRO.Value:=Time;
    DM.TBCaixaCAI_NUMCHEQUE.Value:='';
    DM.TBCaixaCAI_NUMDOCTO.Value:=NumDocto;
    DM.TBCaixaCAI_ORIGEM.Value:=Origem;
    DM.TBCaixaCAI_SALDOANTERIOR.Value:=SaldoAnterior;
    DM.TBCaixaCAI_SALDOPOSTERIOR.Value:=SaldoPosterior;
    DM.TBCaixaCAI_TIPODOCTO.Value:=TipoDocto;
    DM.TBCaixaCAI_USUARIO.Value:=Usuario;
    DM.TBCaixaCAI_VALOR.Value:=Valor;
    DM.TBCaixaCAI_VENDEDOR.Value:=Vendedor;
    DM.TBCaixa.Post;

    // Passo 3: Atualizar o saldo da conta
    DM.Query1.Close;
    DM.Query1.SQL.Clear;
    DM.Query1.SQL.Add('update CONTAS set CON_SALDO=:saldo where CON_CODIGO=:conta');
    DM.Query1.ParamByName('saldo').AsFMTBCD:=SaldoPosterior;
    DM.Query1.ParamByName('conta').AsInteger:=Conta;
    DM.Query1.ExecSQL;

    Result:=True;
  except on ex:exception do
    Result:=False;
  end;
end;


end.
