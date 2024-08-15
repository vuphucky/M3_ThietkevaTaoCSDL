create database qlybanhang;
use qlybanhang;
create table customer(
cID int primary key,
cName varchar(50),
cAge int
);

create table Orders(
oID int primary key,
oDate date,
oTotalPrice double,
cID int,
foreign key (cID) references customer(cID)
);

create table product(
pID int primary key,
pName varchar(50),
pPrice double
);

create table orderDetail(
oID int,
pID int,
odQTV int,
primary key(oID,pID),
foreign key (oID) references Orders(oID),
foreign key (pID) references product(pID)
); 