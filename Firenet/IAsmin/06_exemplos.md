# Exemplos de perguntas e SQL

Contexto para IA. Pares de pergunta e resposta no formato esperado. Siga o mesmo estilo: regras do `05_regras_negocio.md`, sintaxe Firebird, `FIRST` em listagens, nomes legíveis nas colunas.

<!-- STATUS: rascunho. Nomes de tabelas/colunas conferidos com o dicionário; consultas ainda não executadas no banco.
     Ao validar cada exemplo no IBExpert, mude a marcação dele de [não testado] para [testado]. -->

## 1. Faturamento do mês [não testado]

Pergunta: Quanto vendi este mês?

```json
{"sql": "SELECT COUNT(*) AS QTDE_VENDAS, ROUND(SUM(V.VED_VALORTOTAL), 2) AS TOTAL_VENDIDO, ROUND(SUM(V.VED_VALORTOTAL) / NULLIF(COUNT(*), 0), 2) AS TICKET_MEDIO FROM VENDAS V WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND V.VED_DTEMISSAO BETWEEN CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1 AND CURRENT_DATE", "explicacao": "Total das vendas finalizadas do dia 1º deste mês até hoje, com a quantidade de vendas e o ticket médio.", "tabelas": ["VENDAS"], "moeda": ["TOTAL_VENDIDO", "TICKET_MEDIO"]}
```

## 2. Faturamento por mês no ano [não testado]

Pergunta: Mostre o faturamento de cada mês deste ano.

```json
{"sql": "SELECT EXTRACT(MONTH FROM V.VED_DTEMISSAO) AS MES, COUNT(*) AS QTDE_VENDAS, ROUND(SUM(V.VED_VALORTOTAL), 2) AS TOTAL_VENDIDO FROM VENDAS V WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND EXTRACT(YEAR FROM V.VED_DTEMISSAO) = EXTRACT(YEAR FROM CURRENT_DATE) GROUP BY 1 ORDER BY 1", "explicacao": "Vendas finalizadas deste ano, somadas por mês.", "tabelas": ["VENDAS"], "moeda": ["TOTAL_VENDIDO"]}
```

## 3. Vendas por vendedor [não testado]

Pergunta: Quanto cada vendedor vendeu no mês passado e qual a comissão?

```json
{"sql": "SELECT VE.VEN_NOME AS VENDEDOR, COUNT(*) AS QTDE_VENDAS, ROUND(SUM(V.VED_VALORTOTAL), 2) AS TOTAL_VENDIDO, ROUND(SUM(V.VED_TOTALCOMISSAO), 2) AS COMISSAO FROM VENDAS V LEFT JOIN VENDEDORES VE ON VE.VEN_CODIGO = V.VED_VENDEDOR WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND V.VED_DTEMISSAO BETWEEN DATEADD(-1 MONTH TO CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1) AND CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) GROUP BY 1 ORDER BY 3 DESC", "explicacao": "Vendas finalizadas do mês passado agrupadas por vendedor, com o total de comissão.", "tabelas": ["VENDAS", "VENDEDORES"], "moeda": ["TOTAL_VENDIDO", "COMISSAO"]}
```

## 4. Melhores clientes [não testado]

Pergunta: Quais os 10 clientes que mais compraram este ano?

```json
{"sql": "SELECT FIRST 10 C.CLI_CODIGO AS CODIGO, C.CLI_NOME AS CLIENTE, COUNT(*) AS QTDE_COMPRAS, ROUND(SUM(V.VED_VALORTOTAL), 2) AS TOTAL_COMPRADO FROM VENDAS V JOIN CLIENTES C ON C.CLI_CODIGO = V.VED_CLIENTE WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND EXTRACT(YEAR FROM V.VED_DTEMISSAO) = EXTRACT(YEAR FROM CURRENT_DATE) GROUP BY 1, 2 ORDER BY 4 DESC", "explicacao": "Os 10 clientes com maior valor em vendas finalizadas neste ano.", "tabelas": ["VENDAS", "CLIENTES"], "moeda": ["TOTAL_COMPRADO"]}
```

