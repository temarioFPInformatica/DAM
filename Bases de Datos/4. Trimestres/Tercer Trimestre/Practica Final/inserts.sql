use bdfarmacia;
INSERT INTO tipofarmaco (TIPOF, DESCRIPCION, CARACTERISTICAS) VALUES
('mucolítico', 'Descongestionante', 'Ayuda a eliminar mucosidad'),
('analgésico', 'Calma el dolor', 'Eficaz contra el dolor'),
('antibiótico', 'Combate infecciones bacterianas', 'Elimina bacterias');

INSERT INTO farmacos (CODF, NOMF, PRECIOUNIDAD, TIPOF) VALUES
(1, 'FARMACO1', 10, 'analgésico'),
(2, 'FARMACO2', 8, 'analgésico'),
(3, 'FARMACO3', 15, 'antibiótico'),
(4, 'FARMACO4', 45, 'mucolítico'),
(5, 'FARMACO5', 12, 'analgésico');

INSERT INTO enfermos (NOME, importetotal) VALUES
('JUAN PEREZ', 0),
('MARIA GOMEZ', 0),
('CARLOS LOPEZ', 0),
('ANA MARTINEZ', 0),
('LUIS FERNANDEZ', 0);

INSERT INTO consumo (UNIDADES, CODIGO_E, CODF) VALUES
(5, 1, 1),
(10, 2, 2),
(3, 3, 3),
(2, 4, 4),
(7, 5, 5);
