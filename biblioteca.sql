-- Crear la tabla para los lectores
CREATE TABLE Lectores (
    ID SERIAL PRIMARY KEY,
    Nombre VARCHAR(50)not null,
    Apellido VARCHAR(50) not null,
    Email VARCHAR(100)not null ,
    Fecha_Nacimiento DATE not null
);


-- Crear la tabla para los autores
CREATE TABLE Autores (
    ID_Autor SERIAL PRIMARY KEY,
    Nombre_Autor VARCHAR(100) not null
);

-- Crear la tabla para las editoriales
CREATE TABLE Editoriales (
    ID_Editorial SERIAL PRIMARY KEY,
    Nombre_Editorial VARCHAR(100)not null
);

-- Crear la tabla para los libros
CREATE TABLE Libros (
    ISBN VARCHAR(20) PRIMARY KEY,
    Nombre_Libro VARCHAR(100)not null ,
    ID_Autor INT not null,
    ID_Editorial INT not null,
    FOREIGN KEY (ID_Autor) REFERENCES Autores(ID_Autor),
    FOREIGN KEY (ID_Editorial) REFERENCES Editoriales(ID_Editorial)
);

-- Crear la tabla para los préstamos
CREATE TABLE Prestamos (
    ID_Prestamo SERIAL PRIMARY KEY,
    ID_Lector INT not null,
     
    FOREIGN KEY (ID_Lector) REFERENCES Lectores(ID),

);

-- Crear la tabla intermedia para relacionar préstamos y libros
CREATE TABLE Libros_Prestamo (
    ID_Prestamo INT not null,
    ISBN VARCHAR(20)not null,
	Fecha_Prestamo DATE not null,
    Fecha_Devolucion DATE not null,
    FOREIGN KEY (ID_Prestamo) REFERENCES Prestamos(ID_Prestamo),
    FOREIGN KEY (ISBN) REFERENCES Libros(ISBN),
    PRIMARY KEY (ID_Prestamo, ISBN)
);

-- Insertar datos de los lectores
INSERT INTO Lectores (Nombre, Apellido, Email, Fecha_Nacimiento) VALUES
('Juan Alberto', 'Cortéz', 'juancortez@gmail.com', '1983-06-20'),
('Antonia', 'de los Ríos', 'antoniarios_23@yahoo.com', '1978-11-24'),
('Nicolás', 'Martin', 'nico_martin23@gmail.com', '1986-07-11'),
('Néstor', 'Casco', 'nestor_casco2331@hotmail.com', '1981-02-11'),
('Lisa', 'Pérez', 'lisperez@hotmail.com', '1994-08-11'),
('Ana Rosa', 'Estagnolli', 'anros@abcdatos.com', '1974-10-15'),
('Milagros', 'Pastoruti', 'mili_2231@gmail.com', '2001-01-22'),
('Pedro', 'Alonso', 'alonso.pedro@impermebilizantesrosario.com', '1983-09-05'),
('Arturo Ezequiel', 'Ramírez', 'artu.rama@outlook.com', '1998-03-29'),
('Juan Ignacio', 'Altarez', 'juanaltarez.223@yahoo.com', '1975-08-24');

-- Insertar datos de los autores
INSERT INTO Autores (Nombre_Autor) VALUES
('Stephen King'),
('Umberto Eco'),
('Gabriel García Márquez'),
('Isabel Allende'),
('Mario Benedetti');

-- Insertar datos de las editoriales
INSERT INTO Editoriales (Nombre_Editorial) VALUES
('Ediciones de Mente'),
('Editorial España'),
('Sudamericana'),
('Editorial Maine'),
('Ediciones Chile'),
('Alfa');

