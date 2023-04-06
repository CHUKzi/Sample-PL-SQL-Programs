SET SERVEROUTPUT ON;
DECLARE
customer_id customer.id%TYPE :=3;
customer_name customer.name%type;
customer_salary customer.salary%type;
BEGIN

SELECT name,salary
INTO customer_name,customer_salary
FROM customer
WHERE id=customer_id;

    IF customer_salary>3000 THEN
    dbms_output.put_line('CUSTOMER SALARY IS GRATER THEN 3000');
    ELSE
    dbms_output.put_line('CUSTOMER SALARY IS LOWER THEN 3000');
    END IF;
END;