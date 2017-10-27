/*      Install HR database             */

set nocount    on
USE master
declare @dttm varchar(55)
select  @dttm=convert(varchar,getdate(),113)
raiserror('Starting installation of HR Database at %s ....',1,1,@dttm) with nowait
--set dateformat mdy
GO
--sp_addlogin user1,null,HR
if exists (select * from sysdatabases where name='HR')
begin
  raiserror('Dropping existing HR database ....',0,1)
  DROP database HR
end
GO

CHECKPOINT
go

raiserror('Creating HR database....',0,1)
go

   create DATABASE HR
GO

CHECKPOINT

GO

USE HR

GO

if db_name() <> 'HR'
   raiserror('Error in installHR.SQL, USE HR failed!  Killing the SPID now.'
            ,22,127) with log

GO

execute sp_dboption 'HR','trunc. log on chkpt.' ,'true'

execute sp_dboption 'HR','SELECT INTO/BULKCOPY', 'true'
checkpoint
go

