-- Criando uma Trigger --

CREATE OR REPLACE TRIGGER valida_horario -- Cria ou substituí uma trigger
-- BEFORE: Executada antes de realizar a ação
-- AFTER: Executada após realizar a operação
-- 

-- INSERT: Executada ao inserir um registro
-- UPDATE: Executada ao atualizar um registro
-- DELETE: Executada ao deletar um registro
BEFORE INSERT OR DELETE OR UPDATE -- Modo de execução
ON GEEMPRES --Tabela alvo

DECLARE
v_horario NUMBER; -- Declaração de variável
BEGIN

v_horario := TO_NUMBER (TO_CHAR (SYSDATE,'HH24'));
IF v_horario NOT BETWEEN 8 AND 18 THEN
   IF (INSERTING) THEN -- Inserindo...
      -- Dispara mensagem de erro
      RAISE_APPLICATION_ERROR (-20001,'O cadastro de empresa não é permitido fora do horário comercial');
      -- Desfaz as alterações
   ELSIF (UPDATING) THEN -- Atualizando...
      RAISE_APPLICATION_ERROR (-20001,'A atualização de empresa não é permitido fora do horário comercial');
   ELSE -- Qualquer outro...
      RAISE_APPLICATION_ERROR (-20001,'A exclusão de empresa não é permitido fora do horário comercial');
   END IF;
   ROLLBACK;
END IF;

END valida_horario;

