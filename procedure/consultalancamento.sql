CREATE OR REPLACE PROCEDURE ConsultaLancamento
(
p_numLancamento GFLANCAM.CD_LANCAMENTO%type,
r_nota OUT GFLANCAM.Nf%type,
r_fatura OUT GFLANCAM.Fatura%type,
r_tipo OUT GFLANCAM.Cd_Tipo%type,
r_nomeCliente OUT GEEMPRES.Nome_Completo%type
)

IS

BEGIN
       SELECT lanc.Nf,lanc.Fatura,lanc.Cd_Tipo,emp.nome_completo
       INTO r_nota,r_fatura,r_tipo,r_nomeCliente
       FROM GFLANCAM lanc,GEEMPRES emp
       WHERE lanc.CD_LANCAMENTO = p_numLancamento and emp.cd_empresa = lanc.cd_empresa;
END ConsultaLancamento;

