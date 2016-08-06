-- Executando a Function --
select descricao from esmateri where cd_material = '550012000001'
-- '550012000001'

DECLARE
   v_descricao ESMATERI.Descricao%type; -- Declara uma variavel
BEGIN
   -- Executa e atribui o retorno para a variavel
   v_descricao := consultaMaterial ('550012000001');
   
   -- Exibe os dados retornados
   DBMS_OUTPUT.put_line ('Descricao');
   DBMS_OUTPUT.put_line (v_descricao);
END;
-----------------------------------------------------------------------------

