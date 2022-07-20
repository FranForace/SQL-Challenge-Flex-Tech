-- Creacion de tablas
DROP TABLE IF EXISTS Ej12_a;
CREATE TABLE Ej12_a (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
IDNac INT,
Name VARCHAR(50),
Age INT
);


CREATE TABLE Ej12_b (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Customer INT,
Fvto date,
FOREIGN KEY (Id_customer) REFERENCES Ej12_a(id))
;
-- Inserccion de datos
INSERT INTO Ej12_a (idNac, name, Age) VALUES (1, "Bob", 21),
										(1, "Sam", 19),
										(2, "Jill", 18),
										(3, "Jim", 21),
										(4, "Sally", 19),
										(2, "Jess", 20),
										(3, "Will", 21);
INSERT INTO Ej12_b (Id_Customer, Fvto) Values (1,"1-10-23"),
											  (2,"22-5-25"),
                                              (5,"22-1-23"),
                                              (6,"15-6-28");
-- Creacion consulta
SELECT a.ID, a.name, a.age, b.fvto
	FROM  Ej12_a as a
		left JOIN  
    Ej12_b as b ON a.ID = b.Id_customer;
    
    -- Desactivamos el modo seguro de MySql para eliminar la tabla 
SET sql_safe_updates = 0;
-- Antes de poder eliminar estas tablas debemos alterarlas para quitar la FK
describe EJ12_a;
/*ALTER TABLE Ej12_a DROP CONSTRAINT ...;
ALTER TABLE Ej12_b DROP CONSTRAINT ...;*/
-- Eliminacion de tabla
DROP TABLE IF EXISTS ej12_a;
DROP TABLE IF EXISTS ej12_b;

-- Reactivacion modo seguro
SET sql_safe_updates = 1;
 
