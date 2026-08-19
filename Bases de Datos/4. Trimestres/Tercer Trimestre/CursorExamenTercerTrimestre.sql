use clinica;
DELIMITER //
DROP PROCEDURE IF EXISTS ver_datos//
CREATE PROCEDURE ver_datos()
BEGIN

	DECLARE idVeterinario INT;
    DECLARE idVeterinarioEncargado INT;
    DECLARE nombreVeterinario VARCHAR(100);
    DECLARE primerApellido VARCHAR(100);
    DECLARE segundoApellido VARCHAR(100);
    DECLARE numeroTelefono INT;
    DECLARE var_final INTEGER DEFAULT 0;
    
    DECLARE cursor1 CURSOR FOR SELECT id_veterinario, id_veterinario_encargado,
									nombre, apellido1, apellido2, telefono FROM veterinario;
	
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET var_final = 1;
    
    OPEN cursor1;
    
    bucle: LOOP
    
		FETCH cursor1 INTO idVeterinario, idVeterinarioEncargado, nombreVeterinario,
							primerApellido, segundoApellido, numeroTelefono;
		
        IF var_final = 1 THEN
			LEAVE bucle;
		END IF;
        
        SELECT idVeterinario, idVeterinarioEncargado, nombreVeterinario,
		primerApellido, segundoApellido, numeroTelefono 
        FROM veterinario WHERE id_veterinario = idVeterinario; 

END LOOP bucle;
CLOSE cursor1;
  
END//

DELIMITER ;

use clinica;
call ver_datos();
    
    