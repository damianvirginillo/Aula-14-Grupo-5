CREATE SCHEMA PeluqueriaCanina_PetShop1 ; 

use PeluqueriaCanina_PetShop1;

CREATE TABLE dueno (
  DNI INT NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Telefono VARCHAR ( 50 ) NOT NULL ,
  Direccion VARCHAR(80) NOT NULL,
  PRIMARY KEY (DNI));


CREATE TABLE Perro 
(
ID_perro INT NOT NULL AUTO_INCREMENT ,
nombre_perro VARCHAR (25) NOT NULL,
fecha_nac DATE NOT NULL,
sexo_perro VARCHAR (1) NOT NULL,
DNI_dueno INT NOT NULL,
PRIMARY KEY (ID_perro),
INDEX DNI_dueno_idx (DNI_dueno asc),
CONSTRAINT DNI_dueno
  FOREIGN KEY (DNI_dueno)
  REFERENCES Dueno (DNI)
  ON DELETE NO ACTION
ON UPDATE NO ACTION
); 

CREATE TABLE Historial(
ID_historial VARCHAR(7) NOT NULL ,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR (50) NOT NULL,
monto INT NOT NULL,
PRIMARY KEY (ID_historial),
INDEX perro_idx (perro asc),
CONSTRAINT perro
  FOREIGN KEY (perro)
  REFERENCES Perro (ID_perro)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION
);

INSERT INTO dueno (DNI, telefono, nombre, apellido, direccion)
  VALUE(28957346, 4789689, "Juan", "Perez","Belgrano 101"),
  (23546987, 4789689, "Maria", "Montero","Pueyrredon 811"), 
  (41642954,4769534, "Pedro", "Romero","Pueyrredon 205"), 
  (38476912,4098465, "Camila", "Rodriguez", "San Martin 103"), 
  (46695327,4628591, "Esteban", "Diaz", "Pellegrini 255"), 
  (46679827,4289504, "Bianca", "Sanchez", "Sarmiento 1524"); 
  
INSERT INTO Perro (ID_perro, DNI_Dueno, fecha_nac, nombre_perro ,sexo_perro)
VALUE ( 113 , 28957346 , "2012-11-12" , "tyson" , "M"),
( 107 , 23546987 , "2012-12-25" , "Tomas", "M" ),
(052 , 41642954 , "2020-10-02" , "Lennon" , "M" ),
( 017 , 38476912 , "2019-07-13" , "Kuma" , "H" ),
( 119 , 46695327 , "2020-01-20" , "Tobi" , "M" ),
( 094 , 46679827 , "2018-11-15" , "Leia" , "H" )
;
 
  
INSERT INTO Historial (ID_historial, perro, monto, fecha, descripcion)
vALUES ( "tys-012" , 113 , 3580 , "2015-12-10" , " pitbull " ),
( "tom-013" , 107 , 9800 ,   "2015-07-17" , " dalmata " ),
( "len-015" , 052 , 2500 , "2021-08-02" , " Labrador " ),
( "kum-027" , 017 , 5320 , "2021-02-14" , " schnauzer"),
( "tob-030" , 119 , 4780 , "2022-05-11" , " fox terrier " ),
( "lei-009" , 094 , 7630 , "2020-01-07" , " chihuahua " );


-- Ejerccio 6 --

SELECT * FROM HISTORIAL
WHERE FECHA> "2022/01/01";