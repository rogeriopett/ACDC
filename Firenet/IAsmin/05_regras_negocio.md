# Regras de negócio e glossário

Contexto para IA. Como o ERP Firenet calcula os indicadores mais pedidos. Siga estas definições; elas são as mesmas usadas nas telas e relatórios do sistema. Os códigos de status estão em `04_dominios.md`.

## Mapa de assuntos → tabelas

| Assunto | Tabelas principais |
|---|---|
| Vendas, pedidos, orçamentos, faturamento | `VENDAS` (cabeçalho), `VENDASITENS` (itens), `CONDICOES` (condição de pagamento), `NATUREZAS` |
| Clientes | `CLIENTES`, `CONTATOS`, `CIDADES`, `ATIVIDADES` (ramo de atividade) |
| Vendedores, funcionários, técnicos, médicos, professores | `VENDEDORES` (cadastro único de pessoas da empresa) |
| Produtos e serviços | `PRODUTOS`, `GRUPOS`, `FAMILIAS`, `MARCAS`, `UNIDADES`, `PRODUTOSCODIGOS` (código no fornecedor) |
| Estoque | `PRODUTOS.PRO_ESTOQUEATUAL` (saldo atual), `ESTOQUE` (movimentação), `PRODUTOSQTDE` (saldo por almoxarifado), `LOTES` |
| Contas a receber | `RECEBER`, `RECEITAS` (tipo/categoria de receita), `AGRUPADORES`, `BOLETOS` |
| Contas a pagar | `PAGAR`, `DESPESAS` (tipo/categoria de despesa), `FORNECEDORES` |
| Caixa e bancos | `CAIXAMOV` (caixa), `CONTAS` (contas bancárias, saldo em `CON_SALDO`), `CONTASMOV` (extrato), `CHEQUES` |
| Compras / entrada de notas | `COMPRAS`, `COMPRASITENS`, `FORNECEDORES` |
| Notas fiscais | `NFE` + `NFEITENS` (NF-e modelo 55), `NFCE` + `NFCEITENS` (NFC-e), `NFSE` + `NFSEITENS` (serviço), `NOTAS` + `NOTASITENS` (nota fiscal modelo antigo), `CTE`, `MDFE` |
| Ordens de serviço | `SERVICOS`, `SERVICOSITENS`, `SERVICOSHORAS` |
| Televendas / CRM | `TELEVENDAS`, `VIAS` (canal de contato), `MAILINGS`, `ATENDIMENTOS` |
| Comandas (bar/restaurante) | `COMANDAS`, `COMANDASITENS` |
| Escola / cursos | `MATRICULAS`, `TURMAS`, `CURSOS`, `CALENDARIOS`, `CHAMADAS`, `AVALIACOES`, `MENSALIDADES` |
| Clínica | `CONSULTAS`, `PRONTUARIOS`, `EVOLUCOES`, `RECEITUARIOS`, `ODONTOGRAMAS` |
| Imóveis / locação | `IMOVEIS`, `CONTRATOS`, `LOCACOES` |
| Seguros | `SEGUROS`, `SEGUROSPARCELAS`, `SEGUROSENDOSSOS` |
| Projetos | `PROJETOS`, `PROJETOSITENS`, `PROJETOSFASES` |

Nem todo cliente do ERP usa todos os módulos; tabela vazia é normal.

## Vendas e faturamento

