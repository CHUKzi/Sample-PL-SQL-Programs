SET SERVEROUTPUT ON;
DECLARE

total_row NUMBER(2);

BEGIN

UPDATE customer 
SET salary = salary + 500;

IF sql%notfound THEN
dbms_output.put_line('no customers selected');
ELSIF sql%found THEN
total_row := sql%rowcount;
dbms_output.put_line(total_row || ' are customers selected');
END IF;
END;
/

