CREATE SCHEMA `peluqueria_canina` ;

use peluqueria_canina;

CREATE TABLE `dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(50) NULL,
  `Apellido` VARCHAR(50) NULL,
  `Telefono` VARCHAR(25) NULL,
  `Direccion` VARCHAR(80) NULL,
  PRIMARY KEY (`DNI`));


CREATE TABLE `perro` (
  `ID_Perro` INT AUTO_INCREMENT NOT NULL,
  `Nombre` VARCHAR(30) NOT NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(10) NULL,
  `DNI_Dueno` INT NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  INDEX `DNI_Dueno_idx` (`DNI_Dueno` ASC),
  CONSTRAINT `DNI_Dueno`
    FOREIGN KEY (`DNI_Dueno`)
    REFERENCES `dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );  

CREATE TABLE `historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(100) NULL,
  `Monto` INT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC),
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );

INSERT INTO dueno
  VALUE(28957346, "Juan", "Perez", 4789689, "Belgrano 101"),
  (23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"), 
  (36687527, "Andres", "Taborda", 4589922, "Pueyrredon 235"), 
  (36638827, "Emilia", "Ramos", 4986822, "Belgrano 275"), 
  (46699827, "Walter", "Moro", 4633342, "Pueyrredon 245"), 
  (46679827, "Pedro", "Altamirano", 4288442, "Pueyrredon 998"); 
  
INSERT INTO perro
  VALUE(1,"Puppy", "2020/02/21" , "Macho", 28957346),
  (2,"Fido", "2021/04/22", "Macho", 28957346),
  (3,"Frida", "2017/07/12", "Hembra", 46679827),
  (4,"Lennon", "2015/10/15", "Macho", 46679827),
  (5,"Anilef", "2019/09/05", "Hembra", 23546987),
  (6,"Santo", "2022/11/17", "Macho", 36687527),
  (7,"Dogino", "2017/01/18", "Macho", 36687527),
  (8,"Bell", "2021/04/02", "Hembra", 36638827),
  (9,"Dogino", "2014/05/10", "Macho", 46699827),
  (10,"Toby", "2016/04/22", "Macho", 36687527);
  
  
  INSERT INTO historial
  VALUE(8,"2022/07/04",1,"collie",50000),
  (7,"2022/06/04",2,"caniche",3000),
  (3,"2017/07/20",3,"collie",50000),
  (2,"2015/05/15",4,"labrador",4000),
  (4,"2019/07/05",5,"schnauzer",2000),
  (9,"2022/09/15",6,"schnauzer",2000),
  (5,"2019/05/15",7,"bulldog",6000),
  (6,"2021/07/15",8,"boxer",4000),
  (1,"2014/01/15",9,"doberman",3000);

-- Ejerccio 7 --

SELECT SUM(MONTO) FROM HISTORIAL;
