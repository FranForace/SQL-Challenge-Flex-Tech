-- Creacion de tabla
CREATE TABLE ej10
  (
     id   INT NOT NULL auto_increment PRIMARY KEY,
     name VARCHAR(50),
     age  INT
  );

-- Inserccion de datos
INSERT INTO ej10
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
SELECT Sum(age)
FROM   ej10;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej10;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
