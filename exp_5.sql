create table customer_28
(customer_id int primary key,
customer_name varchar(20),
contact_no int,
address varchar(70),
city varchar(20),
p_code int,
country varchar(20));

DESC customer;

drop 
drop table customer;
truncate table employees;
drop table orders;

create table employees
(employee_ID int primary key,
L_name varchar(20),
F_Name varchar(20),
BirthDate date,
Photo varchar(100));

create table orders
(order_id int primary key,
customer_id int,
employee_id int,
order_date date, 
shipper_id int,
foreign key (customer_id) references customer_28,
foreign key (employee_ID) references employees);


insert into customer_28 values(1,'Satoru Gojo',9876541234,'916 Groove Street','New York',10001,'USA');
insert into customer_28 values(2,'Johan Smith',9123645380,'205 Grand Avenue','New York',10001,'USA');
insert into customer_28 values(3,'Rahul Sumesh',9888776655,'141 MG Road','Delhi',10003,'India');
insert into customer_28 values(4,'Sakura Wilson',9012345912,'233 Shibuya','New York',10001,'USA');
insert into customer_28 values(5,'David Smith', 9090101010,'151 Queen Street','New York',10001,'USA');



insert into employees values (101,'Alex', 'Babu','15-06-1985','p1.jpg');
insert into employees values (102,'Amber','Jacob','22-03-1990','p2.jpg');
insert into employees values (103, 'Taylor','Swift','05-03-1978','p3.jpg');
insert into employees values (104, 'Max','Varstappan','18-06-1988','p4.jpg');
insert into employees values (105, 'Thomas','James','25-12-1995','p5.jpg');



insert into orders values (1001,1,101,'10-01-2024',501);
insert into orders values (1002,2,102,'10-02-2024',502);
insert into orders values (1003,1,103,'10-03-2024',503);
insert into orders values (1004,3,104,'10-04-2024',504);
insert into orders values (1005,1,105,'10-05-2024',505);

select * from customer_28;
select * from employees;
select * from orders;

select customer_name from customer_28 order by customer_name;

select * from orders order by order_date;

select * from employees where Birthdate > date '1980-01-01' order by birthdate desc;


select customer_id,count(order_id) from orders group by customer_id ;


select city,count(*) from customer_28 group by city;


select customer_id,count(*) from orders group by customer_id having count(*)>2;


select city,count(*) from customer_28 group by city having count(*)>2;

select *  from orders join customer on orders.customer_id =customer_28.customer_id  where customer_28.country='USA' order by order_date desc ;
select * from orders where customer_id in (select customer_id  from customer where country = 'USA')order by order_date desc;
