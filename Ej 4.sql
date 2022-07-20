-- Lamentablemente no funciona
-- Creacion de la tabla
CREATE TABLE ej4
  (
     id    INT NOT NULL auto_increment PRIMARY KEY,
     value SMALLINT
  );

-- Inserccion de datos
INSERT INTO ej4
            (value)
VALUES      (4),
            (11),
            (57),
            (24),
            (47);

-- Creacion de consulta   
SELECT value = CASE
                 WHEN value % 2 = 0 THEN 'Par'
                 ELSE 'Impar'
               end AS valuee
FROM   ej4;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej4;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
