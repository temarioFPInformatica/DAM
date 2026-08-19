DROP DATABASE IF EXISTS hormigonera;
CREATE DATABASE hormigonera CHARACTER SET utf8mb4;
USE hormigonera;

-- ********** CREACION DE TABLAS *************

CREATE TABLE CONDUCTORES(
CODC VARCHAR(3),
NOMBRE VARCHAR(30),
DISTRITO VARCHAR(28),
CATEG INTEGER,
PRIMARY KEY(CODC));

CREATE TABLE MAQUINAS(
CODM VARCHAR(3),
NOMBRE VARCHAR(20),
PRECIOHORA INTEGER,
PRIMARY KEY(CODM));

CREATE TABLE PROYECTOS(
CODP VARCHAR(3),
DESCRIP VARCHAR(10),
LOCALIDAD VARCHAR(20),
CLIENTE VARCHAR(28),
TELEFONO VARCHAR(9),
PRIMARY KEY(CODP));

CREATE TABLE TRABAJOS(
CODC VARCHAR(3),
CODM VARCHAR(3),
CODP VARCHAR(3),
FECHA DATE,
TIEMPO INTEGER,
PRIMARY KEY(CODC,CODM,CODP,FECHA),
FOREIGN KEY (CODC) REFERENCES CONDUCTORES(CODC),
FOREIGN KEY (CODM) REFERENCES MAQUINAS(CODM),
FOREIGN KEY (CODP) REFERENCES PROYECTOS(CODP));

-- *************** INSERCIÓN DE DATOS EN LAS TABLAS*************

-- ********** TABLA CONDUCTORES: *************
insert into conductores values('c01','José Sánchez','Dos Hermanas',18);
insert into conductores values('c02','Manuel Díaz','Dos Hermanas',15);
insert into conductores values('c03','Juan Pérez','Sevilla',20);
insert into conductores values('c04','Luis Ortíz','Dos Hermanas',18);
insert into conductores values('c05','Javier Martín','Brenes',12);
insert into conductores values('c06','Carmen Pérez','Sevilla',15);

-- ********** TABLA MAQUINAS: *************
insert into maquinas values('m01','Excavadora',90);
insert into maquinas values('m02','Hormigonera',60);
insert into maquinas values('m03','Volquete',66);
insert into maquinas values('m04','Apisonadora',108);

-- ********** TABLA PROYECTOS: *************
insert into proyectos values('p01','Garaje','Dos Hermanas','Felipe Sol','600111111');
insert into proyectos values('p02','Solado','Sevilla','José Pérez','629222222');
insert into proyectos values('p03','Garaje','Dos Hermanas','Rosa López','954223232');
insert into proyectos values('p04','Techado','Brenes','José Pérez','954221111');
insert into proyectos values('p05','Buhardilla','Sevilla','Ana Botijo',null);

-- ********** TABLA TRABAJOS: *************
insert into trabajos values ('c01','m02','p02','2020-09-12',120);
insert into trabajos values ('c01','m02','p04','2020-09-17',null);
insert into trabajos values ('c01','m03','p04','2020-09-15',180);
insert into trabajos values ('c02','m03','p01','2020-09-10',100);
insert into trabajos values ('c02','m03','p01','2020-09-18',null);
insert into trabajos values ('c02','m03','p02','2020-09-15',null);
insert into trabajos values ('c02','m03','p03','2020-09-13',30);
insert into trabajos values ('c03','m01','p02','2020-09-10',200);
insert into trabajos values ('c03','m01','p04','2020-09-15',300);
insert into trabajos values ('c04','m03','p02','2020-09-10',90);
insert into trabajos values ('c05','m03','p02','2020-09-10',150);
insert into trabajos values ('c05','m03','p04','2020-09-15',90);

COMMIT;
