-- Creacion de base de datos

CREATE DATABASE Tienda_de_mascotas;
use Tienda_de_mascotas;

-- Creacion de tablas

CREATE TABLE dueño (
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
  INDEX DNI_Dueño_idx (DNI_Dueño ASC),
  CONSTRAINT DNI_Dueno
    FOREIGN KEY (DNI_Dueño)
    REFERENCES dueño (DNI)
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
VALUE(28957346, "Javier", "Perez", 4789689, "Alvear 304"),
  (23546987, "Josefina", "Gonzalez", 4789689, "9 de julio "), 
  (36687527, "Roberto", "Tapia", 4589922, "Castelar 114"), 
  (36638827, "Maria", "Urlich", 4986822, "Antartida 233"), 
  (46699827, "Julio", "Lopez", 4633342, "Castelar 202"), 
  (46679827, "Angel", "Palmisano", 4288442, "Mitre 134"); 
  
INSERT INTO perro(Nombre,Fecha_nac,Sexo,DNI_Dueno)
VALUE("Puppy", "2020-02-21" , "Macho", 28957346),
  ("Pantro", "2021-04-22", "Macho", 28957346),
  ("Fida", "2017-07-12", "Hembra", 46679827),
  ("Tuca", "2015-10-15", "Macho", 46679827),
  ("Amapola", "2019-09-05", "Hembra", 23546987),
  ("Otto", "2022-11-17", "Macho", 36687527),
  ("Radamel", "2017-01-18", "Macho", 36687527),
  ("Rufina", "2021-04-02", "Hembra", 36638827),
  ("Zeus", "2014-05-10", "Macho", 46699827),
  ("Zeus", "2016-04-22", "Macho", 36687527);
  
INSERT INTO historial(Fecha,Perro,Descripcion,Monto)
VALUE("2022-07-04",1,"collie",1500),
("2022-06-04",2,"schnauzer",3000),
("2017-07-20",3,"rotwiller",1000),
("2015-05-15",4,"labrador",500),
("2019-07-05",5,"pugg",700),
("2019-05-15",7,"bulldog_frances",1300),
("2021-07-15",8,"cane_corso",300),
("2014-01-15",9,"chiwawa",250);

-- Resolución de la actividad N°12

SELECT * FROM PERRO
WHERE Fecha_nac BETWEEN "2020/01/01" AND "2022/12/31" AND SEXO = "MACHO";
