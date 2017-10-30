
create proc usp_AdminCheck_Delete(@Ac_Id int)
as
if  exists(select * from AdminCheck where (Ac_Id=@Ac_Id))

delete from AdminCheck where (Ac_Id=@Ac_Id)


create proc usp_Animal_Delete(@iAnimalId int)
as
if  exists(select * from Animal where (iAnimalId=@iAnimalId))

delete from Animal where (iAnimalId=@iAnimalId)