drop table fabricante;
drop table producto;
create table producto (
	Codigo serial primary key,
	Nombre varchar(100),
	Precio double precision,
	codigo_fabricante integer
);

create table fabricante (
	Codigo serial primary key,
	Nombre varchar(100)
);


Alter table producto
ADD CONSTRAINT fk_codigo_fabricante
FOREIGN KEY(codigo_fabricante)
REFERENCES fabricante(Codigo);