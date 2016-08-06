CREATE OR REPLACE TRIGGER valida_nota
BEFORE DELETE
ON FANFISCA
FOR EACH ROW

DECLARE
   v_existe_movimento NUMBER;
BEGIN
v_existe_movimento := 1;
SELECT count(seq_nota) 
INTO v_existe_movimento
FROM esmovime mov
WHERE mov.nf = :OLD.nf;

IF v_existe_movimento > 0 THEN
   RAISE_APPLICATION_ERROR (-20001,'Esta NF possui movimentos, impossivel excluir.');
   ROLLBACK;
END IF;

END ;

