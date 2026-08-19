use usatrigger;
DROP PROCEDURE IF EXISTS prueba;
Delimiter $$
create procedure prueba()
BEGIN
DECLARE nombre_empleado VARCHAR(50);
DECLARE done INT DEFAULT FALSE;
DECLARE cursor_empleado CURSOR FOR SELECT nombre
FROM empleado;
DECLARE CONTINUE HANDLER FOR NOT FOUND SET done
= TRUE;
OPEN cursor_empleado;
REPEAT
FETCH cursor_empleado INTO nombre_empleado;
IF NOT done THEN
SELECT nombre_empleado;
END IF;
UNTIL done END REPEAT;
CLOSE cursor_empleado;
END$$;
Delimiter ;
call prueba() ;
select * from empleado;