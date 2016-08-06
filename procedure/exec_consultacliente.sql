-- EXECUTANDO UMA PROCEDURE --

--'000074'

DECLARE
  -- Declarando variaveis
  v_nome_completo GEEMPRES.nome_completo%type;
  v_dt_aniversario GEEMPRES.dt_aniversario%type;
BEGIN
  CONSULTACLIENTE ('000074',v_nome_completo,v_dt_aniversario); -- Executando a procedure
  ------------------------------------------------------
  -- Exibindo o retorno
  DBMS_OUTPUT.put_line ('Nome e dt_aniversario');
  DBMS_OUTPUT.put_line (v_nome_completo);
  DBMS_OUTPUT.put_line (v_dt_aniversario);
  ------------------------------------------------------
END;

