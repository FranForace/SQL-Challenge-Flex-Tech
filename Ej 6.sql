-- Creacion de tabla
CREATE TABLE ej6
  (
     id   INT NOT NULL auto_increment PRIMARY KEY,
     name VARCHAR(50)
  );

-- Inserccion de datos
INSERT INTO ej6
            (name)
VALUES      ("bob"),
            ("sam"),
            ("jill"),
            ("jim"),
            ("sally"),
            ("jess"),
            ("will");

-- Creacion consulta                   
SELECT id,
       name,
       Concat('¡Hola ', name, '! ¿Cómo estás hoy?') AS saludo
FROM   ej6;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej6;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
