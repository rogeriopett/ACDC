# Brian

App web/mobile de força de vendas da Runtime Sistemas. O vendedor consulta clientes, produtos e contas a receber, lança pedidos de venda, confere pedidos com leitor de código de barras, abre ordens de serviço, registra contatos de televendas e acompanha as metas.

O Brian fala com o **Cliff** (API em Delphi 12 + Horse), que acessa a base Firebird do ERP **Firenet** do cliente. Cada cliente tem a sua instalação do Cliff, e o Brian aponta para ela pelo `.env`.

```
Brian (React)  →  Cliff (Delphi/Horse)  →  firenet_<cliente>.fdb
```

## Stack

- React 19 + Vite 8 (com o React Compiler via Babel)
- [`pett-componentes`](https://github.com/rogeriopett/pett-componentes): campos, botões, modais, mensagens, ícones, upload, swipe e temas
- Bootstrap 5 (CSS e JS por CDN, no `index.html`) para o layout
- axios, react-router-dom 7, react-number-format, moment/date-fns, numeral, nl2br, flickity
- Font Awesome e TinyMCE em `public/plugins/`

## Como rodar

```bash
npm install
npm run dev
```

Para validar uma alteração, gere o build com:

```bash
npx vite build
```

Depois de atualizar o `pett-componentes`, reinicie o `npm run dev`. Se ainda aparecer a versão antiga, use `npx vite --force`.

## Configuração (`.env`)

| Variável | Uso |
|---|---|
| `VITE_URL_API` | URL do Cliff do cliente, terminada em `/`. Há uma por cliente no arquivo; deixe ativa só a que vai ser usada. |
| `VITE_APP_VER` | Versão mostrada na Home. |
| `VITE_DESCONTO_EM_VALOR` | `true`: desconto do pedido em valor; `false`: em percentual. |
| `VITE_ALTERAR_VALOR_UNITARIO` | Permite alterar o valor unitário do item. |
| `VITE_MASCARA_PLACA` | Usa a máscara de placa de veículo. |
| `VITE_PEDIDOS_TODOS` | `false`: o vendedor só pesquisa os próprios pedidos. |

O `.env` é versionado.

## Telas

| Rota | Tela |
|---|---|
| `/login` | Login (usuário do Firenet, tabela `USUARIOS`) |
| `/home` | Menu, logo da empresa e troca de tema |
| `/clientes`, `/cliente/:id` | Clientes |
| `/produtos`, `/produto/:id` | Produtos |
| `/produtofotos/:id`, `/produtofotosenviar/:id` | Fotos do produto e envio de fotos |
| `/receber`, `/receber/:id` | Contas a receber |
| `/vendas`, `/venda/:id` | Pedidos de venda |
| `/vendasconferencias`, `/vendaconferencia/:id` | Conferência de pedidos (código de barras) |
| `/servicos`, `/servico/:id` | Ordens de serviço |
| `/televendas`, `/televenda/:id` | Televendas |
| `/metas` | Metas do vendedor |

Todas, menos o login, ficam dentro de `<Privado>` e exigem o token.

## Estrutura

```
src/
  Api.jsx           axios com a VITE_URL_API e o token (Bearer) em toda requisição
  App.jsx           rotas, CSS do pett-componentes, providers e PettMensagemProvider
  Funcoes.jsx       formatação de datas e valores, tratarCatch
  Global.css        estilos do Brian sobre as variáveis do tema (--pett-*)
  Contextos/        Auth (login/JWT), Parametros (firenet/parametros), Temas (reddark/redlight)
  Hooks/            useListagem (listagem paginada com rolagem infinita)
  Componentes/      localizadores (XxxLoc), formulários, cards e itens de lista
  Paginas/          uma tela por rota
  Imagens/          logo da Runtime
public/             ícones do app, manifest, fontes e plugins (Font Awesome, TinyMCE)
```

## API (Cliff)

- Toda chamada é `POST` com `FormData` e o campo `op` (`listar`, `visualizar`, `inserir`, `atualizar`, `excluir`, `localizar` ou específicos), em rotas como `firenet/clientes`, `firenet/vendas` etc.
- Resposta: `{ erro: 'S' | 'N', msg, contador, rpp, token }`. Em `listar`, `msg` é o array e `rpp` são os registros por página.
- Se `token === 'expirado'` (ou a resposta for 401), o app faz logout. O `tratarCatch` do `Funcoes.jsx` cuida disso nos `catch`.
- Rotas públicas usadas: `firenet/parametros` e `GET arquivo?op=logosvg` (logo SVG da empresa, mostrada na Home; se não houver, aparece a logo da Runtime).

## Padrões do código

- **Componentes de UI:** sempre do `pett-componentes` (`PettField*`, `PettButton`, `PettModal`, `PettMensagem`, `PettIcon`, `PettUpload`, `PettSwipeItem`, `PettProgressBar`…). Não instale libs de terceiros para o que o pacote já tem. Se faltar algo nele, a alteração é feita no próprio pacote.
- **Tema:** `reddark` (padrão) e `redlight`, gravados em `localStorage.tema` e no `data-pett-theme` do `<html>`. Use as classes do `Global.css` (`barra-tema`, `barra-secao`, `lista-item`, `lista-link`, `texto-suave`, `texto-verde`…) no lugar das cores fixas do Bootstrap.
- **Ícones:** `<PettIcon name="..." size="25"/>`. SVG que não é ícone entra como URL (`import Logo from '...svg'`).
- **Imports**, em três blocos separados por uma linha em branco:
  1. React e pacotes externos;
  2. `pett-componentes`, um componente por linha, em ordem alfabética;
  3. locais: `Api`, contextos, hooks, componentes, funções/imagens e, por último, os CSS.
- **Cabeçalho:** todo arquivo alterado recebe uma linha no `//Atualizacoes:` do topo (`//AAAA.MM.DD - descrição`).
- **Commits:** `AAAA.MM.DD - descrição`.

Mais detalhes no `CLAUDE.md` da raiz do repositório (`C:\Runtime\ACDC`).
