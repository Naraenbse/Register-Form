CREATE TABLE employees (
    employee_id INT,
    employee_name VARCHAR(30),
    salary INT
);

INSERT INTO employees VALUES
(1, 'bachira', 50000),
(2, 'isagi', 40000),
(3, 'chigiri', 25000);

CREATE TABLE high_salary_employees (
    employee_id INT,
    employee_name VARCHAR(30),
    salary INT
);

INSERT INTO high_salary_employees (employee_id, employee_name, salary)
SELECT employee_id, employee_name, salary FROM employees WHERE salary > 30000;

SELECT * FROM high_salary_employees;