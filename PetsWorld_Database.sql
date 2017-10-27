create table Customer(iCust_Id int identity(1,1), vCust_Name varchar(100), vCust_Gender varchar(50), vCust_Phone varchar(50), dCust_DOB datetime, vCust_Email varchar(100), vCust_Password varchar(100), vCust_Address varchar(300)) 

sp_help Customer


create table Animal(iAn_Id int identity(1,1), vAn_Name varchar(200), vAn_Category varchar(100), vAn_Height varchar(50), vAn_Weight varchar(50), vAn_Color varchar(50), vAn_Gender varchar(50), mAn_Price money, iAn_Stock int)

sp_help Animal

create table Seller(iSell_Id int identity(1,1), vSell_Name varchar(100), vSell_Address varchar(300), vSell_Email varchar(100), vSell_Phone varchar(100), iSell_AnimalId int constraint fk_iSell_AnimalId Foreign Key references Animal(iAn_Id))

sp_help Seller

create table Cart(iCart_Id int identity(1,1), vCart_Name varchar(100), iCart_Quantity int, mCart_Price money)

sp_help Cart

alter table Animal add imgAn_Image image

create table OrderDetails(iOrder_Id int identity(1,1), iOrder_SellerId int constraint fk_iOrder_SellerId Foreign Key references Seller(iSell_Id), iOrder_CustId int constraint fk_iOrder_CustId Foreign Key references Customer(iCust_Id), iOrder_Total int, imgOrder_Image image)

sp_help OrderDetails

create table Accessories(iAcc_Id int identity(1,1), vAcc_Name varchar(100), mAcc_Price money, iAcc_Stock int)

sp_help Accessories