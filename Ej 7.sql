-- Creacion de tabla
CREATE TABLE ej7
  (
     id          INT NOT NULL auto_increment PRIMARY KEY,
     name        VARCHAR(30),
     amount_sold INT
  );

-- Inserccion de datos
INSERT INTO ej7
            (name,
             amount_sold)
VALUES      ("cup",
             11),
            ("saucer",
             22),
            ("plate",
             46),
            ("fork",
             34),
            ("spoon",
             45),
            ("knife",
             78),
            ("mug",
             23),
            ("glass",
             45),
            ("tumblr",
             24);

-- Creacion consulta  
SELECT name,
       amount_sold
FROM   ej7
ORDER  BY amount_sold DESC
LIMIT  5;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej7;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
