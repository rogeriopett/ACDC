# CLAUDE.md

Angus é a versão web do ERP da Runtime Sistemas. É um front-end React (Vite) que conversa com uma API em Delphi. O sistema é multiempresa e cobre cadastros, fiscal (NF-e), financeiro, vendas/estoque e clínica (consultas/agenda).

Responda e escreva comentários em português, no mesmo estilo do código existente.

## Comandos

- `npm run dev`: incrementa `VITE_COMPILE` no `.env` (via `IncrementarCompile.js`) e sobe o Vite.
- `npm run build`: o `prebuild` incrementa `VITE_BUILD` no `.env` (via `IncrementarBuild.js`) antes do `vite build`.
- **Para só validar se compila, use `npx vite build`**, que não roda o `prebuild` e por isso não altera o `.env`.
- `npm run lint`: ESLint. Atenção: a regra `no-unused-vars` usa `varsIgnorePattern: '^[A-Z_]'` e **não acusa** imports de componentes nem constantes sem uso. Para achar imports sem uso, confira cada nome no corpo do arquivo.
- Não há testes automatizados.

## Stack

- React 19, Vite 7 (`@vitejs/plugin-react-swc`) e React Router 7.
- **UI: `pett-componentes`** (`github:rogeriopett/pett-componentes`), biblioteca própria do autor. Use sempre os componentes dela: `PettButton`, `PettGrid`/`PettColumn`, `PettField*` (`Text`, `Pass`, `Mask`, `Drop`, `Date`, `Money`, `Loc`…), `PettModal`, `PettSideBar`, `PettAppointments` (agenda de consultas), `PettIf`, `PettIcon`, `PettMensagem` etc.
  - As props e a documentação estão em `node_modules/pett-componentes/dist/index.d.ts`. Consulte esse arquivo antes de usar um componente que você não conhece.
  - As props são em português (`click`, `condicional`, `set`, `icone`, `caption`, `lado`, `largura`…).
- Outras libs: axios, jwt-decode e `extenso` (Recibos). Para texto rico (HTML), use o `PettEditor`. Para captcha, use o `PettCaptcha` com `provedor="recaptcha"` e `chave={import.meta.env.VITE_CAPTCHA}` (Cadastro/ResetSenha).
- O CSS do Bootstrap 5 vem por CDN no `index.html` (só classes utilitárias e grid).
- **Não usar** (foram removidos ou estão sendo eliminados): sweetalert2 (usar `PettMensagem`), primereact/primeicons, react-bootstrap, react-big-calendar/moment (usar `PettAppointments`; o `PettCalendar` agora é o calendário de mês do `PettFieldDate`), framer-motion, lucide-react, dnd-kit, TinyMCE (usar `PettEditor`), react-google-recaptcha (usar `PettCaptcha`), `vite-plugin-svgr`, e componentes que dependem do JS do Bootstrap (`data-bs-toggle`, offcanvas, collapse).
- SVGs são importados como URL (`import Logo from '...svg'` + `<img src={Logo}>`), **sem** `?react`.

## Estrutura

```
src/
  Api.jsx            axios com baseURL = VITE_URL_API; interceptor injeta o Bearer token do localStorage
  App.jsx            todas as rotas + imports dos temas
  Protecoes.jsx      guards de rota: Privado (logado), Empresa (tem empresa), Admin, UnLogged
  Funcoes.jsx        utilitários: tratarCatch, formatarDataStr/formatarDataStr2, formatarHora, formatarMoeda, soNumeros, getFoneMask...
  Combox.js          opções fixas de drops (selectSimNao, selectStatusUsuarios...)
  Contextos/         Auth (usuário, token, empresaSelecionada), Menu (menu da API), Temas, Unidades (fixo em "1")
  Hooks/             useTabela, useListagem, useLocalizar, useScrollToTop, useUnidades
  Componentes/       BarraSuperior, BarraOpcoes, ColunaCentral, Rodape, Loading, Sentinela, AtualizadoPor...
  Componentes/Localizadores/   modais de busca XxxLoc
  Paginas/Firenet/   telas do ERP (~60)
  Paginas/Admin/     empresas, usuários, parâmetros, editores de menu
  Paginas/Usuario/   login, cadastro, confirmação, reset/alteração de senha, perfil, minhas empresas
  Temas/             TemaXxxDark/Light.css (variáveis locais por tema)
```

