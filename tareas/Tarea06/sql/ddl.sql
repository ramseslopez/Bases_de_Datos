--CREAMOS BASE DE DATOS

--Seleccionamos master para creación de base
USE Master;
--Validamos en sys si la base ya existe
PRINT N'Validamos si la base existe'
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = 'Trabajo')
BEGIN
PRINT N'Base ya existe'
DROP DATABASE Trabajo
END

--Creamos la base
CREATE DATABASE Trabajo
ON PRIMARY
(
NAME = 'Trabajo',
FILENAME = '/fbd/fundamentos/Trabajo.mdf',
SIZE = 5MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 100%
)
LOG ON
(
NAME = 'Trabajo_Log',
FILENAME = '/fbd/fundamentos/Trabajo_log.ldf',
SIZE = 5MB,
MAXSIZE = 100MB,
FILEGROWTH = 5MB
)
PRINT N'Base de datos creada correctamente';


--CREAMOS TABLAS DE LA BASE DE DATOS
SET DATEFORMAT dmy
USE Trabajo;
--Eliminar tablar si es que existen
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Empleado') )
	DROP TABLE "dbo"."Empleado"
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Empresa') )
	DROP TABLE "dbo"."Empresa"
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Proyecto') )
	DROP TABLE "dbo"."Proyecto"
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Trabajar') )
	DROP TABLE "dbo"."Trabajar"
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Colaborar') )
	DROP TABLE "dbo"."Colaborar"
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Dirigir') )
	DROP TABLE "dbo"."Dirigir"

--Crear tabla empleados
CREATE TABLE "Empleado" (
	"nombre" nvarchar (10) NOT NULL,
	"paterno" nvarchar (15) NOT NULL,
	"materno" nvarchar (15) NOT NULL,
	"nacimiento" "datetime" NULL,
	"calleE" nvarchar (20) NULL,
	"numeroE" nvarchar (5) NULL,
	"ciudadE" nvarchar (30) NULL ,
	"cpE" nvarchar (15) NULL,
	"genero" nchar (1) NULL,
	"CURP" nvarchar (20) NOT NULL,
	CONSTRAINT "PK_Empleado" PRIMARY KEY  CLUSTERED
	(
		"CURP"
	),
	CONSTRAINT "FK_Empleado_Empleado" FOREIGN KEY (
		"CURP"
	) REFERENCES "dbo"."Empleado" (
		"CURP"
	)
    ON DELETE NO ACTION
	ON UPDATE NO ACTION,
	CONSTRAINT "CK_Nacimiento" CHECK (nacimiento < GETDATE())
)
--Indices para la tabla Empleado
CREATE INDEX "nombre" ON "dbo"."Empleado"("nombre")
CREATE INDEX "paterno" ON "dbo"."Empleado"("paterno")
CREATE INDEX "materno" ON "dbo"."Empleado"("materno")
CREATE INDEX "CURP" ON "dbo"."Empleado"("CURP")

 --Crear tabla Categorias
CREATE TABLE "Empresa" (
	"RFC" nvarchar (15) NOT NULL ,
	"razonSocial" nvarchar (25) NOT NULL ,
	"calle" nvarchar (20) NULL ,
	"numero" nvarchar (5) NULL ,
	"ciudad" nvarchar (30) NULL,
	"cp" nvarchar (15) NULL,
 	CONSTRAINT "PK_Empresa" PRIMARY KEY  CLUSTERED
	(
		"RFC"
	)
)
--Indices para categoria
CREATE  INDEX "razonSocial" ON "dbo"."Empresa"("razonSocial")


--Crear tabla proyecto
CREATE TABLE "Proyecto" (
	"numProy" "int" IDENTITY(1, 1) NOT NULL ,
	"RFC" nvarchar (15) NULL ,
	"nombre" nvarchar (20) NULL ,
	"fechaInicio" "datetime" NULL ,
	"fechaFin" "datetime" NULL ,
	CONSTRAINT "PK_Proyecto" PRIMARY KEY  CLUSTERED
	(
		"numProy"
	),
	CONSTRAINT "FK_Proyecto_Empresa" FOREIGN KEY (
		"RFC"
	) REFERENCES "dbo"."Empresa"(
		"RFC"
	)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
)
--Indices para Proyecto
CREATE  INDEX "RFC" ON "dbo"."Proyecto"("RFC")
CREATE  INDEX "nombre" ON "dbo"."Proyecto"("nombre")


--Crear tabla para dirigir
CREATE TABLE "Dirigir" (
	"CURP" nvarchar (20) NULL ,
	"RFC" nvarchar (15) NULL ,
	"fechaInicioD" "datetime" NULL ,
	CONSTRAINT "FK_Dirigir_Empleado" FOREIGN KEY
	(
		"CURP"
	) REFERENCES "dbo"."Empleado" (
		"CURP"
	),
	CONSTRAINT "FK_Dirigir_Empresa" FOREIGN KEY
	(
		"RFC"
	) REFERENCES "dbo"."Empresa" (
		"RFC"
	)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
)
--Creamos índices para dirigir
CREATE INDEX "CURP" ON "dbo"."Dirigir"("CURP")
CREATE INDEX "RFC" ON "dbo"."Dirigir"("RFC")

--creamos tabla para trabajar
CREATE TABLE "Trabajar" (
	"CURP" nvarchar (20) NULL ,
	"RFC" nvarchar (15) NULL ,
	"salarioQuincenal" "money" NULL ,
	"fechaIngreso" "datetime" NULL ,
	CONSTRAINT "FK_Trabajar_Empleado" FOREIGN KEY
	(
		"CURP"
	) REFERENCES "dbo"."Empleado" (
		"CURP"
	),
	CONSTRAINT "FK_Trabajar_Empresa" FOREIGN KEY
	(
		"RFC"
	) REFERENCES "dbo"."Empresa" (
		"RFC"
	)
	ON DELETE SET DEFAULT
	ON UPDATE SET DEFAULT
)
--índices para para tabla trabajar
CREATE  INDEX "CURP" ON "dbo"."Trabajar"("CURP")
CREATE  INDEX "RFC" ON "dbo"."Trabajar"("RFC")


--Crear tabla para colaborar
CREATE TABLE "Colaborar" (
	"CURP" nvarchar (20) NULL ,
	"numProy" "int" NULL ,
	"fechaInicioC" "datetime" NULL ,
	"fechaFinC" "datetime" NULL ,
	"numHoras" "int" NULL ,
	CONSTRAINT "FK_Colaborar_Empleado" FOREIGN KEY
	(
		"CURP"
	) REFERENCES "dbo"."Empleado" (
		"CURP"
	),
	CONSTRAINT "FK_Colaborar_Proyecto" FOREIGN KEY
	(
		"numProy"
	) REFERENCES "dbo"."Proyecto" (
		"numProy"
	)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
)
--Indices para tabla colaborar
CREATE INDEX "CURP" ON "dbo"."Colaborar"("CURP")
CREATE INDEX "numProy" ON "dbo"."Colaborar"("numProy")
