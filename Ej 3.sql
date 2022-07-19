-- Creacion de la tabla 
CREATE TABLE ej3
  (
     id   INT NOT NULL auto_increment PRIMARY KEY,
     year DATE
  );

-- Inserccion de valores
INSERT INTO ej3
VALUES      (NULL,
             "1776-01-01"),
            (NULL,
             "2001-01-01"),
            (NULL,
             "1643-01-01"),
            (NULL,
             "1865-01-01"),
            (NULL,
             "1969-01-01");

-- consulta que determina el año, no esoty muy conforme con la resolucion                     
SELECT Floor(( Year(year) / 100 ) + 1) AS Century
FROM   ej3;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej3;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
