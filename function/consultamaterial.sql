-- CRIANDO UMA FUNCTION --

CREATE OR REPLACE FUNCTION ConsultaMaterial -- Cria ou Substitui
(
p_codMaterial IN ESMATERI.Cd_Material%type -- Parametros da Function
)
return varchar -- Tipo do retorno (Deve ser explicito)
IS
       v_descricao ESMATERI.descricao%type; -- Declara variavel

BEGIN

SELECT descricao
INTO v_descricao -- Armazena o retorno na variavel
FROM ESMATERI
WHERE cd_material = p_codMaterial;

RETURN (v_descricao); -- Retorno obrigatorio da FUNCITON

END ConsultaMaterial;

