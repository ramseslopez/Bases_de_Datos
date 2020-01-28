
USE master;

PRINT N("Validamos si la base de datos no existe");
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = "FDB2020-1-9974")
BEGIN
PRINT N'Base ya existe';
DROP DATABASE Northwind;
END;

CREATE DATABASE FDB2020-1-9974
ON PRIMARY
(
    NAME = "FBD2020-1-9974",
    FILENAME = "/fbd/fundamentos/FBD2020-1-9974.mdf ",
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 50%
)
LOG ON
(
    NAME = "FBD2020-1-9974_log",
    FILENAME =  "/fbd/fundamentos/FBD2020-1-9974_log.ldf",
    SIZE = 2MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 2MB
);
PRINT N"Base de datos creada correctamente";
GO




