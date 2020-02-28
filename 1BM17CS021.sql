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



