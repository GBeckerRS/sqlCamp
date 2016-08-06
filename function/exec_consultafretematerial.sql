DECLARE
   v_vl_frete FLOAT;
BEGIN
   v_vl_frete := CalculaFreteMaterial ('000020','550012000001');
   
   DBMS_OUTPUT.put_line ('Valor frete');
   DBMS_OUTPUT.put_line (v_vl_frete);
END;

