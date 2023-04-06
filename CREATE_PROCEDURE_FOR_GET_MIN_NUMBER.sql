--Find The min number

CREATE OR REPLACE PROCEDURE findMin(x IN NUMBER, y IN NUMBER, z OUT NUMBER) IS

BEGIN
IF x < y THEN

z:=x;

ELSE 

z:=y;

END IF;
END;


--call procedure

SET SERVEROUTPUT ON;

DECLARE 

a NUMBER;
b NUMBER;
c NUMBER;

BEGIN

a:=2100;
b:=30;

findMin(a,b,c);

dbms_output.put_line('MIN NUMBER IS :'||c);

END;
/