## 5. Produtos mais vendidos [não testado]

Pergunta: Quais os produtos mais vendidos nos últimos 30 dias?

```json
{"sql": "SELECT FIRST 20 P.PRO_CODIGO AS CODIGO, P.PRO_NOME AS PRODUTO, ROUND(SUM(VI.VEI_QUANTIDADE), 3) AS QUANTIDADE, ROUND(SUM(VI.VEI_VALORTOTAL), 2) AS VALOR_TOTAL FROM VENDASITENS VI JOIN VENDAS V ON V.VED_CODIGO = VI.VEI_VENDA JOIN PRODUTOS P ON P.PRO_CODIGO = VI.VEI_PRODUTO WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND VI.VEI_TIPO = 'P' AND V.VED_DTEMISSAO >= DATEADD(-30 DAY TO CURRENT_DATE) GROUP BY 1, 2 ORDER BY 3 DESC", "explicacao": "Os 20 produtos com maior quantidade vendida nos últimos 30 dias, considerando só vendas finalizadas.", "tabelas": ["VENDASITENS", "VENDAS", "PRODUTOS"], "moeda": ["VALOR_TOTAL"]}
```

## 6. Margem por produto [não testado]

Pergunta: Qual a margem de lucro dos produtos vendidos este mês?

```json
{"sql": "SELECT FIRST 500 P.PRO_NOME AS PRODUTO, ROUND(SUM(VI.VEI_VALORTOTAL), 2) AS VENDIDO, ROUND(SUM(VI.VEI_PRECOCUSTOTOTAL), 2) AS CUSTO, ROUND(SUM(VI.VEI_VALORTOTAL) - SUM(VI.VEI_PRECOCUSTOTOTAL), 2) AS MARGEM, ROUND((SUM(VI.VEI_VALORTOTAL) - SUM(VI.VEI_PRECOCUSTOTOTAL)) * 100 / NULLIF(SUM(VI.VEI_VALORTOTAL), 0), 2) AS MARGEM_PERC FROM VENDASITENS VI JOIN VENDAS V ON V.VED_CODIGO = VI.VEI_VENDA JOIN PRODUTOS P ON P.PRO_CODIGO = VI.VEI_PRODUTO WHERE V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND V.VED_DTEMISSAO BETWEEN CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1 AND CURRENT_DATE GROUP BY 1 ORDER BY 4 DESC", "explicacao": "Valor vendido, custo e margem de cada produto nas vendas finalizadas deste mês, da maior margem para a menor.", "tabelas": ["VENDASITENS", "VENDAS", "PRODUTOS"], "moeda": ["VENDIDO", "CUSTO", "MARGEM"]}
```

## 7. Clientes inadimplentes [não testado]

Pergunta: Quem está me devendo?

```json
{"sql": "SELECT FIRST 500 C.CLI_NOME AS CLIENTE, C.CLI_FONE1 AS TELEFONE, COUNT(*) AS PARCELAS_VENCIDAS, ROUND(SUM(R.REE_VALOR), 2) AS VALOR_VENCIDO, ROUND(SUM(IIF(R.REE_STATUS = 'P', R.REE_VALOR, 0)), 2) AS VALOR_PRE_BAIXADO, MIN(R.REE_DTVENCIMENTO) AS VENCIMENTO_MAIS_ANTIGO, MAX(DATEDIFF(DAY, R.REE_DTVENCIMENTO, CURRENT_DATE)) AS DIAS_ATRASO FROM RECEBER R JOIN CLIENTES C ON C.CLI_CODIGO = R.REE_CLIENTE WHERE R.REE_STATUS IN ('A', 'P') AND R.REE_DTVENCIMENTO < CURRENT_DATE GROUP BY 1, 2 ORDER BY 4 DESC", "explicacao": "Clientes com parcelas vencidas e ainda não recebidas, com o total devido, a parte já pré-baixada pelos vendedores (aguardando conferência) e o maior atraso em dias.", "tabelas": ["RECEBER", "CLIENTES"], "moeda": ["VALOR_VENCIDO", "VALOR_PRE_BAIXADO"]}
```

