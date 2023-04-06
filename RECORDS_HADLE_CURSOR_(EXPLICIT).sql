SET SERVEROUTPUT ON;
DECLARE 
c_name customer.name%type;
c_age customer.age%type;
CURSOR c_customers IS
    SELECT name, age FROM customer;
    
BEGIN

OPEN c_customers;
LOOP 
FETCH c_customers INTO c_name, c_age;
EXIT WHEN c_customers%notfound;
dbms_output.put_line(c_name||' - '||c_age);
END LOOP;
CLOSE c_customers;
END;
/