- **Venda faturada / realizada**: `VED_STATUS = 'F' AND VED_ENTRADASAIDA = 'S'`. Esta é a base de todos os indicadores de venda. Pedidos abertos (`'A'`), cancelados (`'C'`) e inutilizados (`'I'`) não contam.
- **Data da venda**: `VED_DTEMISSAO`. Use-a para filtrar período ("vendas de março", "este mês").
- **Faturamento / total vendido**: `SUM(VED_VALORTOTAL)` das vendas faturadas no período.
- **Quantidade de vendas**: `COUNT(*)` das vendas faturadas. **Ticket médio** = faturamento ÷ quantidade de vendas.
- **Clientes atendidos (positivação)**: `COUNT(DISTINCT VED_CLIENTE)` das vendas faturadas no período.
- **Custo e margem**: custo da venda em `VED_CUSTOTOTAL`; margem bruta = `VED_VALORTOTAL - VED_CUSTOTOTAL`; margem % = margem ÷ `VED_VALORTOTAL` × 100 (proteja divisão por zero com `NULLIF`).
- **Comissão**: `SUM(VED_TOTALCOMISSAO)` das vendas faturadas, por `VED_VENDEDOR`.
- **Comissão do representante**: `SUM(VED_TOTALCOMISSAOREP)` das vendas faturadas, por `VED_REPRESENTANTE`. O representante também é um cadastro de `VENDEDORES` (`JOIN VENDEDORES R ON R.VEN_CODIGO = V.VED_REPRESENTANTE`) e é separado do vendedor da venda. Não some com a comissão do vendedor sem o usuário pedir. Por item: `VEI_VALORCOMISSAOREP` (valor) e `VEI_COMISSAOREP` (percentual). Nas notas fiscais, `NFE_TOTALCOMISSAOREP` e `NFI_VALORCOMISSAOREP`. Nas contas a receber, `REE_REPRESENTANTE` → `VENDEDORES`.
- **Devoluções**: a natureza de operação diz se o documento é devolução: `JOIN NATUREZAS NT ON NT.NAT_CODIGO = V.VED_CFOP` e `NT.NAT_DEVOLUCAO = 'S'` (`VED_CFOP` guarda o CFOP, que é o código da natureza).
  - **Devolução de cliente** (o cliente devolveu para a empresa): `VED_STATUS = 'F' AND VED_ENTRADASAIDA = 'E' AND NT.NAT_DEVOLUCAO = 'S'`. É o que se desconta da venda: **vendas líquidas** = faturamento − devoluções de cliente no mesmo período. Mostre as duas colunas e a líquida, nunca só a líquida.
  - **Devolução ao fornecedor** (a empresa devolveu uma compra): `VED_STATUS = 'F' AND VED_ENTRADASAIDA = 'S' AND NT.NAT_DEVOLUCAO = 'S'`. Para bater com os relatórios, o painel e as metas do ERP, **não** exclua esses documentos do faturamento padrão. Só os separe quando o usuário perguntar por devoluções ao fornecedor ou pedir o faturamento sem elas.
  - Nas notas fiscais é igual, com `NFE_CFOP`, `NFE_ENTRADASAIDA` e `NFE_STATUS`.
  - Entrada sem natureza de devolução (`VED_ENTRADASAIDA = 'E'` e `NAT_DEVOLUCAO` diferente de `'S'`) é outra operação (retorno, remessa) e não é devolução.
- **Orçamentos / pedidos em aberto**: `VED_STATUS = 'A'`.
- **Desconto**: `VED_DESCVALOR` (valor) e `VED_DESCPORC` (percentual) no cabeçalho; `VEI_DESCVALOR` / `VEI_DESCPORC` por item.

### Itens vendidos

- Junte `VENDASITENS VI` com `VENDAS V ON V.VED_CODIGO = VI.VEI_VENDA` e aplique o filtro de venda faturada em `V`.
- **Produtos mais vendidos**: `SUM(VI.VEI_QUANTIDADE)` (quantidade) ou `SUM(VI.VEI_VALORTOTAL)` (valor), agrupando por `VI.VEI_PRODUTO` e juntando `PRODUTOS` para o nome (`PRO_NOME`).
- Produto × serviço: `VEI_TIPO = 'P'` (produto) ou `'S'` (serviço).
- Custo do item: `VEI_PRECOCUSTOTOTAL`; preço unitário: `VEI_VALORUNIT`.

### Vendas × notas fiscais

Uma venda pode gerar nota fiscal (`VED_NFE` → `NFE`, `VED_NFCE` → `NFCE`, `VED_NOTA` → `NOTAS`). Para faturamento comercial use `VENDAS`. Use `NFE`/`NFCE` só quando a pergunta for sobre notas fiscais emitidas (fiscal), e nunca some vendas com notas — o valor seria contado duas vezes.

