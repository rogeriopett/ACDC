# Iasmin — Consultas com IA no ERP Firenet

Memória do projeto para o Claude Code. Ler antes de qualquer alteração. Para o passo a passo de uso e integração, ver `LEIAME.md`.

## O que é

Tela do ERP Firenet em que o usuário faz uma pergunta em português, a IA gera um SELECT do Firebird, o sistema valida, executa só leitura e mostra em grade.

- **ERP:** Delphi 12 (VCL) + FireDAC, Firebird 4.0.5 (dialeto 3, WIN1252). `isql.exe` fica em `C:\Program Files\Firebird\`.
- **Ambiente:** cada cliente tem o próprio banco local (`C:\Runtime\Firenet\Dados\firenet_<cliente>.fdb`).
- **Código do ERP (só leitura, Windows-1252):** `C:\Runtime\Firenet\Units`. As regras de negócio foram tiradas de `Dashboard.pas`, `DataMod.pas`, `ReceberRel.pas` e `Servicos.pas`.
- **IA:** cada cliente usa a própria chave de API, de Anthropic, OpenAI, Gemini ou um servidor compatível com OpenAI (Ollama). Assinaturas de chat não servem.

## Arquivos

| Caminho | Função |
|---|---|
| `01_instrucoes.md` | Prompt de sistema: regras, sintaxe Firebird, resposta em JSON `{"sql","explicacao","tabelas"}` |
| `02_dicionario.md` | Tabelas e colunas, **gerado** por `ferramentas\gerar_contexto.ps1`. Não editar à mão. |
| `03_relacionamentos.md` | FKs, **gerado** pelo mesmo script |
| `04_dominios.md` | Significado dos códigos de status e flags, levantado no código do ERP |
| `05_regras_negocio.md` | Faturamento, inadimplência, faixas de cliente ativo e outras regras |
| `06_exemplos.md` | 20 perguntas com SQL, ainda `[não testado]` no banco |
| `delphi\IasminConsulta.pas/.dfm` | `TFormIasminConsulta`, a tela principal: `TFormIasminConsulta.Abrir(DM.FDConnection1, DM.UsuarioLogin)` abre em **modal** (pedido do usuário) e libera o form ao fechar. Grava o log em `IASMINLOGS` na thread principal (`AoReceber`). |
| `delphi\IasminConfig.pas/.dfm` | `TFormIasminConfig`, a tela de configuração: `TFormIasminConfig.Executar(Conexao, UsuarioERP, Cfg)` |
| `delphi\IasminConfigDados.pas` | `TIAConfig` e `TIALog`; lê e grava a tabela `IASMIN` (uma linha, `IAS_CODIGO = 1`) e grava em `IASMINLOGS`; chave e senha cifradas com AES-256 (CNG) |
| `sql\revogar_leitura_iasmin.sql` | Revoga o SELECT do usuário de leitura em `IASMIN`/`IASMINLOGS`. O generator `GEN_IASMINLOGS` já foi criado pelo usuário. |
| `delphi\IasminProvedores.pas` | Chamadas HTTP aos provedores: `IAGerar(Cfg, Sistema, Mensagens)` |
| `delphi\IasminMotor.pas` | `TIAContexto`, que lê os .md, e `TIAMotor`, que faz `Perguntar`, `Corrigir` e `TestarConexao` |
| `delphi\IasminValidadorSQL.pas` | `ValidarSQL` e `LimparSQL` |
| `sql\criar_usuario_leitura.sql` | Cria o usuário `IA_LEITURA`, só com SELECT |
| `ferramentas\gerar_contexto.ps1` | Regera `02` e `03` a partir do `DDL_Banco.sql` |
| `ferramentas\levantar_dominios.sql` | Um `EXECUTE BLOCK` que devolve numa grade só os valores das flags `VARCHAR(1)`. Roda no SQL Editor do IBExpert, porque o Script Executive não mostra o resultado. Cada SELECT usa `EXECUTE STATEMENT` por causa do limite de 256 contextos por comando. O `levantar_dominios_isql.sql` é a mesma coisa com `SET TERM`, para o isql. |
| `ferramentas\teste\TesteIA.dpr` | Teste de console: carga dos forms, validador, contexto e DPAPI |
| `DDL_Banco.sql`, `*_original.csv` | Fontes. **Não distribuir e não enviar à IA:** o DDL contém senha. |

## Convenções (pedidas pelo usuário)

- Toda resposta e documentação em português do Brasil.
- **Nomes de units** começam com `Iasmin`, nunca com `u`.
- **Forms** se chamam `TFormIasmin*`. A unit de um form tem o nome do form sem `TForm` (`TFormIasminConsulta` fica em `IasminConsulta`). Uma unit sem form não pode ter nome que pareça de form.
- **As duas telas têm `.dfm`**, porque o usuário edita o visual no designer para seguir o padrão do ERP. Elas não ficam em *Auto-create forms*.
- **Codificação:** `.pas` em UTF-8 **com BOM**. `.dfm` em texto ASCII, com acentos escritos como `#231`, igual ao que o IDE grava. `.ps1` também com BOM, por causa do PowerShell 5.1.
- **Segurança das telas:** as opções de segurança de `FDConexao`, `FDTransacao` e `FDQuery` são reaplicadas em `FormCreate` (`AplicarSeguranca`), sem depender do `.dfm`.
- **Limite de linhas:** **nunca** usar `FetchOptions.RecsMax` na query da consulta. Com ele, o FireDAC acrescenta `ROWS n` ao SQL (`TFDPhysIBCommandGenerator.GetLimitSelect`), o que quebra consultas que já têm `FIRST`/`ROWS` com o erro "Token unknown ROWS". O limite é aplicado por `LerLinhas`, com `fmManual` e `GetNextPacket`.
- **FireDAC no .dfm:** "somente leitura" na query é gravado como `UpdateOptions.EnableInsert/Update/Delete = False`; `uvReadOnly` não existe e dá `EReadError`.