## 8. Contas a receber por vencimento [testado]

Pergunta: Quanto tenho para receber nos próximos 7 dias?

```json
{"sql": "SELECT R.REE_DTVENCIMENTO AS VENCIMENTO, COUNT(*) AS PARCELAS, ROUND(SUM(R.REE_VALOR), 2) AS VALOR FROM RECEBER R WHERE R.REE_STATUS IN ('A', 'P') AND R.REE_DTVENCIMENTO BETWEEN CURRENT_DATE AND CURRENT_DATE + 7 GROUP BY 1 ORDER BY 1", "explicacao": "Parcelas ainda não recebidas (em aberto ou pré-baixadas) que vencem de hoje até daqui a 7 dias, somadas por dia de vencimento.", "tabelas": ["RECEBER"], "moeda": ["VALOR"]}
```

## 9. Recebido no período [testado]

Pergunta: Quanto recebi ontem?

```json
{"sql": "SELECT COUNT(*) AS PARCELAS, ROUND(SUM(R.REE_VALORPAGO), 2) AS VALOR_RECEBIDO FROM RECEBER R WHERE R.REE_STATUS = 'B' AND R.REE_DTPAGAMENTO = CURRENT_DATE - 1", "explicacao": "Total efetivamente recebido (parcelas baixadas) com data de pagamento de ontem.", "tabelas": ["RECEBER"], "moeda": ["VALOR_RECEBIDO"]}
```

## 10. Contas a pagar da semana [não testado]

Pergunta: O que tenho para pagar esta semana?

```json
{"sql": "SELECT FIRST 500 P.PAG_DTVENCIMENTO AS VENCIMENTO, F.FOR_NOME AS FORNECEDOR, D.DES_DESCRICAO AS DESPESA, P.PAG_DESCRICAO AS DESCRICAO, ROUND(P.PAG_VALOR, 2) AS VALOR FROM PAGAR P LEFT JOIN FORNECEDORES F ON F.FOR_CODIGO = P.PAG_FORNECEDOR LEFT JOIN DESPESAS D ON D.DES_CODIGO = P.PAG_DESPESA WHERE P.PAG_STATUS = 'A' AND P.PAG_DTVENCIMENTO BETWEEN CURRENT_DATE AND CURRENT_DATE + 7 ORDER BY 1, 5 DESC", "explicacao": "Contas a pagar em aberto que vencem nos próximos 7 dias, com fornecedor e tipo de despesa.", "tabelas": ["PAGAR", "FORNECEDORES", "DESPESAS"], "moeda": ["VALOR"]}
```

## 11. Despesas por categoria [não testado]

Pergunta: Quanto paguei de cada tipo de despesa no mês passado?

```json
{"sql": "SELECT D.DES_DESCRICAO AS DESPESA, COUNT(*) AS QTDE, ROUND(SUM(P.PAG_VALORPAGO), 2) AS VALOR_PAGO FROM PAGAR P LEFT JOIN DESPESAS D ON D.DES_CODIGO = P.PAG_DESPESA WHERE P.PAG_STATUS = 'B' AND P.PAG_DTPAGAMENTO BETWEEN DATEADD(-1 MONTH TO CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1) AND CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) GROUP BY 1 ORDER BY 3 DESC", "explicacao": "Contas pagas no mês passado, somadas por tipo de despesa.", "tabelas": ["PAGAR", "DESPESAS"], "moeda": ["VALOR_PAGO"]}
```

## 12. Saldo dos bancos [não testado]

Pergunta: Qual o saldo das minhas contas bancárias?

```json
{"sql": "SELECT C.CON_NOME AS CONTA, ROUND(C.CON_SALDO, 2) AS SALDO FROM CONTAS C WHERE C.CON_STATUS = 'A' ORDER BY 2 DESC", "explicacao": "Saldo atual de cada conta bancária ativa.", "tabelas": ["CONTAS"], "moeda": ["SALDO"]}
```

