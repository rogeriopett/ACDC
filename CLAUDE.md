# CLAUDE.md — ACDC

A pasta `C:\Runtime\ACDC` reúne os projetos da Runtime Sistemas que usam a base de dados do ERP **Firenet** (Firebird). Cada subpasta é um projeto independente. Leia também o `CLAUDE.md` do projeto em que for mexer, quando houver.

Responda e escreva comentários em português, no mesmo estilo do código existente.

## Mapa dos projetos

| Pasta | O que é | Stack | Fala com |
|---|---|---|---|
| `Angus/` | Versão web do ERP (SaaS multiempresa), em construção | React 19 + Vite 7 + `pett-componentes` | Phill |
| `Phill/` | API do Angus | Delphi 12 + Horse (VCL, FireDAC) | `angus.fdb` + `firenet_<empresa>.fdb` |
| `Brian/` | App mobile de força de vendas (pedidos, clientes, produtos, receber, metas, serviços, televendas) | React 19 + Vite 8 + `pett-componentes` + Bootstrap | Cliff |
| `Cliff/` | API do Brian, uma instalação por cliente | Delphi 12 + Horse | `firenet_<cliente>.fdb` |
| `Firenet/` | ERP desktop completo | Delphi 12 VCL + FireDAC + FastReport | `firenet_<cliente>.fdb` |

Tudo fica num repositório único e privado: `github.com/rogeriopett/ACDC` (branch `main`). Os antigos repositórios `angus`, `brian` e `phill` foram descartados. O `.gitignore` da raiz barra bases (`*.fdb`, `Firenet/Dados/`), certificados/chaves, binários e gerados do Delphi, `node_modules`/`dist`. `Parametros.ini` e `.env` **são** versionados por decisão do usuário.

Fluxo: `Angus → Phill → Angus.fdb (login/empresas) → firenet_<empresa>.fdb` e `Brian → Cliff → firenet_<cliente>.fdb`.

## Banco de dados (Firebird)

