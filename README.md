Esta pasta ACDC contém todos os projetos que utilizam a base de dados do Firenet.

Descrição das pastas:
Angus: Versão web do ERP Firenet. Feito em React+Vite com o pacote pett-componentes. Ainda está em construção.
Brian: Versão mobile (força de vendas) para os vendedores das empresas que usam o Firenet. React+Vite.
Cliff: Backend em Delphi com Horse para uso com o Brian. Uma instalação por cliente, ligada direto na base do cliente.
Phill: Backend em Delphi com Horse para uso com o Angus. Multiempresa.
Firenet: ERP desktop feito em Delphi (VCL + FireDAC + FastReport) com muitas funcionalidades.

Fluxo:
Angus -> Phill -> angus.fdb (usuários e empresas) -> firenet_<empresa>.fdb
Brian -> Cliff -> firenet_<cliente>.fdb (configurada no Parametros.ini do Cliff)

Observações:

A idéia do Angus é funcionar como um sistema pronto na web.
O usuário cria sua conta, cadastra sua empresa e sai usando.
Angus consulta 2 bases de dados firebird:
Angus.fdb: Contém o cadastro das empresas clientes da Runtime Sistemas e os usuários.
Cada usuário pode ter acesso a mais de uma empresa e então, cada empresa tem a sua base de dados
nomeadas nesse padrão 'firenet_empresa.fdb'. Esse padrão poderá mudar para usar o código da empresa depois de automatizar a criação de base para novas empresas.
O caminho da base de cada empresa fica na tabela EMPRESAS do angus.fdb (EMP_BASEDADOS), e o front envia o EMP_HASH no campo 'empresa'.

Banco: Firebird 4.0.5, dialeto 3, charset WIN1252. Cópias locais das bases em Firenet\Dados\.
O dicionário de dados (tabelas, relacionamentos, domínios e regras de negócio) está em Firenet\IAsmin\.

Todos os projetos ficam num único repositório privado: https://github.com/rogeriopett/ACDC (branch main).

Firenet é um projeto grande, usa o firebird com componentes FDQuery, FDConnection, etc, para acesso ao banco.
Os demais componentes que o Firenet usa estão na pasta C:\Runtime\Componentes\
Dentro da pasta Firenet também ficam outros projetos Delphi: AngusServer, MalcolmServer, Firecap, IAsmin, AtualizadorClientes, AtualizadorProdutos, Neogrid.

Os projetos em react usam o pacote pett-componentes que está em C:\Runtime\React\pett_componentes\
(o Brian ainda usa cópias locais antigas dos componentes e bibliotecas de terceiros, como primereact e sweetalert2).

Os fontes Delphi (.pas/.dfm) estão em Windows-1252; os projetos React em UTF-8.

Detalhes para o Claude Code: ver CLAUDE.md nesta pasta e o CLAUDE.md de cada projeto.
