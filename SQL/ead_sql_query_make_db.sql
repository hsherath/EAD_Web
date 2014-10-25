
CREATE DATABASE EAD_DEMO;
GO

USE EAD_DEMO;
GO

CREATE TABLE users(
	userid int identity primary key not null
	login_name varchar(50) not null,
	firstname varchar(50) not null,
	lastname varchar(50) not null,
	email varchar(100) not null,
	pwd varchar(64) not null,
	nic varchar(20) not null,
	salary float not null,
	position varchar(100) not null,
	primary_address varchar(200) not null,
	bank_account_number varchar(50) not null
);
GO

