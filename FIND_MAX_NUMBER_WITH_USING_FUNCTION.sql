CREATE OR REPLACE FUNCTION findMax(x IN NUMBER, y IN NUMBER)RETURN NUMBER IS

BEGIN

IF x<y THEN
RETURN y;
ELSE 
RETURN x;
END IF;
END;

SET SERVEROUTPUT ON

DECLARE

a NUMBER;
b NUMBER;
c NUMBER;

BEGIN

a := 200;
b := 40;

c := findMax(a,b);

dbms_output.put_line('MAX NUMBER IS :' || c);

END;
/

