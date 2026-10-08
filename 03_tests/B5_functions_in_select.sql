-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- B5: Functions in SQL

SELECT
    first_name || ' ' || last_name AS employee_name,
    monthly_salary,
    fn_annual_salary(monthly_salary) AS annual_salary
FROM employees
ORDER BY employee_id;