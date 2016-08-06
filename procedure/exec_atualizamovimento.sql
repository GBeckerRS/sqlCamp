BEGIN
      atualizamovimento ('000031');
END;
select mov.movimento,mov.vl_frete,mov.pr_total_item 
from esmovime mov 
where mov.cd_empresa = '000031'

