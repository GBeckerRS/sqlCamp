CREATE OR REPLACE PROCEDURE atualizamovimento
(
p_cd_empresa geempres.cd_empresa%type,
p_vl_frete esmovime.vl_frete%type
)

IS

BEGIN

UPDATE ESMOVIME
SET vl_frete = p_vl_frete,
    pr_total_item = pr_total_item + p_vl_frete
WHERE Cd_Empresa = p_cd_empresa;
COMMIT;

END atualizamovimento;

