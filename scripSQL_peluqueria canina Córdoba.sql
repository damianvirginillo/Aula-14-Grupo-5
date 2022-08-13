
create database peluqueria_canina_cba

use peluqueria_canina_cba

create table Dueno 
(
DNI int not null,
nombre varchar (50) null,
apellido varchar (50) null,
telefono int,
direccion varchar (50) null,
primary key (DNI)
);

create table Perro 
(
ID_perro int (3) not null,
nombre_perro varchar (25) not null,
fecha_nac date null,
sexo_perro varchar (1) null,
DNI_dueno int not null,
primary key (ID_perro),
index DNI_dueno_idx (DNI_dueno asc),
constraint DNI_dueno
  foreign key (DNI_dueno)
  references Dueno (DNI)
  on delete no action
  on update no action
);
  
create table Historial
(
ID_historial varchar(7) not null,
fecha date null,
perro int not null,
descripcion varchar (50) null,
monto int null,
primary key (ID_historial),
index perro_idx (perro asc),
constraint perro
  foreign key (perro)
  references Perro (ID_perro)
  on delete no action
  on update no action
);

insert into Dueno (DNI, telefono, nombre, apellido, direccion) 
values (28957346, 4789689, "Juan", "Perez", "Belgrano 101"),
(23546987, 4789689, "Maria", "Perez", "Pueyrredon 811"), 
(40910889, 4799900, "Josefina", "Fender", "Entre Rios 93"),
(34320210, 4766911, "Marianella", "Sosa", "Buenos Aires 310"),
(35211993, 4733015, "Ariel", "Gomez", "Bv. San Juan 110"),
(38012110, 4771066, "Candelaria", "Ortiz", "Independencia 290")

insert into Perro (ID_perro, DNI_dueno, fecha_nac, nombre_perro, sexo_perro)
values (123, 28957346, "2012/12/12", "Puppy", "M"),
(014, 23546987, "2012/12/12", "Fido", "M"),
(320, 35211993, "2020/10/02", "Lennon", "M"),
(016, 40910889, "2019/07/13", "Olivia", "H"),
(110, 34320210, "2022/01/08", "Toto", "M"),
(090, 38012110, "2018/11/20", "Inu", "H")

insert into Historial (ID_historial, perro, monto, fecha, descripcion)
values ("pup-012", 123, 4120, "2015/12/10", "Caniche"),
("fid-012", 014, 9710,  "2015/11/08/", "Caniche"),
("len-020", 320, 3500, "2021/08/02", "Labrador"),
("oli-019", 016, 6700, "2021/02/14", "Pomerania"),
("tot-022", 110, 4500, "2022/05/23", "Bulldog Frances"),
("inu-018", 090, 7200, "2020/01/07", "Collie")

select* 
from dueno;

update dueno set Direccion='Libertad 123' where DNI= 23546987;

select* 
from dueno;

