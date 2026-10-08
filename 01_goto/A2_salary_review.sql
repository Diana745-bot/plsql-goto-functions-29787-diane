-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- A2: Salary Review

DECLARE
    v_employee_name VARCHAR2(100);
    v_salary NUMBER;
BEGIN
    SELECT first_name || ' ' || last_name, monthly_salary
    INTO v_employee_name, v_salary
    FROM employees
    WHERE employee_id = 2;

    IF v_salary >= 500000 THEN
        GOTO salary_ok;
    ELSE
        GOTO salary_review;
    END IF;

    <<salary_ok>>
    DBMS_OUTPUT.PUT_LINE(
        v_employee_name || ' has a salary of ' || v_salary ||
        '. Salary is above the review threshold.'
    );
    GOTO finish;

    <<salary_review>>
    DBMS_OUTPUT.PUT_LINE(
        v_employee_name || ' has a salary of ' || v_salary ||
        '. Salary needs review.'
    );

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary review completed.');

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');
END;