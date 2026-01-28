
-- create
CREATE TABLE Employee(Emp_id VARCHAR(20) PRIMARY KEY,Emp_name VARCHAR(30),Dept VARCHAR(30), Emp_sal decimal(10,2));


-- insert
INSERT INTO EMPLOYEE VALUES (1, 'David Smith', 'HR',15000);
INSERT INTO EMPLOYEE VALUES (2, 'Max Verstappen', 'Marketing',6500);
INSERT INTO EMPLOYEE VALUES (3, 'Charles Brown', 'Production',10000);
INSERT INTO EMPLOYEE VALUES (4, 'Andrew Tale', 'Sales',6000);
-- fetch 
select * from employee where Emp_sal>7000; 
update employee set Emp_sal =8200 where Emp_name='David Smith';
SELECT *FROM EMPLOYEE;
INSERT INTO employee values (6,'Daniel Harris','Production',6700);
SELECT *FROM EMPLOYEE;
delete from employee where emp_id=3;
SELECT *FROM EMPLOYEE;
select Emp_name from employee where Emp_name not like 'D%' AND  Emp_name not like 'O%';
select dept,sum(Emp_sal) as total_salary from employee group by Dept; 

