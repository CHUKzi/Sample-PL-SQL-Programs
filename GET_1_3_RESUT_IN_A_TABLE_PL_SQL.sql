
SET SERVEROUTPUT ON;

DECLARE

c_name customer.name%type;
c_age customer.age%type;

coun NUMBER(1);

BEGIN

<<outer_loop>>
FOR coun IN 1..3 LOOP

SELECT name, age 
INTO c_name,c_age
FROM customer
WHERE id=coun;

dbms_output.put_line('CUSTOMER NAME :'||c_name);
dbms_output.put_line('CUSTOMER AGE :'||c_age);
dbms_output.put_line('============');

END LOOP outer_loop;
END;