## Decisões tomadas

- **Contexto em duas etapas (padrão):** a IA escolhe as tabelas e depois recebe só o dicionário delas, mais um nível de FKs, com limite de 30 tabelas. O modo *completo* manda o dicionário inteiro (cerca de 60 mil tokens) com cache.
- **Anthropic:** modelo padrão `claude-opus-5-5` e `anthropic-version: 2026-10-21`. Usa `output_config.effort` e cache no bloco de sistema. Envia `fallbacks: "default"` com o beta `server-side-fallback-2026-07-01` só para Opus 5.5, Opus 5, Sonnet 5.5 e Fable 5.1.
- **Colunas em moeda:** a IA devolve `"moeda": [...]` no JSON, com os apelidos das colunas em R$. A tela aplica `Currency := True` nessas colunas (`AplicarFormatoMoeda`); só a exibição muda, o CSV continua numérico. Ao mudar exemplos no `06`, manter o campo `moeda`. A detecção não é feita pelo nome da coluna, porque `QUANTIDADE_TOTAL` contém "TOTAL".
- **Domínio `DN_MONEY` (desde 10/11/2026):** o usuário criou o domínio `DN_MONEY` (NUMERIC(18,8)) para as colunas em dinheiro. `DN_VALOR`, de mesmo tipo, ficou para quantidades e percentuais. O `gerar_contexto.ps1` marca essas colunas como `NUMERIC(18,8) [R$]` no `02`, e o `01` orienta a IA a usar a marca no campo `moeda`.
- **Correção automática:** se o Firebird recusar o SQL, a IA recebe o erro e corrige **uma** vez.
- **Privacidade:** a IA nunca recebe os dados do resultado. O log em `IASMINLOGS` guarda só a pergunta, o SQL, os tokens e o erro da IA.
- **Configuração no banco (desde 09/11/2026):** a configuração fica na tabela `IASMIN` e vale para todas as estações; o `ia.ini` e o `ia_log.txt` não existem mais.
  - **Combos:** são gravados pelo **texto exibido**, das constantes `NOMES_PROVEDOR`, `NOMES_ESFORCO` e `NOMES_MODO`. Os combos são preenchidos por essas constantes em `FormCreate`.
  - **Colunas de usuário:** `IAS_USER`/`IAS_PASSWORD` guardam o usuário de leitura do banco. `IAS_USUARIO`, `IAS_DTATUALIZACAO` e `IAS_HRATUALIZACAO` registram quem alterou e quando (`DM.UsuarioLogin`).
  - **Caixa "gravar log":** foi removida, porque não há coluna para ela. O log é sempre gravado.
- **Pasta dos `.md`:** é sempre `<pasta do exe>\IAsmin` (função `PastaContexto`) e não é configurável, por decisão do usuário. A coluna `IAS_PASTACONTEXTO` existe, mas não é usada.
- **Criptografia:** AES-256-CBC via `bcrypt.dll`, no formato `'A1:' + base64(IV + cifra)`. A chave AES é derivada de `SEGREDO_APP`, que fica no executável. A DPAPI foi abandonada porque prende o valor a uma máquina. É ofuscação contra leitura direta da tabela; a proteção real é o usuário de leitura não ter acesso a `IASMIN`.
- **Banco fora da thread de fundo:** a conexão do ERP não é usada na thread de fundo. O motor só preenche `TIAResultado.Log`, e a tela grava.

### Segurança em camadas

1. Usuário `IA_LEITURA`.
2. Transação ReadOnly e `SET STATEMENT TIMEOUT`.
3. Validador.
4. Tabelas e colunas sensíveis fora do contexto.

### Listas de bloqueio

Precisam ficar **iguais** em três lugares: `gerar_contexto.ps1` (`$tabelasExcluidas`, `$bloqueadas`), `IasminValidadorSQL.pas` e `criar_usuario_leitura.sql`.
- **Tabelas (9):** PARAMETROS, EMPRESA, EMAILSCONTAS, ZAPINSTANCIAS, USUARIOS, ACESSOS, SQLS, IASMIN, IASMINLOGS.
- **Colunas (21):** senhas, tokens e licenças, como CLI_PASSWORD, USU_PASSWORD, PAR_SENHACERTIFICADO e ZIN_CLIENTTOKEN. A lista completa está no script.