- **Notas emitidas**: `NFE_STATUS = 'F'` (NF-e) ou `NFC_STATUS = 'F'` (NFC-e), por `NFE_DTEMISSAO` / `NFC_DTEMISSAO`, valor em `NFE_VALORTOTAL` / `NFC_VALORTOTAL`.
- **Notas canceladas**: status `'C'`.

### Metas

- **O que é**: cada linha de `METAS` é a meta de um vendedor (`MET_VENDEDOR`) no período `MET_DTINICIO` a `MET_DTFIM`, com valor-alvo `MET_METAVALOR`. `MET_STATUS`: `'A'` = aberta, `'B'` = baixada (encerrada em `MET_DTBAIXA`).
- **Valores gravados**: o ERP grava o realizado na própria meta quando o usuário clica em recalcular (normalmente no fim do período), para manter histórico: `MET_TOTALVENDAS` (faturado), `MET_TOTALVENDASCOMISSIONADAS`, `MET_TOTALLIQUIDADO` (recebido), `MET_METAATINGIDA` (% atingido = `MET_TOTALVENDAS` × 100 ÷ `MET_METAVALOR`), `MET_TOTALCOMISSAO`, `MET_BONUSPORC` e `MET_BONUSVALOR` (`MET_SALARIOBASE` × `MET_BONUSPORC` ÷ 100). Para metas **baixadas** ou perguntas de histórico, use esses campos direto.
- **Realizado atual** (metas abertas, "como está a meta agora"): calcule, porque os campos gravados podem estar desatualizados. Diga na explicação que o valor é calculado na hora.
  - **Faturamento**: sempre pela tabela `NFE` (não use `VENDAS`): `SUM(NFE_TOTALITENS)` com `NFE_STATUS = 'F' AND NFE_ENTRADASAIDA = 'S' AND NFE_DTEMISSAO BETWEEN MET_DTINICIO AND MET_DTFIM`.
  - **Liquidação (recebidos)**: pela tabela `RECEBER`: `SUM(REE_VALOR)` com `REE_STATUS = 'B' AND REE_DTPAGAMENTO BETWEEN MET_DTINICIO AND MET_DTFIM`.
  - **Vendedor ou representante**: se `MET_REPRESENTANTE = 'S'`, ligue por `NFE_REPRESENTANTE` / `REE_REPRESENTANTE` = `MET_VENDEDOR`; se `'N'`, por `NFE_VENDEDOR` / `REE_VENDEDOR`. Ex.: `IIF(M.MET_REPRESENTANTE = 'S', N.NFE_REPRESENTANTE, N.NFE_VENDEDOR) = M.MET_VENDEDOR`.
  - **Comissão da meta**: se `MET_COMISSAOTIPO = 'FATURAMENTO'`, é `SUM(NFE_TOTALCOMISSAO)` (ou `NFE_TOTALCOMISSAOREP` quando `MET_REPRESENTANTE = 'S'`); se `'RECEBIMENTO'`, é o total liquidado × `MET_COMISSAO` ÷ 100.
  - **Faixa de bônus**: `METASCONFIG`, a linha em que o % atingido está entre `MTG_INICIO` e `MTG_FIM`; o percentual de bônus é `MTG_PORCENTAGEM`.
- O % atingido é sempre sobre o faturamento (`NFE_TOTALITENS`), mesmo quando a comissão é por recebimento.

## Clientes

- **Cliente com cadastro ativo**: `CLI_STATUS = 'A'`.
- **Cliente ativo no sentido comercial** (critério do dashboard do ERP) — conforme os dias desde a última venda faturada (`VED_STATUS = 'F' AND VED_ENTRADASAIDA = 'S'`):

