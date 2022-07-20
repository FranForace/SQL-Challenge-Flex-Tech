-- Creacion de tablas

CREATE TABLE Ej15_a (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
IDNac INT,
Name VARCHAR(50),
Age INT
);


CREATE TABLE Ej15_b (
ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Id_Customer INT,
Fvto date,
FOREIGN KEY (Id_customer) REFERENCES Ej15_a(id))
;
-- Inserccion de datos
INSERT INTO Ej15_a (idNac, name, Age) VALUES (1, "Bob", 21),
										(1, "Sam", 19),
										(2, "Jill", 18),
										(3, "Jim", 21),
										(4, "Sally", 19),
										(2, "Jess", 20),
										(3, "Will", 21);
INSERT INTO Ej15_b (Id_Customer, Fvto) Values (1,"1-10-23"),
											  (2,"22-5-25"),
                                              (5,"22-1-23"),
                                              (6,"15-6-28");
 
 -- Creacion de funcion
delimiter $$
 CREATE FUNCTION Borrar_Persona (IN Param_ID INT) 
 Return SMaLLINT
 READ SQL DATA
 BEGIN 
	IF Param_ID = Id THEN 
		SET @Borrar = DELETE FROM Ej15_a WHERE id = Param_id ON UPDATE CASCADE AND ;
	ELSEIF Param_id <> ID THEN
    SET @Borrar = "-1";
    END IF;
       IF @Borrar <> '-1' THEN
		SET @clausula_select = ;
		PREPARE ejecucion FROM @clausula_select;
		EXECUTE ejecucion;
		DEALLOCATE PREPARE ejecucion;
	END IF;
