
USE master;

PRINT N'Validamos si la base de datos no existe';
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = 'FDB202019974')
BEGIN
PRINT N'Base ya existe';
DROP DATABASE FBD202019974;
END;

CREATE DATABASE FDB202019974
ON PRIMARY
(
    NAME = 'FBD202019974',
    FILENAME = '/fbd/fundamentos/FBD202019974.mdf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 50%
)
LOG ON
(
    NAME = 'FBD202019974_log',
    FILENAME =  '/fbd/fundamentos/FBD202019974_log.ldf',
    SIZE = 2MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 2MB
);
PRINT N'Base de datos creada correctamente';
GO