- Firebird 4.0.5, dialeto 3, charset **WIN1252**. Um banco por empresa e nenhuma coluna de empresa/filial nas tabelas.
- **Base do Firenet** (`firenet_<empresa>.fdb`): a mesma estrutura para o ERP, o Phill e o Cliff. Cópias locais em `Firenet\Dados\`.
- **Base do Angus** (`angus.fdb`, só o Phill usa): `USUARIOS` (login com bcrypt), `EMPRESAS` (`EMP_BASEDADOS`, `EMP_DBUSER`, `EMP_DBPASS` cifrado, `EMP_HASH`), `USUEMP` (acesso usuário × empresa), `MENUS`, `BLOCOS`, `UNIDADES`, `PARAMETROS`.
- Colunas com prefixo de 3 letras da tabela, em maiúsculas (`PRO_CODIGO`, `CLI_NOME`, `VED_STATUS`). Auditoria em `XXX_USUARIO`, `XXX_DTCADASTRO/HRCADASTRO` e `XXX_DTATUALIZACAO/HRATUALIZACAO`.
- Domínios de valor: `DN_MONEY` (NUMERIC(18,8)) para dinheiro e `DN_VALOR` para quantidades e percentuais.
- **Dicionário de dados pronto** em `Firenet\IAsmin\`: `02_dicionario.md` (tabelas e colunas), `03_relacionamentos.md` (FKs), `04_dominios.md` (significado de status e flags) e `05_regras_negocio.md` (faturamento, inadimplência etc.). Consulte esses arquivos antes de procurar no `DataMod`.
- Não acesse o banco (isql, IBExpert, scripts) sem o usuário autorizar. Não copie credenciais dos `Parametros.ini`, dos `.dfm` nem do `DDL_Banco.sql` para nenhum lugar.

## Contrato das APIs (Phill e Cliff)

- Uma rota por recurso, sempre `POST` com `FormData` e o campo `op` (`listar`, `visualizar`, `inserir`, `atualizar`, `excluir`, `localizar` ou específicos). Rotas: `/firenet/<recurso>`, `/admin/<recurso>` (Phill), `/usuario/login|cadastro|reset|profile|empresas`, `/menu`, `/unidades`, `/enderecos`, `/arquivo` (GET), `/ping` (GET).
- Resposta: `{ erro: 'S'|'N', msg, contador, rpp, token }`. Em `listar`, `msg` é o array, `rpp` são os registros por página e a paginação usa `first(rpp) skip(rpp*(pagina-1))`.
- Rotas privadas usam `THorse.AddCallback(FormMain.Privado())`, que valida o JWT (Bearer, HS256 com `CHAVESECRETA`). Token ausente ou inválido devolve 401 com `token: 'expirado'`, e o front faz logout.
- **Phill (multiempresa):** toda rota `/firenet/*` exige o campo `empresa` (o `EMP_HASH` escolhido pelo usuário). `TDMFirenet.SetarBancoEmpresa(Empresa)` busca a empresa em `angus.fdb` e conecta na base dela. O JWT tem `avatar, codigo (USU_HASH), login, nome, status, admin, gestor`.
  - **Comissão (2026-11-23):** na venda e na NF-e, o representante vem do Angus (`VED_/NFE_REPRESENTANTE`). No inserir, sem representante, assume o vendedor; no atualizar, vazio mantém o atual. O Phill calcula a comissão do vendedor e a do representante (`GetComissaoVendedor`, no `Funcoes.pas`) só quando cada um muda ou ainda não tem. `VEI_COMISSAO`/`VEI_COMISSAOREP` vêm do `SetarComissaoItem` (`Firenet.Vendas`), e não do Angus.
  - **Cálculos iguais aos do Firenet (meta, 2026-11-23):** o Phill deve ter as mesmas rotinas de cálculo do `DataMod.pas` do Firenet, portadas aos poucos (pergunte ao usuário nas dúvidas). Já estão iguais: `CalcularTotaisVenda`/`VendaItens`, `SimularCondicaoVenda`, `CalcularTotaisNFe`/`NFeItens`, `SimularCondicaoNfe` e os `AfterInsert` de `TBVendas`/`TBVendasItens`/`TBNfe`/`TBNfeItens`. O `AbrirEmpresaParametros` do DM abre `EMPRESA` e `PARAMETROS` (código 1), que o Firenet mantém sempre abertos, e é chamado no início dos cálculos e dos `AfterInsert`. Os itens da NF-e manual pegam a comissão pelo `SetarComissaoItem` do `Firenet.Nfes`. Os itens são recalculados no `BeforePost` (`TBVendasItens`/`TBNfeItens`), e os totais da capa são calculados pela rota, que chama `CalcularTotaisVenda(True)`/`CalcularTotaisNFe(True)`. Diferenças de propósito: `QYAux`→`Query1`, `AlignText`→`AT`, sem `AbortIf`, e crédito do SN pelo `TBIcms` (CST), porque os campos do join ficam vazios nos itens novos.
- **Cliff (um cliente):** conecta na base de `Parametros.ini` e não usa `empresa`. O login é pela tabela `USUARIOS` do Firenet (`USU_LOGIN`), e o JWT tem `login, nome, vendedor, status, versaoBase, empresa`. Tem rotas a mais: `/firenet/servicos`, `/firenet/equipamentos`, `/firenet/televendas`, `/firenet/parametros` (pública), `/site/grupos`, `/site/produtos` e `/certificado`.
  - **Comissão na venda (2026-11-23):** no `inserir` da venda, `VED_COMISSAO` vem do vendedor do usuário (`USU_VENDEDOR`). Como o Brian ainda não tem campo de representante, `VED_REPRESENTANTE` e `VED_COMISSAOREP` recebem o mesmo vendedor. Nos itens, com `VED_COMISSAOPOR='V'`, `VEI_COMISSAO`/`VEI_COMISSAOREP` vêm da capa; caso contrário, do `PRO_COMISSAO`. As `CalcularTotaisVenda*` do `DataModFirenet` seguem as do `DataMod.pas` do Firenet: confira lá antes de mexer.
  - **Logo nos relatórios FastReport (2026-11-19):** a logo vem do `EMPRESA.EMP_LOGOSVG`, e o `logo_empresa_120x60.jpg` não é usado. Sem SVG, o relatório sai sem logo.
    - **Firenet:** o script chama `CarregarLogoSVGFast(Picture1);`. É uma função de script registrada no `FuncoesFirenet.pas` (`TFuncoesFast`, `fsRTTIModules`).
    - **Phill/Cliff:** o Delphi chama `CarregarLogoSVGFast(DM, FormXxxFast.frxReportN)` (`Funcoes.pas`) antes do `PrepareReport`/`ExportarRelatorioBase64`, e o script não mexe na logo. Uma função de script global não enxergaria o DM da requisição.
    - Os Pictures usam `Stretched = True` (o `KeepAspectRatio` padrão mantém a proporção).
  - `GET /arquivo?op=logosvg` (pública): devolve a logo SVG gravada em `EMPRESA.EMP_LOGOSVG` (BLOB texto, WIN1252) como `image/svg+xml; charset=utf-8`, ou 404. O Brian mostra essa logo na Home, no lugar da logo da Runtime, que volta se a imagem não carregar. A antiga `op=logo` (PNG em `PASTA_LOGOMARCA`) foi removida; o `PAR_LOCALLOGOMARCA` da base é só do ERP. Quem grava é a aba "Logo SVG" do `FormLogomarca` do Firenet (preview com `TImage` + `TSkSvgGraphic` do `Vcl.Skia`, que exige "Enable Skia" no projeto e a `sk4d.dll` junto do executável).

### Padrão de uma unit de recurso (Phill/Cliff)

Modelo: [Phill/Units/Firenet.Marcas.pas](Phill/Units/Firenet.Marcas.pas).

- Unit `Firenet.<Recurso>.pas` com `RegistrarRotas` e `VerificarOperacao`, que cria um `TDMFirenet` por requisição, despacha pelo `op` e libera o DM no `finally`. Há uma função por operação, que devolve `TJSONObject`.
- **Ordem das funções na implementação (vale para toda unit de rota, inclusive as `Root.*`):** primeiro `RegistrarRotas`, depois `VerificarOperacao` e, em seguida, as funções das operações. As funções das operações são declaradas na `interface` para o `VerificarOperacao` enxergá-las. Ao mexer numa unit, mantenha essa ordem.
- Para registrar uma unit nova: adicione-a ao `.dpr`, ao `uses` do `Main.pas` e chame `RegistrarRotas` em `IniciarServidor1Click`.
- Constantes `PrefixLog` e `Campos`. Log com `FormMain.Logar(...)`.
- Entrada: `San(...)` para texto e `SoNumeros(...)` para números (`Funcoes.pas`). `Obrigatorio(valor, 'Rótulo')` valida. O usuário vem de `GetUserFromToken(Req)`.
- Leitura: `DM.Query1` com SQL montado. Gravação: as `TBXxx` (`TFDQuery` + `TFDUpdateSQL` + `TFDTransaction`) do `DataModFirenet`, com `ParamByName('codigo')`. A serialização usa `DataSet.Serialize` (`ToJSONArray`/`ToJSONObject`, nomes em maiúsculas).
- Configuração em `Parametros.ini` (seções `BASE DE DADOS`, `SERVIDOR`, `SITE`, `PASTAS`). A porta do servidor fica no `Edit1` do `FormMain`, e os registros por página no `Edit2`.
- Libs Horse: `Horse`, `Horse.Jhonson`, `Horse.CORS`, `Horse.JWT`, `JOSE`, `BCrypt`, `DataSet.Serialize`. NF-e via FlexDocs `NFe_Util_2G` (COM, `NFe_Util_2G_TLB.pas`).

## Front-ends (Angus e Brian)

- **Angus:** já tem `Angus/CLAUDE.md` completo. Siga-o: `pett-componentes`, `useTabela`/`useListagem`, temas, validação com `npx vite build` (nunca `npm run build`, que incrementa a versão no `.env`).
- **Brian:** está migrando para o `pett-componentes` (instalado em 2026-11).
  - Já migrados: `PettIf`, todos os `PettField*`, todos os botões (`PettButton`), os modais (`PettModal`) e as mensagens (`PettMensagem`).
  - O **PrimeReact e o primeicons foram removidos** (2026-11-17), junto com o `stylesprime.css` e as cópias locais `PettField*.jsx`, `PettButton*.jsx` e `PettGrid.jsx`. Não reinstalar.
  - O **react-bootstrap e o sweetalert2 foram removidos** (2026-11-18), junto com o `Componentes/PettMensagem.jsx` local. Não reinstalar.
  - Ainda locais: `Sentinela`, `Loading`, `PettDialog` (já usa o `PettModal`) e os `XxxLoc.jsx`.
  - Ainda usa moment, flickity e Bootstrap JS/FontAwesome/TinyMCE por CDN ou `public/`.
  - **Upload de fotos** (`ProdutoFotosEnviar`): `PettUpload` com `enviar` próprio pelo `Api` (axios, para manter a URL e o token), `op=inserirFoto` no Cliff, só `.jpg`/`.jpeg`. O `Componentes/Upload/` local e os pacotes `react-dropzone`, `react-circular-progressbar`, `filesize` e `lodash` foram removidos (2026-11-18). Não reinstalar.
  - **Datas:** todos os campos de data usam o `PettFieldDate` (2026-11-18), que mostra `dd/mm/aaaa` e grava `aaaa-mm-dd`. O Brian envia sempre `aaaa-mm-dd`: `formatarDataIso(valor)` nos formulários e `filtrosParaApi(filtros)` (converte `dataInicial`/`dataFinal`) nas listagens, ambos do `Funcoes.jsx`. No Cliff, filtros com `Req.ContentFields.Field('x').AsDate` (Horse, `yyyy-MM-dd`) e campos `TDateField` com `SetData(Campo, Valor)` do `Funcoes.pas` (vazio grava nulo). Não use `StrToDate(...AsString)` para data vinda do front.
  - **Itens deslizáveis** (Venda e Servico): `PettSwipeItem` com `acoes` (Excluir `trash_can` com `perigo`; na Venda também Editar `pencil`) e `disabled` quando o documento não está aberto. O `react-swipeable-list` e o `prop-types` foram removidos (2026-11-18). Não reinstalar.
  - **Ícones:** use `<PettIcon name="..." size="25"/>` do pacote. O `vite-plugin-svgr` foi removido (2026-11-18): não use `?react`. SVG que não é ícone entra como URL (`import X from '...svg'` + `<img src={X}>`). A logo da Runtime é o componente `Componentes/LogoRuntime.jsx` (SVG embutido, texto em `currentColor` = `--pett-color-text`), usado no Login, na Home (sem logo da empresa) e na ErrorPage, para aparecer nos temas claros. As classes `.ico-*` saíram do `Global.css`; o tamanho vem do `size` do `PettIcon` e a animação do `animado`.
  - **Mensagens:** `import { PettMensagem } from 'pett-componentes';`, com a mesma API do antigo (`sucesso`, `erro`, `aviso`, `info`, `confirmar`, `carregando`, `fechar`). O `<PettMensagemProvider />` fica no `App.jsx`, dentro do `Router`.
  - **Modais:** `<PettModal show={...} fullscreen title="TÍTULO" fechar={false} className="modal-campos">` com o conteúdo direto no corpo e os botões em `<PettModal.Footer>` (`container limit-width btn-group p-0` + `PettButton size="lg" className="flex-fill"`).
    - Os modais de formulário e de filtros usam `className="modal-campos"` (2026-11-19). Essa classe do `Global.css` reduz o padding do corpo do `PettModal` para `10px 8px`. Os contêineres do corpo ficam em `container limit-width p-0`, e os botões do topo (Cadastrar Cliente/Equipamento) em `d-flex gap-1 mb-2 p-0` com `flex-fill`.
    - Nos `XxxLoc.jsx`, a pesquisa saiu do cabeçalho e fica no topo do corpo: `PettFieldSearch size="flex-grow-1" upper` + `PettButton` Filtrar, dentro de `container limit-width d-flex gap-1 mb-2 p-0`.
    - Botões extras que ficavam no cabeçalho (Cadastrar Cliente/Equipamento em Servicos e TeleVendas) foram para o topo do corpo.
  - Se for migrar, siga as regras de migração do CLAUDE.md global: troca completa, sem dependência solta.
  - **Inputs:** todos usam os `PettField*` do pacote (2026-11-17), inclusive os que eram `InputText`/`InputMask`/`Password` do PrimeReact direto nas telas.
    - `PettFieldLoc` segue o modelo do Angus (`Paginas/Firenet/Clientes.jsx`): o `PettFieldLoc` só com o código (`keyfilter="int"`) e, ao lado, um `PettFieldText readOnly disabled` com a descrição (`NOME X` / `DESCRIÇÃO X`).
    - Não existe `PettFieldNumber` no pacote: use `PettFieldText` com `keyfilter="int"`.
    - Campos com placeholder e sem rótulo (código de barras) usam `PettFieldSearch`.
  - **Botões:** todos são `PettButton` do pacote (2026-11-17). Equivalência usada: `danger`→`red`, `success`→`green`, `warning`→`yellow`, `primary`/`info`→`blue`, `dark`→`black`.
    - Rodapés de modal: contêiner `d-flex gap-1 w-100` (ou `container limit-width d-flex gap-1 p-0`) com `PettButton size="lg" className="flex-fill"`. Não usar `btn-group`, que cola os botões.
    - Spinner: `icone="loading_white" animado disabled`.
    - Ícones FontAwesome → do pacote: `fa-check`→`done`, `fa-paper-plane`→`paper_plane`, `fa-undo`→`undo`, `fa-search`→`search`, `fa-camera`→`vintage_camera`.
    - A regra `.btn-pett` foi tirada do `Global.css`, porque anulava as cores das variantes do pacote. Não recriar.
    - Imports: seguem a ordem do CLAUDE.md global (externos / `pett-componentes` um por linha em ordem alfabética / Api, contextos, hooks, componentes, outros e CSS). Todo o Brian foi reorganizado assim em 2026-11-18.
    - Cabeçalho: acrescente a linha no `//Atualizacoes:` do arquivo.
    - Contêiner dos campos: `<div className="row g-1">`. As antigas `p-inputtext-sm pett-input` já foram retiradas e não têm mais CSS.
  - O CSS do pacote (`style.css` + temas `reddark` e `redlight`) é importado no `App.jsx` **antes** dos CSS do Brian.
  - **Tema:** `Contextos/Temas.jsx` (`TemaProvider`/`TemaContext`, modelo do Angus) grava o tema em `localStorage.tema` e no `data-pett-theme` do `<html>`. O padrão é `reddark`, que também está no `index.html`. Na Home, o `Componentes/ComboTemas.jsx` (`PettFieldDrop`, modelo do Angus) escolhe entre os 22 temas do pacote; os CSS de todos (`pett-componentes/temas/xxx.css`) são importados no `App.jsx`. O Brian não tem CSS de tema local.
    - Todas as telas seguem o tema (2026-11-18). O `Global.css` usa as variáveis `--pett-*` direto (as antigas `--cor-*` saíram) e tem as classes de cor do Brian. Não use as cores fixas do Bootstrap:
      - barra do topo: `barra-tema` (no lugar de `bg-dark`, sem `text-light`);
      - faixa de seção: `barra-secao` (no lugar de `bg-secondary bg-opacity-25`);
      - item de listagem: `lista-item` (no lugar de `card rounded-0 border-0 border-bottom`; o `card-body` pode ficar para o padding); link: `lista-link` (no lugar de `link-dark`);
      - texto: `texto-suave` (`text-muted`/`text-secondary`), `texto-verde`, `texto-azul`, `texto-vermelho`, `texto-amarelo` (laranja do tema, legível no claro);
      - `list-group` já recebe as cores do tema pelas variáveis `--bs-list-group-*` no `Global.css`.
    - Continuam com cor fixa, de propósito: `badge bg-*` e caixas com fundo colorido (`bg-danger text-light` etc.), que funcionam nos dois temas.
    - Ícones brancos (`*_branco`) em barras: `PettIcon ... mono`, para seguir a cor do texto.
    - O `stylesbootstrap.css` foi removido (a única regra em uso, `.badge`, foi para o `Global.css`). Não recriar. As classes `sup-reset`, `lh-2` e `topspace-*` não existiam em CSS nenhum e foram retiradas.
  - O `.env` define `VITE_URL_API` (um por cliente, os outros ficam comentados) e flags por cliente: `VITE_DESCONTO_EM_VALOR`, `VITE_ALTERAR_VALOR_UNITARIO`, `VITE_MASCARA_PLACA`, `VITE_PEDIDOS_TODOS`.
  - `Contextos/Auth.jsx` (login/JWT no `localStorage`) e `Contextos/Parametros.jsx` (busca `firenet/parametros` e guarda no `localStorage`).
  - Não há `IncrementarBuild.js`, então `npm run build` é seguro; mesmo assim, para validar use `npx vite build`.

## Firenet (ERP desktop)

- `Firenet.dpr` com cerca de 670 units em `Firenet\Units\` (~990 `.pas`). `DataMod.pas` (`TDM`, ~780 KB) e `DataMod2.pas` têm as tabelas e as regras. `Main.pas` é o menu principal. Usa VirtualUI (`VirtualUI_AutoRun`) para acesso via navegador.
- Padrão de nomes dos forms (`TFormXxx` na unit `Xxx`):
  - `Xxx`: cadastro.
  - `XxxLoc`: localizador.
  - `XxxFast`: relatório FastReport (`frxReport` + exports).
  - `XxxRel`: tela de filtro do relatório.
- Componentes de terceiros e próprios em `C:\Runtime\Componentes\` (PngComponents, etc.).
- Fiscal: DLLs COM da FlexDocs (`NFe_Util_2G`, `CTe_Util`, `MDFe_Util`), registradas com `regasm` (veja `ComoAtualizarVersao.txt` e os `.bat`).
- Subprojetos dentro de `Firenet\`:
  - `AngusServer\`
  - `MalcolmServer\` (Malcolm: servidor PAF/Bloco X/ECF)
  - `Firecap\` (captura de vídeo/imagem para consultas)
  - `IAsmin\` (consultas em linguagem natural com IA, com `CLAUDE.md` próprio; as units `Iasmin*` ficam em `Firenet\Units\` desde 2026-11-23)
  - `AtualizadorClientes\`, `AtualizadorProdutos\`, `Neogrid\`, `CupomFiscal\`, `RegistrosPAF\`.
- `Firenet\Units` é grande. Use Grep/Glob direcionados em vez de ler arquivos inteiros. `DataMod.pas`/`.dfm` passam de 700 KB: leia por trechos.

## Convenções e cuidados

- **Codificação:**
  - `.pas`/`.dfm` do Delphi (Firenet, Phill, Cliff) estão em **Windows-1252 (ANSI)**. O Edit/Write recusa esses arquivos. Para alterar, use PowerShell com `[System.Text.Encoding]::GetEncoding(1252)` e mantenha CRLF. Não converta para UTF-8 sem o usuário pedir. A exceção são as units `Iasmin*`, em UTF-8 com BOM.
  - Os projetos React estão em UTF-8.
- O Delphi gera `__history`, `__recovery`, `Win32`, `*.dcu`, `*.identcache`, `*.dproj.local`. Não edite nem analise esses arquivos.
- Não há como compilar Delphi daqui sem o usuário confirmar o caminho do `dcc32`/`msbuild` do RAD Studio. Para validar Delphi, peça ao usuário para compilar no IDE.
- Cliff nasceu como cópia do Phill. Muitas units têm o mesmo nome e lógica parecida, mas **não são iguais** (DataModFirenet, Login, Vendas). `Cliff\Units\Removidos\` e `Cliff\Lixo\` estão fora do projeto. Ao corrigir algo num, verifique se o outro precisa da mesma correção e pergunte.
- Commits: `AAAA.MM.DD - descrição`. Componentes alterados recebem `//Atualizacoes:` + `//AAAA.MM.DD - descrição` no topo.

## Pendências conhecidas (apontar, não corrigir sem pedido)

- **Phill `Main.pas`:**
  - `Button1Click` tem ID e token da Z-API fixos no código.
  - `ConsultarStatusdoServio1Click` tem caminho e senha de certificado fixos.
- **Phill `SetarBancoEmpresa`:** o servidor está fixo em `localhost` (comentário: "criar campo").
- **SQL montado por concatenação** nos `listar` (com `San`/`QuotedStr`). Prefira parâmetros em código novo.
- **`Cliff\README.md`:** o título é "Phill" e os comandos git apontam para o repositório do Phill.
