-- 1. Display employees whose salary is greater than 50000
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES (1, 'Alice', 'HR', 45000);
INSERT INTO employees VALUES (2, 'Bob', 'IT', 60000);
INSERT INTO employees VALUES (3, 'Charlie', 'Finance', 70000);
INSERT INTO employees VALUES (4, 'David', 'IT', 48000);
INSERT INTO employees VALUES (5, 'Eva', 'HR', 55000);


SELECT *
FROM employees
WHERE salary > 50000;


-- 2. Display employees who work in the 'HR' department
SELECT *
FROM employees
WHERE department = 'HR';

-- 3. Display employees who belong to Mumbai
-- (This assumes there is a column called city)
CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    salary INT,
    department VARCHAR(50),
    age INT
);
INSERT INTO employees VALUES (1, 'Rahul', 'it' 60000, 'Banglore');
INSERT INTO employees VALUES (2, 'Anita', 'HR', 45000, 'Delhi');
INSERT INTO employees VALUES (3, 'Karan', 'Finance', 70000, 'Mumbai');
INSERT INTO employees VALUES (4, 'Sneha', 'it', 50000, 'Bangalore');





SELECT *
FROM employees
WHERE city = 'Mumbai';

-- 4. Display employees whose salary is between 30000 and 60000
SELECT *
FROM employees
WHERE salary BETWEEN 30000 AND 60000;

-- 5. Display employees whose name starts with 'A'
SELECT *
FROM employees
WHERE emp_name LIKE 'A%';

-- 6. Display employees whose department is not 'Sales'
SELECT *
FROM employees
WHERE department <> 'Sales';


insert into employees values (1, 'alice', 50000, 'hr', 25);
insert into employees values (2, 'bob', 600000, 'it', 30);
insert into employees values (3, 'charli', 70000, 'finance', 35);
insert into employees values (4, 'david', 60000, 'it', 28);
insert into employees values (5, 'eve', 80000, 'hr', 40);
insert into employees values (6, 'anil', 50000, 'hr', 24);
insert into employees values (7, 'amit', 75000, 'it', 32);
insert into employees values (9, 'ap%ce', 25000, 'hr', 25);

select * from employees where emp_name like 'A%'




select emp_dept, count(*) from employee_details group by emp_dept

select emp_dept,avg(emp_salary) from employee_details group by emp_dept

select emp_dept,avg(emp_salary) from employee_details gropy by em_dept having emp_salary >50000

select emp_dept,count(*) from employee_details emp_age >25 

--sub querry
--non coreleated
select emp_name,emp_dept,emp_salary from employee_details e1 where emp_salary>(
select avg(emp_salary) from employee_details
)

--corelated
select emp_name,emp_dpt,emp_salary from employee_details e1 where emp_salary > (
select avg(emp_salary) from employee_details e2 where e1.emp_dept =e2.emp_dept
)



