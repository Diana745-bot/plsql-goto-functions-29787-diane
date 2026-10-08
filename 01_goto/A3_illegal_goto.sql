-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- A3: Illegal GOTO and Fix

-- Illegal GOTO example
-- This code intentionally demonstrates an illegal GOTO statement.
-- The GOTO cannot jump into an IF statement.

-- DECLARE
--     v_salary NUMBER := 600000;
-- BEGIN
--     GOTO inside_if;

--     IF v_salary >= 500000 THEN
--         <<inside_if>>
--         DBMS_OUTPUT.PUT_LINE('Salary is high.');
--     END IF;
-- END;


-- Corrected version

DECLARE
    v_salary NUMBER := 600000;
BEGIN
    IF v_salary >= 500000 THEN
        GOTO salary_high;
    ELSE
        GOTO salary_low;
    END IF;

    <<salary_high>>
    DBMS_OUTPUT.PUT_LINE('Salary is high.');
    GOTO finish;

    <<salary_low>>
    DBMS_OUTPUT.PUT_LINE('Salary is below the threshold.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Salary check completed.');
END;sss