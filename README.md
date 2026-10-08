
# Employee Records Management System

## Student Information

- **Name:** UMUTONIWASE Diane
- **Registration Number:** 29787
- **Group:** I
- **Course:** Database Development with PL/SQL (INSY 8311)
- **Assignment:** Individual Assignment III – PL/SQL GOTO Statements and Functions

## About the Project

For this assignment, I created a simple **Employee Records Management System** using Oracle PL/SQL.

I chose this idea because employee records give me different types of information to work with, such as employee names, departments, hire dates, and salaries. I used these records to practice GOTO statements, create functions, and test the functions using SQL queries.

The database has two main tables: `employees` and `departments`.

## Tables Used

### Departments

The `departments` table keeps information about the different departments in the organization.

It contains:

- `department_id`
- `department_name`

### Employees

The `employees` table stores the employee records.

It contains:

- `employee_id`
- `first_name`
- `last_name`
- `department_id`
- `hire_date`
- `monthly_salary`

The `department_id` in the employees table connects each employee to a department.

## Part A – GOTO Statements

### A1 – Number Classifier

In A1, I used GOTO statements to check whether a number is positive, negative, or zero.

### A2 – Salary Review

In A2, I used an employee's salary to decide whether the salary was above the review threshold or needed to be reviewed.

### A3 – Illegal GOTO and Fix

In A3, I created an example of an illegal GOTO statement. I ran it to see the Oracle error and then corrected the code by placing the label in a valid location.

### A4 – Rewrite Without GOTO

In A4, I rewrote the salary checking program without using GOTO. I used an IF and ELSE statement instead.

This showed me that structured statements can sometimes make the code easier to follow.

## Part B – Functions

### B1 – Annual Salary

I created `fn_annual_salary` to calculate an employee's annual salary from their monthly salary.

### B2 – Years of Service

I created `fn_years_of_service` to calculate how many completed years an employee has worked based on their hire date.

### B3 – Tax Calculator

I created `fn_calculate_tax` to calculate monthly tax based on an employee's salary.

### B4 – Department Name

I created `fn_dept_name` to return the department name when a department ID is given.

### B5 – Functions in SQL

I used one of the PL/SQL functions inside a normal SQL `SELECT` statement. This allowed me to calculate and display employee information directly from the database.

## Part C – Combined Task

### C1 – Payroll Validator

I created `fn_validate_payroll` to check whether an employee's payroll information is valid.

The function checks the employee's salary and returns a message showing whether the payroll is valid. It also handles the case where an employee ID does not exist.

### C2 – Reflection

My reflection is included in:

`docs/REFLECTION.md`

It explains what I learned during the assignment, the difference between GOTO statements and functions, and some of the challenges I experienced.

## Project Structure

```text
plsql-goto-functions-29787-diane/
│
├── 00_setup/
│   └── create_tables.sql
│
├── 01_goto/
│   ├── A1_number_classifier.sql
│   ├── A2_salary_review.sql
│   ├── A3_illegal_goto.sql
│   └── A4_rewrite_no_goto.sql
│
├── 02_functions/
│   ├── B1_fn_annual_salary.sql
│   ├── B2_fn_years_of_service.sql
│   ├── B3_fn_calculate_tax.sql
│   ├── B4_fn_dept_name.sql
│   └── C1_fn_validate_payroll.sql
│
├── 03_tests/
│   ├── B5_functions_in_select.sql
│   ├── test_functions.sql
│   └── test_validate_payroll.sql
│
├── docs/
│   └── REFLECTION.md
│
└── screenshots/
    ├── A1_output.png
    ├── A2_output.png
    ├── A3_error_and_fix.png
    ├── A4_output.png
    ├── B5_select_output.png
    └── C1_output.png
```

## How I Worked on the Project

I created the tables and sample employee data in Oracle SQL Developer. After that, I created and tested the GOTO programs and PL/SQL functions.

I also used SQL `SELECT` statements to check the results and took screenshots of the important outputs as evidence of my work.

## Screenshots

The `screenshots` folder contains the main evidence from the assignment:

- `A1_output.png` – A1 result
- `A2_output.png` – A2 result
- `A3_error_and_fix.png` – A3 error and corrected version
- `A4_output.png` – A4 result
- `B5_select_output.png` – Function used in a SELECT statement
- `C1_output.png` – C1 payroll validation result

## AI Use

I used AI as a learning assistant while working on this assignment. It helped me understand PL/SQL concepts, organize the project files, and troubleshoot some errors I encountered.

I tested the SQL and PL/SQL code myself in Oracle SQL Developer and used my own project idea, employee names, and database records.