## Contrato com a API

- Todas as chamadas são `Api.post(endpoint, formData)` com `FormData`. Sempre levam o campo `op` (`listar`, `visualizar`, `inserir`, `atualizar`, `excluir`, ou específicos como `reset`) e o campo `empresa` (`empresaSelecionada.value`).
- A resposta tem o formato `{ erro: 'S' | 'N', msg, contador, rpp, token }`. Com `erro === 'S'`, faça `throw response` e trate no `catch` com `tratarCatch('Tela operacao', error, logout)`. Se `token === 'expirado'`, chame `logout()`.
- Os campos seguem o padrão do banco Delphi/Firebird: prefixo de 3 letras + nome em maiúsculas (`MAR_CODIGO`, `USU_NOME`, `PRO_DESCRICAO`). As auditorias vêm em `XXX_USUARIO`, `XXX_DTATUALIZACAO` e `XXX_HRATUALIZACAO`.
- Endpoints do ERP: `firenet/<tabela>`. Endpoints do admin: `admin/<tabela>`.

## Padrão de tela de cadastro

Use [src/Paginas/Firenet/Marcas.jsx](src/Paginas/Firenet/Marcas.jsx) como referência:

- `useListagem(endpoint, 'Tela listar', logout)`: listagem com filtros e paginação infinita (o componente `Sentinela` chama `carregarMais`).
- `useTabela(endpoint, vazio, 'XXX_CODIGO', 'XXX_DESCRICAO', transformarDados?, aposVisualizar?)`: CRUD com a máquina de estados `operacao`: `listar` → `visualizar` → `atualizar`/`inserir`. Aceita chave composta (passe um array; exemplo em `Classfiscal.jsx`).
  - Exemplos no próprio hook: valores padrão e `transformarDados` em `Clientes.jsx`; tela com itens em `Condicoes.jsx` e `Vendas.jsx`.
- Layout: `<BarraSuperior/>`, depois `<BarraOpcoes titulo linkBack>` com `PettButton`s usando `condicional={operacao===...}` + `<AtualizadoPor/>`, depois `<ColunaCentral>` com o formulário (`PettIf` por operação) ou com a pesquisa + `PettGrid`, e por fim `<Rodape/>`.
- Campos: `<PettFieldText size="col-lg-2 col-md-3 col-sm-6" label="RÓTULO" name="XXX_CAMPO" value={reg.XXX_CAMPO} set={setReg} readOnly={disableFields} disabled={disableFields}/>`. Labels em MAIÚSCULAS.
- Confirmações e mensagens: `PettMensagem.confirmar/sucesso/erro/carregando/fechar`. Para entrada de dados extra (ex.: nova senha), use um `PettModal` com os `PettField*`. Exemplo: troca de senha em `Paginas/Admin/Usuarios.jsx`.

### Localizadores

Os `Componentes/Localizadores/XxxLoc.jsx` são `PettModal`s com filtro + `PettGrid` e usam `useListagem`. Eles devolvem o resultado por `props.onCloseModal({ LOC: true, ...item })` ou `onCloseModal({ LOC: false })` ao cancelar. Siga o padrão de `MarcasLoc.jsx`.

### BarraOpcoes

[src/Componentes/BarraOpcoes.jsx](src/Componentes/BarraOpcoes.jsx) mede se os botões (`children`) cabem na barra com um `ResizeObserver` (sobre uma cópia invisível). Se não couberem, troca por um botão de menu que abre um `PettSideBar` à direita com os mesmos botões empilhados. Os estilos ficam em `BarraOpcoes.css`. Os `children` são renderizados mais de uma vez, então não coloque `id` fixo nem efeitos colaterais neles.

## Temas

