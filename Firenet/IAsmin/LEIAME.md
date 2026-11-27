# Consultas com IA — Firenet

Tela do ERP em que o usuário faz uma pergunta em português e a IA gera o SQL. O sistema valida o SQL, executa só leitura no Firebird e mostra o resultado em grade.

## Conteúdo da pasta

| Caminho | O que é |
|---|---|
| `01_instrucoes.md` … `06_exemplos.md` | Contexto enviado à IA. Vão para `<pasta do Firenet.exe>\IAsmin\` em cada cliente (pasta fixa). |
| `..\Units\Iasmin*` | Units Delphi 12 (VCL + FireDAC), junto com as do ERP em `Firenet\Units`. As telas `IasminConsulta` e `IasminConfig` têm `.dfm` e podem ser editadas no designer. |
| `sql\criar_usuario_leitura.sql` | Cria o usuário Firebird `IA_LEITURA` (só SELECT). Rodar uma vez por cliente. |
| `ferramentas\gerar_contexto.ps1` | Gera `02` e `03` a partir do `DDL_Banco.sql`. Rodar quando o banco mudar. |
| `ferramentas\levantar_dominios.sql` | `EXECUTE BLOCK` que lista numa grade só os valores de todas as flags `VARCHAR(1)`, para completar o `04`. Rodar no SQL Editor do IBExpert. Para o isql, use `levantar_dominios_isql.sql`. |
| `DDL_Banco.sql`, `*_original.csv` | Fontes. **Não** distribuir aos clientes. |

## Integração no ERP

1. Adicione ao projeto: `IasminConfigDados`, `IasminProvedores`, `IasminValidadorSQL`, `IasminMotor`, `IasminConfig`, `IasminConsulta` (pasta `Firenet\Units\`; já estão no `Firenet.dpr`).
   Depois, em **Project > Options > Application > Forms**, tire `FormIasminConsulta` e `FormIasminConfig` de *Auto-create forms*: as duas telas são criadas sob demanda.
   Ao editar o visual, mantenha os nomes dos componentes e eventos. As opções de segurança do `FDConexao`, `FDTransacao` e `FDQuery` são reaplicadas em `FormCreate`; mudar essas opções no Object Inspector não tem efeito.
2. Num item de menu:
   ```pascal
   uses IasminConsulta;
   ...
   TFormIasminConsulta.Abrir(DM.FDConnection1, DM.UsuarioLogin);
   ```
   - **Conexão do ERP:** a tela usa essa conexão para ler e gravar a configuração (`IASMIN`) e o log (`IASMINLOGS`).
   - **Consultas da IA:** rodam numa conexão própria, com o usuário de leitura.
   - **Usuário logado:** fica gravado em `IAS_USUARIO` quando a configuração é salva.
3. No instalador/atualizador: copiar os seis `.md` para `<pasta do executável>\IAsmin\` (caminho fixo, não configurável).
4. Em cada cliente, como SYSDBA:
   - confirmar que existe o generator `GEN_IASMINLOGS`, usado em `IAL_CODIGO`;
   - se o usuário de leitura foi criado depois das tabelas `IASMIN`/`IASMINLOGS`, rodar `sql\revogar_leitura_iasmin.sql`;
   - rodar `sql\criar_usuario_leitura.sql`, trocando a senha;
   - informar usuário e senha em **Configurar IA...**.

Testado aqui: compila no Delphi 12 sem avisos nas units Iasmin. Passaram em teste automático:
- o carregamento dos dois `.dfm`;
- o validador;
- a leitura do contexto;
- a criptografia AES;
- a conversão dos textos dos combos.

**Não testado:** chamadas reais aos provedores (não havia chave de API) e leitura e gravação no banco (`IASMIN`, `IASMINLOGS`, consultas).

## Configuração por cliente

Na tela **Configurar IA...** (gravada na tabela `IASMIN`; uma configuração para todas as estações):

- **Provedor:** Anthropic, OpenAI, Google Gemini ou "compatível com OpenAI" (Ollama, LM Studio; os dados não saem da rede do cliente).
- **Chave da API:** criada pelo cliente no console do provedor, com cobrança por uso. Assinaturas de chat (ChatGPT Plus, Claude Pro) não dão acesso à API.
- **Modelo:** em branco na Anthropic = `claude-opus-5-5`. Nos outros provedores, o cliente informa o modelo contratado.
- **Envio do contexto:** *duas etapas* (padrão: cerca de 9 mil tokens fixos, com cache, mais o dicionário só das tabelas escolhidas) ou *completo* (cerca de 60 mil tokens, com cache; mais preciso e mais caro).

Os combos (provedor, esforço e envio do contexto) são gravados pelo texto que aparece na tela. Os `.md` são lidos sempre de `<pasta do executável>\IAsmin` de cada estação; a coluna `IAS_PASTACONTEXTO` não é usada.

A chave da API e a senha do usuário de leitura ficam cifradas com AES-256 em `IAS_CHAVEAPI` e `IAS_PASSWORD`.
- **O que a cifra impede:** que a chave seja lida direto na tabela, pelo IBExpert ou por um backup.
- **O que ela não impede:** a chave AES está no executável, então quem tiver o executável e acesso ao banco consegue decifrar.
- **A proteção principal:** o usuário de leitura (o que a IA usa) não ter acesso a `IASMIN`.

Na Anthropic, com os modelos Opus 5.5 / Opus 5 / Sonnet 5.5 / Fable 5.1, a requisição vai com `fallbacks: "default"`: se o classificador de segurança recusar a pergunta, a API tenta outro modelo automaticamente. Para desligar, remova o trecho `ModeloAceitaFallback` em `IasminProvedores.pas`.

## Segurança

Camadas, da mais forte para a mais fraca:

1. **Usuário `IA_LEITURA`:** só tem `GRANT SELECT` e não acessa `PARAMETROS`, `EMPRESA`, `EMAILSCONTAS`, `ZAPINSTANCIAS`, `USUARIOS`, `ACESSOS`, `SQLS`, `IASMIN` e `IASMINLOGS`.
2. **Transação somente leitura** (FireDAC `ReadOnly`) e `SET STATEMENT TIMEOUT` (Firebird 4).
3. **Validador** (`IasminValidadorSQL`): só um `SELECT`/`WITH`; bloqueia DML/DDL, `GEN_ID`, `NEXT VALUE FOR`, `WITH LOCK`, tabelas de sistema, as 9 tabelas acima e 21 colunas de senha/token.
4. **Contexto:** essas tabelas e colunas não aparecem no dicionário enviado à IA.

Sem o `IA_LEITURA` configurado, a tela usa o usuário do ERP (com as camadas 2 a 4) e mostra um aviso na barra de status.

**Privacidade:** a IA recebe só a estrutura do banco e a pergunta, nunca os dados do resultado. O log (tabela `IASMINLOGS`, uma linha por chamada à IA) guarda pergunta, etapa, modelo, SQL, tokens e erro da IA, também sem dados.

As listas de bloqueio aparecem em três lugares e precisam ficar iguais: `gerar_contexto.ps1`, `IasminValidadorSQL.pas` e `criar_usuario_leitura.sql`.

## Pendências

- [ ] Executar os 20 exemplos do `06_exemplos.md` no IBExpert e marcar como `[testado]`. Depois, acrescentar perguntas reais dos clientes (a tabela `IASMINLOGS` mostra o que eles perguntam).
- [ ] Revisar `05_regras_negocio.md`, principalmente: vendas × notas fiscais.
- [ ] Testar cada provedor com uma chave real (botão **Testar conexão**).
- [ ] O `DataMod.dfm` do ERP tem a senha do SYSDBA em texto puro em `FDConnection1.Params`; o `DDL_Banco.sql` também traz uma senha. Avalie tirá-las do código-fonte.