-- Insertar datos de los libros
INSERT INTO Libros (ISBN, Nombre_Libro, ID_Autor, ID_Editorial) VALUES
('4568874', 'Cementerio de animales', 1, 1),
('44558877', 'En el nombre de la rosa', 2, 2),
('7788845', 'Cien años de soledad', 3, 3),
('45699874', 'El diario de Ellen Rimbauer', 1, 4),
('7787898', 'La hojarasca', 3, 3),
('2564111', 'El amor en los tiempos del cólera', 3, 3),
('5544781', 'La casa de los espíritus', 4, 5),
('22545447', 'Paula', 4, 5),
('2225412', 'La tregua', 5, 6),
('88541254', 'Gracias por el fuego', 5, 6);


SELECT * FROM Lectores
SELECT * FROM Libros;
SELECT * FROM Editoriales
SELECT * FROM autores
SELECT * FROM libros_prestamo
select *from prestamos


insert into prestamos(id_lector)
values
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),


INSERT INTO libros_Prestamo (Id_prestamo, ISBN, Fecha_prestamo, Fecha_devolucion) 
VALUES
(1,'4568874' , '2024-04-18', '2024-04-19'),
(1,'44558877' , '2024-04-18', '2024-04-19'),
(1,'7788845' , '2024-04-18', '2024-04-19'),
(1,'45699874' , '2024-04-18', '2024-04-19'),
(1,'7787898' , '2024-04-18', '2024-04-19'),
(2,'2564111'  , '2024-04-18', '2024-04-19'),
(2,'5544781', '2024-04-18', '2024-04-19'),
(2,'22545447', '2024-04-18', '2024-04-19'),
(2,'2225412', '2024-04-18', '2024-04-19'),
(2,'4568874', '2024-04-20', '2024-04-21'),
(3,'44558877', '2024-04-20', '2024-04-21'),
(3,'7788845', '2024-04-20', '2024-04-21'),
(3,'45699874', '2024-04-20', '2024-04-21'),
(3,'7787898', '2024-04-20', '2024-04-21'),
(3,'2564111' , '2024-04-20', '2024-04-21'),
(4,'5544781', '2024-04-20', '2024-04-21'),
(4,'22545447', '2024-04-20', '2024-04-21'),
(4,'2225412', '2024-04-20', '2024-04-21'),
(4,'4568874', '2024-04-22', '2024-04-23'),
(4,'44558877', '2024-04-22', '2024-04-23'),
(5,'7788845', '2024-04-22', '2024-04-23'),
(5,'45699874', '2024-04-22', '2024-04-23'),
(5,'7787898', '2024-04-22', '2024-04-23'),
(6,'2564111', '2024-04-22', '2024-04-23'),
(6,'5544781', '2024-04-22', '2024-04-23'),
(6,'22545447', '2024-04-22', '2024-04-23'),
(7,'2225412', '2024-04-22', '2024-04-23'),
(7,'4568874', '2024-04-24', '2024-04-25'),
(7,'44558877', '2024-04-24', '2024-04-25'),
(8,'7788845','2024-04-24', '2024-04-25'),
(9,'45699874', '2024-04-24', '2024-04-25')



select
prestamos.id_prestamo,prestamos.id_lector,
libros_prestamo.isbn,libros_prestamo.fecha_prestamo,libros_prestamo.fecha_devolucion
from prestamos
join libros_prestamo on libros_prestamo.id_prestamo = 1


-- 3.	Realizar consultas para conocer cuántas veces se presta un determinado libro, ordenando las cantidades de mayor a menor.


SELECT LP.ISBN AS ISBN_Libro,
       L.Nombre_Libro,
       COUNT(LP.ID_Prestamo) AS Veces_Prestado
FROM Libros_Prestamo LP
JOIN Libros L ON LP.ISBN = L.ISBN
GROUP BY LP.ISBN, L.Nombre_Libro
ORDER BY Veces_Prestado DESC;


-- 4.	Efectuar consultas para saber la cantidad de libros que tiene en préstamo cada lector, luego presentar un print de pantalla. 

SELECT L.ID AS ID_Lector,
       L.Nombre,
       L.Apellido,
       COUNT(LP.ISBN) AS Libros_En_Prestamo
FROM Lectores L
LEFT JOIN Prestamos P ON L.ID = P.ID_Lector
LEFT JOIN Libros_Prestamo LP ON P.ID_Prestamo = LP.ID_Prestamo
GROUP BY L.ID, L.Nombre, L.Apellido
ORDER BY Libros_En_Prestamo DESC;

