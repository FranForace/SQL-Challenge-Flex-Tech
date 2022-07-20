-- Creacion de tabla
CREATE TABLE ej8
  (
     id      INT NOT NULL auto_increment PRIMARY KEY,
     name    VARCHAR(30),
     country VARCHAR(50)
  );

-- Inserccion de datos
INSERT INTO ej8
            (name,
             country)
VALUES      ("bob smith",
             "united states"),
            ("jim jones",
             "china"),
            ("sam white",
             "japan"),
            ("jess black",
             "canada"),
            ("will wilson",
             "germany"),
            ("wilson scott",
             "england"),
            ("scott daniels",
             "france"),
            ("daniel jackson",
             "canada"),
            ("jack johnson",
             "united states");

-- Creacion consulta  
SELECT name,
       "you need to bring your passport" AS Pass
FROM   ej8
WHERE  country <> "united states"
        OR "canada";

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej8;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
