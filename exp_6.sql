create table items
(itemid int primary key,
Itemname varchar(50), 
catagory varchar(20),
Price decimal(10,2),
Instock int CHECK(Instock >= 0));

create table Customers
(custid int primary key,
Custname varchar(20),
Address varchar(20),
state varchar(20));

create table Orders_28
(orderid int primary key,
Itemid int, 
Custid int,
Quantity int,
Orderdate date,
foreign key (Itemid) references items,
foreign key (Custid) references Customers);

create table Delivery
(deliveryid int primary key,
Custid int,
Orderid int,
foreign key (orderid) references Orders_28,
foreign key (Custid) references Customers);
