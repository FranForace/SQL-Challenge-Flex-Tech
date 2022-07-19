
-- Ej 1
-- Creacion de tabla
CREATE TABLE ej1
  (
     id    INT NOT NULL auto_increment PRIMARY KEY,
     value SMALLINT
  );

--Inserccion de valores

INSERT INTO ej1
VALUES      (NULL,
             -56),
            (NULL,
             76),
            (NULL,
             -84),
            (NULL,
             96),
            (NULL,
             -47);

-Verificamos los datos bien ingresados e invertidos en una vista
SELECT id,
       -1 * value AS value
FROM   ej1;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

--Eliminacion de tabla
DROP TABLE ej1; 

-- Reactivacion modo seguro
SET sql_safe_updates = 1;
