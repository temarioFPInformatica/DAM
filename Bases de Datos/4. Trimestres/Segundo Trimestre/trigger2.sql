delimiter $$
CREATE TRIGGER actualizar_salario 
before update on empleado
for each row
begin
if old.provincia != new.provincia then
	set new.salario = old.salario*1.05;
end if;
end $$
delimiter ;