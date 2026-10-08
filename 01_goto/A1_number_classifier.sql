-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- A1: Number Classifier

DECLARE
    v_number NUMBER := 25;
BEGIN
    IF v_number > 0 THEN
        GOTO positive_number;
    ELSIF v_number < 0 THEN
        GOTO negative_number;
    ELSE
        GOTO zero_number;
    END IF;

    <<positive_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is positive.');
    GOTO finish;

    <<negative_number>>
    DBMS_OUTPUT.PUT_LINE('Number ' || v_number || ' is negative.');
    GOTO finish;

    <<zero_number>>
    DBMS_OUTPUT.PUT_LINE('Number is zero.');

    <<finish>>
    DBMS_OUTPUT.PUT_LINE('Number classification completed.');
END;