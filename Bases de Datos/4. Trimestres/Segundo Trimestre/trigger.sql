use usatrigger;
DELIMITER $$

CREATE TRIGGER actualizar_sueldo
BEFORE UPDATE ON empleado
FOR EACH ROW
BEGIN
    IF NEW.tipo_empleado = 'Director' THEN
        SET NEW.sueldo = 7500;
    END IF;
END$$

DELIMITER ;

use usatrigger;
INSERT INTO empleado (nombre, tipo_empleado, salario) VALUES ('Juan', 'Administrativo', 5000);
INSERT INTO empleado (nombre, tipo_empleado, salario) VALUES ('Maria', 'Vendedor', 6000);

UPDATE empleado SET tipo_empleado = 'Director' WHERE nombre = 'Juan';

SELECT * FROM empleado WHERE nombre = 'Juan';
SELECT * FROM empleado WHERE nombre = 'Maria';
