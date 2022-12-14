create database ShoppingZone
create table UserTable
(
ProfileID int not null ,
FullName nvarchar(150),
EmailID nvarchar(100),
MobileNumber varchar(50),
Gender nvarchar(30),
Password nvarchar(70), 
primary key(ProfileID)
);
insert  into UserTable values(1,'sravani','sra@gmail.com',23456778,'Female',234);
select * from UserTable

 

create table Category (
CategoryID int not null,
CategoryCode nvarchar(150),
CategoryName nvarchar(300),
primary key(CategoryID));

 


create table Merchant(
MerchantID int not null,
MerchantName nvarchar(100),
AddCategory nvarchar(300),
AddItem nvarchar(500),
RemoveItem nvarchar(150),
primary key(MerchantID));

 

create table Item (
ItemID int not null,
CategoryID int foreign key references Category(CategoryID),
ItemCode varchar(50),
ItemName nvarchar(250),
Description nvarchar(500),
ImagePath nvarchar(550),
ItemPrice decimal(18,1), 
primary key(ItemID));

 

create table Orders (
OrderID int not null,
ItemID int foreign key references Item(ItemId),
Quantity int,
ItemPrice int,
primary key(OrderID));

 

create table Payment (
PaymentID int not null,
OrderID int foreign key references Orders(OrderID),
PaymentMode nvarchar(100),
primary key(OrderID));

 

create table Cart (
CartId int,
ItemID int foreign key references Item(ItemID),
AddQuantity int,
RemoveQuantity int,
primary key(CartId));