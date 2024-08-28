CREATE DATABASE WePlotPrueba;
GO

USE WePlotPrueba;
GO

CREATE TABLE Usuarios (
    Nombre NVARCHAR(40) NOT NULL PRIMARY KEY,
    Apellido NVARCHAR(40) NOT NULL,
    CorreoElectronico NVARCHAR(60) NOT NULL UNIQUE, 
    Contraseña NVARCHAR(50) NOT NULL,
    Imagen VARBINARY(MAX),
    ComidaFavorita NVARCHAR(50),
    ArtistaFavorito NVARCHAR(50),
    LugarFavorito NVARCHAR(50),
    ColorFavorito NVARCHAR(30)
	);
GO
use WePlotPrueba;
go
ALTER TABLE Usuarios
ADD Rol NVARCHAR(40)
GO

SELECT*FROM Usuarios

