SET SERVEROUTPUT ON;

DECLARE

TYPE namesarray IS VARRAY(5) OF VARCHAR2(10);
TYPE grades IS VARRAY(5) OF INTEGER;

student namesarray;
marks grades;

total INTEGER;

BEGIN

student := namesarray('Royan', 'Kavishka', 'Nimal', 'Kasun', 'Harshika');
marks := grades(75,65,70,85,90);

total := student.count;

dbms_output.put_line('Totale Number Of Students : '||total);

FOR i IN 1..total LOOP

dbms_output.put_line(student(i)||'-'||marks(i));

END LOOP;

END;