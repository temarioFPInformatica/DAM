create database bdfarmacos;
use bdfarmacos;
CREATE TABLE ENFERMOS(
CODE INTEGER NOT NULL PRIMARY KEY auto_increment,
NOME CHARACTER(50),
DIRE CHARACTER(50));
INSERT ENFERMOS(NOME, DIRE) VALUES
('Fran Martínez','Calle de Fran'),
('Paco de Haro','Calle de Paco'),
('Felipe Berenguel','Calle de Felipe'),
('Amalia Gallegos','Calle de Amalia'),
('Amalia Martínez','Calle de Fran'),
('Manuela Martínez','Calle de Amalia');
CREATE TABLE TIPOSFARMACO(
TIPOF INTEGER NOT NULL PRIMARY KEY auto_increment,
DESCRIPCION CHARACTER(50),
CARCTERISTICAS CHARACTER(100));
INSERT TIPOSFARMACO(DESCRIPCION, CARCTERISTICAS) VALUES
('Analgésico','Características del tipo 1'),
('Antiestamínico','Características del tipo 2'),
('Dolor','Características del tipo 3'),
('Dolor moderado','Características del tipo 4'),
('Ni idea','Características del tipo 5');
CREATE TABLE FARMACOS(CODF INTEGER NOT NULL PRIMARY KEY
auto_increment,NOMF VARCHAR(50) NOT NULL,
TIPOF INTEGER NOT NULL REFERENCES TIPOSFARMACO(TIPOF) ON DELETE
SET NULL ON UPDATE CASCADE,
PRECIOUNIDAD REAL);
INSERT FARMACOS(NOMF, TIPOF,PRECIOUNIDAD) VALUES
('Couldina',1,8),
('Ibis',2,7),
('Loratadina',2,4),
('Frenadol',1,9),
('Nolotil',3,8),
('Ibuprofeno',4,45),
('Meloinvento',5,12);
CREATE TABLE CONSUMO(
CODE INTEGER NOT NULL REFERENCES ENFERMOS(CODE) ON DELETE CASCADE
ON UPDATE CASCADE,
CODF INTEGER NOT NULL REFERENCES FARMACOS(CODF) ON DELETE CASCADE
ON UPDATE CASCADE,
UNIDADES INTEGER NOT NULL,
PRIMARY KEY(CODE,CODF));
INSERT CONSUMO VALUES
(1,1,1),
(1,2,3),
(2,3,3),
(2,6,10),
(3,5,3),
(3,6,3),
(4,1,1),
(5,2,15),
(2,4,13);

use bdfarmacos;
alter table ENFERMOS modify dire varchar(150);

alter table TIPOSFARMACO add(tamaño integer(2));

alter table FARMACOS drop column PRECIOUNIDAD;

delete from TIPOSFARMACO;

update CONSUMO SET unidades = unidades - 2 WHERE unidades >= 10;
INSERT FARMACOS(NOMF, TIPOF, PRECIOUNIDAD) VALUES
('NuevoFarmaco', 1, 10.5);

UPDATE FARMACOS
SET PRECIOUNIDAD = 7.99
WHERE CODF = 1;