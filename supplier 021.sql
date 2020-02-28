create database supplier;
use supplier;
create table supplier(sid int ,sname varchar(100), city varchar(100),primary key(sid));
alter table supplier
modify city varchar(100);

insert into supplier(sid,sname,city)
values("10001","acme widget","banglore");
insert into supplier(sid,sname,city)
values("10002","johns","kolkata");
insert into supplier(sid,sname,city)
values("10003","vimal","mumbai");
insert into supplier(sid,sname,city)
values("10004","reliance","delhi");
create table parts(pid int,pname varchar(100),color varchar(100),primary key(pid));
insert into parts(pid,pname,color)
values("20001","book","red");
insert into parts(pid,pname,color)
values("20002","pen","red");
insert into parts(pid,pname,color)
values ("20003","pencil","green");
insert into parts(pid,pname,color)
values("20004","moblie","green");
insert into parts(pid,pname,color)
values("20005","charger","black");
create table catalog(sid int,pid int,cost int, foreign key(sid) references supplier(sid), foreign key(pid) references parts(pid),primary key(sid,pid));
insert into catalog(sid,pid,cost)
values("10001","20001","10");
insert into catalog(sid,pid,cost)
values("10001","20002","10");
insert into catalog(sid,pid,cost)
values("10001","20003","30");
insert into catalog(sid,pid,cost)
values("10001","20004","10");
insert into catalog(sid,pid,cost)
values("10001","20005","10");
insert into catalog(sid,pid,cost)
values("10002","20001","10");
insert into catalog(sid,pid,cost)
values("10002","20003","10");
insert into catalog(sid,pid,cost)
values ("10003","20003","30");
insert into catalog(sid,pid,cost)
values("10004","20003","40");
 select distinct (supplier.sid) from supplier,parts,catalog where supplier.sid=catalog.sid and parts.pid=catalog.pid and parts.color='red'or supplier.city="banglore";