| Dias desde a última compra | Classificação |
|---|---|
| 1 a 60 | Ativo |
| 61 a 120 | Quase inativo |
| 121 a 180 | Inativo recente |
| 181 a 360 | Inativo |
| mais de 360 | Ex-cliente |
| nunca comprou | Nunca comprou |

  Última compra: `(SELECT FIRST 1 VED_DTEMISSAO FROM VENDAS WHERE VED_CLIENTE = C.CLI_CODIGO AND VED_STATUS = 'F' AND VED_ENTRADASAIDA = 'S' ORDER BY VED_DTEMISSAO DESC)`. Dias: `DATEDIFF(DAY, ultima_compra, CURRENT_DATE)`.
- **Clientes novos**: `CLI_DTCADASTRO` no período.
- **Carteira do vendedor**: `CLI_VENDEDOR` (vendedor responsável pelo cliente). Já `VED_VENDEDOR` é o vendedor de cada venda.
- **Aniversariantes**: `EXTRACT(MONTH FROM CLI_DTNASC)` e `EXTRACT(DAY FROM CLI_DTNASC)`.

## Contas a receber

- **Em aberto / a receber**: `REE_STATUS IN ('A', 'P')`; valor em `REE_VALOR`. A pré-baixada (`'P'`) ainda não foi recebida e continua em aberto até a baixa efetiva. Os relatórios do ERP mostram as duas separadas (aberto e pré-baixado): quando fizer sentido, use `SUM(IIF(REE_STATUS = 'P', REE_VALOR, 0)) AS VALOR_PRE_BAIXADO` ao lado do total.
- **Vencidas / inadimplência**: `REE_STATUS IN ('A', 'P') AND REE_DTVENCIMENTO < CURRENT_DATE`. Pré-baixada vencida também aparece como atraso. Dias de atraso: `DATEDIFF(DAY, REE_DTVENCIMENTO, CURRENT_DATE)`.
- **A vencer**: `REE_STATUS IN ('A', 'P') AND REE_DTVENCIMENTO >= CURRENT_DATE`.
- **Recebido no período**: `REE_STATUS = 'B'`, filtrando por `REE_DTPAGAMENTO`; valor efetivamente recebido em `REE_VALORPAGO` (já inclui juros/multa e descontos). `REE_VALOR` é o valor da parcela.
- **Pré-baixadas**: `REE_STATUS = 'P'`. O vendedor externo cobrou o cliente e lançou a baixa pelo aplicativo, mas a empresa ainda não conferiu. **Não é recebido**: nunca some em "recebido no período", caixa ou metas por liquidação. Continua em aberto e, se vencida, em atraso (regras acima). Quando perguntarem por pré-baixadas, cobranças dos vendedores externos ou o que falta conferir, filtre só `REE_STATUS = 'P'` e ligue ao vendedor por `REE_VENDEDOR`.
- Canceladas (`'C'`) nunca entram em totais.
- Parcela: `REE_PARCELANUM` de `REE_PARCELAQTDE`. Venda de origem: `REE_VENDA`. Categoria: `REE_RECEITA` → `RECEITAS.REC_DESCRICAO` (e `REC_AGRUPADOR` → `AGRUPADORES`).

### Boletos

- **Valor do boleto**: `BOL_VALORTOTAL`. Use esta coluna quando perguntarem pelo valor dos boletos emitidos, em aberto etc.
- **Valor pago**: `BOL_VALORPAGO`, o valor efetivamente pago pelo cliente, informado pelo banco no arquivo de retorno.
- **Em aberto no mês** ("quanto tenho em boletos em aberto deste mês?"): `BOL_STATUS = 'A'` com `BOL_DTVENCIMENTO` do primeiro ao último dia do mês atual (não só até hoje), somando `BOL_VALORTOTAL`.
- **Custo do boleto**: `BOL_VALORBOLETO` é a tarifa cobrada pelo banco pela emissão/cobrança do boleto, **não** o valor do boleto. Só use quando perguntarem por custo, tarifa ou despesa com boletos.
- Situação em `BOL_STATUS` (veja `04_dominios.md`): canceladas (`'C'`) nunca entram em totais.

## Contas a pagar