-- Con uno de los lectores, al que se le cargó 5 libros, simular que devolvió uno de ellos (quitarle su relación con un libro en particular), y ejecutar la consulta anterior para analizar los resultados que se obtienen. Ahora sí, puede presentar el preview.
DELETE FROM Libros_Prestamo
WHERE ID_Prestamo = 1
AND ISBN = '44558877';

-- 5.	Obtener el promedio de edad de los lectores, el lector con más años y el lector más joven.

-- Promedio de edad de los lectores
SELECT AVG(EXTRACT(YEAR FROM AGE(Fecha_Nacimiento))) AS Promedio_Edad
FROM Lectores;

-- Lector más viejo
SELECT Nombre, Apellido, Fecha_Nacimiento
FROM Lectores
ORDER BY Fecha_Nacimiento ASC
LIMIT 1;

-- Lector más joven
SELECT Nombre, Apellido, Fecha_Nacimiento
FROM Lectores
ORDER BY Fecha_Nacimiento DESC
LIMIT 1;

-- 6.	Crear una vista llamada libros_prestados. Debe retornar el nombre de los lectores, el nombre de los libros que ellos tienen en préstamo, el nombre de la editorial de dichos libros y su correspondiente ISBN. Ejecutar la vista para obtener los libros prestados para el lector Pedro Alonso.

CREATE VIEW libros_prestados AS
SELECT L.Nombre AS Nombre_Lector,
       L.Apellido AS Apellido_Lector,
       Li.Nombre_Libro,
       E.Nombre_Editorial,
       Li.ISBN
FROM Lectores L
JOIN Prestamos P ON L.ID = P.ID_Lector
JOIN Libros_Prestamo LP ON P.ID_Prestamo = LP.ID_Prestamo
JOIN Libros Li ON LP.ISBN = Li.ISBN
JOIN Editoriales E ON Li.ID_Editorial = E.ID_Editorial;

SELECT *
FROM libros_prestados
WHERE Nombre_Lector = 'Pedro' AND Apellido_Lector = 'Alonso';

-- fin de actividad

actividad 4

-- creacion de procedimeintos

CREATE OR REPLACE PROCEDURE RegistrarDevolucion(
    IN p_ID_Lector INT,
    IN p_ISBN VARCHAR(20)
)
AS $$
BEGIN
    DELETE FROM Libros_Prestamo
    WHERE ID_Prestamo IN (
        SELECT ID_Prestamo
        FROM Prestamos
        WHERE ID_Lector = p_ID_Lector
    ) AND ISBN = p_ISBN;
END;
$$ LANGUAGE plpgsql;

-- llamado al procediemiento
CALL RegistrarDevolucion(1, '7788845');

-- verificar procedimiento 
SELECT *
FROM Libros_Prestamo;


-- 2.	Elaborar una tabla de logs para ir registrando las devoluciones de los ejemplares. Hacer que la tabla se complete mediante un trigger. Esta tabla de logs deberá almacenar el identificador de lector y el identificador de libro junto a la fecha y hora de la devolución. Efectuar

-- Crear la tabla de logs:
CREATE TABLE Devoluciones_Log (
    ID SERIAL PRIMARY KEY,
    ID_Lector INT,
    ISBN VARCHAR(20),
    Fecha_Hora_Devolucion TIMESTAMP
);
-- Crear el trigger para insertar registros en la tabla de logs cuando se elimina una relación en la tabla Libros_Prestamo:

CREATE OR REPLACE FUNCTION RegistrarDevolucion_Log()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Devoluciones_Log (ID_Lector, ISBN, Fecha_Hora_Devolucion)
    VALUES (OLD.id_lector, OLD.ISBN, CURRENT_TIMESTAMP);
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_devolucion
AFTER DELETE ON Libros_Prestamo
FOR EACH ROW
EXECUTE FUNCTION RegistrarDevolucion_Log();
