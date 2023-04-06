DECLARE

customer_rec customer%rowtype;

BEGIN

SELECT * INTO customer_rec
FROM customer
WHERE id=1;

dbms_output.put_line('CUSTOMER NAME :'||customer_rec.name);
dbms_output.put_line('CUSTOMER ADDRESS :'||customer_rec.address);
dbms_output.put_line('CUSTOMER AGE :'||customer_rec.age);
dbms_output.put_line('CUSTOMER SALARY :'||customer_rec.salary);

END;
/