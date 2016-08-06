CREATE OR REPLACE FUNCTION CalculaFreteMaterial
(
p_cd_empresa IN GEEMPRES.CD_empresa%type,
p_cd_material IN esmateri.Cd_material%type
) 
RETURN FLOAT

IS

v_vl_frete GEEMPRES.Usrempr5%type;
v_peso ESMATERI.Peso%type;
v_perc_frete_material ESMATERI.Pe_Frete%type;

v_vl_percentual_calculado FLOAT;
v_retorno FLOAT;

BEGIN

-- Select material
SELECT mat.peso,mat.pe_frete
INTO v_peso,v_perc_frete_material
FROM ESMATERI mat
WHERE mat.cd_material = p_cd_material;

-- Select empresa
SELECT emp.usrempr5
INTO v_vl_frete
FROM GEEMPRES emp
WHERE emp.cd_empresa = p_cd_empresa;

IF v_vl_frete > 0 AND v_peso > 0 THEN
v_vl_percentual_calculado := (v_vl_frete * v_peso) * (v_perc_frete_material/100);
v_retorno := (v_vl_frete * v_peso) + v_vl_percentual_calculado;
END IF;

RETURN (v_retorno);
END CalculaFreteMaterial;

