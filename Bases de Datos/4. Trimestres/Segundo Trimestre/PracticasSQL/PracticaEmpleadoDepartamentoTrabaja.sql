create database nuevaPractica;
use nuevaPractica;
create table departamento (
cddep char(2) primary key,
nombre varchar(30),
ciudad varchar(20)
);
create table empleado (
cdemp char(3) primary key,
nombre varchar(30),
fecha_ingreso DATE default null,
salario FLOAT(6,2),
cdjefe char(3) default null,
cddep char(2),
FOREIGN KEY (cdjefe) REFERENCES empleado(cdemp) on delete set null on update cascade,
FOREIGN KEY (cddep) REFERENCES departamento(cddep) on delete restrict on update cascade
); 
create table proyecto (
cdpro char(3) PRIMARY KEY,
nombre varchar (30),
cddep char(2),
foreign key (cddep) references departamento(cddep) on delete restrict on update cascade
);
create table trabaja (
cdemp char(3) not null,
cdpro char(39) not null,
nhoras int default 0,
primary key (cdemp, cdpro),
foreign key (cdemp) references empleado(cdemp) on update cascade on delete cascade,
foreign key (cdpro) references proyecto(cdpro) on update cascade on delete cascade
);
insert into departamento values ('01','Contabilidad-1','Almería'),
('02','Ventas','Sevilla'),
('03','I+D','Málaga'),
('04','Gerencia','Córdoba'),
('05','Administración','Córdoba'),
('06','Contabilidad-2','Córdoba'),
('07','Marketing','Granada');
insert into empleado values ('A11','Esperanza Amarillo','1993-09-23',3000,NULL,'04'),
('A03','Pedro Rojo','1995-03-07',2000,'A11','01'),
('C01','Juan Rojo','1997-02-03',1800,'A03','01'),
('B02','María Azul','1996-01-09',1450,'A03','01'),
('A07','Elena Blanco','1994-04-09',2000,'A11','02'),
('B06','Carmen Violeta','1997-02-03',2200,'A07','02'),
('C05','Alfonso Amarillo','1998-12-03',2000,'B06','02'),
('B09','Pablo Verde','1998-10-12',1600,'A11','03'),
('C04','Ana Verde',NULL,2000,'A07','02'),
('C08','Javier Naranja',NULL,1680,'B09','03'),
('A10','Dolores Blanco','1998-11-15',1900,'A11','04'),
('B12','Juan Negro','1997-02-03',1900,'A11','05'),
('A13','Jesús Marrón','1999-02-21',2200,'A11','05'),
('A14','Manuel Amarillo','2000-09-01',2000,'A11',NULL);
insert into proyecto values ('GRE','Gestión de residuos','03'),
('DAG','Depuración de aguas','03'),
('AEE','Análisis económico energías','04'),
('MES','Marketing de energía solar','02');
insert into trabaja values ('C01','GRE',10),
('C08','GRE',54),
('C01','DAG',5),
('C08','DAG',150),
('B09','DAG',100),
('A14','DAG',10),
('A11','AEE',15),
('C04','AEE',20),
('A11','MES',0),
('A03','MES', 0);

select cdemp, nombre, salario from empleado order by nombre asc, salario desc; 
select nombre from departamento where ciudad!='Sevilla' and ciudad!='Granada';
select count(nombre) as Empleados_departamento from empleado where cddep is not null;
select avg(nhoras) from trabaja;
select * from empleado where nombre like 'a%';





