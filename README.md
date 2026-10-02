# MYSQL-
DDL Commands and Constraints, covering database and table creation, alteration, renaming, truncation, dropping, and SQL constraints.



I. 1.	TABLE CREATION

create database employee;
use employee;

create table Departments (department_id int, department_name varchar(100));

create table Location (location_id int, location varchar(30));

create table Employees ( employee_id int, employee_name varchar(50), gender enum('m', 'f'), age int, hire_date date, designation varchar(100),  department_id int, location_id int, salary decimal(10,2));

2.	TABLE ALTERATION

alter table Employees
add email varchar(100);

alter table Employees
modify designation varchar(200);

alter table Employees
drop column age;

3.	TABLE RENAMING

alter table Employees
rename column hire_date to date_of_joining;

rename table Departments to Departments_info;

rename table Location to Locations;

4.	TABLE TRUNCATION

truncate table Employees;

5.	DATABASE & TABLE DROPPING

drop table Employees;

drop database employee;



II. 1.	DATABASE RECREATION:

create database employee;
use employee;

2.	Departments TABLE:

create table departments (department_id int primary key,department_name varchar(100) not null unique);

3.	Location TABLE:

create table location (location_id int auto_increment primary key, location varchar(30) not null unique);

4.	Employees TABLE:

create table employees (employee_id int primary key, employee_name varchar(50) not null, gender enum('m', 'f'), age int check (age >= 18), hire_date date default (current_date), designation varchar(100), department_id int, location_id int, salary decimal(10,2), foreign key (department_id) references departments(department_id), foreign key (location_id) references location(location_id));
