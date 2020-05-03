create database insurance;
use insurance;
create table PERSON(driver_id varchar(50) , name varchar(50) , address varchar(50),primary key(driver_id));
insert into PERSON (driver_id,name,address)
values("A01","richard","srinivasa nagar");
insert into PERSON(driver_id,name,address)
values("A02","Pradeep","rajaji nagar");
insert into PERSON(driver_id,name,address)
values("A03","smith","Ashoknagar");
insert into PERSON(driver_id,name,address)
values("A04","venu","N R colony");
insert into PERSON(driver_id,name,address)
values("A05","jhon","hanumanth nagar");
create table CAR(reg_num varchar(50),model varchar(50), year int,primary key(reg_num));
insert into CAR(reg_num,model,year)
values("KA052250","indica","1990");
insert into CAR(reg_num,model,year)
values("KA031181","lancer","1957");
insert into CAR(reg_num,model,year)
values("KA095477","toyota","1998");
insert into CAR(reg_num,model,year)
values("KA053408","Honda","2008");
insert into CAR(reg_num,model,year)
values("KA041702","audi","2005");
create table OWNS(driver_id varchar(50),reg_num varchar(50),primary key (driver_id),foreign key(driver_id)references PERSON(driver_id),foreign key(reg_num) references CAR(reg_num));
insert into OWNS(driver_id,reg_num)
values("A01","KA052250");
insert into OWNS(driver_id,reg_num)
values("A02","KA053408");
insert into OWNS(driver_id,reg_num)
values("A03","KA031181");
insert into OWNS(driver_id,reg_num)
values("A04","KA095477");
insert into OWNS(driver_id,reg_num)
values("A05","KA041702");
select *from CAR;
create table ACCIDENT(
report_num int,
accident_date date,
location varchar(50),
primary key(report_num));
insert into ACCIDENT values(11,"2003-01-01","Mysore road");
insert into ACCIDENT values(12,"2004-02-02","South end circle"),(13,"2003-01-21","Bull temple road"),(14,"2008-02-17","Mysore road"),(15,"2005-03-04","Kanakpura road");
select * from ACCIDENT;
create table PARTICIPATED(
driver_id varchar(10),
reg_num varchar(10),
report_num int,
damage_amount int,
primary key (driver_id,reg_num,report_num),
foreign key (driver_id) references PERSON(driver_id),
foreign key (reg_num) references CAR(reg_num),
foreign key (report_num) references ACCIDENT(report_num));
insert into PARTICIPATED values("A01","KA052250",11,10000),("A02","KA053408",12,50000),("A03","KA095477",13,25000),("A04","KA031181",14,3000),("A05","KA041702",15,5000);
select * from PARTICIPATED;
update PARTICIPATED set damage_amount=25000 where reg_num="KA053408" AND report_num=12;
insert into ACCIDENT values(16,"2019-01-03","Hanumanth nagar");
select count(distinct driver_id) CNT from PARTICIPATED,ACCIDENT where PARTICIPATED.report_num=ACCIDENT.report_num AND accident_date like '2008%';
select count(distinct model) ACC_MOD from PARTICIPATED,CAR where PARTICIPATED.reg_num=CAR.reg_num AND CAR.model="Toyota";



