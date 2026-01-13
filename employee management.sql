create database employee_management;
use employee_management;
create table department (dept_no varchar (10), dept_name varchar (22));
create table employees (emp_no int, birth_date date, first_name varchar (15), last_name varchar (15), gender varchar (1), hire_date date);
create table title (emp_no int, title varchar (30));
create table salary (emp_no int, salary int);
create table dept_emp (dept_no int, dept_name varchar (22), emp_no int);
create table dept_manager (dept_no int, emp_no int, first_name varchar (15), last_name varchar (15));

show tables ;

