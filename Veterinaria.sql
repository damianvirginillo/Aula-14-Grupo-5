CREATE SCHEMA veterinaria ;

use veterinaria;

CREATE TABLE dueno (
  DNI INT NOT NULL,
  Nombre VARCHAR(50) NULL,
  Apellido VARCHAR(50) NULL,
  Telefono VARCHAR(25) NULL,
  Direccion VARCHAR(80) NULL,
  PRIMARY KEY (DNI));


CREATE TABLE perro (
  ID_Perro INT AUTO_INCREMENT NOT NULL,
  Nombre VARCHAR(30) NOT NULL,
  Fecha_nac DATE NULL,
  Sexo VARCHAR(10) NULL,
  DNI_Dueno INT NOT NULL,
  PRIMARY KEY (ID_Perro),
  INDEX DNI_Dueno_idx (DNI_Dueno ASC),
  CONSTRAINT DNI_Dueno
    FOREIGN KEY (DNI_Dueno)
    REFERENCES dueno (DNI)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );  

CREATE TABLE historial (
  ID_Historial INT NOT NULL AUTO_INCREMENT,
  Fecha DATE NULL,
  Perro INT NOT NULL,
  Descripcion VARCHAR(100) NULL,
  Monto INT NULL,
  PRIMARY KEY (ID_Historial),
  INDEX Perro_idx (Perro ASC),
  CONSTRAINT Perro
    FOREIGN KEY (Perro)
    REFERENCES perro (ID_Perro)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
  );

INSERT INTO dueno
  VALUE(48964646, "Laura", "Perez", 2756689, "Maipu 234"),
  (26123987, "Maria", "Gonzalez", 27566689, "Belgrano 238"), 
  (36345522, "Juan", "Coronel", 4289922, "San Martin 298"), 
  (46108835, "Pilar", "Mendes", 4912392, "Belgrano 878"), 
  (45678910, "Walter", "Suarez", 4698642, "La  Rioja 565"), 
  (46679827, "Pedro", "Altamirano", 4288442, "Pueyrredon 998"); 
  
INSERT INTO perro
  VALUE(1,"Puppy", "2020/02/21" , "Macho", 48964646),
  (2,"Hannah", "2021/04/22", "Hembra", 48964646),
  (3,"Justin", "2017/07/12", "Macho", 46108835),
  (4,"Lula", "2015/10/15", "Hembra", 46679827),
  (5,"Toby", "2019/09/05", "Macho", 26123987),
  (6,"Santo", "2022/11/17", "Macho", 36345522),
  (7,"Luci", "2017/01/18", "Hembra", 36345522),
  (8,"Ben", "2021/04/02", "Macho", 46108835),
  (9,"Tyson", "2014/05/10", "Macho", 46679827),
  (10,"Toby", "2016/04/22", "Macho", 36345522);
  
  
  INSERT INTO historial
  VALUE(8,"2022/07/04",1,"pitbull",30000),
  (7,"2022/06/04",2,"caniche",6000),
  (3,"2017/07/20",3,"pitbull",20000),
  (2,"2015/05/15",4,"bulldog",9000),
  (4,"2019/07/05",5,"caniche",5000),
  (9,"2022/09/15",6,"labrador",6000),
  (5,"2019/05/15",7,"bulldog",5000),
  (6,"2021/07/15",8,"boxer",3000),
  (1,"2014/01/15",9,"doberman",7000);



-- Ejerccio 5 --

SELECT * FROM DUENO, PERRO
WHERE DUENO.DNI = 46679827 AND PERRO.DNI_DUENO = 46679827;

