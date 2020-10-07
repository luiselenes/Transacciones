create database tienda;
GO

CREATE TABLE Productos
(
    idproductos int not null primary key,
    nombre varchar(50),
    stockminimo int,
    stockmaximo int,
    existencia int,
    continente char(1) 
);
GO
create nonclustered index IX_Continente 
on Productos(continente);

CREATE TABLE ventas (
folio int not null primary key,
idproducto int not null ,
noUnidades INT,
FOREIGN KEY (idproducto) REFERENCES Productos(idproductos)
);
GO


create table continentes(
idcontinente int identity(1,1),
continente char(1),
descripcion varchar(50)
);
go

create nonclustered index IX_ContinenteContinente
on continentes(continente)	

-----ate procedure s_actualiza @Continente char (1)
as
Select 1
from continentes
with UPDLOCK where continente=@Continente
----------------------------------------

--Create procedure sp_actualiza @Continente char(1) 
as
begin tran 
Select * from Productos with (UPDLOCK) 
where continente=1


--update Productos set existencia = 113 where idproductos=1

commit tran

end
-----------------------------------------------
SELECT TOP (1000) [idproductos]
      ,[nombre]
      ,[stockminimo]
      ,[stockmaximo]
      ,[existencia]
      ,[continente]
  FROM [tienda].[dbo].[Productos]

  Select * from Productos 
where continente



v--mostar un cliente con el rfc
CREATE PROCEDURE sp_selectcliente @rfc nvarchar(13)
AS
BEGIN
	select nombre,edad,idciudad from [Crud].[dbo].[Clientes]
	where rfc = @rfc
	;
end
go
--------------------------------
Create procedure sp_actualiza @Continente char(1)
as
begin tran 
Select * from Productos with (UPDLOCK) 
where continente=@Continente
declare  @idproducto int, @exist int , @nonunidades int


set @idproducto =(select idproducto from ventas)
set @nonunidades =(select noUnidades from ventas where idproducto=@idproducto)


set @exist = (select existencia from Productos where idproductos=@idproducto)


set @exist =@exist-@nonunidades
update Productos set existencia = @exist where idproductos=

--lect @var1









commit tran
--update Productos set existencia = 113 where idproductos=1