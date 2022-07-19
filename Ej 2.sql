-- Creacion de tabla
CREATE TABLE ej2
  (
     ej2_id      INT NOT NULL auto_increment PRIMARY KEY,
     division_id INT NOT NULL,
     year        INT,
     revenue     SMALLINT
  );

-- Inserccion de datos
INSERT INTO ej2
            (division_id,
             year,
             revenue)
VALUES      (1,             2018,             60),
            (1,             2021,             40),
            (1,             2020,             70),
            (2,             2021,             -10),
            (3,             2018,             20),
            (3,             2016,             40),
            (4,             2021,             50);

-- consulta solicitada
SELECT division_id
FROM   ej2
WHERE  year = 2021
       AND revenue > 0;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

--Eliminacion de tabla
DROP TABLE IF EXISTS ej2;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
