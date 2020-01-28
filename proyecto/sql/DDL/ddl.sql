
USE master;

PRINT N'Validamos si la base de datos no existe';
IF EXISTS (SELECT 1 FROM sys.databases WHERE [name] = 'TaqueroMucho')
BEGIN
PRINT N'Base ya existe';
DROP DATABASE TaqueroMucho;
END;
GO

CREATE DATABASE TaqueroMucho
ON PRIMARY
(
    NAME = 'TaqueroMucho',
    FILENAME = '/fbd/fundamentos/TaqueroMucho.mdf',
    SIZE = 10MB,
    MAXSIZE = UNLIMITED,
    FILEGROWTH = 50%
)
LOG ON
(
    NAME = 'TaqueroMucho_log',
    FILENAME =  '/fbd/fundamentos/TaqueroMucho_log.ldf',
    SIZE = 2MB,
    MAXSIZE = 100MB,
    FILEGROWTH = 2MB
);
PRINT N'Base de datos creada correctamente';
GO

--CREAMOS TABLAS DE LA BASE DE DATOS
SET DATEFORMAT dmy
USE TaqueroMucho;
--Eliminar tablar si es que existen
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Transporte') )
  DROP TABLE dbo.Transporte
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.laborar_como') )
  DROP TABLE dbo.laborar_como
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Repartidor') )
  DROP TABLE dbo.Repartidor
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Empleado') )
	DROP TABLE dbo.Empleado
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Rol') )
  DROP TABLE dbo.Rol
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Cliente') )
  DROP TABLE dbo.Cliente
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Mesa') )
  DROP TABLE dbo.Mesa
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Comensal') )
  DROP TABLE dbo.Comensal
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Ticket') )
  DROP TABLE dbo.Ticket
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Pago') )
  DROP TABLE dbo.Pago
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Sucursal') )
	DROP TABLE dbo.Sucursal
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.ser') )
  DROP TABLE dbo.ser
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Producto') )
  DROP TABLE dbo.Producto
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Inventario') )
  DROP TABLE dbo.Inventario
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Proveedor') )
  DROP TABLE dbo.Proveedor
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Ingrediente') )
  DROP TABLE dbo.Ingrediente
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Menu') )
  DROP TABLE dbo.Menu
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Salsa') )
  DROP TABLE dbo.Salsa
IF EXISTS (SELECT * FROM sysobjects WHERE id = object_id('dbo.Taqueria') )
	DROP TABLE dbo.Taqueria
GO

--Crear tabla empleado
CREATE TABLE Empleado (
    nombreE VARCHAR (20) NOT NULL,
    paternoE VARCHAR (25) NOT NULL,
    maternoE VARCHAR (25) NOT NULL,
    calleE VARCHAR (20) NULL,
    numeroE VARCHAR (5) NULL,
    coloniaE VARCHAR (20) NULL,
    cpE VARCHAR (15) NULL,
    alcaldiaE VARCHAR (20) NULL,
    estadoE VARCHAR (15) NULL,
    nacimiento DATE NOT NULL,
    tipoSangre VARCHAR(5) NOT NULL,
    CURP VARCHAR (20) NOT NULL,
    CONSTRAINT PK_Empleado PRIMARY KEY CLUSTERED (CURP),
    CONSTRAINT CK_Nacimiento CHECK (nacimiento < GETDATE())
);
PRINT N'Tabla Empleado creada correctamente';
GO
-- Indices para Empleado
CREATE INDEX CURP ON dbo.Empleado(CURP);
GO

-- Tabla para Repartidor
CREATE TABLE Repartidor (
    idRepartidor INT IDENTITY(1, 1) NOT NULL,
    licencia CHAR (2) NULL,
    CONSTRAINT PK_Repartidor PRIMARY KEY CLUSTERED (idRepartidor)
);
PRINT N'Tabla Repartidor creada correctamente';
GO
-- Indices para Repartidor
CREATE INDEX idRepartidor ON dbo.Repartidor(idRepartidor);
GO

-- Tabla para laborar_como
CREATE TABLE laborar_como (
    CURP VARCHAR (20),
    idRepartidor INT,
    CONSTRAINT FK_laborar FOREIGN KEY (CURP) REFERENCES dbo.Empleado(CURP),
    CONSTRAINT FK_laborar1 FOREIGN KEY (idRepartidor) REFERENCES dbo.Repartidor(idRepartidor)
    ON DELETE CASCADE
    ON UPDATe CASCADE
);
PRINT N'Tabla laborar_como creada correctamente';
GO

