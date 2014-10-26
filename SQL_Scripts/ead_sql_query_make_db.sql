
CREATE DATABASE EAD_DEMO;
GO

USE EAD_DEMO;
GO

CREATE TABLE users(
	userid int identity primary key not null,
	login_name varchar(50) not null,
	firstname varchar(50) not null,
	lastname varchar(50) ,
	email varchar(100) ,
	pwd varchar(64) not null,
	nic varchar(20) not null,
	salary float ,
	position varchar(100) ,
	primary_address varchar(200) ,
	bank_account_number varchar(50) 
);
GO

insert into users values('chathura','Chathura','Madushan','chathura@gmail.com','password','892530440V','50000','Manager','Panadura','12345');

insert into users values('harindra','Harindra','Herath','harindra@gmail.com','pass123','822530440V','60000','Software Engineer','Kurunagala','67891');

insert into users values('ishak','Ishak','Ahamed','ishak@gmail.com','pass@123','902530440V','40000','Designer','Nawalapitiya','344435');


insert into users values('saman','Saman','De Silva','saman@gmail.com','pass@@123','892330440V','20000','QA Engineer','Colombo','232145');

insert into users values('kamal','Kamal','Sampath','kamal@gmail.com','abcd123','902530440V','30000','Developer','Mathale','111222');

insert into users values('nimal','Nimal','Perera','nimal@gmail.com','1234','902670440V','10000','Associate Software Engineer','Galle','554435');



