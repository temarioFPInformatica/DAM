use bdfarmacia;
SELECT * FROM consumo WHERE unidades > 3;

SELECT * FROM farmacos WHERE preciounidad > 10 AND tipof!='mucolitico';

SELECT tipof, count(tipof) as cantidad_farmacos, sum(preciounidad) as precio_total from farmacos group by tipof;

SELECT enf.NOME as nombre_enfermo, SUM(cons.UNIDADES) AS unidades_total FROM enfermos enf, consumo cons
WHERE enf.CODIGO_E = cons.CODIGO_E GROUP BY enf.NOME ORDER BY enf.NOME ASC;

SELECT enf.nome as nombre_paciente, tf.tipof as tipo_farmaco from enfermos enf, consumo con, farmacos far, tipofarmaco tf
WHERE enf.codigo_e = con.codigo_e AND con.codf = far.codf AND far.tipof = tf.tipof ORDER BY tf.tipof DESC;