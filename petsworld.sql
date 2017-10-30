create table AdminCheck(Ac_Id int identity(1,1),vAnimalName varchar(200),
vAnimalCategory varchar(200),vAnimalHeight varchar(50),vAnimalWeight varchar(50),
vAnimalColor varchaR(50),vAnimalSex varchar(50),vAnimalPrice money,iAnimalStock int,
varAnimalImage varbinary(max),vSellerName varchar(200),vSellerAddress varchar(200),
vSellerPhone varchar(100),vSellerEmail varchar(200))

create proc usp_Admin_CheckAdd(@Ac_Id int,@vAnimalName varchar(200),
@vAnimalCategory varchar(200),@vAnimalHeight varchar(50),@vAnimalWeight varchar(50),
@vAnimalColor varchaR(50),@vAnimalSex varchar(50),@vAnimalPrice money,@iAnimalStock int,
@varAnimalImage varbinary(max),@vSellerName varchar(200),@vSellerAddress varchar(200),
@vSellerPhone varchar(100),@vSellerEmail varchar(200))
as
if not exists(select * FROM Admin_Check where Ac_Id=@Ac_Id)
begin
insert Admin_Check(vAnimalName,
vAnimalCategory,vAnimalHeight,vAnimalWeight ,
vAnimalColor,vAnimalSex,vAnimalPrice ,iAnimalStock,
varAnimalImage,vSellerName,vSellerAddress,
vSellerPhone,vSellerEmail)
values(@vAnimalName,
@vAnimalCategory,@vAnimalHeight,@vAnimalWeight,
@vAnimalColor,@vAnimalSex,@vAnimalPrice,@iAnimalStock,
@varAnimalImage ,@vSellerName,@vSellerAddress,
@vSellerPhone,@vSellerEmail)
end

