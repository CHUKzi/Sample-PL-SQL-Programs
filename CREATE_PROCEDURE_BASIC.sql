--Create procedure
CREATE OR REPLACE PROCEDURE myname IS
BEGIN
dbms_output.put_line('MY NAME IS ROYAN HARSHA');
END;

--call procdure
SET SERVEROUTPUT ON;
BEGIN
myname;
END;
/