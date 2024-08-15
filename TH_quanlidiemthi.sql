create database Quanlydiemthi;
create table student(
codeST varchar(20) PRIMARY KEY,
nameST varchar(20),
birthday date,
classST varchar(20),
GT varchar(20));

CREATE TABLE subjects(
codeSJ VARCHAR(20) PRIMARY KEY,
nameSJ VARCHAR(20),
codeTC VARCHAR(20));

CREATE TABLE pointTable(
codeST VARCHAR(20),
codeSJ VARCHAR(20),
point int,
testDay DATE,
PRIMARY KEY (codeST, codeSJ),
FOREIGN KEY (codeST) REFERENCES student(codeST),
FOREIGN KEY (codeSJ) REFERENCES subjects(codeSJ) 
);

CREATE TABLE teacher(
codeTC VARCHAR(20) PRIMARY KEY,
nameTC varchar(20),
phoneNumber VARCHAR (10) );

ALTER TABLE subjects 
ADD CONSTRAINT FK_codeTC 
FOREIGN KEY (codeTC) REFERENCES teacher(codeTC);