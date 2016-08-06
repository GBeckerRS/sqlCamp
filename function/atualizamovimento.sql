CREATE OR REPLACE PROCEDURE atualizamovimento
(
p_cd_empresa geempres.cd_empresa%type
)

IS

BEGIN

UPDATE ESMOVIME
SET vl_frete = CalculaFreteMaterial (trim (cd_empresa),trim (Cd_Material)),
    pr_total_item = pr_total_item + CalculaFreteMaterial (trim (cd_empresa),trim (Cd_Material))
WHERE Cd_Empresa = p_cd_empresa;
COMMIT;

END atualizamovimento;

