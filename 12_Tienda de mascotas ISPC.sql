-- Creacion de base de datos

CREATE DATABASE Tienda_de_mascotas;
use Tienda_de_mascotas;

-- Creacion de tablas

CREATE TABLE dueno (
  DNI INT NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Telefono VARCHAR(50) NOT NULL,
  Direccion VARCHAR(50) NOT NULL,
  PRIMARY KEY (DNI));

CREATE TABLE perro (
  ID_Perro INT AUTO_INCREMENT NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
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
VALUE(28957346, "Tomas", "Taborda", 4789689, "Belgrano 101"),
  (23546987, "Maria", "Rosales", 4789689, "Pueyrredon 811"), 
  (36687527, "Andres", "Feria", 4589922, "Pueyrredon 235"), 
  (36638827, "Cecilia", "Uribe", 4986822, "Belgrano 275"), 
  (46699827, "Omar", "Murrillo", 4633342, "Pueyrredon 245"), 
  (46679827, "Pedro", "Altamirano", 4288442, "Pueyrredon 998"); 
  
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueno)
VALUE("Puppy", "2020-02-21" , "Macho", 28957346),
  ("Fido", "2021-04-22", "Macho", 28957346),
  ("Frida", "2017-07-12", "Hembra", 46679827),
  ("Lennon", "2015-10-15", "Macho", 46679827),
  ("Anilef", "2019-09-05", "Hembra", 23546987),
  ("Santo", "2022-11-17", "Macho", 36687527),
  ("Dogino", "2017-01-18", "Macho", 36687527),
  ("Bell", "2021-04-02", "Hembra", 36638827),
  ("Dogino", "2014-05-10", "Macho", 46699827),
  ("Toby", "2016-04-22", "Macho", 36687527);
  
INSERT INTO historial(Fecha,Perro,Descripcion,Monto)
VALUE("2022-07-04",1,"collie",1500),
("2022-06-04",2,"caniche",3000),
("2017-07-20",3,"collie",1000),
("2015-05-15",4,"labrador",500),
("2019-07-05",5,"schnauzer",700),
("2019-05-15",7,"bulldog",1300),
("2021-07-15",8,"boxer",300),
("2014-01-15",9,"doberman",250);

-- Resolución de la actividad N°12

SELECT * FROM PERRO
WHERE Fecha_nac BETWEEN "2020/01/01" AND "2022/12/31" AND SEXO = "MACHO";