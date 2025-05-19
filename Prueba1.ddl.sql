DROP DATABASE IF exists prueba;
CREATE DATABASE prueba;
USE prueba;

CREATE TABLE TipoDocumento (
IdDocumento tinyint auto_increment Primary Key,
NombreDocumento varchar(60) NOT NULL
);

CREATE table Usuario (
NumDocumento integer (10) primary key,
TipoDeDocumento tinyint,
Nombre varchar(20) not null,
SegNombre varchar(20),
Apellido varchar(20) not null,
SegApellido varchar(20),
Correo varchar(50) not null
);

Create Table Roles(
IdRol integer (10) primary key,
NomRol Varchar(50)
);

Create table Factura(
IdFactura integer(20) auto_increment primary key,
TipoDocumento tinyint,
idProducto integer(10),
Valor integer(10),
iddocumento tinyint,
usuarionumdoc integer(10),
fecha time(6)
);

Create table Pago(
idpago tinyint auto_increment primary key,
metodopago varchar(60)
);

create table Departamento(
idDepartamento integer(10) primary key,
NomDep integer(10)
);

create table Direcciones(
idUsuario integer(10) primary key,
Direccion varchar(60),
IdCity integer(20),
IdDepart integer(20),
NomCity varchar(30),
NomDepart varchar(30)
);

create table ciudad(
IdCiudad integer(10) primary key,
NombreCiudad varchar(60)
);

create table producto(
idProducto integer(10) primary key,
NombreProducto varchar (60)
);

ALTER TABLE usuario
ADD constraint fkusuario 
FOREIGN KEY (TipoDeDocumento) References TipoDocumento(IdDocumento);

Alter table departamento
add constraint fkdepartamento
foreign key (idDepartamento) references direcciones(IdUsuario)
