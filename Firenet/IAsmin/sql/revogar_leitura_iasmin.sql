/* O usuário somente leitura NÃO pode ler IASMIN (guarda a chave da API) nem IASMINLOGS.

   Só é necessário se o criar_usuario_leitura.sql foi executado DEPOIS de criar
   essas tabelas (ele dá SELECT em todas as tabelas fora da lista de exclusão).
   Troque IASMIN pelo nome do usuário de leitura usado no cliente.
   Executar como SYSDBA. */

REVOKE SELECT ON IASMIN FROM USER IASMIN;
REVOKE SELECT ON IASMINLOGS FROM USER IASMIN;
COMMIT;

/* Conferir (não deve retornar linhas):
   SELECT RDB$USER, RDB$RELATION_NAME, RDB$PRIVILEGE
     FROM RDB$USER_PRIVILEGES
    WHERE RDB$RELATION_NAME IN ('IASMIN', 'IASMINLOGS')
      AND RDB$USER = 'IASMIN'; */