- O tema ativo é o atributo `data-pett-theme` no `<html>`, controlado por `Contextos/Temas.jsx` e salvo em `localStorage.tema`. O padrão é `reddark`.
- Há 22 temas: black, blue, brown, gray, green, orange, pink, purple, red, teal e yellow, cada um em dark e light.
- Para adicionar um tema, mexa em quatro lugares:
  1. `src/Temas/TemaXxxDark.css` / `TemaXxxLight.css`, com `TemaRedDark.css` como modelo. As variáveis são `--cor-barra`, `--cor-menu-fundo`, `--cor-link`, `--cor-texto`, `--pett-menubar-*` e `--cor-atalho-*`. As cores devem combinar com o acento e o `page-bg` do tema equivalente em `node_modules/pett-componentes/dist/temas/`.
  2. O import do CSS local em `App.jsx`.
  3. O import `pett-componentes/temas/xxxdark.css` em `App.jsx` (o tema precisa estar nos `exports` do pacote).
  4. A opção no `Componentes/ComboTemas.jsx`.

## Convenções

- Arquivos `.jsx` (há um único `.tsx` legado, `Configuracoes.tsx`). Indentação de 4 espaços, aspas simples e imports do `pett-componentes` um por linha.
- Componentes alterados recebem um histórico no topo: `//Atualizacoes:` + `//AAAA.MM.DD - descrição`.
- Mensagens de commit: `AAAA.MM.DD - descrição` (ex.: `2026.10.19 - Atualizacoes diversas`).
- Arquivos em UTF-8. O PowerShell 5.1 do ambiente exibe acentos quebrados (`Ã§`) ao ler com `Get-Content` sem `-Encoding UTF8`; isso é só exibição. Não "corrija" o arquivo.
- Variáveis de ambiente (`.env`): `VITE_URL_API`, `VITE_URL_SITE`, `VITE_CAPTCHA`, `VITE_VERSAO`, `VITE_BUILD`, `VITE_COMPILE` e `VITE_API_CEP`. Não exponha os valores.

## Pendências conhecidas

- **`App.jsx`:** importa `Home`, mas nenhuma rota usa.
- **Arquivo morto:** `BlobView.jsx` (importa `./IfComponent`, que não existe).
- **Captcha só no front:** o token do `PettCaptcha` não é enviado à API, então o servidor não valida o captcha.
- **`Contextos/Unidades.jsx`:** `if (!event) event.preventDefault()` está com a lógica invertida.
- **`Paginas/Firenet/Produtos.jsx`:** os campos PRODUTO REAL e MARKUP chamam `produtosLocOpen(true)`, que não existe, e dão erro ao clicar. No PRODUTO REAL o certo deve ser `setShowProdutosLoc(true)`. O MARKUP provavelmente deveria abrir um `MarkupsLoc`.
- **`public/plugins/tinymce`:** pasta que sobrou da remoção do TinyMCE e vai inteira para o `dist`. Pode ser apagada (aguardando confirmação do usuário).
- **README:** cita `npm start`/`npm test`, que não existem, e ainda lista pacotes removidos (TinyMCE, recaptcha etc.).

## Histórico de migrações (para não refazer)

- **2026-10:** pacotes sem uso removidos. `sweetalert2` foi trocado por `PettMensagem` e pelo `PettModal` com `PettFieldPass` (troca de senha em `Admin/Usuarios.jsx`). Os SVGs deixaram de usar `?react`, e o `vite-plugin-svgr` saiu.
- **2026-10:** criados os 10 temas que faltavam (brown, gray, pink, purple, teal).
- **2026-10:** `BarraOpcoes` refeita com `PettSideBar` (antes usava o offcanvas do Bootstrap e não colapsava direito).
- **2026-11:** `PettFieldEditor` (TinyMCE) trocado pelo `PettEditor` em Produtos e Parametros. Em Parametros não se usa `urlBase`, porque os modelos de e-mail precisam manter o domínio completo nas imagens. O TinyMCE foi removido.
- **2026-11:** a Agenda de Consultas passou do `PettCalendar` antigo para o `PettAppointments`. Saíram o `ConsultasAgenda.css` (regras `rbc-*`) e as variáveis `--cor-calendario-*` dos temas e do `Global.css`. O `PettAppointments` usa as variáveis `--pett-appointments-*` do pacote.
- **2026-11:** o `react-google-recaptcha` e o `PettCaptcha` local (Turnstile, sem uso) foram trocados pelo `PettCaptcha` do pacote. O ResetSenha passou a exigir o captcha para habilitar o botão.