-- tabla para Transporte
CREATE TABLE Transporte (
    idRepartidor INT,
    esMotocicleta CHAR (2) NULL,
    esBicicleta CHAR (2) NULL,
    CONSTRAINT FK_Transporte FOREIGN KEY (idRepartidor) REFERENCES dbo.Repartidor(idRepartidor)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Transporte creada correctamente';
GO

-- Tabla para Taquería
CREATE TABLE Taqueria (
    RFC VARCHAR (25) NOT NULL,
    nombre VARCHAR (25) NOT NULL,
    CONSTRAINT PK_Taqueria PRIMARY KEY CLUSTERED (RFC)
);
PRINT N'Tabla Taqueria creada correctamente'
GO

-- Tabla para Sucursal
CREATE TABLE Sucursal (
    nombreS VARCHAR (30) NOT NULL,
    telefono VARCHAR (16) NULL,
    calleS VARCHAR (20) NULL,
    numeroS VARCHAR (5) NULL,
    coloniaS VARCHAR (20) NULL,
    alcaldiaS VARCHAR (20) NULL,
    cpS VARCHAR (15) NULL,
    estadoS VARCHAR (15) NULL,
    RFC VARCHAR (25),
    CONSTRAINT PK_Sucursal PRIMARY KEY CLUSTERED (nombreS),
    CONSTRAINT FK_Succursal FOREIGN KEY (RFC) REFERENCES dbo.Taqueria(RFC)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Sucursal crada correctamente';
GO
-- Indices para Sucursal
CREATE INDEX nombreS ON dbo.Sucursal(nombreS);
GO

-- Tabla para Rol
CREATE TABLE Rol (
    CURP VARCHAR (20),
    RFC VARCHAR (25),
    fechaInicio DATE NOT NULL,
    fechaFin DATE NULL,
    numHoras INT NULL,
    esTaquero CHAR (2) NOT NULL,
    esParrillero CHAR (2) NOT NULL,
    esCajero CHAR (2) NOT NULL,
    esTortillero CHAR (2) NOT NULL,
    esMesero CHAR (2) NOT NULL,
    CONSTRAINT FK_Rol FOREIGN KEY (CURP) REFERENCES dbo.Empleado(CURP),
    CONSTRAINT FK_Rol1 FOREIGN KEY (RFC) REFERENCES dbo.Taqueria(RFC)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Rol creada correctamente';
GO

-- Tabla para Pago
CREATE TABLE Pago (
    idPago INT IDENTITY(1, 1) NOT NULL,
    esEfectivo CHAR (2) NOT NULL,
    esTarjeta CHAR (2) NOT NULL,
    monto FLOAT NOT NULL,
    CONSTRAINT PK_Pago PRIMARY KEY CLUSTERED (idPago)
);
PRINT N'Tabla Pago creada correctamente';
GO
-- Indices para Pago
CREATE INDEX idPago ON dbo.Pago(idPago)


-- Tabla para Ticket
CREATE TABLE Ticket (
    folio VARCHAR (15) NOT NULL,
    RFC VARCHAR (25),
    idPago INT,
    fecha DATE NOT NULL,
    CONSTRAINT PK_Ticket PRIMARY KEY CLUSTERED (folio),
    CONSTRAINT FK_Ticket FOREIGN KEY (RFC) REFERENCES dbo.Taqueria(RFC),
    CONSTRAINT FK_Ticket1 FOREIGN KEY (idPago) REFERENCES dbo.Pago(idPago)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Ticket creada correctamente';
GO
-- Indices para Ticket
CREATE INDEX folio ON dbo.Ticket(folio);
GO

-- Tabla para Mesa
CREATE TABLE Mesa (
    folio VARCHAR (15),
    numMesa INT NOT NULL,
    CONSTRAINT FK_Mesa FOREIGN KEY (folio) REFERENCES dbo.Ticket(folio)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Mesa creada correctamente';
GO

-- Tabla para Comensal
CREATE TABLE Comensal (
    folio VARCHAR (15),
    CONSTRAINT FK_Comensal FOREIGN KEY (folio) REFERENCES dbo.Ticket(folio)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Comensal creada correctamente';
GO

-- Tabla para Cliente
CREATE TABLE Cliente (
    idCliente INT IDENTITY(1, 1) NOT NULL,
    nombreC VARCHAR (20) NOT NULL,
    paternoC VARCHAR (25) NOT NULL,
    maternoC VARCHAR (25) NOT NULL,
    esTaqueroC CHAR (2) not NULL,
    puntos INT,
    idPago INT,
    CONSTRAINT PK_Cliente PRIMARY KEY CLUSTERED (idCliente),
    CONSTRAINT FK_Cliente FOREIGN KEY (idPago) REFERENCES dbo.Pago(idPago)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Cliente creada correctamente';
GO
-- Indices para Cliente
CREATE INDEX idCliente ON dbo.Cliente(idCliente);
GO

-- Tabla para Menu
CREATE TABLE Menu (
    RFC VARCHAR (25),
    idMenu INT IDENTITY(1, 1) NOT NULL,
    CONSTRAINT PK_Menu PRIMARY KEY CLUSTERED (idMenu),
    CONSTRAINT FK_MENU FOREIGN KEY (RFC) REFERENCES dbo.Taqueria(RFC)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Menu creada correctamente';
GO
-- Indices para Menu
CREATE INDEX idMenu ON dbo.Menu(idMenu);
GO


-- Tabla para Ingrediente
CREATE TABLE Ingrediente (
    nombreI VARCHAR (20) NOT NULL,
    idMenu INT,
    cantidadI VARCHAR (15) NOT NULL,
    CONSTRAINT PK_Ingrediente PRIMARY KEY CLUSTERED (nombreI),
    CONSTRAINT FK_Ingrediente FOREIGN KEY (idMenu) REFERENCES dbo.Menu(idMenu)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Ingrediente creada correctamente';
GO
-- Indices para Ingrediente
CREATE INDEX nombreI ON dbo.Ingrediente(nombreI);
GO

-- Tabla para Inventario
CREATE TABLE Inventario (
    idInventario INT IDENTITY(1, 1) NOT NULL,
    cantidad VARCHAR (15) NOT NULL,
    fechaCompra DATE NOT NULL,
    precioCompra FLOAT NOT NULL,
    CONSTRAINT PK_Inventario PRIMARY KEY CLUSTERED (idInventario)
);
PRINT N'Tabla Inventario creada correctamente';
GO
-- Indices para Inventario
CREATE INDEX idInventario ON dbo.Inventario(idInventario);
GO

-- Tabla para Proveedor
CREATE TABLE Proveedor (
    RFCp VARCHAR (25) NOT NULL,
    nombreP VARCHAR (25) NOT NULL,
    CONSTRAINT PK_Proveedor PRIMARY KEY CLUSTERED (RFCp)
);
PRINT N'Tabla Proveedor creada correctamente';
GO
-- Indices para Proveedor
CREATE INDEX RFCp ON dbo.Proveedor(RFCp);
GO

-- Tabla para Producto
CREATE TABLE Producto (
    idProducto INT IDENTITY(1, 1) NOT NULL,
    idInventario INT,
    RFCp VARCHAR (25),
    tipo VARCHAR (20) NOT NULL,
    marca VARCHAR (20) NOT NULL,
    fechaCaducidad DATE NOT NULL,
    precio FLOAT NOT NULL,
    CONSTRAINT PK_Producto PRIMARY KEY CLUSTERED (idProducto),
    CONSTRAINT FK_Producto FOREIGN KEY (idInventario) REFERENCES dbo.Inventario(idInventario),
    CONSTRAINT FK_Producto1 FOREIGN KEY (RFCp) REFERENCES dbo.Proveedor(RFCp)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Producto creada correctamente';
GO
-- Indices para Producto
CREATE INDEX idProducto ON dbo.Producto(idProducto);
GO

-- Tabla para ser
CREATE TABLE ser (
    nombreI VARCHAR (20),
    idProducto INT,
    CONSTRAINT FK_ser FOREIGN KEY (nombreI) REFERENCES dbo.Ingrediente(nombreI),
    CONSTRAINT FK_ser1 FOREIGN KEY (idProducto) REFERENCES dbo.Producto(idProducto)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla ser creada correctamente';
GO

-- Tabla para Salsa
CREATE TABLE Salsa (
    tipo VARCHAR (10) NULL,
    nivelPicor INT,
    RFC VARCHAR (25),
    CONSTRAINT FK_Salsa FOREIGN KEY (RFC) REFERENCES dbo.Taqueria(RFC)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
PRINT N'Tabla Salsa creada correctamente';
GO
