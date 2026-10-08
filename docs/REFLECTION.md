# Reflection

## What I Learned

Through this assignment, I learned how to use PL/SQL GOTO statements and functions in a practical database project. I used an Employee Payroll Management System as my project idea and created my own departments and employee tables.

For the GOTO section, I learned how a GOTO statement can move the execution of a PL/SQL program to a labeled section. I also learned that GOTO cannot be used to jump into certain structured statements, such as an IF statement. In A3, I intentionally created an illegal GOTO statement, observed the error, and then corrected it. In A4, I rewrote the same logic without GOTO and saw that structured IF statements can make the code easier to understand.

For the functions section, I created functions to calculate annual salary, years of service, employee tax, and department names. I also created a payroll validation function. These functions helped me understand how PL/SQL can be used to perform reusable calculations and return results.

One important thing I learned was that PL/SQL functions can also be called from SQL statements. For example, I used the annual salary function inside a SELECT statement to calculate the annual salary of all employees.

## GOTO Statements vs Functions

GOTO statements can be useful when execution needs to move to a specific labeled section, but they can make programs harder to follow when they are used too much. Structured statements such as IF and ELSE are usually easier to read and maintain.

Functions are more reusable because the same function can be called whenever the calculation is needed. For example, my annual salary function can be used for any employee instead of writing the salary calculation repeatedly.

## Challenges

One challenge I faced was understanding how SQL Developer executes PL/SQL code and SQL statements. I also encountered an illegal GOTO error in A3, which helped me understand the restrictions on GOTO statements. Another challenge was making sure that my functions were compiled correctly before using them in SELECT statements.

Overall, this assignment helped me understand how PL/SQL can be used to build practical database solutions and how functions can make database programs more organized and reusable.