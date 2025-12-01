CREATE DATABASE CLASS;
USE CLASS;
CREATE TABLE table1(

 id INT PRIMARY KEY auto_increment,
 name varchar(20),
 age int,
 city varchar(30),
 email varchar(40),
 mobile varchar(10));
INSERT INTO table1 ( name ,age,city,email,mobile )values("ranjith",20,"pondicherry","ranjith@gmail.com","9361780926");
 
describe table1;

select * from table1;
