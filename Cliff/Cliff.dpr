program Cliff;

uses
  Vcl.Forms,
  Main in 'Units\Main.pas' {FormMain},
  DataModFirenet in 'Units\DataModFirenet.pas' {DMFirenet: TDataModule},
  Firenet.Clientes in 'Units\Firenet.Clientes.pas',
  Firenet.Condicoes in 'Units\Firenet.Condicoes.pas',
  Firenet.Produtos in 'Units\Firenet.Produtos.pas',
  Firenet.Receber in 'Units\Firenet.Receber.pas',
  Firenet.Vendedores in 'Units\Firenet.Vendedores.pas',
  Funcoes in 'Units\Funcoes.pas',
  FuncoesFirenet in 'Units\FuncoesFirenet.pas',
  Usuario.Login in 'Units\Usuario.Login.pas',
  Imagens.Utils in 'Units\Imagens.Utils.pas',
  Root.Arquivos in 'Units\Root.Arquivos.pas',
  ConsultasFast in 'Units\ConsultasFast.pas' {FormConsultasFast},
  Parametros in 'Units\Parametros.pas' {FormParametros},
  Firenet.Vendas in 'Units\Firenet.Vendas.pas',
  NFe_Util_2G_TLB in 'Units\NFe_Util_2G_TLB.pas',
  Firenet.Metas in 'Units\Firenet.Metas.pas',
  Firenet.Parametros in 'Units\Firenet.Parametros.pas',
  Root.Certificado in 'Units\Root.Certificado.pas',
  Firenet.Servicos in 'Units\Firenet.Servicos.pas',
  ImageUtils in 'Units\ImageUtils.pas',
  Firenet.Equipamentos in 'Units\Firenet.Equipamentos.pas',
  Site.Grupos in 'Units\Site.Grupos.pas',
  Site.Produtos in 'Units\Site.Produtos.pas',
  VendasFast in 'Units\VendasFast.pas' {FormVendasFast},
  ReceberFast in 'Units\ReceberFast.pas' {FormReceberFast},
  Firenet.Vias in 'Units\Firenet.Vias.pas',
  Firenet.Motivos in 'Units\Firenet.Motivos.pas',
  Firenet.Televendas in 'Units\Firenet.Televendas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Cliff';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormParametros, FormParametros);
  Application.CreateForm(TFormVendasFast, FormVendasFast);
  Application.CreateForm(TFormReceberFast, FormReceberFast);
  Application.Run;
end.
