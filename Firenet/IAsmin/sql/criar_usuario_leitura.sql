/* Cria o usuário IASMIN, que só pode ler o banco (SELECT).
   A tela de consultas com IA executa o SQL gerado com este usuário.

   Executar uma vez em cada cliente, conectado como SYSDBA ao banco do cliente
   (IBExpert > Script Executive, ou isql). Firebird 3/4/5.

   1. Troque a senha abaixo antes de executar.
   2. Informe usuário e senha em "Configurar IA..." na tela de consultas.

   Firebird 4 não tem GRANT SELECT por coluna. Por isso:
   - tabelas que guardam só configuração/credenciais ficam SEM acesso (lista abaixo);
   - colunas sensíveis em tabelas de negócio (CLI_PASSWORD, CON_CLIENTSECRET, ...)
     são barradas pelo validador do sistema (IasminValidadorSQL.COLUNAS_BLOQUEADAS). */

CREATE USER IASMIN PASSWORD 'RUNTIMEIASMIN';
COMMIT;

SET TERM ^ ;

EXECUTE BLOCK
AS
  DECLARE VARIABLE TABELA VARCHAR(63);
BEGIN
  FOR SELECT TRIM(RDB$RELATION_NAME)
        FROM RDB$RELATIONS
       WHERE COALESCE(RDB$SYSTEM_FLAG, 0) = 0
         AND TRIM(RDB$RELATION_NAME) NOT IN (
               'PARAMETROS',     -- certificado, senhas de integrações, licenças
               'EMPRESA',        -- super senha
               'EMAILSCONTAS',   -- senhas de e-mail
               'ZAPINSTANCIAS',  -- tokens do WhatsApp
               'USUARIOS',       -- senhas dos usuários do ERP
               'ACESSOS',        -- permissões de tela
               'SQLS',           -- SQLs salvos do sistema
               'IASMIN',         -- configuração da IA (chave da API)
               'IASMINLOGS'      -- log das perguntas à IA
               'TELAS'           -- telas do sistema
               'COMPONENTES'     -- componentes das telas
             )
        INTO :TABELA
  DO
    EXECUTE STATEMENT 'GRANT SELECT ON "' || TABELA || '" TO USER IASMIN';
END^

SET TERM ; ^

COMMIT;

/* Conferir:
   SELECT RDB$RELATION_NAME, RDB$PRIVILEGE FROM RDB$USER_PRIVILEGES WHERE RDB$USER = 'IASMIN';

   Tabelas criadas depois precisam de: GRANT SELECT ON NOVATABELA TO USER IASMIN;
   Remover tudo:  DROP USER IASMIN; */
