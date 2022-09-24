-- DDL
create database starterpack;
use starterpack;
-- create
create table member (
	StudentID char(11) not null,
    Firstname varchar(50),
    Lastname varchar(50),
    Nickname varchar(50),
    Age int,
    Gender char(1),
    Month_of_Birth varchar(10),
    Team varchar(15));
insert into member values ('63130500107','Vichayaphat','Patthikarnsakul','Anfield', 20, 'M', 'January', 'Raptor');
-- alter
alter table member add column hobby varchar(100);
update member set hobby = 'play games' where studentid = '63130500107';
alter table member drop column hobby;
-- drop
drop table member;
-- DML
-- insert
insert into member values ('63130500107','Vichayaphat','Patthikarnsakul','Anfield', 20, 'M', 'January', 'Raptor');
insert into member values ('63130500109','Siripong','Phiwkhaw','Nut', 20, 'M', 'June', 'Water Park');
insert into member values ('66130500000','Pablo','Escobar','Pablo', 40, 'M', 'February', 'Raptor');
insert into member values ('66130500002','Taylor','Swift','Taylor', 35, 'F', 'September', 'Water Park');
-- delete
delete from member where studentid = '66130500000';
-- update
update member set month_of_birth = 'December' where studentid = '66130500001';
-- DQL
-- Select
select * from member;
-- As
select Nickname, gender as Sex from member;
-- Distinct
select distinct team from member;
-- Where
select firstname, lastname, team from member where team = 'Water Park';
select nickname, gender from member where gender = 'F';
select studentid, nickname, gender, month_of_birth from member where gender = 'M' and month_of_birth = 'January';
select studentid, nickname, gender, month_of_birth from member where gender = 'F' or month_of_birth = 'January';
-- Order By
select nickname, age from member order by age desc;
select nickname, age from member order by age asc;
-- Aggregate Function
select count(*) as total_member from member;
select avg(age) as average_age from member;
select sum(age) as sum_age from member;
select min(age) as minimum_age from member;
select max(age) as maximum_age from member;
-- Group By
select team, avg(age) as average_age from member group by team;
select gender, sum(age) as sum_age from member group by gender;
select month_of_birth, count(*) as total from member group by month_of_birth;
-- Having
select team, sum(age) as sum_age from member group by team having sum(age) > 55;
select gender, avg(age) as average_age from member group by gender having avg(age) > 20;
select month_of_birth, count(*) as total from member group by month_of_birth having count(*) > 1;
-- Assignment
select team, sum(age) as total_age, count(*) as total_people from member where team = 'Raptor' group by team having sum(age) > 55 order by team desc;