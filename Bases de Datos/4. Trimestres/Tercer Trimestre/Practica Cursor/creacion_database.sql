drop database if exists bibliotecada;
create database bibliotecada;

USE bibliotecada;
CREATE TABLE libro (
libro_id INT NOT NULL PRIMARY KEY,
titulo varchar(30) not null,
numero_paginas int not null,
nombre_autor varchar(60) not null
);

USE bibliotecada;
INSERT INTO libro values ('01','Libro autoayuda','700','Juana Maria');
INSERT INTO libro values ('02','Gerónimo Stilton Episodio 4','350','Ian Ubeda');
INSERT INTO libro values ('03','El Capitán Calzoncillos 3','100','Paul Perez');
INSERT INTO libro values ('04','Memorias de Idhún 3: Panteón','932','Laura Gallego');
INSERT INTO libro values ('05','13 Rue del Percebe','90','Francisco Ibáñez');

