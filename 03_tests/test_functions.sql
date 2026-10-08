-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- Test B1-B4 Functions

SELECT fn_annual_salary(500000) AS annual_salary
FROM dual;

SELECT fn_years_of_service(DATE '2020-01-20') AS years_of_service
FROM dual;

SELECT fn_calculate_tax(700000) AS monthly_tax
FROM dual;

SELECT fn_dept_name(10) AS department_name
FROM dual;