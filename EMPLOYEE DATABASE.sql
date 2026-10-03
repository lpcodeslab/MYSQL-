create database employee;

use employee;

create table Departments (department_id int, department_name varchar(100));

create table Location (location_id int, location varchar(30));

create table Employees ( employee_id int, employee_name varchar(50), gender enum('m', 'f'), age int, hire_date date, designation varchar(100),  department_id int, location_id int, salary decimal(10,2));

alter table Employees
add email varchar(100);

alter table Employees
modify designation varchar(200);

alter table Employees
drop column age;

alter table Employees
rename column hire_date to date_of_joining;
rename table Departments to Departments_info;
rename table Location to Locations;

truncate table Employees;

drop table Employees;

drop database employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments (department_id INT PRIMARY KEY,department_name VARCHAR(100) NOT NULL UNIQUE);

CREATE TABLE Location (location_id INT AUTO_INCREMENT PRIMARY KEY, location VARCHAR(30) NOT NULL UNIQUE);

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
FOREIGN KEY (department_id) REFERENCES Departments(department_id),
FOREIGN KEY (location_id) REFERENCES Location(location_id));

