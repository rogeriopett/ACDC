# Domínios — significado dos códigos

Contexto para IA. Valores possíveis das colunas codificadas (status, tipos, flags). Use exatamente estes códigos nos filtros (maiúsculos, entre aspas simples).

## Convenção geral

- **Sim/não:** colunas `VARCHAR(1)` que só têm `S`/`N` usam `'S'` = sim e `'N'` = não. Exemplos: `_MOVIMENTAFINANCEIRO`, `_MOVIMENTAESTOQUE`, `_COMPOEBASEICMS`, `_ATUALIZAR`, `_INTERNET`, `CLI_MENSALISTA`, `CLI_BLOQUEARVENDA`, `CLI_OBITO`, `CLI_RECEBEAVISOS`, `PRO_COMPOSTO`, `PRO_OFERTA`, `VED_ENTREGUE`. No banco há 148 colunas assim. Trate NULL como `'N'`, salvo indicação abaixo.
- **Ativo/inativo:** `'A'` = ativo e `'I'` = inativo nos `_STATUS` de cadastros: `ACO_STATUS`, `ALM_STATUS`, `ASS_STATUS`, `BAN_STATUS`, `CLI_STATUS`, `CPG_STATUS`, `CON_STATUS`, `CUR_STATUS`, `ECF_STATUS`, `EQP_STATUS`, `ETQ_STATUS`, `FOR_STATUS`, `GNR_STATUS`, `GRU_STATUS`, `IMT_STATUS`, `MOT_STATUS`, `PRO_STATUS`, `PJF_STATUS`, `TAX_STATUS`, `TEL_STATUS`, `VEN_STATUS`, `VHT_STATUS`, `VIA_STATUS`. Em documentos e movimentos (vendas, notas, contas, metas), `'A'` quer dizer **aberto**; veja as tabelas abaixo.
- `_ENTRADASAIDA`: `'E'` = entrada, `'S'` = saída.
- `_TIPOPESSOA`: `'F'` = pessoa física, `'J'` = pessoa jurídica.

## Documentos de venda e notas fiscais

Mesmo padrão em `VENDAS.VED_STATUS`, `NFE.NFE_STATUS`, `NFCE.NFC_STATUS`, `NFSE.NFS_STATUS`, `NOTAS.NOT_STATUS` e `COMPRAS.COM_STATUS`:

| Código | Significado |
|---|---|
| `A` | Aberto (em digitação, orçamento/pedido não concluído) |
| `F` | Finalizado (concluído; para notas fiscais, emitida/autorizada) |
| `C` | Cancelado |
| `I` | Inutilizado |

`VENDAS.VED_ENTRADASAIDA` (vem da natureza de operação, `NATUREZAS.NAT_ENTRADASAIDA`): `'S'` = saída (venda), `'E'` = entrada (devolução, retorno, remessa de entrada). O mesmo vale para `NFE_ENTRADASAIDA`, `NOT_ENTRADASAIDA` e `COM_ENTRADASAIDA`.

A natureza de operação de cada documento fica em `VED_CFOP`, `NFE_CFOP`, `NFC_CFOP`, `NOT_CFOP` e `COM_CFOP`. O código da natureza é o próprio CFOP (`NATUREZAS.NAT_CODIGO`, ex.: 5102), e essas colunas guardam esse código. Não há chave estrangeira, de propósito: `JOIN NATUREZAS NT ON NT.NAT_CODIGO = V.VED_CFOP`. A descrição também está gravada no documento (`VED_CFOPDESC`, `NFE_CFOPDESC` etc.).

`NATUREZAS.NAT_DEVOLUCAO = 'S'` indica natureza de devolução. Junto com `_ENTRADASAIDA` (documento finalizado, `_STATUS = 'F'`):

| `_ENTRADASAIDA` | `NAT_DEVOLUCAO` | Significado |
|---|---|---|
| `S` | `'N'` ou NULL | Venda / saída normal |
| `E` | `'S'` | Devolução **do cliente** para a empresa (devolução de venda) |
| `S` | `'S'` | Devolução **da empresa para o fornecedor** (devolução de compra) |
| `E` | `'N'` ou NULL | Outras entradas (retorno, remessa de entrada) |

`VED_MANUAL` / `NFE_MANUAL`: `'S'` = valores digitados manualmente, `'N'` ou NULL = calculados pelo sistema.

## Itens

`VENDASITENS.VEI_TIPO` (também `PRODUTOS.PRO_TIPO`): `'P'` = produto, `'S'` = serviço.

`VEI_COMPOETOTAL` / `NFI_COMPOETOTAL` / `SEI_COMPOETOTAL`: `'S'` ou NULL = o item compõe o total do documento; `'N'` = não compõe.

## Financeiro

`RECEBER.REE_STATUS` (contas a receber) e `PAGAR.PAG_STATUS` (contas a pagar):

| Código | Significado |
|---|---|
| `A` | Aberta (a receber / a pagar) |
| `B` | Baixada (paga / recebida; valor efetivo em `REE_VALORPAGO` / `PAG_VALORPAGO`) |
| `P` | Pré-baixada (só em `RECEBER`): o vendedor externo cobrou o cliente e lançou a baixa pelo aplicativo; a conta aguarda conferência na empresa para a baixa efetiva (`B`). **Não conta como recebida.** |
| `C` | Cancelada |

`BOLETOS.BOL_STATUS`: `'A'` = aberto, `'B'` = baixado (pago), `'C'` = cancelado.

`CAIXAMOV.CAI_ENTRADASAIDA` e `CONTASMOV.CMO_ENTRADASAIDA`: `'E'` = entrada (soma no saldo), `'S'` = saída (subtrai do saldo).

