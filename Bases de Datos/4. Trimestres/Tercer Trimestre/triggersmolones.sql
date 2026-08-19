use instituto;
DROP TRIGGER IF EXISTS alumno_matriculado
DELIMITER //
CREATE TRIGGER alumno_matriculado
BEFORE INSERT ON alumno_se_matricula_modulo 
FOR EACH ROW
BEGIN 
	DECLARE contador INT;
    
    SELECT COUNT(*) INTO contador FROM alumno_se_matricula_modulo
    WHERE id_alumno = NEW.id_alumno
	AND id_modulo = NEW.id_modulo
    AND id_curso_escolar = NEW.id_curso_escolar;
    
    IF (contador >= 1) THEN
		SIGNAL SQLSTATE '45000' SET message_text='Este alumno ya está matriculado';
	END IF;
END //
DELIMITER ;

use instituto;
insert into alumno_se_matricula_modulo values (7,2,3);

