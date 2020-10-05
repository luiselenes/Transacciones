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

CREATE TABLE ventas (
folio int not null primary key
idproducto int not null 
noUnidades INT,
FOREIGN KEY (idproducto) REFERENCES Productos(idproductos)
);
GO