`HORAS.HOR_TRANSACAO`: `'C'` = crédito de horas, `'D'` = débito de horas.

`RECEBER.REE_TIPOBAIXA` e `PAGAR.PAG_TIPOBAIXA`: `'T'` = baixa total; `'P'` = baixa parcial (a parcela foi dividida e o restante virou uma nova conta); vazio ou NULL = registro antigo, sem a informação. Para valor recebido ou pago use `_STATUS = 'B'`, e não esta coluna.

`CUPOM.CUP_STATUS`: `'F'` = finalizado, `'C'` = cancelado.

`NFE.NFE_CONSULTADA`: controle interno da consulta da nota na SEFAZ (`'N'` = não consultada, `'F'` = consulta concluída com protocolo, `'S'` = consultada sem protocolo). Não use em análises; para nota emitida, use `NFE_STATUS = 'F'`.

## Estoque

`ESTOQUE.EST_TRANSACAO`: `'E'` = entrada no estoque, `'S'` = saída do estoque. `EST_QUANTIDADE` é sempre positivo; o sentido vem de `EST_TRANSACAO`.

`LOTES.LOT_STATUS`: `'A'` = aberto, `'B'` = baixado. `LOTES.LOT_PROPRIO`: `'S'` = lote próprio.

## Cadastros

| Coluna | Valores |
|---|---|
| `CLIENTES.CLI_STATUS` | `A` = ativo, `I` = inativo (status do cadastro; para "cliente ativo" no sentido comercial veja `05_regras_negocio.md`) |
| `CLIENTES.CLI_TIPOPESSOA` | `F` = pessoa física, `J` = pessoa jurídica |
| `CLIENTES.CLI_TIPOCLIENTE` | `C` = cliente (padrão do cadastro) — demais valores a confirmar |
| `PRODUTOS.PRO_STATUS` | `A` = ativo, `I` = inativo |
| `PRODUTOS.PRO_TIPO` | `P` = produto, `S` = serviço |
| `FORNECEDORES.FOR_STATUS`, `VENDEDORES.VEN_STATUS`, `CONTAS.CON_STATUS`, `CONDICOES.CPG_STATUS` | `A` = ativo, `I` = inativo |
| `CLIENTES.CLI_SEXO` | `M` = masculino, `F` = feminino, `-` = não informado (a maioria) |
| `PRODUTOS.PRO_ICMSALIQUOTAPOR` | `E` = alíquota de ICMS pelo estado (tabela de alíquotas), `P` = pelo produto |
| `CLI_TABELAPRECO`, `VED_TABELAPRECO`, `NFE_TABELAPRECO`, `NFC_TABELAPRECO`, `NOT_TABELAPRECO`, `SER_TABELAPRECO`, `PRJ_TABELAPRECO` | Tabela de preço usada: `V` = preço de venda padrão (`PRO_PRECOVENDA`); `1` a `6` = `PRO_PRECO1` a `PRO_PRECO6` |
| `VED_COMISSAOPOR`, `NFE_COMISSAOPOR`, `NFC_COMISSAOPOR`, `NOT_COMISSAOPOR` | `V` = comissão pelo percentual do vendedor (da capa do documento); outro valor = pelo percentual do cadastro do produto. Na prática, todos os registros têm `V`. |
| `TELEVENDAS.TEV_STATUS` | `A` = aberto (a ligar), `B` = baixado (contato feito) |
| `VENDAS.VED_VIAINTERNETSTATUS` | `A` = pedido da internet em aberto, `F` = finalizado |
| `METAS.MET_STATUS` | `A` = aberta, `B` = baixada (encerrada; não é mais recalculada) |
| `METAS.MET_COMISSAOTIPO` | `FATURAMENTO` = comissão sobre as NF-e faturadas, `RECEBIMENTO` = comissão sobre as contas recebidas (`MET_COMISSAO` % do liquidado) |
| `METAS.MET_REPRESENTANTE` | `S` = a meta do vendedor (`MET_VENDEDOR`) é apurada pelo campo representante das vendas e notas (`VED_REPRESENTANTE`, `NFE_REPRESENTANTE`); `N` = apurada pelo campo vendedor (`VED_VENDEDOR`, `NFE_VENDEDOR`) |

## Ordens de serviço

`SERVICOS.SER_STATUS`:

| Código | Significado |
|---|---|
| `A` | Aberta |
| `F` | Finalizada (serviço concluído, ainda não baixada) |
| `B` | Baixada (encerrada/faturada; não pode ser reaberta) |

`PRODUCAO.PRD_STATUS` (ordens de produção): `'A'` = aberta, `'B'` = baixada, `'I'` = inutilizada. Inutilizadas nunca entram em totais de produção.

## Outros

| Coluna | Valores |
|---|---|
| `CLIENTES.CLI_CLASSIFICACAO` | `A`, `B`, `C`, `D`: classificação livre do cliente, definida pelo usuário. Não tem ligação com outras tabelas nem com regra de cálculo (não é curva ABC). Use só como filtro ou agrupamento quando o usuário pedir. |
| `PRODUTOS.PRO_PRODUCAO` | `T` = produto de terceiros (comprado), `P` = produção própria |
| `CTECAMPOS.CTF_TIPO` | `G` = grupo, `C` = campo |
| `FCI.PFI_STATUS` (ficha de conteúdo de importação) | `A` = aberta, `B` = baixada |
| `ZAPMENSAGENS.ZAM_STATUS` (mensagens de WhatsApp) | `P` = pendente de envio, `E` = enviada |

## Observações

- `VENDAS.VED_ENTRADASAIDA`: considere sempre preenchida (`'E'` ou `'S'`); não trate o caso NULL.
- `CLIENTES.CLI_TIPOCLIENTE`: na prática só `C` (cliente).
