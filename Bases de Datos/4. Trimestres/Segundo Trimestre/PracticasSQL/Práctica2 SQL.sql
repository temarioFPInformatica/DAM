use ejercicio2práctica2;

CREATE TABLE ALUMNO
(DNI Varchar(9),
Nombre Varchar(50),
Nota Float(3,2),
Opción Varchar(1),
CONSTRAINT pk_alumno PRIMARY KEY (DNI),
CONSTRAINT Opción CHECK (Opción IN ('A','B','C','D'))
);

CREATE TABLE ESTUDIO
(Código Varchar(10),
Nombre Varchar(50),
NotaCorte Float(3,2),
CONSTRAINT pk_estudio PRIMARY KEY (Código),
CONSTRAINT NotaCorte CHECK (NotaCorte>5)
);

CREATE TABLE PREINSCRIPCION
( 
Orden Varchar(5),
Admitido Varchar(1),
CONSTRAINT Admitido CHECK (Admitido IN ('S','N'))
);