## 13. Estoque abaixo do mínimo [não testado]

Pergunta: Quais produtos estão com estoque baixo?

```json
{"sql": "SELECT FIRST 500 P.PRO_CODIGO AS CODIGO, P.PRO_NOME AS PRODUTO, P.PRO_UNIDADE AS UN, ROUND(P.PRO_ESTOQUEATUAL, 3) AS ESTOQUE_ATUAL, ROUND(P.PRO_ESTOQUEMIN, 3) AS ESTOQUE_MINIMO, ROUND(P.PRO_ESTOQUEMIN - P.PRO_ESTOQUEATUAL, 3) AS FALTA FROM PRODUTOS P WHERE P.PRO_STATUS = 'A' AND P.PRO_TIPO = 'P' AND P.PRO_ESTOQUEMIN > 0 AND P.PRO_ESTOQUEATUAL < P.PRO_ESTOQUEMIN ORDER BY 6 DESC", "explicacao": "Produtos ativos com estoque atual abaixo do mínimo cadastrado, do que mais falta para o que menos falta.", "tabelas": ["PRODUTOS"], "moeda": []}
```

## 14. Valor do estoque [não testado]

Pergunta: Quanto vale meu estoque?

```json
{"sql": "SELECT COUNT(*) AS PRODUTOS_COM_SALDO, ROUND(SUM(P.PRO_ESTOQUEATUAL * P.PRO_PRECOCUSTO), 2) AS VALOR_CUSTO, ROUND(SUM(P.PRO_ESTOQUEATUAL * P.PRO_PRECOVENDA), 2) AS VALOR_VENDA FROM PRODUTOS P WHERE P.PRO_STATUS = 'A' AND P.PRO_TIPO = 'P' AND P.PRO_ESTOQUEATUAL > 0", "explicacao": "Valor do estoque dos produtos ativos com saldo positivo, pelo preço de custo e pelo preço de venda.", "tabelas": ["PRODUTOS"], "moeda": ["VALOR_CUSTO", "VALOR_VENDA"]}
```

## 15. Situação da carteira de clientes [não testado]

Pergunta: Quantos clientes estão ativos, inativos e quantos nunca compraram?

```json
{"sql": "SELECT SUM(IIF(DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) BETWEEN 0 AND 60, 1, 0)) AS ATIVOS, SUM(IIF(DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) BETWEEN 61 AND 120, 1, 0)) AS QUASE_INATIVOS, SUM(IIF(DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) BETWEEN 121 AND 180, 1, 0)) AS INATIVOS_RECENTES, SUM(IIF(DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) BETWEEN 181 AND 360, 1, 0)) AS INATIVOS, SUM(IIF(DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) > 360, 1, 0)) AS EX_CLIENTES, SUM(IIF(T.ULTIMA IS NULL, 1, 0)) AS NUNCA_COMPRARAM FROM (SELECT C.CLI_CODIGO, (SELECT FIRST 1 V.VED_DTEMISSAO FROM VENDAS V WHERE V.VED_CLIENTE = C.CLI_CODIGO AND V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' ORDER BY V.VED_DTEMISSAO DESC) AS ULTIMA FROM CLIENTES C WHERE C.CLI_STATUS = 'A') T", "explicacao": "Clientes com cadastro ativo classificados pelos dias desde a última compra finalizada, com as mesmas faixas do painel do sistema.", "tabelas": ["CLIENTES", "VENDAS"], "moeda": []}
```

## 16. Clientes sem comprar há muito tempo [não testado]

Pergunta: Quais clientes não compram há mais de 90 dias?

