CREATE DATABASE CarlosMoralesChimbote;

USE CarlosMoralesChimbote;

CREATE TABLE Estudiante (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    PrimerNombre VARCHAR(50),
    SegundoNombre VARCHAR(50),
    PrimerApellido VARCHAR(50),
    SegundoApellido VARCHAR(50),
    Telefono VARCHAR(20),
    Celular VARCHAR(20),
    Direccion VARCHAR(100),
    Email VARCHAR(100),
    FechaNacimiento DATE,
    Observaciones VARCHAR(200),
	NivelId INT,
    FOREIGN KEY (NivelId) REFERENCES Nivel(Id)
);

CREATE TABLE Nivel (
    Id INT PRIMARY KEY,
    Nivel VARCHAR(50),
    Seccion VARCHAR(50),
    Grado VARCHAR(50),
    Aula VARCHAR(50),
    Tutor VARCHAR(100),
    Observaciones VARCHAR(200)
);


select * from Estudiante
Select * from Nivel
--Consulta General
SELECT e.*, n.Nivel, n.Seccion, n.Grado, n.Aula, n.Tutor, n.Observaciones AS ObservacionesNivel
FROM Estudiante e
JOIN Nivel n ON e.NivelId = n.Id;
--Consulta por ID
SELECT e.*, n.Nivel, n.Seccion, n.Grado, n.Aula, n.Tutor, n.Observaciones AS ObservacionesNivel
FROM Estudiante e
JOIN Nivel n ON e.NivelId = n.Id
WHERE e.Id = 5;


