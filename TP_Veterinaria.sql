CREATE DATABASE bd_veterinaria;
use bd_veterinaria;

CREATE TABLE Dueno (
DNI INT PRIMARY KEY NOT NULL,
Nombre VARCHAR(25) NULL,
Apellido VARCHAR (25) NULL,
Telefono VARCHAR (50) NULL,
Direccion VARCHAR (25) NULL);

 CREATE TABLE Perro (
 ID_perro INT AUTO_INCREMENT NOT NULL,
 Nombre VARCHAR(25) NOT NULL,
 Fecha_nac DATE,
 Sexo VARCHAR(25) NULL,
 DNI_Dueno INT NOT NULL,
 primary key (ID_perro),
 INDEX DNI_Dueno_idx (DNI_Dueno ASC),
 CONSTRAINT DNI_Dueno
 FOREIGN KEY (DNI_Dueno)
 REFERENCES Dueno (DNI)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION
 );
 
 CREATE TABLE Historial (
 ID_Historial int not null auto_increment,
 Fecha DATE NULL,
 Perro INT NOT NULL,
 Descripcion VARCHAR (25) NULL,
 Monto DECIMAL NULL,
 PRIMARY KEY (ID_Historial),
 INDEX Perro_idx (Perro ASC),
 CONSTRAINT Perro
 FOREIGN KEY (Perro)
 REFERENCES Perro (ID_Perro)
 ON DELETE NO ACTION
 ON UPDATE NO ACTION);
 

 
   
 
 
 
 
 
 
 
 
 
 
 
  
 
  

