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
descripcion varchar(50));

create nonclustered index IX_ContinenteContinente
on continentes(continente)

Create procedure sp_actualiza @Continente char (1)
as
Select 1 
from continentes
with UPDLOCK where continente=@Continente





select * from Productos

