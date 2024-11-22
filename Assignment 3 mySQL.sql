# CREATE THE DATBASE
create database managerslist;
use managerslist;

# CREATE TABLE NAMED MANAGERS
create table Managers(Manager_ID int primary key,
First_name varchar(50) not null,
Last_name varchar(50) not null,
DOB date,
Age int check(Age>=18 and Age<60),
Last_update timestamp default current_timestamp,
Gender char(1) check(Gender in ('M','F','O')),
Department varchar(50)not null,
Salary decimal (10,2) not null);

# ADD 10 ROWS

insert into Managers (
Manager_Id, 
First_name, 
Last_Name, 
DOB,
Age,
Gender,
Department,
Salary) 
values
(1, 'John', 'Mathew', '2000-04-23', 39, 'M', 'HR', 30000),
(2, 'Aaliya', 'Khan', '1999-08-11', 34, 'F', 'Finance', 22000),
(3, 'David', 'Smith', '1998-12-04', 46, 'M', 'Marketing', 35000),
(4, 'Sophia', 'Menon', '2002-01-15', 42, 'F', 'IT', 26000),
(5, 'Michael', 'Brown', '2005-05-30', 44, 'M', 'Operations', 28000),
(6, 'Isabella', 'Williams', '2009-11-02', 32, 'F', 'HR', 32000),
(7, 'Ethan', 'Davis', '1999-07-21', 37, 'M', 'IT', 40000),
(8, 'Emma', 'Miller', '1997-02-14', 41, 'F', 'Finance', 25000),
(9, 'James', 'Wilson', '2005-03-05', 29, 'M', 'Marketing', 24000),
(10, 'Olivia', 'Moore', '2007-09-30', 36, 'F', 'Operations', 27000);
select * from managers;

# RETRIEVE THE NAME AND DOB OF THE MANAGER WITH MANAGE ID 1. 
select First_name, Last_Name, DOB 
 from Managers 
where  Manager_Id = 1;

# ANNUAL INCOME OF ALL MANAGERS

select First_name, Last_Name, Salary * 12 as Annual_Income
from Managers;


# RECORDS OF ALL MANAGERS EXCEPT 'AALIA'.
select* from managers 
WHERE First_name!='Aaliya';

# DETAILS OF MANAGERS WHOSE DEPARTMENTS I SIT AND EARNS MORE THAN 250000

select *from  managers
where Department='IT' and Salary>25000;

# DETAILS OF MANAGERS WHOSE SALARY IS BETWEEN 10000 AND 350000

select *from  managers
where Salary between 10000 and 35000;


