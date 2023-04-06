--Exception
SET SERVEROUTPUT ON;
DECLARE
c_id customer.id%type :=5;
c_name customer.name%type;
BEGIN
SELECT name INTO c_name
FROM customer
WHERE id=c_id;

dbms_output.put_line('CUSTOMER NAME : ' || c_name);

EXCEPTION
WHEN no_data_found THEN
dbms_output.put_line('No Such Customer');
WHEN OTHERS THEN
dbms_output.put_line('ERROR!');
END;
/