## Restrições

- **Banco:** não acessar o banco nem testar senhas sem o usuário autorizar. A tentativa via `isql` foi bloqueada pelas permissões.
- **Credenciais:** não usar as que estão em `DataMod.dfm` (SYSDBA em texto puro) nem no `DDL_Banco.sql`.
- **Fontes do ERP:** os arquivos de `C:\Runtime\Firenet\Units` servem só para consulta. Não alterar.

## Como compilar e testar

O teste está em `ferramentas\teste\TesteIA.dpr`. Rodar no PowerShell, a partir desta pasta:

```powershell
$bds = 'C:\Program Files (x86)\Embarcadero\Studio\23.0'
$t = 'C:\Runtime\Firenet\IAsmin\ferramentas\teste'
$png = 'C:\Runtime\Componentes\PngComponents\Source'   # os forms usam TPngBitBtn/TPngSpeedButton
New-Item -ItemType Directory -Force "$t\bin" | Out-Null
# $t\stub tem DataMod e DataMod2 mínimos: a IasminConsulta usa DM.UsuarioLogin e o DataMod2 do ERP (aba de log, DM2.DSIasminLogs);
# ao usar outro campo de DM/DM2 na tela, declare-o também no stub,
# e as units do ERP não compilam fora do projeto (há uma unit Classes.pas que conflita com a RTL).
& "$bds\bin\dcc32.exe" -B -Q -CC "-U$bds\lib\win32\release;C:\Runtime\Firenet\IAsmin\delphi;$png;$t\stub" "-I$png" "-R$bds\lib\win32\release;$png" "-NSSystem;Vcl;Vcl.Imaging;Winapi;Data;FireDAC" "-N0$t\bin" "-E$t\bin" "$t\TesteIA.dpr"
& "$t\bin\TesteIA.exe" 'C:\Runtime\Firenet\IAsmin'   # deve terminar com "Falhas: 0"
```

## Situação em 06/11/2026

- **Feito:** os 6 arquivos de contexto, as 6 units, os 2 `.dfm`, o SQL do usuário de leitura, o gerador e o `LEIAME.md`.
- **Último teste:** compila sem avisos e termina com "Falhas: 0".
- **Não testado:** chamadas reais aos provedores (não havia chave) e execução no banco.

### Pendências (do usuário)

- [ ] Se o usuário de leitura recebeu SELECT em `IASMIN`/`IASMINLOGS`, rodar `sql\revogar_leitura_iasmin.sql`.
- [ ] Testar a gravação e a leitura da configuração em `IASMIN` e o log em `IASMINLOGS`. O teste automático não acessa o banco.
- [ ] Na chamada do ERP, passar o usuário: `TFormIasminConsulta.Abrir(DM.FDConnection1, DM.UsuarioLogin)`.

- [x] Rodar `ferramentas\levantar_dominios.sql` (feito em 11/11/2026; saída em `ferramentas\saida.txt`). Regra do usuário: S/N = sim/não, A/I = ativo/inativo. Todos os códigos encontrados já foram confirmados pelo usuário e estão no `04`.
- [ ] Executar os exemplos do `06` no IBExpert e marcar como `[testado]`.
- [ ] Confirmar no `05`: vendas × notas fiscais. (Já confirmados pelo usuário em 11/11/2026: `REE_STATUS='P'`, apuração das metas, devoluções via `NAT_DEVOLUCAO`, `*_CFOP` = `NAT_CODIGO` sem FK de propósito, e o faturamento segue o ERP, sem excluir a devolução ao fornecedor.)
- [ ] Testar cada provedor com uma chave real (botão **Testar conexão**).
- [ ] Integrar ao ERP: adicionar as units, tirar os forms do Auto-create e criar o item de menu.
- [ ] Ajustar o visual das duas telas ao padrão do ERP. O usuário vai fazer isso no designer.
- [ ] Avaliar a remoção das senhas em texto puro do `DataMod.dfm` e do `DDL_Banco.sql`.

## Histórico da conversa (resumo)

1. Converti `02_dicionario` e `03_relacionamentos` de CSV para markdown e depois os regerei a partir do `DDL_Banco.sql`, com comentários, PKs e FKs.
2. Criei os arquivos `01` a `06`, minerando o código do ERP para os domínios e as regras de negócio.
3. Criei as units Delphi (multiprovedor, DPAPI, validador, duas etapas e correção automática).
4. Renomeei as units de `uIA*` para `Iasmin*` e os forms para `TFormIasmin*`.
5. A unit sem form `IasminConfig` virou `IasminConfigDados`, e o nome `IasminConfig` passou para a unit do form de configuração.
6. Converti as duas telas de "criadas em código" para forms com `.dfm`.
7. Corrigi o erro "Token unknown ROWS": o `RecsMax` do FireDAC acrescentava `ROWS n` ao SQL. A tela de consulta passou a abrir em modal.
8. Em 09/11/2026, a configuração e o log migraram para as tabelas `IASMIN` e `IASMINLOGS`, criadas pelo usuário. Troquei a DPAPI por AES e incluí as duas tabelas nas listas de bloqueio.
