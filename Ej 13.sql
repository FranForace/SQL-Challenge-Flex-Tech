-- Creacion de funcion
delimiter $$

CREATE FUNCTION cuenta ( edad int)
returns int reads sql data
BEGIN
  DECLARE resultado int;
  select   count(age)
  INTO     resultado
  FROM     ej13
  WHERE    age = edad
  GROUP BY age;
return resultado;
end$$ 
delimiter ;

-- Corroboramos el correcto funcionamiento de la funcion
SELECT Cuenta (21);

-- Desactivamos el modo seguro de MySql para eliminar la funcion
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP FUNCTION IF EXISTS cuenta;

-- Reactivacion modo seguro
SET sql_safe_updates = 1;
