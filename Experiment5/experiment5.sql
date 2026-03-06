CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(50),
    salary NUMBER
);

INSERT INTO employee VALUES (101, 'Rahul', 25000);
INSERT INTO employee VALUES (102, 'Amit', 32001);
INSERT INTO employee VALUES (103, 'Neha', 45000);
INSERT INTO employee VALUES (104, 'Priya', 27555);
INSERT INTO employee VALUES (105, 'Rohan', 30000);

SELECT * FROM employee;

SELECT emp_id, emp_name, salary
FROM employee
WHERE MOD(salary,2)=0;

SELECT emp_id, emp_name, salary
FROM employee
WHERE MOD(salary,2)=1;

SELECT emp_id, emp_name, salary,
CASE
WHEN MOD(salary,2)=0 THEN 'Even Salary'
ELSE 'Odd Salary'
END AS salary_type
FROM employee;
