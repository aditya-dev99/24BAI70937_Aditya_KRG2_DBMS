CREATE TABLE employee (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    salary NUMBER
);

-- Step 2: Insert Sample Data
INSERT INTO employee VALUES (1, 'Rahul', 50000);
INSERT INTO employee VALUES (2, 'Amit', 60000);
INSERT INTO employee VALUES (3, 'Neha', 55000);

COMMIT;

-- Step 3: Package Specification
CREATE OR REPLACE PACKAGE emp_package AS
    PROCEDURE display_employees;
END emp_package;
/

-- Step 4: Package Body
CREATE OR REPLACE PACKAGE BODY emp_package AS

    CURSOR emp_cursor IS
        SELECT id, name, salary FROM employee;

    PROCEDURE display_employees IS
    BEGIN
        FOR emp_rec IN emp_cursor LOOP
            DBMS_OUTPUT.PUT_LINE('ID: ' || emp_rec.id ||
                                 ' Name: ' || emp_rec.name ||
                                 ' Salary: ' || emp_rec.salary);
        END LOOP;
    END display_employees;

END emp_package;
/

-- Step 5: Execute Package Procedure
SET SERVEROUTPUT ON;

BEGIN
    emp_package.display_employees;
END;
/
