-- password is 'somePassword' hashed con http://www.nitrxgen.net/hashgen/ - Ojo que tal vez haya que agregar un '*' adelante
CREATE USER 'jveron'@'localhost' IDENTIFIED BY PASSWORD '*B04E11FAAAE9A5A019BAF695B40F3BF1997EB194'; 

CREATE SCHEMA IF NOT EXISTS `appschema`;

USE `appschema`;

DROP TABLE IF EXISTS `Something`;

CREATE TABLE `SOMETHING` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `value` VARCHAR(200) NOT NULL ,
  PRIMARY KEY (`id`)  );

CREATE TABLE `Avatar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `source` BLOB NOT NULL ,
  PRIMARY KEY (`id`)  );
 
CREATE TABLE `Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
   user varchar(500) NOT NULL,
  `avatar` BLOB NULL ,
  PRIMARY KEY (`id`)  );

insert into Usuario (user) values ('jveron');

CREATE TABLE Genero(
	id INT NOT NULL AUTO_INCREMENT,
	descripcion varchar(200) NOT NULL,
	PRIMARY KEY (`id`));

insert into Genero (descripcion) values ('JAVA');

CREATE TABLE Estado(
	id INT NOT NULL AUTO_INCREMENT,
	descripcion varchar(200)NOT NULL,
	PRIMARY KEY (`id`)  );
	
insert into Estado (descripcion) values ('Abierto');

CREATE TABLE Tema(
	id INT NOT NULL AUTO_INCREMENT,
	id_owner int NOT NULL,
	titulo varchar(1000)NOT NULL,
	texto varchar(1000)NOT NULL,
	id_estado int not null,
	id_genero int not null,
	puntuacion int,
	fecha DATETIME,
	PRIMARY KEY (`id`),
	FOREIGN KEY (id_owner) REFERENCES Usuario(id),
	FOREIGN KEY (id_estado) REFERENCES Estado(id),
	FOREIGN KEY (id_genero) REFERENCES Genero(id));
  
CREATE TABLE Respuesta(
	id INT NOT NULL AUTO_INCREMENT,
	texto varchar(1000)NOT NULL,
	id_sender int NOT NULL,
	meGusta int,
	id_tema int not null,
	fecha DATETIME,
	PRIMARY KEY (`id`),
	FOREIGN KEY (id_sender) REFERENCES Usuario(id),
	FOREIGN KEY (id_tema) REFERENCES Tema(id));
	
GRANT ALL PRIVILEGES ON `appschema`.* TO 'noroot'@'localhost'
  IDENTIFIED BY PASSWORD '*B04E11FAAAE9A5A019BAF695B40F3BF1997EB194';
