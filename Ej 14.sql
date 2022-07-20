-- Creacion de funcion
delimiter $$

CREATE FUNCTION dia_de_la_semana (fecha date)
returns varchar (30) 
deterministic
BEGIN

  DECLARE fecha_a  date;
  declare day_name varchar(30);
  
  set fecha_a = fecha ;
  set day_name = dayname(fecha_a);
  
  return day_name;
end$$ 
delimiter ;
-- Corroboramos el correcto funcionamiento de la funcion
SELECT Dia_de_la_semana ("2020-07-27");

-- Desactivamos el modo seguro de MySql para eliminar la funcion
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP FUNCTIONIF EXISTS dia_de_la_semana;

-- Reactivacion modo seguro
SET sql_safe_updates = 1;
