DECLARE
--'32833'
  v_nota GFLANCAM.Nf%type;
  v_fatura GFLANCAM.fatura%type;
  v_tipo GFLANCAM.cd_tipo%type;
BEGIN
  consultalancamento ('32833',v_nota,v_fatura,v_tipo);
  
  DBMS_OUTPUT.put_line ('Nota, Fatura e Tipo');
  DBMS_OUTPUT.put_line (v_nota);
  DBMS_OUTPUT.put_line (v_fatura);
  DBMS_OUTPUT.put_line (v_tipo);
END;

