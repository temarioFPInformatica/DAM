use concesionario;

create table cliente (
nif varchar(10),
Nombre varchar(30),
apellidos varchar(50),
direccion varchar(50),
Teléfono varchar(15),
CONSTRAINT cliente_pk PRIMARY KEY (nif)
);

create table coche (
matricula varchar(12),
marca varchar(30),
modelo varchar(40),
color varchar(20),
nif varchar(10),
CONSTRAINT COCHE_PK PRIMARY KEY (matricula),
CONSTRAINT COCHE_FK1 FOREIGN KEY (nif) references cliente (nif) ON UPDATE CASCADE ON DELETE RESTRICT
);
create table nuevo (
matricula varchar(12),
unidades_c float(5,0),
CONSTRAINT NUEVO_PK PRIMARY KEY (matricula),
CONSTRAINT NUEVO_FK1 FOREIGN KEY (Matricula) REFERENCES COCHE (matricula) ON DELETE CASCADE
);

create table usado (
matricula varchar(12),
num_km float(6,0),
CONSTRAINT usado_PK PRIMARY KEY (matricula),
constraint usado_fk1 foreign key (matricula) references coche (matricula) ON DELETE CASCADE
);

create table mecanico (
dni varchar(10),
nombre varchar(30),
apellidos varchar(50),
fecha_contr DATE,
salario float(7,2),
CONSTRAINT mecanico_pk primary key (dni)
);

create table repara (
matricula varchar(12),
dni varchar(10),
fecha DATE,
horas float(4,2),
CONSTRAINT repara_pk PRIMARY KEY (matricula, dni, fecha),
CONSTRAINT repara_fk1 foreign key (matricula) REFERENCES coche ON DELETE CASCADE,
CONSTRAINT repara_fk2 foreign key (dni) REFERENCES mecanico(dni) ON DELETE CASCADE
);