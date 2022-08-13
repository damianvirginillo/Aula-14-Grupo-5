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
 
* 1- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

* 2- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
 
INSERT INTO dueno
VALUE (34869446, "Pablo", "Gonzalez", 351454483, "Belgrano 1049"),
(34868448, "Julieta", "Muract", 3514448565, "Cosquin 87"),
(32545829, "Catalina", "Cruz", 3516658745, "Mercedes 4985");

INSERT INTO Perro
VALUE (1, "Siberia", '2016/04/09', "Hembra", 34869446),
(2, "Gorda", '2022/01/15', "Hembra", 34868448),
(3, "Negro", '2021/05/17', "Macho", 32545829);

INSERT INTO Historial
VALUE (3,"2017/07/20", 1,"collie",50000),
  (2,"2022/02/01", 2,"labrador",4000),
  (4,"2021/07/05", 3,"schnauzer",2000);
  
  * 3- Borre un animal que ya no va a ser atendido. 
  Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

select * from Historial
ORDER BY Fecha;

DELETE FROM Historial
WHERE ID_Historial=1;

4- Actualice la fecha de nacimiento de algún animal (perro) que usted considere.

UPDATE Perro SET Fecha_nac = "2021/11/30"
WHERE ID_Perro = 2;
 
   
 
 
 
 
 
 
 
 
 
 
 
  
 
  

