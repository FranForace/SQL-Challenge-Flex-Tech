-- Creacion de tabla b
CREATE TABLE ej11_b
  (
     id     INT NOT NULL auto_increment PRIMARY KEY,
     descna VARCHAR(30)
  );

-- Creacino tabla a
CREATE TABLE ej11_a
  (
     id    INT NOT NULL auto_increment PRIMARY KEY,
     idnac INT,
     name  VARCHAR(50),
     age   INT,
     FOREIGN KEY (idnac) REFERENCES ej11_b(id)
  );

-- Inserccion de datos
INSERT INTO ej11_b
            (descna)
VALUES      ("argentino"),
            ("italiano"),
            ("espa�ol"),
            ("aleman");

INSERT INTO ej11_a
            (idnac,
             name,
             age)
VALUES      (1,
             "bob",
             21),
            (1,
             "sam",
             19),
            (2,
             "jill",
             18),
            (3,
             "jim",
             21),
            (4,
             "sally",
             19),
            (2,
             "jess",
             20),
            (3,
             "will",
             21);

-- Creacion de consulta  
SELECT a.id     AS id,
       b.descna AS DesNac,
       a.name   AS Name,
       a.age    AS Age
FROM   ej11_a AS a
       INNER JOIN ej11_b AS B
               ON a.idnac = b.id
ORDER  BY a.id;

-- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;

-- Eliminacion de tabla
DROP TABLE IF EXISTS ej11_a;

DROP TABLE IF EXISTS ej11_b;

-- Reactivacion modo seguro
SET sql_safe_updates = 1; 
