CREATE SCHEMA `peluqueria_canina` ;

use peluqueria_canina;

CREATE TABLE `dueno` (
  `DNI` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(50) NULL,
  `Apellido` VARCHAR(50) NULL,
  `Telefono` VARCHAR(25) NULL,
  `Direccion` VARCHAR(80) NULL,
  PRIMARY KEY (`DNI`));


CREATE TABLE `perro` (
  `ID_Perro` INT NOT NULL AUTO_INCREMENT,
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
  `Monto` DECIMAL NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC),
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `perro` (`ID_Perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );

