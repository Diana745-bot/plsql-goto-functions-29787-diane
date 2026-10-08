-- Student: UMUTONIWASE Diane
-- Reg No: 29787
-- Group: I
-- Project: Employee Records Management System
-- B3: Tax Calculator Function

CREATE OR REPLACE FUNCTION fn_calculate_tax (
    p_monthly_salary NUMBER
)
RETURN NUMBER
IS
    v_tax NUMBER;
BEGIN
    IF p_monthly_salary <= 300000 THEN
        v_tax := 0;
    ELSIF p_monthly_salary <= 600000 THEN
        v_tax := p_monthly_salary * 0.10;
    ELSE
        v_tax := p_monthly_salary * 0.20;
    END IF;

    RETURN v_tax;
END;