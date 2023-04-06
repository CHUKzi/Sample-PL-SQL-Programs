
CREATE OR REPLACE PROCEDURE sqreNum(x IN OUT NUMBER) IS
BEGIN
x := x*x;
END;

SET SERVEROUTPUT ON;
DECLARE 
num1 NUMBER;
BEGIN
num1 :=5;
sqreNum(num1);
dbms_output.put_line('SQURE NUMBER IS : '||num1);
END;
/