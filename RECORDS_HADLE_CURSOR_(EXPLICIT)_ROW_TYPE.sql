SET SERVEROUTPUT ON
DECLARE
CURSOR c_customers IS
SELECT * FROM customer;

customer_rec c_customers%rowtype;

BEGIN

OPEN c_customers;
LOOP
FETCH c_customers INTO customer_rec;
EXIT WHEN c_customers%notfound;
dbms_output.put_line(customer_rec.name||' - '||customer_rec.age||' salary is : '||customer_rec.salary);
END LOOP;
CLOSE c_customers;
END;
/
