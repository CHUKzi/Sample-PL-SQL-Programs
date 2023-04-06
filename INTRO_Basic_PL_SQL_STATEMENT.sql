--basic

SET SERVEROUTPUT ON;

DECLARE message VARCHAR2(20) :='Hellow World';

BEGIN dbms_output.put_line(message);

END;

--