create table BANK(bankcode varchar(3), 
bankname varchar(30) not null,
headoffice varchar(30), 
branches int not null check(branches>0),
primary key(bankcode));

insert into BANK values('SBI','State Bank','Delhi',30);
insert into BANK values('CNB','Canara Bank','Ernakulam',20);
insert into BANK values('SlB','South Indian Bank','Madras',30);
insert into BANK values('AXB','Axis Bank','Kottayam',15);	 	 	  	
insert into BANK values('FDB','Federal Bank','Ernakulam',25);

insert into BANK values('IFB','Indian Federal Bank','Ernakulam',25);
commit;

select *from BANK;

insert into BANK values('ICL','ICL Fincorp','Ernakulam',5);
savepoint A;

insert into BANK values('GMB','Grameen Bank','Pune',15);
savepoint B;

rollback to B;
rollback to A;

grant select on BANK to c24csa27;


SELECT * FROM C24CSA27.bank;

revoke select on BANK from c24csa27;
