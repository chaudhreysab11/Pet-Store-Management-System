create database if not exists ProjectDB;
use ProjectDB;

create table IF NOT EXISTS Registration
(RId int auto_increment,email varchar(255),	
username varchar(255),Rpassword varchar(25),
primary key(RId));

create table IF NOT EXISTS Users 
(UId int auto_increment ,RId int Not Null, fName varchar(255), 
lName varchar(255), Country varchar(255), Province varchar(255),City varchar(255), Zipcode bigint, Gender varchar(11), 
UContact varchar(15), DOB date, PRIMARY KEY (UID), FOREIGN KEY (RId) REFERENCES Registration (RId));

create table IF NOT EXISTS PetCategory
(CId int auto_increment,CName varchar(255),
primary key (CId));


create table IF NOT EXISTS Product
(PId int auto_increment, CId int not null, Uid int not null,
PName varchar(255), image varchar(255) , PDescription varchar(255), weight varchar(255),
Price varchar(15), primary key (PId),FOREIGN KEY (CId) REFERENCES PetCategory (CId),
FOREIGN KEY (UId) REFERENCES Users (UId));

insert into registration values (1,"abc@xyz.com","Bilal","12345"),(2,"efg@xyz.com","Inayat","67890");
insert into users values (1,1,"Ali","Amhed","Pakistan","Punjab","Lahore",12345,"M","+923323421233","2000-01-01"),(2,2,"Hamza","Amhed","Pakistan","Punjab","Sargodha",12355,"M","+923055140554","2000-01-01");
insert into petcategory(CName) values ("Cats"),("Dogs"),("Birds"); 
insert into product values (1, 1 ,1, "Cat","D:/ProjectDB/Images/c3.gif", "white", "2 pounds", 18000),
 (2, 1, 2, "Persian Cat","D:/ProjectDB/Images/c1.gif", "white", "2 pounds", 9000),
 (3, 1, 1, "Persian Cat", "D:/ProjectDB/Images/c2.gif","Brown", "1.5 pounds", 7000), 
 (4, 1, 2, "Cat","D:/ProjectDB/Images/c4.gif","Black & white", "3 pounds", 15000),
 (5, 1, 1, "Fur Cat", "D:/ProjectDB/Images/c5.gif","Brown", "2.4 pounds", 20000), 
 (6, 1, 2, "Persian Cat", "D:/ProjectDB/Images/c6.gif","Black & white", "2 pounds", 19000),
 (7, 1, 1, "Persian Cat","D:/ProjectDB/Images/c7.gif","Black", "1.8 pounds", 9000);
 
 insert into product values (8, 2, 1, "Dog","D:/ProjectDB/Images/d1.gif", "Brown", "5 kg", 18000), 
 (9, 2, 1, "Dog", "D:/ProjectDB/Images/d2.gif","Black", "10kg", 18000), 
 (10, 2, 2, "Dog","D:/ProjectDB/Images/d3.gif", "Brown & Black", "6 kg", 18000), 
 (11, 2, 1, "Dog","D:/ProjectDB/Images/d4.gif", "Brown & Black", "8 kg", 18000),
 (12, 2, 1, "Dog","D:/ProjectDB/Images/d9.gif", "Black & white", "5 kg", 18000), 
 (13, 2, 2, "Dog","D:/ProjectDB/Images/d6.gif", "Brown & Black", "3 kg", 18000),
 (14, 2, 2, "Dog","D:/ProjectDB/Images/d7.gif", "white", "2 kg", 18000);

insert into product values (15, 3, 1, "Parrot", "D:/ProjectDB/Images/i1.gif","Yellow", "5 kg", 18000),
(16, 3, 2,"Parrot", "D:/ProjectDB/Images/i2.gif","Yellow", "5 kg", 18000),
(17, 3, 1, "Parrot", "D:/ProjectDB/Images/i3.gif","white", "5 kg", 18000), 
(18, 3, 2, "Parrot", "D:/ProjectDB/Images/i5.gif","Green", "5 kg", 18000),
(19, 3, 1, "Pigeon", "D:/ProjectDB/Images/i6.gif","white", "5 kg", 18000), 
(20, 3, 2, "Pigeon", "D:/ProjectDB/Images/i9.gif","white", "5 kg", 18000),
(21, 3, 1, "Parrot", "D:/ProjectDB/Images/i10.gif","Green", "5 kg", 18000);
select * from product;









