DELIMITER //
CREATE TRIGGER limite_analgesico
BEFORE INSERT ON farmacos
FOR EACH ROW
BEGIN
	DECLARE cuenta_analgesicos INT;
    SELECT * INTO cuenta_analgesicos FROM farmacos WHERE tipof='analgésico' and tipof='analgesico';
    
    if cuenta_analgesicos >= 3 then
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No puede haber 3 analgésicos';
    end if;
end //
DELIMITER ;
-- -- -- -- -- -- -- -- -- -- -- --
DELIMITER //

CREATE TRIGGER actualizar_importe_total
AFTER INSERT ON consumo
FOR EACH ROW
BEGIN
    DECLARE importe_total DECIMAL(10, 2);

    SELECT SUM(c.UNIDADES * f.PRECIOUNIDAD) INTO importe_total FROM consumo c, farmacos f
    WHERE c.CODF = f.CODF AND c.CODIGO_E = NEW.CODIGO_E;

    UPDATE enfermos SET importetotal = importe_total WHERE CODIGO_E = NEW.CODIGO_E;
END;
//

DELIMITER ;

-- -- -- -- -- -- -- -- -- -- -- --

DELIMITER //

CREATE PROCEDURE actualizar_enfermos_resumen()
BEGIN
    DECLARE cod_e INT;
    DECLARE nom_e VARCHAR(100);
    DECLARE importe_total DECIMAL(10, 2);
    DECLARE done INT DEFAULT 0;

    DECLARE cur CURSOR FOR 
    SELECT CODIGO_E, NOME, importetotal FROM enfermos;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open cursor
    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO cod_e, nom_e, importe_total;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        INSERT INTO enfermos_resumen (CODIGO_E, NOME, importetotal)
        VALUES (cod_e, nom_e, importe_total);
    END LOOP;

    CLOSE cur;
END //

DELIMITER ;

