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


-- borarr atributo
ALTER TABLE prestamos DROP COLUMN isbn;

DELETE FROM usuarios WHERE id = 123;


'4568874'
'44558877'
'7788845'
'45699874'
'7787898'
'2564111' 
'5544781'
'22545447'
'2225412'





-- '88541254'

