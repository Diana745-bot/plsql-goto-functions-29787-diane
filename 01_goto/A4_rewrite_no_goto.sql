-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- A4: Rewrite Without GOTO

DECLARE
    v_salary NUMBER := 600000;
BEGIN
    IF v_salary >= 500000 THEN
        DBMS_OUTPUT.PUT_LINE('Salary is high.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Salary is below the threshold.');
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary check completed.');
END;