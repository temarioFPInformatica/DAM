use bibliotecada;
DELIMITER //

DROP PROCEDURE IF EXISTS facilito_procedure//
CREATE PROCEDURE facilito_procedure()
BEGIN

  DECLARE var_id INTEGER;
  DECLARE var_paginas INTEGER;
  DECLARE var_titulo VARCHAR(255);
  DECLARE var_final INTEGER DEFAULT 0;

  DECLARE cursor1 CURSOR FOR SELECT libro_id, titulo, numero_paginas FROM libro;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;

  OPEN cursor1;

  bucle: LOOP

    FETCH cursor1 INTO var_id, var_titulo, var_paginas;

    IF var_final = 1 THEN
      LEAVE bucle;
    END IF;

    UPDATE libro SET numero_paginas = var_paginas + 10 WHERE libro_id = var_id;

    SELECT
      var_titulo AS  'titulo',
      var_paginas AS 'Anterior',
      numero_paginas AS 'Incremento'
      FROM libro WHERE libro_id = var_id;


  END LOOP bucle;
  CLOSE cursor1;

END//
DELIMITER ;