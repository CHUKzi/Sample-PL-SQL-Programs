SET SERVEROUTPUT ON;
DECLARE
    i NUMBER(2):=1;
    BEGIN
    WHILE i<=10 LOOP
    dbms_output.put_line(i);
    i:=i+1;
    END LOOP;
END;