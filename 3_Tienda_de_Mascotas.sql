-- Creacion de base de datos

CREATE DATABASE Tienda_de_mascotas_Ejercicio3;
use Tienda_de_mascotas_Ejercicio3;

-- Creacion de tablas

CREATE TABLE dueno (
  DNI INT NOT NULL,
  Nombre VARCHAR(25) NOT NULL,
  Apellido VARCHAR(25) NOT NULL,
  Telefono VARCHAR(20) NOT NULL,
  Direccion VARCHAR(50) NOT NULL,
  PRIMARY KEY (DNI));

CREATE TABLE perro (
  ID_Perro INT AUTO_INCREMENT NOT NULL,
  Nombre VARCHAR(25) NOT NULL,
  Fecha_nac DATE NOT NULL,
  Sexo VARCHAR(10) NOT NULL,
  DNI_Dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro),
  INDEX DNI_Dueno_idx (DNI_Dueno ASC),
  CONSTRAINT DNI_Dueno
    FOREIGN KEY (DNI_Dueno)
    REFERENCES dueno (DNI)
  );  

CREATE TABLE historial (
  ID_Historial INT NOT NULL AUTO_INCREMENT,
  Fecha DATE NOT NULL,
  Perro INT NOT NULL,
  Descripcion VARCHAR(50) NOT NULL,
  Monto INT NOT NULL,
  PRIMARY KEY (ID_Historial),
  INDEX Perro_idx (Perro ASC),
  CONSTRAINT Perro
    FOREIGN KEY (Perro)
    REFERENCES perro (ID_Perro)
  );

-- Carga de datos

INSERT INTO dueno
VALUE(28957346, "Matias", "Cano", 4789689, "Catamarca 101"),
  (23546987, "Julieta", "Perez", 4789689, "Mendoza 811"), 
  (36687527, "Juan", "Gomez", 4589922, "Pellegrini 235"), 
  (36638827, "Carlo", "Veron", 4986822, "Belgrano 275"), 
  (46699827, "Santiago", "Sanchez", 4633342, "Pueyrredon 245"), 
  (46679827, "Maria", "Avila", 4288442, "Belgrano 998"); 
  
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueno)
VALUE("Tommy", "2020-02-21" , "Macho", 28957346),
  ("Fox", "2021-04-22", "Macho", 28957346),
  ("Ada", "2017-07-12", "Hembra", 46679827),
  ("Snoopy", "2015-10-15", "Macho", 46679827),
  ("Irene", "2019-09-05", "Hembra", 23546987),
  ("Balto", "2022-11-17", "Macho", 36687527),
  ("Marley", "2017-01-18", "Macho", 36687527),
  ("Sammy", "2021-04-02", "Hembra", 36638827),
  ("Boris", "2014-05-10", "Macho", 46699827),
  ("Toby", "2016-04-22", "Macho", 36687527);
  
INSERT INTO historial(Fecha,Perro,Descripcion,Monto)
VALUE("2022-07-04",1,"dachsund",1500),
("2022-06-04",2,"boxer",3000),
("2017-07-20",3,"labrador",1000),
("2015-05-15",4,"husky",500),
("2019-07-05",5,"pug",700),
("2019-05-15",7,"bulldog",1300),
("2021-07-15",8,"dalmata",300),
("2014-01-15",9,"rottweiller",250);

--- Ejercicio 3 ---
SELECT * FROM historial
ORDER BY FECHA;

DELETE FROM historial
Where ID_Historial=1;
SELECT * FROM historial