```json
{"sql": "SELECT FIRST 500 T.CLI_NOME AS CLIENTE, T.CLI_FONE1 AS TELEFONE, T.ULTIMA AS ULTIMA_COMPRA, DATEDIFF(DAY, T.ULTIMA, CURRENT_DATE) AS DIAS_SEM_COMPRAR FROM (SELECT C.CLI_NOME, C.CLI_FONE1, (SELECT FIRST 1 V.VED_DTEMISSAO FROM VENDAS V WHERE V.VED_CLIENTE = C.CLI_CODIGO AND V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' ORDER BY V.VED_DTEMISSAO DESC) AS ULTIMA FROM CLIENTES C WHERE C.CLI_STATUS = 'A') T WHERE T.ULTIMA < CURRENT_DATE - 90 ORDER BY 4", "explicacao": "Clientes ativos que já compraram, mas cuja última compra finalizada foi há mais de 90 dias.", "tabelas": ["CLIENTES", "VENDAS"], "moeda": []}
```

## 17. Aniversariantes [não testado]

Pergunta: Quem faz aniversário este mês?

```json
{"sql": "SELECT FIRST 500 EXTRACT(DAY FROM C.CLI_DTNASC) AS DIA, C.CLI_NOME AS CLIENTE, C.CLI_FONE1 AS TELEFONE, C.CLI_EMAIL AS EMAIL FROM CLIENTES C WHERE C.CLI_STATUS = 'A' AND EXTRACT(MONTH FROM C.CLI_DTNASC) = EXTRACT(MONTH FROM CURRENT_DATE) ORDER BY 1, 2", "explicacao": "Clientes ativos que fazem aniversário no mês atual, por dia.", "tabelas": ["CLIENTES"], "moeda": []}
```

## 18. Busca por nome [não testado]

Pergunta: Quanto o cliente Silva comprou este ano?

```json
{"sql": "SELECT FIRST 500 C.CLI_NOME AS CLIENTE, COUNT(*) AS QTDE_COMPRAS, ROUND(SUM(V.VED_VALORTOTAL), 2) AS TOTAL_COMPRADO, MAX(V.VED_DTEMISSAO) AS ULTIMA_COMPRA FROM VENDAS V JOIN CLIENTES C ON C.CLI_CODIGO = V.VED_CLIENTE WHERE C.CLI_NOME CONTAINING 'SILVA' AND V.VED_STATUS = 'F' AND V.VED_ENTRADASAIDA = 'S' AND EXTRACT(YEAR FROM V.VED_DTEMISSAO) = EXTRACT(YEAR FROM CURRENT_DATE) GROUP BY 1 ORDER BY 3 DESC", "explicacao": "Compras finalizadas deste ano de todos os clientes cujo nome contém 'Silva'. Se houver mais de um, cada um aparece em uma linha.", "tabelas": ["VENDAS", "CLIENTES"], "moeda": ["TOTAL_COMPRADO"]}
```

## 19. Notas fiscais emitidas [não testado]

Pergunta: Quantas NF-e emiti este mês e quantas foram canceladas?

```json
{"sql": "SELECT SUM(IIF(N.NFE_STATUS = 'F', 1, 0)) AS EMITIDAS, ROUND(SUM(IIF(N.NFE_STATUS = 'F', N.NFE_VALORTOTAL, 0)), 2) AS VALOR_EMITIDO, SUM(IIF(N.NFE_STATUS = 'C', 1, 0)) AS CANCELADAS FROM NFE N WHERE N.NFE_DTEMISSAO BETWEEN CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1 AND CURRENT_DATE", "explicacao": "NF-e com data de emissão neste mês: quantidade e valor das finalizadas, e quantidade de canceladas.", "tabelas": ["NFE"], "moeda": ["VALOR_EMITIDO"]}
```

## 20. Ordens de serviço em aberto [não testado]

Pergunta: Quais ordens de serviço estão abertas?

