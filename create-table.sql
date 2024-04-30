drop table if exists departments;
drop table if exists dept_emp;
drop table if exists dept_manager;
drop table if exists employees;
drop table if exists salaries;
drop table if exists titles;

create table departments (
    dept_no char(4) not null,
    dept_name varchar(40) not null,
    primary key (dept_no)
);

create table dept_emp (
    emp_no int not null,
    dept_no char(4) not null,
    primary key (emp_no, dept_no)
);

create table employees (
    emp_no int not null,
	emp_title_id varchar not null,
    birth_date date not null,
    first_name varchar(14) not null,
    last_name varchar(16) not null,
    sex char(1) not null,
    hire_date date not null,
    primary key (emp_no)
    );
	
create table dept_manager (
    dept_no char(4) not null,
	emp_no int not null,
    primary key (emp_no, dept_no)
);
	
create table salaries (
    emp_no int not null,
    salary int not null,
    primary key (emp_no)
);

create table titles (
    title_id varchar not null,
    title varchar(50) not null,
    primary key (title_id, title)
);



