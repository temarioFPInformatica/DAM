USE bibliotecada;
DELIMITER //

CREATE PROCEDURE ordenar_autores()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE ordenar_nombre VARCHAR(60);

    DECLARE cur_autor CURSOR FOR 
        SELECT nombre_autor FROM libro ORDER BY nombre_autor;
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_autor;
    
    read_loop: LOOP
        FETCH cur_autor INTO ordenar_nombre;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT ordenar_nombre AS 'Autor';
    END LOOP;
    CLOSE cur_autor;
END//
DELIMITER ;

CALL ordenar_autores();