```json
{"sql": "SELECT FIRST 500 S.SER_CODIGO AS OS, S.SER_DTCADASTRO AS ABERTURA, C.CLI_NOME AS CLIENTE, T.VEN_NOME AS TECNICO, ROUND(S.SER_VALORTOTAL, 2) AS VALOR, DATEDIFF(DAY, S.SER_DTCADASTRO, CURRENT_DATE) AS DIAS_ABERTA FROM SERVICOS S LEFT JOIN CLIENTES C ON C.CLI_CODIGO = S.SER_CLIENTE LEFT JOIN VENDEDORES T ON T.VEN_CODIGO = S.SER_TECNICO WHERE S.SER_STATUS = 'A' ORDER BY 2", "explicacao": "Ordens de serviço com status aberto, da mais antiga para a mais recente, com cliente e técnico.", "tabelas": ["SERVICOS", "CLIENTES", "VENDEDORES"], "moeda": ["VALOR"]}
```

## 21. Andamento das metas abertas [não testado]

Pergunta: Como estão as metas dos vendedores?

```json
{"sql": "SELECT X.VENDEDOR, X.INICIO, X.FIM, X.META, X.FATURADO, ROUND(X.FATURADO * 100 / NULLIF(X.META, 0), 2) AS PERC_ATINGIDO, X.RECEBIDO FROM (SELECT VE.VEN_NOME AS VENDEDOR, M.MET_DTINICIO AS INICIO, M.MET_DTFIM AS FIM, ROUND(M.MET_METAVALOR, 2) AS META, ROUND(COALESCE((SELECT SUM(N.NFE_TOTALITENS) FROM NFE N WHERE N.NFE_STATUS = 'F' AND N.NFE_ENTRADASAIDA = 'S' AND N.NFE_DTEMISSAO BETWEEN M.MET_DTINICIO AND M.MET_DTFIM AND IIF(M.MET_REPRESENTANTE = 'S', N.NFE_REPRESENTANTE, N.NFE_VENDEDOR) = M.MET_VENDEDOR), 0), 2) AS FATURADO, ROUND(COALESCE((SELECT SUM(R.REE_VALOR) FROM RECEBER R WHERE R.REE_STATUS = 'B' AND R.REE_DTPAGAMENTO BETWEEN M.MET_DTINICIO AND M.MET_DTFIM AND IIF(M.MET_REPRESENTANTE = 'S', R.REE_REPRESENTANTE, R.REE_VENDEDOR) = M.MET_VENDEDOR), 0), 2) AS RECEBIDO FROM METAS M JOIN VENDEDORES VE ON VE.VEN_CODIGO = M.MET_VENDEDOR WHERE M.MET_STATUS = 'A') X ORDER BY 6 DESC", "explicacao": "Metas em aberto com o realizado calculado agora: faturamento pelas NF-e e recebimentos pelas contas baixadas no período de cada meta, pelo vendedor ou pelo representante conforme a meta.", "tabelas": ["METAS", "VENDEDORES", "NFE", "RECEBER"], "moeda": ["META", "FATURADO", "RECEBIDO"]}
```

## 22. Boletos em aberto no mês [testado]

Pergunta: Quanto tenho em boletos em aberto deste mês?

```json
{"sql": "SELECT COUNT(*) AS BOLETOS, ROUND(SUM(B.BOL_VALORTOTAL), 2) AS VALOR_EM_ABERTO FROM BOLETOS B WHERE B.BOL_STATUS = 'A' AND B.BOL_DTVENCIMENTO BETWEEN CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1 AND DATEADD(-1 DAY TO DATEADD(1 MONTH TO CURRENT_DATE - EXTRACT(DAY FROM CURRENT_DATE) + 1))", "explicacao": "Boletos em aberto com vencimento do primeiro ao último dia do mês atual (inclusive os que ainda vão vencer), pelo valor do boleto.", "tabelas": ["BOLETOS"], "moeda": ["VALOR_EM_ABERTO"]}
```

## 23. Pergunta sem dados no banco

Pergunta: Qual a previsão do tempo para amanhã?

```json
{"sql": "", "explicacao": "Essa informação não existe no banco de dados do sistema. Posso ajudar com consultas sobre vendas, clientes, estoque, financeiro e outros cadastros.", "tabelas": [], "moeda": []}
```
