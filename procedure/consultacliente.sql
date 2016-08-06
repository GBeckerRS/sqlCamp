-- CRIACAO DE PROCEDURE--

create or replace procedure ConsultaCliente ( -- Cria ou substitui uma procedure
      -- Parametros da PROCEDURE
      p_codigoEmpresa IN geempres.cd_empresa%type, --(O 'IN' pode implicito)
      r_nomeCompleto OUT geempres.nome_completo%type, --('OUT' não pode ser implicito)
      r_dataAniversario OUT geempres.dt_aniversario%type)
      
IS
      -- Declaration section
BEGIN
      -- Execution section
      SELECT geempres.nome_completo,geempres.dt_aniversario
      INTO r_nomeCompleto,r_dataAniversario -- Atribui o retorno do SELECT ao parametro
      FROM geempres
      WHERE geempres.cd_empresa = p_codigoEmpresa;
-- EXCEPTION -- Tratamento de erros
      -- Exception section
END ConsultaCliente; -- Finaliza a PROCEDURE

