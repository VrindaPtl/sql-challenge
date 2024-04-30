Departments
-
dept_no char(4) PK
dept_name varchar(40) FK >- Dept_manager.dept_name


Dept_emp
-
emp_no int pk
dept_no char(4) pk FK >- Departments.dept_no



Dept_manager
-
dept_name char(4)
emp_no int pk FK >- Employees.emp_no


Employees
-
emp_no int pk FK >- Dept_emp.emp_no
emp_title_id varchar FK >- Titles.title_id
birth_date date
first_name varchar(14)
last_name varchar(16)
sex char
hire_date date

Salaries
-
emp_no int pk FK >- Employees.emp_no
salary int

Titles
-
title_id varchar
title pk varchar(50)

