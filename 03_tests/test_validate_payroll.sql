-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- Test C1: Payroll Validator

SELECT
    employee_id,
    first_name || ' ' || last_name AS employee_name,
    monthly_salary,
    fn_validate_payroll(employee_id) AS payroll_status
FROM employees
ORDER BY employee_id;

SELECT
    fn_validate_payroll(999) AS payroll_status
FROM dual;