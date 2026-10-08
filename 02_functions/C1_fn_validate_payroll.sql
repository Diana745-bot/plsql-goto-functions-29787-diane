-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- C1: Payroll Validator

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id NUMBER
)
RETURN VARCHAR2
IS
    v_salary NUMBER;
    v_employee_name VARCHAR2(100);
BEGIN
    SELECT first_name || ' ' || last_name, monthly_salary
    INTO v_employee_name, v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary > 0 THEN
        RETURN v_employee_name || ': Payroll is valid.';
    ELSE
        RETURN v_employee_name || ': Payroll is invalid.';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'Employee not found.';
END;