-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Payroll Management System

CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    department_id NUMBER,
    hire_date DATE NOT NULL,
    monthly_salary NUMBER(10,2) NOT NULL,
    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);

INSERT INTO departments (department_id, department_name)
VALUES (10, 'IT');

INSERT INTO departments (department_id, department_name)
VALUES (20, 'Finance');

INSERT INTO departments (department_id, department_name)
VALUES (30, 'Human Resources');

INSERT INTO departments (department_id, department_name)
VALUES (40, 'Marketing');

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(1, 'Kevine', 'Sugira', 10, DATE '2021-03-15', 450000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(2, 'Ishimwe', 'Dylan', 20, DATE '2022-07-10', 500000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(3, 'Diane', 'Mutoni', 10, DATE '2020-01-20', 600000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(4, 'Fred', 'Ngoga', 30, DATE '2019-11-05', 550000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(5, 'Neema', 'Esther', 40, DATE '2023-02-14', 400000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(6, 'Moussa', 'Nkurunziza', 20, DATE '2018-06-18', 700000);

INSERT INTO employees
(employee_id, first_name, last_name, department_id, hire_date, monthly_salary)
VALUES
(7, 'Nkwaya', 'Frank', 30, DATE '2021-09-01', 480000);

COMMIT;