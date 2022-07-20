-- Creacion de tabla
CREATE TABLE ej9
  (
     id   INT NOT NULL auto_increment PRIMARY KEY,
     name VARCHAR(50),
     age  INT
  );

-- Inserccion de datos
INSERT INTO ej9
            (name,
             age)
VALUES      ("bob",
             21),
            ("sam",
             19),
            ("jill",
             18),
            ("jim",
             21),
            ("sally",
             19),
            ("jess",
             20),
            ("will",
             21);

-- Creacion de consulta  
SELECT DISTINCT( age )
FROM   ej9
ORDER  BY age;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej9;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