Mesmo padrão do contas a receber, em `PAGAR`:

- Em aberto: `PAG_STATUS = 'A'`, valor em `PAG_VALOR`. Vencidas: `PAG_DTVENCIMENTO < CURRENT_DATE`.
- Pago no período: `PAG_STATUS = 'B'` por `PAG_DTPAGAMENTO`, valor em `PAG_VALORPAGO`.
- Fornecedor: `PAG_FORNECEDOR` → `FORNECEDORES.FOR_NOME`. Categoria: `PAG_DESPESA` → `DESPESAS.DES_DESCRICAO`.

## Caixa e bancos

- **Saldo bancário atual**: `CONTAS.CON_SALDO` (por conta; `CON_NOME`).
- **Extrato**: `CONTASMOV` por `CMO_DTMOVIMENTO`; `CMO_ENTRADASAIDA` `'E'` soma, `'S'` subtrai.
- **Caixa**: `CAIXAMOV` por `CAI_DATA`. Cada caixa pertence a um operador (`CAI_VENDEDOR` → `VENDEDORES`); o saldo atual do caixa de cada operador fica em `VENDEDORES.VEN_SALDOATUAL`.
- **Fluxo de caixa previsto**: contas a receber em aberto menos contas a pagar em aberto, agrupadas por data de vencimento.

## Estoque

- **Saldo atual**: `PRODUTOS.PRO_ESTOQUEATUAL`. Para produtos ativos use `PRO_STATUS = 'A'` e, se fizer sentido, `PRO_TIPO = 'P'` (serviços não têm estoque).
- **Abaixo do mínimo**: `PRO_ESTOQUEATUAL < PRO_ESTOQUEMIN` (com `PRO_ESTOQUEMIN > 0`).
- **Valor do estoque**: `SUM(PRO_ESTOQUEATUAL * PRO_PRECOCUSTO)` dos produtos com saldo positivo.
- **Movimentação**: `ESTOQUE` por `EST_DATA`, sentido em `EST_TRANSACAO` (`'E'`/`'S'`), quantidade em `EST_QUANTIDADE`.
- **Preços**: `PRO_PRECOVENDA` (venda padrão), `PRO_PRECO1`…`PRO_PRECO6` (tabelas de preço), `PRO_PRECOCUSTO` (custo).

## Ordens de serviço

- Abertas: `SER_STATUS = 'A'`; finalizadas: `'F'`; baixadas (encerradas): `'B'`.
- Técnico: `SER_TECNICO` → `VENDEDORES`. Valor: `SER_VALORTOTAL`.

## Compras

- Compra concluída: `COM_STATUS = 'F'`. Data de entrada: `COM_DTENTRADA`; data da nota: `COM_NOTADATA`. Valor: `COM_VALORTOTAL`. Fornecedor: `COM_FORNECEDOR`.

## Linguagem do usuário → interpretação

| O usuário diz | Interpretar como |
|---|---|
| "vendi", "faturei", "faturamento", "vendas" | vendas faturadas (`VED_STATUS = 'F'` e `VED_ENTRADASAIDA = 'S'`) |
| "hoje", "ontem" | `CURRENT_DATE`, `CURRENT_DATE - 1` |
| "este mês", "no mês" (o que já aconteceu: vendas, recebido, pago) | do primeiro dia do mês atual até hoje |
| "em aberto deste mês", "a receber / a pagar este mês", "vencem este mês" (contas, boletos) | vencimento do primeiro ao **último dia** do mês atual, incluindo as datas futuras |
| "mês passado" | mês anterior completo |
| "este ano" | de 1º de janeiro do ano atual até hoje |
| "quem me deve", "inadimplentes", "em atraso" | contas a receber abertas e vencidas |
| "o que tenho a pagar" | contas a pagar abertas |
| "meu estoque", "quanto tenho de X" | `PRO_ESTOQUEATUAL` |
| "melhores clientes" | maior faturamento no período |
| "produto que mais vende" | maior quantidade vendida no período (informe também o valor) |
