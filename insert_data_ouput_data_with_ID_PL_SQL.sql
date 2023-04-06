CREATE TABLE CUSTOMER (
ID NUMBER NOT NULL,
NAME VARCHAR(20) NOT NULL,
AGE NUMBER NOT NULL,
ADDRESS CHAR (25),
SALARY NUMBER (18,2),
PRIMARY KEY(ID)
);

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1,'Ramesh',32,'Ahmedabad',2000.00);

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2,'Royan',20,'Hiyare',3000.00);

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3,'Kasun',23,'Colombo',4000.00);

INSERT INTO CUSTOMER (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4,'Randika',25,'Kaluthara',4000.00);

SELECT * FROM customer;


SET SERVEROUTPUT ON;
DECLARE
cus_id customer.id%type :=2;
cus_name customer.name%type;
cus_addr customer.address%type;
cus_salary customer.salary%type;

BEGIN

SELECT name, address, salary 
INTO cus_name, cus_addr, cus_salary 
FROM customer 
WHERE id=cus_id;

--dbms_output.put_line('Customer Name : '||cus_name|| ' FROM :'|| cus_addr || ' HAS SALARY : ' || cus_salary);

dbms_output.put_line('Customer Name :'||cus_name);
dbms_output.put_line('Customer Address :'||cus_addr);
dbms_output.put_line('Customer Salary :'||cus_salary);

END;
