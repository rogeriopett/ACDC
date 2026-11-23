unit ECF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Inifiles;

  procedure AbrirCupom(CPFouCNPJ: String);
  procedure VenderItem(GTIN, Descricao, ICMS: String; Quantidade, ValorUnitario: Double);
  procedure CancelarItem(Item: Integer);
  procedure EfetuarFormaPagamento(CodigoPagamento: String; Valor: Double);
  procedure SubTotalizarCupom(AscDesc: Double);
  procedure FecharCupom(Observacao: String);
  procedure CancelarCupom;
  procedure ReducaoZ;
  procedure LeituraX;
  procedure Suprimento(Valor: Double; Descricao: String);
  procedure Sangria(Valor: Double; Descricao: String);

implementation
uses DataMod, Main, PAF;

procedure Suprimento(Valor: Double; Descricao: String);
begin
  DM.ACBrECF.Suprimento(Valor,'SUPRIMENTO',Descricao,'DINHEIRO');
end;

Procedure Sangria(Valor: Double; Descricao: String);
begin
  DM.ACBrECF.Sangria(Valor,'SANGRIA',Descricao,'DINHEIRO');
end;

Procedure CancelarCupom;
begin
  DM.ACBrECF.CancelaCupom;
end;

Procedure ReducaoZ;
begin
  FormMain.LabelMensagens.Caption:='Redução Z - Aguarde!';
//  PreVendaControl := TPreVendaController.Create;
//  PreVendaControl.CancelaPreVendasPendentes;
  DM.ACBrECF.ReducaoZ;
  PAF.GravarR02R03; //registros reducao z.
  { TODO : Devemos gravar o 60M (sintegra) neste momento? }
  PAF.Gravar60M60A;
  { TODO : Qual mensagem informar após a redução z? }
  PAF.GerarArquivoEstoque;
  FormMain.LabelMensagens.Caption:='REDUÇÃO Z COMPLETADA.';
end;

procedure LeituraX;
begin
  DM.ACBrECF.LeituraX;
end;

procedure AbrirCupom(CPFouCNPJ: String);
begin
  DM.ACBrECF.AbreCupom(CPFouCNPJ);
end;

procedure VenderItem(GTIN, Descricao, ICMS: String; Quantidade, ValorUnitario: Double);
begin
  DM.ACBrECF.VendeItem(GTIN,Descricao,ICMS,Quantidade,ValorUnitario);
end;

procedure EfetuarFormaPagamento(CodigoPagamento: String; Valor: Double);
begin
  DM.ACBrECF.EfetuaPagamento(CodigoPagamento,Valor);
end;

procedure SubTotalizarCupom(AscDesc: Double);
begin
  DM.ACBrECF.SubtotalizaCupom(AscDesc);
end;

procedure FecharCupom(Observacao: String);
begin
  DM.ACBrECF.FechaCupom(Observacao);
end;

procedure CancelarItem(Item: Integer);
begin
  DM.ACBrECF.CancelaItemVendido(Item);
end;

end.
