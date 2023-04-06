SET SERVEROUTPUT ON;
i NUMBER(1);
BEGIN

<<outer_loop>>

FOR i IN 1..10 LOOP
dbms_output.put_line(i);
END LOOP outer_loop;


END;